-- smart scripts
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (2320, 2407);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(2242, 2243, 2245, 2246, 2247, 2254, 2255, 2256, 2271, 2272, 2287, 2306, 2415, 2417, 2420, 2421, 2422, 2423, 2453);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(2242, 2243, 2245, 2246, 2247, 2254, 2255, 2256, 2271, 2272, 2287, 2306, 2320, 2407, 2415, 2417, 2420, 2421, 2422, 2423, 2453);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(2242, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 22766, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Syndicate Spy - Out of Combat - Cast Sneak'),
(2242, 0, 1, 0, 67, 0, 100, 0, 0, 0, 1800, 9800, 0, 5, 11, 7159, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Syndicate Spy - On Behind Target - Cast Backstab'),
(2242, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                       'Syndicate Spy - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2243, 0, 0, 0, 105, 0, 100, 0, 7000, 12000, 10000, 28000, 0, 5, 11, 11972, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,   'Syndicate Sentry - Within 0-5 Range - Cast Shield Bash'),
(2243, 0, 1, 0, 2, 0, 100, 0, 0, 50, 30800, 39200, 0, 0, 11, 15062, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Syndicate Sentry - Between 0-50% Health - Cast Shield Wall'),
(2243, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                       'Syndicate Sentry - Between 0-15% Health - Flee For Assist'),
(2245, 0, 0, 0, 9, 0, 100, 0, 0, 0, 2500, 5900, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Syndicate Saboteur - Within 5-30 Range - Cast Shoot'),
(2245, 0, 1, 0, 0, 0, 100, 0, 7000, 10000, 14000, 27000, 0, 0, 11, 6980, 1, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,     'Syndicate Saboteur - In Combat - Cast Fire Shot'),
(2245, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                       'Syndicate Saboteur - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2246, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 22766, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Syndicate Assassin - Out of Combat - Cast Sneak (No Repeat)'),
(2246, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7276, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Syndicate Assassin - On Reset - Cast Poison Proc'),
(2246, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                       'Syndicate Assassin - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2247, 0, 0, 0, 9, 0, 100, 0, 2000, 13000, 12000, 18000, 0, 5, 11, 17207, 66, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Syndicate Enforcer - Within 0-5 Range - Cast Whirlwind'),
(2247, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                       'Syndicate Enforcer - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(2254, 0, 0, 0, 4, 0, 10, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                          'Crushridge Mauler - On Aggro - Say Line 0'),
(2254, 0, 1, 0, 9, 0, 100, 0, 4100, 9300, 10200, 17900, 0, 5, 11, 11976, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Crushridge Mauler - Within 0-5 Range - Cast Strike'),
(2254, 0, 2, 0, 0, 0, 100, 0, 7400, 15800, 7600, 18700, 0, 0, 11, 6253, 1, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,       'Crushridge Mauler - Within 0-5 Range - Cast Backhand'),
(2254, 0, 3, 4, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 86, 8602, 2, 9, 2287, 0, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Crushridge Mauler - On Death - Cross Cast Enrage'),
(2254, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 9, 2287, 0, 30, 1, 0, 0, 0, 0,                    'Crushridge Mauler - On Death - Crushridge Warmonger Say Line 1'),
(2255, 0, 0, 0, 4, 0, 10, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                          'Crushridge Mage - On Aggro - Say Line 0'),
(2255, 0, 1, 0, 0, 0, 100, 0, 0, 0, 3500, 4800, 0, 0, 11, 9672, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Crushridge Mage - In Combat - Cast Frostbolt'),
(2255, 0, 2, 0, 0, 0, 100, 0, 5300, 7400, 11300, 21200, 0, 0, 11, 6742, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Crushridge Mage - In Combat - Cast Bloodlust'),
(2255, 0, 3, 4, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 86, 8602, 2, 9, 2287, 0, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Crushridge Mage - On Death - Cross Cast Enrage'),
(2255, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 9, 2287, 0, 30, 1, 0, 0, 0, 0,                    'Crushridge Mage - On Death - Crushridge Warmonger Say Line 1'),
(2256, 0, 0, 0, 4, 0, 10, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                          'Crushridge Enforcer - On Aggro - Say Line 0'),
(2256, 0, 1, 0, 0, 0, 100, 0, 6000, 9000, 18000, 24000, 0, 0, 11, 9791, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,       'Crushridge Enforcer - Within 0-5 Range - Cast Head Crack'),
(2256, 0, 2, 3, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 86, 8602, 2, 9, 2287, 0, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Crushridge Enforcer - On Death - Cross Cast Enrage'),
(2256, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 9, 2287, 0, 30, 1, 0, 0, 0, 0,                    'Crushridge Enforcer - On Death - Crushridge Warmonger Say Line 1'),
(2287, 0, 0, 0, 4, 0, 10, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                          'Crushridge Warmonger - On Aggro - Say Line 0 (No Repeat)'),
(2287, 0, 1, 0, 2, 0, 100, 1, 0, 50, 0, 0, 0, 0, 39, 15, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Crushridge Warmonger - Between 0-50% Health - Call For Help (No Repeat)'),
(2287, 0, 2, 3, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 86, 8602, 2, 9, 2287, 0, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Crushridge Warmonger - On Death - Cross Cast Enrage'),
(2287, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 9, 2287, 0, 30, 1, 0, 0, 0, 0,                    'Crushridge Warmonger - On Death - Crushridge Warmonger Say Line 1'),
--
(2271, 0, 0, 0, 106, 0, 50, 0, 4800, 18100, 4800, 18100, 0, 5, 11, 3260, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Dalaran Shield Guard - Within 0-5 Range - Cast Violet Shield Effect'),
(2271, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                       'Dalaran Shield Guard - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2272, 0, 0, 0, 0, 0, 100, 0, 0, 0, 3300, 6600, 0, 0, 11, 20819, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Dalaran Theurgist - In Combat - Cast Frostbolt'),
(2272, 0, 1, 0, 0, 0, 100, 0, 4000, 5300, 4600, 9900, 0, 0, 11, 3652, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Dalaran Theurgist - In Combat - Cast Summon Spirit of Old'),
(2272, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                       'Dalaran Theurgist - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2306, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 3000, 0, 0, 11, 20822, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Baron Vardus - In Combat - Cast Frostbolt'),
(2306, 0, 1, 0, 106, 0, 100, 0, 5000, 17600, 12200, 39800, 0, 10, 11, 11831, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Baron Vardus - In Combat - Cast Frost Nova'),
(2306, 0, 2, 0, 0, 0, 100, 0, 1000, 3000, 12500, 29800, 0, 0, 11, 6253, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,       'Baron Vardus - In Combat - Cast Backhand'),
(2306, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                       'Baron Vardus - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2415, 0, 0, 0, 0, 0, 100, 0, 0, 0, 3300, 4900, 0, 0, 11, 20823, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Warden Belamoore - In Combat - Cast Fireball'),
(2415, 0, 1, 0, 106, 0, 100, 0, 10300, 10300, 14900, 37400, 0, 10, 11, 20828, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Warden Belamoore - Within 0-10 Range - Cast Cone of Cold'),
(2415, 0, 2, 0, 0, 0, 100, 0, 7000, 13000, 6000, 16000, 0, 0, 11, 13323, 1, 0, 0, 0, 0, 6, 30, 1, 0, 0, 0, 0, 0, 0,     'Warden Belamoore - Within 0-30 Range - Cast Polymorph'),
(2415, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                       'Warden Belamoore - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(2417, 0, 0, 0, 4, 0, 10, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                          'Grel\'borg the Miser - On Aggro - Say Line 0 (No Repeat)'),
(2417, 0, 1, 0, 0, 0, 100, 0, 3000, 6000, 29000, 38000, 0, 0, 11, 6742, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Grel\'borg the Miser - In Combat - Cast Bloodlust'),
(2417, 0, 2, 0, 0, 0, 100, 0, 2000, 2000, 36000, 36000, 0, 0, 11, 4979, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Grel\'borg the Miser - In Combat - Cast Quick Flame Ward'),
(2417, 0, 3, 0, 0, 0, 100, 0, 10000, 19000, 10000, 23000, 0, 0, 11, 11990, 64, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,  'Grel\'borg the Miser - Within 0-30 Range - Cast Rain of Fire'),
(2420, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 7366, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Targ - Out of Combat - Cast Berserker Stance (No Repeat)'),
(2420, 0, 1, 0, 4, 0, 10, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                          'Targ - On Aggro - Say Line 0 (No Repeat)'),
(2420, 0, 2, 0, 9, 0, 100, 0, 4000, 16000, 6000, 19000, 0, 5, 11, 15496, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Targ - Within 0-5 Range - Cast Cleave'),
(2420, 0, 3, 0, 106, 0, 100, 0, 3000, 16000, 11000, 24000, 0, 10, 11, 8147, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Targ - Within 0-10 Range - Cast Thunderclap'),
(2421, 0, 0, 0, 0, 0, 100, 0, 7000, 13000, 11000, 26000, 0, 0, 11, 8379, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,      'Muckrake - Within 0-5 Range - Cast Disarm'),
(2421, 0, 1, 0, 105, 0, 100, 0, 6000, 15000, 13000, 16000, 0, 5, 11, 12555, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,   'Muckrake - Within 0-5 Range - Cast Pummel'),
(2422, 0, 0, 0, 4, 0, 10, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                          'Glommus - On Aggro - Say Line 0 (No Repeat)'),
(2422, 0, 1, 0, 0, 0, 100, 0, 1000, 1000, 1000, 9000, 0, 0, 11, 9128, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,        'Glommus - In Combat - Cast Battle Shout'),
(2422, 0, 2, 0, 106, 0, 100, 0, 5000, 11000, 14000, 35000, 0, 10, 11, 13730, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Glommus - Within 0-10 Range - Cast Demoralizing Shout'),
(2422, 0, 3, 0, 0, 0, 100, 0, 6000, 8000, 9000, 32000, 0, 0, 11, 11428, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,       'Glommus - Within 0-5 Range - Cast Knockdown'),
(2423, 0, 0, 0, 0, 0, 100, 0, 9000, 9000, 13300, 38300, 0, 0, 11, 11974, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Lord Aliden Perenolde - In Combat - Cast Power Word: Shield'),
(2423, 0, 1, 0, 2, 0, 100, 1, 0, 50, 14000, 19000, 0, 0, 11, 8362, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Lord Aliden Perenolde - Between 0-50% Health - Cast Renew'),
(2423, 0, 2, 0, 0, 0, 100, 0, 7000, 12000, 16000, 22000, 0, 0, 11, 8399, 1, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,     'Lord Aliden Perenolde - Within 0-30 Range - Cast Sleep'),
(2423, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                       'Lord Aliden Perenolde - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2453, 0, 0, 0, 0, 0, 100, 0, 3000, 5000, 30000, 35000, 0, 0, 11, 6742, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Lo Grosh - In Combat - Cast Bloodlust'),
(2453, 0, 1, 0, 0, 0, 100, 0, 1000, 3000, 35000, 38000, 0, 0, 11, 2601, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Lo Grosh - In Combat - Cast Fire Shield III'),
(2453, 0, 2, 0, 0, 0, 100, 0, 5000, 8000, 18000, 22000, 0, 0, 11, 8814, 64, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,     'Lo Grosh - In Combat - Cast Flame Spike');



-- Jailor Borhuin, 2431, should have multiple spawn locations 
-- https://www.youtube.com/watch?v=3fLlozCjyD0

-- Baron Vardus, 2306, should have multiple spawn locations 
-- https://www.youtube.com/watch?v=MgH-PCmxnUo - https://www.youtube.com/watch?v=ZLXbrYUfLtI - https://www.youtube.com/watch?v=Dk6V9prh2gk

DELETE FROM `creature` WHERE `id1` IN (2306, 2431);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, 
`wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
(16905, 2306, 0, 0, 0, 0, 0, 1, 1, 1, 1180.59, -555.904, 71.1468, 1.8822, 300, 0, 0, 1239, 3191, 0, 0, 0, 0, '', 0, 0, NULL),
(695010, 2306, 0, 0, 0, 0, 0, 1, 1, 1, 693.333, -905.125, 157.78, 2.69564, 300, 0, 0, 1239, 3191, 0, 0, 0, 0, '', NULL, 0, NULL),
(695011, 2306, 0, 0, 0, 0, 0, 1, 1, 1, 1107.99, -718.43, 71.5728, 1.84347, 300, 0, 0, 1239, 3191, 0, 0, 0, 0, '', NULL, 0, NULL),
(695012, 2306, 0, 0, 0, 0, 0, 1, 1, 1, 1001.61, -790.672, 108.606, 2.31075, 300, 0, 0, 1239, 3191, 0, 0, 0, 0, '', NULL, 0, NULL),
(17020, 2431, 0, 0, 0, 0, 0, 1, 1, 1, 689.462, -984.645, 165.695, 5.43263, 300, 0, 0, 1536, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(695014, 2431, 0, 0, 0, 0, 0, 1, 1, 1, 750.559, -971.896, 167.587, 1.60003, 300, 0, 0, 1537, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(695015, 2431, 0, 0, 0, 0, 0, 1, 1, 1, 679.818, -897.818, 171.806, 4.8398, 300, 0, 0, 1537, 0, 0, 0, 0, 0, '', NULL, 0, NULL);


DELETE FROM `pool_creature` WHERE `pool_entry` BETWEEN 601001 AND 601007;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
(16905,  601008, 0, 'Baron Vardus'),
(695010, 601008, 0, 'Baron Vardus'),
(695011, 601008, 0, 'Baron Vardus'),
(695012, 601008, 0, 'Baron Vardus'),
(17020,  601009, 0, 'Jailor Borhuin'),
(695014, 601009, 0, 'Jailor Borhuin'),
(695015, 601009, 0, 'Jailor Borhuin');

DELETE FROM `pool_template` WHERE `entry` IN (601008, 601009);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES 
(601008, 1, ''),
(601009, 1, '');

-- pooled solid chests, Strahnbrad, Alterac Mountains: 33193, 33206, 33207
-- solid chest missing upstairs in Dandred's Fold main building
