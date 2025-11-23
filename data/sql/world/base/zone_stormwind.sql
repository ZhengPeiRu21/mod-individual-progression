UPDATE `creature_template` SET `subname` = 'Journeyman Blacksmith'    WHERE `entry` = 957;   -- Dane Lindgren <Apprentice Blacksmith>
UPDATE `creature_template` SET `subname` = 'Journeyman Tailor'        WHERE `entry` = 1300;  -- Lawrence Schneider <Apprentice Tailor>
UPDATE `creature_template` SET `subname` = 'Expert Enchanter'         WHERE `entry` = 1317;  -- Lucan Cordell <Enchanting Trainer>
UPDATE `creature_template` SET `subname` = 'Artisan Tailor'           WHERE `entry` = 1346;  -- Georgio Bolero <Artisan Tailor>
UPDATE `creature_template` SET `subname` = 'Journeyman Engineer'      WHERE `entry` = 11026; -- Sprite Jumpsprocket <Apprentice Engineer>
UPDATE `creature_template` SET `subname` = 'Journeyman Enchanter'     WHERE `entry` = 11068; -- Betty Quin <Apprentice Enchanter>
UPDATE `creature_template` SET `subname` = 'Journeyman Leatherworker' WHERE `entry` = 11096; -- Randal Worth <Apprentice Leatherworker>

UPDATE `creature_template` SET `npcflag` = 81, `trainer_type` = 2 WHERE `entry` IN (957, 1300, 11026, 11068, 11096);
UPDATE `creature_template` SET `type_flags` = 134217728 WHERE `entry` = 5567; -- Sellandus <Expert Tailor>


DELETE FROM `npc_trainer` WHERE `ID` IN (957, 1300, 1317, 1346, 5499, 5500, 5511, 5518, 5564, 5567, 11026, 11068, 11096);
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES 
(957,  -310000),  -- Dane Lindgren <Journeyman Blacksmith>
(1300, -410000),  -- Lawrence Schneider <Journeyman Tailor>
(1317, -330000),  -- Lucan Cordell <Expert Enchanter>
(1317, -330001),  -- Lucan Cordell <Expert Enchanter>
(1346, -410000),  -- Georgio Bolero <Artisan Tailor>
(1346, -410001),  -- Georgio Bolero <Artisan Tailor>
(1346, -410002),  -- Georgio Bolero <Artisan Tailor>
(5499, -300000),  -- Lilyssia Nightbreeze <Expert Alchemist>
(5499, -300001),  -- Lilyssia Nightbreeze <Expert Alchemist>
(5500, -300000),  -- Tel'Athir <Journeyman Alchemist>
(5511, -310000),  -- Therum Deepforge <Expert Blacksmith>
(5511, -310001),  -- Therum Deepforge <Expert Blacksmith>
(5518, -340000),  -- Lilliam Sparkspindle <Expert Engineer>
(5518, -340001),  -- Lilliam Sparkspindle <Expert Engineer>
(5564, -380000),  -- Simon Tanner <Expert Leatherworker>
(5564, -380001),  -- Simon Tanner <Expert Leatherworker>
(5567, -410000),  -- Sellandus <Expert Tailor>
(5567, -410001),  -- Sellandus <Expert Tailor>
(11026, -340000), -- Sprite Jumpsprocket <Journeyman Engineer>
(11068, -330000), -- Betty Quin <Journeyman Enchanter>
(11096, -380000); -- Randal Worth <Journeyman Leatherworker>


DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (4161, 4344);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`) VALUES 
(4161, 0, 3, 'Train me.', 3266, 5, 16), -- Lucan Cordell <Expert Enchanter>
(4344, 0, 3, 'Train me.', 3266, 5, 16); -- Sellandus <Expert Tailor>


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceEntry` = 0 AND `ConditionTypeOrReference` = 7 AND `SourceGroup` IN (581, 4146, 4161, 4201, 4203, 4344, 4353); 
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES 
(15, 581,  0, 7, 164, 50,  'Show menu if blacksmithing is 50 or higher'),  -- Therum Deepforge <Expert Blacksmith>
(15, 4146, 0, 7, 202, 50,  'Show menu if engineering is 50 or higher'),    -- Lilliam Sparkspindle <Expert Engineer>
(15, 4161, 0, 7, 333, 50,  'Show menu if enchanting is 50 or higher'),     -- Lucan Cordell <Expert Enchanter>
(15, 4201, 0, 7, 171, 50,  'Show menu if alchemy is 50 or higher'),        -- Lilyssia Nightbreeze <Expert Alchemist>
(15, 4203, 0, 7, 165, 50,  'Show menu if leatherworking is 50 or higher'), -- Simon Tanner <Expert Leatherworker>
(15, 4344, 0, 7, 197, 50,  'Show menu if tailoring is 50 or higher'),      -- Sellandus <Expert Tailor>
(15, 4353, 0, 7, 197, 125, 'Show menu if tailoring is 125 or higher');     -- Georgio Bolero <Artisan Tailor>


