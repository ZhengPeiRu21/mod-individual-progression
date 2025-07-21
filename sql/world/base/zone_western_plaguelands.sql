UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (1845, 1846);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1845, 1846);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(1845, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8258, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'High Protector Tarsen - On Reset - Cast Devotion Aura (No Repeat)'),
(1845, 0, 1, 0, 0, 0, 100, 0, 4000, 12000, 11000, 15000, 0, 0, 11, 10833, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'High Protector Tarsen - In Combat - Cast Arcane Blast'),
(1845, 0, 2, 0, 0, 0, 100, 0, 1000, 11000, 10000, 20000, 0, 0, 11, 15655, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'High Protector Tarsen - In Combat - Cast Shield Slam'),
(1845, 0, 3, 0, 0, 0, 100, 0, 2300, 3100, 8900, 9600, 0, 0, 11, 13953, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'High Protector Tarsen - In Combat - Cast Holy Strike'),
--
(1846, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8990, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'High Protector Lorik - On Reset - Cast Retribution Aura'),
(1846, 0, 1, 0, 0, 0, 100, 0, 4000, 12000, 11000, 15000, 0, 0, 11, 10833, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'High Protector Lorik - In Combat - Cast Arcane Blast'),
(1846, 0, 2, 0, 0, 0, 100, 0, 1000, 11000, 10000, 20000, 0, 0, 11, 15655, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'High Protector Lorik - In Combat - Cast Shield Slam'),
(1846, 0, 3, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 13874, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'High Protector Lorik - Between 0-30% Health - Cast Divine Shield (No Repeat)'),
(1846, 0, 4, 0, 14, 0, 100, 0, 3000, 30, 10000, 12000, 0, 0, 11, 15493, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,   'High Protector Lorik - Friendly Missing Health - Cast Holy Light');
