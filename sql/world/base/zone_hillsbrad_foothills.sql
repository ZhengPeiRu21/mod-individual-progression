-- Drop chance for Humbert's Sword was incorrectly set to 100 - updated to 25 - value copied from VMangos
UPDATE `creature_loot_template` SET `Chance` = 25 WHERE `Item` = 3693;

-- Drop chance for Mountain Lion Blood was incorrectly set to 100 
DELETE FROM `creature_loot_template` WHERE `Item` = 3496;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
(2384, 3496, 0, 40, 1, 1, 0, 1, 1, 'Starving Mountain Lion - Mountain Lion Blood'),
(2385, 3496, 0, 80, 1, 1, 0, 1, 1, 'Feral Mountain Lion - Mountain Lion Blood'),
(2406, 3496, 0, 80, 1, 1, 0, 1, 1, 'Mountain Lion - Mountain Lion Blood'),
(2407, 3496, 0, 80, 1, 1, 0, 1, 1, 'Hulking Mountain Lion - Mountain Lion Blood');

-- Souvenirs of Death - this quests was missing a pre quest
UPDATE `quest_template_addon` SET `PrevQuestID` = 527 WHERE `ID` = 546;

-- Pooled Treasure Chests
DELETE FROM `pool_template` WHERE `entry` IN (66004);
INSERT INTO `pool_template` (`entry`,`max_limit`,`description`) VALUES
(66004, 1, 'Treasures - Hillsbrad Foothills');

UPDATE `gameobject` SET `spawntimesecs` = 900 WHERE`guid` IN (20885, 30036, 85804);

DELETE FROM `pool_gameobject` WHERE `pool_entry` = 66004;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
(20885, 66004, 0, 'Tattered Chest, Hillsbrad Fields, node 1'),
(30036, 66004, 0, 'Tattered Chest, Hillsbrad Fields, node 2'),
(85804, 66004, 0, 'Tattered Chest, Hillsbrad Fields, node 3');

-- Purgation Isle (896)
DELETE FROM `creature_template` WHERE `entry` IN (607068, 607069, 607070, 607071, 607072, 607075);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, 
`minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, 
`BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, 
`type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, 
`ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
--
(607068, 0, 0, 0, 0, 0, 'Condemned Acolyte', NULL, NULL, 0, 30, 31, 0, 16, 0, 1, 1.14286, 1, 1, 20, 1, 0, 0, 5.75, 2000, 2000, 1, 1, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 6, 0, 7074, 0, 0, 0, 0, 1430, 1630, '', 0, 1, 3.3, 3, 1, 1, 0, 0, 1, 8413718, 0, 0, '', 12340),
(607069, 0, 0, 0, 0, 0, 'Condemned Monk', NULL, NULL, 0, 31, 32, 0, 16, 0, 1, 1.14286, 1, 1, 20, 1, 0, 0, 4.3, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 6, 0, 7073, 0, 0, 0, 0, 1538, 1738, '', 0, 1, 3, 1, 1, 1, 0, 0, 1, 8413702, 0, 0, '', 12340),
(607070, 0, 0, 0, 0, 0, 'Condemned Cleric', NULL, NULL, 0, 32, 33, 0, 16, 0, 1, 1.14286, 1, 1, 20, 1, 0, 0, 4.8, 2000, 2000, 1, 1, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 6, 0, 7074, 0, 0, 0, 0, 1491, 1691, '', 0, 1, 3.3, 3, 1.05, 1, 0, 0, 1, 8413718, 0, 0, '', 12340),
(607071, 0, 0, 0, 0, 0, 'Cursed Paladin', NULL, NULL, 0, 30, 31, 0, 16, 0, 1, 1.14286, 1, 1, 20, 1, 0, 0, 6.45, 2000, 2000, 1, 1, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 6, 0, 7073, 0, 0, 0, 0, 1465, 1665, '', 0, 1, 3.3, 2, 1, 1, 0, 0, 1, 8413718, 0, 0, '', 12340),
(607072, 0, 0, 0, 0, 0, 'Cursed Justicar', NULL, NULL, 0, 32, 32, 0, 16, 0, 1, 1.14286, 1, 1, 20, 1, 0, 0, 4.75, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 6, 0, 7073, 0, 0, 0, 0, 1430, 1630, '', 0, 1, 3.3, 1, 0.8, 1, 0, 0, 1, 8413718, 0, 0, '', 12340),
(607075, 0, 0, 0, 0, 0, 'Writhing Mage', NULL, NULL, 0, 31, 32, 0, 16, 0, 1, 1.14286, 1, 1, 20, 1, 0, 0, 3.85, 2000, 2000, 1, 1, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 6, 0, 7074, 0, 0, 0, 0, 1571, 1771, '', 0, 1, 3, 3, 0.7, 1, 0, 0, 1, 8413718, 0, 0, '', 12340);

