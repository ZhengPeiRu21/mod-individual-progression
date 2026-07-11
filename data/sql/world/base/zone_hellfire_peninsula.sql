/* smart scripts */
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(16938, 19354);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(16938, 19354);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(16938, 0, 0, 0, 0, 0, 75, 0, 8000, 8000, 10000, 10000, 0, 0, 11, 31553, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Dreghood Brute - In Combat - Cast Hamstring'),
(16938, 0, 1, 0, 4, 0, 35, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 21, 40, 0, 0, 0, 0, 0, 0, 0,                        'Dreghood Brute - On Agro - Say'),
(19354, 0, 0, 0, 0, 0, 100, 0, 8000, 12000, 8000, 14000, 0, 0, 11, 16856, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Arzeth the Merciless - In Combat - Cast Mortal Strike'),
(19354, 0, 1, 0, 106, 0, 100, 0, 12000, 14000, 12000, 14000, 0, 30, 11, 15245, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Arzeth the Merciless - Within 0-30 Range - Cast Shadow Bolt Volley'),
(19354, 0, 2, 3, 8, 0, 100, 513, 35460, 0, 0, 0, 0, 0, 36, 20680, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Arzeth the Merciless - On Spell Hit - Update Template'),
(19354, 0, 3, 4, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Arzeth the Merciless - Link - Say Line 0'),
(19354, 0, 4, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                     'Arzeth the Merciless - Link - Attack Start'),
(19354, 0, 5, 0, 1, 0, 100, 0, 35000, 45000, 40000, 90000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Arzeth the Merciless - OOC - Say Line 0'),
(19354, 0, 6, 0, 7, 0, 100, 512, 0, 0, 0, 0, 0, 0, 36, 19354, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Arzeth the Merciless - On Evade - Update Template');


-- fix Arzeth the Merciless worldserver error
UPDATE `creature` SET `MovementType` = 2, `currentwaypoint` = 1 WHERE `id` = 19354;

-- fix Pit Commander worldserver error
UPDATE `smart_scripts` SET `event_type` = 61 WHERE `entryorguid` = 18945 AND `id` = 4;

/* Throne of Kil'jaeden */
SET @CGUID    := 672000;
SET @WPID     := 6720000;

DELETE FROM `creature` WHERE `id` IN (22295, 22301, 22302, 22303);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, 
`wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
--
(@CGUID+101, 22301, 530, 0, 0, 1, 65536, 0, 774.318, 2139.38, 272.743, 0.964729, 300, 0, 0, 63184, 12924, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+102, 22301, 530, 0, 0, 1, 65536, 0, 770.951, 2163.11, 273.37, 5.52004, 300, 0, 0, 63184, 12924, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+103, 22301, 530, 0, 0, 1, 65536, 0, 793.312, 2163.78, 272.425, 3.94532, 300, 0, 0, 64933, 13236, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+104, 22301, 530, 0, 0, 1, 65536, 0, 783.231, 2067.71, 272.541, 1.13359, 300, 0, 0, 64933, 13236, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+105, 22301, 530, 0, 0, 1, 65536, 0, 776.229, 2096.25, 272.185, 5.50434, 300, 0, 0, 63184, 12924, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+106, 22301, 530, 0, 0, 1, 65536, 0, 805.389, 2086.82, 274.623, 3.31309, 300, 0, 0, 63184, 12924, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+107, 22301, 530, 0, 0, 1, 65536, 0, 882.348, 2104.01, 272.687, 4.6522, 300, 0, 0, 63184, 12924, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+108, 22301, 530, 0, 0, 1, 65536, 0, 867.057, 2081.61, 271.841, 0.246119, 300, 0, 0, 64933, 13236, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+109, 22301, 530, 0, 0, 1, 65536, 0, 891.848, 2072.34, 272.144, 2.18213, 300, 0, 0, 64933, 13236, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+110, 22301, 530, 0, 0, 1, 65536, 0, 890.054, 2167.07, 281.635, 3.60763, 300, 0, 0, 63184, 12924, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+111, 22301, 530, 0, 0, 1, 65536, 0, 864.276, 2169.28, 281.362, 5.5672, 300, 0, 0, 64933, 13236, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+112, 22301, 530, 0, 0, 1, 65536, 0, 882.578, 2142.07, 281.362, 1.87582, 300, 0, 0, 64933, 13236, 0, 0, 0, 0, '', NULL, 0, NULL),
--
(@CGUID+113, 22302, 530, 0, 0, 1, 65536, 1, 802.483, 2385.54, 281.37, 5.50831, 300, 0, 0, 64933, 13236, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+114, 22302, 530, 0, 0, 1, 65536, 1, 743.352, 2381.58, 275.06, 2.65732, 300, 0, 0, 64933, 13236, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+115, 22302, 530, 0, 0, 1, 65536, 1, 737.546, 2554.75, 279.206, 4.18492, 300, 0, 0, 64933, 13236, 0, 0, 0, 0, '', NULL, 0, NULL),
--
(@CGUID+116, 22303, 530, 0, 0, 1, 65536, 0, 825.261, 2408.36, 281.37, 4.22564, 300, 0, 0, 64629, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+117, 22303, 530, 0, 0, 1, 65536, 0, 804.541, 2299.29, 281.395, 3.46382, 300, 0, 0, 64629, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+118, 22303, 530, 0, 0, 1, 65536, 0, 772.083, 2297.97, 281.352, 6.09335, 300, 0, 0, 62874, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+119, 22303, 530, 0, 0, 1, 65536, 0, 789.242, 2263.13, 281.362, 1.78545, 300, 0, 0, 64629, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
--
(@CGUID+121, 22295, 530, 0, 0, 1, 65536, 1, 843.595, 2230.3, 289.351, 3.01862, 300, 0, 0, 78991, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+122, 22295, 530, 0, 0, 1, 65536, 1, 842.717, 2312.72, 289.366, 3.3579, 300, 0, 0, 78991, 0, 0, 0, 0, 0, '', NULL, 0, NULL);
