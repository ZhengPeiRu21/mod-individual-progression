-- Portal Seeker missing smart AI
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 5981;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 5981;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(5981, 0, 0, 0, 9, 0, 100, 0, 1000, 3200, 2800, 5200, 0, 10, 11, 15453, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Portal Seeker - In combat - Cast Arcane Explosion'),
(5981, 0, 1, 0, 0, 0, 100, 0, 0, 1000, 3000, 4000, 0, 0, 11, 16799, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Portal Seeker - In Combat - Cast Frostbolt');

DELETE FROM `creature` WHERE `guid` = 605981;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, 
`spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
(605981, 5981, 0, 0, 0, 0, 0, 1, 1, 1, -11384.5, -2998.08, -0.819786, 2.77125, 300, 0, 0, 2158, 4650, 0, 0, 0, 0, '', NULL, 0, NULL);

DELETE FROM `creature_addon` WHERE `guid` = 605981;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(605981, 6059810, 0, 0, 0, 0, 0, NULL);

DELETE FROM `waypoint_data` WHERE `id` = 6059810;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
(6059810, 1, -11402.6, -3007.39, -0.613421, NULL, 0, 0, 0, 100, 0),
(6059810, 2, -11423.2, -3008.4, 0.109287, NULL, 0, 0, 0, 100, 0),
(6059810, 3, -11441, -3031.01, 1.21686, NULL, 0, 0, 0, 100, 0),
(6059810, 4, -11464.3, -3045.05, 1.58634, NULL, 0, 0, 0, 100, 0),
(6059810, 5, -11480.2, -3061.53, 1.67491, NULL, 0, 0, 0, 100, 0),
(6059810, 6, -11517.2, -3062.27, 5.698, NULL, 0, 0, 0, 100, 0),
(6059810, 7, -11543.4, -3091.92, 5.84869, NULL, 0, 0, 0, 100, 0),
(6059810, 8, -11525, -3068.2, 5.85182, NULL, 0, 0, 0, 100, 0),
(6059810, 9, -11525.9, -3042.13, 9.53078, NULL, 0, 0, 0, 100, 0),
(6059810, 10, -11495.1, -3009.47, 9.17478, NULL, 0, 0, 0, 100, 0),
(6059810, 11, -11459.9, -2992.87, 5.75174, NULL, 0, 0, 0, 100, 0),
(6059810, 12, -11381, -2968.34, 1.25875, NULL, 0, 0, 0, 100, 0),
(6059810, 13, -11377.6, -2913.32, 5.13904, NULL, 0, 0, 0, 100, 0),
(6059810, 14, -11365.2, -2898.58, 7.25734, NULL, 0, 0, 0, 100, 0),
(6059810, 15, -11351, -2824.34, 6.86123, NULL, 0, 0, 0, 100, 0),
(6059810, 16, -11304.7, -2735.44, 9.44181, NULL, 0, 0, 0, 100, 0),
(6059810, 17, -11340.3, -2740.17, 7.91158, NULL, 0, 0, 0, 100, 0),
(6059810, 18, -11349.2, -2860.18, 8.04957, NULL, 0, 0, 0, 100, 0),
(6059810, 19, -11379, -2919.14, 4.70308, NULL, 0, 0, 0, 100, 0),
(6059810, 20, -11384.1, -2998.4, -0.741999, NULL, 0, 0, 0, 100, 0);
