-- Portal Seeker missing smart AI
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 5981;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 5981;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(5981, 0, 0, 0, 9, 0, 100, 0, 1000, 3200, 2800, 5200, 0, 10, 11, 15453, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Portal Seeker - In combat - Cast Arcane Explosion'),
(5981, 0, 1, 0, 0, 0, 100, 0, 0, 1000, 3000, 4000, 0, 0, 11, 16799, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Portal Seeker - In Combat - Cast Frostbolt');

DELETE FROM `creature` WHERE `guid` = 605981;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, 
`spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
(605981, 5981, 0, 0, 0, 0, 0, 1, 1, 1, -11384.5, -2998.08, -0.819786, 2.103, 430, 0, 0, 2158, 4650, 0, 0, 0, 0, '', NULL, 0, NULL);

DELETE FROM `creature_addon` WHERE `guid` = 605981;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(605981, 6059810, 0, 0, 0, 0, 0, NULL);

DELETE FROM `waypoint_data` WHERE `id` = 6059810;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
(6059810, 1, -11351.9, -2754.5, 7.95043, NULL, 0, 0, 0, 100, 0),
(6059810, 2, -11358.7, -2797.01, 5.45784, NULL, 0, 0, 0, 100, 0),
(6059810, 3, -11370.9, -2855.73, 4.67282,NULL, 0, 0, 0, 100, 0),
(6059810, 4, -11396.7, -2926.03, 3.05246, NULL, 0, 0, 0, 100, 0),
(6059810, 5, -11330.8, -2986.01, 3.24732, NULL, 0, 0, 0, 100, 0),    
(6059810, 6, -11380.8, -3013.05, -4.29948, NULL, 0, 0, 0, 100, 0),
(6059810, 7, -11444, -3037.98, 1.11936, NULL, 0, 0, 0, 100, 0),
(6059810, 8, -11500.1, -3041.02, -0.783425, NULL, 0, 0, 0, 100, 0),   
(6059810, 9, -11444.1, -3037.88, 1.11443, NULL, 0, 0, 0, 100, 0),
(6059810, 10, -11380.8, -3012.74, -4.27558, NULL, 0, 0, 0, 100, 0),
(6059810, 11, -11331, -2986.1, 3.21401, NULL, 0, 0, 0, 100, 0),
(6059810, 12, -11396.9, -2926.05, 3.04129, NULL, 0, 0, 0, 100, 0),
(6059810, 13, -11370.7, -2855.8, 4.71995, NULL, 0, 0, 0, 100, 0),
(6059810, 14, -11358.6, -2796.98, 5.47431, NULL, 0, 0, 0, 100, 0);

-- Quest: Into the Breach
UPDATE `creature` SET `phaseMask` = @IPPPHASE_II WHERE `id1` IN (19284, 19285, 19286, 19287, 19311, 19322, 19391);
UPDATE `creature_template` SET `ScriptName` = 'npc_ipp_tbc' WHERE `entry` = 19942;
