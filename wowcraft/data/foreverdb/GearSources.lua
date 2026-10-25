-- Data: ForeverDB.net (https://foreverdb.net), build 1.60.1.70532. Reuse requires this credit: see NOTICE.txt (GPL-3.0 section 7(b)).
local _, ns = ...
-- Where each item in the gear finder comes from (tools/build_addon_gearfinder.py): a line per item,
-- "id (base 36)|name|groups|flags|side|twin|limit|sources", indexed on first use (GearFinder.lua).
-- Labels: s Seen in Forever, c Clue (unconfirmed), f Forever client, k Classic data.
ns.gfItemText = [==[
1o|Layered Tunic|q|s|a|11851||q^6^Bounty on Garrick Padfoot^2^a^s
1p|Dwarven Leather Pants|q|s|a|3272||q^183^The Boar Hunter^1^a^s
27|Dwarven Cloth Britches|q|s|a|6713||q^183^The Boar Hunter^1^a^s
28|Soft Fur-lined Shoes|q|s|a|4915||q^33^Wolves Across the Border^1^a^s
2d|Dirty Leather Vest|v|s|h|||v^2113^Archibald Kava^1420^32.3^65.6^62^h^s
3w|Brawler's Boots|d|||||d^229^Spire Spider^0.48^0^k
5d|Tattered Cloth Vest|v|s|h|||v^2113^Archibald Kava^1420^32.3^65.6^48^h^s
5e|Tattered Cloth Pants|v|s|h|||v^2113^Archibald Kava^1420^32.3^65.6^49^h^s
5f|Tattered Cloth Boots|v|s|h|||v^2113^Archibald Kava^1420^32.3^65.6^36^h^s
5k|Thick Cloth Vest|v|s||||v^3492^Vexspindle^1413^62.2^38.4^2270^^s
5l|Thick Cloth Pants|v|s||||v^3492^Vexspindle^1413^62.2^38.4^2278^^s
5m|Thick Cloth Shoes|v|s||||v^3492^Vexspindle^1413^62.2^38.4^1714^^s
5n|Thick Cloth Gloves|v|s||||v^3492^Vexspindle^1413^62.2^38.4^1147^^s
5t|Dirty Leather Pants|v|s|h|||v^2113^Archibald Kava^1420^32.3^65.6^60^h^s
5u|Dirty Leather Boots|v|s|h|||v^2113^Archibald Kava^1420^32.3^65.6^45^h^s
6k|Cured Leather Armor|v|s||||v^3492^Vexspindle^1413^62.2^38.4^2795^^s
6l|Cured Leather Pants|v|s||||v^3492^Vexspindle^1413^62.2^38.4^2805^^s
6m|Cured Leather Boots|v|s||||v^3492^Vexspindle^1413^62.2^38.4^2112^^s
6n|Cured Leather Gloves|v|s||||v^3492^Vexspindle^1413^62.2^38.4^1413^^s
7x|Scalemail Vest|v|s||||v^3493^Grazlix^1413^62.2^38.4^3555^^s
7y|Scalemail Pants|v|s||||v^3493^Grazlix^1413^62.2^38.4^3229^^s
7z|Scalemail Boots|v|s||||v^3493^Grazlix^1413^62.2^38.4^2441^^s
jq|Bracers of the People's Militia|q|s|a|||q^102^Patrolling Westfall^8^a^s
jr|Tattered Cloth Gloves|v|s|h|||v^2113^Archibald Kava^1420^32.3^65.6^25^h^s
ju|Dirty Leather Gloves|v|s|h|||v^2113^Archibald Kava^1420^32.3^65.6^32^h^s
jy|Scalemail Gloves|v|s||||v^3493^Grazlix^1413^62.2^38.4^1614^^s
jz|Rabbit Handler Gloves|q|s|a|3275||q^179^Dwarven Outfitters^1^a^s
k0|Brawler Gloves|dw|s||||d^2959^Atrexis the Grave Knight^50^0^s~m^269134^NPC 269134^0^s
k7|Notched Shortsword|w|sr||||m^251676^NPC 251676^1.39^s~m^254626^NPC 254626^3.03^s
ko|Thunderbrew's Boot Flask|q||a|||q^53^Sweet Amber^40^a^k
kx|Dragonmaw Shortsword|w|||||w^0^0^k
ky|Shortsword of Vengeance|w|||||w^0^0^k
l0|Tunnel Pick|w|s||||w^0^0^k
l7|Ice-covered Bracers|w|||||w^0^0^k
la|Flanged Mace|w|s||||m^275703^NPC 275703^0^s~m^2008^Gnarlpine Warrior^0^s
lb|Long Bo Staff|w|s||||m^3113^Razormane Dustrunner^0^s~m^252068^NPC 252068^2.22^s
lc|Lumberjack Axe|w|||||o^Battered Chest^1.28^k~w^5^14^k
lk|Vendetta|dwx|||||d^47^Overlord Ramtusk^0.03^0^k~d^47^Aggem Thorncurse^0.03^0^k
lm|Kobold Excavation Pick|w|||||m^476^Kobold Geomancer^5.98^k
lp|Stone Gnoll Hammer|w|||||m^478^Riverpaw Outrunner^7.88^k~m^97^Riverpaw Runt^7.8^k
lx|Stout Battlehammer|dwx|r||||d^36^Rhahk'Zor^0.07^0^k~d^36^Edwin VanCleef^0.02^0^k
m0|Knitted Sandals|vw|s||||v^4164^Cylania^1457^59.1^45.8^207^^s~m^3530^Pyrewood Tailor^83.42^k
m1|Knitted Gloves|vw|s||||v^4164^Cylania^1457^59.1^45.8^139^^s~m^3530^Pyrewood Tailor^84.02^k
m2|Knitted Pants|vw|s||||v^4164^Cylania^1457^59.1^45.8^279^^s~m^3530^Pyrewood Tailor^83.18^k
m3|Knitted Tunic|vw|s||||v^4164^Cylania^1457^59.1^45.8^280^^s~m^3530^Pyrewood Tailor^82.56^k
m4|Rough Leather Boots|vw|s||||v^4164^Cylania^1457^59.1^45.8^264^^s~m^3532^Pyrewood Leatherworker^65.82^k
m5|Rough Leather Gloves|vw|s||||v^4164^Cylania^1457^59.1^45.8^176^^s~m^3532^Pyrewood Leatherworker^65.82^k
m6|Rough Leather Pants|vw|s||||v^4164^Cylania^1457^59.1^45.8^354^^s~m^3532^Pyrewood Leatherworker^65.32^k
m7|Rough Leather Vest|vw|s||||v^4164^Cylania^1457^59.1^45.8^355^^s~m^3532^Pyrewood Leatherworker^65.82^k
mo|Small Hand Blade|w|||||w^0^0^k
ms|Slicer Blade|w|||||w^0^0^k
mt|Riverpaw Leather Vest|w|s||||w^0^0^k
my|Brutish Riverpaw Axe|w|||||w^0^0^k
mz|Wicked Blackjack|w|||||w^0^0^k
n4|Silver Defias Belt|w|||||w^0^0^k
n9|Heavy Weave Armor|v|s||||v^4164^Cylania^1457^59.1^45.8^1124^^s
na|Heavy Weave Pants|v|s||||v^4164^Cylania^1457^59.1^45.8^1128^^s
nb|Heavy Weave Gloves|v|s||||v^4164^Cylania^1457^59.1^45.8^566^^s
nc|Heavy Weave Shoes|v|s||||v^4164^Cylania^1457^59.1^45.8^853^^s
nf|Tanned Leather Boots|v|s||||v^4164^Cylania^1457^59.1^45.8^1077^^s
ng|Tanned Leather Gloves|v|s||||v^4164^Cylania^1457^59.1^45.8^720^^s
nh|Tanned Leather Pants|v|s||||v^4164^Cylania^1457^59.1^45.8^1447^^s
ni|Tanned Leather Jerkin|v|s||||v^4164^Cylania^1457^59.1^45.8^1452^^s
nj|Chainmail Armor|vw|s||||v^4164^Cylania^1457^59.1^45.8^1749^^s~m^3528^Pyrewood Armorer^100^k
nk|Chainmail Pants|vw|s||||v^4164^Cylania^1457^59.1^45.8^1755^^s~m^3528^Pyrewood Armorer^100^k
nl|Chainmail Boots|vw|s||||v^4164^Cylania^1457^59.1^45.8^1326^^s~m^3528^Pyrewood Armorer^100^k
nm|Chainmail Gloves|vw|s||||v^4164^Cylania^1457^59.1^45.8^883^^s~m^3528^Pyrewood Armorer^100^k
nn|Cutlass|v|s||||v^3658^Lizzarik^1413^52.4^30.8^2023^^s
no|Mace|v|s||||v^3658^Lizzarik^1413^52.4^30.8^1739^^s
np|Hatchet|v|s||||v^3658^Lizzarik^1413^52.4^30.8^2409^^s
nq|Quarter Staff|v|s||||v^3658^Lizzarik^1413^52.4^30.8^3022^^s
nw|Cavalier's Boots|q||a|||q^416^Rat Catching^10^a^k
nz|Gloom Reaper|dwx|r||||d^90^Mekgineer Thermaplugg^0.43^0^k
o1|Leaden Mace|Rwx|r||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
o2|Monk's Staff|wx|r||||o^Ancient Treasure^3.5^k~o^Captain's Chest^1.3^k
o3|Gloves of Holy Might|u|||||
o6|Fiery War Axe|u|||||
o8|Rockslicer|d|U||||d^36^Rhahk'Zor^5^0^k
o9|Staff of Jordan|u|||||
ol|Black Metal Axe|w|s||||m^3^Flesh Eater^0^s
oo|Naga Battle Gloves|d|s||||d^48^Lady Sarevess^33.33^0^s
oq|Twisted Chanter's Staff|w|||||w^0^0^k
os|Gnoll Casting Gloves|w|||||w^0^0^k
ox|Madwolf Bracers|w|s||||w^0^0^k
oz|Venom Web Fang|w|r||||w^0^0^k
pe|Large Ogre Chain Armor|w|||||w^0^0^k
pm|Dacian Falx|v|s||||v^11137^Xai'ander^1440^35.8^52^12038^^s
pn|Longsword|v|s||||v^11137^Xai'ander^1440^35.8^52^8743^^s
po|Maul|v|s||||v^11137^Xai'ander^1440^35.8^52^10972^^s
pp|Flail|v|s||||v^11137^Xai'ander^1440^35.8^52^7797^^s
pq|Battle Axe|v|s||||v^11137^Xai'ander^1440^35.8^52^9784^^s
pr|Double Axe|v|s||||v^11137^Xai'ander^1440^35.8^52^6953^^s
ps|Long Staff|v|s||||v^11137^Xai'ander^1440^35.8^52^9860^^s
py|Stalvan's Reaper|wx|||||x^4636^Strong Iron Lockbox^k~x^6827^Box of Supplies^k
pz|Night Watch Shortsword|w|||||w^0^0^k
q0|Midnight Mace|wx|||||x^4636^Strong Iron Lockbox^k~x^6827^Box of Supplies^k
q1|Black Duskwood Staff|wx|||||x^4636^Strong Iron Lockbox^k~x^6827^Box of Supplies^k
q8|Elemental Mage Staff|w|||||w^0^0^k
rb|Red Linen Sash|q|s|a|||q^83^Red Linen Goods^4^a^s
s1|Compact Hammer|q||a|||q^417^A Pilot's Revenge^8^a^k
s2|Gnarled Short Staff|q|s|a|||q^320^Return to Bellowfiz^2^a^s
s3|Sharp Axe|q|s|a|||q^320^Return to Bellowfiz^2^a^s
tw|Defias Renegade Ring|dw|s||||d^34^^1^0^k~m^1706^Defias Prisoner^1^k
tx|Defias Mage Ring|w|U||||w^0^0^k
v0|Ring of Pure Silver|q||a|||q^1046^Raene's Cleansing^18^a^k
v5|Feet of the Lynx|w|||||w^0^0^k
w2|Belt of the People's Militia|q|s|a|||q^102^Patrolling Westfall^8^a^s
w3|Rod of the Sleepwalker|d|s||||d^48^Twilight Lord Kelris^66.67^0^s
w4|Lavishly Jeweled Ring|d|||||d^36^Gilnid^45^0^k
wj|Well-stitched Robe|q||a|||q^59^Cloth and Leather Armor^7^a^k
wk|Grayson's Torch|q|||||q^104^The Coastal Menace^15^^k
wl|Weather-worn Boots|q|s|a|||q^88^Princess Must Die!^6^a^s
wv|Elastic Wristguards|q||a|6062||q^147^Manhunt^7^a^k
x2|Overseer's Cloak|w|||||w^0^0^k
x6|Bastard Sword|v|s||||v^251364^Destin Thriceforged^2521^43.3^23.6^104^^s
x8|Tabar|v|s||||v^3658^Lizzarik^1413^52.4^30.8^2214^^s
x9|Giant Mace|v|s||||v^3658^Lizzarik^1413^52.4^30.8^2666^^s
xa|Claymore|v|s||||v^3658^Lizzarik^1413^52.4^30.8^2676^^s
xc|Large Wooden Shield|v|s|h|||v^4559^Timothy Weldon^1458^62.7^39.2^82^h^s
xd|Dull Heater Shield|v|s|a|2376||v^2046^Andrew Krighton^1429^41.7^65.7^473^a^s
xe|Wall Shield|vw|s||||v^5107^Mangorn Flinthammer^1455^32^58.2^1839^^s~m^3528^Pyrewood Armorer^100^k
xf|Aegis of Stormwind|wx|||||m^15740^Colossus of Zora^10^k~m^15740^Colossus of Zora^10^k
xg|The Green Tower|u|||||
xn|Gnoll War Harness|w|s||||m^423^Redridge Mongrel^5.26^s
xp|Gnoll Kindred Bracers|w|||||m^712^Redridge Thrasher^1.07^k
xq|Gnoll Punisher|w|||||w^0^0^k
xr|Support Girdle|w|||||w^0^0^k
xv|Redridge Machete|w|||||w^0^0^k
xw|Lupine Axe|w|||||w^0^0^k
z4|Headbasher|Q||a|||q^378^The Fury Runs Deep^22^a^k
z5|Scorpion Sting|wx|||||x^6827^Box of Supplies^k~w^0^0^k
za|Finely Woven Cloak|q|s|a|10821||q^116^Dry Times^12^a^s
zd|Forest Chain|q|s|a|||q^275^Blisters on The Land^20^a^s
zf|Deputy Chain Coat|q|s|a|||q^219^Missing In Action^19^a^s
zg|Fire Hardened Buckler|q|s|a|||q^19^Tharil'zun^18^a^s
zk|Cloaked Hood|w|||||w^0^0^k
zm|Sparkmetal Coif|q|s|a|||q^55^Morbent Fel^20^a^s
zr|Giant Tarantula Fang|w|||||w^0^0^k
zw|Butcher's Cleaver|d|s||||d^33^Razorclaw the Butcher^66.67^0^s
103|Lesser Belt of the Spire|w|||||w^0^0^k
104|Lesser Staff of the Spire|w|||||w^0^0^k
106|Black Whelp Gloves|q||a|||q^122^Underbelly Scales^14^a^k
107|Bridgeworker's Gloves|q|s|a|||q^89^The Everstill Bridge^15^a^s
108|Riding Gloves|q|s|a|||q^89^The Everstill Bridge^15^a^s
10a|Wolfmane Wristguards|q|s|h|||q^6481^Earthen Arise^14^h^s
10e|Smith's Trousers|q|s|a|||q^89^The Everstill Bridge^15^a^s
10i|Ghoul Fingers|w|||||w^0^0^k
10l|Hardened Root Staff|Q|s|a|||q^386^What Comes Around...^22^a^s
10m|Night Reaver|dw|||||d^33^Razorclaw the Butcher^0.02^0^k~d^33^Baron Silverlaine^0.02^0^k
10n|Ring of Iron Will|q|s|a|||q^126^Howling in the Hills^15^a^s
11j|Fingerbone Bracers|w|||||w^0^0^k
11n|Buckskin Cape|w|||||w^0^0^k
11r|Lion-stamped Gloves|q|s|a|4962||q^87^Goldtooth^5^a^s
11s|Stormwind Chain Gloves|q||a|||q^147^Manhunt^7^a^k
12e|Rock Mace|dq|||||q^757^Rite of Strength^1^h^k~d^289^Splintered Skeleton^0.02^0^k
12k|Crooked Staff|w|||||m^2953^Bristleback Shaman^0.97^k
12l|Kobold Mining Mallet|w|s||||m^40^Kobold Miner^4.04^s
12n|Riverpaw Mystic Staff|w|||||w^0^0^k
12q|Driftwood Club|w|||||w^0^0^k
131|Foamspittle Staff|w|||||w^0^0^k
132|Pearl-encrusted Spear|w|||||w^0^0^k
13w|Frontier Britches|q||a|||q^217^In Defense of the King's Lands^10^a^k
13y|Warrior's Shield|w|||||o^Battered Chest^1.28^k~w^5^14^k
140|Gnoll Skull Basher|w|||||w^0^0^k
145|Blackrock Pauldrons|w|s||||m^615^Blackrock Tracker^3.12^s~m^4462^Blackrock Hunter^2.27^k
146|Blackrock Boots|w|||||w^0^0^k
147|Ring of Saviors|u|||||
148|Blackrock Gauntlets|w|||||w^0^0^k
149|Minor Channeling Ring|q|s|a|||q^256^WANTED: Chok'sul^17^a^k
14e|Axe of the Enforcer|dw|||||d^48^Aku'mai^0.02^0^k~d^48^Twilight Lord Kelris^0.02^0^k
14h|Shadowhide Mace|w|||||w^0^0^k
14k|Shadowhide Two-handed Sword|w|||||w^0^0^k
14p|Tigerbane|wx|||||x^4636^Strong Iron Lockbox^k~x^6827^Box of Supplies^k
14t|Scimitar of Atun|w|||||w^0^0^k
14x|Riverside Staff|w|||||w^0^0^k
153|Salma's Oven Mitts|q||a|||q^38^Westfall Stew^9^a^k
154|Fist of the People's Militia|q||a|||q^14^The People's Militia^9^a^k
155|Grimclaw|dw|||||d^48^Aku'mai^0.02^0^k~d^48^Twilight Lord Kelris^0.02^0^k
156|Shadowfang|dw|||||d^33^Razorclaw the Butcher^0.02^0^k~d^33^Baron Silverlaine^0.02^0^k
157|Face Smasher|dw|s||||d^33^Odo the Blindwatcher^33.33^0^s~m^4279^Odo the Blindwatcher^0^s
158|Witching Stave|dw|||||d^33^Razorclaw the Butcher^0.02^0^k~d^33^Baron Silverlaine^0.02^0^k
15a|Tree Bark Jacket|dw|||||d^48^Aku'mai^0.02^0^k~d^48^Twilight Lord Kelris^0.02^0^k
15c|Avenger's Armor|dw|||||d^47^Overlord Ramtusk^0.03^0^k~d^47^Aggem Thorncurse^0.03^0^k
15d|Gloomshroud Armor|dw|||||d^33^Razorclaw the Butcher^0.02^0^k~d^33^Baron Silverlaine^0.02^0^k
15f|Ring of Precision|dw|||||d^48^Aku'mai^0.02^0^k~d^48^Twilight Lord Kelris^0.02^0^k
15h|Heavy Marauder Scimitar|w|||||w^0^0^k
16a|Headhunting Spear|w|||||w^0^0^k
16b|Huge Stone Club|w|||||w^0^0^k
16r|Gnarled Hermit's Staff|w|||||w^0^0^k
16z|Shield of the Faith|q|s|a|||q^223^Worgen in the Woods^23^a^s
179|Buckler of the Seas|q|||||q^104^The Coastal Menace^15^^k
17c|Bluegill Sandals|w|||||w^0^0^k
17d|Harvester's Robe|q|s|a|||q^9^The Killing Fields^8^a^s
17i|Edge of the People's Militia|q||a|||q^14^The People's Militia^9^a^k
18i|Sickle Axe|w|||||w^0^0^k
18n|Soulkeeper|x|||||x^5758^Mithril Lockbox^k
18o|Skullcrusher Mace|wx|r||||x^4638^Reinforced Steel Lockbox^k~w^40^49^k
18t|Spiritchaser Staff|wx|r||||o^Ancient Treasure^2.9^k~o^Captain's Chest^1.3^k
194|Skullsplitter Helm|w|||||w^0^0^k
19j|Grinning Axe|wx|r||||x^4638^Reinforced Steel Lockbox^k~x^19035^Lard's Special Picnic Basket^k
1a3|Engineering Gloves|w|||||w^0^0^k
1al|Drake-scale Vest|w|||||w^0^0^k
1am|Black Ogre Kickers|w|||||w^0^0^k
1bl|Ankh of Life|w|||||w^0^0^k
1bm|Necklace of Calisea|wx|||||x^4637^Steel Lockbox^k~w^0^0^k
1bn|Polished Jazeraint Armor|w|||||w^0^0^k
1bo|Robe of the Magi|wx|||||x^6827^Box of Supplies^k~w^0^0^k
1bp|Double Link Tunic|w|||||w^0^0^k
1bq|Basilisk Hide Pants|w|||||w^0^0^k
1bs|Tanglewood Staff|w|||||w^0^0^k
1bt|Viking Warhammer|x|||||x^5758^Mithril Lockbox^k
1bu|Thornstone Sledgehammer|w|||||w^0^0^k
1by|Poison-tipped Bone Spear|wx|||||x^6827^Box of Supplies^k~w^0^0^k
1bz|Sword of Decay|dw|||||d^47^Overlord Ramtusk^0.03^0^k~d^47^Aggem Thorncurse^0.03^0^k
1c0|Teebu's Blazing Longsword|wx|||||x^16885^Heavy Junkbox^k~x^16885^Heavy Junkbox^k
1ew|Lucky Trousers|q||a|||q^217^In Defense of the King's Lands^10^a^k
1ez|Dirty Leather Belt|v|s|h|||v^2113^Archibald Kava^1420^32.3^65.6^31^h^s
1f0|Dirty Leather Bracers|v|s|h|||v^2113^Archibald Kava^1420^32.3^65.6^31^h^s
1f3|Rough Leather Belt|vw|s||||v^4164^Cylania^1457^59.1^45.8^184^^s~m^3532^Pyrewood Leatherworker^65.82^k
1f4|Rough Leather Bracers|vw|s||||v^4164^Cylania^1457^59.1^45.8^185^^s~m^3532^Pyrewood Leatherworker^65.82^k
1f7|Tanned Leather Belt|v|s||||v^4164^Cylania^1457^59.1^45.8^725^^s
1f8|Tanned Leather Bracers|v|s||||v^4164^Cylania^1457^59.1^45.8^728^^s
1f9|Chainmail Belt|vw|s||||v^4164^Cylania^1457^59.1^45.8^877^^s~m^3528^Pyrewood Armorer^100^k
1fa|Chainmail Bracers|vw|s||||v^4164^Cylania^1457^59.1^45.8^880^^s~m^3528^Pyrewood Armorer^100^k
1fd|Cured Leather Belt|v|s||||v^3492^Vexspindle^1413^62.2^38.4^1388^^s
1fe|Cured Leather Bracers|v|s||||v^3492^Vexspindle^1413^62.2^38.4^1393^^s
1fg|Scalemail Bracers|v|s||||v^3493^Grazlix^1413^62.2^38.4^1684^^s
1fh|Scalemail Belt|v|s||||v^3493^Grazlix^1413^62.2^38.4^1690^^s
1gl|Miner's Revenge|Q|s|a|||q^167^Oh Brother. . .^15^a^s
1h5|Studded Blackjack|w|||||w^0^0^k
1h9|Jeweled Dagger|w|||||w^0^0^k
1hh|Defias Rapier|w|||||w^0^0^k
1hi|Weighted Sap|w|||||w^0^0^k
1hj|Deadmines Cleaver|w|||||w^0^0^k
1hk|Defias Mage Staff|w|||||w^0^0^k
1hl|Silk-threaded Trousers|w|||||w^0^0^k
1hm|Stonemason Cloak|w|||||w^0^0^k
1hp|Staff of Conjuring|w|r||||w^0^0^k
1hq|Stonemason Trousers|w|||||w^0^0^k
1hr|Assassin's Blade|dw|s||||d^33^Wolf Master Nandos^33.33^0^s
1hs|Goblin Screwdriver|w|||||w^0^0^k
1ht|Buzz Saw|d|||||d^36^^10^0^k
1hu|Block Mallet|w|||||w^0^0^k
1hz|Goblin Mail Leggings|w|||||w^0^0^k
1i0|Metalworking Gloves|w|||||w^0^0^k
1i1|Woodworking Gloves|w|||||w^0^0^k
1i7|Blackwater Cutlass|w|||||w^0^0^k
1ib|Dragonmaw Chain Boots|w|||||w^0^0^k
1ie|Petrified Shinbone|w|||||w^0^0^k
1if|Cold Iron Pick|w|||||w^0^0^k
1il|White Wolf Gloves|w|||||w^0^0^k
1iu|Mindthrust Bracers|dw|||||d^33^Razorclaw the Butcher^0.02^0^k~d^33^Baron Silverlaine^0.02^0^k
1iv|Pysan's Old Greatsword|dw|||||d^47^Overlord Ramtusk^0.03^0^k~d^47^Aggem Thorncurse^0.03^0^k
1iw|Slaghammer|dw|||||d^47^Overlord Ramtusk^0.03^0^k~d^47^Aggem Thorncurse^0.03^0^k
1iy|Wolfclaw Gloves|dw|||||d^47^Overlord Ramtusk^0.03^0^k~d^47^Aggem Thorncurse^0.03^0^k
1j0|Underworld Band|u|||||
1j1|Icemail Jerkin|u|||||
1j8|Chief Brigadier Gauntlets|wx|||||x^4636^Strong Iron Lockbox^k~x^6827^Box of Supplies^k
1ja|Ballast Maul|dwx|r||||d^90^Mekgineer Thermaplugg^0.43^0^k
1jc|Swampchill Fetish|dw|||||d^189^Houndmaster Loksey^0.01^0^k~d^189^Herod^0.01^0^k
1je|Ebonclaw Reaver|wx|r||||x^4638^Reinforced Steel Lockbox^k~w^40^48^k
1ji|Bloodscalp Channeling Staff|w|||||w^0^0^k
1jk|Archeus|q|s|a|||q^231^A Daughter's Love^28^a^s
1jv|Twisted Sabre|w|||||w^0^0^k
1jx|Cryptbone Staff|w|||||w^0^0^k
1k1|Glowing Leather Bracers|w|||||w^0^0^k
1k2|Skeletal Longsword|w|||||w^0^0^k
1k4|Hollowfang Blade|w|||||w^0^0^k
1k5|Green Carapace Shield|w|||||w^0^0^k
1k8|Espadon|v|s||||v^3491^Ironzar^1413^62.2^37.5^6078^^s
1k9|Bearded Axe|v|s||||v^3491^Ironzar^1413^62.2^37.5^5304^^s
1ka|Rock Hammer|v|s||||v^3491^Ironzar^1413^62.2^37.5^6286^^s
1kb|Scimitar|v|s||||v^3491^Ironzar^1413^62.2^37.5^3815^^s
1kc|Hammer|v|s||||v^3491^Ironzar^1413^62.2^37.5^5065^^s
1kd|Cleaver|v|s||||v^3491^Ironzar^1413^62.2^37.5^4419^^s
1ke|Gnarled Staff|v|s||||v^3491^Ironzar^1413^62.2^37.5^5544^^s
1kg|Gallan Cuffs|q|s|h|||q^1164^To Steal From Thieves^27^h^s
1kh|Ambassador's Boots|Q|s|a|||q^377^Crime and Punishment^22^a^s
1ki|Scholarly Robes|w|s||||w^0^0^k
1kk|Dusty Mining Gloves|Q|s|a|||q^168^Collecting Memories^14^a^s
1kl|Tunneler's Boots|Q|s|a|||q^168^Collecting Memories^14^a^s
1kn|Plains Ring|dw|||||d^47^Overlord Ramtusk^0.03^0^k~d^47^Aggem Thorncurse^0.03^0^k
1kp|Tunic of Westfall|Q||a|||q^166^The Defias Brotherhood^14^a^k
1kq|Staff of Westfall|Q||a|||q^166^The Defias Brotherhood^14^a^k
1kr|Ring of Forlorn Spirits|q|s|a|||q^98^The Legend of Stalvan^22^a^s
1ks|Crescent of Forlorn Spirits|q|s|a|||q^98^The Legend of Stalvan^22^a^s
1l2|Trogg Hand Axe|w|||||m^1718^Rockjaw Raider^2.04^k
1l3|Small Wooden Hammer|w|||||m^80^Kobold Laborer^2.04^k
1l5|Pitted Defias Shortsword|w|s||||m^251160^Al'Aketh Convert^3.33^s~m^38^Defias Thug^1.96^k
1l7|Sentry Cloak|w|||||w^0^0^k
1lc|Trogg Club|w|||||m^1118^Rockjaw Backbreaker^7.28^k
1le|Skull Hatchet|w|||||m^1115^Rockjaw Skullthumper^4^k
1lf|Frostbit Staff|w|||||m^1117^Rockjaw Bonesnapper^7.98^k
1lh|Black Bear Hide Vest|w|||||w^0^0^k
1lk|Dwarven Magestaff|dwx|sr||||d^48^Twilight Lord Kelris^33.33^0^s~m^4832^Twilight Lord Kelris^0^s
1ll|Dwarven Hatchet|dw|sr||||d^389^Taragaman the Hungerer^100^0^s~m^275437^NPC 275437^6.67^s
1lm|Solid Shortblade|Q||a|||q^214^Red Silk Bandanas^14^a^k
1ln|Priest's Mace|w|sr||||m^251676^NPC 251676^1.39^s~m^500^Riverpaw Scout^0^s
1lp|Magician Staff|dwx|r||||d^34^Dextren Ward^0.01^0^k~d^34^Kam Deepfury^0.01^0^k
1lq|Northern Shortsword|dw|sr||||m^3275^Kolkar Marauder^0^s~m^213^Starving Dire Wolf^0^s
1lr|Sergeant's Warhammer|dw|r||||d^389^Oggleflint^0.01^0^k~d^389^Jergosh the Invoker^0.01^0^k
1ls|Hillborne Axe|dwx|sr||||d^189^Interrogator Vishas^16.67^0^s
1lz|Hard Crawler Carapace|w|||||w^0^0^k
1m0|Long Crawler Limb|w|||||w^0^0^k
1m1|Scrimshaw Dagger|Q||a|||q^214^Red Silk Bandanas^14^a^k
1ma|Double-barreled Shotgun|w|||||w^0^0^k
1mk|Frostmane Leather Vest|w|s||||m^706^Frostmane Troll Whelp^0.97^s
1ml|Frostmane Chain Vest|w|||||m^808^Grik'nir the Cold^0.83^k
1mm|Light Magesmith Robe|w|||||m^946^Frostmane Novice^1.13^k
1mo|Lumberjack Jerkin|w|||||m^1689^Scarred Crag Boar^5^k
1mq|Snowy Robe|w|||||m^1133^Starving Winter Wolf^3.97^k
1mt|Thin Cloth Shoes|v|s||||v^251365^Jolee Brightmeadows^2521^43.4^23.6^36^^s
1mv|Thin Cloth Gloves|v|s||||v^251365^Jolee Brightmeadows^2521^43.4^23.6^24^^s
1mw|Thin Cloth Pants|v|s||||v^251365^Jolee Brightmeadows^2521^43.4^23.6^50^^s
1mx|Thin Cloth Armor|v|s||||v^251365^Jolee Brightmeadows^2521^43.4^23.6^50^^s
1my|Cracked Leather Belt|v|s||||v^251365^Jolee Brightmeadows^2521^43.4^23.6^32^^s
1mz|Cracked Leather Boots|v|s||||v^251365^Jolee Brightmeadows^2521^43.4^23.6^48^^s
1n0|Cracked Leather Bracers|v|s||||v^251365^Jolee Brightmeadows^2521^43.4^23.6^32^^s
1n1|Cracked Leather Gloves|v|s||||v^251365^Jolee Brightmeadows^2521^43.4^23.6^32^^s
1n2|Cracked Leather Pants|v|s||||v^251365^Jolee Brightmeadows^2521^43.4^23.6^59^^s
1n3|Cracked Leather Vest|v|s||||v^251365^Jolee Brightmeadows^2521^43.4^23.6^60^^s
1n5|Large Round Shield|vw|s||||v^1104^Grundel Harkin^1426^28.7^67.9^77^a^s~m^11040^Watcher Brownell^0.02^k
1n7|Shortsword|v|s||||v^251364^Destin Thriceforged^2521^43.3^23.6^54^^s
1n8|Short Staff|v|s||||v^251364^Destin Thriceforged^2521^43.3^23.6^102^^s
1na|Hand Axe|v|s||||v^251364^Destin Thriceforged^2521^43.3^23.6^82^^s
1nf|Dirk|v|s||||v^251364^Destin Thriceforged^2521^43.3^23.6^57^^s
1ng|Carving Knife|w|sr||||w^6^13^k
1nh|Cuirboulli Vest|v|||||v^3953^Tandaan Lightmane^1440^34.5^49.9^5223^^k
1ni|Cuirboulli Belt|v|||||v^3953^Tandaan Lightmane^1440^34.5^49.9^2620^^k
1nj|Cuirboulli Boots|vw|||||v^3953^Tandaan Lightmane^1440^34.5^49.9^3944^^k
1nl|Cuirboulli Gloves|v|||||v^3953^Tandaan Lightmane^1440^34.5^49.9^2648^^k
1nm|Cuirboulli Pants|v|||||v^3953^Tandaan Lightmane^1440^34.5^49.9^4809^^k
1no|Polished Scale Belt|v|s||||v^226^Morg Gnarltree^1431^73.8^48.6^2907^^s
1np|Polished Scale Boots|v|s||||v^226^Morg Gnarltree^1431^73.8^48.6^4397^^s
1nq|Polished Scale Bracers|v|s||||v^226^Morg Gnarltree^1431^73.8^48.6^2930^^s
1nr|Polished Scale Gloves|v|s||||v^226^Morg Gnarltree^1431^73.8^48.6^2941^^s
1ns|Polished Scale Leggings|v|s||||v^226^Morg Gnarltree^1431^73.8^48.6^5906^^s
1nt|Polished Scale Vest|v|s||||v^226^Morg Gnarltree^1431^73.8^48.6^5927^^s
1nw|Padded Boots|v|s||||v^3092^Tagain^1456^44^44.8^3077^^s
1ny|Padded Gloves|v|s||||v^3092^Tagain^1456^44^44.8^2066^^s
1nz|Padded Pants|v|s||||v^3092^Tagain^1456^44^44.8^4148^^s
1o0|Padded Armor|v|s||||v^3092^Tagain^1456^44^44.8^4163^^s
1o4|Gut Ripper|x|||||x^16884^Sturdy Junkbox^k~x^16884^Sturdy Junkbox^k
1o6|Foreman's Leggings|w|||||w^0^0^k
1o7|Foreman's Gloves|w|||||w^0^0^k
1o8|Foreman's Boots|w|||||w^0^0^k
1o9|Buzzer Blade|d|||||d^36^^90^0^k
1oc|Rustic Belt|q|s|a|4913||q^170^A New Threat^1^a^s
1of|Shadowhide Battle Axe|w|s||||m^568^Shadowhide Warrior^0^s
1oq|Outfitter Belt|q|s|a|4954||q^21^Skirmish at Echo Ridge^1^a^s
1oy|Diamond Hammer|w|sU||||m^1707^Defias Captive^0^s
1p7|Brashclaw's Chopper|w|||||w^0^0^k
1p8|Brashclaw's Skewer|w|||||w^0^0^k
1p9|Duskbringer|dw|||||d^33^Razorclaw the Butcher^0.02^0^k~d^33^Baron Silverlaine^0.02^0^k
1pb|Jambiya|v|s||||v^3658^Lizzarik^1413^52.4^30.8^2390^^s
1pc|Poniard|v|s||||v^3491^Ironzar^1413^62.2^37.5^3650^^s
1pd|Kris|v|s||||v^11137^Xai'ander^1440^35.8^52^7115^^s
1pm|Craftsman's Dagger|q||a|||q^417^A Pilot's Revenge^8^a^k
1py|Gloves of Brawn|q|s|h|||q^501^Elixir of Pain^21^h^s
1pz|Inferno Robe|q||h|||q^566^WANTED: Baron Vardus^35^h^k
1q0|Dark Runner Boots|w|||||w^0^0^k
1q2|Nightwalker Armor|w|||||w^0^0^k
1q3|Brackclaw|w|||||w^0^0^k
1q4|Blackfang|w|U||||w^0^0^k
1q5|Patched Pants|q||a|||q^59^Cloth and Leather Armor^7^a^k
1q8|Rugged Cape|q||a|||q^385^Crocolisk Hunting^10^a^k
1q9|Desperado Cape|w|||||w^0^0^k
1qb|Hand of Edward the Odd|w|U||||w^0^0^k
1qd|Helm of Narv|w|||||w^0^0^k
1qh|Militia Buckler|q||a|||q^11^Riverpaw Gnoll Bounty^6^a^k
1qm|Icepane Warhammer|w|||||w^0^0^k
1qo|Skeletal Club|w|||||w^0^0^k
1qq|Frostmane Shortsword|w|||||m^1120^Frostmane Troll^7.98^k
1qr|Frostmane Club|w|||||m^1121^Frostmane Snowstrider^8.04^k
1qu|Mark of Kern|dw|||||d^189^Houndmaster Loksey^0.01^0^k~d^189^Herod^0.01^0^k
1qv|Phytoblade|q|s|a|||q^275^Blisters on The Land^20^a^s
1qw|Mantle of Thieves|dw|||||d^47^Overlord Ramtusk^0.03^0^k~d^47^Aggem Thorncurse^0.03^0^k
1qx|Stonesplinter Axe|w|||||w^0^0^k
1qy|Stonesplinter Dagger|w|||||w^0^0^k
1qz|Stonesplinter Mace|w|||||w^0^0^k
1r0|Stonesplinter Blade|w|||||m^1162^Stonesplinter Scout^4.08^k~m^1161^Stonesplinter Trogg^3.96^k
1r3|Staff of the Blessed Seer|dw|s||||d^48^Aku'mai^0.02^0^k~d^48^Twilight Lord Kelris^0.02^0^k
1r6|Sapper's Gloves|w|||||w^0^0^k
1r8|Swampwalker Boots|wx|||||x^6827^Box of Supplies^k~w^0^0^k
1r9|Necromancer Leggings|wx|||||x^6827^Box of Supplies^k~w^0^0^k
1ra|Forest Tracker Epaulets|w|||||w^0^0^k
1rc|Kam's Walking Stick|d|s||||d^34^Kam Deepfury^100^0^s
1rd|Rodentia Flint Axe|w|||||w^0^0^k
1re|Rodentia Shortsword|w|||||m^1172^Tunnel Rat Vermin^4.1^k~m^1173^Tunnel Rat Scout^3.9^k
1rf|Rat Cloth Belt|w|||||w^0^0^k
1rg|Rat Cloth Cloak|w|||||w^0^0^k
1ro|Necrology Robes|dw|||||d^33^Razorclaw the Butcher^0.02^0^k~d^33^Baron Silverlaine^0.02^0^k
1rw|Embossed Leather Vest|c|s||||c^Leatherworking^40^2160^f
1ry|Handstitched Leather Boots|c|||||c^Leatherworking^1^2149^f
1rz|Handstitched Leather Pants|c|s||||c^Leatherworking^15^2153^f
1s3|Fine Leather Boots|c|s||||c^Leatherworking^65^2158^f
1s4|Fine Leather Cloak|c|||||c^Leatherworking^85^2159^f
1s5|Embossed Leather Boots|c|||||c^Leatherworking^55^2161^f
1s6|Embossed Leather Cloak|c|s||||c^Leatherworking^60^2162^f
1s7|White Leather Jerkin|c|||||c^Leatherworking^40^2163^f
1s8|Fine Leather Gloves|c|||||c^Leatherworking^50^2164^f
1sb|Gray Leather Boots|c|s||||c^Leatherworking^100^2167^f
1sc|Dark Leather Cloak|c|||||c^Leatherworking^110^2168^f
1sd|Dark Leather Tunic|c|||||c^Leatherworking^75^2169^f
1sm|Ivy-weave Bracers|q|s|a|||q^315^The Perfect Stout^5^a^s
1sn|Sturdy Leather Bracers|w|s||||m^480^Rusty Harvest Golem^2.03^k
1to|Woven Vest|v||h|||v^3166^Cutac^1411^53.1^40.9^296^h^k
1tq|Woven Pants|v||h|||v^3166^Cutac^1411^53.1^40.9^298^h^k
1tr|Woven Boots|v||h|||v^3166^Cutac^1411^53.1^40.9^223^h^k
1tt|Woven Gloves|v||h|||v^3166^Cutac^1411^53.1^40.9^150^h^k
1tu|Battered Leather Harness|v|s|h|||v^3321^Morgum^1454^56^73.4^377^h^s
1tv|Battered Leather Belt|v|s|h|||v^3321^Morgum^1454^56^73.4^189^h^s
1tw|Battered Leather Pants|v|s|h|||v^3321^Morgum^1454^56^73.4^343^h^s
1tx|Battered Leather Boots|v|s|h|||v^3321^Morgum^1454^56^73.4^259^h^s
1ty|Battered Leather Bracers|v|s|h|||v^3321^Morgum^1454^56^73.4^173^h^s
1tz|Battered Leather Gloves|v|s|h|||v^3321^Morgum^1454^56^73.4^173^h^s
1u0|Worn Heater Shield|v||h|1201||v^4559^Timothy Weldon^1458^62.7^39.2^447^h^s
1u3|Tarnished Chain Vest|vw|s||||v^1104^Grundel Harkin^1426^28.7^67.9^75^a^s~m^11040^Watcher Brownell^0.02^k
1u4|Tarnished Chain Belt|vw|s||||v^1104^Grundel Harkin^1426^28.7^67.9^37^a^s~m^11040^Watcher Brownell^0.02^k
1u5|Tarnished Chain Leggings|vw|s||||v^1104^Grundel Harkin^1426^28.7^67.9^75^a^s~m^11040^Watcher Brownell^0.02^k
1u7|Tarnished Chain Boots|vw|s||||v^1104^Grundel Harkin^1426^28.7^67.9^57^a^s~m^11040^Watcher Brownell^0.02^k
1u8|Tarnished Chain Bracers|vw|s||||v^1104^Grundel Harkin^1426^28.7^67.9^37^a^s~m^11040^Watcher Brownell^0.02^k
1u9|Tarnished Chain Gloves|vw|s||||v^1104^Grundel Harkin^1426^28.7^67.9^37^a^s~m^11040^Watcher Brownell^0.02^k
1ua|Rusted Chain Vest|v|s|h|||v^4559^Timothy Weldon^1458^62.7^39.2^77^h^s
1ub|Rusted Chain Belt|v|s|h|||v^4559^Timothy Weldon^1458^62.7^39.2^38^h^s
1uc|Rusted Chain Leggings|v|s|h|||v^4559^Timothy Weldon^1458^62.7^39.2^77^h^s
1ud|Rusted Chain Boots|v|s|h|||v^4559^Timothy Weldon^1458^62.7^39.2^59^h^s
1ue|Rusted Chain Bracers|v|s|h|||v^4559^Timothy Weldon^1458^62.7^39.2^38^h^s
1uf|Rusted Chain Gloves|v|s|h|||v^4559^Timothy Weldon^1458^62.7^39.2^38^h^s
1ug|Light Mail Armor|v|s||||v^4164^Cylania^1457^59.1^45.8^413^^s
1uh|Light Mail Belt|v|s||||v^4164^Cylania^1457^59.1^45.8^206^^s
1ui|Light Mail Leggings|v|s||||v^4164^Cylania^1457^59.1^45.8^416^^s
1uj|Light Mail Boots|v|s||||v^4164^Cylania^1457^59.1^45.8^322^^s
1uk|Light Mail Bracers|vw|s||||v^4164^Cylania^1457^59.1^45.8^215^^s~m^299^Young Wolf^0.02^k
1ul|Light Mail Gloves|v|s||||v^4164^Cylania^1457^59.1^45.8^215^^s
1um|Light Chain Armor|vw|s||||v^4559^Timothy Weldon^1458^62.7^39.2^434^h^s~m^299^Young Wolf^0.02^k
1un|Light Chain Belt|v|s|h|||v^4559^Timothy Weldon^1458^62.7^39.2^217^h^s
1uo|Light Chain Leggings|v|s|h|||v^4559^Timothy Weldon^1458^62.7^39.2^437^h^s
1up|Light Chain Boots|v|s|h|||v^4559^Timothy Weldon^1458^62.7^39.2^330^h^s
1uq|Light Chain Bracers|v|s|h|||v^4559^Timothy Weldon^1458^62.7^39.2^219^h^s
1ur|Light Chain Gloves|v|s|h|||v^4559^Timothy Weldon^1458^62.7^39.2^220^h^s
1v5|Augmented Chain Vest|v|s||||v^5812^Tumi^1454^82.4^23.4^15673^^s
1v6|Augmented Chain Leggings|v|s||||v^5812^Tumi^1454^82.4^23.4^15731^^s
1v7|Augmented Chain Belt|v|s||||v^5812^Tumi^1454^82.4^23.4^7894^^s
1v8|Augmented Chain Boots|v|s||||v^5812^Tumi^1454^82.4^23.4^11937^^s
1v9|Augmented Chain Bracers|v|s||||v^5812^Tumi^1454^82.4^23.4^7952^^s
1va|Augmented Chain Gloves|v|s||||v^5812^Tumi^1454^82.4^23.4^7981^^s
1vb|Brigandine Vest|v|s||||v^5812^Tumi^1454^82.4^23.4^42770^^s
1vc|Brigandine Belt|v|s||||v^5812^Tumi^1454^82.4^23.4^21461^^s
1vd|Brigandine Leggings|v|s||||v^5812^Tumi^1454^82.4^23.4^43077^^s
1ve|Brigandine Boots|v|s||||v^5812^Tumi^1454^82.4^23.4^32568^^s
1vf|Brigandine Bracers|v|s||||v^5812^Tumi^1454^82.4^23.4^20146^^s
1vg|Brigandine Gloves|v|s||||v^5812^Tumi^1454^82.4^23.4^20222^^s
1vh|Russet Vest|vw|s||||v^3092^Tagain^1456^44^44.8^10138^^s
1vj|Russet Pants|vw|s||||v^3092^Tagain^1456^44^44.8^10215^^s
1vk|Russet Boots|vw|s||||v^3092^Tagain^1456^44^44.8^7690^^s
1vm|Russet Gloves|vw|s||||v^3092^Tagain^1456^44^44.8^5165^^s
1vn|Embroidered Armor|v|s||||v^5129^Lissyphus Finespindle^1455^54.7^88.3^27683^^s
1vp|Embroidered Pants|v|s||||v^5129^Lissyphus Finespindle^1455^54.7^88.3^27890^^s
1vq|Embroidered Boots|v|s||||v^5129^Lissyphus Finespindle^1455^54.7^88.3^20996^^s
1vs|Embroidered Gloves|v|s||||v^5129^Lissyphus Finespindle^1455^54.7^88.3^14099^^s
1vx|Large Metal Shield|v|s||||v^3493^Grazlix^1413^62.2^38.4^3433^^s
1vy|Kite Shield|v|s||||v^226^Morg Gnarltree^1431^73.8^48.6^6182^^s
1w0|Heavy Pavise|v|s||||v^5812^Tumi^1454^82.4^23.4^16158^^s
1w3|Crested Heater Shield|v|s||||v^5812^Tumi^1454^82.4^23.4^43629^^s
1wf|Studded Doublet|v|s||||v^5129^Lissyphus Finespindle^1455^54.7^88.3^13695^^s
1wg|Studded Belt|v|s||||v^5129^Lissyphus Finespindle^1455^54.7^88.3^6871^^s
1wh|Studded Pants|v|s||||v^5129^Lissyphus Finespindle^1455^54.7^88.3^12477^^s
1wj|Studded Boots|v|s||||v^5129^Lissyphus Finespindle^1455^54.7^88.3^9430^^s
1wl|Studded Gloves|v|s||||v^5129^Lissyphus Finespindle^1455^54.7^88.3^6334^^s
1wm|Reinforced Leather Vest|v|s||||v^5129^Lissyphus Finespindle^1455^54.7^88.3^33952^^s
1wn|Reinforced Leather Belt|v|s||||v^5129^Lissyphus Finespindle^1455^54.7^88.3^17040^^s
1wo|Reinforced Leather Pants|v|s||||v^5129^Lissyphus Finespindle^1455^54.7^88.3^34211^^s
1wp|Reinforced Leather Boots|v|s||||v^5129^Lissyphus Finespindle^1455^54.7^88.3^25753^^s
1wq|Reinforced Leather Bracers|v|s||||v^5129^Lissyphus Finespindle^1455^54.7^88.3^17233^^s
1wr|Reinforced Leather Gloves|v|s||||v^5129^Lissyphus Finespindle^1455^54.7^88.3^17298^^s
1wv|Broad Axe|v|s||||v^251364^Destin Thriceforged^2521^43.3^23.6^107^^s
1ww|Large Club|v|s||||v^251364^Destin Thriceforged^2521^43.3^23.6^72^^s
1x4|Gladius|vw|s||||v^257422^Railee Thriceforged^2521^58.9^75.5^536^^s~m^2265^Hillsbrad Apprentice Blacksmith^2^k
1x5|Two-handed Sword|vw|s||||v^257422^Railee Thriceforged^2521^58.9^75.5^342^^s~m^2265^Hillsbrad Apprentice Blacksmith^2^k
1x6|Tomahawk|vw|s||||v^257422^Railee Thriceforged^2521^58.9^75.5^540^^s~m^2265^Hillsbrad Apprentice Blacksmith^2^k
1x7|Large Axe|vw|s||||v^257422^Railee Thriceforged^2521^58.9^75.5^484^^s~m^2265^Hillsbrad Apprentice Blacksmith^2^k
1x8|Cudgel|vw|s||||v^257422^Railee Thriceforged^2521^58.9^75.5^284^^s~m^2265^Hillsbrad Apprentice Blacksmith^2^k
1x9|Wooden Mallet|vw|s||||v^257422^Railee Thriceforged^2521^58.9^75.5^701^^s~m^2265^Hillsbrad Apprentice Blacksmith^2^k
1xa|Stiletto|vw|s||||v^257422^Railee Thriceforged^2521^58.9^75.5^401^^s~m^2265^Hillsbrad Apprentice Blacksmith^2^k
1xb|Walking Stick|vw|s||||v^257422^Railee Thriceforged^2521^58.9^75.5^504^^s~m^2265^Hillsbrad Apprentice Blacksmith^2^k
1xk|Worn Shortbow|v|s||||v^28989^Aemara^1416^17.2^71.4^29^^s
1xl|Polished Shortbow|v|s||||v^28989^Aemara^1416^17.2^71.4^60^^s
1xm|Hornwood Recurve Bow|v|s||||v^28989^Aemara^1416^17.2^71.4^285^^s
1xn|Laminated Recurve Bow|v|s||||v^28989^Aemara^1416^17.2^71.4^1751^^s
1xp|Ornate Blunderbuss|v|s||||v^1243^Hegnar Rumbleshot^1426^40.8^65.1^414^^s
1xq|Solid Blunderbuss|v|s||||v^1243^Hegnar Rumbleshot^1426^40.8^65.1^41^^s
1xr|Hunter's Boomstick|v|s||||v^7976^Thalgus Thunderfist^1455^61.4^89.1^1324^^s
1y0|Broadsword|v|s||||v^11137^Xai'ander^1440^35.8^52^24628^^s
1y1|Flamberge|v|s||||v^11137^Xai'ander^1440^35.8^52^30896^^s
1y2|Crescent Axe|v|s||||v^11137^Xai'ander^1440^35.8^52^22548^^s
1y3|Bullova|v|s||||v^11137^Xai'ander^1440^35.8^52^28285^^s
1y4|Truncheon|v|s||||v^1471^Jannos Ironwill^1417^45.9^47.5^19192^^s
1y5|War Hammer|v|s||||v^1471^Jannos Ironwill^1417^45.9^47.5^26489^^s
1y6|Main Gauche|v|s||||v^11137^Xai'ander^1440^35.8^52^19336^^s
1y7|Battle Staff|v|s||||v^1471^Jannos Ironwill^1417^45.9^47.5^29356^^s
1y8|Falchion|v|s||||v^5120^Brenwyn Wintersteel^1455^61.9^88.7^51836^^s
1y9|Zweihander|v|s||||v^5120^Brenwyn Wintersteel^1455^61.9^88.7^65031^^s
1ya|Francisca|v|s||||v^5119^Hegnar Swiftaxe^1455^61.9^88.7^52219^^s
1yb|Great Axe|v|s||||v^5119^Hegnar Swiftaxe^1455^61.9^88.7^56169^^s
1yc|Morning Star|v|s||||v^1471^Jannos Ironwill^1417^45.9^47.5^52608^^s
1yd|War Maul|v|s||||v^1471^Jannos Ironwill^1417^45.9^47.5^61107^^s
1ye|Rondel|v|s||||v^5120^Brenwyn Wintersteel^1455^61.9^88.7^45431^^s
1yf|War Staff|v|s||||v^1471^Jannos Ironwill^1417^45.9^47.5^61556^^s
1yp|Malleable Chain Leggings|q|s|a|||q^471^Apprentice's Duties^18^a^s
1yq|Royal Frostmane Girdle|Rw|s||||R^1260^Great Father Arctikus^0^s
1yr|Boar Handler Gloves|q|s|a|4910||q^179^Dwarven Outfitters^1^a^s
1yt|Staff of the Shade|dw|||||d^47^Overlord Ramtusk^0.03^0^k~d^47^Aggem Thorncurse^0.03^0^k
1z8|Elven Spirit Claws|rwx|||||d^249^Onyxia^1.27^1^k
1z9|Rod of Molten Fire|wx|||||x^6827^Box of Supplies^k~w^0^0^k
1zb|Evocator's Blade|dw|||||d^48^Aku'mai^0.02^0^k~d^48^Twilight Lord Kelris^0.02^0^k
1zc|Brown Linen Vest|c|||||c^Tailoring^10^2385^f
1zd|Linen Boots|c|s||||c^Tailoring^65^2386^f
1ze|Linen Cloak|c|||||c^Tailoring^1^2387^f
1zf|Viny Wrappings|q|s|a|||q^932^Twisted Hatred^4^a^s
1zg|Red Linen Robe|c|||||c^Tailoring^25^2389^f
1zm|Barbaric Linen Vest|c|||||c^Tailoring^70^2395^f
1zo|Reinforced Linen Cape|c|s||||c^Tailoring^60^2397^f
1zq|Green Woolen Vest|c|||||c^Tailoring^85^2399^f
1zr|Woolen Boots|c|||||c^Tailoring^95^2401^f
1zs|Woolen Cape|c|s||||c^Tailoring^75^2402^f
1zt|Gray Woolen Robe|c|||||c^Tailoring^80^2403^f
20k|Plain Robe|v|s||||v^3092^Tagain^1456^44^44.8^163^^s
20l|Double-Stitched Robes|v|s||||v^3092^Tagain^1456^44^44.8^607^^s
20m|Robe of Apprenticeship|v|s||||v^3092^Tagain^1456^44^44.8^1161^^s
20n|Chromatic Robe|v|s||||v^3092^Tagain^1456^44^44.8^5091^^s
20o|Shimmering Silk Robes|v|s||||v^3092^Tagain^1456^44^44.8^2659^^s
20p|Burning Robes|v|s||||v^3092^Tagain^1456^44^44.8^10991^^s
20q|Silver Dress Robes|v|s||||v^3092^Tagain^1456^44^44.8^26639^^s
20t|Cowl of Necromancy|w|||||w^0^0^k
20u|Nimar's Tribal Headdress|w|||||w^0^0^k
20w|Thinking Cap|w|||||w^0^0^k
214|Curved Dagger|w|sr||||m^250622^NPC 250622^5^s~m^2324^Blackwood Windtalker^0^s
22q|Latched Belt|q|s|a|||q^3905^Grape Manifest^2^a^s
22r|Outfitter Boots|q|s|a|||q^21^Skirmish at Echo Ridge^1^a^s
22u|Settler's Leggings|q|s|h|||q^3281^Stolen Silver^9^h^s
23l|Holy Shroud|x|||||x^4634^Iron Lockbox^k
24i|Tarnished Bastard Sword|w|||||m^1506^Scarlet Convert^1.9^k
25s|Black Velvet Robes|w|||||w^0^0^k
25t|Blade of Hanna|w|||||w^0^0^k
25x|Yeti Fur Cloak|q||a|||q^565^Bartolo's Yeti Fur Cloak^29^a^k
25z|Guillotine Axe|dw|||||d^33^Razorclaw the Butcher^0.02^0^k~d^33^Baron Silverlaine^0.02^0^k
267|Curve-bladed Ripper|w|||||w^0^0^k
268|Death Speaker Scepter|d|||||d^47^Death Speaker Jargba^20^0^k
269|Soft Leather Tunic|q|s|a|||q^314^Protecting the Herd^6^a^s
26a|Stretched Leather Trousers|q||h|||q^452^Pyrewood Ambush^12^h^k
26b|Cross Dagger|dwx|sr||||m^4249^Pesterhide Snarler^0^s~d^34^Hamhock^0.01^0^k
26d|Mo'grosh Masher|w|||||w^0^0^k
26e|Mo'grosh Toothpick|w|||||w^0^0^k
26f|Mo'grosh Can Opener|w|||||w^0^0^k
26h|Bow of Searing Arrows|u|||||
270|Copper Mace|c|||||c^Blacksmithing^15^2737^f
271|Copper Axe|c|||||c^Blacksmithing^20^2738^f
273|Copper Shortsword|c|||||c^Blacksmithing^40^2739^f
274|Bronze Mace|c|||||c^Blacksmithing^75^2740^f
275|Bronze Axe|c|||||c^Blacksmithing^85^2741^f
276|Bronze Shortsword|c|||||c^Blacksmithing^95^2742^f
277|Copper Chain Belt|c|s||||c^Blacksmithing^35^2661^f
278|Copper Chain Pants|c|s||||c^Blacksmithing^40^2662^f
279|Copper Bracers|c|s||||c^Blacksmithing^1^2663^f
27a|Runed Copper Bracers|c|s||||c^Blacksmithing^90^2664^f
27d|Runed Copper Belt|c|s||||c^Blacksmithing^80^2666^f
27k|Runed Copper Breastplate|c|||||c^Blacksmithing^90^2667^f
27l|Rough Bronze Leggings|c|||||c^Blacksmithing^95^2668^f
27n|Rough Bronze Bracers|c|||||c^Blacksmithing^115^2671^f
27o|Patterned Bronze Bracers|c|||||c^Blacksmithing^120^2672^f
27q|Shining Silver Breastplate|c|||||c^Blacksmithing^135^2675^f
27x|Combatant Claymore|w|||||w^0^0^k
27y|Bearded Boneaxe|w|||||w^0^0^k
27z|Antipodean Rod|dw|sU||||d^48^Geilhast^33.33^0^s~m^3458^Razormane Seer^3.33^s
28i|Mountaineer Chestpiece|w|s||||m^1196^Ice Claw Bear^5.24^s
28j|Wendigo Collar|w|||||w^0^0^k
28k|Stone Buckler|q|s|a|||q^287^Frostmane Hold^7^a^s
28l|Mining Pick|dvw|s||||v^3495^Gagsprocket^1413^62.7^36.3^10^^s~d^90^Tink Sprocketwhistle^0.02^0^k
28m|Cloak of the Faith|q|s|a|||q^223^Worgen in the Woods^23^a^s
28n|Daryl's Hunting Bow|q||a|||q^257^A Hunter's Boast^11^a^k
28o|Daryl's Hunting Rifle|q||a|||q^257^A Hunter's Boast^11^a^k
28p|Goat Fur Cloak|q|s|a|||q^315^The Perfect Stout^5^a^s
28q|Darkshire Mail Leggings|Q|s|a|||q^377^Crime and Punishment^22^a^s
28r|Dwarven Tree Chopper|q||a|||q^283^A Dark Threat Looms^16^a^k
28s|Thornblade|q||a|||q^283^A Dark Threat Looms^16^a^k
28u|Gold Militia Boots|q|s|a|||q^126^Howling in the Hills^15^a^s
28v|Keller's Girdle|w|||||w^0^0^k
28x|Silk Mantle of Gamn|q|s|a|||q^299^Uncovering the Past^25^a^s
290|Gold Lion Shield|q|s|a|||q^304^A Grim Task^26^a^s
291|Tranquil Ring|q|s|a|||q^304^A Grim Task^26^a^s
29h|Seal of Wrynn|q||a|||q^396^An Audience with the King^16^a^k
29p|Prison Shank|d|||||d^34^^33.33^0^k
29r|Eye of Paleth|q|s|a|||q^293^Cleansing the Eye^22^a^k
29x|Mariner Boots|q|s|a|||q^286^Return the Statuette^20^a^s
29y|Icicle Rod|q|s|a|||q^286^Return the Statuette^20^a^s
29z|Ring of the Underwood|wx|U||||x^6827^Box of Supplies^k~w^0^0^k
2a1|Watch Master's Cloak|q|s|a|||q^55^Morbent Fel^20^a^s
2a2|Night Watch Pantaloons|q|s|a|||q^55^Morbent Fel^20^a^s
2a3|First Mate Hat|w|||||w^0^0^k
2a5|Journeyman's Vest|w|||||w^6^13^k
2a6|Journeyman's Pants|w|s||||m^1117^Rockjaw Bonesnapper^0^s
2a7|Journeyman's Boots|w|s||||o^Battered Chest^1.28^k~w^5^14^k
2a8|Journeyman's Gloves|w|||||o^Battered Chest^1.28^k~w^5^14^k
2a9|Burnt Leather Vest|w|||||o^Tattered Chest^1.43^k~w^6^13^k
2aa|Burnt Leather Breeches|w|||||o^Battered Chest^14.29^k~w^6^12^k
2ab|Burnt Leather Boots|w|||||o^Battered Chest^1.28^k~w^5^14^k
2ac|Burnt Leather Gloves|w|||||o^Battered Chest^1.28^k~w^5^14^k
2ad|Warrior's Tunic|w|||||w^6^13^k
2ae|Warrior's Pants|w|||||o^Battered Chest^14.29^k~w^6^12^k
2af|Warrior's Boots|w|||||o^Battered Chest^1.28^k~w^5^14^k
2ag|Warrior's Gloves|w|s||||m^1122^Frostmane Hideskinner^0^s
2ah|Spellbinder Vest|dw|s||||m^1924^Moonrage Bloodhowler^4.55^s~d^389^Oggleflint^0.01^0^k
2ai|Spellbinder Pants|dwx|s||||d^2999^Viktor the Vile^25^0^s~m^250618^NPC 250618^2.78^s
2aj|Spellbinder Boots|w|||||o^Tattered Chest^1.43^k~w^9^17^k
2ak|Spellbinder Gloves|w|s||||m^1912^Dalaran Protector^1.82^s~m^250625^NPC 250625^0^s
2al|Hunting Tunic|dw|s||||m^250689^NPC 250689^0^s~d^389^Oggleflint^0.01^0^k
2am|Hunting Pants|dw|s||||m^250735^NPC 250735^0^s~d^389^Oggleflint^0.01^0^k
2an|Hunting Boots|wx|s||||m^267006^NPC 267006^5.56^s
2ao|Hunting Gloves|dwx|s||||m^1912^Dalaran Protector^1.82^s~m^250618^NPC 250618^2.78^s
2ap|Veteran Armor|dwx|||||d^389^Oggleflint^0.01^0^k~d^389^Jergosh the Invoker^0.01^0^k
2aq|Veteran Leggings|dw|s||||m^250626^NPC 250626^4.35^s~d^389^Oggleflint^0.01^0^k
2ar|Veteran Boots|w|||||w^9^17^k
2as|Veteran Gloves|dw|s||||m^256040^NPC 256040^0^s~d^389^Oggleflint^0.01^0^k
2at|Seer's Robe|dw|s||||m^3861^Bleak Worg^0^s~d^36^Rhahk'Zor^0.07^0^k
2au|Seer's Pants|dw|s||||d^36^Rhahk'Zor^0.07^0^k~d^36^Edwin VanCleef^0.02^0^k
2av|Seer's Boots|dw|||||d^389^Oggleflint^0.01^0^k~d^389^Jergosh the Invoker^0.01^0^k
2aw|Seer's Gloves|dw|s||||m^3853^Shadowfang Moonwalker^0^s~d^36^Rhahk'Zor^0.07^0^k
2ax|Inscribed Leather Breastplate|dwx|||||d^36^Rhahk'Zor^0.07^0^k~d^36^Edwin VanCleef^0.02^0^k
2ay|Inscribed Leather Pants|dwx|||||d^36^Rhahk'Zor^0.07^0^k~d^36^Edwin VanCleef^0.02^0^k
2az|Inscribed Leather Boots|dw|s||||m^539^Pygmy Venom Web Spider^0^s~m^250488^NPC 250488^0^s
2b0|Inscribed Leather Gloves|dw|s||||d^33^Razorclaw the Butcher^33.33^0^s~m^3875^Haunted Servitor^8.33^s
2b1|Burnished Tunic|dwx|s||||d^36^Rhahk'Zor^0.07^0^k
2b2|Burnished Leggings|dwx|||||d^36^Rhahk'Zor^0.07^0^k~d^36^Edwin VanCleef^0.02^0^k
2b3|Burnished Boots|dwx|||||d^36^Rhahk'Zor^0.07^0^k~d^36^Edwin VanCleef^0.02^0^k
2b4|Burnished Gloves|dw|s||||d^36^Rhahk'Zor^0.07^0^k~d^36^Edwin VanCleef^0.02^0^k
2bc|Brood Mother Carapace|w|||||w^0^0^k
2bk|Wendigo Fur Cloak|w|||||w^0^0^k
2bn|Feathered Headdress|w|||||w^0^0^k
2bu|Hide of Lupos|w|||||w^0^0^k
2bv|Noble's Robe|w|||||w^0^0^k
2bw|Enduring Cap|wx|||||x^4634^Iron Lockbox^k~w^0^0^k
2bx|Ranger Bow|w|||||w^0^0^k
2by|Bluegill Breeches|w|||||w^0^0^k
2bz|Large Bore Blunderbuss|v|s||||v^5123^Bretta Goldfury^1455^72.4^65.3^3771^^s
2c0|BKP 2700 "Enforcer"|v|s||||v^5123^Bretta Goldfury^1455^72.4^65.3^7098^^s
2c1|BKP 42 "Ultra"|v|||||v^8131^Blizrik Buckshot^1446^50.7^27.5^18478^^k
2c2|Reinforced Bow|v|s||||v^28989^Aemara^1416^17.2^71.4^3812^^s
2c3|Heavy Recurve Bow|v|s||||v^28989^Aemara^1416^17.2^71.4^6349^^s
2cc|Heavy Shortbow|dw|s||||m^250626^NPC 250626^0^s~d^389^Oggleflint^0.01^0^k
2cd|Whipwood Recurve Bow|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k~d^90^Crowd Pummeler 9-60^0.01^0^k
2cf|Short Ash Bow|dwx|s||||m^1028^Bluegill Muckdweller^0^s
2cg|Hunter's Muzzle Loader|dw|s||||d^389^Oggleflint^0.01^0^s~m^4006^Deepmoss Webspinner^0^s
2ch|"Mage-Eye" Blunderbuss|Rw|s||||m^681^Young Stranglethorn Tiger^0^s~R^14278^Ro'Bark^0.49^k
2ci|BKP "Sparrow" Smallbore|R|s||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
2cl|Lambent Scale Boots|dwx|s||||m^202^Skeletal Horror^0^s~m^246890^NPC 246890^0^s
2cn|Lambent Scale Gloves|dwx|||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
2co|Lambent Scale Legguards|dwx|s||||m^2427^Jailor Eston^0^s~d^34^Targorr the Dread^0.01^0^k
2cp|Lambent Scale Breastplate|dwx|||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
2ct|Humbert's Chestpiece|w|||||w^0^0^k
2cv|Forest Leather Chestpiece|dwx|||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
2cw|Forest Leather Pants|dwx|s||||m^1707^Defias Captive^0^s~m^1023^Mottled Razormaw^0^s
2cx|Forest Leather Boots|dwx|||||d^36^Edwin VanCleef^0.02^0^k~d^34^Targorr the Dread^0.01^0^k
2cy|Forest Leather Gloves|dwx|||||d^34^Targorr the Dread^0.01^0^k~d^34^Hamhock^0.01^0^k
2d5|Bright Boots|dwx|s||||m^2354^Vicious Gray Bear^4.76^s~d^36^Edwin VanCleef^0.02^0^k
2d6|Bright Gloves|dwx|s||||m^1708^Defias Inmate^0^s~d^36^Edwin VanCleef^0.02^0^k
2d7|Bright Pants|dwx|s||||m^1708^Defias Inmate^0^s~m^260800^NPC 260800^0^s
2d9|Bright Robe|dwx|||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
2da|Ensign Cloak|q|s|a|11847||q^6^Bounty on Garrick Padfoot^2^a^s
2db|Striking Hatchet|q||h|||q^372^At War With The Scarlet Crusade^5^h^k
2dd|Smoldering Pants|w|||||w^0^0^k
2de|Smoldering Gloves|w|||||w^0^0^k
2dg|Smoldering Boots|w|||||w^0^0^k
2di|Naga Heartpiercer|d|||||d^48^Lady Sarevess^20^0^k
2dj|Skorn's Rifle|q||h|||q^770^The Demon Scarred Cloak^6^h^k
2e7|Coldridge Hammer|q|s|a|||q^314^Protecting the Herd^6^a^s
2fj|Siege Brigade Vest|q||a|||q^419^The Lost Pilot^8^a^k
2fk|Driving Gloves|q|s|a|||q^412^Operation Recombobulation^7^a^s
2fl|Oil-stained Cloak|q|s|a|4933||q^412^Operation Recombobulation^7^a^s
2fm|Thelsamar Axe|q||a|||q^297^Gathering Idols^13^a^k
2fq|Burnt Hide Bracers|q||a|||q^416^Rat Catching^10^a^k
2fs|Ironplate Buckler|q||a|||q^307^Filthy Paws^9^a^k
2ft|Robe of the Keeper|q||a|||q^307^Filthy Paws^9^a^k
2fy|Ironheart Chain|q||a|||q^307^Filthy Paws^9^a^k
2gg|Hook Dagger|dw|sr||||m^539^Pygmy Venom Web Spider^0^s~d^36^Rhahk'Zor^0.07^0^k
2gh|Acrobatic Staff|dwx|r||||d^90^Mekgineer Thermaplugg^0.43^0^k~d^90^Crowd Pummeler 9-60^0.01^0^k
2gi|Viking Sword|dwx|sr||||m^3765^Bleakheart Satyr^4.17^s~d^34^Kam Deepfury^0.01^0^k
2gj|Sacrificial Kris|wx|r||||o^Ancient Treasure^1.4^k~x^4637^Steel Lockbox^k
2gk|Coral Claymore|w|||||w^0^0^k
2gl|Wood Chopper|w|||||o^Battered Chest^1.28^k~w^5^10^k
2gm|Beatstick|w|||||o^Battered Chest^1.28^k~w^5^10^k
2gn|Arced War Axe|d|s||||d^33^Commander Springvale^66.67^0^s
2go|Short Bastard Sword|w|sr||||m^3272^Kolkar Wrangler^0^s
2gp|Oak Mallet|dwx|sr||||d^33^Baron Silverlaine^33.33^0^s~m^268624^NPC 268624^0^s
2gq|Black Malice|dw|||||d^33^Razorclaw the Butcher^0.02^0^k~d^33^Baron Silverlaine^0.02^0^k
2gr|Barbaric Battle Axe|dw|sr||||m^3395^Verog the Dervish^0^s~d^36^Rhahk'Zor^0.07^0^k
2gs|Edged Bastard Sword|dw|sr||||m^256040^NPC 256040^0^s~m^441^Black Dragon Whelp^0^s
2gt|Stonecutter Claymore|dwx|sr||||d^189^Interrogator Vishas^16.67^0^s
2gu|Battering Hammer|dw|sr||||m^2529^Son of Arugal^0^s~m^4802^Blackfathom Tide Priestess^0^s
2gv|Battle Slayer|dwx|sr||||m^1417^Young Wetlands Crocolisk^0^s~d^36^Rhahk'Zor^0.07^0^k
2gw|Burnt Leather Bracers|w|||||o^Battered Chest^1.28^k~w^5^10^k
2gx|Barbarian War Axe|dwx|sr||||m^1022^Mottled Scytheclaw^0^s~d^34^Hamhock^0.01^0^k
2gy|Forest Leather Bracers|dwx|s||||d^189^Interrogator Vishas^16.67^0^s~m^6547^Suffering Victim^0^s
2gz|Dense Triangle Mace|wx|||||x^4633^Heavy Bronze Lockbox^k~w^0^0^k
2h0|Deepwood Bracers|w|||||w^0^0^k
2h1|Inscribed Leather Bracers|dw|s||||m^114^Harvest Watcher^0^s~d^389^Oggleflint^0.01^0^k
2h3|Hunting Bracers|w|||||o^Tattered Chest^1.43^k~w^9^17^k
2h4|Conk Hammer|wx|r||||x^4638^Reinforced Steel Lockbox^k~w^43^50^k
2h5|Ancient War Sword|q|s|a|||q^474^Defeat Nek'rosh^23^a^s
2h6|Brutal War Axe|dwx|sr||||m^246664^NPC 246664^0^s~d^34^Kam Deepfury^0.01^0^k
2h7|Burnished Bracers|dw|s||||d^36^Rhahk'Zor^0.07^0^k~d^389^Oggleflint^0.01^0^k
2h8|Lambent Scale Bracers|dwx|||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
2h9|Veteran Bracers|wx|||||o^Tattered Chest^1.43^k~x^20708^Tightly Sealed Trunk^k
2ha|Warrior's Bracers|w|||||o^Battered Chest^1.28^k~w^5^14^k
2hc|Warm Winter Robe|q|s|a|||q^287^Frostmane Hold^7^a^s
2hd|Foreman Belt|q||a|||q^309^Protecting the Shipment^10^a^k
2hj|Frostmane Scepter|w|||||w^0^0^k
2hk|Silver-lined Bracers|w|||||w^0^0^k
2hl|Bloodstained Knife|w|||||w^0^0^k
2ho|Jimmied Handcuffs|d|||||d^34^^33.33^0^k
2hp|Tarantula Silk Sash|w|||||w^0^0^k
2hq|Black Wolf Bracers|d|s||||d^33^Fenrus the Devourer^100^0^s
2hr|Cutthroat Pauldrons|w|||||w^0^0^k
2hv|Ring of Scorn|q||h|||q^530^A Husband's Revenge^10^h^k
2ik|Scarlet Initiate Robes|w|||||m^1507^Scarlet Initiate^1.1^k
2il|Webbed Cloak|w|||||m^1688^Night Web Matriarch^78.7^k
2in|Webbed Pants|w|||||m^1505^Night Web Spider^1.03^k
2iu|Flax Vest|q|s|h|||q^380^Night Web's Hollow^2^h^s
2iw|Zombie Skin Leggings|q||h|61||q^380^Night Web's Hollow^2^h^s
2ix|Rugged Mail Vest|q||h|10656||q^380^Night Web's Hollow^2^h^s
2iy|Flax Boots|q||h|6173||q^3901^Rattling the Rattlecages^1^h^s
2iz|Flax Gloves|q||h|719||q^364^The Mindless Ones^1^h^s
2j0|Deathguard Buckler|q||h|5395||q^382^The Red Messenger^2^h^s
2j1|Executor Staff|q|s|h|||q^382^The Red Messenger^2^h^s
2j3|Battle Chain Boots|w|s||||m^3267^Razormane Water Seeker^0^s
2j4|Battle Chain Bracers|w|s||||m^252664^NPC 252664^1.61^s
2j5|Battle Chain Gloves|w|||||w^6^14^k
2j6|Battle Chain Pants|w|||||w^6^14^k
2j7|Battle Chain Tunic|w|||||w^8^15^k
2j8|Tribal Boots|w|||||w^6^14^k
2j9|Tribal Bracers|w|||||w^5^14^k
2ja|Tribal Gloves|w|s||||m^2321^Foreststrider Fledgling^10^s~m^3272^Kolkar Wrangler^2.94^s
2jb|Tribal Pants|w|s||||m^3272^Kolkar Wrangler^0^s
2jc|Tribal Vest|w|s||||m^3131^Lightning Hide^8.33^s
2jd|Ancestral Boots|w|||||w^6^14^k
2je|Ancestral Gloves|w|s||||m^11318^Ragefire Trogg^4.17^s~m^254588^Windsong Crawler^6.25^s
2jf|Ancestral Woollies|w|s||||w^8^15^k
2jg|Ancestral Tunic|w|||||w^8^15^k
2jq|Brackwater Boots|dw|s||||m^3246^Fleeting Plainstrider^0^s~d^389^Oggleflint^0.01^0^k
2jr|Brackwater Bracers|w|s||||m^11319^Ragefire Shaman^0^s
2js|Brackwater Gauntlets|w|||||w^9^17^k
2jt|Brackwater Leggings|dw|s||||d^389^Oggleflint^0.01^0^k~d^389^Jergosh the Invoker^0.01^0^k
2ju|Brackwater Vest|dw|s||||d^36^Rhahk'Zor^0.07^0^k~d^389^Oggleflint^0.01^0^k
2jv|Barbaric Cloth Boots|dw|s||||m^3266^Razormane Defender^0^s~m^3277^Witchwing Roguefeather^3.85^s
2jw|Barbaric Cloth Gloves|dw|s||||m^3277^Witchwing Roguefeather^3.85^s~d^389^Oggleflint^0.01^0^k
2jx|Barbaric Loincloth|dw|s||||m^11318^Ragefire Trogg^4.17^s~d^389^Oggleflint^0.01^0^k
2jy|Barbaric Cloth Vest|dw|||||d^36^Rhahk'Zor^0.07^0^k~d^389^Oggleflint^0.01^0^k
2jz|Ceremonial Leather Ankleguards|dw|s||||m^3461^Oasis Snapjaw^5.56^s~m^3273^Kolkar Stormer^0^s
2k0|Ceremonial Leather Bracers|w|||||w^8^15^k
2k1|Ceremonial Leather Harness|dw|s||||m^268624^NPC 268624^0^s~d^36^Rhahk'Zor^0.07^0^k
2k2|Ceremonial Leather Gloves|dw|||||d^389^Oggleflint^0.01^0^k~d^389^Jergosh the Invoker^0.01^0^k
2k3|Ceremonial Leather Loincloth|dw|s||||m^3260^Bristleback Water Seeker^2.38^s~m^3640^Evolving Ectoplasm^0^s
2k7|Short Sabre|w|||||m^1529^Bleeding Horror^8.06^k
2k9|Gray Fur Booties|w|||||m^1549^Ravenous Darkhound^4.18^k
2ka|Wispy Cloak|w|||||w^0^0^k
2kc|Ghostly Mantle|Q||h|||q^1098^Deathstalkers in Shadowfang^18^h^k
2kd|Vile Fin Battle Axe|w|||||m^1545^Vile Fin Muckdweller^8.12^k
2kf|Vile Fin Oracle Staff|w|||||m^1544^Vile Fin Minor Oracle^8.12^k
2kg|Spider Web Robe|w|||||m^1555^Vicious Night Web Spider^5.03^k
2ki|Dargol's Hauberk|w|||||w^0^0^k
2kj|Melrache's Cape|w|||||m^1665^Captain Melrache^4.08^k
2kk|Perrine's Boots|w|||||m^1662^Captain Perrine^6.9^k
2km|Farmer's Shovel|w|||||w^0^0^k
2kt|Gauntlets of Ogre Strength|w|||||w^0^0^k
2kw|Captain Sander's Sash|q|||||q^140^Captain Sander's Hidden Treasure^10^^k
2kx|Silk Wizard Hat|w|||||w^0^0^k
2mg|Lucine Longsword|Q|s|a|||q^386^What Comes Around...^22^a^s
2mt|Doomspike|dw|||||d^48^Aku'mai^0.02^0^k~d^48^Twilight Lord Kelris^0.02^0^k
2mu|Crested Scepter|dw|||||d^48^Aku'mai^0.02^0^k~d^48^Twilight Lord Kelris^0.02^0^k
2mv|Staff of the Friar|dw|s||||m^4813^Twilight Shadowmage^0^s~d^48^Aku'mai^0.02^0^k
2mw|Martyr's Chain|dw|||||d^48^Aku'mai^0.02^0^k~d^48^Twilight Lord Kelris^0.02^0^k
2mx|Onyx Claymore|dw|||||d^48^Aku'mai^0.02^0^k~d^48^Twilight Lord Kelris^0.02^0^k
2n9|Guardsman Belt|w|||||w^0^0^k
2na|Sniper Rifle|wx|r||||o^Ancient Treasure^2.3^k~o^Captain's Chest^2.1^k
2nb|Bone-studded Leather|q|s|a|||q^219^Missing In Action^19^a^s
2nf|Zombie Skin Bracers|q||h|||q^374^Proof of Demise^5^h^k
2nh|Clasped Belt|q||h|||q^374^Proof of Demise^5^h^k
2nj|Zombie Skin Boots|q||h|||q^358^Graverobbers^4^h^k
2nk|Bonecracker|q||h|||q^408^The Family Crypt^7^h^k
2nm|Apprentice Sash|q||h|||q^369^A New Plague^6^h^k
2nn|Ceremonial Tomahawk|q||h|||q^760^Wildmane Cleansing^4^h^k
2no|Tiller's Vest|q||h|||q^398^Wanted: Maggot Eye^6^h^k
2nq|Darkwood Staff|q||h|||q^408^The Family Crypt^7^h^k
2nt|Mystic Shawl|q||h|||q^452^Pyrewood Ambush^12^h^k
2nu|Faerleia's Shield|q||h|||q^452^Pyrewood Ambush^12^h^k
2nv|Nightglow Concoction|q||h|||q^451^A Recipe For Death^9^h^k
2nw|Ceranium Rod|q|s|h|||q^480^The Weaver^10^h^s
2nx|Quilted Bracers|q|s|h|||q^425^Ivar the Foul^10^h^s
2ny|Reconnaissance Boots|q||h|15398||q^437^The Dead Fields^10^h^s
2o1|Stamped Trousers|q||h|||q^491^Wand to Bethor^12^h^k
2o2|Rugged Mail Gloves|q||h|||q^491^Wand to Bethor^12^h^k
2o5|High Robe of the Adjudicator|q||h|||q^442^Assault on Fenris Isle^10^h^k
2o6|Talonstrike|q||h|||q^442^Assault on Fenris Isle^10^h^k
2o7|Silver Star|q|||||q^1370^Stealing Supplies^30^^k
2od|Copper Chain Boots|c|s||||c^Blacksmithing^20^3319^f
2of|Copper Chain Vest|cw|||||c^Blacksmithing^30^3321^f
2og|Runed Copper Gauntlets|c|s||||c^Blacksmithing^40^3323^f
2oh|Runed Copper Pants|c|s||||c^Blacksmithing^45^3324^f
2oi|Gemmed Copper Gauntlets|c|r||||c^Blacksmithing^35^3325^f
2oj|Cloak of Flames|w|||||w^0^0^k
2oo|Rough Bronze Shoulders|c|||||c^Blacksmithing^110^3328^f
2op|Silvered Bronze Shoulders|c|||||c^Blacksmithing^100^3330^f
2or|Silvered Bronze Gauntlets|c|s||||c^Blacksmithing^135^3333^f
2os|Green Iron Boots|c|||||c^Blacksmithing^120^3334^f
2ot|Green Iron Gauntlets|c|||||c^Blacksmithing^125^3336^f
2ov|Heavy Copper Broadsword|c|||||c^Blacksmithing^90^3292^f
2ow|Copper Battle Axe|c|||||c^Blacksmithing^35^3293^f
2ox|Thick War Axe|c|||||c^Blacksmithing^70^3294^f
2oy|Deadly Bronze Poniard|c|||||c^Blacksmithing^100^3295^f
2oz|Heavy Bronze Mace|c|||||c^Blacksmithing^130^3296^f
2p0|Mighty Iron Hammer|c|||||c^Blacksmithing^120^3297^f
2p1|Raptor's End|q|s|a|||q^296^Ormer's Revenge^22^a^s
2pj|Cloak of the People's Militia|q|s|a|||q^153^Red Leather Bandanas^10^a^s
2qr|Robe of Solomon|q|s|a|||q^219^Missing In Action^19^a^s
2qs|Dread Mage Hat|q||a|||q^397^You Have Served Us Well^25^a^k
2qu|Fen Keeper Robe|q|s|a|||q^275^Blisters on The Land^20^a^s
2qv|Night Watch Gauntlets|q|s|a|||q^245^Eight-Legged Menaces^17^a^s
2qw|Mantle of Honor|q|s|a|||q^253^Bride of the Embalmer^20^a^s
2qx|Resilient Poncho|q|s|a|||q^471^Apprentice's Duties^18^a^s
2qy|Belt of Vindication|Q||a|||q^378^The Fury Runs Deep^22^a^k
2qz|Seafarer's Pantaloons|w|||||w^0^0^k
2r1|Beerstained Gloves|q||a|||q^466^Search for Incendicite^20^a^k
2r2|Raptorbane Armor|q|s|a|||q^296^Ormer's Revenge^22^a^s
2r3|Dwarven Fishing Pole|q|s|a|||q^150^Murloc Poachers^20^a^s
2r6|Bonegrinding Pestle|q|s|h|||q^99^Arugal's Folly^9^h^s
2r7|Trogg Beater|w|||||w^0^0^k
2r8|Daryl's Shortsword|q||a|||q^258^A Hunter's Challenge^11^a^k
2re|Harvester's Pants|q|s|a|||q^9^The Killing Fields^8^a^s
2rh|Serrated Knife|q||h|||q^491^Wand to Bethor^12^h^k
2ri|Acidproof Cloak|q||h|||q^451^A Recipe For Death^9^h^k
2rj|Weathered Belt|q|s|h|||q^425^Ivar the Foul^10^h^s
2rl|Camouflaged Tunic|q|s|h|||q^480^The Weaver^10^h^s
2rm|Logsplitter|q|s|h|||q^99^Arugal's Folly^9^h^s
2rn|Embroidered Belt|v|s||||v^5129^Lissyphus Finespindle^1455^54.7^88.3^14314^^s
2ro|Embroidered Bracers|v|s||||v^5129^Lissyphus Finespindle^1455^54.7^88.3^14365^^s
2rp|Heavy Weave Belt|v|s||||v^4164^Cylania^1457^59.1^45.8^576^^s
2rq|Heavy Weave Bracers|v|s||||v^4164^Cylania^1457^59.1^45.8^578^^s
2rr|Padded Belt|v|s||||v^3092^Tagain^1456^44^44.8^2097^^s
2rs|Padded Bracers|v|s||||v^3092^Tagain^1456^44^44.8^2104^^s
2rt|Russet Belt|vw|s||||v^3092^Tagain^1456^44^44.8^5477^^s
2ru|Russet Bracers|vw|s||||v^3092^Tagain^1456^44^44.8^5497^^s
2rv|Tattered Cloth Belt|v|s|h|||v^2113^Archibald Kava^1420^32.3^65.6^23^h^s
2rw|Tattered Cloth Bracers|v|s|h|||v^2113^Archibald Kava^1420^32.3^65.6^23^h^s
2rx|Thick Cloth Belt|v|s||||v^3492^Vexspindle^1413^62.2^38.4^1081^^s
2ry|Thick Cloth Bracers|v|s||||v^3492^Vexspindle^1413^62.2^38.4^1085^^s
2rz|Thin Cloth Belt|v|s||||v^251365^Jolee Brightmeadows^2521^43.4^23.6^24^^s
2s0|Thin Cloth Bracers|v|s||||v^251365^Jolee Brightmeadows^2521^43.4^23.6^24^^s
2s2|Knitted Belt|vw|s||||v^4164^Cylania^1457^59.1^45.8^145^^s~m^3530^Pyrewood Tailor^84.14^k
2s3|Knitted Bracers|vw|s||||v^4164^Cylania^1457^59.1^45.8^145^^s~m^3530^Pyrewood Tailor^84.26^k
2s6|Woven Belt|v||h|||v^3166^Cutac^1411^53.1^40.9^147^h^k
2s7|Woven Bracers|v||h|||v^3166^Cutac^1411^53.1^40.9^148^h^k
2t5|Journeyman's Bracers|w|||||o^Battered Chest^1.28^k~w^5^10^k
2t6|Ancestral Bracers|w|s||||m^254626^NPC 254626^3.03^s
2t7|Spellbinder Bracers|w|s||||m^250618^NPC 250618^2.78^s
2t8|Barbaric Cloth Bracers|w|||||w^6^14^k
2t9|Seer's Cuffs|dw|s||||d^2999^Bjork^33.33^0^s~m^250630^NPC 250630^0^s
2tb|Bright Bracers|dwx|s||||d^36^Edwin VanCleef^0.02^0^k
2td|Tribal Buckler|w|||||w^6^14^k
2te|Battle Shield|w|||||w^5^14^k
2tf|Veteran Shield|dw|s||||m^442^Tarantula^0^s~d^389^Oggleflint^0.01^0^k
2tg|Hunting Buckler|w|||||w^9^17^k
2th|Ceremonial Buckler|dw|s||||m^11318^Ragefire Trogg^4.17^s~d^389^Oggleflint^0.01^0^k
2ti|Brackwater Shield|w|s||||m^3273^Kolkar Stormer^2.78^s~m^11322^Searing Blade Cultist^5.26^s
2tj|Burnished Shield|dwx|s||||m^430^Redridge Mystic^0^s~d^36^Rhahk'Zor^0.07^0^k
2tk|Lambent Scale Shield|dwx|||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
2vb|Hillman's Cloak|c|||||c^Leatherworking^150^3760^f
2vo|Hooded Cowl|q|s|h|||q^567^Dangerous!^19^h^s
2vp|Orcish War Chain|q|s|h|||q^498^The Rescue^17^h^s
2vv|Skull Ring|q|s|h|||q^546^Souvenirs of Death^20^h^s
2vx|Stomping Boots|q|s|h|||q^501^Elixir of Pain^21^h^s
2vy|Bow of Plunder|q|s|h|||q^567^Dangerous!^19^h^s
2vz|Sentry Buckler|q|s|h|||q^567^Dangerous!^19^h^s
2w3|Meditative Sash|q||h|||q^515^Elixir of Agony^24^h^k
2w4|Feline Mantle|d|s||||d^33^Wolf Master Nandos^33.33^0^s
2w5|High Apothecary Cloak|q||h|||q^515^Elixir of Agony^24^h^k
2w6|Ribbed Breastplate|q||h|||q^547^Humbert's Sword^26^h^k
2w7|Mercenary Leggings|q||h|||q^547^Humbert's Sword^26^h^k
2w8|Grunt Vest|q|s|h|||q^498^The Rescue^17^h^s
2w9|Shepherd's Girdle|q||a|||q^564^Costly Menace^30^a^k
2wa|Shepherd's Gloves|q||a|||q^564^Costly Menace^30^a^k
2wb|Fish Gutter|q||a|||q^562^Stormwind Ho!^25^a^k
2we|Crusader Belt|q||a|||q^505^Syndicate Assassins^26^a^k
2wf|Insulated Sage Gloves|q||a|||q^505^Syndicate Assassins^26^a^k
2wg|Band of the Undercity|q||h|||q^550^Battle of Hillsbrad^19^h^k
2wh|Deadskull Shield|q||h|||q^550^Battle of Hillsbrad^19^h^k
2wj|Lunar Buckler|q||a|||q^504^Crushridge Warmongers^30^a^k
2wk|Mantis Boots|q||h|||q^508^Taretha's Gift^29^h^k
2wl|Brigand's Pauldrons|q||h|||q^508^Taretha's Gift^29^h^k
2y6|Runic Darkblade|q||h|||q^550^Battle of Hillsbrad^19^h^k
2yh|Adept's Cloak|q||h|||q^375^The Chill of Death^7^h^k
2yi|Sturdy Cloth Trousers|q||h|||q^426^The Mills Overrun^6^h^k
2yj|Green Iron Bracers|c|||||c^Blacksmithing^165^3501^f
2yl|Golden Scale Coif|c|||||c^Blacksmithing^165^3503^f
2yo|Green Iron Shoulders|c|||||c^Blacksmithing^135^3504^f
2yp|Golden Scale Shoulders|cw|||||c^Blacksmithing^150^3505^f
2ys|Green Iron Hauberk|c|||||c^Blacksmithing^180^3508^f
2yt|Golden Scale Cuirass|c|||||c^Blacksmithing^170^3511^f
2yu|Polished Steel Boots|c|||||c^Blacksmithing^160^3513^f
2yv|Golden Scale Boots|c|||||c^Blacksmithing^175^3515^f
2yw|Big Bronze Knife|c|||||c^Blacksmithing^100^3491^f
2yx|Hardened Iron Shortsword|c|||||c^Blacksmithing^135^3492^f
2yy|Jade Serpentblade|c|||||c^Blacksmithing^150^3493^f
2yz|Solid Iron Maul|c|||||c^Blacksmithing^130^3494^f
2z0|Golden Iron Destroyer|c|||||c^Blacksmithing^145^3495^f
2z1|Moonsteel Broadsword|c|||||c^Blacksmithing^155^3496^f
2z2|Frost Tiger Blade|c|||||c^Blacksmithing^175^3497^f
2z3|Massive Iron Axe|c|||||c^Blacksmithing^160^3498^f
2z4|Shadow Crescent Axe|c|||||c^Blacksmithing^175^3500^f
301|Russet Hat|vw|s||||v^3092^Tagain^1456^44^44.8^7922^^s
302|Studded Hat|v|s||||v^5129^Lissyphus Finespindle^1455^54.7^88.3^10201^^s
303|Augmented Chain Helm|v|s||||v^5812^Tumi^1454^82.4^23.4^12284^^s
304|Embroidered Hat|v|s||||v^5129^Lissyphus Finespindle^1455^54.7^88.3^21940^^s
305|Reinforced Leather Cap|v|s||||v^5129^Lissyphus Finespindle^1455^54.7^88.3^27523^^s
306|Brigandine Helm|v|s||||v^5812^Tumi^1454^82.4^23.4^29986^^s
30e|Staff of Nobles|w|||||w^0^0^k
32p|Monogrammed Sash|w|U||||m^1493^Mok'rash^86.5^k
343|Silver-thread Robe|Rwx|||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
344|Silver-thread Cuffs|dwx|||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
345|Silver-thread Pants|dwx|||||d^34^Kam Deepfury^0.01^0^k
346|Nightsky Robe|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k
347|Nightsky Cowl|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k~d^90^Crowd Pummeler 9-60^0.01^0^k
348|Nightsky Gloves|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k~d^90^Crowd Pummeler 9-60^0.01^0^k
349|Aurora Cowl|wx|||||x^4636^Strong Iron Lockbox^k~x^6827^Box of Supplies^k
34a|Aurora Gloves|wx|||||x^4636^Strong Iron Lockbox^k~x^6827^Box of Supplies^k
34b|Aurora Bracers|wx|||||x^4636^Strong Iron Lockbox^k~x^6827^Box of Supplies^k
34c|Aurora Pants|wx|||||x^4636^Strong Iron Lockbox^k~x^6827^Box of Supplies^k
34d|Mistscape Bracers|wx|||||o^Ancient Treasure^1.5^k~x^4637^Steel Lockbox^k
34e|Mistscape Pants|wx|||||o^Ancient Treasure^0.8^k~x^4637^Steel Lockbox^k
34f|Mistscape Boots|wx|||||o^Ancient Treasure^1.5^k~x^4637^Steel Lockbox^k
34g|Emblazoned Hat|Rwx|||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
34h|Emblazoned Bracers|dwx|s||||d^34^Hamhock^0.01^0^k~d^34^Dextren Ward^0.01^0^k
34i|Emblazoned Leggings|Rwx|||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
34j|Emblazoned Boots|dwx|s||||d^34^Kam Deepfury^0.01^0^k
34k|Insignia Cap|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k~d^90^Crowd Pummeler 9-60^0.01^0^k
34m|Insignia Leggings|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k~d^90^Crowd Pummeler 9-60^0.01^0^k
34n|Insignia Boots|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k~d^90^Crowd Pummeler 9-60^0.01^0^k
34p|Insignia Chestguard|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k
34r|Glyphed Bracers|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k
34s|Glyphed Leggings|wx|||||x^4636^Strong Iron Lockbox^k~x^6827^Box of Supplies^k
34t|Imperial Leather Bracers|wx|||||o^Ancient Treasure^0.7^k~x^4637^Steel Lockbox^k
34u|Imperial Leather Pants|wx|||||o^Ancient Treasure^0.6^k~o^Large Solid Chest^0.75^k
34v|Imperial Leather Gloves|wx|||||o^Ancient Treasure^1^k~x^4637^Steel Lockbox^k
34w|Emblazoned Buckler|dwx|||||d^34^Kam Deepfury^0.01^0^k
34x|Combat Shield|dwx|s||||d^189^Bloodmage Thalnos^16.67^0^s
34y|Insignia Buckler|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k~d^90^Crowd Pummeler 9-60^0.01^0^k
34z|Glyphed Buckler|wx|||||x^4636^Strong Iron Lockbox^k~x^6827^Box of Supplies^k
350|Chief Brigadier Shield|wx|||||o^Ancient Treasure^0.7^k~x^4636^Strong Iron Lockbox^k
351|Blackforge Buckler|wx|||||x^4638^Reinforced Steel Lockbox^k~x^19035^Lard's Special Picnic Basket^k
352|Jouster's Crest|wx|||||o^Ancient Treasure^0.6^k~o^Captain's Chest^0.8^k
353|Glimmering Mail Breastplate|Rwx|||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
354|Glimmering Mail Gauntlets|dwx|s||||d^34^Kam Deepfury^0.01^0^k
355|Glimmering Mail Greaves|Rwx|||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
356|Mail Combat Armor|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k
357|Mail Combat Gauntlets|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k~d^90^Crowd Pummeler 9-60^0.01^0^k
358|Mail Combat Boots|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k~d^90^Crowd Pummeler 9-60^0.01^0^k
359|Mail Combat Headguard|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k~d^90^Crowd Pummeler 9-60^0.01^0^k
35a|Chief Brigadier Coif|wx|||||x^4636^Strong Iron Lockbox^k~x^6827^Box of Supplies^k
35c|Blackforge Cowl|wx|||||o^Ancient Treasure^0.6^k~o^Large Solid Chest^0.75^k
35e|Blackforge Breastplate|wx|||||x^4638^Reinforced Steel Lockbox^k~x^10479^Kovic's Trading Satchel^k
35g|Blackforge Leggings|wx|||||x^4638^Reinforced Steel Lockbox^k~x^10752^Emerald Encrusted Chest^k
35i|Flash Rifle|q|||||q^705^Pearl Diving^30^^k
35j|Trueshot Bow|wx|r||||o^Ancient Treasure^2^k~x^4637^Steel Lockbox^k
35l|Ricochet Blunderbuss|wx|r||||x^4638^Reinforced Steel Lockbox^k~x^5758^Mithril Lockbox^k
35m|Mug O' Hurt|wx|||||x^4638^Reinforced Steel Lockbox^k~w^0^0^k
35n|Widowmaker|wx|U||||x^4638^Reinforced Steel Lockbox^k~x^16884^Sturdy Junkbox^k
363|Tiger Hunter Gloves|q|||||q^188^Tiger Mastery^28^^k
364|Panther Hunter Leggings|q|||||q^193^Panther Mastery^28^^k
365|Excelsior Boots|q|||||q^628^Excelsior^31^^k
368|Choker of the High Shaman|q||h|||q^573^Mok'thardin's Enchantment^33^h^k
369|Medicine Blanket|q|||||q^348^Stranglethorn Fever^40^^k
36a|Darktide Cape|q|||||q^576^Keep An Eye Out^37^^k
36d|Scorching Sash|q|||||q^617^Akiris by the Bundle^38^^k
36e|Poobah's Nose Ring|q|||||q^630^Message in a Bottle^45^^k
36f|Raptor Hunter Tunic|q|||||q^197^Raptor Mastery^28^^k
36g|Robe of Crystal Waters|q||a|||q^611^The Curse of the Tides^32^a^k
36h|Gemmed Gloves|q|||||q^213^Hostile Takeover^31^^k
36i|Bookmaker's Scepter|q||a|||q^328^The Hidden Key^30^a^k
36j|Frost Metal Pauldrons|q||a|||q^331^Report to Doren^30^a^k
36k|Cap of Harmony|q||a|||q^622^Return to Corporal Kaleb^32^a^k
36l|Tranquil Orb|q||a|||q^206^Mai'Zoth^30^a^k
36m|Guerrilla Cleaver|q||a|||q^204^Bad Medicine^30^a^k
36n|Shrapnel Blaster|q||a|||q^202^Colonel Kurzen^30^a^k
36o|Silver Spade|q|||||q^600^Venture Company Mining^30^^k
36p|Collection Plate|q|||||q^613^Cracking Maury's Foot^30^^k
36q|Smotts' Compass|q|||||q^618^Facing Negolash^40^^k~q^8554^Facing Negolash^40^^k
36r|Belt of Corruption|q|||||q^621^Zanzil's Secret^35^^k
36s|Darkspear Armsplints|q||h|||q^582^Headhunting^30^h^k
36t|Darkspear Cuffs|q||h|||q^582^Headhunting^30^h^k
36u|Nimboya's Mystical Staff|q||h|||q^592^Saving Yenniku^30^h^k
36w|Darkspear Boots|q||h|||q^598^Split Bone Necklace^30^h^k
36x|Darkspear Shoes|q||h|||q^598^Split Bone Necklace^30^h^k
36y|Blackwater Tunic|q|||||q^608^The Bloodsail Buccaneers^37^^k
36z|Junglewalker Sandals|q||a|||q^331^Report to Doren^30^a^k
370|Palm Frond Mantle|q||a|||q^204^Bad Medicine^30^a^k
38l|Berylline Pads|Q|||||q^1101^The Crone of the Kraul^29^a^k~q^1102^A Vengeful Fate^29^h^k
39p|Handstitched Leather Belt|c|s||||c^Leatherworking^25^3753^f
39r|Embossed Leather Gloves|c|s||||c^Leatherworking^55^3756^f
39u|Embossed Leather Pants|c|||||c^Leatherworking^75^3759^f
39v|Fine Leather Tunic|c|s||||c^Leatherworking^85^3761^f
39w|Hillman's Leather Vest|c|s||||c^Leatherworking^75^3762^f
39y|Fine Leather Belt|c|s||||c^Leatherworking^80^3763^f
39z|Hillman's Leather Gloves|c|s||||c^Leatherworking^145^3764^f
3a1|Dark Leather Belt|c|s||||c^Leatherworking^125^3766^f
3a3|Hillman's Shoulders|c|s||||c^Leatherworking^130^3768^f
3a4|Dark Leather Shoulders|c|s||||c^Leatherworking^115^3769^f
3a5|Toughened Leather Gloves|c|||||c^Leatherworking^135^3770^f
3a6|Barbaric Gloves|c|||||c^Leatherworking^125^3771^f
3a7|Green Leather Armor|c|||||c^Leatherworking^130^3772^f
3a8|Guardian Armor|c|||||c^Leatherworking^150^3773^f
3a9|Green Leather Belt|c|||||c^Leatherworking^160^3774^f
3aa|Guardian Belt|c|||||c^Leatherworking^145^3775^f
3ab|Green Leather Bracers|c|||||c^Leatherworking^180^3776^f
3ac|Guardian Leather Bracers|c|||||c^Leatherworking^170^3777^f
3ad|Solliden's Trousers|w|||||w^0^0^k
3af|Standard Issue Shield|w|||||m^1660^Scarlet Bodyguard^4.07^k
3b6|Dust Bowl|w|||||w^0^0^k
3bi|Small Green Dagger|w|||||w^0^0^k
3bj|Cranial Thumper|w|||||w^0^0^k
3bn|Heavy Linen Gloves|c|s||||c^Tailoring^35^3840^f
3bp|Handstitched Linen Britches|c|||||c^Tailoring^70^3842^f
3bq|Heavy Woolen Gloves|c|||||c^Tailoring^85^3843^f
3br|Heavy Woolen Cloak|c|||||c^Tailoring^80^3844^f
3bs|Soft-soled Linen Boots|c|||||c^Tailoring^80^3845^f
3bt|Red Woolen Boots|c|||||c^Tailoring^75^3847^f
3bu|Double-Stitched Woolen Shoulders|c|s||||c^Tailoring^110^3848^f
3bv|Reinforced Woolen Shoulders|c|||||c^Tailoring^95^3849^f
3bw|Heavy Woolen Pants|c|||||c^Tailoring^110^3850^f
3bx|Phoenix Pants|c|||||c^Tailoring^100^3851^f
3by|Gloves of Meditation|c|||||c^Tailoring^130^3852^f
3bz|Azure Silk Gloves|c|||||c^Tailoring^120^3854^f
3c0|Spidersilk Boots|c|||||c^Tailoring^125^3855^f
3c1|Spider Silk Slippers|c|||||c^Tailoring^115^3856^f
3c2|Enchanter's Cowl|c|||||c^Tailoring^130^3857^f
3c3|Shadow Hood|c|||||c^Tailoring^135^3858^f
3c5|Boots of the Enchanter|c|||||c^Tailoring^140^3860^f
3c6|Long Silken Cloak|c|||||c^Tailoring^185^3861^f
3c7|Icy Cloak|c|||||c^Tailoring^165^3862^f
3c9|Star Belt|c|||||c^Tailoring^165^3864^f
3cb|Phoenix Gloves|c|||||c^Tailoring^100^3868^f
3cn|Brown Linen Pants|c|s||||c^Tailoring^30^3914^f
3d6|Rough Boomstick|c|s||||c^Engineering^50^3925^f
3dc|Flying Tiger Goggles|c|s||||c^Engineering^100^3934^f
3dd|Deadly Blunderbuss|c|s||||c^Engineering^105^3936^f
3dg|Lovingly Crafted Boomstick|c|||||c^Engineering^120^3939^f
3dh|Shadow Goggles|c|||||c^Engineering^120^3940^f
3dn|Silver-plated Shotgun|c|||||c^Engineering^130^3949^f
3dr|Moonsight Rifle|c|||||c^Engineering^145^3954^f
3f2|Ethereal Talisman|q||h|||q^521^The Crown of Will^34^h^k
3f6|Scarecrow Trousers|w|||||w^0^0^k
3f8|Jewel-encrusted Sash|w|||||w^0^0^k
3f9|Channeler's Staff|w|||||w^0^0^k
3fa|Pugilist Bracers|dw|||||d^47^Overlord Ramtusk^0.03^0^k~d^47^Aggem Thorncurse^0.03^0^k
3ff|Grim Pauldrons|q|s|h|||q^1164^To Steal From Thieves^27^h^s
3fg|Black Husk Shield|w|||||w^0^0^k
3fh|Flesh Carver|w|||||w^0^0^k
3fi|Blackvenom Blade|w|||||w^0^0^k
3fj|Cloak of Night|w|||||w^0^0^k
3fk|Husk of Naraxis|w|||||w^0^0^k
3fq|Talon of Vultros|w|U||||w^0^0^k
3fs|Raptor Hide Belt|c|||||c^Leatherworking^140^4097^f
3fy|Cloak of Rot|w|||||w^0^0^k
3fz|Beaded Raptor Collar|w|||||w^0^0^k
3g0|Trouncing Boots|w|||||w^0^0^k
3g1|Bonefist Gauntlets|w|||||w^0^0^k
3gd|Nefarious Buckler|w|||||w^0^0^k
3h4|Dwarven Guard Cloak|q|s|a|||q^633^The Thandol Span^28^a^s
3h5|Swampland Trousers|q|s|a|||q^633^The Thandol Span^28^a^s
3h7|Pit Fighter's Shield|q||h|||q^646^Trol'kalar^32^h^k
3h8|Blood-tinged Armor|q||h|||q^646^Trol'kalar^32^h^k
3h9|Seawolf Gloves|q|||||q^664^Drowned Sorrows^35^^k
3hb|Black Water Hammer|q|||||q^662^Deep Sea Salvage^35^^k
3hy|Steel-clasped Bracers|Q|s|h|||q^1013^The Book of Ur^16^h^s
3hz|Ironforge Memorial Ring|q||a|||q^700^A King's Tribute^25^a^k
3i7|White Drakeskin Cap|q||h|||q^673^Foul Magics^35^h^k
3i9|Radiant Silver Bracers|q||h|||q^673^Foul Magics^35^h^k
3ib|Gnomish Zapper|q|||||q^666^Sunken Treasure^35^^k
3ic|Servomechanic Sledgehammer|q|||||q^666^Sunken Treasure^35^^k
3id|Seafire Band|q|||||q^667^Death From Below^35^^k
3ie|Coldwater Ring|q|||||q^667^Death From Below^35^^k
3io|Fine Scimitar|w|||||o^Battered Chest^1.28^k~w^5^14^k
3ip|Scalping Tomahawk|w|sr||||m^275437^NPC 275437^3.33^s~m^260157^NPC 260157^0^s
3iq|Severing Axe|w|sr||||m^252763^NPC 252763^0^s~m^252767^NPC 252767^0^s
3ir|Billy Club|w|||||o^Battered Chest^1.28^k~w^5^14^k
3is|Spiked Club|w|sr||||m^11324^Searing Blade Warlock^0^s~m^3381^Southsea Brigand^0^s
3it|Simple Dagger|w|s||||m^252068^NPC 252068^2.22^s
3iu|Sturdy Quarterstaff|w|sr||||m^1891^Pyrewood Watcher^8.33^s~m^3273^Kolkar Stormer^2.78^s
3iv|Merc Sword|dw|sr||||d^389^Oggleflint^0.01^0^k~d^389^Jergosh the Invoker^0.01^0^k
3iw|Grunt Axe|dw|sr||||m^3374^Bael'dun Excavator^1.69^s~d^36^Rhahk'Zor^0.07^0^k
3ix|Staunch Hammer|w|sr||||m^11910^Grimtotem Ruffian^0^s
3iy|Birchwood Maul|dw|sr||||m^3278^Witchwing Slayer^1.23^s~m^250484^NPC 250484^0^s
3iz|War Knife|dw|sr||||m^1893^Moonrage Sentry^0^s~m^2158^Gravelflint Scout^0^s
3j3|Medicine Staff|dw|sr||||d^33^Razorclaw the Butcher^33.33^0^s~m^3875^Haunted Servitor^0^s
3j4|Light Bow|dwx|s||||m^3238^Stormhide^2.78^s~m^3853^Shadowfang Moonwalker^0^s
3j5|Compact Shotgun|w|s||||m^3131^Lightning Hide^4.17^s~m^3267^Razormane Water Seeker^7.69^s
3k6|Pendant of Myzrael|wx|U||||x^8366^Bloated Mithril Head Trout^k~w^29^43^k
3k8|Ryedol's Lucky Pick|Rw|U||||m^2739^Shadowforge Tunneler^15^k~m^2740^Shadowforge Darkweaver^15^k
3kz|Grimsteel Cape|Q||h|||q^1051^Vorrel's Revenge^25^h^k
3l8|Salbac Shield|q||a|||q^733^Scrounging^35^a^k
3l9|Ironheel Boots|q||a|||q^733^Scrounging^35^a^k
3le|Warrior's Cloak|w|s||||m^260157^NPC 260157^0^s
3lf|Warrior's Girdle|w|||||o^Battered Chest^1.28^k~w^5^10^k
3lg|Walking Boots|w|||||w^0^0^k
3lh|Bright Mantle|dwx|||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
3li|Journeyman's Cloak|w|||||o^Battered Chest^1.28^k~w^5^10^k
3lj|Journeyman's Belt|wx|||||o^Battered Chest^1.28^k~x^6354^Small Locked Chest^k
3ll|Burnt Cloak|w|||||o^Battered Chest^1.28^k~w^5^10^k
3lm|Burnt Leather Belt|w|||||o^Battered Chest^1.28^k~w^5^14^k
3lo|Battle Chain Cloak|w|s||||m^3198^Burning Blade Apprentice^7.14^s
3lp|Battle Chain Girdle|w|s||||m^3198^Burning Blade Apprentice^7.14^s
3lr|Ancestral Cloak|w|s||||m^3130^Thunder Lizard^0^s
3ls|Ancestral Belt|w|s||||m^3113^Razormane Dustrunner^0^s~m^3267^Razormane Water Seeker^7.69^s
3lu|Tribal Cloak|w|||||w^5^14^k
3lv|Tribal Belt|w|||||w^5^14^k
3lw|Skeletal Gauntlets|w|||||w^0^0^k
3lx|Veteran Cloak|wx|||||x^6353^Small Chest^k~w^6^14^k
3ly|Veteran Girdle|wx|||||x^20708^Tightly Sealed Trunk^k~w^9^17^k
3m0|Brackwater Cloak|w|||||w^8^15^k
3m1|Brackwater Girdle|w|s||||m^3397^Kolkar Bloodcharger^9.09^s~m^3425^Savannah Prowler^5^s
3m3|Spellbinder Cloak|w|||||w^8^15^k
3m4|Spellbinder Belt|w|s||||m^250625^NPC 250625^0^s
3m6|Barbaric Cloth Cloak|w|s||||m^3244^Greater Plainstrider^3.12^s
3m7|Barbaric Cloth Belt|w|s||||m^11323^Searing Blade Enforcer^11.11^s~m^3382^Southsea Cannoneer^0^s
3m9|Hunting Cloak|wx|s||||m^1892^Moonrage Watcher^0^s
3ma|Hunting Belt|w|s||||m^1779^Moonrage Glutton^0^s~m^504^Defias Trapper^0^s
3mc|Ceremonial Cloak|w|s||||m^3269^Razormane Geomancer^10^s~m^3246^Fleeting Plainstrider^0^s
3md|Ceremonial Leather Belt|w|s||||m^3285^Venture Co. Peon^0^s
3me|Burnished Pauldrons|wx|s||||o^Solid Chest^0.9^k~o^Solid Chest^0.64^k
3mf|Burnished Cloak|dw|||||d^36^Rhahk'Zor^0.07^0^k~d^389^Oggleflint^0.01^0^k
3mg|Lapidis Tankard of Tidesippe|rwx|||||d^249^Onyxia^1.27^1^k
3mh|Burnished Girdle|dw|s||||d^36^Rhahk'Zor^0.07^0^k~d^36^Edwin VanCleef^0.02^0^k
3mi|Seer's Mantle|wx|||||o^Solid Chest^0.9^k~o^Solid Chest^0.64^k
3mj|Seer's Belt|dw|s||||m^1943^Raging Rot Hide^0^s~m^250630^NPC 250630^0^s
3mk|Inscribed Leather Spaulders|wx|s||||m^446^Redridge Basher^0^s
3ml|Inscribed Cloak|dwx|||||d^389^Oggleflint^0.01^0^k~d^389^Jergosh the Invoker^0.01^0^k
3mp|Lambent Scale Pauldrons|dwx|s||||m^1158^Cursed Marine^0^s~d^34^Targorr the Dread^0.01^0^k
3mq|Lambent Scale Cloak|dwx|s||||m^1043^Lost Whelp^0^s~d^36^Edwin VanCleef^0.02^0^k
3mr|Lambent Scale Girdle|dwx|s||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
3ms|Bright Belt|dwx|s||||m^1706^Defias Prisoner^0^s~m^1021^Mottled Screecher^0^s
3mt|Forest Leather Mantle|dwx|||||d^34^Targorr the Dread^0.01^0^k~d^34^Hamhock^0.01^0^k
3mu|Forest Cloak|dwx|s||||m^1008^Mosshide Mongrel^0^s~d^36^Rhahk'Zor^0.07^0^k
3mv|Glimmering Cloak|dwx|s||||m^1110^Skeletal Raider^7.14^s~m^247003^NPC 247003^0^s
3mw|Glimmering Mail Girdle|dwx|s||||d^34^Dextren Ward^0.01^0^k~d^34^Kam Deepfury^0.01^0^k
3mx|Silver-thread Cloak|dwx|||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
3my|Silver-thread Sash|dwx|s||||d^2959^Unstable Sentinel^50^0^s
3mz|Emblazoned Cloak|dwx|s||||m^274715^NPC 274715^0^s~d^34^Targorr the Dread^0.01^0^k
3n0|Combat Cloak|Rx|||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
3n1|Mail Combat Belt|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k~d^90^Crowd Pummeler 9-60^0.01^0^k
3n2|Nightsky Mantle|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k~d^90^Crowd Pummeler 9-60^0.01^0^k
3n3|Nightsky Cloak|Rx|||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
3n4|Nightsky Sash|Rx|||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
3n5|Insignia Mantle|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k~d^90^Crowd Pummeler 9-60^0.01^0^k
3n6|Insignia Cloak|Rx|||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
3n7|Humbert's Pants|w|||||w^0^0^k
3n8|Humbert's Helm|w|||||w^0^0^k
3n9|Chief Brigadier Pauldrons|wx|||||x^4636^Strong Iron Lockbox^k~x^6827^Box of Supplies^k
3na|Chief Brigadier Cloak|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k
3nb|Chief Brigadier Girdle|wx|||||x^4636^Strong Iron Lockbox^k~x^6827^Box of Supplies^k
3nc|Twain's Shoulder|u|||||
3nd|Aurora Mantle|wx|||||x^4636^Strong Iron Lockbox^k~x^6827^Box of Supplies^k
3nf|Glyphed Epaulets|wx|||||x^4636^Strong Iron Lockbox^k~x^6827^Box of Supplies^k
3ng|Glyphed Cloak|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k
3nh|Blackforge Pauldrons|wx|||||x^4638^Reinforced Steel Lockbox^k~x^5758^Mithril Lockbox^k
3ni|Mistscape Mantle|wx|||||o^Ancient Treasure^0.8^k~o^Captain's Chest^0.8^k
3nj|Mistscape Cloak|wx|||||o^Ancient Treasure^0.9^k~o^Captain's Chest^0.8^k
3nk|Mistscape Sash|wx|||||o^Ancient Treasure^1.2^k~x^4637^Steel Lockbox^k
3nl|Imperial Leather Spaulders|wx|||||o^Ancient Treasure^1.7^k~o^Captain's Chest^1.3^k
3nm|Imperial Leather Belt|wx|||||o^Ancient Treasure^1.9^k~o^Captain's Chest^0.8^k
3np|Stromgarde Cavalry Leggings|q||a|||q^682^Stromgarde Badges^30^a^k
3nr|Pulsating Crystalline Shard|q|||||q^656^Summoning the Princess^30^^k
3ns|Arcane Runed Bracers|q||a|||q^684^Wanted!  Marez Cowl^30^a^k
3nt|War Rider Bracers|q||a|||q^685^Wanted!  Otto and Falconcrest^30^a^k
3nu|Doomsayer's Robe|q|||||q^709^Solution to Doom^30^^k
3od|Enamelled Broadsword|v|s||||v^3658^Lizzarik^1413^52.4^30.8^2877^^s
3oe|Feral Blade|vw|s||||v^3479^Nargal Deatheye^1413^51.3^29.2^2407^^s
3of|Coppercloth Gloves|w|||||w^0^0^k
3og|Adept's Gloves|R|||||R^3270^Elder Mystic Razorsnout^50^k
3oj|Harvest Cloak|w|||||w^0^0^k
3ok|Warm Cloak|R|||||R^5785^Sister Hatelash^46.2^k
3op|Ironwood Maul|v|s||||v^3682^Vrang Wildgore^1413^43.8^12.2^7040^^s
3oq|Heavy Spiked Mace|v|s||||v^3658^Lizzarik^1413^52.4^30.8^7350^^s
3ot|Whispering Vest|v|s||||v^3486^Halija Whitestrider^1413^52.2^31.9^2735^^s
3ou|Solstice Robe|v|s||||v^3486^Halija Whitestrider^1413^52.2^31.9^2076^^s
3ox|Brimstone Belt|w|||||w^0^0^k
3oy|Wise Man's Belt|v|s||||v^3486^Halija Whitestrider^1413^52.2^31.9^1393^^s
3p0|Agile Boots|v|||||v^3684^Pizznukle^1412^66.4^30.8^2633^^k
3p1|Stable Boots|v|||||v^3684^Pizznukle^1412^66.4^30.8^1998^^k
3p4|Spirit Cloak|v|s||||v^1454^Jennabink Powerseam^1437^8.1^56^3279^^s
3p5|Sylvan Cloak|v|s||||v^1454^Jennabink Powerseam^1437^8.1^56^3720^^s
3p6|Wolf Bracers|v|s||||v^3492^Vexspindle^1413^62.2^38.4^3515^^s
3p7|Bear Bracers|v|s||||v^3492^Vexspindle^1413^62.2^38.4^3528^^s
3p8|Owl Bracers|v|s||||v^3492^Vexspindle^1413^62.2^38.4^3540^^s
3pa|Heavy Runed Cloak|v|s||||v^3493^Grazlix^1413^62.2^38.4^5832^^s
3pb|Antiquated Cloak|v|s||||v^3493^Grazlix^1413^62.2^38.4^3042^^s
3pc|Mighty Chain Pants|v|s||||v^3493^Grazlix^1413^62.2^38.4^6109^^s
3pm|Boulder Pads|w|||||w^0^0^k
3ps|Legionnaire's Leggings|v|s||||v^3493^Grazlix^1413^62.2^38.4^7518^^s
3pt|Blessed Claymore|v|s||||v^4890^Piter Verance^1445^67.4^47.9^12311^^s
3pu|Executioner's Sword|v|s||||v^4890^Piter Verance^1445^67.4^47.9^14273^^s
3pw|Guardian Buckler|v|s||||v^3493^Grazlix^1413^62.2^38.4^8320^^s
3px|Bear Buckler|v|s||||v^3493^Grazlix^1413^62.2^38.4^6541^^s
3py|Owl's Disk|v|s||||v^3493^Grazlix^1413^62.2^38.4^6746^^s
3q0|Blurred Axe|v|||||v^4890^Piter Verance^1445^67.4^47.9^16856^^k
3q1|Callous Axe|v|||||v^4890^Piter Verance^1445^67.4^47.9^20472^^k
3q2|Marauder Axe|v|s||||v^4890^Piter Verance^1445^67.4^47.9^15436^^s
3q3|Wizard's Belt|v|||||v^3537^Zixil^1424^60.8^19.9^3748^^k
3q4|Nightwind Belt|v|||||v^3537^Zixil^1424^60.8^19.9^3420^^k
3q5|Dreamer's Belt|v|||||v^3537^Zixil^1424^60.8^19.9^4153^^k
3q6|Saber Leggings|v|||||v^4890^Piter Verance^1445^67.4^47.9^9474^^k
3q7|Stalking Pants|v|||||v^4890^Piter Verance^1445^67.4^47.9^7858^^k
3q8|Mystic Sarong|v|||||v^4890^Piter Verance^1445^67.4^47.9^10497^^k
3q9|Glorious Shoulders|v|s||||v^4890^Piter Verance^1445^67.4^47.9^8658^^s
3qb|Elite Shoulders|v|||||v^4890^Piter Verance^1445^67.4^47.9^10550^^k
3qd|Strength of Will|v|||||v^3537^Zixil^1424^60.8^19.9^8002^^k
3qe|Orb of Power|v|||||v^3537^Zixil^1424^60.8^19.9^8002^^k
3qu|Demon Scarred Cloak|R|U||||R^3056^Ghost Howl^100^k
3r1|Sleek Feathered Tunic|w|||||w^0^0^k
3sa|Rainwalker Boots|q||h|||q^772^Rite of Vision^3^h^k
3sb|Woodland Tunic|q||a|6059||q^917^Webwood Egg^1^a^k
3sc|Nomadic Bracers|q||h|6070||q^750^The Hunt Continues^1^h^k
3sd|Kodo Hunter's Leggings|q||h|||q^776^Rites of the Earthmother^3^h^k
3se|Painted Chain Gloves|q||h|2547||q^747^The Hunt Begins^1^h^k
3sf|Thick Bark Buckler|q||h|6078||q^781^Attack on Camp Narache^1^h^k
3sh|Painted Chain Belt|q||h|2172||q^750^The Hunt Continues^1^h^k
3si|Battleworn Leather Gloves|q||h|5394||q^788^Cutting Teeth^1^h^s
3sj|Soft Wool Boots|q||h|80||q^788^Cutting Teeth^1^h^s
3sk|Soft Wool Vest|q|s|h|||q^804^Sarkoth^1^h^s
3sl|Battleworn Chain Leggings|q|s|h|||q^804^Sarkoth^1^h^s
3sn|Soft Wool Belt|q|s|h|||q^789^Sting of the Scorpid^1^h^s
3so|Battleworn Cape|q||h|5405||q^789^Sting of the Scorpid^1^h^s
3sp|Dust-covered Leggings|q||h|5398||q^794^Burning Blade Medallion^1^h^s
3sq|Jagged Chain Vest|q|s|h|||q^794^Burning Blade Medallion^1^h^s
3sw|Sandrunner Wristguards|q|s|h|||q^825^From The Wreckage....^3^h^s
3sx|Light Scorpid Armor|q||h|||q^812^Need for a Cure^7^h^k
3sz|Hickory Shortbow|q|s|h|||q^835^Securing the Lines^7^h^s
3t0|Harpy Wing Clipper|q|s|h|||q^835^Securing the Lines^7^h^s
3t1|Seasoned Fighter's Cloak|q||h|3153||q^786^Thwarting Kolkar Aggression^5^h^s
3t3|Wide Metal Girdle|q|s|h|||q^825^From The Wreckage....^3^h^s
3t4|Dirt-trodden Boots|q|s|h|||q^825^From The Wreckage....^3^h^s
3t5|Charging Buckler|q||h|||q^812^Need for a Cure^7^h^k
3t7|Steady Bastard Sword|q|s|h|||q^827^Skull Rock^4^h^s
3t8|Veiled Grips|q|s|h|||q^826^Zalazane^4^h^s
3ta|Tiger Hide Boots|q||h|9601||q^806^Dark Storms^4^h^s
3tc|Handsewn Cloak|q|s|h|||q^816^Lost But Not Forgotten^8^h^s
3te|Lightweight Boots|q|s|h|||q^826^Zalazane^4^h^s
3tf|Jagged Dagger|q|s|h|||q^827^Skull Rock^4^h^s
3tg|Stinging Mace|q|s|h|||q^827^Skull Rock^4^h^s
3tj|Squealer's Belt|w|||||m^3229^"Squealer" Thornmantle^100^k
3tm|Nomadic Belt|q||h|2186||q^747^The Hunt Begins^1^h^k
3tq|Sun-beaten Cloak|q||h|||q^772^Rite of Vision^3^h^k
3tt|Dreamwatcher Staff|q||h|||q^760^Wildmane Cleansing^4^h^k
3tu|Double-layered Gloves|q||h|1359||q^768^Gathering Leather^4^h^s
3tv|Thunderhorn Cloak|q||h|||q^758^Thunderhorn Cleansing^4^h^k
3tw|Goblin Smasher|q||h|||q^765^Supervisor Fizsprocket^5^h^k
3tz|Tribal Warrior's Shield|q||h|5593||q^744^Preparation for Ceremony^7^h^s
3u0|Bound Harness|q|s|h|||q^744^Preparation for Ceremony^7^h^s
3u2|Rough-hewn Kodo Leggings|q|s|h|||q^746^Dwarven Digging^6^h^s
3u3|Skorn's Hammer|q||h|||q^770^The Demon Scarred Cloak^6^h^k
3u4|Cliff Runner Boots|q||h|||q^766^Mazzranache^5^h^k
3u5|Plains Hunter Wristguards|q||h|||q^766^Mazzranache^5^h^k
3u6|Compact Fighting Knife|q||h|||q^765^Supervisor Fizsprocket^5^h^k
3u7|Vigilant Buckler|q||a|||q^697^Malin's Request^30^a^k
3u8|Mistspray Kilt|q||h|||q^680^The Real Threat^30^h^k
3u9|Sword of Hammerfall|q||h|||q^680^The Real Threat^30^h^k
3ua|Ryedol's Hammer|q||a|||q^719^A Dwarf and His Tools^35^a^k
3ub|Enchanted Stonecloth Bracers|q|||||q^716^Stone Is Better than Cloth^35^^k
3uc|Prospector Gloves|q||a|||q^704^Agmond's Fate^30^a^k
3uf|Rock Pulverizer|q||a|||q^739^Murdaloc^30^a^k
3ug|Skull of Impending Doom|q|||||q^737^Forbidden Knowledge^30^^k
3uj|Dwarf Captain's Sword|q||a|||q^762^An Ambassador of Evil^35^a^k
3uu|Blood Ring|dwx|||||d^36^Edwin VanCleef^0.02^0^k~d^34^Targorr the Dread^0.01^0^k
3uv|Azora's Will|dwx|s||||m^260810^NPC 260810^0^s~m^264079^NPC 264079^0.25^s
3ux|Heart Ring|dwx|||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
3uy|Glowing Green Talisman|dwx|||||d^34^Kam Deepfury^0.01^0^k
3uz|Crystal Starfire Medallion|Rwx|s||||m^4306^Scarlet Torturer^2.78^s~R^14278^Ro'Bark^0.49^k
3v3|Band of Thorns|Rwx|||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
3v5|Mindbender Loop|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k
3v7|Welken Ring|wx|||||x^4636^Strong Iron Lockbox^k~x^6827^Box of Supplies^k
3vc|Artisan's Trousers|q|||||q^1203^Jarl Needs a Blade^30^^k
3vp|Talisman of the Naga Lord|w|||||w^0^0^k
3wt|Fire Wand|w|s||||m^2202^Greymist Coastrunner^0^s~m^1118^Rockjaw Backbreaker^0^s
3wv|Shadow Wand|dw|s||||d^2999^The Abandoned^25^0^s~m^1896^Moonrage Elder^0^s
3xg|Charred Razormane Wand|w|s||||m^3458^Razormane Seer^16^s
3xx|Stonesplinter Rags|Rw|||||R^1398^Boss Galgosh^4.28^k~m^1205^Grawmug^2.99^k
3xz|Rathorian's Cape|w|||||w^0^0^k
3y0|Ritual Blade|w|||||w^0^0^k
3zw|Necklace of Harmony|w|||||w^0^0^k
3zx|Vibrant Silk Cape|w|||||w^0^0^k
3zz|Pulsating Hydra Heart|R|||||R^3398^Gesharahan^25^k
403|Rhahk'Zor's Hammer|d|||||d^36^Rhahk'Zor^95^0^k
407|Cruel Barb|d|||||d^36^Edwin VanCleef^20^0^k
408|Thief's Blade|d|||||d^36^Mr. Smite^40^0^k
409|Cape of the Brotherhood|d|||||d^36^Edwin VanCleef^30^0^k
40a|Taskmaster Axe|w|||||m^643^Sneed^35^k
40b|Gold-flecked Gloves|w|||||m^643^Sneed^65^k
40c|Smite's Reaver|d|||||d^36^Mr. Smite^40^0^k
40d|Cookie's Tenderizer|d|||||d^36^Cookie^65^0^k
40e|Cookie's Stirring Rod|d|||||d^36^Cookie^35^0^k
40f|Smelting Pants|d|||||d^36^Gilnid^55^0^k
40g|Impaling Harpoon|d|||||d^36^Captain Greenskin^30^0^k
40h|Emberstone Staff|d|||||d^36^Captain Greenskin^40^0^k
40i|Corsair's Overshirt|d|||||d^36^Edwin VanCleef^30^0^k
40n|Opaque Wand|dw|s||||d^2999^Bjork^33.33^0^s~m^1180^Mo'grosh Brute^0^s
40o|Smoldering Wand|v|||||v^5133^Harick Boulderdrum^1455^23.1^15.9^3340^^k
40p|Gloom Wand|v|||||v^5133^Harick Boulderdrum^1455^23.1^15.9^3855^^k
40q|Burning Wand|v|||||v^5133^Harick Boulderdrum^1455^23.1^15.9^5808^^k
40r|Dusk Wand|v|||||v^5133^Harick Boulderdrum^1455^23.1^15.9^5830^^k
40s|Blazing Wand|dw|s||||m^1940^Rot Hide Plague Weaver^10^s~m^1954^Elder Lake Skulker^0^s
40t|Scorching Wand|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k~d^90^Crowd Pummeler 9-60^0.01^0^k
40u|Wand of Eventide|Rwx|s||||m^6226^Mechano-Flamewalker^0^s~R^1037^Dragonmaw Battlemaster^0.46^k
40v|Ember Wand|wx|r||||o^Ancient Treasure^2.4^k~o^Captain's Chest^0.8^k
40w|Umbral Wand|wx|r||||o^Ancient Treasure^2^k~o^Captain's Chest^1.7^k
41g|Combustible Wand|v|||||v^5133^Harick Boulderdrum^1455^23.1^15.9^14394^^k
41i|Pitchwood Wand|v|||||v^5133^Harick Boulderdrum^1455^23.1^15.9^35727^^k
41j|Blackbone Wand|v|||||v^5133^Harick Boulderdrum^1455^23.1^15.9^38731^^k
41k|Torchlight Wand|q|||||q^104^The Coastal Menace^15^^k
41l|Dwarven Flamestick|q||a|||q^297^Gathering Idols^13^a^k
41m|Cinder Wand|q|s|h|||q^99^Arugal's Folly^9^h^s
41n|Firebelcher|d|||||d^43^^50^0^k
41o|Consecrated Wand|q|s|a|||q^223^Worgen in the Woods^23^a^s
41q|Excavation Rod|q|s|a|||q^296^Ormer's Revenge^22^a^s
41r|Rod of Sorrow|q||a|||q^685^Wanted!  Otto and Falconcrest^30^a^k
41t|Burning Sliver|q||a|||q^504^Crushridge Warmongers^30^a^k
41u|Charred Wand|q|s|h|||q^567^Dangerous!^19^h^s
41w|Wand of Decay|q|s|h|||q^516^Beren's Peril^16^h^s
41x|Goblin Igniter|q|||||q^600^Venture Company Mining^30^^k
41y|Rugged Spaulders|d|s||||d^33^Rethilgore^100^0^s
420|Kovork's Rattle|w|||||w^0^0^k
421|Dark Hooded Cape|w|||||w^0^0^k
42a|Eye of Adaegus|wx|U||||m^15740^Colossus of Zora^10^k~m^15740^Colossus of Zora^10^k
42b|Scarlet Kris|rw|U||||d^249^Onyxia^1.27^1^k~m^15818^Lieutenant General Nokhor^3.57^k
42i|Rose Mantle|q||a|||q^249^Morganth^20^a^k
42j|Binding Girdle|q|s|h|||q^872^The Disruption Ends^9^h^s
42n|Harpy Skinner|q|s|h|||q^876^Serena Bloodfeather^12^h^s
437|Gloves of the Moon|q|s|h|||q^913^Cry of the Thunderhawk^10^h^s
43a|Cobalt Buckler|q|s|h|||q^913^Cry of the Thunderhawk^10^h^s
43e|Wind Rider Staff|q|s|h|||q^913^Cry of the Thunderhawk^10^h^s
43h|Privateer Musket|q|s|h|||q^891^The Guns of Northwatch^13^h^s
43i|Sea Dog Britches|q|s|h|||q^891^The Guns of Northwatch^13^h^s
43j|Buckled Boots|q|s|h|||q^898^Free From the Hold^13^h^s
43k|Riveted Gauntlets|q|s|h|||q^898^Free From the Hold^13^h^s
43l|Totemic Clan Ring|q||h|||q^849^Revenge of Gann^17^h^k
43m|Boar Hunter's Cape|q|s|h|||q^899^Consumed by Hatred^14^h^s
43n|Timberland Armguards|q|s|a|||q^4740^WANTED: Murkdeep!^15^a^s
43o|Barkshell Tunic|q||h|||q^906^Betrayal from Within^17^h^k
43p|Dry Moss Tunic|q||h|||q^906^Betrayal from Within^17^h^k
43q|Zhovur Axe|q|s|h|||q^876^Serena Bloodfeather^12^h^s
43r|Bashing Pauldrons|w|||||m^2478^Haren Swifthoof^100^k
43s|Padded Lamellar Boots|q|s||||q^888^Stolen Booty^9^^s
43t|Elegant Shortsword|q|s|h|||q^876^Serena Bloodfeather^12^h^s
43u|Demolition Hammer|q|s|h|||q^893^Weapons of Choice^17^h^s
43v|Everglow Lantern|q|s||||q^893^Weapons of Choice^17^h^s~q^976^Supplies to Auberdine^19^a^s
43w|Engineer's Hammer|q|s||||q^902^Samophlange^10^^s
43x|Welding Shield|q|s||||q^902^Samophlange^10^^s
43y|Flaring Baton|q|s||||q^863^The Escape^13^^s
43z|Greasy Tinker's Pants|q|s||||q^863^The Escape^13^^s
440|Cinched Belt|q|s|h|||q^872^The Disruption Ends^9^h^s
449|Wayfaring Gloves|q|s||||q^888^Stolen Booty^9^^s
44c|Cauldron Stirrer|q|s|h|||q^853^Apothecary Zamah^10^h^s
44d|Spore-covered Tunic|q|s||||q^866^Root Samples^9^^s
44f|Barkeeper's Cloak|q|s||||q^865^Raptor Horns^13^^s
44g|Pointed Axe|q|s|h|||q^855^Centaur Bracers^9^h^s
44h|Stonewood Hammer|q|s|h|||q^855^Centaur Bracers^9^h^s
44i|Orcish Battle Bow|q|s|h|||q^855^Centaur Bracers^9^h^s
44j|Pestilent Wand|v|||||v^5133^Harick Boulderdrum^1455^23.1^15.9^15713^^k
44n|Bounty Hunter's Ring|q|s|h|||q^852^Hezrul Bloodmark^11^h^s
44r|Beastmaster's Girdle|q||h|||q^873^Isha Awak^10^h^k
44s|Branding Rod|q||h|||q^873^Isha Awak^10^h^k
44t|Ward of the Vale|q||h|||q^873^Isha Awak^10^h^k
45u|Archery Training Gloves|q||a|4914||q^456^The Balance of Nature^1^a^k
45v|Woodland Shield|q||a|3276||q^917^Webwood Egg^1^a^k
45y|Canopy Leggings|q||a|4921||q^459^The Woodland Protector^1^a^k
45z|Tracking Boots|q||a|||q^459^The Woodland Protector^1^a^k
464|Serpent's Shoulders|w|||||m^3671^Lady Anacondra^40^k
465|Draped Cloak|q||a|4920||q^457^The Balance of Nature^1^a^k
46j|Feral Bracers|q|s|a|||q^932^Twisted Hatred^4^a^s
46k|Banshee Armor|q|s|h|||q^924^The Demon Seed^9^h^s
46m|Brambleweed Leggings|w|||||w^0^0^k
46n|Boahn's Fang|w|||||w^0^0^k
46p|Runescale Girdle|w|||||w^0^0^k
46q|Serpent's Kiss|w|||||w^0^0^k
477|Gold-plated Buckler|d|||||d^36^Miner Johnson^49.15^0^k
478|Miner's Cape|d|||||d^36^Miner Johnson^49.15^0^k
47m|Dirtwood Belt|q||a|||q^2499^Oakenscowl^4^a^k
47n|Defender Axe|q||a|||q^486^Ursal the Mauler^4^a^k
49w|Pearl-handled Dagger|c|||||c^Blacksmithing^110^6517^f
49x|Iridescent Hammer|c|||||c^Blacksmithing^115^6518^f
49y|Pearl-clasped Cloak|c|||||c^Tailoring^90^6521^f
4az|Militia Warhammer|q|s|a|||q^18^Brotherhood of Thieves^2^a^s
4b1|Smooth Walking Staff|q|s|a|||q^218^The Stolen Journal^1^a^s
4b7|Thornroot Club|q||a|||q^486^Ursal the Mauler^4^a^k
4b9|Moss-covered Gauntlets|q||a|||q^2499^Oakenscowl^4^a^k
4ba|Cord Bracers|q|s|a|||q^938^Mist^7^a^s
4bb|Rain-spotted Cape|q|s|a|||q^937^The Enchanted Glade^6^a^s
4bc|Shackled Girdle|q|s|a|||q^937^The Enchanted Glade^6^a^s
4bd|Crag Buckler|q|s|a|4967||q^938^Mist^7^a^s
4bf|Thicket Hammer|q|s|a|||q^935^Crown of the Earth^1^a^s
4bg|Ashwood Bow|q|s|a|||q^935^Crown of the Earth^1^a^s
4bo|Elven Wand|q||a|||q^957^Bashal'Aran^7^a^k
4bp|Pruning Knife|q|s|a|||q^923^Tumors^4^a^s
4bq|Gardening Gloves|q|s|a|||q^919^Timberling Sprouts^4^a^s
4bs|Living Cowl|w|||||w^0^0^k
4bt|Steadfast Cinch|q||a|||q^994^Escape Through Force^10^a^k
4bu|Gustweald Cloak|q|s|a|10638||q^947^Cave Mushrooms^12^a^s
4bv|Tear of Grief|q|s|a|||q^963^For Love Eternal^11^a^s
4bw|Ivy Cuffs|q|s|a|||q^958^Tools of the Highborne^9^a^s
4bx|Staff of the Purifier|q||a|||q^973^The Tower of Althalaxx^13^a^k
4by|Seraph's Strike|q||a|||q^981^The Tower of Althalaxx^13^a^k
4bz|Woodsman Sword|q||a|||q^951^Mathystra Relics^12^a^k
4c1|Vagabond Leggings|q||a|||q^957^Bashal'Aran^7^a^k
4c2|Scout's Cloak|q|s|a|||q^938^Mist^7^a^s
4c6|Clergy Ring|q||a|||q^973^The Tower of Althalaxx^13^a^k
4c8|Circlet of the Order|w|||||w^0^0^k
4ca|Skullchipper|q||a|||q^943^The Absent Minded Prospector^15^a^k
4cb|Relic Blade|q||a|||q^943^The Absent Minded Prospector^15^a^k
4cd|Hammerfist Gloves|q|s|a|||q^741^The Absent Minded Prospector^15^a^s
4ce|Windfelt Gloves|q|s|a|||q^741^The Absent Minded Prospector^15^a^s
4ff|Barbaric Harness|c|||||c^Leatherworking^190^6661^f
4fk|Pale Skinner|w|||||w^0^0^k
4fp|Scythe Axe|w|||||w^0^0^k
4fq|Warchief's Girdle|w|||||w^0^0^k
4fr|Webwing Cloak|w|||||w^0^0^k
4ft|Ruffled Chaplet|w|||||w^0^0^k
4fu|Wolfpack Medallion|w|||||w^0^0^k
4fw|Sliverblade|dw|||||d^189^Houndmaster Loksey^0.01^0^k~d^189^Herod^0.01^0^k
4fx|Hardwood Cudgel|q||a|||q^951^Mathystra Relics^12^a^k
4g1|Anvilmar Sledge|q|s|a|||q^182^The Troll Cave^1^a^s
4g6|Lesser Wizard's Robe|c|||||c^Tailoring^135^6690^f
4g7|Violet Robes|w|s||||m^1397^Frostmane Seer^3.89^s
4ga|Robes of Arcana|c|||||c^Tailoring^125^6692^f
4gg|Elder's Cane|q||h|||q^757^Rite of Strength^1^h^k
4gh|Brave's Axe|q||h|||q^757^Rite of Strength^1^h^k
4gj|Forsaken Bastard Sword|q|s|h|||q^381^The Scarlet Crusade^2^h^s
4gk|Murloc Scale Belt|c|s||||c^Leatherworking^65^6702^f
4gl|Murloc Scale Breastplate|c|s||||c^Leatherworking^70^6703^f
4gm|Thick Murloc Armor|c|||||c^Leatherworking^145^6704^f
4gn|Murloc Scale Bracers|c|||||c^Leatherworking^165^6705^f
4hg|Robes of Antiquity|q||a|||q^1009^Ruuzel^20^a^k
4hh|Emil's Brand|q||a|||q^1012^Insane Druids^24^a^k
4hi|Snapbrook Armor|q||a|||q^1035^Fallen Sky Lake^20^a^k
4hj|Glacial Stone|q||a|||q^1046^Raene's Cleansing^18^a^k
4hl|Lunaris Bow|q||a|||q^1044^Answered Questions^25^a^k
4hm|Moonbeam Wand|q||a|||q^1044^Answered Questions^25^a^k
4hn|Sunblaze Coif|dw|||||d^189^Houndmaster Loksey^0.01^0^k~d^189^Herod^0.01^0^k
4kw|Animal Skin Belt|q|s|h|||q^768^Gathering Leather^4^h^s
4kz|Sewing Gloves|q||h|||q^375^The Chill of Death^7^h^k
4l0|Bone Buckler|q||h|||q^411^The Prodigal Lich Returns^5^h^k
4l1|Brass Scale Pants|q||h|||q^398^Wanted: Maggot Eye^6^h^k
4l3|Rift Bracers|dw|s||||d^33^Fenrus the Devourer^33.33^0^s~m^4627^Arugal's Voidwalker^3.39^s
4l4|Greaves of the People's Militia|q|s|a|||q^153^Red Leather Bandanas^10^a^s
4lg|Blacksmith Hammer|dvw|s||||v^3495^Gagsprocket^1413^62.7^36.3^18^^s~d^90^Tink Sprocketwhistle^0.02^0^k
4lh|Handstitched Leather Vest|c|s||||c^Leatherworking^1^7126^f
4li|Fine Leather Pants|c|||||c^Leatherworking^80^7133^f
4ll|Dark Leather Pants|c|||||c^Leatherworking^115^7135^f
4lm|Guardian Pants|c|||||c^Leatherworking^160^7147^f
4ln|Barbaric Leggings|c|s||||c^Leatherworking^145^7149^f
4lo|Barbaric Shoulders|c|s||||c^Leatherworking^175^7151^f
4lp|Guardian Cloak|c|||||c^Leatherworking^160^7153^f
4lq|Guardian Gloves|c|||||c^Leatherworking^190^7156^f
4lr|Girdle of Nobility|w|||||w^0^0^k
4lt|Regent's Cloak|w|||||w^0^0^k
4lu|Serpent Gloves|d|||||d^43^Lord Serpentis^25^0^k
4lv|Feathered Cape|u|||||
4lz|Ruffian Belt|w|||||w^0^0^k
4ns|Golden Scale Bracers|c|||||c^Blacksmithing^185^7223^f
4oa|Blackened Leather Belt|q||a|||q^457^The Balance of Nature^1^a^k
4ob|Nomadic Vest|q||h|4907||q^780^The Battleboars^1^h^k
4oc|Flax Bracers|q||h|11187||q^376^The Damned^2^h^s
4oe|Heavy Cord Bracers|q||h|1183||q^786^Thwarting Kolkar Aggression^5^h^s
4of|Cold Steel Gauntlets|q||h|||q^358^Graverobbers^4^h^k
4om|Wolfskin Bracers|q|s|a|4908||q^33^Wolves Across the Border^1^a^s
4os|Tapered Pants|q|s|a|||q^6^Bounty on Garrick Padfoot^2^a^s
4ou|Pikeman Shield|q|s|a|4911||q^54^Report to Goldshire^1^a^s
4p0|Stormwind Guard Leggings|q||a|||q^176^Wanted:  "Hogger"^5^a^k
4p1|Footman Tunic|q||a|||q^176^Wanted:  "Hogger"^5^a^k
4p3|Chausses of Westfall|Q||a|||q^166^The Defias Brotherhood^14^a^k
4p8|Black Whelp Boots|q||a|||q^122^Underbelly Scales^14^a^k
4p9|Orc Crusher|q|s|a|||q^19^Tharil'zun^18^a^s
4pa|Piercing Axe|Q||a|||q^214^Red Silk Bandanas^14^a^k
4pb|Wandering Boots|q|s|a|||q^346^Return to Kristoff^20^a^s
4qr|Ratty Old Belt|w|||||w^0^0^k
4qs|Web-covered Boots|R|||||R^471^Mother Fang^90^k
4rf|Wolf Handler Gloves|q|s|a|10636||q^179^Dwarven Outfitters^1^a^s
4rh|Snow Boots|q|s|a|3274||q^170^A New Threat^1^a^s
4rk|Dwarven Kite Shield|q|s|a|||q^218^The Stolen Journal^1^a^s
4rl|Ironwrought Bracers|q|s|a|||q^312^Tundra MacGrann's Stolen Stash^7^a^s
4rn|Privateer's Cape|w|||||w^0^0^k
4ro|Slarkskin|w|||||w^0^0^k
4rt|Bear Shawl|q|s|a|11850||q^170^A New Threat^1^a^s
4ru|Trogg Slicer|q||a|||q^297^Gathering Idols^13^a^k
4rv|Dwarven Defender|q||a|||q^217^In Defense of the King's Lands^10^a^k
4rw|Mud Stompers|q||a|||q^309^Protecting the Shipment^10^a^k
4rx|Durable Chain Shoulders|q|s|a|||q^256^WANTED: Chok'sul^17^a^s
4rz|Kimbra Boots|q|s|a|||q^256^WANTED: Chok'sul^17^a^s
4s2|Barreling Reaper|q|s|a|||q^474^Defeat Nek'rosh^23^a^s
4s3|Wax-polished Armor|w|||||w^0^0^k
4s5|Loch Croc Hide Vest|w|||||w^0^0^k
4s6|Jurassic Wristguards|w|||||w^0^0^k
4s7|Black Widow Band|w|U||||w^0^0^k
4s8|Garneg's War Belt|w|||||w^0^0^k
4s9|Lithe Boots|w|||||w^0^0^k
4sa|Fingerless Gloves|w|||||w^0^0^k
4sb|Thuggish Shield|w|||||w^0^0^k
4sc|Tribal Worg Helm|w|||||w^0^0^k
4sd|Burrowing Shovel|w|||||w^0^0^k
4se|Rock Chipper|R|||||R^1424^Master Digger^75^k
4sm|Heavy Copper Maul|c|||||c^Blacksmithing^65^7408^f
4sn|Balanced Fighting Stick|q||a|||q^176^Wanted:  "Hogger"^5^a^k
4sr|Arclight Spanner|c|s||||c^Engineering^50^7430^f
4ss|Meteor Shard|d|s||||d^33^Archmage Arugal^66.67^0^s
4sv|Crest of Darkshire|q|s|a|||q^253^Bride of the Embalmer^20^a^k
4sy|Bloody Apron|d|||||d^33^Razorclaw the Butcher^45^0^k
4ta|Brown Linen Robe|c|||||c^Tailoring^30^7623^f
4tb|Red Linen Vest|c|||||c^Tailoring^35^7629^f
4tc|Blue Linen Vest|c|||||c^Tailoring^35^7630^f
4td|White Linen Robe|c|s||||c^Tailoring^30^7624^f
4te|Blue Linen Robe|c|||||c^Tailoring^45^7633^f
4tf|Green Woolen Robe|c|||||c^Tailoring^90^7636^f
4u3|Disciple's Pants|w|r||||o^Tattered Chest^1.43^k~w^6^14^k
4u4|Pioneer Tunic|wx|sr||||m^515^Murloc Raider^0^s
4u5|Pioneer Trousers|wx|r||||o^Tattered Chest^1.43^k~x^20708^Tightly Sealed Trunk^k
4ui|Sacred Burial Trousers|q||h|||q^550^Battle of Hillsbrad^19^h^k
4ve|Wolfmaster Cape|d|s||||d^33^Wolf Master Nandos^33.33^0^s
4vf|Steelarrow Crossbow|w|||||w^0^0^k
4vi|Odo's Ley Staff|d|||||d^33^Odo the Blindwatcher^40^0^k
4vj|Girdle of the Blindwatcher|d|s||||d^33^Odo the Blindwatcher^33.33^0^s
4vk|Commander's Crest|d|||||d^33^Commander Springvale^50^0^k
4vl|Silverlaine's Family Seal|d|||||d^33^Baron Silverlaine^30^0^k
4vn|Baron's Scepter|d|s||||d^33^Baron Silverlaine^66.67^0^s
4vo|Robes of Arugal|d|s||||d^33^Archmage Arugal^33.33^0^s
4vr|The Pacifier|w|||||w^0^0^k
4vv|Howling Blade|w|U||||w^0^0^k
4vw|Black Pearl Ring|w|U||||w^0^0^k
4vx|Spikelash Dagger|w|||||w^0^0^k
4vz|Grizzled Boots|Q|s|h|||q^1013^The Book of Ur^16^h^s
4w0|Infantry Tunic|wx|sr||||o^Battered Chest^0^s~o^Tattered Chest^1.43^k
4w1|Infantry Leggings|w|sr||||m^1891^Pyrewood Watcher^8.33^s
4w4|Fenrus' Hide|d|||||d^33^Fenrus the Devourer^70^0^k
4w5|Eerie Stable Lantern|w|||||m^3864^Fel Steed^8.24^k
4we|Rough Bronze Boots|c|||||c^Blacksmithing^95^7817^f
4x6|Seer's Cape|dw|s||||m^1940^Rot Hide Plague Weaver^10^s~d^389^Oggleflint^0.01^0^k
4x7|Inscribed Leather Belt|dw|s||||d^389^Oggleflint^0.01^0^k~d^389^Jergosh the Invoker^0.01^0^k
4x8|Inscribed Buckler|dw|s||||m^3862^Slavering Worg^0^s~m^250735^NPC 250735^0^s
4x9|Bright Cloak|dwx|s||||m^3863^Lupine Horror^0^s~d^36^Edwin VanCleef^0.02^0^k
4xa|Forest Leather Belt|dwx|s||||d^33^Archmage Arugal^33.33^0^s~m^1708^Defias Inmate^0^s
4xb|Forest Buckler|dwx|s||||m^3859^Shadowfang Ragetooth^0^s~d^36^Edwin VanCleef^0.02^0^k
4xe|Glimmering Mail Legguards|dwx|||||d^34^Kam Deepfury^0.01^0^k
4xf|Glimmering Mail Bracers|dwx|||||d^34^Dextren Ward^0.01^0^k~d^34^Kam Deepfury^0.01^0^k
4xg|Glimmering Mail Pauldrons|dwx|||||d^34^Kam Deepfury^0.01^0^k
4xh|Glimmering Mail Coif|Rwx|||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
4xk|Belt of Arugal|d|||||d^33^Archmage Arugal^40^0^k
4xl|Silver-thread Gloves|dwx|s||||d^34^Hamhock^0.01^0^k~d^34^Dextren Ward^0.01^0^k
4xm|Silver-thread Boots|dwx|||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
4xn|Silver-thread Amice|dwx|||||d^34^Dextren Ward^0.01^0^k~d^34^Kam Deepfury^0.01^0^k
4xo|Emblazoned Chestpiece|Rx|||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
4xp|Emblazoned Gloves|dwx|s||||d^34^Dextren Ward^0.01^0^k~d^34^Kam Deepfury^0.01^0^k
4xq|Emblazoned Belt|dwx|||||d^34^Dextren Ward^0.01^0^k~d^34^Kam Deepfury^0.01^0^k
4xr|Emblazoned Shoulders|dwx|||||d^34^Kam Deepfury^0.01^0^k
4xs|Glimmering Shield|Rwx|||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
4xu|Mail Combat Leggings|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k
4xv|Mail Combat Armguards|Rx|||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
4xw|Mail Combat Spaulders|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k~d^90^Crowd Pummeler 9-60^0.01^0^k
4xx|Nightsky Trousers|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k
4xy|Nightsky Boots|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k~d^90^Crowd Pummeler 9-60^0.01^0^k
4xz|Nightsky Wristbands|Rdx|s||||d^2959^Unstable Sentinel^50^0^s~R^1037^Dragonmaw Battlemaster^0.46^k
4y0|Insignia Gloves|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k~d^90^Crowd Pummeler 9-60^0.01^0^k
4y1|Insignia Belt|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k~d^90^Crowd Pummeler 9-60^0.01^0^k
4y2|Insignia Bracers|Rx|||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
4y3|Chief Brigadier Armor|wx|||||o^Ancient Treasure^1.3^k~o^Captain's Chest^0.8^k
4y4|Chief Brigadier Boots|wx|||||x^4636^Strong Iron Lockbox^k~x^6827^Box of Supplies^k
4y5|Chief Brigadier Bracers|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k
4y6|Seal of Sylvanas|Q||h|||q^1014^Arugal Must Die^18^h^k
4y8|Aurora Boots|wx|||||x^4634^Iron Lockbox^k~x^4636^Strong Iron Lockbox^k
4y9|Aurora Cloak|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k
4ya|Aurora Sash|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k
4yb|Glyphed Mitts|wx|||||x^4636^Strong Iron Lockbox^k~x^6827^Box of Supplies^k
4yc|Glyphed Boots|wx|||||x^4636^Strong Iron Lockbox^k~x^5758^Mithril Lockbox^k
4yd|Glyphed Belt|wx|||||x^4636^Strong Iron Lockbox^k~x^6827^Box of Supplies^k
4ye|Glyphed Helm|wx|||||x^4636^Strong Iron Lockbox^k~x^6827^Box of Supplies^k
4yf|Blackforge Greaves|wx|||||x^4637^Steel Lockbox^k~w^40^47^k
4yg|Blackforge Cape|wx|||||o^Ancient Treasure^0.8^k~o^Captain's Chest^0.8^k
4yh|Blackforge Girdle|wx|||||o^Ancient Treasure^0.8^k~x^4637^Steel Lockbox^k
4yi|Blackforge Bracers|wx|||||o^Ancient Treasure^0.9^k~x^4636^Strong Iron Lockbox^k
4yj|Mistscape Robe|wx|||||x^4637^Steel Lockbox^k~x^4638^Reinforced Steel Lockbox^k
4yk|Mistscape Gloves|wx|||||o^Ancient Treasure^2.1^k~x^4637^Steel Lockbox^k
4yl|Mistscape Wizard Hat|wx|||||o^Ancient Treasure^1.5^k~x^4637^Steel Lockbox^k
4ym|Imperial Leather Breastplate|wx|||||x^4638^Reinforced Steel Lockbox^k~x^10479^Kovic's Trading Satchel^k
4yn|Imperial Leather Boots|wx|||||o^Ancient Treasure^1.2^k~x^4637^Steel Lockbox^k
4yo|Imperial Cloak|wx|||||o^Ancient Treasure^0.9^k~x^4637^Steel Lockbox^k
4yp|Imperial Leather Helm|wx|||||o^Ancient Treasure^1^k~o^Captain's Chest^1.3^k
4z3|Worn Turtle Shell Shield|d|||||d^43^Kresh^90^0^k
4z4|Tail Spike|d|||||d^43^Skum^50^0^k
4z5|Glowing Lizardscale Cloak|d|||||d^43^Skum^50^0^k
4zf|Savage Trodders|d|||||d^43^Lord Serpentis^25^0^k
4zg|Cobrahn's Grasp|d|||||d^43^Lord Cobrahn^20^0^k
4zh|Slime-encrusted Pads|w|s||||m^3654^Mutanus the Devourer^33.33^s
4zj|Deep Fathom Ring|w|||||m^3654^Mutanus the Devourer^33.33^k
4zl|Robe of the Moccasin|d|||||d^43^Lord Cobrahn^60^0^k
4zm|Deviate Scale Cloak|c|s||||c^Leatherworking^65^7953^f
4zn|Deviate Scale Gloves|c|||||c^Leatherworking^80^7954^f
4zo|Deviate Scale Belt|c|||||c^Leatherworking^90^7955^f
4zp|Venomstrike|d|||||d^43^Lord Serpentis^25^0^k
4zs|Stinging Viper|d|||||d^43^Lord Pythas^40^0^k
4zt|Armor of the Fang|d|||||d^43^Lord Pythas^60^0^k
4zx|Grassland Sash|q|s|h|||q^899^Consumed by Hatred^14^h^s
500|Slick Deviate Leggings|Q|||||q^1486^Deviate Hides^13^^k
501|Dagmire Gauntlets|Q|||||q^1487^Deviate Eradication^15^^k
502|Firewalker Boots|q|s|h|||q^501^Elixir of Pain^21^h^s
50m|Violet Scale Armor|q|s|h|||q^868^Egg Hunt^17^h^s
50n|Harlequin Robes|q|s|h|||q^868^Egg Hunt^17^h^s
50o|Wingblade|Q|s|h|||q^914^Leaders of the Fang^11^h^s
50p|Crescent Staff|Q|s|h|||q^914^Leaders of the Fang^11^h^s
50q|Infantry Boots|w|||||w^6^14^k
50r|Infantry Bracers|w|s||||m^480^Rusty Harvest Golem^0^s
50t|Infantry Belt|w|s||||m^1116^Rockjaw Ambusher^0^s
50u|Infantry Gauntlets|w|s||||m^1769^Moonrage Whitescalp^5.88^s
50v|Journeyman's Robe|w|||||w^6^13^k
50w|Disciple's Robe|w|sr||||m^1867^Dalaran Apprentice^8.33^s
50x|Disciple's Sash|w|||||o^Battered Chest^1.28^k~w^5^14^k
50y|Disciple's Cloak|w|s||||m^1778^Ferocious Grizzled Bear^0^s
50z|Disciple's Gloves|w|||||w^6^14^k
511|Pioneer Belt|w|||||o^Battered Chest^1.28^k~w^5^14^k
512|Pioneer Boots|w|s||||w^6^14^k
513|Pioneer Bracers|w|s||||o^Battered Chest^0^s~o^Battered Chest^1.28^k
514|Pioneer Cloak|w|s||||m^1124^Frostmane Shadowcaster^0^s~m^116^Defias Bandit^0^s
515|Pioneer Gloves|w|s||||m^116^Defias Bandit^0^s
517|Buckled Harness|v||h|||v^3359^Kiro^1454^73.3^42.3^1422^h^k
518|Studded Leather Harness|v||h|||v^3359^Kiro^1454^73.3^42.3^2870^h^k
519|Grunt's Harness|v||h|||v^3359^Kiro^1454^73.3^42.3^5167^h^k
51a|Battle Harness|v||h|||v^3359^Kiro^1454^73.3^42.3^12487^h^k
51b|Ancestral Robe|w|||||w^8^15^k
51c|Spellbinder Robe|dw|s||||m^1915^Dalaran Conjuror^9.09^s~d^389^Oggleflint^0.01^0^k
51f|Barbaric Cloth Robe|dw|s||||m^3241^Savannah Patriarch^0^s~d^36^Rhahk'Zor^0.07^0^k
51k|Willow Vest|dwx|sr||||d^36^Rhahk'Zor^0.07^0^k
51l|Willow Boots|dwx|sr||||m^250626^NPC 250626^4.35^s~d^389^Oggleflint^0.01^0^k
51m|Willow Robe|dwx|sr||||m^1955^Lake Creeper^6.25^s~d^36^Rhahk'Zor^0.07^0^k
51n|Willow Belt|dwx|sr||||m^250622^NPC 250622^5^s~d^389^Oggleflint^0.01^0^k
51o|Willow Pants|dwx|sr||||m^3861^Bleak Worg^0^s~d^36^Rhahk'Zor^0.07^0^k
51p|Willow Gloves|dwx|sr||||d^2999^The Abandoned^25^0^s~m^250618^NPC 250618^5.56^s
51q|Willow Cape|dwx|sr||||d^2999^Bjork^33.33^0^s~d^2999^Rath'mael^25^0^s
51r|Willow Bracers|dw|sr||||m^250627^NPC 250627^6.25^s~d^389^Oggleflint^0.01^0^k
51t|Soldier's Armor|dw|sr||||d^33^Rethilgore^50^0^s~m^422^Murloc Flesheater^4^s
51u|Soldier's Leggings|dw|sr||||d^389^Oggleflint^0.01^0^k~d^389^Jergosh the Invoker^0.01^0^k
51v|Soldier's Gauntlets|Rdw|sr||||R^5841^Rocklance^0^s~d^389^Oggleflint^0.01^0^k
51w|Soldier's Girdle|dw|sr||||d^389^Oggleflint^0.01^0^k
51x|Soldier's Cloak|w|||||w^9^17^k
51y|Soldier's Wristguards|dw|sr||||m^712^Redridge Thrasher^7.69^s~m^250624^NPC 250624^10^s
51z|Soldier's Boots|dw|r||||d^389^Oggleflint^0.01^0^k~d^389^Jergosh the Invoker^0.01^0^k
520|Bard's Tunic|dw|sr||||d^33^Wolf Master Nandos^33.33^0^s~m^505^Greater Tarantula^10^s
521|Bard's Trousers|dw|sr||||d^36^Rhahk'Zor^0.07^0^k~d^389^Oggleflint^0.01^0^k
522|Bard's Gloves|dw|sr||||m^250618^NPC 250618^2.78^s~d^389^Oggleflint^0.01^0^k
523|Bard's Cloak|w|s||||m^442^Tarantula^0^s
524|Bard's Bracers|dw|sr||||m^1912^Dalaran Protector^1.82^s~d^389^Oggleflint^0.01^0^k
525|Bard's Boots|dw|sr||||m^1914^Dalaran Mage^4^s
526|Bard's Belt|dw|r||||d^389^Oggleflint^0.01^0^k~d^389^Jergosh the Invoker^0.01^0^k
527|Bard's Buckler|dw|r||||d^389^Oggleflint^0.01^0^k~d^389^Jergosh the Invoker^0.01^0^k
528|Soldier's Shield|dw|r||||d^389^Oggleflint^0.01^0^k~d^389^Jergosh the Invoker^0.01^0^k
529|Seer's Padded Armor|dw|s||||m^422^Murloc Flesheater^4^s~d^36^Rhahk'Zor^0.07^0^k
52a|Shimmering Boots|dwx|sr||||m^1008^Mosshide Mongrel^0^s~m^565^Rabid Dire Wolf^0^s
52b|Shimmering Bracers|dwx|sr||||m^3654^Mutanus the Devourer^0^s~m^3851^Shadowfang Whitescalp^0^s
52c|Shimmering Cloak|dwx|r||||d^36^Rhahk'Zor^0.07^0^k~d^36^Edwin VanCleef^0.02^0^k
52d|Shimmering Gloves|dwx|sr||||m^437^Blackrock Renegade^0^s~d^36^Rhahk'Zor^0.07^0^k
52e|Shimmering Amice|dwx|||||d^34^Kam Deepfury^0.25^0^k~d^34^Hamhock^0.25^0^k
52f|Shimmering Armor|dwx|r||||d^34^Targorr the Dread^0.01^0^k~d^34^Hamhock^0.01^0^k
52g|Shimmering Trousers|dwx|sr||||d^36^Edwin VanCleef^0.02^0^k
52h|Shimmering Robe|dwx|r||||d^34^Targorr the Dread^0.01^0^k~d^34^Hamhock^0.01^0^k
52i|Shimmering Sash|dwx|sr||||m^202^Skeletal Horror^0^s~d^36^Rhahk'Zor^0.07^0^k
52j|Scouting Buckler|dwx|sr||||d^33^Commander Springvale^33.33^0^s~m^505^Greater Tarantula^10^s
52k|Defender Shield|dwx|sr||||m^3863^Lupine Horror^0^s~d^36^Edwin VanCleef^0.02^0^k
52l|Defender Boots|dwx|sr||||d^36^Edwin VanCleef^0.02^0^k~d^36^Cookie^0.01^0^k
52m|Defender Bracers|dwx|r||||d^36^Rhahk'Zor^0.07^0^k~d^36^Edwin VanCleef^0.02^0^k
52n|Defender Cloak|dwx|r||||d^36^Rhahk'Zor^0.07^0^k~d^36^Edwin VanCleef^0.02^0^k
52o|Defender Girdle|dwx|sr||||m^3877^Wailing Guardsman^0^s~d^36^Rhahk'Zor^0.07^0^k
52p|Defender Gauntlets|dwx|sr||||m^923^Young Black Ravager^0^s~d^36^Edwin VanCleef^0.02^0^k
52q|Defender Leggings|dwx|sr||||m^1708^Defias Inmate^0^s~m^3859^Shadowfang Ragetooth^0^s
52r|Defender Spaulders|dwx|||||d^34^Kam Deepfury^0.25^0^k~d^34^Hamhock^0.25^0^k
52s|Defender Tunic|dwx|sr||||m^202^Skeletal Horror^0^s~d^36^Edwin VanCleef^0.02^0^k
52t|Scouting Belt|dwx|r||||d^36^Rhahk'Zor^0.07^0^k~d^36^Edwin VanCleef^0.02^0^k
52v|Scouting Bracers|dwx|r||||d^36^Rhahk'Zor^0.07^0^k~d^36^Edwin VanCleef^0.02^0^k
52w|Scouting Tunic|dwx|r||||d^34^Targorr the Dread^0.01^0^k~d^34^Hamhock^0.01^0^k
52x|Scouting Cloak|dwx|r||||d^36^Rhahk'Zor^0.07^0^k~d^36^Edwin VanCleef^0.02^0^k
52y|Scouting Gloves|dwx|sr||||d^36^Edwin VanCleef^0.02^0^k~d^36^Cookie^0.01^0^k
52z|Scouting Trousers|dwx|sr||||m^1708^Defias Inmate^0^s~d^36^Edwin VanCleef^0.02^0^k
530|Scouting Spaulders|dwx|||||d^34^Targorr the Dread^0.14^0^k~d^48^Old Serra'kis^0.14^0^k
532|Battleforge Boots|dwx|r||||d^34^Dextren Ward^0.01^0^k~d^34^Kam Deepfury^0.01^0^k
533|Battleforge Wristguards|dwx|r||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
534|Battleforge Armor|dwx|r||||d^34^Dextren Ward^0.01^0^k~d^34^Kam Deepfury^0.01^0^k
535|Battleforge Cloak|dwx|sr||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
536|Battleforge Girdle|dwx|r||||d^34^Hamhock^0.01^0^k~d^34^Dextren Ward^0.01^0^k
537|Battleforge Gauntlets|dwx|r||||d^34^Hamhock^0.01^0^k~d^34^Dextren Ward^0.01^0^k
538|Battleforge Legguards|dwx|r||||d^34^Hamhock^0.01^0^k~d^34^Dextren Ward^0.01^0^k
539|Battleforge Shoulderguards|dwx|r||||d^34^Hamhock^0.01^0^k~d^34^Dextren Ward^0.01^0^k
53a|Dervish Buckler|dwx|r||||d^34^Hamhock^0.01^0^k~d^34^Dextren Ward^0.01^0^k
53b|Battleforge Shield|dwx|r||||d^34^Dextren Ward^0.01^0^k~d^34^Kam Deepfury^0.01^0^k
53c|Dervish Belt|dwx|r||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
53d|Dervish Boots|dwx|sr||||d^34^Hamhock^0.01^0^k~d^34^Dextren Ward^0.01^0^k
53e|Dervish Bracers|dwx|r||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
53f|Dervish Tunic|dwx|sr||||m^785^Skeletal Warder^0^s~d^34^Kam Deepfury^0.01^0^k
53h|Dervish Gloves|dwx|sr||||d^34^Hamhock^0.01^0^k~d^34^Dextren Ward^0.01^0^k
53k|Bright Armor|dwx|||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
53l|Sage's Cloth|Rx|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
53m|Sage's Robe|Rwx|sr||||m^4306^Scarlet Torturer^2.78^s~R^1037^Dragonmaw Battlemaster^0.46^k
53n|Sage's Sash|dwx|r||||d^34^Dextren Ward^0.01^0^k~d^34^Kam Deepfury^0.01^0^k
53o|Sage's Boots|dwx|r||||d^34^Hamhock^0.01^0^k~d^34^Dextren Ward^0.01^0^k
53p|Sage's Bracers|dwx|sr||||m^6233^Mechanized Sentry^0^s~d^34^Hamhock^0.01^0^k
53r|Sage's Gloves|dwx|sr||||m^4281^Scarlet Scout^0^s~m^246600^NPC 246600^0^s
53s|Sage's Pants|Rx|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
53t|Sage's Mantle|dwx|sr||||d^189^Interrogator Vishas^16.67^0^s~m^4306^Scarlet Torturer^2.78^s
53y|Sword of Zeal|rw|||||d^249^Onyxia^1.27^1^k
543|Mutant Scale Breastplate|w|||||m^3654^Mutanus the Devourer^33.33^k
544|Raven's Claws|w|||||w^0^0^k
545|Sporid Cape|d|||||d^43^Verdan the Everliving^20^0^k
546|Seedcloud Buckler|d|||||d^43^Verdan the Everliving^40^0^k
547|Living Root|d|||||d^43^Verdan the Everliving^40^0^k
548|Feyscale Cloak|d|||||d^43^^50^0^k
549|Butcher's Slicer|d|s||||d^33^Razorclaw the Butcher^33.33^0^s
54h|Haunting Blade|d|||||d^33^^60^0^k
54i|Phantom Armor|dw|s||||d^33^Odo the Blindwatcher^33.33^0^s~m^255699^NPC 255699^0^s
54z|Scarab Trousers|q||a|||q^995^Escape Through Stealth^10^a^k
550|Julie's Dagger|x|||||x^5758^Mithril Lockbox^k
554|Voodoo Mantle|q|s|h|||q^1058^Jin'Zil's Forest Magic^20^h^s
555|Hexed Bracers|q|s|h|||q^1058^Jin'Zil's Forest Magic^20^h^s
556|Dredge Boots|q|||||q^1092^Gerenzo's Orders^17^^k
557|Engineer's Cloak|q|s||||q^1096^Gerenzo Wrenchwhistle^16^^s
558|Draftsman Boots|q|s||||q^1096^Gerenzo Wrenchwhistle^16^^s
559|Sacred Band|q||h|||q^1089^The Den^20^h^k
55a|Panther Armor|q||h|||q^1089^The Den^20^h^k
55b|Juggernaut Leggings|q||h|||q^1089^The Den^20^h^k
55f|Tempered Bracers|q||a|||q^1059^Reclaiming the Charred Vale^20^a^k
55g|Constable Buckler|q||a|||q^1059^Reclaiming the Charred Vale^20^a^k
55h|Spellcrafter Wand|q||a|||q^1078^Retrieval for Mauren^17^a^k
55i|Band of Elven Grace|q||a|||q^1081^Reception from Tyrande^17^a^k
55j|Armor Piercer|d|s||||d^47^Razorfen Spearhide^79.56^0^s
55l|Thornspike|d|||||d^47^Aggem Thorncurse^100^0^k
55m|Death Speaker Robes|d|||||d^47^Death Speaker Jargba^40^0^k
55p|Death Speaker Mantle|d|||||d^47^Death Speaker Jargba^40^0^k
55q|Tusken Helm|d|||||d^47^Overlord Ramtusk^60^0^k
55r|Corpsemaker|d|||||d^47^Overlord Ramtusk^40^0^k
55s|Whisperwind Headdress|d|||||d^47^^50^0^k
55t|Wind Spirit Staff|d|||||d^47^^50^0^k
55u|Ferine Leggings|d|||||d^47^Agathelos the Raging^60^0^k
55v|Swinetusk Shank|d|||||d^47^Agathelos the Raging^40^0^k
55w|Pronged Reaver|d|||||d^47^Charlga Razorflank^20^0^k
55y|Heart of Agamaggan|d|||||d^47^Charlga Razorflank^40^0^k
55z|Stygian Bone Amulet|d|||||d^47^^33.33^0^k
560|Nightstalker Bow|d|||||d^47^^33.33^0^k
561|Batwing Mantle|d|||||d^47^^33.33^0^k
56d|Moonglow Vest|c|||||c^Leatherworking^65^8322^f
56h|Ripped Pants|q||h|79||q^794^Burning Blade Medallion^1^h^s
56n|Windborne Belt|q||a|||q^1135^Highperch Venom^25^a^k
56o|Spirit Hunter Headdress|q||h|||q^1136^Frostmaw^26^h^k
56p|Chestplate of Kor|q||a|||q^976^Supplies to Auberdine^19^a^k
56q|Beastial Manacles|q||a|||q^1035^Fallen Sky Lake^20^a^k
56r|Medal of Courage|q|||||q^592^Saving Yenniku^30^h^k~q^1139^The Lost Tablets of Will^35^a^k
56t|Marbled Buckler|Q|||||q^1101^The Crone of the Kraul^29^a^k~q^1102^A Vengeful Fate^29^h^k
56u|Razzeric's Customized Seatbelt|q|||||q^1189^Safety First^29^^k
56v|Razzeric's Racing Grips|q|||||q^1189^Safety First^29^^k
56x|Fizzle's Zippy Lighter|q|||||q^1137^News for Fizzle^28^^k
56y|Ironforge Chain|c|||||c^Blacksmithing^80^8366^f
570|Gnomish Mechanic's Gloves|q|||||q^1137^News for Fizzle^28^^k
575|Dryleaf Pants|q||h|||q^1184^Parts of the Swarm^28^h^k
576|Bleeding Crescent|q||h|||q^1184^Parts of the Swarm^28^h^k
577|Cliffrunner's Aim|q||h|||q^1197^The Sacred Flame^20^h^k
578|Azure Sash|q||h|||q^1197^The Sacred Flame^20^h^k
57a|Stonefist Girdle|Q|||||q^1101^The Crone of the Kraul^29^a^k~q^1102^A Vengeful Fate^29^h^k
57b|Sustaining Ring|Q||a|||q^971^Knowledge in the Deeps^10^a^k
57c|Gloves of Kapelan|q||h|||q^1436^Alliance Relations^30^h^k
57d|Swiftrunner Cape|q||h|||q^1436^Alliance Relations^30^h^k
57e|Basalt Buckler|q||h|||q^1488^The Corrupter^25^h^k
57f|Enforcer Pauldrons|q||h|||q^1488^The Corrupter^25^h^k
57g|Monkey Ring|q|||||q^1144^Willix the Importer^23^^k
57h|Tiger Band|q|||||q^1144^Willix the Importer^23^^k
57i|Snake Hoop|q|||||q^1144^Willix the Importer^23^^k
57j|Mourning Shawl|Q||a|||q^1142^Mortality Wanes^25^a^k
57k|Lancer Boots|Q||a|||q^1142^Mortality Wanes^25^a^k
57p|Jaina's Signet Ring|q||a|||q^1267^The Missing Diplomat^28^a^k
585|Kolkar Marauder Chain|q|||||q^1380^Khan Hratha^30^^k
586|Traitor's Finger|q|||||q^1380^Khan Hratha^30^^k
58c|Lilac Sash|q||h|||q^1366^Centaur Bounty^30^h^k
58g|Braced Handguards|q||h|||q^1366^Centaur Bounty^30^h^k
58k|Kolkar Hunter's Belt|q|||||q^1381^Khan Hratha^30^^k
58l|Ceremonial Centaur Blanket|q|||||q^1381^Khan Hratha^30^^k
58n|Hellion Boots|q||a|||q^1457^The Karnitol Shipwreck^30^a^k
58o|Sanguine Pauldrons|q||a|||q^1457^The Karnitol Shipwreck^30^a^k
58p|Auric Bracers|q||a|||q^1467^Reagents for Reclaimers Inc.^30^a^k
58q|Stormfire Gauntlets|q||a|||q^1467^Reagents for Reclaimers Inc.^30^a^k
58t|Eyepoker|q||h|||q^1273^Questioning Reethe^30^h^k
58u|Blasting Hackbut|q||h|||q^1273^Questioning Reethe^30^h^k
590|Windstorm Hammer|q||h|||q^1394^Final Passage^25^h^k
592|Dancing Flame|q||h|||q^1394^Final Passage^25^h^k
59s|Cloak of Blight|q||h|||q^1383^Nothing But The Truth^37^h^k
59u|Black Tuxedo|w|||||o^Brightly Colored Egg^0.6^k
5bm|Orb of Soran'ruk|Q|s||||q^1740^The Orb of Soran'ruk^20^^s
5bo|Enchanted Gold Bloodrobe|q|||||q^4786^The Completed Robe^31^^k
5bp|Glowing Thresher Cape|d|||||d^48^Old Serra'kis^40^0^k
5bq|Bands of Serra'kis|d|||||d^48^Old Serra'kis^30^0^k
5br|Gaze Dreamer Pants|d|s||||d^48^Twilight Lord Kelris^33.33^0^s
5bs|Bite of Serra'kis|d|s||||d^48^Old Serra'kis^100^0^s
5bt|Reef Axe|d|||||d^48^Gelihast^50^0^k
5bu|Algae Fists|d|s||||d^48^Geilhast^33.33^0^s~d^48^Gelihast^50^0^k
5bv|Tortoise Armor|d|s||||d^48^Ghamoo-ra^66.67^0^s
5bw|Ghamoo-ra's Bind|d|s||||d^48^Ghamoo-ra^33.33^0^s
5bx|Strike of the Hydra|d|s||||d^48^Aku'mai^66.67^0^s
5by|Leech Pants|d|||||d^48^Aku'mai^40^0^k
5bz|Moss Cinch|d|s||||d^48^Aku'mai^33.33^0^s
5d5|Verigan's Fist|q||a|||q^1806^The Test of Righteousness^20^a^k
5di|Elunite Axe|q||a|7115||q^1693^Weapons of Elunite^10^a^k
5dj|Elunite Sword|q||a|7118||q^1693^Weapons of Elunite^10^a^k
5dk|Elunite Hammer|q||a|7117||q^1693^Weapons of Elunite^10^a^k
5dn|Fire Hardened Coif|q||a|7130||q^1706^Grimand's Armor^20^a^k
5do|Fire Hardened Hauberk|q||a|7133||q^1782^Furen's Armor^20^a^k
5dp|Fire Hardened Leggings|q||a|7132||q^1711^Mathiel's Armor^20^a^k
5dq|Fire Hardened Gauntlets|q||a|7129||q^1709^Klockmort's Creation^20^a^k
5dr|Whirlwind Axe|q|||||q^1792^Whirlwind Weapon^30^^k
5ds|Whirlwind Warhammer|q|||||q^1792^Whirlwind Weapon^30^^k
5dt|Whirlwind Sword|q|||||q^1792^Whirlwind Weapon^30^^k
5du|Umbral Axe|q||a|7326||q^1682^Grey Iron Weapons^10^a^k
5ee|Nimbus Boots|Q|s|a|||q^1199^Twilight Falls^20^a^s
5eg|Heartwood Girdle|Q|s|a|||q^1199^Twilight Falls^20^a^s
5eh|Gravestone Scepter|Q|s||||q^1200^Blackfathom Villainy^18^a^s~q^6561^Blackfathom Villainy^18^h^s
5ei|Arctic Buckler|Q|s||||q^1200^Blackfathom Villainy^18^a^s~q^6561^Blackfathom Villainy^18^h^s
5ej|Beetle Clasps|Q||a|||q^1275^Researching the Corruption^18^a^k
5ek|Prelacy Cape|Q||a|||q^1275^Researching the Corruption^18^a^k
5el|Skinning Knife|v|s||||v^252449^Iallion Featherfall^2521^58.9^75.4^10^^s
5f6|Linen Belt|c|s||||c^Tailoring^10^8776^f
5f7|Boots of Darkness|c|||||c^Tailoring^135^8778^f
5fq|Azure Silk Pants|c|||||c^Tailoring^140^8758^f
5fr|Hands of Darkness|c|||||c^Tailoring^120^8780^f
5fs|Azure Silk Hood|c|||||c^Tailoring^145^8760^f
5ft|Truefaith Gloves|c|||||c^Tailoring^125^8782^f
5fu|Silk Headband|c|||||c^Tailoring^160^8762^f
5fx|Azure Silk Cloak|c|||||c^Tailoring^140^8786^f
5fy|Robe of Power|c|||||c^Tailoring^190^8770^f
5fz|Crimson Silk Belt|c|||||c^Tailoring^175^8772^f
5g0|Crimson Silk Cloak|c|||||c^Tailoring^145^8789^f
5g1|Green Silken Shoulders|c|||||c^Tailoring^180^8774^f
5g2|Crimson Silk Vest|c|||||c^Tailoring^185^8791^f
5g3|Crimson Silk Shoulders|c|||||c^Tailoring^155^8793^f
5g4|Azure Shoulders|c|||||c^Tailoring^155^8795^f
5g5|Earthen Silk Belt|c|||||c^Tailoring^160^8797^f
5g6|Crimson Silk Pantaloons|c|||||c^Tailoring^195^8799^f
5g8|Crimson Silk Gloves|c|||||c^Tailoring^210^8804^f
5g9|Green Silk Armor|c|||||c^Tailoring^130^8784^f
5h3|Bog Boots|w|||||m^2029^Timberling Mire Beast^1.83^k
5he|Zodiac Gloves|q|s|a|||q^181^Look To The Stars^20^a^s
5hf|Belt of the Stars|q|s|a|||q^181^Look To The Stars^20^a^s
5hg|Infantry Shield|w|r||||w^6^13^k
5hh|Pioneer Buckler|w|s||||m^118^Prowler^0^s
5hi|Silver-thread Armor|Rwx|||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
5hj|Nightsky Armor|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k
5hn|Heirloom Axe|q||h|6966||q^1822^Heirloom Weapon^10^h^k
5hp|Heirloom Hammer|q||h|6968||q^1822^Heirloom Weapon^10^h^k
5hq|Heirloom Sword|q||h|6967||q^1822^Heirloom Weapon^10^h^k
5i1|Brutal Gauntlets|q||h|6974||q^1843^Brutal Gauntlets^20^h^k
5i2|Brutal Helm|q||h|6971||q^1845^Brutal Helm^20^h^k
5i4|Brutal Legguards|q||h|6973||q^1847^Brutal Legguards^20^h^k
5i5|Brutal Hauberk|q||h|6972||q^1848^Brutal Hauberk^20^h^k
5j2|Copper Dagger|c|||||c^Blacksmithing^30^8880^f
5kt|Explorer's Vest|q||a|||q^957^Bashal'Aran^7^a^k
5ku|Smite's Mighty Hammer|d|||||d^36^Mr. Smite^20^0^k
5m4|Handstitched Leather Cloak|c|s||||c^Leatherworking^1^9058^f
5m5|Handstitched Leather Bracers|c|s||||c^Leatherworking^1^9059^f
5m8|Rugged Leather Pants|cw|||||c^Leatherworking^30^9064^f
5m9|Light Leather Bracers|c|s||||c^Leatherworking^70^9065^f
5ma|Light Leather Pants|c|||||c^Leatherworking^95^9068^f
5mb|Black Whelp Cloak|c|||||c^Leatherworking^75^9070^f
5md|Nimble Leather Gloves|c|||||c^Leatherworking^120^9074^f
5mq|Blade of Cunning|q|sU||||q^1858^The Shattered Hand^10^h^s~q^1978^The Deathstalkers^10^h^s
5ni|Thun'grim's Axe|q||h|6978||q^1503^Forged Steel^10^h^k
5nm|Infiltrator Buckler|Rx|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
5nn|Phalanx Shield|dwx|r||||d^90^Mekgineer Thermaplugg^0.43^0^k~d^90^Crowd Pummeler 9-60^0.01^0^k
5nq|Efflorescent Robe|q||a|||q^1081^Reception from Tyrande^17^a^k
5nr|Grizzly Tunic|q||a|||q^1081^Reception from Tyrande^17^a^k
5ns|Wildwood Chain|q||a|||q^1081^Reception from Tyrande^17^a^k
5o0|Torch of Holy Flame|q|s|a|||q^55^Morbent Fel^20^a^s
5o4|Fletcher's Gloves|c|||||c^Leatherworking^125^9145^f
5o6|Disciple's Bracers|w|||||o^Battered Chest^1.28^k~w^5^14^k
5o7|Disciple's Boots|w|||||w^6^14^k
5o8|Earthen Leather Shoulders|c|||||c^Leatherworking^110^9147^f
5oa|Elder's Boots|Rx|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
5ob|Elder's Bracers|Rwx|r||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
5od|Elder's Hat|dwx|r||||d^90^Mekgineer Thermaplugg^0.43^0^k~d^90^Crowd Pummeler 9-60^0.01^0^k
5oe|Pilferer's Gloves|c|||||c^Leatherworking^115^9148^f
5of|Heavy Earthen Gloves|c|||||c^Leatherworking^120^9149^f
5om|Elder's Gloves|Rwx|sr||||m^246600^NPC 246600^0^s~R^1037^Dragonmaw Battlemaster^0.46^k
5on|Elder's Mantle|Rx|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
5oq|Elder's Sash|Rwx|r||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
5ot|Dusky Leather Leggings|c|s||||c^Leatherworking^140^9195^f
5ou|Dusky Leather Armor|c|||||c^Leatherworking^175^9196^f
5ox|Frost Leather Cloak|c|||||c^Leatherworking^180^9198^f
5oy|Dusky Bracers|c|||||c^Leatherworking^180^9201^f
5p6|Green Whelp Bracers|c|||||c^Leatherworking^165^9202^f
5p7|Dusky Belt|c|||||c^Leatherworking^195^9206^f
5pa|Dusky Boots|c|||||c^Leatherworking^175^9207^f
5pb|Swift Boots|c|||||c^Leatherworking^175^9208^f
5pq|Infiltrator Cord|Rx|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
5ps|Infiltrator Shoulders|Rx|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
5pt|Infiltrator Boots|Rx|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
5pu|Infiltrator Bracers|Rwx|r||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
5pv|Infiltrator Cloak|Rwx|r||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
5pw|Infiltrator Gloves|Rx|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
5px|Infiltrator Cap|Rx|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
5pz|Dervish Spaulders|dwx|r||||d^34^Dextren Ward^0.01^0^k~d^34^Kam Deepfury^0.01^0^k
5q0|Phalanx Bracers|Rwx|r||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
5q4|Phalanx Headguard|Rx|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
5q5|Phalanx Gauntlets|Rx|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
5q6|Phalanx Girdle|Rx|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
5q8|Phalanx Spaulders|Rx|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
5qp|Sentinel Cap|wx|r||||x^4636^Strong Iron Lockbox^k~x^6827^Box of Supplies^k
5s7|Captain's Buckler|wx|r||||o^Ancient Treasure^0.7^k~x^4637^Steel Lockbox^k
5s8|Field Plate Shield|wx|r||||o^Ancient Treasure^0.8^k~x^4637^Steel Lockbox^k
5sl|Manaweave Robe|q||a|7510||q^1941^Manaweave Robe^15^a^k
5sm|Lesser Spellfire Robes|q||h|7509||q^1962^Spellfire Robes^15^h^k
5sn|Astral Knot Robe|q||a|7512||q^1942^Astral Knot Garment^26^a^k
5so|Nether-lace Robe|q||h|7511||q^1946^Nether-lace Garment^26^h^k
5sp|Ragefire Wand|q|||||q^1952^Mage's Wand^30^^k
5sq|Icefury Wand|q|||||q^1952^Mage's Wand^30^^k
5sr|Celestial Orb|q|||||q^1958^Celestial Power^35^^k
5tc|Champion's Wall Shield|wx|r||||x^4638^Reinforced Steel Lockbox^k~w^43^50^k
5td|Gothic Shield|wx|r||||x^4638^Reinforced Steel Lockbox^k~x^5758^Mithril Lockbox^k
5ts|Falcon's Hook|wx|||||o^Ancient Treasure^1.6^k~x^4637^Steel Lockbox^k
5tt|Band of the Unicorn|wx|||||x^4638^Reinforced Steel Lockbox^k~x^9265^Cuergo's Hidden Treasure^k
5tz|Runic Cane|w|||||w^0^0^k
5va|Polar Gauntlets|Q|s|a|||q^2040^Underground Assault^15^a^s
5vb|Sable Wand|Q|s|a|||q^2040^Underground Assault^15^a^s
5vc|Seer's Fine Stein|dw|s||||m^213^Starving Dire Wolf^0^s~d^36^Rhahk'Zor^0.07^0^k
5ve|Aurora Sphere|wx|||||o^Captain's Chest^0.8^k~x^4636^Strong Iron Lockbox^k
5vf|Mistscape Stave|wx|||||x^4638^Reinforced Steel Lockbox^k~x^9265^Cuergo's Hidden Treasure^k
5xe|Torturing Poker|d|s||||d^189^Interrogator Vishas^83.33^0^s
5xf|Bloody Brass Knuckles|d|s||||d^189^Interrogator Vishas^16.67^0^s
5xg|Bloodmage Mantle|d|s||||d^189^Bloodmage Thalnos^50^0^s
5xh|Orb of the Forgotten Seer|d|s||||d^189^Bloodmage Thalnos^50^0^s
5xi|Ironspine's Eye|R|||||R^6489^Ironspine^33.33^k
5xj|Ironspine's Fist|R|||||R^6489^Ironspine^33.33^k
5xk|Ironspine's Ribcage|R|s||||R^6489^Ironspine^33.33^s
5xl|Morbid Dawn|R|||||R^6488^Fallen Champion^33.33^k
5xm|Ebon Vise|R|||||R^6488^Fallen Champion^33.33^k
5xn|Embalmed Shroud|R|s||||R^6488^Fallen Champion^33.33^s
5y4|Necrotic Wand|R|||||R^6490^Azshir the Sleepless^33.33^k
5y5|Blighted Leggings|R|s||||R^6490^Azshir the Sleepless^33.33^s
5y6|Loksey's Training Stick|d|||||d^189^Houndmaster Loksey^10^0^k
5y7|Robe of Doan|d|||||d^189^Arcanist Doan^25^0^k
5y8|Mantle of Doan|d|||||d^189^Arcanist Doan^25^0^k
5y9|Illusionary Rod|d|||||d^189^Arcanist Doan^25^0^k
5ya|Hypnotic Blade|d|||||d^189^Arcanist Doan^25^0^k
5yd|Ravager|d|||||d^189^Herod^15^0^k
5ye|Herod's Shoulder|d|||||d^189^Herod^35^0^k
5yf|Raging Berserker's Helm|d|||||d^189^Herod^35^0^k
5yg|Whitemane's Chapeau|d|||||d^189^High Inquisitor Whitemane^40^0^k
5yh|Hand of Righteousness|d|||||d^189^High Inquisitor Whitemane^20^0^k
5yi|Triune Amulet|d|||||d^189^High Inquisitor Whitemane^40^0^k
5yj|Mograine's Might|d|||||d^189^Scarlet Commander Mograine^22.5^0^k
5yk|Gauntlets of Divinity|d|||||d^189^^22.5^0^k
5ym|Aegis of the Scarlet Commander|d|||||d^189^^40^0^k
5yn|Watchman Pauldrons|dw|||||d^189^Houndmaster Loksey^0.01^0^k~d^189^Herod^0.01^0^k
5yo|Beguiler Robes|dw|||||d^189^Houndmaster Loksey^0.01^0^k~d^189^Herod^0.01^0^k
5yp|Chesterfall Musket|dw|||||d^189^Houndmaster Loksey^0.01^0^k~d^189^Herod^0.01^0^k
5yr|Ghostshard Talisman|R|||||R^6490^Azshir the Sleepless^33.33^k
5yw|Fight Club|dw|||||d^189^Houndmaster Loksey^0.01^0^k~d^189^Herod^0.01^0^k
5yy|Evergreen Gloves|q|s|a|||q^2139^Tharnariun's Hope^10^a^s
5yz|Timberland Cape|q|s|a|||q^2139^Tharnariun's Hope^10^a^s
5z6|Explorers' League Commendation|Q|s|a|||q^1050^Mythology of the Titans^28^a^s
5z7|Vile Protector|Q||h|||q^1049^Compendium of the Fallen^28^h^k
5z9|Omega Orb|Q||h|||q^1049^Compendium of the Fallen^28^h^k
5za|Mantle of Woe|Q||h|||q^1051^Vorrel's Revenge^25^h^k
5zb|Vorrel's Boots|Q||h|||q^1051^Vorrel's Revenge^25^h^k
5zc|Dreamslayer|dw|||||d^189^Houndmaster Loksey^0.01^0^k~d^189^Herod^0.01^0^k
5zd|Bloodspiller|dw|||||d^189^Houndmaster Loksey^0.01^0^k~d^189^Herod^0.01^0^k
5ze|Harbinger Boots|dw|s||||m^4308^Unfettered Spirit^2.7^s~d^189^Houndmaster Loksey^0.01^0^k
5zf|Flintrock Shoulders|dw|||||d^189^Houndmaster Loksey^0.01^0^k~d^189^Herod^0.01^0^k
5zg|Dog Training Gloves|d|||||d^189^Houndmaster Loksey^60^0^k
5zh|Windweaver Staff|dw|||||d^189^Houndmaster Loksey^0.01^0^k~d^189^Herod^0.01^0^k
5zj|Archon Chestpiece|dw|||||d^189^Houndmaster Loksey^0.01^0^k~d^189^Herod^0.01^0^k
5zk|Warchief Kilt|dw|||||d^189^Houndmaster Loksey^0.01^0^k~d^189^Herod^0.01^0^k
5zl|Steelclaw Reaver|dw|||||d^189^Houndmaster Loksey^0.01^0^k~d^189^Herod^0.01^0^k
60a|Headsplitter|dw|||||d^189^Houndmaster Loksey^0.01^0^k~d^189^Herod^0.01^0^k
60b|Resplendent Guardian|dw|||||d^189^Houndmaster Loksey^0.01^0^k~d^189^Herod^0.01^0^k
63t|Barbaric Iron Shoulders|c|||||c^Blacksmithing^135^9811^f
63u|Barbaric Iron Breastplate|c|||||c^Blacksmithing^135^9813^f
63v|Barbaric Iron Helm|c|||||c^Blacksmithing^150^9814^f
63w|Barbaric Iron Boots|c|||||c^Blacksmithing^155^9818^f
63x|Barbaric Iron Gloves|c|||||c^Blacksmithing^160^9820^f
63y|Heavy Mithril Shoulder|c|||||c^Blacksmithing^205^9926^f
641|Heavy Mithril Pants|c|||||c^Blacksmithing^185^9933^f
642|Steel Plate Helm|c|||||c^Blacksmithing^215^9935^f
644|Mithril Plate Bracers|c|||||c^Blacksmithing^190^9937^f
646|Ornate Mithril Pants|c|||||c^Blacksmithing^195^9945^f
648|Ornate Mithril Shoulders|c|||||c^Blacksmithing^200^9952^f
649|Orcish War Leggings|c|||||c^Blacksmithing^225^9957^f
64a|Heavy Mithril Breastplate|c|||||c^Blacksmithing^230^9959^f
64e|Heavy Mithril Helm|c|||||c^Blacksmithing^220^9970^f
64f|Ornate Mithril Breastplate|c|||||c^Blacksmithing^235^9972^f
64h|Ornate Mithril Helm|c|||||c^Blacksmithing^240^9980^f
64i|Truesilver Gauntlets|c|||||c^Blacksmithing^225^9954^f
64j|Truesilver Breastplate|c|||||c^Blacksmithing^245^9974^f
64l|Heavy Mithril Axe|c|||||c^Blacksmithing^210^9993^f
64m|Blue Glittering Axe|c|||||c^Blacksmithing^195^9995^f
64n|Wicked Mithril Blade|c|||||c^Blacksmithing^200^9997^f
64o|Dazzling Mithril Rapier|c|||||c^Blacksmithing^215^10005^f
64p|Big Black Mace|c|||||c^Blacksmithing^230^10001^f
64q|Runed Mithril Hammer|c|||||c^Blacksmithing^220^10009^f
64r|Ebon Shiv|c|||||c^Blacksmithing^230^10013^f
64y|The Shatterer|c|||||c^Blacksmithing^235^10003^f
64z|Copper Claymore|c|s||||c^Blacksmithing^30^9983^f
650|Bronze Warhammer|c|||||c^Blacksmithing^125^9985^f
651|Bronze Greatsword|c|||||c^Blacksmithing^130^9986^f
652|Bronze Battle Axe|c|||||c^Blacksmithing^135^9987^f
653|Blight|c|||||c^Blacksmithing^250^10011^f
654|Truesilver Champion|c|||||c^Blacksmithing^260^10015^f
655|Phantom Blade|c|||||c^Blacksmithing^245^10007^f
657|Steel Breastplate|c|||||c^Blacksmithing^200^9916^f
66e|The Ziggler|wx|||||x^4636^Strong Iron Lockbox^k~x^6827^Box of Supplies^k
687|Sizzle Stick|Q|||||q^1487^Deviate Eradication^15^^k
68o|Platemail Belt|v|s||||v^5812^Tumi^1454^82.4^23.4^13335^^s
68p|Platemail Boots|v|s||||v^5812^Tumi^1454^82.4^23.4^20081^^s
68q|Platemail Bracers|v|s||||v^5812^Tumi^1454^82.4^23.4^13439^^s
68r|Platemail Gloves|v|s||||v^5812^Tumi^1454^82.4^23.4^13489^^s
68s|Platemail Helm|v|s||||v^5812^Tumi^1454^82.4^23.4^20312^^s
68t|Platemail Leggings|v|s||||v^5812^Tumi^1454^82.4^23.4^27186^^s
68u|Platemail Armor|v|s||||v^5812^Tumi^1454^82.4^23.4^27290^^s
696|Hibernal Armor|dwx|||||d^349^Princess Theradras^0.19^0^k
697|Hibernal Boots|wx|||||x^4638^Reinforced Steel Lockbox^k~x^9265^Cuergo's Hidden Treasure^k
698|Hibernal Bracers|wx|||||x^4638^Reinforced Steel Lockbox^k~x^9265^Cuergo's Hidden Treasure^k
699|Hibernal Cloak|wx|||||x^4638^Reinforced Steel Lockbox^k~x^5758^Mithril Lockbox^k
69a|Hibernal Gloves|wx|||||x^4638^Reinforced Steel Lockbox^k~x^9265^Cuergo's Hidden Treasure^k
69b|Hibernal Mantle|wx|||||x^4638^Reinforced Steel Lockbox^k~x^19035^Lard's Special Picnic Basket^k
69c|Hibernal Pants|wx|||||x^4638^Reinforced Steel Lockbox^k~x^9265^Cuergo's Hidden Treasure^k
69d|Hibernal Robe|dwx|||||d^349^Princess Theradras^0.19^0^k
69e|Hibernal Sash|wx|||||x^4638^Reinforced Steel Lockbox^k~x^5758^Mithril Lockbox^k
69f|Hibernal Cowl|wx|||||x^4638^Reinforced Steel Lockbox^k~x^19035^Lard's Special Picnic Basket^k
69g|Heraldic Belt|wx|||||x^4638^Reinforced Steel Lockbox^k~x^9265^Cuergo's Hidden Treasure^k
69h|Heraldic Boots|wx|||||x^4638^Reinforced Steel Lockbox^k~x^9265^Cuergo's Hidden Treasure^k
69i|Heraldic Bracers|wx|||||x^4638^Reinforced Steel Lockbox^k~x^19035^Lard's Special Picnic Basket^k
69j|Heraldic Breastplate|dwx|||||d^349^Princess Theradras^0.19^0^k
69k|Heraldic Cloak|wx|||||o^Ancient Treasure^0.6^k~x^4637^Steel Lockbox^k
69l|Heraldic Gloves|wx|||||x^4638^Reinforced Steel Lockbox^k~x^9265^Cuergo's Hidden Treasure^k
69m|Heraldic Headpiece|wx|||||x^4638^Reinforced Steel Lockbox^k~x^10479^Kovic's Trading Satchel^k
69n|Heraldic Leggings|wx|||||x^4638^Reinforced Steel Lockbox^k~x^19035^Lard's Special Picnic Basket^k
69o|Heraldic Spaulders|wx|||||x^4638^Reinforced Steel Lockbox^k~x^9265^Cuergo's Hidden Treasure^k
69q|Myrmidon's Breastplate|dwx|||||d^349^Princess Theradras^0.19^0^k
69r|Myrmidon's Cape|wx|||||x^4638^Reinforced Steel Lockbox^k~w^40^49^k
69s|Myrmidon's Gauntlets|wx|||||x^4638^Reinforced Steel Lockbox^k~x^5758^Mithril Lockbox^k
69t|Myrmidon's Girdle|wx|||||x^4638^Reinforced Steel Lockbox^k~w^45^51^k
69u|Myrmidon's Greaves|wx|||||x^5758^Mithril Lockbox^k~x^19035^Lard's Special Picnic Basket^k
69v|Myrmidon's Helm|dwx|||||d^349^Princess Theradras^0.19^0^k
69w|Myrmidon's Leggings|dwx|||||d^349^Princess Theradras^0.19^0^k
69x|Myrmidon's Pauldrons|dwx|||||d^349^Princess Theradras^0.19^0^k
69y|Myrmidon's Defender|dwx|||||d^349^Princess Theradras^0.19^0^k
69z|Chromite Shield|wx|||||x^4638^Reinforced Steel Lockbox^k~x^19035^Lard's Special Picnic Basket^k
6a1|Chromite Bracers|wx|||||o^Ancient Treasure^0.8^k~x^4637^Steel Lockbox^k
6a2|Chromite Chestplate|wx|||||x^4638^Reinforced Steel Lockbox^k~x^9265^Cuergo's Hidden Treasure^k
6a3|Chromite Gauntlets|wx|||||o^Ancient Treasure^0.5^k~o^Captain's Chest^0.8^k
6a4|Chromite Girdle|wx|||||o^Ancient Treasure^0.6^k~x^4637^Steel Lockbox^k
6a5|Chromite Greaves|wx|||||o^Ancient Treasure^0.8^k~x^4637^Steel Lockbox^k
6a6|Chromite Barbute|wx|||||o^Ancient Treasure^1.3^k~x^4637^Steel Lockbox^k
6a7|Chromite Legplates|wx|||||x^4638^Reinforced Steel Lockbox^k~x^19035^Lard's Special Picnic Basket^k
6a8|Chromite Pauldrons|wx|||||o^Ancient Treasure^0.9^k~x^4637^Steel Lockbox^k
6ak|Jouster's Wristguards|wx|||||x^4636^Strong Iron Lockbox^k~x^6827^Box of Supplies^k
6al|Jouster's Chestplate|wx|||||o^Ancient Treasure^0.5^k~x^4637^Steel Lockbox^k
6am|Jouster's Gauntlets|wx|||||x^4636^Strong Iron Lockbox^k~x^6827^Box of Supplies^k
6ao|Jouster's Greaves|wx|||||x^4634^Iron Lockbox^k~x^4636^Strong Iron Lockbox^k
6ap|Jouster's Visor|wx|||||x^4636^Strong Iron Lockbox^k~x^6827^Box of Supplies^k
6ar|Jouster's Pauldrons|wx|||||o^Ancient Treasure^2.3^k~x^4637^Steel Lockbox^k
6b2|Comfortable Leather Hat|c|||||c^Leatherworking^175^10490^f
6b3|Nightscape Tunic|c|||||c^Leatherworking^205^10499^f
6b4|Nightscape Headband|c|||||c^Leatherworking^205^10507^f
6b5|Practice Sword|w|s||||m^1553^Greater Duskbat^0^s
6b6|Training Sword|w|sr||||m^7235^Gnarlpine Mystic^0^s
6b7|Cadet's Bow|w|s||||m^252068^NPC 252068^2.22^s
6b8|Hunting Bow|w|s||||o^Tattered Chest^1.43^k~w^6^13^k
6b9|Hunting Rifle|w|s||||m^251707^NPC 251707^1.64^s~m^3379^Burning Blade Bruiser^0^s
6ba|Pellet Rifle|w|||||o^Battered Chest^1.28^k~w^5^9^k
6bb|Precision Bow|dwx|s||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
6bc|Firestarter|dwx|||||d^34^Dextren Ward^0.01^0^k~d^34^Kam Deepfury^0.01^0^k
6bd|Turtle Scale Leggings|c|||||c^Leatherworking^235^10556^f
6be|Dire Wand|dwx|s||||m^3825^Ghostpaw Alpha^0^s~m^4464^Blackrock Gladiator^0^s
6bg|Explosive Shotgun|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k
6bh|Turtle Scale Breastplate|c|||||c^Leatherworking^210^10511^f
6bi|Hanzo Sword|x|||||x^5758^Mithril Lockbox^k
6bj|Turtle Scale Helm|c|||||c^Leatherworking^230^10552^f
6bk|Nightscape Shoulders|c|||||c^Leatherworking^185^10516^f
6bl|Nightscape Pants|c|||||c^Leatherworking^235^10548^f
6bm|Goblin Nutcracker|wx|r||||o^Ancient Treasure^1.6^k~o^Captain's Chest^1.3^k
6bn|Nightscape Cloak|c|||||c^Leatherworking^205^10550^f
6bp|Nightscape Boots|c|||||c^Leatherworking^235^10558^f
6bq|Turtle Scale Bracers|c|||||c^Leatherworking^210^10518^f
6br|Battlefield Destroyer|wx|r||||x^4638^Reinforced Steel Lockbox^k~x^19035^Lard's Special Picnic Basket^k
6bs|Big Voodoo Robe|c|||||c^Leatherworking^190^10520^f
6bt|Big Voodoo Mask|c|||||c^Leatherworking^195^10531^f
6bu|Big Voodoo Pants|c|||||c^Leatherworking^215^10560^f
6bv|Tough Scorpid Breastplate|c|||||c^Leatherworking^195^10525^f
6bw|Tough Scorpid Gloves|c|||||c^Leatherworking^200^10542^f
6bx|Tough Scorpid Bracers|c|||||c^Leatherworking^195^10533^f
6by|Tough Scorpid Leggings|c|||||c^Leatherworking^220^10568^f
6bz|Tough Scorpid Shoulders|c|||||c^Leatherworking^215^10564^f
6c0|Tough Scorpid Helm|c|||||c^Leatherworking^225^10570^f
6c1|Tough Scorpid Boots|c|||||c^Leatherworking^210^10554^f
6c8|Big Voodoo Cloak|c|||||c^Leatherworking^215^10562^f
6cf|Blade of the Basilisk|w|U||||w^0^0^k
6ch|Tainted Pierce|dw|||||d^189^Houndmaster Loksey^0.01^0^k~d^189^Herod^0.01^0^k
6ci|The Butcher|dw|||||d^189^Houndmaster Loksey^0.01^0^k~d^189^Herod^0.01^0^k
6d1|Imperial Red Tunic|dwx|||||d^230^Plugger Spazzring^0.2^0^k
6d2|Imperial Red Boots|dwx|||||d^349^Princess Theradras^0.19^0^k
6d3|Imperial Red Bracers|dwx|||||d^349^Princess Theradras^0.19^0^k
6d4|Imperial Red Cloak|dwx|||||d^349^Princess Theradras^0.19^0^k
6d5|Imperial Red Gloves|dwx|||||d^349^Princess Theradras^0.19^0^k
6d6|Imperial Red Mantle|dwx|||||d^349^Princess Theradras^0.19^0^k
6d7|Imperial Red Pants|dwx|||||d^230^Plugger Spazzring^0.2^0^k~d^349^Princess Theradras^0.19^0^k
6d9|Imperial Red Sash|dwx|||||d^349^Princess Theradras^0.19^0^k
6da|Imperial Red Circlet|dwx|||||d^349^Princess Theradras^0.19^0^k
6db|Serpentskin Girdle|dwx|||||d^349^Princess Theradras^0.19^0^k
6dc|Serpentskin Boots|dwx|||||d^349^Princess Theradras^0.19^0^k
6dd|Serpentskin Bracers|dwx|||||d^349^Princess Theradras^0.19^0^k
6de|Serpentskin Armor|dwx|||||d^230^Plugger Spazzring^0.2^0^k
6df|Serpentskin Cloak|dwx|||||d^349^Princess Theradras^0.19^0^k
6dg|Serpentskin Gloves|dwx|||||d^349^Princess Theradras^0.19^0^k
6di|Serpentskin Leggings|dwx|||||d^230^Plugger Spazzring^0.2^0^k~d^349^Princess Theradras^0.19^0^k
6dj|Serpentskin Spaulders|dwx|||||d^349^Princess Theradras^0.19^0^k
6dk|Ebonhold Wristguards|dwx|||||d^349^Princess Theradras^0.19^0^k
6dl|Ebonhold Armor|dwx|||||d^230^Plugger Spazzring^0.2^0^k
6dm|Ebonhold Cloak|dwx|||||d^349^Princess Theradras^0.19^0^k
6dn|Ebonhold Gauntlets|dwx|||||d^230^Plugger Spazzring^0.2^0^k~d^349^Princess Theradras^0.19^0^k
6do|Ebonhold Girdle|dwx|||||d^230^Plugger Spazzring^0.2^0^k~d^349^Princess Theradras^0.19^0^k
6dp|Ebonhold Boots|dwx|||||d^230^Plugger Spazzring^0.2^0^k
6dq|Ebonhold Helmet|dwx|||||d^230^Plugger Spazzring^0.2^0^k
6dr|Ebonhold Leggings|dwx|||||d^230^Plugger Spazzring^0.2^0^k
6ds|Ebonhold Shoulderpads|dwx|||||d^230^Plugger Spazzring^0.2^0^k~d^349^Princess Theradras^0.19^0^k
6dt|Valorous Wristguards|wx|||||x^4638^Reinforced Steel Lockbox^k~x^9265^Cuergo's Hidden Treasure^k
6du|Valorous Chestguard|dwx|||||d^349^Princess Theradras^0.19^0^k
6dv|Ebonhold Buckler|dwx|||||d^230^Plugger Spazzring^0.2^0^k
6dw|Valorous Gauntlets|wx|||||x^4638^Reinforced Steel Lockbox^k~x^9265^Cuergo's Hidden Treasure^k
6dx|Valorous Girdle|wx|||||x^4638^Reinforced Steel Lockbox^k~x^10752^Emerald Encrusted Chest^k
6dy|Valorous Greaves|wx|||||x^4638^Reinforced Steel Lockbox^k~x^19035^Lard's Special Picnic Basket^k
6dz|Valorous Helm|wx|||||x^4638^Reinforced Steel Lockbox^k~x^10479^Kovic's Trading Satchel^k
6e0|Valorous Legguards|wx|||||x^4638^Reinforced Steel Lockbox^k~x^9541^Box of Goodies^k
6e1|Valorous Pauldrons|wx|||||x^4638^Reinforced Steel Lockbox^k~x^9265^Cuergo's Hidden Treasure^k
6e2|Valorous Shield|dwx|||||d^349^Princess Theradras^0.19^0^k
6e3|Arcane Armor|dwx|||||d^289^Jandice Barov^0.47^0^k~d^289^Marduk Blackpool^0.02^0^k
6e4|Arcane Boots|dwx|||||d^230^Plugger Spazzring^0.2^0^k~d^289^Marduk Blackpool^0.02^0^k
6e5|Arcane Bands|dwx|||||d^230^Plugger Spazzring^0.2^0^k
6e6|Arcane Cloak|dwx|||||d^230^Plugger Spazzring^0.2^0^k
6e7|Arcane Gloves|dwx|||||d^230^Plugger Spazzring^0.2^0^k~d^289^Marduk Blackpool^0.02^0^k
6e8|Arcane Pads|dwx|||||d^289^Marduk Blackpool^0.02^0^k
6e9|Arcane Leggings|dwx|||||d^289^Jandice Barov^0.47^0^k~d^289^Marduk Blackpool^0.02^0^k
6eb|Arcane Sash|dwx|||||d^230^Plugger Spazzring^0.2^0^k
6ec|Arcane Cover|dwx|||||d^230^Plugger Spazzring^0.2^0^k~d^289^Marduk Blackpool^0.02^0^k
6ed|Traveler's Belt|dwx|||||d^230^Plugger Spazzring^0.2^0^k
6ee|Traveler's Boots|dwx|||||d^230^Plugger Spazzring^0.2^0^k~d^289^Marduk Blackpool^0.02^0^k
6ef|Traveler's Bracers|dwx|||||d^230^Plugger Spazzring^0.2^0^k
6eg|Traveler's Jerkin|dwx|||||d^289^Jandice Barov^0.47^0^k~d^289^Marduk Blackpool^0.02^0^k
6eh|Traveler's Cloak|dwx|||||d^230^Plugger Spazzring^0.2^0^k
6ei|Traveler's Gloves|dwx|||||d^230^Plugger Spazzring^0.2^0^k~d^289^Marduk Blackpool^0.02^0^k
6ej|Traveler's Helm|dwx|||||d^289^Marduk Blackpool^0.02^0^k
6ek|Traveler's Leggings|dwx|||||d^289^Jandice Barov^0.47^0^k~d^289^Marduk Blackpool^0.02^0^k
6el|Traveler's Spaulders|dwx|||||d^289^Marduk Blackpool^0.02^0^k
6em|Hero's Bracers|dwx|||||d^230^Plugger Spazzring^0.2^0^k~d^289^Marduk Blackpool^0.02^0^k
6eo|Hero's Cape|dwx|||||d^230^Plugger Spazzring^0.2^0^k~d^289^Marduk Blackpool^0.02^0^k
6ep|Hero's Gauntlets|dwx|||||d^289^Marduk Blackpool^0.02^0^k
6eq|Hero's Belt|dwx|||||d^289^Marduk Blackpool^0.02^0^k
6er|Hero's Boots|dwx|||||d^289^Jandice Barov^0.47^0^k~d^289^Marduk Blackpool^0.02^0^k
6es|Hero's Band|dwx|||||d^289^Jandice Barov^0.47^0^k~d^289^Marduk Blackpool^0.02^0^k
6et|Hero's Leggings|dwx|||||d^289^Jandice Barov^0.47^0^k~d^289^Marduk Blackpool^0.02^0^k
6eu|Hero's Pauldrons|dwx|||||d^289^Jandice Barov^0.47^0^k~d^289^Marduk Blackpool^0.02^0^k
6ev|Alabaster Plate Vambraces|dwx|||||d^349^Princess Theradras^0.19^0^k
6ew|Alabaster Breastplate|dwx|||||d^230^Plugger Spazzring^0.2^0^k~d^289^Marduk Blackpool^0.02^0^k
6ex|Hero's Buckler|dwx|||||d^289^Jandice Barov^0.47^0^k
6ey|Alabaster Plate Gauntlets|dwx|||||d^349^Princess Theradras^0.19^0^k
6ez|Alabaster Plate Girdle|dwx|||||d^349^Princess Theradras^0.19^0^k
6f0|Alabaster Plate Greaves|dwx|||||d^349^Princess Theradras^0.19^0^k
6f1|Alabaster Plate Helmet|dwx|||||d^230^Plugger Spazzring^0.2^0^k~d^349^Princess Theradras^0.19^0^k
6f2|Alabaster Plate Leggings|dwx|||||d^230^Plugger Spazzring^0.2^0^k
6f3|Alabaster Plate Pauldrons|dwx|||||d^230^Plugger Spazzring^0.2^0^k
6f4|Alabaster Shield|dwx|||||d^230^Plugger Spazzring^0.2^0^k~d^289^Marduk Blackpool^0.02^0^k
6fu|Gauntlets of the Sea|c|||||c^Leatherworking^230^10630^f
6fv|Dragonscale Gauntlets|c|||||c^Leatherworking^225^10619^f
6fw|Helm of Fire|c|||||c^Leatherworking^250^10632^f
6fx|Feathered Breastplate|c|||||c^Leatherworking^250^10647^f
6pw|Hammer of Expertise|u|U||||
75y|Field Plate Armor|wx|r||||o^Ancient Treasure^0.8^k~x^4637^Steel Lockbox^k
763|Field Plate Leggings|wx|r||||o^Ancient Treasure^0.7^k~o^Captain's Chest^0.8^k
77z|Southsea Lamp|wx|||||o^Captain's Chest^0.8^k~x^9276^Pirate's Footlocker^k
78i|Shovelphlange's Mining Axe|w|U||||w^0^0^k
78l|Earthen Rod|d|||||d^70^Shadowforge Relic Hunter^0.01^0^k~d^70^Shadowforge Darkcaster^0.01^0^k
78m|Tromping Miner's Boots|w|||||w^0^0^k
78n|Obsidian Cleaver|d|||||d^70^Shadowforge Relic Hunter^0.01^0^k~d^70^Shadowforge Darkcaster^0.01^0^k
78o|Stonevault Shiv|d|||||d^70^Shadowforge Relic Hunter^0.01^0^k~d^70^Shadowforge Darkcaster^0.01^0^k
78p|Archaic Defender|wx|||||x^4636^Strong Iron Lockbox^k~x^6827^Box of Supplies^k
78q|Excavator's Brand|d|||||d^70^Shadowforge Relic Hunter^0.01^0^k~d^70^Shadowforge Darkcaster^0.01^0^k
78v|The Shoveler|d|||||d^70^Shadowforge Relic Hunter^0.01^0^k~d^70^Shadowforge Darkcaster^0.01^0^k
78w|Annealed Blade|d|||||d^70^Shadowforge Relic Hunter^0.01^0^k~d^70^Shadowforge Darkcaster^0.01^0^k
78x|Beacon of Hope|d|||||d^70^Shadowforge Relic Hunter^0.01^0^k~d^70^Shadowforge Darkcaster^0.01^0^k
78y|Horned Viking Helmet|d|||||d^70^^50^0^k
78z|Gloves of Old|wx|||||x^4634^Iron Lockbox^k~w^0^0^k
790|Legguards of the Vault|d|||||d^70^Shadowforge Relic Hunter^0.01^0^k~d^70^Shadowforge Darkcaster^0.01^0^k
791|Energy Cloak|d|||||d^70^Shadowforge Relic Hunter^0.01^0^k~d^70^Shadowforge Darkcaster^0.01^0^k
792|Worn Running Boots|d|||||d^70^^50^0^k
794|Baelog's Shortbow|d|||||d^70^^90^0^k
795|Nordic Longshank|d|||||d^70^^10^0^k
796|Earthborn Kilt|rw|||||d^249^Onyxia^1.27^1^k
797|Battered Viking Shield|d|||||d^70^^50^0^k
798|Olaf's All Purpose Shield|d|||||d^70^^50^0^k
799|Girdle of Golem Strength|wx|||||x^4634^Iron Lockbox^k~w^0^0^k
79a|Spirewind Fetter|d|||||d^70^Shadowforge Relic Hunter^0.01^0^k~d^70^Shadowforge Darkcaster^0.01^0^k
79b|Stoneweaver Leggings|w|||||m^7228^Ironaya^40^k
79c|Ironshod Bludgeon|w|||||m^7228^Ironaya^20^k
79e|Cragfists|d|||||d^70^Ancient Stone Keeper^50^0^k
79f|Rockshard Pauldrons|d|||||d^70^Ancient Stone Keeper^50^0^k
79g|Galgann's Fireblaster|d|||||d^70^Galgann Firehammer^20^0^k
79h|The Rockpounder|d|||||d^70^Archaedas^20^0^k
79i|Oilskin Leggings|d|||||d^70^Grimlok^40^0^k
79j|Grimlok's Tribal Vestments|d|||||d^70^Grimlok^40^0^k
79k|Grimlok's Charge|d|||||d^70^Grimlok^20^0^k
79n|Galgann's Firehammer|d|||||d^70^Galgann Firehammer^20^0^k
79o|Adventurer's Pith Helmet|d|||||d^70^Shadowforge Relic Hunter^0.01^0^k~d^70^Shadowforge Darkcaster^0.01^0^k
79t|Pendulum of Doom|d|||||d^70^Shadowforge Relic Hunter^0.01^0^k~d^70^Shadowforge Darkcaster^0.01^0^k
79u|Monolithic Bow|d|||||d^70^Shadowforge Relic Hunter^0.01^0^k~d^70^Shadowforge Darkcaster^0.01^0^k
79z|Papal Fez|d|||||d^70^Shadowforge Relic Hunter^0.01^0^k~d^70^Shadowforge Darkcaster^0.01^0^k
7a1|Forgotten Wraps|wx|||||x^4638^Reinforced Steel Lockbox^k~x^10752^Emerald Encrusted Chest^k
7a2|Elemental Raiment|wx|||||x^4637^Steel Lockbox^k~w^0^0^k
7a3|Reticulated Bone Gauntlets|wx|||||x^6827^Box of Supplies^k~w^0^0^k
7ad|Grubbis Paws|w|||||m^7361^Grubbis^10^k
7ae|Electrocutioner Leg|d|||||d^90^Electrocutioner 6000^20^0^k
7af|Electrocutioner Lagnut|d|||||d^90^Electrocutioner 6000^40^0^k
7ag|Spidertank Oilrag|d|||||d^90^Electrocutioner 6000^40^0^k
7ah|Manual Crowd Pummeler|d|U||||d^90^Crowd Pummeler 9-60^40^0^k
7ai|Gnomebot Operating Boots|d|||||d^90^Crowd Pummeler 9-60^60^0^k
7ak|Hydrocane|d|||||d^90^Viscous Fallout^20^0^k
7al|Toxic Revenger|d|||||d^90^Viscous Fallout^25^0^k
7am|Acidic Walkers|d|||||d^90^Viscous Fallout^55^0^k
7ao|Glass Shooter|d|||||d^90^^33.33^0^k
7ap|Royal Diplomatic Scepter|d|||||d^90^^33.33^0^k
7ar|Thermaplugg's Left Arm|d|||||d^90^Mekgineer Thermaplugg^25^0^k
7bh|Vibroblade|dw|||||d^90^Dark Iron Agent^0.03^0^k~d^90^Leprous Defender^0.03^0^k
7bi|Supercharger Battle Axe|dw|||||d^90^Dark Iron Agent^0.03^0^k~d^90^Leprous Defender^0.03^0^k
7bj|Hi-Tech Supergun|dw|||||d^90^Dark Iron Agent^0.03^0^k~d^90^Leprous Defender^0.03^0^k
7bk|Oscillating Power Hammer|dw|||||d^90^Dark Iron Agent^0.03^0^k~d^90^Leprous Defender^0.03^0^k
7bl|Gyromatic Icemaker|dw|||||d^90^Dark Iron Agent^0.03^0^k~d^90^Leprous Defender^0.03^0^k
7bm|Gizmotron Megachopper|dw|||||d^90^Dark Iron Agent^0.03^0^k~d^90^Leprous Defender^0.03^0^k
7bn|Hotshot Pilot's Gloves|dw|||||d^90^Dark Iron Agent^0.03^0^k~d^90^Leprous Defender^0.03^0^k
7bo|Electromagnetic Gigaflux Reactivator|d|s||||d^90^Mekgineer Thermaplugg^100^0^s
7c4|Mechbuilder's Overalls|dw|||||d^90^Dark Iron Agent^0.03^0^k~d^90^Leprous Defender^0.03^0^k
7c5|Petrolspill Leggings|dw|||||d^90^Dark Iron Agent^0.03^0^k~d^90^Leprous Defender^0.03^0^k
7c6|Caverndeep Trudgers|dw|||||d^90^Dark Iron Agent^0.03^0^k~d^90^Leprous Defender^0.03^0^k
7cb|Nether-lace Tunic|q||h|9516||q^1946^Nether-lace Garment^26^h^k
7cc|Astral Knot Blouse|q||a|9515||q^1942^Astral Knot Garment^26^a^k
7cd|Celestial Stave|q|||||q^1958^Celestial Power^35^^k
7ce|Mud's Crushers|q|||||q^1177^Hungry!^32^^k
7cg|Silent Hunter|q||h|||q^679^Call to Arms^30^h^k
7ch|Skullsplitter|q||h|||q^679^Call to Arms^30^h^k
7ci|Energized Stone Circle|q|||||q^2418^Power Stones^30^^k
7cv|Fire-welded Bracers|q|||||q^2904^A Fine Mess^24^^k
7cw|Fairywing Mantle|q|||||q^2904^A Fine Mess^24^^k
7cy|Talvash's Gold Ring|q||a|9588||q^2948^Gnome Improvement^28^a^k
7ec|Nogg's Gold Ring|q||h|9538||q^2950^Nogg's Ring Redo^28^h^k
7em|Sleeping Robes|q||a|||q^2561^Druid of the Claw^3^a^k
7en|Barkmail Leggings|q|s|a|||q^483^The Relics of Wakening^4^a^s
7eo|Lace Pants|q|s|a|||q^2520^Sathrah's Sacrifice^5^a^s
7ep|Cushioned Boots|q|s|a|4942||q^2520^Sathrah's Sacrifice^5^a^s
7er|Gritroot Staff|q|s|a|||q^483^The Relics of Wakening^4^a^s
7es|Mechanic's Pipehammer|q||a|||q^2930^Data Rescue^25^a^k
7et|Repairman's Cape|q||a|||q^2930^Data Rescue^25^a^k
7ev|Bastion of Stormwind|q||a|||q^1652^The Tome of Valor^20^a^k
7ew|Shoni's Disarming Tool|Q|s|a|||q^2928^Gyrodrillmatic Excavationators^20^a^s
7ex|Shilly Mitts|Q|s|a|||q^2928^Gyrodrillmatic Excavationators^20^a^s
7fa|Reedknot Ring|q|||||q^1203^Jarl Needs a Blade^30^^k
7fb|Civinad Robes|Qq|s||||q^2841^Rig Wars^25^h^s~q^2929^The Grand Betrayal^25^a^s
7fc|Triprunner Dungarees|Qq|s||||q^2841^Rig Wars^25^h^s~q^2929^The Grand Betrayal^25^a^s
7fd|Dual Reinforced Leggings|Qq|s||||q^2841^Rig Wars^25^h^s~q^2929^The Grand Betrayal^25^a^s
7fi|Pratt's Handcrafted Boots|q||a|9633||q^2821^The Mark of Quality^40^a^k
7fj|Pratt's Handcrafted Gloves|q||a|9632||q^2821^The Mark of Quality^40^a^k
7fk|Jangdor's Handcrafted Gloves|q||h|9631||q^2822^The Mark of Quality^40^h^k
7fl|Jangdor's Handcrafted Boots|q||h|9630||q^2822^The Mark of Quality^40^h^k
7fm|Skilled Handling Gloves|q||h|||q^864^Return to Apothecary Zinge^38^h^k
7fn|Master Apothecary Cape|q||h|||q^864^Return to Apothecary Zinge^38^h^k
7fo|Swashbuckler Sash|q|||||q^2874^Deliver to MacKinley^40^^k
7fp|Shinkicker Boots|q|||||q^2874^Deliver to MacKinley^40^^k
7fq|Chelonian Cuffs|q|||||q^1560^Tooga's Quest^40^^k
7fu|Band of the Great Tortoise|q|||||q^1560^Tooga's Quest^40^^k
7fv|Optomatic Deflector|q|||||q^648^Rescue OOX-17/TN!^43^^k
7fw|Thermotastic Egg Timer|q|||||q^648^Rescue OOX-17/TN!^43^^k
7fx|Gnomish Inventor Boots|q|||||q^836^Rescue OOX-09/HL!^43^^k
7fy|Gnomish Water Sinking Device|q|||||q^836^Rescue OOX-09/HL!^43^^k
7fz|Failed Flying Experiment|q|||||q^2767^Rescue OOX-22/FE!^40^^k
7g0|Chainlink Towel|q|||||q^2767^Rescue OOX-22/FE!^40^^k
7g1|Royal Highmark Vestments|q||h|||q^2938^Venom to the Undercity^40^h^k
7g2|Honorguard Chestpiece|q||h|||q^2938^Venom to the Undercity^40^h^k
7g3|Gryphon Rider's Stormhammer|q||a|||q^2994^Saving Sharpbeak^40^a^k
7g4|Gryphon Rider's Leggings|q||a|||q^2994^Saving Sharpbeak^40^a^k
7g6|Cairnstone Sliver|q||a|||q^2942^The Morrow Stone^42^a^k
7g8|Granite Grips|q||a|||q^2845^Wandering Shay^44^a^k
7g9|Vinehedge Cinch|q||a|||q^2845^Wandering Shay^44^a^k
7ga|Boots of the Maharishi|q||h|||q^2987^Gordunni Cobalt^38^h^k
7gd|Earthclasp Barrier|q||h|||q^2903^The Battle Plans^39^h^k
7ge|Rushridge Boots|q||h|||q^2903^The Battle Plans^39^h^k
7gf|Dawnrider's Chestpiece|q||a|||q^2871^Delivering the Relic^40^a^k
7gg|Sentinel's Guard|q||a|||q^2871^Delivering the Relic^40^a^k
7gh|Wingcrest Gloves|q||h|||q^3062^Dark Heart^45^h^k
7gi|Stronghorn Girdle|q||h|||q^3062^Dark Heart^45^h^k
7gu|Tok'kar's Murloc Basher|q||h|||q^1427^Threat From the Sea^35^h^k
7gv|Tok'kar's Murloc Chopper|q||h|||q^1427^Threat From the Sea^35^h^k
7gw|Tok'kar's Murloc Shanker|q||h|||q^1427^Threat From the Sea^35^h^k
7gy|Leather Chef's Belt|q||h|||q^1430^Fresh Meat^35^h^k
7gz|Strength of the Treant|q||h|||q^3129^Weapons of Spirit^40^h^k
7h0|Force of the Hippogryph|q||h|||q^3129^Weapons of Spirit^40^h^k
7h2|Spirit of the Faerie Dragon|q||h|||q^3129^Weapons of Spirit^40^h^k
7h3|Grappler's Belt|q||a|||q^1440^Return to Vahlarriel^30^a^k
7he|Gloves of Insight|q||a|||q^1440^Return to Vahlarriel^30^a^k
7hf|Garrison Cloak|q||a|||q^1440^Return to Vahlarriel^30^a^k
7hk|Rustler Gloves|q||h|||q^1169^Identifying the Brood^38^h^k
7hl|Tharg's Shoelace|q||h|||q^1168^Army of the Black Dragon^38^h^k
7hm|Tharg's Disk|q||h|||q^1168^Army of the Black Dragon^38^h^k
7im|Simple Cord|w|s||||m^1767^Vile Fin Shredder^3.33^s
7in|Simple Shoes|w|||||w^6^14^k
7io|Simple Bands|w|s||||m^1782^Moonrage Darksoul^0^s
7ip|Simple Cape|wx|||||x^20708^Tightly Sealed Trunk^k~w^6^14^k
7iq|Simple Gloves|wx|||||x^21509^Ahn'Qiraj War Effort Supplies^k~w^8^15^k
7ir|Simple Britches|wx|sr||||m^1767^Vile Fin Shredder^3.33^s~m^1912^Dalaran Protector^1.82^s
7is|Simple Robe|dwx|r||||d^389^Oggleflint^0.01^0^k~d^389^Jergosh the Invoker^0.01^0^k
7it|Simple Blouse|dwx|sr||||d^2999^Witherfang^25^0^s
7iu|Nomad Sash|w|||||w^6^14^k
7iv|Nomad Sandals|w|s||||m^1211^Leper Gnome^0^s
7iw|Nomad Bands|wx|s||||m^260157^NPC 260157^0^s
7ix|Nomad Buckler|w|r||||w^6^14^k
7iy|Nomad Cloak|wx|s||||m^1778^Ferocious Grizzled Bear^0^s
7iz|Nomad Gloves|wx|s||||m^1797^Giant Grizzled Bear^0^s
7j0|Nomad Trousers|wx|r||||x^21509^Ahn'Qiraj War Effort Supplies^k~w^9^17^k
7j1|Nomad Tunic|dwx|sr||||d^2999^The Abandoned^25^0^s~m^250626^NPC 250626^0^s
7j2|Cadet Belt|w|s||||m^1782^Moonrage Darksoul^0^s
7j3|Cadet Boots|wx|||||o^Tattered Chest^1.43^k~x^21509^Ahn'Qiraj War Effort Supplies^k
7j4|Cadet Bracers|w|s||||m^500^Riverpaw Scout^0^s
7j5|Cadet Cloak|Rw|s||||R^5808^Warlord Kolkanis^0^s
7j6|Cadet Gauntlets|wx|||||o^Tattered Chest^1.43^k~x^21509^Ahn'Qiraj War Effort Supplies^k
7j7|Cadet Leggings|wx|r||||x^21509^Ahn'Qiraj War Effort Supplies^k~w^9^17^k
7j8|Cadet Shield|dw|sr||||d^2999^The Butcher^25^0^s~d^2999^Rath'mael^25^0^s
7j9|Cadet Vest|dwx|sr||||m^250627^NPC 250627^6.25^s~m^250650^NPC 250650^0^s
7ja|Greenweave Sash|dwx|sr||||m^3263^Bristleback Geomancer^2.86^s~d^36^Rhahk'Zor^0.07^0^k
7jb|Greenweave Sandals|dwx|r||||d^36^Edwin VanCleef^0.02^0^k~d^36^Cookie^0.01^0^k
7jc|Greenweave Bracers|dwx|r||||d^36^Rhahk'Zor^0.07^0^k~d^36^Edwin VanCleef^0.02^0^k
7je|Greenweave Cloak|dwx|sr||||m^4802^Blackfathom Tide Priestess^0^s~d^36^Rhahk'Zor^0.07^0^k
7jf|Greenweave Gloves|dwx|sr||||m^4018^Antlered Courser^6.67^s~d^34^Targorr the Dread^0.01^0^k
7jj|Bandit Cinch|dwx|r||||d^36^Rhahk'Zor^0.07^0^k~d^389^Oggleflint^0.01^0^k
7jk|Bandit Boots|dwx|r||||d^36^Rhahk'Zor^0.07^0^k~d^36^Edwin VanCleef^0.02^0^k
7jl|Bandit Bracers|dwx|sr||||m^217^Venom Web Spider^0^s~d^36^Rhahk'Zor^0.07^0^k
7jm|Bandit Buckler|dw|sr||||d^36^Rhahk'Zor^0.07^0^k~d^36^Edwin VanCleef^0.02^0^k
7jn|Bandit Cloak|dwx|sr||||m^428^Dire Condor^0^s~d^36^Rhahk'Zor^0.07^0^k
7jo|Bandit Gloves|dwx|r||||d^36^Rhahk'Zor^0.07^0^k~d^36^Edwin VanCleef^0.02^0^k
7jp|Bandit Pants|dwx|sr||||d^48^Geilhast^33.33^0^s~m^433^Shadowhide Gnoll^0^s
7jq|Bandit Jerkin|dwx|sr||||m^3859^Shadowfang Ragetooth^0^s~m^615^Blackrock Tracker^0^s
7jr|Raider's Chestpiece|dw|sr||||m^422^Murloc Flesheater^4^s~m^2103^Dragonmaw Scout^0^s
7js|Raider's Boots|dw|r||||d^36^Rhahk'Zor^0.07^0^k~d^389^Oggleflint^0.01^0^k
7jt|Raider's Bracers|dw|sr||||m^250618^NPC 250618^0^s~d^389^Oggleflint^0.01^0^k
7ju|Raider's Cloak|dw|sr||||m^250484^NPC 250484^0^s~m^250618^NPC 250618^2.78^s
7jv|Raider's Gauntlets|dw|r||||d^36^Rhahk'Zor^0.07^0^k~d^389^Oggleflint^0.01^0^k
7jw|Raider's Belt|dw|r||||d^36^Rhahk'Zor^0.07^0^k~d^389^Oggleflint^0.01^0^k
7jx|Raider's Legguards|dw|sr||||m^1888^Dalaran Watcher^5.88^s~m^4064^Blackrock Scout^0^s
7jy|Raider's Shield|dw|sr||||d^36^Rhahk'Zor^0.07^0^k~d^389^Oggleflint^0.01^0^k
7jz|Ivycloth Tunic|dwx|sr||||m^247001^NPC 247001^0^s~d^34^Dextren Ward^0.01^0^k
7k0|Ivycloth Boots|dwx|sr||||d^34^Targorr the Dread^0.01^0^k~d^34^Hamhock^0.01^0^k
7k1|Ivycloth Bracelets|Rdwx|sr||||R^5798^Thora Feathermoon^0^s~d^34^Targorr the Dread^0.01^0^k
7k3|Ivycloth Gloves|dwx|r||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
7k4|Ivycloth Mantle|dwx|r||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
7k5|Ivycloth Pants|dwx|sr||||m^1069^Crimson Whelp^0^s~d^34^Hamhock^0.01^0^k
7k6|Ivycloth Robe|dwx|sr||||d^34^Hamhock^50^0^s
7k7|Ivycloth Sash|dwx|sr||||m^260796^NPC 260796^0^s~d^34^Targorr the Dread^0.01^0^k
7k9|Superior Belt|dwx|sr||||m^4065^Blackrock Sentry^0^s~d^34^Targorr the Dread^0.01^0^k
7ka|Superior Boots|dwx|r||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
7kb|Superior Bracers|dwx|r||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
7kc|Superior Buckler|dwx|r||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
7kd|Superior Cloak|dwx|sr||||d^34^Dextren Ward^50^0^s~m^3863^Lupine Horror^0^s
7ke|Superior Gloves|dwx|sr||||m^2503^Hillsbrad Foreman^0^s~d^34^Targorr the Dread^0.01^0^k
7kf|Superior Shoulders|dwx|sr||||m^260800^NPC 260800^0^s~d^34^Targorr the Dread^0.01^0^k
7kg|Superior Leggings|dwx|r||||d^34^Hamhock^0.01^0^k~d^34^Dextren Ward^0.01^0^k
7kh|Superior Tunic|dwx|r||||d^34^Hamhock^0.01^0^k~d^34^Dextren Ward^0.01^0^k
7ki|Fortified Boots|dwx|sr||||d^34^Targorr the Dread^0.01^0^k~d^34^Hamhock^0.01^0^k
7kj|Fortified Bracers|dwx|sr||||d^36^Edwin VanCleef^0.02^0^k~d^34^Targorr the Dread^0.01^0^k
7kk|Fortified Cloak|dwx|r||||d^36^Rhahk'Zor^0.07^0^k~d^36^Edwin VanCleef^0.02^0^k
7kl|Fortified Gauntlets|dwx|sr||||m^2529^Son of Arugal^0^s~d^34^Targorr the Dread^0.01^0^k
7km|Fortified Belt|dwx|sr||||d^33^Wolf Master Nandos^33.33^0^s
7kn|Fortified Leggings|dwx|sr||||d^34^Targorr the Dread^0.01^0^k~d^34^Hamhock^0.01^0^k
7ko|Fortified Shield|dwx|r||||d^34^Targorr the Dread^0.01^0^k~d^34^Hamhock^0.01^0^k
7kp|Fortified Spaulders|dwx|r||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
7kq|Fortified Chain|dwx|sr||||m^569^Green Recluse^0^s~d^34^Targorr the Dread^0.01^0^k
7ks|Durable Boots|Rwx|sr||||m^4306^Scarlet Torturer^2.78^s~R^14278^Ro'Bark^0.49^k
7kt|Durable Bracers|dwx|sr||||d^34^Kam Deepfury^0.01^0^k
7kv|Durable Gloves|Rwx|r||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
7kw|Durable Shoulders|Rx|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
7kx|Durable Pants|Rx|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
7kz|Scaled Leather Belt|dwx|sr||||m^271351^NPC 271351^0^s~d^34^Kam Deepfury^0.01^0^k
7l0|Scaled Leather Boots|Rwx|sr||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
7l1|Scaled Leather Bracers|dwx|sr||||d^34^Dextren Ward^0.01^0^k~d^34^Kam Deepfury^0.01^0^k
7l2|Scaled Shield|Rx|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
7l4|Scaled Leather Gloves|Rwx|r||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
7l5|Scaled Leather Leggings|Rx|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
7l6|Scaled Leather Shoulders|Rx|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
7l7|Scaled Leather Tunic|Rx|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
7l8|Banded Armor|Rx|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
7l9|Banded Bracers|dwx|sr||||d^189^Interrogator Vishas^16.67^0^s~m^4306^Scarlet Torturer^2.78^s
7lb|Banded Gauntlets|Rwx|r||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
7lc|Banded Girdle|Rwx|r||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
7ld|Banded Leggings|Rwx|sr||||m^247003^NPC 247003^0^s~R^1037^Dragonmaw Battlemaster^0.46^k
7le|Banded Pauldrons|Rx|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
7lf|Banded Shield|Rx|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
7ll|Conjurer's Hood|dwx|r||||d^90^Mekgineer Thermaplugg^0.43^0^k
7lu|Archer's Buckler|dwx|r||||d^90^Mekgineer Thermaplugg^0.43^0^k
7lx|Archer's Gloves|dwx|sr||||d^90^Mekgineer Thermaplugg^100^0^s
7lz|Archer's Shoulderpads|dwx|r||||d^90^Mekgineer Thermaplugg^0.43^0^k
7m3|Renegade Cloak|Rwx|sr||||m^736^Panther^0^s~R^1037^Dragonmaw Battlemaster^0.46^k
7m9|Renegade Shield|dwx|r||||d^90^Mekgineer Thermaplugg^0.43^0^k
7mz|Jazeraint Shield|wx|r||||o^Ancient Treasure^0.9^k~x^4636^Strong Iron Lockbox^k
7ni|Brigade Defender|wx|r||||o^Ancient Treasure^1.3^k~x^4637^Steel Lockbox^k
7nz|Embossed Plate Shield|wx|r||||o^Ancient Treasure^0.5^k~x^4637^Steel Lockbox^k
7om|Warmonger's Buckler|dwx|r||||d^349^Princess Theradras^0.19^0^k
7ou|Embossed Plate Armor|wx|r||||o^Ancient Treasure^1.3^k~o^Captain's Chest^1.3^k
7oy|Embossed Plate Leggings|wx|r||||o^Ancient Treasure^0.7^k~x^4637^Steel Lockbox^k
7oz|Embossed Plate Pauldrons|wx|r||||o^Ancient Treasure^1.2^k~o^Captain's Chest^0.8^k
7p2|Overlord's Shield|dwx|r||||d^349^Princess Theradras^0.19^0^k
7pq|Black Mageweave Vest|c|||||c^Tailoring^205^12048^f
7pu|Shadoweave Pants|c|||||c^Tailoring^210^12052^f
7pv|Black Mageweave Gloves|c|||||c^Tailoring^215^12053^f
7pw|Shadoweave Robe|c|||||c^Tailoring^215^12055^f
7q0|White Bandit Mask|c|||||c^Tailoring^180^12059^f
7q1|Red Mageweave Pants|c|||||c^Tailoring^180^12060^f
7q2|Stormcloth Pants|c|||||c^Tailoring^185^12062^f
7q3|Stormcloth Gloves|c|||||c^Tailoring^185^12063^f
7qa|Red Mageweave Gloves|c|||||c^Tailoring^190^12066^f
7qb|Dreamweave Gloves|c|||||c^Tailoring^225^12067^f
7qc|Stormcloth Vest|c|||||c^Tailoring^190^12068^f
7qd|Dreamweave Vest|c|||||c^Tailoring^225^12070^f
7qf|Shadoweave Gloves|c|||||c^Tailoring^225^12071^f
7qg|Black Mageweave Headband|c|||||c^Tailoring^230^12072^f
7qh|Shadoweave Mask|c|||||c^Tailoring^200^12086^f
7qi|Black Mageweave Boots|cx|||||c^Tailoring^230^12073^f
7qj|Black Mageweave Shoulders|c|||||c^Tailoring^230^12074^f
7qk|Shadoweave Shoulders|c|||||c^Tailoring^235^12076^f
7ql|Red Mageweave Shoulders|c|||||c^Tailoring^195^12078^f
7qn|Shadoweave Boots|c|||||c^Tailoring^240^12082^f
7qo|Stormcloth Headband|c|||||c^Tailoring^200^12083^f
7qp|Red Mageweave Headband|c|||||c^Tailoring^200^12084^f
7qu|Stormcloth Shoulders|c|||||c^Tailoring^200^12087^f
7qv|Stormcloth Boots|c|||||c^Tailoring^205^12090^f
7qx|Dreamweave Circlet|c|||||c^Tailoring^250^12092^f
7qy|Cindercloth Robe|c|||||c^Tailoring^225^12069^f
7qz|Pious Legwraps|q||a|||q^981^The Tower of Althalaxx^13^a^k
7r0|Cindercloth Boots|c|||||c^Tailoring^245^12088^f
7r1|Simple Linen Pants|c|s||||c^Tailoring^1^12044^f
7r2|Simple Linen Boots|c|||||c^Tailoring^20^12045^f
7r3|Simple Kilt|c|||||c^Tailoring^75^12046^f
7r4|Colorful Kilt|c|||||c^Tailoring^70^12047^f
7ry|Lord's Crest|dwx|r||||d^349^Princess Theradras^0.19^0^k
7s6|Gothic Plate Armor|wx|r||||x^4638^Reinforced Steel Lockbox^k~x^9265^Cuergo's Hidden Treasure^k
7s7|Gothic Plate Gauntlets|wx|r||||x^4638^Reinforced Steel Lockbox^k~x^9265^Cuergo's Hidden Treasure^k
7s8|Gothic Plate Girdle|wx|r||||o^Ancient Treasure^1.6^k~x^4637^Steel Lockbox^k
7s9|Gothic Sabatons|wx|r||||o^Ancient Treasure^0.8^k~x^4637^Steel Lockbox^k
7sa|Gothic Plate Helmet|wx|r||||x^4638^Reinforced Steel Lockbox^k~x^9265^Cuergo's Hidden Treasure^k
7sb|Gothic Plate Leggings|wx|r||||x^4638^Reinforced Steel Lockbox^k~x^9265^Cuergo's Hidden Treasure^k
7sc|Gothic Plate Spaulders|wx|r||||x^4638^Reinforced Steel Lockbox^k~x^9541^Box of Goodies^k
7sd|Revenant Deflector|dwx|r||||d^230^Plugger Spazzring^0.2^0^k~d^349^Princess Theradras^0.19^0^k
7se|Gothic Plate Vambraces|wx|r||||o^Ancient Treasure^0.9^k~x^4637^Steel Lockbox^k
7tb|Revenant Bracers|wx|r||||x^4638^Reinforced Steel Lockbox^k~x^12122^Kum'isha's Junk^k
7td|Revenant Gauntlets|dwx|r||||d^349^Princess Theradras^0.19^0^k
7te|Revenant Girdle|dwx|r||||d^349^Princess Theradras^0.19^0^k
7tf|Revenant Boots|dwx|r||||d^349^Princess Theradras^0.19^0^k
7tg|Revenant Helmet|dwx|r||||d^349^Princess Theradras^0.19^0^k
7th|Revenant Leggings|dwx|r||||d^349^Princess Theradras^0.19^0^k
7ti|Revenant Shoulders|dwx|r||||d^349^Princess Theradras^0.19^0^k
7tj|High Councillor's Tunic|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
7u6|Mercurial Guard|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
7ud|Templar Gauntlets|dwx|r||||d^230^Plugger Spazzring^0.2^0^k
7ue|Templar Girdle|dwx|r||||d^230^Plugger Spazzring^0.2^0^k~d^349^Princess Theradras^0.19^0^k
7v7|Crusader's Shield|dwx|r||||d^230^Plugger Spazzring^0.2^0^k
7ve|Overlord's Vambraces|wx|r||||x^4638^Reinforced Steel Lockbox^k~w^43^50^k
7vf|Overlord's Chestplate|dwx|r||||d^349^Princess Theradras^0.19^0^k
7vg|Heavy Lamellar Shield|dwx|r||||d^230^Plugger Spazzring^0.2^0^k
7vh|Overlord's Gauntlets|wx|r||||x^4638^Reinforced Steel Lockbox^k~w^45^51^k
7vj|Overlord's Crown|wx|r||||x^4638^Reinforced Steel Lockbox^k~x^12122^Kum'isha's Junk^k
7vk|Overlord's Legplates|dwx|r||||d^349^Princess Theradras^0.19^0^k
7vl|Overlord's Spaulders|dwx|r||||d^349^Princess Theradras^0.19^0^k
7we|Heavy Lamellar Boots|dwx|r||||d^349^Princess Theradras^0.19^0^k
7wf|Heavy Lamellar Vambraces|dwx|r||||d^349^Princess Theradras^0.19^0^k
7wg|Heavy Lamellar Chestpiece|dwx|r||||d^230^Plugger Spazzring^0.2^0^k
7wh|Heavy Lamellar Helm|dwx|r||||d^349^Princess Theradras^0.19^0^k
7wi|Heavy Lamellar Gauntlets|dwx|r||||d^349^Princess Theradras^0.19^0^k
7wj|Heavy Lamellar Girdle|dwx|r||||d^349^Princess Theradras^0.19^0^k
7wk|Heavy Lamellar Leggings|dwx|r||||d^230^Plugger Spazzring^0.2^0^k~d^349^Princess Theradras^0.19^0^k
7wl|Heavy Lamellar Pauldrons|dwx|r||||d^349^Princess Theradras^0.19^0^k
7wn|Master's Boots|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
7wo|Master's Bracers|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
7wp|Master's Cloak|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
7wq|Master's Hat|drw|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
7wr|Master's Gloves|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
7ws|Master's Leggings|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
7wt|Master's Mantle|drw|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
7wv|Master's Belt|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
7ww|Adventurer's Bracers|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
7wx|Adventurer's Boots|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
7wy|Adventurer's Cape|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
7wz|Adventurer's Belt|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
7x0|Adventurer's Gloves|drw|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
7x1|Adventurer's Bandana|drw|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
7x2|Adventurer's Legguards|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
7x3|Adventurer's Shoulders|drw|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
7x5|Masterwork Bracers|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
7x7|Masterwork Cape|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
7x8|Masterwork Gauntlets|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
7x9|Masterwork Girdle|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
7xa|Masterwork Boots|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
7xb|Masterwork Shield|rwx|r||||d^249^Onyxia^0.83^1^k
7xc|Masterwork Circlet|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
7xd|Masterwork Legplates|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
7xe|Masterwork Pauldrons|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
7xh|Emerald Gauntlets|dwx|r||||d^230^Plugger Spazzring^0.2^0^k~d^289^Marduk Blackpool^0.02^0^k
7xi|Emerald Girdle|dwx|r||||d^230^Plugger Spazzring^0.2^0^k
7xm|Emerald Vambraces|dwx|r||||d^230^Plugger Spazzring^0.2^0^k
7xr|Greenweave Mantle|dw|r||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
7xs|Sage's Circlet|Rwx|r||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
7xt|Durable Hat|Rx|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
7yw|Scarlet Chestpiece|w|||||w^0^0^k
7yx|Scarlet Belt|w|||||w^0^0^k
7yy|Scarlet Leggings|d|||||d^189^Herod^15^0^k
7yz|Scarlet Gauntlets|w|||||w^0^0^k
7z0|Scarlet Boots|dw|||||d^189^Houndmaster Loksey^0.01^0^k~d^189^Herod^0.01^0^k
7z1|Scarlet Wristguards|w|||||w^0^0^k
7zq|Duracin Bracers|q|||||q^2418^Power Stones^30^^k
7zr|Everlast Boots|q|||||q^2418^Power Stones^30^^k
7zu|Ornate Shield|dwx|r||||d^230^Plugger Spazzring^0.2^0^k~d^289^Marduk Blackpool^0.02^0^k
7zv|Engraved Wall|dwx|r||||d^289^Jandice Barov^0.47^0^k~d^289^Marduk Blackpool^0.02^0^k
7zw|Templar Shield|dwx|r||||d^230^Plugger Spazzring^0.2^0^k~d^289^Marduk Blackpool^0.02^0^k
7zx|Emerald Shield|dwx|r||||d^289^Marduk Blackpool^0.02^0^k
7zy|Demon Guard|dwx|r||||d^289^Jandice Barov^0.47^0^k
7zz|Hyperion Shield|rwx|r||||d^249^Onyxia^0.83^1^k
800|Imbued Plate Armor|dwx|||||d^289^Jandice Barov^0.47^0^k
801|Imbued Plate Gauntlets|dwx|||||d^230^Plugger Spazzring^0.2^0^k~d^289^Marduk Blackpool^0.02^0^k
802|Imbued Plate Girdle|dwx|||||d^230^Plugger Spazzring^0.2^0^k~d^289^Marduk Blackpool^0.02^0^k
803|Imbued Plate Greaves|dwx|||||d^230^Plugger Spazzring^0.2^0^k~d^289^Marduk Blackpool^0.02^0^k
804|Imbued Plate Helmet|dwx|||||d^289^Marduk Blackpool^0.02^0^k
805|Imbued Plate Leggings|dwx|||||d^289^Jandice Barov^0.47^0^k~d^289^Marduk Blackpool^0.02^0^k
806|Imbued Plate Pauldrons|dwx|||||d^289^Marduk Blackpool^0.02^0^k
807|Imbued Plate Vambraces|dwx|||||d^230^Plugger Spazzring^0.2^0^k~d^289^Marduk Blackpool^0.02^0^k
80g|Hyperion Armor|rwx|r||||d^249^Onyxia^0.83^1^k
80h|Hyperion Greaves|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
80i|Hyperion Gauntlets|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
80j|Hyperion Girdle|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
80k|Hyperion Helm|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
80l|Hyperion Legplates|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
80m|Hyperion Pauldrons|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
80n|Hyperion Vambraces|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
80v|Blackened Defias Armor|d|||||d^36^Edwin VanCleef^20^0^k
80w|Blackened Defias Leggings|d|||||d^36^^3^0^k
80x|Blackened Defias Gloves|w|||||w^0^0^k
80y|Blackened Defias Boots|d|||||d^36^^3^0^k
80z|Blackened Defias Belt|d|||||d^36^Captain Greenskin^30^0^k
810|Durable Belt|dwx|r||||d^34^Kam Deepfury^0.01^0^k
811|Bandit Shoulders|wx|||||o^Solid Chest^0.9^k~o^Solid Chest^0.64^k
812|Scaled Leather Headband|Rwx|sr||||m^1053^Dark Iron Tunneler^0^s~R^1037^Dragonmaw Battlemaster^0.46^k
813|Raider's Shoulderpads|wx|s||||o^Solid Chest^0.9^k~o^Solid Chest^0.64^k
814|Banded Helm|Rx|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
815|Banded Boots|Rx|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
816|Leggings of the Fang|d|||||d^43^Lord Cobrahn^20^0^k
817|Footpads of the Fang|d|||||d^43^Lord Serpentis^25^0^k
818|Belt of the Fang|w|||||m^3671^Lady Anacondra^10^k
819|Gloves of the Fang|w|||||w^0^0^k
81e|Glimmering Mithril Insignia|q|||||q^3321^Did You Lose This?^40^^k
81h|Rough Copper Vest|c|s||||c^Blacksmithing^1^12260^f
82l|Shadowy Bracers|q|||||q^3379^Shadoweaver^46^^k
82m|Shadowy Belt|q|||||q^3385^The Undermarket^46^^k
83q|Spellpower Goggles Xtreme|c|||||c^Engineering^225^12615^f
83w|Mithril Blunderbuss|c|||||c^Engineering^205^12595^f
83y|Mithril Heavy-bore Rifle|c|||||c^Engineering^220^12614^f
846|Parachute Cloak|c|||||c^Engineering^225^12616^f
84u|Goblin Mining Helmet|c|||||c^Engineering^205^12717^f
84x|Gnomish Goggles|c|||||c^Engineering^210^12897^f
851|Rancher's Trousers|q|s|a|||q^314^Protecting the Herd^6^a^s
852|Wooly Mittens|q|s|a|||q^312^Tundra MacGrann's Stolen Stash^7^a^s
855|Foreman Vest|w|||||w^0^0^k
856|Foreman Pants|w|||||w^0^0^k
85n|Ebony Boneclub|dw|||||d^129^Withered Warrior^0.02^0^k~d^129^Withered Reaver^0.02^0^k
85p|Boneslasher|dw|||||d^129^Withered Warrior^0.02^0^k~d^129^Withered Reaver^0.02^0^k
85u|Thoughtcast Boots|dw|||||d^129^Withered Warrior^0.02^0^k~d^129^Withered Reaver^0.02^0^k
85y|Briar Tredders|dw|||||d^129^Withered Warrior^0.02^0^k~d^129^Withered Reaver^0.02^0^k
860|Stormgale Fists|dw|||||d^129^Withered Warrior^0.02^0^k~d^129^Withered Reaver^0.02^0^k
87f|Painted Chain Leggings|q||h|||q^3376^Break Sharptusk!^3^h^k
87g|Nomadic Gloves|q||h|6171||q^3376^Break Sharptusk!^3^h^k
87h|Brewer's Gloves|q|s|h|||q^1358^Sample for Helbrim^10^h^s
87i|Long Draping Cape|q||h|5610||q^1358^Sample for Helbrim^10^h^s
87w|Will of the Mountain Giant|q||h|||q^3129^Weapons of Spirit^40^h^k
87x|Trailblazer Boots|q||h|||q^3514^Horde Presence^15^h^k
87y|Jutebraid Gloves|q||h|||q^3514^Horde Presence^15^h^k
87z|Sedgeweed Britches|q||a|||q^3522^Iverron's Antidote^2^a^k
880|Barkmail Vest|q||a|3273||q^3522^Iverron's Antidote^2^a^k
881|Talbar Mantle|q|s||||q^3369^In Nightmares^15^h^s~q^3370^In Nightmares^15^a^s
882|Quagmire Galoshes|q|s||||q^3369^In Nightmares^15^h^s~q^3370^In Nightmares^15^a^s
883|Shard of the Splithooves|q|||||q^2701^Heroes of Old^45^^k
88u|Aegis of Battle|q||h|||q^2938^Venom to the Undercity^40^h^k
894|Enchanted Azsharite Felbane Sword|q|||||q^3625^Enchanted Azsharite Fel Weaponry^45^^k
895|Enchanted Azsharite Felbane Dagger|q|||||q^3625^Enchanted Azsharite Fel Weaponry^45^^k
896|Enchanted Azsharite Felbane Staff|q|||||q^3625^Enchanted Azsharite Fel Weaponry^45^^k
898|Encarmine Boots|q||h|||q^1172^The Brood of Onyxia^38^h^k
899|Boots of Zua'tec|q||h|||q^1172^The Brood of Onyxia^38^h^k
89a|Enormous Ogre Boots|q||h|||q^1166^Overlord Mok'Morokk's Concern^38^h^k
89b|Fiendish Skiv|q||h|||q^1173^Challenge Overlord Mok'Morokk^38^h^k
89c|Chillnail Splinter|q||h|||q^1173^Challenge Overlord Mok'Morokk^38^h^k
89d|Firwillow Wristbands|q||a|||q^2972^Doling Justice^38^a^k
89e|Nightscale Girdle|q||a|||q^2972^Doling Justice^38^a^k
89f|Steelsmith Greaves|q||a|||q^3461^Return to Tymor^45^a^k
89g|Skullspell Orb|q||a|||q^3461^Return to Tymor^45^a^k
89h|Pyrestone Orb|q||h|||q^3507^Betrayed^44^h^k
8ab|Ring of Fortitude|q||a|11869||q^3566^Rise, Obsidion!^45^a^k
8ac|Centurion Legplates|q||a|||q^3566^Rise, Obsidion!^45^a^k
8ad|Lordrec Helmet|q||a|||q^3566^Rise, Obsidion!^45^a^k
8ae|Dragonflight Leggings|q|||||q^3463^Set Them Ablaze!^40^^k
8af|Drakefire Headguard|q|||||q^3463^Set Them Ablaze!^40^^k
8ag|Axe of the Ebon Drake|q|||||q^3463^Set Them Ablaze!^40^^k
8ah|Kaylari Shoulders|q||a|||q^3378^Prayer to Elune^40^a^k
8ai|Runesteel Vambraces|q||a|||q^3378^Prayer to Elune^40^a^k
8aj|Teacher's Sash|q||a|||q^1364^Mazen's Behest^37^a^k
8ak|Wanderlust Boots|q||a|||q^1364^Mazen's Behest^37^a^k
8ax|Coldrage Dagger|d|||||d^129^Amnennar the Coldbringer^20^0^k
8ay|Robes of the Lich|d|||||d^129^Amnennar the Coldbringer^20^0^k
8az|Icemetal Barbute|d|||||d^129^Amnennar the Coldbringer^20^0^k
8b0|Deathchill Armor|d|||||d^129^Amnennar the Coldbringer^20^0^k
8b1|Bonefingers|d|||||d^129^Amnennar the Coldbringer^20^0^k
8b4|Boar Champion's Belt|d|||||d^129^Ragglesnout^40^0^k
8b5|Glowing Eye of Mordresh|d|||||d^129^Mordresh Fire Eye^33.33^0^k
8b6|Mordresh's Lifeless Skull|d|||||d^129^Mordresh Fire Eye^33.33^0^k
8b7|Deathmage Sash|d|||||d^129^Mordresh Fire Eye^33.33^0^k
8b8|Glutton's Cleaver|d|||||d^129^Glutton^50^0^k
8ba|Fleshhide Shoulders|d|||||d^129^Glutton^50^0^k
8bb|Carapace of Tuten'kash|w|||||m^7355^Tuten'kash^33.33^k
8bc|Silky Spider Cape|w|||||m^7355^Tuten'kash^33.33^k
8bf|Demon's Blood|q|||||q^3628^You Are Rakh'likh, Demon^45^^k
8ck|Jackseed Belt|q|s|h|||q^3301^Mura Runetotem^10^h^s
8cl|Sower's Cloak|q||h|1270||q^3301^Mura Runetotem^10^h^s
8cq|Staff of Lore|q|||||q^3161^Gahz'ridian^43^^k
8fb|Apothecary Gloves|Qq|s|h|||q^862^Dig Rat Stew^15^h^s~q^962^Serpentbloom^14^h^s
8kw|Belgrom's Hammer|q||h|||q^3507^Betrayed^44^h^k
8kx|Darkwater Talwar|d|s||||d^48^Lady Sarevess^66.67^0^s
8mr|Stemleaf Bracers|q||a|6060||q^456^The Balance of Nature^1^a^k
8mt|Woodland Robes|q||a|||q^917^Webwood Egg^1^a^k
8mu|Viny Gloves|q||a|||q^459^The Woodland Protector^1^a^k
8mv|Farmer's Boots|q|s|a|||q^88^Princess Must Die!^6^a^s
8mw|Outfitter Gloves|q|s|a|||q^21^Skirmish at Echo Ridge^1^a^s
8mx|Blazewind Breastplate|q|||||q^717^Tremors of the Earth^40^a^k~q^793^Broken Alliances^40^h^k
8my|Prismscale Hauberk|q|||||q^717^Tremors of the Earth^40^a^k~q^793^Broken Alliances^40^h^k
8mz|Warforged Chestplate|q|||||q^717^Tremors of the Earth^40^a^k~q^793^Broken Alliances^40^h^k
8n0|Mindburst Medallion|q|||||q^717^Tremors of the Earth^40^a^k~q^793^Broken Alliances^40^h^k
8nx|Brightscale Girdle|q||a|||q^1031^The Branch of Cenarius^26^a^k
8ov|Nether Force Wand|q|||||q^1952^Mage's Wand^30^^k
8ox|Cragwood Maul|q||h|||q^1383^Nothing But The Truth^37^h^k
8pj|Lesser Magic Wand|c|s||||c^Enchanting^10^14293^f
8pk|Greater Magic Wand|c|s||||c^Enchanting^70^14807^f
8pl|Lesser Mystic Wand|c|||||c^Enchanting^155^14809^f
8py|Uther's Strength|wx|||||m^15740^Colossus of Zora^10^k~m^15740^Colossus of Zora^10^k
8pz|Fine Shortbow|v|s||||v^5122^Skolmin Goldfury^1455^71.7^66.1^3184^^s
8q0|Fine Longbow|v|s||||v^9553^Nadia Vernon^1421^45^39.4^4861^^s
8q1|Dense Shortbow|v|||||v^3951^Bhaldaran Ravenshade^1440^50.2^67.2^25814^^k
8q2|Sturdy Recurve|v|s||||v^1298^Frederick Stover^1453^58.6^69^19467^^s
8q3|Massive Longbow|v|s||||v^5122^Skolmin Goldfury^1455^71.7^66.1^67952^^s
8q4|Sylvan Shortbow|v|||||v^12029^Narianna^1450^53.3^42.7^78828^^k
8q6|Flameseer Mantle|d|||||d^70^Galgann Firehammer^20^0^k
8q7|Emberscale Cape|d|||||d^70^Galgann Firehammer^40^0^k
8ul|Bloodband Bracers|q|||||q^614^The Captain's Chest^35^a^k~q^8551^The Captain's Chest^40^^k
8vi|Loreskin Shoulders|q||h|||q^864^Return to Apothecary Zinge^38^h^k
8yc|Dark Iron Plate|c|||||c^Blacksmithing^260^15296^f
8yd|Dark Iron Shoulders|c|||||c^Blacksmithing^255^15295^f
8ye|Dark Iron Mail|c|||||c^Blacksmithing^245^15293^f
8yf|Dark Iron Sunderer|c|||||c^Blacksmithing^250^15294^f
8yg|Dark Iron Pulverizer|c|||||c^Blacksmithing^240^15292^f
953|Battered Cloak|q||h|3070||q^364^The Mindless Ones^1^h^s
954|Flax Belt|q|s|h|||q^3902^Scavenging Deathknell^2^h^s
956|Short Duskbat Cape|q||h|6185||q^3902^Scavenging Deathknell^2^h^s
957|Scavenger Tunic|q||h|60||q^3901^Rattling the Rattlecages^1^h^s
958|Roamer's Leggings|q|s|h|||q^3901^Rattling the Rattlecages^1^h^s
959|Rambling Boots|q|s|h|||q^3281^Stolen Silver^9^h^s
95a|Samophlange Screwdriver|q||h|||q^3924^Samophlange Manual^10^h^k
95b|Tork Wrench|q||h|||q^3924^Samophlange Manual^10^h^k
95c|Ceremonial Elven Blade|q||a|||q^4266^A Hero's Welcome^40^a^k
95d|Sanctimonial Rod|q||a|||q^4266^A Hero's Welcome^40^a^k
95e|Battlehard Cape|q||h|||q^2976^A Grim Discovery^37^h^k
95f|Jademoon Orb|q||h|||q^2976^A Grim Discovery^37^h^k
95g|Charged Lightning Rod|q|||||q^4450^Ledger from Tanaris^43^^k
95h|Girdle of Reprisal|q|||||q^4450^Ledger from Tanaris^43^^k
95i|White Bone Band|q||h|||q^4300^Bone-Bladed Weapons^48^h^k
95j|White Bone Shredder|q||h|||q^4300^Bone-Bladed Weapons^48^h^k
95k|White Bone Spear|q||h|||q^4300^Bone-Bladed Weapons^48^h^k
95n|Maddening Gauntlets|q||a|||q^3825^Ogre Head On A Stick = Party^48^a^k
95p|Sha'ni's Ring|q||h|10739||q^3822^Krom'Grul^48^h^k
95q|Oblivion Orb|q|||||q^4510^Calm Before the Storm^50^a^k~q^4511^Calm Before the Storm^50^h^k
95r|Snarkshaw Spaulders|q|||||q^4510^Calm Before the Storm^50^a^k~q^4511^Calm Before the Storm^50^h^k
95s|Eschewal Greaves|q|||||q^4510^Calm Before the Storm^50^a^k~q^4511^Calm Before the Storm^50^h^k
95t|Ethereal Mist Cape|q||a|||q^4261^Ancient Spirit^49^a^k
95u|Clouddrift Mantle|q||a|||q^4261^Ancient Spirit^49^a^k
95v|Breezecloud Bracers|q||a|||q^4906^Further Corruption^49^a^k
95w|Plainstalker Tunic|q|||||q^4292^The Bait for Lar'korwi^48^^k
962|Outrider Leggings|q|||||q^4292^The Bait for Lar'korwi^48^^k
964|Moonlit Amice|q||a|||q^1440^Return to Vahlarriel^30^a^k
968|Quintis' Research Gloves|q||a|||q^3791^The Mystery of Morrowgrain^47^a^k
969|Bark Iron Pauldrons|q||a|||q^3791^The Mystery of Morrowgrain^47^a^k
96m|Linken's Sword of Mastery|q|||||q^3962^It's Dangerous to Go Alone^47^^k
96o|Spirit of Aquementas|q|||||q^3962^It's Dangerous to Go Alone^47^^k
96q|Beastsmasher|q|||||q^4301^The Mighty U'cha^50^^k
96r|Beastslayer|q|||||q^4301^The Mighty U'cha^50^^k
96s|Archaeologist's Quarry Boots|q|||||q^3882^Roll the Bones^49^^k
96t|Excavator's Utility Belt|q|||||q^3882^Roll the Bones^49^^k
96u|Bejeweled Legguards|q|||||q^4491^A Little Help From My Friends^50^^k
96v|Treetop Leggings|q|||||q^4491^A Little Help From My Friends^50^^k
96x|Clayridge Helm|q|||||q^4491^A Little Help From My Friends^50^^k
96z|Shizzle's Drizzle Blocker|q|||||q^4503^Shizzle's Flyer^49^^k
970|Shizzle's Muzzle|q|||||q^4503^Shizzle's Flyer^49^^k
971|Shizzle's Nozzle Wiper|q|||||q^4503^Shizzle's Flyer^49^^k
972|Grotslab Gloves|q|||||q^4501^Beware of Pterrordax^49^^k
973|Cragplate Greaves|q|||||q^4501^Beware of Pterrordax^49^^k
97k|Relic Hunter Belt|q|s|a|||q^741^The Absent Minded Prospector^15^a^s
99u|Conservator Helm|q||a|||q^4242^Abandoned Hope^48^a^k
99x|Shieldplate Sabatons|q||a|||q^4242^Abandoned Hope^48^a^k
9ah|Windshear Leggings|q||a|||q^4242^Abandoned Hope^48^a^k
9aq|Hazecover Boots|q||a|||q^4513^A Little Slime Goes a Long Way^48^a^k
9ar|Brazen Gauntlets|q||a|||q^4513^A Little Slime Goes a Long Way^48^a^k
9as|Ring of the Moon|dwx|s||||m^580^Redridge Drudger^0^s~d^36^Rhahk'Zor^0.07^0^k
9at|Volcanic Rock Ring|dwx|||||d^36^Rhahk'Zor^0.07^0^k~d^36^Edwin VanCleef^0.02^0^k
9au|Demon Band|dwx|||||d^36^Edwin VanCleef^0.02^0^k~d^34^Targorr the Dread^0.01^0^k
9av|Stardust Band|dwx|||||d^349^Princess Theradras^0.19^0^k
9aw|Ring of the Heavens|dwx|||||d^230^Plugger Spazzring^0.2^0^k
9ax|Dragonscale Band|dwx|||||d^289^Jandice Barov^0.47^0^k~d^289^Marduk Blackpool^0.02^0^k
9ay|Demonic Bone Ring|drwx|||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
9c6|Ring of the Aristocrat|q||a|||q^3701^The Smoldering Ruins of Thaurissan^50^a^k
9g7|Broad Bladed Knife|v|||||v^225^Gavin Gnarltree^1431^73.7^48.9^28372^^k
9g8|Daring Dirk|v|||||v^14846^Lhara^1412^37.4^44.9^32029^^k
9g9|Merciless Axe|v|s||||v^3019^Delgo Ragetotem^1456^53.7^57.1^30195^^s
9ga|Midnight Axe|v|r||||v^2483^Jaquilina Dramet^1436^87.9^95.2^40341^^k
9gb|Big Stick|v|||||v^14846^Lhara^1412^37.4^44.9^53896^^k
9gc|Staff of Protection|v|||||v^2482^Zarena Cromwind^1434^28.3^75.5^63095^^k
9gd|Brilliant Red Cloak|v|||||v^11874^Masat T'andr^1435^26.5^31.5^17728^^k
9ge|Well Oiled Cloak|v|||||v^12023^Kharedon^1450^56.6^29.9^22416^^k
9gf|Pale Leggings|v||h|||v^984^Thralosh^1435^45.1^51.4^34987^h^k
9gg|Cindercloth Leggings|v|||||v^4175^Vinasia^1457^60.7^72.5^43828^^k
9gj|Glinting Steel Dagger|c|||||c^Blacksmithing^180^15972^f
9gk|Searing Golden Blade|c|||||c^Blacksmithing^165^15973^f
9hj|Leggings of the People's Militia|q|s|a|||q^153^Red Leather Bandanas^10^a^s
9hk|Spark of the People's Militia|q||a|||q^14^The People's Militia^9^a^k
9hn|Netted Gloves|q||h|||q^374^Proof of Demise^5^h^k
9kl|Thorium Armor|c|||||c^Blacksmithing^225^16642^f
9km|Thorium Belt|c|||||c^Blacksmithing^225^16643^f
9kq|Thorium Helm|c|||||c^Blacksmithing^255^16653^f
9l2|Imperial Plate Chest|c|||||c^Blacksmithing^275^16663^f
9l4|Imperial Plate Belt|c|||||c^Blacksmithing^240^16647^f
9l5|Imperial Plate Bracers|c|||||c^Blacksmithing^245^16649^f
9l7|Imperial Plate Helm|c|||||c^Blacksmithing^270^16658^f
9l8|Imperial Plate Shoulders|c|||||c^Blacksmithing^240^16646^f
9l9|Imperial Plate Leggings|c|||||c^Blacksmithing^280^16730^f
9nu|Bingles' Flying Gloves|q||a|||q^2038^Bingles' Missing Supplies^12^a^k
9pk|Grand Marshal's Longsword|p||a|16345||p^14^a^f
9qi|Enchanted Thorium Breastplate|c|||||c^Blacksmithing^300^16745^f
9qj|Enchanted Thorium Leggings|c|||||c^Blacksmithing^300^16744^f
9qk|Enchanted Thorium Helm|c|||||c^Blacksmithing^300^16742^f
9qo|Wildthorn Mail|c|||||c^Leatherworking^245^16650^f
9qp|Dawnbringer Shoulders|c|||||c^Blacksmithing^265^16660^f
9qs|Demon Forged Breastplate|c|||||c^Blacksmithing^260^16667^f
9qv|Fiery Plate Gauntlets|cq|||||c^Blacksmithing^265^16655^f~q^5124^Fiery Plate Gauntlets^55^^k
9qw|Storm Gauntlets|c|||||c^Leatherworking^270^16661^f
9qx|Whitesoul Helm|c|||||c^Blacksmithing^290^16724^f
9r3|Stronghold Gauntlets|c|||||c^Blacksmithing^300^16741^f
9r4|Lionheart Helm|c|||||c^Blacksmithing^300^16729^f
9uk|Thorium Greatsword|c|||||c^Blacksmithing^260^16960^f
9up|Bleakwood Hew|c|||||c^Blacksmithing^270^16965^f
9us|Inlaid Thorium Hammer|c|||||c^Blacksmithing^270^16967^f
9ut|Ornate Thorium Handaxe|c|||||c^Blacksmithing^250^16969^f
9uu|Dawn's Edge|c|||||c^Blacksmithing^250^16970^f
9uw|Enchanted Battlehammer|c|||||c^Blacksmithing^255^16973^f
9ux|Blazing Rapier|c|||||c^Blacksmithing^255^16978^f
9v1|Serenity|c|||||c^Blacksmithing^260^16983^f
9v2|Corruption|c|||||c^Blacksmithing^265^16985^f
9v3|Heartseeker|c|||||c^Blacksmithing^300^16995^f
9v4|Arcanite Reaper|c|||||c^Blacksmithing^300^16994^f
9vc|Volcanic Hammer|c|r||||c^Blacksmithing^265^16984^f
9ve|Masterwork Stormhammer|c|||||c^Blacksmithing^300^16993^f
9vf|Blood Talon|c|||||c^Blacksmithing^325^16986^f
9vg|Hammer of the Titans|c|||||c^Blacksmithing^300^16988^f
9vh|Frostguard|c|||||c^Blacksmithing^300^16992^f
9vi|Annihilator|c|||||c^Blacksmithing^300^16991^f
9vm|Darkspear|c|||||c^Blacksmithing^325^16987^f
a0e|The Black Knight|x|||||x^4634^Iron Lockbox^k
a0f|Prospector Axe|w|||||w^0^0^k
a0g|Ironpatch Blade|w|||||w^0^0^k
a0h|Magefist Gloves|w|||||w^0^0^k
a0i|Stormbringer Belt|w|||||w^0^0^k
a0j|Firebane Cloak|w|s||||m^3877^Wailing Guardsman^0^s
a0m|Silver-linked Footguards|w|||||w^0^0^k
a0n|Rakzur Club|w|||||w^0^0^k
a0o|Skycaller|w|||||w^0^0^k
a0p|Ring of Defense|w|U||||w^0^0^k
a0r|Darkweave Breeches|w|||||w^0^0^k
a0s|Starsight Tunic|w|||||w^0^0^k
a0t|Gargoyle's Bite|w|s||||m^2354^Vicious Gray Bear^4.76^s
a0u|Razor's Edge|w|||||w^0^0^k
a0y|Thorbia's Gauntlets|w|||||w^0^0^k
a10|Band of Purification|wx|sU||||m^202^Skeletal Horror^0^s
a11|Redbeard Crest|wx|||||x^4632^Ornate Bronze Lockbox^k~w^0^0^k
a12|Magician's Mantle|w|||||w^0^0^k
a13|Drakewing Bands|w|||||w^0^0^k
a14|Staff of Hale Magefire|rw|||||d^249^Onyxia^1.27^1^k
a15|Maiden's Circle|rw|||||d^249^Onyxia^1.27^1^k
a16|Lady Alizabeth's Pendant|rwx|||||d^249^Onyxia^1.27^1^k
a17|Lord Alexander's Battle Axe|w|||||m^15740^Colossus of Zora^10^k~m^15740^Colossus of Zora^10^k
a18|Torch of Austen|rw|||||d^249^Onyxia^1.27^1^k
a19|Amy's Blanket|w|||||w^0^0^k
a1a|Mass of McGowan|rw|||||d^249^Onyxia^1.27^1^k
a1b|Mageflame Cloak|rw|||||d^249^Onyxia^1.27^1^k
a1c|Dalewind Trousers|wx|||||m^15740^Colossus of Zora^10^k~m^15740^Colossus of Zora^10^k
a1e|Dreamsinger Legguards|wx|||||x^4633^Heavy Bronze Lockbox^k~x^21510^Ahn'Qiraj War Effort Supplies^k
a1f|Silver-lined Belt|w|||||w^0^0^k
a1g|Yorgen Bracers|w|s||||m^3377^Bael'dun Rifleman^1.37^s
a1h|Elder Wizard's Mantle|w|||||m^15740^Colossus of Zora^10^k~m^15740^Colossus of Zora^10^k
a1i|Axe of Rin'ji|x|||||x^5758^Mithril Lockbox^k
a1j|Serathil|rw|||||d^249^Onyxia^1.27^1^k
a1k|Killmaim|wx|||||x^4633^Heavy Bronze Lockbox^k~w^0^0^k
a1l|Hellslayer Battle Axe|w|||||w^0^0^k
a1m|Executioner's Cleaver|w|||||w^0^0^k
a1n|Harpyclaw Short Bow|x|||||x^4634^Iron Lockbox^k
a1o|Skystriker Bow|wx|||||x^6827^Box of Supplies^k~w^0^0^k
a1p|Needle Threader|w|||||w^0^0^k
a1q|Gryphonwing Long Bow|x|||||x^5758^Mithril Lockbox^k
a1r|Eaglehorn Long Bow|w|||||w^0^0^k
a1s|Beazel's Basher|wx|||||x^4633^Heavy Bronze Lockbox^k~w^0^0^k
a1t|Deadwood Sledge|wx|||||x^6827^Box of Supplies^k~w^0^0^k
a1u|Heaven's Light|w|||||w^0^0^k
a1v|Bonesnapper|x|||||x^5758^Mithril Lockbox^k~x^10752^Emerald Encrusted Chest^k
a1w|Bludstone Hammer|w|||||w^0^0^k
a1x|Umbral Crystal|wx|||||x^4637^Steel Lockbox^k~x^21512^Ahn'Qiraj War Effort Supplies^k
a1z|Orb of Mistmantle|wx|||||x^4633^Heavy Bronze Lockbox^k~w^0^0^k
a20|Sword of Corruption|wx|||||x^4633^Heavy Bronze Lockbox^k~x^13875^Ironbound Locked Chest^k
a21|Zealot Blade|wx|||||x^4634^Iron Lockbox^k~w^0^0^k
a22|Speedsteel Rapier|w|||||w^0^0^k
a23|Serpent Slicer|w|||||w^0^0^k
a24|Assassination Blade|rw|||||d^249^Onyxia^1.27^1^k
a25|Crystalpine Stinger|x|||||x^4634^Iron Lockbox^k
a26|Swiftwind|w|||||w^0^0^k
a27|Skull Splitting Crossbow|w|||||w^0^0^k
a28|Heartseeking Crossbow|w|||||m^15740^Colossus of Zora^10^k~m^15740^Colossus of Zora^10^k
a29|Guardian Blade|w|||||w^0^0^k
a2a|Sword of the Magistrate|w|||||w^0^0^k
a2b|Blade of the Titans|w|||||w^0^0^k
a2c|Demonslayer|wx|||||x^5759^Thorium Lockbox^k~w^0^0^k
a2d|Viscous Hammer|wx|||||x^4634^Iron Lockbox^k~x^6827^Box of Supplies^k
a2e|Blanchard's Stout|rw|||||d^249^Onyxia^1.27^1^k~m^15816^Qiraji Major He'al-ie^4^k
a2f|Twig of the World Tree|rw|||||d^249^Onyxia^1.27^1^k
a2g|Looming Gavel|x|s||||x^4634^Iron Lockbox^k~x^4637^Steel Lockbox^k
a2h|Deanship Claymore|w|||||w^0^0^k
a2j|Witchfury|w|||||w^0^0^k
a2k|Warmonger|wx|||||x^5758^Mithril Lockbox^k~w^0^0^k
a2l|Doombringer|rwx|||||d^249^Onyxia^1.27^1^k
a2m|Grim Reaper|w|||||w^0^0^k
a2n|Bonechewer|wx|||||x^4638^Reinforced Steel Lockbox^k~w^0^0^k
a2o|Frenzied Striker|wx|||||x^5759^Thorium Lockbox^k~w^0^0^k
a2p|Bloodpike|wx|||||x^4633^Heavy Bronze Lockbox^k~w^0^0^k
a2q|Khoo's Point|w|||||w^0^0^k
a2r|Stoneraven|wx|||||x^5758^Mithril Lockbox^k~w^0^0^k
a2s|The Needler|rw|||||d^249^Onyxia^1.27^1^k
a2u|Thunderwood|w|||||w^0^0^k
a2v|Starfaller|wx|||||x^4634^Iron Lockbox^k~w^0^0^k
a2w|Jaina's Firestarter|wx|||||x^4637^Steel Lockbox^k~w^0^0^k
a2x|Wand of Allistarj|rw|||||d^249^Onyxia^1.27^1^k~m^15816^Qiraji Major He'al-ie^4^k
a2y|Wyrmslayer Spaulders|wx|||||m^15740^Colossus of Zora^10^k~m^15740^Colossus of Zora^10^k
a2z|Hydralick Armor|wx|||||m^15740^Colossus of Zora^10^k~m^15740^Colossus of Zora^10^k
a30|Obsidian Greaves|wx|||||x^4637^Steel Lockbox^k~w^0^0^k
a32|Sapphiron's Scale Boots|rw|||||d^249^Onyxia^1.27^1^k
a33|Plated Fist of Hakoo|w|||||w^0^0^k
a34|Stonegrip Gauntlets|rwx|||||d^249^Onyxia^1.27^1^k
a35|Mugthol's Helm|wx|||||m^15740^Colossus of Zora^10^k~m^15740^Colossus of Zora^10^k
a36|Golem Shard Leggings|wx|||||x^10752^Emerald Encrusted Chest^k~w^0^0^k
a37|Direwing Legguards|rwx|||||d^249^Onyxia^1.27^1^k
a38|Giantslayer Bracers|w|||||w^0^0^k
a39|Girdle of Uther|rwx|||||d^249^Onyxia^1.27^1^k
a3b|Shield of Thorsen|wx|||||x^4633^Heavy Bronze Lockbox^k~w^0^0^k
a3d|Skullance Shield|wx|||||x^4636^Strong Iron Lockbox^k~x^6827^Box of Supplies^k
a3e|Mountainside Buckler|wx|||||x^4638^Reinforced Steel Lockbox^k~x^10752^Emerald Encrusted Chest^k
a3f|Garrett Family Crest|rw|||||d^249^Onyxia^1.27^1^k
a3g|Kaleidoscope Chain|wx|||||x^4634^Iron Lockbox^k~x^6827^Box of Supplies^k
a3h|Horizon Choker|wx|||||m^15740^Colossus of Zora^10^k~m^15740^Colossus of Zora^10^k
a3j|River Pride Choker|wx|||||x^4634^Iron Lockbox^k~w^0^0^k
a3k|Gazlowe's Charm|wx|||||x^4637^Steel Lockbox^k~w^0^0^k
a3l|Skibi's Pendant|wx|||||x^4638^Reinforced Steel Lockbox^k~w^0^0^k
a3n|Medallion of Grand Marshal Morris|rw|||||d^249^Onyxia^1.27^1^k
a3p|Blush Ember Ring|wx|U||||x^4636^Strong Iron Lockbox^k~x^6827^Box of Supplies^k
a3r|Assault Band|wx|U||||x^4637^Steel Lockbox^k~w^0^0^k
a3s|Band of the Hierophant|rwx|U||||d^249^Onyxia^1.27^1^k
a3t|Thunderbrow Ring|w|U||||w^0^0^k
a3v|Moccasins of the White Hare|w|||||w^0^0^k
a3w|Furen's Boots|wx|||||x^4637^Steel Lockbox^k~w^0^0^k
a3x|Wolfrunner Shoes|wx|||||x^5759^Thorium Lockbox^k~w^0^0^k
a3y|Cassandra's Grace|wx|||||x^10752^Emerald Encrusted Chest^k~w^0^0^k
a3z|Pads of the Venom Spider|wx|||||x^4636^Strong Iron Lockbox^k~x^6827^Box of Supplies^k
a41|Sutarn's Ring|wx|||||x^6827^Box of Supplies^k~w^0^0^k
a42|Glowing Magical Bracelets|x|||||x^4634^Iron Lockbox^k
a43|Magiskull Cuffs|rwx|||||d^249^Onyxia^1.27^1^k
a44|Tigerstrike Mantle|w|||||w^0^0^k
a45|Blackflame Cape|wx|||||x^4638^Reinforced Steel Lockbox^k~x^10752^Emerald Encrusted Chest^k
a46|Wolffear Harness|wx|||||x^4636^Strong Iron Lockbox^k~x^6827^Box of Supplies^k
a47|Sandals of the Insurgent|wx|||||m^15740^Colossus of Zora^10^k~m^15740^Colossus of Zora^10^k
a48|Winged Helm|wx|||||x^10752^Emerald Encrusted Chest^k~w^0^0^k
a49|Feathermoon Headdress|rwx|||||d^249^Onyxia^1.27^1^k~m^15818^Lieutenant General Nokhor^3.57^k
a4a|Troll's Bane Leggings|wx|||||x^4633^Heavy Bronze Lockbox^k~w^0^0^k
a4b|Sheepshear Mantle|wx|||||x^4637^Steel Lockbox^k~w^0^0^k
a4c|Spaulders of the Unseen|rwx|||||d^249^Onyxia^1.27^1^k
a4d|Ogron's Sash|wx|||||x^4637^Steel Lockbox^k~x^6354^Small Locked Chest^k
a4e|Serpentine Sash|rwx|||||d^249^Onyxia^1.27^1^k
a4f|Enchanted Kodo Bracers|wx|||||x^4636^Strong Iron Lockbox^k~x^6827^Box of Supplies^k
a4g|Deepfury Bracers|wx|||||m^15740^Colossus of Zora^10^k~m^15740^Colossus of Zora^10^k
a4h|Wing of the Whelpling|wx|||||x^4636^Strong Iron Lockbox^k~x^6827^Box of Supplies^k
a4i|Dark Phantom Cape|x|||||x^5758^Mithril Lockbox^k~x^10752^Emerald Encrusted Chest^k
a4j|Dreamwalker Armor|rw|||||d^249^Onyxia^1.27^1^k
a4k|Ravasaur Scale Boots|wx|||||x^4634^Iron Lockbox^k~x^6827^Box of Supplies^k
a4l|Elven Chain Boots|rwx|||||d^249^Onyxia^1.27^1^k
a4m|Battlecaller Gauntlets|wx|||||m^15740^Colossus of Zora^10^k~m^15740^Colossus of Zora^10^k
a4n|Frostreaver Crown|x|||||x^4634^Iron Lockbox^k
a4o|High Bergg Helm|wx|||||x^10752^Emerald Encrusted Chest^k~w^0^0^k
a4p|Firemane Leggings|wx|||||x^4636^Strong Iron Lockbox^k~x^6827^Box of Supplies^k
a4q|Windrunner Legguards|wx|||||m^15740^Colossus of Zora^10^k~m^15740^Colossus of Zora^10^k
a4r|Sparkleshell Mantle|wx|||||x^4633^Heavy Bronze Lockbox^k~x^21510^Ahn'Qiraj War Effort Supplies^k
a4s|Skeletal Shoulders|w|||||w^0^0^k
a4t|Drakesfire Epaulets|rwx|||||d^249^Onyxia^1.27^1^k
a4u|Belt of the Gladiator|wx|||||x^10752^Emerald Encrusted Chest^k~w^0^0^k
a4v|Lordly Armguards|rwx|||||d^249^Onyxia^1.27^1^k
a4w|Lil Timmy's Peashooter|w|||||w^0^0^k
a4x|Ironweaver|wx|||||x^4634^Iron Lockbox^k~w^0^0^k
a4y|The Silencer|w|||||w^0^0^k
a4z|Guttbuster|rw|||||d^249^Onyxia^1.27^1^k~m^15816^Qiraji Major He'al-ie^4^k
a54|Serenity Belt|wx|||||m^15740^Colossus of Zora^10^k~m^15740^Colossus of Zora^10^k
a55|Enormous Ogre Belt|wx|||||x^10569^Hoard of the Black Dragonflight^k~x^19297^Lesser Darkmoon Prize^k
a56|Shell Launcher Shotgun|rw|||||d^249^Onyxia^1.27^1^k
a6n|Crushridge Bindings|w|||||w^0^0^k
a7x|Kresh's Back|d|||||d^43^Kresh^10^0^k
aea|Farmer Dalson's Shotgun|q|||||q^5060^Locked Away^52^^k
aeb|Dalson Family Wedding Ring|q|||||q^5060^Locked Away^52^^k
af3|Alchemist's Stone|c|||||c^Alchemy^275^17632^f
aow|Runecloth Belt|c|||||c^Tailoring^255^18402^f
aox|Runecloth Tunic|c|||||c^Tailoring^215^18407^f
ap0|Runecloth Cloak|c|||||c^Tailoring^220^18409^f
ap3|Runecloth Gloves|c|||||c^Tailoring^230^18417^f
ap5|Runecloth Pants|c|||||c^Tailoring^240^18438^f
ap6|Runecloth Headband|c|||||c^Tailoring^250^18444^f
ap8|Frostweave Robe|c|||||c^Tailoring^210^18404^f
ap9|Frostweave Tunic|c|||||c^Tailoring^210^18403^f
apa|Frostweave Gloves|c|||||c^Tailoring^215^18411^f
apb|Frostweave Pants|c|||||c^Tailoring^235^18424^f
atl|Mystic's Belt|dw|||||d^389^Oggleflint^0.01^0^k~d^389^Jergosh the Invoker^0.01^0^k
au2|Cindercloth Vest|c|||||c^Tailoring^215^18408^f
au3|Cindercloth Gloves|c|||||c^Tailoring^225^18412^f
au4|Cindercloth Cloak|c|||||c^Tailoring^230^18418^f
au5|Cindercloth Pants|c|||||c^Tailoring^235^18434^f
ava|Beaded Sandals|w|s||||m^256092^NPC 256092^2.38^s
avb|Beaded Cuffs|w|||||w^5^10^k
avd|Beaded Gloves|w|||||w^5^14^k
ave|Beaded Britches|w|sr||||m^3130^Thunder Lizard^0^s
avf|Beaded Robe|w|sr||||m^3246^Fleeting Plainstrider^0^s
avh|Beaded Cord|w|s||||m^3131^Lightning Hide^4.17^s~m^254626^NPC 254626^3.03^s
avi|Beaded Wraps|w|r||||w^6^13^k
avj|Native Bands|w|s||||m^3272^Kolkar Wrangler^2.94^s~m^3415^Savannah Huntress^0^s
avk|Native Vest|dw|r||||d^389^Oggleflint^0.01^0^k~d^389^Jergosh the Invoker^0.01^0^k
avl|Native Pants|w|sr||||w^9^17^k
avm|Native Cloak|w|||||w^5^14^k
avn|Native Sash|w|s||||m^252820^NPC 252820^3.7^s
avo|Brightcloth Robe|c|||||c^Tailoring^225^18414^f
avq|Native Handwraps|w|||||w^8^15^k
avs|Brightcloth Pants|c|||||c^Tailoring^245^18439^f
avu|Felcloth Robe|c|||||c^Tailoring^260^18451^f
avv|Felcloth Pants|c|||||c^Tailoring^230^18419^f
avx|Native Robe|dw|r||||d^389^Oggleflint^0.01^0^k~d^389^Jergosh the Invoker^0.01^0^k
avy|Native Sandals|w|s||||m^2034^Feral Nightsaber^0^s~m^2164^Rabid Thistle Bear^0^s
avz|Felcloth Hood|c|||||c^Tailoring^245^18442^f
aw0|Felcloth Shoulders|c|||||c^Tailoring^265^18453^f
aw1|Aboriginal Sash|dw|r||||d^389^Oggleflint^0.01^0^k~d^389^Jergosh the Invoker^0.01^0^k
aw2|Aboriginal Footwraps|dw|sr||||m^3632^Deviate Creeper^0^s~d^389^Oggleflint^0.01^0^k
aw3|Aboriginal Bands|w|||||w^9^17^k
aw4|Aboriginal Cape|w|||||w^9^17^k
aw5|Aboriginal Gloves|dw|r||||d^389^Oggleflint^0.01^0^k~d^389^Jergosh the Invoker^0.01^0^k
aw7|Aboriginal Loincloth|dw|r||||d^389^Oggleflint^0.01^0^k~d^389^Jergosh the Invoker^0.01^0^k
awa|Ritual Bands|dw|r||||d^36^Rhahk'Zor^0.07^0^k~d^389^Oggleflint^0.01^0^k
awb|Ritual Cape|dw|sr||||m^11918^Gogger Stonepounder^0^s~d^389^Oggleflint^0.01^0^k
awc|Ritual Gloves|dw|r||||d^36^Rhahk'Zor^0.07^0^k~d^36^Edwin VanCleef^0.02^0^k
awe|Ritual Amice|dw|s||||m^4128^Hecklefang Stalker^3.23^s~d^34^Targorr the Dread^0.14^0^k
awh|Ritual Sandals|dw|sr||||d^36^Rhahk'Zor^0.07^0^k~d^36^Edwin VanCleef^0.02^0^k
awj|Ritual Belt|dw|r||||d^36^Rhahk'Zor^0.07^0^k~d^389^Oggleflint^0.01^0^k
awk|Wizardweave Leggings|c|||||c^Tailoring^230^18421^f
awm|Cloak of Fire|c|||||c^Tailoring^235^18422^f
awo|Robe of Winter Night|c|||||c^Tailoring^245^18436^f
awp|Mooncloth Leggings|c|||||c^Tailoring^245^18440^f
awq|Mooncloth Vest|c|||||c^Tailoring^270^18447^f
awr|Mooncloth Shoulders|c|||||c^Tailoring^275^18448^f
aws|Mooncloth Circlet|c|||||c^Tailoring^280^18452^f
awt|Ghostweave Vest|c|||||c^Tailoring^225^18416^f
aww|Ghostweave Pants|c|||||c^Tailoring^245^18441^f
awx|Cursed Felblade|d|||||d^389^Taragaman the Hungerer^20^0^k
awy|Gloves of Spell Mastery|cw|||||c^Tailoring^295^18454^f
awz|Cavedweller Bracers|d|||||d^389^Jergosh the Invoker^40^0^k
ax0|Crystalline Cuffs|d|s||||d^389^Taragaman the Hungerer^100^0^s
ax1|Subterranean Cape|d|s||||d^389^Taragaman the Hungerer^40^0^k
ax2|Robe of Evocation|d|s||||d^389^Jergosh the Invoker^100^0^s
ax3|Chanting Blade|d|||||d^389^Jergosh the Invoker^20^0^k
ax4|Robe of the Archmage|c|||||c^Tailoring^295^18457^f
ax5|Robe of the Void|c|||||c^Tailoring^295^18458^f
ax6|Truefaith Vestments|c|||||c^Tailoring^295^18456^f
ax9|Pagan Mantle|dw|||||d^34^Kam Deepfury^0.25^0^k~d^34^Hamhock^0.25^0^k
axc|Pagan Bands|dw|sr||||d^36^Rhahk'Zor^0.07^0^k~d^389^Oggleflint^0.01^0^k
axe|Pagan Mitts|dw|sr||||m^4805^Blackfathom Sea Witch^6.25^s~d^36^Edwin VanCleef^0.02^0^k
axg|Pagan Belt|dw|r||||d^36^Rhahk'Zor^0.07^0^k~d^36^Edwin VanCleef^0.02^0^k
axk|Buccaneer's Gloves|dw|sr||||m^48^Skeletal Warrior^0^s~d^36^Rhahk'Zor^0.07^0^k
axl|Aboriginal Shoulder Pads|w|||||w^15^25^k
axm|Buccaneer's Mantle|wx|s||||m^1178^Mo'grosh Ogre^0^s
axp|Buccaneer's Cord|dw|sr||||d^33^Commander Springvale^33.33^0^s
axu|Watcher's Cap|Rw|sr||||m^4119^Elder Cloud Serpent^5.88^s~R^14278^Ro'Bark^0.49^k
axy|Watcher's Mantle|dw|sr||||m^264083^NPC 264083^3.12^s~d^34^Hamhock^0.01^0^k
ay5|Raincaller Cap|R|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
ay6|Raincaller Vest|Rw|r||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
ay8|Raincaller Robes|Rw|r||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
ay9|Raincaller Pants|Rw|r||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
ayc|Thistlefur Sandals|R|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
aye|Thistlefur Cloak|Rw|r||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
ayf|Thistlefur Gloves|R|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
ayg|Thistlefur Cap|dw|r||||d^90^Mekgineer Thermaplugg^0.43^0^k~d^90^Crowd Pummeler 9-60^0.01^0^k
ayl|Thistlefur Belt|R|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
aym|Vital Bracelets|R|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
ayp|Vital Sash|R|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
b21|Eternal Boots|drw|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
b22|Eternal Bindings|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
b23|Eternal Cloak|drwx|r||||d^249^Onyxia^0.83^1^k~d^230^Plugger Spazzring^0.2^0^k
b24|Eternal Crown|drw|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
b25|Eternal Gloves|drw|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
b26|Eternal Sarong|drw|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
b27|Eternal Spaulders|drw|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
b29|Eternal Cord|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
b30|Mystic's Slippers|dw|s||||m^4129^Hecklefang Snarler^0^s~m^11917^Gogger Geomancer^6.25^s
b31|Mystic's Cape|dw|s||||m^11318^Ragefire Trogg^4.17^s~m^3275^Kolkar Marauder^0^s
b32|Mystic's Bracelets|dw|s||||d^389^Oggleflint^0.01^0^k~d^389^Jergosh the Invoker^0.01^0^k
b33|Mystic's Gloves|dw|s||||m^3279^Witchwing Ambusher^0^s~m^3386^Theramore Preserver^0^s
b34|Mystic's Shoulder Pads|w|s||||m^3457^Razormane Stalker^5.56^s
b35|Mystic's Wrap|dw|||||d^36^Edwin VanCleef^0.02^0^k~d^36^Cookie^0.01^0^k
b36|Mystic's Woolies|dw|||||d^36^Rhahk'Zor^0.07^0^k~d^389^Oggleflint^0.01^0^k
b37|Mystic's Robe|dw|||||d^36^Edwin VanCleef^0.02^0^k~d^36^Cookie^0.01^0^k
b38|Sanguine Armor|dw|||||d^34^Hamhock^0.01^0^k~d^34^Dextren Ward^0.01^0^k
b39|Sanguine Belt|dw|||||d^34^Targorr the Dread^0.01^0^k~d^34^Hamhock^0.01^0^k
b3a|Sanguine Sandals|dw|||||d^36^Edwin VanCleef^0.02^0^k~d^34^Targorr the Dread^0.01^0^k
b3b|Sanguine Cuffs|dw|||||d^34^Targorr the Dread^0.01^0^k~d^34^Hamhock^0.01^0^k
b3c|Sanguine Cape|dw|||||d^36^Rhahk'Zor^0.07^0^k~d^36^Edwin VanCleef^0.02^0^k
b3d|Sanguine Handwraps|dw|||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
b3e|Sanguine Mantle|dw|s||||m^264079^NPC 264079^0.25^s~d^34^Targorr the Dread^0.01^0^k
b3x|Resilient Mantle|R|||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
b3y|Resilient Tunic|R|||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
b3z|Resilient Boots|Rw|||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
b40|Resilient Cape|dw|||||d^34^Dextren Ward^0.01^0^k~d^34^Kam Deepfury^0.01^0^k
b41|Resilient Cap|R|||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
b42|Resilient Bands|dw|s||||m^264079^NPC 264079^0.25^s~d^34^Dextren Ward^0.01^0^k
b43|Resilient Handgrips|Rw|||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
b44|Resilient Leggings|R|||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
b45|Resilient Robe|R|||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
b46|Resilient Cord|dw|||||d^34^Kam Deepfury^0.01^0^k
b47|Stonecloth Vest|wx|||||x^6827^Box of Supplies^k~w^34^43^k
b48|Stonecloth Boots|dw|||||d^90^Mekgineer Thermaplugg^0.43^0^k~d^90^Crowd Pummeler 9-60^0.01^0^k
b49|Stonecloth Cape|R|||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
b4a|Stonecloth Circlet|wx|||||x^6827^Box of Supplies^k~w^33^40^k
b4c|Stonecloth Epaulets|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k
b4e|Stonecloth Belt|dw|||||d^90^Mekgineer Thermaplugg^0.43^0^k~d^90^Crowd Pummeler 9-60^0.01^0^k
b4f|Stonecloth Britches|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k
b4g|Stonecloth Bindings|dw|||||d^90^Mekgineer Thermaplugg^0.43^0^k~d^90^Crowd Pummeler 9-60^0.01^0^k
b4i|Silksand Boots|wx|||||x^6827^Box of Supplies^k~w^34^43^k
b4j|Silksand Bracers|wx|||||x^6827^Box of Supplies^k~w^33^40^k
b4k|Silksand Cape|wx|||||x^6827^Box of Supplies^k~w^33^40^k
b4l|Silksand Circlet|w|||||w^38^44^k
b4m|Silksand Gloves|wx|||||x^6827^Box of Supplies^k~w^36^43^k
b4n|Silksand Shoulder Pads|wx|||||x^6827^Box of Supplies^k~w^36^43^k
b4o|Silksand Legwraps|w|||||w^38^44^k
b4q|Silksand Girdle|wx|||||x^6827^Box of Supplies^k~w^34^43^k
b4t|Windchaser Cuffs|w|||||w^39^45^k
b4u|Windchaser Cloak|w|||||w^38^44^k
b4v|Windchaser Handguards|w|||||w^40^46^k
b4w|Windchaser Amice|w|||||w^40^47^k
b4x|Windchaser Woolies|w|||||w^40^48^k
b4z|Windchaser Cinch|w|||||w^39^45^k
b50|Windchaser Coronet|w|||||w^40^48^k
b51|Venomshroud Vest|dw|||||d^230^Plugger Spazzring^0.2^0^k~d^349^Princess Theradras^0.19^0^k
b52|Venomshroud Boots|w|||||w^43^50^k
b53|Venomshroud Armguards|w|||||w^40^49^k
b55|Venomshroud Mask|dw|||||d^349^Princess Theradras^0.19^0^k
b56|Venomshroud Mitts|w|||||w^45^51^k
b57|Venomshroud Mantle|w|||||w^45^51^k
b58|Venomshroud Leggings|dw|||||d^349^Princess Theradras^0.19^0^k
b59|Venomshroud Silk Robes|dw|||||d^230^Plugger Spazzring^0.2^0^k~d^349^Princess Theradras^0.19^0^k
b5a|Venomshroud Belt|w|||||w^43^50^k
b5b|Highborne Footpads|dw|||||d^349^Princess Theradras^0.19^0^k
b5c|Highborne Bracelets|dw|||||d^349^Princess Theradras^0.19^0^k
b5d|Highborne Crown|dwx|||||d^230^Plugger Spazzring^0.2^0^k~d^289^Marduk Blackpool^0.02^0^k
b5e|Highborne Cloak|dw|||||d^349^Princess Theradras^0.19^0^k
b5f|Highborne Gloves|dw|||||d^349^Princess Theradras^0.19^0^k
b5g|Highborne Pauldrons|dw|||||d^230^Plugger Spazzring^0.2^0^k~d^349^Princess Theradras^0.19^0^k
b5h|Highborne Robes|dwx|||||d^289^Marduk Blackpool^0.02^0^k
b5i|Highborne Cord|dw|||||d^349^Princess Theradras^0.19^0^k
b5k|Elunarian Vest|drw|||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
b5l|Elunarian Cuffs|dwx|||||d^230^Plugger Spazzring^0.2^0^k~d^289^Marduk Blackpool^0.02^0^k
b5m|Elunarian Boots|dwx|||||d^289^Jandice Barov^0.47^0^k~d^289^Marduk Blackpool^0.02^0^k
b5n|Elunarian Cloak|dwx|||||d^230^Plugger Spazzring^0.2^0^k~d^289^Marduk Blackpool^0.02^0^k
b5o|Elunarian Diadem|dw|||||d^289^Jandice Barov^0.47^0^k
b5p|Elunarian Handgrips|dw|||||d^289^Jandice Barov^0.47^0^k
b5q|Elunarian Sarong|dw|||||d^289^Jandice Barov^0.47^0^k
b5r|Elunarian Spaulders|dw|||||d^289^Jandice Barov^0.47^0^k
b5s|Elunarian Silk Robes|drw|||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
b5t|Elunarian Belt|dwx|||||d^289^Jandice Barov^0.47^0^k~d^289^Marduk Blackpool^0.02^0^k
b85|Boots of Avoidance|u|||||
b8a|Cloudkeeper Legplates|w|||||w^0^0^k
b8f|Prospector's Sash|dw|||||d^36^Rhahk'Zor^0.07^0^k~d^389^Oggleflint^0.01^0^k
b8g|Prospector's Boots|dw|s||||m^3717^Wrathtail Sorceress^5.26^s~d^36^Rhahk'Zor^0.07^0^k
b8h|Prospector's Cuffs|dw|s||||m^267308^NPC 267308^0^s~d^389^Oggleflint^0.01^0^k
b8i|Prospector's Chestpiece|dw|s||||m^4798^Fallenroot Shadowstalker^0^s~d^36^Edwin VanCleef^0.02^0^k
b8j|Prospector's Cloak|dw|s||||m^3278^Witchwing Slayer^1.23^s~m^3989^Venture Co. Logger^0^s
b8k|Prospector's Mitts|dw|s||||m^3256^Sunscale Scytheclaw^0^s~d^36^Rhahk'Zor^0.07^0^k
b8l|Prospector's Woolies|dw|||||d^36^Rhahk'Zor^0.07^0^k~d^36^Edwin VanCleef^0.02^0^k
b8m|Prospector's Pads|dw|||||d^34^Targorr the Dread^0.01^0^k~d^34^Hamhock^0.01^0^k
b8n|Bristlebark Belt|dw|s||||m^3376^Bael'dun Soldier^1.56^s~d^36^Edwin VanCleef^0.02^0^k
b8o|Bristlebark Boots|dw|||||d^36^Edwin VanCleef^0.02^0^k~d^36^Cookie^0.01^0^k
b8p|Bristlebark Bindings|dw|s||||d^36^Rhahk'Zor^0.07^0^k~d^36^Edwin VanCleef^0.02^0^k
b8q|Bristlebark Blouse|dw|s||||m^264081^NPC 264081^2.5^s~d^34^Hamhock^0.01^0^k
b8r|Bristlebark Cape|dw|||||d^36^Rhahk'Zor^0.07^0^k~d^36^Edwin VanCleef^0.02^0^k
b8s|Bristlebark Gloves|dw|s||||d^36^Edwin VanCleef^0.02^0^k~d^34^Targorr the Dread^0.01^0^k
b8t|Bristlebark Amice|dw|||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
b8u|Bristlebark Britches|dw|||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
b8y|Dokebi Cord|dw|||||d^34^Dextren Ward^0.01^0^k~d^34^Kam Deepfury^0.01^0^k
b8z|Dokebi Boots|Rw|||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
b90|Dokebi Bracers|dw|s||||m^4814^Twilight Elementalist^0^s~d^34^Targorr the Dread^0.01^0^k
b91|Dokebi Chestguard|R|||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
b92|Dokebi Cape|dw|||||d^34^Hamhock^0.01^0^k~d^34^Dextren Ward^0.01^0^k
b93|Dokebi Gloves|R|||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
b94|Dokebi Hat|dw|||||d^90^Mekgineer Thermaplugg^0.43^0^k~d^90^Crowd Pummeler 9-60^0.01^0^k
b95|Dokebi Leggings|R|||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
b97|Dokebi Mantle|R|||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
b98|Hawkeye's Cord|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k
b99|Hawkeye's Shoes|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k
b9a|Hawkeye's Bracers|dw|||||d^90^Mekgineer Thermaplugg^0.43^0^k~d^90^Crowd Pummeler 9-60^0.01^0^k
b9b|Hawkeye's Helm|wx|||||x^6827^Box of Supplies^k~w^36^43^k
b9c|Hawkeye's Tunic|wx|||||x^6827^Box of Supplies^k~w^36^43^k
b9d|Hawkeye's Cloak|dw|||||d^90^Mekgineer Thermaplugg^0.43^0^k~d^90^Crowd Pummeler 9-60^0.01^0^k
b9e|Hawkeye's Gloves|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k
b9f|Hawkeye's Breeches|wx|||||x^6827^Box of Supplies^k~w^33^40^k
b9g|Hawkeye's Epaulets|wx|||||x^6827^Box of Supplies^k~w^33^40^k
b9i|Warden's Waistband|wx|||||x^6827^Box of Supplies^k~w^36^43^k
b9k|Warden's Wristbands|wx|||||x^6827^Box of Supplies^k~w^36^43^k
b9l|Warden's Wraps|w|||||w^40^46^k
b9m|Warden's Cloak|wx|||||x^6827^Box of Supplies^k~w^34^43^k
b9n|Warden's Mantle|w|||||w^37^43^k
b9o|Warden's Wizard Hat|w|||||w^40^47^k
b9p|Warden's Woolies|w|||||w^39^45^k
b9q|Warden's Gloves|w|||||w^37^43^k
b9r|Hawkeye's Buckler|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k
b9s|Dokebi Buckler|Rw|||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
bb0|Scorpashi Sash|w|||||w^40^47^k
bb1|Scorpashi Slippers|w|||||w^40^48^k
bb2|Scorpashi Wristbands|w|||||w^40^46^k
bb3|Scorpashi Breastplate|w|||||w^45^51^k
bb4|Scorpashi Cape|w|||||w^40^46^k
bb6|Scorpashi Skullcap|w|||||w^45^51^k
bb7|Scorpashi Leggings|w|||||w^40^49^k
bb8|Scorpashi Shoulder Pads|w|||||w^40^49^k
bba|Keeper's Hooves|dw|||||d^349^Princess Theradras^0.19^0^k
bbb|Keeper's Bindings|w|||||w^43^50^k
bbc|Keeper's Armor|dw|||||d^230^Plugger Spazzring^0.2^0^k~d^349^Princess Theradras^0.19^0^k
bbd|Keeper's Cloak|w|||||w^43^50^k
bbe|Keeper's Gloves|dw|||||d^349^Princess Theradras^0.19^0^k
bbf|Keeper's Wreath|dw|||||d^349^Princess Theradras^0.19^0^k
bbg|Keeper's Woolies|dw|||||d^349^Princess Theradras^0.19^0^k
bbh|Keeper's Mantle|dw|||||d^349^Princess Theradras^0.19^0^k
bbi|Pridelord Armor|dwx|||||d^289^Marduk Blackpool^0.02^0^k
bbj|Pridelord Boots|dwx|||||d^230^Plugger Spazzring^0.2^0^k
bbk|Pridelord Bands|dw|||||d^349^Princess Theradras^0.19^0^k
bbl|Pridelord Cape|dw|||||d^349^Princess Theradras^0.19^0^k
bbm|Pridelord Girdle|dw|||||d^230^Plugger Spazzring^0.2^0^k
bbn|Pridelord Gloves|dwx|||||d^230^Plugger Spazzring^0.2^0^k
bbo|Pridelord Halo|dwx|||||d^230^Plugger Spazzring^0.2^0^k~d^289^Marduk Blackpool^0.02^0^k
bbp|Pridelord Pants|dwx|||||d^230^Plugger Spazzring^0.2^0^k~d^289^Marduk Blackpool^0.02^0^k
bbq|Pridelord Pauldrons|dwx|||||d^230^Plugger Spazzring^0.2^0^k~d^289^Marduk Blackpool^0.02^0^k
bbs|Indomitable Vest|drw|||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
bbt|Indomitable Boots|dw|||||d^289^Jandice Barov^0.47^0^k
bbu|Indomitable Armguards|dwx|||||d^289^Marduk Blackpool^0.02^0^k
bbv|Indomitable Cloak|dwx|||||d^289^Marduk Blackpool^0.02^0^k
bbw|Indomitable Belt|dwx|||||d^289^Jandice Barov^0.47^0^k~d^289^Marduk Blackpool^0.02^0^k
bbx|Indomitable Gauntlets|dw|||||d^289^Jandice Barov^0.47^0^k
bbz|Indomitable Leggings|dw|||||d^289^Jandice Barov^0.47^0^k
bc0|Indomitable Epaulets|dwx|||||d^289^Jandice Barov^0.47^0^k~d^289^Marduk Blackpool^0.02^0^k
bcy|War Paint Anklewraps|dw|s||||m^3278^Witchwing Slayer^1.23^s~m^11324^Searing Blade Warlock^0^s
bcz|War Paint Bindings|dw|||||d^389^Oggleflint^0.01^0^k~d^389^Jergosh the Invoker^0.01^0^k
bd0|War Paint Cloak|dw|s||||m^3278^Witchwing Slayer^1.23^s~d^389^Oggleflint^0.01^0^k
bd1|War Paint Waistband|dw|s||||m^11917^Gogger Geomancer^6.25^s~m^3283^Venture Co. Enforcer^0^s
bd2|War Paint Gloves|dw|||||d^36^Rhahk'Zor^0.07^0^k~d^389^Oggleflint^0.01^0^k
bd3|War Paint Legguards|dw|s||||d^36^Rhahk'Zor^0.07^0^k~d^389^Oggleflint^0.01^0^k
bd4|War Paint Shoulder Pads|w|||||w^17^25^k
bd5|War Paint Shield|dw|s||||m^3258^Bristleback Hunter^2.86^s~d^36^Rhahk'Zor^0.07^0^k
bd6|War Paint Chestpiece|dw|s||||m^3376^Bael'dun Soldier^1.56^s~d^36^Edwin VanCleef^0.02^0^k
bdi|Hulking Boots|dw|s||||d^36^Edwin VanCleef^0.02^0^k~d^34^Targorr the Dread^0.01^0^k
bdj|Hulking Bands|dw|||||d^36^Rhahk'Zor^0.07^0^k~d^36^Edwin VanCleef^0.02^0^k
bdk|Hulking Chestguard|dw|s||||m^4119^Elder Cloud Serpent^5.88^s~m^264083^NPC 264083^3.12^s
bdl|Hulking Cloak|dw|||||d^36^Rhahk'Zor^0.07^0^k~d^36^Edwin VanCleef^0.02^0^k
bdm|Hulking Belt|dw|s||||m^4815^Murkshallow Snapclaw^0^s~d^36^Rhahk'Zor^0.07^0^k
bdn|Hulking Gauntlets|dw|||||d^36^Edwin VanCleef^0.02^0^k~d^36^Cookie^0.01^0^k
bdo|Hulking Leggings|dw|||||d^34^Targorr the Dread^0.01^0^k~d^34^Hamhock^0.01^0^k
bdp|Hulking Spaulders|dw|s||||d^48^Lady Sarevess^33.33^0^s
bdq|Slayer's Cuffs|dw|||||d^34^Hamhock^0.01^0^k~d^34^Dextren Ward^0.01^0^k
bdr|Slayer's Surcoat|R|||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
bds|Slayer's Cape|dw|||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
bdt|Slayer's Skullcap|R|||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
bdu|Slayer's Gloves|dw|||||d^34^Dextren Ward^0.01^0^k~d^34^Kam Deepfury^0.01^0^k
bdv|Slayer's Sash|dw|||||d^34^Hamhock^0.01^0^k~d^34^Dextren Ward^0.01^0^k
bdw|Slayer's Slippers|dw|s||||m^264079^NPC 264079^0.25^s~d^34^Dextren Ward^0.01^0^k
bdx|Slayer's Pants|R|||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
bdy|Slayer's Shoulder Pads|Rw|||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
bdz|Enduring Bracers|dw|||||d^90^Mekgineer Thermaplugg^0.43^0^k~d^90^Crowd Pummeler 9-60^0.01^0^k
be0|Enduring Breastplate|wx|||||x^6827^Box of Supplies^k~w^34^43^k
be1|Enduring Belt|dw|||||d^90^Mekgineer Thermaplugg^0.43^0^k~d^90^Crowd Pummeler 9-60^0.01^0^k
be2|Enduring Boots|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k
be3|Enduring Cape|R|||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
be4|Enduring Gauntlets|dw|||||d^90^Mekgineer Thermaplugg^0.43^0^k~d^90^Crowd Pummeler 9-60^0.01^0^k
be5|Enduring Circlet|wx|||||x^6827^Box of Supplies^k~w^33^40^k
be6|Enduring Breeches|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k
be7|Enduring Pauldrons|wx|||||x^6827^Box of Supplies^k~w^33^40^k
bea|Ravager's Armguards|wx|||||x^6827^Box of Supplies^k~w^36^43^k
beb|Ravager's Cloak|wx|||||x^6827^Box of Supplies^k~w^34^43^k
bec|Ravager's Handwraps|wx|||||x^6827^Box of Supplies^k~w^36^43^k
bed|Ravager's Cord|wx|||||x^6827^Box of Supplies^k~w^34^43^k
bee|Ravager's Crown|w|||||w^39^45^k
bef|Ravager's Woolies|w|||||w^39^45^k
beh|Ravager's Shield|w|||||w^40^46^k
bei|Khan's Bindings|w|||||w^40^47^k
bek|Khan's Buckler|w|||||w^45^51^k
bel|Khan's Cloak|w|||||w^40^46^k
bem|Khan's Gloves|w|||||w^40^47^k
ben|Khan's Belt|w|||||w^40^48^k
beo|Khan's Greaves|w|||||w^40^48^k
beq|Khan's Legguards|w|||||w^40^49^k
ber|Khan's Mantle|w|||||w^40^49^k
bes|Protector Armguards|w|||||w^45^51^k
bet|Protector Breastplate|dw|||||d^230^Plugger Spazzring^0.2^0^k~d^349^Princess Theradras^0.19^0^k
beu|Protector Buckler|dw|||||d^230^Plugger Spazzring^0.2^0^k~d^349^Princess Theradras^0.19^0^k
bev|Protector Cape|w|||||w^43^50^k
bex|Protector Waistband|dw|||||d^349^Princess Theradras^0.19^0^k
bey|Protector Ankleguards|dw|||||d^349^Princess Theradras^0.19^0^k
bez|Protector Helm|dw|||||d^349^Princess Theradras^0.19^0^k
bf1|Protector Pads|dw|||||d^349^Princess Theradras^0.19^0^k
bf2|Bloodlust Breastplate|dwx|||||d^289^Marduk Blackpool^0.02^0^k
bf3|Bloodlust Boots|dwx|||||d^230^Plugger Spazzring^0.2^0^k~d^289^Marduk Blackpool^0.02^0^k
bf4|Bloodlust Buckler|dwx|||||d^289^Marduk Blackpool^0.02^0^k
bf5|Bloodlust Cape|dw|||||d^349^Princess Theradras^0.19^0^k
bf6|Bloodlust Gauntlets|dw|||||d^230^Plugger Spazzring^0.2^0^k
bf7|Bloodlust Belt|dw|||||d^230^Plugger Spazzring^0.2^0^k
bf9|Bloodlust Britches|dwx|||||d^230^Plugger Spazzring^0.2^0^k~d^289^Marduk Blackpool^0.02^0^k
bfa|Bloodlust Epaulets|dwx|||||d^230^Plugger Spazzring^0.2^0^k~d^289^Marduk Blackpool^0.02^0^k
bfb|Bloodlust Bracelets|dw|||||d^349^Princess Theradras^0.19^0^k
bfc|Warstrike Belt|dwx|||||d^289^Marduk Blackpool^0.02^0^k
bfd|Warstrike Sabatons|dw|||||d^289^Jandice Barov^0.47^0^k
bff|Warstrike Chestguard|drw|||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
bfg|Warstrike Buckler|drw|||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
bfh|Warstrike Cape|dwx|||||d^230^Plugger Spazzring^0.2^0^k~d^289^Marduk Blackpool^0.02^0^k
bfi|Warstrike Helmet|dw|||||d^289^Jandice Barov^0.47^0^k
bfj|Warstrike Gauntlets|dw|||||d^289^Jandice Barov^0.47^0^k
bfp|Symbolic Breastplate|w|||||w^39^45^k
bft|Symbolic Crest|w|||||w^39^45^k
bfx|Symbolic Legplates|w|||||w^38^44^k
bfz|Symbolic Crown|w|||||w^39^45^k
bg1|Tyrant's Gauntlets|w|||||w^40^46^k
bg2|Tyrant's Armguards|w|||||w^39^45^k
bg3|Tyrant's Chestpiece|w|||||w^43^50^k
bg7|Tyrant's Greaves|w|||||w^40^46^k
bg8|Tyrant's Legplates|w|||||w^40^49^k
bg9|Tyrant's Epaulets|w|||||w^40^46^k
bga|Tyrant's Shield|w|||||w^43^50^k
bgb|Tyrant's Helm|w|||||w^40^48^k
bgc|Sunscale Chestguard|dw|||||d^230^Plugger Spazzring^0.2^0^k~d^349^Princess Theradras^0.19^0^k
bge|Sunscale Gauntlets|dw|||||d^349^Princess Theradras^0.19^0^k
bgf|Sunscale Belt|w|||||w^45^51^k
bgg|Sunscale Sabatons|dw|||||d^349^Princess Theradras^0.19^0^k
bgh|Sunscale Helmet|dw|||||d^349^Princess Theradras^0.19^0^k
bgi|Sunscale Legplates|dw|||||d^349^Princess Theradras^0.19^0^k
bgj|Sunscale Spaulders|dw|||||d^349^Princess Theradras^0.19^0^k
bgk|Sunscale Shield|dw|||||d^230^Plugger Spazzring^0.2^0^k~d^349^Princess Theradras^0.19^0^k
bgl|Sunscale Wristguards|w|||||w^43^50^k
bgm|Vanguard Breastplate|dwx|||||d^289^Marduk Blackpool^0.02^0^k
bgn|Vanguard Gauntlets|dw|||||d^230^Plugger Spazzring^0.2^0^k
bgo|Vanguard Girdle|dw|||||d^230^Plugger Spazzring^0.2^0^k~d^349^Princess Theradras^0.19^0^k
bgp|Vanguard Sabatons|dw|||||d^230^Plugger Spazzring^0.2^0^k~d^349^Princess Theradras^0.19^0^k
bgq|Vanguard Headdress|dwx|||||d^230^Plugger Spazzring^0.2^0^k~d^289^Marduk Blackpool^0.02^0^k
bgr|Vanguard Legplates|dwx|||||d^230^Plugger Spazzring^0.2^0^k~d^289^Marduk Blackpool^0.02^0^k
bgs|Vanguard Pauldrons|dwx|||||d^230^Plugger Spazzring^0.2^0^k
bgt|Vanguard Vambraces|dw|||||d^349^Princess Theradras^0.19^0^k
bgu|Warleader's Breastplate|dw|||||d^289^Jandice Barov^0.47^0^k
bgv|Warleader's Gauntlets|dwx|||||d^289^Jandice Barov^0.47^0^k~d^289^Marduk Blackpool^0.02^0^k
bgw|Warleader's Belt|dwx|||||d^289^Marduk Blackpool^0.02^0^k
bgx|Warleader's Greaves|dwx|||||d^289^Jandice Barov^0.47^0^k~d^289^Marduk Blackpool^0.02^0^k
bgy|Warleader's Crown|dw|||||d^289^Jandice Barov^0.47^0^k
bh0|Warleader's Shoulders|dwx|||||d^289^Jandice Barov^0.47^0^k~d^289^Marduk Blackpool^0.02^0^k
bh1|Warleader's Bracers|dwx|||||d^230^Plugger Spazzring^0.2^0^k~d^289^Marduk Blackpool^0.02^0^k
bhy|Saltstone Shield|w|r||||w^37^43^k
bi0|Brutish Breastplate|dw|r||||d^349^Princess Theradras^0.19^0^k
bi8|Brutish Shield|dw|r||||d^349^Princess Theradras^0.19^0^k
bib|Jade Breastplate|dw|r||||d^349^Princess Theradras^0.19^0^k
bic|Jade Deflector|dw|r||||d^349^Princess Theradras^0.19^0^k
bif|Jade Circlet|dw|r||||d^349^Princess Theradras^0.19^0^k
big|Jade Legplates|dw|r||||d^349^Princess Theradras^0.19^0^k
bij|Lofty Armguards|dw|r||||d^349^Princess Theradras^0.19^0^k
bin|Lofty Belt|dw|r||||d^349^Princess Theradras^0.19^0^k
bio|Lofty Legguards|dw|r||||d^230^Plugger Spazzring^0.2^0^k
bip|Lofty Shoulder Pads|dw|r||||d^230^Plugger Spazzring^0.2^0^k~d^349^Princess Theradras^0.19^0^k
biq|Lofty Shield|dwx|r||||d^230^Plugger Spazzring^0.2^0^k~d^289^Marduk Blackpool^0.02^0^k
bj5|Warbringer's Legguards|w|r||||w^40^47^k
bj7|Warbringer's Shield|w|r||||w^40^48^k
bj8|Bloodforged Chestpiece|dw|r||||d^349^Princess Theradras^0.19^0^k
bjc|Bloodforged Helmet|dw|r||||d^349^Princess Theradras^0.19^0^k
bje|Bloodforged Shield|dw|r||||d^349^Princess Theradras^0.19^0^k
bjh|High Chief's Sabatons|dw|r||||d^349^Princess Theradras^0.19^0^k
bji|High Chief's Armor|dwx|r||||d^230^Plugger Spazzring^0.2^0^k
bjk|High Chief's Belt|dw|r||||d^349^Princess Theradras^0.19^0^k
bjm|High Chief's Legguards|dw|r||||d^230^Plugger Spazzring^0.2^0^k~d^349^Princess Theradras^0.19^0^k
bjn|High Chief's Pauldrons|dw|r||||d^349^Princess Theradras^0.19^0^k
bjo|High Chief's Shield|dwx|r||||d^230^Plugger Spazzring^0.2^0^k
bjr|Glorious Gauntlets|dwx|r||||d^230^Plugger Spazzring^0.2^0^k
bjx|Glorious Shield|dwx|r||||d^289^Jandice Barov^0.47^0^k~d^289^Marduk Blackpool^0.02^0^k
bjz|Exalted Harness|rw|r||||d^249^Onyxia^0.83^1^k
bk0|Exalted Gauntlets|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
bk1|Exalted Girdle|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
bk2|Exalted Sabatons|drw|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
bk3|Exalted Helmet|drw|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
bk4|Exalted Legplates|drw|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
bk5|Exalted Epaulets|drw|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
bk7|Exalted Armsplints|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Marduk Blackpool^0.02^0^k
bkr|Primal Belt|w|s||||w^5^10^k
bks|Primal Boots|w|s||||m^2019^Bloodfeather Fury^0^s~m^252763^NPC 252763^0^s
bkt|Primal Bands|w|||||w^5^14^k
bku|Primal Buckler|w|||||w^5^14^k
bkv|Primal Cape|w|s||||m^3117^Dustwind Savage^0^s~m^2018^Bloodfeather Sorceress^0^s
bkw|Primal Mitts|w|||||w^5^14^k
bkx|Primal Leggings|w|sr||||w^6^13^k
bky|Primal Wraps|w|r||||w^6^13^k
bkz|Lupine Cord|dw|sr||||m^3245^Ornery Plainstrider^2.86^s~m^11322^Searing Blade Cultist^0^s
bl0|Lupine Slippers|dw|sr||||m^11322^Searing Blade Cultist^5.26^s~m^11318^Ragefire Trogg^0^s
bl2|Lupine Buckler|dw|r||||d^389^Oggleflint^0.01^0^k~d^389^Jergosh the Invoker^0.01^0^k
bl3|Lupine Cloak|w|s||||m^3255^Sunscale Screecher^0^s
bl4|Lupine Handwraps|dw|sr||||m^3471^Tinkerer Sniggles^0^s~m^4005^Deepmoss Creeper^0^s
bl5|Lupine Leggings|dw|sr||||d^36^Rhahk'Zor^0.07^0^k~d^389^Oggleflint^0.01^0^k
bl6|Lupine Vest|dw|r||||d^36^Rhahk'Zor^0.07^0^k~d^36^Edwin VanCleef^0.02^0^k
bl7|Lupine Mantle|w|s||||m^3840^Druid of the Fang^0^s
blx|Green Dragonscale Breastplate|c|||||c^Leatherworking^235^19050^f
bly|Green Dragonscale Leggings|c|||||c^Leatherworking^245^19060^f
blz|Red Dragonscale Breastplate|c|||||c^Leatherworking^290^19054^f
bm0|Blue Dragonscale Breastplate|c|||||c^Leatherworking^260^19077^f
bm1|Blue Dragonscale Shoulders|c|||||c^Leatherworking^270^19089^f
bm2|Black Dragonscale Breastplate|c|||||c^Leatherworking^265^19085^f
bm3|Black Dragonscale Shoulders|c|||||c^Leatherworking^270^19094^f
bm4|Black Dragonscale Leggings|c|||||c^Leatherworking^290^19107^f
bm8|Stormshroud Armor|c|||||c^Leatherworking^260^19079^f
bm9|Stormshroud Pants|c|||||c^Leatherworking^250^19067^f
bma|Stormshroud Shoulders|c|||||c^Leatherworking^270^19090^f
bmb|Living Breastplate|c|||||c^Leatherworking^290^19095^f
bmc|Living Leggings|c|||||c^Leatherworking^260^19078^f
bmd|Living Shoulders|c|||||c^Leatherworking^245^19061^f
bme|Devilsaur Leggings|c|||||c^Leatherworking^290^19097^f
bmf|Devilsaur Gauntlets|c|||||c^Leatherworking^265^19084^f
bmg|Warbear Harness|c|||||c^Leatherworking^250^19068^f
bmh|Warbear Woolies|c|||||c^Leatherworking^260^19080^f
bmi|Ironfeather Breastplate|c|||||c^Leatherworking^265^19086^f
bmj|Ironfeather Shoulders|c|||||c^Leatherworking^245^19062^f
bms|Heavy Scorpid Vest|c|||||c^Leatherworking^240^19051^f
bmt|Heavy Scorpid Bracers|c|||||c^Leatherworking^255^19048^f
bmu|Heavy Scorpid Gauntlet|c|||||c^Leatherworking^250^19064^f
bmv|Heavy Scorpid Leggings|c|||||c^Leatherworking^260^19075^f
bmw|Heavy Scorpid Helm|c|||||c^Leatherworking^270^19088^f
bmx|Heavy Scorpid Shoulders|c|||||c^Leatherworking^280^19100^f
bmy|Heavy Scorpid Belt|c|||||c^Leatherworking^255^19070^f
bmz|Wicked Leather Gauntlets|c|||||c^Leatherworking^235^19049^f
bn0|Wicked Leather Bracers|c|||||c^Leatherworking^240^19052^f
bn1|Wicked Leather Armor|c|||||c^Leatherworking^280^19098^f
bn2|Wicked Leather Headband|c|||||c^Leatherworking^255^19071^f
bn3|Wicked Leather Pants|c|||||c^Leatherworking^265^19083^f
bn4|Wicked Leather Belt|c|||||c^Leatherworking^275^19092^f
bn8|Runic Leather Bracers|c|||||c^Leatherworking^250^19065^f
bnb|Runic Leather Pants|c|||||c^Leatherworking^275^19091^f
bnk|Wingborne Boots|q||a|||q^697^Malin's Request^30^a^k
bnl|Staff of Noh'Orahil|q|||||q^4975^The Completed Orb of Noh'Orahil^35^^k
bnm|Staff of Dar'Orahil|q|||||q^4964^The Completed Orb of Dar'Orahil^35^^k
bnn|Orb of Noh'Orahil|q|||||q^4975^The Completed Orb of Noh'Orahil^35^^k
bno|Orb of Dar'Orahil|q|||||q^4964^The Completed Orb of Dar'Orahil^35^^k
bnp|Staff of Soran'ruk|Q|s||||q^1740^The Orb of Soran'ruk^20^^s
bnq|Rigid Belt|dw|r||||d^36^Rhahk'Zor^0.07^0^k~d^36^Edwin VanCleef^0.02^0^k
bns|Rigid Bracelets|dw|r||||d^36^Rhahk'Zor^0.07^0^k~d^36^Edwin VanCleef^0.02^0^k
bnt|Rigid Buckler|dw|r||||d^36^Edwin VanCleef^0.02^0^k~d^36^Cookie^0.01^0^k
bnv|Rigid Gloves|dw|sr||||m^3261^Bristleback Thornweaver^2.94^s~d^36^Rhahk'Zor^0.07^0^k
bnz|Highborne Pants|dwx|||||d^230^Plugger Spazzring^0.2^0^k
bo6|Robust Leggings|dw|sr||||m^4814^Twilight Elementalist^0^s~d^34^Dextren Ward^0.01^0^k
bo8|Robust Tunic|Rw|r||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
bo9|Robust Helm|Rw|r||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
bob|Cutthroat's Boots|R|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
bog|Cutthroat's Belt|Rw|r||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
boh|Cutthroat's Mitts|R|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
boi|Onyxia Scale Cloak|c|||||c^Leatherworking^320^19093^f
bol|Onyxia Scale Breastplate|c|||||c^Leatherworking^320^19106^f
bon|Ghostwalker Bindings|R|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
bou|Ghostwalker Pads|dwx|r||||d^90^Mekgineer Thermaplugg^0.43^0^k
bq8|Senior Sergeant's Insignia|pv|U|h|18442||p^4^h^f
bqa|Wildkeeper Leggings|q|s|a|||q^4763^The Blackwood Corrupted^15^a^s
bqb|Guststorm Legguards|q|s|a|||q^4763^The Blackwood Corrupted^15^a^s
bqc|Moonstone Wand|q|s|a|||q^4763^The Blackwood Corrupted^15^a^s
bqd|Owlsight Rifle|q|s|a|||q^5321^The Sleeper Has Awakened^17^a^s
bqe|Jadefinger Baton|q|s|a|||q^5321^The Sleeper Has Awakened^17^a^s
bqf|Steelcap Shield|q|s|a|||q^5321^The Sleeper Has Awakened^17^a^s
bqi|Raider Shortsword|dw|r||||d^389^Oggleflint^0.01^0^k~d^389^Jergosh the Invoker^0.01^0^k
bqj|Militant Shortsword|dw|sr||||m^2261^Syndicate Watchman^2.5^s~m^3859^Shadowfang Ragetooth^0^s
bqk|Fighter Broadsword|dwx|r||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
bql|Mercenary Blade|dwx|r||||d^90^Mekgineer Thermaplugg^0.43^0^k
bqn|Furious Falchion|wx|r||||o^Ancient Treasure^3.4^k~o^Captain's Chest^1.3^k
bqo|Rune Sword|dwx|r||||d^349^Princess Theradras^0.19^0^k
bqp|Widow Blade|dwx|r||||d^230^Plugger Spazzring^0.2^0^k~d^349^Princess Theradras^0.19^0^k
bqq|Crystal Sword|dwx|r||||d^230^Plugger Spazzring^0.2^0^k~d^289^Marduk Blackpool^0.02^0^k
bqr|Dimensional Blade|dwx|r||||d^289^Marduk Blackpool^0.02^0^k
bqs|Battlefell Sabre|dwx|r||||d^289^Jandice Barov^0.47^0^k
bqu|Barbed Club|dw|sr||||m^3851^Shadowfang Whitescalp^0^s~m^3853^Shadowfang Moonwalker^0^s
bqv|Jagged Star|dwx|sr||||d^33^Fenrus the Devourer^33.33^0^s~m^3921^Thistlefur Ursa^6.67^s
bqw|Battlesmasher|dwx|sr||||m^3238^Stormhide^2.78^s~d^34^Targorr the Dread^0.01^0^k
bqx|Sequoia Hammer|Rwx|sr||||m^6426^Anguished Dead^6.67^s~R^1037^Dragonmaw Battlemaster^0.46^k
bqz|Diamond-Tip Bludgeon|wx|r||||x^4638^Reinforced Steel Lockbox^k~x^5758^Mithril Lockbox^k
br0|Smashing Star|dwx|r||||d^349^Princess Theradras^0.19^0^k
br1|Blesswind Hammer|drwx|r||||d^249^Onyxia^0.83^1^k~d^230^Plugger Spazzring^0.2^0^k
br3|Splitting Hatchet|Rwx|r||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
br4|Hacking Cleaver|Rwx|sr||||m^6426^Anguished Dead^6.67^s~R^1037^Dragonmaw Battlemaster^0.46^k
br7|Crescent Edge|wx|r||||x^4638^Reinforced Steel Lockbox^k~x^19035^Lard's Special Picnic Basket^k
br8|Moon Cleaver|dwx|r||||d^349^Princess Theradras^0.19^0^k
br9|Corpse Harvester|dwx|r||||d^230^Plugger Spazzring^0.2^0^k
bra|Warlord's Axe|dwx|r||||d^230^Plugger Spazzring^0.2^0^k~d^289^Marduk Blackpool^0.02^0^k
brb|Felstone Reaver|dwx|r||||d^289^Jandice Barov^0.47^0^k~d^289^Marduk Blackpool^0.02^0^k
brc|Demon's Claw|drw|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
brd|Battle Knife|dwx|sr||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
bre|Honed Stiletto|dwx|sr||||m^4306^Scarlet Torturer^2.78^s~m^271351^NPC 271351^0^s
brf|Deadly Kris|dwx|r||||d^90^Mekgineer Thermaplugg^0.43^0^k
brh|Vorpal Dagger|dwx|r||||d^349^Princess Theradras^0.19^0^k
bri|Demon Blade|dwx|r||||d^289^Jandice Barov^0.47^0^k
brj|Bloodstrike Dagger|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
brk|Gleaming Claymore|dw|sr||||m^3851^Shadowfang Whitescalp^0^s~d^36^Rhahk'Zor^0.07^0^k
brl|Polished Zweihander|dwx|sr||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
brm|Glimmering Flamberge|Rx|sr||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
brn|Headstriker Sword|wx|r||||o^Ancient Treasure^3.2^k~x^4637^Steel Lockbox^k
bro|Tusker Sword|wx|r||||x^4638^Reinforced Steel Lockbox^k~x^19035^Lard's Special Picnic Basket^k
brp|Beheading Blade|dwx|r||||d^349^Princess Theradras^0.19^0^k
brq|Dark Espadon|dwx|r||||d^230^Plugger Spazzring^0.2^0^k~d^349^Princess Theradras^0.19^0^k
brr|Gallant Flamberge|dwx|r||||d^230^Plugger Spazzring^0.2^0^k~d^289^Marduk Blackpool^0.02^0^k
brs|Massacre Sword|dwx|r||||d^289^Marduk Blackpool^0.02^0^k
brt|Shin Blade|dwx|r||||d^289^Jandice Barov^0.47^0^k
bru|Divine Warblade|rwx|r||||d^249^Onyxia^0.83^1^k
brv|Hefty Battlehammer|dwx|sr||||m^4789^Fallenroot Rogue^0^s~d^34^Targorr the Dread^0.01^0^k
brw|Stone Hammer|wx|r||||x^6827^Box of Supplies^k~w^33^40^k
brx|Sequoia Branch|wx|r||||x^4636^Strong Iron Lockbox^k~x^6827^Box of Supplies^k
bry|Greater Maul|wx|r||||x^4636^Strong Iron Lockbox^k~x^4638^Reinforced Steel Lockbox^k
brz|Royal Mallet|dwx|r||||d^349^Princess Theradras^0.19^0^k
bs0|Backbreaker|dwx|r||||d^230^Plugger Spazzring^0.2^0^k
bs1|Painbringer|dwx|r||||d^230^Plugger Spazzring^0.2^0^k~d^289^Marduk Blackpool^0.02^0^k
bs2|Fierce Mauler|dwx|r||||d^289^Jandice Barov^0.47^0^k~d^289^Marduk Blackpool^0.02^0^k
bs3|Brutehammer|drw|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
bs4|Twin-bladed Axe|dw|sr||||m^4007^Deepmoss Venomspitter^4.76^s~m^250654^NPC 250654^0^s
bs5|Massive Battle Axe|dwx|sr||||m^2089^Giant Wetlands Crocolisk^0^s~m^1708^Defias Inmate^0^s
bs6|Gigantic War Axe|wx|r||||x^4638^Reinforced Steel Lockbox^k~x^19035^Lard's Special Picnic Basket^k
bs7|Colossal Great Axe|dwx|r||||d^230^Plugger Spazzring^0.2^0^k
bs8|Razor Axe|dwx|r||||d^289^Marduk Blackpool^0.02^0^k
bs9|Death Striker|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
bsa|Diviner Long Staff|dwx|r||||d^349^Princess Theradras^0.19^0^k
bsb|Thaumaturgist Staff|dwx|r||||d^230^Plugger Spazzring^0.2^0^k~d^349^Princess Theradras^0.19^0^k
bsc|Magus Long Staff|dwx|r||||d^230^Plugger Spazzring^0.2^0^k~d^289^Marduk Blackpool^0.02^0^k
bse|Solstice Staff|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
bsf|Ivory Wand|dwx|r||||d^349^Princess Theradras^0.19^0^k
bsg|Wizard's Hand|dwx|r||||d^349^Princess Theradras^0.19^0^k
bsh|Glowstar Rod|dwx|r||||d^230^Plugger Spazzring^0.2^0^k~d^289^Marduk Blackpool^0.02^0^k
bsi|Dragon Finger|dwx|r||||d^289^Jandice Barov^0.47^0^k~d^289^Marduk Blackpool^0.02^0^k
bsj|Lunar Wand|drw|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
bsk|Long Battle Bow|dwx|s||||d^34^Dextren Ward^0.01^0^k~d^34^Kam Deepfury^0.01^0^k
bsl|Archer's Longbow|Rwx|s||||m^6426^Anguished Dead^6.67^s~R^1037^Dragonmaw Battlemaster^0.46^k
bsm|Long Redwood Bow|dwx|s||||d^189^Interrogator Vishas^16.67^0^s
bsn|Crusader Bow|wx|r||||o^Ancient Treasure^2.4^k~o^Large Solid Chest^0.75^k
bso|Blasthorn Bow|dwx|r||||d^289^Jandice Barov^0.47^0^k~d^289^Marduk Blackpool^0.02^0^k
bsp|Archstrike Bow|rwx|r||||d^249^Onyxia^0.83^1^k
bsr|Harpy Needler|dwx|r||||d^349^Princess Theradras^0.19^0^k
bsu|Siege Bow|dwx|r||||d^349^Princess Theradras^0.19^0^k
bsv|Quillfire Bow|dwx|r||||d^230^Plugger Spazzring^0.2^0^k
bsw|Hawkeye Bow|dwx|r||||d^289^Jandice Barov^0.47^0^k
bsx|Grizzly Bracers|w|||||w^6^14^k
bsy|Grizzly Buckler|w|sr||||m^3255^Sunscale Screecher^4.76^s
bsz|Grizzly Cape|w|||||w^5^14^k
bt0|Grizzly Gloves|w|||||w^9^17^k
bt1|Grizzly Slippers|w|s||||m^3246^Fleeting Plainstrider^0^s
bt2|Grizzly Belt|w|||||w^6^14^k
bt3|Grizzly Pants|w|sr||||m^3425^Savannah Prowler^5^s
bt4|Grizzly Jerkin|dw|sr||||m^3241^Savannah Patriarch^0^s~d^389^Oggleflint^0.01^0^k
bt5|Feral Shoes|dw|r||||d^36^Rhahk'Zor^0.07^0^k~d^389^Oggleflint^0.01^0^k
bt6|Feral Bindings|dw|sr||||m^3234^Lost Barrens Kodo^0^s~d^389^Oggleflint^0.01^0^k
bt7|Feral Buckler|dw|r||||d^36^Rhahk'Zor^0.07^0^k~d^389^Oggleflint^0.01^0^k
bt8|Feral Cord|dw|r||||d^389^Oggleflint^0.01^0^k~d^389^Jergosh the Invoker^0.01^0^k
bt9|Feral Cloak|dw|r||||d^389^Oggleflint^0.01^0^k~d^389^Jergosh the Invoker^0.01^0^k
bta|Feral Gloves|dw|r||||d^36^Rhahk'Zor^0.07^0^k~d^389^Oggleflint^0.01^0^k
btc|Feral Leggings|dw|sr||||m^268624^NPC 268624^4.35^s~d^36^Rhahk'Zor^0.07^0^k
btd|Feral Shoulder Pads|dw|||||d^34^Kam Deepfury^0.25^0^k~d^34^Hamhock^0.25^0^k
btm|Smoothbore Gun|wx|||||x^4636^Strong Iron Lockbox^k~x^6827^Box of Supplies^k
btn|Percussion Shotgun|dwx|r||||d^349^Princess Theradras^0.19^0^k
bto|Burnside Rifle|dwx|r||||d^230^Plugger Spazzring^0.2^0^k
btp|Sharpshooter Harquebus|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
btw|Wrangler's Buckler|dw|sr||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
btz|Briarsteel Shortsword|q|s|a|||q^4813^The Fragments Within^12^a^s
bu5|Pathfinder Footpads|dwx|r||||d^34^Kam Deepfury^0.01^0^k
bu8|Pathfinder Pants|Rw|r||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
bu9|Pathfinder Shoulder Pads|Rw|r||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
bua|Pathfinder Vest|R|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
bud|Headhunter's Belt|R|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
bvo|Curvewood Dagger|q|s|a|||q^4813^The Fragments Within^12^a^s
bvp|Oakthrush Staff|q|s|a|||q^4813^The Fragments Within^12^a^s
bvq|Sandcomber Boots|q|s|a|3454||q^4681^Washed Ashore^11^a^s
bvr|Dryweed Belt|q|s|a|||q^4681^Washed Ashore^11^a^s
bvs|Clamshell Bracers|q|s|a|||q^4681^Washed Ashore^11^a^s
bvt|Welldrip Gloves|q|s|a|||q^982^Deep Ocean, Vast Sea^13^a^s
bvu|Noosegrip Gauntlets|q|s|a|||q^982^Deep Ocean, Vast Sea^13^a^s
bvv|Ridgeback Bracers|q|s|a|||q^4740^WANTED: Murkdeep!^15^a^s
bvw|Breakwater Girdle|q|s|a|||q^4740^WANTED: Murkdeep!^15^a^s
bvx|Shucking Gloves|q||a|||q^1138^Fruit of the Sea^15^a^k
bvy|Crustacean Boots|q||a|||q^1138^Fruit of the Sea^15^a^k
bwg|Axe of Orgrimmar|q||h|||q^5730^Hidden Enemies^9^h^k
bwq|Supreme Sash|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
bwr|Supreme Shoes|drw|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
bws|Supreme Bracers|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
bwt|Supreme Cape|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
bwu|Supreme Gloves|drw|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
bwv|Supreme Crown|drw|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
bww|Supreme Leggings|drw|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
bwx|Supreme Shoulders|drw|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
bwz|Kris of Orgrimmar|q||h|||q^5730^Hidden Enemies^9^h^k
bx0|Staff of Orgrimmar|q||h|||q^5730^Hidden Enemies^9^h^k
bx1|Hammer of Orgrimmar|q||h|||q^5730^Hidden Enemies^9^h^k
bx5|Ghastly Trousers|Q|s|h|||q^5725^The Power to Destroy...^9^h^s
bx6|Dredgemire Leggings|Q|s|h|||q^5725^The Power to Destroy...^9^h^s
bx7|Gargoyle Leggings|Q|s|h|||q^5725^The Power to Destroy...^9^h^s
bx8|Featherbead Bracers|Q||h|||q^5724^Returning the Lost Satchel^9^h^k
bx9|Savannah Bracers|Q||h|||q^5724^Returning the Lost Satchel^9^h^k
bxb|Dustfall Robes|q||a|||q^661^Hints of a New Plague?^30^a^k
bxc|Lightstep Leggings|q||a|||q^661^Hints of a New Plague?^30^a^k
bxd|Desert Shoulders|q||h|||q^5064^Grimtotem Spying^24^h^k
bxe|Tundra Boots|q||h|||q^5064^Grimtotem Spying^24^h^k
bxf|Grimtoll Wristguards|q||h|||q^5064^Grimtotem Spying^24^h^k
bxh|Lightheel Boots|q||h|||q^4966^Protect Kanati Greycloud^23^h^k
bxi|Loamflake Bracers|q||h|||q^4966^Protect Kanati Greycloud^23^h^k
bxj|Palestrider Gloves|q||h|||q^4966^Protect Kanati Greycloud^23^h^k
bxk|Brute Hammer|q||h|||q^5088^Arikara^24^h^k
bxl|Stingshot Wand|q||h|||q^5088^Arikara^24^h^k
bxm|Clink Shield|q||h|||q^5088^Arikara^24^h^k
bxn|Inventor's League Ring|q||h|||q^5151^Hypercapacitor Gizmo^24^h^k
bxo|Windsong Drape|q||h|||q^4904^Free at Last^25^h^k
bxp|Windsong Cinch|q||h|||q^4904^Free at Last^25^h^k
bxq|Plainsguard Leggings|q|s|h|||q^5147^Wanted - Arnak Grimtotem^25^h^s
bxr|Brawnhide Armor|q|s|h|||q^5147^Wanted - Arnak Grimtotem^25^h^s
bxs|Charger's Belt|w|s||||m^252665^NPC 252665^7.14^s
bxt|Charger's Boots|w|s||||m^251676^NPC 251676^1.39^s
bxu|Charger's Bindings|w|s||||m^253511^NPC 253511^0^s
bxw|Charger's Handwraps|w|||||w^5^14^k
bxx|Charger's Pants|w|r||||w^6^13^k
bxy|Charger's Shield|w|s||||m^2033^Elder Nightsaber^0^s~m^252765^NPC 252765^0^s
bxz|Charger's Armor|w|r||||w^6^13^k
by0|War Torn Girdle|w|s||||m^3284^Venture Co. Drudger^0^s
by1|War Torn Greaves|w|||||w^8^15^k
by2|War Torn Bands|w|||||w^6^14^k
by4|War Torn Handgrips|w|s||||m^2190^Wild Grell^0^s
by5|War Torn Pants|w|r||||w^9^17^k
by6|War Torn Shield|w|sr||||m^251676^NPC 251676^1.39^s
by7|War Torn Tunic|dw|sr||||m^4007^Deepmoss Venomspitter^4.76^s~d^389^Oggleflint^0.01^0^k
by9|Bloodspattered Sabatons|dw|r||||d^389^Oggleflint^0.01^0^k~d^389^Jergosh the Invoker^0.01^0^k
byb|Bloodspattered Gloves|dw|sr||||m^3285^Venture Co. Peon^2.78^s~m^11520^Taragaman the Hungerer^0^s
byc|Bloodspattered Sash|dw|r||||d^389^Oggleflint^0.01^0^k~d^389^Jergosh the Invoker^0.01^0^k
byd|Bloodspattered Loincloth|dw|r||||d^36^Rhahk'Zor^0.07^0^k~d^389^Oggleflint^0.01^0^k
bye|Bloodspattered Shield|dw|r||||d^36^Rhahk'Zor^0.07^0^k~d^389^Oggleflint^0.01^0^k
byf|Bloodspattered Wristbands|dw|sr||||d^389^Oggleflint^0.01^0^k~d^389^Jergosh the Invoker^0.01^0^k
byg|Bloodspattered Shoulder Pads|w|||||w^15^25^k
byh|Outrunner's Cord|dw|r||||d^36^Rhahk'Zor^0.07^0^k~d^389^Oggleflint^0.01^0^k
byi|Outrunner's Slippers|dw|sr||||m^4006^Deepmoss Webspinner^0^s~d^36^Rhahk'Zor^0.07^0^k
byj|Outrunner's Cuffs|dw|sr||||m^3234^Lost Barrens Kodo^0^s~d^36^Rhahk'Zor^0.07^0^k
bym|Outrunner's Gloves|dw|r||||d^36^Rhahk'Zor^0.07^0^k~d^36^Edwin VanCleef^0.02^0^k
byn|Outrunner's Legguards|dw|sr||||m^5048^Deviate Adder^0^s~d^36^Rhahk'Zor^0.07^0^k
byo|Outrunner's Shield|dw|sr||||m^4807^Blackfathom Myrmidon^9.09^s~d^36^Rhahk'Zor^0.07^0^k
byp|Outrunner's Pauldrons|dw|||||d^34^Targorr the Dread^0.14^0^k~d^48^Old Serra'kis^0.14^0^k
byr|Grunt's Bracers|dw|sr||||m^3278^Witchwing Slayer^1.23^s~m^3989^Venture Co. Logger^3.85^s
byt|Grunt's Handwraps|dw|r||||d^36^Rhahk'Zor^0.07^0^k~d^36^Edwin VanCleef^0.02^0^k
byw|Grunt's Shield|dw|r||||d^36^Edwin VanCleef^0.02^0^k~d^34^Targorr the Dread^0.01^0^k
byx|Grunt's Pauldrons|dw|sr||||d^34^Targorr the Dread^0.01^0^k~d^34^Hamhock^0.01^0^k
bz1|Spiked Chain Wristbands|dw|sr||||d^34^Targorr the Dread^0.01^0^k~d^34^Hamhock^0.01^0^k
bz5|Spiked Chain Leggings|dw|sr||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
bz7|Spiked Chain Shoulder Pads|dw|r||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
bz8|Sentry's Surcoat|Rw|r||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
bze|Sentry's Shield|Rw|r||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
bzh|Sentry's Headdress|Rw|r||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
bzi|Wicked Chain Boots|Rw|r||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
bzp|Wicked Chain Legguards|R|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
bzq|Wicked Chain Shoulder Pads|R|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
bzs|Thick Scale Sabatons|Rw|sr||||m^4548^Steelsnap^0^s~R^1037^Dragonmaw Battlemaster^0.46^k
bzw|Thick Scale Gauntlets|R|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
bzx|Thick Scale Belt|Rw|r||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
c02|Pillager's Girdle|R|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
c03|Pillager's Boots|R|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
c04|Pillager's Bracers|R|r||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
c07|Pillager's Cloak|Rw|r||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
c0h|Marauder's Crest|wx|r||||x^6827^Box of Supplies^k~w^36^43^k
c0w|Sparkleshell Shield|w|r||||w^37^43^k
c0x|Pardoc Grips|q||h|||q^6142^Clam Bait^31^h^k
c0z|Ringtail Girdle|q||h|||q^6142^Clam Bait^31^h^k
c10|Bracesteel Belt|q||h|||q^6142^Clam Bait^31^h^k
c14|Steadfast Buckler|w|r||||w^39^45^k
c1g|Ancient Defender|w|r||||w^40^48^k
c1u|Bonelink Wall Shield|w|r||||w^40^49^k
c29|Formidable Crest|dw|r||||d^349^Princess Theradras^0.19^0^k
c2o|Ironhide Shield|dwx|r||||d^230^Plugger Spazzring^0.2^0^k
c37|Impenetrable Wall|dwx|r||||d^289^Jandice Barov^0.47^0^k~d^289^Marduk Blackpool^0.02^0^k
c3f|Magnificent Guard|dw|r||||d^289^Jandice Barov^0.47^0^k
c3i|Triumphant Sabatons|drw|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
c3j|Triumphant Bracers|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
c3l|Triumphant Cloak|drwx|r||||d^249^Onyxia^0.83^1^k~d^230^Plugger Spazzring^0.2^0^k
c3m|Triumphant Gauntlets|drw|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
c3n|Triumphant Girdle|drwx|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
c3o|Triumphant Skullcap|drw|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
c3p|Triumphant Legplates|drw|r||||d^249^Onyxia^0.83^1^k~d^289^Jandice Barov^0.47^0^k
c3t|Trader's Ring|q|||||q^5821^Bodyguard for Hire ^30^^k
c3u|Kodobone Necklace|q|||||q^5501^Bone Collector^33^^k
c3v|Sidegunner Shottie|q|||||q^5943^Gizelton Caravan^32^^k
c3w|Kodo Brander|q|||||q^5943^Gizelton Caravan^32^^k
c3z|Studded Ring Shield|q|||||q^5943^Gizelton Caravan^32^^k
c41|Kodo Rustler Boots|q|||||q^5561^Kodo Roundup^30^^k
c42|Wrangling Spaulders|q|||||q^5561^Kodo Roundup^30^^k
c46|Chemist's Ring|q||h|||q^4642^Melding of Influences^48^h^k
c47|Chemist's Smock|q||h|||q^4642^Melding of Influences^48^h^k
c48|Hunter's Insignia Medal|q|||||q^5057^Past Endeavors^53^^k
c49|Tidecrest Blade|q|||||q^5385^The Remains of Trey Lightforge^49^^k
c4a|Hunt Tracker Blade|q|||||q^5385^The Remains of Trey Lightforge^49^^k
c4b|Brantwood Sash|q|||||q^5242^A Final Blow^48^^k
c4c|Blight Leather Gloves|q|||||q^5242^A Final Blow^48^^k
c4d|Gearforge Girdle|q|||||q^5242^A Final Blow^48^^k
c6e|Beaststalker Blade|q||h|||q^5056^Shy-Rotam^53^h^k
c6f|Beasthunter Dagger|q||h|||q^5056^Shy-Rotam^53^h^k
c6g|Crystal Breeze Mantle|q|||||q^5121^High Chief Winterfall^52^^k
c6i|Fernpulse Jerkin|q|||||q^5121^High Chief Winterfall^52^^k
c6j|Willow Band Hauberk|q|||||q^5121^High Chief Winterfall^52^^k
c6l|Deep River Cloak|q|||||q^4842^Strange Sources^51^^k
c6n|Turquoise Sash|q||a|||q^5253^The Crystal of Zin-Malor^53^a^k
c6o|Plow Wood Spaulders|q||a|||q^5253^The Crystal of Zin-Malor^53^a^k
c6r|Emerald Mist Gauntlets|q||a|||q^5253^The Crystal of Zin-Malor^53^a^k
c6s|Seaspray Bracers|q||h|||q^4883^Guarding Secrets^52^h^k
c6t|Shining Armplates|q||h|||q^4883^Guarding Secrets^52^h^k
c6v|Heroic Commendation Medal|q|||||q^5237^Mission Accomplished!^50^a^k~q^5238^Mission Accomplished!^50^h^k
c6w|Intrepid Shortsword|q|||||q^5237^Mission Accomplished!^50^a^k~q^5238^Mission Accomplished!^50^h^k
c6x|Valiant Shortsword|q|||||q^5237^Mission Accomplished!^50^a^k~q^5238^Mission Accomplished!^50^h^k
c6y|Mooncloth Boots|c|||||c^Tailoring^285^19435^f
c70|Cerise Drape|q|||||q^4986^Glyphed Oaken Branch^51^a^k~q^4987^Glyphed Oaken Branch^51^h^k
c73|Light Crossbow|v|s||||v^7976^Thalgus Thunderfist^1455^61.4^89.1^294^^s
c74|Fine Light Crossbow|v|s||||v^7976^Thalgus Thunderfist^1455^61.4^89.1^3640^^s
c75|Heavy Crossbow|v|s||||v^7976^Thalgus Thunderfist^1455^61.4^89.1^14691^^s
c76|Short Spear|v|s||||v^1289^Gunther Weller^1453^64^68.8^10145^^s
c77|Heavy Spear|v|s||||v^1289^Gunther Weller^1453^64^68.8^27132^^s
c78|Orchid Amice|q|||||q^4971^A Matter of Time^53^^k
c79|Gold Link Belt|q|||||q^4971^A Matter of Time^53^^k
c7a|Hameya's Slayer|q|||||q^6024^Hameya's Plea^54^^k
c7i|Shadowskin Spaulders|q|||||q^6031^Runecloth^50^^k
c7j|Bricksteel Gauntlets|q|||||q^6031^Runecloth^50^^k
c8f|Ring of Protection|q|||||q^5942^Hidden Treasures^50^^k
c8g|Archlight Talisman|q|||||q^5942^Hidden Treasures^50^^k
c8m|Blitzcleaver|q|||||q^4810^Return to Tinkee^50^^k
c8n|Grave Scepter|q|||||q^4810^Return to Tinkee^50^^k
c8o|Condor Bracers|q|||||q^6134^Ghost-o-plasm Round Up^34^^k
c8p|Anchorhold Buckler|q|||||q^6134^Ghost-o-plasm Round Up^34^^k
c8q|Veildust Medicine Bag|q|s||||q^6124^Curing the Sick^14^a^s~q^6129^Curing the Sick^14^h^s
c9e|Vanguard Shield|dwx|||||d^289^Marduk Blackpool^0.02^0^k
c9f|Hulking Shield|dw|s||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
c9g|Slayer's Shield|R|||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
c9h|Prospector's Buckler|dw|s||||m^3251^Silithid Grub^4.55^s~m^4802^Blackfathom Tide Priestess^0^s
c9i|Bristlebark Buckler|dw|||||d^34^Targorr the Dread^0.01^0^k~d^34^Hamhock^0.01^0^k
c9j|Burnt Buckler|w|||||o^Battered Chest^1.28^k~w^5^10^k
c9r|Right-Handed Claw|v|s||||v^4203^Ariyell Skyshadow^1457^58.6^44.7^8117^^s
c9s|Right-Handed Blades|v|s||||v^4203^Ariyell Skyshadow^1457^58.6^44.7^21708^^s
c9t|Right-Handed Brass Knuckles|v|s||||v^4203^Ariyell Skyshadow^1457^58.6^44.7^2130^^s
c9u|Left-Handed Brass Knuckles|v|s||||v^4203^Ariyell Skyshadow^1457^58.6^44.7^2138^^s
c9v|Left-Handed Claw|v|s||||v^4203^Ariyell Skyshadow^1457^58.6^44.7^8237^^s
c9x|Left-Handed Blades|v|s||||v^4203^Ariyell Skyshadow^1457^58.6^44.7^22107^^s
cad|Journeyman's Stave|w|s||||m^1117^Rockjaw Bonesnapper^0^s
cae|Spellbinder Orb|dw|s||||d^2999^The Butcher^25^0^s~m^250654^NPC 250654^0^s
caf|Bright Sphere|dwx|||||d^34^Targorr the Dread^0.01^0^k~d^34^Dextren Ward^0.01^0^k
cag|Silver-thread Rod|Rwx|||||R^14278^Ro'Bark^0.49^k~R^14427^Gibblesnik^0.49^k
cah|Nightsky Orb|dwx|||||d^90^Mekgineer Thermaplugg^0.43^0^k
cai|Imperial Red Scepter|dwx|||||d^230^Plugger Spazzring^0.2^0^k
caj|Arcane Star|dwx|||||d^289^Jandice Barov^0.47^0^k~d^289^Marduk Blackpool^0.02^0^k
cap|Hibernal Sphere|dwx|||||d^349^Princess Theradras^0.19^0^k
cav|Imbued Shield|dwx|||||d^289^Jandice Barov^0.47^0^k~d^289^Marduk Blackpool^0.02^0^k
cax|Runic Stave|dw|s||||m^3258^Bristleback Hunter^2.86^s~d^36^Rhahk'Zor^0.07^0^k
cay|Mystic's Sphere|dw|||||d^36^Edwin VanCleef^0.02^0^k~d^36^Cookie^0.01^0^k
caz|Sanguine Star|dw|||||d^34^Hamhock^0.01^0^k~d^34^Dextren Ward^0.01^0^k
cbe|Satyr's Rod|R|||||R^1037^Dragonmaw Battlemaster^0.46^k~R^4066^Nal'taszar^0.46^k
cbf|Stonecloth Branch|wx|||||x^6827^Box of Supplies^k~w^34^43^k
cbh|Windchaser Orb|w|||||w^45^51^k
cbi|Venomshroud Orb|dw|||||d^230^Plugger Spazzring^0.2^0^k~d^349^Princess Theradras^0.19^0^k
cbj|Highborne Star|dwx|||||d^289^Marduk Blackpool^0.02^0^k
cbk|Elunarian Sphere|rw|||||d^249^Onyxia^0.83^1^k~m^6109^Azuregos^0.83^k
cc6|Enduring Shield|wx|||||x^6827^Box of Supplies^k~w^34^43^k
cc7|Warleader's Shield|dw|||||d^289^Jandice Barov^0.47^0^k
ccb|Thorium Rifle|c|||||c^Engineering^260^19792^f
ccf|Spellpower Goggles Xtreme Plus|c|||||c^Engineering^270^19794^f
cck|Dark Iron Rifle|c|||||c^Engineering^275^19796^f
ccn|Flawless Arcanite Rifle|c|||||c^Engineering^300^19833^f
cl1|Drakefire Amulet|Q|U||||q^6502^Drakefire Amulet^50^a^k~q^6602^Blood of the Black Dragon Champion^55^h^k
cl7|Sergeant Major's Cape|p|U|a|||p^5^a^f
clr|Senior Sergeant's Insignia|pv|U|h|18443||p^4^h^f
cls|Sergeant Major's Cape|p|U|a|||p^5^a^f
clt|Sergeant Major's Cape|p|U|a|||p^5^a^f
clx|Sergeant's Cloak|pv|U|h|18441||p^3^^f
cly|Sergeant's Cape|pv|U|a|18461||p^3^^f~v^12805^Officer Areyn^1453^76.8^65.9^44154^a^k
cm1|High Warlord's Blade|p||h|12584||p^14^h^f
cmn|Knight-Captain's Silk Sash|p|U|a|16488||p^8^a^f
cmp|Knight-Lieutenant's Silk Boots|p|U|a|16485||p^7^a^f
cmq|Knight-Captain's Silk Cuffs|p|U|a|||p^8^a^f
cnb|Knight-Lieutenant's Silk Gloves|p|U|a|16487||p^7^a^f
cnc|Knight-Lieutenant's Leather Boots|p|U|a|16498||p^7^a^f
cnd|Knight-Lieutenant's Dragonhide Footwraps|p|U|a|16494||p^7^a^f
cne|Knight-Captain's Leather Bracers|p|U|a|||p^8^a^f
cnf|Knight-Captain's Dragonhide Armsplints|p|U|a|16493||p^8^a^f
cng|Knight-Lieutenant's Leather Gauntlets|p|U|a|16499||p^7^a^f
cnh|Knight-Lieutenant's Dragonhide Gloves|p|U|a|16496||p^7^a^f
cni|Knight-Captain's Leather Belt|p|U|a|16500||p^8^a^f
cnj|Knight-Captain's Dragonhide Girdle|p|U|a|16495||p^8^a^f
cnk|Knight-Captain's Chain Girdle|p|U|a|16529||p^8^a^f
cnl|Knight-Lieutenant's Chain Boots|p|U|a|16531||p^7^a^f
cnm|Knight-Captain's Chain Armguards|p|U|a|16517||p^8^a^f
cnn|Knight-Lieutenant's Chain Gauntlets|p|U|a|16530||p^7^a^f
cno|Knight-Captain's Plate Wristguards|p|U|a|16512||p^8^a^f
cnp|Knight-Lieutenant's Plate Boots|p|U|a|16509||p^7^a^f
cnq|Knight-Lieutenant's Plate Gauntlets|p|U|a|16510||p^7^a^f
cnr|Knight-Captain's Plate Girdle|p|U|a|16511||p^8^a^f
cnt|Knight-Lieutenant's Lamellar Sabatons|p|U|a|||p^7^a^f
cnu|Knight-Lieutenant's Lamellar Gauntlets|p|U|a|||p^7^a^f
cnv|Knight-Captain's Lamellar Cinch|p|U|a|||p^8^a^f
cnw|Knight-Captain's Lamellar Armsplints|p|U|a|||p^8^a^f
cnx|Knight-Captain's Silk Raiment|p|U|a|16491||p^8^a^f
cny|Knight-Captain's Silk Leggings|p|U|a|16490||p^8^a^f
cnz|Lieutenant Commander's Silk Spaulders|p|U|a|16492||p^10^a^f
co0|Lieutenant Commander's Crown|p|U|a|16489||p^10^a^f
co1|Knight-Captain's Leather Armor|p|U|a|16505||p^8^a^f
co2|Lieutenant Commander's Leather Veil|p|U|a|16506||p^10^a^f
co3|Knight-Captain's Leather Legguards|p|U|a|16508||p^8^a^f
co4|Lieutenant Commander's Leather Spaulders|p|U|a|16507||p^10^a^f
co5|Knight-Captain's Dragonhide Tunic|p|U|a|16504||p^8^a^f
co6|Knight-Captain's Dragonhide Leggings|p|U|a|16502||p^8^a^f
co7|Lieutenant Commander's Dragonhide Epaulets|p|U|a|16501||p^10^a^f
co8|Lieutenant Commander's Dragonhide Shroud|p|U|a|16503||p^10^a^f
co9|Knight-Captain's Chain Hauberk|p|U|a|16525||p^8^a^f
coa|Knight-Captain's Chain Leggings|p|U|a|16527||p^8^a^f
cob|Lieutenant Commander's Chain Pauldrons|p|U|a|16528||p^10^a^f
coc|Lieutenant Commander's Chain Helmet|p|U|a|||p^10^a^f
cod|Lieutenant Commander's Plate Helm|p|U|a|16514||p^10^a^f
coe|Knight-Captain's Plate Chestguard|p|U|a|16513||p^8^a^f
cof|Knight-Captain's Plate Leggings|p|U|a|16515||p^8^a^f
cog|Lieutenant Commander's Plate Pauldrons|p|U|a|16516||p^10^a^f
coh|Knight-Captain's Lamellar Breastplate|p|U|a|||p^8^a^f
coi|Lieutenant Commander's Lamellar Headguard|p|U|a|||p^10^a^f
coj|Knight-Captain's Lamellar Leggings|p|U|a|||p^8^a^f
cok|Lieutenant Commander's Lamellar Shoulders|p|U|a|||p^10^a^f
col|Marshal's Silk Footwraps|p|U|a|16539||p^12^a^f
com|Marshal's Silk Bracers|p|U|a|16538||p^12^a^f
con|Marshal's Silk Sash|p|U|a|16537||p^12^a^f
coo|Marshal's Silk Gloves|p|U|a|16540||p^12^a^f
cop|Field Marshal's Coronet|p|U|a|16533||p^13^a^f
coq|Marshal's Silk Leggings|p|U|a|16534||p^12^a^f
cor|Field Marshal's Silk Vestments|p|U|a|16535||p^13^a^f
cos|Field Marshal's Silk Spaulders|p|U|a|16536||p^13^a^f
cot|Marshal's Dragonhide Bracers|p|U|a|16553||p^12^a^f
cou|Marshal's Leather Footguards|p|U|a|16558||p^12^a^f
cov|Marshal's Dragonhide Waistguard|p|U|a|16556||p^12^a^f
cow|Marshal's Dragonhide Gauntlets|p|U|a|16555||p^12^a^f
cox|Field Marshal's Dragonhide Spaulders|p|U|a|16551||p^13^a^f
coy|Marshal's Dragonhide Legguards|p|U|a|16552||p^12^a^f
coz|Field Marshal's Dragonhide Helmet|p|U|a|16550||p^13^a^f
cp0|Field Marshal's Dragonhide Breastplate|p|U|a|16549||p^13^a^f
cp1|Field Marshal's Leather Chestpiece|p|U|a|16563||p^13^a^f
cp2|Marshal's Leather Handgrips|p|U|a|16560||p^12^a^f
cp3|Field Marshal's Leather Mask|p|U|a|16561||p^13^a^f
cp4|Marshal's Leather Leggings|p|U|a|16564||p^12^a^f
cp5|Field Marshal's Leather Epaulets|p|U|a|16562||p^13^a^f
cp6|Marshal's Leather Cinch|p|U|a|16557||p^12^a^f
cp7|Marshal's Dragonhide Boots|p|U|a|16554||p^12^a^f
cp8|Marshal's Leather Armsplints|p|U|a|16559||p^12^a^f
cp9|Marshal's Chain Bracers|p|U|a|16570||p^12^a^f
cpa|Marshal's Chain Boots|p|U|a|16569||p^12^a^f
cpb|Marshal's Chain Grips|p|U|a|16571||p^12^a^f
cpc|Marshal's Chain Girdle|p|U|a|16572||p^12^a^f
cpd|Field Marshal's Chain Helm|p|U|a|16566||p^13^a^f
cpe|Field Marshal's Chain Breastplate|p|U|a|16565||p^13^a^f
cpf|Marshal's Chain Legguards|p|U|a|16567||p^12^a^f
cpg|Field Marshal's Chain Spaulders|p|U|a|16568||p^13^a^f
cph|Marshal's Lamellar Armguards|p|U|a|||p^12^a^f
cpi|Marshal's Lamellar Belt|p|U|a|||p^12^a^f
cpj|Marshal's Lamellar Gloves|p|U|a|||p^12^a^f
cpk|Marshal's Lamellar Boots|p|U|a|||p^12^a^f
cpl|Field Marshal's Lamellar Chestplate|p|U|a|||p^13^a^f
cpm|Field Marshal's Lamellar Faceguard|p|U|a|||p^13^a^f
cpn|Marshal's Lamellar Legplates|p|U|a|||p^12^a^f
cpo|Field Marshal's Lamellar Pauldrons|p|U|a|||p^13^a^f
cpp|Field Marshal's Plate Armor|p|U|a|16541||p^13^a^f
cpq|Field Marshal's Plate Helm|p|U|a|16542||p^13^a^f
cpr|Marshal's Plate Legguards|p|U|a|16543||p^12^a^f
cps|Field Marshal's Plate Shoulderguards|p|U|a|16544||p^13^a^f
cpt|Marshal's Plate Bracers|p|U|a|16546||p^12^a^f
cpu|Marshal's Plate Girdle|p|U|a|16547||p^12^a^f
cpv|Marshal's Plate Boots|p|U|a|16545||p^12^a^f
cpw|Marshal's Plate Gauntlets|p|U|a|16548||p^12^a^f
cpx|Blood Guard's Silk Footwraps|p|U|h|16369||p^7^h^f
cpy|First Sergeant's Silk Cuffs|pv|U|h|18456||p^5^h^f
cpz|Blood Guard's Silk Gloves|p|U|h|16391||p^7^h^f
cq0|Legionnaire's Silk Belt|p|U|h|16367||p^8^h^f
cq1|Champion's Silk Hood|p|U|h|16416||p^10^h^f
cq2|Legionnaire's Silk Pants|p|U|h|16414||p^8^h^f
cq3|Legionnaire's Silk Robes|p|U|h|16413||p^8^h^f
cq4|Champion's Silk Shoulderpads|p|U|h|16415||p^10^h^f
cq5|Legionnaire's Dragonhide Armguards|p|U|h|16395||p^8^h^f
cq6|Blood Guard's Dragonhide Boots|p|U|h|16393||p^7^h^f
cq7|Legionnaire's Dragonhide Waistband|p|U|h|16399||p^8^h^f
cq8|Blood Guard's Dragonhide Gauntlets|p|U|h|16397||p^7^h^f
cq9|First Sergeant's Leather Armguards|pv|U|h|18452||p^5^h^f
cqa|Blood Guard's Leather Treads|p|U|h|16392||p^7^h^f
cqb|Blood Guard's Leather Vices|p|U|h|16396||p^7^h^f
cqc|Legionnaire's Leather Girdle|p|U|h|16398||p^8^h^f
cqd|Champion's Dragonhide Spaulders|p|U|h|16423||p^10^h^f
cqe|Legionnaire's Dragonhide Trousers|p|U|h|16422||p^8^h^f
cqf|Champion's Dragonhide Helm|p|U|h|16424||p^10^h^f
cqg|Legionnaire's Dragonhide Breastplate|p|U|h|16421||p^8^h^f
cqh|Legionnaire's Leather Hauberk|p|U|h|16417||p^8^h^f
cqi|Champion's Leather Headguard|p|U|h|16418||p^10^h^f
cqj|Champion's Leather Mantle|p|U|h|16420||p^10^h^f
cqk|Legionnaire's Leather Leggings|p|U|h|16419||p^8^h^f
cql|Blood Guard's Plate Boots|p|U|h|16405||p^7^h^f
cqm|Blood Guard's Plate Gloves|p|U|h|16406||p^7^h^f
cqn|Legionnaire's Plate Cinch|p|U|h|16407||p^8^h^f
cqo|Legionnaire's Plate Bracers|p|U|h|16404||p^8^h^f
cqp|Legionnaire's Plate Armor|p|U|h|16430||p^8^h^f
cqq|Champion's Plate Headguard|p|U|h|16429||p^10^h^f
cqr|Legionnaire's Plate Legguards|p|U|h|16431||p^8^h^f
cqs|Champion's Plate Pauldrons|p|U|h|16432||p^10^h^f
cqt|Legionnaire's Chain Bracers|p|U|h|16402||p^8^h^f
cqu|Blood Guard's Mail Walkers|p|U|h|||p^7^h^f
cqv|Blood Guard's Mail Grips|p|U|h|||p^7^h^f
cqw|Legionnaire's Mail Cinch|p|U|h|||p^8^h^f
cqx|Champion's Mail Helm|p|U|h|||p^10^h^f
cqy|Legionnaire's Mail Chestpiece|p|U|h|||p^8^h^f
cqz|Legionnaire's Mail Leggings|p|U|h|||p^8^h^f
cr0|Champion's Mail Shoulders|p|U|h|||p^10^h^f
cr1|Legionnaire's Chain Breastplate|p|U|h|16425||p^8^h^f
cr3|Legionnaire's Chain Leggings|p|U|h|16426||p^8^h^f
cr4|Champion's Chain Pauldrons|p|U|h|16427||p^10^h^f
cr5|Legionnaire's Chain Girdle|p|U|h|16400||p^8^h^f
cr6|Blood Guard's Chain Gauntlets|p|U|h|16403||p^7^h^f
cr7|Blood Guard's Chain Boots|p|U|h|16401||p^7^h^f
cr8|First Sergeant's Mail Wristguards|pv|U|h|||p^5^h^f~v^12799^Sergeant Ba'sha^1454^41.5^68.6^44802^h^k
cr9|Warlord's Silk Cowl|p|U|h|16441||p^13^h^f
cra|General's Silk Trousers|p|U|h|16442||p^12^h^f
crb|Warlord's Silk Raiment|p|U|h|16443||p^13^h^f
crc|Warlord's Silk Amice|p|U|h|16444||p^13^h^f
crd|General's Silk Sash|p|U|h|16439||p^12^h^f
cre|General's Silk Cuffs|p|U|h|16438||p^12^h^f
crf|General's Silk Boots|p|U|h|16437||p^12^h^f
crg|General's Silk Handguards|p|U|h|16440||p^12^h^f
crh|Warlord's Plate Armor|p|U|h|16477||p^13^h^f
cri|Warlord's Plate Headpiece|p|U|h|16478||p^13^h^f
crj|General's Plate Leggings|p|U|h|16479||p^12^h^f
crk|Warlord's Plate Shoulders|p|U|h|16480||p^13^h^f
crl|General's Plate Boots|p|U|h|16483||p^12^h^f
crm|General's Plate Armguards|p|U|h|16481||p^12^h^f
crn|General's Plate Girdle|p|U|h|16482||p^12^h^f
cro|General's Plate Gauntlets|p|U|h|16484||p^12^h^f
crp|Warlord's Dragonhide Hauberk|p|U|h|16452||p^13^h^f
crq|Warlord's Dragonhide Helmet|p|U|h|16451||p^13^h^f
crr|Warlord's Dragonhide Epaulets|p|U|h|16449||p^13^h^f
crs|General's Dragonhide Leggings|p|U|h|16450||p^12^h^f
crt|General's Dragonhide Bracers|p|U|h|16445||p^12^h^f
cru|General's Dragonhide Boots|p|U|h|16459||p^12^h^f
crv|General's Dragonhide Gloves|p|U|h|16448||p^12^h^f
crw|General's Dragonhide Belt|p|U|h|16447||p^12^h^f
crx|General's Leather Girdle|p|U|h|16458||p^12^h^f
cry|General's Leather Treads|p|U|h|16446||p^12^h^f
crz|General's Leather Armsplints|p|U|h|16460||p^12^h^f
cs0|General's Leather Mitts|p|U|h|16454||p^12^h^f
cs1|Warlord's Leather Helm|p|U|h|16455||p^13^h^f
cs2|Warlord's Leather Spaulders|p|U|h|16457||p^13^h^f
cs3|Warlord's Leather Breastplate|p|U|h|16453||p^13^h^f
cs4|General's Leather Legguards|p|U|h|16456||p^12^h^f
cs5|Warlord's Chain Chestpiece|p|U|h|16466||p^13^h^f
cs6|Warlord's Chain Helmet|p|U|h|16465||p^13^h^f
cs7|General's Chain Legguards|p|U|h|16467||p^12^h^f
cs8|Warlord's Chain Shoulders|p|U|h|16468||p^13^h^f
cs9|General's Chain Sabatons|p|U|h|16462||p^12^h^f
csa|General's Chain Wristguards|p|U|h|16461||p^12^h^f
csb|General's Chain Gloves|p|U|h|16463||p^12^h^f
csc|General's Chain Girdle|p|U|h|16464||p^12^h^f
csd|General's Mail Boots|p|U|h|||p^12^h^f
cse|General's Mail Gauntlets|p|U|h|||p^12^h^f
csf|General's Mail Waistband|p|U|h|||p^12^h^f
csg|General's Mail Bracers|p|U|h|||p^12^h^f
csh|Warlord's Mail Armor|p|U|h|||p^13^h^f
csi|Warlord's Mail Helm|p|U|h|||p^13^h^f
csj|General's Mail Leggings|p|U|h|||p^12^h^f
csk|Warlord's Mail Spaulders|p|U|h|||p^13^h^f
ctc|Aquarius Belt|q|||||q^31^Aquatic Form^16^h^k~q^5061^Aquatic Form^16^a^k
ctq|Thornflinger|q||a|||q^4902^Wildkin of Elune^52^a^k
ctr|Opaline Medallion|q||a|||q^4902^Wildkin of Elune^52^a^k
cuq|Wildhunter Cloak|q||h|||q^247^The Hunt Completed^20^h^k
cur|Deftkin Belt|q||h|||q^824^Je'neu of the Earthen Ring^23^h^k
cus|Driftmire Shield|q||h|||q^824^Je'neu of the Earthen Ring^23^h^k
cut|Soft Willow Cape|q||h|||q^824^Je'neu of the Earthen Ring^23^h^k
cuy|Vest of Elements|d|||||d^229^General Drakkisath^11.11^0^k
cuz|Coif of Elements|w|||||m^1853^Darkmaster Gandling^11.11^k
cv0|Kilt of Elements|d|||||d^329^Baron Rivendare^11.11^0^k
cv1|Pauldrons of Elements|w|||||m^10339^Gyth^20^k
cv2|Boots of Elements|d|||||d^229^Highlord Omokk^16.67^0^k
cv3|Bindings of Elements|w|||||w^0^0^k
cv4|Gauntlets of Elements|d|||||d^229^Pyroguard Emberseer^20^0^k
cv5|Cord of Elements|w|||||w^0^0^k
cv6|Beaststalker's Tunic|d|||||d^229^General Drakkisath^11.11^0^k
cv7|Beaststalker's Boots|d|||||d^329^Nerub'enkan^20^0^k
cv8|Beaststalker's Gloves|d|||||d^229^War Master Voone^20^0^k
cv9|Beaststalker's Cap|w|||||m^1853^Darkmaster Gandling^11.11^k
cva|Beaststalker's Pants|d|||||d^329^Baron Rivendare^11.11^0^k
cvb|Beaststalker's Mantle|d|||||d^229^Overlord Wyrmthalak^20^0^k
cvc|Beaststalker's Belt|w|||||w^0^0^k
cvd|Beaststalker's Bindings|w|||||w^0^0^k
cve|Magister's Boots|d|||||d^329^Hearthsinger Forresten^20^0^k
cvf|Magister's Bindings|w|||||w^0^0^k
cvg|Magister's Gloves|d|||||d^289^Doctor Theolen Krastinov^14^0^k
cvh|Magister's Belt|w|||||w^0^0^k
cvi|Magister's Crown|w|||||m^1853^Darkmaster Gandling^11.11^k
cvj|Magister's Leggings|d|||||d^329^Baron Rivendare^11.11^0^k
cvk|Magister's Robes|d|||||d^229^General Drakkisath^11.11^0^k
cvl|Magister's Mantle|d|||||d^289^^16.67^0^k
cvm|Devout Robe|d|||||d^229^General Drakkisath^11.11^0^k
cvn|Devout Sandals|d|||||d^329^Maleki the Pallid^20^0^k
cvo|Devout Gloves|d|||||d^329^Archivist Galford^22^0^k
cvp|Devout Crown|w|||||m^1853^Darkmaster Gandling^11.11^k
cvq|Devout Skirt|d|||||d^329^Baron Rivendare^11.11^0^k
cvr|Devout Mantle|w|||||m^10264^Solakar Flamewreath^20^k
cvs|Devout Belt|w|||||w^0^0^k
cvt|Devout Bracers|w|||||w^0^0^k
cvu|Dreadmist Mask|w|||||m^1853^Darkmaster Gandling^11.11^k
cvv|Dreadmist Leggings|d|||||d^329^Baron Rivendare^11.11^0^k
cvw|Dreadmist Robe|d|||||d^229^General Drakkisath^11.11^0^k
cvx|Dreadmist Mantle|d|||||d^289^Jandice Barov^17^0^k
cvy|Dreadmist Belt|w|||||w^0^0^k
cvz|Dreadmist Bracers|w|||||w^0^0^k
cw0|Dreadmist Sandals|d|||||d^329^Baroness Anastari^20^0^k
cw1|Dreadmist Wraps|d|||||d^289^Lorekeeper Polkelt^17^0^k
cw2|Wildheart Vest|d|||||d^229^General Drakkisath^11.11^0^k
cw3|Shadowcraft Cap|w|||||m^1853^Darkmaster Gandling^11.11^k
cw4|Shadowcraft Spaulders|d|||||d^329^Cannon Master Willey^20^0^k
cw5|Shadowcraft Pants|d|||||d^329^Baron Rivendare^11.11^0^k
cw6|Shadowcraft Bracers|dw|||||d^289^Instructor Malicia^5^0^k~d^329^^1.4^0^k
cw7|Shadowcraft Boots|d|||||d^289^Rattlegore^16^0^k
cw8|Shadowcraft Gloves|d|||||d^229^Shadow Hunter Vosh'gajin^21^0^k
cw9|Shadowcraft Belt|w|||||w^0^0^k
cwa|Wildheart Bracers|w|||||w^0^0^k
cwb|Wildheart Boots|d|||||d^229^Mother Smolderweb^15^0^k
cwc|Wildheart Belt|d|||||d^289^The Ravenian^4^0^k~d^229^^1.11^0^k
cwd|Wildheart Gloves|d|||||d^329^The Unforgiven^20^0^k~d^229^^4.5^0^k
cwe|Wildheart Spaulders|w|||||m^10268^Gizrul the Slavener^15^k
cwf|Wildheart Kilt|d|||||d^329^Baron Rivendare^11.11^0^k
cwg|Wildheart Cowl|w|||||m^1853^Darkmaster Gandling^11.11^k
cwh|Shadowcraft Tunic|d|||||d^229^General Drakkisath^11.11^0^k
cwi|Lightforge Bracers|dw|||||d^289^Lord Alexei Barov^5^0^k~m^10409^Rockwing Screecher^0.7^k
cwj|Lightforge Belt|w|||||w^0^0^k
cwk|Lightforge Gauntlets|w|||||w^0^0^k
cwl|Lightforge Boots|w|||||m^10813^Balnazzar^19.8^k
cwm|Lightforge Breastplate|d|||||d^229^General Drakkisath^11.11^0^k
cwn|Lightforge Helm|w|||||m^1853^Darkmaster Gandling^11.11^k
cwo|Lightforge Legplates|d|||||d^329^Baron Rivendare^11.11^0^k
cwp|Lightforge Spaulders|d|||||d^229^The Beast^20^0^k
cwq|Breastplate of Valor|d|||||d^229^General Drakkisath^11.11^0^k
cwr|Helm of Valor|w|||||m^1853^Darkmaster Gandling^11.11^k
cws|Legplates of Valor|d|||||d^329^Baron Rivendare^11.11^0^k
cwt|Spaulders of Valor|w|||||m^10429^Warchief Rend Blackhand^19.8^k
cwu|Boots of Valor|w|||||m^10506^Kirtonos the Herald^11.11^k
cwv|Bracers of Valor|w|||||w^0^0^k
cww|Belt of Valor|w|||||w^0^0^k
cwx|Gauntlets of Valor|w|||||w^0^0^k
cwy|Witherseed Gloves|q|||||q^5863^The Dunemaul Compound^44^^k
cwz|Rugwood Mantle|q|||||q^5863^The Dunemaul Compound^44^^k
cx0|Shredder Operating Gloves|q|s|h|||q^6504^The Lost Pages^23^h^s
cx1|Oilrag Handwraps|q|s|h|||q^6504^The Lost Pages^23^h^s
cxs|Furbolg Medicine Pouch|v|||||v^11555^Gorn One Eye^1450^31.4^94.9^150000^^k
cxt|Furbolg Medicine Totem|v|||||v^11555^Gorn One Eye^1450^31.4^94.9^133081^^k
cyc|Captain Rackmore's Wheel|q|||||q^6161^Claim Rackmore's Treasure!^30^^k
cyd|Captain Rackmore's Tiller|q|||||q^6161^Claim Rackmore's Treasure!^30^^k
cyf|Silkstream Cuffs|q|||||q^6027^Book of the Ancients^30^^k
cyh|Arcmetal Shoulders|q|||||q^6027^Book of the Ancients^30^^k
cyi|Gripsteel Wristguards|q||h|||q^5581^Portals of the Legion^32^h^k
d0p|Braidfur Gloves|q||h|||q^5581^Portals of the Legion^32^h^k
d12|Outlaw Sabre|q|s|h|||q^6922^Baron Aquanis^21^h^s
d13|Witch's Finger|q|s|h|||q^6922^Baron Aquanis^21^h^s
d15|Polished Walking Staff|q||h|||q^6544^Torek's Assault^20^h^k
d16|Slatemetal Cutlass|q||h|||q^6544^Torek's Assault^20^h^k
d17|Claystone Shortsword|q|s|h|||q^6284^Arachnophobia^15^h^s
d1a|Clear Crystal Rod|q|s|h|||q^6284^Arachnophobia^15^h^s
d3j|Warsong Sash|q|s|h|||q^6571^Warsong Supplies^22^h^s
d3l|Warsong Boots|q|s|h|||q^6571^Warsong Supplies^22^h^s
d3m|Warsong Gauntlets|q|s|h|||q^6571^Warsong Supplies^22^h^s
d3p|Owlbeard Bracers|q|s|h|||q^6481^Earthen Arise^14^h^s
d3r|Molten Helm|c|||||c^Leatherworking^300^20854^f
d3t|Windseeker Boots|q|s|h|||q^6381^New Life^17^h^s
d3u|Sandspire Gloves|q|s|h|||q^6381^New Life^17^h^s
d3v|Screecher Belt|q|s|h|||q^6283^Bloodfury Bloodline^18^h^s
d3y|Spritekin Cloak|q|s|h|||q^6283^Bloodfury Bloodline^18^h^s
d40|Smokey's Explosive Launcher|q|||||q^6041^When Smokey Sings, I Get Violent^54^^k
d41|Smokey's Fireshooter|q|||||q^6041^When Smokey Sings, I Get Violent^54^^k
d42|Duskwing Gloves|q||h|||q^6135^Duskwing, Oh How I Hate Thee...^56^h^k
d43|Duskwing Mantle|q||h|||q^6135^Duskwing, Oh How I Hate Thee...^56^h^k
d44|Gorewood Bow|q|||||q^6148^The Scarlet Oracle, Demetria^56^h^k~q^6187^Order Must Be Restored^56^a^k
d45|Stormrager|q|||||q^6148^The Scarlet Oracle, Demetria^56^h^k~q^6187^Order Must Be Restored^56^a^k
d46|Sacred Protector|q|||||q^6148^The Scarlet Oracle, Demetria^56^h^k~q^6187^Order Must Be Restored^56^a^k
d4a|Ichor Spitter|q||h|||q^6136^The Corpulent One^56^h^k
d4b|Skullstone Hammer|q||h|||q^6136^The Corpulent One^56^h^k
d4c|Sarah's Guide|q||h|||q^6136^The Corpulent One^56^h^k
d4d|Boorguard Tunic|q||h|||q^6621^King of the Foulweald^21^h^k
d4e|Cobalt Legguards|q||h|||q^6621^King of the Foulweald^21^h^k
d4f|Stonerender Gauntlets|u|||||
d4l|Dark Iron Leggings|c|||||c^Blacksmithing^300^20876^f
d4m|Dark Iron Bracers|c|||||c^Blacksmithing^270^20874^f
d4n|Dark Iron Reaver|c|||||c^Blacksmithing^300^20890^f
d5b|Skullbreaker|Q||h|||q^6521^An Unholy Alliance^28^h^k
d5e|Nail Spitter|Q||h|||q^6521^An Unholy Alliance^28^h^k
d5f|Zealot's Robe|Q||h|||q^6521^An Unholy Alliance^28^h^k
d5i|Gutterblade|q||a|||q^1046^Raene's Cleansing^18^a^k
d5j|Luminescent Amice|q||a|||q^1035^Fallen Sky Lake^20^a^k
d5r|Changuk Smasher|w|||||w^0^0^k
d69|Earthshaker|r|||||d^409^Magmadar^20^1^k
d6a|Shadowstrike|r|||||d^409^Sulfuron Harbinger^33.33^1^k
d7b|Blazefury Medallion|w|||||m^12397^Lord Kazzak^10^k
d9b|Dented Buckler|v|s|h|||v^4559^Timothy Weldon^1458^62.7^39.2^34^h^s
d9c|Small Shield|vw|s||||v^1104^Grundel Harkin^1426^28.7^67.9^34^a^s~m^11040^Watcher Brownell^0.02^k
d9d|Round Buckler|v||h|17186||v^4559^Timothy Weldon^1458^62.7^39.2^243^h^s
d9e|Small Targe|v|s|a|17185||v^2046^Andrew Krighton^1429^41.7^65.7^243^a^s
d9f|Banded Buckler|vw|s||||v^5107^Mangorn Flinthammer^1455^32^58.2^1078^^s~m^3528^Pyrewood Armorer^100^k
d9g|Ringed Buckler|v|s||||v^3493^Grazlix^1413^62.2^38.4^2265^^s
d9h|Metal Buckler|v|s||||v^5812^Tumi^1454^82.4^23.4^12043^^s
d9i|Ornate Buckler|v|s||||v^5812^Tumi^1454^82.4^23.4^34609^^s
d9k|Reinforced Targe|v|s||||v^226^Morg Gnarltree^1431^73.8^48.6^4399^^s
d9l|Sulfuron Hammer|c|||||c^Blacksmithing^300^21161^f
dic|Forcestone Buckler|Q||h|||q^1049^Compendium of the Fallen^28^h^k
dir|Smokey's Drape|q|||||q^6041^When Smokey Sings, I Get Violent^54^^k
dju|Knight-Lieutenant's Dreadweave Boots|p|U|a|||p^7^a^f
djv|Knight-Captain's Dreadweave Bracers|p|U|a|17575||p^8^a^f
djw|Knight-Lieutenant's Dreadweave Gloves|p|U|a|||p^7^a^f
djx|Knight-Captain's Dreadweave Belt|p|U|a|17574||p^8^a^f
djy|Lieutenant Commander's Headguard|p|U|a|17570||p^10^a^f
djz|Knight-Captain's Dreadweave Leggings|p|U|a|||p^8^a^f
dk0|Knight-Captain's Dreadweave Robe|p|U|a|17572||p^8^a^f
dk1|Lieutenant Commander's Dreadweave Mantle|p|U|a|17573||p^10^a^f
dk2|Champion's Dreadweave Hood|p|U|h|17566||p^10^h^f
dk3|Legionnaire's Dreadweave Leggings|p|U|h|||p^8^h^f
dk4|Legionnaire's Dreadweave Robe|p|U|h|17568||p^8^h^f
dk5|Champion's Dreadweave Shoulders|p|U|h|17569||p^10^h^f
dk6|Legionnaire's Dreadweave Belt|p|U|h|17565||p^8^h^f
dk7|Legionnaire's Dreadweave Bracers|p|U|h|17563||p^8^h^f
dk8|Blood Guard's Dreadweave Boots|p|U|h|||p^7^h^f
dk9|Blood Guard's Dreadweave Gloves|p|U|h|||p^7^h^f
dka|Field Marshal's Coronal|p|U|a|17591||p^13^a^f
dkb|Marshal's Dreadweave Leggings|p|U|a|17593||p^12^a^f
dkc|Field Marshal's Dreadweave Shoulders|p|U|a|17590||p^13^a^f
dkd|Field Marshal's Dreadweave Robe|p|U|a|17592||p^13^a^f
dke|Marshal's Dreadweave Cuffs|p|U|a|17587||p^12^a^f
dkf|Marshal's Dreadweave Boots|p|U|a|17586||p^12^a^f
dkg|Marshal's Dreadweave Gloves|p|U|a|17588||p^12^a^f
dkh|Marshal's Dreadweave Sash|p|U|a|17589||p^12^a^f
dki|General's Dreadweave Boots|p|U|h|17583||p^12^h^f
dkj|General's Dreadweave Bracers|p|U|h|17582||p^12^h^f
dkk|General's Dreadweave Gloves|p|U|h|17584||p^12^h^f
dkl|General's Dreadweave Belt|p|U|h|17585||p^12^h^f
dkm|Warlord's Dreadweave Mantle|p|U|h|17580||p^13^h^f
dkn|Warlord's Dreadweave Hood|p|U|h|17578||p^13^h^f
dko|Warlord's Dreadweave Robe|p|U|h|17581||p^13^h^f
dkp|General's Dreadweave Pants|p|U|h|17579||p^12^h^f
dkq|Knight-Lieutenant's Satin Boots|p|U|a|17616||p^7^a^f
dkr|Knight-Captain's Satin Cuffs|p|U|a|17615||p^8^a^f
dks|Knight-Lieutenant's Satin Gloves|p|U|a|17617||p^7^a^f
dkt|Knight-Captain's Satin Cord|p|U|a|17614||p^8^a^f
dku|Lieutenant Commander's Diadem|p|U|a|17610||p^10^a^f
dkv|Knight-Captain's Satin Leggings|p|U|a|17611||p^8^a^f
dkw|Knight-Captain's Satin Robes|p|U|a|17612||p^8^a^f
dkx|Lieutenant Commander's Satin Amice|p|U|a|17613||p^10^a^f
dky|Field Marshal's Headdress|p|U|a|17623||p^13^a^f
dkz|Marshal's Satin Pants|p|U|a|17625||p^12^a^f
dl0|Field Marshal's Satin Mantle|p|U|a|17622||p^13^a^f
dl1|Field Marshal's Satin Vestments|p|U|a|17624||p^13^a^f
dl2|Marshal's Satin Bracers|p|U|a|17619||p^12^a^f
dl3|Marshal's Satin Sandals|p|U|a|17618||p^12^a^f
dl4|Marshal's Satin Gloves|p|U|a|17620||p^12^a^f
dl5|Marshal's Satin Sash|p|U|a|17621||p^12^a^f
dl6|Champion's Satin Cowl|p|U|h|17598||p^10^h^f
dl7|Legionnaire's Satin Trousers|p|U|h|17599||p^8^h^f
dl8|Legionnaire's Satin Vestments|p|U|h|17600||p^8^h^f
dl9|Champion's Satin Shoulderpads|p|U|h|17601||p^10^h^f
dla|Legionnaire's Satin Sash|p|U|h|17597||p^8^h^f
dlb|Legionnaire's Satin Cuffs|p|U|h|17595||p^8^h^f
dlc|Blood Guard's Satin Boots|p|U|h|17594||p^7^h^f
dld|Blood Guard's Satin Gloves|p|U|h|17596||p^7^h^f
dle|General's Satin Boots|p|U|h|17607||p^12^h^f
dlf|General's Satin Bracers|p|U|h|17606||p^12^h^f
dlg|General's Satin Gloves|p|U|h|17608||p^12^h^f
dlh|General's Satin Cinch|p|U|h|17609||p^12^h^f
dli|Warlord's Satin Mantle|p|U|h|17604||p^13^h^f
dlj|Warlord's Satin Cowl|p|U|h|17602||p^13^h^f
dlk|Warlord's Satin Robes|p|U|h|17605||p^13^h^f
dll|General's Satin Leggings|p|U|h|17603||p^12^h^f
dna|Master Hunter's Bow|q|||||q^208^Big Game Hunter^28^^k
dnb|Master Hunter's Rifle|q|||||q^208^Big Game Hunter^28^^k
dnc|Jungle Boots|q|||||q^338^The Green Hills of Stranglethorn^30^^k
dng|Horn Ring|q|s|h|||q^6641^Vorsha the Lasher^20^h^s
dni|Band of the Fist|Q|s|h|||q^6565^Allegiance to the Old Gods^17^h^s
dnj|Chestnut Mantle|Q|s|h|||q^6565^Allegiance to the Old Gods^17^h^s
dns|Edge of Winter|c|||||c^Blacksmithing^165^21913^f
dnt|Thrash Blade|Q|||||q^7064^Corruption of Earth and Seed^45^h^k~q^7065^Corruption of Earth and Seed^45^a^k
do9|Gloves of the Greatfather|c|||||c^Leatherworking^165^21943^f
dov|Resurgence Rod|Q|||||q^7064^Corruption of Earth and Seed^45^h^k~q^7065^Corruption of Earth and Seed^45^a^k
dp5|Verdant Keeper's Aim|Q|||||q^7064^Corruption of Earth and Seed^45^h^k~q^7065^Corruption of Earth and Seed^45^a^k
dt9|Stormpike Insignia Rank 3|q|U||||q^7169^Honored Amongst the Guard^51^^k
dta|Stormpike Insignia Rank 4|q|U||||q^7170^Earned Reverence^51^^k
dtb|Stormpike Insignia Rank 5|q|U||||q^7171^Legendary Heroes^51^^k
dtc|Stormpike Insignia Rank 6|q|U||||q^7172^The Eye of Command^51^^k
dtg|Frostwolf Insignia Rank 5|q|U||||q^7166^Legendary Heroes^51^^k
dth|Frostwolf Insignia Rank 6|q|U||||q^7167^The Eye of Command^51^^k
dtu|Lionfur Armor|w|||||w^0^0^k
e0o|Force Reactive Disk|c|||||c^Engineering^300^22797^f
e2m|Shadowskin Gloves|c|||||c^Leatherworking^175^22711^f
e3b|Flarecore Wraps|c|||||c^Tailoring^300^22759^f
e3u|Core Marksman Rifle|c|||||c^Engineering^300^22795^f
e73|Ocean's Breeze|q|||||q^7486^A Hero's Reward^60^^k
e74|Ring of Living Stone|q|||||q^6845^Uncovering Past Secrets^54^^k
e76|Glowing Crystal Ring|q|||||q^6845^Uncovering Past Secrets^54^^k
e77|Dragonslayer's Signet|q|||||q^7491^For All To See^60^h^k~q^7496^Celebrating Good Times^60^a^k
e78|Onyxia Tooth Pendant|q|||||q^7491^For All To See^60^h^k~q^7496^Celebrating Good Times^60^a^k
e79|Belt of the Archmage|c|||||c^Tailoring^295^22866^f
e7b|Felcloth Gloves|c|||||c^Tailoring^280^22867^f
e7c|Inferno Gloves|c|||||c^Tailoring^280^22868^f
e7d|Mooncloth Gloves|c|||||c^Tailoring^280^22869^f
e7h|Cloak of Warding|c|||||c^Tailoring^280^22870^f
e7v|Sergeant's Cloak|pv|U|h|18440||p^3^^f
e7w|Senior Sergeant's Insignia|pv|U|h|18444||p^4^h^f
e7x|First Sergeant's Plate Bracers|pv|U|h|18445||p^5^h^f
e7y|First Sergeant's Plate Bracers|pv|U|h|18447||p^5^h^f
e80|First Sergeant's Mail Wristguards|pv|U|h|||p^5^h^f~v^12799^Sergeant Ba'sha^1454^41.5^68.6^21742^h^k
e82|First Sergeant's Dragonhide Armguards|pv|U|h|18454||p^5^h^f
e83|First Sergeant's Leather Armguards|pv|U|h|18453||p^5^h^f
e84|First Sergeant's Dragonhide Armguards|pv|U|h|18455||p^5^h^f
e85|First Sergeant's Silk Cuffs|pv|U|h|18457||p^5^h^f
e88|Sergeant's Cape|pv|U|a|18427||p^3^^f~v^12805^Officer Areyn^1453^76.8^65.9^6443^a^k
e89|Sergeant's Cape|pv|U|a|16341||p^3^^f~v^12805^Officer Areyn^1453^76.8^65.9^20891^a^k
e8a|Master Sergeant's Insignia|pv|U|a|15200||p^4^a^f~v^12805^Officer Areyn^1453^76.8^65.9^20000^a^k
e8b|Master Sergeant's Insignia|pv|U|a|16335||p^4^a^f~v^12805^Officer Areyn^1453^76.8^65.9^40000^a^k
e8c|Master Sergeant's Insignia|pv|U|a|18428||p^4^a^f~v^12805^Officer Areyn^1453^76.8^65.9^30000^a^k
e8d|Sergeant Major's Plate Wristguards|pv|U|a|18429||p^5^a^f~v^12805^Officer Areyn^1453^76.8^65.9^29021^a^k
e8f|Sergeant Major's Plate Wristguards|pv|U|a|18430||p^5^a^f~v^12805^Officer Areyn^1453^76.8^65.9^14235^a^k
e8g|Sergeant Major's Chain Armguards|pv|U|a|16532||p^5^a^f~v^12805^Officer Areyn^1453^76.8^65.9^44007^a^k
e8h|Sergeant Major's Chain Armguards|pv|U|a|18432||p^5^a^f~v^12805^Officer Areyn^1453^76.8^65.9^21507^a^k
e8k|Sergeant Major's Leather Armsplints|pv|U|a|16497||p^5^a^f~v^12805^Officer Areyn^1453^76.8^65.9^34553^a^k
e8l|Sergeant Major's Leather Armsplints|pv|U|a|18435||p^5^a^f~v^12805^Officer Areyn^1453^76.8^65.9^16890^a^k
e8m|Sergeant Major's Dragonhide Armsplints|pv|U|a|18434||p^5^a^f~v^12805^Officer Areyn^1453^76.8^65.9^34815^a^k
e8n|Sergeant Major's Dragonhide Armsplints|pv|U|a|18436||p^5^a^f~v^12805^Officer Areyn^1453^76.8^65.9^17020^a^k
e8o|Sergeant Major's Silk Cuffs|pv|U|a|16486||p^5^a^f~v^12805^Officer Areyn^1453^76.8^65.9^28065^a^k
e8p|Sergeant Major's Silk Cuffs|pv|U|a|18437||p^5^a^f~v^12805^Officer Areyn^1453^76.8^65.9^13373^a^k
e8t|Sergeant's Cloak|pv|U|h|16342||p^3^^f
e9i|Mooncloth Robe|c|||||c^Tailoring^275^22902^f
ea0|Girdle of Insight|c|||||c^Leatherworking^290^22921^f
ea2|Mongoose Boots|c|||||c^Leatherworking^290^22922^f
ea4|Swift Flight Bracers|c|||||c^Leatherworking^290^22923^f
ea5|Chromatic Cloak|c|||||c^Leatherworking^300^22926^f
ea6|Hide of the Wild|c|||||c^Leatherworking^300^22927^f
ea7|Shifting Cloak|c|||||c^Leatherworking^300^22928^f
eb3|Ring of Entropy|w|||||m^12397^Lord Kazzak^10^k
ec9|Band of Allegiance|q||h|||q^7541^Service to the Horde^30^h^k
eca|Lonetree's Circle|q||h|||q^7541^Service to the Horde^30^h^k
ecq|Tome of Sacrifice|q|U||||q^7583^Suppression^60^^k
ecw|Benediction|u|U||||
ecx|Anathema|u|U||||
ecy|Keen Machete|R|||||R^14432^Threggil^100^k
ecz|Gnarlpine Leggings|w|||||w^0^0^k
ed0|Bloody Chain Boots|w|||||w^0^0^k
een|Baron Charr's Sceptre|w|||||w^0^0^k
eev|Frigid Ring|w|||||w^0^0^k
efm|Arena Master|w||||LArenaMaster|o^Arena Treasure Chest^100^k
efp|Arena Wristguards|w|||||o^Arena Treasure Chest^7^k
efq|Arena Bracers|w|||||o^Arena Treasure Chest^7^k
efr|Arena Bands|w|||||o^Arena Treasure Chest^7^k
efs|Arena Vambraces|w|||||o^Arena Treasure Chest^7^k
eh6|Shard of the Green Flame|q|||||q^7603^Kroshius' Infernal Core^50^^k
eim|Choker of the Fire Lord|w|||||m^11502^Ragnaros^20^k
eit|Quick Strike Ring|r|U||||d^409^Magmadar^5.45^1^k~d^409^Garr^5.45^1^k
eix|Grand Marshal's Aegis|p||a|18826||p^14^a^f
eiy|High Warlord's Shield Wall|p||h|18825||p^14^h^f
eiz|Grand Marshal's Handaxe|p||a|18828||p^14^a^f
ej0|High Warlord's Cleaver|p||h|18827||p^14^h^f
ej2|Grand Marshal's Sunderer|p||a|18831||p^14^a^f
ej3|High Warlord's Battle Axe|p||h|18830||p^14^h^f
ej5|Grand Marshal's Bullseye|p||a|18835||p^14^a^f
ej7|High Warlord's Recurve|p||h|18833||p^14^h^f
ej8|Grand Marshal's Repeater|p||a|18837||p^14^a^f
ej9|High Warlord's Crossbow|p||h|18836||p^14^h^f
eja|Grand Marshal's Dirk|p||a|18840||p^14^a^f
ejc|High Warlord's Razor|p||h|18838||p^14^h^f
ejr|Grand Marshal's Hand Cannon|p||a|18860||p^14^a^f
ejw|High Warlord's Street Sweeper|p||h|18855||p^14^h^f
ek3|Grand Marshal's Battle Hammer|p||a|18868||p^14^a^f
ek4|High Warlord's Pulverizer|p||h|18867||p^14^h^f
ek5|Grand Marshal's Glaive|p||a|18871||p^14^a^f
ek7|High Warlord's Pig Sticker|p||h|18869||p^14^h^f
ek9|Grand Marshal's Stave|p||a|||p^14^a^f
eka|High Warlord's War Staff|p||h|||p^14^h^f
ekf|Heavy Dark Iron Ring|r|U||||d^409^Gehennas^5^1^k~d^409^Lucifron^3.4^1^k
emc|Barbaric Bracers|c|||||c^Leatherworking^130^23399^f
emf|Evonice's Landin' Pilla|q|||||q^7704^Look at the Size of It!^45^^k
eml|Brushwood Blade|q||a|||q^2561^Druid of the Claw^3^a^k
eob|Thunderfury, Blessed Blade of the Windseeker|q|U||||q^7787^Rise, Thunderfury!^60^^k
eog|Arena Grand Master|u||||LArenaMaster|
eot|Emerald Peak Spaulders|q||h|||q^7732^Zukk'ash Report^39^h^k
eou|Ring of Subtlety|q||h|||q^7732^Zukk'ash Report^39^h^k
eov|Zorbin's Water Resistant Hat|q|||||q^7721^Fuel for the Zapping^45^^k
eow|Zorbin's Mega-Slicer|q|||||q^7003^Zapped Giants^45^^k
eox|Pratt's Handcrafted Tunic|q||a|19042||q^7733^Improved Quality^40^a^k
eoy|Jangdor's Handcrafted Tunic|q||h|19041||q^7734^Improved Quality^40^h^k
eoz|Heavy Timbermaw Belt|c|||||c^Leatherworking^265^23628^f
ep0|Might of the Timbermaw|c|||||c^Leatherworking^265^23703^f
ep3|Wisdom of the Timbermaw|c|||||c^Tailoring^255^23662^f
ep4|Heavy Timbermaw Boots|c|||||c^Leatherworking^295^23629^f
ep5|Timbermaw Brawlers|c|||||c^Leatherworking^295^23704^f
ep6|Mantle of the Timbermaw|c|||||c^Tailoring^290^23663^f
ep7|Girdle of the Dawn|c|||||c^Blacksmithing^265^23632^f
ep8|Dawn Treaders|c|||||c^Leatherworking^265^23705^f
epc|Argent Boots|c|||||c^Tailoring^255^23664^f
epd|Gloves of the Dawn|c|||||c^Blacksmithing^300^23633^f
epe|Golden Mantle of the Dawn|c|||||c^Leatherworking^295^23706^f
epf|Argent Shoulders|c|||||c^Tailoring^290^23665^f
eq3|Frostwolf Legionnaire's Cloak|vw|||||v^13219^Jekyll Flandring^1416^62.8^59.3^75224^h^k~m^13218^Grunnda Wolfheart^0.02^k
eq4|Stormpike Soldier's Cloak|v||a|||v^13217^Thanthaldis Snowgleam^1416^39.4^81.7^75500^a^k
eq5|Frostwolf Advisor's Cloak|vw|||||v^13219^Jekyll Flandring^1416^62.8^59.3^75776^h^k~m^13218^Grunnda Wolfheart^0.02^k
eq6|Stormpike Sage's Cloak|v||a|||v^13217^Thanthaldis Snowgleam^1416^39.4^81.7^76045^a^k
eq7|Frostwolf Plate Belt|vw|||||v^13219^Jekyll Flandring^1416^62.8^59.3^50881^h^k~m^13218^Grunnda Wolfheart^0.02^k
eq8|Frostwolf Mail Belt|vw|||||v^13219^Jekyll Flandring^1416^62.8^59.3^76597^h^k~m^13218^Grunnda Wolfheart^0.02^k
eq9|Frostwolf Leather Belt|vw|||||v^13219^Jekyll Flandring^1416^62.8^59.3^59304^h^k~m^13218^Grunnda Wolfheart^0.02^k
eqa|Frostwolf Cloth Belt|vw|||||v^13219^Jekyll Flandring^1416^62.8^59.3^51428^h^k~m^13218^Grunnda Wolfheart^0.02^k
eqb|Stormpike Plate Girdle|v||a|||v^13217^Thanthaldis Snowgleam^1416^39.4^81.7^47443^a^k
eqc|Stormpike Mail Girdle|v||a|||v^13217^Thanthaldis Snowgleam^1416^39.4^81.7^71165^a^k
eqd|Stormpike Leather Girdle|v||a|||v^13217^Thanthaldis Snowgleam^1416^39.4^81.7^59304^a^k
eqe|Stormpike Cloth Girdle|v||a|||v^13217^Thanthaldis Snowgleam^1416^39.4^81.7^47443^a^k
eqf|Frostwolf Legionnaire's Pendant|vw|||||v^13219^Jekyll Flandring^1416^62.8^59.3^71648^h^k~m^13218^Grunnda Wolfheart^0.02^k
eqg|Frostwolf Advisor's Pendant|vw|||||v^13219^Jekyll Flandring^1416^62.8^59.3^71648^h^k~m^13218^Grunnda Wolfheart^0.02^k
eqh|Stormpike Soldier's Pendant|v||a|||v^13217^Thanthaldis Snowgleam^1416^39.4^81.7^71648^a^k
eqi|Stormpike Sage's Pendant|v||a|||v^13217^Thanthaldis Snowgleam^1416^39.4^81.7^71648^a^k
eqj|Glacial Blade|vw|U||||v^13219^Jekyll Flandring^1416^62.8^59.3^315329^h^k~m^13218^Grunnda Wolfheart^0.02^k
eqk|Electrified Dagger|v|U|a|||v^13217^Thanthaldis Snowgleam^1416^39.4^81.7^316503^a^k
eql|Whiteout Staff|vw|U||||v^13219^Jekyll Flandring^1416^62.8^59.3^397057^h^k~m^13218^Grunnda Wolfheart^0.02^k
eqm|Crackling Staff|v|U|a|||v^13217^Thanthaldis Snowgleam^1416^39.4^81.7^398525^a^k
eqn|Frostbite|vw|U||||v^13219^Jekyll Flandring^1416^62.8^59.3^319995^h^k~m^13218^Grunnda Wolfheart^0.02^k
eqo|Stormstrike Hammer|v|U|a|||v^13217^Thanthaldis Snowgleam^1416^39.4^81.7^321137^a^k
eqq|Ice Barbed Spear|q|||||q^7181^The Legend of Korrak^51^h^k~q^7202^Korrak the Bloodrager^51^a^k
eqr|Bloodseeker|q|||||q^7181^The Legend of Korrak^51^h^k~q^7202^Korrak the Bloodrager^51^a^k
eqs|Wand of Biting Cold|q|||||q^7181^The Legend of Korrak^51^h^k~q^7202^Korrak the Bloodrager^51^a^k
eqt|Deep Rooted Ring|w|||||m^13419^Ivus the Forest Lord^33.8^k~m^13256^Lokholar the Ice Lord^26.88^k
eqy|Highland Bow|q||h|||q^7847^Return to Primal Torntusk^46^h^k
eqz|Flask of Forest Mojo|q||h|||q^7847^Return to Primal Torntusk^46^h^k
er0|Greenleaf Handwraps|q||h|||q^7849^Separation Anxiety^46^h^k
er1|Laquered Wooden Plate Legplates|q||h|||q^7849^Separation Anxiety^46^h^k
er2|Nature's Breath|q||h|||q^7850^Dark Vessels^46^h^k
er3|Owlbeast Hide Gloves|q||h|||q^7843^The Final Message to the Wildhammer^44^h^k
er4|Rune of the Guard Captain|q||h|||q^7862^Job Opening: Guard Captain of Revantusk Village^46^h^k
er5|Deep Woodlands Cloak|q||h|||q^7861^Wanted: Vile Priestess Hexx and Her Minions^46^h^k
er7|Everwarm Handwraps|q|||||q^7728^STOLEN: Smithing Tuyere and Lookout's Spyglass^45^^k
er8|Slagplate Leggings|q|||||q^7728^STOLEN: Smithing Tuyere and Lookout's Spyglass^45^^k
er9|Seared Mail Girdle|q|||||q^7724^Fiery Menace!^45^^k
era|Slagplate Gauntlets|q|||||q^7723^Curse These Fat Fingers^45^^k
erb|Charred Leather Tunic|q|||||q^7701^WANTED: Overseer Maltorius^45^^k
erc|Seared Mail Vest|q|||||q^7701^WANTED: Overseer Maltorius^45^^k
ero|Cauterizing Band|w|||||m^11664^Flamewaker Elite^0.46^k~m^11663^Flamewaker Healer^0.14^k
erv|Ring of Spell Power|r|||||d^409^Gehennas^5^1^k~d^409^Lucifron^3.4^1^k
erw|Dark Iron Helm|c|||||c^Blacksmithing^300^23636^f
erx|Lava Belt|c|||||c^Leatherworking^300^23707^f
es4|Flarecore Robe|c|||||c^Tailoring^300^23666^f
es5|Chromatic Gauntlets|c|||||c^Leatherworking^300^23708^f
es7|Woven Ivy Necklace|q||h|||q^7861^Wanted: Vile Priestess Hexx and Her Minions^46^h^k
esa|Corehound Belt|c|||||c^Leatherworking^300^23709^f
esb|Molten Belt|c|||||c^Leatherworking^300^23710^f
esd|Flarecore Leggings|c|||||c^Tailoring^300^23667^f
ese|Black Amnesty|c|||||c^Blacksmithing^300^23638^f
esf|Blackfury|c|||||c^Blacksmithing^300^23639^f
esg|Blackguard|c|||||c^Blacksmithing^300^23652^f
esh|Nightfall|c|||||c^Blacksmithing^300^23653^f
esi|Ebon Hand|c|||||c^Blacksmithing^300^23650^f
ew6|Darkmoon Ring|v|||||v^14846^Lhara^1412^37.4^44.9^50000^^k
ew7|Darkmoon Necklace|v|||||v^14846^Lhara^1412^37.4^44.9^50000^^k
ewc|Tome of Arcane Domination|vw|U||||v^13217^Thanthaldis Snowgleam^1416^39.4^81.7^500000^^k~m^13218^Grunnda Wolfheart^0.02^k
ewd|Tome of Shadow Force|vw|U||||v^13217^Thanthaldis Snowgleam^1416^39.4^81.7^500000^^k~m^13218^Grunnda Wolfheart^0.02^k
ewe|Tome of the Ice Lord|vw|U||||v^13217^Thanthaldis Snowgleam^1416^39.4^81.7^500000^^k~m^13218^Grunnda Wolfheart^0.02^k
ewf|Tome of Fiery Arcana|vw|U||||v^13217^Thanthaldis Snowgleam^1416^39.4^81.7^500000^^k~m^13218^Grunnda Wolfheart^0.02^k
ewg|Lei of the Lifegiver|vw|U||||v^13217^Thanthaldis Snowgleam^1416^39.4^81.7^500000^^k~m^13218^Grunnda Wolfheart^0.02^k
ewj|Therazane's Touch|vw|U||||v^13217^Thanthaldis Snowgleam^1416^39.4^81.7^500000^^k~m^13218^Grunnda Wolfheart^0.02^k
ewp|The Immovable Object|vw|U||||v^13217^Thanthaldis Snowgleam^1416^39.4^81.7^795297^^k~m^13218^Grunnda Wolfheart^0.02^k
ewr|The Unstoppable Force|vw|U||||v^13217^Thanthaldis Snowgleam^1416^39.4^81.7^1564900^^k~m^13218^Grunnda Wolfheart^0.02^k
ews|The Lobotomizer|vw|U||||v^13217^Thanthaldis Snowgleam^1416^39.4^81.7^1256618^^k~m^13218^Grunnda Wolfheart^0.02^k
ewt|Don Julio's Band|vw|U||||v^13217^Thanthaldis Snowgleam^1416^39.4^81.7^755555^^k~m^13218^Grunnda Wolfheart^0.02^k
exy|Master Dragonslayer's Orb|q|||||q^7782^The Lord of Blackrock^60^a^k~q^7784^The Lord of Blackrock^60^h^k
ey8|Archimtiros' Ring of Reckoning|w|U||||m^11583^Nefarian^20^k
ey9|Prestor's Talisman of Connivery|w|||||m^11583^Nefarian^20^k
eyb|Neltharion's Tear|w|U||||m^11583^Nefarian^20^k
eye|Pure Elementium Band|w|U||||m^11583^Nefarian^20^k
eyf|Master Dragonslayer's Medallion|q|U||||q^7782^The Lord of Blackrock^60^a^k~q^7784^The Lord of Blackrock^60^h^k
eyg|Master Dragonslayer's Ring|q|U||||q^7782^The Lord of Blackrock^60^a^k~q^7784^The Lord of Blackrock^60^h^k
eyo|Girdle of the Fallen Crusader|r|||||d^469^Chromaggus^16^1^k
eyr|Rejuvenating Gem|r|U||||d^469^Firemaw^14^1^k~d^469^Ebonroc^14^1^k
eyz|Band of Forced Concentration|r|U||||d^469^Ebonroc^18^1^k
ez2|Drake Fang Talisman|r|U||||d^469^Ebonroc^18^1^k
ezr|Styleen's Impeding Scarab|r|U||||d^469^Flamegor^20^1^k
ezs|Circle of Applied Force|r|U||||d^469^Flamegor^20^1^k
ezu|Band of Dark Dominion|r|U||||d^469^^2.61^1^k
f1v|Inquisitor's Shawl|d|||||d^189^High Inquisitor Fairbanks^33.33^0^k
f1w|Branded Leather Bracers|d|||||d^189^High Inquisitor Fairbanks^33.33^0^k
f1x|Dusty Mail Boots|d|||||d^189^High Inquisitor Fairbanks^33.33^0^k
f22|Protector's Band|v|U|a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^75000^a^k
f23|Protector's Band|v|U|a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^45000^a^k
f24|Protector's Band|v|U|a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^60000^a^k
f25|Protector's Band|v|U|a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^20000^a^k
f2a|Lorekeeper's Ring|v|U|a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^75000^a^k
f2b|Lorekeeper's Ring|v|U|a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^60000^a^k
f2c|Lorekeeper's Ring|v|U|a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^45000^a^k
f2d|Lorekeeper's Ring|v|U|a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^20000^a^k
f2i|Caretaker's Cape|v|U|a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^85492^a^k
f2j|Caretaker's Cape|v|U|a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^50242^a^k
f2k|Caretaker's Cape|v|U|a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^24934^a^k
f2l|Caretaker's Cape|v|U|a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^10772^a^k
f2q|Sentinel's Medallion|v|U|a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^75000^a^k
f2r|Sentinel's Medallion|v|U|a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^60000^a^k
f2s|Sentinel's Medallion|v|U|a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^45000^a^k
f2t|Sentinel's Medallion|v|U|a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^20000^a^k
f2y|Sentinel's Blade|v|U|a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^280715^a^k
f2z|Sentinel's Blade|v|U|a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^164981^a^k
f30|Sentinel's Blade|v|U|a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^81882^a^k
f31|Sentinel's Blade|v|U|a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^35372^a^k
f36|Protector's Sword|v|U|a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^274611^a^k
f37|Protector's Sword|v|U|a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^160783^a^k
f38|Protector's Sword|v|U|a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^79498^a^k
f39|Protector's Sword|v|U|a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^36427^a^k
f3d|Outrider's Bow|u|||||
f3e|Outrunner's Bow|v||a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^205958^a^k
f3f|Outrunner's Bow|v||a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^120587^a^k
f3g|Outrunner's Bow|v||a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^59624^a^k
f3h|Outrunner's Bow|v||a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^25663^a^k
f3m|Lorekeeper's Staff|v||a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^356148^a^k
f3n|Lorekeeper's Staff|v||a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^209282^a^k
f3o|Lorekeeper's Staff|v||a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^103864^a^k
f3p|Lorekeeper's Staff|v||a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^44870^a^k
f3s|Strength of Mugamba|Q|U||||q^8043^Strength of Mount Mugamba^60^^k
f3t|Rage of Mugamba|Q|U||||q^8044^The Rage of Mount Mugamba^60^^k
f3u|Berserker Bracers|v|U|a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^88497^a^k
f3w|Berserker Bracers|v|U|a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^48175^a^k
f3x|Berserker Bracers|v|U|a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^24727^a^k
f3y|Windtalker's Wristguards|v||a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^121103^a^k
f3z|Windtalker's Wristguards|v||a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^72262^a^k
f40|Windtalker's Wristguards|v||a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^37090^a^k
f43|Forest Stalker's Bracers|v||a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^100919^a^k
f45|Forest Stalker's Bracers|v||a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^60218^a^k
f46|Forest Stalker's Bracers|v||a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^30909^a^k
f4b|Dryad's Wrist Bindings|v||a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^87549^a^k
f4c|Dryad's Wrist Bindings|v||a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^52427^a^k
f4d|Dryad's Wrist Bindings|v||a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^27006^a^k
f4g|Pebble of Kajaro|Q|U||||q^8103^The Pebble of Kajaro^60^^k
f4k|Kezan's Taint|Q|U||||q^8108^Kezan's Taint^60^^k
f4l|Kezan's Unstoppable Taint|Q|U||||q^8109^Kezan's Unstoppable Taint^60^^k
f4w|Zandalarian Shadow Talisman|Q|U||||q^8143^Zandalarian Shadow Talisman^60^^k
f4z|Maelstrom's Tendril|Q|U||||q^8146^The Maelstrom's Tendril^60^^k
f50|Maelstrom's Tendril|Q|U||||q^8147^The Maelstrom's Tendril^60^^k
f51|Maelstrom's Wrath|Q|U||||q^8148^The Maelstrom's Wrath^60^^k
f6q|Bloodvine Vest|c|||||c^Tailoring^300^24091^f
f6r|Bloodvine Leggings|c|||||c^Tailoring^300^24092^f
f6s|Bloodvine Boots|c|||||c^Tailoring^300^24093^f
f6t|Primal Batskin Jerkin|c|||||c^Leatherworking^300^24121^f
f6u|Primal Batskin Gloves|c|||||c^Leatherworking^300^24122^f
f6v|Primal Batskin Bracers|c|||||c^Leatherworking^300^24123^f
f6x|Blood Tiger Shoulders|c|||||c^Leatherworking^300^24125^f
f6y|Bloodsoul Breastplate|c|||||c^Blacksmithing^300^24136^f
f6z|Bloodsoul Shoulders|c|||||c^Blacksmithing^300^24137^f
f70|Bloodsoul Gauntlets|c|||||c^Blacksmithing^300^24138^f
f71|Darksoul Breastplate|c|||||c^Blacksmithing^300^24139^f
f72|Darksoul Leggings|c|||||c^Blacksmithing^300^24140^f
f73|Darksoul Shoulders|c|||||c^Blacksmithing^300^24141^f
fam|Zandalar Vindicator's Breastplate|q|||||q^8079^Paragons of Power: The Vindicator's Breastplate^60^^k
fan|Zandalar Vindicator's Belt|q|||||q^8078^Paragons of Power: The Vindicator's Belt^60^^k
fao|Zandalar Vindicator's Armguards|q|||||q^8058^Paragons of Power: The Vindicator's Armguards^60^^k
fap|Zandalar Freethinker's Breastplate|q|||||q^8055^Paragons of Power: The Freethinker's Breastplate^60^^k
faq|Zandalar Freethinker's Belt|q|||||q^8054^Paragons of Power: The Freethinker's Belt^60^^k
far|Zandalar Freethinker's Armguards|q|||||q^8053^Paragons of Power: The Freethinker's Armguards^60^^k
fas|Zandalar Augur's Hauberk|q|||||q^8075^Paragons of Power: The Augur's Hauberk^60^^k
fat|Zandalar Augur's Belt|q|||||q^8074^Paragons of Power: The Augur's Belt^60^^k
fau|Zandalar Augur's Bracers|q|||||q^8056^Paragons of Power: The Augur's Bracers^60^^k
fav|Zandalar Predator's Mantle|q|||||q^8067^Paragons of Power: The Predator's Mantle^60^^k
faw|Zandalar Predator's Belt|q|||||q^8066^Paragons of Power: The Predator's Belt^60^^k
fax|Zandalar Predator's Bracers|q|||||q^8062^Paragons of Power: The Predator's Bracers^60^^k
fay|Zandalar Madcap's Tunic|q|||||q^8073^Paragons of Power: The Madcap's Tunic^60^^k
faz|Zandalar Madcap's Mantle|q|||||q^8072^Paragons of Power: The Madcap's Mantle^60^^k
fb0|Zandalar Madcap's Bracers|q|||||q^8063^Paragons of Power: The Madcap's Bracers^60^^k
fb2|Zandalar Haruspex's Tunic|q|||||q^8065^Paragons of Power: The Haruspex's Tunic^60^^k
fb3|Zandalar Haruspex's Belt|q|||||q^8064^Paragons of Power: The Haruspex's Belt^60^^k
fb4|Zandalar Haruspex's Bracers|q|||||q^8057^Paragons of Power: The Haruspex's Bracers^60^^k
fb5|Zandalar Confessor's Mantle|q|||||q^8071^Paragons of Power: The Confessor's Mantle^60^^k
fb6|Zandalar Confessor's Bindings|q|||||q^8070^Paragons of Power: The Confessor's Bindings^60^^k
fb7|Zandalar Confessor's Wraps|q|||||q^8061^Paragons of Power: The Confessor's Wraps^60^^k
fb9|Zandalar Illusionist's Mantle|q|||||q^8068^Paragons of Power: The Illusionist's Mantle^60^^k
fba|Zandalar Illusionist's Wraps|q|||||q^8060^Paragons of Power: The Illusionist's Wraps^60^^k
fbc|Zandalar Demoniac's Wraps|q|||||q^8059^Paragons of Power: The Demoniac's Wraps^60^^k
fbd|Zandalar Demoniac's Mantle|q|||||q^8076^Paragons of Power: The Demoniac's Mantle^60^^k
fcc|Jin'do's Judgement|r|||||d^309^Jin'do the Hexxer^16.67^1^k
ffi|Bloodvine Lens|c|||||c^Engineering^300^24357^f
ffj|Bloodvine Goggles|c|||||c^Engineering^300^24356^f
fgh|Zandalar Demoniac's Robe|q|||||q^8077^Paragons of Power: The Demoniac's Robes^60^^k
fgi|Zandalar Illusionist's Robe|q|||||q^8069^Paragons of Power: The Illusionist's Robes^60^^k
fgn|Dark Iron Boots|c|||||c^Blacksmithing^300^24399^f
fgp|Highlander's Plate Girdle|ev|U|a|20204||v^15127^Samuel Hawke^1417^46^45.2^56764^a^k~r^509^5^The League of Arathor^f
fgq|Highlander's Lamellar Girdle|ev|U|a|20177||v^15127^Samuel Hawke^1417^46^45.2^56972^a^k~r^509^5^The League of Arathor^f
fgr|Highlander's Chain Girdle|ev|U|a|20150||v^15127^Samuel Hawke^1417^46^45.2^88066^a^k~r^509^5^The League of Arathor^f
fgs|Highlander's Mail Girdle|ev|U|a|20195||v^15127^Samuel Hawke^1417^46^45.2^88386^a^k~r^509^5^The League of Arathor^f
fgt|Highlander's Leather Girdle|ev|U|a|20190||v^15127^Samuel Hawke^1417^46^45.2^73921^a^k~r^509^5^The League of Arathor^f
fgu|Highlander's Lizardhide Girdle|ev|U|a|20171||v^15127^Samuel Hawke^1417^46^45.2^74180^a^k~r^509^5^The League of Arathor^f
fgv|Highlander's Cloth Girdle|ev|U|a|20163||v^15127^Samuel Hawke^1417^46^45.2^59557^a^k~r^509^5^The League of Arathor^f
fgw|Highlander's Plate Greaves|ev|U|a|20208||v^15127^Samuel Hawke^1417^46^45.2^89656^a^k~r^509^6^The League of Arathor^f
fgx|Highlander's Lamellar Greaves|ev|U|a|20181||v^15127^Samuel Hawke^1417^46^45.2^89975^a^k~r^509^6^The League of Arathor^f
fgy|Highlander's Chain Greaves|ev|U|a|20154||v^15127^Samuel Hawke^1417^46^45.2^136031^a^k~r^509^6^The League of Arathor^f
fgz|Highlander's Mail Greaves|ev|U|a|20199||v^15127^Samuel Hawke^1417^46^45.2^136513^a^k~r^509^6^The League of Arathor^f
fh0|Highlander's Leather Boots|ev|U|a|20186||v^15127^Samuel Hawke^1417^46^45.2^102849^a^k~r^509^6^The League of Arathor^f
fh1|Highlander's Lizardhide Boots|ev|U|a|20167||v^15127^Samuel Hawke^1417^46^45.2^103238^a^k~r^509^6^The League of Arathor^f
fh2|Highlander's Cloth Boots|ev|U|a|20159||v^15127^Samuel Hawke^1417^46^45.2^82910^a^k~r^509^6^The League of Arathor^f
fh3|Highlander's Chain Pauldrons|ev|U|a|20158||v^15127^Samuel Hawke^1417^46^45.2^184337^a^k~r^509^7^The League of Arathor^f
fh4|Highlander's Mail Pauldrons|ev|U|a|20203||v^15127^Samuel Hawke^1417^46^45.2^185045^a^k~r^509^7^The League of Arathor^f
fh5|Highlander's Plate Spaulders|ev|U|a|20212||v^15127^Samuel Hawke^1417^46^45.2^123274^a^k~r^509^7^The League of Arathor^f
fh6|Highlander's Lamellar Spaulders|ev|U|a|20184||v^15127^Samuel Hawke^1417^46^45.2^123744^a^k~r^509^7^The League of Arathor^f
fh7|Highlander's Leather Shoulders|ev|U|a|20194||v^15127^Samuel Hawke^1417^46^45.2^159473^a^k~r^509^7^The League of Arathor^f
fh8|Highlander's Lizardhide Shoulders|ev|U|a|20175||v^15127^Samuel Hawke^1417^46^45.2^160061^a^k~r^509^7^The League of Arathor^f
fh9|Highlander's Epaulets|ev|U|a|20176||v^15127^Samuel Hawke^1417^46^45.2^128505^a^k~r^509^7^The League of Arathor^f
fhg|Deathguard's Cloak|ev||h|20073||v^15126^Rutherford Twing^1417^73.4^29.7^131769^h^k
fhh|Ironbark Staff|ev||a|20220||v^15127^Samuel Hawke^1417^46^45.2^550995^a^k~r^509^7^The League of Arathor^f
fhi|Sageclaw|ev||a|20214||v^15127^Samuel Hawke^1417^46^45.2^442362^a^k~r^509^7^The League of Arathor^f
fhj|Talisman of Arathor|ev||a|20072|LTalismanofBattle|v^15127^Samuel Hawke^1417^46^45.2^41230^a^k~r^509^4^The League of Arathor^f
fhk|Defiler's Talisman|ev||h|20071|LTalismanofBattle|v^15126^Rutherford Twing^1417^73.4^29.7^41230^h^k
fhl|Cloak of the Honor Guard|ev||a|20068||v^15127^Samuel Hawke^1417^46^45.2^121395^a^k~r^509^7^The League of Arathor^f
fhy|Dusksteel Throwing Knife|q|||||q^8249^Junkboxes Needed^50^^k
fi0|Highlander's Chain Girdle|ev|U|a|20151||v^15127^Samuel Hawke^1417^46^45.2^52478^a^k~r^509^5^The League of Arathor^f
fi1|Highlander's Chain Girdle|ev|U|a|20153||v^15127^Samuel Hawke^1417^46^45.2^26040^a^k~r^509^5^The League of Arathor^f
fi2|Highlander's Chain Girdle|ev|U|a|20152||v^15127^Samuel Hawke^1417^46^45.2^9373^a^k~r^509^5^The League of Arathor^f
fi3|Highlander's Chain Greaves|ev|U|a|20155||v^15127^Samuel Hawke^1417^46^45.2^74297^a^k~r^509^6^The League of Arathor^f
fi4|Highlander's Chain Greaves|ev|U|a|20156||v^15127^Samuel Hawke^1417^46^45.2^36875^a^k~r^509^6^The League of Arathor^f
fi5|Highlander's Chain Greaves|ev|U|a|20157||v^15127^Samuel Hawke^1417^46^45.2^13217^a^k~r^509^6^The League of Arathor^f
fi6|Highlander's Cloth Boots|ev|U|a|20160||v^15127^Samuel Hawke^1417^46^45.2^49873^a^k~r^509^6^The League of Arathor^f
fi7|Highlander's Cloth Boots|ev|U|a|20161||v^15127^Samuel Hawke^1417^46^45.2^24749^a^k~r^509^6^The League of Arathor^f
fi8|Highlander's Cloth Boots|ev|U|a|20162||v^15127^Samuel Hawke^1417^46^45.2^10692^a^k~r^509^6^The League of Arathor^f
fi9|Highlander's Cloth Girdle|ev|U|a|20165||v^15127^Samuel Hawke^1417^46^45.2^33619^a^k~r^509^5^The League of Arathor^f
fia|Highlander's Cloth Girdle|ev|U|a|20166||v^15127^Samuel Hawke^1417^46^45.2^16684^a^k~r^509^5^The League of Arathor^f
fib|Highlander's Cloth Girdle|ev|U|a|20164||v^15127^Samuel Hawke^1417^46^45.2^7207^a^k~r^509^5^The League of Arathor^f
fic|Highlander's Lizardhide Boots|ev|U|a|20170||v^15127^Samuel Hawke^1417^46^45.2^63732^a^k~r^509^6^The League of Arathor^f
fid|Highlander's Lizardhide Boots|ev|U|a|20168||v^15127^Samuel Hawke^1417^46^45.2^31628^a^k~r^509^6^The League of Arathor^f
fie|Highlander's Lizardhide Boots|ev|U|a|20169||v^15127^Samuel Hawke^1417^46^45.2^13661^a^k~r^509^6^The League of Arathor^f
fif|Highlander's Lizardhide Girdle|ev|U|a|20174||v^15127^Samuel Hawke^1417^46^45.2^42952^a^k~r^509^5^The League of Arathor^f
fig|Highlander's Lizardhide Girdle|ev|U|a|20173||v^15127^Samuel Hawke^1417^46^45.2^21314^a^k~r^509^5^The League of Arathor^f
fih|Highlander's Lizardhide Girdle|ev|U|a|20172||v^15127^Samuel Hawke^1417^46^45.2^9207^a^k~r^509^5^The League of Arathor^f
fii|Highlander's Lamellar Girdle|ev|U|a|20179||v^15127^Samuel Hawke^1417^46^45.2^34732^a^k~r^509^5^The League of Arathor^f
fij|Highlander's Lamellar Girdle|ev|U|a|20180||v^15127^Samuel Hawke^1417^46^45.2^16008^a^k~r^509^5^The League of Arathor^f
fik|Highlander's Lamellar Girdle|ev|U|a|20178||v^15127^Samuel Hawke^1417^46^45.2^10375^a^k~r^509^5^The League of Arathor^f
fil|Highlander's Lamellar Greaves|ev|U|a|20185||v^15127^Samuel Hawke^1417^46^45.2^48938^a^k~r^509^6^The League of Arathor^f
fim|Highlander's Lamellar Greaves|ev|U|a|20183||v^15127^Samuel Hawke^1417^46^45.2^24287^a^k~r^509^6^The League of Arathor^f
fin|Highlander's Lamellar Greaves|ev|U|a|20182||v^15127^Samuel Hawke^1417^46^45.2^15810^a^k~r^509^6^The League of Arathor^f
fio|Highlander's Leather Boots|ev|U|a|20189||v^15127^Samuel Hawke^1417^46^45.2^61868^a^k~r^509^6^The League of Arathor^f
fip|Highlander's Leather Boots|ev|U|a|20187||v^15127^Samuel Hawke^1417^46^45.2^30705^a^k~r^509^6^The League of Arathor^f
fiq|Highlander's Leather Boots|ev|U|a|20188||v^15127^Samuel Hawke^1417^46^45.2^13264^a^k~r^509^6^The League of Arathor^f
fir|Highlander's Leather Girdle|ev|U|a|20193||v^15127^Samuel Hawke^1417^46^45.2^41708^a^k~r^509^5^The League of Arathor^f
fis|Highlander's Leather Girdle|ev|U|a|20192||v^15127^Samuel Hawke^1417^46^45.2^20699^a^k~r^509^5^The League of Arathor^f
fit|Highlander's Leather Girdle|ev|U|a|20191||v^15127^Samuel Hawke^1417^46^45.2^8941^a^k~r^509^5^The League of Arathor^f
fiu|Highlander's Mail Girdle|ev|U|a|20196||v^15127^Samuel Hawke^1417^46^45.2^50606^a^k~r^509^5^The League of Arathor^f
fiv|Highlander's Mail Girdle|ev|U|a|20198||v^15127^Samuel Hawke^1417^46^45.2^25114^a^k~r^509^5^The League of Arathor^f
fiw|Highlander's Mail Girdle|ev|U|a|20197||v^15127^Samuel Hawke^1417^46^45.2^9041^a^k~r^509^5^The League of Arathor^f
fix|Highlander's Mail Greaves|ev|U|a|20202||v^15127^Samuel Hawke^1417^46^45.2^77086^a^k~r^509^6^The League of Arathor^f
fiy|Highlander's Mail Greaves|ev|U|a|20200||v^15127^Samuel Hawke^1417^46^45.2^38254^a^k~r^509^6^The League of Arathor^f
fiz|Highlander's Mail Greaves|ev|U|a|20201||v^15127^Samuel Hawke^1417^46^45.2^13710^a^k~r^509^6^The League of Arathor^f
fj0|Highlander's Plate Girdle|ev|U|a|20205||v^15127^Samuel Hawke^1417^46^45.2^35376^a^k~r^509^5^The League of Arathor^f
fj1|Highlander's Plate Girdle|ev|U|a|20206||v^15127^Samuel Hawke^1417^46^45.2^15883^a^k~r^509^5^The League of Arathor^f
fj2|Highlander's Plate Girdle|ev|U|a|20207||v^15127^Samuel Hawke^1417^46^45.2^10294^a^k~r^509^5^The League of Arathor^f
fj3|Highlander's Plate Greaves|ev|U|a|20211||v^15127^Samuel Hawke^1417^46^45.2^48558^a^k~r^509^6^The League of Arathor^f
fj4|Highlander's Plate Greaves|ev|U|a|20209||v^15127^Samuel Hawke^1417^46^45.2^24102^a^k~r^509^6^The League of Arathor^f
fj5|Highlander's Plate Greaves|ev|U|a|20210||v^15127^Samuel Hawke^1417^46^45.2^15688^a^k~r^509^6^The League of Arathor^f
fjq|Defiler's Chain Girdle|ev|U|h|20043||v^15126^Rutherford Twing^1417^73.4^29.7^83877^h^k
fjr|Defiler's Chain Girdle|ev|U|h|20088||v^15126^Rutherford Twing^1417^73.4^29.7^49292^h^k
fjs|Defiler's Chain Girdle|ev|U|h|20090||v^15126^Rutherford Twing^1417^73.4^29.7^8774^h^k
fjt|Defiler's Chain Girdle|ev|U|h|20089||v^15126^Rutherford Twing^1417^73.4^29.7^24557^h^k
fju|Defiler's Chain Greaves|ev|U|h|20050||v^15126^Rutherford Twing^1417^73.4^29.7^128288^h^k
fjv|Defiler's Chain Greaves|ev|U|h|20091||v^15126^Rutherford Twing^1417^73.4^29.7^75386^h^k
fjw|Defiler's Chain Greaves|ev|U|h|20092||v^15126^Rutherford Twing^1417^73.4^29.7^38412^h^k
fjx|Defiler's Chain Greaves|ev|U|h|20093||v^15126^Rutherford Twing^1417^73.4^29.7^13766^h^k
fjy|Defiler's Chain Pauldrons|ev|U|h|20055||v^15126^Rutherford Twing^1417^73.4^29.7^196466^h^k
fjz|Defiler's Cloth Boots|ev|U|h|20054||v^15126^Rutherford Twing^1417^73.4^29.7^89016^h^k
fk0|Defiler's Cloth Boots|ev|U|h|20094||v^15126^Rutherford Twing^1417^73.4^29.7^52306^h^k
fk1|Defiler's Cloth Boots|ev|U|h|20095||v^15126^Rutherford Twing^1417^73.4^29.7^25955^h^k
fk2|Defiler's Cloth Boots|ev|U|h|20096||v^15126^Rutherford Twing^1417^73.4^29.7^11211^h^k
fk3|Defiler's Cloth Girdle|ev|U|h|20047||v^15126^Rutherford Twing^1417^73.4^29.7^60191^h^k
fk4|Defiler's Cloth Girdle|ev|U|h|20099||v^15126^Rutherford Twing^1417^73.4^29.7^7526^h^k
fk5|Defiler's Cloth Girdle|ev|U|h|20097||v^15126^Rutherford Twing^1417^73.4^29.7^32116^h^k
fk6|Defiler's Cloth Girdle|ev|U|h|20098||v^15126^Rutherford Twing^1417^73.4^29.7^15939^h^k
fk7|Defiler's Lizardhide Boots|ev|U|h|20053||v^15126^Rutherford Twing^1417^73.4^29.7^103637^h^k
fk8|Defiler's Lizardhide Boots|ev|U|h|20101||v^15126^Rutherford Twing^1417^73.4^29.7^30118^h^k
fk9|Defiler's Lizardhide Boots|ev|U|h|20102||v^15126^Rutherford Twing^1417^73.4^29.7^13013^h^k
fka|Defiler's Lizardhide Boots|ev|U|h|20100||v^15126^Rutherford Twing^1417^73.4^29.7^61374^h^k
fkb|Defiler's Lizardhide Girdle|ev|U|h|20046||v^15126^Rutherford Twing^1417^73.4^29.7^70149^h^k
fkc|Defiler's Lizardhide Girdle|ev|U|h|20105||v^15126^Rutherford Twing^1417^73.4^29.7^9011^h^k
fkd|Defiler's Lizardhide Girdle|ev|U|h|20104||v^15126^Rutherford Twing^1417^73.4^29.7^21014^h^k
fke|Defiler's Lizardhide Girdle|ev|U|h|20103||v^15126^Rutherford Twing^1417^73.4^29.7^42652^h^k
fkf|Defiler's Lizardhide Shoulders|ev|U|h|20060||v^15126^Rutherford Twing^1417^73.4^29.7^161219^h^k
fkg|Defiler's Epaulets|ev|U|h|20061||v^15126^Rutherford Twing^1417^73.4^29.7^129445^h^k
fkh|Defiler's Lamellar Girdle|ev|U|h|20042||r^510^5^The Defilers^f
fki|Defiler's Lamellar Girdle|ev|U|h|20108||r^510^5^The Defilers^f
fkj|Defiler's Lamellar Girdle|ev|U|h|20106||r^510^5^The Defilers^f
fkk|Defiler's Lamellar Girdle|ev|U|h|20107||r^510^5^The Defilers^f
fkl|Defiler's Lamellar Greaves|ev|U|h|20049||r^510^6^The Defilers^f
fkm|Defiler's Lamellar Greaves|ev|U|h|20111||r^510^6^The Defilers^f
fkn|Defiler's Lamellar Greaves|ev|U|h|20110||r^510^6^The Defilers^f
fko|Defiler's Lamellar Spaulders|ev|U|h|20058||r^510^7^The Defilers^f
fkp|Defiler's Lamellar Greaves|ev|U|h|20109||r^510^6^The Defilers^f
fkq|Defiler's Leather Boots|ev|U|h|20052||v^15126^Rutherford Twing^1417^73.4^29.7^103227^h^k
fkr|Defiler's Leather Boots|ev|U|h|20113||v^15126^Rutherford Twing^1417^73.4^29.7^29999^h^k
fks|Defiler's Leather Boots|ev|U|h|20114||v^15126^Rutherford Twing^1417^73.4^29.7^13318^h^k
fkt|Defiler's Leather Boots|ev|U|h|20112||v^15126^Rutherford Twing^1417^73.4^29.7^62809^h^k
fku|Defiler's Leather Girdle|ev|U|h|20045||v^15126^Rutherford Twing^1417^73.4^29.7^71783^h^k
fkv|Defiler's Leather Girdle|ev|U|h|20117||v^15126^Rutherford Twing^1417^73.4^29.7^8977^h^k
fkw|Defiler's Leather Girdle|ev|U|h|20116||v^15126^Rutherford Twing^1417^73.4^29.7^20935^h^k
fkx|Defiler's Leather Girdle|ev|U|h|20115||v^15126^Rutherford Twing^1417^73.4^29.7^42492^h^k
fky|Defiler's Leather Shoulders|ev|U|h|20059||v^15126^Rutherford Twing^1417^73.4^29.7^160616^h^k
fkz|Defiler's Mail Girdle|ev|U|h|20044||v^15126^Rutherford Twing^1417^73.4^29.7^87729^h^k
fl0|Defiler's Mail Girdle|ev|U|h|20118||v^15126^Rutherford Twing^1417^73.4^29.7^51547^h^k
fl1|Defiler's Mail Girdle|ev|U|h|20120||v^15126^Rutherford Twing^1417^73.4^29.7^9174^h^k
fl2|Defiler's Mail Girdle|ev|U|h|20119||v^15126^Rutherford Twing^1417^73.4^29.7^25672^h^k
fl3|Defiler's Mail Greaves|ev|U|h|20051||v^15126^Rutherford Twing^1417^73.4^29.7^134092^h^k
fl4|Defiler's Mail Greaves|ev|U|h|20122||v^15126^Rutherford Twing^1417^73.4^29.7^38954^h^k
fl5|Defiler's Mail Greaves|ev|U|h|20123||v^15126^Rutherford Twing^1417^73.4^29.7^13960^h^k
fl6|Defiler's Mail Greaves|ev|U|h|20121||v^15126^Rutherford Twing^1417^73.4^29.7^79348^h^k
fl7|Defiler's Mail Pauldrons|ev|U|h|20056||v^15126^Rutherford Twing^1417^73.4^29.7^199928^h^k
fl8|Defiler's Plate Girdle|ev|U|h|20041||v^15126^Rutherford Twing^1417^73.4^29.7^56148^h^k
fl9|Defiler's Plate Girdle|ev|U|h|20124||v^15126^Rutherford Twing^1417^73.4^29.7^32999^h^k
fla|Defiler's Plate Girdle|ev|U|h|20125||v^15126^Rutherford Twing^1417^73.4^29.7^16378^h^k
flb|Defiler's Plate Girdle|ev|U|h|20126||v^15126^Rutherford Twing^1417^73.4^29.7^10613^h^k
flc|Defiler's Plate Greaves|ev|U|h|20048||v^15126^Rutherford Twing^1417^73.4^29.7^85492^h^k
fld|Defiler's Plate Greaves|ev|U|h|20128||v^15126^Rutherford Twing^1417^73.4^29.7^24842^h^k
fle|Defiler's Plate Greaves|ev|U|h|20129||v^15126^Rutherford Twing^1417^73.4^29.7^16170^h^k
flf|Defiler's Plate Greaves|ev|U|h|20127||v^15126^Rutherford Twing^1417^73.4^29.7^50612^h^k
flg|Defiler's Plate Spaulders|ev|U|h|20057||v^15126^Rutherford Twing^1417^73.4^29.7^127540^h^k
flh|Belt of Shrunken Heads|q|||||q^8201^A Collection of Heads^58^^k
fli|Mindfang|ev||h|20070||v^15126^Rutherford Twing^1417^73.4^29.7^428268^h^k
flj|Belt of Shriveled Heads|q|||||q^8201^A Collection of Heads^58^^k
flk|Belt of Preserved Heads|q|||||q^8201^A Collection of Heads^58^^k
fll|Belt of Tiny Heads|q|||||q^8201^A Collection of Heads^58^^k
flm|Faded Hakkari Cloak|q|||||q^8181^Confront Yeh'kinya^40^^k
fln|Tattered Hakkari Cape|q|||||q^8181^Confront Yeh'kinya^40^^k
flo|Ironbark Staff|ev||h|20069||v^15126^Rutherford Twing^1417^73.4^29.7^504598^h^k
fnr|Blue Dragonscale Leggings|c|||||c^Leatherworking^300^24654^f
fns|Green Dragonscale Gauntlets|c|||||c^Leatherworking^280^24655^f
fqu|Twilight Cultist Mantle|Rw|||||m^11880^Twilight Avenger^8^k~m^11881^Twilight Geolord^8^k
fqw|Twilight Cultist Cowl|Rw|||||m^11880^Twilight Avenger^8^k~m^11881^Twilight Geolord^8^k
frg|Caretaker's Cape|v|U|a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^3650^a^k
frj|Lorekeeper's Ring|v|U|a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^20000^a^k
frm|Lorekeeper's Staff|v||a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^15211^a^k
frp|Outrider's Bow|u|||||
frq|Outrunner's Bow|v||a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^9126^a^k
frr|Protector's Band|v|U|a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^20000^a^k
frs|Protector's Sword|v|U|a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^12910^a^k
frv|Sentinel's Blade|v|U|a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^13050^a^k
frw|Sentinel's Medallion|v|U|a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^20000^a^k
fui|Runed Stygian Leggings|c|||||c^Tailoring^285^24901^f
fvo|Hammer of Bestial Fury|w|U||||m^14889^Emeriss^7.14^k~m^14890^Taerar^7.14^k
fw8|Malfurion's Signet Ring|q|U||||q^8447^Waking Legends^60^^k
fwu|Dragonheart Necklace|w|||||m^14889^Emeriss^7.14^k
fww|Ring of the Unliving|w|U||||m^14889^Emeriss^7.14^k
fx4|Mindtear Band|w|U||||m^14890^Taerar^7.14^k
fxb|Strangely Glyphed Legplates|w|||||m^14887^Ysondre^6.67^k
fxc|Southsea Head Bucket|q|||||q^8366^Southsea Shakedown^40^^k
fxd|Southsea Mojo Boots|q|||||q^8366^Southsea Shakedown^40^^k
fxe|Antiquated Nobleman's Tunic|q||h|||q^8273^Oran's Gratitude^42^h^k
fxf|Undercity Reservist's Cap|q||h|||q^8273^Oran's Gratitude^42^h^k
fxi|Sandstrider's Mark|q|||||q^8283^Wanted - Deathclasp, Terror of the Sands^54^^k
fxj|Black Crystal Dagger|q|U||||q^8283^Wanted - Deathclasp, Terror of the Sands^54^^k
fxk|Cold Forged Hammer|q|U||||q^8271^Hero of the Stormpike^51^^k~q^8272^Hero of the Frostwolf^51^^k
fxl|Sunprism Pendant|q|U||||q^8321^Vyral the Vile^60^^k
fxm|Desert Wind Gauntlets|q|||||q^8321^Vyral the Vile^60^^k
fyi|Elemental Focus Band|w|U||||m^15203^Prince Skaldrenox^33.98^k
fyl|Wavefront Necklace|w|||||m^15305^Lord Skwol^30.48^k
fys|Multicolored Band|x|||||x^20603^Bag of Spoils^k
fyv|Abyssal War Beads|x|||||x^20601^Sack of Spoils^k
fyz|Cenarion Reservist's Legplates|q|||||q^8316^Armaments of War^58^^k
fz0|Cenarion Reservist's Legplates|q||a|||q^8376^Armaments of War^58^a^k
fz1|Cenarion Reservist's Legguards|q||h|||q^8380^Armaments of War^58^h^k
fz2|Cenarion Reservist's Legguards|q|||||q^8377^Armaments of War^58^^k
fz3|Cenarion Reservist's Leggings|q|||||q^8378^Armaments of War^58^^k
fz4|Cenarion Reservist's Leggings|q|||||q^8382^Armaments of War^58^^k
fz5|Cenarion Reservist's Pants|q|||||q^8381^Armaments of War^58^^k
fz7|Cenarion Reservist's Pants|q|||||q^8379^Armaments of War^58^^k
fza|Crystal Encrusted Greaves|q|||||q^8316^Armaments of War^58^^k
fzb|Crystal Lined Greaves|q||a|||q^8376^Armaments of War^58^a^k
fzc|Wastewalker's Gauntlets|q||h|||q^8380^Armaments of War^58^h^k
fzd|Desertstalkers's Gauntlets|q|||||q^8377^Armaments of War^58^^k
fze|Sandstorm Boots|q|||||q^8382^Armaments of War^58^^k
fzf|Dunestalker's Boots|q|||||q^8378^Armaments of War^58^^k
fzg|Sandworm Skin Gloves|q|||||q^8381^Armaments of War^58^^k
fzh|Desert Bloom Gloves|q|||||q^8379^Armaments of War^58^^k
fzn|Brann's Trusty Pick|q|||||q^8308^Brann Bronzebeard's Lost Letter^58^^k
fzo|Corrupted Blackwood Staff|q|||||q^8306^Into The Maw of Madness^58^^k
gaj|Defiler's Talisman|ev||h|21117|LTalismanofBattle|v^15126^Rutherford Twing^1417^73.4^29.7^28230^h^k
gak|Defiler's Talisman|ev||h|21118|LTalismanofBattle|v^15126^Rutherford Twing^1417^73.4^29.7^15230^h^k
gal|Talisman of Arathor|ev||a|21115|LTalismanofBattle|v^15127^Samuel Hawke^1417^46^45.2^28230^a^k~r^509^4^The League of Arathor^f
gam|Talisman of Arathor|ev||a|21116|LTalismanofBattle|v^15127^Samuel Hawke^1417^46^45.2^15230^a^k~r^509^4^The League of Arathor^f
gan|Talisman of Arathor|ev||a|21120|LTalismanofBattle|v^15127^Samuel Hawke^1417^46^45.2^7230^a^k~r^509^4^The League of Arathor^f
gao|Defiler's Talisman|ev||h|21119|LTalismanofBattle|v^15126^Rutherford Twing^1417^73.4^29.7^7230^h^k
gau|Death's Sting|r|U||||d^531^C'thun^8^1^k
gb2|Dark Edge of Insanity|r|U||||d^531^C'thun^8^1^k
gcs|Signet Ring of the Bronze Dragonflight|eq|U|||LSignetRingoftheB|q^8747^The Path of the Protector^60^^k~r^910^3^Brood of Nozdormu^f
gct|Signet Ring of the Bronze Dragonflight|eq|U|||LSignetRingoftheB|q^8748^The Path of the Protector^60^^k~r^910^4^Brood of Nozdormu^f
gcu|Signet Ring of the Bronze Dragonflight|eq|U|||LSignetRingoftheB|q^8749^The Path of the Protector^60^^k~r^910^5^Brood of Nozdormu^f
gcv|Signet Ring of the Bronze Dragonflight|eq|U|||LSignetRingoftheB|q^8750^The Path of the Protector^60^^k~r^910^6^Brood of Nozdormu^f
gcw|Signet Ring of the Bronze Dragonflight|eq|U|||LSignetRingoftheB|q^8751^The Protector of Kalimdor^60^^k~r^910^7^Brood of Nozdormu^f
gcx|Signet Ring of the Bronze Dragonflight|eq|U|||LSignetRingoftheB|q^8752^The Path of the Conqueror^60^^k~r^910^3^Brood of Nozdormu^f
gcy|Signet Ring of the Bronze Dragonflight|eq|U|||LSignetRingoftheB|q^8753^The Path of the Conqueror^60^^k~r^910^4^Brood of Nozdormu^f
gcz|Signet Ring of the Bronze Dragonflight|eq|U|||LSignetRingoftheB|q^8754^The Path of the Conqueror^60^^k~r^910^5^Brood of Nozdormu^f
gd0|Signet Ring of the Bronze Dragonflight|eq|U|||LSignetRingoftheB|q^8755^The Path of the Conqueror^60^^k~r^910^6^Brood of Nozdormu^f
gd1|Signet Ring of the Bronze Dragonflight|eq|U|||LSignetRingoftheB|q^8756^The Qiraji Conqueror^60^^k~r^910^7^Brood of Nozdormu^f
gd2|Signet Ring of the Bronze Dragonflight|eq|U|||LSignetRingoftheB|q^8757^The Path of the Invoker^60^^k~r^910^3^Brood of Nozdormu^f
gd3|Signet Ring of the Bronze Dragonflight|eq|U|||LSignetRingoftheB|q^8758^The Path of the Invoker^60^^k~r^910^4^Brood of Nozdormu^f
gd4|Signet Ring of the Bronze Dragonflight|eq|U|||LSignetRingoftheB|q^8759^The Path of the Invoker^60^^k~r^910^5^Brood of Nozdormu^f
gd5|Signet Ring of the Bronze Dragonflight|eq|U|||LSignetRingoftheB|q^8760^The Path of the Invoker^60^^k~r^910^6^Brood of Nozdormu^f
gd6|Signet Ring of the Bronze Dragonflight|eq|U|||LSignetRingoftheB|q^8761^The Grand Invoker^60^^k~r^910^7^Brood of Nozdormu^f
gf2|Stormshroud Gloves|c|||||c^Leatherworking^290^26279^f
gfz|Earth Warder's Vest|q|||||q^8460^Timbermaw Ally^45^^k
gg0|Belt of the Den Watcher|q|||||q^8460^Timbermaw Ally^45^^k
gg4|Leggings of the Ursa|q|||||q^8461^Deadwood of the North^45^^k
gg5|Helm of the Pathfinder|q|||||q^8461^Deadwood of the North^45^^k
gg6|Earth Warder's Gloves|q|||||q^8464^Winterfall Activity^45^^k
gg7|Gloves of the Pathfinder|q|||||q^8464^Winterfall Activity^45^^k
gg8|Vest of the Den Watcher|q|||||q^8464^Winterfall Activity^45^^k
gga|Ursa's Embrace|q|||||q^8464^Winterfall Activity^45^^k
gi8|Sickle of Unyielding Strength|Q|||||q^8558^Sickle of Unyielding Strength^60^^k
gi9|Signet of Unyielding Strength|Q|U||||q^8556^Signet of Unyielding Strength^60^^k
gia|Drape of Unyielding Strength|Q|||||q^8557^Drape of Unyielding Strength^60^^k
gib|Blade of Eternal Justice|Q||a|||q^8711^Blade of Eternal Justice^60^a^k
gic|Ring of Eternal Justice|Q|U|a|||q^8703^Ring of Eternal Justice^60^a^k
gid|Cape of Eternal Justice|Q||a|||q^8695^Cape of Eternal Justice^60^a^k
gie|Hammer of the Gathering Storm|Q||h|||q^8706^Hammer of the Gathering Storm^60^h^k
gif|Ring of the Gathering Storm|Q|U|h|||q^8698^Ring of the Gathering Storm^60^h^k
gig|Cloak of the Gathering Storm|Q||h|||q^8690^Cloak of the Gathering Storm^60^h^k
gih|Scythe of the Unseen Path|Q|||||q^8712^Scythe of the Unseen Path^60^^k
gii|Signet of the Unseen Path|Q|U||||q^8704^Signet of the Unseen Path^60^^k
gij|Cloak of the Unseen Path|Q|||||q^8696^Cloak of the Unseen Path^60^^k
gik|Dagger of Veiled Shadows|Q|||||q^8709^Dagger of Veiled Shadows^60^^k
gil|Band of Veiled Shadows|Q|U||||q^8701^Band of Veiled Shadows^60^^k
gim|Cloak of Veiled Shadows|Q|||||q^8693^Cloak of Veiled Shadows^60^^k
gin|Mace of Unending Life|Q|||||q^8708^Mace of Unending Life^60^^k
gio|Band of Unending Life|Q|U||||q^8700^Band of Unending Life^60^^k
gip|Cloak of Unending Life|Q|||||q^8692^Cloak of Unending Life^60^^k
giq|Gavel of Infinite Wisdom|Q|||||q^8705^Gavel of Infinite Wisdom^60^^k
gir|Ring of Infinite Wisdom|Q|U||||q^8697^Ring of Infinite Wisdom^60^^k
gis|Shroud of Infinite Wisdom|Q|||||q^8689^Shroud of Infinite Wisdom^60^^k
git|Blade of Vaulted Secrets|Q|||||q^8707^Blade of Vaulted Secrets^60^^k
giu|Band of Vaulted Secrets|Q|U||||q^8699^Band of Vaulted Secrets^60^^k
giv|Drape of Vaulted Secrets|Q|||||q^8691^Drape of Vaulted Secrets^60^^k
giw|Kris of Unspoken Names|Q|||||q^8710^Kris of Unspoken Names^60^^k
gix|Ring of Unspoken Names|Q|U||||q^8702^Ring of Unspoken Names^60^^k
giy|Shroud of Unspoken Names|Q|||||q^8694^Shroud of Unspoken Names^60^^k
gkl|Ring of Fury|r|U||||d^509^Moam^100^1^k
glc|Charm of the Shifting Sands|Q|||||q^8791^The Fall of Ossirian^60^^k
gld|Choker of the Shifting Sands|Q|||||q^8791^The Fall of Ossirian^60^^k
gle|Pendant of the Shifting Sands|Q|||||q^8791^The Fall of Ossirian^60^^k
glf|Amulet of the Shifting Sands|Q|||||q^8791^The Fall of Ossirian^60^^k
glp|Gnomish Turban of Psychic Might|q|||||q^8620^The Only Prescription^60^^k
gls|Ravencrest's Legacy|q|U||||q^8745^Treasure of the Timeless One^60^^k
glt|Runesword of the Red|q|U||||q^8745^Treasure of the Timeless One^60^^k
glu|Shadowsong's Sorrow|q|U||||q^8745^Treasure of the Timeless One^60^^k
glv|Fang of Korialstrasz|q|U||||q^8745^Treasure of the Timeless One^60^^k
glw|Red Winter Hat|d|||||d^229^War Master Voone^100^0^k~d^230^Emperor Dagran Thaurissan^100^0^k
glx|Green Winter Hat|dw|||||d^429^Prince Tortheldrin^100^0^k~m^1853^Darkmaster Gandling^100^k
gly|Band of Icy Depths|q|U||||q^8729^The Wrath of Neptulon^60^^k
glz|Darkwater Robes|q|||||q^8729^The Wrath of Neptulon^60^^k
gm1|Amulet of Shadow Shielding|Q|||||q^8730^Nefarius's Corruption^60^^k
gm2|Onyx Embedded Leggings|Q|||||q^8730^Nefarius's Corruption^60^^k
gm3|Drake Tooth Necklace|q|||||q^8736^The Nightmare Manifests^60^^k
gm4|Drudge Boots|q|||||q^8736^The Nightmare Manifests^60^^k
gmz|Don Rodrigo's Band|v|U||||v^13217^Thanthaldis Snowgleam^1416^39.4^81.7^755555^^k
gn1|Rune of Perfection|v||a||LRuneofBattle|v^14753^Illiyana Moonblaze^1440^61.5^83.9^40000^a^k
gn2|Rune of Perfection|v||a||LRuneofBattle|v^14753^Illiyana Moonblaze^1440^61.5^83.9^20000^a^k
gn3|Rune of Duty|v||a||LRuneofBattle|v^14753^Illiyana Moonblaze^1440^61.5^83.9^40000^a^k
gn4|Rune of Duty|v||a||LRuneofBattle|v^14753^Illiyana Moonblaze^1440^61.5^83.9^20000^a^k
gnh|Gauntlets of Annihilation|r|||||d^531^C'thun^21^1^k
gni|Grasp of the Old God|r|||||d^531^C'thun^21^1^k
gnj|Cloak of Clarity|r|||||d^531^C'thun^21^1^k
gnl|Dark Storm Gauntlets|r|||||d^531^C'thun^18.4^1^k
gnm|Belt of Never-ending Agony|r|||||d^531^C'thun^18.4^1^k
gnw|Ring of the Godslayer|r|U||||d^531^C'thun^18.4^1^k
gnx|Royal Scepter of Vek'lor|r|||||d^531^^16.67^1^k
gny|Royal Qiraji Belt|r|||||d^531^^16.67^1^k
go0|Boots of Epiphany|r|||||d^531^^16.67^1^k
go1|Ring of Emperor Vek'lor|r|U||||d^531^^16.67^1^k
go2|Qiraji Execution Bracers|r|||||d^531^^16.67^1^k
go4|Bracelets of Royal Redemption|r|||||d^531^^14.29^1^k
go5|Gloves of the Hidden Temple|r|||||d^531^^14.29^1^k
go6|Belt of the Fallen Emperor|r|||||d^531^^14.29^1^k
go7|Grasp of the Fallen Emperor|r|||||d^531^^14.29^1^k
go8|Amulet of Vek'nilash|r|||||d^531^^14.29^1^k
go9|Regenerating Belt of Vek'nilash|r|||||d^531^^14.29^1^k
goa|Wormscale Blocker|w|||||m^15517^Ouro^15^k
gob|Burrower Bracers|w|||||m^15517^Ouro^15^k
gof|Don Rigoberto's Lost Hat|w|||||m^15517^Ouro^15^k
gog|Huhuran's Stinger|r|||||d^531^Princess Huhuran^15^1^k
goi|Hive Defiler Wristguards|r|||||d^531^Princess Huhuran^15^1^k
goj|Gloves of the Messiah|r|||||d^531^Princess Huhuran^15^1^k
gok|Ring of the Martyr|r|U||||d^531^Princess Huhuran^15^1^k
gom|Sharpened Silithid Femur|r|U||||d^531^Viscidus^12.86^1^k
gon|Gauntlets of the Righteous Champion|r|||||d^531^Viscidus^12.86^1^k
goo|Gauntlets of Kalimdor|r|||||d^531^Viscidus^12.86^1^k
gp9|Hive Tunneler's Boots|r|||||d^531^Fankriss the Unyielding^18^1^k
gpc|Recomposed Boots|r|||||d^531^Battleguard Sartura^18^1^k
gpe|Ancient Qiraji Ripper|r|||||d^531^Fankriss the Unyielding^10^1^k
gpr|Robes of the Guardian Saint|r|||||d^531^Fankriss the Unyielding^18^1^k
gps|Barbed Choker|r|||||d^531^Fankriss the Unyielding^18^1^k
gpt|Mantle of Wicked Revenge|r|||||d^531^Fankriss the Unyielding^18^1^k
gpv|Legplates of Blazing Light|r|||||d^531^Battleguard Sartura^15^1^k
gpx|Creeping Vine Helm|r|||||d^531^Battleguard Sartura^15^1^k
gq0|Gloves of Enforcement|r|||||d^531^Battleguard Sartura^15^1^k
gq2|Gauntlets of Steadfast Determination|r|||||d^531^Battleguard Sartura^18^1^k
gq5|Ring of the Qiraji Fury|r|U||||d^531^Viscidus^12.86^1^k
gq9|Ring of the Devoured|r|U||||d^531^^22.5^1^k
gqi|Angelista's Charm|r|||||d^531^^22.5^1^k
gql|Guise of the Devourer|r|||||d^531^^15^1^k
gqm|Ternary Mantle|r|||||d^531^^15^1^k
gqn|Angelista's Touch|r|U||||d^531^^15^1^k
gqs|Pendant of the Qiraji Guardian|r|||||d^531^The Prophet Skeram^18^1^k
gr1|Ring of the Fallen God|Q|U||||q^8802^The Savior of Kalimdor^60^^k
gr2|Cloak of the Fallen God|Q|||||q^8802^The Savior of Kalimdor^60^^k
gr4|Amulet of the Fallen God|Q|||||q^8802^The Savior of Kalimdor^60^^k
gtt|Fury of the Forgotten Swarm|r|||||d^509^^13.24^1^k
guk|Ritssyn's Ring of Chaos|rw|U||||d^531^Vekniss Stinger^0.34^1^k~d^531^Vekniss Warrior^0.29^1^k
gun|Scepter of the False Prophet|r|||||d^531^C'thun^8^1^k
gw0|Gloves of the Immortal|r|||||d^531^Vekniss Stinger^0.31^1^k~d^531^Vekniss Guardian^0.2^1^k
gyy|Belt of Heroism|q|||||q^8937^Just Compensation^58^a^k~q^8944^Just Compensation^58^h^k
gyz|Boots of Heroism|q|||||q^8959^Anthion's Parting Words^58^a^k~q^9022^Anthion's Parting Words^58^h^k
gz0|Bracers of Heroism|q|||||q^8912^An Earnest Proposition^58^a^k~q^8920^An Earnest Proposition^58^h^k
gz1|Breastplate of Heroism|q|||||q^9006^Saving the Best for Last^58^a^k~q^9013^Saving the Best for Last^58^h^k
gz2|Gauntlets of Heroism|q|||||q^8937^Just Compensation^58^a^k~q^8944^Just Compensation^58^h^k
gz3|Helm of Heroism|q|||||q^9006^Saving the Best for Last^58^a^k~q^9013^Saving the Best for Last^58^h^k
gz4|Legplates of Heroism|q|||||q^8959^Anthion's Parting Words^58^a^k~q^9022^Anthion's Parting Words^58^h^k
gz5|Spaulders of Heroism|q|||||q^8959^Anthion's Parting Words^58^a^k~q^9022^Anthion's Parting Words^58^h^k
gz6|Darkmantle Belt|q|||||q^8935^Just Compensation^58^a^k~q^8941^Just Compensation^58^h^k
gz7|Darkmantle Boots|q|||||q^8956^Anthion's Parting Words^58^a^k~q^9020^Anthion's Parting Words^58^h^k
gz8|Darkmantle Bracers|q|||||q^8910^An Earnest Proposition^58^a^k~q^8917^An Earnest Proposition^58^h^k
gz9|Darkmantle Cap|q|||||q^9004^Saving the Best for Last^58^a^k~q^9010^Saving the Best for Last^58^h^k
gza|Darkmantle Gloves|q|||||q^8935^Just Compensation^58^a^k~q^8941^Just Compensation^58^h^k
gzb|Darkmantle Pants|q|||||q^8956^Anthion's Parting Words^58^a^k~q^9020^Anthion's Parting Words^58^h^k
gzc|Darkmantle Spaulders|q|||||q^8956^Anthion's Parting Words^58^a^k~q^9020^Anthion's Parting Words^58^h^k
gzd|Darkmantle Tunic|q|||||q^9004^Saving the Best for Last^58^a^k~q^9010^Saving the Best for Last^58^h^k
gze|Beastmaster's Belt|q|||||q^8931^Just Compensation^58^a^k~q^8938^Just Compensation^58^h^k
gzf|Beastmaster's Bindings|q|||||q^8906^An Earnest Proposition^58^a^k~q^8914^An Earnest Proposition^58^h^k
gzh|Beastmaster's Cap|q|||||q^9000^Saving the Best for Last^58^a^k~q^9008^Saving the Best for Last^58^h^k
gzj|Beastmaster's Gloves|q|||||q^8931^Just Compensation^58^a^k~q^8938^Just Compensation^58^h^k
gzk|Beastmaster's Mantle|q|||||q^8952^Anthion's Parting Words^58^a^k~q^9017^Anthion's Parting Words^58^h^k
gzl|Beastmaster's Pants|q|||||q^8952^Anthion's Parting Words^58^a^k~q^9017^Anthion's Parting Words^58^h^k
h0s|Beastmaster's Tunic|q|||||q^9000^Saving the Best for Last^58^a^k~q^9008^Saving the Best for Last^58^h^k
h0t|Beastmaster's Boots|q|||||q^8952^Anthion's Parting Words^58^a^k~q^9017^Anthion's Parting Words^58^h^k
h0u|Sorcerer's Belt|q|||||q^8932^Just Compensation^58^a^k~q^8939^Just Compensation^58^h^k
h0v|Sorcerer's Bindings|q|||||q^8907^An Earnest Proposition^58^a^k~q^8915^An Earnest Proposition^58^h^k
h0w|Sorcerer's Boots|q|||||q^8953^Anthion's Parting Words^58^a^k~q^9018^Anthion's Parting Words^58^h^k
h0x|Sorcerer's Crown|q|||||q^9001^Saving the Best for Last^58^a^k~q^9014^Saving the Best for Last^58^h^k
h0y|Sorcerer's Gloves|q|||||q^8932^Just Compensation^58^a^k~q^8939^Just Compensation^58^h^k
h0z|Sorcerer's Leggings|q|||||q^8953^Anthion's Parting Words^58^a^k~q^9018^Anthion's Parting Words^58^h^k
h10|Sorcerer's Mantle|q|||||q^8953^Anthion's Parting Words^58^a^k~q^9018^Anthion's Parting Words^58^h^k
h11|Sorcerer's Robes|q|||||q^9001^Saving the Best for Last^58^a^k~q^9014^Saving the Best for Last^58^h^k
h12|Deathmist Belt|q|||||q^8936^Just Compensation^58^a^k~q^8943^Just Compensation^58^h^k
h13|Deathmist Bracers|q|||||q^8911^An Earnest Proposition^58^a^k~q^8919^An Earnest Proposition^58^h^k
h14|Deathmist Leggings|q|||||q^8958^Anthion's Parting Words^58^a^k~q^9021^Anthion's Parting Words^58^h^k
h15|Deathmist Mantle|q|||||q^8958^Anthion's Parting Words^58^a^k~q^9021^Anthion's Parting Words^58^h^k
h16|Deathmist Mask|q|||||q^9005^Saving the Best for Last^58^a^k~q^9012^Saving the Best for Last^58^h^k
h17|Deathmist Robe|q|||||q^9005^Saving the Best for Last^58^a^k~q^9012^Saving the Best for Last^58^h^k
h18|Deathmist Sandals|q|||||q^8958^Anthion's Parting Words^58^a^k~q^9021^Anthion's Parting Words^58^h^k
h19|Deathmist Wraps|q|||||q^8936^Just Compensation^58^a^k~q^8943^Just Compensation^58^h^k
h1a|Virtuous Belt|q|||||q^8934^Just Compensation^58^a^k~q^8940^Just Compensation^58^h^k
h1b|Virtuous Bracers|q|||||q^8909^An Earnest Proposition^58^a^k~q^8916^An Earnest Proposition^58^h^k
h1c|Virtuous Crown|q|||||q^9003^Saving the Best for Last^58^a^k~q^9009^Saving the Best for Last^58^h^k
h1d|Virtuous Gloves|q|||||q^8934^Just Compensation^58^a^k~q^8940^Just Compensation^58^h^k
h1e|Virtuous Mantle|q|||||q^8955^Anthion's Parting Words^58^a^k~q^9019^Anthion's Parting Words^58^h^k
h1f|Virtuous Robe|q|||||q^9003^Saving the Best for Last^58^a^k~q^9009^Saving the Best for Last^58^h^k
h1g|Virtuous Sandals|q|||||q^8955^Anthion's Parting Words^58^a^k~q^9019^Anthion's Parting Words^58^h^k
h1h|Virtuous Skirt|q|||||q^8955^Anthion's Parting Words^58^a^k~q^9019^Anthion's Parting Words^58^h^k
h1i|Soulforge Belt|q||a|||q^8933^Just Compensation^58^a^k
h1j|Soulforge Boots|q||a|||q^8954^Anthion's Parting Words^58^a^k
h1k|Soulforge Bracers|q||a|||q^8908^An Earnest Proposition^58^a^k
h1l|Soulforge Breastplate|q||a|||q^9002^Saving the Best for Last^58^a^k
h1m|Soulforge Gauntlets|q||a|||q^8933^Just Compensation^58^a^k
h1n|Soulforge Helm|q||a|||q^9002^Saving the Best for Last^58^a^k
h1o|Soulforge Legplates|q||a|||q^8954^Anthion's Parting Words^58^a^k
h1p|Soulforge Spaulders|q||a|||q^8954^Anthion's Parting Words^58^a^k
h1r|Bindings of The Five Thunders|q||h|||q^8918^An Earnest Proposition^58^h^k
h1s|Boots of The Five Thunders|q||h|||q^8957^Anthion's Parting Words^58^h^k
h1t|Coif of The Five Thunders|q||h|||q^9011^Saving the Best for Last^58^h^k
h1u|Cord of The Five Thunders|q||h|||q^8942^Just Compensation^58^h^k
h1v|Gauntlets of The Five Thunders|q||h|||q^8942^Just Compensation^58^h^k
h1w|Kilt of The Five Thunders|q||h|||q^8957^Anthion's Parting Words^58^h^k
h1x|Pauldrons of The Five Thunders|q||h|||q^8957^Anthion's Parting Words^58^h^k
h1y|Vest of The Five Thunders|q||h|||q^9011^Saving the Best for Last^58^h^k
h22|Feralheart Belt|q|||||q^8926^Just Compensation^58^a^k~q^8927^Just Compensation^58^h^k
h23|Feralheart Boots|q|||||q^8951^Anthion's Parting Words^58^a^k~q^9016^Anthion's Parting Words^58^h^k
h24|Feralheart Bracers|q|||||q^8905^An Earnest Proposition^58^a^k~q^8913^An Earnest Proposition^58^h^k
h25|Feralheart Cowl|q|||||q^8999^Saving the Best for Last^58^a^k~q^9007^Saving the Best for Last^58^h^k
h26|Feralheart Gloves|q|||||q^8926^Just Compensation^58^a^k~q^8927^Just Compensation^58^h^k
h27|Feralheart Kilt|q|||||q^8951^Anthion's Parting Words^58^a^k~q^9016^Anthion's Parting Words^58^h^k
h28|Feralheart Spaulders|q|||||q^8951^Anthion's Parting Words^58^a^k~q^9016^Anthion's Parting Words^58^h^k
h29|Feralheart Vest|q|||||q^8999^Saving the Best for Last^58^a^k~q^9007^Saving the Best for Last^58^h^k
h39|Beads of Ogre Mojo|Q|||||q^8949^Falrin's Vendetta^58^^k
h3a|Beads of Ogre Might|Q|||||q^8949^Falrin's Vendetta^58^^k
h4f|Obsidian Mail Tunic|c|||||c^Blacksmithing^300^27590^f
h4j|Light Obsidian Belt|c|||||c^Blacksmithing^320^27588^f
h4k|Thick Obsidian Breastplate|c|||||c^Blacksmithing^300^27587^f
h4l|Heavy Obsidian Belt|c|||||c^Blacksmithing^320^27585^f
h4m|Jagged Obsidian Shield|c|||||c^Blacksmithing^300^27586^f
h8r|Fahrad's Reloading Repeater|Q|||||q^9023^The Perfect Poison^60^^k
h8s|Doomulus Prime|Q|||||q^9023^The Perfect Poison^60^^k
h9l|The Thunderwood Poker|Q|U||||q^9023^The Perfect Poison^60^^k
h9m|Ravenholdt Slicer|Q|||||q^9023^The Perfect Poison^60^^k
h9n|Shivsprocket's Shiv|Q|||||q^9023^The Perfect Poison^60^^k
h9o|Simone's Cultivating Hammer|Q|||||q^9023^The Perfect Poison^60^^k
h9r|Sageblade|c|||||c^Blacksmithing^300^27832^f
h9s|Persuader|c|||||c^Blacksmithing^300^27830^f
h9t|Titanic Leggings|c|||||c^Blacksmithing^300^27829^f
hfh|Atiesh, Greatstaff of the Guardian|q|||||q^9270^Atiesh, Greatstaff of the Guardian^60^^k
hgm|Atiesh, Greatstaff of the Guardian|q|||||q^9271^Atiesh, Greatstaff of the Guardian^60^^k
hgn|Atiesh, Greatstaff of the Guardian|q|||||q^9257^Atiesh, Greatstaff of the Guardian^60^^k
hgo|Atiesh, Greatstaff of the Guardian|q|||||q^9269^Atiesh, Greatstaff of the Guardian^60^^k
hh8|Glacial Vest|Qc|||||c^Tailoring^315^28207^f~q^9240^Glacial Vest^60^^k
hha|Glacial Gloves|Qc|||||c^Tailoring^315^28205^f~q^9239^Glacial Gloves^60^^k
hhb|Glacial Wrists|Qc|||||c^Tailoring^315^28209^f~q^9238^Glacial Wrists^60^^k
hhe|Glacial Cloak|Qc|||||c^Tailoring^315^28208^f~q^9237^Glacial Cloak^60^^k
hhh|Polar Tunic|Qc|||||c^Leatherworking^320^28219^f~q^9243^Polar Tunic^60^^k
hhi|Polar Gloves|Qc|||||c^Leatherworking^320^28220^f~q^9242^Polar Gloves^60^^k
hhj|Polar Bracers|Qc|||||c^Leatherworking^320^28221^f~q^9241^Polar Bracers^60^^k
hhk|Icy Scale Breastplate|Qc|||||c^Leatherworking^320^28222^f~q^9246^Icy Scale Breastplate^60^^k
hhl|Icy Scale Bracers|Qc|||||c^Leatherworking^320^28224^f~q^9244^Icy Scale Bracers^60^^k
hhm|Icy Scale Gauntlets|Qc|||||c^Leatherworking^320^28223^f~q^9245^Icy Scale Gauntlets^60^^k
hhp|Icebane Breastplate|Qc|||||c^Blacksmithing^300^28242^f~q^9236^Icebane Breastplate^60^^k
hhq|Icebane Gauntlets|Qc|||||c^Blacksmithing^300^28243^f~q^9234^Icebane Gauntlets^60^^k
hhr|Icebane Bracers|Qc|||||c^Blacksmithing^300^28244^f~q^9235^Icebane Bracers^60^^k
hhs|Sentinel's Plate Legguards|v||a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^166347^a^k
hij|Icebane Leggings|Q|||||q^9232^The Only Song I Know...^60^^k
hik|Glacial Leggings|Q|||||q^9232^The Only Song I Know...^60^^k
hil|Polar Leggings|Q|||||q^9232^The Only Song I Know...^60^^k
him|Icy Scale Leggings|Q|||||q^9232^The Only Song I Know...^60^^k
hir|Ramaladni's Icy Grasp|Q|U||||q^9230^Ramaladni's Icy Grasp^60^^k
hj9|Band of Cenarius|q|U||||q^9248^A Humble Offering^58^^k
hjg|Mark of C'Thun|r|||||d^531^C'thun^21^1^k
hjw|Sentinel's Chain Leggings|v||a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^242207^a^k
hjx|Sentinel's Leather Pants|v||a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^211086^a^k
hjy|Sentinel's Lizardhide Pants|v||a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^211869^a^k
hk0|Sentinel's Silk Leggings|v|U|a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^170748^a^k
hk1|Sentinel's Lamellar Legguards|v||a|||v^14753^Illiyana Moonblaze^1440^61.5^83.9^171358^a^k
hk5|Sylvan Crown|c|||||c^Tailoring^300^28481^f
hk6|Sylvan Shoulders|c|||||c^Tailoring^300^28482^f
hmj|Blood Guard's Chain Greaves|p|U|h|23278||p^7^h^f
hmv|Blood Guard's Dreadweave Walkers|p|U|h|23283||p^7^h^f
hmw|Blood Guard's Leather Walkers|p|U|h|23285||p^7^h^f
hmx|Blood Guard's Mail Greaves|p|U|h|||p^7^h^f
hmy|Blood Guard's Plate Greaves|p|U|h|23287||p^7^h^f
hn0|Blood Guard's Silk Walkers|p|U|h|23291||p^7^h^f
hn2|Blood Guard's Chain Vices|p|U|h|23279||p^7^h^f
hn4|Blood Guard's Leather Grips|p|U|h|23284||p^7^h^f
hn5|Blood Guard's Dreadweave Handwraps|p|U|h|23282||p^7^h^f
hn7|Blood Guard's Mail Vices|p|U|h|||p^7^h^f
hn8|Blood Guard's Plate Gauntlets|p|U|h|23286||p^7^h^f
hnc|Legionnaire's Plate Hauberk|p|U|h|23300||p^8^h^f
hnd|Legionnaire's Plate Leggings|p|U|h|23301||p^8^h^f
hne|Legionnaire's Chain Hauberk|p|U|h|23292||p^8^h^f
hnf|Legionnaire's Chain Legguards|p|U|h|23293||p^8^h^f
hng|Legionnaire's Mail Hauberk|p|U|h|||p^8^h^f
hnj|Legionnaire's Leather Chestpiece|p|U|h|23298||p^8^h^f
hnk|Legionnaire's Leather Legguards|p|U|h|23299||p^8^h^f
hnl|Legionnaire's Dreadweave Legguards|p|U|h|23296||p^8^h^f
hnn|Legionnaire's Silk Legguards|p|U|h|23304||p^8^h^f
hno|Legionnaire's Dreadweave Tunic|p|U|h|23297||p^8^h^f
hnq|Legionnaire's Silk Tunic|p|U|h|23305||p^8^h^f
hnr|Legionnaire's Mail Legguards|p|U|h|||p^8^h^f
hp7|Band of Unanswered Prayers|r|U||||d^533^Anub'Rekhan^20^1^k
hp8|Icebane Pauldrons|r|||||d^533^Grand Widow Faerlina^20^1^k
hp9|Polar Shoulder Pads|r|||||d^533^Grand Widow Faerlina^20^1^k
hpb|Malice Stone Pendant|r|||||d^533^Grand Widow Faerlina^20^1^k
hpm|Kiss of the Spider|r|U||||d^533^Maexxna^100^1^k
hpt|Band of Reanimation|r|U||||d^533^Patchwerk^20^1^k
hpz|Icy Scale Spaulders|r|||||d^533^Grobbulus^20^1^k
hq0|Glacial Mantle|r|||||d^533^Grobbulus^20^1^k
hqd|Gluth's Missing Collar|r|U||||d^533^Gluth^20^1^k
hqx|Eye of Diminution|r|U||||d^533^Thaddius^100^1^k
hre|Signet of the Fallen Defender|r|U||||d^533^Instructor Razuvious^16.67^1^k
hrf|Icebane Helmet|r|||||d^533^Heigan the Unclean^20^1^k
hrg|Polar Helmet|r|||||d^533^Gothik the Harvester^20^1^k
hrj|Sadist's Collar|r|||||d^533^Gothik the Harvester^20^1^k
hrl|Seal of the Damned|w|U||||o^Four Horsemen Chest^16.67^k
hrn|Warmth of Forgiveness|w|U||||o^Four Horsemen Chest^16.67^k
hrr|Band of the Inevitable|r|U||||d^533^Noth the Plaguebringer^14.29^1^k
hrs|Glacial Headdress|r|||||d^533^Gothik the Harvester^20^1^k
hrt|Icy Scale Coif|r|||||d^533^Heigan the Unclean^20^1^k
hrw|Necklace of Necropsy|r|||||d^533^Heigan the Unclean^20^1^k
hry|Band of Unnatural Forces|r|U||||d^533^Loatheb^100^1^k
hs0|Glyph of Deflection|w|U||||m^15989^Sapphiron^20^k
hs1|Slayer's Crest|w|U||||m^15989^Sapphiron^20^k
hs6|The Restrained Essence of Sapphiron|w|U||||m^15989^Sapphiron^20^k
hs7|Eye of the Dead|w|U||||m^15989^Sapphiron^20^k
hsd|Stormrage's Talisman of Seething|r|||||d^533^Kel'Thuzad^16.67^1^k
hsh|Gem of Trapped Innocents|r|||||d^533^Kel'Thuzad^20^1^k
hsj|Ring of the Dreadnaught|r|U||||d^533^Kel'Thuzad^11.11^1^k
hsk|Bonescythe Ring|r|U||||d^533^Kel'Thuzad^11.11^1^k
hsl|Ring of Faith|r|U||||d^533^Kel'Thuzad^11.11^1^k
hsm|Frostfire Ring|r|U||||d^533^Kel'Thuzad^11.11^1^k
hsn|Plagueheart Ring|r|U||||d^533^Kel'Thuzad^11.11^1^k
hso|Ring of the Dreamwalker|r|U||||d^533^Kel'Thuzad^11.11^1^k
hsp|Ring of the Earthshatterer|r|U||||d^533^Kel'Thuzad^11.11^1^k
hsq|Ring of Redemption|r|U||||d^533^Kel'Thuzad^11.11^1^k
hsr|Ring of the Cryptstalker|r|U||||d^533^Kel'Thuzad^11.11^1^k
hud|Chains of the Lich|d|||||d^329^^33.3^0^k
hvl|Scorn's Icy Choker|w|||||m^14693^Scorn^33.33^k
hxh|Ring of the Eternal Flame|w|U||||w^60^63^k
hxn|Champion's Plate Shoulders|p|U|h|23315||p^10^h^f
hxo|Champion's Plate Helm|p|U|h|23314||p^10^h^f
hxv|Champion's Chain Helm|p|U|h|23306||p^10^h^f
hxw|Champion's Chain Shoulders|p|U|h|23307||p^10^h^f
hxz|Champion's Dreadweave Cowl|p|U|h|23310||p^10^h^f
hy0|Champion's Dreadweave Spaulders|p|U|h|23311||p^10^h^f
hy1|Champion's Leather Helm|p|U|h|23312||p^10^h^f
hy2|Champion's Leather Shoulders|p|U|h|23313||p^10^h^f
hy4|Champion's Mail Pauldrons|p|U|h|||p^10^h^f
hy7|Champion's Silk Cowl|p|U|h|23318||p^10^h^f
hy8|Champion's Silk Mantle|p|U|h|23319||p^10^h^f
hyg|Knight-Captain's Lamellar Breastplate|p|U|a|||p^8^a^f
hyi|Knight-Lieutenant's Lamellar Gauntlets|p|U|a|||p^7^a^f
hyj|Knight-Lieutenant's Lamellar Sabatons|p|U|a|||p^7^a^f
hyl|Lieutenant Commander's Lamellar Shoulders|p|U|a|||p^10^a^f
hym|Knight-Lieutenant's Chain Greaves|p|U|a|22843||p^7^a^f
hyn|Knight-Lieutenant's Chain Vices|p|U|a|22862||p^7^a^f
hyq|Knight-Lieutenant's Dreadweave Handwraps|p|U|a|22865||p^7^a^f
hyr|Knight-Lieutenant's Dreadweave Walkers|p|U|a|22855||p^7^a^f
hys|Knight-Lieutenant's Leather Grips|p|U|a|22864||p^7^a^f
hyt|Knight-Lieutenant's Leather Walkers|p|U|a|22856||p^7^a^f
hyu|Knight-Lieutenant's Plate Gauntlets|p|U|a|22868||p^7^a^f
hyv|Knight-Lieutenant's Plate Greaves|p|U|a|22858||p^7^a^f
hyz|Knight-Lieutenant's Silk Walkers|p|U|a|22860||p^7^a^f
hz0|Knight-Captain's Chain Hauberk|p|U|a|22874||p^8^a^f
hz1|Knight-Captain's Chain Legguards|p|U|a|22875||p^8^a^f
hz4|Knight-Captain's Dreadweave Legguards|p|U|a|22881||p^8^a^f
hz5|Knight-Captain's Dreadweave Tunic|p|U|a|22884||p^8^a^f
hz6|Knight-Captain's Leather Chestpiece|p|U|a|22879||p^8^a^f
hz7|Knight-Captain's Leather Legguards|p|U|a|22880||p^8^a^f
hz8|Knight-Captain's Plate Hauberk|p|U|a|22872||p^8^a^f
hz9|Knight-Captain's Plate Leggings|p|U|a|22873||p^8^a^f
hzc|Knight-Captain's Silk Legguards|p|U|a|22883||p^8^a^f
hzd|Knight-Captain's Silk Tunic|p|U|a|22886||p^8^a^f
hze|Lieutenant Commander's Chain Helm|p|U|a|23251||p^10^a^f
hzf|Lieutenant Commander's Chain Shoulders|p|U|a|23252||p^10^a^f
hzi|Lieutenant Commander's Dreadweave Cowl|p|U|a|23255||p^10^a^f
hzj|Lieutenant Commander's Dreadweave Spaulders|p|U|a|23256||p^10^a^f
hzk|Lieutenant Commander's Leather Helm|p|U|a|23257||p^10^a^f
hzl|Lieutenant Commander's Leather Shoulders|p|U|a|23258||p^10^a^f
hzm|Lieutenant Commander's Plate Helm|p|U|a|23244||p^10^a^f
hzn|Lieutenant Commander's Plate Shoulders|p|U|a|23243||p^10^a^f
hzq|Lieutenant Commander's Silk Cowl|p|U|a|23263||p^10^a^f
hzr|Lieutenant Commander's Silk Mantle|p|U|a|23264||p^10^a^f
hzv|Crown of the Fire Festival|q|||||q^9339^A Thief's Reward^50^h^k~q^9365^A Thief's Reward^50^a^k
i3f|Grand Marshal's Mageblade|p||a|23466||p^14^a^f
i3g|Grand Marshal's Tome of Power|p||a|23468||p^14^a^f
i3h|Grand Marshal's Tome of Restoration|p||a|23469||p^14^a^f
i3i|Grand Marshal's Warhammer|p||a|23464||p^14^a^f
i3j|Grand Marshal's Demolisher|p||a|23465||p^14^a^f
i3s|High Warlord's Battle Mace|p||h|23454||p^14^h^f
i3t|High Warlord's Destroyer|p||h|23455||p^14^h^f
i3u|High Warlord's Spellblade|p||h|23451||p^14^h^f
i3w|High Warlord's Tome of Destruction|p||h|23452||p^14^h^f
i3x|High Warlord's Tome of Mending|p||h|23453||p^14^h^f
i6d|Larvae of the Great Worm|w|||||m^15517^Ouro^15^k
iou|The Shadowfoot Stabber|w|||||w^0^0^k
2vhb|Hidden Cloak|u|n||||
4j70|Resilient Cloth Headband|u|U||||
4jgw|Resilient Mail Coif|u|U||||
4jgx|Resilient Leather Mask|u|U||||
4kfl|Shawarmageddon|u|||||
4m6l|Silver Hand Training Hammer|u|s||||
4m6o|Crusader's Mace|u|||||
4ntl|Narpas Sword|u|||||
4qd6|Knight's Plate Hauberk|p||a|220801||p^6^a^f
4qd7|Knight-Lieutenant's Plate Pauldrons|p||a|220796||p^7^a^f
4qd8|Blood Guard's Plate Pauldrons|p||h|220795||p^7^h^f
4qd9|Knight's Plate Leggings|p||a|220798||p^6^a^f
4qda|Stone Guard's Plate Leggings|p||h|220797||p^6^h^f
4qdb|Sergeant Major's Plate Greaves|p||a|220800||p^5^a^f
4qdc|First Sergeant's Plate Greaves|p||h|220799||p^5^h^f
4qdd|Stone Guard's Plate Armor|p||h|220794||p^6^h^f
4qdf|Blood Guard's Plate Helm|p||h|220804||p^7^h^f
4qdg|Knight-Lieutenant's Plate Helm|p||a|220803||p^7^a^f
4qdi|Sergeant Major's Plate Gauntlets|p||a|220807||p^5^a^f
4qdj|First Sergeant's Plate Gauntlets|p||h|220806||p^5^h^f
4qdk|Knight-Lieutenant's Imbued Pauldrons|p||a|||p^7^a^f
4qdl|Knight's Imbued Leggings|p||a|||p^6^a^f
4qdm|Knight-Lieutenant's Imbued Helmet|p||a|||p^7^a^f
4qdn|Sergeant Major's Imbued Greaves|p||a|||p^5^a^f
4qdo|Sergeant Major's Imbued Gauntlets|p||a|||p^5^a^f
4qdp|Knight's Imbued Armor|p||a|||p^6^a^f
4qdq|Sergeant Major's Lamellar Boots|p||a|||p^5^a^f
4qdr|Knight's Lamellar Chestplate|p||a|||p^6^a^f
4qds|Knight's Lamellar Legplates|p||a|||p^6^a^f
4qdt|Sergeant Major's Lamellar Gauntlets|p||a|||p^5^a^f
4qdu|Knight-Lieutenant's Lamellar Pauldrons|p||a|||p^7^a^f
4qdv|Knight-Lieutenant's Lamellar Helm|p||a|||p^7^a^f
4qdw|Blood Guard's Mail Helmet|p||h|223075||p^7^h^f
4qdx|Blood Guard's Chain Helmet|p||h|220822||p^7^h^f
4qdy|Knight-Lieutenant's Chain Helmet|p||a|220821||p^7^a^f
4qdz|Blood Guard's Mail Epaulets|p||h|223073||p^7^h^f
4qe0|Blood Guard's Chain Epaulets|p||h|220825||p^7^h^f
4qe1|Knight-Lieutenant's Chain Epaulets|p||a|220824||p^7^a^f
4qe2|Stone Guard's Mail Armor|p||h|223078||p^6^h^f
4qe3|Stone Guard's Chain Armor|p||h|220828||p^6^h^f
4qe4|Knight's Chain Armor|p||a|220827||p^6^a^f
4qe5|Sergeant Major's Chain Gauntlets|p||a|220830||p^5^a^f
4qe6|First Sergeant's Chain Gauntlets|p||h|220829||p^5^h^f
4qe7|First Sergeant's Mail Gauntlets|p||h|223076||p^5^h^f
4qe8|Knight's Chain Legplates|p||a|220833||p^6^a^f
4qe9|Stone Guard's Chain Legplates|p||h|220832||p^6^h^f
4qea|Stone Guard's Mail Legplates|p||h|223074||p^6^h^f
4qeb|First Sergeant's Mail Sabatons|p||h|223077||p^5^h^f
4qec|First Sergeant's Chain Sabatons|p||h|220837||p^5^h^f
4qed|Sergeant Major's Chain Sabatons|p||a|220836||p^5^a^f
4qee|Stone Guard's Inscribed Chestpiece|p||h|||p^6^h^f
4qef|Stone Guard's Inscribed Legplates|p||h|||p^6^h^f
4qeg|First Sergeant's Inscribed Sabatons|p||h|||p^5^h^f
4qeh|Blood Guard's Inscribed Shoulder Pads|p||h|||p^7^h^f
4qei|Blood Guard's Inscribed Skullcap|p||h|||p^7^h^f
4qej|First Sergeant's Inscribed Gauntlets|p||h|||p^5^h^f
4qek|Stone Guard's Pulsing Breastplate|p||h|||p^6^h^f
4qel|First Sergeant's Pulsing Gauntlets|p||h|||p^5^h^f
4qem|First Sergeant's Pulsing Greaves|p||h|||p^5^h^f
4qen|Stone Guard's Pulsing Legplates|p||h|||p^6^h^f
4qeo|Blood Guard's Pulsing Helmet|p||h|||p^7^h^f
4qep|Blood Guard's Pulsing Shoulders|p||h|||p^7^h^f
4qeq|Knight-Lieutenant's Leather Headband|p||a|220851||p^7^a^f
4qer|Blood Guard's Leather Headband|p||h|220850||p^7^h^f
4qes|Knight-Lieutenant's Leather Shoulders|p||a|220853||p^7^a^f
4qet|Blood Guard's Leather Shoulders|p||h|220852||p^7^h^f
4qeu|Knight's Leather Armor|p||a|220855||p^6^a^f
4qev|Stone Guard's Leather Armor|p||h|220854||p^6^h^f
4qew|Sergeant Major's Leather Gauntlets|p||a|220857||p^5^a^f
4qex|First Sergeant's Leather Gauntlets|p||h|220856||p^5^h^f
4qey|Knight's Leather Pants|p||a|220859||p^6^a^f
4qez|Stone Guard's Leather Pants|p||h|220858||p^6^h^f
4qf0|Sergeant Major's Leather Boots|p||a|220861||p^5^a^f
4qf1|First Sergeant's Leather Boots|p||h|220860||p^5^h^f
4qf2|Sergeant Major's Crackling Leather Boots|p||a|220863||p^5^a^f
4qf3|First Sergeant's Crackling Leather Boots|p||h|220862||p^5^h^f
4qf4|Knight's Crackling Leather Leggings|p||a|220865||p^6^a^f
4qf5|Stone Guard's Crackling Leather Leggings|p||h|220864||p^6^h^f
4qf6|Sergeant Major's Crackling Leather Gauntlets|p||a|220867||p^5^a^f
4qf7|First Sergeant's Crackling Leather Gauntlets|p||h|220866||p^5^h^f
4qf8|Knight's Crackling Leather Tunic|p||a|220869||p^6^a^f
4qf9|Stone Guard's Crackling Leather Tunic|p||h|220868||p^6^h^f
4qfa|Knight-Lieutenant's Crackling Leather Spaulders|p||a|220871||p^7^a^f
4qfb|Blood Guard's Crackling Leather Spaulders|p||h|220870||p^7^h^f
4qfc|Knight-Lieutenant's Crackling Leather Helmet|p||a|220873||p^7^a^f
4qfd|Blood Guard's Crackling Leather Helmet|p||h|220872||p^7^h^f
4qfe|Knight-Lieutenant's Restored Leather Helm|p||a|220875||p^7^a^f
4qff|Blood Guard's Restored Leather Helm|p||h|220874||p^7^h^f
4qfg|Knight-Lieutenant's Restored Leather Spaulders|p||a|220877||p^7^a^f
4qfh|Blood Guard's Restored Leather Spaulders|p||h|220876||p^7^h^f
4qfi|Knight's Restored Leather Jerkin|p||a|220879||p^6^a^f
4qfj|Stone Guard's Restored Leather Jerkin|p||h|220878||p^6^h^f
4qfk|Sergeant Major's Restored Leather Gloves|p||a|220881||p^5^a^f
4qfl|First Sergeant's Restored Leather Gloves|p||h|220880||p^5^h^f
4qfm|Knight's Restored Leather Leggings|p||a|220883||p^6^a^f
4qfn|Stone Guard's Restored Leather Leggings|p||h|220882||p^6^h^f
4qfo|Sergeant Major's Restored Leather Boots|p||a|220885||p^5^a^f
4qfp|First Sergeant's Restored Leather Boots|p||h|220884||p^5^h^f
4qfq|Knight's Dreadweave Vest|p||a|220904||p^6^a^f
4qfr|Knight-Lieutenant's Dreadweave Mantle|p||a|220905||p^7^a^f
4qfs|Knight's Dreadweave Leggings|p||a|220906||p^6^a^f
4qft|Knight-Lieutenant's Dreadweave Hat|p||a|220907||p^7^a^f
4qfu|Sergeant Major's Dreadweave Gloves|p||a|220908||p^5^a^f
4qfv|Sergeant Major's Dreadweave Boots|p||a|220909||p^5^a^f
4qfw|Knight's Satin Armor|p||a|220903||p^6^a^f
4qfx|Knight's Satin Leggings|p||a|220902||p^6^a^f
4qfy|Knight-Lieutenant's Satin Pads|p||a|220901||p^7^a^f
4qfz|Sergeant Major's Satin Boots|p||a|220900||p^5^a^f
4qg0|Knight-Lieutenant's Satin Cover|p||a|220899||p^7^a^f
4qg1|Sergeant Major's Satin Gloves|p||a|220898||p^5^a^f
4qg2|First Sergeant's Satin Gloves|p||h|220897||p^5^h^f
4qg3|Blood Guard's Satin Cover|p||h|220896||p^7^h^f
4qg4|First Sergeant's Satin Boots|p||h|220895||p^5^h^f
4qg5|Blood Guard's Satin Pads|p||h|220894||p^7^h^f
4qg6|Stone Guard's Satin Leggings|p||h|220893||p^6^h^f
4qg7|Stone Guard's Satin Armor|p||h|220892||p^6^h^f
4qg8|Stone Guard's Dreadweave Vest|p||h|220886||p^6^h^f
4qg9|Blood Guard's Dreadweave Mantle|p||h|220887||p^7^h^f
4qga|Stone Guard's Dreadweave Leggings|p||h|220888||p^6^h^f
4qgb|Blood Guard's Dreadweave Hat|p||h|220889||p^7^h^f
4qgc|First Sergeant's Dreadweave Gloves|p||h|220890||p^5^h^f
4qgd|First Sergeant's Dreadweave Boots|p||h|220891||p^5^h^f
4qsg|Personal Spellbook|u|U||||
4qxa|Whisper|u|||||
4s4h|Knight-Lieutenant's Mail Epaulets|p||a|220823||p^7^a^f
4s4i|Knight's Mail Legplates|p||a|220834||p^6^a^f
4s4j|Knight-Lieutenant's Mail Helmet|p||a|220820||p^7^a^f
4s4k|Sergeant Major's Mail Gauntlets|p||a|220831||p^5^a^f
4s4l|Sergeant Major's Mail Sabatons|p||a|220835||p^5^a^f
4s4m|Knight's Mail Armor|p||a|220826||p^6^a^f
4uza|Feralheart Galoshes|u|||||
4uzb|Feralheart Wraps|u|||||
4uzd|Feralheart Hands|u|||||
4uzg|Feralheart Cord|u|||||
4uzh|Feralheart Sandals|u|||||
4uzi|Feralheart Bindings|u|||||
4uzj|Feralheart Embrace|u|||||
4uzk|Feralheart Gauntlets|u|||||
4uzm|Feralheart Headdress|u|||||
4uzn|Feralheart Pants|u|||||
4uzs|Feralheart Cap|u|||||
4uzt|Feralheart Fists|u|||||
4uzv|Feralheart Tunic|u|||||
4v01|Feralheart Faceguard|u|||||
4v02|Feralheart Grips|u|||||
4v03|Feralheart Treads|u|||||
4v04|Feralheart Armor|u|||||
4v0s|Darkmantle Grips|u|||||
4v0v|Darkmantle Footpads|u|||||
4v1l|Battleboots of Heroism|u|||||
4v1o|Crown of Heroism|u|||||
4v1x|Faceguard of Heroism|u|||||
4v1y|Handguards of Heroism|u|||||
4v1z|Sabatons of Heroism|u|||||
4v20|Chestguard of Heroism|u|||||
4v29|Beastmaster's Treads|u|||||
4v2b|Beastmaster's Gauntlets|u|||||
4v3m|Sorcerer's Gauntlets|u|||||
4v3n|Sorcerer's Sandals|u|||||
4v46|Virtuous Mitts|u|||||
4v4d|Virtuous Cowl|u|||||
4v4e|Virtuous Hands|u|||||
4v4f|Virtuous Slippers|u|||||
4v4g|Virtuous Gown|u|||||
4v4u|Soulforge Warboots|u|||||
4v4w|Soulforge Greathelm|u|||||
4v51|Soulforge Crown|u|||||
4v52|Soulforge Fists|u|||||
4v53|Soulforge Treads|u|||||
4v54|Soulforge Embrace|u|||||
4v59|Soulforge Faceguard|u|||||
4v5a|Soulforge Handguards|u|||||
4v5b|Soulforge Sabatons|u|||||
4v5c|Soulforge Chestguards|u|||||
4v5r|Slippers of The Five Thunders|u|||||
4v5x|Crown of The Five Thunders|u|||||
4v5y|Grasp of The Five Thunders|u|||||
4v5z|Greaves of The Five Thunders|u|||||
4v60|Tunic of The Five Thunders|u|||||
4v65|Face of The Five Thunders|u|||||
4v66|Fists of The Five Thunders|u|||||
4v67|Treads of The Five Thunders|u|||||
4v68|Chain of The Five Thunders|u|||||
4v7r|Legionnaire's Chain Legplates|p||h|227085||p^8^h^f
4v7s|Champion's Chain Greathelm|p||h|227086||p^10^h^f
4v7t|Blood Guard's Chain Grips|p||h|227087||p^7^h^f
4v7u|Blood Guard's Chain Sabatons|p||h|227088||p^7^h^f
4v7v|Legionnaire's Chain Armor|p||h|227089||p^8^h^f
4v7x|Knight-Captain's Chain Legplates|p||a|227079||p^8^a^f
4v7y|Lieutenant Commander's Chain Greathelm|p||a|227080||p^10^a^f
4v7z|Knight-Lieutenant's Chain Grips|p||a|227081||p^7^a^f
4v80|Knight-Lieutenant's Chain Sabatons|p||a|227082||p^7^a^f
4v81|Knight-Captain's Chain Armor|p||a|227083||p^8^a^f
4v96|Champion's Satin Epaulets|p||h|227136||p^10^h^f
4v97|Legionnaire's Satin Leggings|p||h|||p^8^h^f
4v99|Blood Guard's Satin Grips|p||h|227139||p^7^h^f
4v9b|Legionnaire's Satin Robe|p||h|227141||p^8^h^f
4v9c|Lieutenant Commander's Satin Epaulets|p||a|227130||p^10^a^f
4v9f|Knight-Lieutenant's Satin Grips|p||a|227133||p^7^a^f
4v9h|Knight-Captain's Satin Robe|p||a|227135||p^8^a^f
4v9o|Lieutenant Commander's Lamellar Pauldrons|p||a|||p^10^a^f
4v9p|Lieutenant Commander's Lamellar Helmet|p||a|||p^10^a^f
4v9q|Knight-Captain's Lamellar Legguards|p||a|||p^8^a^f
4v9r|Knight-Captain's Lamellar Chestplate|p||a|||p^8^a^f
4v9s|Knight-Lieutenant's Lamellar Gloves|p||a|||p^7^a^f
4v9t|Knight-Lieutenant's Lamellar Greaves|p||a|||p^7^a^f
4va0|Champion's Mail Spaulders|p||h|||p^10^h^f
4va3|Blood Guard's Mail Gauntlets|p||h|||p^7^h^f
4va4|Blood Guard's Mail Sabatons|p||h|||p^7^h^f
4va5|Legionnaire's Mail Breastplate|p||h|||p^8^h^f
4va6|Champion's Mail Epaulets|p||h|||p^10^h^f
4va7|Legionnaire's Mail Pants|p||h|||p^8^h^f
4va8|Champion's Mail Skullcap|p||h|||p^10^h^f
4va9|Blood Guard's Mail Gloves|p||h|||p^7^h^f
4vaa|Blood Guard's Mail Boots|p||h|||p^7^h^f
4vab|Legionnaire's Mail Chestguard|p||h|||p^8^h^f
4vap|Legionnaire's Dragonhide Pants|p||h|||p^8^h^f
4var|Blood Guard's Dragonhide Gloves|p||h|||p^7^h^f
4vat|Legionnaire's Dragonhide Armor|p||h|227195||p^8^h^f
4vau|Lieutenant Commander's Dragonhide Spaulders|p||a|||p^10^a^f
4vav|Knight-Captain's Dragonhide Pants|p||a|||p^8^a^f
4vaw|Lieutenant Commander's Dragonhide Helm|p||a|||p^10^a^f
4vay|Knight-Lieutenant's Dragonhide Boots|p||a|||p^7^a^f
4vaz|Knight-Captain's Dragonhide Armor|p||a|227189||p^8^a^f
4vb1|Knight-Lieutenant's Dragonhide Greaves|p||a|227203||p^7^a^f
4vb2|Knight-Lieutenant's Dragonhide Gauntlets|p||a|||p^7^a^f
4vb3|Lieutenant Commander's Dragonhide Headdress|p||a|227205||p^10^a^f
4vb4|Knight-Captain's Dragonhide Legguards|p||a|227206||p^8^a^f
4vb5|Lieutenant Commander's Dragonhide Pauldrons|p||a|227207||p^10^a^f
4vb6|Legionnaire's Dragonhide Tunic|p||h|||p^8^h^f
4vb7|Blood Guard's Dragonhide Greaves|p||h|227197||p^7^h^f
4vb9|Champion's Dragonhide Headdress|p||h|227199||p^10^h^f
4vba|Legionnaire's Dragonhide Legguards|p||h|227200||p^8^h^f
4vbb|Champion's Dragonhide Pauldrons|p||h|227201||p^10^h^f
4vrv|Dire Warbear Harness|u|||||
4vrw|Dire Warbear Woolies|u|||||
4vrx|Ferocity of the Timbermaw|u|||||
4vrz|Dense Timbermaw Belt|u|||||
4vs0|Rugged Mantle of the Timbermaw|u|||||
4vs6|Radiant Girdle of the Dawn|u|||||
4vs7|Fine Dawn Treaders|u|||||
4vs9|Radiant Gloves of the Dawn|u|||||
4vsa|Glowing Mantle of the Dawn|u|||||
4vtf|Shimmering Dawnbringer Shoulders|u|||||
4vti|Incandescent Mooncloth Boots|u|||||
4vu8|Argent Elite Shoulders|u|||||
4w2m|Knowledge of the Timbermaw|u|||||
4yo5|Field Marshal's Chain Pauldrons|p||a|231565||p^13^a^f
4yo6|Marshal's Chain Legplates|p||a|231567||p^12^a^f
4yo9|Marshal's Chain Sabatons|p||a|||p^12^a^f
4yoa|Field Marshal's Chain Greathelm|p||a|231568||p^13^a^f
4yob|Field Marshal's Chain Armor|p||a|231566||p^13^a^f
4yod|Warlord's Chain Pauldrons|p||h|231557||p^13^h^f
4yoe|Warlord's Chain Armor|p||h|231563||p^13^h^f
4yof|General's Chain Legplates|p||h|231558||p^12^h^f
4yog|Warlord's Chain Greathelm|p||h|231562||p^13^h^f
4yoh|General's Chain Grips|p||h|||p^12^h^f
4yoi|General's Chain Greaves|p||h|231579||p^12^h^f
4yoj|Warlord's Chain Helm|p||h|||p^13^h^f
4yol|Warlord's Chain Hauberk|p||h|231581||p^13^h^f
4yon|General's Chain Vices|p||h|231578||p^12^h^f
4yoo|Field Marshal's Chain Shoulders|p||a|||p^13^a^f
4yoq|Marshal's Chain Vices|p||a|231575||p^12^a^f
4yor|Marshal's Chain Greaves|p||a|231570||p^12^a^f
4yot|Field Marshal's Chain Hauberk|p||a|231573||p^13^a^f
4ypb|General's Silk Gauntlets|p||h|231608||p^12^h^f
4ypc|General's Silk Handwraps|p||h|231609||p^12^h^f
4ypk|Marshal's Silk Gauntlets|p||a|231599||p^12^a^f
4ypl|Marshal's Silk Handwraps|p||a|231600||p^12^a^f
4ypm|General's Satin Treads|p||h|231620||p^12^h^f
4ypn|Warlord's Satin Epaulets|p||h|231621||p^13^h^f
4ypp|General's Satin Grips|p||h|231617||p^12^h^f
4ypr|Warlord's Satin Crown|p||h|231616||p^13^h^f
4yps|Field Marshal's Satin Crown|p||a|231615||p^13^a^f
4ypt|Marshal's Satin Grips|p||a|231613||p^12^a^f
4ypu|Field Marshal's Satin Robe|p||a|||p^13^a^f
4ypv|Marshal's Satin Leggings|p||a|||p^12^a^f
4ypw|Marshal's Satin Treads|p||a|231610||p^12^a^f
4ypx|Field Marshal's Satin Epaulets|p||a|231611||p^13^a^f
4ypy|Field Marshal's Satin Hood|p||a|231635||p^13^a^f
4ypz|Marshal's Satin Handwraps|p||a|231633||p^12^a^f
4yq0|Field Marshal's Satin Tunic|p||a|231632||p^13^a^f
4yq2|Marshal's Satin Legguards|p||a|231634||p^12^a^f
4yq3|Marshal's Satin Walkers|p||a|231630||p^12^a^f
4yq6|General's Satin Walkers|p||h|231627||p^12^h^f
4yq8|Warlord's Satin Tunic|p||h|231624||p^13^h^f
4yq9|General's Satin Handwraps|p||h|231623||p^12^h^f
4yqa|General's Satin Legguards|p||h|231626||p^12^h^f
4yqb|Warlord's Satin Hood|p||h|231622||p^13^h^f
4yqf|Marshal's Lamellar Legguards|p||a|||p^12^a^f
4yqg|Field Marshal's Lamellar Helmet|p||a|||p^13^a^f
4yqm|Marshal's Lamellar Greaves|p||a|||p^12^a^f
4yqn|Marshal's Lamellar Leggings|p||a|||p^12^a^f
4yqo|Field Marshal's Lamellar Headguard|p||a|||p^13^a^f
4yqp|Field Marshal's Lamellar Breastplate|p||a|||p^13^a^f
4yqq|Marshal's Lamellar Gauntlets|p||a|||p^12^a^f
4yqr|Field Marshal's Lamellar Shoulders|p||a|||p^13^a^f
4yqs|Marshal's Lamellar Sabatons|p||a|||p^12^a^f
4yqt|Warlord's Mail Hauberk|p||h|||p^13^h^f
4yqu|Warlord's Mail Pauldrons|p||h|||p^13^h^f
4yqv|General's Mail Vices|p||h|||p^12^h^f
4yqw|General's Mail Greaves|p||h|||p^12^h^f
4yqx|Warlord's Mail Headguard|p||h|||p^13^h^f
4yqy|General's Mail Legguards|p||h|||p^12^h^f
4yr1|General's Mail Sabatons|p||h|||p^12^h^f
4yr2|Warlord's Mail Breastplate|p||h|||p^13^h^f
4yr5|Warlord's Mail Epaulets|p||h|||p^13^h^f
4yr6|General's Mail Gloves|p||h|||p^12^h^f
4yr8|Warlord's Mail Chestguard|p||h|||p^13^h^f
4yr9|Warlord's Mail Skullcap|p||h|||p^13^h^f
4yra|General's Mail Pants|p||h|||p^12^h^f
4yrb|General's Dragonhide Greaves|p||h|231704||p^12^h^f
4yrc|Warlord's Dragonhide Pauldrons|p||h|231705||p^13^h^f
4yrd|General's Dragonhide Legguards|p||h|||p^12^h^f
4yre|Warlord's Dragonhide Tunic|p||h|231702||p^13^h^f
4yrf|Warlord's Dragonhide Headdress|p||h|231701||p^13^h^f
4yrg|General's Dragonhide Gauntlets|p||h|||p^12^h^f
4yri|Warlord's Dragonhide Helm|p||h|231695||p^13^h^f
4yrj|Warlord's Dragonhide Armor|p||h|231696||p^13^h^f
4yrk|General's Dragonhide Pants|p||h|231697||p^12^h^f
4yrl|Warlord's Dragonhide Spaulders|p||h|||p^13^h^f
4yrn|General's Dragonhide Treads|p||h|231692||p^12^h^f
4yro|Warlord's Dragonhide Shoulders|p||h|231693||p^13^h^f
4yrq|Warlord's Dragonhide Chestpiece|p||h|231690||p^13^h^f
4yrr|Warlord's Dragonhide Headguard|p||h|231689||p^13^h^f
4yrs|General's Dragonhide Grips|p||h|231694||p^12^h^f
4yrt|Field Marshal's Dragonhide Headguard|p||a|231687||p^13^a^f
4yru|Field Marshal's Dragonhide Chestpiece|p||a|231686||p^13^a^f
4yrv|Marshal's Dragonhide Leggings|p||a|||p^12^a^f
4yrw|Marshal's Dragonhide Treads|p||a|231683||p^12^a^f
4yrx|Field Marshal's Dragonhide Shoulders|p||a|231684||p^13^a^f
4yry|Marshal's Dragonhide Grips|p||a|231688||p^12^a^f
4yrz|Field Marshal's Dragonhide Helm|p||a|231678||p^13^a^f
4ys0|Field Marshal's Dragonhide Armor|p||a|231679||p^13^a^f
4ys1|Marshal's Dragonhide Pants|p||a|231680||p^12^a^f
4ys4|Marshal's Dragonhide Gloves|p||a|||p^12^a^f
4ys5|Field Marshal's Dragonhide Headdress|p||a|231675||p^13^a^f
4ys6|Field Marshal's Dragonhide Tunic|p||a|231674||p^13^a^f
4ys8|Marshal's Dragonhide Greaves|p||a|231671||p^12^a^f
4ys9|Field Marshal's Dragonhide Pauldrons|p||a|231672||p^13^a^f
50z8|High Warlord's Pig Poker|p||h|234570||p^14^h^f
50zb|High Warlord's Battle Mace|p||h|234576||p^14^h^f
50zu|Grand Marshal's Polearm|p||a|234548||p^14^a^f
5100|Grand Marshal's Warhammer|p||a|234551||p^14^a^f
51ox|Grand Marshal's Barricade|p||a|235474||p^14^a^f
51oy|High Warlord's Barricade|p||h|235473||p^14^h^f
51p0|High Warlord's Hacker|p||h|235481||p^14^h^f
51p1|High Warlord's Bonecracker|p||h|235480||p^14^h^f
51p2|High Warlord's Shiv|p||h|235479||p^14^h^f
51p3|Grand Marshal's Shiv|p||a|235478||p^14^a^f
51p4|Grand Marshal's Bonecracker|p||a|235477||p^14^a^f
51p5|Grand Marshal's Hacker|p||a|235476||p^14^a^f
52on|[TMP] Furbolg Ritual Stave|u|n||||
52oo|[TMP] Satyrbane|u|n||||
54t4|Lightbreaker Wrists|u|||||
54t5|Lightbreaker Belt|u|||||
54t6|Lightbreaker Grips|u|||||
54t7|Lightbreaker Greaves|u|||||
54t8|Lightbreaker Shoulders|u|||||
54t9|Lightbreaker Greathelm|u|||||
54ta|Lightbreaker Tassets|u|||||
54tb|Lightbreaker Cuirass|u|||||
54tc|Lightbreaker Bracers|u|||||
54td|Lightbreaker Waistguard|u|||||
54te|Lightbreaker Gauntlets|u|||||
54tf|Lightbreaker Sabatons|u|||||
54tg|Lightbreaker Pauldrons|u|||||
54th|Lightbreaker Helmet|u|||||
54ti|Lightbreaker Legplates|u|||||
54tj|Lightbreaker Breastplate|u|||||
54tl|Dawnstalker Breastplate|u|||||
54tm|Dawnstalker Greaves|u|||||
54tn|Dawnstalker Gauntlets|u|||||
54to|Dawnstalker Visor|u|||||
54tp|Dawnstalker Leggings|u|||||
54tq|Dawnstalker Pauldrons|u|||||
54tr|Dawnstalker Belt|u|||||
54ts|Dawnstalker Vambraces|u|||||
54tt|Dawnstalker Boots|u|||||
54tu|Dawnstalker Girdle|u|||||
54tv|Dawnstalker Handguards|u|||||
54tw|Dawnstalker Headpiece|u|||||
54tx|Dawnstalker Legguards|u|||||
54ty|Dawnstalker Spaulders|u|||||
54tz|Dawnstalker Tunic|u|||||
54u0|Dawnstalker Wristguards|u|||||
54u3|Duskwraith Wristguards|u|||||
54u4|Duskwraith Chestguard|u|||||
54u5|Duskwraith Grips|u|||||
54u6|Duskwraith Mask|u|||||
54u7|Duskwraith Leggings|u|||||
54u8|Duskwraith Mantle|u|||||
54u9|Duskwraith Treads|u|||||
54ua|Duskwraith Belt|u|||||
54ub|Duskwraith Bracers|u|||||
54uc|Duskwraith Waistguard|u|||||
54ud|Duskwraith Gauntlets|u|||||
54ue|Duskwraith Sabatons|u|||||
54uf|Duskwraith Pauldrons|u|||||
54ug|Duskwraith Helmet|u|||||
54uh|Duskwraith Legplates|u|||||
54ui|Duskwraith Breastplate|u|||||
54ul|Garb of Revelation|u|||||
54us|Boots of Revelation|u|||||
54uu|Hands of Revelation|u|||||
54uv|Crown of Revelation|u|||||
54ux|Pants of Revelation|u|||||
54v1|Mantle of Revelation|u|||||
54v2|Girdle of Revelation|u|||||
54v3|Wrists of Revelation|u|||||
54v4|Gloves of Revelation|u|||||
54v5|Circlet of Revelation|u|||||
54v6|Shoulderpads of Revelation|u|||||
54v7|Leggings of Revelation|u|||||
54v8|Bindings of Revelation|u|||||
54v9|Sandals of Revelation|u|||||
54va|Belt of Revelation|u|||||
54vb|Robe of Revelation|u|||||
5578|Inquisition Legguards|u|||||
5579|Inquisition Spaulders|u|||||
557a|Inquisition Boots|u|||||
557b|Inquisition Vambraces|u|||||
557c|Inquisition Belt|u|||||
557d|Inquisition Shoulderplates|u|||||
557e|Inquisition Leggings|u|||||
557f|Inquisition Helmet|u|||||
557g|Inquisition Gloves|u|||||
557h|Inquisition Greaves|u|||||
557i|Inquisition Breastplate|u|||||
557j|Inquisition Bracers|u|||||
557k|Inquisition Waistguard|u|||||
557l|Inquisition Pauldrons|u|||||
557m|Inquisition Legplates|u|||||
557n|Inquisition Crown|u|||||
557o|Inquisition Gauntlets|u|||||
557p|Inquisition Sabatons|u|||||
557q|Inquisition Chestguard|u|||||
557r|Inquisition Tunic|u|||||
557s|Inquisition Headpiece|u|||||
557t|Inquisition Handguards|u|||||
557u|Inquisition Wristguards|u|||||
557v|Inquisition Girdle|u|||||
557w|Fireleaf Wristwraps|u|||||
557x|Fireleaf Waistguard|u|||||
557y|Fireleaf Mantle|u|||||
557z|Fireleaf Pants|u|||||
5580|Fireleaf Hood|u|||||
5581|Fireleaf Mitts|u|||||
5582|Fireleaf Boots|u|||||
5583|Fireleaf Garb|u|||||
5584|Fireleaf Bindings|u|||||
5585|Fireleaf Belt|u|||||
5586|Fireleaf Shoulderpads|u|||||
5587|Fireleaf Leggings|u|||||
5588|Fireleaf Circlet|u|||||
5589|Fireleaf Gloves|u|||||
558a|Fireleaf Sandals|u|||||
558b|Fireleaf Robe|u|||||
558c|Waywatcher Wraps|u|||||
558d|Waywatcher Sash|u|||||
558e|Waywatcher Shoulderpads|u|||||
558f|Waywatcher Trousers|u|||||
558g|Waywatcher Cowl|u|||||
558h|Waywatcher Grips|u|||||
558i|Waywatcher Stompers|u|||||
558j|Waywatcher Vest|u|||||
558k|Waywatcher Bindings|u|||||
558l|Waywatcher Cord|u|||||
558m|Waywatcher Mantle|u|||||
558n|Waywatcher Kilt|u|||||
558o|Waywatcher Hood|u|||||
558p|Waywatcher Mitts|u|||||
558q|Waywatcher Sandals|u|||||
558r|Waywatcher Leathers|u|||||
558s|Waywatcher Bracers|u|||||
558t|Waywatcher Waistguard|u|||||
558u|Waywatcher Pauldrons|u|||||
558v|Waywatcher Leggings|u|||||
558w|Waywatcher Headdress|u|||||
558x|Waywatcher Gauntlets|u|||||
558y|Waywatcher Sabatons|u|||||
558z|Waywatcher Armor|u|||||
5590|Waywatcher Wristguards|u|||||
5591|Waywatcher Girdle|u|||||
5592|Waywatcher Spaulders|u|||||
5593|Waywatcher Legguards|u|||||
5594|Waywatcher Headpiece|u|||||
5595|Waywatcher Handguards|u|||||
5596|Waywatcher Boots|u|||||
5597|Waywatcher Tunic|u|||||
5598|Soulcrusher Tunic|u|||||
5599|Soulcrusher Boots|u|||||
559b|Soulcrusher Handguards|u|||||
559c|Soulcrusher Headpiece|u|||||
559d|Soulcrusher Legguards|u|||||
559e|Soulcrusher Spaulders|u|||||
559f|Soulcrusher Girdle|u|||||
559g|Soulcrusher Wristguards|u|||||
559h|Soulcrusher Chestguard|u|||||
559i|Soulcrusher Sabatons|u|||||
559j|Soulcrusher Gloves|u|||||
559k|Soulcrusher Faceguard|u|||||
559l|Soulcrusher Legplates|u|||||
559m|Soulcrusher Pauldrons|u|||||
559n|Soulcrusher Waistguard|u|||||
559o|Soulcrusher Bracers|u|||||
559p|Soulcrusher Embrace|u|||||
559q|Soulcrusher Greaves|u|||||
55a2|Soulcrusher Mitts|u|||||
55a3|Soulcrusher Crown|u|||||
55a4|Soulcrusher Kilt|u|||||
55a5|Soulcrusher Mantle|u|||||
55a6|Soulcrusher Cord|u|||||
55a7|Soulcrusher Bindings|u|||||
55a8|Soulcrusher Armor|u|||||
55a9|Soulcrusher Treads|u|||||
55aa|Soulcrusher Grips|u|||||
55ab|Soulcrusher Helmet|u|||||
55ae|Soulcrusher Leggings|u|||||
55af|Soulcrusher Epaulets|u|||||
55ag|Soulcrusher Belt|u|||||
55ah|Soulcrusher Vambraces|u|||||
55ai|Heretic Robe|u|||||
55aj|Heretic Sandals|u|||||
55ak|Heretic Gloves|u|||||
55al|Heretic Cowl|u|||||
55am|Heretic Leggings|u|||||
55an|Heretic Shoulderpads|u|||||
55ao|Heretic Belt|u|||||
55ap|Heretic Bindings|u|||||
55aq|Heretic Garb|u|||||
55ar|Heretic Handguards|u|||||
55as|Heretic Hood|u|||||
55at|Heretic Pants|u|||||
55au|Heretic Mantle|u|||||
55av|Heretic Waistguard|u|||||
55aw|Heretic Wristguards|u|||||
55ax|Heretic Boots|u|||||
59uv|Inquisition Grips|u|||||
59uw|Inquisition Armbraces|u|||||
59ux|Inquisition Stompers|u|||||
59uy|Inquisition Plate Pants|u|||||
59uz|Inquisition Cord|u|||||
59v0|Inquisition Cuirass|u|||||
59v1|Inquisition Epaulets|u|||||
59v2|Inquisition Faceguard|u|||||
59xw|Skullthumper|u|n||||
59xx|Driftwood Smasher|u|n||||
5a0p|Salvaged Wooden Tower Shield|u|n||||
5b71|Novice's Practice Wand|c|sn||||c^Enchanting^1^1245321^f
5bd1|Northshire Hammer|q|sn||||q^91777^Rare Books^^^s
5bd2|Militia Sword|q|sn||||q^91777^Rare Books^^^s
5bd3|Militia Shortblade|q|snU||||q^91777^Rare Books^^^s
5bd4|Apprentice's Spellstaff|q|sn||||q^91777^Rare Books^^^s
5c8o|Twisted Nether Wand|c|n||||c^Enchanting^185^1248461^f
5cb4|Lesser Eternal Wand|c|n||||c^Enchanting^245^1248505^f
5cb6|Dreambough Wand|c|n||||c^Enchanting^215^1248509^f
5cb9|Greater Eternal Wand|c|n||||c^Enchanting^275^1248515^f
5cfd|Brilliant Wand|c|n||||c^Enchanting^275^1248650^f
5cfk|Glimmering Staff|c|n||||c^Enchanting^140^1248703^f
5cfl|Soulstaff|c|n||||c^Enchanting^140^1248739^f
5cfm|Orb of Mystic Insight|c|n||||c^Enchanting^140^1248745^f
5cfn|Orb of Souls|c|n||||c^Enchanting^140^1248748^f
5ch9|Radiant Staff|c|n||||c^Enchanting^220^1249061^f
5cha|Dreamstaff|c|n||||c^Enchanting^220^1249064^f
5chb|Truesilver Conduit|c|n||||c^Enchanting^220^1249069^f
5chc|Twisting Essence Jar|c|n||||c^Enchanting^220^1249070^f
5chp|Frozen Heart of the Mountain|c|n||||c^Enchanting^285^1249107^f
5d9u|Glowing Copper Boots|c|n||||c^Blacksmithing^35^1252231^f
5d9y|Sterling Silver Shoulders|c|n||||c^Blacksmithing^110^1252235^f
5da0|Veteran's Chain Shirt|c|n||||c^Blacksmithing^85^1252237^f
5da1|Guard's Chain Shirt|c|n||||c^Blacksmithing^80^1252238^f
5da2|Protector's Chain Shirt|c|n||||c^Blacksmithing^85^1252239^f
5da3|Acolyte's Chain Shirt|c|n||||c^Blacksmithing^85^1252240^f
5da4|Crusader's Chain Shirt|c|n||||c^Blacksmithing^85^1252241^f
5da5|Veteran's Chain Leggings|c|n||||c^Blacksmithing^100^1252242^f
5da6|Guard's Chain Leggings|c|n||||c^Blacksmithing^100^1252243^f
5da7|Protector's Chain Leggings|c|n||||c^Blacksmithing^100^1252244^f
5da8|Acolyte's Chain Leggings|c|n||||c^Blacksmithing^100^1252245^f
5da9|Crusader's Chain Leggings|c|n||||c^Blacksmithing^100^1252246^f
5daa|Veteran's Chain Helm|c|n||||c^Blacksmithing^130^1252247^f
5dab|Guard's Chain Helm|c|n||||c^Blacksmithing^130^1252248^f
5dac|Protector's Chain Helm|c|n||||c^Blacksmithing^130^1252249^f
5dad|Acolyte's Chain Helm|c|n||||c^Blacksmithing^130^1252250^f
5dae|Crusader's Chain Helm|c|n||||c^Blacksmithing^130^1252251^f
5daf|Veteran's Boots|c|n||||c^Blacksmithing^85^1252252^f
5dag|Guard's Boots|c|n||||c^Blacksmithing^85^1252253^f
5dah|Protector's Boots|c|n||||c^Blacksmithing^85^1252254^f
5dai|Acolyte's Boots|c|n||||c^Blacksmithing^85^1252255^f
5daj|Crusader's Boots|c|n||||c^Blacksmithing^85^1252256^f
5dak|Veteran's Gloves|c|n||||c^Blacksmithing^80^1252257^f
5dal|Guard's Gloves|c|n||||c^Blacksmithing^80^1252258^f
5dam|Protector's Gloves|c|n||||c^Blacksmithing^80^1252259^f
5dan|Acolyte's Gloves|c|n||||c^Blacksmithing^80^1252260^f
5dao|Crusader's Gloves|c|n||||c^Blacksmithing^80^1252261^f
5dap|Veteran's Chain Belt|c|n||||c^Blacksmithing^45^1252262^f
5daq|Guard's Chain Belt|c|n||||c^Blacksmithing^45^1252263^f
5dar|Protector's Chain Belt|c|n||||c^Blacksmithing^45^1252264^f
5das|Acolyte's Chain Belt|c|n||||c^Blacksmithing^45^1252265^f
5dat|Crusader's Chain Belt|c|n||||c^Blacksmithing^45^1252266^f
5dau|Veteran's Silvered Chain Shirt|c|n||||c^Blacksmithing^110^1252267^f
5dav|Guard's Silvered Chain Shirt|c|n||||c^Blacksmithing^110^1252268^f
5daw|Protector's Silvered Chain Shirt|c|n||||c^Blacksmithing^110^1252269^f
5dax|Acolyte's Silvered Chain Shirt|c|n||||c^Blacksmithing^110^1252270^f
5day|Crusader's Silvered Chain Shirt|c|sn||||c^Blacksmithing^110^1252271^f
5daz|Veteran's Silvered Chain Leggings|c|n||||c^Blacksmithing^125^1252272^f
5db0|Guard's Silvered Chain Leggings|c|n||||c^Blacksmithing^125^1252273^f
5db1|Protector's Silvered Chain Leggings|c|n||||c^Blacksmithing^125^1252274^f
5db2|Acolyte's Silvered Chain Leggings|c|n||||c^Blacksmithing^125^1252275^f
5db3|Crusader's Silvered Chain Leggings|c|n||||c^Blacksmithing^125^1252276^f
5db4|Veteran's Silvered Chain Helm|c|n||||c^Blacksmithing^95^1252277^f
5db5|Guard's Silvered Chain Helm|c|n||||c^Blacksmithing^95^1252278^f
5db6|Protector's Silvered Chain Helm|c|n||||c^Blacksmithing^95^1252279^f
5db7|Acolyte's Silvered Chain Helm|c|n||||c^Blacksmithing^95^1252280^f
5db8|Crusader's Silvered Chain Helm|c|n||||c^Blacksmithing^95^1252281^f
5db9|Hard Gold Cuirass|c|n||||c^Blacksmithing^145^1252282^f
5dba|Hard Gold Boots|c|n||||c^Blacksmithing^150^1252283^f
5dbb|Hard Gold Bracers|c|n||||c^Blacksmithing^160^1252284^f
5dbc|Hard Gold Leggings|c|n||||c^Blacksmithing^165^1252285^f
5dbd|Hard Gold Coif|c|n||||c^Blacksmithing^170^1252286^f
5dbf|Hard Gold Pauldrons|c|n||||c^Blacksmithing^175^1252288^f
5dbg|Shining Mithril Breastplate|c|n||||c^Blacksmithing^195^1252289^f
5dbh|Shining Mithril Pauldrons|c|n||||c^Blacksmithing^195^1252290^f
5dbj|Shining Mithril Helm|c|n||||c^Blacksmithing^235^1252292^f
5dbk|Shining Mithril Pants|c|n||||c^Blacksmithing^220^1252293^f
5dbl|Shining Mithril Gauntlet|c|n||||c^Blacksmithing^220^1252294^f
5dbm|Officer's Boots|c|n||||c^Blacksmithing^200^1252295^f
5dbn|Sentinel's Boots|c|n||||c^Blacksmithing^200^1252296^f
5dbo|Warder's Boots|c|n||||c^Blacksmithing^200^1252297^f
5dbp|Prefect's Boots|c|n||||c^Blacksmithing^200^1252298^f
5dbq|Justicar's Boots|c|n||||c^Blacksmithing^200^1252299^f
5dbr|Officer's Gloves|c|n||||c^Blacksmithing^250^1252300^f
5dbs|Sentinel's Gloves|c|n||||c^Blacksmithing^250^1252301^f
5dbt|Warder's Gloves|c|n||||c^Blacksmithing^250^1252302^f
5dbu|Prefect's Gloves|c|n||||c^Blacksmithing^250^1252303^f
5dbv|Justicar's Gloves|c|n||||c^Blacksmithing^250^1252304^f
5dbw|Officer's Belt|c|n||||c^Blacksmithing^150^1252305^f
5dbx|Sentinel's Belt|c|n||||c^Blacksmithing^150^1252306^f
5dby|Warder's Belt|c|n||||c^Blacksmithing^150^1252307^f
5dbz|Prefect's Belt|c|n||||c^Blacksmithing^150^1252308^f
5dc0|Justicar's Belt|c|n||||c^Blacksmithing^150^1252309^f
5dc1|Officer's Sabatons|c|n||||c^Blacksmithing^240^1252310^f
5dc2|Sentinel's Sabatons|c|n||||c^Blacksmithing^240^1252311^f
5dc3|Warder's Sabatons|c|n||||c^Blacksmithing^240^1252312^f
5dc4|Prefect's Sabatons|c|n||||c^Blacksmithing^240^1252313^f
5dc5|Justicar's Sabatons|c|n||||c^Blacksmithing^240^1252314^f
5dc6|Officer's Gauntlet|c|n||||c^Blacksmithing^175^1252315^f
5dc7|Sentinel's Gauntlet|c|n||||c^Blacksmithing^175^1252316^f
5dc8|Warder's Gauntlet|c|n||||c^Blacksmithing^175^1252317^f
5dc9|Prefect's Gauntlet|c|n||||c^Blacksmithing^175^1252318^f
5dca|Justicar's Gauntlet|c|n||||c^Blacksmithing^175^1252319^f
5dcb|Officer's Waistguard|c|n||||c^Blacksmithing^250^1252320^f
5dcc|Sentinel's Waistguard|c|n||||c^Blacksmithing^250^1252321^f
5dcd|Warder's Waistguard|c|n||||c^Blacksmithing^250^1252322^f
5dce|Prefect's Waistguard|c|n||||c^Blacksmithing^270^1252323^f
5dcf|Justicar's Waistguard|c|n||||c^Blacksmithing^250^1252324^f
5dcg|Officer's Pauldrons|c|n||||c^Blacksmithing^210^1252325^f
5dch|Sentinel's Pauldrons|c|n||||c^Blacksmithing^210^1252326^f
5dci|Warder's Pauldrons|c|n||||c^Blacksmithing^210^1252327^f
5dcj|Prefect's Pauldrons|c|n||||c^Blacksmithing^210^1252328^f
5dck|Justicar's Pauldrons|c|n||||c^Blacksmithing^210^1252329^f
5dcl|Officer's Wristguards|c|n||||c^Blacksmithing^225^1252330^f
5dcm|Sentinel's Wristguards|c|n||||c^Blacksmithing^225^1252331^f
5dcn|Warder's Wristguards|c|n||||c^Blacksmithing^225^1252332^f
5dco|Prefect's Wristguards|c|n||||c^Blacksmithing^225^1252333^f
5dcp|Justicar's Wristguards|c|n||||c^Blacksmithing^225^1252334^f
5dcq|Blessed Plate Pauldrons|c|n||||c^Blacksmithing^240^1252335^f
5dcs|Blessed Plate Gauntlet|c|n||||c^Blacksmithing^245^1252337^f
5dct|Imperial Plate Gauntlets|c|n||||c^Blacksmithing^255^1252338^f
5dcu|Blessed Plate Bracers|c|n||||c^Blacksmithing^255^1252339^f
5dcv|Blessed Plate Leggings|c|n||||c^Blacksmithing^270^1252340^f
5dcx|Blessed Plate Helm|c|n||||c^Blacksmithing^275^1252342^f
5dcy|Blessed Plate Chest|c|n||||c^Blacksmithing^280^1252343^f
5dcz|Enriched Thorium Breastplate|c|n||||c^Blacksmithing^300^1252344^f
5dd0|Enriched Thorium Leggings|c|n||||c^Blacksmithing^300^1252345^f
5dd1|Enriched Thorium Helm|c|n||||c^Blacksmithing^300^1252346^f
5dd2|Champion's Legplates|c|n||||c^Blacksmithing^300^1252347^f
5dd3|Stalwart Helm|c|n||||c^Blacksmithing^300^1252348^f
5dd4|Martyr's Legplates|c|n||||c^Blacksmithing^300^1252349^f
5dd5|Breastplate of Salvation|c|n||||c^Blacksmithing^300^1252350^f
5dd6|Brass Knuckles|c|n||||c^Blacksmithing^80^1252351^f
5dd7|Bronze Dory|c|n||||c^Blacksmithing^95^1252352^f
5dd8|Iron Fists|c|n||||c^Blacksmithing^130^1252353^f
5dd9|Steel Spear|c|n||||c^Blacksmithing^160^1252354^f
5dda|Iron Morningstar|c|n||||c^Blacksmithing^165^1252355^f
5ddb|Mithril Shortsword|c|n||||c^Blacksmithing^180^1252356^f
5ddc|Mithril Warhammer|c|n||||c^Blacksmithing^190^1252357^f
5ddd|Mithril Claws|c|n||||c^Blacksmithing^195^1252358^f
5dde|Mithril Claymore|c|n||||c^Blacksmithing^195^1252359^f
5ddf|Mithril Stiletto|c|n||||c^Blacksmithing^210^1252360^f
5ddg|Charged Mithril Battleaxe|c|n||||c^Blacksmithing^215^1252361^f
5ddh|Thorium Greatmace|c|n||||c^Blacksmithing^250^1252362^f
5ddi|Thorium Cestus|c|n||||c^Blacksmithing^250^1252363^f
5ddj|Thorium Poleaxe|c|n||||c^Blacksmithing^260^1252364^f
5ddk|Bold Dirk|c|n||||c^Blacksmithing^270^1252365^f
5ddl|Stormcarver|c|n||||c^Blacksmithing^300^1252366^f
5ddm|Bagh Nakh|c|n||||c^Blacksmithing^300^1252367^f
5ddn|Legionite Glaive|c|n||||c^Blacksmithing^300^1252368^f
5ddo|Gemmed Copper Boots|c|sn||||c^Blacksmithing^35^1252229^f
5ddp|Strange Copper Boots|c|n||||c^Blacksmithing^35^1252230^f
5e1p|Edward's Knife|Q|sn||||q^92401^A Frightened Request^^^s
5e1q|Tabitha's Cuffs|Q|sn||||q^92401^A Frightened Request^^^s
5e31|Forsaken Greataxe|Q|sn||||q^92422^The Wrath of Rath'mael^^^s
5e32|Gnarled Necromancer's Staff|Q|sn||||q^92422^The Wrath of Rath'mael^^^s
5ee4|Sharpened Cirrusfly Stinger|w|sn||||m^251402^Cirrusfly Soldier^0^s
5eew|Yngwe's Axe|u|n||||
5eey|Violet Sash|Q|sn||||q^92489^Power Overwhelming^^^s
5eez|Gravewalker Boots|Q|sn||||q^96986^The Grave Knight^^^s
5ef1|Undead Knight's Bracers|Q|sn||||q^96986^The Grave Knight^^^s
5ers|Black Whelp Slippers|c|n||||c^Leatherworking^35^1255146^f
5ert|Dark Leather Boots|c|n||||c^Leatherworking^35^1255145^f
5eru|Murloc Scale Shoes|c|sn||||c^Leatherworking^35^1255144^f
5erv|Moonglow Boots|c|n||||c^Leatherworking^35^1255143^f
5erw|Brawler's Leather Belt|c|n||||c^Leatherworking^60^1255142^f
5erx|Trapper's Leather Belt|c|n||||c^Leatherworking^60^1255141^f
5ery|Defender's Leather Belt|c|n||||c^Leatherworking^60^1255140^f
5erz|Totemic Leather Belt|c|n||||c^Leatherworking^60^1255139^f
5es0|Stormrider's Leather Belt|c|n||||c^Leatherworking^60^1255138^f
5es1|Wisdom's Leather Belt|c|n||||c^Leatherworking^60^1255137^f
5es2|Defender's Leather Armor|c|n||||c^Leatherworking^80^1255134^f
5es3|Totemic Leather Armor|c|n||||c^Leatherworking^80^1255133^f
5es7|Brawler's Leather Boots|c|n||||c^Leatherworking^85^1255121^f
5es8|Trapper's Leather Boots|c|n||||c^Leatherworking^85^1255120^f
5es9|Defender's Leather Boots|c|n||||c^Leatherworking^85^1255119^f
5esa|Totemic Leather Boots|c|n||||c^Leatherworking^85^1255118^f
5esb|Stormrider's Leather Boots|c|n||||c^Leatherworking^85^1255117^f
5esc|Wisdom's Leather Boots|c|n||||c^Leatherworking^85^1255116^f
5esd|Defender's Leather Pants|c|n||||c^Leatherworking^105^1255113^f
5ese|Totemic Leather Pants|c|n||||c^Leatherworking^105^1255112^f
5esf|Defender's Leather Hood|c|sn||||c^Leatherworking^100^1255107^f
5esg|Totemic Leather Hood|c|n||||c^Leatherworking^100^1255106^f
5esh|Hillman's Leather Boots|c|n||||c^Leatherworking^110^1255103^f
5esi|Defender's Leather Tunic|c|n||||c^Leatherworking^110^1255100^f
5esj|Totemic Leather Tunic|c|n||||c^Leatherworking^110^1255099^f
5esn|Defender's Leather Helm|c|n||||c^Leatherworking^130^1255091^f
5eso|Totemic Leather Helm|c|n||||c^Leatherworking^130^1255090^f
5esp|Defender's Leather Kilt|c|n||||c^Leatherworking^125^1255085^f
5esq|Totemic Leather Leggings|c|n||||c^Leatherworking^125^1255084^f
5esr|Prowler's Leather Belt|c|n||||c^Leatherworking^150^1255081^f
5ess|Warden's Leather Belt|c|n||||c^Leatherworking^150^1255078^f
5est|Skirmisher's Leather Belt|c|n||||c^Leatherworking^150^1255077^f
5esx|Prowler's Leather Shoes|c|n||||c^Leatherworking^200^1255064^f
5esy|Warden's Leather Shoes|c|n||||c^Leatherworking^200^1255062^f
5et0|Prowler's Leather Boots|c|n||||c^Leatherworking^235^1255047^f
5et1|Skulker's Leather Boots|c|n||||c^Leatherworking^235^1255046^f
5et2|Warden's Leather Boots|c|n||||c^Leatherworking^235^1255045^f
5et3|Skycaller's Leather Boots|c|n||||c^Leatherworking^235^1255044^f
5et4|Mender's Leather Boots|c|n||||c^Leatherworking^235^1255043^f
5et5|Prowler's Leather Waistguard|c|n||||c^Leatherworking^250^1255035^f
5et6|Skulker's Leather Waistguard|c|n||||c^Leatherworking^250^1255034^f
5et7|Warden's Leather Waistguard|c|n||||c^Leatherworking^250^1255033^f
5et8|Skycaller's Leather Waistguard|c|n||||c^Leatherworking^250^1255032^f
5et9|Mender's Leather Waistguard|c|n||||c^Leatherworking^250^1255031^f
5eta|Blue Suede Pants|c|n||||c^Leatherworking^255^1255029^f
5etb|Wicked Leather Boots|c|n||||c^Leatherworking^260^1255028^f
5etc|Blue Suede Armor|c|n||||c^Leatherworking^265^1255024^f
5ete|Blue Suede Hat|c|n||||c^Leatherworking^280^1255017^f
5etf|Dawn Armor|c|n||||c^Leatherworking^300^1255015^f
5etg|Timbermaw Tunic|c|n||||c^Leatherworking^300^1255014^f
5eth|Warbear Helm|c|n||||c^Leatherworking^300^1255013^f
5eti|Ironfeather Leggings|c|n||||c^Leatherworking^300^1255012^f
5etm|Brawler's Leather Armor|c|n||||c^Leatherworking^80^1255136^f
5etn|Trapper's Leather Armor|c|n||||c^Leatherworking^80^1255135^f
5eto|Stormrider's Leather Armor|c|n||||c^Leatherworking^80^1255132^f
5etp|Wisdom's Leather Armor|c|n||||c^Leatherworking^80^1255131^f
5etq|Brawler's Leather Gloves|c|n||||c^Leatherworking^75^1255130^f
5etr|Trapper's Leather Gloves|c|n||||c^Leatherworking^75^1255129^f
5ets|Defender's Leather Gloves|c|n||||c^Leatherworking^75^1255128^f
5ett|Totemic Leather Gloves|c|n||||c^Leatherworking^75^1255127^f
5etu|Stormrider's Leather Gloves|c|n||||c^Leatherworking^75^1255126^f
5etv|Wisdom's Leather Gloves|c|n||||c^Leatherworking^75^1255125^f
5etw|Brawler's Leather Pants|c|n||||c^Leatherworking^105^1255115^f
5etx|Trapper's Leather Pants|c|n||||c^Leatherworking^105^1255114^f
5ety|Stormrider's Leather Pants|c|n||||c^Leatherworking^105^1255111^f
5etz|Wisdom's Leather Pants|c|n||||c^Leatherworking^105^1255110^f
5eu0|Brawler's Leather Hood|c|n||||c^Leatherworking^100^1255109^f
5eu1|Trapper's Leather Hood|c|n||||c^Leatherworking^100^1255108^f
5eu3|Wisdom's Leather Hood|c|n||||c^Leatherworking^100^1255104^f
5eu4|Brawler's Leather Tunic|c|sn||||c^Leatherworking^110^1255102^f
5eu5|Trapper's Leather Tunic|c|n||||c^Leatherworking^110^1255101^f
5eu6|Stormrider's Leather Tunic|c|n||||c^Leatherworking^110^1255098^f
5eu7|Wisdom's Leather Tunic|c|n||||c^Leatherworking^110^1255097^f
5eu8|Brawler's Leather Helm|c|n||||c^Leatherworking^130^1255093^f
5eu9|Trapper's Leather Helm|cdw|sn||||d^48^Old Serra'kis^100^0^s~m^4830^Old Serra'kis^0^s
5eub|Wisdom's Leather Helm|cdw|sn||||d^189^Bloodmage Thalnos^16.67^0^s~m^4543^Bloodmage Thalnos^0^s
5euc|Brawler's Leather Legguards|c|n||||c^Leatherworking^125^1255087^f
5eud|Trapper's Leather Legguards|c|n||||c^Leatherworking^125^1255086^f
5euf|Wisdom's Leather Leggings|c|n||||c^Leatherworking^125^1255082^f
5eug|Skulker's Leather Belt|c|n||||c^Leatherworking^150^1255080^f
5euh|Stalker's Leather Belt|c|sn||||c^Leatherworking^150^1255079^f
5eui|Skycaller's Leather Belt|c|n||||c^Leatherworking^150^1255076^f
5euj|Mender's Leather Belt|c|n||||c^Leatherworking^150^1255075^f
5euk|Prowler's Leather Gloves|c|n||||c^Leatherworking^175^1255071^f
5eul|Skulker's Leather Gloves|c|n||||c^Leatherworking^175^1255070^f
5eum|Stalker's Leather Gloves|c|n||||c^Leatherworking^175^1255069^f
5eun|Warden's Leather Gloves|c|n||||c^Leatherworking^175^1255068^f
5eup|Skycaller's Leather Gloves|c|n||||c^Leatherworking^175^1255066^f
5euq|Mender's Leather Gloves|c|n||||c^Leatherworking^175^1255065^f
5eur|Skulker's Leather Shoes|c|n||||c^Leatherworking^200^1255063^f
5eus|Skycaller's Leather Shoes|c|n||||c^Leatherworking^200^1255061^f
5eut|Mender's Leather Shoes|c|n||||c^Leatherworking^200^1255060^f
5euu|Prowler's Leather Shoulders|c|n||||c^Leatherworking^210^1255059^f
5euv|Skulker's Leather Shoulder|c|n||||c^Leatherworking^210^1255058^f
5euw|Warden's Leather Shoulders|c|n||||c^Leatherworking^210^1255057^f
5eux|Skycaller's Leather Shoulders|c|n||||c^Leatherworking^210^1255056^f
5euy|Mender's Leather Shoulders|c|n||||c^Leatherworking^210^1255055^f
5euz|Prowler's Leather Bracers|c|n||||c^Leatherworking^225^1255054^f
5ev0|Skulker's Leather Bracers|c|n||||c^Leatherworking^225^1255053^f
5ev1|Warden's Leather Bracers|c|n||||c^Leatherworking^225^1255052^f
5ev2|Skycaller's Leather Bracers|c|n||||c^Leatherworking^225^1255051^f
5ev3|Mender's Leather Bracers|c|n||||c^Leatherworking^225^1255050^f
5ev4|Tooled Leather Belt|c|n||||c^Leatherworking^235^1255049^f
5ev7|Prowler's Leather Gauntlets|c|n||||c^Leatherworking^250^1255040^f
5ev8|Skulker's Leather Gauntlets|c|n||||c^Leatherworking^250^1255039^f
5ev9|Warden's Leather Gauntlets|c|n||||c^Leatherworking^250^1255038^f
5eva|Skycaller's Leather Gauntlets|c|n||||c^Leatherworking^250^1255037^f
5evb|Mender's Leather Gauntlets|c|n||||c^Leatherworking^250^1255036^f
5eve|Blue Suede Shoulders|c|n||||c^Leatherworking^260^1255026^f
5evg|Wicked Leather Shoulders|c|n||||c^Leatherworking^270^1255023^f
5evi|Tooled Leather Epaulets|c|n||||c^Leatherworking^275^1255020^f
5evj|Blue Suede Bracers|c|n||||c^Leatherworking^275^1255019^f
5evk|Tooled Leather Pants|c|n||||c^Leatherworking^280^1255018^f
5evl|Living Crown|c|n||||c^Leatherworking^300^1255016^f
5evm|Stalker's Mail Boots|c|n||||c^Leatherworking^200^1255011^f
5evn|Skycaller's Mail Boots|c|n||||c^Leatherworking^200^1255010^f
5evo|Skirmisher's Mail Boots|c|n||||c^Leatherworking^200^1255009^f
5evp|Mender's Mail Boots|c|n||||c^Leatherworking^200^1255008^f
5evq|Stalker's Mail Shoulders|c|n||||c^Leatherworking^210^1255007^f
5evr|Skycaller's Mail Shoulders|c|n||||c^Leatherworking^210^1255006^f
5evs|Skirmisher's Mail Shoulders|c|n||||c^Leatherworking^210^1255005^f
5evt|Mender's Mail Shoulders|c|n||||c^Leatherworking^210^1255004^f
5evu|Stalker's Mail Bracers|c|n||||c^Leatherworking^225^1255003^f
5evv|Skycaller's Mail Bracers|c|n||||c^Leatherworking^225^1255002^f
5evw|Skirmisher's Mail Bracers|c|n||||c^Leatherworking^225^1255001^f
5evx|Mender's Mail Bracers|c|n||||c^Leatherworking^225^1255000^f
5ew0|Stalker's Mail Sabatons|c|n||||c^Leatherworking^235^1254997^f
5ew1|Skycaller's Mail Sabatons|c|n||||c^Leatherworking^235^1254996^f
5ew2|Skirmisher's Mail Sabatons|c|n||||c^Leatherworking^235^1254995^f
5ew3|Mender's Mail Sabatons|c|n||||c^Leatherworking^235^1254994^f
5ew4|Supple Scorpid Leggings|c|n||||c^Leatherworking^240^1254993^f
5ew8|Stalker's Mail Gauntlets|c|n||||c^Leatherworking^250^1254989^f
5ew9|Skycaller's Mail Gauntlets|c|n||||c^Leatherworking^250^1254988^f
5ewa|Skirmisher's Mail Gauntlets|c|n||||c^Leatherworking^250^1254987^f
5ewb|Mender's Mail Gauntlets|c|n||||c^Leatherworking^250^1254986^f
5ewc|Stalker's Mail Belt|c|n||||c^Leatherworking^250^1254985^f
5ewd|Skycaller's Mail Belt|c|n||||c^Leatherworking^250^1254984^f
5ewe|Skirmisher's Mail Belt|c|n||||c^Leatherworking^250^1254983^f
5ewf|Mender's Mail Belt|c|n||||c^Leatherworking^250^1254982^f
5ewi|Heavy Scorpid Boots|c|n||||c^Leatherworking^255^1254979^f
5ewl|Supple Scorpid Helm|c|n||||c^Leatherworking^260^1254976^f
5ewn|Supple Scorpid Vest|c|n||||c^Leatherworking^270^1254974^f
5ewo|Charged Scorpid Leggings|c|n||||c^Leatherworking^270^1254973^f
5ews|Blue Dragonscale Helm|c|n||||c^Leatherworking^300^1254969^f
5ewt|Black Dragonscale Helm|c|n||||c^Leatherworking^300^1254968^f
5ewu|Pristine Scorpid Leggings|c|n||||c^Leatherworking^300^1254967^f
5fwd|Novice Arcanist's Sash|c|n||||c^Tailoring^50^1257368^f
5fwf|Novice Ardent's Sash|c|n||||c^Tailoring^50^1257369^f
5fwh|Pristine Boots|c|n||||c^Tailoring^60^1257370^f
5fwj|Silky Boots|c|n||||c^Tailoring^60^1257371^f
5fwl|Flame Boots|c|n||||c^Tailoring^60^1257372^f
5fwn|Shadow Boots|c|n||||c^Tailoring^60^1257373^f
5fwp|Pearly Boots|c|n||||c^Tailoring^60^1257374^f
5fwr|Shining Boots|c|n||||c^Tailoring^60^1257375^f
5fwt|Filigreed Pristine Gown|c|n||||c^Tailoring^75^1257376^f
5fwv|Filigreed Silky Gown|c|n||||c^Tailoring^75^1257377^f
5fwx|Filigreed Flame Gown|c|n||||c^Tailoring^75^1257378^f
5fwz|Filigreed Shadow Gown|c|n||||c^Tailoring^75^1257379^f
5fx1|Filigreed Pearly Gown|c|n||||c^Tailoring^75^1257380^f
5fx5|Pristine Gloves|c|n||||c^Tailoring^75^1257382^f
5fx7|Silky Gloves|c|n||||c^Tailoring^75^1257383^f
5fx9|Flame Gloves|c|n||||c^Tailoring^75^1257384^f
5fxb|Shadow Gloves|c|n||||c^Tailoring^75^1257385^f
5fxd|Pearly Gloves|c|n||||c^Tailoring^75^1257386^f
5fxh|Pristine Sash|c|n||||c^Tailoring^85^1257388^f
5fxj|Silky Sash|c|n||||c^Tailoring^85^1257389^f
5fxl|Flame Sash|c|n||||c^Tailoring^85^1257390^f
5fxn|Shadow Sash|c|n||||c^Tailoring^85^1257391^f
5fxp|Pearly Sash|c|n||||c^Tailoring^85^1257392^f
5fxt|Filigreed Pristine Leggings|c|n||||c^Tailoring^100^1257394^f
5fxv|Filigreed Silky Leggings|c|n||||c^Tailoring^100^1257395^f
5fxx|Filigreed Flame Leggings|c|n||||c^Tailoring^100^1257396^f
5fxz|Filigreed Shadow Leggings|c|n||||c^Tailoring^100^1257397^f
5fy1|Filigreed Pearly Leggings|c|n||||c^Tailoring^100^1257398^f
5fy5|Pristine Circlet|c|n||||c^Tailoring^100^1257400^f
5fy7|Silky Circlet|c|n||||c^Tailoring^100^1257401^f
5fy9|Flame Circlet|c|n||||c^Tailoring^100^1257402^f
5fyb|Shadow Circlet|c|n||||c^Tailoring^100^1257403^f
5fyd|Pearly Circlet|c|n||||c^Tailoring^100^1257404^f
5fyh|Pristine Gown|c|n||||c^Tailoring^110^1257406^f
5fyj|Silky Gown|c|n||||c^Tailoring^110^1257407^f
5fyl|Flame Gown|c|n||||c^Tailoring^110^1257408^f
5fyn|Shadow Gown|c|n||||c^Tailoring^110^1257409^f
5fyp|Pearly Gown|c|n||||c^Tailoring^110^1257410^f
5fyv|Filigreed Pristine Circlet|c|n||||c^Tailoring^125^1257413^f
5fyx|Filigreed Silky Circlet|c|n||||c^Tailoring^125^1257414^f
5fyz|Filigreed Flame Circlet|c|n||||c^Tailoring^125^1257415^f
5fz1|Filigreed Shadow Circlet|c|n||||c^Tailoring^125^1257416^f
5fz3|Filigreed Pearly Circlet|c|n||||c^Tailoring^125^1257417^f
5fz7|Pristine Leggings|c|n||||c^Tailoring^125^1257419^f
5fz9|Silky Leggings|c|n||||c^Tailoring^125^1257420^f
5fzb|Flame Leggings|c|n||||c^Tailoring^125^1257421^f
5fzd|Shadow Leggings|c|n||||c^Tailoring^125^1257422^f
5fzf|Pearly Leggings|c|n||||c^Tailoring^125^1257423^f
5fzj|Earthen Leggings|c|n||||c^Tailoring^140^1257425^f
5fzl|Gilded Slippers|c|n||||c^Tailoring^140^1257426^f
5fzn|Frothing Slippers|c|n||||c^Tailoring^140^1257427^f
5fzp|Fiery Slippers|c|n||||c^Tailoring^140^1257428^f
5fzr|Black Slippers|c|n||||c^Tailoring^140^1257429^f
5fzt|Golden Slippers|c|n||||c^Tailoring^140^1257430^f
5fzx|Earthen Silk Slippers|c|n||||c^Tailoring^145^1257432^f
5fzz|Earthen Silk Hood|c|n||||c^Tailoring^150^1257433^f
5g01|Earthen Silk Gloves|c|n||||c^Tailoring^160^1257434^f
5g03|Earthen Silk Cuffs|c|n||||c^Tailoring^165^1257435^f
5g05|Gilded Handwraps|c|n||||c^Tailoring^165^1257436^f
5g07|Frothing Handwraps|c|n||||c^Tailoring^165^1257437^f
5g09|Fiery Handwraps|c|n||||c^Tailoring^165^1257438^f
5g0b|Black Handwraps|c|n||||c^Tailoring^165^1257439^f
5g0d|Golden Handwraps|c|n||||c^Tailoring^165^1257440^f
5g0h|Earthen Silk Shoulders|c|n||||c^Tailoring^170^1257442^f
5g0l|Gilded Cord|c|n||||c^Tailoring^190^1257444^f
5g0n|Frothing Cord|c|n||||c^Tailoring^190^1257445^f
5g0p|Fiery Cord|c|n||||c^Tailoring^190^1257446^f
5g0r|Black Cord|c|n||||c^Tailoring^190^1257447^f
5g0t|Golden Cord|c|n||||c^Tailoring^190^1257448^f
5g0x|Nethergeld Shoulders|c|n||||c^Tailoring^195^1257450^f
5g0z|Netherfroth Shoulders|c|n||||c^Tailoring^195^1257451^f
5g11|Netherflame Shoulders|c|n||||c^Tailoring^195^1257452^f
5g13|Netherpearl Shoulders|c|n||||c^Tailoring^195^1257453^f
5g15|Nethershine Shoulders|c|n||||c^Tailoring^195^1257454^f
5g19|Nethergeld Cuffs|c|n||||c^Tailoring^205^1257456^f
5g1b|Netherfroth Cuffs|c|n||||c^Tailoring^205^1257457^f
5g1d|Netherflame Cuffs|c|n||||c^Tailoring^205^1257458^f
5g1f|Netherpearl Cuffs|c|n||||c^Tailoring^205^1257459^f
5g1h|Nethershine Cuffs|c|n||||c^Tailoring^205^1257460^f
5g1l|Ghostweave Cord|c|n||||c^Tailoring^215^1257462^f
5g1n|Earthenweave Gloves|c|n||||c^Tailoring^215^1257463^f
5g1p|Earthenweave Cord|c|n||||c^Tailoring^215^1257464^f
5g1t|Gilded Waistcord|c|n||||c^Tailoring^215^1257466^f
5g1v|Frothing Waistcord|c|n||||c^Tailoring^215^1257467^f
5g1x|Fiery Waistcord|c|n||||c^Tailoring^215^1257468^f
5g1z|Black Waistcord|c|n||||c^Tailoring^215^1257469^f
5g21|Golden Waistcord|c|n||||c^Tailoring^215^1257470^f
5g25|Earthenweave Boots|c|n||||c^Tailoring^225^1257472^f
5g27|Gilded Gloves|c|n||||c^Tailoring^235^1257473^f
5g29|Frothing Gloves|c|n||||c^Tailoring^235^1257474^f
5g2b|Fiery Gloves|c|n||||c^Tailoring^235^1257475^f
5g2d|Black Gloves|c|n||||c^Tailoring^235^1257476^f
5g2f|Golden Gloves|c|n||||c^Tailoring^235^1257477^f
5g2j|Gilded Sandals|c|n||||c^Tailoring^235^1257479^f
5g2l|Frothing Sandals|c|n||||c^Tailoring^235^1257480^f
5g2n|Fiery Sandals|c|n||||c^Tailoring^235^1257481^f
5g2p|Black Sandals|c|n||||c^Tailoring^235^1257482^f
5g2r|Golden Sandals|c|n||||c^Tailoring^235^1257483^f
5g2v|Earthenweave Mantle|c|n||||c^Tailoring^240^1257485^f
5g2x|Earthenweave Vest|c|n||||c^Tailoring^250^1257486^f
5g2z|Runecloth Cuffs|c|n||||c^Tailoring^250^1257487^f
5g31|Earthenweave Leggings|c|n||||c^Tailoring^245^1257488^f
5g33|Ghostweave Mantle|c|n||||c^Tailoring^250^1257489^f
5g37|Earthenweave Cuffs|c|n||||c^Tailoring^255^1257491^f
5g3b|Ghostweave Hood|c|n||||c^Tailoring^260^1257493^f
5g3d|Earthenweave Crown|c|n||||c^Tailoring^260^1257494^f
5gl7|A'sharahm, the Roiling Tempest|u|n||||
5ihz|Highlands Defender's Shield|q|sn||||q^93318^WANTED: Vulgara the Insatiable^4^^s
5ii1|Thendal Ranger's Shoes|q|sn||||q^92473^Aggressive Encroachment^^^s
5ii7|Thendal Ranger's Belt|q|sn||||q^92473^Aggressive Encroachment^^^s
5ii8|Thendal Ranger's Gloves|q|sn||||q^92473^Aggressive Encroachment^^^s
5iig|Skychain Belt|q|sn||||q^92469^Return to Rorian^^^s
5iih|Worn Greatblade|u|n||||
5iii|Flowing Tunic|u|n||||
5iij|Ranger-Apprentice Cape|u|n||||
5iil|Windblown Short Cloak|q|sn||||q^92469^Return to Rorian^^^s
5iim|Plain Skirt|u|n||||
5iio|Vuldren Hide Bracers|q|sn||||q^92461^Harmony in Balance^1^^s
5iiq|Novice's Quarterstaff|q|sn||||q^92470^Foul Matriarch^^^s
5ik0|Highlander Gloves|u|n||||
5ik1|Smooth Waistband|u|n||||
5ik2|Homestitched Robe|u|n||||
5ik3|Brass-Banded Bracers|q|sn||||q^92684^Ornery Ornery Galestriders^^^s
5ik4|Stained Ritual Dagger|q|sn||||q^92528^Among the Faithful^^^s
5ik5|Curved Scimitar|q|sn||||q^92528^Among the Faithful^^^s
5ik6|Well-Worn Pants|q|sn||||q^92684^Ornery Ornery Galestriders^^^s
5ik7|Windblown Kilt|u|n||||
5ik8|Peacekeeper's Buckler|u|n||||
5ik9|Solid Copper Club|u|n||||
5ika|Valanaar Chain Gloves|u|n||||
5ikb|Skysilk Wristguards|u|n||||
5ikc|Farmer's Field Boots|q|sn||||q^92684^Ornery Ornery Galestriders^^^s
5ikd|Wind-Worn Boots|u|n||||
5ike|Elite Peacekeeper's Leggings|u|n||||
5ikf|Balanced Quarterstaff|u|n||||
5ikg|Skywatcher's Vestments|u|n||||
5ikh|Honed Greathammer|u|n||||
5iki|Quickblade's Dagger|u|n||||
5iza|Highlander's Chain Vest|u|n||||
5izb|Prideclaw Hide Armor|u|n||||
5j13|Hunter's Simple Cloak|q|sn||||q^93318^WANTED: Vulgara the Insatiable^4^^s
5jr6|Worn Greatsword|q|sn||||q^92470^Foul Matriarch^^^s
5kj6|Deep-Sea Waders|u|n||||
5kj8|Feardred's Cleansed Amulet|u|n||||
5kqv|Adventurer's Lost Boots|u|n||||
5kqw|Mourner's Shroud|u|n||||
5kqx|Amice of Sorrow|u|n||||
5kqz|Timbermaw Prayer Beads|u|n||||
5kr0|Assassin's Dagger|u|n||||
5kr6|Honor Guard's Plate|u|n||||
5kr7|Barkwoven Belt|u|n||||
5kr8|Scout's Dagger|u|n||||
5kr9|Sentinel's Plate|u|n||||
5kra|Elunar Belt|u|n||||
5krb|Sacred Bangle|u|n||||
5krc|Cliff Walker's Cinch|u|n||||
5krd|Hippogryph Hide Boots|u|n||||
5krn|Headdress of the Damned|u|n||||
5kro|Belt of Shadows|u|n||||
5krt|Highborne Memory Crystal|u|n||||
5krz|Staff of Archmage Selwyn|u|n||||
5ks1|Truesong's Hammer|u|n||||
5ks2|A Bigger Shield|u|n||||
5ks3|Panic Hands|u|n||||
5ks4|Bad Hat|u|n||||
5mxp|Thendal Watcher's Vest|u|n||||
5mxq|Scout Ranger's Tunic|u|n||||
5mxr|Skyseer's Vest|u|n||||
5mxz|Skyseer's Pants|u|n||||
5my0|Scout Ranger's Leggings|u|n||||
5my1|Thendal Watcher's Leggings|u|n||||
5n61|Windshaped Shield|u|n||||
5n62|Nightclaw Gloves|q|sn||||q^93165^Mercy Falls on Deaf Ears^^^s
5n63|Shadowgale Pants|q|sn||||q^93165^Mercy Falls on Deaf Ears^^^s
5n64|Cult Hunter's Boots|q|sn||||q^93165^Mercy Falls on Deaf Ears^^^s
5n65|Freedom Walkers|q|sn||||q^93172^Free the Hollows^^^s
5n66|Sorrowsong Gloves|q|sn||||q^93172^Free the Hollows^^^s
5n67|Scuffed Cuffs|q|sn||||q^93172^Free the Hollows^^^s
5n68|Planting Shovel|u|n||||
5n69|Trusty Wrench|u|n||||
5n6a|Roofing Hammer|u|n||||
5n6p|Flutterfly Swatter|q|sn||||q^92683^Flutterfly Dust^^^s
5n6q|Tracker's Pants|u|n||||
5n6s|Elder's Tunic|u|n||||
5n6t|Peacekeeper's Mail|u|n||||
5n6v|Hunter's Cord|u|n||||
5n6w|Windsong Bangles|u|n||||
5n6x|Breaker's Gauntlets|u|n||||
5n6y|Defender's Bracers|u|n||||
5n6z|Windswept Slippers|u|n||||
5n70|Peacekeeper's Legguards|u|n||||
5n8p|Martyr's Armor|u|n||||
5n8q|Sash of Sorrow|u|n||||
5n8r|Cilice of Regret|u|n||||
5n8s|Bow of Hours|q|sn||||q^92840^Catching Wind^^^s
5n8t|Belt of Blades|u|n||||
5n8u|Empyrean Shoes|u|n||||
5n8v|Empyrean Greatsword|u|n||||
5n8w|Exterminator's Vest|q|sn||||q^92463^The Cirrusfly Queen^^^s
5n8x|Gardening Pants|q|sn||||q^92463^The Cirrusfly Queen^^^s
5n8y|Watcher's Mail Chest|q|sn||||q^92463^The Cirrusfly Queen^^^s
5n92|Traveler's Wraps|q|sn||||q^92579^To Valanaar^^^s
5n95|Adventurer's Cloak|q|sn||||q^92579^To Valanaar^^^s
5n98|Hiking Boots|q|sn||||q^92579^To Valanaar^^^s
5n99|Bandit's Jerkin|q|sn||||q^92517^The Criminal Element^4^^s
5n9a|Patchwork Leggings|q|sn||||q^92517^The Criminal Element^4^^s
5n9b|Highlands Mail Legguards|q|sn||||q^92517^The Criminal Element^4^^s
5n9c|Wolfhide Belt|q|sn||||q^92550^Havoc in the Highlands^^^s
5n9d|Elegant Cuffs|q|sn||||q^92550^Havoc in the Highlands^^^s
5n9e|Ex-Commander's Gauntlets|q|sn||||q^92550^Havoc in the Highlands^^^s
5n9g|Dowsing Rod|q|sn||||q^94413^A Magical Affront^^^s
5n9i|Windbough Wand|u|n||||
5n9j|Defender's Aegis|u|n||||
5n9k|Skulker's Shiv|u|n||||
5n9m|Winged Beast Staff|u|n||||
5nnj|Elunar Longstaff|u|n||||
5nnk|Windforged Shortblade|u|n||||
5nnl|Skyseeker's Greatstaff|u|n||||
5qax|Wolfsbane|q|n||||q^0^Forever Paladin quest chain (Danitha Morr)^^^c
5r5w|Moonsilver Blade|u|n||||
5ry5|Elven Chain Wristguards|u|n||||
5ry6|Dwarven Plate|u|n||||
5s44|Keen Skinning Knife|q|sn||||q^95508^Unwelcome Guests^^^s
5s45|Wildgore Greatsword|q|sn||||q^95508^Unwelcome Guests^^^s
5s4u|Walton's Second-Favorite Gun|q|sn||||q^95508^Unwelcome Guests^^^s
5sc0|Apprentice Wizard's Gown|u|n||||
5sc1|Rusty Cutlass|u|n||||
5sc2|Midshipman's Worn Boots|u|n||||
5sc3|Garrison Cuffs|u|n||||
5sc4|Murloc-hide Gloves|q|sn||||q^982^Deep Ocean, Vast Sea^13^^s
5sc5|Monastic Hammer|u|n||||
5sc6|Boots of the People's Militia|u|n||||
5sc7|Worn Miner's Waistcord|Q|sn||||q^168^Collecting Memories^14^^s
5sc8|Heat Resistant Mitts|Q|sn||||q^962^Serpentbloom^14^^s
5sc9|Safety Boots|Q|sn||||q^962^Serpentbloom^14^^s
5sca|Raptorcrest Bracers|q|sn||||q^6481^Earthen Arise^14^^s
5scb|Embroidered Leggings|q|sn||||q^898^Free From the Hold^13^^s
5scc|Miner's Workgloves|Q|sn||||q^167^Oh Brother...^15^^s
5scd|Miner's Workboots|Q|sn||||q^167^Oh Brother...^15^^s
5sce|Deerhide Pants|q|sn||||q^5321^Quest 5321^17^^s
5scf|Bravo's Armbands|Q|sn||||q^2040^Underground Assault^15^^s
5scg|Dreamer's Leggings|Q|sn||||q^2040^Underground Assault^15^^s
5sci|Hammerbone|Q|sn||||q^914^Leaders of the Fang^11^^s
5scj|Loch Walkers|q|sn||||q^256^WANTED: Chok'sul^17^^s
5sck|Gnollhide Pants|u|n||||
5scl|Staghide Armguards|u|n||||
5scm|Archaeologist's Gown|u|n||||
5scn|Tanned Shoulderpads|u|n||||
5sco|Bronzed Shoulderguards|u|n||||
5scp|Silvered Gauntlets|Q|sn||||q^1199^Twilight Falls^20^^s
5scr|Ursine Hammer|Q|sn||||q^386^What Comes Around...^22^^s
5scs|Harpy Bangles|q|sn||||q^6283^Bloodfury Bloodline^18^^s
5sct|Town Clerk's Mittens|Q|sn||||q^377^Crime and Punishment^22^^s
5scu|Tattered Mittens|Q|sn||||q^1013^The Book of Ur^16^^s
5scv|Dark Ritual Leggings|Q|sn||||q^6561^Blackfathom Villainy^18^^s~q^1200^Blackfathom Villainy^18^^s
5scw|Cultist's Armguards|Q|sn||||q^6561^Blackfathom Villainy^18^^s~q^1200^Blackfathom Villainy^18^^s
5scx|Demonhide Bracers|u|n||||
5scy|Shadow Gauntlets|u|n||||
5scz|Reclaimer's Robes|u|n||||
5sd0|Magistrate's Pantaloons|u|n||||
5sd1|Smouldering Leggings|u|n||||
5sd2|Runed Gauntlets|u|n||||
5sd3|Raptorclaw Shoulders|q|sn||||q^296^Ormer's Revenge^22^^s
5sd6|Technician's Bracers|u|n||||
5sd7|Dreamer's Chestguard|q|sn||||q^6922^Baron Aquanis^21^^s
5sd8|Darkshire Shoulderguards|q|sn||||q^253^Bride of the Embalmer^20^^s
5sd9|Operator's Gloves|Q|sn||||q^2928^Gyrodrillmatic Excavationators^20^^s
5sda|Ethereal Mantle|u|n||||
5sdb|Sentinel's Boots|u|n||||
5sdc|Uthil's Cudgel|u|n||||
5sdd|Mavoris's Warstaff|u|n||||
5sde|Fury Ring|q|sn||||q^304^A Grim Task^26^^s
5sdf|Ladimore Heirloom Ring|q|sn||||q^231^A Daughter's Love^28^^s
5sdg|Swamp Ring|u|n||||
5sdh|Ring of Ruin|q|sn||||q^98^The Legend of Stalvan^22^^s
5sdi|Cultist's Chestguard|u|n||||
5sdj|Charged Leather Bracers|u|n||||
5sdk|Stromgarde Librarian Leggings|u|n||||
5sdl|Stromgarde Operative Pants|u|n||||
5sdn|Restorer's Fine Gloves|u|n||||
5sdo|Excavator Gauntlets|u|n||||
5sdt|Farseer's Forgotten Shield|u|n||||
5sdu|Tower Boots|u|n||||
5sdv|Wild Headdress|u|n||||
5sdw|Stromgarde Bracers|u|n||||
5sdx|Mindslicer|u|n||||
5sdy|Madman's Blade|u|n||||
5se0|Alterac Assassin's Gloves|u|n||||
5se1|Stromgarde Cuffs|u|n||||
5se2|Doomcaller's Pants|u|n||||
5se3|Fists of Impending Doom|u|n||||
5se4|Tidal Bracers|u|n||||
5se5|Undertow Legguards|u|n||||
5se8|Arathi Armbands|u|n||||
5sea|Ceremonial Gown|u|n||||
5seb|Blooded Pants|u|n||||
5sec|Master Hunter's Wand|u|n||||
5sed|Master Hunter's Spellsword|u|n||||
5see|Oversized Ogre's Mittens|u|n||||
5sef|Thick Ogre's Belt|u|n||||
5seg|Thane's Hammer|u|n||||
5seh|Ironforge Agent's Gloves|u|n||||
5sei|Beggar's Leggings|u|n||||
5sej|Seadog's Battered Cuffs|u|n||||
5sek|Blackwater Scimitar|u|n||||
5sel|Blackwater Cap|u|n||||
5sem|Black Whelp Boots|u|n||||
5seo|Rebel Breastplate|u|n||||
5sep|Archer's Leggings|u|n||||
5ses|Freebooter's Armband|u|n||||
5set|Gnomish Floatation Device|u|n||||
5seu|Projectile Redirectors|u|n||||
5sev|Reloading Assist Armbands|u|n||||
5sew|Stonewalker's Slippers|u|n||||
5sex|Protector's Armguards|u|n||||
5sey|Vicious Throwing Stars|u|n||||
5sez|Bloodstained Longbow|u|n||||
5sf0|Bloodied Longmace|u|n||||
5sf1|Smotts' Pinky Ring|u|n||||
5sf2|First Mate's Armguards|u|n||||
5sf3|Forest Troll Leggings|u|n||||
5sf4|Gryphon Rider's Crop|u|n||||
5sf5|Singed Cloth Robe|u|n||||
5sf6|Dragonscale Pants|u|n||||
5sfa|Cindercloth Gown|u|n||||
5sfe|Yesterday's Pants|u|n||||
5si9|Jewel of the Guard Captain|u|n||||
5sib|Ephemeral Choker|u|n||||
5sic|Golemheart Stave|u|n||||
5sid|Treads of the Protector Golem|u|n||||
5sie|Kindlegem Girdle|u|n||||
5sif|Flamefist Grips|u|n||||
5sj4|Durgen's Crescent Axe|d|n||||d^3065^Durgen Dirgehammer^0^0^c
5sj8|Direhammer Leggings|d|n||||d^3065^^0^0^c
5sj9|Robes of the Disgraced Thane|d|n||||d^3065^^0^0^c
5sji|Scale of the Tidebender|u|n||||
5sjn|Cleansed Vilebranch Medallion|u|n||||
5sjo|Cleansed Vilebranch Icon|u|n||||
5t6f|Fang of Magmatus|u|n||||
5t6g|Aetherwisp Bracers|u|n||||
5t6h|Spiritwraith Drape|u|n||||
5t6i|Golemguard Chest|u|n||||
5t9d|Atrophic Girdle|d|n||||d^2999^^0^0^c
5t9e|Witherbite Bracers|dw|sn||||d^2999^Witherfang^75^0^s~m^250483^Witherfang^0^s
5t9f|Segmented Spider Leg|dw|sn||||d^2999^Witherfang^25^0^s~m^250483^Witherfang^0^s
5t9g|Meathook Slicer|dw|sn||||d^2999^The Butcher^50^0^s~m^250660^NPC 250660^0^s
5t9h|Abomination Bones|d|n||||d^2999^^0^0^c
5t9i|Leftover Abomination Skin|dw|sn||||d^2999^The Butcher^50^0^s~m^250660^NPC 250660^0^s
5t9j|Rotmender's Leggings|dw|sn||||d^2999^The Abandoned^50^0^s~m^250631^The Abandoned^0^s
5t9k|Grip of Fear|dw|sn||||m^250631^The Abandoned^0^s~d^2999^^0^0^c
5t9l|Bonerust Leggings|d|n||||d^2999^^0^0^c
5t9m|Tuskwrap Belt|d|n||||d^2999^^0^0^c
5t9n|Vilewalkers|d|n||||d^2999^^0^0^c
5t9o|Bloodied Chestwraps|dw|sn||||d^2999^Viktor the Vile^25^0^s~m^256035^Viktor the Vile^0^s
5t9p|Mirror of Rath'mael|dw|sn||||d^2999^Rath'mael^50^0^s~m^250657^Rath'mael^0^s
5t9q|Rotmender's Treads|dw|sn||||d^2999^Rath'mael^25^0^s~m^250657^Rath'mael^0^s
5t9r|Coldspire Staff|dw|sn||||d^2999^Rath'mael^25^0^s~m^250657^Rath'mael^0^s
5t9s|Scepter of the Abandoned|dw|sn||||d^2999^The Abandoned^50^0^s~m^250631^The Abandoned^0^s
5t9t|Corpse Chopper|dw|sn||||d^2999^Bjork^100^0^s~m^256097^Bjork^0^s
5t9u|Vileblood Scimitar|dw|sn||||d^2999^Viktor the Vile^75^0^s~m^256035^Viktor the Vile^0^s
5tm3|Thendal Apprentice's Boots|u|n||||
5tm5|Thendal Novice's Boots|u|n||||
5tm8|Hornbeam Heft|Q|sn||||q^95646^Horrors in the Highland^^^s
5tm9|Thendal Survivalist's Boots|u|n||||
5tmb|Ironwood Destroyer|Q|sn||||q^95646^Horrors in the Highland^^^s
5tme|Curl of Life|Q|sn||||q^95646^Horrors in the Highland^^^s
5tno|Explorer's League Dustcover|u|n||||
5tnr|Furs of the Earthen Ring|Q|sn||||q^98823^Earthen Echo^^^s
5tns|Crocolisk Skin Gaiter|u|nU||||
5tnw|Shen'dorei Magister's Cloak|u|nU||||
5to4|Dirt-Heavy Bracers|u|n||||
5toc|Knife-Polishing Rag|u|n||||
5tp2|Heavehammer|Q|sn||||q^98823^Earthen Echo^^^s
5tp3|Healer's Staff|Q|sn||||q^98823^Earthen Echo^^^s
5tp4|Songblade Stabilizer|u|n||||
5tp5|Daewyn's Girdle|u|n||||
5tpv|Wanderer's Broadsword|u|n||||
5tpw|Blade of the Magram Clan|u|n||||
5tpx|Staff of Revelations|u|n||||
5tpy|Desperate Barrier|u|n||||
5tpz|Desert Crawler's Claw|u|n||||
5tq0|Scavenged Magram Armament|u|n||||
5tq1|Abandoned Ferocity|u|n||||
5tq2|Bludgeon of Betrayed Virtues|u|n||||
5tq3|Greatstaff of the Necrokhans|u|n||||
5tq4|Soulsplatter Mace|u|n||||
5tq5|Thrice-Damned Effigy|u|n||||
5tq6|Survivor's Amulet|u|n||||
5tq7|Weathered Necklace|u|n||||
5tq8|Scavenger's Ring|u|n||||
5tq9|Desolate Band|u|n||||
5tqa|Corpsefeeder's Shedding|u|n||||
5tqb|Clacking Carapace Spaulders|u|n||||
5tqc|Discarded Circlet|u|n||||
5tsv|Enriched Seal|e|n|a|272060|LSealofBattle|r^2799^4^Theramore Expeditionary Force^f
5tsw|Volunteer's Lucky Seal|e|n|a|272059|LSealofBattle|r^2799^4^Theramore Expeditionary Force^f
5tsx|Enriched Seal|e|n|a|272062|LSealofBattle|r^2799^4^Theramore Expeditionary Force^f
5tsy|Volunteer's Lucky Seal|e|n|a|272061|LSealofBattle|r^2799^4^Theramore Expeditionary Force^f
5tsz|Expeditionary's Cape|e|n|a|272063||r^2799^5^Theramore Expeditionary Force^f
5tt0|Theramore Signet|e|nU|a|272064||r^2799^5^Theramore Expeditionary Force^f
5tt1|Theramore Signet|e|nU|a|272065||r^2799^5^Theramore Expeditionary Force^f
5tt2|Theramore Signet|e|nU|a|272066||r^2799^5^Theramore Expeditionary Force^f
5tt3|Theramore Signet|e|nU|a|272067||r^2799^5^Theramore Expeditionary Force^f
5tt5|Militant's Band|e|nU|a|||r^2799^5^Theramore Expeditionary Force^f
5tt6|Militant's Band|e|nU|a|||r^2799^5^Theramore Expeditionary Force^f
5tt7|Militant's Band|e|nU|a|||r^2799^5^Theramore Expeditionary Force^f
5tt8|Militant's Band|e|nU|a|||r^2799^5^Theramore Expeditionary Force^f
5tt9|Seal of the Expedition|e|n|a|272072||r^2799^5^Theramore Expeditionary Force^f
5tta|Seal of the Expedition|e|n|a|272073||r^2799^5^Theramore Expeditionary Force^f
5ttb|Seal of the Expedition|e|n|a|272074||r^2799^5^Theramore Expeditionary Force^f
5ttc|Seal of the Expedition|e|n|a|272075||r^2799^5^Theramore Expeditionary Force^f
5ttd|Expeditionary's Cape|e|n|a|272076||r^2799^5^Theramore Expeditionary Force^f
5tte|Expeditionary's Cape|e|n|a|272077||r^2799^5^Theramore Expeditionary Force^f
5ttf|Expeditionary's Cape|e|n|a|272078||r^2799^5^Theramore Expeditionary Force^f
5ttg|Rebels' Rugged Reaper|e|n|a|272079||r^2799^6^Theramore Expeditionary Force^f
5tth|Rebels' Rugged Reaper|e|n|a|272080||r^2799^6^Theramore Expeditionary Force^f
5tti|Rebels' Rugged Reaper|e|n|a|272081||r^2799^6^Theramore Expeditionary Force^f
5ttj|Rebels' Rugged Reaper|e|n|a|272082||r^2799^6^Theramore Expeditionary Force^f
5ttk|Clever Expeditionary's Spellblade|e|n|a|272083||r^2799^6^Theramore Expeditionary Force^f
5ttl|Clever Expeditionary's Spellblade|e|n|a|272084||r^2799^6^Theramore Expeditionary Force^f
5ttm|Clever Expeditionary's Spellblade|e|n|a|272085||r^2799^6^Theramore Expeditionary Force^f
5ttn|Clever Expeditionary's Spellblade|e|n|a|272086||r^2799^6^Theramore Expeditionary Force^f
5tto|Insurgent's Manifesto|e|n|a|272087||r^2799^6^Theramore Expeditionary Force^f
5ttp|Insurgent's Manifesto|e|n|a|272088||r^2799^6^Theramore Expeditionary Force^f
5ttq|Insurgent's Manifesto|e|n|a|272089||r^2799^6^Theramore Expeditionary Force^f
5ttr|Insurgent's Manifesto|e|n|a|272090||r^2799^6^Theramore Expeditionary Force^f
5tts|Guerrilla's Jagged Mace|e|n|a|||r^2799^6^Theramore Expeditionary Force^f
5ttt|Guerrilla's Jagged Mace|e|n|a|272092||r^2799^6^Theramore Expeditionary Force^f
5ttu|Guerrilla's Jagged Mace|e|n|a|272093||r^2799^6^Theramore Expeditionary Force^f
5ttv|Guerrilla's Jagged Mace|e|n|a|272094||r^2799^6^Theramore Expeditionary Force^f
5ttw|Theramore Gauntlets|e|n|a|272095||r^2799^7^Theramore Expeditionary Force^f
5ttx|Theramore Gauntlets|e|n|a|272096||r^2799^7^Theramore Expeditionary Force^f
5tu1|Theramore Handwraps|e|n|a|272097||r^2799^7^Theramore Expeditionary Force^f
5tu2|Theramore Handwraps|e|n|a|272098||r^2799^7^Theramore Expeditionary Force^f
5tu4|Theramore Gloves|e|n|a|272099||r^2799^7^Theramore Expeditionary Force^f
5tu5|Theramore Gloves|e|n|a|272100||r^2799^7^Theramore Expeditionary Force^f
5tu6|Theramore Handguards|e|n|a|272101||r^2799^7^Theramore Expeditionary Force^f
5tu7|Theramore Handguards|e|n|a|272102||r^2799^7^Theramore Expeditionary Force^f
5tu9|Theramore Shoulderpads|e|n|a|272103||r^2799^7^Theramore Expeditionary Force^f
5tua|Theramore Shoulders|e|n|a|272104||r^2799^7^Theramore Expeditionary Force^f
5tub|Theramore Pauldrons|e|n|a|272105||r^2799^7^Theramore Expeditionary Force^f
5tuc|Theramore Epaulets|e|n|a|272106||r^2799^7^Theramore Expeditionary Force^f
5tud|Theramore Mantle|e|n|a|272107||r^2799^7^Theramore Expeditionary Force^f
5tuf|Theramore Spaulders|e|n|a|272108||r^2799^7^Theramore Expeditionary Force^f
5tx7|Darkspear Voodoo Seal|e||h|271904|LSealofBattle|v^263570^Creeg Bothunk^1413^65^34.6^23584^h^s
5tx8|Relentless Raider's Seal|e||h|271903|LSealofBattle|v^263570^Creeg Bothunk^1413^65^34.6^70335^h^s
5tx9|Darkspear Voodoo Seal|e||h|271906|LSealofBattle|v^263570^Creeg Bothunk^1413^65^34.6^70578^h^s
5txa|Relentless Raider's Seal|e||h|271905|LSealofBattle|v^263570^Creeg Bothunk^1413^65^34.6^21562^h^s
5txb|Darkspear Raider's Cloak|e||h|271907||v^263570^Creeg Bothunk^1413^65^34.6^84689^h^s
5txc|Insurgent's Band|e|U|h|271908||v^263570^Creeg Bothunk^1413^65^34.6^113345^h^s
5txd|Insurgent's Band|e|U|h|271909||v^263570^Creeg Bothunk^1413^65^34.6^66606^h^s
5txe|Insurgent's Band|e|U|h|271910||v^263570^Creeg Bothunk^1413^65^34.6^33057^h^s
5txf|Insurgent's Band|e|U|h|271911||r^2798^5^Darkspear Raiders^f
5txg|Darkspear Signet|ev|snU|h|||v^263570^Creeg Bothunk^1413^65^34.6^115038^h^s~r^2798^5^Darkspear Raiders^f
5txh|Darkspear Signet|ev|snU|h|||v^263570^Creeg Bothunk^1413^65^34.6^67598^h^s~r^2798^5^Darkspear Raiders^f
5txi|Darkspear Signet|ev|snU|h|||v^263570^Creeg Bothunk^1413^65^34.6^33547^h^s~r^2798^5^Darkspear Raiders^f
5txj|Darkspear Signet|e|nU|h|||r^2798^5^Darkspear Raiders^f
5txk|Darkspear Warding Pendant|e||h|271917||v^263570^Creeg Bothunk^1413^65^34.6^116720^h^s
5txl|Darkspear Warding Pendant|e||h|271918||v^263570^Creeg Bothunk^1413^65^34.6^68589^h^s
5txm|Darkspear Warding Pendant|e||h|271919||v^263570^Creeg Bothunk^1413^65^34.6^34037^h^s
5txn|Darkspear Warding Pendant|e||h|271920||r^2798^5^Darkspear Raiders^f
5txo|Darkspear Raider's Cloak|e||h|271921||v^263570^Creeg Bothunk^1413^65^34.6^51998^h^s
5txp|Darkspear Raider's Cloak|e||h|271922||v^263570^Creeg Bothunk^1413^65^34.6^25803^h^s
5txq|Darkspear Raider's Cloak|e||h|271923||r^2798^5^Darkspear Raiders^f
5txr|Darkspear Raider's Reaper|e||h|271924||v^263570^Creeg Bothunk^1413^65^34.6^347547^h^s
5txs|Darkspear Raider's Reaper|e||h|271925||v^263570^Creeg Bothunk^1413^65^34.6^204245^h^s
5txt|Darkspear Raider's Reaper|e||h|271926||v^263570^Creeg Bothunk^1413^65^34.6^101373^h^s
5txu|Darkspear Raider's Reaper|e||h|271927||r^2798^6^Darkspear Raiders^f
5txv|Darkspear Insurgent's Spellblade|e||h|271928||v^263570^Creeg Bothunk^1413^65^34.6^282269^h^s
5txw|Darkspear Insurgent's Spellblade|e||h|271929||v^263570^Creeg Bothunk^1413^65^34.6^165874^h^s
5txx|Darkspear Insurgent's Spellblade|e||h|271930||v^263570^Creeg Bothunk^1413^65^34.6^82323^h^s
5txy|Darkspear Insurgent's Spellblade|e||h|271931||r^2798^6^Darkspear Raiders^f
5txz|Tome of the Darkspear Prophecy|e||h|271932||v^263570^Creeg Bothunk^1413^65^34.6^114589^h^s
5ty0|Tome of the Darkspear Prophecy|e||h|271933||v^263570^Creeg Bothunk^1413^65^34.6^67341^h^s
5ty1|Tome of the Darkspear Prophecy|e||h|271934||v^263570^Creeg Bothunk^1413^65^34.6^33420^h^s
5ty2|Tome of the Darkspear Prophecy|e||h|271935||r^2798^6^Darkspear Raiders^f
5ty3|Darkspear Skirmisher's Bludgeon|ev|sn|h|||v^263570^Creeg Bothunk^1413^65^34.6^290705^h^s~r^2798^6^Darkspear Raiders^f
5ty4|Darkspear Skirmisher's Bludgeon|e||h|271937||v^263570^Creeg Bothunk^1413^65^34.6^170830^h^s
5ty5|Darkspear Skirmisher's Bludgeon|e||h|271938||v^263570^Creeg Bothunk^1413^65^34.6^84774^h^s
5ty6|Darkspear Skirmisher's Bludgeon|e||h|271939||r^2798^6^Darkspear Raiders^f
5ty7|Raider Gauntlets|e||h|271940||v^263570^Creeg Bothunk^1413^65^34.6^141647^h^s
5ty8|Raider Gauntlets|e||h|271941||v^263570^Creeg Bothunk^1413^65^34.6^84851^h^s
5ty9|Raider Handwraps|e||h|271945||v^263570^Creeg Bothunk^1413^65^34.6^81107^h^s
5tya|Raider Handwraps|e||h|271946||v^263570^Creeg Bothunk^1413^65^34.6^48584^h^s
5tyb|Raider Gloves|e||h|271948||v^263570^Creeg Bothunk^1413^65^34.6^102974^h^s
5tyc|Raider Gloves|e||h|271949||v^263570^Creeg Bothunk^1413^65^34.6^61681^h^s
5tyd|Raider Handguards|e||h|271950||v^263570^Creeg Bothunk^1413^65^34.6^123528^h^s
5tye|Raider Handguards|e||h|271951||v^263570^Creeg Bothunk^1413^65^34.6^73983^h^s
5tyf|Darkspear Shoulderpads|e||h|271953||v^263570^Creeg Bothunk^1413^65^34.6^124455^h^s
5tyg|Darkspear Shoulders|e||h|271954||v^263570^Creeg Bothunk^1413^65^34.6^156572^h^s
5tyh|Darkspear Pauldrons|e||h|271955||v^263570^Creeg Bothunk^1413^65^34.6^157161^h^s
5tyi|Darkspear Epaulets|e||h|271956||v^263570^Creeg Bothunk^1413^65^34.6^189616^h^s
5tyj|Darkspear Mantle|e||h|271957||v^263570^Creeg Bothunk^1413^65^34.6^220641^h^s
5tyk|Darkspear Spaulders|e||h|271959||v^263570^Creeg Bothunk^1413^65^34.6^221462^h^s
5u0k|Spectral Magister's Commission|u|n||||
5u0l|Phantasmal Shiv|u|n||||
5u0o|Amulet of Vengeance|u|n||||
5u0p|Amulet of Forgiveness|u|n||||
5u0q|Overgrown Cuffs|u|n||||
5u0r|Thornplated Cord|u|n||||
5u6h|Magician's Cord|d|n||||d^109^^0^0^c
5u6i|Penitent's Cinch|d|n||||d^109^^0^0^c
5u6j|Assassin's Waistguard|d|n||||d^109^^0^0^c
5u6k|Shifter's Belt|d|n||||d^109^^0^0^c
5u6l|Ranger's Belt|d|n||||d^109^^0^0^c
5u6m|Caretaker's Cord|d|n||||d^109^^0^0^c
5u6n|Stormseeker's Girdle|d|n||||d^109^^0^0^c
5u6p|Elunite Cord|d|n||||d^109^^0^0^c
5u6q|Prophet's Waistcord|d|n||||d^109^Jammal'an the Prophet^0^0^c
5u6r|Valiant's Waistguard|d|n||||d^109^^0^0^c
5u6s|Vindicator's Belt|d|n||||d^109^^0^0^c
5u6t|Redeemer's Waistcord|d|n||||d^109^^0^0^c
5u6u|Channeler's Ring|u|nU||||
5u6v|Blessed Band of Light|u|nU||||
5u6w|Cutthroat's Signet|u|nU||||
5u6x|Ring of Awareness|u|nU||||
5u6y|Windseeker's Belt|d|n||||d^109^^0^0^c
5u6z|Arcanoweave Cloak|u|n||||
5u71|Drape of Recovery|u|n||||
5u72|Howler's Furs|u|n||||
5u73|Stalwart Cloak|u|n||||
5u7p|Adaptive Combat Assistant|r|n|||LUndermineTrinket|d^2791^^0^1^c
5u7q|Weakness Analyzer|r|n|||LUndermineTrinket|d^2791^^0^1^c
5u7r|Serenity Field|r|n|||LUndermineTrinket|d^2791^^0^1^c
5u7s|Defender's Grip Stabilizer|r|n|||LUndermineTrinket|d^2791^^0^1^c
5u83|Sergeant's Cloak|u|nU||||
5u84|Premier High Warlord's Blade|u|n||||
5u85|Premier Magus Footwraps|u|n||||
5u86|Premier Magus Cuffs|u|n||||
5u87|Premier Magus Gloves|u|n||||
5u88|Premier Magus Belt|u|n||||
5u89|Premier Magus Hood|u|n||||
5u8a|Premier Magus Pants|u|n||||
5u8b|Premier Magus Robes|u|n||||
5u8d|Premier Kodohide Armguards|u|n||||
5u8e|Premier Dragonhide Boots|u|n||||
5u8f|Premier Dragonhide Waistband|u|n||||
5u8g|Premier Kodohide Gauntlets|u|n||||
5u8h|Premier Shadowhide Armguards|u|n||||
5u8j|Premier Shadowhide Vices|u|n||||
5u8k|Premier Shadowhide Girdle|u|n||||
5u8l|Premier Dragonhide Spaulders|u|n||||
5u8m|Premier Dragonhide Trousers|u|n||||
5u8n|Premier Dragonhide Helm|u|n||||
5u8o|Premier Dragonhide Breastplate|u|n||||
5u8p|Premier Shadowhide Hauberk|u|n||||
5u8q|Premier Shadowhide Headguard|u|n||||
5u8r|Premier Shadowhide Mantle|u|n||||
5u8s|Premier Shadowhide Leggings|u|n||||
5u8t|Premier Mortarplate Boots|u|n||||
5u8u|Premier Mortarplate Gloves|u|n||||
5u8v|Premier Mortarplate Armor|u|n||||
5u8w|Premier Mortarplate Headguard|u|n||||
5u8x|Premier Mortarplate Legguards|u|n||||
5u8z|Premier Chain Bracers|u|n||||
5u90|Premier Mail Walkers|u|n||||
5u91|Premier Linked Grips|u|n||||
5u92|Premier Mail Helm|u|n||||
5u93|Premier Mail Chestpiece|u|n||||
5u94|Premier Linked Leggings|u|n||||
5u95|Premier Linked Shoulders|u|n||||
5u96|Premier Chain Breastplate|u|n||||
5u97|Premier Chain Headguard|u|n||||
5u98|Premier Chain Leggings|u|n||||
5u9a|Premier Chain Girdle|u|n||||
5u9b|Premier Chain Gauntlets|u|n||||
5u9c|Premier Chain Boots|u|n||||
5u9d|Premier Linked Wristguards|u|n||||
5u9e|Premier Warlord's Magus Cowl|u|n||||
5u9f|Premier General's Magus Trousers|u|n||||
5u9g|Premier Warlord's Magus Raiment|u|n||||
5u9h|Premier General's Magus Amice|u|n||||
5u9i|Premier Legionnaire's Magus Sash|u|n||||
5u9j|Premier Legionnaire's Magus Cuffs|u|n||||
5u9k|Premier Centurion's Magus Boots|u|n||||
5u9l|Premier Champion's Magus Handguards|u|n||||
5u9m|Premier Warlord's Mortarplate Armor|u|n||||
5u9n|Premier Warlord's Mortarplate Headpiece|u|n||||
5u9o|Premier General's Mortarplate Leggings|u|n||||
5u9p|Premier General's Mortarplate Shoulders|u|n||||
5u9q|Premier Centurion's Mortarplate Boots|u|n||||
5u9r|Premier Legionnaire's Mortarplate Armguards|u|n||||
5u9s|Premier Legionnaire's Mortarplate Girdle|u|n||||
5u9t|Premier Champion's Mortarplate Gauntlets|u|n||||
5u9v|Premier Warlord's Dragonhide Helmet|u|n||||
5u9w|Premier General's Dragonhide Epaulets|u|n||||
5u9x|Premier General's Dragonhide Leggings|u|n||||
5u9y|Premier Legionnaire's Dragonhide Bracers|u|n||||
5u9z|Premier Centurion's Dragonhide Boots|u|n||||
5ua0|Premier Champion's Dragonhide Gloves|u|n||||
5ua1|Premier Legionnaire's Dragonhide Belt|u|n||||
5ua2|Premier Legionnaire's Shadowhide Girdle|u|n||||
5ua3|Premier Centurion's Shadowhide Treads|u|n||||
5ua4|Premier Legionnaire's Shadowhide Armsplints|u|n||||
5ua5|Premier Champion's Shadowhide Mitts|u|n||||
5ua6|Premier Warlord's Shadowhide Helm|u|n||||
5ua7|Premier General's Shadowhide Spaulders|u|n||||
5ua8|Premier Warlord's Shadowhide Breastplate|u|n||||
5ua9|Premier General's Shadowhide Legguards|u|n||||
5uaa|Premier Warlord's Chain Chestpiece|u|n||||
5uab|Premier Warlord's Chain Helmet|u|n||||
5uac|Premier General's Chain Legguards|u|n||||
5uad|Premier General's Chain Shoulders|u|n||||
5uae|Premier Centurion's Chain Sabatons|u|n||||
5uaf|Premier Legionnaire's Chain Wristguards|u|n||||
5uag|Premier Champion's Chain Gloves|u|n||||
5uah|Premier Legionnaire's Chain Girdle|u|n||||
5uas|Premier Felweave Robe|u|n||||
5uat|Premier Felweave Shoulders|u|n||||
5uau|Premier Felweave Belt|u|n||||
5uav|Premier Felweave Bracers|u|n||||
5uaw|Premier Felweave Boots|u|n||||
5uax|Premier Felweave Gloves|u|n||||
5uay|Premier Centurion's Felweave Boots|u|n||||
5uaz|Premier Legionnaire's Felweave Bracers|u|n||||
5ub0|Premier Champion's Felweave Gloves|u|n||||
5ub1|Premier Legionnaire's Felweave Belt|u|n||||
5ub2|Premier General's Felweave Mantle|u|n||||
5ub3|Premier Warlord's Felweave Hood|u|n||||
5ub4|Premier Warlord's Felweave Robe|u|n||||
5ub5|Premier General's Felweave Pants|u|n||||
5ub6|Premier Satin Cowl|u|n||||
5ub7|Premier Satin Trousers|u|n||||
5ub8|Premier Satin Vestments|u|n||||
5ub9|Premier Satin Shoulderpads|u|n||||
5uba|Premier Satin Sash|u|n||||
5ubb|Premier Satin Cuffs|u|n||||
5ubc|Premier Satin Boots|u|n||||
5ubd|Premier Satin Gloves|u|n||||
5ube|Premier Centurion's Satin Boots|u|n||||
5ubf|Premier Legionnaire's Satin Bracers|u|n||||
5ubg|Premier Champion's Satin Gloves|u|n||||
5ubh|Premier Legionnaire's Satin Cinch|u|n||||
5ubi|Premier General's Satin Mantle|u|n||||
5ubj|Premier Warlord's Satin Cowl|u|n||||
5ubk|Premier Warlord's Satin Robes|u|n||||
5ubl|Premier General's Satin Leggings|u|n||||
5ubm|Premier Sergeant's Cloak|u|n||||
5ubn|Premier Mortarplate Bracers|u|n||||
5ubo|First Sergeant's Plate Bracers|u|nU||||
5ubp|First Sergeant's Mail Wristguards|u|nU||||
5ubq|Premier Dragonhide Armguards|u|n||||
5ubx|Premier Sergeant's Cape|u|n||||
5ubz|Premier High Warlord's Shield Wall|u|n||||
5uc0|Premier High Warlord's Cleaver|u|n||||
5uc1|Premier High Warlord's Battle Axe|u|n||||
5uc2|Premier High Warlord's Recurve|u|n||||
5uc3|Premier High Warlord's Crossbow|u|n||||
5uc4|Premier High Warlord's Razor|u|n||||
5uc5|Premier High Warlord's Right Claw|u|n||||
5uc6|Premier High Warlord's Left Claw|u|n||||
5uc7|Premier High Warlord's Street Sweeper|u|n||||
5uc8|Premier High Warlord's Bludgeon|u|n||||
5uc9|Premier High Warlord's Pulverizer|u|n||||
5uca|Premier High Warlord's Pig Sticker|u|n||||
5ucb|Premier High Warlord's War Staff|u|n||||
5ucc|Premier High Warlord's Greatsword|u|n||||
5uce|Premier Kodohide Treads|u|n||||
5ucg|Premier Shadowhide Walkers|u|n||||
5uch|Premier Linked Greaves|u|n||||
5ucj|Premier Silken Walkers|u|n||||
5ucm|Premier Dragonhide Grips|u|n||||
5ucp|Premier Mail Vices|u|n||||
5ucr|Premier Silken Handwraps|u|n||||
5ucx|Premier Linked Hauberk|u|n||||
5ucy|Premier Kodohide Chestpiece|u|n||||
5ucz|Premier Kodohide Leggings|u|n||||
5ud2|Premier Felweave Legguards|u|n||||
5ud6|Premier Silken Tunic|u|n||||
5ud8|Premier Mail Legguards|u|n||||
5ud9|Premier Mortarplate Shoulders|u|n||||
5udc|Premier Chain Shoulders|u|n||||
5udd|Premier Kodohide Headguard|u|n||||
5ude|Premier Kodohide Shoulders|u|n||||
5udf|Premier Felweave Cowl|u|n||||
5udj|Premier Linked Headguard|u|n||||
5udk|Premier Mail Pauldrons|u|n||||
5udl|Premier Silken Hood|u|n||||
5udm|Premier Silken Mantle|u|n||||
5uds|Premier Lunarhide Leggings|u|n||||
5udt|Premier Dreadweave Legguards|u|n||||
5udz|Premier Silken Legguards|u|n||||
5ue5|Premier Lunarhide Headguard|u|n||||
5ue6|Premier Lunarhide Shoulders|u|n||||
5ue7|Premier Dreadweave Cowl|u|n||||
5ued|Premier Mooncloth Hood|u|n||||
5uee|Premier Mooncloth Mantle|u|n||||
5ueg|Premier Magus Mantle|u|n||||
5ueh|Premier High Warlord's Battle Mace|u|n||||
5uei|Premier High Warlord's Destroyer|u|n||||
5uej|Premier High Warlord's Spellblade|u|n||||
5uek|Premier High Warlord's Quickblade|u|n||||
5uel|Premier High Warlord's Tome of Destruction|u|n||||
5uem|Premier High Warlord's Tome of Mending|u|n||||
5uet|Premier Grand Marshal's Longsword|u|n||||
5uey|Premier Sergeant's Cloak|u|n||||
5uez|Premier Sergeant's Cape|u|n||||
5uf0|Premier Silk Sash|u|n||||
5uf1|Premier Silk Boots|u|n||||
5uf2|Premier Silk Cuffs|u|n||||
5uf3|Premier Silk Gloves|u|n||||
5uf4|Premier Leather Boots|u|n||||
5uf5|Premier Beasthide Footwraps|u|n||||
5uf6|Premier Leather Bracers|u|n||||
5uf7|Premier Beasthide Armsplints|u|n||||
5uf8|Premier Leather Gauntlets|u|n||||
5uf9|Premier Beasthide Gloves|u|n||||
5ufa|Premier Leather Belt|u|n||||
5ufb|Premier Beasthide Girdle|u|n||||
5ufc|Premier Chainmail Girdle|u|n||||
5ufd|Premier Chainmail Boots|u|n||||
5uff|Premier Chainmail Gauntlets|u|n||||
5ufh|Premier Plate Gauntlets|u|n||||
5ufi|Premier Chevalier Sabatons|u|n||||
5ufj|Premier Chevalier Gauntlets|u|n||||
5ufk|Premier Chevalier Cinch|u|n||||
5ufl|Premier Chevalier Armsplints|u|n||||
5ufm|Premier Silk Raiment|u|n||||
5ufn|Premier Silk Leggings|u|n||||
5ufo|Premier Silk Spaulders|u|n||||
5ufp|Premier Silk Crown|u|n||||
5ufq|Premier Leather Armor|u|n||||
5ufr|Premier Leather Veil|u|n||||
5ufs|Premier Leather Legguards|u|n||||
5uft|Premier Leather Spaulders|u|n||||
5ufv|Premier Beasthide Leggings|u|n||||
5ufw|Premier Beasthide Epaulets|u|n||||
5ufx|Premier Beasthide Shroud|u|n||||
5ufy|Premier Chainmail Hauberk|u|n||||
5ufz|Premier Chainmail Leggings|u|n||||
5ug0|Premier Chainmail Pauldrons|u|n||||
5ug1|Premier Chainmail Helmet|u|n||||
5ug2|Premier Plate Helm|u|n||||
5ug3|Premier Plate Chestguard|u|n||||
5ug4|Premier Plate Leggings|u|n||||
5ug5|Premier Plate Pauldrons|u|n||||
5ug6|Premier Chevalier Breastplate|u|n||||
5ug7|Premier Chevalier Headguard|u|n||||
5ug8|Premier Chevalier Leggings|u|n||||
5ug9|Premier Chevalier Shoulders|u|n||||
5uhb|Premier Field Marshal's Chevalier Faceguard|u|n||||
5uhm|Premier Dreadweave Boots|u|n||||
5uhn|Premier Dreadweave Bracers|u|n||||
5uho|Premier Dreadweave Gloves|u|n||||
5uhp|Premier Dreadweave Belt|u|n||||
5uhs|Premier Dreadweave Robe|u|n||||
5uht|Premier Dreadweave Mantle|u|n||||
5ui2|Premier Voidcloth Boots|u|n||||
5ui3|Premier Voidcloth Cuffs|u|n||||
5ui4|Premier Voidcloth Gloves|u|n||||
5ui5|Premier Voidcloth Cord|u|n||||
5ui6|Premier Voidcloth Diadem|u|n||||
5ui7|Premier Voidcloth Leggings|u|n||||
5ui8|Premier Voidcloth Robes|u|n||||
5ui9|Premier Voidcloth Amice|u|n||||
5uia|Premier Field Marshal's Voidcloth Headdress|u|n||||
5uib|Premier Marshal's Voidcloth Pants|u|n||||
5uic|Premier Marshal's Voidcloth Mantle|u|n||||
5uid|Premier Field Marshal's Voidcloth Vestments|u|n||||
5uie|Premier Knight-Captain's Voidcloth Bracers|u|n||||
5uif|Premier Knight-Champion's Voidcloth Sandals|u|n||||
5uig|Premier Lieutenant Commander's Voidcloth Gloves|u|n||||
5uih|Premier Knight-Captain's Voidcloth Sash|u|n||||
5uik|Premier Plate Wristguards|u|n||||
5uim|Premier Chainmail Armguards|u|n||||
5uiq|Premier Dreamhide Armsplints|u|n||||
5uir|Premier Lunarhide Armsplints|u|n||||
5uiu|Premier Grand Marshal's Aegis|d|n||||d^329^^0^0^c
5uiv|Premier Grand Marshal's Handaxe|d|n||||d^329^^0^0^c
5uiw|Premier Grand Marshal's Sunderer|d|n||||d^329^^0^0^c
5uix|Premier Grand Marshal's Bullseye|d|n||||d^329^^0^0^c
5uiy|Premier Grand Marshal's Repeater|d|n||||d^329^^0^0^c
5uiz|Premier Grand Marshal's Dirk|d|n||||d^329^^0^0^c
5uj0|Premier Grand Marshal's Right Hand Blade|d|n||||d^329^^0^0^c
5uj1|Premier Grand Marshal's Left Hand Blade|d|n||||d^329^^0^0^c
5uj2|Premier Grand Marshal's Hand Cannon|d|n||||d^329^Cannon Master Willey^0^0^c
5uj3|Premier Grand Marshal's Punisher|d|n||||d^329^^0^0^c
5uj4|Premier Grand Marshal's Battle Hammer|d|n||||d^329^^0^0^c
5uj5|Premier Grand Marshal's Glaive|d|n||||d^329^^0^0^c
5uj6|Premier Grand Marshal's Stave|d|n||||d^329^^0^0^c
5uj7|Premier Grand Marshal's Claymore|d|n||||d^329^^0^0^c
5uj8|Premier Luminous Breastplate|u|n||||
5uj9|Premier Luminous Leggings|u|n||||
5uja|Premier Luminous Headguard|u|n||||
5ujb|Premier Luminous Shoulders|u|n||||
5ujc|Premier Grand Marshal's Mageblade|d|n||||d^329^^0^0^c
5ujd|Premier Grand Marshal's Warhammer|d|n||||d^329^^0^0^c
5uje|Premier Grand Marshal's Demolisher|d|n||||d^329^^0^0^c
5ujf|Premier Grand Marshal's Swiftblade|d|n||||d^329^^0^0^c
5um5|Theramore Shoulderguards|e|n|a|272958||r^2799^7^Theramore Expeditionary Force^f
5um6|Darkspear Shoulderguards|e||h|272957||v^263570^Creeg Bothunk^1413^65^34.6^195317^h^s
5un8|Trogg Scepter|dw|sn||||m^11517^Oggleflint^0^s~d^389^^0^0^c
5una|Bone Knuckles|dw|sn||||d^389^Oggleflint^100^0^s~m^11517^Oggleflint^0^s
5unb|Barbaric Crossbow|d|n||||d^389^^0^0^c
5unf|Searing Dagger|d|n||||d^389^^0^0^c
5unh|Satyrskin Cloak|dw|sn||||d^389^Bazzalan^100^0^s~m^11519^Bazzalan^0^s
5unj|Chasm Walkers|dw|sn||||m^11519^Bazzalan^0^s~d^389^^0^0^c
5uny|Supple Bellyskin Leggings|d|n||||d^33^^0^0^c
5unz|Saltscale Girdle|d|n||||d^33^^0^0^c
5uo0|Glinteye Slippers|dw|sn||||d^2998^Saltspine^100^0^s~m^260322^NPC 260322^0^s
5uo1|Raptorclaw Greaves|dw|sn||||d^2998^Shadetooth^100^0^s~m^260325^NPC 260325^0^s
5uo2|Garb of Florid Feathers|d|n||||d^33^^0^0^c
5uo3|Raptor's Gaze|d|n||||d^33^^0^0^c
5uo4|Reliquary Mantle|dw|sn||||m^260326^NPC 260326^0^s~d^33^^0^0^c
5uo5|Golemsight Long Gun|d|n||||d^33^^0^0^c
5uo6|Ring of Power Regulation|dw|sn||||d^2998^Relic Guardian^100^0^s~m^260326^NPC 260326^0^s
5uo7|Runemender's Seal|dw|sn||||d^2959^Arcane Anomaly^50^0^s~m^245999^NPC 245999^0^s
5uo8|Bonebinder's Signet|dw|sn||||d^2959^Atrexis the Grave Knight^50^0^s~m^247126^NPC 247126^0^s
5uo9|Gravespike Repeater|d|n||||d^33^^0^0^c
5uoa|Ephemeral Grips|dw|sn||||d^2959^Arcane Anomaly^50^0^s~m^245999^NPC 245999^0^s
5uob|Mana-Warped Chain Shirt|d|n||||d^33^^0^0^c
5uoc|Graveweave Bindings|d|sn||||d^2959^Atrexis the Grave Knight^50^0^s~d^33^^0^0^c
5uod|Felbough Arm|d|n||||d^33^^0^0^c
5uoe|Garb of Fallen Felbark|d|n||||d^33^^0^0^c
5uof|Blightleaf Rope|dw|sn||||d^2959^Fel Ancient^100^0^s~m^246003^NPC 246003^0^s
5uog|Spine of the Devourer|d|sn||||d^33^Fenrus the Devourer^0^0^c
5uoh|Slitherwrap Girdle|d|n||||d^33^^0^0^c
5uoi|Manascale Treads|dw|sn||||d^2959^Mana Devourer^100^0^s~m^246008^NPC 246008^0^s
5uoj|Wand of Mana Concentration|d|n||||d^33^^0^0^c
5uok|Violet Sorcerer's Robes|d|n||||d^33^^0^0^c
5uol|Drape of Shifting Energy|dw|sn||||d^2959^Mana Elemental^100^0^s~m^246016^NPC 246016^0^s
5uom|Guardian's Dualblade|dw|sn||||d^2959^Unstable Sentinel^50^0^s~m^246017^NPC 246017^0^s
5uon|Unstable Crystalline Shoulderpads|d|n||||d^33^^0^0^c
5uoo|Refractory Scaleguards|dw|sn||||d^2959^Unstable Sentinel^50^0^s~m^246017^NPC 246017^0^s
5uop|Archmagister's Faceted Pendant|d|n||||d^33^^0^0^c
5uor|Violet Sorcerer's Mantle|dw|sn||||d^2959^Shade of the Archmage^50^0^s~m^246020^NPC 246020^0^s
5uos|Ponderous Orb|dw|sn||||d^2959^Shade of the Archmage^50^0^s~m^246020^NPC 246020^0^s
5uot|Tendonscraper Dagger|d|n||||d^33^^0^0^c
5uou|Cartilage Shapers|d|n||||d^33^^0^0^c
5uov|Bonepile Gaze|d|n||||d^33^^0^0^c
5ups|Snake Eye Kaleidoscope|u|n||||
5upt|Slither Cord|w|sn||||m^3670^Lord Pythas^0^s
5ur5|Skum's Bucket|d|n||||d^43^Skum^0^0^c
5uvd|Ogre Loincloth|d|n||||d^36^^0^0^c
5uvh|Bandsaw Wristbands|d|n||||d^36^^0^0^c
5uvl|Goblin Hammer|d|n||||d^36^^0^0^c
5uwc|Premier Mortarplate Girdle|u|n||||
5uwd|Premier Plate Girdle|u|n||||
5uwf|Premier Knight-Captain's Luminous Armguards|u|n||||
5uwg|Premier Knight-Captain's Luminous Belt|u|n||||
5uwh|Premier Lieutenant Commander's Luminous Gloves|u|n||||
5uwi|Premier Knight-Champion's Luminous Boots|u|n||||
5uwj|Premier Field Marshal's Luminous Chestplate|u|n||||
5uwk|Premier Field Marshal's Luminous Faceguard|u|n||||
5uwl|Premier Marshal's Luminous Legplates|u|n||||
5uwm|Premier Marshal's Luminous Pauldrons|u|n||||
5uwo|Premier Centurion's Mail Boots|u|n||||
5uwv|Premier General's Mail Spaulders|u|n||||
5uww|Premier Centurion's Ringmail Boots|u|n||||
5uwx|Premier Champion's Ringmail Gauntlets|u|n||||
5uwz|Premier Legionnaire's Ringmail Bracers|u|n||||
5ux1|Premier Warlord's Ringmail Helm|u|n||||
5ux2|Premier General's Ringmail Leggings|u|n||||
5ux4|Premier Linked Girdle|u|n||||
5ux5|Premier Mail Wristguards|u|n||||
5ux7|Premier Ringmail Walkers|u|n||||
5ux8|Premier Ringmail Helm|u|n||||
5ux9|Premier Ringmail Chestpiece|u|n||||
5uxb|Premier Ringmail Legguards|u|n||||
5uxc|Premier Ringmail Pauldrons|u|n||||
5uxd|Premier Ringmail Wristguards|u|n||||
5uxe|Premier Ringmail Girdle|u|n||||
5uxf|Premier Luminous Gauntlets|u|n||||
5uxg|Premier Luminous Armsplints|u|n||||
5uxh|Premier Luminous Sabatons|u|n||||
5uxi|Premier Luminous Cinch|u|n||||
5uxj|Premier Kodohide Waistband|u|n||||
5uxk|Premier Lunarhide Gloves|u|n||||
5uxl|Premier Lunarhide Girdle|u|n||||
5uxm|Premier Lunarhide Footwraps|u|n||||
5uxn|Premier Lunarhide Tunic|u|n||||
5uxo|Premier Mail Girdle|u|n||||
5uxp|Premier Dreamhide Leggings|u|n||||
5uxq|Premier Dreamhide Headguard|u|n||||
5uxr|Premier Dreamhide Shoulders|u|n||||
5uxu|Premier Dreamhide Girdle|u|n||||
5uxw|Premier Dreamhide Tunic|u|n||||
5uxx|Premier Wyrmhide Armguards|u|n||||
5uxy|Premier Wyrmhide Gauntlets|u|n||||
5uxz|Premier Wyrmhide Treads|u|n||||
5uy0|Premier Wyrmhide Chestpiece|u|n||||
5uy1|Premier Wyrmhide Leggings|u|n||||
5uy2|Premier Wyrmhide Headguard|u|n||||
5uy3|Premier Wyrmhide Shoulders|u|n||||
5uy4|Premier Wyrmhide Waistband|u|n||||
5uy5|Premier Knight-Captain's Lunarhide Bracers|u|n||||
5uy6|Premier Knight-Captain's Lunarhide Waistguard|u|n||||
5uy7|Premier Lieutenant Commander's Lunarhide Gauntlets|u|n||||
5uy8|Premier Marshal's Lunarhide Spaulders|u|n||||
5uy9|Premier Marshal's Lunarhide Legguards|u|n||||
5uya|Premier Field Marshal's Lunarhide Helmet|u|n||||
5uyb|Premier Field Marshal's Lunarhide Breastplate|u|n||||
5uyc|Premier Knight-Champion's Lunarhide Boots|u|n||||
5uyd|Premier Knight-Captain's Dreamhide Bracers|u|n||||
5uye|Premier Knight-Captain's Dreamhide Waistguard|u|n||||
5uyf|Premier Lieutenant Commander's Dreamhide Gauntlets|u|n||||
5uyh|Premier Marshal's Dreamhide Legguards|u|n||||
5uyi|Premier Field Marshal's Dreamhide Helmet|u|n||||
5uyj|Premier Field Marshal's Dreamhide Breastplate|u|n||||
5uyn|Premier General's Wyrmhide Epaulets|u|n||||
5uz1|Premier Field Marshal's Mooncloth Headdress|u|n||||
5uz2|Premier Marshal's Mooncloth Pants|u|n||||
5uz3|Premier Marshal's Mooncloth Mantle|u|n||||
5uz4|Premier Field Marshal's Mooncloth Vestments|u|n||||
5uz5|Premier Knight-Captain's Mooncloth Bracers|u|n||||
5uz6|Premier Knight-Champion's Mooncloth Sandals|u|n||||
5uz7|Premier Lieutenant Commander's Mooncloth Gloves|u|n||||
5uz8|Premier Knight-Captain's Mooncloth Sash|u|n||||
5uza|Premier Legionnaire's Silken Bracers|u|n||||
5uzb|Premier Champion's Silken Gloves|u|n||||
5uzc|Premier Legionnaire's Silken Cinch|u|n||||
5uzd|Premier General's Silken Mantle|u|n||||
5uze|Premier Warlord's Silken Cowl|u|n||||
5uzf|Premier Warlord's Silken Robes|u|n||||
5uzg|Premier General's Silken Leggings|u|n||||
5uzn|Premier Mooncloth Boots|u|n||||
5uzo|Premier Mooncloth Cuffs|u|n||||
5uzp|Premier Mooncloth Gloves|u|n||||
5uzr|Premier Mooncloth Leggings|u|n||||
5uzs|Premier Mooncloth Robes|u|n||||
5uzt|Premier Mooncloth Cord|u|n||||
5uzu|Premier Silken Cuffs|u|n||||
5v00|Cell Keeper's Claws|w|sn||||m^3914^Rethilgore^0^s
5v01|Sorcerer Collar|u|n||||
5v51|Blade of Silverlaine|dw|sn||||d^33^Baron Silverlaine^33.33^0^s~m^3887^Baron Silverlaine^0^s
5v57|Worgenbane Talisman|dw|sn||||d^33^Commander Springvale^33.33^0^s~m^4278^Commander Springvale^0^s
5v59|Blindwatcher's Sight|dw|sn||||d^33^Odo the Blindwatcher^66.67^0^s~m^4279^Odo the Blindwatcher^0^s
5v5a|Half-Eaten Boots|d|n||||d^33^^0^0^c
5v5b|Worgpelt Leggings|dw|sn||||d^33^Wolf Master Nandos^33.33^0^s~m^3927^Wolf Master Nandos^0^s
5v5i|Crystal Thread Cloak|u|n||||
5v9o|Executioner Mantle|d|n||||d^34^^0^0^c
5v9p|Blackrock Harness|dw|sn||||d^34^Targorr the Dread^100^0^s~m^1696^Targorr the Dread^0^s
5v9q|Dark Horde Band|d|n||||d^34^^0^0^c
5v9r|Demolition Girdle|d|n||||d^34^^0^0^c
5v9s|Bridgebreaker Bindings|d|n||||d^34^^0^0^c
5v9t|Hamhock's Cleaver|dw|sn||||m^1717^Hamhock^0^s~d^34^Hamhock^0^0^c
5v9u|Ogre Grips|d|n||||d^34^^0^0^c
5v9v|Repurposed Rack|d|sn||||d^34^Hamhock^100^0^s
5va0|Apprentice's Blouse|u|n||||
5va1|Graverobber's Shovel|d|nU||||d^34^^0^0^c
5va3|Boneslicer|dw|sn||||d^34^Dextren Ward^100^0^s~m^1663^Dextren Ward^0^s
5va8|Defias Jailbreakers|d|n||||d^34^^0^0^c
5va9|Red Wool Cloak|d|n||||d^34^^0^0^c
5vab|Debt Collector|d|n||||d^34^^0^0^c
5vad|Concealed Hand Crossbow|d|sn||||d^34^Bazil Thredd^100^0^s
5van|Spiked Shell Band|dw|sn||||m^4887^Ghamoo-ra^0^s~d^48^^0^0^c
5vap|Twilight Maul|dw|sn||||m^12902^Lorgus Jett^0^s~d^48^^0^0^c
5vaq|Treacherous Treads|d|n||||d^48^^0^0^c
5var|Fallenroot Longbow|dw|sn||||m^12902^Lorgus Jett^0^s~d^48^^0^0^c
5vau|Twilight Lord Girdle|d|n||||d^48^^0^0^c
5vbn|Empyrean Treads|u|n||||
5vbo|Broken Cultist Gloves|u|n||||
5vbp|Windswept Shortbow|q|sn||||q^92528^Among the Faithful^^^s
5vbr|Refined Shortbow|q|sn||||q^92470^Foul Matriarch^^^s
5vg3|Staghide Drape|u|n||||
5vga|Skullduggery Belt|u|n||||
5vgb|Irradiated Shield|u|n||||
5vh0|Thermaplugg Medal of Honor|d|n||||d^90^Mekgineer Thermaplugg^0^0^c
5vha|Boar Signet|u|n||||
5vhg|Quilboar Blaster|u|n||||
5vj9|Thornweaver Drape|w|sn||||m^6168^Roogug^0^s
5vjc|Roogug's Severed Head|d|n||||d^47^Roogug^0^0^c
5vjf|Geomancer Headdress|u|n||||
5vji|Death Prophet Spine|d|n||||d^47^^0^0^c
5vjj|Thorncursed Grips|d|n||||d^47^^0^0^c
5vjk|Quilrager Throwing Axe|d|n||||d^47^^0^0^c
5vjl|Quillord Mail Leggings|d|n||||d^47^^0^0^c
5vk0|Premier Scalemail Walkers|u|n||||
5vk1|Premier Flatmail Grips|u|n||||
5vk2|Premier Scalemail Helm|u|n||||
5vk3|Premier Scalemail Chestpiece|u|n||||
5vk4|Premier Flatmail Leggings|u|n||||
5vk5|Premier Flatmail Shoulders|u|n||||
5vk6|Premier Flatmail Wristguards|u|n||||
5vkg|Premier Flatmail Greaves|u|n||||
5vkh|Premier Scalemail Vices|u|n||||
5vki|Premier Flatmail Hauberk|u|n||||
5vkj|Premier Scalemail Legguards|u|n||||
5vkk|Premier Flatmail Headguard|u|n||||
5vkl|Premier Scalemail Pauldrons|u|n||||
5vkm|Premier Knight-Champion's Scalemail Boots|u|n||||
5vl2|Premier Flatmail Girdle|u|n||||
5vl3|Premier Scalemail Wristguards|u|n||||
5vl5|Premier Linkmail Walkers|u|n||||
5vl6|Premier Linkmail Helm|u|n||||
5vl7|Premier Linkmail Chestpiece|u|n||||
5vl9|Premier Linkmail Legguards|u|n||||
5vla|Premier Linkmail Pauldrons|u|n||||
5vlb|Premier Linkmail Wristguards|u|n||||
5vlc|Premier Linkmail Girdle|u|n||||
5vld|Premier Scalemail Girdle|u|n||||
5vle|Premier Scaled Sabatons|u|n||||
5vlf|Premier Scaled Gauntlets|u|n||||
5vlg|Premier Scaled Cinch|u|n||||
5vlh|Premier Scaled Armsplints|u|n||||
5vli|Premier Scaled Breastplate|u|n||||
5vlj|Premier Scaled Headguard|u|n||||
5vlk|Premier Scaled Leggings|u|n||||
5vll|Premier Scaled Shoulders|u|n||||
5vlw|Premier Lamellar Breastplate|u|n||||
5vlx|Premier Lamellar Leggings|u|n||||
5vly|Premier Lamellar Headguard|u|n||||
5vlz|Premier Lamellar Shoulders|u|n||||
5vm0|Premier Legionnaire's Lamellar Armguards|u|n||||
5vm1|Premier Legionnaire's Lamellar Belt|u|n||||
5vm2|Premier Champion's Lamellar Gloves|u|n||||
5vm3|Premier Centurion's Lamellar Boots|u|n||||
5vm4|Premier Warlord's Lamellar Chestplate|u|n||||
5vm8|Premier Lamellar Gauntlets|u|n||||
5vm9|Premier Lamellar Armsplints|u|n||||
5vma|Premier Lamellar Sabatons|u|n||||
5vmb|Premier Lamellar Cinch|u|n||||
5vn6|Painwalker Buckler|d|n||||d^189^^0^0^c
5vn7|Polished Skullcap|d|n||||d^189^^0^0^c
5vn8|Houndmaster Boomerang|d|n||||d^189^Houndmaster Loksey^0^0^c
5vn9|Spellsever Crossbow|d|n||||d^189^^0^0^c
5vna|Library Walkers|u|n||||
5vnb|Band of Crimson Light|d|n||||d^189^^0^0^c
5vpp|Coldbringer Spine|d|n||||d^129^Amnennar the Coldbringer^0^0^c
5vpr|Kanai's Knife|u|n||||
5vps|Illegible Dogtags|u|n||||
5vpt|Abomination Chain|d|n||||d^129^^0^0^c
5vpu|Toy Soldier|u|n||||
5vqp|Barkskin Baubles|u|n||||
5vqq|Burrow Barricade|u|n||||
5vqr|Bear Poking Stick|u|n||||
5vqs|Wisepaw Totem|u|n||||
5vqx|White Obsidian Wand|u|n||||
5vr0|Dark Golem Breastplate|u|n||||
5vr2|Rock Sentinel Slicer|u|n||||
5vr4|Stone Keeper Spire|u|n||||
5vsl|Axe of Lingering Dread|u|n||||
5vsq|Centaur Hoofwarmers|u|n||||
5vth|Unerring Purpose|u|n||||
5vz2|Lost Veteran's Sabatons|u|n||||
5vz3|Forgotten Trompers|u|n||||
5vz4|Abandoned Boots|u|n||||
5vz5|Tattered Sandals|u|n||||
5vzo|Quilted Cloak|ev|sn||||v^265574^Winklespark^1413^62.5^37.6^4068^h^s~r^470^4^Ratchet^f
5vzp|Rumpled Kilt|ev|sn||||v^265574^Winklespark^1413^62.5^37.6^5445^h^s~r^470^4^Ratchet^f
5vzq|Ratchet Wristwraps|ev|sn||||v^265574^Winklespark^1413^62.5^37.6^3442^h^s~r^470^4^Ratchet^f
5vzr|Defective Samophlange|ev|sn||||v^265574^Winklespark^1413^62.5^37.6^6581^h^s~r^470^5^Ratchet^f
5vzs|Barrens Basher|ev|sn||||v^265574^Winklespark^1413^62.5^37.6^16516^h^s~r^470^5^Ratchet^f
5vzt|Deckswabber's Mitts|e|n||||r^21^4^Booty Bay^f
5vzu|Sea Giant's Toe Ring|e|n||||r^21^4^Booty Bay^f
5vzv|Soggy Boots|e|n||||r^21^4^Booty Bay^f
5vzw|Booty Bay Bruiser's Buckshot|e|n||||r^21^5^Booty Bay^f
5vzx|Souvenir Sea Shell|e|n||||r^21^5^Booty Bay^f
5vzy|Reflective Wristguards|e|n||||r^369^4^Gadgetzan^f
5vzz|Sunburn Spaulders|e|n||||r^369^4^Gadgetzan^f
5w00|Sandstorm Cover|e|n||||r^369^4^Gadgetzan^f
5w01|Jhordy's Misplaced Screwdriver|e|n||||r^369^5^Gadgetzan^f
5w02|Suspicious Spare Part|e|n||||r^369^5^Gadgetzan^f
5w03|Steamwheedle Grips|e|n||||r^577^4^Everlook^f
5w04|Impractical Headwarmer|e|n||||r^577^4^Everlook^f
5w05|Substandard Belt Chain|e|n||||r^577^4^Everlook^f
5w06|Coldmetal Guard|e|n||||r^577^4^Everlook^f
5w4j|Sacristan Band|u|n||||
5w4k|Verger Greaves|u|n||||
5w4n|Neophyte's Wand|u|n||||
5w4o|Twilight Carver|u|n||||
5w4w|Curly's Chopper|u|n||||
5w4x|Hurley's Felling Axe|u|n||||
5w56|Gnollhide Tunic|u|n||||
5w57|Southern Watch Leggings|u|n||||
5w59|Bristle Hills Mystic Robe|u|n||||
5w5a|Bristlepelt Vest|u|n||||
5w5b|Gnoll Crusher Leggings|u|n||||
5w5c|Bloodsnout Striker|u|n||||
5w5e|Gnollblood Robe|u|n||||
5w5g|Bottle of Powderfuse Port|u|n||||
5w5n|Clobrok's Block Rock|u|n||||
5w5p|Lumber Luggers|u|n||||
5w5t|Brute Slayer Band|u|n||||
5w60|Premier Senior Sergeant's Insignia|u|n||||
5w61|Premier Master Sergeant's Insignia|u|n||||
5w7o|Twilight Mine Light|u|n||||
5w83|Bloodmaster's Ring|u|n||||
5w84|Bloodsport Band|u|n||||
5w85|Ogre Horn Ring|u|n||||
5w86|Twilight Overlord Drape|u|n||||
5w89|Farholde Bastion|u|n||||
5w8a|Cloak of the Cult|u|n||||
5w8b|Twilight Barrier|u|n||||
5wey|Stormforged Protector|u|n||||
5wez|Staff of the Deeproar|u|n||||
5wf1|Barkskin Scepter|u|n||||
5wf4|Deadwood Boomstick|u|n||||
5whq|Shallow Bindings|u|n||||
5wiy|Murkborn Girdle|u|n||||
5wj1|Premier Silken Sash|u|n||||
5wj2|Greaves of Mourning|u|n||||
5wj3|Blunderflame Bone Bow|u|n||||
5wj5|Cremation Longbow|u|n||||
5wno|Venomspew Gloves|c|n||||c^Tailoring^285^1297120^f
5wnp|Venomspew Cord|c|n||||c^Tailoring^290^1297121^f
5wnq|Venomspew Footpads|c|n||||c^Tailoring^295^1297122^f
5wnr|Swarmtender's Gloves|c|n||||c^Tailoring^285^1297123^f
5wns|Swarmtender's Cord|c|n||||c^Tailoring^290^1297124^f
5wnt|Swarmtender's Footpads|c|n||||c^Tailoring^295^1297125^f
5wnw|Bileblister Boots|c|n||||c^Leatherworking^295^1297128^f
5wnx|Hivethrasher's Claws|c|n||||c^Leatherworking^285^1297129^f
5wny|Hivethrasher's Girdle|c|n||||c^Leatherworking^290^1297130^f
5wnz|Hivethrasher's Boots|c|n||||c^Leatherworking^295^1297131^f
5wo0|Scalegut Clenchers|c|n||||c^Leatherworking^285^1297132^f
5wo1|Scalegut Belt|c|n||||c^Leatherworking^290^1297133^f
5wo2|Scalegut Treaders|c|n||||c^Leatherworking^295^1297134^f
5wo4|Broodwatcher's Belt|c|n||||c^Leatherworking^290^1297136^f
5wo5|Broodwatcher's Treaders|c|n||||c^Leatherworking^295^1297137^f
5wo6|Goregasher Grips|c|n||||c^Blacksmithing^285^1297138^f
5wo7|Goregasher Support|c|n||||c^Blacksmithing^290^1297139^f
5wo8|Goregasher Stompers|c|n||||c^Blacksmithing^295^1297140^f
5woa|Clutchlord's Support|c|n||||c^Blacksmithing^290^1297142^f
5wob|Clutchlord's Stompers|c|n||||c^Blacksmithing^295^1297143^f
5woe|Depleted Eye of Influence|u|n||||
5wov|Cleansed Ritual Kris|u|n||||
5wow|Purified Gnarlybark Staff|u|n||||
5wox|Bramblebark Barrier|u|n||||
5wpe|Whitemane's Plateau|u|n||||
5wpg|Summit Drape|u|n||||
5wpx|Stormwind Intelligence Seal|u|n||||
5wqa|Yaely's Mending Tool|u|n||||
5wqc|Glaive Thrower Muffler|u|n||||
5wqd|Copper Plated Pipe|u|n||||
5wqk|Ghansurok Hide Tunic|u|n||||
5wqn|Chimaera Wing Cape|u|n||||
5wqr|Rocket Pilot Gloves|u|n||||
5wr5|Rusty Propeller Blade|u|n||||
5wrc|Horn of Ve'han|u|n||||
5wrd|Hermit's Pauldron|u|n||||
5wre|Jereman's Bauble|u|n||||
5wrf|Wild Wristguards|u|n||||
5wrg|Ring of Nature's Cycles|u|n||||
5wrh|Ketharas' Linked Belt|u|n||||
5wtv|Wool-Stitched Waistband|u|n||||
5wtz|Highfeather Bangle|u|n||||
5wu0|Crowfeather Tunic|u|n||||
5wu4|Acolyte Blade|u|n||||
5wu5|Felflick's Fire Flicker|u|n||||
5wu6|Dirtwalker Pendant|u|n||||
5wxs|Ferocious Watcher's Signet|e|n|||LWatchersSignet|r^2819^4^The Watchers^f
5wxt|Brilliant Watcher's Signet|e|n|||LWatchersSignet|r^2819^4^The Watchers^f
5wxu|Vigilant Watcher's Signet|e|n|||LWatchersSignet|r^2819^4^The Watchers^f
5wxv|Stalwart Watcher's Signet|e|n|||LWatchersSignet|r^2819^4^The Watchers^f
5wxw|Ferocious Watcher's Signet|e|n|||LWatchersSignet|r^2819^5^The Watchers^f
5wxx|Brilliant Watcher's Signet|e|n|||LWatchersSignet|r^2819^5^The Watchers^f
5wxy|Vigilant Watcher's Signet|e|n|||LWatchersSignet|r^2819^5^The Watchers^f
5wxz|Stalwart Watcher's Signet|e|n|||LWatchersSignet|r^2819^5^The Watchers^f
5wy0|Ferocious Watcher's Signet|e|n|||LWatchersSignet|r^2819^6^The Watchers^f
5wy1|Brilliant Watcher's Signet|e|n|||LWatchersSignet|r^2819^6^The Watchers^f
5wy3|Vigilant Watcher's Signet|e|n|||LWatchersSignet|r^2819^6^The Watchers^f
5wy4|Stalwart Watcher's Signet|e|n|||LWatchersSignet|r^2819^6^The Watchers^f
5wy5|Ferocious Watcher's Signet|e|n|||LWatchersSignet|r^2819^7^The Watchers^f
5wy6|Brilliant Watcher's Signet|e|n|||LWatchersSignet|r^2819^7^The Watchers^f
5wy7|Vigilant Watcher's Signet|e|n|||LWatchersSignet|r^2819^7^The Watchers^f
5wy8|Stalwart Watcher's Signet|e|n|||LWatchersSignet|r^2819^7^The Watchers^f
5x1l|Scoutmaster's Eyepatch|u|n||||
5x48|Crawler's Clackers|e|n||||r^2827^4^Powderfuse^f
5x49|Misplaced Pantaloons|e|n||||r^2827^4^Powderfuse^f
5x4a|Disengagement Ring|e|n||||r^2827^4^Powderfuse^f
5x4b|Primitive Fishing Pole|e|n||||r^2827^5^Powderfuse^f
5x4c|Thrash's Trash|e|n||||r^2827^5^Powderfuse^f
5x6a|Surfer Shoes|u|n||||
5x7w|Abigail's Hope|u|n||||
5x7x|Sawyer Family Seal|u|n||||
5x7y|Hand-Hewn Buckler|u|n||||
5x7z|Polished Doomguard Edge|u|n||||
5x80|Yashiro's Spirit Bead|u|n||||
5x81|Thaelemaches' Talisman|u|n||||
5x82|Claw of Shalla'kal|u|n||||
5x83|Cured Staghide Leggings|u|n||||
5x84|Blademaster Hakama|u|n||||
5x85|Plaguecrusher Greaves|u|n||||
5xg7|Coldflame Saber|u|n||||
5xhp|Militia Bow|q|sn||||q^91777^Rare Books^^^s
5xhq|Junior's Hunting Bow|u|n||||
5xhy|Captain Sander's Lucky Shooter|u|n||||
5xhz|Harvester's Pestslayer|q|sn||||q^9^The Killing Fields^8^^s
5xio|Criminal's Pauldrons|q|sn||||q^549^WANTED: Syndicate Personnel^17^^s
5xiq|Gnoll Shackles|u|n||||
5xir|Wise Gauntlets|u|n||||
5xis|Trophy Belt|q|sn||||q^501^Elixir of Pain^21^^s
5xiv|Glistening Stompers|u|n||||
5xjm|Sunderbark Vigil|u|n||||
5xna|Chol'aruk's Trophy Sword|q|sn||||q^97003^Chol'aruk the Ravener^^^s
5xnb|Big Bad Basher|q|sn||||q^97003^Chol'aruk the Ravener^^^s
5xnc|Quilboar Toothpick|q|sn||||q^97003^Chol'aruk the Ravener^^^s
5xnd|Thornwoven Shield|q|sn||||q^97003^Chol'aruk the Ravener^^^s
5xnl|A Lesson in Destruction|u|n||||
5xnm|Salve and Salvation|Q|sn||||q^96800^Past Due^^^s
5xnn|Knucklebound Thimble|Q|sn||||q^96800^Past Due^^^s
5xno|Denric's Dog Tags|u|n||||
5xnp|Uncle's Heroism|u|n||||
5xnq|Youngster's First Bow|u|n||||
5xnr|Shimmerwine Shanker|u|n||||
5xns|Shimmerwine Spirits|u|n||||
5xq8|Cloudy Skyforged Chainmail|c|n||||c^Blacksmithing^60^1301421^f
5xq9|Cloudy Skyforged Wristguards|c|n||||c^Blacksmithing^50^1301422^f
5xqa|Cloudy Skyforged Gauntlets|c|n||||c^Blacksmithing^55^1301423^f
5xqb|Cloudy Skyforged Chain|c|n||||c^Blacksmithing^50^1301424^f
5xqc|Cloudy Skyforged Legguards|c|n||||c^Blacksmithing^60^1301425^f
5xqd|Cloudy Skyforged Greaves|c|n||||c^Blacksmithing^55^1301426^f
5xqe|Cloudy Gustwoven Harness|c|n||||c^Leatherworking^60^1301427^f
5xqf|Cloudy Gustwoven Bracers|c|n||||c^Leatherworking^50^1301428^f
5xqg|Cloudy Gustwoven Gloves|c|n||||c^Leatherworking^55^1301429^f
5xqh|Cloudy Gustwoven Belt|c|n||||c^Leatherworking^50^1301430^f
5xqi|Cloudy Gustwoven Trousers|c|n||||c^Leatherworking^60^1301431^f
5xqj|Cloudy Gustwoven Boots|c|n||||c^Leatherworking^55^1301432^f
5xqk|Cloudy Windraveled Jerkin|c|n||||c^Leatherworking^60^1301433^f
5xql|Cloudy Windraveled Armguards|c|n||||c^Leatherworking^50^1301434^f
5xqm|Cloudy Windraveled Mitts|c|n||||c^Leatherworking^55^1301435^f
5xqn|Cloudy Windraveled Strap|c|n||||c^Leatherworking^50^1301436^f
5xqo|Cloudy Windraveled Pants|c|n||||c^Leatherworking^60^1301437^f
5xqp|Cloudy Windraveled Footwraps|c|n||||c^Leatherworking^55^1301438^f
5xqq|Cloudy Stormsewn Vest|c|n||||c^Tailoring^60^1301439^f
5xqt|Cloudy Stormsewn Cord|c|n||||c^Tailoring^50^1301442^f
5xqu|Cloudy Stormsewn Leggings|c|n||||c^Tailoring^60^1301443^f
5xqw|Azure Skyforged Chainmail|c|n||||c^Blacksmithing^60^1301445^f
5xqx|Azure Skyforged Wristguards|c|n||||c^Blacksmithing^50^1301446^f
5xqy|Azure Skyforged Gauntlets|c|n||||c^Blacksmithing^55^1301447^f
5xqz|Azure Skyforged Chain|c|n||||c^Blacksmithing^50^1301448^f
5xr0|Azure Skyforged Legguards|c|n||||c^Blacksmithing^60^1301449^f
5xr1|Azure Skyforged Greaves|c|n||||c^Blacksmithing^55^1301450^f
5xr2|Azure Gustwoven Harness|c|n||||c^Leatherworking^60^1301451^f
5xr3|Azure Gustwoven Bracers|c|n||||c^Leatherworking^50^1301452^f
5xr4|Azure Gustwoven Gloves|c|n||||c^Leatherworking^55^1301453^f
5xr5|Azure Gustwoven Belt|c|n||||c^Leatherworking^50^1301454^f
5xr6|Azure Gustwoven Trousers|c|n||||c^Leatherworking^60^1301455^f
5xr7|Azure Gustwoven Boots|c|n||||c^Leatherworking^55^1301456^f
5xr8|Azure Windraveled Jerkin|c|n||||c^Leatherworking^60^1301457^f
5xr9|Azure Windraveled Armguards|c|n||||c^Leatherworking^50^1301458^f
5xra|Azure Windraveled Mitts|c|n||||c^Leatherworking^55^1301459^f
5xrd|Azure Windraveled Footwraps|c|n||||c^Leatherworking^55^1301462^f
5xrh|Azure Stormsewn Cord|c|n||||c^Tailoring^50^1301466^f
5xri|Azure Stormsewn Leggings|c|n||||c^Tailoring^60^1301468^f
5xrl|Cloudy Skyforged Pauldrons|c|n||||c^Blacksmithing^175^1301527^f
5xrm|Cloudy Gustwoven Hood|c|n||||c^Leatherworking^175^1301528^f
5xrn|Cloudy Gustwoven Spaulders|c|n||||c^Leatherworking^175^1301529^f
5xrp|Cloudy Windraveled Drapes|c|n||||c^Leatherworking^175^1301531^f
5xrr|Cloudy Stormsewn Epaulets|c|n||||c^Tailoring^175^1301533^f
5xrt|Azure Skyforged Pauldrons|c|n||||c^Blacksmithing^175^1301535^f
5xru|Azure Gustwoven Hood|c|n||||c^Leatherworking^175^1301536^f
5xrv|Azure Gustwoven Spaulders|c|n||||c^Leatherworking^175^1301537^f
5xrx|Azure Windraveled Drapes|c|n||||c^Leatherworking^175^1301539^f
5xrz|Azure Stormsewn Epaulets|c|n||||c^Tailoring^175^1301541^f
5xs0|Al'Aketh Chainmail|u|n||||
5xs1|Al'Aketh Wristguards|u|n||||
5xs2|Al'Aketh Gauntlets|u|n||||
5xs3|Al'Aketh Chain|u|n||||
5xs4|Al'Aketh Legguards|u|n||||
5xs5|Al'Aketh Greaves|u|n||||
5xs6|Al'Aketh Harness|u|n||||
5xs7|Al'Aketh Bracers|u|n||||
5xs8|Al'Aketh Gloves|u|n||||
5xs9|Al'Aketh Belt|u|n||||
5xsa|Al'Aketh Trousers|u|n||||
5xsb|Al'Aketh Boots|u|n||||
5xsc|Al'Aketh Jerkin|u|n||||
5xsd|Al'Aketh Armguards|u|n||||
5xse|Al'Aketh Mitts|u|n||||
5xsf|Al'Aketh Strap|u|n||||
5xsg|Al'Aketh Pants|u|n||||
5xsh|Al'Aketh Footwraps|u|n||||
5xsi|Al'Aketh Vestments|u|n||||
5xsk|Al'Aketh Handwraps|u|n||||
5xsl|Al'Aketh Cord|u|n||||
5xsm|Al'Aketh Leggings|u|n||||
5xsn|Al'Aketh Shoes|u|n||||
5xso|Zephrali Chainmail|u|n||||
5xsp|Zephrali Wristguards|u|n||||
5xsq|Zephrali Gauntlets|u|n||||
5xsr|Zephrali Chain|u|n||||
5xst|Zephrali Greaves|u|n||||
5xsu|Zephrali Harness|v|sn||||v^271483^Ergaan Eastwind^2521^59.6^75.9^860^^s
5xsv|Zephrali Bracers|v|sn||||v^271483^Ergaan Eastwind^2521^59.6^75.9^435^^s
5xsw|Zephrali Gloves|v|sn||||v^271483^Ergaan Eastwind^2521^59.6^75.9^437^^s
5xsx|Zephrali Belt|v|sn||||v^271483^Ergaan Eastwind^2521^59.6^75.9^438^^s
5xsy|Zephrali Trousers|v|sn||||v^271483^Ergaan Eastwind^2521^59.6^75.9^873^^s
5xsz|Zephrali Boots|v|sn||||v^271483^Ergaan Eastwind^2521^59.6^75.9^659^^s
5xt0|Zephrali Jerkin|v|sn||||v^271483^Ergaan Eastwind^2521^59.6^75.9^880^^s
5xt1|Zephrali Armguards|v|sn||||v^271483^Ergaan Eastwind^2521^59.6^75.9^445^^s
5xt2|Zephrali Mitts|v|sn||||v^271483^Ergaan Eastwind^2521^59.6^75.9^458^^s
5xt3|Zephrali Strap|v|sn||||v^271483^Ergaan Eastwind^2521^59.6^75.9^460^^s
5xt4|Zephrali Pants|v|sn||||v^271483^Ergaan Eastwind^2521^59.6^75.9^916^^s
5xt5|Zephrali Footwraps|v|sn||||v^271483^Ergaan Eastwind^2521^59.6^75.9^691^^s
5xt7|Zephrali Cuffs|u|n||||
5xt8|Zephrali Handwraps|u|n||||
5xt9|Zephrali Cord|u|n||||
5xta|Zephrali Leggings|u|n||||
5xtb|Zephrali Shoes|u|n||||
5xtc|Zephrali Greatsword|v|sn||||v^271465^Falfaan Halfwind^2521^59.4^75.8^2135^^s
5xte|Zephrali Smasher|v|sn||||v^271465^Falfaan Halfwind^2521^59.4^75.8^2151^^s
5xtf|Zephrali Bludgeon|v|sn||||v^271465^Falfaan Halfwind^2521^59.4^75.8^1727^^s
5xtg|Zephrali Knife|v|sn||||v^271465^Falfaan Halfwind^2521^59.4^75.8^1734^^s
5xth|Zephrali Greatstaff|v|sn||||v^271465^Falfaan Halfwind^2521^59.4^75.8^2176^^s
5xti|Zephrali Bow|v|sn||||v^271465^Falfaan Halfwind^2521^59.4^75.8^1345^^s
5xtj|Zephrali Crossbow|v|sn||||v^271465^Falfaan Halfwind^2521^59.4^75.8^1350^^s
5xw2|Artifact Seeker's Pendant|u|n||||
5xw3|Scholarly Pendant|u|sn||||
5xw4|Erudite's Amulet|u|sn||||
5xw5|Cloak of the Divine Storm|u|n||||
5xw6|Brilliant Cloak|u|n||||
5xw7|Well-Weathered Cloak|u|n||||
5xw8|Determined Band|u|n||||
5xw9|Ponderous Loop|u|n||||
5xwa|Pyrewood Signet Ring|u|n||||
5xwb|Dudd's Thinkin' Cap|u|n||||
5xwc|Soulwoven Epaulets|u|n||||
5xwd|Dro'zem's Tunic|u|n||||
5xwe|Crusty Cuffs|u|n||||
5xwf|Plain Handwraps|u|n||||
5xwg|Cross-Stitched Cord|u|n||||
5xwh|Patchy Pants|u|n||||
5xwi|Incinerator's Boots|q|sn||||q^95999^WANTED: Incinerator Gar'im^^^s
5xwj|Solomon's Comfortable Hat|u|n||||
5xwk|Shabby Spaulders|u|n||||
5xwl|Grimtotem Naturalist's Tunic|u|n||||
5xwm|War Painted Cuffs|u|n||||
5xwn|Traveled Gloves|u|n||||
5xwo|Kurzen Headshrinker's Cinch|u|n||||
5xwp|Feathered Leggings|u|n||||
5xwq|Disjointed Shoes|q|sn||||q^95999^WANTED: Incinerator Gar'im^^^s
5xwr|Magistrate's Chain Hood|u|n||||
5xws|Snakescale Pauldrons|u|n||||
5xwu|Grayscale Bracers|u|n||||
5xwv|Conductive Gauntlets|u|n||||
5xww|Jailer's Discarded Chain|u|n||||
5xwx|Clinking Mail Legguards|u|n||||
5xwy|Alacritous Treads|q|sn||||q^95999^WANTED: Incinerator Gar'im^^^s
5xwz|Soldier's Visor|u|n||||
5xx0|Pauldrons of Vindication|u|n||||
5xx1|Inspiring Chestplate|u|n||||
5xx2|Shimmering Bracers|u|n||||
5xx3|Bejeweled Punchers|u|n||||
5xx4|Gilded Plate Belt|u|n||||
5xx5|Double-Plated Legplates|u|n||||
5xx6|Silverrune Greaves|u|n||||
5xx7|Silverbane Slicer|u|n||||
5xx8|Guardian's Maulers|u|n||||
5xx9|Swampspine Crusher|u|n||||
5xxa|Ruby-Adorned Blade|u|n||||
5xxb|Mug of Muddled Memories|u|n||||
5xxc|Notched Ritual Rib|u|n||||
5xxe|The Skullcracker|u|n||||
5xxh|Staff of Brutal Cunning|u|n||||
5xxi|Truthseeker's Bow|u|n||||
5xxj|Misplaced Shooter|u|n||||
5xxk|Dudd's Second-Favorite Wand|u|n||||
5xxl|Raven Hill Crest|u|n||||
5xxm|Crest of Elucidation|u|n||||
5xxn|Fermented Restoration Potion|u|n||||
5xxo|Researcher's Night Light|u|n||||
5xye|Encroacher's Claim|q|sn||||q^97250^Wrongly Blamed, Justly Corrected^^^s
5xyg|Pathfinder's Clearway|q|sn||||q^97250^Wrongly Blamed, Justly Corrected^^^s
5xyh|Traveler's Shawl|q|sn||||q^97250^Wrongly Blamed, Justly Corrected^^^s
5y4q|Aka'rai's Tattered Vestments|u|n||||
5y4r|Dagger of Deals|u|n||||
5y94|Rough Copper Chain Boots|c|n||||c^Blacksmithing^50^1302598^f
5yhn|Mauler's Mutton|u|n||||
5yho|Ogre Bone|u|n||||
5yhp|Souvenir Ogre Tooth|u|n||||
5yhw|Hoof-Holstered Blade|u|n||||
5yia|Valley Cosh|u|n||||
5yip|Refunded Ring|u|n||||
5yiq|Renegotiated Ring|u|n||||
5yir|Apology Ring|u|n||||
5yml|Premier Grand Marshal's Tome of Restoration|u|n||||
5ymm|Premier Grand Marshal's Tome of Power|u|n||||
5yv8|Premier Grand Marshal's Barricade|u|n||||
5yv9|Premier High Warlord's Barricade|u|n||||
5zgu|Torch of Light|c|n||||c^Enchanting^300^1306520^f
5zh0|Elderwild Waistcord|c|n||||c^Leatherworking^300^1306526^f
5zh1|Outlaw's Collar|c|n||||c^Leatherworking^300^1306527^f
5zh2|Elderwild Pants|c|n||||c^Leatherworking^300^1306528^f
5zh3|Eternity Pauldrons|c|n||||c^Leatherworking^300^1306529^f
5zh4|Tranquil Wristguards|c|n||||c^Leatherworking^300^1306530^f
5zh5|Mourning Handguards|c|n||||c^Leatherworking^300^1306531^f
5zh7|Ironwood Blade|c|n||||c^Blacksmithing^300^1306533^f
5zh8|Forest Defender's Axe|c|n||||c^Blacksmithing^300^1306534^f
5zh9|Greenhammer|c|n||||c^Blacksmithing^300^1306535^f
5zha|Evergreen Shield|c|n||||c^Blacksmithing^300^1306536^f
5zhb|Depleted Thorium Sabatons|c|n||||c^Blacksmithing^300^1306537^f
5zhc|Heavy Thorium Gauntlets|c|n||||c^Blacksmithing^300^1306538^f
5zhd|Azerothium Legplates|c|n||||c^Blacksmithing^300^1306539^f
5zhe|Robes of Fiery Devastation|c|n||||c^Tailoring^300^1306540^f
5zhf|Mana-infused Cord|c|n||||c^Tailoring^300^1306541^f
5zhg|Rime-encrusted Boots|c|n||||c^Tailoring^300^1306542^f
5zhh|Fel Cape|c|n||||c^Tailoring^300^1306543^f
5zhi|Cloak of Earth and Sky|c|n||||c^Tailoring^300^1306544^f
5zhl|Hyper Deluxe Sniper Rifle Mk XVII|c|n||||c^Engineering^300^1306547^f
5zks|Brewer's Bracers|u|n||||
5zkv|Taurajo Headband|q|sn||||q^98093^Field to Clear^^^s
5zkw|Glimmer|u|n||||
5zkx|Frostfall|u|n||||
5zx7|Vine Pruner's Cloak|Q|sn||||q^92456^A Green Sample^^^s
5zx8|Thorn Protecting Girdle|Q|sn||||q^92456^A Green Sample^^^s
5zx9|Fallen Guard's Pendant|Q|sn||||q^92457^Starving Arcane^^^s
5zxa|Arcane Infused Rod|Q|sn||||q^92457^Starving Arcane^^^s
5zxb|Spellguard Pauldrons|Q|sn||||q^92458^Heart of Disruption^^^s
5zxc|Renewing Footpads|Q|sn||||q^92458^Heart of Disruption^^^s
5zxd|Defender of Dalaran|Q|sn||||q^92458^Heart of Disruption^^^s
5zxe|Battle Spaulders|u|n||||
5zxf|Enchanted Sandals|u|n||||
5zxg|Striking Staff|u|n||||
5zxh|Solid Gold Band|Q|sn||||q^96987^Opportunistic Education^^^s
5zxi|Larcenist's Belt|Q|sn||||q^96987^Opportunistic Education^^^s
5zxj|Unstable Power Core|Q|sn||||q^96988^Source of Power^^^s
5zxk|Construct Cloak|Q|sn||||q^96988^Source of Power^^^s
5zxl|Runebound Gloves|Q|sn||||q^92489^Power Overwhelming^^^s
5zy0|Monstrous Cleaver|q|sn||||q^97290^Unending Torment^^^s
5zy1|Grave Shroud|q|sn||||q^97290^Unending Torment^^^s
5zy3|Slain Baron's Signet|q|sn||||q^97290^Unending Torment^^^s
5zy4|Duty Bound Leggings|u|n||||
5zy5|Remembrance Armor|u|n||||
5zy6|Tarnished Locket|u|n||||
5zya|The Stitcher|Q|sn||||q^92421^Light's Justice^^^s
5zyb|Spare Part Bindings|Q|sn||||q^92421^Light's Justice^^^s
5zyc|Plaguefang|Q|sn||||q^95216^The New Plague^^^s
5zyd|Blight Gloves|Q|sn||||q^95216^The New Plague^^^s
5zyo|Tidesoaked Leggings|u|n||||
5zyp|Naga Priestess's Mantle|u|n||||
5zyu|Calibrated Blunderbuss|Q|sn||||q^96393^Old Ironforge Incursion^^^s
5zyv|Ironforge Greathammer|Q|sn||||q^96393^Old Ironforge Incursion^^^s
5zyw|Deepblaze|Q|sn||||q^96393^Old Ironforge Incursion^^^s
5zyx|Dusty Belt|q|sn||||q^96394^The Restless Dead^^^s
5zyy|Dwarven Tome|q|sn||||q^96403^Important Heirlooms^^^s
5zyz|Catacomb Cloak|u|n||||
5zz0|Deepgrave Trousers|u|n||||
604f|Cryptwalker Bracers|q|sn||||q^96394^The Restless Dead^^^s
604g|Tomb Robber's Gloves|q|sn||||q^96403^Important Heirlooms^^^s
60a8|Invisible Dagger|u|n||||
60ah|Dented Goggles|c|n||||c^Engineering^200^1308186^f
60ik|Rage of the Storm|u|n||||
60il|Tidebringer's Claw|u|n||||
60in|Lightning's Grasp|u|n||||
60l4|Elementalist's Guard|u|n||||
60o5|Serrated Raptor Claw|Q|sn||||q^95697^Changing Tastes^^^s
610i|Forest Oracle's Cloak|q|sn||||q^940^Teldrassil^6^^s
610j|Courier's Wristguards|u|n||||
610k|Harpy Claw Ring|q|sn||||q^86576^Bloodfury Trinkets^^^s
610l|Mountaineer's Greataxe|u|n||||
610m|Invader's Mace|u|n||||
610o|Repurposed Hair Band|u|n||||
610p|Daggerfang's Daggerfang|u|n||||
610q|Essene's Hope|u|n||||
610r|Stonard Stompers|u|n||||
610s|Ancestral Waistcord|u|n||||
610t|Crystal-flecked Cord|u|n||||
610u|Crystal-flecked Waistguard|u|n||||
610v|Wicked Lich's Finger|u|n||||
610w|Ghastly Bow|u|n||||
610x|Roadwatcher's Confidence|q|sn||||q^95981^Watching the Roads^^^s
610y|Furred Belt|u|n||||
610z|Raptorscale Pants|q|sn||||q^97223^Bloodtalon Matriarch^5^^s
6110|Depleted Ritual Band|q|sn||||q^97225^Forgotten Loa Idols^4^^s
6112|Thra's Friendship Bracelet|q|sn||||q^97326^Rocks to Rests^^^s
6113|Puk's Friendship Bracelet|q|sn||||q^97326^Rocks to Rests^^^s
6114|Brog's Friendship Bracelet|q|sn||||q^97326^Rocks to Rests^^^s
6115|Migi's Friendship Bracelet|q|sn||||q^97326^Rocks to Rests^^^s
6116|Makeshift Stormcaller|q|sn||||q^97282^Stormy Potential^^^s
6117|Mantle of Scaleslaying|u|n||||
6118|Pauldrons of Scaleslaying|u|n||||
6119|Shoulders of Scaleslaying|u|n||||
611a|Shoulderplates of Scaleslaying|u|n||||
611d|Frost's Whisper Pendant|u|n||||
611f|Patchwing Pants|q|sn||||q^97558^Hides for the Forsaken^^^s
611g|Howlhide Vest|q|sn||||q^97558^Hides for the Forsaken^^^s
611h|Finscale Soles|q|sn||||q^97558^Hides for the Forsaken^^^s
611i|High Order Pendant|u|n||||
611j|Windshaper Pendant|u|n||||
611k|Shen'dorei Signet|u|n||||
611l|Swordfeather Cloak|q|sn||||q^98025^WANTED: Jai'vhanel^^^s
611m|Replica Crescent Necklace|q|sn||||q^98027^Gleaming Crescent Necklace^^^s
611n|Mathystra Channeling Orb|u|n||||
611o|Onu's Patience|u|n||||
611p|Weathered Deathstalker's Blade|u|n||||
611q|Expended Apothecary Vial|u|n||||
611r|Pelt Pants|u|n||||
611s|Knight's Lance|q|sn||||q^98191^A Friend of the Family^^^s
611t|Royal Dagger|q|sn||||q^98191^A Friend of the Family^^^s
611u|Ti'ik's Tattered Trousers|u|n||||
611v|Profane Ritual Robes|u|n||||
611x|Sacrificial Shackles|u|n||||
611y|Whelpscale Necklace|u|n||||
611z|Bleached Scale Vest|u|n||||
6120|Prospector's Signet|q|sn||||q^98216^Understanding Our Present^^^s
6121|Excavation Cloak|q|sn||||q^98216^Understanding Our Present^^^s
6122|Flamescarred Spellbook|q|sn||||q^98223^Old Habits^^^s
6123|Dragonmaw Buckler|q|sn||||q^98223^Old Habits^^^s
6125|Razormaw Shorts|q|sn||||q^98283^Carnage^^^s
6126|Carnage Trousers|q|sn||||q^98283^Carnage^^^s
6128|Fallen Dragon's Scepter|q|sn||||q^98297^Stopping the Cycle^^^s
6129|Trusty Sword|q|sn||||q^98297^Stopping the Cycle^^^s
612a|Subdued Dragon's Fang|q|sn||||q^98297^Stopping the Cycle^^^s
612b|Foulfur Gloves|u|n||||
612c|Glimmerchain Trousers|u|n||||
612d|Redstone Boots|u|n||||
612e|Bouquet of Auberdine Flowers|q|sn||||q^98208^Bloom of the Heavens^^^s
612f|Golem War Cloak|q|sn||||q^98310^Gleaning Our Future^^^s
612g|Rune-Etched Ring|q|sn||||q^98310^Gleaning Our Future^^^s
612h|Giantstone Medallion|q|sn||||q^98310^Gleaning Our Future^^^s
612i|Frosthowl's Footwarmers|q|sn||||q^98326^Frosthowl^^^s
612j|Spirit-buckle Belt|u|n||||
612k|Sailing Tunic|u|n||||
618i|Matriarch's Mantle|u|n||||
618j|Bear Fur Cowl|u|n||||
619u|Elderwild Construction Hammer|u|n||||
619v|Greatflank Flayer|u|n||||
619w|Nature's Cull|u|n||||
61a8|Wail of Death|u|n||||
61b0|Blade of Bandarion|u|n||||
61b6|Field Researcher's Loop|u|sn||||
61b7|Philanthropist's Ring|u|sn||||
61b8|Museum Keeper's Chain|u|n||||
61b9|Antique Bulwark|u|n||||
61bk|Gul'gash's Greathammer|u|n||||
61bt|Corrupted Riverglades Pendant|u|n||||
61bw|Iron Star|u|n||||
61bx|Well-Worn Pitchfork|u|n||||
61c1|Twilight Forgehammer|u|n||||
61c9|Loop of Sacrifice|q|sn||||q^95885^The Offering of Blood^^^s
61cb|Lakeshire Firefighter's Headband|u|n||||
61cc|Rog'mar Trainee Shoulderpads|u|n||||
61cl|Restored Cloth Helm|u|n||||
61cm|Restored Cloth Shoulders|u|n||||
61cn|Restored Cloth Vest|u|n||||
61co|Restored Cloth Bracers|u|n||||
61cp|Restored Cloth Handwraps|u|n||||
61cq|Restored Cloth Belt|u|n||||
61cr|Restored Cloth Pants|u|n||||
61ct|Restored Leather Hood|u|n||||
61cu|Restored Leather Spaulders|u|n||||
61cw|Restored Leather Wristcuffs|u|n||||
61cx|Restored Leather Gloves|u|n||||
61cy|Restored Leather Strap|u|n||||
61cz|Restored Leather Chaps|u|n||||
61d0|Restored Leather Boots|u|n||||
61d1|Restored Mail Coif|u|n||||
61d2|Restored Mail Shoulderguards|u|n||||
61d3|Restored Mail Chestpiece|u|n||||
61d4|Restored Mail Wristguards|u|n||||
61d5|Restored Mail Clasps|u|n||||
61d6|Restored Mail Belt|u|n||||
61d7|Restored Mail Legguards|u|n||||
61d8|Restored Mail Boots|u|n||||
61dh|Restored Cloak|u|n||||
61dw|Restored Bow|u|n||||
61dx|Restored Wand|u|n||||
61ea|Kurmokk's Pelt|u|n||||
61ee|Murloc Oracle's Dagger|u|n||||
61ib|Fishscale Hauberk|u|n||||
61ig|Surveyor's Gloves|u|n||||
61j9|Whelpfire Wand|u|n||||
61ja|Bound Bracers|u|n||||
61jb|Boulderheart Band|u|n||||
61l5|Gnoll Hide Boots|u|n||||
61lj|Emerald Watcher's Dreamstaff|r|n||||d^169^^0^1^c
61lk|Wyrmak's Cuirass|r|n||||d^169^^0^1^c
61lm|Tusk of Grunter|u|nU||||
61lo|Corsepickers|u|n||||
61lv|Braided Seer Stones|u|n||||
61lz|Clack's Claw|u|n||||
61m5|Reaver's Repeater|u|n||||
61mo|Ragged Dark Iron Cuffs|u|n||||
61n4|Tim's Lost Rib|u|n||||
61na|Gruklash's Basher|u|n||||
61ne|Ogre Sorcerer Belt|u|n||||
61nk|Flame Seared Signet|u|n||||
61ns|Heart of Smoldar|u|n||||
61o1|Unbreakable Golem Grips|u|n||||
61t7|Malignant Root|u|n||||
61t8|Webwood Slicer|q|sn||||q^98403^Twisted Hatred^^^s
620m|Combat Tuning Wrench|u|n||||
620n|Golem Fist|u|nr||||
620r|Shadowforge Shield|u|n||||
620t|Broken Tooth's Flayed Hide|u|n||||
620u|Firebird's Cowl|u|n||||
620w|Earth-Infused Rockguards|u|n||||
620x|Siegebreaker's Blaster|u|n||||
6230|Silkspun Gloves|u|n||||
6233|Emogg's "Crusher"|u|n||||
6236|Feather-Stitched Moccasins|u|n||||
623h|Dissolved Locket|u|n||||
623i|Gnawed Bone|u|nU||||
623j|Bog Pickers|u|n||||
623m|Dragonmaw Battle Shroud|u|n||||
624u|Molok's Masher|u|n||||
624v|Needletooth's Needletooth|u|nr||||
624w|Shadow Council Apprentice's Mantle|u|n||||
624y|Rotting Meat|u|n||||
6252|Dun Garok Rifle|u|n||||
6253|Naga Maiden's Gown|u|n||||
6255|Bloodstained Pants|u|n||||
6258|Imbued Scaled Cuffs|u|n||||
6259|Durable Bearhide Pauldrons|u|n||||
625d|Gnoll Shaman's Staff|u|n||||
62k5|Denmother's Hide|u|n||||
62k6|Heart of Alterac|u|n||||
62k7|Syndicate Executioner's Slicer|u|n||||
62kb|Bearhide Vicegrips|u|n||||
62n5|Gorefang's Runners|u|n||||
62pw|Decaying Flesh Belt|u|n||||
62py|Bayne's Bite|u|n||||
62q7|Fellicent's Bindings|u|n||||
62q9|Batwing Bindings|u|n||||
62qg|Cracked Carapace Hauberk|u|n||||
62s9|Moonchaser's Headdress|u|n||||
6361|Ironback Signet|u|n||||
636n|Witherbark Hatecleaver|u|n||||
636o|Cliffbreaker's Pauldrons|u|n||||
636p|Crown of Maldazzar|u|n||||
636r|Rusted Family Memento|u|n||||
637o|Horseman's Unyielding Shroud|u|n||||
637p|Blade of Senseless Slaughter|u|n||||
637q|Signet of the Soulless Rider|u|n||||
6396|Unmovable Sabatons|u|n||||
639h|Duskstalker's Hide|u|n||||
639i|Gnarlpine War Staff|u|n||||
639j|Blackmoss Robes|u|n||||
639p|Impcaster's Staff|u|n||||
639q|Serrated Shadowclaw|u|n||||
639t|Sinslayer's Smasher|u|n||||
63a1|Greymist Gauntlets|u|n||||
63a3|Crazed Firecaller's Cloak|u|n||||
63a8|Furbolg Loincloth|u|n||||
63a9|Moongazer's Wand|u|nr||||
63b8|Vial of Vile Liquid|u|n||||
63ba|Rage Paw|u|n||||
63bx|Eternally Frozen Band|u|nU||||
63c1|Icesworn Decapitator|u|n||||
63c5|Magically Fortified Legguards|u|n||||
63c6|Howling Hide|u|n||||
63cq|Queen Guard's Royal Seal|u|n||||
63ct|Feardred's Gauntlets|u|n||||
63cu|Battleguard Captain's Sticker|u|n||||
63cv|Felweaver's Staff|R|sn||||R^5822^Felweaver Scornn^0^s
63ds|Flayed Scorpid Bands|u|n||||
63dt|Centaur Raider's Axe|u|n||||
63du|Invading Marine's Shield|u|n||||
63dv|Geolord's Mitts|u|n||||
63ex|Venture Company Legguards|u|n||||
63fi|Budding Leaf Belt|u|n||||
63fj|Faerie Dragon's Skin|u|n||||
63fm|Whipfang's Skinsearer|u|n||||
63fz|Seared Grove Shoulderpads|u|n||||
63g0|Foreman's Helm|u|n||||
63g1|Sorrow's Shroud|u|n||||
63g3|Shapeshifting Sentinel's Strides|u|n||||
63hn|Dendweller's Hammer|u|n||||
63kt|Ursol'lok's Paws|u|n||||
63ku|Snapped Branch Wand|u|n||||
63l7|Ankle Slicers|u|n||||
63nf|Flame Seared Sword|u|n||||
63ng|Apothecary's Concoction|u|n||||
63o8|Carved Furbolg Tooth|u|n||||
63o9|Arcane Charged Robes|u|n||||
63ob|Still Water Band|u|n||||
63oc|Den Guardian's Crusher|u|n||||
63oe|Slimy Sword|u|n||||
63og|Frostbitten Staff|u|n||||
63oj|Basilisk Sinew Belt|u|n||||
63oo|Hyena Hide Helm|u|n||||
63op|Accursed Legguards|u|n||||
63or|First Mate Band|u|n||||
63os|Band of the Better Half|u|n||||
63ot|Royal Satyr Slicer|u|n||||
63sy|Windserpent Scaled Cloak|u|n||||
63xv|Snarling Fang|u|n||||
63z9|Ripscaled Cuffs|u|n||||
63zb|Twitching Eye|u|n||||
63zg|Serrated Raptor Teeth|u|n||||
63zi|Darkmist Dirk|u|n||||
63zj|Marsh Serpent's Scales|u|n||||
641l|Nature's Sting Legguards|u|n||||
641y|Wyvern Heart Band|u|n||||
641z|Banished Centaur's Pauldrons|u|n||||
6420|Kobold Firestarter|u|n||||
642k|Foulmountain Family Hammer|u|n||||
6430|Mystmane's Pelt|u|n||||
643a|Chipped Spellstaff|u|n||||
643b|Explorer's Shortsword|u|n||||
643p|Skyseer's Gloves|u|n||||
643q|Scout Ranger's Gloves|u|n||||
643r|Thendal Watcher's Gloves|w|sn||||m^259398^NPC 259398^0^s
6440|Skyseer's Slippers|u|n||||
6444|Scout Ranger's Boots|u|n||||
6445|Thendal Watcher's Boots|u|n||||
6449|Scout Ranger's Belt|u|n||||
644a|Thendal Watcher's Belt|u|n||||
644b|Satchel of Copper Bombs|c|nU||||c^Engineering^85^1317958^f
644c|Satchel of Bronze Bombs|c|nU||||c^Engineering^165^1317959^f
644d|Satchel of Iron Bombs|c|nU||||c^Engineering^230^1317960^f
644e|Satchel of Dark Iron Bombs|c|n||||c^Engineering^285^1317961^f
644f|Cracked Blacksmith Hammer|c|n||||c^Blacksmithing^110^1317962^f
644g|Mithril Blacksmith Hammer|c|n||||c^Blacksmithing^195^1317963^f
644h|Arcanite Blacksmith Hammer|c|n||||c^Blacksmithing^270^1317964^f
644s|Dull Sawblade|u|n||||
645s|Taurenbane's Family Cleaver|u|n||||
645t|Raptor Hide Cloak|u|n||||
645u|Signet of the Zhevra|R|sn||||R^5831^Swiftmane^0^s
645v|Mark of the Pack Leader|u|n||||
645w|Puncturing Spear|u|n||||
6462|Kodohide Legguards|u|n||||
6463|Centaur War Chain|u|n||||
6468|Guard Captain's Barrier|u|n||||
6469|Feather Padded Treads|u|n||||
646a|Alliance Outrunner's Sword|u|n||||
646b|Alliance Outrunner Bow|u|n||||
646c|Alliance Outrunner Healing Rod|u|n||||
646e|Alliance Outrunner Staff|u|n||||
646f|Foreman's Enforcers|u|n||||
650a|Honorbound Cloak|q|sn||||q^93739^Exploring the Horde^^^s
650b|Cloak of the Honored Guest|u|n||||
6539|Cheetah Hide Grips|u|n||||
653a|Silithid Piercer|u|n||||
653b|Sludge-Stained Band|u|n||||
653c|Heckler's Hide|u|n||||
653d|Thunderstomp's Horn|u|nr||||
653g|The Skyblade|u|n||||
653h|Bael'dun Tankard|u|n||||
653u|Warleader's Signet|u|n||||
653w|Winds of Tanaris|u|n||||
6549|Firebird Leggings|u|n||||
654c|Ogre Casting Cloak|u|n||||
6567|Ambassador's Bloodrobes|u|n||||
6568|High Priestess's Kilt|u|n||||
658o|Kolkar Hammer|q|sn||||q^99123^Lost in the Shadows^^^s
658p|Kolkar Bow|q|sn||||q^99123^Lost in the Shadows^^^s
658q|Pristine Orcish Dagger|u|n||||
658r|Aggor's Refitted Belt|u|n||||
658t|Fightin' Fish|q|sn||||q^99130^An Enticing Offer^^^s
658v|Sentinel's Slasher|u|n||||
6590|Proud Brave's Guard|u|n||||
6591|Centaur Skull Basher|u|n||||
6592|Riptear's Cleaver|u|n||||
6593|Riptear's Spare Arm|u|n||||
6594|Thrice-Stitched Flesh|u|n||||
6595|Furlfeather Ring|w|sn||||m^276194^NPC 276194^0^s
6596|Shal'ma's Shawl|u|n||||
6598|Bristlebark Bow|u|n||||
6599|Wrathroot|u|n||||
659a|Wisesight Wand|u|n||||
659b|Ghostfang's Steps|u|n||||
659c|Igleggings|u|n||||
659d|Snarlsnout Shooter|u|n||||
659e|Ukta's Conduit|u|n||||
659f|Helm Splitter|u|n||||
65fl|Sword of the Fallen|dw|sn||||d^2999^Bjork^33.33^0^s~d^2999^Rath'mael^25^0^s
65fm|Rotmender's Garb|w|sn||||m^250626^NPC 250626^4.35^s~m^250656^NPC 250656^0^s
65fn|Rotmender's Gloves|w|sn||||m^250622^NPC 250622^5^s
65fo|Rotmender's Sash|w|sn||||m^250618^NPC 250618^2.78^s
65fp|Death Bindings|w|sn||||m^250626^NPC 250626^4.35^s
65fq|Unearthed Barrier|d|n||||d^48^^0^0^c
65fr|Ancient Cleaver|d|n||||d^48^^0^0^c
65fs|Mark of the Marsh|d|n||||d^48^^0^0^c
65ft|Thicket Bindings|d|n||||d^48^^0^0^c
65fu|Abandoned Leggings|d|n||||d^48^^0^0^c
65fv|Violet Sorcerer's Sandals|d|n||||d^48^^0^0^c
65fw|Violet Sorcerer's Leggings|d|n||||d^48^^0^0^c
65fx|Violet Sorcerer's Wraps|d|n||||d^48^^0^0^c
65fy|Arcane Remnant Leggings|d|n||||d^48^^0^0^c
65fz|Roused Nature Footwraps|d|n||||d^48^^0^0^c
65g0|Construct's Grips|d|n||||d^48^^0^0^c
65g1|Suffused Bindings|d|n||||d^48^^0^0^c
65g2|Tattered Kirin Tor Cloak|d|n||||d^48^^0^0^c
65g3|Guardian's Emblem|d|n||||d^48^^0^0^c
65g4|City Guard's Tarnished Blade|d|n||||d^48^^0^0^c
65hv|Footman's Pocketknife|u|n||||
65hx|Cheese Knife|q|sn||||q^224^In Defense of the King's Lands^10^^s
65hy|Darnassian Knife|u|n||||
65hz|Serrated Knife|v|sn||||v^257422^Railee Thriceforged^2521^58.9^75.5^3612^^s
65i0|Beastculler's Knife|u|n||||
65i3|Dragonmaw Skinflayer|u|n||||
65i4|Excavated Dagger|u|n||||
65i5|Yeti Skinner|u|n||||
65i6|Skypierce Javelin|u|n||||
66hy|Gnoll Greataxe|u|n||||
66uv|Arcanist Crown|u|n||||
66uw|Arcanist Leggings|u|n||||
66ux|Arcanist Mantle|w|sn||||m^1547^Decrepit Darkhound^0^s
66uy|Arcanist Robes|u|n||||
66uz|Arcanist Bindings|u|n||||
66v0|Arcanist Boots|w|sn||||m^38^Defias Thug^3.33^s
66v1|Arcanist Gloves|u|n||||
66v2|Arcanist Belt|u|n||||
66v3|Felheart Slippers|u|n||||
66v4|Felheart Bracers|u|n||||
66v5|Felheart Gloves|u|n||||
66v6|Felheart Belt|u|n||||
66v7|Felheart Shoulder Pads|u|n||||
66v8|Felheart Horns|u|n||||
66v9|Felheart Robes|u|n||||
66va|Felheart Pants|u|n||||
66vb|Boots of Prophecy|w|sn||||m^38^Defias Thug^1.67^s
66vc|Gloves of Prophecy|w|sn||||m^38^Defias Thug^1.67^s
66vd|Circlet of Prophecy|w|sn||||m^1553^Greater Duskbat^0^s
66ve|Pants of Prophecy|w|sn||||m^705^Ragged Young Wolf^0^s
66vf|Robes of Prophecy|u|n||||
66vg|Mantle of Prophecy|u|n||||
66vh|Girdle of Prophecy|w|sn||||m^38^Defias Thug^1.67^s~m^299^Young Wolf^5.26^s
66vi|Vambraces of Prophecy|u|n||||
66vj|Nightslayer Chestpiece|u|n||||
66vk|Nightslayer Cover|u|n||||
66vl|Nightslayer Pants|u|n||||
66vm|Nightslayer Shoulder Pads|w|sn||||m^299^Young Wolf^5.26^s
66vn|Nightslayer Boots|u|n||||
66vo|Nightslayer Bracelets|u|n||||
66vp|Nightslayer Gloves|w|sn||||m^38^Defias Thug^3.33^s
66vq|Nightslayer Belt|w|sn||||m^6^Kobold Vermin^3.45^s~m^38^Defias Thug^1.67^s
66vr|Cenarion Belt|w|sn||||m^38^Defias Thug^1.67^s~m^705^Ragged Young Wolf^0^s
66vs|Cenarion Boots|u|n||||
66vt|Cenarion Bracers|u|n||||
66vu|Cenarion Gloves|u|n||||
66vv|Cenarion Vestments|u|n||||
66vw|Cenarion Helm|u|n||||
66vx|Cenarion Leggings|u|n||||
66vy|Cenarion Spaulders|w|sn||||m^705^Ragged Young Wolf^0^s
66vz|Earthfury Boots|w|sn||||m^38^Defias Thug^1.67^s
66w0|Earthfury Belt|u|n||||
66w1|Earthfury Gauntlets|u|n||||
66w2|Earthfury Bracers|w|sn||||m^705^Ragged Young Wolf^0^s
66w3|Earthfury Vestments|w|sn||||m^38^Defias Thug^1.67^s
66w4|Earthfury Helmet|w|sn||||m^38^Defias Thug^3.33^s
66w5|Earthfury Legguards|u|n||||
66w6|Earthfury Epaulets|u|n||||
66w7|Giantstalker's Breastplate|w|sn||||m^1553^Greater Duskbat^0^s~m^38^Defias Thug^1.67^s
66w8|Giantstalker's Helmet|u|n||||
66w9|Giantstalker's Leggings|w|sn||||m^6^Kobold Vermin^3.45^s
66wa|Giantstalker's Epaulets|u|n||||
66wb|Giantstalker's Boots|w|sn||||m^705^Ragged Young Wolf^0^s
66wc|Giantstalker's Bracers|w|sn||||m^38^Defias Thug^1.67^s
66wd|Giantstalker's Belt|u|n||||
66we|Giantstalker's Gloves|w|sn||||m^6^Kobold Vermin^3.45^s
66wf|Lawbringer Chestguard|w|sn||||m^1547^Decrepit Darkhound^0^s
66wg|Lawbringer Helm|u|n||||
66wh|Lawbringer Legplates|u|n||||
66wi|Lawbringer Spaulders|w|sn||||m^38^Defias Thug^1.67^s
66wj|Lawbringer Bracers|u|n||||
66wk|Lawbringer Belt|w|sn||||m^6^Kobold Vermin^3.45^s
66wl|Lawbringer Boots|u|n||||
66wm|Lawbringer Gauntlets|w|sn||||m^6^Kobold Vermin^3.45^s
66wn|Bracers of Might|w|sn||||m^299^Young Wolf^5.26^s
66wo|Sabatons of Might|u|n||||
66wp|Gauntlets of Might|w|sn||||m^38^Defias Thug^1.67^s~m^705^Ragged Young Wolf^0^s
66wq|Belt of Might|u|n||||
66wr|Breastplate of Might|w|sn||||m^38^Defias Thug^3.33^s~m^299^Young Wolf^5.26^s
66ws|Helm of Might|w|sn||||m^299^Young Wolf^5.26^s
66wt|Legplates of Might|u|n||||
66wu|Pauldrons of Might|w|sn||||m^299^Young Wolf^5.26^s
66x0|Earthshaker|w|sn||||m^38^Defias Thug^3.33^s~m^705^Ragged Young Wolf^0^s
66x1|Spinal Reaper|w|sn||||m^38^Defias Thug^1.67^s~m^705^Ragged Young Wolf^0^s
66x2|Hyperthermically Insulated Lava Dredger|w|sn||||m^705^Ragged Young Wolf^0^s
66x4|Bonereaver's Edge|w|sn||||m^38^Defias Thug^1.67^s
66x5|Obsidian Edged Blade|w|sn||||m^38^Defias Thug^3.33^s~m^705^Ragged Young Wolf^0^s
66x6|Staff of Dominance|w|sn||||m^6^Kobold Vermin^3.45^s~m^38^Defias Thug^1.67^s
66x7|Gutgore Ripper|w|sn||||m^38^Defias Thug^5^s~m^6^Kobold Vermin^3.45^s
66x8|Aurastone Hammer|w|sn||||m^705^Ragged Young Wolf^0^s
66x9|Perdition's Blade|w|snU||||m^705^Ragged Young Wolf^0^s
66xa|Sorcerous Dagger|w|snU||||m^6^Kobold Vermin^3.45^s
66xb|Striker's Mark|w|sn||||m^38^Defias Thug^3.33^s~m^6^Kobold Vermin^3.45^s
66xd|Blastershot Launcher|w|sn||||m^69^Timber Wolf^5.26^s~m^299^Young Wolf^5.26^s
66xe|Crimson Shocker|w|sn||||m^299^Young Wolf^5.26^s~m^1553^Greater Duskbat^0^s
66xf|Azuresong Mageblade|w|sn||||m^6^Kobold Vermin^6.9^s
66xg|Drillborer Disk|w|sn||||m^38^Defias Thug^1.67^s
66xh|Fire Runed Grimoire|w|sn||||m^38^Defias Thug^1.67^s~m^299^Young Wolf^5.26^s
66xi|Malistar's Defender|w|sn||||m^38^Defias Thug^3.33^s~m^6^Kobold Vermin^3.45^s
66xj|Band of Accuria|w|snU||||m^38^Defias Thug^3.33^s~m^1553^Greater Duskbat^0^s
66xk|Medallion of Steadfast Might|w|sn||||m^6^Kobold Vermin^6.9^s~m^38^Defias Thug^1.67^s
66xl|Cloak of the Shrouded Mists|w|sn||||m^705^Ragged Young Wolf^0^s~m^1553^Greater Duskbat^0^s
66xm|Dragon's Blood Cape|w|sn||||m^38^Defias Thug^1.67^s~m^1547^Decrepit Darkhound^0^s
66xn|Choker of Enlightenment|w|sn||||m^38^Defias Thug^5^s~m^705^Ragged Young Wolf^0^s
66xo|Seal of the Archmagus|w|snU||||m^38^Defias Thug^1.67^s~m^1547^Decrepit Darkhound^0^s
66xp|Fireproof Cloak|w|sn||||m^38^Defias Thug^3.33^s
66xq|Choker of the Fire Lord|w|sn||||m^38^Defias Thug^1.67^s~m^299^Young Wolf^5.26^s
66xr|Quick Strike Ring|w|snU||||m^6^Kobold Vermin^3.45^s~m^38^Defias Thug^1.67^s
66xs|Heavy Dark Iron Ring|w|snU||||m^38^Defias Thug^1.67^s
66xt|Band of Sulfuras|w|snU||||m^38^Defias Thug^1.67^s
66xu|Cauterizing Band|w|sn||||m^38^Defias Thug^1.67^s~m^299^Young Wolf^5.26^s
66xv|Ring of Spell Power|w|sn||||m^6^Kobold Vermin^6.9^s~m^38^Defias Thug^1.67^s
677w|Hammer of Bestial Fury|u|nU||||
677y|Thunderfury, Blessed Blade of the Windseeker|u|nU||||
677z|Sulfuras, Hand of Ragnaros|u|nU||||
6780|Benediction|u|nU||||
6781|Anathema|u|nU||||
6786|Quel'Serrar|u|nU||||
6787|Rhok'delar, Longbow of the Ancient Keepers|u|nU||||]==]
ns.gfExtra = {[6473]="s38:2,5:2",[10410]="s38:2,5:2",[10411]="s38:2,5:2",[10412]="s38:2,5:2",[10413]="s38:2,5:2",[15045]="s43:1",[15046]="s43:1",[15048]="s45:9.33",[15049]="s45:9.33",[15050]="s31:0.33",[15051]="s31:0.33",[15052]="s31:0.33",[15062]="s31:1",[15063]="s31:1",[15066]="s45:10",[15067]="s45:10",[19682]="s32:0.67",[19683]="s32:0.67",[19684]="s32:0.67",[19689]="s32:0.5",[19690]="s43:4",[19691]="s43:4",[19692]="s43:4",[19693]="s12:6.67",[19694]="s12:6.67",[19695]="s12:6.67",[20041]="s7:1.67",[20042]="s7:1.67",[20043]="s7:1.67",[20044]="s32:0.33,7:1.67",[20045]="s7:1.67",[20046]="s32:0.33,7:1.67",[20047]="s32:0.33,7:1.67",[20048]="s7:1.67",[20049]="s7:1.67",[20050]="s7:1.67",[20051]="s32:0.33,7:1.67",[20052]="s7:1.67",[20053]="s32:0.33,7:1.67",[20054]="s32:0.33,7:1.67",[20055]="s7:1.67",[20056]="s32:0.33,7:1.67",[20057]="s7:1.67",[20058]="s7:1.67",[20059]="s7:1.67",[20060]="s32:0.33,7:1.67",[20061]="s32:0.33,7:1.67",[20150]="s7:1.67",[20154]="s7:1.67",[20158]="s7:1.67",[20159]="s32:0.33,7:1.67",[20163]="s32:0.33,7:1.67",[20167]="s32:0.33,7:1.67",[20171]="s32:0.33,7:1.67",[20175]="s32:0.33,7:1.67",[20176]="s32:0.33,7:1.67",[20177]="s7:1.67",[20181]="s7:1.67",[20184]="s7:1.67",[20186]="s7:1.67",[20190]="s7:1.67",[20194]="s7:1.67",[20195]="s32:0.33,7:1.67",[20199]="s32:0.33,7:1.67",[20203]="s32:0.33,7:1.67",[20204]="s7:1.67",[20208]="s7:1.67",[20212]="s7:1.67",[20295]="s45:9.33",[20296]="s43:1",[22843]="s3:3.33,7:3.33",[22855]="s45:3.83,7:3.33",[22856]="s38:6.67,7:3.33",[22857]="s38:6.67,7:3.33",[22858]="s38:6.67,7:3.33",[22862]="s3:3.33,7:3.33",[22864]="s38:6.67,7:3.33",[22865]="s45:3.83,7:3.33",[22867]="s38:6.67,7:3.33",[22868]="s38:6.67,7:3.33",[22872]="s38:6.67,7:3.33",[22873]="s38:6.67,7:3.33",[22874]="s3:3.33,7:3.33",[22875]="s3:3.33,7:3.33",[22876]="s38:6.67,7:3.33",[22879]="s38:6.67,7:3.33",[22880]="s38:6.67,7:3.33",[22881]="s45:3.83,7:3.33",[22884]="s45:3.83,7:3.33",[22887]="s38:6.67,7:3.33",[23243]="s38:6.67,7:3.33",[23244]="s38:6.67,7:3.33",[23251]="s3:3.33,7:3.33",[23252]="s3:3.33,7:3.33",[23255]="s45:3.83,7:3.33",[23256]="s45:3.83,7:3.33",[23257]="s38:6.67,7:3.33",[23258]="s38:6.67,7:3.33",[23260]="s38:6.67,7:3.33",[23272]="s45:3.83,7:3.33",[23274]="s45:3.83,7:3.33",[23275]="s45:3.83,7:3.33",[23277]="s45:3.83,7:3.33",[23278]="s3:3.33,7:3.33",[23279]="s3:3.33,7:3.33",[23282]="s45:3.83,7:3.33",[23283]="s45:3.83,7:3.33",[23284]="s38:6.67,7:3.33",[23285]="s38:6.67,7:3.33",[23286]="s38:6.67,7:3.33",[23287]="s38:6.67,7:3.33",[23292]="s3:3.33,7:3.33",[23293]="s3:3.33,7:3.33",[23296]="s45:3.83,7:3.33",[23297]="s45:3.83,7:3.33",[23298]="s38:6.67,7:3.33",[23299]="s38:6.67,7:3.33",[23300]="s38:6.67,7:3.33",[23301]="s38:6.67,7:3.33",[23306]="s3:3.33,7:3.33",[23307]="s3:3.33,7:3.33",[23310]="s45:3.83,7:3.33",[23311]="s45:3.83,7:3.33",[23312]="s38:6.67,7:3.33",[23313]="s38:6.67,7:3.33",[23314]="s38:6.67,7:3.33",[23315]="s38:6.67,7:3.33",[220794]="s38:5,7:2.5",[220795]="s38:5,7:2.5",[220796]="s38:5,7:2.5",[220797]="s38:5,7:2.5",[220798]="s38:5,7:2.5",[220799]="s38:5,7:2.5",[220800]="s38:5,7:2.5",[220801]="s38:5,7:2.5",[220803]="s38:5,7:2.5",[220804]="s38:5,7:2.5",[220806]="s38:5,7:2.5",[220807]="s38:5,7:2.5",[220808]="s41:5.5,7:2.5",[220809]="s41:5.5,7:2.5",[220810]="s41:5.5,7:2.5",[220811]="s41:5.5,7:2.5",[220812]="s41:5.5,7:2.5",[220813]="s41:5.5,7:2.5",[220814]="s45:3,7:2.5",[220815]="s45:3,7:2.5",[220816]="s45:3,7:2.5",[220817]="s45:3,7:2.5",[220818]="s45:3,7:2.5",[220819]="s45:3,7:2.5",[220820]="s38:5,7:2.5",[220821]="s38:5,7:2.5",[220822]="s38:5,7:2.5",[220823]="s38:5,7:2.5",[220824]="s38:5,7:2.5",[220825]="s38:5,7:2.5",[220826]="s38:5,7:2.5",[220827]="s38:5,7:2.5",[220828]="s38:5,7:2.5",[220829]="s38:5,7:2.5",[220830]="s38:5,7:2.5",[220831]="s38:5,7:2.5",[220832]="s38:5,7:2.5",[220833]="s38:5,7:2.5",[220834]="s38:5,7:2.5",[220835]="s38:5,7:2.5",[220836]="s38:5,7:2.5",[220837]="s38:5,7:2.5",[220838]="s41:5.5,7:2.5",[220839]="s41:5.5,7:2.5",[220840]="s41:5.5,7:2.5",[220841]="s41:5.5,7:2.5",[220842]="s41:5.5,7:2.5",[220843]="s41:5.5,7:2.5",[220844]="s45:3,7:2.5",[220845]="s45:3,7:2.5",[220846]="s45:3,7:2.5",[220847]="s45:3,7:2.5",[220848]="s45:3,7:2.5",[220849]="s45:3,7:2.5",[220850]="s38:5,7:2.5",[220851]="s38:5,7:2.5",[220852]="s38:5,7:2.5",[220853]="s38:5,7:2.5",[220854]="s38:5,7:2.5",[220855]="s38:5,7:2.5",[220856]="s38:5,7:2.5",[220857]="s38:5,7:2.5",[220858]="s38:5,7:2.5",[220859]="s38:5,7:2.5",[220860]="s38:5,7:2.5",[220861]="s38:5,7:2.5",[220862]="s45:3,7:2.5",[220863]="s45:3,7:2.5",[220864]="s45:3,7:2.5",[220865]="s45:3,7:2.5",[220866]="s45:3,7:2.5",[220867]="s45:3,7:2.5",[220868]="s45:3,7:2.5",[220869]="s45:3,7:2.5",[220870]="s45:3,7:2.5",[220871]="s45:3,7:2.5",[220872]="s45:3,7:2.5",[220873]="s45:3,7:2.5",[220874]="s41:5.5,7:2.5",[220875]="s41:5.5,7:2.5",[220876]="s41:5.5,7:2.5",[220877]="s41:5.5,7:2.5",[220878]="s41:5.5,7:2.5",[220879]="s41:5.5,7:2.5",[220880]="s41:5.5,7:2.5",[220881]="s41:5.5,7:2.5",[220882]="s41:5.5,7:2.5",[220883]="s41:5.5,7:2.5",[220884]="s41:5.5,7:2.5",[220885]="s41:5.5,7:2.5",[220886]="s45:3,7:2.5",[220887]="s45:3,7:2.5",[220888]="s45:3,7:2.5",[220889]="s45:3,7:2.5",[220890]="s45:3,7:2.5",[220891]="s45:3,7:2.5",[220892]="s41:5.5,7:2.5",[220893]="s41:5.5,7:2.5",[220894]="s41:5.5,7:2.5",[220895]="s41:5.5,7:2.5",[220896]="s41:5.5,7:2.5",[220897]="s41:5.5,7:2.5",[220898]="s41:5.5,7:2.5",[220899]="s41:5.5,7:2.5",[220900]="s41:5.5,7:2.5",[220901]="s41:5.5,7:2.5",[220902]="s41:5.5,7:2.5",[220903]="s41:5.5,7:2.5",[220904]="s45:3,7:2.5",[220905]="s45:3,7:2.5",[220906]="s45:3,7:2.5",[220907]="s45:3,7:2.5",[220908]="s45:3,7:2.5",[220909]="s45:3,7:2.5",[223073]="s38:5,7:2.5",[223074]="s38:5,7:2.5",[223075]="s38:5,7:2.5",[223076]="s38:5,7:2.5",[223077]="s38:5,7:2.5",[223078]="s38:5,7:2.5",[227079]="s38:6.67,7:3.33",[227080]="s38:6.67,7:3.33",[227081]="s38:6.67,7:3.33",[227082]="s38:6.67,7:3.33",[227083]="s38:6.67,7:3.33",[227085]="s38:6.67,7:3.33",[227086]="s38:6.67,7:3.33",[227087]="s38:6.67,7:3.33",[227088]="s38:6.67,7:3.33",[227089]="s38:6.67,7:3.33",[227130]="s45:3.83,7:3.33",[227131]="s45:3.83,7:3.33",[227133]="s45:3.83,7:3.33",[227135]="s45:3.83,7:3.33",[227136]="s45:3.83,7:3.33",[227139]="s45:3.83,7:3.33",[227141]="s45:3.83,7:3.33",[227148]="s41:7.33,7:3.33",[227149]="s41:7.33,7:3.33",[227150]="s41:7.33,7:3.33",[227151]="s41:7.33,7:3.33",[227152]="s41:7.33,7:3.33",[227153]="s41:7.33,7:3.33",[227160]="s45:3.83,7:3.33",[227163]="s45:3.83,7:3.33",[227164]="s45:3.83,7:3.33",[227165]="s45:3.83,7:3.33",[227166]="s41:7.33,7:3.33",[227167]="s41:7.33,7:3.33",[227168]="s41:7.33,7:3.33",[227169]="s41:7.33,7:3.33",[227170]="s41:7.33,7:3.33",[227171]="s41:7.33,7:3.33",[227185]="s45:3.83,7:3.33",[227187]="s45:3.83,7:3.33",[227189]="s45:3.83,7:3.33",[227190]="s45:3.83,7:3.33",[227191]="s45:3.83,7:3.33",[227192]="s45:3.83,7:3.33",[227194]="s45:3.83,7:3.33",[227195]="s45:3.83,7:3.33",[227197]="s41:7.33,7:3.33",[227198]="s41:7.33,7:3.33",[227199]="s41:7.33,7:3.33",[227200]="s41:7.33,7:3.33",[227201]="s41:7.33,7:3.33",[227202]="s41:7.33,7:3.33",[227203]="s41:7.33,7:3.33",[227205]="s41:7.33,7:3.33",[227206]="s41:7.33,7:3.33",[227207]="s41:7.33,7:3.33",[231557]="s38:6.67,7:3.33",[231558]="s38:6.67,7:3.33",[231561]="s38:6.67,7:3.33",[231562]="s38:6.67,7:3.33",[231563]="s38:6.67,7:3.33",[231565]="s38:6.67,7:3.33",[231566]="s38:6.67,7:3.33",[231567]="s38:6.67,7:3.33",[231568]="s38:6.67,7:3.33",[231569]="s38:6.67,7:3.33",[231570]="s3:3.33,7:3.33",[231571]="s3:3.33,7:3.33",[231573]="s3:3.33,7:3.33",[231575]="s3:3.33,7:3.33",[231576]="s3:3.33,7:3.33",[231578]="s3:3.33,7:3.33",[231579]="s3:3.33,7:3.33",[231581]="s3:3.33,7:3.33",[231610]="s45:3.83,7:3.33",[231611]="s45:3.83,7:3.33",[231613]="s45:3.83,7:3.33",[231615]="s45:3.83,7:3.33",[231616]="s45:3.83,7:3.33",[231617]="s45:3.83,7:3.33",[231618]="s45:3.83,7:3.33",[231619]="s45:3.83,7:3.33",[231620]="s45:3.83,7:3.33",[231621]="s45:3.83,7:3.33",[231622]="s7:3.33",[231623]="s7:3.33",[231624]="s7:3.33",[231626]="s7:3.33",[231627]="s7:3.33",[231630]="s7:3.33",[231632]="s7:3.33",[231633]="s7:3.33",[231634]="s7:3.33",[231635]="s7:3.33",[231639]="s7:3.33",[231640]="s7:3.33",[231646]="s7:3.33",[231647]="s38:6.67,7:3.33",[231648]="s38:6.67,7:3.33",[231649]="s38:6.67,7:3.33",[231650]="s38:6.67,7:3.33",[231651]="s38:6.67,7:3.33",[231652]="s38:6.67,7:3.33",[231653]="s38:6.67,7:3.33",[231654]="s38:6.67,7:3.33",[231655]="s38:6.67,7:3.33",[231656]="s38:6.67,7:3.33",[231657]="s38:6.67,7:3.33",[231658]="s38:6.67,7:3.33",[231661]="s45:3.83,7:3.33",[231662]="s45:3.83,7:3.33",[231665]="s7:3.33",[231666]="s7:3.33",[231668]="s7:3.33",[231669]="s7:3.33",[231670]="s7:3.33",[231671]="s7:3.33",[231672]="s7:3.33",[231673]="s7:3.33",[231674]="s7:3.33",[231675]="s7:3.33",[231676]="s7:3.33",[231678]="s45:3.83,7:3.33",[231679]="s45:3.83,7:3.33",[231680]="s45:3.83,7:3.33",[231681]="s45:3.83,7:3.33",[231683]="s38:6.67,7:3.33",[231684]="s38:6.67,7:3.33",[231686]="s38:6.67,7:3.33",[231687]="s38:6.67,7:3.33",[231688]="s38:6.67,7:3.33",[231689]="s38:6.67,7:3.33",[231690]="s38:6.67,7:3.33",[231691]="s38:6.67,7:3.33",[231692]="s38:6.67,7:3.33",[231693]="s38:6.67,7:3.33",[231694]="s38:6.67,7:3.33",[231695]="s45:3.83,7:3.33",[231696]="s45:3.83,7:3.33",[231697]="s45:3.83,7:3.33",[231700]="s45:3.83,7:3.33",[231701]="s7:3.33",[231702]="s7:3.33",[231704]="s7:3.33",[231705]="s7:3.33",[271207]="s5:2",[271214]="s5:2",[272453]="s45:3.83,7:3.33",[272455]="s45:3.83,7:3.33",[272457]="s45:3.83,7:3.33",[272458]="s45:3.83,7:3.33",[272459]="s45:3.83,7:3.33",[272462]="s38:6.67,7:3.33",[272464]="s7:3.33",[272467]="s38:6.67,7:3.33",[272469]="s38:6.67,7:3.33",[272470]="s38:6.67,7:3.33",[272471]="s38:6.67,7:3.33",[272472]="s38:6.67,7:3.33",[272473]="s38:6.67,7:3.33",[272474]="s38:6.67,7:3.33",[272475]="s38:6.67,7:3.33",[272476]="s38:6.67,7:3.33",[272477]="s38:6.67,7:3.33",[272478]="s38:6.67,7:3.33",[272479]="s38:6.67,7:3.33",[272480]="s38:6.67,7:3.33",[272481]="s38:6.67,7:3.33",[272484]="s45:3.83,7:3.33",[272485]="s38:6.67,7:3.33",[272486]="s45:3.83,7:3.33",[272487]="s45:3.83,7:3.33",[272488]="s38:6.67,7:3.33",[272489]="s38:6.67,7:3.33",[272490]="s3:3.33,7:3.33",[272491]="s3:3.33,7:3.33",[272492]="s3:3.33,7:3.33",[272495]="s3:3.33,7:3.33",[272496]="s3:3.33,7:3.33",[272498]="s45:3.83,7:3.33",[272499]="s45:3.83,7:3.33",[272500]="s45:3.83,7:3.33",[272501]="s45:3.83,7:3.33",[272504]="s45:3.83,7:3.33",[272505]="s45:3.83,7:3.33",[272506]="s38:6.67,7:3.33",[272507]="s38:6.67,7:3.33",[272508]="s38:6.67,7:3.33",[272509]="s38:6.67,7:3.33",[272510]="s38:6.67,7:3.33",[272513]="s38:6.67,7:3.33",[272515]="s38:6.67,7:3.33",[272516]="s38:6.67,7:3.33",[272517]="s38:6.67,7:3.33",[272519]="s38:6.67,7:3.33",[272520]="s38:6.67,7:3.33",[272523]="s38:6.67,7:3.33",[272525]="s38:6.67,7:3.33",[272526]="s38:6.67,7:3.33",[272527]="s38:6.67,7:3.33",[272528]="s38:6.67,7:3.33",[272529]="s38:6.67,7:3.33",[272530]="s3:3.33,7:3.33",[272531]="s3:3.33,7:3.33",[272532]="s3:3.33,7:3.33",[272533]="s3:3.33,7:3.33",[272534]="s3:3.33,7:3.33",[272536]="s3:3.33,7:3.33",[272548]="s45:3.83,7:3.33",[272549]="s45:3.83,7:3.33",[272552]="s45:3.83,7:3.33",[272553]="s45:3.83,7:3.33",[272554]="s45:3.83,7:3.33",[272556]="s45:3.83,7:3.33",[272558]="s45:3.83,7:3.33",[272559]="s45:3.83,7:3.33",[272560]="s45:3.83,7:3.33",[272561]="s45:3.83,7:3.33",[272562]="s45:3.83,7:3.33",[272563]="s45:3.83,7:3.33",[272564]="s45:3.83,7:3.33",[272565]="s45:3.83,7:3.33",[272568]="s45:3.83,7:3.33",[272569]="s45:3.83,7:3.33",[272570]="s45:3.83,7:3.33",[272572]="s45:3.83,7:3.33",[272574]="s45:3.83,7:3.33",[272575]="s45:3.83,7:3.33",[272576]="s45:3.83,7:3.33",[272577]="s45:3.83,7:3.33",[272606]="s7:3.33",[272608]="s38:6.67,7:3.33",[272609]="s38:6.67,7:3.33",[272611]="s7:3.33",[272614]="s38:6.67,7:3.33",[272617]="s45:3.83,7:3.33",[272619]="s7:3.33",[272625]="s38:6.67,7:3.33",[272626]="s7:3.33",[272627]="s7:3.33",[272630]="s45:3.83,7:3.33",[272634]="s7:3.33",[272636]="s45:3.83,7:3.33",[272637]="s38:6.67,7:3.33",[272640]="s3:3.33,7:3.33",[272641]="s7:3.33",[272642]="s7:3.33",[272643]="s45:3.83,7:3.33",[272647]="s38:6.67,7:3.33",[272648]="s45:3.83,7:3.33",[272649]="s7:3.33",[272650]="s7:3.33",[272656]="s45:3.83,7:3.33",[272657]="s45:3.83,7:3.33",[272663]="s7:3.33",[272669]="s45:3.83,7:3.33",[272670]="s45:3.83,7:3.33",[272671]="s45:3.83,7:3.33",[272677]="s7:3.33",[272678]="s7:3.33",[272680]="s45:3.83,7:3.33",[272701]="s45:3.83,7:3.33",[272703]="s45:3.83,7:3.33",[272704]="s38:6.67,7:3.33",[272705]="s38:6.67,7:3.33",[272708]="s38:6.67,7:3.33",[272709]="s38:6.67,7:3.33",[272713]="s3:3.33,7:3.33",[272715]="s3:3.33,7:3.33",[272717]="s38:6.67,7:3.33",[272718]="s45:3.83,7:3.33",[272719]="s45:3.83,7:3.33",[272722]="s45:3.83,7:3.33",[272723]="s45:3.83,7:3.33",[272724]="s45:3.83,7:3.33",[272725]="s45:3.83,7:3.33",[272726]="s38:6.67,7:3.33",[272727]="s38:6.67,7:3.33",[272728]="s38:6.67,7:3.33",[272729]="s38:6.67,7:3.33",[272731]="s38:6.67,7:3.33",[272732]="s38:6.67,7:3.33",[272733]="s38:6.67,7:3.33",[272734]="s3:3.33,7:3.33",[272735]="s3:3.33,7:3.33",[272736]="s3:3.33,7:3.33",[272737]="s3:3.33,7:3.33",[272738]="s38:6.67,7:3.33",[272739]="s38:6.67,7:3.33",[272740]="s38:6.67,7:3.33",[272741]="s38:6.67,7:3.33",[272742]="s45:3.83,7:3.33",[272743]="s45:3.83,7:3.33",[272744]="s45:3.83,7:3.33",[272745]="s45:3.83,7:3.33",[272783]="s45:3.83,7:3.33",[272794]="s45:3.83,7:3.33",[272796]="s45:3.83,7:3.33",[272800]="s45:3.83,7:3.33",[272801]="s45:3.83,7:3.33",[272810]="s45:3.83,7:3.33",[272812]="s45:3.83,7:3.33",[272814]="s45:3.83,7:3.33",[272815]="s45:3.83,7:3.33",[272816]="s45:3.83,7:3.33",[272817]="s45:3.83,7:3.33",[272818]="s45:3.83,7:3.33",[272819]="s45:3.83,7:3.33",[272820]="s45:3.83,7:3.33",[272821]="s45:3.83,7:3.33",[272823]="s45:3.83,7:3.33",[272824]="s45:3.83,7:3.33",[272852]="s7:3.33",[272853]="s7:3.33",[272854]="s7:3.33",[272855]="s7:3.33",[273044]="s6:2",[273051]="s6:2",[273329]="s7:3.33",[273330]="s7:3.33",[273331]="s7:3.33",[273332]="s7:3.33",[273333]="s7:3.33",[273334]="s7:3.33",[273336]="s45:3.83,7:3.33",[273343]="s45:3.83,7:3.33",[273344]="s7:3.33",[273345]="s7:3.33",[273349]="s7:3.33",[273350]="s7:3.33",[273355]="s7:3.33",[273356]="s7:3.33",[273357]="s7:3.33",[273359]="s7:3.33",[273360]="s7:3.33",[273363]="s7:3.33",[273365]="s7:3.33",[273368]="s45:3.83,7:3.33",[273370]="s45:3.83,7:3.33",[273371]="s45:3.83,7:3.33",[273373]="s7:3.33",[273374]="s7:3.33",[273375]="s7:3.33",[273380]="s7:3.33",[273382]="s45:3.83,7:3.33",[273383]="s45:3.83,7:3.33",[273384]="s45:3.83,7:3.33",[273385]="s45:3.83,7:3.33",[273386]="s45:3.83,7:3.33",[273387]="s45:3.83,7:3.33",[273391]="s45:3.83,7:3.33",[273392]="s45:3.83,7:3.33",[273393]="s45:3.83,7:3.33",[273394]="s45:3.83,7:3.33",[273395]="s45:3.83,7:3.33",[273396]="s45:3.83,7:3.33",[273399]="s7:3.33",[273401]="s7:3.33",[273402]="s7:3.33",[273403]="s7:3.33",[273407]="s45:3.83,7:3.33",[273421]="s7:3.33",[273422]="s7:3.33",[273423]="s7:3.33",[273424]="s7:3.33",[273426]="s7:3.33",[273427]="s7:3.33",[273431]="s7:3.33",[273433]="s7:3.33",[273434]="s7:3.33",[273435]="s7:3.33",[273436]="s7:3.33",[273443]="s7:3.33",[273445]="s7:3.33",[273447]="s7:3.33",[273448]="s7:3.33",[274176]="s45:3.83,7:3.33",[274177]="s38:6.67,7:3.33",[274178]="s45:3.83,7:3.33",[274179]="s45:3.83,7:3.33",[274180]="s38:6.67,7:3.33",[274181]="s38:6.67,7:3.33",[274192]="s38:6.67,7:3.33",[274193]="s45:3.83,7:3.33",[274194]="s38:6.67,7:3.33",[274195]="s45:3.83,7:3.33",[274196]="s38:6.67,7:3.33",[274197]="s45:3.83,7:3.33",[274198]="s45:3.83,7:3.33",[274217]="s7:3.33",[274218]="s7:3.33",[274219]="s7:3.33",[274221]="s7:3.33",[274222]="s7:3.33",[274226]="s45:3.83,7:3.33",[274227]="s45:3.83,7:3.33",[274230]="s45:3.83,7:3.33",[274231]="s45:3.83,7:3.33",[274232]="s45:3.83,7:3.33",[274233]="s45:3.83,7:3.33",[274244]="s7:3.33",[274245]="s7:3.33",[274246]="s7:3.33",[274247]="s7:3.33",[274250]="s7:3.33",[274251]="s7:3.33",[274252]="s7:3.33",[274256]="s7:3.33",[274258]="s7:3.33",[286978]="s5:2",[286979]="s5:2",[286980]="s5:2",[286987]="s6:2",[286988]="s6:2",[286989]="s6:2"}
ns.gfInst = {[33]="Shadowfang Keep^dungeon^1421^44.72^67.77^Silverpine Forest^f^Rethilgore;Razorclaw the Butcher;Baron Silverlaine;Commander Springvale;Odo the Blindwatcher;Fenrus the Devourer;Wolf Master Nandos;Archmage Arugal",[34]="Stormwind Stockade^dungeon^1429^19.81^35.55^Elwynn Forest^f^Targorr the Dread;Kam Deepfury;Hamhock;Dextren Ward;Bazil Thredd",[36]="Deadmines^dungeon^1436^38.16^77.48^Westfall^f^Rhahk'Zor;Sneed;Miner Johnson;Gilnid;Captain Greenskin;Mr. Smite;Cookie;Edwin VanCleef",[43]="Wailing Caverns^dungeon^1413^47.69^34.98^The Barrens^f^Lady Anacondra;Lord Cobrahn;Kresh;Lord Pythas;Skum;Lord Serpentis;Verdan the Everliving;Mutanus the Devourer",[47]="Razorfen Kraul^dungeon^1413^42.27^89.87^The Barrens^f^Roogug;Aggem Thorncurse;Death Speaker Jargba;Overlord Ramtusk;Agathelos the Raging;Charlga Razorflank",[48]="Blackfathom Deeps^dungeon^1440^16.5^11.03^Ashenvale^f^Ghamoo-ra;Lady Sarevess;Geilhast;Lorgus Jett;Old Serra'kis;Twilight Lord Kelris;Aku'mai;Baron Aquanis;Gelihast",[70]="Uldaman^dungeon^1418^35.21^10.29^Badlands^f^Revelosh;The Lost Dwarves;Ironaya;Obsidian Sentinel;Ancient Stone Keeper;Galgann Firehammer;Grimlok;Archaedas",[90]="Gnomeregan^dungeon^1426^17.67^39.15^Dun Morogh^f^Viscous Fallout;Electrocutioner 6000;Crowd Pummeler 9-60;Mekgineer Thermaplugg;Grubbis;Mechanical Menagerie",[109]="Sunken Temple^dungeon^1435^77.3^35.92^Swamp of Sorrows^f^Atal'alarion;Avatar of Hakkar;Shade of Eranikus;Hazzas;Morphaz;Weaver;Dreamscythe;Jammal'an the Prophet;Festering Rotslime;Atal'ai Defenders;Dreamscythe and Weaver;Jammal'an and Ogom;Morphaz and Hazzas",[129]="Razorfen Downs^dungeon^1413^50.91^92.88^The Barrens^f^Tuten'kash;Plaguemaw the Rotting;Mordresh Fire Eye;Ragglesnout;Glutton;Amnennar the Coldbringer",[169]="Emerald Dream^raid^0^0^0^^k^",[189]="Scarlet Monastery^dungeon^1420^85.08^31.38^Tirisfal Glades^f^Interrogator Vishas;Bloodmage Thalnos;Houndmaster Loksey;Arcanist Doan;Herod;High Inquisitor Fairbanks;High Inquisitor Whitemane",[229]="Blackrock Spire^dungeon^1428^32.99^25.17^Burning Steppes^f^Highlord Omokk;Shadow Hunter Vosh'gajin;War Master Voone;Mother Smolderweb;Urok Doomhowl;Quartermaster Zigris;Halycon;Gizrul the Slavener;Overlord Wyrmthalak;Pyroguard Emberseer;Warchief Rend Blackhand;The Beast;General Drakkisath;Lord Valthalak",[230]="Blackrock Depths^dungeon^1427^27.15^72.48^Searing Gorge^f^High Interrogator Gerstahn;Lord Roccor;Houndmaster Grebmar;Ring of Law;Pyromancer Loregrain;Lord Incendius;Warder Stilgiss;Fineous Darkvire;Bael'Gar;General Angerforge;Golem Lord Argelmach;Hurley Blackbreath;Phalanx;Ribbly Screwspigot;Plugger Spazzring;The Vault;Ambassador Flamelash;The Seven;Magmus;Princess Moira Bronzebeard;Emperor Dagran Thaurissan",[249]="Onyxia's Lair^raid^1445^52.9^77.71^Dustwallow Marsh^f^Onyxia",[289]="Scholomance^dungeon^1422^69.05^72.97^Western Plaguelands^f^Kirtonos;Jandice Barov;Rattlegore;Marduk Blackpool;Vectus;Kormok;Ras Frostwhisperer;Instructor Malicia;Doctor Theolen Krastinov;Lorekeeper Polkelt;The Ravenian;Lord Alexei Barov;Lady Illucia Barov;Darkmaster Gandling",[309]="Zul'Gurub^raid^1434^53.99^17.57^Stranglethorn Vale^f^High Priestess Jeklik;High Priest Venoxis;High Priestess Mar'li;Bloodlord Mandokir;Edge of Madness;High Priest Thekal;Gahz'ranka;High Priestess Arlokk;Jin'do the Hexxer;Hakkar",[329]="Stratholme^dungeon^1423^26.09^10.44^Eastern Plaguelands^f^Hearthsinger Forresten;Timmy the Cruel;Malor the Zealous;Cannon Master Willey;Archivist Galford;Balnazzar;The Unforgiven;Baroness Anastari;Nerub'enkan;Maleki the Pallid;Magistrate Barthilas;Ramstein the Gorger;Baron Rivendare;Black Guard Swordsmith;Crimson Hammersmith;Ezra Grimm;Postmaster Malown;Skul;Stonespine",[349]="Maraudon^dungeon^1443^29.1^62.87^Desolace^f^Noxxion;Razorlash;Tinkerer Gizlock;Lord Vyletongue;Celebras the Cursed;Landslide;Rotgrip;Princess Theradras",[389]="Ragefire Chasm^dungeon^1454^52.96^48.87^Orgrimmar^f^Oggleflint;Taragaman the Hungerer;Jergosh the Invoker;Bazzalan",[409]="Molten Core^raid^1428^26.29^24.55^Burning Steppes^f^Lucifron;Magmadar;Gehennas;Garr;Shazzrah;Baron Geddon;Sulfuron Harbinger;Golemagg the Incinerator;Majordomo Executus;Ragnaros;The Molten Core",[429]="Dire Maul^dungeon^1444^62.04^33.27^Feralas^f^Zevrim Thornhoof;Hydrospawn;Lethtendris;Pusillin;Alzzin the Wildshaper;Tendris Warpwood;Illyanna Ravenoak;Magister Kalendris;Immol'thar;Prince Tortheldrin;Guard Mol'dar;Stomper Kreeg;Guard Fengus;Guard Slip'kik;Captain Kromcrush;Cho'Rush the Observer;King Gordok;Lord Hel'nurath;Tsu'zee",[469]="Blackwing Lair^raid^1428^32.5^32.38^Burning Steppes^f^Razorgore the Untamed;Vaelastrasz the Corrupt;Broodlord Lashlayer;Firemaw;Ebonroc;Flamegor;Chromaggus;Nefarian",[509]="Ruins of Ahn'Qiraj^raid^1451^29.03^92.82^Silithus^f^Kurinnaxx;General Rajaxx;Moam;Buru the Gorger;Ayamiss the Hunter;Ossirian the Unscarred",[531]="Ahn'Qiraj Temple^raid^1451^29.02^92.7^Silithus^f^The Prophet Skeram;Silithid Royalty;Battleguard Sartura;Fankriss the Unyielding;Viscidus;Princess Huhuran;Twin Emperors;Ouro;C'thun",[533]="Naxxramas^raid^0^0^0^^k^Anub'Rekhan;Grand Widow Faerlina;Maexxna;Noth the Plaguebringer;Heigan the Unclean;Loatheb;Instructor Razuvious;Gothik the Harvester;The Four Horsemen;Patchwerk;Grobbulus;Gluth;Thaddius;Sapphiron;Kel'Thuzad",[2791]="Storm Cliffs^raid^0^0^0^^k^Azuregos",[2959]="City of Dalaran^dungeon^1421^69.6^46.1^Silverpine Forest^f^Arcane Anomaly;Fel Ancient;Mana Devourer;Mana Elemental;Unstable Sentinel;Shade of the Archmage;Lyn the Ignored;Atrexis the Grave Knight;Mana Wraith",[2998]="Excavation Site: Wetlands^dungeon^1437^24.5^73.4^Wetlands^f^Saltspine;Shadetooth;Highland Horror;Relic Guardian",[2999]="Ruins of Lordaeron^dungeon^1420^63.3^67.5^Tirisfal Glades^f^Witherfang;The Abandoned;The Butcher;Rath'mael;Lordaeron Captain;Viktor the Vile;Bjork",[3065]="The Hall of Thanes^dungeon^1455^77.1^51.3^Ironforge^f^Faldrim Anvilmar;Infurnus;Plunder;Durgen Dirgehammer"}
ns.gfRare = {[471]="Mother Fang^1429,62.1,48.1",[1037]="Dragonmaw Battlemaster^1437,52.9,54",[1260]="Great Father Arctikus^1426,22.8,52.1;1426,21.6,51.8;1426,22.5,54.2;1426,23.8,51;1426,24.2,52.6;1426,23.5,54.6",[1398]="Boss Galgosh^1432,68.1,65.9",[1424]="Master Digger^1436,46.4,19.1",[3056]="Ghost Howl^1412,34.7,34.2;1412,47.1,47.8;1412,46.7,25.5",[3270]="Elder Mystic Razorsnout^1413,59.2,24.4",[3398]="Gesharahan^1413,46.5,39.5",[4066]="Nal'taszar^1442,25.6,11.5",[5785]="Sister Hatelash^1412,37.2,22.6",[5798]="Thora Feathermoon^1413,48.5,79.7",[5808]="Warlord Kolkanis^1411,47.9,77.4;1411,49.9,80.6;1411,46.4,79",[5822]="Felweaver Scornn^1411,52.8,9;1411,53,7.3;1411,51.7,9.6",[5831]="Swiftmane^1413,61.2,34.5",[5841]="Rocklance^1413,53.6,45.5",[6488]="Fallen Champion^",[6489]="Ironspine^",[6490]="Azshir the Sleepless^",[14278]="Ro'Bark^1424,65.7,60.2",[14427]="Gibblesnik^1441,55.6,50.4",[14432]="Threggil^1438,52,50.5"}
