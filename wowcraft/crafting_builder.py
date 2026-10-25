"""Builds WoWCraft's profession data (web/crafting.json) and tags crafted gear in web/items.json.

What it reads (WoW Forever client tables via wago.tools, same build as items_builder):
  SkillLineAbility + SpellEffect   which profession recipe creates which item
  SpellItemEnchantment             what each enchant / armor kit / scope adds
  SpellEquippedItems               which gear an enchant can go on
  ItemEffect + ItemXItemEffect     items that apply an enchant (scrolls, kits, scopes, arcanums, mantles)
Tooltip text for enchant procs and crafted consumables comes from Wowhead's Forever tooltips.

Run:  python -m wowcraft.crafting_builder   (after items_builder)
"""
import html
import json
import os
import re
from collections import defaultdict
from concurrent.futures import ThreadPoolExecutor

from wowcraft.items_builder import WEB, ICONS, get, table, BAD_RE

HERE = os.path.dirname(os.path.abspath(__file__))
TIP_CACHE = os.path.join(HERE, "data", "craft_tooltips.json")

PROF = {171: "Alchemy", 164: "Blacksmithing", 333: "Enchanting", 202: "Engineering", 165: "Leatherworking",
        197: "Tailoring", 182: "Herbalism", 186: "Mining", 393: "Skinning", 185: "Cooking", 129: "First Aid", 356: "Fishing"}
RECIPE_PREFIX = ("Formula:", "Pattern:", "Plans:", "Schematic:", "Recipe:", "Manual:")
STAT_WORDS = {"stamina": "sta", "intellect": "int", "spirit": "spi", "agility": "agi", "strength": "str",
              "armor": "armor", "defense": "def", "attack power": "ap", "ranged attack power": "rap"}
SCHOOLS = ("holy", "fire", "nature", "frost", "shadow", "arcane")


# ---------------------------------------------------------------- enchant text -> stats
def enchant_stats(name):
    """Turn an enchant's display text ("Stamina +7", "Healing Spells +24", "Scope (+3 Damage)") into stat keys."""
    st = {}

    def add(k, v):
        st[k] = st.get(k, 0) + v

    text = re.sub(r"\$\d+M", "", name)
    m = re.search(r"Healing Spells \+(\d+)[,/] ?Damage Spells \+(\d+)", text)
    if m:
        add("sp", int(m.group(2)))
        add("heal", int(m.group(1)) - int(m.group(2)))
        return st
    m = re.search(r"\+(\d+)% Attack Speed", text)
    if m:
        add("haste", int(m.group(1)))
        return st
    m = re.search(r"Scope \(\+(\d+) Damage\)", text)
    if m:
        add("rwdmg", int(m.group(1)))
        return st
    for part in re.split(r"\s*(?:/|,| and )\s*", text):
        part = part.strip()
        m = re.fullmatch(r"\+?(\d+)%? (.+)|(.+?) \+(\d+)(%?)(?: per 5 sec\.?)?", part)
        if not m:
            m2 = re.fullmatch(r"Mana Regen (\d+) per 5 sec\.?", part)
            if m2:
                add("mp5", int(m2.group(1)))
            continue
        if m.group(1):
            v, w = int(m.group(1)), m.group(2).lower()
        else:
            v, w = int(m.group(4)), m.group(3).lower()
        w = w.replace("%", "").strip()
        if w in STAT_WORDS:
            add(STAT_WORDS[w], v)
        elif w == "all stats":
            for k in ("str", "agi", "sta", "int", "spi"):
                add(k, v)
        elif w in ("spell power", "healing and spell damage", "spell damage"):
            add("sp", v)
        elif w in ("healing spells", "healing"):
            add("heal", v)
        elif w == "weapon damage":
            add("wdmg", v)
        elif w in ("dodge",):
            add("dodge", v)
        elif w in ("blocking", "block"):
            add("block", v)
        elif w in ("hit",):
            add("hit", v)
        elif w in ("critical strike chance", "crit"):
            add("crit", v)
        elif w in ("hp", "health"):
            add("hp", v)
        elif w == "mana":
            add("mana", v)
        elif w in ("haste", "attack speed", "counterweight attack speed"):
            add("haste", v)
        elif w.endswith(" resistance"):
            sch = w.split()[0]
            if sch == "all":
                for s in ("fire", "frost", "nature", "shadow", "arcane"):
                    add("res_" + s, v)
            else:
                add("res_" + sch, v)
        elif w == "all resistances":
            for s in ("fire", "frost", "nature", "shadow", "arcane"):
                add("res_" + s, v)
        else:
            sch = w.split()[0]
            if sch in SCHOOLS and "damage" in w:
                add("sp_" + sch, v)
    return st


