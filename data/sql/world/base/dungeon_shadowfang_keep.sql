/* smart scripts */
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(2529, 3855, 3859, 3861, 3873, 3875, 3877, 3886, 3887, 3914, 3927, 4278);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(2529, 3855, 3859, 3861, 3873, 3875, 3877, 3886, 3887, 3914, 3927, 4278);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(2529, 0, 0, 0, 0, 0, 100, 0, 11000, 11000, 9000, 21000, 0, 0, 11, 7124, 32, 0, 0, 0, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0,   'Son of Arugal - Within 0-20 Range - Cast Arugals Gift'),
(3855, 0, 0, 0, 0, 0, 100, 0, 4000, 7000, 11000, 20000, 0, 0, 11, 8140, 288, 0, 0, 0, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0,   'Shadowfang Darksoul - Within 0-20 Range - Cast Befuddlement'),
(3855, 0, 1, 0, 0, 0, 100, 0, 1000, 9000, 3000, 7000, 0, 0, 11, 970, 32, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,       'Shadowfang Darksoul - Within 0-30 Range - Cast Shadow Word: Pain'),
(3859, 0, 0, 0, 2, 0, 100, 0, 0, 35, 60000, 60000, 0, 0, 11, 7072, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Shadowfang Ragetooth - Between Health 0-35% - Cast Wild Rage'),
(3861, 0, 0, 0, 0, 0, 100, 0, 2000, 10000, 15000, 20000, 0, 0, 11, 7127, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Bleak Worg - Within 0-5 Range - Cast Wavering Will'),
(3873, 0, 0, 0, 0, 0, 100, 0, 10500, 11900, 3500, 6500, 0, 0, 11, 7054, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,      'Tormented Officer - Within 0-5 Range - Cast Forsaken Skills'),
(3875, 0, 0, 0, 0, 0, 100, 0, 9000, 13000, 4000, 6000, 0, 0, 11, 7057, 32, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,      'Haunted Servitor - Within 0-5 Range - Cast Haunting Spirits'),
(3877, 0, 0, 0, 9, 0, 100, 0, 0, 0, 1000, 12000, 0, 5, 11, 7074, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Wailing Guardsman - Within 0-5 Range - Cast Screams of the Past'),
(3886, 0, 0, 0, 0, 0, 100, 0, 2800, 9700, 2800, 9700, 0, 0, 11, 7485, 256, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,      'Razorclaw the Butcher - Within 0-5 Range - Cast Butcher Drain'),
(3887, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Baron Silverlaine - In Combat - Say Line 0 (No Repeat)'),
(3887, 0, 1, 0, 0, 0, 100, 0, 1000, 8000, 22000, 55000, 0, 0, 11, 7068, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Baron Silverlaine - In Combat - Cast Veil of Shadow'),
(3914, 0, 0, 0, 0, 0, 100, 0, 1000, 14000, 14000, 36000, 0, 0, 11, 7295, 0, 0, 0, 0, 0, 5, 10, 0, 0, 0, 0, 0, 0, 0,    'Rethilgore - Within 0-10 Range - Cast Soul Drain'),
(3914, 0, 1, 2, 6, 0, 100, 512, 0, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, 3850, 100, 0, 0, 0, 0, 0, 0,               'Rethilgore - On Just Died - Set Data'),
(3914, 0, 2, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 45, 1, 2, 0, 0, 0, 0, 19, 3849, 100, 0, 0, 0, 0, 0, 0,              'Rethilgore - On Just Died - Set Data'),
--
(3927, 0, 1, 0, 2, 0, 100, 1, 0, 75, 0, 0, 0, 0, 11, 7487, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Wolf Master Nandos - In Combat - Cast Call Bleak Worg (No Repeat)'),
(3927, 0, 0, 0, 2, 0, 100, 1, 0, 50, 0, 0, 0, 0, 11, 7488, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Wolf Master Nandos - In Combat - Cast Call Slavering Worg (No Repeat)'),
(3927, 0, 2, 0, 2, 0, 100, 1, 0, 25, 0, 0, 0, 0, 11, 7489, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Wolf Master Nandos - In Combat - Cast Call Lupine Horror (No Repeat)'),
(3927, 0, 3, 4, 6, 0, 100, 512, 0, 0, 0, 0, 0, 0, 34, 2, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Wolf Master Nandos - On Just Died - Set Instance Data 2 to 3'),
(3927, 0, 4, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 118, 0, 0, 0, 0, 0, 0, 14, 33241, 18971, 0, 0, 0, 0, 0, 0,          'Wolf Master Nandos - On Just Died - Set GO State'),
(3927, 0, 5, 6, 77, 0, 100, 0, 1, 4, 600000, 600000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Wolf Master Nandos - On Counter Set - Say Line 0'),
(3927, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 60, 0, 0, 0, 0, 0, 0, 0,                    'Wolf Master Nandos - On Counter Set - Attack Start'),
--
(4278, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Commander Springvale - In Combat - Say Line 0 (No Repeat)'),
(4278, 0, 2, 0, 2, 0, 100, 0, 0, 80, 0, 0, 7500, 15300, 11, 1026, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Commander Springvale - Between Health 0-80% - Cast Holy Light'),
(4278, 0, 3, 0, 14, 0, 100, 0, 800, 40, 12500, 22300, 0, 0, 11, 1026, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,        'Commander Springvale - On Friendly HP Deficit - Cast Holy Light'),
(4278, 0, 4, 0, 2, 0, 100, 1, 0, 25, 0, 0, 0, 0, 11, 498, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Commander Springvale - Between Health 0-25% - Cast Divine Protection'),
(4278, 0, 5, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Commander Springvale - On Just Died - Say Line 1');
