"""Adds "where to get it" lines, recipe skill, reagents and how recipes are learned to items.json and crafting.json.

Data from ForeverDB.net (https://foreverdb.net): the ForeverDB addon's data files, GPL-3.0 with an attribution
term (credit "Data from ForeverDB.net"). Each source keeps ForeverDB's label:
  s  seen in Forever by ForeverDB players      f  read from the Forever client
  c  clue, unconfirmed                          k  Classic data, not yet seen in Forever
Zone names: the Forever client's UiMap table (wago.tools).

Run:  python -m wowcraft.sources_builder   (after items_builder and crafting_builder)
"""
import json
import os
import re

from wowcraft.items_builder import WEB, get, table

HERE = os.path.dirname(os.path.abspath(__file__))
FDB = "https://foreverdb.net/"
FILES = ("Data/GearSources.lua", "Data/Recipes.lua", "Data/NPCs.lua")
REP = {3: "Neutral", 4: "Friendly", 5: "Honored", 6: "Revered", 7: "Exalted"}
SIDE = {"a": " (Alliance)", "h": " (Horde)"}
# battleground reputations count as PvP: League of Arathor, Defilers, Frostwolf, Stormpike, Warsong Outriders, Silverwing
BG_REP = {"509", "510", "729", "730", "889", "890"}
PVP_NAME = re.compile(r"^(Premier )?(Private|Corporal|Sergeant|Master Sergeant|Sergeant Major|Knight|Knight-Lieutenant|Knight-Captain|"
                      r"Knight-Champion|Lieutenant Commander|Commander|Marshal|Field Marshal|Grand Marshal|Scout|Grunt|Senior Sergeant|"
                      r"First Sergeant|Stone Guard|Blood Guard|Legionnaire|Centurion|Champion|Lieutenant General|General|Warlord|"
                      r"High Warlord)'s ")


def fetch_fdb(log):
    cache = os.path.join(HERE, "data", "foreverdb")
    os.makedirs(cache, exist_ok=True)
    out = {}
    man = get(FDB + "downloads/addon-manifest.json")
    files = {}
    if man:
        try:
            files = {f["path"]: f["url"] for f in json.loads(man)["data"]["files"]}
        except (ValueError, KeyError):
            files = {}
    for path in FILES:
        local = os.path.join(cache, os.path.basename(path))
        body = get(FDB + files[path]) if path in files else None
        if body and body.startswith("-- Data: ForeverDB.net"):
            open(local, "w", encoding="utf-8").write(body)
        elif os.path.exists(local):
            body = open(local, encoding="utf-8").read()
            log(f"Using the saved copy of {path}.")
        else:
            raise RuntimeError(f"Couldn't download {path} from ForeverDB.net")
        out[path] = body
    return out


def money(c):
    c = int(float(c or 0))
    g, s, cu = c // 10000, (c // 100) % 100, c % 100
    return " ".join(x for x in (f"{g}g" if g else "", f"{s}s" if s else "", f"{cu}c" if cu and not g else "") if x) or "free"


