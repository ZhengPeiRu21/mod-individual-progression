SET @CGUID := 659000;

SET @HW    := 115350; -- Horde Warbringer
SET @ABG   := 115351; -- Alliance Brigadier General

DELETE FROM `creature_template` WHERE `entry` IN (@HW, @ABG);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, 
`minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, 
`BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, 
`type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, 
`ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
--
(@HW,0,0,0,0,0,'Horde Warbringer',NULL,NULL,6598,60,60,2,1074,3,1,1.14286,1,1,18,1,1,0,1,2000,2000,1,1,1,832,2048,0,0,0,0,0,0,7,134217728,0,0,0,0,0,0,0,'',0,1,1,1,1,1,0,0,1,0,0,2,'',0),
(@ABG,0,0,0,0,0,'Alliance Brigadier General',NULL,NULL,6597,60,60,2,534,3,1,1.14286,1,1,18,1,0,0,2.4,2000,2000,1,1,1,320,2048,0,0,0,0,0,0,7,134217728,0,0,0,0,0,0,0,'',0,1,10,1,1.4,1,0,0,1,0,0,2,'',0);

DELETE FROM `creature_template_locale` WHERE `entry` IN (@HW, @ABG);
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
(@ABG, 'deDE', 'Brigadegeneral der Allianz', '', 18019),
(@ABG, 'esES', 'General de brigada de la Alianza', '', 18019),
(@ABG, 'esMX', 'General de brigada de la Alianza', '', 18019),
(@ABG, 'frFR', 'Général de brigade de l\'Alliance', '', 18019),
(@ABG, 'koKR', '얼라이언스 준장', '', 18019),
(@ABG, 'ruRU', 'Бригадный генерал Альянса', '', 18019),
(@ABG, 'zhCN', '联盟准将', '', 18019),
(@ABG, 'zhTW', '聯盟准將', '', 18019);

DELETE FROM `creature_template_addon` WHERE `entry` IN (@HW, @ABG);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES
(@HW, 0, 0, 0, 1, 0, 0, '');

DELETE FROM `creature_equip_template` WHERE `CreatureID` IN (@HW, @ABG);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES 
(@HW, 1, 13706, 0, 0, 18019);

DELETE FROM `creature_template_model` WHERE `CreatureID` IN (@HW, @ABG);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES 
(@HW, 0, 15387, 1, 1, 12340),
(@ABG, 0, 27154, 1, 1, 12340);

DELETE FROM `creature` WHERE `id1` IN (@HW, @ABG);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, 
`wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
--
(@CGUID+201, @HW, 0, 0, 1, 0, 0, 1, 1, 1, -1381.13, -87.0034, 159.532, 3.14159, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+202, @HW, 0, 0, 1, 0, 0, 1, 1, 1, 1988.5, -4812.28, 56.8494, 1.5708, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+203, @HW, 0, 0, 0, 0, 0, 1, 1, 1, 1251.41, 313.892, -63.6062, 0.139626, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+204, @HW, 0, 0, 0, 0, 0, 1, 1, 1, -832.362, -3512.62, 72.3318, 4.55531, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+205, @HW, 0, 0, 0, 0, 0, 1, 1, 1, 382.498, -983.076, 109.979, 2.82743, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+206, @HW, 0, 0, 1, 0, 0, 1, 1, 1, 1026.33, -2110.51, 123.1, 5.49779, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
--
(@CGUID+211, @ABG, 0, 0, 0, 0, 0, 1, 1, 0, -5049.99, -1270.26, 510.408, 0.0349066, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+212, @ABG, 0, 0, 1, 0, 0, 1, 1, 0, 9994.73, 2324.28, 1330.87, 3.24631, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+213, @ABG, 0, 0, 0, 0, 0, 1, 1, 0, -8441.76, 311.67, 120.969, 1.53589, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+214, @ABG, 0, 0, 0, 0, 0, 1, 1, 0, -1231.22, -2510.21, 23.1758, 4.36332, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+215, @ABG, 0, 0, 0, 0, 0, 1, 1, 0, -36.7805, -316.826, 130.69, 4.7822, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+216, @ABG, 0, 0, 1, 0, 0, 1, 1, 0, 1450.77, -1872.06, 126.998, 0.436332, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL);

DELETE FROM `creature_queststarter` WHERE `id` IN (@HW, @ABG);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES 
--
(@HW, 8367),
(@HW, 8369),
(@HW, 8430),
(@HW, 8439),
--
(@ABG, 8371), 
(@ABG, 8375), 
(@ABG, 8396), 
(@ABG, 8403);

DELETE FROM `creature_questender` WHERE `id` IN (@HW, @ABG);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES 
--
(@HW, 8367),
(@HW, 8369),
(@HW, 8430),
(@HW, 8439),
--
(@ABG, 8371), 
(@ABG, 8375), 
(@ABG, 8396), 
(@ABG, 8403);

UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk'     WHERE `guid` IN (6505, 16472, 26901, 32075, 119054, 202720);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk'     WHERE `guid` IN (14740, 40534, 49852, 86263, 88247, 202732);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_pre_wotlk' WHERE `guid` BETWEEN @CGUID+201 AND @CGUID+216;

UPDATE `quest_template` SET `QuestType` = 1 WHERE `ID` = 8369;
UPDATE `quest_template_addon` SET `SpecialFlags` = 1 WHERE `ID` IN (8371, 8375, 8396, 8403, 8367, 8369, 8430, 8439); -- make quests repeatable
