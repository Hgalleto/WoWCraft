"""Builds WoWCraft's gear database (web/items.json) and item icons.

Sources:
  - Item list, slots, classes and appearance IDs: the WoW Forever client's own
    data tables (DB2), via wago.tools (https://wago.tools), build set below.
  - Exact stats, icons and tooltip lines: Wowhead's Forever item tooltips
    (https://www.wowhead.com/forever/items).

Run:  python -m wowcraft.items_builder      (takes a few minutes)
"""
import csv
import html
import io
import json
import os
import re
import sys
import time
import urllib.error
import urllib.request
import hashlib
from concurrent.futures import ThreadPoolExecutor

HERE = os.path.dirname(os.path.abspath(__file__))
WEB = os.path.join(HERE, "web")
ICONS = os.path.join(WEB, "assets", "items")
CACHE = os.path.join(HERE, "data", "item_tooltips.json")
MISSING = os.path.join(HERE, "data", "item_not_in_forever.json")
FINGERPRINTS = os.path.join(HERE, "data", "item_fingerprints.json")
BUILD_FILE = os.path.join(HERE, "data", "client_build.txt")
RECHECK_DAYS = 14  # how often items Wowhead didn't have get asked about again
BUILD = "1.60.1.70532"  # replaced by the newest Forever client build on wago.tools when one is found
try:
    BUILD = open(BUILD_FILE).read().strip() or BUILD
except OSError:
    pass
UA = {"User-Agent": "Mozilla/5.0 (WoWCraft theorycrafter)"}
BAD_RE = re.compile(r"\b(test|testing|deprecated|unused|placeholder|debug|qa|dnt)\b|monster -|\[ph\]|\(old\)|^zz|^\d+ (epic|green|blue|rare|white|grey|purple)\b", re.I)

WEAPON_SUB = {0: "One-Hand Axe", 1: "Two-Hand Axe", 2: "Bow", 3: "Gun", 4: "One-Hand Mace", 5: "Two-Hand Mace",
              6: "Polearm", 7: "One-Hand Sword", 8: "Two-Hand Sword", 10: "Staff", 13: "Fist Weapon",
              14: "Miscellaneous", 15: "Dagger", 16: "Thrown", 18: "Crossbow", 19: "Wand", 20: "Fishing Pole"}
ARMOR_SUB = {0: "Miscellaneous", 1: "Cloth", 2: "Leather", 3: "Mail", 4: "Plate", 6: "Shield", 7: "Libram", 8: "Idol", 9: "Totem"}
CLASS_BITS = {1: "Warrior", 2: "Paladin", 4: "Hunter", 8: "Rogue", 16: "Priest", 64: "Shaman", 128: "Mage", 256: "Warlock", 1024: "Druid"}
STAT_NAMES = {"Strength": "str", "Agility": "agi", "Stamina": "sta", "Intellect": "int", "Spirit": "spi"}
SCHOOLS = ("Holy", "Fire", "Nature", "Frost", "Shadow", "Arcane")


def get(url, binary=False):
    for a in range(4):
        try:
            with urllib.request.urlopen(urllib.request.Request(url, headers=UA), timeout=40) as r:
                b = r.read()
                return b if binary else b.decode("utf-8")
        except urllib.error.HTTPError as e:
            if e.code == 404:  # a real "not found" (Wowhead answers {"error": ...}); no point retrying
                try:
                    b = e.read()
                    return b if binary else b.decode("utf-8")
                except Exception:
                    return None
            time.sleep(1 + 2 * a)
        except Exception:
            time.sleep(1 + 2 * a)
    return None


def latest_build(log=print):
    """Newest WoW Forever client build on wago.tools (product "wowf"); remembered in data/client_build.txt."""
    global BUILD
    b = get("https://wago.tools/api/builds")
    try:
        vers = [x["version"] for x in json.loads(b).get("wowf", [])] if b else []
    except (ValueError, AttributeError):
        vers = []
    if vers:
        newest = max(vers, key=lambda v: [int(p) for p in v.split(".")])
        if newest != BUILD:
            log(f"New Forever client build: {newest} (was {BUILD}).")
        BUILD = newest
        os.makedirs(os.path.dirname(BUILD_FILE), exist_ok=True)
        open(BUILD_FILE, "w").write(BUILD)
    return BUILD


