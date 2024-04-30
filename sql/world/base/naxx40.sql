-- Add MapDifficulty DBC Override
-- https://wow.tools/dbc/?dbc=mapdifficulty&build=10.0.0.44895#page=1&search=533
DELETE FROM `mapdifficulty_dbc` WHERE `ID` = 754;
INSERT INTO `mapdifficulty_dbc` (`ID`, `MapID`, `Difficulty`, `Message_Lang_enUS`, `Message_Lang_Mask`, `RaidDuration`, `MaxPlayers`, `Difficultystring`)
VALUES (754, 533, 2, 'You must be level 60 and in a raid group to enter.', 16712190, 604800, 40, 'RAID_DIFFICULTY_40PLAYER');

-- Remove exit teleport and replace with script
DELETE FROM `areatrigger_teleport` WHERE `ID` IN (5196, 5197, 5198, 5199, 4156);

DELETE FROM `areatrigger_scripts` WHERE `entry` IN (5196, 5197, 5198, 5199);
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES
(5196, 'naxx_exit_trigger'),
(5197, 'naxx_exit_trigger'),
(5198, 'naxx_exit_trigger'),
(5199, 'naxx_exit_trigger');

DELETE FROM `areatrigger_scripts` WHERE `entry` IN (5191, 5192, 5193, 5194);
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES
(5191, 'naxx_northrend_entrance'),
(5192, 'naxx_northrend_entrance'),
(5193, 'naxx_northrend_entrance'),
(5194, 'naxx_northrend_entrance');

UPDATE `creature` SET `spawnMask` = 3 WHERE `spawnMask` = 7 AND `map` = 533;
UPDATE `gameobject` SET `spawnMask` = 7 WHERE `spawnMask` = 3 AND `map` = 533;

-- Lich King uses same entry in Naxx WotLK and Naxx 40 - Allow spawning in all versions
UPDATE `creature` SET `spawnMask` = 7 WHERE `id1` = 16980;

UPDATE `gameobject` SET `spawnMask` = 3 WHERE `id` IN (202278, 202277);  # Orb of Naxxramas does not exist in classic

DELETE FROM `dungeon_access_template` WHERE `id`=122;
INSERT INTO `dungeon_access_template` (`id`, `map_id`, `difficulty`, `min_level`, `max_level`, `min_avg_item_level`, `comment`) VALUES (122, 533, 2, 60, 0, 0, 'Naxxramas - 40man');

DELETE FROM `creature_template` WHERE `entry` = 351097;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(351097, 0, 0, 0, 0, 0, 17035, 11686, 0, 0, 'Naxx40 Strath Entrance Trigger', '', NULL, 0, 70, 70, 1, 35, 0, 1, 1.14286, 1, 1, 20, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 33554432, 2048, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 'npc_naxx40_area_trigger', 0);

DELETE FROM `creature` WHERE `guid` = 352042;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(352042, 351097, 0, 0, 329, 0, 0, 1, 1, 0, 3929.06, -3372.12, 119.653, 4.71395, 300, 0, 0, 6986, 0, 0, 0, 0, 0, '', 0);

-- Four horseman chest
DELETE FROM `gameobject_template` WHERE `entry`=361000;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
(361000, 3, 1387, 'Four Horsemen Chest', '', '', '', 1, 1634, 361000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1);

REPLACE INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `GroupId`, `MinCount`, `MaxCount`) VALUES
(314800, 22349, 0, 0.0, 0, 1, 1, 1),
(314800, 22350, 0, 0.0, 0, 1, 1, 1),
(314800, 22351, 0, 0.0, 0, 1, 1, 1);
REPLACE INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `GroupId`, `MinCount`, `MaxCount`) VALUES
(361000, 314800, 314800, 100, 0, 0, 2, 2),
(361000, 22691, 0, 0, 0, 2, 1, 1),
(361000, 22726, 0, 30, 0, 0, 1, 1),
(361000, 22809, 0, 0, 0, 2, 1, 1),
(361000, 22811, 0, 0, 0, 2, 1, 1),
(361000, 23025, 0, 0, 0, 2, 1, 1),
(361000, 23027, 0, 0, 0, 2, 1, 1),
(361000, 23071, 0, 0, 0, 2, 1, 1);

-- Add Entrance transporter object. Necromantic Runestone (id: 189314, displayID: 7786)
SET @TRANSPORTER_ENTRY:= 9000;
SET @TRANSPORTER_COOLDOWN:= 5;
SET @TRANSPORTER_X:= 3123.26;
SET @TRANSPORTER_Y:= -3869.36;
SET @TRANSPORTER_Z:= 138.34;
SET @TRANSPORTER_O:= 0.2175;
DELETE FROM `gameobject_template` WHERE (`entry` = @TRANSPORTER_ENTRY);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`,
                                   `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`,
                                   `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`,
                                   `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`,
                                   `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`,
                                   `VerifiedBuild`)
VALUES
(@TRANSPORTER_ENTRY, 10, 7786, 'Teleport To Naxxramas', '', '', '', 1, 0, 0, 0,
 0, @TRANSPORTER_COOLDOWN, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 0, 0, '', 'gobject_naxx40_tele', 12340);
DELETE FROM `gameobject` WHERE `id`=@TRANSPORTER_ENTRY AND `map`=0 AND `zoneId`=0 AND `areaID`=0;
INSERT INTO `gameobject`
(`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`,
 `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`,
 `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`,
 `ScriptName`, `VerifiedBuild`)
VALUES
(@TRANSPORTER_ENTRY, 0, 0, 0, 1, 1, @TRANSPORTER_X, @TRANSPORTER_Y,
 @TRANSPORTER_Z, @TRANSPORTER_O, 0, 0,
 -0.063658, -1, 1, 0, 1, '', 0);

-- Add Floating Naxx Object (id: 181056)
-- Node 0 of PathID 436 in taxiPathNode
-- https://wow.tools/dbc/?dbc=taxipathnode&build=3.3.5.12340#page=1&colFilter%5B1%5D=436
DELETE FROM `gameobject` WHERE `id`=181056;
INSERT INTO `gameobject`
(`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`,
 `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`,
 `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`,
 `ScriptName`, `VerifiedBuild`) VALUES
(181056, 0, 0, 0, 1, 1, 3067.1255, -3533.4387, -331.89944, 0.0, 0.0,
 0.0, 0, 0, 900, 100, 1, '', 0);
DELETE FROM `transports` WHERE `guid`=21 AND `entry`=181056;
INSERT INTO `transports` (`guid`, `entry`, `name`, `ScriptName`) VALUES
(21, 181056, 'Naxxramas floating in Plaguewood - Eastern Plaguelands', '');
-- https://wow.tools/dbc/?dbc=taxipathnode&build=3.3.5.12340#page=1&colFilter[1]=436
-- Set speed (Data1) and map (Data6)
UPDATE `gameobject_template` SET `Data1`=1,`Data6`=0 WHERE entry=181056;

-- Naxxramas Trigger (frogger) should also spawn in Naxx40
UPDATE `creature` SET `spawnMask` = (`spawnMask` | 4) WHERE (`id1` = 16082);