# ---------------------------------------------------------------- temporary weapon enhancements
TEMP_EFFECTS = ("54", "360")
IMBUES = {"Rockbiter Weapon", "Flametongue Weapon", "Frostbrand Weapon", "Windfury Weapon"}
AURA_STAT = {"13": "spd", "135": "heal", "57": "scrit", "71": "scrit", "52": "crit", "54": "hit", "55": "shit", "85": "mp5",
             "99": "ap", "124": "rap"}
SCHOOL_MASK = {2: "holy", 4: "fire", 8: "nature", 16: "frost", 32: "shadow", 64: "arcane"}


def temp_stats(en, effects):
    """Stats a temporary enchant adds, read from SpellItemEnchantment and its aura spells.
    Returns (stats, proc) where proc is True when part of it is an on-hit effect the stat sheet can't count."""
    st, proc = {}, False
    for i in range(3):
        t, pts, arg = en[f"Effect_{i}"], int(en[f"EffectPointsMin_{i}"] or 0), en[f"EffectArg_{i}"]
        if t == "1":
            proc = True
        elif t == "2" and pts:
            st["wdmg"] = st.get("wdmg", 0) + pts
        elif t == "3" and arg not in ("", "0"):
            for e in effects.get(arg, []):
                k = AURA_STAT.get(e["EffectAura"])
                v = float(e["EffectBasePointsF"] or 0)
                if e["EffectAura"] in ("102", "131"):
                    proc = True  # only against one creature type
                    continue
                if k == "spd" and int(e["EffectMiscValue_0"] or 0) in SCHOOL_MASK:
                    k = "sp_" + SCHOOL_MASK[int(e["EffectMiscValue_0"])]  # one school only
                if k and v:
                    st[k] = st.get(k, 0) + (int(v) if v.is_integer() else v)
    if st.get("spd") and st.get("spd") == st.get("heal"):
        st["sp"] = st.pop("spd")
        st.pop("heal")
    elif st.get("spd") and st.get("heal"):  # damage and healing at different amounts
        both = min(st["spd"], st["heal"])
        st["sp"] = both
        st["spd"] -= both
        st["heal"] -= both
        st = {k: v for k, v in st.items() if v}
    return st, proc


def build_temps(effects, names, ench, item_spells, sparse, crafted, equipreq, log=print):
    from wowcraft.items_builder import table

    def rule(spell):
        q = equipreq.get(spell)
        return {"c": int(q["EquippedItemClass"]), "inv": int(q["EquippedItemInvTypes"]), "sub": int(q["EquippedItemSubclass"])} if q else {"c": 2, "inv": 0, "sub": 0}

    out = {}
    for iid, spells in item_spells.items():
        sp = sparse.get(iid)
        if not sp or sp["Display_lang"].startswith(RECIPE_PREFIX) or BAD_RE.search(sp["Display_lang"]):
            continue
        for spell in spells:
            for e in effects.get(spell, []):
                if e["Effect"] not in TEMP_EFFECTS or e["EffectMiscValue_0"] not in ench:
                    continue
                en = ench[e["EffectMiscValue_0"]]
                stt, proc = temp_stats(en, effects)
                nm = sp["Display_lang"]
                low = nm.lower()
                kind = ("poison" if "poison" in low else "oil" if "oil" in low else "stone" if "stone" in low else "other")
                rec = {"id": int(iid), "n": nm, "kind": kind, "st": stt, "proc": proc, "rule": rule(spell),
                       "rl": int(sp["RequiredLevel"] or 0), "q": int(sp["OverallQualityID"] or 1),
                       "dur": int(en["Duration"] or 0), "src": "item"}
                if iid in crafted:
                    rec["p"], rec["r"] = crafted[iid]["p"], crafted[iid]["r"]
                if sp["RequiredSkill"] == "40":
                    rec["cls"] = ["Rogue"]  # Poisons skill
                if nm.startswith(("Rune of", "Spell Notes")):
                    continue  # Season of Discovery engraving runes, not Forever
                if kind == "poison" or "toxin" in low or "anguish" in low or "torment" in low:
                    rec["cls"] = ["Rogue"]
                if "firestone" in low or "spellstone" in low:
                    rec["cls"] = ["Warlock"]  # conjured by the warlock for themselves
                if not stt:
                    rec["proc"] = True
                    proc = True
                if not stt and not proc:
                    continue
                out[f"i{iid}"] = rec
    levels = {r["SpellID"]: int(r["BaseLevel"] or 0) for r in table("SpellLevels")}
    for spell, nm in names.items():
        if nm not in IMBUES:
            continue
        for e in effects.get(spell, []):
            if e["Effect"] not in TEMP_EFFECTS or e["EffectMiscValue_0"] not in ench:
                continue
            en = ench[e["EffectMiscValue_0"]]
            stt, proc = temp_stats(en, effects)
            proc = proc or not stt
            out[f"s{spell}"] = {"id": -int(spell), "n": nm, "kind": "imbue", "st": stt, "proc": proc, "rule": rule(spell),
                                "rl": levels.get(spell, 0), "q": 1, "dur": int(en["Duration"] or 0), "src": "spell",
                                "cls": ["Shaman"], "rank": en["Name_lang"]}
    # number imbue ranks by level
    for nm in IMBUES:
        ranks = sorted((t for t in out.values() if t["n"] == nm), key=lambda t: t["rl"])
        for i, t in enumerate(ranks, 1):
            t["n"] = f"{nm} (Rank {i})"
    return sorted(out.values(), key=lambda t: (t["kind"], t["rl"], t["n"]))


