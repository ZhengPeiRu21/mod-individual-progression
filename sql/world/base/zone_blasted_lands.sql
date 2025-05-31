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
(@CGUID+6, 19288, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11891.6, -3206.74, -14.7911, 0.133866, 1800, 0, 0, 88440, 13100, 0, 0, 0, 0, '', NULL, 0, NULL),   -- Dreadknight
(@CGUID+7, 19288, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11897.1, -3211.45, -14.6568, 0.0835547, 1200, 0, 0, 88440, 13100, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+8, 19288, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11897.6, -3202.01, -14.651, 0.0796277, 900, 0, 0, 88440, 13100, 0, 0, 0, 0, '', NULL, 0, NULL),

(@CGUID+9, 19290, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11869, -3225.79, -14.9308, 0.144756, 120, 0, 0, 2515, 2486, 0, 0, 0, 0, '', NULL, 0, NULL),        -- Invading Anguisher
(@CGUID+10, 19290, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11875, -3180.81, -14.9425, 0.168318, 120, 0, 0, 2515, 2486, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+11, 19391, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11902.3, -3207.61, -14.7973, 0.122027, 300, 0, 0, 15260, 0, 0, 0, 0, 0, '', NULL, 0, NULL),       -- Felguard Lieutenant
--
(@CGUID+100, 19006, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11793.4, -3185.31, -28.8352, 2.69812, 300, 0, 0, 55890, 31550, 0, 0, 0, 0, '', NULL, 0, NULL),   -- Silvermoon Magister
(@CGUID+101, 19007, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11799.3, -3228.41, -27.2092, 2.12007, 300, 0, 0, 55890, 31550, 0, 0, 0, 0, '', NULL, 0, NULL),   -- Gnomeregan Conjuror
--
(@CGUID+102, 19320, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11818.1, -3225.42, -30.7364, 1.51137, 120, 0, 0, 4979, 0, 0, 0, 0, 0, '', NULL, 0, NULL),        -- Argent Protector
(@CGUID+103, 19320, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11796.4, -3195.61, -28.1723, 3.86363, 120, 0, 0, 4979, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+104, 19322, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11794.1, -3190.4, -28.794, 2.05722, 120, 0, 0, 4979, 0, 0, 0, 0, 0, '', NULL, 0, NULL),          -- Argent Guardian
(@CGUID+105, 19365, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11818.6, -3168.31, -28.35, 3.66258, 120, 0, 0, 4979, 0, 0, 0, 0, 0, '', NULL, 0, NULL),          -- Argent Bowman
(@CGUID+106, 19366, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11831.3, -3160.67, -30.0144, 4.12282, 120, 0, 0, 4979, 0, 0, 0, 0, 0, '', NULL, 0, NULL),        -- Argent Hunter
--
(@CGUID+200, 19385, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11804.1, -3221.13, -30.622, 2.75383, 1200, 0, 0, 69860, 0, 0, 0, 0, 0, '', NULL, 0, NULL),       -- Lord Marshal Raynor
(@CGUID+201, 19386, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11802.5, -3223.36, -30.4378, 2.63601, 1200, 0, 0, 5914, 0, 0, 0, 0, 0, '', NULL, 0, NULL),       -- Stormwind Marshal
(@CGUID+202, 19386, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11801.4, -3219.95, -30.5844, 2.78131, 1200, 0, 0, 5914, 0, 0, 0, 0, 0, '', NULL, 0, NULL),       -- Stormwind Marshal
--
(@CGUID+203, 18966, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11800, -3179.14, -30.4951, 3.5574, 900, 0, 0, 111780, 47325, 0, 0, 0, 0, '', NULL, 0, NULL),     -- Justinius the Harbinger
(@CGUID+204, 19407, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11797.3, -3180.99, -30.3303, 3.42781, 900, 0, 0, 5914, 0, 0, 0, 0, 0, '', NULL, 0, NULL),        -- Azuremyst Vindicator
(@CGUID+205, 19407, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11800, -3175.74, -30.4326, 3.73019, 900, 0, 0, 5914, 0, 0, 0, 0, 0, '', NULL, 0, NULL),          -- Azuremyst Vindicator
--
(@CGUID+206, 18969, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11792.7, -3175.95, -30.0411, 3.55114, 1800, 0, 0, 111780, 47325, 0, 0, 0, 0, '', NULL, 0, NULL), -- Melgromm Highmountain
(@CGUID+207, 19406, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11790.8, -3178.18, -29.9874, 3.55507, 1800, 0, 0, 5914, 0, 0, 0, 0, 0, '', NULL, 0, NULL),       -- Thunder Bluff Huntsman
(@CGUID+208, 19406, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11793.4, -3172.56, -29.8954, 3.65324, 1800, 0, 0, 5914, 0, 0, 0, 0, 0, '', NULL, 0, NULL),       -- Thunder Bluff Huntsman
--
(@CGUID+209, 19566, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11797.3, -3207.71, -30.2781, 1.91272, 300, 0, 0, 5385, 0, 0, 0, 0, 0, '', NULL, 0, NULL),        -- Nethergarde Advisor
(@CGUID+210, 19566, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11800, -3208.97, -30.3819, 2.36362, 300, 0, 0, 5186, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+211, 19567, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11798.8, -3208.15, -30.3542, 2.06588, 300, 0, 0, 5975, 0, 0, 0, 0, 0, '', NULL, 0, NULL),        -- Watcher Theronus
(@CGUID+212, 19942, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11796, -3192.45, -28.6508, 3.2903, 300, 0, 0, 5228, 0, 0, 0, 0, 0, '', NULL, 0, NULL);           -- Agent Proudwell


