"""Downloads WoW Forever talent data and artwork, and builds the app's game.json.

Talent, racial and tooltip data: talentsforever.com data export (CC BY 4.0),
read from the WoW Forever beta client. Icons and tree backgrounds: Blizzard
Entertainment artwork served by Wowhead's CDN (falls back to talentsforever.com).
"""
import json
import os
import re
import sys
import time
import urllib.request
from concurrent.futures import ThreadPoolExecutor

HERE = os.path.dirname(os.path.abspath(__file__))
DATA_DIR = os.path.join(HERE, "data")
WEB_DIR = os.path.join(HERE, "web")
ICON_DIR = os.path.join(WEB_DIR, "assets", "icons")
BG_DIR = os.path.join(WEB_DIR, "assets", "bg")

SOURCE_URL = "https://talentsforever.com/data.json"
ICON_URLS = [
    "https://wow.zamimg.com/images/wow/icons/large/{name}.jpg",
    "https://talentsforever.com/assets/icons/{name}.jpg?i=4",
]
BG_URL = "https://wow.zamimg.com/images/wow/talents/backgrounds/classic/{id}.jpg"
UA = {"User-Agent": "WoWCraft-theorycrafter/1.0 (personal use)"}

CLASSES = ["Druid", "Hunter", "Mage", "Paladin", "Priest", "Rogue", "Shaman", "Warlock", "Warrior"]
RACE_KEYS = {
    "Human": "human", "Dwarf": "dwarf", "Gnome": "gnome", "Night Elf": "nightelf",
    "Orc": "orc", "Tauren": "tauren", "Undead": "undead", "Troll": "troll",
    "Skyborne (High Order)": "skyborne_alliance", "Skyborne (Windshaper)": "skyborne_horde",
}

# ---------- stat-engine effects parsed from tooltip text ----------
NUM = r"(\d+(?:\.\d+)?)"
PATTERNS = [
    (rf"[Pp]arry chance by {NUM}%", ["parry"]),
    (rf"(?:chance to [Dd]odge|[Dd]odge chance) by {NUM}%", ["dodge"]),
    (rf"chance to [Bb]lock[^.]*? by {NUM}%", ["block"]),
    (rf"[Cc]ritical [Ss]trike chance with all spells and attacks by {NUM}%", ["melee_crit", "ranged_crit", "spell_crit"]),
    (rf"[Cc]ritical [Ss]trike chance with all spells by {NUM}%", ["spell_crit"]),
    (rf"[Cc]ritical [Ss]trike chance with (?:all )?(?:melee )?(?:attacks|weapons) by {NUM}%", ["melee_crit"]),
    (rf"[Cc]ritical [Ss]trike chance with ranged weapons by {NUM}%", ["ranged_crit"]),
    (rf"chance to hit with (?:all )?(?:melee )?(?:weapons|attacks)(?: and spells)? by {NUM}%", ["melee_hit"]),
    (rf"chance to hit with ranged weapons by {NUM}%", ["ranged_hit"]),
    (rf"[Ii]ncreases your total Stamina by {NUM}%", ["sta_pct"]),
    (rf"[Ii]ncreases your total Strength by {NUM}%", ["str_pct"]),
    (rf"[Ii]ncreases your total Agility by {NUM}%", ["agi_pct"]),
    (rf"[Ii]ncreases your total Intellect by {NUM}%", ["int_pct"]),
    (rf"[Ii]ncreases your total Spirit by {NUM}%", ["spi_pct"]),
    (rf"[Ii]ncreases your maximum Mana by {NUM}%", ["mana_pct"]),
    (rf"[Ii]ncreases your maximum Health by {NUM}%", ["health_pct"]),
    (rf"armor contribution from items by {NUM}%", ["armor_items_pct"]),
    (rf"{NUM}% of your Mana regeneration to continue while casting", ["casting_regen_pct"]),
    (rf"[Ii]ncreases (?:the )?healing done by (?:your )?spells and effects by {NUM}%", ["healing_pct"]),
    (rf"[Ii]ncreases your attack power by {NUM}%", ["ap_pct"]),
    (rf"[Ii]ncreases all damage you deal by {NUM}%", ["phys_dmg_pct", "spell_dmg_pct"]),
]


def parse_effects(ranks):
    found = {}
    for i, text in enumerate(ranks):
        for pat, keys in PATTERNS:
            m = re.search(pat, text)
            if m:
                for k in keys:
                    found.setdefault(k, [0] * len(ranks))[i] = float(m.group(1))
                break
    return [{"k": k, "v": v} for k, v in found.items() if any(v)]