DELETE FROM `creature_template_addon` WHERE `entry` IN (607068, 607070);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES
(607068, 0, 0, 0, 1, 0, 0, ''),
(607070, 0, 0, 0, 1, 0, 0, '');

DELETE FROM `creature_template_locale` WHERE `entry` BETWEEN 607068 AND 607075;
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES 
(607068, 'deDE', 'Verurteilter Akolyth', '', 18019),
(607068, 'esES', 'Acólito condenado', '', 18019),
(607068, 'esMX', 'Acólito condenado', '', 18019),
(607068, 'frFR', 'Acolyte condamné', '', 18019),
(607068, 'koKR', '이승을 떠도는 수행사제', '', 18019),
(607068, 'ruRU', 'Обреченный послушник', '', 18019),
(607068, 'zhCN', '有罪的侍僧', '', 18019),
(607068, 'zhTW', '有罪的侍僧', '', 18019),
(607069, 'deDE', 'Verurteilter Mönch', '', 18019),
(607069, 'esES', 'Monje condenado', '', 18019),
(607069, 'esMX', 'Monje condenado', '', 18019),
(607069, 'frFR', 'Moine condamné', '', 18019),
(607069, 'koKR', '이승을 떠도는 수도사', '', 18019),
(607069, 'ruRU', 'Обреченный монах', '', 18019),
(607069, 'zhCN', '有罪的僧侣', '', 18019),
(607069, 'zhTW', '有罪的僧侶', '', 18019),
(607070, 'deDE', 'Verurteilter Kleriker', '', 18019),
(607070, 'esES', 'Clérigo condenado', '', 18019),
(607070, 'esMX', 'Clérigo condenado', '', 18019),
(607070, 'frFR', 'Clerc condamné', '', 18019),
(607070, 'koKR', '이승을 떠도는 성직자', '', 18019),
(607070, 'ruRU', 'Обреченный священник', '', 18019),
(607070, 'zhCN', '有罪的牧师', '', 18019),
(607070, 'zhTW', '有罪的教士', '', 18019),
(607071, 'deDE', 'Verfluchter Paladin', '', 18019),
(607071, 'esES', 'Paladín maldito', '', 18019),
(607071, 'esMX', 'Paladín maldito', '', 18019),
(607071, 'frFR', 'Paladin maudit', '', 18019),
(607071, 'koKR', '저주받은 성기사', '', 18019),
(607071, 'ruRU', 'Проклятый паладин', '', 18019),
(607071, 'zhCN', '被诅咒的圣骑士', '', 18019),
(607071, 'zhTW', '被詛咒的聖騎士', '', 18019),
(607072, 'deDE', 'Verfluchter Justiziar', '', 18019),
(607072, 'esES', 'Justicar maldito', '', 18019),
(607072, 'esMX', 'Justicar maldito', '', 18019),
(607072, 'frFR', 'Justicier maudit', '', 18019),
(607072, 'koKR', '저주받은 심판관', '', 18019),
(607072, 'ruRU', 'Проклятый вершитель правосудия', '', 18019),
(607072, 'zhCN', '被诅咒的审判者', '', 18019),
(607072, 'zhTW', '被詛咒的審判者', '', 18019),
(607073, 'deDE', 'Arados der Verdammte', '', 18019),
(607073, 'esES', 'Arados el Maldito', '', 18019),
(607073, 'esMX', 'Arados el Maldito', '', 18019),
(607073, 'frFR', 'Arados le Maudit', '', 18019),
(607073, 'koKR', '저주받은 아라도스', '', 18019),
(607073, 'ruRU', 'Арадос Проклятый', '', 18019),
(607073, 'zhCN', '可憎的阿拉杜斯', '', 18019),
(607073, 'zhTW', '被詛咒的阿拉杜斯', '', 18019),
(607074, 'deDE', 'Richter Thelgram', '', 18019),
(607074, 'esES', 'Juez Thelgram', '', 18019),
(607074, 'esMX', 'Juez Thelgram', '', 18019),
(607074, 'frFR', 'Juge Thelgram', '', 18019),
(607074, 'koKR', '대법관 텔그램', '', 18019),
(607074, 'ruRU', 'Судья Телграм', '', 18019),
(607074, 'zhCN', '审判者塞尔格拉姆', '', 18019),
(607074, 'zhTW', '審判者塞爾格拉姆', '', 18019),
(607075, 'deDE', 'Verdammter Magier', '', 18019),
(607075, 'esES', 'Mago en pena', '', 18019),
(607075, 'esMX', 'Mago en pena', '', 18019),
(607075, 'frFR', 'Mage frémissant', '', 18019),
(607075, 'koKR', '고통받는 마법사', '', 18019),
(607075, 'ruRU', 'Неупокоенный маг', '', 18019),
(607075, 'zhCN', '痛苦的法师', '', 18019),
(607075, 'zhTW', '痛苦的法師', '', 18019);

