"""Builds web/forever_stats.json from the WoW Forever client's own stat tables.

Everything in this file comes from the Forever client (via wago.tools, same build as the other builders):
  PlayerExpectedStat  per class and level: base mana, health per Stamina, crit per Agility, spell crit per Intellect
  ChrClasses          attack power per Strength / Agility, ranged attack power per Agility
  ExpectedStat        armor constant per attacker level (armor reduction = armor / (armor + constant))

Values the client does NOT contain (base Str/Agi/Sta/Int/Spi, base health, base crit, dodge per Agility,
spirit regen) are filled in by the app from the player's own character sheet; see index.html.

Run:  python -m wowcraft.stats_builder
"""
import json
import os
import time

from wowcraft import items_builder
from wowcraft.items_builder import WEB, table

CLASS_IDS = {1: "Warrior", 2: "Paladin", 3: "Hunter", 4: "Rogue", 5: "Priest", 7: "Shaman", 8: "Mage", 9: "Warlock", 11: "Druid"}


def build(log=print):
    log("Downloading Forever stat tables...")
    pes = table("PlayerExpectedStat")
    classes = {r["ID"]: r for r in table("ChrClasses")}
    expected = table("ExpectedStat")
    out = {"build": items_builder.BUILD, "generated": time.strftime("%Y-%m-%d"), "classes": {}, "armorConstant": {}}
    for cid, name in CLASS_IDS.items():
        c = classes.get(str(cid), {})
        levels = {}
        for r in pes:
            if int(r["ClassID"]) == cid and r["ContentSetID"] == "0" and 1 <= int(r["Level"]) <= 63:
                levels[int(r["Level"])] = {
                    "mana": int(float(r["BaseMana"])),
                    "hpPerSta": float(r["HPPerStamina"]),
                    "critPerAgi": round(float(r["CritPerAgility"]) * 100, 6),        # % crit per point
                    "scritPerInt": round(float(r["SpellCritPerIntellect"]) * 100, 6),  # % spell crit per point
                }
        out["classes"][name] = {
            "apPerStr": float(c.get("AttackPowerPerStrength") or 0),
            "apPerAgi": float(c.get("AttackPowerPerAgility") or 0),
            "rapPerAgi": float(c.get("RangedAttackPowerPerAgility") or 0),
            "levels": levels,
        }
    for r in expected:
        if r["ContentSetID"] == "0":
            out["armorConstant"][int(r["Lvl"])] = float(r["ArmorConstant"])
    json.dump(out, open(os.path.join(WEB, "forever_stats.json"), "w"), separators=(",", ":"))
    log(f"Forever stat tables: {len(out['classes'])} classes, levels 1-{max(out['classes']['Mage']['levels'])}.")
    return out


if __name__ == "__main__":
    build()
