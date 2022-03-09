-- Re-enable Summon Felsteed (Warlock)
DELETE FROM `disables`WHERE `sourceType`=1 AND `entry` IN (3631, 4487, 4488, 4489, 4490);

-- Remove incorrect mail about riding which doesn't match Vanilla levels
DELETE FROM `mail_level_reward` WHERE `level` <= 60;


-- Riding Skills
UPDATE npc_trainer SET ReqLevel=40 WHERE SpellID=33388;
UPDATE npc_trainer SET MoneyCost=800000 WHERE SpellID=33388;
UPDATE npc_trainer SET ReqLevel=60 WHERE SpellID=33391;
UPDATE npc_trainer SET MoneyCost=10000000 WHERE SpellID=33391;
UPDATE npc_trainer SET ReqLevel=70 WHERE SpellID=34090;
UPDATE npc_trainer SET MoneyCost=6000000 WHERE SpellID=34090;
DELETE FROM npc_trainer WHERE SpellID=23214;
DELETE FROM npc_trainer WHERE SpellID=34767;
DELETE FROM npc_trainer WHERE SpellID=23161;
UPDATE npc_trainer SET ReqLevel=40 WHERE SpellID=13820;
UPDATE npc_trainer SET ReqLevel=40 WHERE SpellID=34768;
UPDATE npc_trainer SET ReqLevel=40 WHERE SpellID=1710;
UPDATE npc_trainer SET ReqLevel=68 WHERE SpellID=33950;

/* -------------------------------------------------------------- */
/* Riding Items                                                   */
/* -------------------------------------------------------------- */

-- Apprentice Riding
-- Horn of the Timber Wolf
UPDATE `item_template` SET `BuyPrice`=100000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=580, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=1132;
-- Black Stallion Bridle
UPDATE `item_template` SET `BuyPrice`=100000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=470, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=2411;
-- Pinto Bridle
UPDATE `item_template` SET `BuyPrice`=100000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=472, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=2414;
-- Chestnut Mare Bridle
UPDATE `item_template` SET `BuyPrice`=100000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=6648, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=5655;
-- Brown Horse Bridle
UPDATE `item_template` SET `BuyPrice`=100000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=458, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=5656;
-- Horn of the Dire Wolf
UPDATE `item_template` SET `BuyPrice`=100000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=6653, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=5665;
-- Horn of the Brown Wolf
UPDATE `item_template` SET `BuyPrice`=100000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=6654, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=5668;
-- Gray Ram
UPDATE `item_template` SET `BuyPrice`=100000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=6777, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=5864;
-- Brown Ram
UPDATE `item_template` SET `BuyPrice`=100000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=6899, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=5872;
-- White Ram
UPDATE `item_template` SET `BuyPrice`=100000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=6898, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=5873;
-- Red Mechanostrider
UPDATE `item_template` SET `BuyPrice`=100000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=10873, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=8563;
-- Whistle of the Emerald Raptor
UPDATE `item_template` SET `BuyPrice`=100000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=8395, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=8588;
-- Whistle of the Turquoise Raptor
UPDATE `item_template` SET `BuyPrice`=100000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=10796, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=8591;
-- Whistle of the Violet Raptor
UPDATE `item_template` SET `BuyPrice`=100000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=10799, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=8592;
-- Blue Mechanostrider
UPDATE `item_template` SET `BuyPrice`=100000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=10969, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=8595;
-- Reins of the Striped Nightsaber
UPDATE `item_template` SET `BuyPrice`=100000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=10793, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=8629;
-- Reins of the Striped Frostsaber
UPDATE `item_template` SET `BuyPrice`=100000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=8394, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=8631;
-- Reins of the Spotted Frostsaber
UPDATE `item_template` SET `BuyPrice`=100000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=10789, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=8632;
-- Reins of the Winterspring Frostsaber
UPDATE `item_template` SET `BuyPrice`=10000000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=17229, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=13086;
-- Green Mechanostrider
UPDATE `item_template` SET `BuyPrice`=100000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=17453, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=13321;
-- Unpainted Mechanostrider
UPDATE `item_template` SET `BuyPrice`=100000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=17454, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=13322;
-- Fluorescent Green Mechanostrider
UPDATE `item_template` SET `BuyPrice`=0, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=17458, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=13325;
-- Red Skeletal Horse
UPDATE `item_template` SET `BuyPrice`=100000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=17462, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=13331;
-- Blue Skeletal Horse
UPDATE `item_template` SET `BuyPrice`=100000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=17463, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=13332;
-- Brown Skeletal Horse
UPDATE `item_template` SET `BuyPrice`=100000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=17464, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=13333;
-- Gray Kodo
UPDATE `item_template` SET `BuyPrice`=100000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=18989, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=15277;
-- Brown Kodo
UPDATE `item_template` SET `BuyPrice`=100000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=18990, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=15290;
-- Black War Steed Bridle
UPDATE `item_template` SET `BuyPrice`=0, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=22717, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=18241;
-- Reins of the Black War Tiger
UPDATE `item_template` SET `BuyPrice`=0, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=22723, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=18242;
-- Black Battlestrider
UPDATE `item_template` SET `BuyPrice`=0, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=22719, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=18243;
-- Black War Ram
UPDATE `item_template` SET `BuyPrice`=0, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=22720, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=18244;
-- Horn of the Black War Wolf
UPDATE `item_template` SET `BuyPrice`=0, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=22724, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=18245;
-- Whistle of the Black War Raptor
UPDATE `item_template` SET `BuyPrice`=0, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=22721, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=18246;
-- Black War Kodo
UPDATE `item_template` SET `BuyPrice`=0, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=22718, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=18247;
-- Red Skeletal Warhorse
UPDATE `item_template` SET `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=22722, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=18248;
-- Blue Qiraji Resonating Crystal
UPDATE `item_template` SET `BuyPrice`=10000000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=25953, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=21218;
-- Red Qiraji Resonating Crystal
UPDATE `item_template` SET `BuyPrice`=10000000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=26054, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=21321;
-- Green Qiraji Resonating Crystal
UPDATE `item_template` SET `BuyPrice`=10000000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=26056, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=21323;
-- Yellow Qiraji Resonating Crystal
UPDATE `item_template` SET `BuyPrice`=10000000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=26055, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=21324;
-- Brewfest Ram
UPDATE `item_template` SET `BuyPrice`=1000000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=43899, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=33976;
-- Horn of the Black Wolf
UPDATE `item_template` SET `BuyPrice`=100000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=64658, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=46099;
-- White Kodo
UPDATE `item_template` SET `BuyPrice`=100000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=64657, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=46100;
-- Black Skeletal Horse
UPDATE `item_template` SET `BuyPrice`=100000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=64977, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=46308;
-- Reins of the Striped Dawnsaber
UPDATE `item_template` SET `BuyPrice`=100000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellid_1`=66847, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=47100;

