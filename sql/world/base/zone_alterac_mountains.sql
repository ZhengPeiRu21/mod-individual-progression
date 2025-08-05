-- smart scripts
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(2242, 2271, 2272, 2415);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(2242, 2271, 2272, 2415);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(2242, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 22766, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Syndicate Spy - Out of Combat - Cast Sneak'),
(2242, 0, 1, 0, 67, 0, 100, 0, 0, 0, 1800, 9800, 0, 5, 11, 7159, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Syndicate Spy - On Behind Target - Cast Backstab'),
(2242, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Syndicate Spy - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2271, 0, 0, 0, 9, 0, 50, 0, 4800, 18100, 4800, 18100, 0, 5, 11, 3260, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Dalaran Shield Guard - Within 0-5 Range - Cast Violet Shield Effect'),
(2271, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Dalaran Shield Guard - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2272, 0, 0, 0, 0, 0, 100, 0, 0, 0, 3300, 6600, 0, 0, 11, 20819, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Dalaran Theurgist - In Combat - Cast Frostbolt'),
(2272, 0, 1, 0, 0, 0, 100, 0, 4000, 5300, 4600, 9900, 0, 0, 11, 3652, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Dalaran Theurgist - In Combat - Cast Summon Spirit of Old'),
(2272, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Dalaran Theurgist - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2415, 0, 0, 0, 0, 0, 100, 0, 0, 0, 3300, 4900, 0, 0, 11, 20823, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Warden Belamoore - In Combat - Cast Fireball'),
(2415, 0, 1, 0, 9, 0, 100, 0, 10300, 10300, 14900, 37400, 0, 10, 11, 20828, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Warden Belamoore - Within 0-10 Range - Cast Cone of Cold'),
(2415, 0, 2, 0, 0, 0, 100, 0, 7000, 13000, 6000, 16000, 0, 0, 11, 13323, 1, 0, 0, 0, 0, 6, 30, 1, 0, 0, 0, 0, 0, 0,   'Warden Belamoore - Within 0-30 Range - Cast Polymorph'),
(2415, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Warden Belamoore - Between 0-15% Health - Flee For Assist (No Repeat)');






-- pooled solid chests, Strahnbrad, Alterac Mountains: 33193, 33206, 33207
-- solid chest missing upstairs in Dandred's Fold main building
-- Jailor Borhuin, 2431, should have multiple spawn locations
-- Baron Vardus, 2306, should have multiple spawn locations
