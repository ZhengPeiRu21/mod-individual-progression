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
SET @CGUID       := 640000;
SET @IPPPHASE_II := 131072;


REPLACE INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, 
`spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 

(@CGUID,   19285, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11888.2, -3215.89, -14.2359, 0.17849, 300, 0, 0, 3237, 0, 0, 0, 0, 0, '', NULL, 0, NULL),          -- Invading Infernal
(@CGUID+1, 19285, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11891.2, -3196.54, -14.2259, 0.0363392, 300, 0, 0, 3237, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+2, 19287, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11871, -3218.74, -14.8771, 0.159796, 120, 0, 0, 3297, 2434, 0, 0, 0, 0, '', NULL, 0, NULL),        -- Invading Voidwalker
(@CGUID+3, 19287, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11874.4, -3190.96, -14.9067, 6.21522, 120, 0, 0, 3297, 2434, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+4, 19287, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11863.4, -3193.57, -23.0898, 0.113359, 120, 0, 0, 3297, 2434, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+5, 19287, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11861.4, -3213.53, -22.4019, 0.108753, 120, 0, 0, 3297, 2434, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+6, 19288, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11891.6, -3206.74, -14.7911, 0.133866, 1800, 0, 0, 88440, 13100, 0, 0, 0, 0, '', NULL, 0, NULL),   -- Dreadknight, Melgromm
(@CGUID+7, 19288, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11897.1, -3211.45, -14.6568, 0.0835547, 1200, 0, 0, 88440, 13100, 0, 0, 0, 0, '', NULL, 0, NULL),  -- Dreadknight, Raynor
(@CGUID+8, 19288, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11897.6, -3202.01, -14.651, 0.0796277, 900, 0, 0, 88440, 13100, 0, 0, 0, 0, '', NULL, 0, NULL),    -- Dreadknight, Justinius
--
(@CGUID+9, 19290, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11869, -3225.79, -14.9308, 0.144756, 120, 0, 0, 2515, 2486, 0, 0, 0, 0, '', NULL, 0, NULL),        -- Invading Anguisher
(@CGUID+10, 19290, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11875, -3180.81, -14.9425, 0.168318, 120, 0, 0, 2515, 2486, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+11, 19391, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11902.3, -3207.61, -14.7973, 0.122027, 180, 0, 0, 15260, 0, 0, 0, 0, 0, '', NULL, 0, NULL),       -- Felguard Lieutenant
(@CGUID+12, 19284, 0, 0, 0, 0, 0, 1, 131072, 1, -11902.3, -3212.55, -14.7525, 0.137533, 60, 0, 0, 4121, 0, 0, 0, 0, 0, '', NULL, 0, NULL),               -- Invading Felguard
(@CGUID+13, 19284, 0, 0, 0, 0, 0, 1, 131072, 1, -11903.4, -3202.8, -14.3541, 0.184657, 60, 0, 0, 4121, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+14, 19284, 0, 0, 0, 0, 0, 1, 131072, 1, -11902.3, -3207.49, -14.7963, 0.121825, 60, 0, 0, 4121, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+15, 19284, 0, 0, 0, 0, 0, 1, 131072, 1, -11887.9, -3210.06, -15.0765, 0.137536, 60, 0, 0, 4121, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+16, 19284, 0, 0, 0, 0, 0, 1, 131072, 1, -11888.8, -3202.12, -14.901, 0.0833477, 60, 0, 0, 4121, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+17, 19284, 0, 0, 0, 0, 0, 1, 131072, 1, -11888, -3205.81, -15.2381, 0.0990557, 60, 0, 0, 4121, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
--
(@CGUID+100, 19006, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11793.4, -3185.31, -28.8352, 2.69812, 300, 0, 0, 55890, 31550, 0, 0, 0, 0, '', NULL, 0, NULL),   -- Silvermoon Magister
(@CGUID+101, 19007, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11799.3, -3228.41, -27.2092, 2.12007, 300, 0, 0, 55890, 31550, 0, 0, 0, 0, '', NULL, 0, NULL),   -- Gnomeregan Conjuror
--
(@CGUID+102, 19320, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11818.3, -3228.96, -30.4358, 1.59057, 60, 0, 0, 4979, 0, 0, 0, 0, 0, '', NULL, 0, NULL),         -- Argent Protector
(@CGUID+103, 19320, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11796.4, -3195.61, -28.1723, 3.86363, 60, 0, 0, 4979, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+104, 19320, 0, 0, 0, 0, 0, 1, 131072, 1, -11842.8, -3176.78, -28.9028, 4.34478, 60, 3, 0, 4979, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+105, 19322, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11794.1, -3190.4, -28.794, 2.05722, 60, 0, 0, 4979, 0, 0, 0, 0, 0, '', NULL, 0, NULL),           -- Argent Guardian
(@CGUID+106, 19322, 0, 0, 0, 0, 0, 1, 131072, 1, -11838.3, -3174.86, -29.5202, 4.26624, 60, 3, 0, 4979, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+107, 19365, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11818.6, -3168.31, -28.35, 3.66258, 60, 0, 0, 4979, 0, 0, 0, 0, 0, '', NULL, 0, NULL),           -- Argent Bowman
(@CGUID+108, 19365, 0, 0, 0, 0, 0, 1, 131072, 1, -11828.8, -3223.14, -30.3114, 2.23284, 60, 0, 0, 4979, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+109, 19365, 0, 0, 0, 0, 0, 1, 131072, 1, -11830.4, -3216.54, -30.7041, 2.43705, 60, 0, 0, 4979, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+110, 19366, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11831.3, -3160.67, -30.0144, 4.12282, 60, 0, 0, 4979, 0, 0, 0, 0, 0, '', NULL, 0, NULL),         -- Argent Hunter
(@CGUID+111, 19366, 0, 0, 0, 0, 0, 1, 131072, 1, -11846, -3171.25, -28.5187, 4.27488, 60, 3, 0, 4979, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
--
(@CGUID+200, 19385, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11804.1, -3221.13, -30.622, 2.75383, 1320, 0, 0, 69860, 0, 0, 0, 0, 0, '', NULL, 0, NULL),       -- Lord Marshal Raynor
(@CGUID+201, 19386, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11802.5, -3223.36, -30.4378, 2.63601, 1320, 0, 0, 5914, 0, 0, 0, 0, 0, '', NULL, 0, NULL),       -- Stormwind Marshal
(@CGUID+202, 19386, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11801.4, -3219.95, -30.5844, 2.78131, 1320, 0, 0, 5914, 0, 0, 0, 0, 0, '', NULL, 0, NULL),       -- Stormwind Marshal
--
(@CGUID+203, 18966, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11800, -3179.14, -30.4951, 3.5574, 1020, 0, 0, 111780, 47325, 0, 0, 0, 0, '', NULL, 0, NULL),    -- Justinius the Harbinger
(@CGUID+204, 19407, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11797.3, -3180.99, -30.3303, 3.42781, 1020, 0, 0, 5914, 0, 0, 0, 0, 0, '', NULL, 0, NULL),       -- Azuremyst Vindicator
(@CGUID+205, 19407, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11800, -3175.74, -30.4326, 3.73019, 1020, 0, 0, 5914, 0, 0, 0, 0, 0, '', NULL, 0, NULL),         -- Azuremyst Vindicator
--
(@CGUID+206, 18969, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11792.7, -3175.95, -30.0411, 3.55114, 1920, 0, 0, 111780, 47325, 0, 0, 0, 0, '', NULL, 0, NULL), -- Melgromm Highmountain
(@CGUID+207, 19406, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11790.8, -3178.18, -29.9874, 3.55507, 1920, 0, 0, 5914, 0, 0, 0, 0, 0, '', NULL, 0, NULL),       -- Thunder Bluff Huntsman
(@CGUID+208, 19406, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11793.4, -3172.56, -29.8954, 3.65324, 1920, 0, 0, 5914, 0, 0, 0, 0, 0, '', NULL, 0, NULL),       -- Thunder Bluff Huntsman
--
(@CGUID+209, 19566, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11797.3, -3207.71, -30.2781, 1.91272, 300, 0, 0, 5385, 0, 0, 0, 0, 0, '', NULL, 0, NULL),        -- Nethergarde Advisor
(@CGUID+210, 19566, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11800, -3208.97, -30.3819, 2.36362, 300, 0, 0, 5186, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+211, 19567, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11798.8, -3208.15, -30.3542, 2.06588, 300, 0, 0, 5975, 0, 0, 0, 0, 0, '', NULL, 0, NULL),        -- Watcher Theronus
(@CGUID+212, 19942, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11796, -3192.45, -28.6508, 3.2903, 300, 0, 0, 5228, 0, 0, 0, 0, 0, '', NULL, 0, NULL);           -- Agent Proudwell


DELETE FROM `creature_formations` WHERE `leaderGUID` IN (@CGUID+200, @CGUID+203, @CGUID+206);
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES 
(@CGUID+200, @CGUID+200, 0, 0, 2, 0, 0),
(@CGUID+200, @CGUID+201, 3, 90, 516, 0, 0),
(@CGUID+200, @CGUID+202, 3, 270, 516, 0, 0),
(@CGUID+203, @CGUID+203, 0, 0, 2, 0, 0),
(@CGUID+203, @CGUID+204, 3, 90, 516, 0, 0),
(@CGUID+203, @CGUID+205, 3, 270, 516, 0, 0),
(@CGUID+206, @CGUID+206, 0, 0, 2, 0, 0),
(@CGUID+206, @CGUID+207, 3, 90, 516, 0, 0),
(@CGUID+206, @CGUID+208, 3, 270, 516, 0, 0);

UPDATE `creature_template` SET `faction` = 1767 WHERE `entry` = 19567;
UPDATE `creature_template` SET `DamageModifier` = 2.6, `unit_flags` = 33040, `AIName` = 'SmartAI' WHERE `entry` = 19385;

UPDATE `creature_template` SET `flags_extra` = 134217728 WHERE `entry` IN (18966, 18969, 19284, 19288, 19320); -- DONT_OVERRIDE_SAI_ENTRY (134217728)  


DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-640006, -640007, -640008, -640012, -640013, -640014, -640015, -640016, -640017, -640102, -640203, -640206, 18966, 18969, 19385, 19391);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, 
`event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(-640006, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 232, 6400060, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Dreadknight - On Respawn - Waypoint Start'),
(-640006, 0, 1, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 10, @CGUID+206, 0, 0, 0, 0, 0, 0, 0, 'Dreadknight - On Death - Despawn Melgromm Highmountain'),
(-640006, 0, 2, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 10, @CGUID+207, 0, 0, 0, 0, 0, 0, 0, 'Dreadknight - On Death - Despawn Thunder Bluff Huntsman'),
(-640006, 0, 3, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 10, @CGUID+208, 0, 0, 0, 0, 0, 0, 0, 'Dreadknight - On Death - Despawn Thunder Bluff Huntsman'),
--
(-640007, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 232, 6400070, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Dreadknight - On Respawn - Waypoint Start'),
(-640007, 0, 1, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 10, @CGUID+200, 0, 0, 0, 0, 0, 0, 0, 'Dreadknight - On Death - Despawn Marshal Raynor'),
(-640007, 0, 2, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 10, @CGUID+201, 0, 0, 0, 0, 0, 0, 0, 'Dreadknight - On Death - Despawn Stormwind Marshal'),
(-640007, 0, 3, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 10, @CGUID+202, 0, 0, 0, 0, 0, 0, 0, 'Dreadknight - On Death - Despawn Stormwind Marshal'),
--
(-640008, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 232, 6400080, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Dreadknight - On Respawn - Waypoint Start'),
(-640008, 0, 1, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 10, @CGUID+203, 0, 0, 0, 0, 0, 0, 0, 'Dreadknight - On Death - Despawn Justinius the Harbinger'),
(-640008, 0, 2, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 10, @CGUID+204, 0, 0, 0, 0, 0, 0, 0, 'Dreadknight - On Death - Despawn Azuremyst Vindicator'),
(-640008, 0, 3, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 10, @CGUID+205, 0, 0, 0, 0, 0, 0, 0, 'Dreadknight - On Death - Despawn Azuremyst Vindicator'),
--
(-640012, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 232, 6400120, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Invading Felguard - On Respawn - Waypoint Start'),
(-640013, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 232, 6400130, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Invading Felguard - On Respawn - Waypoint Start'),
(-640014, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 232, 6400140, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Invading Felguard - On Respawn - Waypoint Start'),
(-640015, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 232, 6400150, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Invading Felguard - On Respawn - Waypoint Start'),
(-640016, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 232, 6400160, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Invading Felguard - On Respawn - Waypoint Start'),
(-640017, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 232, 6400170, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Invading Felguard - On Respawn - Waypoint Start'),
--
(-640102, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 232, 6401020, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Argent Protector - On Respawn - Waypoint Start'),
(-640203, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 232, 6402030, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Justinius the Harbinger - On Respawn - Waypoint Start'),
(-640206, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 232, 6402060, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Melgromm Highmountain - On Respawn - Waypoint Start'),
--
(18966, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Justinius the Harbinger - On Aggro - Say Line 0'),
(18966, 0, 1, 0, 0, 0, 100, 0, 5000, 10000, 10000, 20000, 0, 0, 11, 33554, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Justinius the Harbinger - In Combat - Cast Judgement of Command'),
(18966, 0, 2, 0, 14, 0, 100, 0, 2500, 40, 18000, 21000, 0, 0, 11, 33641, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,   'Justinius the Harbinger - Friendly At 2500 Health - Cast Flash of Light'),
--
(18969, 0, 0, 0, 0, 0, 100, 0, 5000, 10000, 10000, 20000, 0, 0, 11, 33643, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Melgromm Highmountain - In Combat - Cast Chain Lightning'),
(18969, 0, 1, 0, 0, 0, 100, 0, 5000, 10000, 10000, 20000, 0, 0, 11, 22885, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Melgromm Highmountain - In Combat - Cast Earth Shock'),
--
(19385, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 232, 6402000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Lord Marshal Raynor - On Respawn - Waypoint Start'),
(19385, 0, 1, 0, 0, 0, 100, 0, 4850, 18250, 4850, 18250, 0, 0, 11, 40504, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Lord Marshal Raynor - In Combat - Cast Cleave'),
--
(19391, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 232, 6400110, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Felguard Lieutenant - On Respawn - Waypoint Start'),
(19391, 0, 1, 0, 0, 0, 100, 0, 3000, 6000, 10000, 15000, 0, 0, 11, 3551, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Felguard Lieutenant - In Combat - Cast Skull Crack');



DELETE FROM `creature_addon` WHERE `guid` IN (640006, 640007, 640008, 640011, 640012, 640013, 640014, 640015, 640016, 640017, 640102, 640200, 640203, 640206);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(640006, 6400060, 0, 0, 0, 0, 0, NULL),
(640007, 6400070, 0, 0, 0, 0, 0, NULL),
(640008, 6400070, 0, 0, 0, 0, 0, NULL),
(640011, 6400110, 0, 0, 0, 0, 0, NULL),
(640012, 6400120, 0, 0, 0, 0, 0, NULL),
(640013, 6400130, 0, 0, 0, 0, 0, NULL),
(640014, 6400140, 0, 0, 0, 0, 0, NULL),
(640015, 6400150, 0, 0, 0, 0, 0, NULL),
(640016, 6400160, 0, 0, 0, 0, 0, NULL),
(640017, 6400170, 0, 0, 0, 0, 0, NULL),
(640102, 6401020, 0, 0, 0, 0, 0, NULL),
(640200, 6402000, 0, 0, 0, 0, 0, NULL),
(640203, 6402030, 0, 0, 0, 0, 0, NULL),
(640206, 6402060, 0, 0, 0, 0, 0, NULL);


DELETE FROM `waypoint_data` WHERE `id` IN (6400060, 6400070, 6400080, 6400110, 6400120, 6400130, 6400140, 6400150, 6400160, 6400170, 6401020, 6402000, 6402030, 6402060);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 

(6402000, 1, -11824.2, -3225.97, -30.3699, NULL, 0, 0, 0, 100, 0), -- Lord Marshal Raynor
(6402000, 2, -11839, -3211.73, -30.043, NULL, 0, 0, 0, 100, 0),
(6402030, 1, -11823.1, -3192.1, -30.7322, NULL, 0, 0, 0, 100, 0),  -- Justinius the Harbinger
(6402030, 2, -11837.2, -3195.41, -29.8546, NULL, 0, 0, 0, 100, 0),
(6402060, 1, -11812.5, -3186.91, -30.6074, NULL, 0, 0, 0, 100, 0), -- Melgromm Highmountain
(6402060, 2, -11821.2, -3208.73, -29.7076, NULL, 0, 0, 0, 100, 0),
(6402060, 3, -11836, -3204.49, -30.2795, NULL, 0, 0, 0, 100, 0),
--
(6400060, 1, -11845.1, -3200.56, -29.3595, NULL, 0, 0, 0, 100, 0), -- Dreadknight, Melgromm
(6400070, 1, -11891.3, -3206.46, -14.8065, NULL, 0, 0, 0, 100, 0), -- Dreadknight, Raynor
(6400070, 2, -11850.2, -3201.36, -28.6679, NULL, 0, 0, 0, 100, 0),
(6400070, 3, -11843.8, -3206.54, -29.5158, NULL, 0, 0, 0, 100, 0),
(6400080, 1, -11889.9, -3206.58, -14.9646, NULL, 0, 0, 0, 100, 0), -- Dreadknight, Justinius
(6400080, 2, -11851.1, -3201.08, -28.5624, NULL, 0, 0, 0, 100, 0),
(6400080, 3, -11843.6, -3196.09, -29.3421, NULL, 0, 0, 0, 100, 0),
--
(6401020, 1, -11818.4, -3210.99, -30.1687, NULL, 0, 1, 0, 100, 0), -- Argent Protector
(6401020, 2, -11846.5, -3200.56, -29.201, NULL, 0, 1, 0, 100, 0),
--
(6400110, 1, -11837.4, -3199.97, -29.9665, NULL, 0, 0, 0, 100, 0), -- Felguard Lieutenant
(6400120, 1, -11888.2, -3210.41, -15.0273, NULL, 0, 1, 0, 100, 0), -- Invading Felguard
(6400120, 2, -11846.8, -3206.71, -29.0062, NULL, 0, 1, 0, 100, 0),
(6400130, 1, -11889.1, -3202.02, -14.8334, NULL, 0, 1, 0, 100, 0),
(6400130, 2, -11847.9, -3196.42, -28.9539, NULL, 0, 1, 0, 100, 0),
(6400140, 1, -11889.6, -3206.22, -14.994, NULL, 0, 1, 0, 100, 0),
(6400140, 2, -11842.7, -3200.9, -29.5849, NULL, 0, 1, 0, 100, 0),
(6400150, 1, -11848, -3206.28, -28.8014, NULL, 0, 1, 0, 100, 0),
(6400150, 2, -11837.3, -3213.55, -30.1827, NULL, 0, 1, 0, 100, 0),
(6400160, 1, -11849.9, -3196.86, -28.6516, NULL, 0, 1, 0, 100, 0),
(6400160, 2, -11837.5, -3191.1, -29.7639, NULL, 0, 1, 0, 100, 0),
(6400170, 1, -11850.5, -3201.05, -28.6364, NULL, 0, 1, 0, 100, 0),
(6400170, 2, -11834.5, -3199.66, -30.1119, NULL, 0, 1, 0, 100, 0);
