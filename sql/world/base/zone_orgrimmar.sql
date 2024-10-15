-- Whuut <Journeyman Alchemist>
UPDATE `creature_template` SET `subname`='Journeyman Alchemist', `npcflag`=81, `trainer_type`=2 WHERE `entry`=11046;

-- Yelmak <Expert Alchemist>
UPDATE `creature_template` SET `subname`='Expert Alchemist' WHERE `entry`=3347;

-- Shayis Steelfury <Armor Crafter>
UPDATE `creature_template` SET `subname`='Armor Crafter' WHERE `entry`=7230;

-- Kelgruk Bloodaxe <Weapon Crafter>
UPDATE `creature_template` SET `subname`='Weapon Crafter' WHERE `entry`=7231;

-- Ug'thok <Journeyman Blacksmith>
UPDATE `creature_template` SET `subname`='Journeyman Blacksmith', `npcflag`=81, `trainer_type`=2 WHERE `entry`=10266;

-- Snarl <Expert Blacksmith>
UPDATE `creature_template` SET `subname`='Expert Blacksmith', `npcflag`=81, `trainer_type`=2, `type_flags`=134217728 WHERE `entry`=1383;

-- Saru Steelfury <Artisan Blacksmith>
UPDATE `creature_template` SET `subname`='Artisan Blacksmith' WHERE `entry`=3355;

-- Jhag <Journeyman Enchanter>
UPDATE `creature_template` SET `subname`='Journeyman Enchanter', `npcflag`=81, `trainer_type`=2 WHERE `entry`=11066;

-- Godan <Expert Enchanter>
UPDATE `creature_template` SET `subname`='Expert Enchanter' WHERE `entry`=3345;

-- Thund <Journeyman Engineer>
UPDATE `creature_template` SET `subname`='Journeyman Engineer', `npcflag`=81, `trainer_type`=2 WHERE `entry`=2857;

-- Nogg <Expert Engineer>
UPDATE `creature_template` SET `subname`='Expert Engineer', `npcflag`=81, `trainer_type`=2, `type_flags`=134217728 WHERE `entry`=3412;

-- Roxxik <Artisan Engineer>
UPDATE `creature_template` SET `subname`='Artisan Engineer', `npcflag`=81, `trainer_type`=2, `type_flags`=134217728 WHERE `entry`=11017;

-- Kamari <Journeyman Leatherworker>
UPDATE `creature_template` SET `subname`='Journeyman Leatherworker', `npcflag`=81, `trainer_type`=2 WHERE `entry`=5811;

-- Karolek <Expert Leatherworker>
UPDATE `creature_template` SET `subname`='Expert Leatherworker' WHERE `entry`=3365;

-- Snang <Journeyman Tailor>
UPDATE `creature_template` SET `subname`='Journeyman Tailor', `npcflag`=81, `trainer_type`=2 WHERE `entry`=2855;

-- Magar <Expert Tailor>
UPDATE `creature_template` SET `subname`='Expert Tailor' WHERE `entry`=3363;


-- Snarl <Expert Blacksmith>
DELETE FROM `npc_trainer` WHERE `ID`=1383;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (1383, -310000), (1383, -310001);

-- Snang <Journeyman Tailor>
DELETE FROM `npc_trainer` WHERE `ID`=2855;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (2855, -410000);

-- Thund <Journeyman Engineer>
DELETE FROM `npc_trainer` WHERE `ID`=2857;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (2857, -340000);

-- Lumak <Fishing Trainer>
DELETE FROM `npc_trainer` WHERE `ID`=3332;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (3332, -360000);

-- Godan <Expert Enchanter>
DELETE FROM `npc_trainer` WHERE `ID`=3345;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (3345, -330000), (3345, -330001);

-- Yelmak <Expert Alchemist>
DELETE FROM `npc_trainer` WHERE `ID`=3347;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (3347, -300000), (3347, -300001);