DELETE FROM `creature_formations` WHERE `leaderGUID` IN (@CGUID+200, @CGUID+203, @CGUID+206);
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES 
(@CGUID+200, @CGUID+200, 0, 0, 2, 0, 0),
(@CGUID+200, @CGUID+201, 4, 90, 518, 0, 0),
(@CGUID+200, @CGUID+202, 4, 270, 518, 0, 0),
(@CGUID+203, @CGUID+203, 0, 0, 2, 0, 0),
(@CGUID+203, @CGUID+204, 4, 90, 518, 0, 0),
(@CGUID+203, @CGUID+205, 4, 270, 518, 0, 0),
(@CGUID+206, @CGUID+206, 0, 0, 2, 0, 0),
(@CGUID+206, @CGUID+207, 4, 90, 518, 0, 0),
(@CGUID+206, @CGUID+208, 4, 270, 518, 0, 0);

UPDATE `creature_template` SET `faction` = 1767 WHERE `entry` = 19567;
UPDATE `creature_template` SET `DamageModifier` = 2.6, `unit_flags` = 33040, `AIName` = 'SmartAI' WHERE `entry` = 19385;

UPDATE `creature_template` SET `flags_extra` = 134217728 WHERE `entry` IN (19288, 19385, 19391); -- DONT_OVERRIDE_SAI_ENTRY (134217728)


DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-640006, -640007, -640008, -640011, -640200, -640203, -640206, 18966, 19385);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, 
`event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(-640006, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 10, @CGUID+206, 0, 0, 0, 0, 0, 0, 0,  'Dreadknight - On Death - Despawn Melgromm Highmountain'),
(-640006, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 10, @CGUID+207, 0, 0, 0, 0, 0, 0, 0, 'Dreadknight - On Death - Despawn Thunder Bluff Huntsman'),
(-640006, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 10, @CGUID+208, 0, 0, 0, 0, 0, 0, 0, 'Dreadknight - On Death - Despawn Thunder Bluff Huntsman'),
(-640006, 0, 3, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 53, 0, 1928800, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Dreadknight - On Reset - Waypoint Start'),

(-640007, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 10, @CGUID+200, 0, 0, 0, 0, 0, 0, 0,  'Dreadknight - On Death - Despawn Marshal Raynor'),
(-640007, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 10, @CGUID+201, 0, 0, 0, 0, 0, 0, 0, 'Dreadknight - On Death - Despawn Stormwind Marshal'),
(-640007, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 10, @CGUID+202, 0, 0, 0, 0, 0, 0, 0, 'Dreadknight - On Death - Despawn Stormwind Marshal'),
(-640007, 0, 3, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 53, 0, 1928800, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Dreadknight - On Reset - Waypoint Start'),

(-640008, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 10, @CGUID+203, 0, 0, 0, 0, 0, 0, 0,  'Dreadknight - On Death - Despawn Justinius the Harbinger'),
(-640008, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 10, @CGUID+204, 0, 0, 0, 0, 0, 0, 0, 'Dreadknight - On Death - Despawn Azuremyst Vindicator'),
(-640008, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 10, @CGUID+205, 0, 0, 0, 0, 0, 0, 0, 'Dreadknight - On Death - Despawn Azuremyst Vindicator'),
(-640008, 0, 3, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 53, 0, 1928800, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Dreadknight - On Reset - Waypoint Start'),

(-640011, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 53, 0, 1939100, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Felguard Lieutenant - On Reset - Waypoint Start'),

(-640206, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 53, 0, 1896900, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Melgromm Highmountain - On Respawn - Waypoint Start'),
(-640203, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 53, 0, 1896600, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Justinius the Harbinger - On Respawn - Waypoint Start'),
(-640200, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 53, 0, 1938500, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Lord Marshal Raynor - On Respawn - Waypoint Start'),

(18966, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Justinius the Harbinger - On Aggro - Say Line 0'),
(18966, 0, 1, 0, 0, 0, 100, 0, 5000, 10000, 10000, 20000, 0, 0, 11, 33554, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Justinius the Harbinger - In Combat - Cast Judgement of Command'),
(18966, 0, 2, 0, 14, 0, 100, 0, 2500, 40, 18000, 21000, 0, 0, 11, 33641, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,   'Justinius the Harbinger - Friendly At 2500 Health - Cast Flash of Light'),

(19385, 0, 0, 0, 0, 0, 100, 0, 4850, 18250, 4850, 18250, 0, 0, 11, 40504, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Lord Marshal Raynor - In Combat - Cast Cleave');


DELETE FROM `waypoints` WHERE `entry` IN (1896600, 1896900, 1928800, 1938500, 1939100);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `point_comment`) VALUES 
(1938500, 1, -11824.2, -3225.97, -30.3699, NULL, 0, 'Lord Marshal Raynor'),
(1938500, 2, -11839, -3211.73, -30.043, NULL, 0,    'Lord Marshal Raynor'),
(1896600, 1, -11823.1, -3192.1, -30.7322, NULL, 0,  'Justinius the Harbinger'),
(1896600, 2, -11837.2, -3195.41, -29.8546, NULL, 0, 'Justinius the Harbinger'),
(1896900, 1, -11812.5, -3186.91, -30.6074, NULL, 0, 'Melgromm Highmountain'),
(1896900, 2, -11821.2, -3208.73, -29.7076, NULL, 0, 'Melgromm Highmountain'),
(1896900, 3, -11836, -3204.49, -30.2795, NULL, 0,   'Melgromm Highmountain'),
(1928800, 1, -11845.1, -3200.56, -29.3595, NULL, 0, 'Dreadknight - Melgromm'),

(1939100, 1, -11837.4, -3199.97, -29.9665, NULL, 0, 'Felguard Lieutenant');
