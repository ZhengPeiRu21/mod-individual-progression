-- Custom GUIDs
-- creature 352042
-- creature_template 351097
-- Add MapDifficulty DBC Override
-- https://wow.tools/dbc/?dbc=mapdifficulty&build=10.0.0.44895#page=1&search=533
DELETE FROM `mapdifficulty_dbc` WHERE `ID` = 754;
INSERT INTO `mapdifficulty_dbc` (`ID`, `MapID`, `Difficulty`, `Message_Lang_enUS`, `Message_Lang_Mask`, `RaidDuration`, `MaxPlayers`, `Difficultystring`) VALUES
(754, 533, 2, 'You must be level 60 and in a raid group to enter.', 16712190, 604800, 40, 'RAID_DIFFICULTY_40PLAYER');

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

-- Update spawnMask of all creatures to 10man + 25man
UPDATE `creature` SET `spawnMask` = 3 WHERE `spawnMask` = 7 AND `map` = 533;
-- Update spawnMask of all gameobjects to all
UPDATE `gameobject` SET `spawnMask` = 7 WHERE `spawnMask` = 3 AND `map` = 533;

-- Lich King uses same entry in Naxx WotLK and Naxx40 - Allow spawning in all versions
UPDATE `creature` SET `spawnMask` = `spawnMask` | 4 WHERE `id1` = 16980;

-- Naxxramas Trigger (frogger) should also spawn in Naxx40
UPDATE `creature` SET `spawnMask` = `spawnMask`| 4 WHERE `id1` = 16082;

DELETE FROM `dungeon_access_template` WHERE `id`=122;
INSERT INTO `dungeon_access_template` (`id`, `map_id`, `difficulty`, `min_level`, `max_level`, `min_avg_item_level`, `comment`) VALUES (122, 533, 2, 60, 0, 0, 'Naxxramas - 40man');

-- Naxx40 Strath Entrance
DELETE FROM `creature_template` WHERE `entry` = 351097;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(351097, 0, 0, 0, 0, 0, 'Naxx40 Strath Entrance Trigger', '', NULL, 0, 70, 70, 1, 35, 0, 1, 1.14286, 1, 1, 20, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 33554432, 2048, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 'npc_naxx40_area_trigger', 0);
DELETE FROM `creature` WHERE `guid` = 352042;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(352042, 351097, 0, 0, 329, 0, 0, 1, 1, 0, 3929.06, -3372.12, 119.653, 4.71395, 300, 0, 0, 6986, 0, 0, 0, 0, 0, '', 0);