def table(name):
    import wowcraft.items_builder as me  # always read the current build
    txt = get(f"https://wago.tools/db2/{name}/csv?build={me.BUILD}")
    if not txt:
        raise RuntimeError(f"Couldn't download {name}")
    return list(csv.DictReader(io.StringIO(txt)))


REQ_RE = re.compile(r'Requires <a href="/forever/(skill|spell)=(\d+)/[^"]*"[^>]*>([^<]+)</a>(?: \((\d+)\))?')


def requirements(tip):
    """Profession / specialization requirements printed on the tooltip, e.g. Requires Engineering (225)."""
    out = []
    for kind, _id, name, rank in REQ_RE.findall(re.sub(r"<!--.*?-->", "", tip)):
        out.append({"n": html.unescape(name), "r": int(rank) if rank else 0, "spec": kind == "spell"})
    return out


def parse(tip):
    t = re.sub(r"<!--.*?-->", "", tip)
    t = t.replace("<br>", "\n").replace("<br />", "\n")
    # keep set bonus / equip lines on their own lines
    t = re.sub(r"</(span|div|td|th|tr|table|a)>", lambda m: "\n" if m.group(1) in ("span", "div", "tr", "table") else " ", t)
    txt = html.unescape(re.sub(r"<[^>]+>", "", t))
    lines = [re.sub(r"\s+", " ", l).strip() for l in txt.split("\n")]
    lines = [l for l in lines if l]
    st, eq, use, setlines = {}, [], [], []
    w = {}

    def add(k, v):
        st[k] = round(st.get(k, 0) + v, 2)

    for l in lines:
        m = re.fullmatch(r"\+?(-?\d+) (Strength|Agility|Stamina|Intellect|Spirit)", l)
        if m:
            add(STAT_NAMES[m.group(2)], int(m.group(1)))
            continue
        m = re.fullmatch(r"(\d+) Armor", l)
        if m:
            add("armor", int(m.group(1)))
            continue
        m = re.fullmatch(r"\+(\d+) Armor", l)
        if m:
            add("armor", int(m.group(1)))
            continue
        m = re.fullmatch(r"\+(\d+) (\w+) Resistance", l)
        if m:
            add("res_" + m.group(2).lower(), int(m.group(1)))
            continue
        m = re.fullmatch(r"\+(\d+) to All Resistances", l)
        if m:
            for s in ("fire", "frost", "nature", "shadow", "arcane"):
                add("res_" + s, int(m.group(1)))
            continue
        m = re.match(r"(\d+) - (\d+) (?:(\w+) )?Damage", l)
        if m and "min" not in w:
            w["min"], w["max"] = int(m.group(1)), int(m.group(2))
            if m.group(3):
                w["school"] = m.group(3)
            continue
        m = re.match(r"Speed (\d+\.\d+)", l)
        if m:
            w["spd"] = float(m.group(1))
            continue
        if l.startswith("Equip: "):
            e = l[7:]
            eq.append(e)
            if (m := re.search(r"Increases damage and healing done by magical spells and effects by up to (\d+)", e)):
                add("sp", int(m.group(1)))
            elif (m := re.search(r"Increases healing done by up to (\d+) and damage done by up to (\d+)", e)):
                add("sp", int(m.group(2)))
                add("heal", int(m.group(1)) - int(m.group(2)))
            elif (m := re.search(r"Increases healing done by (?:magical )?spells and effects by up to (\d+)", e)):
                add("heal", int(m.group(1)))
            elif (m := re.search(r"Increases damage done by magical spells and effects by up to (\d+)", e)):
                add("spd", int(m.group(1)))
            elif (m := re.search(r"Increases damage done by (\w+) spells and effects by up to (\d+)", e)) and m.group(1) in SCHOOLS:
                add("sp_" + m.group(1).lower(), int(m.group(2)))
            elif (m := re.search(r"Improves your chance to get a critical strike by (\d+(?:\.\d+)?)%", e)):
                add("crit", float(m.group(1)))
            elif (m := re.search(r"Improves your chance to hit by (\d+(?:\.\d+)?)%", e)):
                add("hit", float(m.group(1)))
            elif (m := re.fullmatch(r"\+(\d+) Attack Power\.?", e)):
                add("ap", int(m.group(1)))
            elif (m := re.fullmatch(r"\+(\d+) Ranged Attack Power\.?", e)):
                add("rap", int(m.group(1)))
            elif (m := re.search(r"Increased Defense \+(\d+)", e)):
                add("def", int(m.group(1)))
            elif (m := re.search(r"chance to Dodge an attack by (\d+(?:\.\d+)?)%", e)):
                add("dodge", float(m.group(1)))
            elif (m := re.search(r"chance to Parry an attack by (\d+(?:\.\d+)?)%", e)):
                add("parry", float(m.group(1)))
            elif (m := re.search(r"chance to Block attacks with a shield by (\d+(?:\.\d+)?)%", e)):
                add("block", float(m.group(1)))
            elif (m := re.search(r"\+?(\d+) Block Value", e)):
                add("bv", int(m.group(1)))
            elif (m := re.search(r"Restores \+?(\d+) mana per 5 sec", e)):
                add("mp5", int(m.group(1)))
            continue
        if l.startswith(("Use: ", "Chance on hit: ")):
            use.append(l)
            continue
        if re.match(r"\(\d\) Set: ", l):
            setlines.append(l)
            continue
        m = re.fullmatch(r"Block (\d+)|(\d+) Block", l)
        if m:
            add("bv", int(m.group(1) or m.group(2)))
    flat = re.sub(r"\s+", " ", txt)
    classes = races = None
    m = re.search(r"Classes: ([A-Za-z][A-Za-z ,]*?)(?= (?:Requires|Use:|Equip:|Sell Price|Durability|\(\d\)|\d)|$)", flat)
    if m:
        classes = [c.strip() for c in m.group(1).split(",") if c.strip()]
    m = re.search(r"Races: ([A-Za-z][A-Za-z ,]*?)(?= (?:Requires|Use:|Equip:|Sell Price|Durability|\(\d\)|\d)|$)", flat)
    if m:
        races = [r.strip() for r in m.group(1).split(",") if r.strip()]
    # "Unique" = only one in your bags or equipped; "Unique-Equipped" = only one equipped;
    # "Unique-Equipped: Seal of Battle (1)" = only one item from that group equipped
    unique = None
    for m in re.finditer(r"<br>Unique(-Equipped)?(?:: ([^<]+?) \((\d+)\))?(?=<)", re.sub(r"<!--.*?-->", "", tip)):
        unique = unique or {}
        if m.group(2):
            unique["g"] = html.unescape(m.group(2))
    bind = 0
    for l in lines:
        if l.startswith("Binds when picked up"): bind = 1; break
        if l.startswith("Binds when equipped"): bind = 2; break
        if l.startswith("Binds when used"): bind = 3; break
        if l == "Quest Item": bind = 4; break
        if l.startswith("Binds to Account"): bind = 5; break
    return st, w, eq, use, setlines, classes, unique, races, bind


