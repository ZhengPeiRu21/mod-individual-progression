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
UPDATE `creature` SET `MovementType` = 2, `currentwaypoint` = 1 WHERE `id1` = 19354;

-- fix Pit Commander worldserver error
UPDATE `smart_scripts` SET `event_type` = 61 WHERE `entryorguid` = 18945 AND `id` = 4;
