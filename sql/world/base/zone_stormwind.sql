-- Dane Lindgren <Apprentice Blacksmith>
UPDATE `creature_template` SET `subname`='Journeyman Blacksmith', `npcflag`=81, `trainer_type`=2 WHERE `entry`=957;

-- Betty Quin <Apprentice Enchanter>
UPDATE `creature_template` SET `subname`='Journeyman Enchanter', `npcflag`=81, `trainer_type`=2 WHERE `entry`=11068;

-- Lucan Cordell <Enchanting Trainer>
UPDATE `creature_template` SET `subname`='Expert Enchanter' WHERE `entry`=1317;

-- Sprite Jumpsprocket <Apprentice Engineer>
UPDATE `creature_template` SET `subname`='Journeyman Engineer', `npcflag`=81, `trainer_type`=2 WHERE `entry`=11026;

-- Randal Worth <Apprentice Leatherworker>
UPDATE `creature_template` SET `subname`='Journeyman Leatherworker', `npcflag`=81, `trainer_type`=2 WHERE `entry`=11096;

-- Lawrence Schneider <Apprentice Tailor>
UPDATE `creature_template` SET `subname`='Journeyman Tailor', `npcflag`=81, `trainer_type`=2 WHERE `entry`=1300;

-- Sellandus <Expert Tailor>
UPDATE `creature_template` SET `type_flags`=134217728 WHERE `entry`=5567;
    
-- Georgio Bolero <Artisan Tailor>
UPDATE `creature_template` SET `subname`='Artisan Tailor' WHERE `entry`=1346;


-- Tel'Athir <Journeyman Alchemist>
DELETE FROM `npc_trainer` WHERE `ID`=5500;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (5500, -300000);

-- Lilyssia Nightbreeze <Expert Alchemist>
DELETE FROM `npc_trainer` WHERE `ID`=5499;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (5499, -300000), (5499, -300001);

-- Dane Lindgren <Journeyman Blacksmith>
DELETE FROM `npc_trainer` WHERE `ID`=957;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (957, -310000);

-- Therum Deepforge <Expert Blacksmith>
DELETE FROM `npc_trainer` WHERE `ID`=5511;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (5511, -310000), (5511, -310001);

-- Betty Quin <Journeyman Enchanter>
DELETE FROM `npc_trainer` WHERE `ID`=11068;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (11068, -330000);

-- Lucan Cordell <Expert Enchanter>
DELETE FROM `npc_trainer` WHERE `ID`=1317;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (1317, -330000), (1317, -330001);

-- Sprite Jumpsprocket <Journeyman Engineer>
DELETE FROM `npc_trainer` WHERE `ID`=11026;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (11026, -340000);

-- Lilliam Sparkspindle <Expert Engineer>
DELETE FROM `npc_trainer` WHERE `ID`=5518;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (5518, -340000), (5518, -340001);

-- Randal Worth <Journeyman Leatherworker>
DELETE FROM `npc_trainer` WHERE `ID`=11096;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (11096, -380000);

-- Simon Tanner <Expert Leatherworker>
DELETE FROM `npc_trainer` WHERE `ID`=5564;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (5564, -380000), (5564, -380001);

-- Lawrence Schneider <Journeyman Tailor>
DELETE FROM `npc_trainer` WHERE `ID`=1300;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (1300, -410000);

-- Sellandus <Expert Tailor>
DELETE FROM `npc_trainer` WHERE `ID`=5567;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (5567, -410000), (5567, -410001);

-- Georgio Bolero <Artisan Tailor>
DELETE FROM `npc_trainer` WHERE `ID`=1346;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (1346, -410000), (1346, -410001), (1346, -410002);


-- Lucan Cordell <Expert Enchanter>
DELETE FROM `gossip_menu_option` WHERE `MenuID`=4161;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`) VALUES 
(4161, 0, 3, 'Train me.', 3266, 5, 16);

-- Sellandus <Expert Tailor>
DELETE FROM `gossip_menu_option` WHERE `MenuID`=4344;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`) VALUES 
(4344, 0, 3, 'Train me.', 3266, 5, 16);


