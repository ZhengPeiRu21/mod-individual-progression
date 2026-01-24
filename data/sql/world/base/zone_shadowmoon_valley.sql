-- flight masters at Sanctum of the Stars and Altar of Sha'tar only visible if at least friendly with Scryers/Aldor
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 30 AND `ConditionTypeOrReference` = 5 AND `SourceEntry` IN (19581, 21766);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, 
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
--
(30, 0, 19581, 0, 0, 5, 0, 932, 240, 0, 0, 0, 0, '', 'Only able to activate flight path if friendly with Aldor'),
(30, 0, 21766, 0, 0, 5, 0, 934, 240, 0, 0, 0, 0, '', 'Only able to activate flight path if friendly with Scryers');

-- fix movement for Parsha
UPDATE `creature` SET `MovementType` = 2, `currentwaypoint` = 1, `position_x` = -3493.5701, `position_y` = 2277.0901, `position_z` = 65.3081 WHERE `id1` = 22024;

DELETE FROM `creature_addon` WHERE `guid` IN (83112);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(83112, 831120, 0, 0, 0, 0, 0, '');

DELETE FROM `waypoint_data` WHERE `id` IN (831120);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
--
(831120, 1,  -3478.58, 2278.88, 64.3024, 0.466765, 0, 0, 0, 100, 0),
(831120, 2,  -3465.33, 2287.22, 63.4117, 0.258635, 0, 0, 0, 100, 0),
(831120, 3,  -3396.56, 2289.24, 62.6846, 5.86481, 0, 0, 0, 100, 0),
(831120, 4,  -3375.29, 2283.54, 62.2904, 5.94728, 0, 0, 0, 100, 0),
(831120, 5,  -3361.75, 2279.95, 61.9273, 6.18918, 0, 0, 0, 100, 0),
(831120, 6,  -3346.63, 2278.56, 61.3279, 6.26065, 0, 0, 0, 100, 0),
(831120, 7,  -3292.68, 2278.75, 60.6095, 3.15071, 0, 0, 0, 100, 0),
(831120, 8,  -3365.18, 2279.23, 62.0737, 2.84283, 0, 0, 0, 100, 0),
(831120, 9,  -3387.64, 2287.59, 62.3845, 2.89703, 0, 0, 0, 100, 0),
(831120, 10, -3399.74, 2289.47, 62.7643, 3.19548, 0, 0, 0, 100, 0),
(831120, 11, -3457.02, 2289.38, 63.4614, 3.32978, 0, 0, 0, 100, 0),
(831120, 12, -3465.55, 2286.99, 63.416, 3.6997, 0, 0, 0, 100, 0),
(831120, 13, -3476.52, 2280.52, 64.1385, 3.41225, 0, 0, 0, 100, 0),
(831120, 14, -3494.46, 2277.87, 65.362, 0.162269, 0, 0, 0, 100, 0);

-- Deathforged Infernal, shorten respawn to solve range issue of remote control (was 120 secs)
UPDATE `gameobject` SET `spawntimesecs` = 30 WHERE `id` = 184979;

-- fix Neltharaku, flying too fast
UPDATE `waypoint_data` SET `move_type` = 0 WHERE `id` = 756540; -- walk instead of run
