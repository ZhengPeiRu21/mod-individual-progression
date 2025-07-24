-- smart scripts
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (2160, 10919, 11196);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (2160, 10919, 11196);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 

(2160, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 12544, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,        'Gravelflint Geomancer - On Reset - Cast Frost Armor'),
(2160, 0, 1, 0, 9, 0, 100, 0, 0, 0, 3300, 7400, 0, 40, 11, 19816, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Gravelflint Geomancer - Within 0-40 Range - Cast Fireball'),
(10919, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 0, 0, 39, 20, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Shatterspear Troll   - On Aggro - Call for Help (No Repeat)'),
(11196, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 0, 0, 39, 20, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Shatterspear Drummer - On Aggro - Call for Help (No Repeat)');
