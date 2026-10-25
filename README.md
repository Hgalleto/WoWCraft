# WoWCraft: Forever Talent Forge

A World of Warcraft: Forever theorycrafter. Pick your faction, race and class, spend talent points in the real Forever trees, enter your gear, and compare builds to find the strongest one for your role.

## Starting it

1. Double-click **Launch WoWCraft.bat**. (First time only: **Create Desktop Shortcut.bat** puts a WoWCraft icon on your desktop.)
2. The app opens in your browser at http://127.0.0.1:8765, with a small WoWCraft control window. Keep that window open while you use the app; **Quit** closes it.
3. Optional: run **Install App Window (optional).bat** once and WoWCraft opens in its own window instead of a browser tab.

Needs Python 3.9+ (python.org, or `winget install Python.Python.3.12`). Nothing else is required.

## What's in it

- **Character plate**: first and last name, Alliance/Horde, race and class. They lock once created. **Change Race / Class** unlocks race, class and faction.
- **Specialization**: pick one of your class's three talent trees on the plate. That sets your role and loads a recommended build: the most-used complete Forever build for that spec on talentsforever.com, mostly in your main tree with support points in the others. Below level 60 it keeps the main-tree points and gives back the support points first. **Load recommended build** on the Talents tab reloads it any time.
- **Racials**: the four Forever racials for your race (Skyborne differs by faction), plus class-specific racial spells where Forever has them (Priests).
- **Talents**: all 27 Forever trees with Blizzard's icons and tree art, row unlocks every 5 points, prerequisite arrows, rank-by-rank tooltips, and N / C / M badges for talents that are new, changed or moved compared with Classic.
- **Gear & Stats**: a character-pane layout with every slot (plus shirt and tabard). Click a slot to get a searchable list of only the items that fit it, with icons, item level and stats. By default the list is sorted by how much each item would raise your build's main number (DPS, HPS or survivability). Filters cover class usability, "Usable at level N and below", "Only items I can obtain" (professions) and quality; untick both to see everything. Gear above your level is flagged and not counted, with buttons to remove it or fill the best gear for your level. Only the tooltip's "Requires Level N" limits when you can wear something; item level is just the item's score, and items with no required level can be worn at any level.
  - **Gear from**: chips above the item list pick where gear may come from: Open world (quests, vendors, world drops, rares, reputation), Dungeons, Raids, Crafted, PvP and Source unknown. Raid gear is never required: untick Raids and both the list and **Fill best gear** stick to what you ticked.
  - **Restrictions**: class-only items (tier sets, class quest rewards) show "Classes:" and only appear for those classes; librams, totems and idols only for Paladins, Shamans and Druids; weapon and armor types follow Forever's proficiencies; race-only items show "Races:"; faction-only items (Alliance or Horde quests, vendors and PvP ranks) say so and can't be picked by the other faction unless they're Bind on Equip. Changing race, class or faction takes off anything you can no longer use.
  - **Confirmed gear only**: gear counts as confirmed when ForeverDB players have seen it in Forever, or when it comes from Forever's own client data, such as a crafting recipe in the Forever client, at any level. Everything else stays in the database but is inactive: it's hidden from the lists and Fill best gear, and if a saved build is wearing it, it's flagged and not counted (with a button to take it off). Each **Item sources** update re-checks this, so items switch on by themselves once they're confirmed. To see unconfirmed gear anyway, tick "Show gear not yet confirmed in Forever" on the Updates tab.
  - **Binding and Unique**: tooltips show Binds when picked up, Binds when equipped, Binds when used or Quest Item, and equipped items show Soulbound. Unique items (and Unique-Equipped groups like the Seal of Battle rings) can only be worn once; equipping a second copy moves it.
  - **More open-world gear**: Forever's client leaves thousands of items, mostly open-world gear, out of its main item table and gets them from the server, so WoWCraft also checks Wowhead's Forever tooltips for every gear item in the client and adds the ones Forever has (about 4,800 more items). Item tooltips say where to get each item (drops, quests, vendors, reputation, PvP, crafting), and crafted items list the skill needed, how the recipe is learned, and the reagents with where each comes from. Sources ForeverDB players have seen in Forever show normally; ones that are only Classic data are greyed and marked "not yet seen in Forever". A 3D model of your race and gender wears whatever you equip. Buffs/enchants, naked base stats and target level sit underneath.