-- Therum Deepforge <Expert Blacksmith>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=581 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES 
(15, 581, 0, 7, 164, 50, 'Show menu if blacksmithing is 50 or higher');

-- Lilliam Sparkspindle <Expert Engineer>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=4146 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES 
(15, 4146, 0, 7, 202, 50, 'Show menu if engineering is 50 or higher');

-- Lucan Cordell <Expert Enchanter>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=4161 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES 
(15, 4161, 0, 7, 333, 50, 'Show menu if enchanting is 50 or higher');

-- Lilyssia Nightbreeze <Expert Alchemist>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=4201 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
(15, 4201, 0, 7, 171, 50, 'Show menu if alchemy is 50 or higher');

-- Simon Tanner <Expert Leatherworker>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=4203 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES 
(15, 4203, 0, 7, 165, 50, 'Show menu if leatherworking is 50 or higher');

-- Sellandus <Expert Tailor>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=4344 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES 
(15, 4344, 0, 7, 197, 50, 'Show menu if tailoring is 50 or higher');

-- Georgio Bolero <Artisan Tailor>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=4353 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
(15, 4353, 0, 7, 197, 125, 'Show menu if tailoring is 125 or higher');


-- Thelman Slatefist <Alterac Valley Battlemaster>
DELETE FROM `creature` WHERE `id1`=7410;
INSERT INTO `creature` (`id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES (7410, 0, -8424.43, 342.967, 120.886, 3.82018, 300);

-- Hank the Hammer <The Mitrhil Order>
DELETE FROM `creature` WHERE `id1`=7798;
INSERT INTO `creature` (`id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES (7798, 0, -8422.17, 630.877, 95.8402, 5.044, 430);

-- Lieutenant Karter <War Mount Quartermaster>
DELETE FROM `creature` WHERE `id1`=12783;
INSERT INTO `creature` (`id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES (12783, 0, -8779.7, 432.158, 105.233, 5.36374, 300);

-- Captain Dirgehammer <Armor Quartermaster>
DELETE FROM `creature` WHERE `id1`=12777;
DELETE FROM `creature` WHERE `id1`=34075;
INSERT INTO `creature` (`id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES (12777, 0, -8768.77, 401.647, 109.665, 2.22999, 300);

-- Lieutenant Rachel Vaccar <Outland Armor Quartermaster>
DELETE FROM `creature` WHERE `id1`=12778;
INSERT INTO `creature` (`id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES (12778, 0, -8783.7, 423.749, 105.276, 0.651345, 300);

-- Archmage Gaiman
DELETE FROM `creature` WHERE `id1`=12779;
INSERT INTO `creature` (`id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES (12779, 0, -8783.33, 426.686, 105.276, 5.37159, 300);

-- Sergeant Major Skyshadow
DELETE FROM `creature` WHERE `id1`=12780;
INSERT INTO `creature` (`id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES (12780, 0, -8779.46, 427.206, 105.275, 3.80473, 300);

-- Master Sergeant Biggins <Accessories Quartermaster>
DELETE FROM `creature` WHERE `id1`=12781;
INSERT INTO `creature` (`id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES (12781, 0, -8777.4, 417.124, 103.921, 6.23553, 300);

-- Captain O'Neal <Weapons Quartermaster>
DELETE FROM `creature` WHERE `id1`=12782;
DELETE FROM `creature` WHERE `id1`=34081;
INSERT INTO `creature` (`id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES (12782, 0, -8778.3, 432.142, 105.309, 4.17386, 300);

-- Lieutenant Jackspring <Legacy Weapon Quartermaster>
DELETE FROM `creature` WHERE `id1`=12784;

-- Knight-Lieutenant T'Maire Sydes <Northrend Armor Quartermaster>
DELETE FROM `creature` WHERE `id1`=40607;

-- Lieutenant Tristia <Veteran Armor Quartermaster>
DELETE FROM `creature` WHERE `id1`=34078;

-- Sergeant Major Clate <Legacy Armor Quartermaster>
DELETE FROM `creature` WHERE `id1`=12785;
INSERT INTO `creature` (`id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES (12785, 0, -8771.31, 401.973, 109.665, 0.659191, 300);

-- Officer Areyn <Accessories Quartermaster>
DELETE FROM `creature` WHERE `id1`=12805;
INSERT INTO `creature` (`id1`, `map`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES (12805, 0, 1, -8759.18, 389.112, 101.056, 0.648394, 430);

-- Elfarran <Warsong Gulch Battlemaster>
DELETE FROM `creature` WHERE `id1`=14981;
INSERT INTO `creature` (`id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES (14981, 0, -8454.62, 318.853, 120.969, 0.698132, 180);

-- Lady Hoteshem <Arathi Basin Battlemaster>
DELETE FROM `creature` WHERE `id1`=15008;
INSERT INTO `creature` (`id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES (15008, 0, -8420.48, 328.711, 120.886, 3.06638, 180);

-- Tome of Nobility (Paladin)
DELETE FROM `creature_questender` WHERE `id`=6171 AND `quest`=1661;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (6171, 1661);

-- Tome of Nobility (Paladin)
DELETE FROM `creature_queststarter` WHERE `id`=6171 AND `quest`=1661;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (6171, 1661);

-- Summon Felsteed (Warlock)
DELETE FROM `creature_queststarter` WHERE `id`=461 AND `quest`=4488;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (461, 4488);

-- Stormwind City Guard
UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55 WHERE `entry`=68;

-- Dungar Longdrink <Gryphon Master>
UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55 WHERE `entry`=352;

-- General Marcus Jonathan <High Commander of Stormwind Defense>
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62 WHERE `entry`=466;

-- Keldric Boucher <Alchemy Supplies & Reagents>
UPDATE `creature_template` SET `subname`='Arcane Goods Vendor' WHERE `entry`=1257;

-- Kyra Boucher <Reagents>
UPDATE `creature_template` SET `subname`='Reagent Vendor' WHERE `entry`=1275;

-- Edna Mullby <Trade Supplies>
UPDATE `creature_template` SET `subname`='Trade Supplier' WHERE `entry`=1286;

-- Owen Vaughn <Reagents>
UPDATE `creature_template` SET `subname`='Reagent Vendor' WHERE `entry`=1308;

-- Sloan McCoy <Poison Supplier>
UPDATE `creature_template` SET `subname`='Poison Supplier' WHERE `entry`=1326;

-- Brother Cassius <Reagents>
UPDATE `creature_template` SET `subname`='Reagent Vendor' WHERE `entry`=1351;

-- Stormwind Royal Guard
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `rank`=0 WHERE `entry`=1756;

-- Stormwind City Patroller
UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55 WHERE `entry`=1976;

-- Borgus Steelhand <Weapon Crafter>
UPDATE `creature_template` SET `subname`='Weapon Crafter' WHERE `entry`=7232;

-- Lieutenant Rachel Vaccar <Outland Armor Quartermaster>
UPDATE `creature_template` SET `subname`=NULL, `minlevel`=55, `maxlevel`=55, `npcflag`=0 WHERE `entry`=12778;

-- Master Sergeant Biggins <Accessories Quartermaster>
UPDATE `creature_template` SET `subname`='Officer Accessories Quartermaster' WHERE `entry`=12781;

-- Captain O'Neal <Weapons Quartermaster>
UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55 WHERE `entry`=12782;

-- Lieutenant Karter <War Mount Quartermaster>
UPDATE `creature_template` SET `subname`='Mount Vendor' WHERE `entry`=12783;

-- Sergeant Major Clate <Legacy Armor Quartermaster>
UPDATE `creature_template` SET `subname`='Food and Drink' WHERE `entry`=12785;

-- Officer Jaxon
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=14423;

-- Officer Pomeroy
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=14438;

-- Officer Brady
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=14439;

-- Alliance Brigadier General
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `rank`=0 WHERE `entry`=15351;

-- King Varian Wrynn
UPDATE `creature_template` SET `minlevel`=63, `maxlevel`=63 WHERE `entry`=29611;

-- Lieutenant Karter <Mount Vendor>
UPDATE `creature_template_addon` SET `mount`=0 WHERE `entry`=12783;

-- Tomas <Cook>
DELETE FROM `npc_trainer` WHERE `ID`=1430;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (1430, -320000);

-- Shaina Fuller <First Aid Trainer>
DELETE FROM `npc_trainer` WHERE `ID`=2327;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (2327, -350000);

-- Arnold Leland <Fishing Trainer>
DELETE FROM `npc_trainer` WHERE `ID`=5493;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (5493, -360000);

-- Stephen Ryback <Cooking Trainer>
DELETE FROM `npc_trainer` WHERE `ID`=5482;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (5482, -320000);

-- Gelman Stonehand <Mining Trainer>
DELETE FROM `npc_trainer` WHERE `ID`=5513;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (5513, -390000);

-- Elaine Trias <Mistress of Cheese>
DELETE FROM `npc_vendor` WHERE `entry`=483 AND `item` IN (27857, 33443, 35952);

-- Keldric Boucher <Alchemy Supplies & Reagents>
DELETE FROM `npc_vendor` WHERE `entry`=1257 AND `item` IN (22147, 22148, 37201, 40411);

-- Kyra Boucher <Reagents>
DELETE FROM `npc_vendor` WHERE `entry`=1275 AND `item` IN (22147, 22148, 37201);

-- Edna Mullby <Trade Supplies>
DELETE FROM `npc_vendor` WHERE `entry`=1286 AND `item` IN (14341, 18256, 20856);
DELETE FROM `npc_vendor` WHERE `entry`=1286 AND `item` IN (2324, 2605, 2928, 6260, 6529);
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES (1286, 2324), (1286, 2605), (1286, 2928), (1286, 6260), (1286, 6529);

-- Frederick Stover <Bow & Arrow Merchant>
DELETE FROM `npc_vendor` WHERE `entry`=1298 AND `item` IN (11303, 11306, 11307, 28053);

-- Bernard Gump <Florist>
DELETE FROM `npc_vendor` WHERE `entry`=1302 AND `item` IN (785, 2449, 2453, 3355, 3356, 3357);

-- Charys Yserian <Arcane Trinkets Vendor>
DELETE FROM `npc_vendor` WHERE `entry`=1307 AND `item` IN (22147, 22148, 37201);

-- Owen Vaughn <Reagent Vendor>
DELETE FROM `npc_vendor` WHERE `entry`=1308 AND `item` IN (22147, 22148, 37201);

-- Maria Lumere <Alchemy Supplies>
DELETE FROM `npc_vendor` WHERE `entry`=1313 AND `item`=40411;

-- Jasper Fel <Shady Dealer>
DELETE FROM `npc_vendor` WHERE `entry`=1325 AND `item` IN (21835, 21927, 22053, 22054, 22055, 43230, 43231, 43232, 43233, 43234, 43235, 43237);

-- Sloan McCoy <Poison Supplier>
DELETE FROM `npc_vendor` WHERE `entry`=1326 AND `item` IN (21835, 21927, 22053, 22054, 22055, 43230, 43231, 43232, 43233, 43234, 43235, 43237);

-- Alexandra Bolero <Tailoring Supplies>
DELETE FROM `npc_vendor` WHERE `entry`=1347 AND `item`=38426;

-- Brother Cassius <Reagent Vendor>
DELETE FROM `npc_vendor` WHERE `entry`=1351 AND `item` IN (22147, 22148, 37201);

-- Thomas Miller <Baker>
DELETE FROM `npc_vendor` WHERE `entry`=3518 AND `item` IN (27855, 33449, 35950);

-- Bren Trias <Apprentice of Cheese>
DELETE FROM `npc_vendor` WHERE `entry`=4981 AND `item` IN (27857, 28399, 33443, 33444, 33445, 35952, 35954);

-- Rebecca Laughlin <Tabard Designer>
DELETE FROM `npc_vendor` WHERE `entry`=5193 AND `item` IN (15196, 15198, 19032, 19506, 23999, 31774, 31775, 31776, 31777, 31778, 31779, 31780, 31781, 31804, 32445, 32828, 35221);

-- Eldraeith <Herbalism Supplier>
DELETE FROM `npc_vendor` WHERE `entry`=5503 AND `item` IN (18256, 40411);

-- Brooke Stonebraid <Mining Supplies>
DELETE FROM `npc_vendor` WHERE `entry`=5514 AND `item` IN (20815, 20824);

-- Billibub Cogspinner <Engineering Supplies>
DELETE FROM `npc_vendor` WHERE `entry`=5519 AND `item` IN (39684, 40533);

-- Jillian Tanner <Leatherworking Supplies>
DELETE FROM `npc_vendor` WHERE `entry`=5565 AND `item`=38426;

-- Innkeeper Allison <Innkeeper>
DELETE FROM `npc_vendor` WHERE `entry`=6740 AND `item` IN (4536, 4537, 4538, 4539, 4602, 8953, 27855, 27856, 28399, 33444, 33445, 33449, 35948, 35949, 35950, 35954);

-- Captain Dirgehammer <Armor Quartermaster>
DELETE FROM `npc_vendor` WHERE `entry`=12777 AND `item` IN 
    (16437, 16440, 16441, 16442, 16443, 16444, 16446, 16448, 16449, 16450, 16451, 16452, 16453, 16454, 16455, 16456, 16457, 16459, 16462, 16463, 16465, 16466, 16467, 16468, 
    16471, 16472, 16473, 16474, 16475, 16476, 16477, 16478, 16479, 16480, 16483, 16484, 17578, 17579, 17580, 17581, 17583, 17584, 17602, 17603, 17604, 17605, 17607, 17608, 
    23272, 23273, 23274, 23275, 23276, 23277, 23278, 23279, 23280, 23281, 23282, 23283, 23284, 23285, 23286, 23287, 23288, 23289, 23290, 23291, 23292, 23293, 23294, 23295, 23296, 23297, 23298, 23299, 
    23300, 23301, 23302, 23303, 23304, 23305, 23306, 23307, 23308, 23309, 23310, 23311, 23312, 23313, 23314, 23315, 23316, 23317, 23318, 23319);

INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES
    (12777, 16437, 465), (12777, 16440, 541), (12777, 16441, 464), (12777, 16442, 542), (12777, 16443, 463), (12777, 16444, 465), (12777, 16446, 465), (12777, 16448, 541), (12777, 16449, 465),
    (12777, 16450, 542), (12777, 16451, 464), (12777, 16452, 463), (12777, 16453, 463), (12777, 16454, 541), (12777, 16455, 464), (12777, 16456, 542), (12777, 16457, 465), (12777, 16459, 465),
    (12777, 16462, 465), (12777, 16463, 541), (12777, 16465, 464), (12777, 16466, 463), (12777, 16467, 542), (12777, 16468, 465), (12777, 16471, 541), (12777, 16472, 465), (12777, 16473, 463),
    (12777, 16474, 464), (12777, 16475, 542), (12777, 16476, 465), (12777, 16477, 463), (12777, 16478, 464), (12777, 16479, 542), (12777, 16480, 465), (12777, 16483, 465), (12777, 16484, 541),
    (12777, 17578, 464), (12777, 17579, 542), (12777, 17580, 465), (12777, 17581, 463), (12777, 17583, 465), (12777, 17584, 541), (12777, 17602, 464), (12777, 17603, 542), (12777, 17604, 465),
    (12777, 17605, 463), (12777, 17607, 465), (12777, 17608, 541), (12777, 23272, 652), (12777, 23273, 653), (12777, 23274, 428), (12777, 23275, 427), (12777, 23276, 444), (12777, 23277, 427),
    (12777, 23278, 427), (12777, 23279, 428), (12777, 23280, 428), (12777, 23281, 427), (12777, 23282, 428), (12777, 23283, 427), (12777, 23284, 428), (12777, 23285, 427), (12777, 23286, 428),
    (12777, 23287, 427), (12777, 23288, 428), (12777, 23289, 427), (12777, 23290, 428), (12777, 23291, 427), (12777, 23292, 652), (12777, 23293, 653), (12777, 23294, 652), (12777, 23295, 653),
    (12777, 23296, 653), (12777, 23297, 652), (12777, 23298, 652), (12777, 23299, 653), (12777, 23300, 652), (12777, 23301, 653), (12777, 23302, 653), (12777, 23303, 652), (12777, 23304, 653),
    (12777, 23305, 652), (12777, 23306, 444), (12777, 23307, 427), (12777, 23308, 444), (12777, 23309, 427), (12777, 23310, 444), (12777, 23311, 427), (12777, 23312, 444), (12777, 23313, 427),
    (12777, 23314, 444), (12777, 23315, 427), (12777, 23316, 444), (12777, 23317, 427), (12777, 23318, 444), (12777, 23319, 427);

-- Lieutenant Rachel Vaccar <Outland Armor Quartermaster>
DELETE FROM `npc_vendor` WHERE `entry`=12778;

-- Master Sergeant Biggins <Accessories Quartermaster>
DELETE FROM `npc_vendor` WHERE `entry`=12781 AND `item` IN 
    (15196, 16342, 18440, 18441, 18442, 18443, 18444, 18445, 18447, 18448, 18449, 18452, 18453, 18454, 18455, 18456, 18457, 18854, 18856, 18857, 18858, 18859, 
    18862, 18863, 18864, 25829, 28118, 28119, 28120, 28123, 28234, 28235, 28236, 28237, 28238, 28246, 28247, 28362, 28363, 28379, 28380, 29593, 30348, 30349, 
    30350, 30351, 31838, 31839, 31840, 31841, 31852, 31853, 31854, 31855, 32453, 32455, 37864, 38589, 44957);

-- Captain O'Neal <Weapons Quartermaster>
DELETE FROM `npc_vendor` WHERE `entry`=12782 AND `item` IN (12584, 18825, 18827, 18830, 18833, 18836, 18838, 18843, 18847, 18855, 18865, 18867, 18869, 18873, 18876);
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES 
    (12782, 12584, 2291), (12782, 18825, 2291), (12782, 18827, 2291), (12782, 18830, 2257), (12782, 18833, 2291), (12782, 18836, 2291), (12782, 18838, 2291),
    (12782, 18843, 2291), (12782, 18847, 2291), (12782, 18855, 2291), (12782, 18865, 2291), (12782, 18867, 2257), (12782, 18869, 2257), (12782, 18873, 2257), (12782, 18876, 2257);

-- Lieutenant Karter <War Mount Quartermaster>
DELETE FROM `npc_vendor` WHERE `entry`=12783 AND `item` IN (29465, 29467, 29468, 29471, 35906);
DELETE FROM `npc_vendor` WHERE `entry`=12783 AND `item` IN (18241, 18242, 18243, 18244);
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES (12783, 18241, 423), (12783, 18242, 423), (12783, 18243, 423), (12783, 18244, 423);

-- Sergeant Major Clate <Legacy Armor Quartermaster>
DELETE FROM `npc_vendor` WHERE `entry`=12785 AND `item` IN
    (16437, 16440, 16441, 16442, 16443, 16444, 16446, 16448, 16449, 16450, 16451, 16452, 16453, 16454, 16455, 16456, 16457, 16459, 16462, 16463, 16465, 16466, 16467, 16468, 
    16471, 16472, 16473, 16474, 16475, 16476, 16477, 16478, 16479, 16480, 16483, 16484, 17578, 17579, 17580, 17581, 17583, 17584, 17602, 17603, 17604, 17605, 17607, 17608, 
    23272, 23273, 23274, 23275, 23276, 23277, 23278, 23279, 23280, 23281, 23282, 23283, 23284, 23285, 23286, 23287, 23288, 23289, 23290, 23291, 23292, 23293, 23294, 23295, 23296, 23297, 23298, 23299,
    23300, 23301, 23302, 23303, 23304, 23305, 23306, 23307, 23308, 23309, 23310, 23311, 23312, 23313, 23314, 23315, 23316, 23317, 23318, 23319, 29594, 29595, 29596, 29597, 29598, 29599, 
    29606, 29607, 29608, 29609, 29610, 29611);
DELETE FROM `npc_vendor` WHERE `entry`=12785 AND `item` IN 
    (117, 159, 1179, 1205, 1645, 1708, 2287, 2593, 2594, 2595, 2596, 2723, 3770, 3771, 4536, 4537, 4538, 4539, 4540, 4541, 4542, 4544, 4599, 4601, 4602, 4604, 4605, 4606, 4607, 4608, 8766, 8948, 8950, 8952, 8953);

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES 
    (12785, 117), (12785, 159), (12785, 1179), (12785, 1205), (12785, 1645), (12785, 1708), (12785, 2287), (12785, 2593), (12785, 2594), (12785, 2595), (12785, 2596), 
    (12785, 2723), (12785, 3770), (12785, 3771), (12785, 4536), (12785, 4537), (12785, 4538), (12785, 4539), (12785, 4540), (12785, 4541), (12785, 4542), (12785, 4544), (12785, 4599),
    (12785, 4601), (12785, 4602), (12785, 4604), (12785, 4605), (12785, 4606), (12785, 4607), (12785, 4608), (12785, 8766), (12785, 8948), (12785, 8950), (12785, 8952), (12785, 8953);

-- Officer Areyn <Accessories Quartermaster>
DELETE FROM `npc_vendor` WHERE `entry`=12805 AND `item` IN (18445, 18447, 18448, 18449, 18454, 18455, 18456, 18457, 18854, 18856, 18858, 18859, 18862, 18863, 18864);
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES 
    (12805, 18445, 492), (12805, 18447, 931), (12805, 18448, 492), (12805, 18449, 931), (12805, 18454, 492), (12805, 18455, 931), (12805, 18456, 492), (12805, 18457, 931), 
    (12805, 18854, 634), (12805, 18856, 634), (12805, 18858, 634), (12805, 18859, 634), (12805, 18862, 634), (12805, 18863, 634), (12805, 18864, 634);

-- Summon Felsteed (Warlock)
DELETE FROM `quest_offer_reward` WHERE `ID`=4488;
INSERT INTO `quest_offer_reward` (`ID`, `RewardText`) VALUES 
(4488, 'So, you\'ve decided to grace my presence again. How kind of you.$b$bMy acolytes wondered if you\'d ever show up. I told them there was no doubt. When power is concerned, you are drawn in like a moth to the flame.');

-- A Meal Served Cold
UPDATE `quest_template` SET `Flags`=9, `LogDescription`='Kill a Cold Eye Basilisk, get a Chilled Basilisk Haunch, and return it to Angus Stern in the Blue Recluse.$B$B<You must not release your spirit to succeed in this quest.>' WHERE `ID`=212;

-- Chillwind Camp
UPDATE `quest_template` SET `LogTitle`='Chillwind Point' WHERE `ID`=8415;

-- Devourer of Souls (Warlock)
UPDATE `quest_template_addon` SET `PrevQuestID`=0 WHERE `ID`=1716;

-- Remove non-Vanilla food items from Stormwind vendors
DELETE FROM npc_vendor WHERE entry=6740 and item IN (27855, 27856, 28399, 33444, 33445, 33449, 35948, 35949, 35950, 35954);
DELETE FROM npc_vendor WHERE entry=3518 and item IN (27855, 33449, 35950);
DELETE FROM npc_vendor WHERE entry=3003 and item IN (27855, 33449, 35950);
DELETE FROM npc_vendor WHERE entry=4255 and item IN (27854, 27855, 27856, 27857, 27858, 27860, 28399, 29448, 29449, 29450, 29451, 29452, 33443, 33444, 33445, 33449, 33451, 33454, 35948, 35949, 35950, 35951, 35952, 35953, 35954);
DELETE FROM npc_vendor WHERE entry=10367 and item IN (27854, 27855, 27856, 27857, 27858, 27860, 28399, 29448, 29449, 29450, 29451, 29452, 33443, 33444, 33445, 33449, 33451, 33454, 35948, 35949, 35950, 35951, 35952, 35953, 35954, 27859, 29453, 33452, 35947);
DELETE FROM npc_vendor WHERE entry=5109 and item IN (27855, 33449, 35950);
DELETE FROM npc_vendor WHERE entry=4981 and item IN (27857, 28399, 33443, 33444, 33445, 35952, 35954);
DELETE FROM npc_vendor WHERE entry=483 and item IN (27857, 33443, 35952);