def build(log=print):
    log("Downloading item sources from ForeverDB.net...")
    data = fetch_fdb(log)
    zones = {r["ID"]: r["Name_lang"] for r in table("UiMap")}
    gs = data["Data/GearSources.lua"]
    body = gs[gs.index("[==[") + 4: gs.index("]==]")]
    boss_inst, raid_inst = {}, set()
    for _id, txt in re.findall(r'\[(\d+)\]="([^"]*)"', gs[gs.index("ns.gfInst"):gs.index("ns.gfRare") if "ns.gfRare" in gs else None]):
        f = txt.split("^")
        if len(f) >= 8:
            if f[1] == "raid":
                raid_inst.add(f[0])
            for b in f[7].split(";"):
                boss_inst[b] = f[0]

    def describe(s):
        f = s.split("^")
        k, lab = f[0], f[-1]
        try:
            if k == "q":
                return f"Quest: {f[2]} (level {f[3]}){SIDE.get(f[4], '')}"
            if k == "v":
                z = zones.get(f[3], "")
                return f"Vendor: {f[2]}{', ' + z if z else ''} ({f[4]}, {f[5]}) for {money(f[6])}{SIDE.get(f[7], '')}"
            if k in ("d", "m", "R"):
                name = f[2]
                if name.startswith("NPC "):
                    return "Drops from creatures in Forever"
                where = boss_inst.get(name)
                rate = float(f[3] or 0)
                pre = "Drops from rare " if k == "R" else "Drops from "
                return f"{pre}{name}{' in ' + where if where else ''}{f' ({rate:g}%)' if rate else ''}"
            if k == "w":
                return "World drop"
            if k == "o":
                return f"Found in {f[1]}{f' ({float(f[2]):g}%)' if f[2] and float(f[2]) else ''}"
            if k == "x":
                return f"Found in {f[2]}"
            if k == "c":
                return f"Crafted: {f[1]} ({f[2]})"
            if k == "p":
                return f"PvP reward, rank {f[1]}{SIDE.get(f[2], '')}"
            if k == "r":
                return f"Reputation: {f[3]}, {REP.get(int(f[2]), 'rank ' + f[2])}"
        except (IndexError, ValueError):
            return None
        return None

    sources, raid_items, pvp_rank, cats, side, confirmed = {}, set(), {}, {}, {}, set()
    for line in body.split("\n"):
        f = line.split("|")
        if len(f) < 8:
            continue
        iid = int(f[0], 36)
        if f[4] in ("a", "h"):
            side[iid] = f[4]  # ForeverDB: only this faction can get it
        # confirmed: ForeverDB players have seen the item (or a source of it) in Forever, or the source comes
        # straight from the Forever client's own data (recipes, reputation vendors). Clues and Classic-only data don't count.
        if "s" in f[3] or any(x.rsplit("^", 1)[-1] in ("s", "f") for x in f[7].split("~") if x):
            confirmed.add(iid)
        if not f[7]:
            continue
        lst, seen, cat = [], set(), set()
        for s in f[7].split("~"):
            parts = s.split("^")
            k = parts[0]
            if k in ("d", "m"):
                inst = boss_inst.get(parts[2]) if len(parts) > 2 else None
                cat.add("r" if inst in raid_inst else "d" if inst else "w")
            elif k == "c":
                cat.add("c")
            elif k == "p":
                cat.add("p")
            elif k == "r" and len(parts) > 1 and parts[1] in BG_REP:
                cat.add("p")
            elif k in ("q", "v", "w", "R", "o", "x", "r"):
                cat.add("w")
            if parts[0] in ("d", "m", "R") and len(parts) > 2 and boss_inst.get(parts[2]) in raid_inst:
                raid_items.add(iid)
            if parts[0] == "p" and len(parts) > 1 and parts[1].isdigit():
                pvp_rank[iid] = max(pvp_rank.get(iid, 0), int(parts[1]))
            txt = describe(s)
            if txt and txt not in seen:
                seen.add(txt)
                lst.append({"t": txt, "l": s.split("^")[-1]})
        order = {"s": 0, "f": 0, "c": 1, "k": 2}
        lst.sort(key=lambda x: order.get(x["l"], 3))
        if lst:
            sources[iid] = lst[:4]
        if cat:
            cats[iid] = cat

    # ---- recipes: skill needed, reagents, how it's learned (Forever client data via ForeverDB)
    rc = data["Data/Recipes.lua"]
    names = {int(i): n.replace('\\"', '"') for i, n in re.findall(r'\[(\d+)\]="((?:[^"\\]|\\.)*)"', rc[rc.index("ns.names"):])}
    recipes = {}
    rbody = rc[rc.index("ns.recipes"):rc.index("ns.names")]
    for m in re.finditer(r'(?:\["([^"]+)"\]|([A-Za-z]+))=\{\{(.*?)\}\}(?=,(?:\[|[A-Za-z]+=)|\}\s*$|\}\s*\n)', rbody, re.S):
        prof = m.group(1) or m.group(2)
        for r in re.findall(r'\{(\d+),"((?:[^"\\]|\\.)*)",(\d+),(\d+),(\d+),(\d+),(\d+),(\d+),"([^"]*)","([^"]*)",(\d+),(\d+)\}', m.group(3)):
            spell, name, skill, _y, _g, _gr, item, count, reag, learn, _camp, new = r
            recipes.setdefault(int(item), {"p": prof, "r": int(skill), "reag": reag, "learn": learn, "new": new == "1"})
    npc = data["Data/NPCs.lua"]
    sold = set(int(i) for i in re.findall(r"\[(\d+)\]=\{", npc[npc.index("ns.sold ="):npc.index("ns.soldNames")]))

    def recipe_info(item_id):
        r = recipes.get(item_id)
        if not r:
            return None
        rg = []
        for part in filter(None, r["reag"].split(",")):
            rid, n = part.split(":")
            rid = int(rid)
            how = f"made with {recipes[rid]['p']}" if rid in recipes else ("sold by vendors" if rid in sold else "")
            rg.append([names.get(rid, f"Item {rid}"), int(n), how])
        ln = r["learn"]
        learn = ("Learned automatically" if ln == "a" else "Learned from a trainer" if ln == "t"
                 else f"Learned from {names.get(int(ln[1:]), 'a recipe')}" if ln.startswith("i") else "")
        return {"r": r["r"], "rg": rg, "learn": learn, "new": r["new"]}

    ipath = os.path.join(WEB, "items.json")
    idb = json.load(open(ipath, encoding="utf-8"))
    n_src = n_rec = 0
    for it in idb["items"]:
        s = sources.get(it["id"])
        # raid gear: dropped in a raid, or an unsourced high-level piece (raid tier tokens, quest rewards from raid items)
        if it["id"] in raid_items or (not s and it["il"] >= 66 and it["q"] >= 4):
            it["raid"] = 1
        else:
            it.pop("raid", None)
        if it["id"] in pvp_rank:
            it["pvp"] = pvp_rank[it["id"]]
        else:
            it.pop("pvp", None)
        if s:
            it["src"] = s
            n_src += 1
        # where it comes from: w open world, d dungeon, r raid, c crafted, p PvP (none = unknown)
        cat = set(cats.get(it["id"], set()))
        if it.get("cr"):
            cat.add("c")
        if it.get("pvp"):
            cat.add("p")
        if it.get("raid"):
            cat = {"r"} | (cat & {"c"})
        if not cat and PVP_NAME.match(it["n"]):
            cat.add("p")  # honor-rank gear ForeverDB hasn't recorded yet
        if cat:
            it["cat"] = "".join(sorted(cat))
        else:
            it.pop("cat", None)
        if it["id"] in side:
            it["fx"] = side[it["id"]]
        else:
            it.pop("fx", None)
        # crafted gear whose recipe is in the Forever client (SkillLineAbility) is confirmed too
        if it["id"] in confirmed or it.get("cr"):
            it["ok"] = 1  # confirmed in Forever; everything else stays in the file but inactive
        else:
            it.pop("ok", None)
        ri = recipe_info(it["id"])
        if ri and it.get("cr"):
            it["cr"].update(ri)
            n_rec += 1
    idb["confirmed"] = sum(1 for it in idb["items"] if it.get("ok"))
    idb["sourcesCredit"] = "Item sources and recipes: Data from ForeverDB.net (https://foreverdb.net)"
    json.dump(idb, open(ipath, "w", encoding="utf-8"), separators=(",", ":"))

    cpath = os.path.join(WEB, "crafting.json")
    cdb = json.load(open(cpath, encoding="utf-8"))
    for c in cdb.get("consumables", []):
        ri = recipe_info(c["id"])
        if ri:
            c.update({"r": ri["r"], "rg": ri["rg"], "learn": ri["learn"], "new": ri["new"]})
        src = [{"t": f"Crafted: {c['p']} ({c['r']})", "l": "f"}]
        if c["id"] in sold:
            src.append({"t": "Also sold by vendors", "l": "s"})
        c["src"] = src + sources.get(c["id"], [])[:2]
    for t in cdb.get("temps", []):
        if t.get("src") != "item":
            continue
        ri = recipe_info(t["id"])
        if ri:
            t.update({"r": ri["r"], "rg": ri["rg"], "learn": ri["learn"]})
        if t["id"] in sold:
            t["sold"] = 1
    for en in cdb.get("enchants", []):
        for s in en.get("src", []):
            if s.get("k") == "item":
                ri = recipe_info(s["id"])
                if ri:
                    s["r"] = ri["r"]
    json.dump(cdb, open(cpath, "w", encoding="utf-8"), separators=(",", ":"))
    log(f"Sources: {n_src} items with a known source, {n_rec} crafted items with recipe details, "
        f"{idb['confirmed']} of {len(idb['items'])} items confirmed in Forever.")


if __name__ == "__main__":
    build()