# ---------------------------------------------------------------- consumable text -> stats
def buff_stats(text):
    st = {}

    def add(k, v):
        st[k] = st.get(k, 0) + v

    t = text.replace("\n", " ")
    for m in re.finditer(r"(?:increases?|gain|raises?)(?: your| the player's)? ((?:(?:Agility|Strength|Stamina|Intellect|Spirit)(?:,? and |, )?)+) by (\d+)", t, re.I):
        for w in re.findall(r"Agility|Strength|Stamina|Intellect|Spirit", m.group(1), re.I):
            add(STAT_WORDS[w.lower()], int(m.group(2)))
    for m in re.finditer(r"gain (\d+) ((?:(?:Agility|Strength|Stamina|Intellect|Spirit)(?: and |, )?)+)", t, re.I):
        for w in re.findall(r"Agility|Strength|Stamina|Intellect|Spirit", m.group(2), re.I):
            add(STAT_WORDS[w.lower()], int(m.group(1)))
    if (m := re.search(r"damage done by magical spells and effects by up to (\d+)", t, re.I)) or (m := re.search(r"(?<!holy )(?<!fire )(?<!nature )(?<!frost )(?<!shadow )(?<!arcane )spell damage by up to (\d+)", t, re.I)):
        add("spd", int(m.group(1)))
    if (m := re.search(r"healing done by (?:magical )?spells(?: and effects)? by up to (\d+)", t, re.I)):
        add("heal", int(m.group(1)))
    for sch in SCHOOLS:
        if (m := re.search(sch + r" (?:spell )?damage (?:done )?(?:by up to|by) (\d+)", t, re.I)):
            add("sp_" + sch, int(m.group(1)))
    if (m := re.search(r"(?<!ranged )attack power by (\d+)", t, re.I)):
        add("ap", int(m.group(1)))
    if (m := re.search(r"ranged attack power by (\d+)", t, re.I)):
        add("rap", int(m.group(1)))
    if (m := re.search(r"maximum health by (\d+)", t, re.I)):
        add("hp", int(m.group(1)))
    if (m := re.search(r"maximum mana by (\d+)", t, re.I)):
        add("mana", int(m.group(1)))
    if (m := re.search(r"(?:increases )?armor by (\d+)", t, re.I)):
        add("armor", int(m.group(1)))
    if (m := re.search(r"(\d+) mana (?:every|per) 5 sec", t, re.I)):
        add("mp5", int(m.group(1)))
    if (m := re.search(r"critical(?:ly)? (?:strike|hit)(?: chance)? by (\d+)%|critically hit by (\d+)%", t, re.I)):
        add("crit", int(m.group(1) or m.group(2)))
    return st


