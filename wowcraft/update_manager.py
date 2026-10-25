"""Runs WoWCraft's data updates and reports what changed.

Each update target rebuilds one part of the data from its sources, then compares the new files with the old
ones by ID so the result lists only what was added, removed or changed. Downloads are incremental: talent art,
item tooltips and icons already on disk are reused unless their source data changed.

Targets (the Updates tab has a button for each):
  everything  races, classes, talents, specs, class stats, gear, professions and sources, in order
  talents     races, racials, classes, talent trees and recommended spec builds (talentsforever.com)
  stats       per-level class stat tables (Forever client)
  items       gear database (Forever client + Wowhead), then re-tags crafted items and sources
  crafting    professions, enchants and consumables, then their sources
  sources     where-to-get-it, recipes and reagents (ForeverDB.net)
"""
import hashlib
import json
import os
import threading
import time
import traceback

HERE = os.path.dirname(os.path.abspath(__file__))
WEB = os.path.join(HERE, "web")
STATE_FILE = os.path.join(HERE, "data", "update_state.json")

TARGETS = {
    "everything": {"label": "Everything",
                   "what": "Races, classes, talent trees, specializations, class stat tables, all gear (including class and race restrictions), professions, enchants, consumables and where everything comes from.",
                   "steps": ["talents", "stats", "items", "crafting", "sources"]},
    "talents": {"label": "Races, classes & talents",
                "what": "Races and racials, classes, all 27 talent trees, specializations and their recommended builds.",
                "steps": ["talents"]},
    "stats": {"label": "Class stat tables",
              "what": "Per-level base mana, health per Stamina, crit per Agility and Intellect, attack power and armor numbers from the Forever client.",
              "steps": ["stats"]},
    "items": {"label": "Gear & items",
              "what": "Every piece of gear: stats, item level, required level, binding, Unique, class and race limits, icons. Crafted tags and sources are refreshed after it.",
              "steps": ["items", "crafting", "sources"]},
    "crafting": {"label": "Professions & crafting",
                 "what": "Professions and specializations, crafted gear tags, enchants, armor kits and consumables.",
                 "steps": ["crafting", "sources"]},
    "sources": {"label": "Item sources",
                "what": "Where each item drops or is sold, quests, reputation, PvP ranks, recipes and reagents (Data from ForeverDB.net).",
                "steps": ["sources"]},
}
STEP_LABEL = {"talents": "Races, classes & talents", "stats": "Class stat tables", "items": "Gear & items",
              "crafting": "Professions & crafting", "sources": "Item sources"}

_lock = threading.Lock()
JOB = {"running": False, "target": None, "log": [], "started": 0, "result": None}


def _load(name):
    try:
        with open(os.path.join(WEB, name), encoding="utf-8") as f:
            return json.load(f)
    except (OSError, ValueError):
        return None


def _h(obj):
    return hashlib.md5(json.dumps(obj, sort_keys=True, separators=(",", ":")).encode()).hexdigest()


def snapshot(step):
    """{group: {key: (display name, hash)}} for the data a step owns."""
    out = {}
    if step == "talents":
        g = _load("game.json") or {}
        out["Classes"] = {c: (c, _h([t["name"] for t in v.get("trees", [])])) for c, v in g.get("classes", {}).items()}
        out["Talents"] = {f"{c}/{t['name']}/{x['id']}": (f"{x['name']} ({c}, {t['name']})", _h(x))
                          for c, v in g.get("classes", {}).items() for t in v.get("trees", []) for x in t["talents"]}
        out["Races"] = {r["id"]: (r["name"], _h(r)) for r in g.get("races", [])}
        sb = (_load("spec_builds.json") or {}).get("builds", {})
        out["Recommended builds"] = {f"{c}/{lead}": (f"{c}: {lead}", _h(b.get("talents"))) for c, v in sb.items() for lead, b in v.items()}
    elif step == "stats":
        s = _load("forever_stats.json") or {}
        out["Class stat tables"] = {c: (c, _h(v)) for c, v in s.get("classes", {}).items()}
    elif step == "items":
        d = _load("items.json") or {}
        keep = ("n", "q", "il", "rl", "inv", "t", "st", "w", "eq", "use", "sb", "cl", "rc", "u", "ug", "set", "b", "req")
        out["Items"] = {str(it["id"]): (it["n"], _h({k: it.get(k) for k in keep})) for it in d.get("items", [])}
    elif step == "crafting":
        c = _load("crafting.json") or {}
        out["Enchants"] = {str(e["id"]): (e["n"], _h({k: e.get(k) for k in ("n", "st", "rule", "needs")})) for e in c.get("enchants", [])}
        out["Consumables"] = {str(x["id"]): (x["n"], _h({k: x.get(k) for k in ("n", "st", "use", "p", "bop", "rl")})) for x in c.get("consumables", [])}
        out["Professions"] = {p: (p, _h((c.get("specs") or {}).get(p))) for p in (c.get("primary") or []) + (c.get("secondary") or [])}
        d = _load("items.json") or {}
        out["Crafted gear"] = {str(it["id"]): (it["n"], _h(it["cr"].get("p"))) for it in d.get("items", []) if it.get("cr")}
    elif step == "sources":
        d = _load("items.json") or {}
        out["Item sources"] = {str(it["id"]): (it["n"], _h([it.get("src"), it.get("cat"), it.get("fx"), it.get("raid"), it.get("pvp")]))
                               for it in d.get("items", []) if it.get("src") or it.get("cat")}
        # added = newly confirmed (now active), removed = no longer confirmed (now inactive)
        out["Confirmed in Forever"] = {str(it["id"]): (it["n"], "1") for it in d.get("items", []) if it.get("ok")}
    return out


