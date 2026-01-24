/* smart scripts */
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (2959, 3035, 3056, 5787);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(2949, 2950, 2951, 2953, 2954, 2956, 2957, 2958, 2960, 2962, 2963, 2964, 2965, 2967, 2968, 2969, 2970, 2971, 2972, 2973, 2974, 2975, 2976, 2977, 2978, 2989, 2990, 3051, 3058, 3068, 3232, 5786, 5807);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(2949, 2950, 2951, 2953, 2954, 2956, 2957, 2958, 2959, 2960, 2962, 2963, 2964, 2965, 2967, 2968, 2969, 2970, 2971, 2972, 2973, 2974, 2975, 2976, 2977, 2978, 2989, 2990, 3035, 3051, 3056, 3058, 3068, 3232, 5786, 5787, 5807);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(2949, 0, 0, 0, 0, 0, 100, 0, 0, 0, 9000, 14000, 0, 0, 11, 9739, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Palemane Tanner - In Combat - Cast Wrath'),
(2949, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Palemane Tanner - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2950, 0, 0, 0, 2, 0, 100, 0, 0, 50, 21000, 25000, 0, 0, 11, 774, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Palemane Skinner - Between 0-50% Health - Cast Rejuvenation'),
(2950, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Palemane Skinner - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2951, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Palemane Poacher - Outside 30 Range - Start Combat Movement'),
(2951, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Palemane Poacher - Within 5-30 Range - Stop Combat Movement'),
(2951, 0, 3, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Palemane Poacher - Within 0-5 Range - Start Combat Movement'),
(2951, 0, 4, 0, 9, 0, 100, 0, 0, 0, 2000, 3000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Palemane Poacher - Within 5-30 Range - Cast Shoot'),
(2951, 0, 5, 0, 9, 0, 100, 0, 0, 3000, 9000, 14000, 5, 30, 11, 1516, 0, 7, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Palemane Poacher - Within 5-30 Range - Cast Quick Shot'),
(2951, 0, 6, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Palemane Poacher - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2953, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Bristleback Shaman - In Combat - Cast Lightning Bolt'),
(2954, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3385, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Bristleback Battleboar - On Aggro - Cast Boar Charge'),
--
(2956, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Palemane Poacher - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2957, 0, 0, 0, 0, 0, 100, 0, 6000, 10000, 19000, 24000, 0, 0, 11, 7272, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Elder Plainstrider - Between 20-40% Health - Cast Dust Cloud'),
(2957, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Elder Plainstrider - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2958, 0, 0, 0, 9, 0, 100, 0, 0, 0, 45000, 45000, 0, 5, 11, 5781, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Prairie Wolf - Within 0-5 Range - Cast Threatening Growl'),
(2960, 0, 0, 0, 9, 0, 100, 0, 0, 0, 45000, 45000, 0, 5, 11, 5781, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Prairie Wolf Alpha - Within 0-5 Range - Cast Threatening Growl'),
--
(2962, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Windfury Harpy - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2963, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 4000, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Windfury Wind Witch - In Combat - Cast Lightning Bolt'),
(2963, 0, 1, 0, 0, 0, 100, 0, 0, 3000, 11000, 16000, 0, 0, 11, 6982, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,        'Windfury Wind Witch - In Combat - Cast Gust of Wind'),
(2963, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Windfury Wind Witch - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2964, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 13322, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Windfury Sorceress - In Combat - Cast Frostbolt'),
(2964, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Windfury Sorceress - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2965, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Windfury Matriarch - In Combat - Cast Lightning Bolt'),
(2965, 0, 1, 0, 74, 0, 100, 0, 0, 0, 18000, 24000, 50, 40, 11, 332, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,          'Windfury Matriarch - Friendly Between 0-50% Health - Cast Healing Wave'),
--
(2967, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Galak Centaur - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2968, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Galak Outrunner - Outside 30 Range - Start Combat Movement'),
(2968, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Galak Outrunner - Within 5-30 Range - Stop Combat Movement'),
(2968, 0, 3, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Galak Outrunner - Within 0-5 Range - Start Combat Movement'),
(2968, 0, 4, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Galak Outrunner - Within 5-30 Range - Cast Shoot'),
(2968, 0, 5, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Galak Outrunner - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(2969, 0, 0, 0, 9, 0, 100, 0, 0, 0, 15000, 21000, 0, 5, 11, 5708, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Wiry Swoop - Within 0-5 Range - Cast Swoop'),
(2970, 0, 0, 0, 9, 0, 100, 0, 0, 0, 15000, 21000, 0, 0, 11, 5708, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Swoop - Within 0-5 Range - Cast Swoop'),
(2971, 0, 0, 0, 9, 0, 100, 0, 0, 0, 15000, 21000, 0, 0, 11, 5708, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Taloned Swoop - Within 0-5 Range - Cast Swoop'),
(2972, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 6268, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Kodo Calf - On Aggro - Cast Rushing Charge'),
(2973, 0, 0, 0, 9, 0, 100, 0, 0, 0, 9000, 14000, 0, 8, 11, 5568, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Kodo Bull - Within 0-8 Range - Cast Trample'),
(2974, 0, 0, 0, 9, 0, 100, 0, 0, 0, 9000, 14000, 0, 8, 11, 5568, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Kodo Matriarch - Within 0-8 Range - Cast Trample'),
--
(2975, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Venture Co. Hireling - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2976, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Venture Co. Laborer - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2977, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Venture Co. Taskmaster - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2978, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Venture Co. Worker - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2989, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Bael\'dun Digger - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2990, 0, 0, 0, 2, 0, 100, 0, 0, 50, 12000, 17000, 0, 0, 11, 2052, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Bael\'dun Appraiser - Between 0-50% Health - Cast Lesser Heal'),
(2990, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Bael\'dun Appraiser - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(3051, 0, 0, 0, 0, 0, 100, 0, 1000, 3000, 15000, 30000, 0, 0, 11, 6673, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Supervisor Fizsprocket - In Combat - Cast Battle Shout'),
(3051, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Supervisor Fizsprocket - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3058, 0, 0, 0, 9, 0, 100, 0, 0, 0, 11000, 15000, 0, 5, 11, 6730, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Arra\'chea - Within 0-5 Range - Cast Head Butt'),
(3068, 0, 1, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 10022, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Mazzranache - On Respawn - Cast Deadly Poison'),
(3068, 0, 2, 0, 9, 0, 100, 1, 0, 0, 0, 0, 0, 30, 11, 6268, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Mazzranache - Within 0-30 Range - Cast Rushing Charge'),
(3232, 0, 0, 0, 9, 0, 100, 0, 0, 0, 14000, 20000, 0, 5, 11, 12166, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Bristleback Interloper - Within 0-5 Range - Cast Muscle Tear'),
(5786, 0, 0, 0, 9, 0, 100, 0, 0, 0, 11000, 25300, 0, 20, 11, 12024, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Snagglespear - On Aggro - Cast Net'),
(5786, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Snagglespear - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5807, 0, 0, 0, 9, 0, 100, 0, 0, 0, 8000, 12000, 0, 5, 11, 12166, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'The Rake - Within 0-5 Range - Cast Muscle Tear');


-- Mazzranache, waypoints
UPDATE `creature` SET `spawntimesecs` = 9000, `MovementType` = 2, `currentwaypoint` = 1 WHERE `id1` = 3068;

DELETE FROM `creature_addon` WHERE `guid` = 26908;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(26908, 269080, 0, 0, 0, 0, 0, NULL);

DELETE FROM `waypoint_data` WHERE `id` = 269080;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
(269080,  1, -1722.14, -550.386, -14.7598, NULL, 0, 0, 0, 100, 0),
(269080,  2, -1705.61, -569.055, -19.4067, NULL, 0, 0, 0, 100, 0),
(269080,  3, -1682.04, -591.91, -25.4708, NULL, 0, 0, 0, 100, 0),
(269080,  4, -1662.63, -603.838, -30.1185, NULL, 0, 0, 0, 100, 0),
(269080,  5, -1639.97, -607.133, -35.8754, NULL, 0, 0, 0, 100, 0),
(269080,  6, -1616.22, -613.15, -42.4359, NULL, 0, 0, 0, 100, 0),
(269080,  7, -1595.86, -618.308, -47.3956, NULL, 0, 0, 0, 100, 0),
(269080,  8, -1574.93, -616.712, -51.7647, NULL, 0, 0, 0, 100, 0),
(269080,  9, -1550.95, -605.914, -55.6474, NULL, 0, 0, 0, 100, 0),
(269080, 10, -1537.55, -596.276, -56.3861, NULL, 0, 0, 0, 100, 0),
(269080, 11, -1532.89, -586.289, -56.2095, NULL, 0, 0, 0, 100, 0),
(269080, 12, -1532.3, -566.583, -55.7341, NULL, 0, 0, 0, 100, 0),
(269080, 13, -1536.28, -539.553, -55.2342, NULL, 0, 0, 0, 100, 0),
(269080, 14, -1533.07, -522.97, -54.4489, NULL, 0, 0, 0, 100, 0),
(269080, 15, -1522.68, -506.3, -54.3973, NULL, 0, 0, 0, 100, 0),
(269080, 16, -1519.62, -488.083, -52.5074, NULL, 0, 0, 0, 100, 0),
(269080, 17, -1524.13, -467.337, -48.9335, NULL, 0, 0, 0, 100, 0),
(269080, 18, -1526.95, -424.435, -45.2492, NULL, 0, 0, 0, 100, 0),
(269080, 19, -1531.14, -398.722, -43.8176, NULL, 0, 0, 0, 100, 0),
(269080, 20, -1538.91, -374.683, -42.8131, NULL, 0, 0, 0, 100, 0),
(269080, 21, -1545.47, -354.239, -39.0446, NULL, 0, 0, 0, 100, 0),
(269080, 22, -1552.81, -335.938, -35.917, NULL, 0, 0, 0, 100, 0),
(269080, 23, -1566.63, -312.613, -31.0947, NULL, 0, 0, 0, 100, 0),
(269080, 24, -1584.27, -296.213, -27.3011, NULL, 0, 0, 0, 100, 0),
(269080, 25, -1597.27, -278.386, -23.4966, NULL, 0, 0, 0, 100, 0),
(269080, 26, -1610.64, -257.862, -19.3983, NULL, 0, 0, 0, 100, 0),
(269080, 27, -1621, -236.845, -18.9327, NULL, 0, 0, 0, 100, 0),
(269080, 28, -1636.78, -206.561, -16.684, NULL, 0, 0, 0, 100, 0),
(269080, 29, -1648.04, -178.252, -12.0433, NULL, 0, 0, 0, 100, 0),
(269080, 30, -1656.17, -153.199, -9.43765, NULL, 0, 0, 0, 100, 0),
(269080, 31, -1657.82, -126.837, -8.72994, NULL, 0, 0, 0, 100, 0),
(269080, 32, -1668.55, -97.9253, -8.34947, NULL, 0, 0, 0, 100, 0),
(269080, 33, -1681.95, -76.5867, -9.11107, NULL, 0, 0, 0, 100, 0),
(269080, 34, -1700.51, -57.342, -5.64828, NULL, 0, 0, 0, 100, 0),
(269080, 35, -1719.51, -47.7012, -2.54774, NULL, 0, 0, 0, 100, 0),
(269080, 36, -1747.72, -46.3402, -5.4005, NULL, 0, 0, 0, 100, 0),
(269080, 37, -1772.79, -50.129, -7.08613, NULL, 0, 0, 0, 100, 0),
(269080, 38, -1798.4, -58.4037, -5.76034, NULL, 0, 0, 0, 100, 0),
(269080, 39, -1811.88, -70.5313, -7.68982, NULL, 0, 0, 0, 100, 0),
(269080, 40, -1820.73, -93.7355, -9.2501, NULL, 0, 0, 0, 100, 0),
(269080, 41, -1822.1, -112.172, -8.20732, NULL, 0, 0, 0, 100, 0),
(269080, 42, -1834.29, -123.408, -9.03176, NULL, 0, 0, 0, 100, 0),
(269080, 43, -1851.19, -129.656, -8.52712, NULL, 0, 0, 0, 100, 0),
(269080, 44, -1867.92, -137.048, -6.59658, NULL, 0, 0, 0, 100, 0),
(269080, 45, -1878.32, -150.986, -5.8911, NULL, 0, 0, 0, 100, 0),
(269080, 46, -1887.57, -173.195, -6.12971, NULL, 0, 0, 0, 100, 0),
(269080, 47, -1889.37, -196.466, -8.58793, NULL, 0, 0, 0, 100, 0),
(269080, 48, -1883.97, -217.889, -9.40669, NULL, 0, 0, 0, 100, 0),
(269080, 49, -1876.46, -244.283, -9.555, NULL, 0, 0, 0, 100, 0),
(269080, 50, -1864.45, -266.181, -7.23699, NULL, 0, 0, 0, 100, 0),
(269080, 51, -1850.99, -284.616, -4.7108, NULL, 0, 0, 0, 100, 0),
(269080, 52, -1830.57, -303.767, -6.94358, NULL, 0, 0, 0, 100, 0),
(269080, 53, -1815.14, -318.23, -9.07484, NULL, 0, 0, 0, 100, 0),
(269080, 54, -1800.89, -336.331, -9.26187, NULL, 0, 0, 0, 100, 0),
(269080, 55, -1782.61, -356.073, -9.42632, NULL, 0, 0, 0, 100, 0),
(269080, 56, -1756.99, -378.227, -12.8384, NULL, 0, 0, 0, 100, 0),
(269080, 57, -1745.2, -402.325, -16.7898, NULL, 0, 0, 0, 100, 0),
(269080, 58, -1740.74, -423.93, -14.3259, NULL, 0, 0, 0, 100, 0),
(269080, 59, -1723.81, -452.481, -10.9682, NULL, 0, 0, 0, 100, 0),
(269080, 60, -1706.64, -461.978, -10.5846, NULL, 0, 0, 0, 100, 0),
(269080, 61, -1701.38, -480.422, -10.4956, NULL, 0, 0, 0, 100, 0),
(269080, 62, -1709.83, -507.869, -12.8309, NULL, 0, 0, 0, 100, 0),
(269080, 63, -1729.44, -528.724, -13.8673, NULL, 0, 0, 0, 100, 0),
(269080, 64, -1731.65, -542.165, -13.1692, NULL, 0, 0, 0, 100, 0);


-- Galak Centaur, waypoints
DELETE FROM `creature` WHERE `id1` IN (2967, 2968);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, 
`spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(25998, 2967, 0, 0, 1, 0, 0, 1, 1, 1, -2261.41, -1456.51, 46.2608, 5.28361, 375, 0, 1, 176, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(25999, 2967, 0, 0, 1, 0, 0, 1, 1, 1, -2227.05, -1386.47, 43.9742, 5.23882, 375, 0, 1, 176, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(26000, 2967, 0, 0, 1, 0, 0, 1, 1, 1, -2227.05, -1386.47, 43.9742, 4.17968, 375, 0, 1, 176, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(26001, 2968, 0, 0, 1, 0, 0, 1, 1, 1, -2261.41, -1456.51, 46.2608, 5.28312, 375, 0, 0, 198, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(26002, 2968, 0, 0, 1, 0, 0, 1, 1, 1, -2227.05, -1386.47, 43.9742, 5.23876, 375, 0, 0, 198, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(26019, 2968, 0, 0, 1, 0, 0, 1, 1, 1, -2227.05, -1386.47, 43.9742, 4.17969, 375, 0, 0, 198, 0, 0, 0, 0, 0, '', 0, 0, NULL);

DELETE FROM `creature_formations` WHERE `leaderGUID` IN (25998, 25999, 26000);
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES
(25998, 25998, 0, 0, 515, 0, 0),
(25998, 26001, 4, 90, 515, 0, 0),
(25999, 25999, 0, 0, 515, 0, 0),
(25999, 26002, 4, 90, 515, 0, 0),
(26000, 26000, 0, 0, 515, 0, 0),
(26000, 26019, 4, 90, 515, 0, 0);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (2968);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (-26001, -26002, -26019);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(-26001, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 48, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Galak Outrunner - On Respawn - Set Active'),
(-26002, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 48, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Galak Outrunner - On Respawn - Set Active'),
(-26019, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 48, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Galak Outrunner - On Respawn - Set Active');

DELETE FROM `creature_addon` WHERE `guid` IN (25998, 25999, 26000);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(25998, 259980, 0, 0, 1, 0, 0, NULL),
(25999, 259990, 0, 0, 1, 0, 0, NULL),
(26000, 260000, 0, 0, 1, 0, 0, NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (259980, 259990, 260000);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
--
(259980, 1, -2261.41, -1456.51, 46.2608, NULL, 0, 0, 0, 100, 0),
(259980, 2, -2277.62, -1422.93, 32.4464, NULL, 0, 0, 0, 100, 0),
(259980, 3, -2302.18, -1411.65, 28.1649, NULL, 0, 0, 0, 100, 0),
(259980, 4, -2322.68, -1384.67, 21.2438, NULL, 0, 0, 0, 100, 0),
(259980, 5, -2324.53, -1341.78, 10.125, NULL, 0, 0, 0, 100, 0),
(259980, 6, -2332.66, -1306.94, 2.24427, NULL, 0, 0, 0, 100, 0),
(259980, 7, -2344.88, -1270.58, -3.62923, NULL, 0, 0, 0, 100, 0),
(259980, 8, -2339.73, -1244.6, -3.21247, NULL, 0, 0, 0, 100, 0),
(259980, 9, -2325.12, -1210.83, 0.479225, NULL, 0, 0, 0, 100, 0),
(259980, 10, -2314.43, -1186.49, -5.11854, NULL, 0, 0, 0, 100, 0),
(259980, 11, -2290.48, -1145.78, -5.83722, NULL, 0, 0, 0, 100, 0),
(259980, 12, -2306.63, -1123.49, -6.99771, NULL, 0, 0, 0, 100, 0),
(259980, 13, -2334.35, -1115.54, -8.00801, NULL, 0, 0, 0, 100, 0),
(259980, 14, -2357.48, -1119.5, -7.95283, NULL, 0, 0, 0, 100, 0),
(259980, 15, -2375.61, -1150.54, -4.55892, NULL, 0, 0, 0, 100, 0),
(259980, 16, -2357.48, -1119.5, -7.95283, NULL, 0, 0, 0, 100, 0),
(259980, 17, -2334.35, -1115.54, -8.00801, NULL, 0, 0, 0, 100, 0),
(259980, 18, -2306.63, -1123.49, -6.99771, NULL, 0, 0, 0, 100, 0),
(259980, 19, -2290.48, -1145.78, -5.83722, NULL, 0, 0, 0, 100, 0),
(259980, 20, -2314.43, -1186.49, -5.11854, NULL, 0, 0, 0, 100, 0),
(259980, 21, -2325.12, -1210.83, 0.479225, NULL, 0, 0, 0, 100, 0),
(259980, 22, -2339.73, -1244.6, -3.21247, NULL, 0, 0, 0, 100, 0),
(259980, 23, -2344.88, -1270.58, -3.62923, NULL, 0, 0, 0, 100, 0),
(259980, 24, -2332.66, -1306.94, 2.24427, NULL, 0, 0, 0, 100, 0),
(259980, 25, -2324.53, -1341.78, 10.125, NULL, 0, 0, 0, 100, 0),
(259980, 26, -2322.68, -1384.67, 21.2438, NULL, 0, 0, 0, 100, 0),
(259980, 27, -2302.18, -1411.65, 28.1649, NULL, 0, 0, 0, 100, 0),
(259980, 28, -2277.62, -1422.93, 32.4464, NULL, 0, 0, 0, 100, 0),
--
(259990, 1, -2227.05, -1386.47, 43.9742, NULL, 0, 0, 0, 100, 0),
(259990, 2, -2245.92, -1344.81, 30.1417, NULL, 0, 0, 0, 100, 0),
(259990, 3, -2268.83, -1314.06, 20.2923, NULL, 0, 0, 0, 100, 0),
(259990, 4, -2279.65, -1271.48, 16.384, NULL, 0, 0, 0, 100, 0),
(259990, 5, -2282.1, -1241.26, 13.2956, NULL, 0, 0, 0, 100, 0),
(259990, 6, -2260.68, -1207.34, 9.3284, NULL, 0, 0, 0, 100, 0),
(259990, 7, -2226.93, -1181.61, 10.3722, NULL, 0, 0, 0, 100, 0),
(259990, 8, -2219.55, -1141.57, 5.1031, NULL, 0, 0, 0, 100, 0),
(259990, 9, -2213.3, -1122.72, 3.5974, NULL, 0, 0, 0, 100, 0),
(259990, 10, -2183.89, -1115.64, 9.9052, NULL, 0, 0, 0, 100, 0),
(259990, 11, -2152.3, -1119.8, 21.3088, NULL, 0, 0, 0, 100, 0),
(259990, 12, -2134.71, -1147.15, 26.6278, NULL, 0, 0, 0, 100, 0),
(259990, 13, -2152.3, -1119.8, 21.3088, NULL, 0, 0, 0, 100, 0),
(259990, 14, -2183.89, -1115.64, 9.9052, NULL, 0, 0, 0, 100, 0),
(259990, 15, -2213.3, -1122.72, 3.5974, NULL, 0, 0, 0, 100, 0),
(259990, 16, -2219.55, -1141.57, 5.1031, NULL, 0, 0, 0, 100, 0),
(259990, 17, -2226.93, -1181.61, 10.3722, NULL, 0, 0, 0, 100, 0),
(259990, 18, -2260.68, -1207.34, 9.3284, NULL, 0, 0, 0, 100, 0),
(259990, 19, -2282.1, -1241.26, 13.2956, NULL, 0, 0, 0, 100, 0),
(259990, 20, -2279.65, -1271.48, 16.384, NULL, 0, 0, 0, 100, 0),
(259990, 21, -2268.83, -1314.06, 20.2923, NULL, 0, 0, 0, 100, 0),
(259990, 22, -2245.92, -1344.81, 30.1417, NULL, 0, 0, 0, 100, 0),
--
(260000, 1, -2227.05, -1386.47, 43.9742, NULL, 30000, 0, 0, 100, 0),
(260000, 2, -2245.92, -1344.81, 30.1417, NULL, 0, 0, 0, 100, 0),
(260000, 3, -2268.83, -1314.06, 20.2923, NULL, 0, 0, 0, 100, 0),
(260000, 4, -2279.65, -1271.48, 16.384, NULL, 0, 0, 0, 100, 0),
(260000, 5, -2282.1, -1241.26, 13.2956, NULL, 0, 0, 0, 100, 0),
(260000, 6, -2260.68, -1207.34, 9.3284, NULL, 0, 0, 0, 100, 0),
(260000, 7, -2226.93, -1181.61, 10.3722, NULL, 0, 0, 0, 100, 0),
(260000, 8, -2219.55, -1141.57, 5.1031, NULL, 0, 0, 0, 100, 0),
(260000, 9, -2213.3, -1122.72, 3.5974, NULL, 0, 0, 0, 100, 0),
(260000, 10, -2183.89, -1115.64, 9.9052, NULL, 0, 0, 0, 100, 0),
(260000, 11, -2152.3, -1119.8, 21.3088, NULL, 0, 0, 0, 100, 0),
(260000, 12, -2134.71, -1147.15, 26.6278, NULL, 0, 0, 0, 100, 0),
(260000, 13, -2152.3, -1119.8, 21.3088, NULL, 0, 0, 0, 100, 0),
(260000, 14, -2183.89, -1115.64, 9.9052, NULL, 0, 0, 0, 100, 0),
(260000, 15, -2213.3, -1122.72, 3.5974, NULL, 0, 0, 0, 100, 0),
(260000, 16, -2219.55, -1141.57, 5.1031, NULL, 0, 0, 0, 100, 0),
(260000, 17, -2226.93, -1181.61, 10.3722, NULL, 0, 0, 0, 100, 0),
(260000, 18, -2260.68, -1207.34, 9.3284, NULL, 0, 0, 0, 100, 0),
(260000, 19, -2282.1, -1241.26, 13.2956, NULL, 0, 0, 0, 100, 0),
(260000, 20, -2279.65, -1271.48, 16.384, NULL, 0, 0, 0, 100, 0),
(260000, 21, -2268.83, -1314.06, 20.2923, NULL, 0, 0, 0, 100, 0),
(260000, 22, -2245.92, -1344.81, 30.1417, NULL, 0, 0, 0, 100, 0);


-- update npc names
UPDATE `creature_template` SET `subname` = 'Journeyman Leatherworker'  WHERE `entry` = 3069;  -- Chaw Stronghide <Journeyman Leatherworker>
UPDATE `creature_template` SET `subname` = 'Armorer and Shieldcrafter' WHERE `entry` = 3075;  -- Bronk Steelrage
UPDATE `creature_template` SET `subname` = 'Fisherman'                 WHERE `entry` = 5938;  -- Uthan Stillwater <Fisherman>
UPDATE `creature_template` SET `subname` = 'Skinner'                   WHERE `entry` = 6290;  -- Yonn Deepcut <Skinner>
UPDATE `creature_template` SET `subname` = 'Journeyman Engineer'       WHERE `entry` = 10993; -- Twizwick Sprocketgrind <Journeyman Engineer>

SET @TRAINER_ID   := 600;

DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN (3069, 3690, 5938, 5939, 6290, 10993);
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`) VALUES 
(3069,  @TRAINER_ID+31), -- Chaw Stronghide <Journeyman Leatherworker>
(3690,  @TRAINER_ID+48), -- Kar Stormsinger <Riding Trainer>
(5938,  @TRAINER_ID+47), -- Uthan Stillwater <Fisherman>
(5939,  @TRAINER_ID+45), -- Vira Younghoof <First Aid Trainer>
(6290,  @TRAINER_ID+43), -- Yonn Deepcut <Skinner>
(10993, @TRAINER_ID+26); -- Twizwick Sprocketgrind <Journeyman Engineer>


/* Quests */

-- The Hunt Begins
DELETE FROM `quest_offer_reward` WHERE `ID` = 747;
INSERT INTO `quest_offer_reward` (`ID`, `RewardText`) VALUES 
(747, 'The tauren of Narache thank you, $n. You show much promise.');

-- The Hunter's Way
DELETE FROM `quest_offer_reward` WHERE `ID` = 861;
INSERT INTO `quest_offer_reward` (`ID`, `RewardText`) VALUES 
(861, 'Skorn Whitecloud is a wise tauren. He has hunted for years and years, and although his body is old, his spirit burns fiercely. We are honored to have him with us.$B$B
 If Skorn sent you to me, then you too must have the hunter\'s spirit. And to have gathered these claws shows your burgeoning skills.$B$BPerhaps you are ready to walk the path.');

-- The Hunt Begins
DELETE FROM `quest_request_items` WHERE `ID` = 747;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `CompletionText`) VALUES 
(747, 1, 'Providing meat and feathers for the tribe is the first step in proving yourself as a hunter before the Chief.');

-- Wildmane Cleansing
DELETE FROM `quest_request_items` WHERE `ID` = 760;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `CompletionText`) VALUES 
(760, 1, 'The last water well remains fetid and poisonous, $N. You must not delay!');


UPDATE `quest_template` SET `Flags` = 0 WHERE `ID` = 1518; -- Call of Earth (Shaman)

UPDATE `quest_template_addon` SET `SpecialFlags` = 0 WHERE `ID` IN (
747,  -- The Hunt Begins
750,  -- The Hunt Continues
752,  -- A Humble Task
753,  -- A Humble Task
755,  -- Rites of the Earthmother
757,  -- Rite of Strength
763,  -- Rites of the Earthmother
780,  -- The Battleboars
1518, -- Call of Earth (Shaman)
1520, -- Call of Earth (Shaman)
1521, -- Call of Earth (Shaman)
1656, -- A Task Unfinished
3093, -- Rune-Inscribed Note
3376  -- Break Sharptusk!
);