def tooltip_text(tip):
    t = re.sub(r"<!--.*?-->", "", tip).replace("<br>", "\n").replace("<br />", "\n")
    t = html.unescape(re.sub(r"<[^>]+>", "", t))
    return re.sub(r"[ \t]+", " ", t)


def build(log=print):
    log("Downloading profession tables from the Forever client...")
    sla = table("SkillLineAbility")
    effects = defaultdict(list)
    for r in table("SpellEffect"):
        effects[r["SpellID"]].append(r)
    names = {r["ID"]: r["Name_lang"] for r in table("SpellName")}
    ench = {r["ID"]: r for r in table("SpellItemEnchantment")}
    equipreq = {r["SpellID"]: r for r in table("SpellEquippedItems")}
    item_effect = {r["ID"]: r for r in table("ItemEffect")}
    item_spells = defaultdict(list)
    for r in table("ItemXItemEffect"):
        e = item_effect.get(r["ItemEffectID"])
        if e:
            item_spells[r["ItemID"]].append(e["SpellID"])
    items = {r["ID"]: r for r in table("Item")}
    sparse = {r["ID"]: r for r in table("ItemSparse")}
    skills = {r["ID"]: r["DisplayName_lang"] for r in table("SkillLine")}

    # ---- recipes: which profession makes which item
    crafted = {}
    recipe_enchants = []  # (spell id, enchant id)
    for r in sla:
        prof = PROF.get(int(r["SkillLine"]))
        if not prof:
            continue
        for e in effects.get(r["Spell"], []):
            if e["Effect"] == "24" and e["EffectItemType"] != "0":
                iid = e["EffectItemType"]
                rank = max(int(r["MinSkillLineRank"] or 0), int(r["TrivialSkillLineRankLow"] or 0))
                if iid not in crafted or rank < crafted[iid]["r"]:
                    crafted[iid] = {"p": prof, "r": rank}
            if e["Effect"] == "53" and prof == "Enchanting":
                rank = max(int(r["MinSkillLineRank"] or 0), int(r["TrivialSkillLineRankLow"] or 0))
                recipe_enchants.append((r["Spell"], e["EffectMiscValue_0"], rank))

    # ---- enchant catalog
    def ench_name(eid):
        en = ench[eid]
        n = en["Name_lang"]
        for i in range(3):
            n = n.replace(f"$k{i + 1}", en[f"EffectPointsMin_{i}"])
        return re.sub(r"\+\$\d+M", "+", n)

    def slot_rule(spell_id):
        q = equipreq.get(spell_id)
        if not q:
            return None
        return {"c": int(q["EquippedItemClass"]), "inv": int(q["EquippedItemInvTypes"]), "sub": int(q["EquippedItemSubclass"])}

    catalog = {}

    def entry(eid, spell_id):
        if eid not in ench:
            return None
        if eid not in catalog:
            en = ench[eid]
            req = PROF.get(int(en.get("RequiredSkillID") or 0)) or skills.get(en.get("RequiredSkillID") or "")
            nm = ench_name(eid)
            catalog[eid] = {"id": int(eid), "n": nm, "st": enchant_stats(nm), "rule": slot_rule(spell_id),
                            "src": [], "spell": int(spell_id)}
            if req and en.get("RequiredSkillID") not in ("0", ""):
                catalog[eid]["needs"] = {"n": req, "r": int(en.get("RequiredSkillRank") or 0)}
        elif not catalog[eid]["rule"]:
            catalog[eid]["rule"] = slot_rule(spell_id)
        return catalog[eid]

    for spell, eid, rank in recipe_enchants:
        c = entry(eid, spell)
        if c is not None:
            c["src"].append({"k": "enchanter", "n": names.get(spell, ""), "r": rank})
    for iid, spells in item_spells.items():
        sp = sparse.get(iid)
        if not sp or sp["Display_lang"].startswith(RECIPE_PREFIX) or BAD_RE.search(sp["Display_lang"]):
            continue
        for spell in spells:
            for e in effects.get(spell, []):
                if e["Effect"] == "53":
                    c = entry(e["EffectMiscValue_0"], spell)
                    if c is None:
                        continue
                    src = {"k": "item", "id": int(iid), "n": sp["Display_lang"], "bop": sp["Bonding"] == "1",
                           "q": int(sp["OverallQualityID"])}
                    if iid in crafted:
                        src["p"] = crafted[iid]["p"]
                        src["r"] = crafted[iid]["r"]
                    if sp["RequiredSkill"] != "0":
                        src["needs"] = {"n": PROF.get(int(sp["RequiredSkill"])) or skills.get(sp["RequiredSkill"], ""),
                                        "r": int(sp["RequiredSkillRank"] or 0)}
                    c["src"].append(src)
    catalog = {k: v for k, v in catalog.items() if v["src"] and v["rule"]}
    # skip enchants that only affect gathering or riding
    catalog = {k: v for k, v in catalog.items()
               if not re.match(r"(Mining|Herbalism|Skinning|Fishing) \+|Minor Mount Speed", v["n"])}

    # ---- temporary weapon enhancements: sharpening stones, weightstones, oils, poisons, shaman imbues.
    # They sit on top of the permanent enchant instead of replacing it (spell effects 54 and 360 in Forever's client).
    temps = build_temps(effects, names, ench, item_spells, sparse, crafted, equipreq, log)

    # ---- consumables made by professions (flasks, elixirs, buff food)
    cons_ids = []
    for iid, cr in crafted.items():
        it, sp = items.get(iid), sparse.get(iid)
        if not it or not sp or it["ClassID"] != "0" or BAD_RE.search(sp["Display_lang"]):
            continue
        if it["SubclassID"] in ("2", "3", "5", "1"):
            cons_ids.append(iid)

    cache = json.load(open(TIP_CACHE)) if os.path.exists(TIP_CACHE) else {}

    def tip(kind, i):
        key = f"{kind}:{i}"
        if key in cache:
            return key, cache[key]
        b = get(f"https://nether.wowhead.com/forever/tooltip/{kind}/{i}")
        try:
            return key, json.loads(b) if b else None
        except ValueError:
            return key, None

    jobs = [("item", i) for i in cons_ids]
    jobs += [("item", str(t["id"])) for t in temps if t["src"] == "item"]
    jobs += [("spell", c["spell"]) for c in catalog.values() if not c["st"]]
    log(f"Fetching {len(jobs)} tooltips from Wowhead...")
    with ThreadPoolExecutor(10) as ex:
        for key, d in ex.map(lambda j: tip(*j), jobs):
            if d:
                cache[key] = d
    os.makedirs(os.path.dirname(TIP_CACHE), exist_ok=True)
    json.dump(cache, open(TIP_CACHE, "w"))

    # keep only temporary items Wowhead has in Forever (the client still carries Season of Discovery leftovers)
    temps = [t for t in temps if t["src"] != "item" or (cache.get(f"item:{t['id']}") or {}).get("name")]
    # weapon (and shield) enhancements only: not fishing lures or relic/rune effects
    temps = [t for t in temps if t["rule"]["c"] == 2 and t["rule"]["sub"] != 1 << 20]
    temps = [t for t in temps if t["src"] != "item" or not re.search(r"Use: NYI", tooltip_text(cache[f"item:{t['id']}"]["tooltip"]))]
    for t in temps:
        d = cache.get(f"item:{t['id']}") if t["src"] == "item" else None
        if d:
            txt = tooltip_text(d["tooltip"])
            m = re.search(r"Use: ([^\n]+)", txt)
            if m:
                t["desc"] = m.group(1).strip()[:220]
            t["ic"] = d.get("icon")
            # a few Forever scrolls store their bonus as a stat type the client tables don't spell out; read the tooltip
            if not t["st"] and t.get("desc"):
                ds = t["desc"]
                if (mm := re.search(r"(Fire|Frost|Arcane|Shadow|Nature|Holy) spells and effects by (?:up to )?(\d+)", ds)):
                    t["st"] = {"sp_" + mm.group(1).lower(): int(mm.group(2))}
                elif (mm := re.search(r"chance to hit with spells by (\d+(?:\.\d+)?)%", ds)):
                    t["st"] = {"shit": float(mm.group(1))}
                elif (mm := re.search(r"chance to critically hit(?: with spells)? by (\d+(?:\.\d+)?)%", ds)):
                    t["st"] = {"scrit": float(mm.group(1))}
                if t["st"] and not re.search(r"occasionally|chance to|reset|reducing", ds.replace("chance to hit", "").replace("chance to critically", "")):
                    t["proc"] = False

    for c in catalog.values():
        d = cache.get(f"spell:{c['spell']}")
        if not c["st"] and d and d.get("tooltip"):
            txt = tooltip_text(d["tooltip"])
            m = re.search(r"(Permanently .*?)(?:\n|$)", txt)
            c["desc"] = (m.group(1) if m else "").strip()[:220]

    consumables = []
    sub_kind = {"1": "potion", "2": "elixir", "3": "flask", "5": "food"}
    for iid in cons_ids:
        d = cache.get(f"item:{iid}")
        if not d or not d.get("name"):
            continue
        txt = tooltip_text(d["tooltip"])
        use = " ".join(re.findall(r"Use: ([^\n]+)", txt))
        if re.search(r"against (Beasts|Demons|Undead)", use):
            continue  # situational slaying potions
        st = buff_stats(use)
        if not st:
            continue  # healing/mana potions, plain food and bandages don't change your sheet
        kind = sub_kind.get(items[iid]["SubclassID"], "other")
        dur = re.search(r"(?:Lasts(?: for)?|for) (\d+(?:\.\d+)?) (sec|min|hour|hr)", use)
        mins = 60.0
        if dur:
            v, u = float(dur.group(1)), dur.group(2)
            mins = v / 60 if u == "sec" else v * 60 if u in ("hour", "hr") else v
        if kind in ("potion", "elixir") and mins < 10:
            kind = "potion"
        elif kind == "potion":
            kind = "elixir"
        sp = sparse[iid]
        consumables.append({"id": int(iid), "n": d["name"], "q": int(d.get("quality", 1)), "ic": d.get("icon", "inv_misc_questionmark"),
                            "kind": kind, "st": st, "use": use.strip()[:260], "p": crafted[iid]["p"], "r": crafted[iid]["r"],
                            "bop": sp["Bonding"] == "1", "rl": int(sp["RequiredLevel"])})
    consumables.sort(key=lambda c: (c["kind"], -c["rl"], c["n"]))

    # ---- icons for consumables and the profession badges
    prof_icons = ["trade_alchemy", "trade_blacksmithing", "trade_engraving", "trade_engineering", "trade_leatherworking", "trade_tailoring",
                  "spell_nature_naturetouchgrow", "trade_mining", "inv_misc_pelt_wolf_01", "inv_misc_food_15", "spell_holy_sealofsacrifice", "trade_fishing"]
    for c in consumables + [{"ic": n} for n in prof_icons]:
        p = os.path.join(ICONS, c["ic"] + ".jpg")
        if not os.path.exists(p):
            b = get(f"https://wow.zamimg.com/images/wow/icons/medium/{c['ic']}.jpg", binary=True)
            if b and b[:3] == b"\xff\xd8\xff":
                open(p, "wb").write(b)

    # ---- tag crafted gear in items.json
    ipath = os.path.join(WEB, "items.json")
    idb = json.load(open(ipath, encoding="utf-8"))
    n_crafted = 0
    for it in idb["items"]:
        cr = crafted.get(str(it["id"]))
        if cr:
            it["cr"] = cr
            n_crafted += 1
        else:
            it.pop("cr", None)
    json.dump(idb, open(ipath, "w", encoding="utf-8"), separators=(",", ":"))

    out = {
        "primary": ["Alchemy", "Blacksmithing", "Enchanting", "Engineering", "Leatherworking", "Tailoring", "Herbalism", "Mining", "Skinning"],
        "secondary": ["Cooking", "First Aid", "Fishing"],
        "specs": {"Blacksmithing": ["Armorsmith", "Weaponsmith", "Master Swordsmith", "Master Hammersmith", "Master Axesmith"],
                  "Leatherworking": ["Dragonscale Leatherworking", "Elemental Leatherworking", "Tribal Leatherworking"],
                  "Engineering": ["Gnomish Engineer", "Goblin Engineer"]},
        "enchants": sorted(catalog.values(), key=lambda c: c["n"]),
        "consumables": consumables,
        "temps": temps,
    }
    json.dump(out, open(os.path.join(WEB, "crafting.json"), "w", encoding="utf-8"), separators=(",", ":"))
    log(f"Professions: {n_crafted} crafted gear pieces tagged, {len(catalog)} enchants, {len(temps)} temporary weapon "
        f"enhancements, {len(consumables)} consumables.")
    return out


if __name__ == "__main__":
    build()