-- Saru Steelfury <Artisan Blacksmith>
DELETE FROM `npc_trainer` WHERE `ID`=3355;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (3355, -310000), (3355, -310001), (3355, -310002);

-- Makaru <Mining Trainer>
DELETE FROM `npc_trainer` WHERE `ID`=3357;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (3357, -390000);

-- Magar <Expert Tailor>
DELETE FROM `npc_trainer` WHERE `ID`=3363;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (3363, -410000), (3363, -410001);

-- Karolek <Expert Leatherworker>
DELETE FROM `npc_trainer` WHERE `ID`=3365;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (3365, -380000), (3365, -380001);

-- Arnok <First Aid Trainer>
DELETE FROM `npc_trainer` WHERE `ID`=3373;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (3373, -350000);

-- Zamja <Cooking Trainer>
DELETE FROM `npc_trainer` WHERE `ID`=3399;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (3399, -320000);

-- Nogg <Expert Engineer>
DELETE FROM `npc_trainer` WHERE `ID`=3412;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (3412, -340000), (3412, -340001);

-- Kildar <Riding Trainer>
DELETE FROM `npc_trainer` WHERE `ID`=4752;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (4752, -450000);

-- Kamari <Journeyman Leatherworker>
DELETE FROM `npc_trainer` WHERE `ID`=5811;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (5811, -380000);

-- Thuwd <Skinning Trainer>
DELETE FROM `npc_trainer` WHERE `ID`=7088;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (7088, -400000);

-- Ug'thok <Journeyman Blacksmith>
DELETE FROM `npc_trainer` WHERE `ID`=10266;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (10266, -310000);

-- Roxxik <Artisan Engineer>
DELETE FROM `npc_trainer` WHERE `ID`=11017;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (11017, -340000), (11017, -340001), (11017, -340002);

-- Whuut <Journeyman Alchemist>
DELETE FROM `npc_trainer` WHERE `ID`=11046;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (11046, -300000);

-- Jhag <Journeyman Enchanter>
DELETE FROM `npc_trainer` WHERE `ID`=11066;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (11066, -330000);


-- Snarl <Expert Blacksmith>
DELETE FROM `gossip_menu_option` WHERE `MenuID`=2782;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`) VALUES
(2782, 0, 3, 'Train me.', 3266, 5, 16);

-- Nogg <Expert Engineer>
DELETE FROM `gossip_menu_option` WHERE `MenuID`=4148;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`) VALUES
(4148, 0, 3, 'Train me.', 3266, 5, 16);

-- Roxxik <Artisan Engineer>
DELETE FROM `gossip_menu_option` WHERE `MenuID`=4151;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`) VALUES
(4151, 0, 3, 'Train me.', 3266, 5, 16);


-- Saru Steelfury <Artisan Blacksmith>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=1012 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
(15, 1012, 0, 7, 164, 125, 'Show menu if blacksmithing is 125 or higher');

-- Snarl <Expert Blacksmith>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=2782 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
(15, 2782, 0, 7, 164, 50, 'Show menu if blacksmithing is 50 or higher');

-- Yelmak <Expert Alchemist>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=4126 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
(15, 4126, 0, 7, 171, 50, 'Show menu if alchemy is 50 or higher');

-- Nogg <Expert Engineer>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=4148 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
(15, 4148, 0, 7, 202, 50, 'Show menu if engineering is 50 or higher');

-- Roxxik <Artisan Engineer>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=4151 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
(15, 4151, 0, 7, 202, 125, 'Show menu if engineering is 125 or higher');

-- Godan <Expert Enchanter>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=4168 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
(15, 4168, 0, 7, 333, 50, 'Show menu if enchanting is 50 or higher');

-- Karolek <Expert Leatherworker>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=4209 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
(15, 4209, 0, 7, 165, 50, 'Show menu if leatherworking is 50 or higher');

-- Magar <Expert Tailor>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=4347 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
(15, 4347, 0, 7, 197, 50, 'Show menu if tailoring is 50 or higher');


-- Nazgrel <Advisor to Thrall>
DELETE FROM `creature` WHERE `id1`=3230 AND `map`=1;
INSERT INTO `creature` (`id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES (3230, 1, 1938.55, -4133.22, 41.1424, 4.07636, 300);