DELETE FROM `creature` WHERE `id1` IN (7410, 7798, 12778, 12779, 12780, 12805, 14981, 15008, 34078, 40607);
INSERT INTO `creature` (`guid`, `id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES
(607410, 7410,  0, -8424.43, 342.967, 120.886, 3.82018, 300),  -- Thelman Slatefist <Alterac Valley Battlemaster>
(607798, 7798,  0, -8422.17, 630.877, 95.8402, 5.044, 430),    -- Hank the Hammer <The Mitrhil Order>
(612778, 12778, 0, -8783.7, 423.749, 105.276, 0.651345, 300),  -- Lieutenant Rachel Vaccar <Outland Armor Quartermaster>
(612779, 12779, 0, -8783.33, 426.686, 105.276, 5.37159, 300),  -- Archmage Gaiman
(612780, 12780, 0, -8779.46, 427.206, 105.275, 3.80473, 300),  -- Sergeant Major Skyshadow
(612805, 12805, 0, -8759.18, 389.112, 101.056, 0.648394, 430), -- Officer Areyn <Accessories Quartermaster>
(614981, 14981, 0, -8454.62, 318.853, 120.969, 0.698132, 180), -- Elfarran <Warsong Gulch Battlemaster>
(615008, 15008, 0, -8420.48, 328.711, 120.886, 3.06638, 180);  -- Lady Hoteshem <Arathi Basin Battlemaster>

UPDATE `creature` SET `equipment_id` = 1 WHERE `id1` = 12805; -- Officer Areyn <Accessories Quartermaster>

UPDATE `creature_template` SET `minlevel` = 63, `maxlevel` = 63 WHERE `entry` = 29611; -- King Varian Wrynn

UPDATE `creature_template` SET `subname` = 'Arcane Goods Vendor' WHERE `entry` = 1257; -- Keldric Boucher <Alchemy Supplies & Reagents>
UPDATE `creature_template` SET `subname` = 'Reagent Vendor'  WHERE `entry` = 1275; -- Kyra Boucher <Reagents>
UPDATE `creature_template` SET `subname` = 'Trade Supplier'  WHERE `entry` = 1286; -- Edna Mullby <Trade Supplies>
UPDATE `creature_template` SET `subname` = 'Reagent Vendor'  WHERE `entry` = 1308; -- Owen Vaughn <Reagents>
UPDATE `creature_template` SET `subname` = 'Poison Supplier' WHERE `entry` = 1326; -- Sloan McCoy <Poison Supplier>
UPDATE `creature_template` SET `subname` = 'Reagent Vendor'  WHERE `entry` = 1351; -- Brother Cassius <Reagents>
UPDATE `creature_template` SET `subname` = 'Weapon Crafter'  WHERE `entry` = 7232; -- Borgus Steelhand <Weapon Crafter>

-- Lieutenant Rachel Vaccar <Outland Armor Quartermaster>
UPDATE `creature_template` SET `subname` = NULL, `npcflag` = 0 WHERE `entry` = 12778;
UPDATE `creature_template_locale` SET `Title` = NULL WHERE `entry` = 12778;
DELETE FROM `npc_vendor` WHERE `entry`= 12778; -- was placed in battlegrounds during Vanilla and TBC. needs to be hidden until wotlk

DELETE FROM `npc_trainer` WHERE `ID` IN (1430, 2327, 5482, 5493, 5513);
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES 
(1430, -320000), -- Tomas <Cook>
(2327, -350000), -- Shaina Fuller <First Aid Trainer>
(5482, -320000), -- Stephen Ryback <Cooking Trainer>
(5493, -360000), -- Arnold Leland <Fishing Trainer>
(5513, -390000); -- Gelman Stonehand <Mining Trainer>


SET @Biggins     := 112781; -- Master Sergeant Biggins <Officer Accessories Quartermaster>, Vanilla
SET @Karter      := 112783; -- Lieutenant Karter, <Mount Vendor>, Vanilla
SET @Clate       := 112785; -- Stone Guard Zarg <Food and Drink>, Vanilla
SET @Wrynn       := 629611; -- creating copy with 'npc_king_varian_wrynn' script, to prevent AC worldserver error for not using the script


DELETE FROM `creature_template` WHERE `entry` IN (@Biggins, @Karter, @Clate, @Wrynn);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, 
`exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, 
`BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, 
`lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, 
`RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
--
(@Biggins,0,0,0,0,0,'Master Sergeant Biggins','Officer Accessories Quartermaster',NULL,0,55,55,0,1078,128,1,1.14286,1,1,18,1,0,0,1.05,2000,2000,1,1,1,768,2048,0,0,0,0,0,0,7,4096,0,0,0,0,0,0,0,'',0,1,2,1,2.6,1,0,0,1,0,0,0,'npc_ipp_pre_tbc',0),
(@Karter,0,0,0,0,0,'Lieutenant Karter','Mount Vendor',NULL,0,55,55,0,1078,128,1,1.14286,1,1,18,1,0,0,1.05,2000,2000,1,1,1,768,2048,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'',0,1,2,1,2.6,1,0,0,1,0,0,0,'npc_ipp_pre_tbc',0),
(@Clate,0,0,0,0,0,'Sergeant Major Clate','Food and Drink',NULL,0,55,55,0,123,4224,1,1.14286,1,1,18,1,0,0,2.15,2000,2000,1,1,1,768,2048,0,0,0,0,0,0,7,4096,0,0,0,0,0,0,0,'',0,1,2,1,2.6,1,0,0,1,0,0,0,'npc_ipp_pre_tbc',0),
(@Wrynn,0,0,0,0,0,'King Varian Wrynn','King of Stormwind','',9834,63,63,2,1733,3,1,1.42857,1,1,20,1,3,0,35,2000,2000,1,1,1,0,2048,0,0,0,0,0,0,7,76,0,0,0,0,0,700000,750000,'',0,1,400,20,1,1,1,144,1,617299839,0,0,'npc_king_varian_wrynn',0);

DELETE FROM `creature_template_addon` WHERE `entry` IN (@Biggins, @Karter, @Clate, @Wrynn);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(@Biggins, 0, 0, 0, 1, 0, 0, NULL),
(@Karter, 0, 0, 0, 0, 0, 0, NULL),
(@Clate, 0, 0, 0, 0, 0, 0, NULL),
(@Wrynn, 0, 0, 0, 1, 0, 3, NULL);

DELETE FROM `creature_template_locale` WHERE `entry` IN (@Biggins, @Karter, @Clate, @Wrynn);
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES 
(@Biggins, 'deDE', 'Hauptfeldwebel Biggins', 'Rüstmeister für Zubehör', 18019),
(@Biggins, 'esES', 'Sargento primero Biggins', 'Intendente de accesorios', 18019),
(@Biggins, 'esMX', 'Sargento primero Biggins', 'Intendente de accesorios', 18019),
(@Biggins, 'frFR', 'Sergent-chef Socquet', 'Intendant des accessoires', 18019),
(@Biggins, 'koKR', '정예근위병 비긴스', '보급품 병참장교', 18019),
(@Biggins, 'ruRU', 'Старший сержант Биггинс', 'Начальник снабжения аксессуарами', 18019),
(@Biggins, 'zhCN', '军士长贝金斯', '杂货军需官', 18019),
(@Biggins, 'zhTW', '上士貝金斯', '雜貨軍需官', 18019),
--
(@Karter, 'deDE', 'Leutnant Karter','Rüstmeisterin für Kriegsreittiere', 18019),
(@Karter, 'esES', 'Teniente Karter','Intendente de monturas de guerra', 18019),
(@Karter, 'esMX', 'Teniente Karter','Intendente de monturas de guerra', 18019),
(@Karter, 'frFR', 'Lieutenant Karter','Intendante des montures de guerre', 18019),
(@Karter, 'koKR', '부관 칼터','전투 탈것 병참장교', 18019),
(@Karter, 'ruRU', 'Лейтенант Картер','Начальник снабжения верховыми животными', 18019),
(@Karter, 'zhCN', '卡特尔中尉','战争坐骑军需官', 18019),
(@Karter, 'zhTW', '卡特爾中尉','戰爭軍需官', 18019),
--
(@Clate, 'deDE', 'Stabsfeldwebel Clate', 'Speis & Trank', 18019),
(@Clate, 'esES', 'Alférez Clate', 'Alimentos y bebidas', 18019),
(@Clate, 'esMX', 'Alférez Clate', 'Alimentos y bebidas', 18019),
(@Clate, 'frFR', 'Sergent-major Clate', 'Nourriture & boissons', 18019),
(@Clate, 'koKR', '선임하사 클레이트', '식료품 상인', 18019),
(@Clate, 'ruRU', 'Старший сержант Клейт', 'Еда и напитки', 18019),
(@Clate, 'zhCN', '克莱特军士长', '食物和饮料', 18019),
(@Clate, 'zhTW', '士官長克萊特', '食物和飲料', 18019),
--
(@Wrynn, 'deDE', 'König Varian Wrynn', 'König von Sturmwind', 18019),
(@Wrynn, 'esES', 'Rey Varian Wrynn', 'Rey de Ventormenta', 18019),
(@Wrynn, 'esMX', 'Rey Varian Wrynn', 'Rey de Ventormenta', 18019),
(@Wrynn, 'frFR', 'Roi Varian Wrynn', 'Roi de Hurlevent', 18019),
(@Wrynn, 'koKR', '국왕 바리안 린', '스톰윈드 국왕', 18019),
(@Wrynn, 'ruRU', 'Король Вариан Ринн', 'Король Штормграда', 18019),
(@Wrynn, 'zhCN', '瓦里安·乌瑞恩国王', '暴风城国王', 18019),
(@Wrynn, 'zhTW', '瓦里安·烏瑞恩國王', '暴風之王', 18019);

DELETE FROM `creature_template_model` WHERE `CreatureID` IN (@Biggins, @Karter, @Clate, @Wrynn);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES 
(@Biggins, 0, 12669, 1, 1, 12340),
(@Karter, 0, 12922, 1, 1, 12340),
(@Clate, 0, 12925, 1, 1, 12340),
(@Wrynn, 0, 28127, 1, 1, 12340);

UPDATE `creature_template` SET `subname` = 'Mount Vendor' WHERE `entry` = 12783;
UPDATE `creature_template` SET `subname` = 'Weapons Quartermaster' WHERE `entry` = 12784; 
UPDATE `creature_template` SET `subname` = 'Armor Quartermaster' WHERE `entry` = 12785;
UPDATE `creature_template` SET `npcflag` = 4224 WHERE `entry` IN (24671, 24672);

UPDATE `creature_template` SET `ScriptName` = 'npc_ipp_pre_tbc' WHERE `entry` IN (12805, 26393, 26394);
UPDATE `creature_template` SET `ScriptName` = 'npc_ipp_tbc' WHERE `entry` IN (12781, 12783, 12784, 12785, 20278, 23396, 23446, 24671, 24672);

UPDATE `creature_template_addon` SET `mount` = 0 WHERE `entry` = 12783;


DELETE FROM `creature` WHERE `guid` IN (133928, 133926, 133929, 612781, 133927, 612783, 612785, 623446, 624671, 624672, 612777, 626394, 720278, 723396);
INSERT INTO `creature` (`guid`, `id1`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES 
--
(612781, @Biggins, 0, 1, 1, -8777.4, 417.124, 103.921, 6.23553, 180), -- Master Sergeant Biggins <Officer Accessories Quartermaster>, Vanilla
(133926, 12781, 0, 1, 1, -8777.4, 417.124, 103.921, 6.23553, 180),    -- Master Sergeant Biggins <Officer Accessories Quartermaster>, TBC
(612785, @Clate, 0, 1, 1, -8771.31, 401.973, 109.665, 0.659191, 180), -- Sergeant Major Clate <Food and Drink>, Vanilla
(133929, 12785, 0, 1, 1, -8771.31, 401.973, 109.665, 0.659191, 180),  -- Sergeant Major Clate <Armor Quartermaster>, TBC 
(626394, 26394, 0, 1, 1, -8778.3, 432.142, 105.309, 4.17386, 180),    -- Captain O'Neal <Weapons Quartermaster>, Vanilla
(624671, 24671, 0, 1, 1, -8778.3, 432.142, 105.309, 4.17386, 180),    -- Captain O'Neal <Weapons Quartermaster>, TBC
(612777, 12777, 0, 1, 1, -8768.77, 401.647, 109.665, 2.22999, 180),   -- Captain Dirgehammer <Armor Quartermaster>, Vanilla
(624672, 24672, 0, 1, 1, -8773.33, 427.279, 105.233, 3.84677, 180),   -- Captain Dirgehammer <Armor Quartermaster>, TBC
(133928, 12784, 0, 1, 1, -8764.6, 413.632, 103.922, 0.693375, 180),   -- Lieutenant Jackspring <Weapons Quartermaster>, TBC 
(720278, 20278, 0, 1, 1, -8789.08, 425.681, 105.233, 5.68294, 180),   -- Vixton Pinchwhistle <Arena Vendor>, TBC
(723396, 23396, 0, 1, 1, -8786.12, 428.386, 105.233, 5.5871, 180),    -- Krixel Pinchwhistle <Arena Vendor>, TBC
(623446, 23446, 0, 1, 1, -8785.74, 420.484, 105.233, 0.701937, 180),  -- Lieutenant Tristia <Armor Quartermaster>, TBC
(133927, 12783, 0, 1, 1, -8779.7, 432.158, 105.233, 5.36374, 180),    -- Lieutenant Karter <Mount Vendor>, TBC
(612783, @Karter, 0, 1, 1, -8779.7, 432.158, 105.233, 5.36374, 180);  -- Lieutenant Karter <Mount Vendor>, Vanilla


-- Master Sergeant Biggins <Officer Accessories Quartermaster> - Vanilla
DELETE FROM `npc_vendor` WHERE `entry` = @Biggins;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES 
(@Biggins, 0, 15198, 0, 0, 1006, 0), (@Biggins, 0, 18606, 0, 0, 386, 0), (@Biggins, 0, 18839, 0, 0, 2354, 0), (@Biggins, 0, 18841, 0, 0, 2354, 0);

-- Master Sergeant Biggins <Officer Accessories Quartermaster> - TBC
DELETE FROM `npc_vendor` WHERE `entry` = 12781;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(12781, 15196, 0, 0, 1007), (12781, 15198, 0, 0, 1006), (12781, 16342, 0, 0, 774), (12781, 18440, 0, 0, 1050), (12781, 18441, 0, 0, 986), (12781, 18442, 0, 0, 838),
(12781, 18443, 0, 0, 491), (12781, 18444, 0, 0, 930), (12781, 18445, 0, 0, 492), (12781, 18447, 0, 0, 931), (12781, 18448, 0, 0, 492), (12781, 18449, 0, 0, 931),
(12781, 18452, 0, 0, 492), (12781, 18453, 0, 0, 931), (12781, 18454, 0, 0, 492), (12781, 18455, 0, 0, 931), (12781, 18456, 0, 0, 492), (12781, 18457, 0, 0, 931), 
(12781, 18606, 0, 0, 386), (12781, 18839, 0, 0, 460), (12781, 18841, 0, 0, 460), (12781, 18854, 0, 0, 634), (12781, 18856, 0, 0, 634), (12781, 18857, 0, 0, 634),
(12781, 18858, 0, 0, 634), (12781, 18859, 0, 0, 634), (12781, 18862, 0, 0, 634), (12781, 18863, 0, 0, 634), (12781, 18864, 0, 0, 634), (12781, 25829, 0, 0, 125),
(12781, 28118, 0, 0, 95), (12781, 28119, 0, 0, 95), (12781, 28120, 0, 0, 95), (12781, 28123, 0, 0, 99), (12781, 28234, 0, 0, 2404), (12781, 28235, 0, 0, 2404),
(12781, 28236, 0, 0, 2404), (12781, 28237, 0, 0, 2404), (12781, 28238, 0, 0, 2404), (12781, 28244, 0, 0, 125), (12781, 28245, 0, 0, 125), (12781, 28246, 0, 0, 129),
(12781, 28247, 0, 0, 129), (12781, 28362, 0, 0, 95), (12781, 28363, 0, 0, 99), (12781, 28379, 0, 0, 165), (12781, 28380, 0, 0, 165), (12781, 29593, 0, 0, 634),
(12781, 30348, 0, 0, 2404), (12781, 30349, 0, 0, 2404), (12781, 30350, 0, 0, 2404), (12781, 30351, 0, 0, 2404), (12781, 31838, 0, 0, 1648), (12781, 31839, 0, 0, 1649),
(12781, 31840, 0, 0, 1648), (12781, 31841, 0, 0, 1649), (12781, 31852, 0, 0, 1652), (12781, 31853, 0, 0, 1653), (12781, 31854, 0, 0, 1652), (12781, 31855, 0, 0, 1653),
(12781, 32453, 0, 0, 1564), (12781, 32455, 0, 0, 460);

-- Officer Areyn <Accessories Quartermaster>
DELETE FROM `npc_vendor` WHERE `entry` = 12805;
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES 
(12805, 18445, 492), (12805, 18447, 931), (12805, 18448, 492), (12805, 18449, 931), (12805, 18454, 492), (12805, 18455, 931), (12805, 18456, 492), (12805, 18457, 931), 
(12805, 18664, 0), (12805, 18854, 634), (12805, 18856, 634), (12805, 18858, 634), (12805, 18859, 634), (12805, 18862, 634), (12805, 18863, 634), (12805, 18864, 634), 
(12805, 18442, 838), (12805, 18444, 930), (12805, 18443, 491), (12805, 15196, 1007), (12805, 18440, 1050), (12805, 18441, 986), (12805, 16342, 774); 

-- Lieutenant Karter <War Mount Quartermaster> - Vanilla
DELETE FROM `npc_vendor` WHERE `entry` = @Karter;
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES
(@Karter, 18241, 423), (@Karter, 18242, 423), (@Karter, 18243, 423), (@Karter, 18244, 423);

-- Lieutenant Karter <War Mount Quartermaster> - TBC
DELETE FROM `npc_vendor` WHERE `entry` = 12783;
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES
(12783, 18241, 423), (12783, 18242, 423), (12783, 18243, 423), (12783, 18244, 423), (12783, 35906, 423);

-- Lieutenant Jackspring <Weapons Quartermaster> - TBC
DELETE FROM `npc_vendor` WHERE `entry` = 12784;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(12784, 12584, 0, 0, 565), (12784, 18825, 0, 0, 565), (12784, 18827, 0, 0, 565), (12784, 18830, 0, 0, 131), (12784, 18833, 0, 0, 567), (12784, 18836, 0, 0, 567), (12784, 18838, 0, 0, 565),
(12784, 18843, 0, 0, 565), (12784, 18847, 0, 0, 565), (12784, 18855, 0, 0, 567), (12784, 18865, 0, 0, 565), (12784, 18867, 0, 0, 131), (12784, 18869, 0, 0, 131), (12784, 18873, 0, 0, 131),
(12784, 18876, 0, 0, 131), (12784, 23451, 0, 0, 565), (12784, 23452, 0, 0, 567), (12784, 23453, 0, 0, 567), (12784, 23454, 0, 0, 565), (12784, 23455, 0, 0, 131), (12784, 23456, 0, 0, 565);

-- Sergeant Major Clate <Food and Drink> - Vanilla
DELETE FROM `npc_vendor` WHERE `entry` = @Clate;
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES 
(@Clate, 117), (@Clate, 159), (@Clate, 1179), (@Clate, 1205), (@Clate, 1645), (@Clate, 1708), (@Clate, 2287), (@Clate, 2593), (@Clate, 2594),
(@Clate, 2595), (@Clate, 2596), (@Clate, 2723), (@Clate, 3770), (@Clate, 3771), (@Clate, 4536), (@Clate, 4537), (@Clate, 4538), (@Clate, 4539), 
(@Clate, 4540), (@Clate, 4541), (@Clate, 4542), (@Clate, 4544), (@Clate, 4599), (@Clate, 4601), (@Clate, 4602), (@Clate, 4604), (@Clate, 4605), 
(@Clate, 4606), (@Clate, 4607), (@Clate, 4608), (@Clate, 8766), (@Clate, 8948), (@Clate, 8950), (@Clate, 8952), (@Clate, 8953);

-- Sergeant Major Clate <Armor Quartermaster> - TBC 
DELETE FROM `npc_vendor` WHERE `entry` = 12785;
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES
(12785, 16437, 465), (12785, 16440, 541), (12785, 16441, 464), (12785, 16442, 542), (12785, 16443, 463), (12785, 16444, 465), (12785, 16446, 465), (12785, 16448, 541), (12785, 16449, 465),
(12785, 16450, 542), (12785, 16451, 464), (12785, 16452, 463), (12785, 16453, 463), (12785, 16454, 541), (12785, 16455, 464), (12785, 16456, 542), (12785, 16457, 465), (12785, 16459, 465),
(12785, 16462, 465), (12785, 16463, 541), (12785, 16465, 464), (12785, 16466, 463), (12785, 16467, 542), (12785, 16468, 465), (12785, 16471, 541), (12785, 16472, 465), (12785, 16473, 463),
(12785, 16474, 464), (12785, 16475, 542), (12785, 16476, 465), (12785, 16477, 463), (12785, 16478, 464), (12785, 16479, 542), (12785, 16480, 465), (12785, 16483, 465), (12785, 16484, 541),
(12785, 17578, 464), (12785, 17579, 542), (12785, 17580, 465), (12785, 17581, 463), (12785, 17583, 465), (12785, 17584, 541), (12785, 17602, 464), (12785, 17603, 542), (12785, 17604, 465),
(12785, 17605, 463), (12785, 17607, 465), (12785, 17608, 541), (12785, 23272, 652), (12785, 23273, 653), (12785, 23274, 428), (12785, 23275, 427), (12785, 23276, 444), (12785, 23277, 427),
(12785, 23278, 427), (12785, 23279, 428), (12785, 23280, 428), (12785, 23281, 427), (12785, 23282, 428), (12785, 23283, 427), (12785, 23284, 428), (12785, 23285, 427), (12785, 23286, 428),
(12785, 23287, 427), (12785, 23288, 428), (12785, 23289, 427), (12785, 23290, 428), (12785, 23291, 427), (12785, 23292, 652), (12785, 23293, 653), (12785, 23294, 652), (12785, 23295, 653),
(12785, 23296, 653), (12785, 23297, 652), (12785, 23298, 652), (12785, 23299, 653), (12785, 23300, 652), (12785, 23301, 653), (12785, 23302, 653), (12785, 23303, 652), (12785, 23304, 653),
(12785, 23305, 652), (12785, 23306, 444), (12785, 23307, 427), (12785, 23308, 444), (12785, 23309, 427), (12785, 23310, 444), (12785, 23311, 427), (12785, 23312, 444), (12785, 23313, 427),
(12785, 23314, 444), (12785, 23315, 427), (12785, 23316, 444), (12785, 23317, 427), (12785, 23318, 444), (12785, 23319, 427), (12785, 29594, 427), (12785, 29595, 428), (12785, 29596, 652),
(12785, 29597, 653), (12785, 29598, 444), (12785, 29599, 427), (12785, 29606, 465), (12785, 29607, 541), (12785, 29608, 542), (12785, 29609, 463), (12785, 29610, 464), (12785, 29611, 465);

-- Lieutenant Tristia <Armor Quartermaster> - TBC
DELETE FROM `npc_vendor` WHERE `entry` = 23446;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(23446, 32785, 0, 0, 1911), (23446, 32786, 0, 0, 1911), (23446, 32787, 0, 0, 1911), (23446, 32788, 0, 0, 1911), (23446, 32789, 0, 0, 1911), (23446, 32790, 0, 0, 1911), 
(23446, 32791, 0, 0, 1911), (23446, 32792, 0, 0, 1911), (23446, 32793, 0, 0, 1911), (23446, 32794, 0, 0, 1911), (23446, 32795, 0, 0, 1911), (23446, 32796, 0, 0, 1911), 
(23446, 32797, 0, 0, 1923), (23446, 32798, 0, 0, 1923), (23446, 32799, 0, 0, 1923), (23446, 32800, 0, 0, 1923), (23446, 32801, 0, 0, 1923), (23446, 32802, 0, 0, 1923), 
(23446, 32803, 0, 0, 1923), (23446, 32804, 0, 0, 1923), (23446, 32805, 0, 0, 1923), (23446, 32806, 0, 0, 1923), (23446, 32807, 0, 0, 1923), (23446, 32808, 0, 0, 1923), 
(23446, 32809, 0, 0, 1935), (23446, 32810, 0, 0, 1935), (23446, 32811, 0, 0, 1935), (23446, 32812, 0, 0, 1935), (23446, 32813, 0, 0, 1935), (23446, 32814, 0, 0, 1935),
(23446, 32816, 0, 0, 1935), (23446, 32817, 0, 0, 1935), (23446, 32818, 0, 0, 1935), (23446, 32819, 0, 0, 1935), (23446, 32820, 0, 0, 1935), (23446, 32821, 0, 0, 1935), 
(23446, 32979, 0, 0, 1923), (23446, 32980, 0, 0, 1935), (23446, 32981, 0, 0, 1911), (23446, 32988, 0, 0, 1923), (23446, 32989, 0, 0, 1935), (23446, 32990, 0, 0, 1911),
(23446, 32997, 0, 0, 1935), (23446, 32998, 0, 0, 1923), (23446, 32999, 0, 0, 1911), (23446, 33056, 0, 0, 129), (23446, 33057, 0, 0, 129), (23446, 33064, 0, 0, 129), 
(23446, 33065, 0, 0, 127), (23446, 33066, 0, 0, 127), (23446, 33067, 0, 0, 127), (23446, 33068, 0, 0, 127);

-- Captain O'Neal <Weapons Quartermaster> - Vanilla
DELETE FROM `npc_vendor` WHERE `entry` IN (12782, 26394);
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES 
(26394, 12584, 2291), (26394, 18825, 2291), (26394, 18827, 2291), (26394, 18830, 2257), (26394, 18833, 2291), (26394, 18836, 2291), (26394, 18838, 2291),
(26394, 18843, 2291), (26394, 18847, 2291), (26394, 18855, 2291), (26394, 18865, 2291), (26394, 18867, 2257), (26394, 18869, 2257), (26394, 18873, 2257), 
(26394, 18876, 2257), (26394, 23451, 2291), (26394, 23452, 2257), (26394, 23453, 2291), (26394, 23454, 2291), (26394, 23455, 2291), (26394, 23456, 2291);

-- Captain O'Neil <Weapons Quartermaster> - TBC
DELETE FROM `npc_vendor` WHERE `entry` = 24671;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(24671, 28940, 0, 0, 2242), (24671, 28941, 0, 0, 2242), (24671, 28942, 0, 0, 2237), (24671, 28943, 0, 0, 2237), (24671, 28944, 0, 0, 2239),
(24671, 28945, 0, 0, 2237), (24671, 28946, 0, 0, 2240), (24671, 28947, 0, 0, 2240), (24671, 28948, 0, 0, 2237), (24671, 28949, 0, 0, 2237),
(24671, 28950, 0, 0, 2240), (24671, 28951, 0, 0, 2239), (24671, 28952, 0, 0, 2240), (24671, 28953, 0, 0, 2239), (24671, 28954, 0, 0, 2240),
(24671, 28955, 0, 0, 2240), (24671, 28956, 0, 0, 2239), (24671, 28957, 0, 0, 2238), (24671, 28959, 0, 0, 2237), (24671, 28960, 0, 0, 2237);

-- Captain Dirgehammer <Armor Quartermaster> - Vanilla
DELETE FROM `npc_vendor` WHERE `entry` IN (12777, 26393);
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES
-- boot 427, gloves 428, helm 444, pants 653, chest 652, shoulders 427
(12777, 16369, 427), (12777, 16391, 428), (12777, 16413, 652), (12777, 16414, 653), (12777, 16416, 444), (12777, 16415, 427), -- mages, pre naxx
(12777, 16423, 427), (12777, 16424, 444), (12777, 16422, 653), (12777, 16421, 652), (12777, 16393, 427), (12777, 16397, 428), -- druid, pre naxx
(12777, 16392, 427), (12777, 16396, 428), (12777, 16417, 652), (12777, 16419, 653), (12777, 16420, 427), (12777, 16418, 444), -- rogue, pre naxx
(12777, 16405, 427), (12777, 16406, 428), (12777, 16430, 652), (12777, 16431, 653), (12777, 16429, 444), (12777, 16432, 427), -- warrior, pre naxx
(12777, 16410, 428), (12777, 16409, 427), (12777, 16433, 652), (12777, 16435, 653), (12777, 16434, 444), (12777, 16436, 427), -- paladin, pre naxx
(12777, 16425, 652), (12777, 16426, 653), (12777, 16401, 427), (12777, 16403, 428), (12777, 16428, 444), (12777, 16427, 427), -- hunter, pre naxx
(12777, 17562, 427), (12777, 17564, 428), (12777, 17568, 652), (12777, 17567, 653), (12777, 17569, 427), (12777, 17566, 444), -- warlock, pre naxx
(12777, 17594, 427), (12777, 17596, 428), (12777, 17600, 652), (12777, 17599, 653), (12777, 17598, 444), (12777, 17601, 427), -- priest, pre naxx
--
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
(12777, 23314, 444), (12777, 23315, 427), (12777, 23316, 444), (12777, 23317, 427), (12777, 23318, 444), (12777, 23319, 427), (12777, 29594, 427), (12777, 29595, 428), (12777, 29596, 652),
(12777, 29597, 653), (12777, 29598, 444), (12777, 29599, 427), (12777, 29606, 465), (12777, 29607, 541), (12777, 29608, 542), (12777, 29609, 463), (12777, 29610, 464), (12777, 29611, 465);

-- Captain Dirgehammer <Armor Quartermaster> - TBC
DELETE FROM `npc_vendor` WHERE `entry` = 24672;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(24672, 28613, 0, 0, 2259), (24672, 28614, 0, 0, 2261), (24672, 28615, 0, 0, 2263), (24672, 28616, 0, 0, 2265), (24672, 28617, 0, 0, 2267), (24672, 28618, 0, 0, 2261),
(24672, 28619, 0, 0, 2263), (24672, 28620, 0, 0, 2265), (24672, 28622, 0, 0, 2267), (24672, 28623, 0, 0, 2259), (24672, 28624, 0, 0, 2261), (24672, 28625, 0, 0, 2263),
(24672, 28626, 0, 0, 2265), (24672, 28627, 0, 0, 2267), (24672, 28628, 0, 0, 2259), (24672, 28679, 0, 0, 2259), (24672, 28680, 0, 0, 2261), (24672, 28681, 0, 0, 2263),
(24672, 28683, 0, 0, 2267), (24672, 28684, 0, 0, 2261), (24672, 28685, 0, 0, 2263), (24672, 28686, 0, 0, 2265), (24672, 28687, 0, 0, 2267), (24672, 28688, 0, 0, 2259),
(24672, 28689, 0, 0, 2259), (24672, 28690, 0, 0, 2261), (24672, 28691, 0, 0, 2263), (24672, 28692, 0, 0, 2265), (24672, 28693, 0, 0, 2267), (24672, 28694, 0, 0, 2259),
(24672, 28695, 0, 0, 2261), (24672, 28696, 0, 0, 2263), (24672, 28697, 0, 0, 2265), (24672, 28698, 0, 0, 2267), (24672, 28699, 0, 0, 2259), (24672, 28700, 0, 0, 2261),
(24672, 28701, 0, 0, 2263), (24672, 28702, 0, 0, 2265), (24672, 28703, 0, 0, 2267), (24672, 28704, 0, 0, 2261), (24672, 28705, 0, 0, 2263), (24672, 28706, 0, 0, 2265),
(24672, 28707, 0, 0, 2267), (24672, 28708, 0, 0, 2259), (24672, 28709, 0, 0, 2259), (24672, 28710, 0, 0, 2261), (24672, 28711, 0, 0, 2263), (24672, 28712, 0, 0, 2265),
(24672, 28713, 0, 0, 2267), (24672, 28714, 0, 0, 2267), (24672, 28715, 0, 0, 2263), (24672, 28716, 0, 0, 2261), (24672, 28717, 0, 0, 2259), (24672, 28718, 0, 0, 2265),
(24672, 28719, 0, 0, 2261), (24672, 28720, 0, 0, 2263), (24672, 28721, 0, 0, 2265), (24672, 28722, 0, 0, 2267), (24672, 28723, 0, 0, 2259), (24672, 28724, 0, 0, 2265),
(24672, 31589, 0, 0, 2261), (24672, 31590, 0, 0, 2263), (24672, 31591, 0, 0, 2265), (24672, 31592, 0, 0, 2267), (24672, 31593, 0, 0, 2259), (24672, 31620, 0, 0, 2261),
(24672, 31622, 0, 0, 2263), (24672, 31623, 0, 0, 2265), (24672, 31624, 0, 0, 2267), (24672, 31625, 0, 0, 2259), (24672, 31630, 0, 0, 2259), (24672, 31631, 0, 0, 2261),
(24672, 31632, 0, 0, 2263), (24672, 31633, 0, 0, 2265), (24672, 31634, 0, 0, 2267), (24672, 31640, 0, 0, 2259), (24672, 31641, 0, 0, 2261), (24672, 31642, 0, 0, 2263),
(24672, 31643, 0, 0, 2265), (24672, 31644, 0, 0, 2267);

/* Hide certain vendor items until the player has reached the progression tier for them */
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 23 AND `SourceGroup` IN (12777, 12782, 12783, 26394) AND `ConditionValue1` IN (66002, 66006, 66008);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, 
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
--
(23, 12777, 16369, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Silk Boots if the player has NOT completed PROGRESSION_AQ'), -- mage
(23, 12777, 16391, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Silk Gloves if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16413, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Silk Raiment if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16414, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Silk Leggings if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16416, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Crown if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16415, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Silk Spaulders if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16423, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Dragonhide Epaulets if the player has NOT completed PROGRESSION_AQ'), -- druid
(23, 12777, 16424, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Dragonhide Shroud if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16422, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Dragonhide Leggings if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16421, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Dragonhide Tunic if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16393, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Dragonhide Footwraps if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16397, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Dragonhide Gloves if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16392, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Leather Boots if the player has NOT completed PROGRESSION_AQ'), -- rogue
(23, 12777, 16396, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Leather Gauntlets if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16417, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Leather Armor if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16419, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Leather Legguards if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16420, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Leather Spaulders if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16418, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Leather Veil if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16405, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Plate Boots if the player has NOT completed PROGRESSION_AQ'), -- warrior
(23, 12777, 16406, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Plate Gauntlets if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16430, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Plate Chestguard if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16431, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Plate Leggings if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16429, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Plate Helm if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16432, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Plate Pauldrons if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16410, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Lamellar Gauntlets if the player has NOT completed PROGRESSION_AQ'), -- paladin
(23, 12777, 16409, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Lamellar Sabatons if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16433, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Lamellar Breastplate if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16435, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Lamellar Leggings if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16434, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Lamellar Headguard if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16436, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Lamellar Shoulders if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16425, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Chain Hauberk if the player has NOT completed PROGRESSION_AQ'), -- hunter
(23, 12777, 16426, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Chain Leggings if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16401, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Chain Boots if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16403, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Chain Gauntlets if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16428, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Chain Helmet if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16427, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Chain Pauldrons if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 17562, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Dreadweave Boots if the player has NOT completed PROGRESSION_AQ'), -- warlock
(23, 12777, 17564, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Dreadweave Gloves if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 17568, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Dreadweave Robe if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 17567, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Dreadweave Leggings if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 17569, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Dreadweave Mantle if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 17566, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Headguard if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 17594, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Satin Boots if the player has NOT completed PROGRESSION_AQ'), -- priest
(23, 12777, 17596, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Satin Gloves if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 17600, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Satin Robes if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 17599, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Satin Leggings if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 17598, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Diadem if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 17601, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Satin Amice if the player has NOT completed PROGRESSION_AQ'),
--
(23, 12777, 23304, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Silk Legguards if the player has completed PROGRESSION_AQ'), -- mage
(23, 12777, 23305, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Silk Tunic if the player has completed PROGRESSION_AQ'),
(23, 12777, 23290, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Silk Handwraps if the player has completed PROGRESSION_AQ'),
(23, 12777, 23291, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Silk Walkers if the player has completed PROGRESSION_AQ'),
(23, 12777, 23318, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Silk Cowl if the player has completed PROGRESSION_AQ'),
(23, 12777, 23319, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Silk Mantle if the player has completed PROGRESSION_AQ'),
(23, 12777, 23294, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Dragonhide Chestpiece if the player has completed PROGRESSION_AQ'), -- druid
(23, 12777, 23295, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Dragonhide Leggings if the player has completed PROGRESSION_AQ'),
(23, 12777, 23280, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Dragonhide Grips if the player has completed PROGRESSION_AQ'),
(23, 12777, 23281, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Dragonhide Treads if the player has completed PROGRESSION_AQ'),
(23, 12777, 23308, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Dragonhide Headguard if the player has completed PROGRESSION_AQ'),
(23, 12777, 23309, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Dragonhide Shoulders if the player has completed PROGRESSION_AQ'),
(23, 12777, 23298, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Leather Chestpiece if the player has completed PROGRESSION_AQ'), -- rogue
(23, 12777, 23299, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Leather Legguards if the player has completed PROGRESSION_AQ'),
(23, 12777, 23284, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Leather Grips if the player has completed PROGRESSION_AQ'),
(23, 12777, 23285, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Leather Walkers if the player has completed PROGRESSION_AQ'),
(23, 12777, 23312, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Leather Helm if the player has completed PROGRESSION_AQ'),
(23, 12777, 23313, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Leather Shoulders if the player has completed PROGRESSION_AQ'),
(23, 12777, 23300, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Plate Hauberk if the player has completed PROGRESSION_AQ'), -- warrior
(23, 12777, 23301, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Plate Leggings if the player has completed PROGRESSION_AQ'),
(23, 12777, 23286, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Plate Gauntlets if the player has completed PROGRESSION_AQ'),
(23, 12777, 23287, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Plate Greaves if the player has completed PROGRESSION_AQ'),
(23, 12777, 23314, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Plate Helm if the player has completed PROGRESSION_AQ'),
(23, 12777, 23315, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Plate Shoulders if the player has completed PROGRESSION_AQ'),
(23, 12777, 23272, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Lamellar Breastplate if the player has completed PROGRESSION_AQ'), -- paladin
(23, 12777, 23273, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Lamellar Leggings if the player has completed PROGRESSION_AQ'),
(23, 12777, 23274, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Lamellar Gauntlets if the player has completed PROGRESSION_AQ'),
(23, 12777, 23275, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Lamellar Sabatons if the player has completed PROGRESSION_AQ'),
(23, 12777, 23276, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Lamellar Headguard if the player has completed PROGRESSION_AQ'),
(23, 12777, 23277, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Lamellar Shoulders if the player has completed PROGRESSION_AQ'),
(23, 12777, 23292, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Chain Hauberk if the player has completed PROGRESSION_AQ'), -- hunter
(23, 12777, 23293, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Chain Legguards if the player has completed PROGRESSION_AQ'),
(23, 12777, 23278, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Chain Greaves if the player has completed PROGRESSION_AQ'),
(23, 12777, 23279, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Chain Vices if the player has completed PROGRESSION_AQ'),
(23, 12777, 23306, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Chain Helm if the player has completed PROGRESSION_AQ'),
(23, 12777, 23307, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Chain Shoulders if the player has completed PROGRESSION_AQ'),
(23, 12777, 23296, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Dreadweave Legguards if the player has completed PROGRESSION_AQ'), -- warlock
(23, 12777, 23297, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Dreadweave Tunic if the player has completed PROGRESSION_AQ'),
(23, 12777, 23282, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Dreadweave Handwraps if the player has completed PROGRESSION_AQ'),
(23, 12777, 23283, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Dreadweave Walkers if the player has completed PROGRESSION_AQ'),
(23, 12777, 23310, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Dreadweave Cowl if the player has completed PROGRESSION_AQ'),
(23, 12777, 23311, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Dreadweave Spaulders if the player has completed PROGRESSION_AQ'),
(23, 12777, 23302, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Satin Legguards if the player has completed PROGRESSION_AQ'), -- priest
(23, 12777, 23303, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Satin Tunic if the player has completed PROGRESSION_AQ'),
(23, 12777, 23288, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Satin Handwraps if the player has completed PROGRESSION_AQ'),
(23, 12777, 23289, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Satin Walkers if the player has completed PROGRESSION_AQ'),
(23, 12777, 23316, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Satin Hood if the player has completed PROGRESSION_AQ'),
(23, 12777, 23317, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Satin Mantle if the player has completed PROGRESSION_AQ'),
--
(23, 12777, 16437, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Silk Footwraps until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16440, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Silk Gloves until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16441, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Coronet until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16442, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Silk Leggings until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16443, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Silk Vestments until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16444, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Silk Spaulders until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16446, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Leather Footguards until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16448, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Dragonhide Gauntlets until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16449, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Dragonhide Spaulders until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16450, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Dragonhide Legguards until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16451, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Dragonhide Helmet until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16452, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Dragonhide Breastplate until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16453, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Leather Chestpiece until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16454, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Leather Handgrips until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16455, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Leather Mask until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16456, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Leather Leggings until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16457, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Leather Epaulets until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16459, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Dragonhide Boots until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16462, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Chain Boots until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16463, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Chain Grips until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16465, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Chain Helm until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16466, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Chain Breastplate until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16467, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Chain Legguards until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16468, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Chain Spaulders until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16471, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Lamellar Gloves until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16472, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Lamellar Boots until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16473, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Lamellar Chestplate until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16474, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Lamellar Faceguard until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16475, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Lamellar Legplates until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16476, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Lamellar Pauldrons until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16477, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Plate Armor until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16478, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Plate Helm until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16479, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Plate Legguards until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16480, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Plate Shoulderguards until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16483, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Plate Boots until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16484, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Plate Gauntlets until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 17578, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Coronal until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 17579, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Dreadweave Leggings until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 17580, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Dreadweave Shoulders until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 17581, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Dreadweave Robe until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 17583, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Dreadweave Boots until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 17584, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Dreadweave Gloves until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 17602, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Headdress until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 17603, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Satin Pants until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 17604, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Satin Mantle until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 17605, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Satin Vestments until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 17607, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Satin Sandals until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 17608, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Satin Gloves until the player has completed PROGRESSION_ONYXIA'),
--
(23, 26394, 12584, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Longsword until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 18825, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Aegis until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 18827, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Handaxe until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 18830, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Sunderer until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 18833, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Bullseye until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 18836, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Repeater until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 18838, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Dirk until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 18843, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Right Hand Blade until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 18847, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Left Hand Blade until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 18855, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Hand Cannon until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 18865, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Punisher until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 18867, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Battle Hammer until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 18869, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Glaive until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 18873, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Stave until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 18876, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Claymore until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 23451, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Mageblade until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 23452, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Tome of Power until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 23453, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Tome of Restoration until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 23454, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Warhammer until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 23455, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Demolisher until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 23456, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Swiftblade until the player has completed PROGRESSION_ONYXIA'),
--
(23, 12783, 35906, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Lieutenant Karter will not sell Reins of the Black War Elekk until the player has completed PROGRESSION_PRE_TBC');


UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_pre_tbc' WHERE `guid` IN (61936, 61940, 61942, 61944, 61945, 61946, 61947, 61949, 61951);
UPDATE `creature`   SET `ScriptName` = 'npc_ipp_tbc' WHERE `id1` = 19848; -- Harbinger Ennarth

-- WotLK pvp vendors
DELETE FROM `creature` WHERE `id1` IN 
(12782,  -- Captain O'Neal <Weapons Quartermaster>
 26393,  -- Captain Dirgehammer <Armor Quartermaster>
 34075,  -- Captain Dirgehammer <Armor Quartermaster>
 34081); -- Captain O'Neal <Jewelcrafting Quartermaster>

/* NPC Rebecca Laughlin - Remove non-Vanilla Tabards */
DELETE FROM `npc_vendor` WHERE `entry`= 5193 AND `item` IN (15197, 15199, 19031, 19505, 24004, 31773, 31775, 31776, 31777, 31778, 31779, 31780, 31781, 31804, 32445, 32828, 35221);

-- Summon Felsteed (Warlock)
DELETE FROM `quest_offer_reward` WHERE `ID` = 4488;
INSERT INTO `quest_offer_reward` (`ID`, `RewardText`) VALUES 
(4488, 'So, you\'ve decided to grace my presence again. How kind of you.$b$bMy acolytes wondered if you\'d ever show up. I told them there was no doubt. When power is concerned, you are drawn in like a moth to the flame.');

-- A Meal Served Cold
UPDATE `quest_template` SET `Flags` = 9, 
`LogDescription` = 'Kill a Cold Eye Basilisk, get a Chilled Basilisk Haunch, and return it to Angus Stern in the Blue Recluse.$B$B<You must not release your spirit to succeed in this quest.>' 
WHERE `ID` = 212;

-- Chillwind Camp
UPDATE `quest_template` SET `LogTitle` = 'Chillwind Point' WHERE `ID` = 8415;

-- Devourer of Souls (Warlock)
UPDATE `quest_template_addon` SET `PrevQuestID` = 0 WHERE `ID` = 1716;

DELETE FROM `creature_text` WHERE `CreatureID` IN (12739);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(12739, 0, 0, '$s becomes enraged!', 16, 0, 100, 0, 0, 0, 10677, 0, 'Onyxias Elite Guard enrage at 30%');

-- smart scripts
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (1284, 12739);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (1284, 12739);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(1284, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 0, 0, 4, 5883, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Archbishop Benedictus - On Aggro - Play Sound (No Repeat)'),
(1284, 0, 1, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 20697, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Archbishop Benedictus - On Aggro - Cast Power word Shield'),
(1284, 0, 2, 0, 9, 0, 100, 0, 2000, 3500, 2000, 3500, 0, 40, 11, 20695, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Archbishop Benedictus - Within 0-40 Range - Cast Holy Smite'),
(1284, 0, 3, 0, 9, 0, 100, 0, 3400, 4800, 3400, 4800, 0, 10, 11, 23858, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Archbishop Benedictus - Within 0-10 Range - Cast Holy Nova'),
(1284, 0, 4, 0, 0, 0, 100, 0, 12000, 18000, 12000, 18000, 0, 0, 11, 20697, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Archbishop Benedictus - In Combat - Cast Power Word: Shield'),
--
(12739, 0, 0, 1, 2, 0, 100, 0, 0, 30, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Onyxias Elite Guard - Between 0-30% Health - Cast Enrage'),
(12739, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Onyxias Elite Guard - On Enrage - Say Line 0');