def fingerprint(row):
    return hashlib.md5("|".join(f"{k}={v}" for k, v in sorted(row.items())).encode()).hexdigest()[:12]


def build(log=print, full=False):
    """Rebuild items.json. Only fetches tooltips for items that are new or whose client data changed
    (or every item with full=True). Items gone from the client, or that Wowhead says aren't in Forever, drop out."""
    latest_build(log)
    log(f"Downloading item tables from the Forever client (build {BUILD})...")
    items = {r["ID"]: r for r in table("Item")}
    sparse = {r["ID"]: r for r in table("ItemSparse")}
    ima = {}
    for r in table("ItemModifiedAppearance"):
        if r["ItemAppearanceModifierID"] == "0" or r["ItemID"] not in ima:
            ima[r["ItemID"]] = r["ItemAppearanceID"]
    appear = {r["ID"]: r for r in table("ItemAppearance")}
    sets = {r["ID"]: r["Name_lang"] for r in table("ItemSet")}

    ids = []
    for i, s in sparse.items():
        it = items.get(i)
        if not it or it["ClassID"] not in ("2", "4") or s["InventoryType"] in ("0", "18", "24", "27"):
            continue
        if int(s["ItemLevel"]) > 95:  # leftover later-expansion items (e.g. Warglaives of Azzinoth)
            continue
        if int(s["OverallQualityID"]) < 1 or BAD_RE.search(s["Display_lang"]):
            continue
        ids.append(i)
    # Forever's client leaves thousands of items (mostly open-world drops) out of ItemSparse; the server sends
    # them instead. Wowhead's Forever tooltips have the ones seen in Forever, so try every gear row in Item too.
    extra = [i for i, it in items.items() if i not in sparse and it["ClassID"] in ("2", "4")
             and it["InventoryType"] not in ("0", "18", "24", "27")]
    try:
        missing = json.load(open(MISSING))
        if isinstance(missing, list):
            missing = {i: 0 for i in missing}
    except (OSError, ValueError):
        missing = {}
    try:
        fps_old = json.load(open(FINGERPRINTS))
    except (OSError, ValueError):
        fps_old = {}
    fps = {i: fingerprint(sparse[i] if i in sparse else items[i]) for i in ids + extra}

    cache = json.load(open(CACHE)) if os.path.exists(CACHE) else {}
    now = time.time()
    changed = [i for i in ids + extra if i in cache and fps_old.get(i) not in (None, fps[i])]
    todo = []
    for i in ids + extra:
        if full or i in changed:
            todo.append(i)
        elif i in cache:
            continue
        elif i in missing and now - missing[i] < RECHECK_DAYS * 86400:
            continue
        else:
            todo.append(i)
    for i in list(cache):
        if i not in fps:
            del cache[i]  # no longer in the Forever client at all
    log(f"{len(ids) + len(extra)} gear items in the client. Fetching {len(todo)} tooltips from Wowhead "
        f"({len(changed)} changed in the client, the rest new or rechecked); {len(ids) + len(extra) - len(todo)} unchanged.")

    def tip(i):
        b = get(f"https://nether.wowhead.com/forever/tooltip/item/{i}")
        try:
            return i, json.loads(b) if b else None
        except ValueError:
            return i, None

    os.makedirs(os.path.dirname(CACHE), exist_ok=True)
    with ThreadPoolExecutor(10) as ex:
        for n, (i, d) in enumerate(ex.map(tip, todo), 1):
            if d and d.get("name"):
                cache[i] = d
                missing.pop(i, None)
            elif d and d.get("error"):
                missing[i] = now  # Wowhead has no Forever entry: not in Forever (yet)
                cache.pop(i, None)
            if n % 500 == 0:
                log(f"  {n} of {len(todo)} tooltips checked...")
                json.dump(cache, open(CACHE, "w"))
    json.dump(cache, open(CACHE, "w"))
    json.dump(missing, open(MISSING, "w"))
    json.dump(fps, open(FINGERPRINTS, "w"))
    for i in extra:
        d = cache.get(i)
        if not d or not d.get("name") or BAD_RE.search(d["name"]):
            continue
        t = d["tooltip"]
        il = re.search(r"Item Level (?:<!--ilvl-->)?(\d+)", t)
        rl = re.search(r"Requires Level (?:<!--rlvl-->)?(\d+)", t)
        sn = re.search(r'item-set=(\d+)/[^"]*"[^>]*>([^<]+)</a>', t)
        q = int(d.get("quality", 1))
        if not il or int(il.group(1)) > 95 or q < 1:
            continue
        sid = sn.group(1) if sn else "0"
        if sn and sid not in sets:
            sets[sid] = html.unescape(sn.group(2))
        sparse[i] = {"ItemLevel": il.group(1), "RequiredLevel": rl.group(1) if rl else "0",
                     "InventoryType": items[i]["InventoryType"], "OverallQualityID": str(q), "AllowableClass": "-1",
                     "ItemSet": sid, "Bonding": "0", "Display_lang": d["name"]}
        ids.append(i)

    out, icons = [], set()
    for i in ids:
        d = cache.get(i)
        if not d or not d.get("name"):
            continue
        s, it = sparse[i], items[i]
        st, w, eq, use, setlines, classes, unique, races, bind = parse(d["tooltip"])
        cls_id, sub = int(it["ClassID"]), int(it["SubclassID"])
        mask = int(s["AllowableClass"])
        if classes is None and mask not in (-1, 0, 32767, 1535):
            classes = [n for b, n in CLASS_BITS.items() if mask & b] or None
        app = appear.get(ima.get(i, ""), {})
        rec = {
            "id": int(i), "n": d["name"], "q": int(d.get("quality", s["OverallQualityID"])),
            "il": int(s["ItemLevel"]), "rl": int(s["RequiredLevel"]), "inv": int(s["InventoryType"]),
            "t": (WEAPON_SUB if cls_id == 2 else ARMOR_SUB).get(sub, ""), "wpn": cls_id == 2,
            "ic": d.get("icon") or "inv_misc_questionmark", "dsp": int(app.get("ItemDisplayInfoID") or 0),
        }
        if st: rec["st"] = st
        if w: rec["w"] = w
        if eq: rec["eq"] = eq
        if use: rec["use"] = use
        if setlines: rec["sb"] = setlines
        if classes: rec["cl"] = classes
        if unique is not None:
            rec["u"] = 1
            if unique.get("g"): rec["ug"] = unique["g"]
        if races: rec["rc"] = races
        if s["ItemSet"] != "0" and s["ItemSet"] in sets: rec["set"] = sets[s["ItemSet"]]
        # binding: 1 Binds when picked up, 2 Binds when equipped, 3 Binds when used, 4 Quest Item, 5 Account
        bind = bind or {"1": 1, "2": 2, "3": 3, "4": 4}.get(s["Bonding"], 0)
        if bind: rec["b"] = bind
        if bind == 1: rec["bop"] = 1
        rec["c"], rec["sc"] = cls_id, sub
        rq = requirements(d["tooltip"])
        if rq: rec["req"] = rq
        out.append(rec)
        icons.add(rec["ic"])
    out.sort(key=lambda r: (-r["il"], r["n"]))
    json.dump({"generated": time.strftime("%Y-%m-%d"), "build": BUILD,
               "source": "Wowhead Forever item tooltips + WoW Forever client tables (wago.tools)", "items": out},
              open(os.path.join(WEB, "items.json"), "w", encoding="utf-8"), separators=(",", ":"))
    log(f"Built {len(out)} items. Downloading icons...")
    os.makedirs(ICONS, exist_ok=True)

    def icon(n):
        p = os.path.join(ICONS, n + ".jpg")
        if os.path.exists(p) and os.path.getsize(p) > 200:
            return 0
        b = get(f"https://wow.zamimg.com/images/wow/icons/medium/{n}.jpg", binary=True)
        if b and b[:3] == b"\xff\xd8\xff":
            open(p, "wb").write(b)
            return 1
        return -1

    with ThreadPoolExecutor(10) as ex:
        res = list(ex.map(icon, sorted(icons)))
    log(f"Icons: {res.count(1)} new, {res.count(0)} present, {res.count(-1)} missing")
    return out


if __name__ == "__main__":
    build()