-- Orgrimmar Grunt
DELETE FROM `creature` WHERE `guid` IN (10299, 203492, 203493, 203494, 203495);
INSERT INTO `creature` (`guid`, `id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES (10299, 3296, 1, 1620.45, -4252.84, 47.5273, 3.7001, 300);

-- Brakgul Deathbringer <Warsong Gulch Battlemaster>
DELETE FROM `creature` WHERE `id1`=3890;
INSERT INTO `creature` (`id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES (3890, 1, 1990.64, -4794.13, 56.0472, 3.22013, 300);

-- Legionnaire Teena
DELETE FROM `creature` WHERE `id1`=12788;
INSERT INTO `creature` (`id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES (12788, 1, 1651.22, -4213.42, 55.4372, 0.427786, 25);

-- Lady Palanseer <Armor Quartermaster>
DELETE FROM `creature` WHERE `id1`=34043;
DELETE FROM `creature` WHERE `id1`=12792;
INSERT INTO `creature` (`id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES (12792, 1, 1669.78, -4200.1, 56.3815, 3.61023, 180);

-- Brave Stonehide <Officer Accessories Quartermaster>
DELETE FROM `creature` WHERE `id1`=12793;
INSERT INTO `creature` (`id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES (12793, 1, 1657.6, -4191.97, 56.383, 4.52365, 180);

-- Stone Guard Zarg <Food and Drink>
DELETE FROM `creature` WHERE `id1`=12794;
INSERT INTO `creature` (`id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES (12794, 1, 1641.65, -4197.52, 56.3823, 5.41219, 180);

-- First Sergeant Hola'mahi <Reagent Vendor>
DELETE FROM `creature` WHERE `id1`=12795;
INSERT INTO `creature` (`id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES (12795, 1, 1673.9, -4216, 56.3826, 2.93578, 180);

-- Raider Bork <Mount Quartermaster>
DELETE FROM `creature` WHERE `id1`=12796;
INSERT INTO `creature` (`id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES (12796, 1, 1674.43, -4212.55, 56.3829, 3.00254, 1290);

-- Sergeant Ba'sha <Accessories Quartermaster>
DELETE FROM `creature` WHERE `id1`=12799;
INSERT INTO `creature` (`id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES (12799, 1, 1632.21, -4262.19, 49.027, 3.63029, 430);

-- Sergeant Thunderhorn <Weapons Quartermaster>
DELETE FROM `creature` WHERE `id1`=14581;
INSERT INTO `creature` (`id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES (14581, 1, 1644.52, -4195.26, 56.3826, 5.43078, 180);

-- High Overlord Saurfang
DELETE FROM `creature` WHERE `id1`=14720;
INSERT INTO `creature` (`id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES (14720, 1, 1565.79, -4395.27, 6.9866, 3.35103, 600);

-- Kartra Bloodsnarl <Alterac Valley Battlemaster>
DELETE FROM `creature` WHERE `id1`=14942;
INSERT INTO `creature` (`id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES (14942, 1, 1980.9, -4787.78, 55.8796, 5.13127, 600);

-- Deze Snowbane <Arathis Basin Battlemaster>
DELETE FROM `creature` WHERE `id1`=15006;
INSERT INTO `creature` (`id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES (15006, 1, 2002.26, -4796.74, 56.8471, 3.00197, 600);

-- Master Pyreanor <Paladin Trainer>
UPDATE `creature` SET `position_x`=1940.23, `position_y`=-4135.53, `position_z`=41.1522, `orientation`=3.12425  WHERE `id1`=23128;

-- Summon Felsteed (Warlock)
DELETE FROM `creature_queststarter` WHERE `id`=3326 AND `quest`=3631;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (3326, 3631);

-- Knowledge of the Orb of Orahil (Warlock)
DELETE FROM `creature_queststarter` WHERE `id`=3326 AND `quest`=4967;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (3326, 4967);

-- An Imp's Request (Warlock)
DELETE FROM `creature_queststarter` WHERE `id` IN (3324, 3325, 3326, 4564, 5495, 5496) AND `quest`=8419;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (3326, 8419);

-- Vol'jin <King of Darkspear Trolls>
UPDATE `creature_template` SET `subname`='King of Darkspear Trolls', `minlevel`=60, `maxlevel`=60 WHERE `entry`=10540;

-- Nazgrel <Advisor to Thrall>
UPDATE `creature_template` SET `scale`=0.7, `npcflag`=2, `faction`=29, `gossip_menu_id`=0 WHERE `entry`=3230;

-- Orgrimmar Grunt
UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55 WHERE `entry`=3296;

-- Doras <Wind Rider Master>
UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55 WHERE `entry`=3310;

-- Trak'gen <General Goods Merchant>
UPDATE `creature_template` SET `subname`='General Goods Merchant' WHERE `entry`=3313;

-- Kaja <Guns and Ammo Merchant>
UPDATE `creature_template` SET `subname`='Guns and Ammo Merchant' WHERE `entry`=3322;

-- Horthus <Reagents Vendor>
UPDATE `creature_template` SET `subname`='Reagents Vendor' WHERE `entry`=3323;

-- Rekkul <Poison Vendor>
UPDATE `creature_template` SET `subname`='Poison Vendor' WHERE `entry`=3334;

-- Hagrus <Reagents Vendor>
UPDATE `creature_template` SET `subname`='Reagents Vendor' WHERE `entry`=3335;

-- Asoran <General Goods Vendor>
UPDATE `creature_template` SET `subname`='General Goods Vendor' WHERE `entry`=3350;

-- Magenius <Reagents Vendor>
UPDATE `creature_template` SET `subname`='Reagents Vendor' WHERE `entry`=3351;

-- Sumi <Blacksmithing Supplier>
UPDATE `creature_template` SET `subname`='Blacksmithing Supplier' WHERE `entry`=3356;

-- Gorina <Mining Supplier>
UPDATE `creature_template` SET `subname`='Mining Supplier' WHERE `entry`=3358;

-- Felika <General Trade Goods Merchant>
UPDATE `creature_template` SET `subname`='General Trade Goods Merchant' WHERE `entry`=3367;

-- Xen'to <Cooking Supplier>
UPDATE `creature_template` SET `subname`='Cooking Supplier' WHERE `entry`=3400;

-- Thrall <Warchief>
UPDATE `creature_template` SET `minlevel`=63, `maxlevel`=63 WHERE `entry`=4949;

-- Shimra <General Trade Goods Merchant>
UPDATE `creature_template` SET `subname`='General Trade Goods Merchant' WHERE `entry`=5817;

-- Snurk Bucksquick <Zeppelin Master>
UPDATE `creature_template` SET `subname`='Zeppelin Master' WHERE `entry`=12136;

-- Legionnaire Teena
UPDATE `creature_template` SET `subname`=NULL, `npcflag`=0, `faction`=85 WHERE `entry`=12788;

-- Lady Palanseer <Armor Quartermaster>
UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55 WHERE `entry`=12792;

-- Brave Stonehide <Officer Accessories Quartermaster>
UPDATE `creature_template` SET `subname`='Officer Accessories Quartermaster' WHERE `entry`=12793;

-- First Sergeant Hola'mahi <Reagent Vendor>
UPDATE `creature_template` SET `subname`='Reagent Vendor' WHERE `entry`=12795;

-- Stone Guard Zarg <Food and Drink>
UPDATE `creature_template` SET `subname`='Food and Drink' WHERE `entry`=12794;

-- Raider Bork <Mount Quartermaster>
UPDATE `creature_template` SET `subname`='Mount Quartermaster' WHERE `entry`=12796;

-- Kor'kron Elite
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `rank`=0 WHERE `entry`=14304;

-- Scout Stronghand
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=14375;

-- Scout Manslayer
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=14376;

-- Scout Tharr
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=14377;

-- Sergeant Thunderhorn <Weapons Quartermaster>
UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55 WHERE `entry`=14581;

-- High Overlord Saurfang
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62 WHERE `entry`=14720;

-- Horde Warbringer
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `rank`=0 WHERE `entry`=15350;

-- Raider Bork <Mount Quartermaster>
UPDATE `creature_template_addon` SET `mount`=0 WHERE `entry`=12796;

-- Olvia <Meat Vendor>
DELETE FROM `npc_vendor` WHERE `entry`=3312 AND `item` IN (27854, 33454, 35953);

-- Trak'gen <General Goods Merchant>
DELETE FROM `npc_vendor` WHERE `entry`=3313 AND `item` IN (25861, 25872, 25873, 25875, 25876, 28053, 28060, 28979, 29007, 29008, 29009, 29010, 29013, 29014);

-- Kaja <Guns and Ammo Merchant>
DELETE FROM `npc_vendor` WHERE `entry`=3322 AND `item`=28060;

-- Horthus <Reagents Vendor>
DELETE FROM `npc_vendor` WHERE `entry`=3323 AND `item` IN (22147, 22148, 37201, 44605, 44614, 44615);

-- Kor'jus <Mushroom Vendor>
DELETE FROM `npc_vendor` WHERE `entry`=3329 AND `item` IN (27859, 33452, 35947);

-- Rekkul <Poison Vendor>
DELETE FROM `npc_vendor` WHERE `entry`=3334 AND `item` IN (21835, 21927, 22053, 22054, 22055, 43230, 43231, 43232, 43233, 43234, 43235, 43237);

-- Hagrus <Reagents Vendor>
DELETE FROM `npc_vendor` WHERE `entry`=3335 AND `item` IN (22147, 22148, 37201);

-- Shan'ti <Fruit Vendor>
DELETE FROM `npc_vendor` WHERE `entry`=3342 AND `item` IN (27856, 35948, 35949);

-- Kithas <Enchanting Supplies>
DELETE FROM `npc_vendor` WHERE `entry`=3346 AND `item`=6342;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3346, 6342, 1, 7200);

-- Kor'geld <Alchemy Supplies>
DELETE FROM `npc_vendor` WHERE `entry`=3348 AND `item`=40411;

-- Asoran <General Goods Vendor>
DELETE FROM `npc_vendor` WHERE `entry`=3350 AND `item` IN (28053, 28060);

-- Magenius <Reagents Vendor>
DELETE FROM `npc_vendor` WHERE `entry`=3351 AND `item` IN (22147, 22148, 37201);

-- Gorina <Mining Supplier>
DELETE FROM `npc_vendor` WHERE `entry`=3358 AND `item` IN (20815, 20824);

-- Ogunaro Wolfrunner <Kennel Master>
DELETE FROM `npc_vendor` WHERE `entry`=3362 AND `item`=46099;

-- Borya <Tailoring Supplies>
DELETE FROM `npc_vendor` WHERE `entry`=3364 AND `item`=38426;

-- Tamar <Leatherworking Supplies>
DELETE FROM `npc_vendor` WHERE `entry`=3366 AND `item`=38426;

-- Felika <General Trade Goods Merchant>
DELETE FROM `npc_vendor` WHERE `entry`=3367 AND `item` IN (14341, 18256, 20856);
DELETE FROM `npc_vendor` WHERE `entry`=3367 AND `item` IN (2324, 2605, 6260, 6529);
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES (3367, 2324), (3367, 2605), (3367, 6260), (3367, 6529);

-- Borstan <Meat Vendor>
DELETE FROM `npc_vendor` WHERE `entry`=3368 AND `item` IN (27854, 33454, 35953);

-- Xen'to <Cooking Supplier>
DELETE FROM `npc_vendor` WHERE `entry`=3400 AND `item`=30817;

-- Jin'sora <Bow Merchant>
DELETE FROM `npc_vendor` WHERE `entry`=3410 AND `item` IN (11303, 11306, 11307, 28053);

-- Sovik <Engineering Supplies>
DELETE FROM `npc_vendor` WHERE `entry`=3413 AND `item` IN (22729, 39684, 40533);

-- Garyl <Tabard Vendor>
DELETE FROM `npc_vendor` WHERE `entry`=5188 AND `item` IN (15197, 15199, 19031, 19505, 24004, 31773, 31775, 31776, 31777, 31778, 31779, 31780, 31781, 31804, 32445, 32828, 35221);

-- Shimra <General Trade Goods Merchant>
DELETE FROM `npc_vendor` WHERE `entry`=5817 AND `item` IN (10648, 14341, 18256, 30817, 39354);

-- Innkeeper Gryshka <Innkeeper>
DELETE FROM `npc_vendor` WHERE `entry`=6929 AND `item` IN (27854, 28399, 33444, 33445, 33454, 35953, 35954);

-- Legionnaire Teena
DELETE FROM `npc_vendor` WHERE `entry`=12788;

-- Lady Palanseer <Armor Quartermaster>
DELETE FROM `npc_vendor` WHERE `entry`=12792 AND `item` IN 
    (16533, 16534, 16535, 16536, 16539, 16540, 16541, 16542, 16543, 16544, 16545, 16548, 16549, 16550, 16551, 16552, 16554, 16555, 16558, 
    16560, 16561, 16562, 16563, 16564, 16565, 16566, 16567, 16568, 16569, 16571, 16573, 16574, 16577, 16578, 16579, 16580, 17586, 17588, 
    17590, 17591, 17592, 17593, 17618, 17620, 17622, 17623, 17624, 17625, 22843, 22852, 22855, 22856, 22857, 22858, 22859, 
    22860, 22862, 22863, 22864, 22865, 22867, 22868, 22869, 22870, 22872, 22873, 22874, 22875, 22876, 22877, 22878, 22879, 
    22880, 22881, 22882, 22883, 22884, 22885, 22886, 22887, 23243, 23244, 23251, 23252, 23253, 23254, 23255, 23256, 23257, 23258, 23259, 23260, 23261, 23262, 23263, 23264);

INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES
    (12792, 16533, 464), (12792, 16534, 542), (12792, 16535, 463), (12792, 16536, 465), (12792, 16539, 465), (12792, 16540, 541), (12792, 16541, 463), (12792, 16542, 464), (12792, 16543, 542),
    (12792, 16544, 465), (12792, 16545, 465), (12792, 16548, 541), (12792, 16549, 463), (12792, 16550, 464), (12792, 16551, 465), (12792, 16552, 542), (12792, 16554, 465), (12792, 16555, 541),
    (12792, 16558, 465), (12792, 16560, 541), (12792, 16561, 464), (12792, 16562, 465), (12792, 16563, 463), (12792, 16564, 542), (12792, 16565, 463), (12792, 16566, 464), (12792, 16567, 542),
    (12792, 16568, 465), (12792, 16569, 465), (12792, 16571, 541), (12792, 16573, 465), (12792, 16574, 541), (12792, 16577, 463), (12792, 16578, 464), (12792, 16579, 542), (12792, 16580, 465),    
    (12792, 17586, 465), (12792, 17588, 541), (12792, 17590, 465), (12792, 17591, 464), (12792, 17592, 463), (12792, 17593, 542), (12792, 17618, 465), (12792, 17620, 541), (12792, 17622, 465),
    (12792, 17623, 464), (12792, 17624, 463), (12792, 17625, 542), (12792, 22843, 427), (12792, 22852, 427), (12792, 22855, 427), (12792, 22856, 427), (12792, 22857, 427), (12792, 22858, 427),
    (12792, 22859, 427), (12792, 22860, 427), (12792, 22862, 428), (12792, 22863, 428), (12792, 22864, 428), (12792, 22865, 428), (12792, 22867, 428), (12792, 22868, 428), (12792, 22869, 428),
    (12792, 22870, 428), (12792, 22872, 652), (12792, 22873, 653), (12792, 22874, 652), (12792, 22875, 653), (12792, 22876, 652), (12792, 22877, 652), (12792, 22878, 653), (12792, 22879, 652),
    (12792, 22880, 653), (12792, 22881, 653), (12792, 22882, 653), (12792, 22883, 653), (12792, 22884, 652), (12792, 22885, 652), (12792, 22886, 652), (12792, 22887, 653), (12792, 23243, 427),
    (12792, 23244, 444), (12792, 23251, 444), (12792, 23252, 427), (12792, 23253, 444), (12792, 23254, 427), (12792, 23255, 444), (12792, 23256, 427), (12792, 23257, 444), (12792, 23258, 427),
    (12792, 23259, 444), (12792, 23260, 427), (12792, 23261, 444), (12792, 23262, 427), (12792, 23263, 444), (12792, 23264, 427);

-- Brave Stonehide <Officer Accessories Quartermaster>
DELETE FROM `npc_vendor` WHERE `entry`=12793 AND `item` IN (15197, 15200, 16335, 16341, 16486, 16497, 16532, 18427, 18428, 18429, 18430, 18432, 18434, 18435, 18436, 18437, 18461, 18834, 18845, 18846, 18849, 18850, 18851, 18852, 18853, 24551, 28118, 28119, 28120, 28123, 28239, 28240, 28241, 28242, 28243, 28246, 28247, 28362, 28363, 28377, 28378, 29592, 30343, 30344, 30345, 30346, 31838, 31839, 31840, 31841, 31852, 31853, 31854, 31855, 32453, 32455, 37865, 38588, 44957);

-- First Sergeant Hola'mahi <Reagent Vendor>
DELETE FROM `npc_vendor` WHERE `entry`=12795 AND `item` IN 
    (16533, 16534, 16535, 16536, 16539, 16540, 16541, 16542, 16543, 16544, 16545, 16548, 16549, 16550, 16551, 16552, 16554, 16555, 16558, 
    16560, 16561, 16562, 16563, 16564, 16565, 16566, 16567, 16568, 16569, 16571, 16573, 16574, 16577, 16578, 16579, 16580, 17586, 17588, 
    17590, 17591, 17592, 17593, 17618, 17620, 17622, 17623, 17624, 17625, 22843, 22852, 22855, 22856, 22857, 22858, 22859, 
    22860, 22862, 22863, 22864, 22865, 22867, 22868, 22869, 22870, 22872, 22873, 22874, 22875, 22876, 22877, 22878, 22879, 
    22880, 22881, 22882, 22883, 22884, 22885, 22886, 22887, 23243, 23244, 23251, 23252, 23253, 23254, 23255, 23256, 23257, 23258, 23259, 
    23260, 23261, 23262, 23263, 23264, 29600, 29601, 29602, 29603, 29604, 29605, 29612, 29613, 29614, 29615, 29616, 29617);

DELETE FROM `npc_vendor` WHERE `entry`=12795 AND `item` IN (5565, 16583, 17020, 17021, 17026, 17028, 17029, 17030, 17031, 17032, 17033, 17034, 17035, 17036, 17037, 17038);
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES
    (12795, 5565), (12795, 16583), (12795, 17020), (12795, 17021), (12795, 17026), (12795, 17028), (12795, 17029), (12795, 17030),
    (12795, 17031), (12795, 17032), (12795, 17033), (12795, 17034), (12795, 17035), (12795, 17036), (12795, 17037), (12795, 17038);

-- Stone Guard Zarg <Food and Drink>
DELETE FROM `npc_vendor` WHERE `entry`=12794 AND `item` IN 
    (16345, 18826, 18828, 18831, 18835, 18837, 18840, 18844, 18848, 18860, 18866, 18868, 18871, 18874, 18877, 23464, 23465, 23466, 23467, 23468, 23469);
DELETE FROM `npc_vendor` WHERE `entry`=12794 AND `item` IN
    (117, 159, 1179, 1205, 1645, 1708, 2287, 2593, 2594, 2595, 2596, 2723, 3770, 3771, 4536, 4537, 4538, 4539, 4540, 4541, 4542, 4544, 4599, 4601, 4602, 4604, 4605, 4606, 4607, 4608, 8766, 8948, 8950, 8952, 8953);

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES
    (12794, 117), (12794, 159), (12794, 1179), (12794, 1205), (12794, 1645), (12794, 1708), (12794, 2287), (12794, 2593), (12794, 2594), (12794, 2595), (12794, 2596), (12794, 2723),
    (12794, 3770), (12794, 3771), (12794, 4536), (12794, 4537), (12794, 4538), (12794, 4539), (12794, 4540), (12794, 4541), (12794, 4542), (12794, 4544), (12794, 4599), (12794, 4601),
    (12794, 4602), (12794, 4604), (12794, 4605), (12794, 4606), (12794, 4607), (12794, 4608), (12794, 8766), (12794, 8948), (12794, 8950), (12794, 8952), (12794, 8953);

-- Raider Bork <Mount Quartermaster>
DELETE FROM `npc_vendor` WHERE `entry`=12796 AND `item` IN (29466, 29469, 29470, 29472, 34129);
DELETE FROM `npc_vendor` WHERE `entry`=12796 AND `item` IN (18245, 18246, 18247, 18248);
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES (12796, 18245, 423), (12796, 18246, 423), (12796, 18247, 423), (12796, 18248, 423);

-- Sergeant Thunderhorn <Weapons Quartermaster>
DELETE FROM `npc_vendor` WHERE `entry`=14581 AND `item` IN (16345, 18826, 18828, 18831, 18835, 18837, 18840, 18844, 18848, 18860, 18866, 18868, 18871, 18874, 18877, 23464, 23465, 23466, 23467, 23468, 23469);
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES
    (14581, 16345, 2291), (14581, 18826, 2291), (14581, 18828, 2291), (14581, 18831, 2257), (14581, 18835, 2291), (14581, 18837, 2291), (14581, 18840, 2291), 
    (14581, 18844, 2291), (14581, 18848, 2291), (14581, 18860, 2291), (14581, 18866, 2291), (14581, 18868, 2257), (14581, 18871, 2257), (14581, 18874, 2257), 
    (14581, 18877, 2257), (14581, 23464, 2291), (14581, 23465, 2257), (14581, 23466, 2291), (14581, 23467, 2291), (14581, 23468, 2291), (14581, 23469, 2291);

-- Nogg Quest Flags fix
UPDATE `creature_template` SET `npcflag` = `npcflag` | 2 WHERE `entry` = 3412;

-- Fix quest A Strange Request to use Vanilla NPCs
UPDATE `quest_template` SET `LogDescription` = "Take the Shrunken Head to Neeru Fireblade in Orgrimmar.", `QuestDescription` = "Neeru Fireblade in Orgrimmar has what I need to get started here! He has mixed up a concoction that I need for my... well, you'll see.$B$BOff with you now -- to Orgrimmar. Here, take this with you. It's a shrunken head that I promised Neeru in exchange for the herbs. It's the head of some poor dwarf I ventured across in the forest. I'm sure Neeru will be pleased.$B$BYou'll find Neeru in the Cleft of Shadow." WHERE `ID` = 3121;
UPDATE `creature_questender` SET `id` = 3216 WHERE `quest` = 3121;
UPDATE `creature_queststarter` SET `id` = 3216 WHERE `quest` = 3122;
UPDATE `quest_template` SET `LogDescription` = "Deliver Neeru's Herb Pouch to Witch Doctor Uzer'i in Feralas." WHERE `ID` = 3122;