def diff(before, after):
    res = {}
    for group in sorted(set(before) | set(after)):
        b, a = before.get(group, {}), after.get(group, {})
        added = [a[k][0] for k in a if k not in b]
        removed = [b[k][0] for k in b if k not in a]
        changed = [a[k][0] for k in a if k in b and a[k][1] != b[k][1]]
        res[group] = {"total": len(a), "added": len(added), "removed": len(removed), "changed": len(changed),
                      "examples": {"added": sorted(added)[:12], "removed": sorted(removed)[:12], "changed": sorted(changed)[:12]}}
    return res


def run_step(step, log, full=False):
    if step == "talents":
        from wowcraft import updater
        updater.update(log=log)
    elif step == "stats":
        from wowcraft import stats_builder, items_builder
        items_builder.latest_build(log)
        stats_builder.build(log)
    elif step == "items":
        from wowcraft import items_builder
        items_builder.build(log, full=full)
    elif step == "crafting":
        from wowcraft import crafting_builder
        crafting_builder.build(log)
    elif step == "sources":
        from wowcraft import sources_builder
        sources_builder.build(log)


def versions():
    v = {}
    try:
        from wowcraft import items_builder
        v["Forever client build"] = items_builder.BUILD
    except Exception:
        pass
    g = _load("game.json") or {}
    if g.get("generated"):
        v["Talent data (talentsforever.com)"] = g["generated"]
    sb = _load("spec_builds.json") or {}
    if sb.get("generated"):
        v["Recommended builds"] = str(sb["generated"])
    d = _load("items.json") or {}
    if d.get("generated"):
        n_ok = sum(1 for it in d.get("items", []) if it.get("ok"))
        v["Gear database"] = f"{d['generated']}, {len(d.get('items', []))} items ({n_ok} confirmed in Forever)"
    c = _load("crafting.json") or {}
    if c:
        v["Professions"] = f"{len(c.get('enchants', []))} enchants, {len(c.get('consumables', []))} consumables"
    return v


def load_state():
    try:
        with open(STATE_FILE, encoding="utf-8") as f:
            return json.load(f)
    except (OSError, ValueError):
        return {}


def run(target, log=print, full=False):
    """Run an update synchronously; returns the change report."""
    steps = TARGETS[target]["steps"]
    report, errors = {}, []
    # snapshot everything first: later steps re-tag data earlier steps write (crafted tags, sources)
    before = {step: snapshot(step) for step in steps}
    done = []
    for step in steps:
        log(f"--- {STEP_LABEL[step]} ---")
        try:
            run_step(step, log, full=full)
            done.append(step)
        except Exception as e:  # keep going; the old file stays in place when a builder fails before writing
            errors.append(f"{STEP_LABEL[step]}: {e}")
            log(f"Failed: {e}")
            log(traceback.format_exc(limit=3))
    for step in done:
        report[step] = {"label": STEP_LABEL[step], "groups": diff(before[step], snapshot(step))}
        n = sum(g["added"] + g["removed"] + g["changed"] for g in report[step]["groups"].values())
        log(f"{STEP_LABEL[step]}: {n} change{'s' if n != 1 else ''}.")
    result = {"target": target, "at": time.time(), "ok": not errors, "errors": errors, "report": report}
    state = load_state()
    state[target] = {"at": result["at"], "ok": result["ok"], "errors": errors,
                     "changes": sum(g["added"] + g["removed"] + g["changed"] for r in report.values() for g in r["groups"].values())}
    for step in report:  # a bigger run also counts as an update of each part it covered
        if target != step and step in TARGETS:
            state[step] = {"at": result["at"], "ok": True, "errors": [], "via": target,
                           "changes": sum(g["added"] + g["removed"] + g["changed"] for g in report[step]["groups"].values())}
    os.makedirs(os.path.dirname(STATE_FILE), exist_ok=True)
    with open(STATE_FILE, "w", encoding="utf-8") as f:
        json.dump(state, f, indent=1)
    return result


def start(target, full=False):
    """Start an update in the background. Returns False if one is already running."""
    if target not in TARGETS:
        raise ValueError("unknown update")
    with _lock:
        if JOB["running"]:
            return False
        JOB.update(running=True, target=target, log=[], started=time.time(), result=None)

    def log(msg):
        for line in str(msg).splitlines():
            JOB["log"].append(line)
        del JOB["log"][:-400]

    def work():
        try:
            JOB["result"] = run(target, log, full=full)
        except Exception as e:
            JOB["result"] = {"target": target, "ok": False, "errors": [str(e)], "report": {}}
            log(f"Update failed: {e}")
        finally:
            JOB["running"] = False

    threading.Thread(target=work, daemon=True).start()
    return True


def status():
    return {"running": JOB["running"], "target": JOB["target"], "log": JOB["log"][-200:], "started": JOB["started"],
            "result": JOB["result"], "state": load_state(), "versions": versions(),
            "targets": {k: {"label": v["label"], "what": v["what"], "steps": [STEP_LABEL[s] for s in v["steps"]]} for k, v in TARGETS.items()}}


if __name__ == "__main__":
    import sys
    t = sys.argv[1] if len(sys.argv) > 1 else "everything"
    r = run(t, full="--full" in sys.argv)
    for step in r["report"].values():
        for g, d in step["groups"].items():
            print(f"{g}: {d['total']} total, +{d['added']} -{d['removed']} ~{d['changed']}")
