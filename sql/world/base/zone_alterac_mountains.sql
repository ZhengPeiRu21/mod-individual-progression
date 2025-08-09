-- smart scripts
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(2242, 2254, 2255, 2256, 2271, 2272, 2287, 2415, 2417, 2420, 2421, 2422);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(2242, 2254, 2255, 2256, 2271, 2272, 2287, 2415, 2417, 2420, 2421, 2422);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(2242, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 22766, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Syndicate Spy - Out of Combat - Cast Sneak'),
(2242, 0, 1, 0, 67, 0, 100, 0, 0, 0, 1800, 9800, 0, 5, 11, 7159, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Syndicate Spy - On Behind Target - Cast Backstab'),
(2242, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Syndicate Spy - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(2254, 0, 0, 0, 4, 0, 10, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                         'Crushridge Mauler - On Aggro - Say Line 0'),
(2254, 0, 1, 0, 9, 0, 100, 0, 4100, 9300, 10200, 17900, 0, 5, 11, 11976, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Crushridge Mauler - Within 0-5 Range - Cast Strike'),
(2254, 0, 2, 0, 9, 0, 100, 0, 7400, 15800, 7600, 18700, 0, 5, 11, 6253, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Crushridge Mauler - Within 0-5 Range - Cast Backhand'),
(2254, 0, 3, 4, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 86, 8602, 2, 9, 2287, 0, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Crushridge Mauler - On Death - Cross Cast Enrage'),
(2254, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 9, 2287, 0, 30, 1, 0, 0, 0, 0,                   'Crushridge Mauler - On Death - Crushridge Warmonger Say Line 1'),
(2255, 0, 0, 0, 4, 0, 10, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                         'Crushridge Mage - On Aggro - Say Line 0'),
(2255, 0, 1, 0, 0, 0, 100, 0, 0, 0, 3500, 4800, 0, 0, 11, 9672, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Crushridge Mage - In Combat - Cast Frostbolt'),
(2255, 0, 2, 0, 0, 0, 100, 0, 5300, 7400, 11300, 21200, 0, 0, 11, 6742, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Crushridge Mage - In Combat - Cast Bloodlust'),
(2255, 0, 3, 4, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 86, 8602, 2, 9, 2287, 0, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Crushridge Mage - On Death - Cross Cast Enrage'),
(2255, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 9, 2287, 0, 30, 1, 0, 0, 0, 0,                   'Crushridge Mage - On Death - Crushridge Warmonger Say Line 1'),
(2256, 0, 0, 0, 4, 0, 10, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                         'Crushridge Enforcer - On Aggro - Say Line 0'),
(2256, 0, 1, 0, 9, 0, 100, 0, 6000, 9000, 18000, 24000, 0, 5, 11, 9791, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Crushridge Enforcer - Within 0-5 Range - Cast Head Crack'),
(2256, 0, 2, 3, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 86, 8602, 2, 9, 2287, 0, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Crushridge Enforcer - On Death - Cross Cast Enrage'),
(2256, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 9, 2287, 0, 30, 1, 0, 0, 0, 0,                   'Crushridge Enforcer - On Death - Crushridge Warmonger Say Line 1'),
(2287, 0, 0, 0, 4, 0, 10, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                         'Crushridge Warmonger - On Aggro - Say Line 0 (No Repeat)'),
(2287, 0, 1, 0, 2, 0, 100, 1, 0, 50, 0, 0, 0, 0, 39, 15, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Crushridge Warmonger - Between 0-50% Health - Call For Help (No Repeat)'),
(2287, 0, 2, 3, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 86, 8602, 2, 9, 2287, 0, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Crushridge Warmonger - On Death - Cross Cast Enrage'),
(2287, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 9, 2287, 0, 30, 1, 0, 0, 0, 0,                   'Crushridge Warmonger - On Death - Crushridge Warmonger Say Line 1'),
--
(2271, 0, 0, 0, 9, 0, 50, 0, 4800, 18100, 4800, 18100, 0, 5, 11, 3260, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Dalaran Shield Guard - Within 0-5 Range - Cast Violet Shield Effect'),
(2271, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Dalaran Shield Guard - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2272, 0, 0, 0, 0, 0, 100, 0, 0, 0, 3300, 6600, 0, 0, 11, 20819, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Dalaran Theurgist - In Combat - Cast Frostbolt'),
(2272, 0, 1, 0, 0, 0, 100, 0, 4000, 5300, 4600, 9900, 0, 0, 11, 3652, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,        'Dalaran Theurgist - In Combat - Cast Summon Spirit of Old'),
(2272, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Dalaran Theurgist - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2415, 0, 0, 0, 0, 0, 100, 0, 0, 0, 3300, 4900, 0, 0, 11, 20823, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Warden Belamoore - In Combat - Cast Fireball'),
(2415, 0, 1, 0, 9, 0, 100, 0, 10300, 10300, 14900, 37400, 0, 10, 11, 20828, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Warden Belamoore - Within 0-10 Range - Cast Cone of Cold'),
(2415, 0, 2, 0, 0, 0, 100, 0, 7000, 13000, 6000, 16000, 0, 0, 11, 13323, 1, 0, 0, 0, 0, 6, 30, 1, 0, 0, 0, 0, 0, 0,    'Warden Belamoore - Within 0-30 Range - Cast Polymorph'),
(2415, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Warden Belamoore - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(2417, 0, 0, 0, 4, 0, 10, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                         'Grel\'borg the Miser - On Aggro - Say Line 0 (No Repeat)'),
(2417, 0, 1, 0, 0, 0, 100, 0, 3000, 6000, 29000, 38000, 0, 0, 11, 6742, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Grel\'borg the Miser - In Combat - Cast Bloodlust'),
(2417, 0, 2, 0, 0, 0, 100, 0, 2000, 2000, 36000, 36000, 0, 0, 11, 4979, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Grel\'borg the Miser - In Combat - Cast Quick Flame Ward'),
(2417, 0, 3, 0, 9, 0, 100, 0, 10000, 19000, 10000, 23000, 0, 30, 11, 11990, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Grel\'borg the Miser - Within 0-30 Range - Cast Rain of Fire'),
(2420, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 7366, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Targ - Out of Combat - Cast Berserker Stance (No Repeat)'),
(2420, 0, 1, 0, 4, 0, 10, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                         'Targ - On Aggro - Say Line 0 (No Repeat)'),
(2420, 0, 2, 0, 9, 0, 100, 0, 4000, 16000, 6000, 19000, 0, 5, 11, 15496, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Targ - Within 0-5 Range - Cast Cleave'),
(2420, 0, 3, 0, 9, 0, 100, 0, 13000, 16000, 11000, 24000, 0, 10, 11, 8147, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Targ - Within 0-10 Range - Cast Thunderclap'),
(2421, 0, 0, 0, 9, 0, 100, 0, 7000, 13000, 11000, 26000, 0, 5, 11, 8379, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Muckrake - Within 0-5 Range - Cast Disarm'),
(2421, 0, 1, 0, 105, 0, 100, 0, 6000, 15000, 13000, 16000, 0, 5, 11, 12555, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,  'Muckrake - Within 0-5 Range - Cast Pummel'),
(2422, 0, 0, 0, 4, 0, 10, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                         'Glommus - On Aggro - Say Line 0 (No Repeat)'),
(2422, 0, 1, 0, 0, 0, 100, 0, 1000, 1000, 1000, 9000, 0, 0, 11, 9128, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Glommus - In Combat - Cast Battle Shout'),
(2422, 0, 2, 0, 9, 0, 100, 0, 5000, 11000, 14000, 35000, 0, 10, 11, 13730, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Glommus - Within 0-10 Range - Cast Demoralizing Shout'),
(2422, 0, 3, 0, 9, 0, 100, 0, 6000, 8000, 9000, 32000, 0, 5, 11, 11428, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Glommus - Within 0-5 Range - Cast Knockdown');






-- pooled solid chests, Strahnbrad, Alterac Mountains: 33193, 33206, 33207
-- solid chest missing upstairs in Dandred's Fold main building
-- Jailor Borhuin, 2431, should have multiple spawn locations
-- Baron Vardus, 2306, should have multiple spawn locations
