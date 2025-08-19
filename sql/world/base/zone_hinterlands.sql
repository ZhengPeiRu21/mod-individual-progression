/* smart scripts */
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (2925, 2929);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(2639, 2653, 2658, 2659, 2686, 2707, 2926, 2928, 4466, 4467, 8215, 8218);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(2639, 2653, 2658, 2659, 2686, 2707, 2925, 2926, 2928, 2929, 4466, 4467, 8215, 8218);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(2639, 0, 0, 0, 110, 0, 100, 1, 0, 0, 0, 0, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Vilebranch Axe Thrower - Outside 30 Range - Start Combat Movement'),
(2639, 0, 1, 0, 110, 0, 100, 1, 0, 0, 0, 0, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Vilebranch Axe Thrower - Within 5-30 Range - Stop Combat Movement'),
(2639, 0, 2, 0, 110, 0, 100, 1, 0, 0, 0, 0, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Vilebranch Axe Thrower - Within 0-5 Range - Start Combat Movement'),
(2639, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 10277, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Vilebranch Axe Thrower - Within 5-30 Range - Cast Throw'),
(2639, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Vilebranch Axe Thrower - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2653, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7165, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Witherbark Sadist - On Reset - Cast Battle Stance'),
(2653, 0, 1, 0, 9, 0, 100, 0, 0, 0, 6000, 9000, 0, 5, 11, 25710, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Witherbark Sadist - Within 0-5 Range - Cast Heroic Strike'),
(2653, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Witherbark Sadist - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2658, 0, 0, 0, 9, 0, 100, 0, 0, 0, 15000, 19000, 0, 5, 11, 3147, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Razorbeak Gryphon - Within 0-5 Range - Cast Rend Flesh'),
(2659, 0, 0, 0, 9, 0, 100, 0, 0, 0, 15000, 19000, 0, 5, 11, 3147, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Razorbeak Skylord - Within 0-5 Range - Cast Rend Flesh'),
(2659, 0, 1, 0, 0, 0, 100, 0, 8000, 12000, 12000, 16000, 0, 0, 11, 11019, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Razorbeak Skylord - In Combat - Cast Wing Flap'),
(2686, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 11018, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Witherbark Broodguard - On Death - Summon Witherbark Bloodlings'),
(2707, 0, 0, 0, 0, 0, 100, 0, 0, 0, 15000, 25000, 0, 0, 11, 7992, 96, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 0,       'Shadra - Within 0-30 Range - Cast Slowing Poison'),
(2707, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 13299, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Shadra - On Reset - Cast Poison Proc'),
(2926, 0, 0, 0, 9, 0, 100, 0, 0, 0, 12000, 21000, 0, 5, 11, 7367, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Silvermane Stalker - Within 0-5 Range - Cast Infected Bite'),
(2926, 0, 1, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 22766, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Silvermane Stalker - Out of Combat - Cast Sneak'),
(2928, 0, 0, 0, 9, 0, 100, 0, 0, 0, 13000, 16000, 0, 5, 11, 3252, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Primitive Owlbeast - Within 0-5 Range - Cast Shred'),
(4466, 0, 0, 0, 12, 0, 100, 0, 0, 20, 18000, 26000, 0, 0, 11, 7160, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Vilebranch Scalper - Target Between 0-20% Health - Cast Execute'),
(4466, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Vilebranch Scalper - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4467, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20824, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Vilebranch Soothsayer - In Combat - Cast Lightning Bolt'),
(4467, 0, 1, 0, 2, 0, 100, 0, 0, 40, 13000, 16000, 0, 0, 11, 10395, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,        'Vilebranch Soothsayer - Between 0-40% Health - Cast Healing Wave'),
(4467, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Vilebranch Soothsayer - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(8215, 0, 0, 0, 0, 0, 100, 0, 6000, 9000, 9000, 14000, 0, 0, 11, 5568, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Grimungous - In Combat - Cast Trample'),
(8215, 0, 1, 0, 9, 0, 100, 0, 0, 0, 14000, 20000, 0, 5, 11, 11876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Grimungous - Within 0-5 Range - Cast War Stomp'),
(8218, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 22766, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Witherheart the Stalker - On Reset - Cast Sneak'),
(8218, 0, 1, 0, 67, 0, 100, 0, 0, 0, 5000, 9000, 0, 5, 11, 7159, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Witherheart the Stalker - On Behind Target - Cast Backstab');


-- Ironback, fix spawn time and movement
UPDATE `creature` SET `spawntimesecs` = 37800, `MovementType` = 1, `wander_distance` = 5 WHERE `guid` = 69119;

-- Grimungous, fix spawn and waypoints
DELETE FROM `creature` WHERE `guid` = 77480;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, 
`wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
(77480, 8215, 0, 0, 0, 0, 0, 1, 1, 0, 45.1769, -4277.32, 122.17, 4.22167, 115200, 0, 1, 6645, 0, 2, 0, 0, 0, '', 0, 0, NULL);

DELETE FROM `creature_addon` WHERE `guid` = 77480;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(77480, 774800, 0, 0, 0, 0, 0, NULL);

DELETE FROM `waypoint_data` WHERE `id` = 774800;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
(774800, 1, 33.8661, -4294.99, 119.191, 4.13916, 0, 0, 0, 100, 0),
(774800, 2, 15.5674, -4323.33, 126.081, 4.13916, 0, 0, 0, 100, 0),
(774800, 3, 9.06412, -4344.8, 133.54, 4.41641, 0, 0, 0, 100, 0),
(774800, 4, 0.553117, -4372.71, 136.9, 4.41641, 0, 0, 0, 100, 0),
(774800, 5, 22.9217, -4394.53, 143.976, 5.52068, 0, 0, 0, 100, 0),
(774800, 6, 37.5527, -4406.87, 144.066, 5.61728, 0, 0, 0, 100, 0),
(774800, 7, 60.69, -4429.96, 140.529, 5.49948, 0, 0, 0, 100, 0),
(774800, 8, 78.9304, -4454.81, 145.817, 5.34554, 0, 0, 0, 100, 0),
(774800, 9, 111.077, -4453.16, 138.105, 6.22597, 0, 0, 0, 100, 0),
(774800, 10, 141.263, -4477.85, 129.127, 5.59765, 0, 0, 0, 100, 0),
(774800, 11, 161.148, -4508.8, 127.28, 5.28349, 0, 0, 0, 100, 0),
(774800, 12, 163.808, -4536, 120.421, 4.8099, 0, 0, 0, 100, 0),
(774800, 13, 179.213, -4547.36, 117.619, 5.64949, 0, 0, 0, 100, 0),
(774800, 14, 199.62, -4546.38, 117.673, 0.048026, 0, 0, 0, 100, 0),
(774800, 15, 213.777, -4558.57, 116.667, 5.57173, 0, 0, 0, 100, 0),
(774800, 16, 188.652, -4569.09, 121.403, 3.55561, 0, 0, 0, 100, 0),
(774800, 17, 174.894, -4582.74, 119.059, 3.92318, 0, 0, 0, 100, 0),
(774800, 18, 153.454, -4584.03, 119.235, 3.2014, 0, 0, 0, 100, 0),
(774800, 19, 145, -4569.63, 121.162, 2.10184, 0, 0, 0, 100, 0),
(774800, 20, 144.711, -4539.3, 120.639, 1.58034, 0, 0, 0, 100, 0),
(774800, 21, 129.324, -4526.81, 124.315, 2.51182, 0, 0, 0, 100, 0),
(774800, 22, 121.709, -4507.72, 130.58, 1.95026, 0, 0, 0, 100, 0),
(774800, 23, 123.078, -4482.62, 134.363, 1.49002, 0, 0, 0, 100, 0),
(774800, 24, 121.647, -4466.59, 136.556, 1.63296, 0, 0, 0, 100, 0),
(774800, 25, 105.532, -4447.25, 139.4, 2.18195, 0, 0, 0, 100, 0),
(774800, 26, 84.7668, -4452.12, 144.857, 3.38754, 0, 0, 0, 100, 0),
(774800, 27, 64.0455, -4464.07, 144.132, 3.65065, 0, 0, 0, 100, 0),
(774800, 28, 43.3888, -4457, 145.749, 2.81184, 0, 0, 0, 100, 0),
(774800, 29, 47.3105, -4428.68, 141.603, 1.42561, 0, 0, 0, 100, 0),
(774800, 30, 36.6585, -4409.87, 144.795, 2.01545, 0, 0, 0, 100, 0),
(774800, 31, 15.0537, -4387.95, 142.858, 2.35867, 0, 0, 0, 100, 0),
(774800, 32, -7.9163, -4389.17, 142.119, 3.19433, 0, 0, 0, 100, 0),
(774800, 33, -29.7051, -4388.02, 145.253, 3.07652, 0, 0, 0, 100, 0),
(774800, 34, -50.6882, -4367.26, 136.515, 2.34453, 0, 0, 0, 100, 0),
(774800, 35, -71.5837, -4348.97, 125.171, 2.42228, 0, 0, 0, 100, 0),
(774800, 36, -91.2632, -4340.75, 130.592, 2.72545, 0, 0, 0, 100, 0),
(774800, 37, -108.353, -4305.35, 129.603, 2.00681, 0, 0, 0, 100, 0),
(774800, 38, -121.583, -4282, 121.64, 2.08456, 0, 0, 0, 100, 0),
(774800, 39, -100.578, -4263.8, 120.193, 0.737603, 0, 0, 0, 100, 0),
(774800, 40, -73.6297, -4257.04, 120.254, 0.238875, 0, 0, 0, 100, 0),
(774800, 41, -35.7623, -4248.27, 118.93, 0.359041, 0, 0, 0, 100, 0),
(774800, 42, 5.70428, -4236.78, 117.241, 0.39674, 0, 0, 0, 100, 0),
(774800, 43, 24.2909, -4240.63, 117.688, 6.03668, 0, 0, 0, 100, 0),
(774800, 44, 40.6797, -4257.42, 118.51, 5.80106, 0, 0, 0, 100, 0),
(774800, 45, 42.9907, -4278.39, 122.562, 4.67323, 0, 0, 0, 100, 0);


-- Troll Necklace Bounty quest should be for Alliance only
UPDATE `quest_template` SET `AllowableRaces` = 1101 WHERE `ID` = 2880;

-- Shadra incorrect display scale and missing smart AI
UPDATE `creature_template_model` SET `DisplayScale` = 5  WHERE `CreatureID` = 2707;
