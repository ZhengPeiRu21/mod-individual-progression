SET @CGUID   := 659000;

SET @HW      := 115350; -- Horde Warbringer - vanilla
SET @ABG     := 115351; -- Alliance Brigadier General - vanilla
SET @HW_TBC  := 215350; -- Horde Warbringer - TBC
SET @ABG_TBC := 215351; -- Alliance Brigadier General - TBC

DELETE FROM `creature_template` WHERE `entry` IN (@HW, @ABG, @HW_TBC, @ABG_TBC);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, 
`minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, 
`BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`,  
`type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, 
`ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
--
(@HW,0,0,0,0,0,'Horde Warbringer',NULL,NULL,6598,60,60,2,1074,3,1,1.14286,1,1,18,1,1,0,1,2000,2000,1,1,1,832,2048,0,0,7,134217728,0,0,0,0,0,0,0,'',0,1,1,1,1,1,0,0,1,0,0,2,'',0),
(@ABG,0,0,0,0,0,'Alliance Brigadier General',NULL,NULL,6597,60,60,2,534,3,1,1.14286,1,1,18,1,0,0,2.4,2000,2000,1,1,1,320,2048,0,0,7,134217728,0,0,0,0,0,0,0,'',0,1,10,1,1.4,1,0,0,1,0,0,2,'',0),
(@HW_TBC,0,0,0,0,0,'Horde Warbringer',NULL,NULL,6598,60,60,2,1074,3,1,1.14286,1,1,18,1,1,0,1,2000,2000,1,1,1,832,2048,0,0,7,134217728,0,0,0,0,0,0,0,'',0,1,1,1,1,1,0,0,1,0,0,2,'',0),
(@ABG_TBC,0,0,0,0,0,'Alliance Brigadier General',NULL,NULL,6597,60,60,2,534,3,1,1.14286,1,1,18,1,0,0,2.4,2000,2000,1,1,1,320,2048,0,0,7,134217728,0,0,0,0,0,0,0,'',0,1,10,1,1.4,1,0,0,1,0,0,2,'',0);

DELETE FROM `creature_template_locale` WHERE `entry` IN (@HW, @ABG, @HW_TBC, @ABG_TBC);
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES 
--
(@HW, 'deDE', 'Kriegshetzer der Horde', '', 18019),
(@HW, 'esES', 'Belisario de la Horda', '', 18019),
(@HW, 'esMX', 'Belisario de la Horda', '', 18019),
(@HW, 'frFR', 'Porteguerre de la Horde', '', 18019),
(@HW, 'koKR', '호드 전쟁인도자', '', 18019),
(@HW, 'ruRU', 'Ордынский вестник войны', '', 18019),
(@HW, 'zhCN', '部落战争使者', '', 18019),
(@HW, 'zhTW', '部落戰爭使者', '', 18019),
--
(@ABG, 'deDE', 'Brigadegeneral der Allianz', '', 18019),
(@ABG, 'esES', 'General de brigada de la Alianza', '', 18019),
(@ABG, 'esMX', 'General de brigada de la Alianza', '', 18019),
(@ABG, 'frFR', 'Général de brigade de l\'Alliance', '', 18019),
(@ABG, 'koKR', '얼라이언스 준장', '', 18019),
(@ABG, 'ruRU', 'Бригадный генерал Альянса', '', 18019),
(@ABG, 'zhCN', '联盟准将', '', 18019),
(@ABG, 'zhTW', '聯盟准將', '', 18019),
--
(@HW_TBC, 'deDE', 'Kriegshetzer der Horde', '', 18019),
(@HW_TBC, 'esES', 'Belisario de la Horda', '', 18019),
(@HW_TBC, 'esMX', 'Belisario de la Horda', '', 18019),
(@HW_TBC, 'frFR', 'Porteguerre de la Horde', '', 18019),
(@HW_TBC, 'koKR', '호드 전쟁인도자', '', 18019),
(@HW_TBC, 'ruRU', 'Ордынский вестник войны', '', 18019),
(@HW_TBC, 'zhCN', '部落战争使者', '', 18019),
(@HW_TBC, 'zhTW', '部落戰爭使者', '', 18019),
--
(@ABG_TBC, 'deDE', 'Brigadegeneral der Allianz', '', 18019),
(@ABG_TBC, 'esES', 'General de brigada de la Alianza', '', 18019),
(@ABG_TBC, 'esMX', 'General de brigada de la Alianza', '', 18019),
(@ABG_TBC, 'frFR', 'Général de brigade de l\'Alliance', '', 18019),
(@ABG_TBC, 'koKR', '얼라이언스 준장', '', 18019),
(@ABG_TBC, 'ruRU', 'Бригадный генерал Альянса', '', 18019),
(@ABG_TBC, 'zhCN', '联盟准将', '', 18019),
(@ABG_TBC, 'zhTW', '聯盟准將', '', 18019);


DELETE FROM `creature_template_addon` WHERE `entry` IN (@HW, @HW_TBC);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES
(@HW, 0, 0, 0, 1, 0, 0, ''),
(@HW_TBC, 0, 0, 0, 1, 0, 0, '');

DELETE FROM `creature_equip_template` WHERE `CreatureID` IN (@HW, @HW_TBC);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES 
(@HW, 1, 13706, 0, 0, 18019),
(@HW_TBC, 1, 13706, 0, 0, 18019);

DELETE FROM `creature_template_model` WHERE `CreatureID` IN (@HW, @ABG, @HW_TBC, @ABG_TBC);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES 
(@HW, 0, 15387, 1, 1, 12340),
(@ABG, 0, 27154, 1, 1, 12340),
(@HW_TBC, 0, 15387, 1, 1, 12340),
(@ABG_TBC, 0, 27154, 1, 1, 12340);

DELETE FROM `creature` WHERE `id1` IN (@HW, @ABG, @HW_TBC, @ABG_TBC);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, 
`wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
--
(@CGUID+201, @HW, 0, 0, 1, 0, 0, 1, 1, 1, -1381.13, -87.0034, 159.532, 3.14159, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+202, @HW, 0, 0, 1, 0, 0, 1, 1, 1, 1988.5, -4812.28, 56.8494, 1.5708, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+203, @HW, 0, 0, 0, 0, 0, 1, 1, 1, 1251.41, 313.892, -63.6062, 0.139626, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+204, @HW, 0, 0, 0, 0, 0, 1, 1, 1, -832.362, -3512.62, 72.3318, 4.55531, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+205, @HW, 0, 0, 0, 0, 0, 1, 1, 1, 382.498, -983.076, 109.979, 2.82743, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+206, @HW, 0, 0, 1, 0, 0, 1, 1, 1, 1026.33, -2110.51, 123.1, 5.49779, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
--
(@CGUID+211, @ABG, 0, 0, 0, 0, 0, 1, 1, 0, -5049.99, -1270.26, 510.408, 0.0349066, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+212, @ABG, 0, 0, 1, 0, 0, 1, 1, 0, 9994.73, 2324.28, 1330.87, 3.24631, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+213, @ABG, 0, 0, 0, 0, 0, 1, 1, 0, -8441.76, 311.67, 120.969, 1.53589, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+214, @ABG, 0, 0, 0, 0, 0, 1, 1, 0, -1231.22, -2510.21, 23.1758, 4.36332, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+215, @ABG, 0, 0, 0, 0, 0, 1, 1, 0, -36.7805, -316.826, 130.69, 4.7822, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+216, @ABG, 0, 0, 1, 0, 0, 1, 1, 0, 1450.77, -1872.06, 126.998, 0.436332, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
--
(@CGUID+221, @HW_TBC, 0, 0, 1, 0, 0, 1, 1, 1, 1991.28, -4797.15, 56.1305, 2.77507, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+222, @HW_TBC, 0, 0, 1, 0, 0, 1, 1, 1, -1385.16, -91.2934, 159.055, 3.12414, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+223, @HW_TBC, 0, 0, 1, 0, 0, 1, 1, 1, 1663.62, -4196.58, 56.4659, 4.19403, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+224, @HW_TBC, 0, 0, 0, 0, 0, 1, 1, 1, 1316.82, 291.133, -63.6295, 2.04204, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+225, @HW_TBC, 0, 0, 530, 0, 0, 1, 1, 1, -1966.8800, 5260.6201, -38.8442, 4.1024, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
--
(@CGUID+226, @ABG_TBC, 0, 0, 0, 0, 0, 1, 1, 0, -8385.67, 272.605, 120.886, 2.20103, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+227, @ABG_TBC, 0, 0, 0, 0, 0, 1, 1, 0, -5042.4, -1265.32, 510.325, 4.62873, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+228, @ABG_TBC, 0, 0, 0, 0, 0, 1, 1, 0, -8766.67, 408.102, 109.785, 2.22503, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+229, @ABG_TBC, 0, 0, 1, 0, 0, 1, 1, 0, 9994.73, 2324.28, 1330.87, 3.24631, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+230, @ABG_TBC, 0, 0, 530, 0, 0, 1, 1, 0, -1768.1700, 5255.3599, -38.7639, 5.2011, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL);


DELETE FROM `creature_queststarter` WHERE `id` IN (@HW, @ABG, @HW_TBC, @ABG_TBC);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES 
-- Vanilla (Horde)
(@HW, 13476),  -- For Great Honor
(@HW, 13475),  -- For Great Honor (repeatable)
(@HW, 8369),   -- Invaders of Alterac Valley
(@HW, 8387),   -- Invaders of Alterac Valley (repeatable)
(@HW, 8368),   -- lvl10 Battle of Warsong Gulch
(@HW, 8389),   -- lvl10 Battle of Warsong Gulch (repeatable)
(@HW, 8426),   -- lvl20 Battle of Warsong Gulch
(@HW, 8431),   -- lvl20 Battle of Warsong Gulch (repeatable)
(@HW, 8427),   -- lvl30 Battle of Warsong Gulch
(@HW, 8432),   -- lvl30 Battle of Warsong Gulch (repeatable)
(@HW, 8428),   -- lvl40 Battle of Warsong Gulch
(@HW, 8433),   -- lvl40 Battle of Warsong Gulch (repeatable)
(@HW, 8429),   -- lvl50 Battle of Warsong Gulch
(@HW, 8434),   -- lvl50 Battle of Warsong Gulch (repeatable)
(@HW, 8430),   -- lvl60 Battle of Warsong Gulch
(@HW, 8435),   -- lvl60 Battle of Warsong Gulch (repeatable)
(@HW, 8370),   -- lvl20 Conquering Arathi Basin
(@HW, 8390),   -- lvl20 Conquering Arathi Basin (repeatable)
(@HW, 8436),   -- lvl30 Conquering Arathi Basin
(@HW, 8440),   -- lvl30 Conquering Arathi Basin (repeatable)
(@HW, 8437),   -- lvl40 Conquering Arathi Basin
(@HW, 8441),   -- lvl40 Conquering Arathi Basin (repeatable)
(@HW, 8438),   -- lvl50 Conquering Arathi Basin
(@HW, 8442),   -- lvl50 Conquering Arathi Basin (repeatable)
(@HW, 8439),   -- lvl60 Conquering Arathi Basin
(@HW, 8443),   -- lvl60 Conquering Arathi Basin (repeatable)
-- Vanilla (Alliance)
(@ABG, 13478), -- Concerted Efforts
(@ABG, 13477), -- Concerted Efforts (repeatable)
(@ABG, 8375),  -- Remember Alterac Valley!
(@ABG, 8383),  -- Remember Alterac Valley! (repeatable)
(@ABG, 8374),  -- lvl20 Claiming Arathi Basin
(@ABG, 8384),  -- lvl20 Claiming Arathi Basin (repeatable)
(@ABG, 8393),  -- lvl30 Claiming Arathi Basin
(@ABG, 8391),  -- lvl30 Claiming Arathi Basin (repeatable)
(@ABG, 8394),  -- lvl40 Claiming Arathi Basin
(@ABG, 8392),  -- lvl40 Claiming Arathi Basin (repeatable)
(@ABG, 8395),  -- lvl50 Claiming Arathi Basin
(@ABG, 8397),  -- lvl50 Claiming Arathi Basin (repeatable)
(@ABG, 8396),  -- lvl60 Claiming Arathi Basin
(@ABG, 8398),  -- lvl60 Claiming Arathi Basin (repeatable)
(@ABG, 8372),  -- lvl10 Fight for Warsong Gulch
(@ABG, 8386),  -- lvl10 Fight for Warsong Gulch (repeatable)
(@ABG, 8399),  -- lvl20 Fight for Warsong Gulch
(@ABG, 8404),  -- lvl20 Fight for Warsong Gulch (repeatable)
(@ABG, 8400),  -- lvl30 Fight for Warsong Gulch
(@ABG, 8405),  -- lvl30 Fight for Warsong Gulch (repeatable)
(@ABG, 8401),  -- lvl40 Fight for Warsong Gulch
(@ABG, 8406),  -- lvl40 Fight for Warsong Gulch (repeatable)
(@ABG, 8402),  -- lvl50 Fight for Warsong Gulch
(@ABG, 8407),  -- lvl50 Fight for Warsong Gulch (repeatable)
(@ABG, 8403),  -- lvl60 Fight for Warsong Gulch
(@ABG, 8408),  -- lvl60 Fight for Warsong Gulch (repeatable)
-- TBC (Horde)
(@HW_TBC, 8367),   -- For Great Honor
(@HW_TBC, 8388),   -- For Great Honor (repeatable)
(@HW_TBC, 11339),  -- Call to Arms: Arathi Basin (repeatable)
(@HW_TBC, 11340),  -- Call to Arms: Alterac Valley (repeatable)
(@HW_TBC, 11341),  -- Call to Arms: Eye of the Storm (repeatable)
(@HW_TBC, 11342),  -- Call to Arms: Warsong Gulch (repeatable)
-- TBC (Alliance)
(@ABG_TBC, 8371),  -- Concerted Efforts
(@ABG_TBC, 8385),  -- Concerted Efforts (repeatable)
(@ABG_TBC, 11335), -- Call to Arms: Arathi Basin (repeatable)
(@ABG_TBC, 11336), -- Call to Arms: Alterac Valley (repeatable)
(@ABG_TBC, 11337), -- Call to Arms: Eye of the Storm (repeatable)
(@ABG_TBC, 11338); -- Call to Arms: Warsong Gulch (repeatable)

DELETE FROM `creature_questender` WHERE `id` IN (@HW, @ABG, @HW_TBC, @ABG_TBC);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES 
--
(@HW, 13476),  -- For Great Honor
(@HW, 13475),  -- For Great Honor (repeatable)
(@HW, 8369),   -- Invaders of Alterac Valley
(@HW, 8387),   -- Invaders of Alterac Valley (repeatable)
(@HW, 8368),   -- lvl10 Battle of Warsong Gulch
(@HW, 8389),   -- lvl10 Battle of Warsong Gulch (repeatable)
(@HW, 8426),   -- lvl20 Battle of Warsong Gulch
(@HW, 8431),   -- lvl20 Battle of Warsong Gulch (repeatable)
(@HW, 8427),   -- lvl30 Battle of Warsong Gulch
(@HW, 8432),   -- lvl30 Battle of Warsong Gulch (repeatable)
(@HW, 8428),   -- lvl40 Battle of Warsong Gulch
(@HW, 8433),   -- lvl40 Battle of Warsong Gulch (repeatable)
(@HW, 8429),   -- lvl50 Battle of Warsong Gulch
(@HW, 8434),   -- lvl50 Battle of Warsong Gulch (repeatable)
(@HW, 8430),   -- lvl60 Battle of Warsong Gulch
(@HW, 8435),   -- lvl60 Battle of Warsong Gulch (repeatable)
(@HW, 8370),   -- lvl20 Conquering Arathi Basin
(@HW, 8390),   -- lvl20 Conquering Arathi Basin (repeatable)
(@HW, 8436),   -- lvl30 Conquering Arathi Basin
(@HW, 8440),   -- lvl30 Conquering Arathi Basin (repeatable)
(@HW, 8437),   -- lvl40 Conquering Arathi Basin
(@HW, 8441),   -- lvl40 Conquering Arathi Basin (repeatable)
(@HW, 8438),   -- lvl50 Conquering Arathi Basin
(@HW, 8442),   -- lvl50 Conquering Arathi Basin (repeatable)
(@HW, 8439),   -- lvl60 Conquering Arathi Basin
(@HW, 8443),   -- lvl60 Conquering Arathi Basin (repeatable)
--
(@ABG, 13478), -- Concerted Efforts
(@ABG, 13477), -- Concerted Efforts (repeatable)
(@ABG, 8375),  -- Remember Alterac Valley!
(@ABG, 8383),  -- Remember Alterac Valley! (repeatable)
(@ABG, 8374),  -- lvl20 Claiming Arathi Basin
(@ABG, 8384),  -- lvl20 Claiming Arathi Basin (repeatable)
(@ABG, 8393),  -- lvl30 Claiming Arathi Basin
(@ABG, 8391),  -- lvl30 Claiming Arathi Basin (repeatable)
(@ABG, 8394),  -- lvl40 Claiming Arathi Basin
(@ABG, 8392),  -- lvl40 Claiming Arathi Basin (repeatable)
(@ABG, 8395),  -- lvl50 Claiming Arathi Basin
(@ABG, 8397),  -- lvl50 Claiming Arathi Basin (repeatable)
(@ABG, 8396),  -- lvl60 Claiming Arathi Basin
(@ABG, 8398),  -- lvl60 Claiming Arathi Basin (repeatable)
(@ABG, 8372),  -- lvl10 Fight for Warsong Gulch
(@ABG, 8386),  -- lvl10 Fight for Warsong Gulch (repeatable)
(@ABG, 8399),  -- lvl20 Fight for Warsong Gulch
(@ABG, 8404),  -- lvl20 Fight for Warsong Gulch (repeatable)
(@ABG, 8400),  -- lvl30 Fight for Warsong Gulch
(@ABG, 8405),  -- lvl30 Fight for Warsong Gulch (repeatable)
(@ABG, 8401),  -- lvl40 Fight for Warsong Gulch
(@ABG, 8406),  -- lvl40 Fight for Warsong Gulch (repeatable)
(@ABG, 8402),  -- lvl50 Fight for Warsong Gulch
(@ABG, 8407),  -- lvl50 Fight for Warsong Gulch (repeatable)
(@ABG, 8403),  -- lvl60 Fight for Warsong Gulch
(@ABG, 8408),  -- lvl60 Fight for Warsong Gulch (repeatable)
--
(@HW_TBC, 8367),   -- For Great Honor
(@HW_TBC, 8388),   -- For Great Honor (repeatable)
(@HW_TBC, 11339),  -- Call to Arms: Arathi Basin (repeatable)
(@HW_TBC, 11340),  -- Call to Arms: Alterac Valley (repeatable)
(@HW_TBC, 11341),  -- Call to Arms: Eye of the Storm (repeatable)
(@HW_TBC, 11342),  -- Call to Arms: Warsong Gulch (repeatable)
--
(@ABG_TBC, 8371),  -- Concerted Efforts
(@ABG_TBC, 8385),  -- Concerted Efforts (repeatable)
(@ABG_TBC, 11335), -- Call to Arms: Arathi Basin (repeatable)
(@ABG_TBC, 11336), -- Call to Arms: Alterac Valley (repeatable)
(@ABG_TBC, 11337), -- Call to Arms: Eye of the Storm (repeatable)
(@ABG_TBC, 11338); -- Call to Arms: Warsong Gulch (repeatable)

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 19 AND `ConditionTypeOrReference` = 27 AND `SourceEntry` IN 
(8368, 8389, 8372, 8386, 8426, 8431, 8399, 8404, 8427, 8432, 8400, 8405, 8428, 8433, 8401, 8406, 8429, 8434, 8402, 8407, 8403, 8408, 8430, 8435, -- WSG
 8370, 8390, 8374, 8384, 8436, 8440, 8393, 8391, 8437, 8441, 8394, 8392, 8438, 8442, 8395, 8397, 8439, 8443, 8396, 8398); -- AB

INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, 
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
-- WSG quests
(19, 0, 8368, 0, 1, 27, 0, 10, 3, 0, 0, 0, 0, '', 'level must be higher or equal to 10'),
(19, 0, 8368, 0, 1, 27, 0, 19, 4, 0, 0, 0, 0, '', 'level must be lower or equal to 19'),
(19, 0, 8389, 0, 1, 27, 0, 10, 3, 0, 0, 0, 0, '', 'level must be higher or equal to 10'),
(19, 0, 8389, 0, 1, 27, 0, 19, 4, 0, 0, 0, 0, '', 'level must be lower or equal to 19'),
(19, 0, 8372, 0, 1, 27, 0, 10, 3, 0, 0, 0, 0, '', 'level must be higher or equal to 10'),
(19, 0, 8372, 0, 1, 27, 0, 19, 4, 0, 0, 0, 0, '', 'level must be lower or equal to 19'),
(19, 0, 8386, 0, 1, 27, 0, 10, 3, 0, 0, 0, 0, '', 'level must be higher or equal to 10'),
(19, 0, 8386, 0, 1, 27, 0, 19, 4, 0, 0, 0, 0, '', 'level must be lower or equal to 19'),
--
(19, 0, 8426, 0, 1, 27, 0, 20, 3, 0, 0, 0, 0, '', 'level must be higher or equal to 20'),
(19, 0, 8426, 0, 1, 27, 0, 29, 4, 0, 0, 0, 0, '', 'level must be lower or equal to 29'),
(19, 0, 8431, 0, 1, 27, 0, 20, 3, 0, 0, 0, 0, '', 'level must be higher or equal to 20'),
(19, 0, 8431, 0, 1, 27, 0, 29, 4, 0, 0, 0, 0, '', 'level must be lower or equal to 29'),
(19, 0, 8399, 0, 1, 27, 0, 20, 3, 0, 0, 0, 0, '', 'level must be higher or equal to 20'),
(19, 0, 8399, 0, 1, 27, 0, 29, 4, 0, 0, 0, 0, '', 'level must be lower or equal to 29'),
(19, 0, 8404, 0, 1, 27, 0, 20, 3, 0, 0, 0, 0, '', 'level must be higher or equal to 20'),
(19, 0, 8404, 0, 1, 27, 0, 29, 4, 0, 0, 0, 0, '', 'level must be lower or equal to 29'),
--
(19, 0, 8427, 0, 1, 27, 0, 30, 3, 0, 0, 0, 0, '', 'level must be higher or equal to 30'),
(19, 0, 8427, 0, 1, 27, 0, 39, 4, 0, 0, 0, 0, '', 'level must be lower or equal to 39'),
(19, 0, 8432, 0, 1, 27, 0, 30, 3, 0, 0, 0, 0, '', 'level must be higher or equal to 30'),
(19, 0, 8432, 0, 1, 27, 0, 39, 4, 0, 0, 0, 0, '', 'level must be lower or equal to 39'),
(19, 0, 8400, 0, 1, 27, 0, 30, 3, 0, 0, 0, 0, '', 'level must be higher or equal to 30'),
(19, 0, 8400, 0, 1, 27, 0, 39, 4, 0, 0, 0, 0, '', 'level must be lower or equal to 39'),
(19, 0, 8405, 0, 1, 27, 0, 30, 3, 0, 0, 0, 0, '', 'level must be higher or equal to 30'),
(19, 0, 8405, 0, 1, 27, 0, 39, 4, 0, 0, 0, 0, '', 'level must be lower or equal to 39'),
--
(19, 0, 8428, 0, 1, 27, 0, 40, 3, 0, 0, 0, 0, '', 'level must be higher or equal to 40'),
(19, 0, 8428, 0, 1, 27, 0, 49, 4, 0, 0, 0, 0, '', 'level must be lower or equal to 49'),
(19, 0, 8433, 0, 1, 27, 0, 40, 3, 0, 0, 0, 0, '', 'level must be higher or equal to 40'),
(19, 0, 8433, 0, 1, 27, 0, 49, 4, 0, 0, 0, 0, '', 'level must be lower or equal to 49'),
(19, 0, 8401, 0, 1, 27, 0, 40, 3, 0, 0, 0, 0, '', 'level must be higher or equal to 40'),
(19, 0, 8401, 0, 1, 27, 0, 49, 4, 0, 0, 0, 0, '', 'level must be lower or equal to 49'),
(19, 0, 8406, 0, 1, 27, 0, 40, 3, 0, 0, 0, 0, '', 'level must be higher or equal to 40'),
(19, 0, 8406, 0, 1, 27, 0, 49, 4, 0, 0, 0, 0, '', 'level must be lower or equal to 49'),
--
(19, 0, 8429, 0, 1, 27, 0, 50, 3, 0, 0, 0, 0, '', 'level must be higher or equal to 50'),
(19, 0, 8429, 0, 1, 27, 0, 59, 4, 0, 0, 0, 0, '', 'level must be lower or equal to 59'),
(19, 0, 8434, 0, 1, 27, 0, 50, 3, 0, 0, 0, 0, '', 'level must be higher or equal to 50'),
(19, 0, 8434, 0, 1, 27, 0, 59, 4, 0, 0, 0, 0, '', 'level must be lower or equal to 59'),
(19, 0, 8402, 0, 1, 27, 0, 50, 3, 0, 0, 0, 0, '', 'level must be higher or equal to 50'),
(19, 0, 8402, 0, 1, 27, 0, 59, 4, 0, 0, 0, 0, '', 'level must be lower or equal to 59'),
(19, 0, 8407, 0, 1, 27, 0, 50, 3, 0, 0, 0, 0, '', 'level must be higher or equal to 50'),
(19, 0, 8407, 0, 1, 27, 0, 59, 4, 0, 0, 0, 0, '', 'level must be lower or equal to 59'),
--
(19, 0, 8403, 0, 0, 27, 0, 60, 0, 0, 0, 0, 0, '', 'level must be equal to 60'),
(19, 0, 8408, 0, 0, 27, 0, 60, 0, 0, 0, 0, 0, '', 'level must be equal to 60'),
(19, 0, 8430, 0, 0, 27, 0, 60, 0, 0, 0, 0, 0, '', 'level must be equal to 60'),
(19, 0, 8435, 0, 0, 27, 0, 60, 0, 0, 0, 0, 0, '', 'level must be equal to 60'),

-- AB quests
(19, 0, 8370, 0, 1, 27, 0, 20, 3, 0, 0, 0, 0, '', 'level must be higher or equal to 20'),
(19, 0, 8370, 0, 1, 27, 0, 29, 4, 0, 0, 0, 0, '', 'level must be lower or equal to 29'),
(19, 0, 8390, 0, 1, 27, 0, 20, 3, 0, 0, 0, 0, '', 'level must be higher or equal to 20'),
(19, 0, 8390, 0, 1, 27, 0, 29, 4, 0, 0, 0, 0, '', 'level must be lower or equal to 29'),
(19, 0, 8374, 0, 1, 27, 0, 20, 3, 0, 0, 0, 0, '', 'level must be higher or equal to 20'),
(19, 0, 8374, 0, 1, 27, 0, 29, 4, 0, 0, 0, 0, '', 'level must be lower or equal to 29'),
(19, 0, 8384, 0, 1, 27, 0, 20, 3, 0, 0, 0, 0, '', 'level must be higher or equal to 20'),
(19, 0, 8384, 0, 1, 27, 0, 29, 4, 0, 0, 0, 0, '', 'level must be lower or equal to 29'),
--
(19, 0, 8436, 0, 1, 27, 0, 30, 3, 0, 0, 0, 0, '', 'level must be higher or equal to 30'),
(19, 0, 8436, 0, 1, 27, 0, 39, 4, 0, 0, 0, 0, '', 'level must be lower or equal to 39'),
(19, 0, 8440, 0, 1, 27, 0, 30, 3, 0, 0, 0, 0, '', 'level must be higher or equal to 30'),
(19, 0, 8440, 0, 1, 27, 0, 39, 4, 0, 0, 0, 0, '', 'level must be lower or equal to 39'),
(19, 0, 8393, 0, 1, 27, 0, 30, 3, 0, 0, 0, 0, '', 'level must be higher or equal to 30'),
(19, 0, 8393, 0, 1, 27, 0, 39, 4, 0, 0, 0, 0, '', 'level must be lower or equal to 39'),
(19, 0, 8391, 0, 1, 27, 0, 30, 3, 0, 0, 0, 0, '', 'level must be higher or equal to 30'),
(19, 0, 8391, 0, 1, 27, 0, 39, 4, 0, 0, 0, 0, '', 'level must be lower or equal to 39'),
--
(19, 0, 8437, 0, 1, 27, 0, 40, 3, 0, 0, 0, 0, '', 'level must be higher or equal to 40'),
(19, 0, 8437, 0, 1, 27, 0, 49, 4, 0, 0, 0, 0, '', 'level must be lower or equal to 49'),
(19, 0, 8441, 0, 1, 27, 0, 40, 3, 0, 0, 0, 0, '', 'level must be higher or equal to 40'),
(19, 0, 8441, 0, 1, 27, 0, 49, 4, 0, 0, 0, 0, '', 'level must be lower or equal to 49'),
(19, 0, 8394, 0, 1, 27, 0, 40, 3, 0, 0, 0, 0, '', 'level must be higher or equal to 40'),
(19, 0, 8394, 0, 1, 27, 0, 49, 4, 0, 0, 0, 0, '', 'level must be lower or equal to 49'),
(19, 0, 8392, 0, 1, 27, 0, 40, 3, 0, 0, 0, 0, '', 'level must be higher or equal to 40'),
(19, 0, 8392, 0, 1, 27, 0, 49, 4, 0, 0, 0, 0, '', 'level must be lower or equal to 49'),
--
(19, 0, 8438, 0, 1, 27, 0, 50, 3, 0, 0, 0, 0, '', 'level must be higher or equal to 50'),
(19, 0, 8438, 0, 1, 27, 0, 59, 4, 0, 0, 0, 0, '', 'level must be lower or equal to 59'),
(19, 0, 8442, 0, 1, 27, 0, 50, 3, 0, 0, 0, 0, '', 'level must be higher or equal to 50'),
(19, 0, 8442, 0, 1, 27, 0, 59, 4, 0, 0, 0, 0, '', 'level must be lower or equal to 59'),
(19, 0, 8395, 0, 1, 27, 0, 50, 3, 0, 0, 0, 0, '', 'level must be higher or equal to 50'),
(19, 0, 8395, 0, 1, 27, 0, 59, 4, 0, 0, 0, 0, '', 'level must be lower or equal to 59'),
(19, 0, 8397, 0, 1, 27, 0, 50, 3, 0, 0, 0, 0, '', 'level must be higher or equal to 50'),
(19, 0, 8397, 0, 1, 27, 0, 59, 4, 0, 0, 0, 0, '', 'level must be lower or equal to 59'),
--
(19, 0, 8439, 0, 0, 27, 0, 60, 0, 0, 0, 0, 0, '', 'level must be equal to 60'),
(19, 0, 8443, 0, 0, 27, 0, 60, 0, 0, 0, 0, 0, '', 'level must be equal to 60'),
(19, 0, 8396, 0, 0, 27, 0, 60, 0, 0, 0, 0, 0, '', 'level must be equal to 60'),
(19, 0, 8398, 0, 0, 27, 0, 60, 0, 0, 0, 0, 0, '', 'level must be equal to 60');

UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk'   WHERE `guid` IN (6505, 16472, 26901, 32075, 119054, 202720); -- Horde Warbringer
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk'   WHERE `guid` IN (14740, 40534, 49852, 86263, 88247, 202732); -- Alliance Brigadier General
UPDATE `creature` SET `ScriptName` = 'npc_ipp_pre_tbc' WHERE `guid` BETWEEN @CGUID+201 AND @CGUID+216;
UPDATE `creature` SET `ScriptName` = 'npc_ipp_tbc_pvp' WHERE `guid` BETWEEN @CGUID+221 AND @CGUID+230; -- only visible during tbc

UPDATE `quest_template` SET `QuestType` = 0 WHERE `ID` IN (8385, 8388, 13475, 13477); -- repeatable quests, enabled and auto complete
UPDATE `quest_template` SET `QuestType` = 2 WHERE `ID` IN 
(8367, 8368, 8369, 8370, 8371, 8372, 8374, 8375, 8393, 8394, 8395, 8396, 8399, 8400, 8401, 8402, 8403, 8426, 8427, 8428, 8429, 8430, 8436, 8437, 8438, 8439, 13476, 13478); -- enable quests

UPDATE `quest_template` SET `MinLevel` = 61 WHERE `ID` IN (11335, 11336, 11337, 11338, 11339, 11340, 11341, 11342);

-- For Great Honor / Concerted Efforts, Vanilla
UPDATE `quest_template` SET `RewardMoney` = 49900, `RewardHonor` = 2388 WHERE `ID` IN (13476, 13478); -- first time completion
UPDATE `quest_template` SET `RewardMoney` = 0, `RewardHonor` = 2388 WHERE `ID` IN (13475, 13477); -- repeatable
UPDATE `quest_template` SET `RewardFactionID1` = 729, `RewardFactionID2` = 510, `RewardFactionID3` = 889 WHERE `ID` IN (13475, 13476); -- For Great Honor
UPDATE `quest_template` SET `RewardFactionID1` = 730, `RewardFactionID2` = 509, `RewardFactionID3` = 890 WHERE `ID` IN (13477, 13478); -- Concerted Efforts
UPDATE `quest_template` SET `RewardFactionOverride1` = 20000, `RewardFactionOverride2` = 15000, `RewardFactionOverride3` = 15000 WHERE `ID` IN (13476, 13478); -- first time completion
UPDATE `quest_template` SET `RewardFactionOverride1` = 15000, `RewardFactionOverride2` = 10000, `RewardFactionOverride3` = 10000 WHERE `ID` IN (13475, 13477); -- repeatable

-- For Great Honor / Concerted Efforts,TBC
UPDATE `quest_template` SET `RewardMoney` = 119900, `RewardHonor` = 629 WHERE `ID` IN (8367, 8371); -- first time completion
UPDATE `quest_template` SET `RewardMoney` = 0, `RewardHonor` = 629 WHERE `ID` IN (8385, 8388); -- repeatable

UPDATE `quest_template` SET `RewardArenaPoints` = 0, `RewardKillHonor` = 0  WHERE `ID` IN 
(8367, 8388, 11339, 11340, 11341, 11342,  -- horde
 8371, 8385, 11335, 11336, 11337, 11338); -- alliance
 
UPDATE `quest_template` SET `RewardXPDifficulty` = 3, `RewardMoney` = 74000  WHERE `ID` IN 
(8367, 11339, 11340, 11341, 11342,  -- horde
 8371, 11335, 11336, 11337, 11338); -- alliance

UPDATE `quest_template` SET `RewardItem1` = 20559, `RewardAmount1` = 3 WHERE `ID` IN (11335, 11339); -- Call to Arms: Arathi Basin (repeatable)
UPDATE `quest_template` SET `RewardItem1` = 20560, `RewardAmount1` = 3 WHERE `ID` IN (11336, 11340); -- Call to Arms: Alterac Valley (repeatable)
UPDATE `quest_template` SET `RewardItem1` = 29024, `RewardAmount1` = 3 WHERE `ID` IN (11337, 11341); -- Call to Arms: Eye of the Storm (repeatable)
UPDATE `quest_template` SET `RewardItem1` = 20558, `RewardAmount1` = 3 WHERE `ID` IN (11338, 11342); -- Call to Arms: Warsong Gulch (repeatable)

UPDATE `quest_template_addon` SET `PrevQuestID` = 13476, `SpecialFlags` = 1 WHERE `ID` = 13475;
UPDATE `quest_template_addon` SET `PrevQuestID` = 13478, `SpecialFlags` = 1 WHERE `ID` = 13477;

UPDATE `quest_template_addon` SET `SpecialFlags` = 0 WHERE `ID` IN (8369, 8375); -- set AV quests to not repeatable

UPDATE quest_template_addon SET `ExclusiveGroup` = 0 WHERE `id` IN 
(8368, 8370, 8372, 8374, 8384, 8386, 8389, 8390, 8391, 8392, 8393, 8394, 8395, 8396, 8397, 8398, 8399, 8400, 8401, 8402, 8403, 8404, 
8405, 8406, 8407, 8408, 8426, 8427, 8428, 8429, 8430, 8431, 8432, 8433, 8434, 8435, 8436, 8437, 8438, 8439, 8440, 8441, 8442, 8443);

DELETE FROM `disables` WHERE `sourceType` = 1 AND `entry` IN 
(8367, 8371, 8384, 8385, 8386, 8388, 8389, 8390, 8391, 8392, 8397, 8398, 
8404, 8405, 8406, 8407, 8408, 8431, 8432, 8433, 8434, 8435, 8440, 8441, 8442, 8443, 
11335, 11336, 11337, 11338, 11339, 11340, 11341, 11342, 13475, 13476, 13477, 13478);

-- connect Call to Arms quests to events (doesn't work yet)
DELETE FROM `game_event_creature_quest` WHERE `eventEntry` IN (18, 19, 20, 21) AND `quest` IN (11335, 11337, 11338, 11340);
INSERT INTO `game_event_creature_quest` (`eventEntry`, `id`, `quest`) VALUES 
--
(18, @HW_TBC,  11340), -- Call to Arms: Alterac Valley
(18, @ABG_TBC, 11340),
(19, @HW_TBC,  11338), -- Call to Arms: Warsong Gulch
(19, @ABG_TBC, 11338),
(20, @HW_TBC,  11335), -- Call to Arms: Arathi Basin
(20, @ABG_TBC, 11335),
(21, @HW_TBC,  11337), -- Call to Arms: Eye of the Storm
(21, @ABG_TBC, 11337);

DELETE FROM `game_event_seasonal_questrelation` WHERE `questId` IN (11335, 11337, 11338, 11340);
INSERT INTO `game_event_seasonal_questrelation` (`questId`, `eventEntry`) VALUES 
(11340, 18),
(11338, 19),
(11335, 20),
(11337, 21);

-- change unused WotLK version of 'For Great Honor' and 'Concerted Efforts' into missing vanilla version
UPDATE `quest_template` SET `MinLevel` = 51, `RewardKillHonor` = 0,
`RequiredItemId1` = 20558, `RequiredItemId2` = 20559, `RequiredItemId3` = 20560, `RequiredItemId4` = 0, `RequiredItemId5` = 0, `RequiredItemId6` = 0,
`RequiredItemCount1` = 3, `RequiredItemCount2` = 3, `RequiredItemCount3` = 3, `RequiredItemCount4` = 0, `RequiredItemCount5` = 0, `RequiredItemCount6` = 0 WHERE `ID` IN (13475, 13476, 13477, 13478);

UPDATE `quest_template` SET 
`LogDescription` = 'Bring 3 Alterac Valley Marks of Honor, 3 Arathi Basin Marks of Honor and 3 Warsong Gulch Marks of Honor to a Horde Warbringer outside the battlegrounds.' WHERE `ID` = 13476;
UPDATE `quest_template` SET 
`LogDescription` = 'Bring 3 Alterac Valley Mark of Honor, 3 Arathi Basin Mark of Honor and 3 Warsong Gulch Mark of Honor to an Alliance Brigadier General outside the battlegrounds.' WHERE `ID` = 13478;