RACIAL_EFFECTS = {
    "The Human Spirit": [{"k": "spi_pct", "v": 5}],
    "Expansive Mind": [{"k": "mana_pct", "v": 5}],
    "Quickness": [{"k": "dodge", "v": 1}],
    "Savage": [{"k": "melee_crit", "v": 1}, {"k": "ranged_crit", "v": 1}, {"k": "spell_crit", "v": 1}],
    "Endurance": [{"k": "health_pct", "v": 5}],
    "Wind Blessed": [{"k": "attack_speed_pct", "v": 3}, {"k": "cast_speed_pct", "v": 3}],
    "Elune's Light": [{"k": "melee_crit", "v": 10}, {"k": "ranged_crit", "v": 10}, {"k": "spell_crit", "v": 10}],
    "Berserking": [{"k": "attack_speed_pct", "v": 10}, {"k": "cast_speed_pct", "v": 10}],
    "Blood Fury": [{"k": "ap_pct", "v": 10}, {"k": "rap_pct", "v": 10}, {"k": "sp_pct", "v": 10}],
}


def slug(s):
    return re.sub(r"[^a-z0-9]+", "_", s.lower()).strip("_")


def fetch(url, binary=False, tries=3):
    for a in range(tries):
        try:
            req = urllib.request.Request(url, headers=UA)
            with urllib.request.urlopen(req, timeout=30) as r:
                body = r.read()
                return body if binary else body.decode("utf-8")
        except Exception:
            time.sleep(1 + a)
    return None


def build_game(src, seed):
    out = {"generated": src.get("generated"), "attribution": src.get("attribution"),
           "license": src.get("license"), "classes": {}, "races": [], "classRacials": {}}
    icons, bgs = set(), set()
    for cls, cd in src["talents"].items():
        trees = []
        for ti, tree in enumerate(cd["trees"]):
            name_to_id = {t["name"]: f"{slug(tree['name'])}_{slug(t['name'])}" for t in tree["talents"]}
            tals = []
            for t in tree["talents"]:
                ranks = t.get("desc") or []
                ranks = (ranks + [ranks[-1] if ranks else "Effect not documented."] * t["max"])[: t["max"]]
                effects = parse_effects(ranks)
                s = seed.get(f"{cls}|{t['name']}")
                if not effects and s and s["max"] == t["max"]:
                    effects = s["effects"]
                c = t.get("classic") or {}
                tals.append({
                    "id": name_to_id[t["name"]], "name": t["name"], "tier": t["row"], "col": t["col"],
                    "max": t["max"], "req": name_to_id.get(t.get("req")), "ranks": ranks,
                    "icon": t.get("icon"), "passive": t.get("passive", True), "cost": t.get("cost"),
                    "status": c.get("status", "new"), "classicText": c.get("text"),
                    "classicMax": c.get("max"), "renamed": c.get("renamed"), "note": c.get("note"),
                    "hotfix": t.get("hotfix"), "confirmed": len(t.get("confirmed") or []) >= t["max"],
                    "effects": effects,
                })
                icons.add(t.get("icon"))
            trees.append({"name": tree["name"], "bg": tree.get("bg"), "icon": tree.get("icon"), "talents": tals})
            icons.add(tree.get("icon"))
            bgs.add(tree.get("bg"))
        out["classes"][cls] = {"icon": cd.get("icon"), "source": cd.get("source"), "trees": trees}
        icons.add(cd.get("icon"))
    for faction, races in src["racials"].items():
        for r in races:
            key = RACE_KEYS.get(r["race"], slug(r["race"]))
            racials = []
            for name, text, icon in r["abilities"]:
                # an ability you press starts with its cast info ("Instant, 2 min cooldown." / "0.5 sec cast" /
                # "Channeled"); a passive that only mentions an internal cooldown (Touch of the Grave) stays passive
                head = re.match(r"(?:\d+ yd range, )?(Instant|Channeled|\d+(?:\.\d+)? sec cast)\b", text)
                cd = re.match(r"(?:\d+ yd range, )?(?:Instant|Channeled|\d+(?:\.\d+)? sec cast), (\d+(?:\.\d+)? (?:min|sec)) cooldown", text)
                racials.append({"name": name, "desc": text, "icon": icon, "type": "active" if head else "passive",
                                "cast": head.group(1) if head else None,
                                "cd": cd.group(1) if cd else None, "effects": RACIAL_EFFECTS.get(name, [])})
                icons.add(icon)
            out["races"].append({"id": key, "name": r["race"], "faction": faction, "icon": r.get("icon"),
                                 "classes": r.get("classes", []), "racials": racials})
            icons.add(r.get("icon"))
    for cls, cr in (src.get("class_racials") or {}).items():
        out["classRacials"][cls] = {"note": cr.get("note"), "races": {}}
        for race, spells in (cr.get("races") or {}).items():
            out["classRacials"][cls]["races"][race] = [{"name": a[0], "desc": a[1], "icon": a[2]} for a in spells]
            icons.update(a[2] for a in spells)
    icons.update(["inv_misc_book_07", "inv_misc_questionmark"])  # app icon and fallback
    icons.discard(None)
    bgs.discard(None)
    return out, icons, bgs