- **Professions** (on the character plate, changeable any time): two primary professions, a specialization where Forever has one (Armorsmith, Weaponsmith, Dragonscale, Gnomish Engineer and so on), and any of Cooking, First Aid and Fishing. They decide what gear you can get:
  - Soulbound crafted items only show up if you have that profession, since you'd have to make them for yourself.
  - Bind-on-Equip crafted items are available to everyone (buy or trade).
  - Items whose tooltip says "Requires Engineering (225)" and the like need that profession to equip, whatever the binding.
- **Enchants**: one permanent enchantment per item, like in game. Enchants, armor kits, spikes, scopes and shoulder enchants all share that one spot, so applying a new one (an armor kit on an enchanted chest, say) replaces what was there. Every slot has an Enchant chooser listing only the enchants, armor kits, scopes, spikes, arcanums and shoulder enchants that fit the equipped item. Anyone can have an enchanter apply an enchant or use a tradeable enchant scroll; ones that need a profession are hidden unless you have it. Applied enchants show as bright cyan text under the item.
- **Temporary weapon enhancements**: under the enchant list for each weapon. Sharpening stones, weightstones, wizard and mana oils, shield coatings, Rogue poisons, Shaman imbues (Rockbiter, Flametongue, Frostbrand, Windfury), Warlock firestones and spellstones, and Forever's imbue scrolls. Values come from Forever's client tables. These go on top of the permanent enchant, so a weapon can have one enchant and one temporary enhancement; a new temporary one replaces the old one. Class-only ones (poisons, imbues, firestones) only show for that class. On-hit effects like poisons and Windfury are listed, but the stat sheet can't put a number on them.
- **Consumables**: pick a flask, food, elixirs and potions made by Alchemy and Cooking. They count toward your stats and are sorted by how much they help your build.
- **Professions & Crafting tab**: ranks all nine primary professions for your class and spec as a whole, not your current level or gear. It gears a level 60 character with your spec's recommended build in the best pre-raid (or full raid) gear without a profession, then again with each one. It shows the gain from soulbound crafts, profession-only items and self-only enchants, plus how many of the spec's best pieces and enchants each profession would let you make yourself. Columns compare all three specs. Below that you can browse crafted gear, enchants and consumables by profession with availability and upgrade value. Equip or apply straight from the list.
- **Level-accurate stats**: change your level (1 to 60) and every number rescales. From the Forever client's own tables (build 1.60.1.70532): base mana, health per Stamina, Agility per 1% crit and Intellect per 1% spell crit for every class and level, attack power per Strength/Agility, ranged attack power per Agility, and the armor constant for each target level. Hit needed against a boss (8% melee, 17% spells, 27% dual wield) comes from the Forever beta client. Targets are relative to your level (same level up to +3 boss).
- **Your character sheet**: Forever's server, not its files, decides base attributes, base health, base crit, dodge and the level part of attack power, and those numbers aren't published. Until you enter them they're labelled **Estimate**. Strip your gear in game, then copy your character sheet into "Your character sheet" on the Gear & Stats tab. One level is enough, and two or more let WoWCraft fill in every level in between. Saved sheets are shared by every character of that race and class (`builds\_calibration.json`). The Character Sheet tab's "Where these numbers come from" table shows the source of every value.
- **Character Sheet**: health, mana, armor, attack/spell power, crit, hit vs cap, avoidance, regen, estimated melee/ranged/spell DPS, HPS and survivability, and stat weights for your role.
- **Updates**: one place to keep the data current as Forever changes. Each part has its own button: **Everything** (races, classes, talents, specializations, class stats, all gear with its class and race limits, professions and sources in one go), **Races, classes & talents**, **Gear & items**, **Professions & crafting**, **Item sources** and **Class stat tables**. Updates only process changes: new things are added, things Forever no longer has are removed, changed things are replaced, and nothing is duplicated. Item tooltips are only re-downloaded for items that are new or whose Forever client data changed (tick **Full re-check** to ask about every item). WoWCraft also picks up new Forever client builds on its own. When an update finishes you get a list of what was added, removed and changed, then **Reload** to use it. Saved builds aren't touched; a piece of gear that's been removed from Forever just shows as empty.
- **Saved Builds & Compare**: saves each build as a file in `builds\`, ranks your builds for a role, compares up to 3 side by side, and copies or imports build codes.

## Your data

- Saved builds: `builds\*.json` (one file per build; OneDrive syncs them).
- The character you're currently editing: `builds\_current.json`.

## The 3D model

The model uses Wowhead's model viewer. WoWCraft downloads the model files the first time you view each item, so that part needs an internet connection. It keeps them in `%LOCALAPPDATA%\WoWCraft\modelcache`, outside OneDrive, so they don't fill your OneDrive. Skyborne isn't in Wowhead's viewer yet, so Skyborne characters show a Night Elf model. A few Forever-only items have no model yet and simply don't appear on the character.

## Updating talent data

Use the **Updates** tab (see above). WoWCraft also checks for new talent data when it starts (at most every 12 hours), and the control window has an **Update talent data** button.

From a terminal: `py WoWCraft.pyw --update` (talents), `py WoWCraft.pyw --update-items` (gear, professions and sources), `py WoWCraft.pyw --update-all` (everything). Add `--full` to re-check every item.

## Credits

Talent, racial and tooltip data: [talentsforever.com](https://talentsforever.com) data export, CC BY 4.0, read from the WoW Forever beta client.
Item stats and icons: Wowhead's WoW Forever item tooltips (https://www.wowhead.com/forever/items), with the item list and appearances from the WoW Forever client tables via wago.tools (build 1.60.1.70532).
Item sources, recipes, reagents and vendors: Data from ForeverDB.net (https://foreverdb.net), from the ForeverDB addon's data files (GPL-3.0 with an attribution term; see THIRD_PARTY_NOTICES.md).
Recommended spec builds: talentsforever.com popular builds (most-used complete builds since the October 8 beta patch).
3D model viewer: Wowhead.
Talent icons, item icons, tree backgrounds and models: © Blizzard Entertainment.
Per-level stat coefficients: WoW Forever client tables PlayerExpectedStat, ChrClasses and ExpectedStat (build 1.60.1.70532) via wago.tools. Hit caps: Forever beta client as reported by foreverdb.net and mmonster.co. Anything Forever doesn't publish is labelled Estimate in the app. DPS/HPS figures are for comparing builds, not log-accurate predictions.

## Files

```
WoWCraft.pyw                 the program (double-click or run with Python)
Launch WoWCraft.bat          starts it without a console window
wowcraft\server.py           local server and build storage
wowcraft\updater.py          downloads talent data and artwork
wowcraft\items_builder.py    builds the gear database
wowcraft\crafting_builder.py builds the profession, enchant and consumable data
wowcraft\stats_builder.py    builds the per-level Forever stat tables (web\forever_stats.json)
wowcraft\sources_builder.py  adds where-to-get-it, recipes and reagents (Data from ForeverDB.net)
wowcraft\update_manager.py   runs the Updates tab's updates and works out what changed
wowcraft\web\spec_builds.json recommended build for each spec
wowcraft\web\items.json      the gear database
wowcraft\web\crafting.json   enchants, consumables and profession lists
wowcraft\web\index.html      the interface and stat engine
wowcraft\web\game.json       talent/racial data the interface reads
wowcraft\web\assets\         talent icons and tree backgrounds
wowcraft\data\               raw talent data and stat-effect hints
builds\                      your saved builds
```