DELETE FROM `creature_template_model` WHERE `CreatureID` BETWEEN 607068 AND 607075;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES 
(607068, 0, 5828, 1, 1, 12340),
(607068, 1, 5829, 1, 1, 12340),
(607069, 0, 5822, 1, 1, 12340),
(607069, 1, 5823, 1, 1, 12340),
(607070, 0, 5824, 1, 1, 12340),
(607070, 1, 5825, 1, 1, 12340),
(607070, 2, 5826, 1, 1, 12340),
(607070, 3, 5827, 1, 1, 12340),
(607071, 0, 5816, 1, 1, 12340),
(607071, 1, 5817, 1, 1, 12340),
(607071, 2, 5818, 1, 1, 12340),
(607071, 3, 5819, 1, 1, 12340),
(607072, 0, 5820, 1, 1, 12340),
(607072, 1, 5821, 1, 1, 12340),
(607075, 0, 5814, 1, 1, 12340),
(607075, 1, 5815, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE `CreatureID` BETWEEN 607068 AND 607075;
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES 
(607068, 0, 25058, 12340),
(607068, 1, 15654, 12340),
(607069, 0, 11978, 12340),
(607069, 1, 15615, 12340),
(607070, 0, 25054, 12340),
(607070, 1, 15586, 12340),
(607075, 0, 8401, 12340),
(607075, 1, 7322, 12340);

DELETE FROM `creature_equip_template`  WHERE `CreatureID` BETWEEN 607068 AND 607075;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES 
(607068, 1, 5281, 0, 0, 18019),
(607069, 1, 5303, 0, 0, 18019),
(607070, 1, 2182, 0, 0, 18019),
(607071, 1, 3361, 2052, 0, 18019),
(607072, 1, 1983, 0, 0, 18019),
(607075, 1, 2177, 0, 0, 18019);



SET @CGUID    := 655000;

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+10 AND @CGUID+42;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, 
`spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
--
(@CGUID+10, 607068, 0, 0, 0, 0, 0, 1, 1, 1, -1262.56, 479.974, 10.5137, 5.06174, 600, 0, 0, 1, 1, 0, 0, 0, 0, '', 0, 0, NULL),  -- Condemned Acolyte
(@CGUID+11, 607068, 0, 0, 0, 0, 0, 1, 1, 1, -1267.31, 436.379, 16.4786, 0.916549, 600, 5, 0, 1, 1, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+12, 607068, 0, 0, 0, 0, 0, 1, 1, 1, -1232.49, 480.7, 13.6295, 5.2709, 600, 0, 0, 1, 1, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+13, 607068, 0, 0, 0, 0, 0, 1, 1, 1, -1240.95, 434.424, 3.14377, 1.66122, 600, 5, 0, 1, 1, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+14, 607069, 0, 0, 0, 0, 0, 1, 1, 1, -1379.81, 632.899, 51.5099, 0.826559, 600, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL), -- Condemned Monk
(@CGUID+15, 607069, 0, 0, 0, 0, 0, 1, 1, 1, -1307.52, 637.362, 47.8771, 2.00713, 600, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+16, 607069, 0, 0, 0, 0, 0, 1, 1, 1, -1256.24, 553.844, 27.4701, 4.55558, 600, 0, 0, 1, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+17, 607069, 0, 0, 0, 0, 0, 1, 1, 1, -1246.71, 566.755, 28.5484, 3.83972, 600, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+18, 607070, 0, 0, 0, 0, 0, 1, 1, 1, -1326.72, 546.228, 100.942, 5.60251, 600, 0, 0, 1, 1, 0, 0, 0, 0, '', 0, 0, NULL),  -- Condemned Cleric
(@CGUID+19, 607070, 0, 0, 0, 0, 0, 1, 1, 1, -1315.18, 512.496, 100.148, 1.41913, 600, 0, 0, 1, 1, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+20, 607070, 0, 0, 0, 0, 0, 1, 1, 1, -1367.22, 648.284, 50.3003, 3.80482, 600, 0, 0, 1, 1, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+21, 607070, 0, 0, 0, 0, 0, 1, 1, 1, -1317.12, 531.126, 99.7401, 3.61283, 600, 0, 0, 1, 1, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+22, 607071, 0, 0, 0, 0, 0, 1, 1, 1, -1319.1, 457.083, 37.618, 3.90954, 600, 0, 0, 1, 1, 0, 0, 0, 0, '', 0, 0, NULL),    -- Cursed Paladin
(@CGUID+23, 607071, 0, 0, 0, 0, 0, 1, 1, 1, -1233.07, 560.679, 33.5691, 0.872665, 600, 0, 0, 1, 1, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+24, 607071, 0, 0, 0, 0, 0, 1, 1, 1, -1265.33, 476.39, 10.6086, 5.77704, 600, 0, 0, 1, 1, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+25, 607071, 0, 0, 0, 0, 0, 1, 1, 1, -1377.69, 644.3, 50.7874, 2.53073, 600, 0, 0, 1, 1, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+26, 607071, 0, 0, 0, 0, 0, 1, 1, 1, -1220.88, 416.147, 3.81308, 4.31096, 600, 0, 0, 1, 1, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+27, 607071, 0, 0, 0, 0, 0, 1, 1, 1, -1232.39, 479.16, 13.6295, 5.67232, 600, 0, 0, 1, 1, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+28, 607071, 0, 0, 0, 0, 0, 1, 1, 1, -1233.45, 434.88, 3.64377, 4.4855, 600, 0, 0, 1, 1, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+29, 607071, 0, 0, 0, 0, 0, 1, 1, 1, -1234.14, 512.85, 14.1555, 2.72271, 600, 0, 0, 1, 1, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+30, 607072, 0, 0, 0, 0, 0, 1, 1, 1, -1345.56, 575.438, 103.609, 5.32325, 600, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),  -- Cursed Justicar
(@CGUID+31, 607072, 0, 0, 0, 0, 0, 1, 1, 1, -1390.78, 616.502, 54.3849, 0.978326, 600, 0, 0, 1, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+32, 607072, 0, 0, 0, 0, 0, 1, 1, 1, -1312.72, 566.287, 106.176, 2.46091, 600, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+33, 607072, 0, 0, 0, 0, 0, 1, 1, 1, -1387.68, 526.302, 80.425, 1.15192, 600, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+34, 607075, 0, 0, 0, 0, 0, 1, 1, 1, -1251.87, 571.952, 30.2319, 1.81913, 600, 3, 0, 1, 1, 1, 0, 0, 0, '', 0, 0, NULL),  -- Writhing Mage
(@CGUID+35, 607075, 0, 0, 0, 0, 0, 1, 1, 1, -1321.62, 519.507, 99.2873, 3.25392, 600, 0, 0, 1, 1, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+36, 607075, 0, 0, 0, 0, 0, 1, 1, 1, -1353.38, 543.865, 101.984, 3.76991, 600, 0, 0, 1, 1, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+37, 607075, 0, 0, 0, 0, 0, 1, 1, 1, -1412.1, 548.535, 80.6403, 4.18879, 600, 0, 0, 1, 1, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+38, 607075, 0, 0, 0, 0, 0, 1, 1, 1, -1393.76, 619.646, 53.6349, 5.05238, 600, 5, 0, 1, 1, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+39, 607075, 0, 0, 0, 0, 0, 1, 1, 1, -1349.32, 597.778, 103.529, 0.547157, 600, 0, 0, 1, 1, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+40, 607075, 0, 0, 0, 0, 0, 1, 1, 1, -1326.6, 639.302, 50.5369, 2.27374, 600, 0, 0, 1, 1, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+41, 7073,   0, 0, 0, 0, 0, 1, 1, 1, -1329.91, 554.068, 101.125, 5.417, 300, 0, 0, 1, 1, 0, 0, 0, 0, '', NULL, 0, NULL), -- Arados the Damned
(@CGUID+42, 7074,   0, 0, 0, 0, 0, 1, 1, 1, -1319.54, 554.931, 101.501, 4.222, 300, 0, 0, 1, 1, 0, 0, 0, 0, '', NULL, 0, NULL); -- Judge Thelgram


SET @IPPPHASE    := 65536; 
SET @IPPPHASE_II := 131072;

UPDATE `creature` SET `phaseMask` = @IPPPHASE_II WHERE `id1` IN (7068, 7069, 7070, 7071, 7072, 7075);
UPDATE `creature` SET `phaseMask` = @IPPPHASE    WHERE `id1` IN (607068, 607069, 607070, 607071, 607072, 7073, 7074, 607075);


-- smart scripts
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (7073, 607069, 607071, 607072, 607075);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (7073, 607069, 607071, 607072, 607075);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 

(7073,   0, 0, 0, 14, 0, 100, 0, 3000, 30, 10000, 12000, 0, 0, 11, 15493, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,      'Arados the Damned - Friendly Missing Health - Cast Holy Light'),
(7073,   0, 1, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 13874, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Arados the Damned - Between 0-30% Health - Cast Divine Shield'),
(607069, 0, 1, 0, 105, 0, 100, 0, 13000, 15000, 13000, 15000, 0, 5, 11, 11978, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Condemned Monk  - Target Casting - Cast Kick'),
(607069, 0, 0, 0, 9, 0, 100, 0, 5000, 8000, 7000, 10000, 0, 5, 11, 12555, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Condemned Monk  - Within 0-5 Range - Cast Pummel'),
(607071, 0, 0, 0, 9, 0, 100, 0, 0, 0, 14000, 18000, 0, 8, 11, 13005, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Cursed Paladin  - Within 0-8 Range - Cast Hammer of Justice'),
(607072, 0, 0, 0, 9, 0, 100, 0, 5000, 8000, 7000, 10000, 0, 5, 11, 11976, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Cursed Justicar - Within 0-5 Range - Cast Strike'),
(607075, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Writhing Mage   - Between 0-15% Health - Flee For Assist (No Repeat)');