def download_art(icons, bgs, log=print):
    os.makedirs(ICON_DIR, exist_ok=True)
    os.makedirs(BG_DIR, exist_ok=True)

    def get_icon(name):
        path = os.path.join(ICON_DIR, name + ".jpg")
        if os.path.exists(path) and os.path.getsize(path) > 200:
            return 0
        for tpl in ICON_URLS:
            body = fetch(tpl.format(name=name), binary=True)
            if body and body[:3] == b"\xff\xd8\xff":
                open(path, "wb").write(body)
                return 1
        return -1

    def get_bg(i):
        path = os.path.join(BG_DIR, f"{i}.jpg")
        if os.path.exists(path) and os.path.getsize(path) > 200:
            return 0
        body = fetch(BG_URL.format(id=i), binary=True)
        if body and body[:3] == b"\xff\xd8\xff":
            open(path, "wb").write(body)
            return 1
        return -1

    with ThreadPoolExecutor(8) as ex:
        res = list(ex.map(get_icon, sorted(icons))) + list(ex.map(get_bg, sorted(bgs)))
    log(f"Artwork: {res.count(1)} downloaded, {res.count(0)} already present, {res.count(-1)} unavailable")


POPULAR_URL = "https://talentsforever.com/popular.js"


def build_spec_builds(game, log=print):
    """Recommended talent build per spec: the most-used complete Forever build for that spec on talentsforever.com."""
    body = fetch(POPULAR_URL)
    path = os.path.join(DATA_DIR, "popular.js")
    if body and "window.POPULAR" in body:
        open(path, "w", encoding="utf-8").write(body)
    elif os.path.exists(path):
        body = open(path, encoding="utf-8").read()
    else:
        log("Couldn't get recommended builds.")
        return None
    P = json.loads(body[body.index("{"):body.rindex("}") + 1])
    out = {}
    for cls, c in P.get("classes", {}).items():
        trees = game["classes"].get(cls, {}).get("trees", [])
        if not trees:
            continue
        byid = {t["id"]: (ti, t) for ti, tr in enumerate(trees) for t in tr["talents"]}
        best = {}
        for x in c.get("top", []):
            parts = x["code"].split("/")[-1].split("-")[:3]
            tal, ok = {}, True
            for ti, digits in enumerate(parts):
                tl = trees[ti]["talents"]
                for i, ch in enumerate(digits):
                    if ch != "0":
                        if i >= len(tl):
                            ok = False
                            break
                        tal[tl[i]["id"]] = int(ch)
            if not ok:
                continue
            for tid, r in tal.items():  # must obey Forever's tree rules
                ti, t = byid[tid]
                below = sum(rr for t2, rr in tal.items() if byid[t2][0] == ti and byid[t2][1]["tier"] < t["tier"])
                if r > t["max"] or (t["req"] and tal.get(t["req"], 0) < byid[t["req"]][1]["max"]) or below < (t["tier"] - 1) * 5:
                    ok = False
                    break
            tot = sum(tal.values())
            if not ok or tot > 51:
                continue
            lead = x["lead"]
            if lead not in best or (tot, -x["rank"]) > (sum(best[lead]["talents"].values()), -best[lead]["rank"]):
                best[lead] = {"talents": tal, "pts": x["pts"], "rank": x["rank"], "code": x["code"]}
        out[cls] = best
    res = {"source": "talentsforever.com popular builds", "window": P["classes"]["Warrior"].get("window", ""),
           "generated": P.get("generated"), "builds": out}
    json.dump(res, open(os.path.join(WEB_DIR, "spec_builds.json"), "w"), separators=(",", ":"))
    log(f"Recommended builds: {sum(len(v) for v in out.values())} specs.")
    return res


def update(log=print, offline_ok=True):
    os.makedirs(DATA_DIR, exist_ok=True)
    src_path = os.path.join(DATA_DIR, "source.json")
    log("Checking talentsforever.com for new talent data...")
    body = fetch(SOURCE_URL)
    if body:
        try:
            json.loads(body)
            open(src_path, "w", encoding="utf-8").write(body)
            log("Talent data updated.")
        except ValueError:
            body = None
    if not body:
        if not (offline_ok and os.path.exists(src_path)):
            raise RuntimeError("Could not download talent data and no local copy exists.")
        log("Offline: using the talent data already on disk.")
    src = json.load(open(src_path, encoding="utf-8"))
    seed_path = os.path.join(DATA_DIR, "effects_seed.json")
    seed = json.load(open(seed_path)) if os.path.exists(seed_path) else {}
    game, icons, bgs = build_game(src, seed)
    json.dump(game, open(os.path.join(WEB_DIR, "game.json"), "w", encoding="utf-8"), separators=(",", ":"))
    log(f"Built game data: {sum(len(t['talents']) for c in game['classes'].values() for t in c['trees'])} talents, generated {game['generated']}.")
    download_art(icons, bgs, log)
    build_spec_builds(game, log)
    return game


if __name__ == "__main__":
    try:
        update()
    except Exception as e:
        print("Update failed:", e)
        sys.exit(1)