-- Journeyman Riding
-- Whistle of the Mottled Red Raptor
UPDATE `item_template` SET `BuyPrice`=10000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=16084, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=8586;
-- Reins of the Ancient Frostsaber
UPDATE `item_template` SET `BuyPrice`=10000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=16056, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=12302;
-- Reins of the Nightsaber
UPDATE `item_template` SET `BuyPrice`=10000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=16055, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=12303;
-- Horn of the Red Wolf
UPDATE `item_template` SET `BuyPrice`=10000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=16080, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=12330;
-- Horn of the Arctic Wolf
UPDATE `item_template` SET `BuyPrice`=10000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=16081, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=12351;
-- White Stallion Bridle
UPDATE `item_template` SET `BuyPrice`=10000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=16083, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=12353;
-- Palomino Bridle
UPDATE `item_template` SET `BuyPrice`=10000000, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=16082, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=12354;
-- Whistle of the Ivory Raptor
UPDATE `item_template` SET `BuyPrice`=10000000, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=17450, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=13317;
-- White Mechanostrider Mod B
UPDATE `item_template` SET `BuyPrice`=10000000, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=15779, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=13326;
-- Icy Blue Mechanostrider Mod A
UPDATE `item_template` SET `BuyPrice`=10000000, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=17459, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=13327;
-- Black Ram
UPDATE `item_template` SET `BuyPrice`=10000000, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=17461, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=13328;
-- Frost Ram
UPDATE `item_template` SET `BuyPrice`=10000000, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=17460, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=13329;
-- Green Skeletal Warhorse
UPDATE `item_template` SET `BuyPrice`=1000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=17465, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=13334;
-- Deathcharger's Reins
UPDATE `item_template` SET `BuyPrice`=10000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=17481, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=13335;
-- Green Kodo
UPDATE `item_template` SET `BuyPrice`=10000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=18991, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=15292;
-- Teal Kodo
UPDATE `item_template` SET `BuyPrice`=10000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=18992, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=15293;
-- Reins of the Swift Frostsaber
UPDATE `item_template` SET `BuyPrice`=1000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=23221, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=18766;
-- Reins of the Swift Mistsaber
UPDATE `item_template` SET `BuyPrice`=1000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=23219, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=18767;
-- Swift Green Mechanostrider
UPDATE `item_template` SET `BuyPrice`=1000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=23225, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=18772;
-- Swift White Mechanostrider
UPDATE `item_template` SET `BuyPrice`=1000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=23223, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=18773;
-- Swift Yellow Mechanostrider
UPDATE `item_template` SET `BuyPrice`=1000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=23222, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=18774;
-- Swift Palomino
UPDATE `item_template` SET `BuyPrice`=1000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=23227, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=18776;
-- Swift Brown Steed
UPDATE `item_template` SET `BuyPrice`=1000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=23229, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=18777;
-- Swift White Steed
UPDATE `item_template` SET `BuyPrice`=1000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=23228, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=18778;
-- Swift White Ram
UPDATE `item_template` SET `BuyPrice`=1000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=23240, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=18785;
-- Swift Brown Ram
UPDATE `item_template` SET `BuyPrice`=1000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=23238, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=18786;
-- Swift Gray Ram
UPDATE `item_template` SET `BuyPrice`=1000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=23239, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=18787;
-- Swift Blue Raptor
UPDATE `item_template` SET `BuyPrice`=1000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=23241, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=18788;
-- Swift Olive Raptor
UPDATE `item_template` SET `BuyPrice`=1000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=23242, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=18789;
-- Swift Orange Raptor
UPDATE `item_template` SET`BuyPrice`=1000000, `SellPrice`=0,  `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=23243, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=18790;
-- Purple Skeletal Warhorse
UPDATE `item_template` SET `BuyPrice`=1000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=23246, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=18791;
-- Great White Kodo
UPDATE `item_template` SET `BuyPrice`=1000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=23247, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=18793;
-- Great Brown Kodo
UPDATE `item_template` SET `BuyPrice`=1000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=23249, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=18794;
-- Great Gray Kodo
UPDATE `item_template` SET `BuyPrice`=1000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=23248, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=18795;
-- Horn of the Swift Brown Wolf
UPDATE `item_template` SET `BuyPrice`=1000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=23250, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=18796;
-- Horn of the Swift Timber Wolf
UPDATE `item_template` SET `BuyPrice`=1000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=23251, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=18797;
-- Horn of the Swift Gray Wolf
UPDATE `item_template` SET `BuyPrice`=1000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=23252, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=18798;
-- Reins of the Swift Stormsaber
UPDATE `item_template` SET `BuyPrice`=1000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=23338, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=18902;
-- Horn of the Frostwolf Howler
UPDATE `item_template` SET `BuyPrice`=0, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=23509, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=19029;
-- Stormpike Battle Charger
UPDATE `item_template` SET `BuyPrice`=0, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=23510, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=19030;
-- Swift Razzashi Raptor
UPDATE `item_template` SET `BuyPrice`=10000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=24242, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=19872;
-- Swift Zulian Tiger
UPDATE `item_template` SET `BuyPrice`=10000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=24252, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=19902;
-- Foror's Fabled Steed
UPDATE `item_template` SET `BuyPrice`=10000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=24576, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=20221;
-- Black Qiraji Resonating Crystal
UPDATE `item_template` SET `BuyPrice`=100000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=26656, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=21176;
-- Black Battlestrider
UPDATE `item_template` SET `BuyPrice`=0, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=22719, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=29465;
-- Black War Kodo
UPDATE `item_template` SET `BuyPrice`=0, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=22718, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=29466;
-- Black War Ram
UPDATE `item_template` SET `BuyPrice`=0, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=22720, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=29467;
-- Black War Steed Bridle
UPDATE `item_template` SET `BuyPrice`=0, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=22717, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=29468;
-- Horn of the Black War Wolf
UPDATE `item_template` SET `BuyPrice`=0, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=22724, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=29469;
-- Red Skeletal Warhorse
UPDATE `item_template` SET `BuyPrice`=0, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=22722, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=29470;
-- Reins of the Black War Tiger
UPDATE `item_template` SET `BuyPrice`=0, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=22723, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=29471;
-- Whistle of the Black War Raptor
UPDATE `item_template` SET `BuyPrice`=0, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=22721, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=29472;
-- Swift Brewfest Ram
UPDATE `item_template` SET `BuyPrice`=10000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=43900, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=33977;
-- Swift Warstrider
UPDATE `item_template` SET `BuyPrice`=0, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=35028, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=34129;
-- Ochre Skeletal Warhorse
UPDATE `item_template` SET `BuyPrice`=1000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=66846, `spellcharges_1`=0, `spellcategory_1`=330, `spellcategorycooldown_1`=3000, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=47101;

