/* smart scripts */
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(8889, 8890, 8891, 8892, 8893, 8894, 8895, 8896, 8897, 8898, 8899, 8900, 8901, 8902, 8903, 8904, 8905, 8906, 8907, 8908, 8909, 8910, 8911, 8912, 8913, 8914, 8915, 8920, 8921, 8922, 8923, 
9017, 9024, 9025, 9026, 9034, 9035, 9036, 9038, 9040, 9041, 9042, 9056, 9319, 9437, 9438, 9439, 9441, 9442, 9443, 9543, 9545, 9547, 9956, 10043);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(8889, 8890, 8891, 8892, 8893, 8894, 8895, 8896, 8897, 8898, 8899, 8900, 8901, 8902, 8903, 8904, 8905, 8906, 8907, 8908, 8909, 8910, 8911, 8912, 8913, 8914, 8915, 8920, 8921, 8922, 8923, 
9017, 9024, 9025, 9026, 9034, 9035, 9036, 9038, 9040, 9041, 9042, 9056, 9319, 9437, 9438, 9439, 9441, 9442, 9443, 9543, 9545, 9547, 9956, 10043);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(8889, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 13589, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Anvilrage Overseer - On Reset - Cast Haste Aura'),
(8889, 0, 1, 0, 0, 0, 100, 0, 8000, 11000, 7000, 12000, 0, 0, 11, 15580, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Anvilrage Overseer - Within 0-5 Range - Cast Strike'),
(8889, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Anvilrage Overseer - Between 0-15% Health - Flee For Assist'),
(8890, 0, 0, 0, 9, 0, 100, 0, 0, 0, 13000, 18000, 0, 30, 11, 14030, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Anvilrage Warden - Within 0-30 Range - Cast Hooked Net'),
(8890, 0, 1, 0, 105, 0, 100, 0, 0, 0, 9000, 12000, 0, 5, 11, 11972, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,          'Anvilrage Warden - Target Casting - Cast Shield Bash'),
(8890, 0, 2, 0, 54, 0, 100, 512, 0, 0, 0, 0, 0, 0, 53, 1, 8912, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Anvilrage Warden - Just Summoned - Start Waypoint (React State Aggressive)'),
(8890, 0, 3, 0, 40, 0, 100, 0, 4, 8912, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 19, 9020, 0, 0, 0, 0, 0, 0, 0,               'Anvilrage Warden - On Waypoint 4 Reached - Start Attacking'),
(8890, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Anvilrage Warden - Between 0-15% Health - Flee For Assist'),
(8891, 0, 0, 0, 0, 0, 100, 0, 11000, 15000, 10000, 15000, 0, 0, 11, 12169, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Anvilrage Guardsman - In Combat - Cast Shield Block'),
(8891, 0, 1, 0, 0, 0, 100, 0, 4000, 9000, 9000, 14000, 0, 0, 11, 6713, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Anvilrage Guardsman - Within 0-5 Range - Cast Disarm'),
(8891, 0, 2, 0, 9, 0, 100, 0, 0, 0, 5000, 9000, 0, 5, 11, 11971, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Anvilrage Guardsman - Within 0-5 Range - Cast Sunder Armor'),
(8891, 0, 3, 0, 54, 0, 100, 512, 0, 0, 0, 0, 0, 0, 53, 1, 8912, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Anvilrage Guardsman - Just Summoned - Start Waypoint (React State Aggressive)'),
(8891, 0, 4, 0, 40, 0, 100, 0, 4, 8912, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 19, 9020, 0, 0, 0, 0, 0, 0, 0,               'Anvilrage Guardsman - On Waypoint 4 Reached - Start Attacking'),
(8891, 0, 5, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Anvilrage Guardsman - Between 0-15% Health - Flee For Assist'),
(8892, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 674, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Anvilrage Footman - On Aggro - Cast Dual Wield'),
(8892, 0, 1, 0, 0, 0, 100, 0, 3000, 5000, 5000, 8000, 0, 0, 11, 15580, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Anvilrage Footman - Within 0-5 Range - Cast Strike'),
(8892, 0, 2, 0, 105, 0, 100, 0, 0, 0, 8000, 12000, 0, 5, 11, 15614, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,          'Anvilrage Footman - Target Casting - Cast Kick'),
(8892, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Anvilrage Footman - Between 0-15% Health - Flee For Assist'),
(8893, 0, 0, 0, 0, 0, 100, 0, 4000, 8000, 6000, 10000, 0, 0, 11, 15284, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Anvilrage Soldier - Within 0-5 Range - Cast Cleave'),
(8893, 0, 1, 0, 9, 0, 100, 0, 0, 0, 11000, 16000, 0, 5, 11, 9080, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Anvilrage Soldier - Within 0-5 Range - Cast Hamstring'),
(8893, 0, 2, 0, 2, 0, 100, 0, 0, 30, 30000, 31000, 0, 0, 11, 13847, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Anvilrage Soldier - Between 0-30% Health - Cast Recklessness'),
(8894, 0, 0, 0, 16, 0, 100, 0, 13864, 1, 1000, 2000, 0, 0, 11, 13864, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,        'Anvilrage Medic - On Friendly Unit Missing Buff Power Word: Fortitude - Cast Power Word: Fortitude'),
(8894, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 3000, 0, 0, 11, 15587, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Anvilrage Medic - In Combat - Cast Mind Blast'),
(8894, 0, 2, 0, 0, 0, 100, 0, 7000, 11000, 6000, 9000, 0, 0, 11, 15585, 64, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Anvilrage Medic - In Combat - Cast Prayer of Healing'),
(8894, 0, 3, 0, 14, 0, 100, 0, 2500, 40, 4000, 6000, 0, 0, 11, 15586, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,        'Anvilrage Medic - Friendly Missing 2500 Health - Cast Heal'),
(8894, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Anvilrage Medic - Between 0-15% Health - Flee For Assist'),
(8895, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 9128, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Anvilrage Officer - On Aggro - Cast Battle Shout'),
(8895, 0, 1, 0, 9, 0, 100, 0, 0, 0, 9000, 15000, 0, 5, 11, 6253, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Anvilrage Officer - Within 0-5 Range - Cast Backhand'),
(8895, 0, 2, 0, 14, 0, 100, 0, 3000, 40, 6000, 10000, 0, 0, 11, 13952, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,       'Anvilrage Officer - Friendly Missing 3000 Health - Cast Holy Light'),
(8895, 0, 3, 0, 2, 0, 100, 0, 0, 30, 21000, 28000, 0, 0, 11, 13874, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Anvilrage Officer - Between 0-30% Health - Cast Divine Shield'),
(8895, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Anvilrage Officer - Between 0-15% Health - Flee For Assist'),
(8896, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Shadowforge Peasant - Outside 30 Range - Start Combat Movement'),
(8896, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Shadowforge Peasant - Within 5-30 Range - Stop Combat Movement'),
(8896, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Shadowforge Peasant - Within 0-5 Range - Start Combat Movement'),
(8896, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Shadowforge Peasant - Within 5-30 Range - Cast Shoot'),
(8896, 0, 4, 0, 0, 0, 100, 0, 7000, 12000, 10000, 16000, 0, 0, 11, 7978, 64, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 0,  'Shadowforge Peasant - Within 0-30 Range - Cast Throw Dynamite'),
(8896, 0, 5, 0, 0, 0, 100, 0, 7000, 12000, 7000, 10000, 0, 0, 11, 9053, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Shadowforge Peasant - Within 0-30 Range - Cast Fireball'),
(8896, 0, 6, 0, 0, 0, 10, 0, 7000, 12000, 120000, 120000, 0, 0, 11, 6713, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,  'Shadowforge Peasant - Within 0-5 Range - Cast Disarm'),
(8896, 0, 7, 0, 0, 0, 100, 0, 3000, 20000, 10000, 20000, 0, 0, 11, 13584, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Shadowforge Peasant - Within 0-5 Range - Cast Strike'),
(8896, 0, 8, 0, 0, 0, 10, 0, 5000, 10000, 120000, 120000, 0, 0, 11, 3604, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,  'Shadowforge Peasant - Within 0-5 Range - Cast Tendon Rip'),
(8896, 0, 9, 0, 74, 0, 100, 0, 0, 00, 20000, 25000, 50, 40, 11, 11642, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,       'Shadowforge Peasant - Friendly Between 0-50% Health - Cast Heal'),
(8896, 0, 10, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Shadowforge Peasant - Between 0-15% Health - Flee For Assist'),
(8897, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Doomforge Craftsman - Outside 30 Range - Start Combat Movement'),
(8897, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Doomforge Craftsman - Within 5-30 Range - Stop Combat Movement'),
(8897, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Doomforge Craftsman - Within 0-5 Range - Start Combat Movement'),
(8897, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 9143, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Doomforge Craftsman - In Combat - Cast Bomb'),
(8897, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Doomforge Craftsman - Between 0-15% Health - Flee For Assist (No Repeat)'),
(8898, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8258, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Anvilrage Marshal - On Aggro - Cast Devotion Aura'),
(8898, 0, 1, 0, 9, 0, 100, 0, 0, 0, 6000, 8000, 0, 5, 11, 13953, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Anvilrage Marshal - Within 0-5 Range - Cast Holy Strike'),
(8898, 0, 2, 0, 14, 0, 100, 0, 3000, 40, 3000, 6000, 0, 0, 11, 15493, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,        'Anvilrage Marshal - Friendly Missing 3000 Health - Cast Holy Light'),
(8898, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Anvilrage Marshal - Between 0-15% Health - Flee For Assist (No Repeat)'),
(8899, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Doomforge Dragoon - Outside 30 Range - Start Combat Movement'),
(8899, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Doomforge Dragoon - Within 5-30 Range - Stop Combat Movement'),
(8899, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Doomforge Dragoon - Within 0-5 Range - Start Combat Movement'),
(8899, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 15620, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Doomforge Dragoon - Within 5-30 Range - Cast Shoot'),
(8899, 0, 4, 0, 9, 0, 100, 0, 0, 0, 10000, 20000, 5, 30, 11, 15495, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Doomforge Dragoon - Within 5-30 Range - Cast Explosive Shot'),
(8899, 0, 5, 0, 9, 0, 100, 0, 0, 0, 8000, 12000, 0, 5, 11, 15496, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Doomforge Dragoon - Within 0-5 Range - Cast Cleave'),
(8899, 0, 6, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Doomforge Dragoon - Between 0-15% Health - Flee For Assist (No Repeat)'),
(8900, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 13748, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Doomforge Arcanasmith - In Combat - Cast Arcane Bolt'),
(8900, 0, 1, 0, 106, 0, 100, 0, 0, 0, 10000, 20000, 0, 8, 11, 13745, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Doomforge Arcanasmith - Within 0-8 Range - Cast Arcane Explosion'),
(8900, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Doomforge Arcanasmith - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(8901, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Anvilrage Reservist - Outside 30 Range - Start Combat Movement'),
(8901, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Anvilrage Reservist - Within 5-30 Range - Stop Combat Movement'),
(8901, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Anvilrage Reservist - Within 0-5 Range - Start Combat Movement'),
(8901, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Anvilrage Reservist - Within 5-30 Range - Cast Shoot'),
(8901, 0, 4, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 9128, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Anvilrage Reservist - On Aggro - Cast Battle Shout'),
(8901, 0, 5, 0, 0, 0, 100, 0, 4000, 6000, 12000, 15000, 0, 0, 11, 9080, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Anvilrage Reservist - Within 0-5 Range - Cast Hamstring'),
(8901, 0, 6, 0, 0, 0, 100, 0, 8000, 11000, 6000, 9000, 0, 0, 11, 11976, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Anvilrage Reservist - Within 0-5 Range - Cast Strike'),
(8902, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Shadowforge Citizen - Outside 30 Range - Start Combat Movement'),
(8902, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Shadowforge Citizen - Within 5-30 Range - Stop Combat Movement'),
(8902, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Shadowforge Citizen - Within 0-5 Range - Start Combat Movement'),
(8902, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 15547, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Shadowforge Citizen - Within 5-30 Range - Cast Shoot'),
(8902, 0, 4, 0, 9, 0, 100, 0, 0, 0, 5000, 15000, 0, 5, 11, 40505, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Shadowforge Citizen - In Combat - Cast Cleave'),
(8902, 0, 5, 0, 0, 0, 100, 0, 10000, 15000, 15000, 30000, 0, 0, 11, 13446, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,  'Shadowforge Citizen - In Combat - Cast Strike'),
(8902, 0, 6, 0, 0, 0, 100, 0, 5000, 8000, 7000, 11000, 0, 0, 11, 13444, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Shadowforge Citizen - In Combat - Cast Sunder Armor'),
(8902, 0, 7, 0, 106, 0, 100, 0, 0, 0, 15000, 18000, 0, 8, 11, 11831, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Shadowforge Citizen - Within 0-8 Range - Cast Frost Nova'),
(8902, 0, 8, 0, 0, 0, 100, 0, 5000, 8000, 7000, 12000, 0, 0, 11, 9613, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Shadowforge Citizen - In Combat - Cast Shadow Bolt'),
(8902, 0, 9, 0, 0, 0, 100, 0, 7000, 14000, 7000, 14000, 0, 0, 11, 13339, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Shadowforge Citizen - In Combat - Cast Fire Blast'),
(8902, 0, 10, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Shadowforge Citizen - Between 0-15% Health - Flee For Assist (No Repeat)'),
(8903, 0, 0, 0, 0, 0, 100, 0, 5000, 8000, 9000, 13000, 0, 0, 11, 13737, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Anvilrage Captain - Within 0-5 Range - Cast Mortal Strike'),
(8903, 0, 1, 0, 105, 0, 100, 0, 0, 0, 9000, 12000, 0, 5, 11, 11972, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,          'Anvilrage Captain - Target Casting - Cast Shield Bash'),
(8903, 0, 2, 0, 0, 0, 100, 0, 2000, 4000, 7000, 11000, 0, 0, 11, 12169, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Anvilrage Captain - In Combat - Cast Shield Block'),
(8903, 0, 3, 0, 9, 0, 100, 0, 0, 0, 14000, 20000, 0, 8, 11, 13730, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Anvilrage Captain - Within 0-8 Range - Cast Demoralizing Shout'),
(8903, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Anvilrage Captain - Between 0-15% Health - Flee For Assist (No Repeat)'),
(8904, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Shadowforge Senator - Outside 30 Range - Start Combat Movement'),
(8904, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Shadowforge Senator - Within 5-30 Range - Stop Combat Movement'),
(8904, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Shadowforge Senator - Within 0-5 Range - Start Combat Movement'),
(8904, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 15547, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Shadowforge Senator - Within 5-30 Range - Cast Shoot'),
(8904, 0, 4, 0, 0, 0, 100, 0, 0, 0, 3000, 10000, 0, 0, 11, 14034, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Shadowforge Senator - In Combat - Cast Fireball'),
(8904, 0, 5, 0, 16, 0, 100, 0, 2601, 1, 15000, 19000, 0, 0, 11, 2601, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,        'Shadowforge Senator - On Friendly  Missing Buff - Cast Fire Shield III'),
(8904, 0, 6, 0, 0, 0, 100, 0, 0, 0, 3000, 10000, 0, 0, 11, 12471, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Shadowforge Senator - In Combat - Cast Shadow Bolt'),
(8904, 0, 7, 0, 0, 0, 100, 0, 5000, 10000, 7000, 15000, 0, 0, 11, 14868, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Shadowforge Senator - In Combat - Cast Curse of Agony'),
(8904, 0, 8, 0, 106, 0, 100, 0, 0, 0, 15000, 18000, 0, 8, 11, 11831, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Shadowforge Senator - Within 0-8 Range - Cast Frost Nova'),
(8904, 0, 9, 0, 0, 0, 100, 0, 5000, 10000, 10000, 20000, 0, 0, 11, 11436, 32, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,  'Shadowforge Senator - In Combat - Cast Slow'),
(8904, 0, 10, 0, 0, 0, 100, 0, 0, 0, 3000, 10000, 0, 0, 11, 15498, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Shadowforge Senator - In Combat - Cast Holy Smite'),
(8904, 0, 11, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Shadowforge Senator - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(8905, 0, 0, 0, 38, 0, 100, 0, 0, 1, 0, 0, 0, 0, 63, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Warbringer Construct - On data set - Increment Counter 1'),
(8905, 0, 1, 2, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Warbringer Construct - On Respawn - Set passif'),
(8905, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 18, 33554432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Warbringer Construct - On Respawn - Add unit_flag'),
(8905, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Warbringer Construct - On Respawn - SET PHASE EVENT 0'),
(8905, 0, 4, 0, 77, 0, 100, 1, 1, 12, 0, 0, 0, 0, 80, 890500, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Warbringer Construct - On counter1=12 - Actionlist'),
(8905, 0, 5, 0, 0, 0, 100, 0, 4000, 4000, 8000, 8000, 0, 0, 11, 15621, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Warbringer Construct - Within 0-5 Range - Cast Skull Crack'),
(8906, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 15088, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Ragereaver Golem - On Respawn - Cast Flurry'),
(8906, 0, 1, 2, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 12795, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Ragereaver Golem - Between 0-30% Health - Cast Frenzy (No Repeat)'),
(8906, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Ragereaver Golem - On Frenzy - Say Line 0'),
(8907, 0, 0, 0, 0, 0, 100, 0, 1000, 1000, 6000, 9000, 0, 0, 11, 15575, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,       'Wrath Hammer Construct - In Combat - Cast Flame Cannon'),
(8907, 0, 1, 0, 0, 0, 100, 0, 5000, 15000, 5000, 15000, 0, 0, 11, 10966, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 0,   'Wrath Hammer Construct - Within 0-10 Range - Cast Uppercut'),
(8908, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 15506, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Molten War Golem - In Combat - Cast Immolate Proc'),
--
(8909, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 15242, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Fireguard - In Combat - Cast Fireball'),
(8910, 0, 0, 0, 0, 0, 100, 0, 3000, 6000, 6000, 12000, 0, 0, 11, 13341, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Blazing Fireguard - In Combat - Cast Fire Blast'),
(8910, 0, 1, 0, 0, 0, 100, 0, 9000, 11000, 11000, 18000, 0, 0, 11, 12742, 64, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,  'Blazing Fireguard - In Combat - Cast Immolate'),
(8910, 0, 2, 0, 0, 0, 100, 0, 5000, 5000, 3000, 6000, 0, 0, 11, 15241, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Blazing Fireguard - In Combat - Cast Scorch'),
(8911, 0, 0, 0, 0, 0, 100, 0, 5000, 10000, 15000, 20000, 0, 30, 11, 15285, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Fireguard Destroyer - In Combat - Cast Fireball Volley'),
(8911, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3417, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Fireguard Destroyer - On Reset - Cast Thrash'),
--
(8912, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 13616, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Twilights Hammer Torturer - On Respawn - Cast Wracking Pains Proc'),
(8912, 0, 1, 0, 0, 0, 100, 0, 5000, 11000, 21000, 33000, 0, 0, 11, 14032, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Twilights Hammer Torturer - In Combat - Cast Shadow Word: Pain'),
(8912, 0, 2, 0, 54, 0, 100, 512, 0, 0, 0, 0, 0, 0, 53, 1, 8912, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Twilights Hammer Torturer - Just Summoned - Start Waypoint (React State Aggressive)'),
(8912, 0, 3, 0, 40, 0, 100, 0, 4, 8912, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 19, 9020, 0, 0, 0, 0, 0, 0, 0,               'Twilights Hammer Torturer - On Waypoint 4 Reached - Start Attacking'),
(8912, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Twilights Hammer Torturer - Between 0-15% Health - Flee For Assist (No Repeat)'),
(8913, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 31, 1, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Twilight Emissary - On Respawn - Set Phase Random Between 1-3'),
(8913, 0, 1, 0, 1, 1, 100, 0, 1000, 1000, 90000, 90000, 0, 0, 11, 15288, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Twilight Emissary - Out of Combat - Cast Fury of Ragnaros (Phase 1)'),
(8913, 0, 2, 0, 0, 1, 100, 0, 0, 0, 3000, 5000, 0, 0, 11, 12466, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Twilight Emissary - In Combat - Cast Fireball (Phase 1)'),
(8913, 0, 3, 0, 0, 2, 100, 0, 0, 0, 3000, 5000, 0, 0, 11, 15043, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Twilight Emissary - In Combat - Cast Frostbolt (Phase 2)'),
(8913, 0, 4, 0, 106, 2, 100, 0, 0, 0, 15000, 30000, 0, 8, 11, 15063, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Twilight Emissary - Within 0-8 Range - Cast Frost Nova (Phase 2)'),
(8913, 0, 5, 0, 1, 2, 100, 0, 1000, 1000, 90000, 90000, 0, 0, 11, 12544, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Twilight Emissary - Out of Combat - Cast Frost Armor (Phase 2)'),
(8913, 0, 6, 0, 0, 4, 100, 0, 0, 0, 2000, 4000, 0, 0, 11, 13748, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Twilight Emissary - In Combat - Cast Arcane Bolt (Phase 3)'),
(8913, 0, 7, 0, 106, 4, 100, 0, 0, 0, 10000, 30000, 0, 8, 11, 13745, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Twilight Emissary - Within 0-8 Range - Cast Arcane Explosion (Phase 3)'),
(8913, 0, 8, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Twilight Emissary - Between 0-15% Health - Flee For Assist (No Repeat)'),
(8914, 0, 0, 0, 105, 0, 100, 0, 0, 0, 4000, 8000, 0, 5, 11, 15615, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,           'Twilight Bodyguard - Target Casting - Cast Pummel'),
(8914, 0, 1, 0, 0, 0, 100, 0, 16000, 16000, 14000, 14000, 0, 0, 11, 13902, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 0, 'Twilight Bodyguard - Within 0-10 Range - Cast Fist of Ragnaros'),
(8914, 0, 2, 0, 14, 0, 100, 0, 3500, 40, 31000, 33000, 0, 0, 11, 13903, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,      'Twilight Bodyguard - Friendly Missing 3500 Health - Cast Seal of Sacrifice'),
(8914, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Twilight Bodyguard - Between 0-15% Health - Flee For Assist (No Repeat)'),
(8915, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 31, 1, 4, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Twilights Hammer Ambassador - On Respawn - Set Phase Random Between 1-4'), -- test!
(8915, 0, 1, 0, 105, 1, 100, 0, 0, 0, 1000, 7000, 0, 20, 11, 15501, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,          'Twilights Hammer Ambassador - Target Casting - Cast Earth Shock (Phase 1)'),
(8915, 0, 2, 0, 0, 1, 100, 0, 0, 0, 12000, 16000, 0, 0, 11, 11980, 32, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 0,        'Twilights Hammer Ambassador - In Combat - Cast Curse of Weakness (Phase 1)'),
(8915, 0, 3, 0, 0, 2, 100, 0, 5000, 8000, 30000, 45000, 0, 0, 11, 15499, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Twilights Hammer Ambassador - In Combat - Cast Frost Shock (Phase 2)'),
(8915, 0, 4, 0, 1, 2, 100, 0, 1000, 1000, 90000, 90000, 0, 0, 11, 12544, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Twilights Hammer Ambassador - Out of Combat - Cast Frost Armor (Phase 2)'),
(8915, 0, 5, 0, 0, 4, 100, 0, 5000, 8000, 30000, 45000, 0, 0, 11, 15096, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Twilights Hammer Ambassador - In Combat - Cast Flame Shock (Phase 3)'),
(8915, 0, 6, 0, 14, 4, 100, 0, 1300, 40, 10000, 18000, 0, 0, 11, 6742, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,       'Twilights Hammer Ambassador - Friendly Missing 1300 Health - Cast Bloodlust (Phase 3)'),
(8915, 0, 7, 0, 0, 8, 100, 0, 5000, 8000, 30000, 45000, 0, 0, 11, 15500, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Twilights Hammer Ambassador - In Combat - Cast Shock (Phase 4)'),
(8915, 0, 8, 0, 0, 8, 100, 0, 6000, 10000, 7000, 14000, 0, 0, 11, 12248, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Twilights Hammer Ambassador - In Combat - Cast Amplify Damage (Phase 4)'),
(8915, 0, 9, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Twilights Hammer Ambassador - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(8920, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 31, 1, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Weapon Technician - On Respawn - Set Phase Random Between 1-3'), -- test!
(8920, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Weapon Technician - Outside 30 Range - Start Combat Movement'),
(8920, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Weapon Technician - Within 5-30 Range - Stop Combat Movement'),
(8920, 0, 3, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Weapon Technician - Within 0-5 Range - Start Combat Movement'),
(8920, 0, 4, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Weapon Technician - Within 5-30 Range - Cast Shoot'),
(8920, 0, 5, 0, 9, 1, 100, 0, 0, 0, 10000, 13000, 5, 30, 11, 7896, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Weapon Technician - Within 5-30 Range - Cast Exploding Shot'),
(8920, 0, 6, 0, 9, 2, 100, 0, 0, 0, 10000, 13000, 5, 30, 11, 12551, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Weapon Technician - Within 5-30 Range - Cast Frost Shot'),
(8920, 0, 7, 0, 0, 4, 100, 0, 0, 0, 10000, 13000, 5, 30, 11, 14443, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Weapon Technician - Within 5-30 Range - Cast Multi-Shot'),
(8920, 0, 8, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Weapon Technician - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(8921, 0, 0, 0, 0, 0, 100, 0, 5000, 8000, 17000, 20000, 0, 0, 11, 13692, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Bloodhound - Within 0-5 Range - Cast Dire Growl'),
(8921, 0, 1, 0, 9, 0, 100, 0, 0, 0, 7000, 11000, 0, 5, 11, 13445, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Bloodhound - Within 0-5 Range - Cast Rend'),
(8921, 0, 2, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8279, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Bloodhound - On Respawn - Cast Stealth Detection'),
(8922, 0, 0, 0, 0, 0, 100, 0, 5000, 5000, 2000, 12000, 0, 0, 11, 7140, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Bloodhound Mastiff - Within 0-5 Range - Cast Expose Weakness'),
(8922, 0, 1, 0, 0, 0, 100, 0, 8000, 11000, 9000, 12000, 0, 0, 11, 15608, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Bloodhound Mastiff - Within 0-5 Range - Cast Ravenous Claw'),
(8922, 0, 2, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8279, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Bloodhound Mastiff - On Respawn - Cast Stealth Detection'),
--
(8923, 0, 0, 0, 37, 0, 85, 2, 0, 0, 0, 0, 0, 0, 41, 500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Panzor the Invincible - On AI initialize - Despawn (Normal Dungeon)'),
(8923, 0, 1, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 9941, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Panzor the Invincible - Out of Combat - Cast Spell Reflection (No Repeat)'),
(9017, 0, 0, 0, 0, 0, 100, 0, 1000, 5000, 20000, 28000, 0, 0, 11, 26977, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Lord Incendius - In Combat - Cast Curse of the Elemental Lord'),
(9017, 0, 1, 0, 0, 0, 100, 0, 6000, 11000, 9000, 16000, 0, 0, 11, 13900, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Lord Incendius - In Combat - Cast Fiery Burst'),
(9017, 0, 2, 0, 0, 0, 100, 0, 12000, 16000, 11000, 14000, 0, 0, 11, 13899, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Lord Incendius - In Combat - Cast Fire Storm'),
(9017, 0, 3, 0, 0, 0, 100, 0, 9000, 17000, 18000, 24000, 0, 0, 11, 14099, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 0,  'Lord Incendius - Within 0-10 Range - Cast Mighty Blow'),
(9017, 0, 4, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Lord Incendius - On Just Died - Say Line 0'),
(9024, 0, 0, 0, 0, 0, 100, 0, 6000, 11000, 12000, 19000, 0, 0, 11, 15616, 0, 0, 0, 0, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0,   'Pyromancer Loregrain - Within 0-20 Range - Cast Flame Shock'),
(9024, 0, 1, 0, 0, 0, 100, 0, 4000, 6000, 7000, 11000, 0, 0, 11, 15095, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Pyromancer Loregrain - In Combat - Cast Molten Blast'),
(9024, 0, 2, 0, 0, 0, 100, 0, 2000, 2000, 25000, 25000, 0, 0, 11, 15038, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Pyromancer Loregrain - In Combat - Cast Scorching Totem'),
(9024, 0, 3, 0, 0, 0, 100, 0, 2000, 7000, 30000, 45000, 0, 0, 11, 15041, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Pyromancer Loregrain - In Combat - Cast Fire Ward'),
(9025, 0, 0, 0, 0, 0, 100, 0, 5000, 8000, 13000, 18000, 0, 0, 11, 13729, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Lord Roccor - In Combat - Cast Flame Shock'),
(9025, 0, 1, 0, 0, 0, 100, 0, 7000, 11000, 9000, 14000, 0, 0, 11, 13728, 0, 0, 0, 0, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0,    'Lord Roccor - Within 0-20 Range - Cast Earth Shock'),
(9025, 0, 2, 0, 9, 0, 100, 0, 0, 0, 9000, 14000, 0, 10, 11, 6524, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Lord Roccor - Within 0-10 Range - Cast Ground Tremor'),
(9026, 0, 0, 0, 9, 0, 100, 0, 0, 0, 10000, 15000, 0, 8, 11, 12470, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Overmaster Pyron - Within 0-8 Range - Cast Fire Nova'),
(9026, 0, 1, 0, 9, 0, 100, 0, 0, 0, 6000, 12000, 0, 20, 11, 13341, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Overmaster Pyron - Within 0-20 Range - Cast Fire Blast'),
(9026, 0, 2, 0, 6, 0, 100, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                        'Overmaster Pyron - On Just Died - Say Line 0'),
--
(9034, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 15232, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Hate\'rel - In Combat - Cast Shadow Bolt'),
(9034, 0, 1, 0, 9, 0, 100, 0, 0, 0, 5000, 7000, 0, 5, 11, 15580, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Hate\'rel - Within 0-5 Range - Cast Strike'),
(9034, 0, 2, 0, 0, 0, 100, 0, 9000, 14000, 40000, 48000, 0, 0, 11, 12040, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Hate\'rel - In Combat - Cast Shadow Shield'),
(9034, 0, 3, 0, 9, 0, 100, 0, 0, 0, 15000, 20000, 0, 30, 11, 14033, 321, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Hate\'rel - In Combat - Cast Mana Burn'),
(9034, 0, 4, 0, 0, 0, 100, 2, 5000, 5000, 5000, 5000, 0, 0, 38, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Hate\'rel - In Combat - In Combat with Zone (Normal Dungeon)'),
(9035, 0, 0, 0, 0, 0, 100, 0, 5000, 7000, 5000, 7000, 0, 0, 11, 15580, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Anger\'rel - Within 0-5 Range - Cast Strike'),
(9035, 0, 1, 0, 9, 0, 100, 0, 0, 0, 5000, 9000, 0, 5, 11, 11971, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Anger\'rel - Within 0-5 Range - Cast Sunder Armor'),
(9035, 0, 2, 0, 0, 0, 100, 0, 11000, 15000, 10000, 15000, 0, 0, 11, 12169, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Anger\'rel - In Combat - Cast Shield Block'),
(9035, 0, 3, 0, 0, 0, 100, 0, 1000, 3000, 20000, 26000, 0, 0, 11, 15062, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Anger\'rel - In Combat - Cast Shield Wall'),
(9035, 0, 4, 0, 0, 0, 100, 2, 5000, 5000, 5000, 5000, 0, 0, 38, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Anger\'rel - In Combat - In Combat with Zone (Normal Dungeon)'),
(9036, 0, 0, 0, 0, 0, 100, 0, 0, 0, 3400, 4800, 0, 0, 11, 15587, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Vile\'rel - In Combat - Cast Mind Blast'),
(9036, 0, 1, 0, 0, 0, 100, 0, 2000, 3000, 60000, 120000, 0, 0, 11, 11974, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Vile\'rel - In Combat - Cast Power Word: Shield'), -- https://www.youtube.com/watch?v=QoEwUz7Bdq8
(9036, 0, 2, 0, 0, 0, 100, 0, 15000, 20000, 15000, 20000, 0, 0, 11, 15585, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Vile\'rel - In Combat - Cast Prayer of Healing'),
(9036, 0, 3, 0, 2, 0, 100, 0, 0, 50, 16000, 20000, 0, 0, 11, 15586, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Vile\'rel - Between 0-50% Health - Cast Heal'),
(9036, 0, 4, 0, 0, 0, 100, 2, 5000, 5000, 5000, 5000, 0, 0, 38, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Vile\'rel - In Combat - In Combat with Zone (Normal Dungeon)'),
(9038, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 900000, 900000, 0, 0, 11, 12544, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Seeth\'rel - Out of Combat - Cast Frost Armor'),
(9038, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 12675, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Seeth\'rel - In Combat - Cast Frostbolt'),
(9038, 0, 2, 0, 0, 0, 100, 0, 9000, 14000, 19000, 24000, 0, 0, 11, 15244, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Seeth\'rel - In Combat - Cast Cone of Cold'),
(9038, 0, 3, 0, 106, 0, 100, 0, 0, 0, 20000, 23000, 0, 8, 11, 12674, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Seeth\'rel - Within 0-8 Range - Cast Frost Nova'),
(9038, 0, 4, 0, 0, 0, 100, 0, 3000, 5000, 64000, 75000, 0, 0, 11, 15044, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Seeth\'rel - In Combat - Cast Frost Ward'),
(9038, 0, 5, 0, 0, 0, 100, 2, 5000, 5000, 5000, 5000, 0, 0, 38, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Seeth\'rel - In Combat - In Combat with Zone'),
(9040, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 22766, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Dope\'rel - Out of Combat - Cast Sneak (No Repeat)'),
(9040, 0, 1, 0, 0, 0, 100, 0, 5000, 7000, 6000, 9000, 0, 0, 11, 15581, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Dope\'rel - Within 0-5 Range - Cast Sinister Strike'),
(9040, 0, 2, 0, 9, 0, 100, 0, 0, 0, 12000, 16000, 0, 5, 11, 15583, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Dope\'rel - Within 0-5 Range - Cast Rupture'),
(9040, 0, 3, 0, 0, 0, 100, 0, 8000, 12000, 12000, 17000, 0, 0, 11, 12540, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,    'Dope\'rel - Within 0-5 Range - Cast Gouge'),
(9040, 0, 4, 0, 0, 0, 100, 0, 1000, 5000, 25000, 35000, 0, 0, 11, 15087, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Dope\'rel - In Combat - Cast Evasion'),
(9040, 0, 5, 0, 67, 0, 100, 0, 3000, 7000, 5000, 9000, 0, 5, 11, 15582, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Dope\'rel - Behind Target - Cast Backstab'),
(9040, 0, 6, 0, 0, 0, 100, 2, 5000, 5000, 5000, 5000, 0, 0, 38, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Dope\'rel - In Combat - In Combat with Zone'),
--
(9041, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 900000, 900000, 0, 0, 11, 12544, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Warder Stilgiss - Out of Combat - Cast Frost Armor'),
(9041, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 12675, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Warder Stilgiss - In Combat - Cast Frostbolt'),
(9041, 0, 2, 0, 106, 0, 100, 0, 0, 0, 14000, 18000, 0, 8, 11, 12674, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Warder Stilgiss - Within 0-8 Range - Cast Frost Nova'),
(9041, 0, 3, 0, 0, 0, 100, 0, 3000, 4000, 65000, 70000, 0, 0, 11, 15044, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Warder Stilgiss - Cast Frost Ward'),
(9041, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Warder Stilgiss - Between 0-15% Health - Flee For Assist (No Repeat)'),
(9042, 0, 0, 0, 9, 0, 100, 0, 0, 0, 20000, 45000, 0, 20, 11, 15042, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Verek - In Combat - Cast Curse of Blood'),
(9042, 0, 1, 2, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Verek - Between 0-30% Health - Cast Enrage (No Repeat)'),
(9042, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Verek - On Enrage - Say Line 0'),
--
(9056, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 240000, 240000, 0, 0, 11, 8258, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Fineous Darkvire - Out of Combat - Cast Devotion Aura'),
(9056, 0, 1, 0, 2, 0, 100, 1, 0, 60, 0, 0, 0, 0, 11, 15493, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Fineous Darkvire - Between 0-60% Health - Cast Holy Light (No Repeat)'),
(9056, 0, 2, 0, 2, 0, 100, 1, 0, 40, 0, 0, 0, 0, 11, 15493, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Fineous Darkvire - Between 0-40% Health - Cast Holy Light (No Repeat)'),
(9056, 0, 3, 0, 9, 0, 100, 0, 0, 0, 6000, 8500, 0, 5, 11, 13953, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Fineous Darkvire - Within 0-5 Range - Cast Holy Strike'),
(9056, 0, 4, 0, 105, 0, 100, 0, 0, 0, 11000, 15000, 0, 5, 11, 11978, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,         'Fineous Darkvire - Target Casting - Cast Kick'),
(9056, 0, 5, 0, 2, 0, 100, 1, 0, 20, 0, 0, 0, 0, 11, 15346, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Fineous Darkvire - Between 0-20% Health - Cast Seal of Reckoning (No Repeat)'),
--
(9319, 0, 0, 0, 0, 0, 100, 0, 9000, 10000, 15000, 60000, 0, 0, 11, 13730, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Houndmaster Grebmar - In Combat - Cast Demoralizing Shout'),
(9319, 0, 1, 0, 105, 0, 100, 0, 0, 0, 7000, 25000, 0, 5, 11, 15615, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,          'Houndmaster Grebmar - Target Casting - Cast Pummel'),
(9319, 0, 2, 0, 0, 0, 100, 0, 4000, 12000, 4000, 12000, 0, 0, 11, 21049, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Houndmaster Grebmar - In Combat - Cast Bloodlust'), -- https://www.youtube.com/watch?v=RdBpOWNqZeg
(9319, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Houndmaster Grebmar - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(9437, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 15234, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Dark Keeper Vorfalk - In Combat - Cast Lightning Bolt'),
(9437, 0, 1, 0, 0, 0, 100, 0, 6000, 9000, 7000, 10000, 0, 0, 11, 15306, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Dark Keeper Vorfalk - In Combat - Cast Shock'),
(9438, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 15228, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Dark Keeper Bethek - In Combat - Cast Fireball'),
(9438, 0, 1, 0, 0, 0, 100, 0, 3000, 5000, 15000, 20000, 0, 0, 11, 12738, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Dark Keeper Bethek - In Combat - Cast Amplify Damage'),
(9439, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 15232, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Dark Keeper Uggel - In Combat - Cast Shadow Bolt'),
(9439, 0, 1, 0, 0, 0, 100, 0, 5000, 7000, 12000, 18000, 0, 0, 11, 14875, 33, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,   'Dark Keeper Uggel - In Combat - Cast Curse of Agony'),
(9441, 0, 0, 0, 0, 0, 100, 0, 9000, 14000, 40000, 55000, 0, 0, 11, 17139, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Dark Keeper Zimrel - In Combat - Cast Power Word: Shield'),
(9441, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 15238, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Dark Keeper Zimrel - In Combat - Cast Holy Smite'),
(9442, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 15230, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Dark Keeper Ofgut - In Combat - Cast Arcane Bolt'),
(9442, 0, 1, 0, 0, 0, 100, 0, 7000, 12000, 18000, 24000, 0, 0, 11, 7121, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Dark Keeper Ofgut - In Combat - Cast Anti-Magic Shield'),
(9443, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 900000, 900000, 0, 0, 11, 12544, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Dark Keeper Pelver - Out of Combat - Cast Frost Armor'),
(9443, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 12675, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Dark Keeper Pelver - In Combat - Cast Frostbolt'),
--
(9543, 0, 0, 1, 62, 0, 100, 512, 1970, 0, 0, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Ribbly Screwspigot - On Gossip Select - Set Faction'),
(9543, 0, 1, 2, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 11, 10043, 30, 0, 0, 0, 0, 0, 0,              'Ribbly Screwspigot - On Gossip Select - Set Faction'),
(9543, 0, 2, 3, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Ribbly Screwspigot - On Gossip Select - Talk'),
(9543, 0, 3, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                    'Ribbly Screwspigot - On Gossip Select - Attack Start'),
(9543, 0, 4, 0, 0, 0, 100, 0, 3000, 3000, 10000, 10000, 0, 0, 11, 12540, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Ribbly Screwspigot - Within 0-5 Range - Cast Gouge'),
(9543, 0, 5, 0, 0, 0, 100, 0, 5000, 14000, 5000, 14000, 0, 0, 11, 9080, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Ribbly Screwspigot - Within 0-5 Range - Cast Hamstring'),
(9543, 0, 6, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Ribbly Screwspigot - Between 0-30% Health - Flee For Assist (No Repeat)'),
--
(9545, 0, 0, 0, 105, 0, 100, 0, 0, 0, 11000, 15000, 0, 5, 11, 15610, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,         'Grim Patron - Target Casting - Cast Kick'),
(9545, 0, 1, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 14822, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Grim Patron - Between 0-30% Health - Cast Drunken Rage (No Repeat)'),
(9545, 0, 2, 0, 1, 0, 55, 0, 7000, 15000, 7000, 15000, 0, 0, 10, 1, 4, 11, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Grim Patron - OOC - Play Random Emotes'),
(9545, 0, 3, 0, 38, 0, 100, 0, 1, 1, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 0,                    'Grim Patron - On Data set - Start Attack'),
(9545, 0, 4, 0, 38, 0, 100, 512, 1, 4, 0, 0, 0, 0, 80, 954700, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Grim Patron - On Data set - Action list'),
(9545, 0, 5, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 83, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Grim Patron - On Aggro - Remove Npc Flags Gossip'),
(9545, 0, 6, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 82, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Grim Patron - On Reset - Add Npc Flags Gossip'),
(9547, 0, 0, 0, 0, 0, 100, 0, 3000, 40000, 6000, 30000, 0, 0, 11, 14868, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Guzzling Patron - In Combat - Cast Curse of Agony'),
(9547, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20825, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Guzzling Patron - In Combat - Cast Shadow Bolt'),
(9547, 0, 2, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 14822, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Guzzling Patron - Between 0-30% Health - Cast Drunken Rage (No Repeat)'),
(9547, 0, 3, 0, 1, 0, 55, 0, 7000, 15000, 7000, 15000, 0, 0, 10, 1, 4, 11, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Guzzling Patron - OOC - Play Random Emotes'),
(9547, 0, 4, 0, 38, 0, 100, 0, 1, 1, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 0,                    'Guzzling Patron - On Data set - Start Attack'),
(9547, 0, 5, 0, 38, 0, 100, 512, 1, 4, 0, 0, 0, 0, 80, 954700, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Guzzling Patron - On Data set - Action list'),
(9547, 0, 6, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 83, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Guzzling Patron - On Aggro - Remove Npc Flags Gossip'),
(9547, 0, 7, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 82, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Guzzling Patron - On Reset - Add Npc Flags Gossip'),
--
(9956, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 9128, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Shadowforge Flame Keeper - On Aggro - Cast Battle Shout'),
(9956, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Shadowforge Flame Keeper - Outside 30 Range - Start Combat Movement'),
(9956, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Shadowforge Flame Keeper - Within 5-30 Range - Stop Combat Movement'),
(9956, 0, 3, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Shadowforge Flame Keeper - Within 0-5 Range - Start Combat Movement'),
(9956, 0, 4, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Shadowforge Flame Keeper - Within 5-30 Range - Cast Shoot'),
(9956, 0, 5, 0, 9, 0, 100, 0, 0, 0, 12000, 15000, 0, 5, 11, 9080, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Shadowforge Flame Keeper - Within 0-5 Range - Cast Hamstring'),
(9956, 0, 6, 0, 9, 0, 100, 0, 0, 0, 7000, 12000, 0, 5, 11, 11976, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Shadowforge Flame Keeper - Within 0-5 Range - Cast Strike'),
(9956, 0, 7, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Shadowforge Flame Keeper - Between 0-15% Health - Flee For Assist (No Repeat)'),

(10043, 0, 0, 0, 0, 0, 100, 0, 10000, 20000, 10000, 20000, 0, 0, 11, 15692, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0, 'Ribbly\'s Crony - Within 0-5 Range - Cast Eviscerate'),
(10043, 0, 1, 0, 0, 0, 100, 0, 5000, 7000, 6000, 9000, 0, 0, 11, 15581, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Ribbly\'s Crony - Within 0-5 Range - Cast Sinister Strike');

-- fix bridge ambush
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (-91106, -91107, -608891);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(-91106, 0, 0, 1, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Anvilrage Guardsman - On Respawn - Set Invisible'),
(-91106, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Anvilrage Guardsman - On Respawn - Set Faction'),
(-91106, 0, 0, 0, 60, 0, 100, 0, 0, 0, 0, 0, 0, 0, 38, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Anvilrage Guardsman - On Update - Set in Combat with Zone'),
(-91107, 0, 0, 1, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Anvilrage Guardsman - On Respawn - Set Invisible'),
(-91107, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Anvilrage Guardsman - On Respawn - Set Faction'),
(-91107, 0, 0, 0, 60, 0, 100, 0, 0, 0, 0, 0, 0, 0, 38, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Anvilrage Guardsman - On Update - Set in Combat with Zone'),
--
(-608891, 0, 0, 1, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,        'BRD Bridge Trigger - On Respawn - Set Invisible'),
(-608891, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,        'BRD Bridge Trigger - On Respawn - Set Faction'),
(-608891, 0, 2, 3, 101, 0, 100, 0, 1, 10, 0, 0, 0, 0, 47, 1, 0, 0, 0, 0, 0, 10, 91106, 0, 0, 0, 0, 0, 0, 0, 'BRD Bridge Trigger - On Near Player - Set visible Anvilrage Guardsman 91106'),
(-608891, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 2, 21, 0, 0, 0, 0, 0, 10, 91106, 0, 0, 0, 0, 0, 0, 0,   'BRD Bridge Trigger - On Near Player - Set Faction Anvilrage Guardsman 91106'),
(-608891, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 47, 1, 0, 0, 0, 0, 0, 10, 91107, 0, 0, 0, 0, 0, 0, 0,   'BRD Bridge Trigger - On Near Player - Set visible Anvilrage Guardsman 91107'),
(-608891, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 2, 21, 0, 0, 0, 0, 0, 10, 91107, 0, 0, 0, 0, 0, 0, 0,   'BRD Bridge Trigger - On Near Player - Set Faction Anvilrage Guardsman 91107');

DELETE FROM `creature` WHERE `guid` IN (91106, 91107, 608891);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, 
`wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
--
(91106,  8891, 0, 0, 230, 0, 0, 1, 1, 1, 642.366, -274.516, -43.1092, 0.471239, 7200, 0, 0, 6645, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(91107,  8891, 0, 0, 230, 0, 0, 1, 1, 1, 740.114, -283.345, -42.7508, 2.86234, 7200, 0, 0, 6645, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(608891, 8891, 0, 0, 230, 0, 0, 1, 1, 1, 686.649, -280.075, -43.1966, 0.0844455, 300, 0, 0, 6876, 0, 0, 0, 0, 0, '', 0, 0, NULL);

UPDATE `creature` SET `MovementType` = 2, `currentwaypoint` = 1 WHERE `guid` = 47738; -- Fireguard Destroyer(8911)
UPDATE `creature` SET `MovementType` = 2, `currentwaypoint` = 1 WHERE `guid` = 90828; -- Blazing Fireguard(8910)

DELETE FROM `creature_addon` WHERE `guid` IN (47738, 90828);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(47738, 477380, 0, 0, 1, 0, 0, NULL),
(90828, 908280, 0, 0, 1, 0, 0, NULL);

-- fix Ironhand Guardian's Gout of Flame in room with Magmus
DELETE FROM `creature_template` WHERE `entry` IN (108982);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, 
`minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, 
`BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, 
`PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, 
`RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
--
(108982, 0, 0, 0, 0, 0, 'Ironhand Guardian', NULL, NULL, 0, 60, 60, 0, 15, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 0.1, 2000, 2000, 
1, 1, 1, 70, 2048, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 3, 2, 1, 1, 0, 0, 1, 16384, 0, 2050, '', 0);

DELETE FROM `creature` WHERE `id1` IN (8982, 108982);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, 
`wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
--
(47323, 108982, 0, 0, 230, 0, 0, 1, 1, 0, 1407.29, -587.299, -91.9711, 3.15905, 7200, 0, 0, 126, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(47442, 108982, 0, 0, 230, 0, 0, 1, 1, 0, 1353.43, -587.317, -91.9711, 0.15708, 7200, 0, 0, 126, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(47466, 108982, 0, 0, 230, 0, 0, 1, 1, 0, 1406.88, -632.438, -91.9711, 3.14159, 7200, 0, 0, 126, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(47472, 108982, 0, 0, 230, 0, 0, 1, 1, 0, 1353.92, -632.75, -91.9711, 0.122173, 7200, 0, 0, 126, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(47473, 108982, 0, 0, 230, 0, 0, 1, 1, 0, 1407.67, -677.718, -91.9711, 3.14159, 7200, 0, 0, 126, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(47474, 108982, 0, 0, 230, 0, 0, 1, 1, 0, 1353.16, -677.38, -91.9711, 0, 7200, 0, 0, 126, 0, 0, 0, 0, 0, '', 0, 0, NULL);

DELETE FROM `creature_template_model` WHERE `CreatureID` = 108982;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES 
(108982, 0, 9189, 1, 1, 12340);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (108982);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (108982);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(108982, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 15533, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Ironhand Guardian - On Spawn - Cast Stoned Visual'),
(108982, 0, 1, 0, 1, 0, 100, 0, 4000, 8000, 13000, 18000, 0, 0, 11, 15529, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Ironhand Guardian - Out of Combat - Cast Gout of Flame');

-- fix Fireguard patrols near Pyromancer Loregrain and in front of the vault.
DELETE FROM `waypoint_data` WHERE `id` IN (477380, 908280);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
--
(477380, 1, 712.727, -278.328, -43.2147, 0.075571, 0, 0, 0, 100, 0), -- Fireguard Destroyer(8911)
(477380, 2, 660.359, -282.782, -43.2201, 3.26445,0, 0, 0, 100, 0),
(477380, 3, 644.983, -284.93, -43.219, 0.067883, 0, 0, 0, 100, 0),
(477380, 4, 607.217, -284.487, -43.1059, 3.11326, 0, 0, 0, 100, 0),
(477380, 5, 572.263, -283.22, -43.1028, 2.41229, 0, 0, 0, 100, 0),
(477380, 6, 537.896, -251.271, -43.1028, 2.40051, 0, 0, 0, 100, 0),
(477380, 7, 569.988, -282.969, -43.1028, 2.24147, 0, 0, 0, 100, 0),
(477380, 8, 607.107, -284.599, -43.1042, 6.24111, 0, 0, 0, 100, 0),
(477380, 9, 645.91, -284.733, -43.2395, 0.005052, 0, 0, 0, 100, 0),
(477380, 10, 660.339, -282.755, -43.2208, 0.10519, 0, 0, 0, 100, 0),
--
(908280, 1, 853.993, -261.658, -49.9364, 1.5072, 0, 0, 0, 100, 0), -- Blazing Fireguard(8910)
(908280, 2, 853.608, -277.92, -49.9364, 4.93155, 0, 0, 0, 100, 0),
(908280, 3, 860.549, -295.867, -49.9364, 5.14754, 0, 0, 0, 100, 0),
(908280, 4, 880.6, -309.502, -49.9364, 5.71892, 0, 0, 0, 100, 0),
(908280, 5, 905.206, -314.55, -49.9364, 6.26871, 0, 0, 0, 100, 0),
(908280, 6, 880.836, -310.104, -49.9364, 2.56556, 0, 0, 0, 100, 0),
(908280, 7, 860.108, -296.642, -49.9364, 2.16697, 0, 0, 0, 100, 0),
(908280, 8, 854.253, -279.573, -49.9364, 1.9019, 0, 0, 0, 100, 0);


-- fix officer patrols in Bael'Gar area
DELETE FROM `creature` WHERE `guid` IN (
45857, 45858, 45859, 90640, 45861,
45875, 45876, 45877, 45878, 45879,
47781, 47782, 47783, 47784, 47785,
47786, 47787, 47788, 47789, 47790,
47799, 47800, 47801, 47802, 47803,
90658, 90659, 90660, 90661, 90662);

INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, 
`wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
--
(45857, 8895, 0, 0, 230, 0, 0, 1, 1, 1, 734.342, -115.562, -71.8692, 2.29181, 7200, 0, 1, 5502, 3728, 2, 0, 0, 0, '', 0, 0, NULL), -- Anvilrage Officer
(45858, 8893, 0, 0, 230, 0, 0, 1, 1, 1, 733.265, -108.619, -71.7611, 5.37845, 7200, 0, 0, 6645, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(45859, 8894, 0, 0, 230, 0, 0, 1, 1, 1, 734.991, -118.049, -71.9244, 2.29044, 7200, 0, 0, 4653, 8786, 0, 0, 0, 0, '', 0, 0, NULL),
(90640, 8893, 0, 0, 230, 0, 0, 1, 1, 1, 738.351, -115.109, -71.9528, 2.30947, 7200, 0, 0, 6645, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(45861, 8892, 0, 0, 230, 0, 0, 1, 1, 1, 736.664, -116.583, -71.9382, 2.28651, 7200, 0, 0, 6645, 0, 0, 0, 0, 0, '', 0, 0, NULL),
--
(45875, 8895, 0, 0, 230, 0, 0, 1, 1, 1, 697.116, -95.4629, -71.4095, 5.41586, 7200, 0, 1, 5502, 3728, 2, 0, 0, 0, '', 0, 0, NULL),  -- Anvilrage Officer
(45876, 8893, 0, 0, 230, 0, 0, 1, 1, 1, 696.59, -92.6785, -71.371, 5.37265, 7200, 0, 0, 6645, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(45877, 8894, 0, 0, 230, 0, 0, 1, 1, 1, 694.594, -94.5057, -71.3968, 5.32161, 7200, 0, 0, 4653, 8786, 0, 0, 0, 0, '', 0, 0, NULL),
(45878, 8893, 0, 0, 230, 0, 0, 1, 1, 1, 698.499, -91.3146, -71.3517, 5.34517, 7200, 0, 0, 6645, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(45879, 8892, 0, 0, 230, 0, 0, 1, 1, 1, 692.64, -95.8691, -71.4159, 5.32161, 7200, 0, 0, 6645, 0, 0, 0, 0, 0, '', 0, 0, NULL),
--
(47781, 8895, 0, 0, 230, 0, 0, 1, 1, 1, 729.238, 160.809, -72.2434, 2.6513, 7200, 0, 1, 5502, 3728, 2, 0, 0, 0, '', 0, 0, NULL),  -- Anvilrage Officer
(47782, 8893, 0, 0, 230, 0, 0, 1, 1, 1, 730.246, 158.012, -72.2814, 2.63558, 7200, 0, 0, 6645, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(47783, 8894, 0, 0, 230, 0, 0, 1, 1, 1, 728.826, 155.449, -72.2943, 2.63558, 7200, 0, 0, 4653, 8786, 0, 0, 0, 0, '', 0, 0, NULL),
(47784, 8892, 0, 0, 230, 0, 0, 1, 1, 1, 732.025, 161.222, -72.2645, 2.63558, 7200, 0, 0, 6645, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(47785, 8892, 0, 0, 230, 0, 0, 1, 1, 1, 733.37, 163.649, -72.2518, 2.63558, 7200, 0, 0, 6645, 0, 0, 0, 0, 0, '', 0, 0, NULL),
--
(47786, 8895, 0, 0, 230, 0, 0, 1, 1, 1, 668.276, 135.126, -73.3139, 4.07486, 7200, 0, 1, 5502, 3728, 2, 0, 0, 0, '', 0, 0, NULL),  -- Anvilrage Officer
(47787, 8893, 0, 0, 230, 0, 0, 1, 1, 1, 668.086, 137.35, -73.3139, 4.07486, 7200, 0, 0, 6645, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(47788, 8893, 0, 0, 230, 0, 0, 1, 1, 1, 670.624, 135.459, -73.3139, 4.0513, 7200, 0, 0, 6645, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(47789, 8894, 0, 0, 230, 0, 0, 1, 1, 1, 672.606, 134.002, -73.3139, 4.07486, 7200, 0, 0, 4653, 8786, 0, 0, 0, 0, '', 0, 0, NULL),
(47790, 8894, 0, 0, 230, 0, 0, 1, 1, 1, 666.015, 138.885, -73.3139, 4.07486, 7200, 0, 0, 4653, 8786, 0, 0, 0, 0, '', 0, 0, NULL),
--
(47799, 8895, 0, 0, 230, 0, 0, 1, 1, 1, 680.336, -44.8507, -72.9776, 2.23294, 7200, 0, 1, 5502, 3728, 2, 0, 0, 0, '', 0, 0, NULL),  -- Anvilrage Officer
(47800, 8893, 0, 0, 230, 0, 0, 1, 1, 1, 680.39, -47.2331, -72.9302, 2.22706, 7200, 0, 0, 6645, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(47801, 8894, 0, 0, 230, 0, 0, 1, 1, 1, 682.422, -45.6471, -72.9302, 2.23099, 7200, 0, 0, 4653, 8786, 0, 0, 0, 0, '', 0, 0, NULL),
(47802, 8893, 0, 0, 230, 0, 0, 1, 1, 1, 678.626, -48.8339, -72.9332, 2.30756, 7200, 0, 0, 6645, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(47803, 8892, 0, 0, 230, 0, 0, 1, 1, 1, 684.191, -44.3128, -72.931, 2.28008, 7200, 0, 0, 6645, 0, 0, 0, 0, 0, '', 0, 0, NULL),
--
(90658, 8895, 0, 0, 230, 0, 0, 1, 1, 1, 664.806, 195.915, -72.1177, 5.63189, 7200, 0, 1, 5502, 3728, 2, 0, 0, 0, '', 0, 0, NULL),  -- Anvilrage Officer
(90659, 8893, 0, 0, 230, 0, 0, 1, 1, 1, 660.53, 193.589, -72.1475, 5.66136, 7200, 0, 0, 6645, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(90660, 8894, 0, 0, 230, 0, 0, 1, 1, 1, 662.061, 195.76, -72.1159, 5.68493, 7200, 0, 0, 4653, 8786, 0, 0, 0, 0, '', 0, 0, NULL),
(90661, 8893, 0, 0, 230, 0, 0, 1, 1, 1, 666.312, 201.408, -72.0624, 5.62013, 7200, 0, 0, 6645, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(90662, 8892, 0, 0, 230, 0, 0, 1, 1, 1, 664.427, 198.963, -72.0682, 5.62602, 7200, 0, 0, 6645, 0, 0, 0, 0, 0, '', 0, 0, NULL);

DELETE FROM `creature_formations` WHERE `leaderGUID` IN (45857, 45875, 47781, 47786, 47799, 90658);
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES 
--
(45857, 45857, 0, 0,   515, 0, 0), -- Officer
(45857, 45858, 9, 270, 515, 0, 0), -- Soldier
(45857, 45859, 4, 90,  515, 0, 0), -- Medic
(45857, 90640, 9, 90,  515, 0, 0), -- Soldier
(45857, 45861, 4, 270, 515, 0, 0), -- Footman
--
(45875, 45875, 0, 0,   515, 0, 0), -- Officer
(45875, 45876, 9, 90,  515, 0, 0), -- Soldier
(45875, 45877, 4, 90,  515, 0, 0), -- Medic
(45875, 45878, 9, 270, 515, 0, 0), -- Soldier
(45875, 45879, 4, 270, 515, 0, 0), -- Footman
--
(47781, 47781, 0, 0,   515, 0, 0), -- Officer
(47781, 47782, 9, 90,  515, 0, 0), -- Soldier
(47781, 47783, 4, 90,  515, 0, 0), -- Medic
(47781, 47784, 9, 270, 515, 0, 0), -- Footman
(47781, 47785, 4, 270, 515, 0, 0), -- Footman
--
(47786, 47786, 0, 0,   515, 0, 0), -- Officer
(47786, 47787, 9, 90,  515, 0, 0), -- Soldier
(47786, 47789, 4, 90,  515, 0, 0), -- Medic
(47786, 47788, 9, 270, 515, 0, 0), -- Soldier
(47786, 47790, 4, 270, 515, 0, 0), -- Medic
--
(47799, 47799, 0, 0,   515, 0, 0), -- Officer
(47799, 47800, 9, 90,  515, 0, 0), -- Soldier
(47799, 47801, 4, 90,  515, 0, 0), -- Medic
(47799, 47802, 9, 270, 515, 0, 0), -- Soldier
(47799, 47803, 4, 270, 515, 0, 0), -- Footman
--
(90658, 90658, 0, 0,   515, 0, 0), -- Officer
(90658, 90659, 9, 90,  515, 0, 0), -- Soldier
(90658, 90660, 4, 90,  515, 0, 0), -- Medic
(90658, 90661, 9, 270, 515, 0, 0), -- Soldier
(90658, 90662, 4, 270, 515, 0, 0); -- Footman

DELETE FROM `creature_addon` WHERE `guid` IN (45857, 45875, 47781, 47786, 47799, 90658);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(45857, 458570, 0, 0, 1, 0, 0, '13864'),
(45875, 458750, 0, 0, 1, 0, 0, '13864'),
(47781, 477810, 0, 0, 1, 0, 0, '13864'),
(47786, 477860, 0, 0, 1, 0, 0, '13864'),
(47799, 477990, 0, 0, 1, 0, 0, '13864'),
(90658, 906580, 0, 0, 1, 0, 0, '13864');

DELETE FROM `waypoint_data` WHERE `id` IN (458570, 458750, 477810, 477860, 477990, 906580);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
--
(458570, 1, 731.878, -112.659, -71.7924, 2.28199, 15000, 0, 0, 100, 0),
(458570, 2, 740.222, -121.621, -72.1034, 5.50999, 0, 0, 0, 100, 0),
(458570, 3, 782.362, -161.125, -73.2671, 5.46876, 0, 0, 0, 100, 0),
(458570, 4, 779.883, -158.821, -73.4076, 5.50831, 15000, 0, 0, 100, 0),
(458570, 5, 729.4, -109.909, -71.7353, 2.27444, 0, 0, 0, 100, 0),
--
(458750, 1, 698.238, -96.7869, -71.4277, 5.36677, 15000, 0, 0, 100, 0),
(458750, 2, 687.004, -82.7569, -71.6416, 2.25268, 0, 0, 0, 100, 0),
(458750, 3, 672.323, -65.5213, -72.7711, 2.30372, 0, 0, 0, 100, 0),
(458750, 4, 660.885, -51.9485, -73.164, 2.25856, 0, 0, 0, 100, 0),
(458750, 5, 662.782, -54.2745, -73.0968, 2.25856, 15000, 0, 0, 100, 0),
(458750, 6, 672.893, -66.1477, -72.7457, 5.41784, 0, 0, 0, 100, 0),
(458750, 7, 687.216, -82.9668, -71.6098, 5.41784, 0, 0, 0, 100, 0),
(458750, 8, 700.331, -99.2065, -71.4603, 2.25661, 0, 0, 0, 100, 0),
--
(477810, 1, 705.375, 173.828, -72.1133, 2.62578, 0, 0, 0, 100, 0),
(477810, 2, 708.994, 171.636, -72.1059, 2.61204, 20000, 0, 0, 100, 0),
(477810, 3, 693.214, 145.861, -72.3394, 4.24178, 0, 0, 0, 100, 0),
(477810, 4, 694.404, 136.567, -72.2982, 1.64407, 0, 0, 0, 100, 0),
(477810, 5, 694.299, 140.707, -72.2798, 4.7366, 15000, 0, 0, 100, 0),
(477810, 6, 701.434, 145.956, -72.2197, 1.0472, 0, 0, 0, 100, 0),
(477810, 7, 716.977, 157.868, -72.1558, 2.64159, 0, 0, 0, 100, 0),
(477810, 8, 728.314, 160.1, -72.2412, 2.59841, 0, 0, 0, 100, 0),
(477810, 9, 735.444, 155.825, -72.3511, 5.73214, 0, 0, 0, 100, 0),
(477810, 10, 732.397, 157.744, -72.3036, 5.73215, 15000, 0, 0, 100, 0),
--
(477860, 1, 671.26, 139.268, -73.2962, 4.07093, 15000, 0, 0, 100, 0),
(477860, 2, 694.599, 173.124, -72.1581, 0.980406, 0, 0, 0, 100, 0),
(477860, 3, 692.316, 169.601, -72.2641, 1.00005, 15000, 0, 0, 100, 0),
(477860, 4, 669.119, 136.074, -73.3138, 0.95292, 0, 0, 0, 100, 0),
--
(477990, 1, 677.647, -41.2612, -73.0946, 2.22707, 15000, 0, 0, 100, 0),
(477990, 2, 687.415, -53.5862, -72.6828, 5.40402, 0, 0, 0, 100, 0),
(477990, 3, 700.484, -70.01, -71.7605, 5.38832, 0, 0, 0, 100, 0),
(477990, 4, 714.366, -87.9515, -71.4275, 5.35888, 0, 0, 0, 100, 0),
(477990, 5, 711.888, -85.3583, -71.3485, 5.39618, 15000, 0, 0, 100, 0),
(477990, 6, 700.13, -70.7877, -71.7473, 2.27226, 0, 0, 0, 100, 0),
(477990, 7, 687.458, -52.8162, -72.7055, 2.2487, 0, 0, 0, 100, 0),
(477990, 8, 675.641, -38.883, -73.1747, 2.27423, 0, 0, 0, 100, 0),
--
(906580, 1, 690.825, 182.043, -72.1219, 5.75951, 0, 0, 0, 100, 0),
(906580, 2, 687.536, 183.999, -72.1233, 5.75557, 25000, 0, 0, 100, 0),
(906580, 3, 671.168, 162.395, -73.1998, 1.00209, 0, 0, 0, 100, 0),
(906580, 4, 663.792, 156.498, -73.47, 3.42305, 0, 0, 0, 100, 0),
(906580, 5, 659.829, 156.231, -73.7584, 3.21299, 0, 0, 0, 100, 0),
(906580, 6, 662.774, 156.46, -73.5488, 3.24635, 15000, 0, 0, 100, 0),
(906580, 7, 669.593, 168.703, -72.9221, 1.0335, 0, 0, 0, 100, 0),
(906580, 8, 670.315, 183.219, -72.2217, 1.50081, 0, 0, 0, 100, 0),
(906580, 9, 664.06, 195.899, -72.1157, 2.1252, 0, 0, 0, 100, 0),
(906580, 10, 658.425, 199.373, -72.0883, 2.62589, 0, 0, 0, 100, 0),
(906580, 11, 661.207, 197.809, -72.082, 2.62, 15000, 0, 0, 100, 0);


-- fix officer packs that are misplaced and have wrong movement
DELETE FROM `creature` WHERE guid IN (90653, 90654, 90655, 90656, 90657, 90680, 90681, 90682, 90683, 90684, 90839, 90840, 90841, 90842, 90843);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, 
`wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
--
(90653, 8895, 0, 0, 230, 0, 0, 1, 1, 1, 678.689, -121.644, -72.0716, 1.21643, 7200, 0, 0, 5502, 3728, 0, 0, 0, 0, '', 0, 0, NULL),
(90654, 8893, 0, 0, 230, 0, 0, 1, 1, 1, 680.856, -127.272, -72.0552, 1.16142, 7200, 0, 0, 6645, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(90655, 8893, 0, 0, 230, 0, 0, 1, 1, 1, 679.429, -124.626, -72.07, 1.17716, 7200, 0, 0, 6645, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(90656, 8893, 0, 0, 230, 0, 0, 1, 1, 1, 682.052, -123.109, -72.0377, 1.30479, 7200, 0, 0, 6645, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(90657, 8894, 0, 0, 230, 0, 0, 1, 1, 1, 676.695, -125.1, -72.1019, 1.38726, 7200, 0, 0, 4653, 8786, 0, 0, 0, 0, '', 0, 0, NULL),
(90680, 8895, 0, 0, 230, 0, 0, 1, 1, 1, 736.148, -59.2571, -71.8741, 0.258237, 7200, 0, 0, 5502, 3728, 0, 0, 0, 0, '', 0, 0, NULL),
(90681, 8893, 0, 0, 230, 0, 0, 1, 1, 1, 738.789, -59.5167, -71.8238, 3.39197, 7200, 0, 0, 6645, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(90682, 8894, 0, 0, 230, 0, 0, 1, 1, 1, 738.103, -57.3964, -71.8401, 3.44892, 7200, 0, 0, 4653, 8786, 0, 0, 0, 0, '', 0, 0, NULL),
(90683, 8893, 0, 0, 230, 0, 0, 1, 1, 1, 739.379, -61.8249, -71.8085, 3.39197, 7200, 0, 0, 6645, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(90684, 8892, 0, 0, 230, 0, 0, 1, 1, 1, 737.435, -55.3414, -71.8559, 3.40769, 7200, 0, 0, 6645, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(90839, 8895, 0, 0, 230, 0, 0, 1, 1, 1, 667.578, -29.2691, -73.3151, 3.1583, 7200, 0, 0, 5502, 3728, 0, 0, 0, 0, '', 0, 0, NULL),
(90840, 8893, 0, 0, 230, 0, 0, 1, 1, 1, 667.567, -33.3695, -73.3112, 3.28122, 7200, 0, 0, 6645, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(90841, 8893, 0, 0, 230, 0, 0, 1, 1, 1, 671.155, -30.151, -73.3134, 3.28122, 7200, 0, 0, 6645, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(90842, 8893, 0, 0, 230, 0, 0, 1, 1, 1, 664.043, -28.4768, -73.2895, 3.28122, 7200, 0, 0, 6645, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(90843, 8894, 0, 0, 230, 0, 0, 1, 1, 1, 667.517, -25.1782, -73.8748, 3.28122, 7200, 0, 0, 4653, 8786, 0, 0, 0, 0, '', 0, 0, NULL);


-- fix hound patrols

DELETE FROM `creature` WHERE `guid` IN (
45896, 45897, 45898, 45915, 45916, 45917, 45924, 45925, 45926, 47825, 47826, 47827, 47830, 47831, 47832, 
90686, 90687, 90688, 90855, 90856, 90857, 90866, 90867, 90868, 90918, 90917, 90916, 91084, 91085, 91086);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, 
`wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
--
(45896, 8921, 0, 0, 230, 0, 0, 1, 1, 0, 511.225, -178.22, -60.0722, 1.86715, 7200, 0, 0, 2672, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(45897, 8921, 0, 0, 230, 0, 0, 1, 1, 0, 514.334, -177.619, -59.9839, 1.86715, 7200, 0, 0, 2672, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(45898, 8921, 0, 0, 230, 0, 0, 1, 1, 0, 512.227, -175.894, -60.4273, 1.86101, 7200, 0, 1, 2672, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(45915, 8921, 0, 0, 230, 0, 0, 1, 1, 0, 507.459, -71.1789, -62.69, 3.69728, 7200, 0, 0, 2672, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(45916, 8921, 0, 0, 230, 0, 0, 1, 1, 0, 510.026, -73.5812, -62.3512, 3.69728, 7200, 0, 0, 2672, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(45917, 8921, 0, 0, 230, 0, 0, 1, 1, 0, 507.858, -73.0351, -62.5597, 3.69728, 7200, 0, 1, 2672, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(45924, 8921, 0, 0, 230, 0, 0, 1, 1, 0, 478.693, -110.303, -63.0834, 1.40623, 7200, 0, 1, 2672, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(45925, 8921, 0, 0, 230, 0, 0, 1, 1, 0, 479.657, -112.529, -62.8568, 1.40623, 7200, 0, 0, 2672, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(45926, 8921, 0, 0, 230, 0, 0, 1, 1, 0, 476.957, -112.081, -62.9856, 1.40623, 7200, 0, 0, 2672, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(47825, 8890, 0, 0, 230, 0, 0, 1, 1, 1, 504.533, -124.746, -62.2436, 3.56981, 7200, 0, 1, 6414, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(47826, 8921, 0, 0, 230, 0, 0, 1, 1, 0, 506.133, -126.058, -61.9769, 3.56392, 7200, 0, 0, 2672, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(47827, 8921, 0, 0, 230, 0, 0, 1, 1, 0, 504.648, -122.75, -62.3433, 3.58748, 7200, 0, 0, 2672, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(47830, 8921, 0, 0, 230, 0, 0, 1, 1, 0, 526.491, -65.7319, -62.321, 3.94076, 7200, 0, 0, 2672, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(47831, 8921, 0, 0, 230, 0, 0, 1, 1, 0, 528.867, -67.881, -62.3162, 3.90149, 7200, 0, 0, 2672, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(47832, 8921, 0, 0, 230, 0, 0, 1, 1, 0, 526.575, -67.7981, -62.2411, 3.90934, 7200, 0, 1, 2672, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(90686, 8921, 0, 0, 230, 0, 0, 1, 1, 0, 404.613, -73.5161, -62.0615, 2.81372, 7200, 0, 0, 2672, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(90687, 8921, 0, 0, 230, 0, 0, 1, 1, 0, 403.978, -76.3875, -61.827, 2.7823, 7200, 0, 0, 2672, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(90688, 8921, 0, 0, 230, 0, 0, 1, 1, 0, 402.666, -74.5199, -61.9944, 2.76266, 7200, 0, 1, 2672, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(90855, 8921, 0, 0, 230, 0, 0, 1, 1, 0, 411.893, -181.853, -63.2672, 3.64544, 7200, 0, 1, 2672, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(90856, 8921, 0, 0, 230, 0, 0, 1, 1, 0, 413.868, -182.603, -63.2194, 3.68864, 7200, 0, 0, 2672, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(90857, 8921, 0, 0, 230, 0, 0, 1, 1, 0, 412.732, -179.844, -63.0809, 3.67293, 7200, 0, 0, 2672, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(90866, 8891, 0, 0, 230, 0, 0, 1, 1, 1, 629.668, -261.28, -83.7515, 3.90067, 7200, 0, 1, 6645, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(90867, 8921, 0, 0, 230, 0, 0, 1, 1, 0, 627.172, -261.771, -83.8865, 3.85347, 7200, 0, 0, 2672, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(90868, 8921, 0, 0, 230, 0, 0, 1, 1, 0, 627.84, -259.833, -83.8041, 3.86532, 7200, 0, 0, 2672, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(90916, 8921, 0, 0, 230, 0, 0, 1, 1, 0, 574.527, -121.285, -65.0588, 0.0706102, 7200, 0, 0, 2672, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(90917, 8921, 0, 0, 230, 0, 0, 1, 1, 0, 567.774, -120.675, -63.5019, 6.03067, 7200, 0, 1, 2672, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(90918, 8921, 0, 0, 230, 0, 0, 1, 1, 0, 574.438, -122.639, -65.229, 6.15876, 7200, 0, 0, 2672, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(91084, 8890, 0, 0, 230, 0, 0, 1, 1, 1, 418.939, -78.2689, -63.3344, 2.68535, 7200, 0, 1, 6414, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(91085, 8921, 0, 0, 230, 0, 0, 1, 1, 0, 419.301, -80.4187, -63.4199, 2.62539, 7200, 0, 0, 2672, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(91086, 8921, 0, 0, 230, 0, 0, 1, 1, 0, 420.605, -77.4939, -63.5929, 2.73141, 7200, 0, 0, 2672, 0, 0, 0, 0, 0, '', 0, 0, NULL);


DELETE FROM `creature_formations` WHERE `leaderGUID` IN (45898, 45917, 45924, 47825, 47832, 90688, 90855, 90866, 90917, 91084);
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES 
--
(45898, 45898, 0, 0,   515, 0, 0), -- Bloodhound
(45898, 45896, 4, 150, 515, 0, 0), -- Bloodhound
(45898, 45897, 4, 210, 515, 0, 0), -- Bloodhound
--
(45917, 45917, 0, 0,   515, 0, 0), -- Bloodhound
(45917, 45915, 4, 150, 515, 0, 0), -- Bloodhound
(45917, 45916, 4, 210, 515, 0, 0), -- Bloodhound
--
(45924, 45924, 0, 0,   515, 0, 0), -- Bloodhound
(45924, 45925, 4, 150, 515, 0, 0), -- Bloodhound
(45924, 45926, 4, 210, 515, 0, 0), -- Bloodhound
--
(47825, 47825, 0, 0,   515, 0, 0), -- Anvilrage Warden
(47825, 47826, 4, 150, 515, 0, 0), -- Bloodhound
(47825, 47827, 4, 210, 515, 0, 0), -- Bloodhound
--
(47832, 47832, 0, 0,   515, 0, 0), -- Bloodhound
(47832, 47830, 4, 150, 515, 0, 0), -- Bloodhound
(47832, 47831, 4, 210, 515, 0, 0), -- Bloodhound
--
(90688, 90688, 0, 0,   515, 0, 0), -- Bloodhound
(90688, 90686, 4, 150, 515, 0, 0), -- Bloodhound
(90688, 90687, 4, 210, 515, 0, 0), -- Bloodhound
--
(90855, 90855, 0, 0,   515, 0, 0), -- Bloodhound
(90855, 90856, 4, 150, 515, 0, 0), -- Bloodhound
(90855, 90857, 4, 210, 515, 0, 0), -- Bloodhound
--
(90866, 90866, 0, 0,   515, 0, 0), -- Anvilrage Warden
(90866, 90867, 4, 150, 515, 0, 0), -- Bloodhound
(90866, 90868, 4, 210, 515, 0, 0), -- Bloodhound
--
(90917, 90917, 0, 0,   515, 0, 0), -- Bloodhound
(90917, 90916, 4, 150, 515, 0, 0), -- Bloodhound
(90917, 90918, 4, 210, 515, 0, 0), -- Bloodhound
--
(91084, 91084, 0, 0,   515, 0, 0), -- Anvilrage Warden
(91084, 91085, 4, 150, 515, 0, 0), -- Bloodhound
(91084, 91086, 4, 210, 515, 0, 0); -- Bloodhound


DELETE FROM `creature_addon` WHERE `guid` IN (
45896, 45897, 45898, 45915, 45916, 45917, 45924, 45925, 45926, 47825, 47826, 47827, 47830, 47831, 47832, 
90686, 90687, 90688, 90855, 90856, 90857, 90866, 90867, 90868, 90918, 90917, 90916, 91084, 91085, 91086);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
--
(45896, 0, 0, 0, 1, 0, 0, '8279'),
(45897, 0, 0, 0, 1, 0, 0, '8279'),
(45898, 458980, 0, 0, 1, 0, 0, '8279'),
--
(45915, 0, 0, 0, 1, 0, 0, '8279'),
(45916, 0, 0, 0, 1, 0, 0, '8279'),
(45917, 459170, 0, 0, 1, 0, 0, '8279'),
--
(45924, 459240, 0, 0, 1, 0, 0, '8279'),
(45925, 0, 0, 0, 1, 0, 0, '8279'),
(45926, 0, 0, 0, 1, 0, 0, '8279'),
--
(47825, 478250, 0, 0, 1, 0, 0, NULL),
(47826, 0, 0, 0, 1, 0, 0, '8279'),
(47827, 0, 0, 0, 1, 0, 0, '8279'),
--
(47830, 0, 0, 0, 1, 0, 0, '8279'),
(47831, 0, 0, 0, 1, 0, 0, '8279'),
(47832, 478320, 0, 0, 1, 0, 0, '8279'),
--
(90686, 0, 0, 0, 1, 0, 0, '8279'),
(90687, 0, 0, 0, 1, 0, 0, '8279'),
(90688, 906880, 0, 0, 1, 0, 0, '8279'),
--
(90855, 908550, 0, 0, 1, 0, 0, '8279'),
(90856, 0, 0, 0, 1, 0, 0, '8279'),
(90857, 0, 0, 0, 1, 0, 0, '8279'),
--
(90866, 908660, 0, 0, 1, 0, 0, NULL),
(90867, 0, 0, 0, 1, 0, 0, '8279'),
(90868, 0, 0, 0, 1, 0, 0, '8279'),
--
(90916, 0, 0, 0, 1, 0, 0, '8279'),
(90917, 909170, 0, 0, 1, 0, 0, '8279'),
(90918, 0, 0, 0, 1, 0, 0, '8279'),
--
(91084, 910840, 0, 0, 1, 0, 0, NULL),
(91085, 0, 0, 0, 1, 0, 0, '8279'),
(91086, 0, 0, 0, 1, 0, 0, '8279');


DELETE FROM `waypoint_data` WHERE `id` IN (458980, 459170, 459240, 478250, 478320, 906880, 908550, 908660, 909170, 910840);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
--
(458980, 1, 510.746, -170.97, -61.352, 1.85067, 0, 0, 0, 100, 0),
(458980, 2, 511.932, -175.858, -60.4469, 4.96477, 0, 0, 0, 100, 0),
(458980, 3, 513.133, -180.515, -59.7455, 4.96477, 0, 0, 0, 100, 0),
(458980, 4, 514.91, -187.381, -59.0889, 4.86738, 0, 0, 0, 100, 0),
(458980, 5, 515.974, -194.187, -59.3457, 4.86738, 0, 0, 0, 100, 0),
(458980, 6, 517.359, -203.053, -59.2492, 4.86738, 0, 0, 0, 100, 0),
(458980, 7, 518.506, -210.398, -58.7215, 4.86738, 0, 0, 0, 100, 0),
(458980, 8, 519.469, -216.56, -59.2884, 4.86738, 0, 0, 0, 100, 0),
(458980, 9, 520.075, -227.143, -62.0678, 4.759, 0, 0, 0, 100, 0),
(458980, 10, 521.772, -232.278, -63.5757, 5.12656, 0, 0, 0, 100, 0),
(458980, 11, 523.393, -238.858, -65.607, 4.94042, 0, 0, 0, 100, 0),
(458980, 12, 525.251, -241.795, -66.0769, 5.34569, 0, 0, 0, 100, 0),
(458980, 13, 532.428, -248.682, -67.2482, 5.52947, 0, 0, 0, 100, 0),
(458980, 14, 538.282, -253.067, -68.2062, 5.67791, 0, 0, 0, 100, 0),
(458980, 15, 545.834, -258.293, -70.3725, 5.67791, 0, 0, 0, 100, 0),
(458980, 16, 553.096, -261.822, -72.2445, 5.8617, 0, 0, 0, 100, 0),
(458980, 17, 555.18, -263.028, -72.7991, 5.75096, 0, 0, 0, 100, 0),
(458980, 18, 559.891, -265.802, -74.9163, 5.75096, 0, 0, 0, 100, 0),
(458980, 19, 567.714, -270.41, -77.4823, 5.75096, 0, 0, 0, 100, 0),
(458980, 20, 573.476, -272.126, -78.886, 6.01014, 0, 0, 0, 100, 0),
(458980, 21, 582.219, -274.574, -80.8292, 6.01014, 0, 0, 0, 100, 0),
(458980, 22, 590.645, -276.934, -82.2196, 6.01014, 0, 0, 0, 100, 0),
(458980, 23, 597.184, -277.316, -82.8237, 0.056818, 0, 0, 0, 100, 0),
(458980, 24, 605.423, -276.049, -83.4996, 0.386685, 0, 0, 0, 100, 0),
(458980, 25, 612.678, -272.76, -83.7825, 0.570469, 0, 0, 0, 100, 0),
(458980, 26, 618.331, -267.957, -83.7779, 0.754252, 0, 0, 0, 100, 0),
(458980, 27, 624.667, -262.424, -83.7929, 0.754252, 0, 0, 0, 100, 0),
(458980, 28, 631.044, -256.433, -83.656, 0.754252, 0, 0, 0, 100, 0),
(458980, 29, 636.941, -250.892, -83.5744, 0.754252, 0, 0, 0, 100, 0),
(458980, 30, 644.756, -243.549, -83.7541, 0.754252, 0, 0, 0, 100, 0),
(458980, 31, 650.08, -236.355, -83.846, 0.975734, 0, 0, 0, 100, 0),
(458980, 32, 642.773, -242.762, -83.7068, 3.87464, 0, 0, 0, 100, 0),
(458980, 33, 638.607, -247.522, -83.59, 4.05842, 0, 0, 0, 100, 0),
(458980, 34, 632.533, -254.035, -83.5598, 3.83694, 0, 0, 0, 100, 0),
(458980, 35, 626.486, -259.08, -83.7168, 3.83694, 0, 0, 0, 100, 0),
(458980, 36, 620.611, -263.982, -83.6611, 3.83694, 0, 0, 0, 100, 0),
(458980, 37, 614.651, -268.955, -83.7218, 3.83694, 0, 0, 0, 100, 0),
(458980, 38, 607.327, -274.244, -83.7036, 3.50707, 0, 0, 0, 100, 0),
(458980, 39, 599.095, -275.95, -82.8874, 3.32329, 0, 0, 0, 100, 0),
(458980, 40, 584.35, -277.388, -81.5191, 3.13951, 0, 0, 0, 100, 0),
(458980, 41, 574.098, -273.867, -79.2035, 2.62586, 0, 0, 0, 100, 0),
(458980, 42, 565.137, -268.969, -76.7054, 2.62586, 0, 0, 0, 100, 0),
(458980, 43, 559.205, -264.49, -74.3619, 2.47742, 0, 0, 0, 100, 0),
(458980, 44, 553.035, -259.022, -71.7592, 2.61093, 0, 0, 0, 100, 0),
(458980, 45, 544.166, -253.818, -69.6985, 2.61093, 0, 0, 0, 100, 0),
(458980, 46, 537.449, -249.319, -67.7727, 2.57324, 0, 0, 0, 100, 0),
(458980, 47, 533.322, -246.119, -67.3075, 2.35411, 0, 0, 0, 100, 0),
(458980, 48, 526.609, -239.379, -65.8012, 2.35411, 0, 0, 0, 100, 0),
(458980, 49, 521.63, -232.889, -63.7734, 1.80276, 0, 0, 0, 100, 0),
(458980, 50, 521.886, -226.231, -61.633, 1.50823, 0, 0, 0, 100, 0),
(458980, 51, 521.532, -218.157, -59.1486, 1.65667, 0, 0, 0, 100, 0),
(458980, 52, 520.904, -210.858, -58.5182, 1.65667, 0, 0, 0, 100, 0),
(458980, 53, 518.784, -201.869, -59.2058, 1.87816, 0, 0, 0, 100, 0),
(458980, 54, 516.752, -193.686, -59.311, 1.87816, 0, 0, 0, 100, 0),
(458980, 55, 514.466, -184.623, -59.3574, 1.75642, 0, 0, 0, 100, 0),
(458980, 56, 512.295, -177.75, -60.1046, 1.83182, 0, 0, 0, 100, 0),
--
(459170, 1, 503.279, -75.9062, -62.8871, 3.74833, 0, 0, 0, 100, 0),
(459170, 2, 495.299, -72.4976, -62.7607, 2.6095, 0, 0, 0, 100, 0),
(459170, 3, 487.407, -67.3113, -62.0029, 2.6095, 0, 0, 0, 100, 0),
(459170, 4, 479.675, -67.4178, -62.0045, 3.7122, 0, 0, 0, 100, 0),
(459170, 5, 471.948, -74.1093, -63.2492, 3.93368, 0, 0, 0, 100, 0),
(459170, 6, 474.892, -84.9305, -63.1267, 4.8903, 0, 0, 0, 100, 0),
(459170, 7, 483.161, -89.952, -62.822, 5.85791, 0, 0, 0, 100, 0),
(459170, 8, 495.81, -94.4493, -62.4082, 6.00635, 0, 0, 0, 100, 0),
(459170, 9, 504.065, -98.4668, -62.59, 5.86184, 0, 0, 0, 100, 0),
(459170, 10, 510.95, -101.553, -62.1112, 5.86184, 0, 0, 0, 100, 0),
(459170, 11, 520.736, -105.939, -61.9456, 5.86184, 0, 0, 0, 100, 0),
(459170, 12, 530.317, -110.233, -62.052, 5.86184, 0, 0, 0, 100, 0),
(459170, 13, 520.363, -118.498, -62.8147, 3.75068, 0, 0, 0, 100, 0),
(459170, 14, 514.174, -122.816, -63.4014, 3.75068, 0, 0, 0, 100, 0),
(459170, 15, 508.708, -133.471, -61.8637, 4.30361, 0, 0, 0, 100, 0),
(459170, 16, 501.436, -141.24, -62.4252, 3.86064, 0, 0, 0, 100, 0),
(459170, 17, 498.549, -127.979, -62.7092, 1.61754, 0, 0, 0, 100, 0),
(459170, 18, 497.971, -115.631, -62.6449, 1.61754, 0, 0, 0, 100, 0),
(459170, 19, 498.169, -103.239, -62.2475, 1.61754, 0, 0, 0, 100, 0),
(459170, 20, 497.689, -92.9741, -62.4506, 1.61754, 0, 0, 0, 100, 0),
(459170, 21, 497.142, -81.2829, -62.6155, 1.61754, 0, 0, 0, 100, 0),
(459170, 22, 496.56, -68.8295, -62.784, 1.61754, 0, 0, 0, 100, 0),
(459170, 23, 496.222, -61.6204, -62.6855, 1.61754, 0, 0, 0, 100, 0),
(459170, 24, 487.975, -60.6502, -62.2083, 3.0399, 0, 0, 0, 100, 0),
(459170, 25, 482.285, -61.4066, -61.9446, 3.36977, 0, 0, 0, 100, 0),
(459170, 26, 474.505, -67.1349, -62.7462, 3.84807, 0, 0, 0, 100, 0),
(459170, 27, 467.184, -73.3831, -63.7248, 3.84807, 0, 0, 0, 100, 0),
(459170, 28, 458.366, -80.9082, -62.8089, 3.84807, 0, 0, 0, 100, 0),
(459170, 29, 459.028, -86.7789, -62.9545, 5.37018, 0, 0, 0, 100, 0),
(459170, 30, 466.65, -96.6446, -62.0909, 5.37018, 0, 0, 0, 100, 0),
(459170, 31, 470.436, -106.081, -63.3643, 5.089, 0, 0, 0, 100, 0),
(459170, 32, 483.208, -97.3085, -62.2617, 0.657789, 0, 0, 0, 100, 0),
(459170, 33, 493.408, -90.8176, -62.6236, 0.657789, 0, 0, 0, 100, 0),
(459170, 34, 502.696, -84.1296, -62.6481, 0.657789, 0, 0, 0, 100, 0),
(459170, 35, 510.102, -77.4608, -62.1439, 0.879272, 0, 0, 0, 100, 0),
(459170, 36, 518.117, -71.6599, -61.9772, 0.879272, 0, 0, 0, 100, 0),
(459170, 37, 522.93, -65.8474, -62.1209, 0.879272, 0, 0, 0, 100, 0),
(459170, 38, 517.132, -62.0924, -61.9073, 2.37388, 0, 0, 0, 100, 0),
(459170, 39, 510.864, -62.3252, -62.9703, 3.38077, 0, 0, 0, 100, 0),
(459170, 40, 504.861, -68.3842, -63.052, 4.00516, 0, 0, 0, 100, 0),
--
(459240, 1, 478.733, -120.604, -62.1817, 4.83999, 0, 0, 0, 100, 0),
(459240, 2, 480.974, -132.186, -62.1561, 4.93817, 0, 0, 0, 100, 0),
(459240, 3, 483.566, -142.728, -63.6644, 4.86669, 0, 0, 0, 100, 0),
(459240, 4, 487.752, -148.147, -62.5932, 5.89871, 0, 0, 0, 100, 0),
(459240, 5, 496.69, -148.881, -62.9532, 0.05613, 0, 0, 0, 100, 0),
(459240, 6, 508.027, -144.723, -61.9094, 0.423696, 0, 0, 0, 100, 0),
(459240, 7, 516.766, -139.755, -62.2277, 0.472391, 0, 0, 0, 100, 0),
(459240, 8, 525.801, -135.087, -62.4958, 0.583132, 0, 0, 0, 100, 0),
(459240, 9, 528.755, -132.491, -61.593, 0.729216, 0, 0, 0, 100, 0),
(459240, 10, 534.17, -125.364, -61.7675, 1.0261, 0, 0, 0, 100, 0),
(459240, 11, 538.883, -115.526, -63.1098, 1.17218, 0, 0, 0, 100, 0),
(459240, 12, 540.16, -110.659, -62.0163, 1.32062, 0, 0, 0, 100, 0),
(459240, 13, 540.211, -104.668, -61.5168, 1.65285, 0, 0, 0, 100, 0),
(459240, 14, 538.285, -97.2637, -62.0421, 1.82642, 0, 0, 0, 100, 0),
(459240, 15, 535.906, -88.1614, -63.0712, 1.82642, 0, 0, 0, 100, 0),
(459240, 16, 533.998, -80.8606, -61.4849, 1.82642, 0, 0, 0, 100, 0),
(459240, 17, 532.283, -74.298, -62.5562, 1.82642, 0, 0, 0, 100, 0),
(459240, 18, 527.128, -65.6062, -62.5844, 2.34164, 0, 0, 0, 100, 0),
(459240, 19, 521.032, -59.3297, -62.0323, 2.34164, 0, 0, 0, 100, 0),
(459240, 20, 514.689, -54.1481, -62.9338, 2.48772, 0, 0, 0, 100, 0),
(459240, 21, 509.841, -51.6285, -63.8436, 2.67151, 0, 0, 0, 100, 0),
(459240, 22, 505.16, -49.2505, -62.1808, 2.67151, 0, 0, 0, 100, 0),
(459240, 23, 497.585, -48.2873, -61.793, 3.04143, 0, 0, 0, 100, 0),
(459240, 24, 489.532, -49.6157, -63.4869, 3.3713, 0, 0, 0, 100, 0),
(459240, 25, 479.653, -53.9489, -62.0518, 3.59278, 0, 0, 0, 100, 0),
(459240, 26, 474.981, -57.8239, -61.5709, 4.14648, 0, 0, 0, 100, 0),
(459240, 27, 469.369, -66.2496, -62.8827, 4.36797, 0, 0, 0, 100, 0),
(459240, 28, 465.455, -77.1608, -63.5692, 4.36797, 0, 0, 0, 100, 0),
(459240, 29, 463.192, -86.7706, -62.7451, 4.62715, 0, 0, 0, 100, 0),
(459240, 30, 463.892, -95.2137, -62.0244, 4.88633, 0, 0, 0, 100, 0),
(459240, 31, 467.537, -102.894, -62.8533, 5.36228, 0, 0, 0, 100, 0),
(459240, 32, 474.137, -108.327, -63.5647, 5.69215, 0, 0, 0, 100, 0),
--
(478250, 1, 493.654, -125.012, -63.0283, 3.18497, 0, 0, 0, 100, 0),
(478250, 2, 477.097, -129.979, -61.9589, 3.52073, 0, 0, 0, 100, 0),
(478250, 3, 457.697, -137.459, -63.8224, 3.61692, 0, 0, 0, 100, 0),
(478250, 4, 441.529, -150.472, -64.8603, 3.8172, 0, 0, 0, 100, 0),
(478250, 5, 429.82, -160.432, -63.5209, 3.92716, 0, 0, 0, 100, 0),
(478250, 6, 413.965, -179.225, -62.9311, 3.99587, 0, 0, 0, 100, 0),
(478250, 7, 429.005, -162.196, -63.4222, 0.714888, 0, 0, 0, 100, 0),
(478250, 8, 442.362, -150.326, -64.8736, 0.626541, 0, 0, 0, 100, 0),
(478250, 9, 458.977, -135.946, -63.9323, 0.508731, 0, 0, 0, 100, 0),
(478250, 10, 477.489, -128.802, -61.9694, 0.257413, 0, 0, 0, 100, 0),
--
(478320, 1, 522.538, -71.8671, -62.1102, 3.92112, 0, 0, 0, 100, 0),
(478320, 2, 514.395, -77.8503, -62.0057, 3.68157, 0, 0, 0, 100, 0),
(478320, 3, 504.711, -83.8573, -62.4441, 3.86535, 0, 0, 0, 100, 0),
(478320, 4, 501.583, -92.5433, -62.591, 4.56357, 0, 0, 0, 100, 0),
(478320, 5, 499.677, -103.396, -62.3062, 4.45519, 0, 0, 0, 100, 0),
(478320, 6, 497.339, -112.284, -62.6464, 4.45519, 0, 0, 0, 100, 0),
(478320, 7, 493.135, -122.261, -62.9574, 4.3091, 0, 0, 0, 100, 0),
(478320, 8, 484.114, -129.388, -62.5223, 3.35249, 0, 0, 0, 100, 0),
(478320, 9, 474.805, -131.381, -61.9648, 3.35249, 0, 0, 0, 100, 0),
(478320, 10, 474.085, -124.218, -62.2043, 1.76834, 0, 0, 0, 100, 0),
(478320, 11, 473.151, -115.997, -62.7336, 1.76834, 0, 0, 0, 100, 0),
(478320, 12, 472.111, -110.8, -63.9653, 1.76834, 0, 0, 0, 100, 0),
(478320, 13, 470.994, -105.22, -63.2456, 1.76834, 0, 0, 0, 100, 0),
(478320, 14, 466.406, -95.5651, -61.8807, 2.06051, 0, 0, 0, 100, 0),
(478320, 15, 464.985, -88.8285, -62.8065, 1.82881, 0, 0, 0, 100, 0),
(478320, 16, 461.709, -82.0327, -63.0145, 2.02438, 0, 0, 0, 100, 0),
(478320, 17, 471.147, -75.9496, -63.4376, 0.773239, 0, 0, 0, 100, 0),
(478320, 18, 478.172, -76.6198, -62.7125, 0.034965, 0, 0, 0, 100, 0),
(478320, 19, 484.023, -72.8992, -61.9855, 0.956237, 0, 0, 0, 100, 0),
(478320, 20, 485.725, -65.362, -61.9775, 1.21306, 0, 0, 0, 100, 0),
(478320, 21, 493.509, -56.1038, -62.6662, 0.845496, 0, 0, 0, 100, 0),
(478320, 22, 501.671, -61.16, -63.1525, 5.54689, 0, 0, 0, 100, 0),
(478320, 23, 508.419, -65.9176, -62.9294, 5.76837, 0, 0, 0, 100, 0),
(478320, 24, 514.169, -65.9438, -62.1521, 0.258017, 0, 0, 0, 100, 0),
(478320, 25, 523.734, -64.585, -62.147, 0.001192, 0, 0, 0, 100, 0),
--
(906880, 1, 398.787, -73.2724, -62.1508, 2.80194, 0, 0, 0, 100, 0),
(906880, 2, 389.633, -69.5443, -62.5992, 2.80194, 0, 0, 0, 100, 0),
(906880, 3, 380.122, -65.5541, -63.6254, 2.98572, 0, 0, 0, 100, 0),
(906880, 4, 368.895, -65.9787, -65.2383, 3.2072, 0, 0, 0, 100, 0),
(906880, 5, 360.166, -66.1212, -66.596, 3.2072, 0, 0, 0, 100, 0),
(906880, 6, 340.103, -67.0612, -70.1202, 3.35486, 0, 0, 0, 100, 0),
(906880, 7, 327.074, -71.4521, -73.1593, 3.47895, 0, 0, 0, 100, 0),
(906880, 8, 318.606, -74.4224, -75.0844, 3.47895, 0, 0, 0, 100, 0),
(906880, 9, 309.319, -77.6801, -76.6182, 3.47895, 0, 0, 0, 100, 0),
(906880, 10, 303.101, -83.3546, -76.6825, 4.1434, 0, 0, 0, 100, 0),
(906880, 11, 296.624, -90.5684, -75.1085, 3.92427, 0, 0, 0, 100, 0),
(906880, 12, 293.764, -95.7379, -73.8614, 4.20702, 0, 0, 0, 100, 0),
(906880, 13, 304.63, -82.6701, -76.4614, 0.766187, 0, 0, 0, 100, 0),
(906880, 14, 316.878, -74.5574, -75.6033, 0.360921, 0, 0, 0, 100, 0),
(906880, 15, 333.969, -66.7858, -71.7598, 0.177138, 0, 0, 0, 100, 0),
(906880, 16, 347.911, -65.0247, -68.5906, 6.27418, 0, 0, 0, 100, 0),
(906880, 17, 363.369, -66.8161, -66.0297, 6.23649, 0, 0, 0, 100, 0),
(906880, 18, 378.216, -68.1204, -63.9095, 6.12574, 0, 0, 0, 100, 0),
(906880, 19, 389.365, -67.3845, -62.5978, 6.12574, 0, 0, 0, 100, 0),
(906880, 20, 402.504, -70.883, -62.6415, 5.90426, 0, 0, 0, 100, 0),
(906880, 21, 409.44, -75.1959, -62.2326, 5.68278, 0, 0, 0, 100, 0),
--
(908550, 1, 406.651, -185.045, -64.0623, 3.66115, 0, 0, 0, 100, 0),
(908550, 2, 396.446, -192.869, -66.0234, 3.76325, 0, 0, 0, 100, 0),
(908550, 3, 384.625, -202.897, -68.6835, 3.57947, 0, 0, 0, 100, 0),
(908550, 4, 373.865, -205.415, -70.7075, 3.39568, 0, 0, 0, 100, 0),
(908550, 5, 365.643, -206.389, -72.4014, 3.32028, 0, 0, 0, 100, 0),
(908550, 6, 353.635, -207.912, -74.7732, 3.24724, 0, 0, 0, 100, 0),
(908550, 7, 342.741, -207.777, -76.3611, 3.02576, 0, 0, 0, 100, 0),
(908550, 8, 334.543, -206.317, -77.5514, 2.73124, 0, 0, 0, 100, 0),
(908550, 9, 325.518, -202.39, -77.5061, 2.73124, 0, 0, 0, 100, 0),
(908550, 10, 315.957, -197.473, -76.802, 2.62049, 0, 0, 0, 100, 0),
(908550, 11, 306.902, -191.167, -76.1986, 2.50975, 0, 0, 0, 100, 0),
(908550, 12, 293.599, -182.858, -76.2879, 2.42729, 0, 0, 0, 100, 0),
(908550, 13, 285.489, -175.865, -75.6281, 2.2812, 0, 0, 0, 100, 0),
(908550, 14, 278.103, -168.037, -74.2749, 1.64032, 0, 0, 0, 100, 0),
(908550, 15, 275.135, -161.047, -73.0259, 1.64032, 0, 0, 0, 100, 0),
(908550, 16, 273.718, -151.818, -71.3745, 1.64032, 0, 0, 0, 100, 0),
(908550, 17, 277.705, -166.693, -73.9528, 5.10942, 0, 0, 0, 100, 0),
(908550, 18, 288.534, -177.849, -75.8842, 5.55239, 0, 0, 0, 100, 0),
(908550, 19, 299.282, -187.483, -76.1083, 5.55239, 0, 0, 0, 100, 0),
(908550, 20, 310.978, -193.532, -76.4315, 5.84691, 0, 0, 0, 100, 0),
(908550, 21, 324.486, -200.753, -77.3126, 5.70083, 0, 0, 0, 100, 0),
(908550, 22, 338.3, -207.562, -76.9948, 5.84691, 0, 0, 0, 100, 0),
(908550, 23, 350.945, -208.195, -75.2081, 6.25218, 0, 0, 0, 100, 0),
(908550, 24, 363.506, -206.715, -72.8586, 0.190475, 0, 0, 0, 100, 0),
(908550, 25, 377.457, -204.84, -70.0472, 0.152776, 0, 0, 0, 100, 0),
(908550, 26, 389.186, -199.848, -67.7569, 0.4473, 0, 0, 0, 100, 0),
(908550, 27, 400.407, -192.073, -65.5114, 0.85021, 0, 0, 0, 100, 0),
(908550, 28, 408.347, -183.031, -63.7169, 0.85021, 0, 0, 0, 100, 0),
(908550, 29, 415.752, -177.247, -62.6298, 0.704126, 0, 0, 0, 100, 0),
--
(908660, 1, 624.677, -264.098, -83.8733, 3.88103, 0, 0, 0, 100, 0),
(908660, 2, 616.269, -270.365, -83.7729, 3.74751, 0, 0, 0, 100, 0),
(908660, 3, 605.552, -274.583, -83.5437, 3.45299, 0, 0, 0, 100, 0),
(908660, 4, 594.801, -276.12, -82.579, 3.08307, 0, 0, 0, 100, 0),
(908660, 5, 581.241, -275.159, -80.7294, 2.86394, 0, 0, 0, 100, 0),
(908660, 6, 569.527, -272.258, -78.0986, 2.68016, 0, 0, 0, 100, 0),
(908660, 7, 563.201, -269.975, -76.5311, 2.68016, 0, 0, 0, 100, 0),
(908660, 8, 555.083, -263.387, -72.8722, 2.31495, 0, 0, 0, 100, 0),
(908660, 9, 544.828, -254.51, -69.8699, 2.38563, 0, 0, 0, 100, 0),
(908660, 10, 556.459, -261.751, -72.8007, 5.78248, 0, 0, 0, 100, 0),
(908660, 11, 569.698, -268.996, -77.7162, 5.78248, 0, 0, 0, 100, 0),
(908660, 12, 582.886, -273.689, -80.8416, 6.1147, 0, 0, 0, 100, 0),
(908660, 13, 595.057, -273.989, -82.4366, 0.236784, 0, 0, 0, 100, 0),
(908660, 14, 605.043, -272.934, -83.5352, 0.236784, 0, 0, 0, 100, 0),
(908660, 15, 617.953, -269.785, -83.8388, 0.422924, 0, 0, 0, 100, 0),
(908660, 16, 630.388, -259.967, -83.7351, 0.679749, 0, 0, 0, 100, 0),
(908660, 17, 640.114, -248.046, -83.4854, 0.936574, 0, 0, 0, 100, 0),
(908660, 18, 647.178, -238.443, -83.8938, 0.936574, 0, 0, 0, 100, 0),
(908660, 19, 652.378, -227.882, -83.4503, 1.1557, 0, 0, 0, 100, 0),
(908660, 20, 657.983, -217.078, -80.6333, 1.1557, 0, 0, 0, 100, 0),
(908660, 21, 659.484, -207.415, -78.2761, 1.52327, 0, 0, 0, 100, 0),
(908660, 22, 659.718, -194.588, -76.401, 1.59631, 0, 0, 0, 100, 0),
(908660, 23, 658.738, -184.826, -75.0699, 1.78009, 0, 0, 0, 100, 0),
(908660, 24, 656.857, -173.375, -74.0219, 1.78009, 0, 0, 0, 100, 0),
(908660, 25, 653.057, -162.938, -72.7434, 2.03692, 0, 0, 0, 100, 0),
(908660, 26, 655.827, -176.898, -74.1434, 4.82194, 0, 0, 0, 100, 0),
(908660, 27, 657.548, -188.289, -75.468, 4.82194, 0, 0, 0, 100, 0),
(908660, 28, 658.947, -201.008, -77.2987, 4.82194, 0, 0, 0, 100, 0),
(908660, 29, 659.202, -212.684, -79.3931, 4.63816, 0, 0, 0, 100, 0),
(908660, 30, 656.826, -221.301, -81.9293, 4.37898, 0, 0, 0, 100, 0),
(908660, 31, 650.489, -232.543, -83.6114, 4.19519, 0, 0, 0, 100, 0),
(908660, 32, 643.487, -242.028, -83.7388, 4.04911, 0, 0, 0, 100, 0),
(908660, 33, 636.75, -250.649, -83.5857, 4.04911, 0, 0, 0, 100, 0),
(908660, 34, 629.816, -259.524, -83.811, 4.04911, 0, 0, 0, 100, 0),
--
(909170, 1, 569.685, -121.221, -63.9983, 6.0503, 0, 0, 0, 100, 0),
(909170, 2, 580.548, -123.262, -67.0243, 6.09743, 0, 0, 0, 100, 0),
(909170, 3, 589.539, -125.528, -68.8985, 5.94899, 0, 0, 0, 100, 0),
(909170, 4, 597.388, -128.253, -69.1712, 5.94899, 0, 0, 0, 100, 0),
(909170, 5, 606.17, -131.302, -70.592, 5.94899, 0, 0, 0, 100, 0),
(909170, 6, 615.983, -134.71, -71.0369, 5.94899, 0, 0, 0, 100, 0),
(909170, 7, 625.851, -139.839, -71.862, 5.7652, 0, 0, 0, 100, 0),
(909170, 8, 635.929, -146.348, -69.4052, 5.58142, 0, 0, 0, 100, 0),
(909170, 9, 643.36, -152.629, -70.3716, 5.58142, 0, 0, 0, 100, 0),
(909170, 10, 653.591, -165.998, -73.0349, 5.35994, 0, 0, 0, 100, 0),
(909170, 11, 656.658, -176.146, -74.1893, 4.65151, 0, 0, 0, 100, 0),
(909170, 12, 657.485, -193.095, -76.0807, 4.72455, 0, 0, 0, 100, 0),
(909170, 13, 657.667, -208.081, -78.4551, 4.72455, 0, 0, 0, 100, 0),
(909170, 14, 656.803, -218.583, -81.102, 4.54077, 0, 0, 0, 100, 0),
(909170, 15, 651.103, -229.728, -83.6352, 3.98942, 0, 0, 0, 100, 0),
(909170, 16, 644.789, -237.819, -83.7825, 3.98942, 0, 0, 0, 100, 0),
(909170, 17, 639.729, -248.581, -83.4827, 3.98942, 0, 0, 0, 100, 0),
(909170, 18, 631.602, -256.761, -83.6807, 3.80563, 0, 0, 0, 100, 0),
(909170, 19, 618.686, -266.869, -83.7367, 3.80563, 0, 0, 0, 100, 0),
(909170, 20, 608.932, -273.313, -83.7638, 3.69489, 0, 0, 0, 100, 0),
(909170, 21, 620.812, -266.915, -83.8072, 0.733943, 0, 0, 0, 100, 0),
(909170, 22, 629.014, -259.517, -83.8009, 0.733943, 0, 0, 0, 100, 0),
(909170, 23, 637.07, -250.54, -83.5777, 0.955425, 0, 0, 0, 100, 0),
(909170, 24, 644.207, -240.446, -83.8021, 0.955425, 0, 0, 0, 100, 0),
(909170, 25, 651.529, -230.089, -83.6145, 0.955425, 0, 0, 0, 100, 0),
(909170, 26, 658.206, -217.469, -80.7704, 1.14156, 0, 0, 0, 100, 0),
(909170, 27, 660.093, -209.09, -78.4941, 1.47379, 0, 0, 0, 100, 0),
(909170, 28, 658.999, -191.545, -75.9346, 1.65757, 0, 0, 0, 100, 0),
(909170, 29, 657.495, -178.865, -74.6, 1.69291, 0, 0, 0, 100, 0),
(909170, 30, 654, -165.781, -73.1001, 1.9144, 0, 0, 0, 100, 0),
(909170, 31, 647.024, -155.156, -71.0839, 2.42805, 0, 0, 0, 100, 0),
(909170, 32, 636.773, -146.281, -69.2974, 2.42805, 0, 0, 0, 100, 0),
(909170, 33, 627.963, -140.994, -71.8125, 2.61183, 0, 0, 0, 100, 0),
(909170, 34, 613.318, -134.061, -70.8506, 2.83331, 0, 0, 0, 100, 0),
(909170, 35, 599.871, -129.779, -69.3784, 2.83331, 0, 0, 0, 100, 0),
(909170, 36, 586.277, -126.485, -68.371, 2.87101, 0, 0, 0, 100, 0),
(909170, 37, 576.375, -123.738, -65.8695, 2.87101, 0, 0, 0, 100, 0),
(909170, 38, 567.162, -121.665, -63.3953, 2.87101, 0, 0, 0, 100, 0),
(909170, 39, 559.199, -119.857, -61.9604, 2.87101, 0, 0, 0, 100, 0),
--
(910840, 1, 413.787, -76.6374, -62.5173, 2.8238, 0, 0, 0, 100, 0),
(910840, 2, 424.393, -79.1687, -64.2013, 6.00858, 0, 0, 0, 100, 0),
(910840, 3, 436.033, -82.2264, -64.5182, 6.08123, 0, 0, 0, 100, 0),
(910840, 4, 448.819, -84.8865, -63.5181, 6.26776, 0, 0, 0, 100, 0),
(910840, 5, 456.448, -84.4042, -62.8687, 0.098449, 0, 0, 0, 100, 0),
(910840, 6, 472.802, -82.9104, -63.1926, 0.169157, 0, 0, 0, 100, 0),
(910840, 7, 484.962, -85.701, -62.0719, 6.06161, 0, 0, 0, 100, 0),
(910840, 8, 472.09, -82.9367, -63.1713, 3.02804, 0, 0, 0, 100, 0),
(910840, 9, 455.535, -84.4481, -62.978, 3.17334, 0, 0, 0, 100, 0),
(910840, 10, 448.464, -84.795, -63.5365, 3.01823, 0, 0, 0, 100, 0),
(910840, 11, 435.508, -82.24, -64.5627, 2.89846, 0, 0, 0, 100, 0),
(910840, 12, 423.312, -79.215, -64.0575, 2.89846, 0, 0, 0, 100, 0);


-- remove default auras from Twilight Emissaries, they cast them on Respawn
UPDATE `creature_addon` SET `auras` = NULL WHERE `guid` IN 
(47736, 47741, 47751, 47760, 47765, 47766, 47772, 47773, 90633, 90636, 90644, 90645, 90649, 90820, 90823, 90825, 90832, 90833);

-- Group General Angerforge together with the 4 Anvilrage Reservists
DELETE FROM `creature_formations` WHERE `leaderGUID` = 45954;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES 
(45954, 45954, 0, 0, 515, 0, 0),
(45954, 45955, 0, 0, 515, 0, 0),
(45954, 45956, 0, 0, 515, 0, 0),
(45954, 45958, 0, 0, 515, 0, 0),
(45954, 45959, 0, 0, 515, 0, 0);

-- Shadowforge Torch drop rate
UPDATE `creature_loot_template` SET `Chance` = 80 WHERE `Entry` = 9956 AND `Item` = 11885;

-- Rockfist was removed from Phalanx's drop table in TBC - placing it back
DELETE FROM `creature_loot_template` WHERE `Entry` = 9502 AND `Item` = 11743;
INSERT INTO `creature_loot_template` (Entry, Item, Reference, Chance, QuestRequired, LootMode, GroupId, MinCount, MaxCount, Comment) VALUES
(9502, 11743, 0, 0, 0, 1, 1, 1, 1, 'Phalanx - Rockfist');

-- fix Dark Keeper portrait event
UPDATE `gameobject_template` SET `ScriptName` = 'gobject_dark_keeper_portrait' WHERE `entry` = 164819;
DELETE FROM `gameobject` WHERE `guid` = 43131;

/*  Fix Dark Coffer event */
SET @GUID         := 640001;
SET @cover        := 164819;
SET @Portrait     := 164825;
SET @Assemblage   := 8905;
SET @ReliCoffer   := 174564;
SET @ReliCoffer2  := 174563;
SET @ReliCoffer3  := 174562;
SET @ReliCoffer4  := 174561;
SET @ReliCoffer5  := 174560;
SET @ReliCoffer6  := 174559;
SET @ReliCoffer7  := 174554;
SET @ReliCoffer8  := 174555;
SET @ReliCoffer9  := 174556;
SET @ReliCoffer10 := 174557;
SET @ReliCoffer11 := 174566;
SET @ReliCoffer12 := 174558;
SET @DOOM         := 9476;
SET @Secret       := 174553; 
SET @Dark         := 174565;

DELETE FROM `gameobject` WHERE `guid` IN (@GUID);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(@GUID,165554,230,1,1, 802.907, -356.401, -48.9423,0,0,0,-0.382683, 0.92388, 7200, 100, 1);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (@Assemblage, @DOOM);
UPDATE `gameobject_template` SET `AIName` = 'SmartGameObjectAI' WHERE `entry` IN 
(@cover, @Dark, @ReliCoffer, @ReliCoffer2, @ReliCoffer3, @ReliCoffer4, @ReliCoffer5, @ReliCoffer6, @ReliCoffer7, @ReliCoffer8, @ReliCoffer9, @ReliCoffer10, @ReliCoffer11, @ReliCoffer12, @Secret);

DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` = -46610;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` = @Assemblage;
DELETE FROM `smart_scripts` WHERE `source_type` = 9 AND `entryorguid` = @Assemblage*100;
DELETE FROM `smart_scripts` WHERE `source_type` = 9 AND `entryorguid` = @Assemblage*100+1;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` = @DOOM;
DELETE FROM `smart_scripts` WHERE `source_type` = 1 AND `entryorguid` IN 
(@cover, @Dark, @Secret, @ReliCoffer, @ReliCoffer2, @ReliCoffer3, @ReliCoffer4, @ReliCoffer5, @ReliCoffer6, @ReliCoffer7, @ReliCoffer8, @ReliCoffer9, @ReliCoffer10, @ReliCoffer11, @ReliCoffer12);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, 
`action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
--
(@cover,      1, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 106, 16, 0, 0, 0, 0, 0, 20, @Portrait, 5, 0, 0, 0, 0, 0,     'Cover - On gossip hello - Remove flags'),
(@ReliCoffer, 1, 0, 1, 70, 0, 100, 0, 2, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, @Assemblage, 30, 0, 0, 0, 0, 0,    'ReliCoffer - On State 2 - Set data'), 
(@ReliCoffer, 1, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 106, 16, 0, 0, 0, 0, 0, 20, 160836, 10, 0, 0, 0, 0, 0,       'ReliCoffer - On State 2 - Remove flags'), 
(@ReliCoffer2, 1, 0, 1, 70, 0, 100, 0, 2, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, @Assemblage, 30, 0, 0, 0, 0, 0,   'ReliCoffer - On State 2  - Set data'),
(@ReliCoffer2, 1, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 106, 16, 0, 0, 0, 0, 0, 20, 160836, 10, 0, 0, 0, 0, 0,      'ReliCoffer - On State 2 - Remove flags'), 
(@ReliCoffer3, 1, 0, 1, 70, 0, 100, 0, 2, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, @Assemblage, 30, 0, 0, 0, 0, 0,   'ReliCoffer - On State 2  - Set data'),
(@ReliCoffer3, 1, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 106, 16, 0, 0, 0, 0, 0, 20, 160836, 10, 0, 0, 0, 0, 0,      'ReliCoffer - On State 2 - Remove flags'), 
(@ReliCoffer4, 1, 0, 1, 70, 0, 100, 0, 2, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, @Assemblage, 30, 0, 0, 0, 0, 0,   'ReliCoffer - On State 2  - Set data'),
(@ReliCoffer4, 1, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 106, 16, 0, 0, 0, 0, 0, 20, 160836, 10, 0, 0, 0, 0, 0,      'ReliCoffer - On State 2 - Remove flags'), 
(@ReliCoffer5, 1, 0, 1, 70, 0, 100, 0, 2, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, @Assemblage, 30, 0, 0, 0, 0, 0,   'ReliCoffer - On State 2  - Set data'),
(@ReliCoffer5, 1, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 106, 16, 0, 0, 0, 0, 0, 20, 160836, 10, 0, 0, 0, 0, 0,      'ReliCoffer - On State 2 - Remove flags'), 
(@ReliCoffer6, 1, 0, 1, 70, 0, 100, 0, 2, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, @Assemblage, 30, 0, 0, 0, 0, 0,   'ReliCoffer - On State 2  - Set data'),
(@ReliCoffer6, 1, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 106, 16, 0, 0, 0, 0, 0, 20, 160836, 10, 0, 0, 0, 0, 0,      'ReliCoffer - On State 2 - Remove flags'), 
(@ReliCoffer7, 1, 0, 1, 70, 0, 100, 0, 2, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, @Assemblage, 30, 0, 0, 0, 0, 0,   'ReliCoffer - On State 2  - Set data'),
(@ReliCoffer7, 1, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 106, 16, 0, 0, 0, 0, 0, 20, 160836, 10, 0, 0, 0, 0, 0,      'ReliCoffer - On State 2 - Remove flags'), 
(@ReliCoffer8, 1, 0, 1, 70, 0, 100, 0, 2, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, @Assemblage, 30, 0, 0, 0, 0, 0,   'ReliCoffer - On State 2  - Set data'),
(@ReliCoffer8, 1, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 106, 16, 0, 0, 0, 0, 0, 20, 160836, 10, 0, 0, 0, 0, 0,      'ReliCoffer - On State 2 - Remove flags'), 
(@ReliCoffer9, 1, 0, 1, 70, 0, 100, 0, 2, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, @Assemblage, 30, 0, 0, 0, 0, 0,   'ReliCoffer - On State 2  - Set data'),
(@ReliCoffer9, 1, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 106, 16, 0, 0, 0, 0, 0, 20, 160836, 10, 0, 0, 0, 0, 0,      'ReliCoffer - On State 2 - Remove flags'), 
(@ReliCoffer10, 1, 0, 1, 70, 0, 100, 0, 2, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, @Assemblage, 30, 0, 0, 0, 0, 0,  'ReliCoffer - On State 2  - Set data'),
(@ReliCoffer10, 1, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 106, 16, 0, 0, 0, 0, 0, 20, 160836, 10, 0, 0, 0, 0, 0,     'ReliCoffer - On State 2 - Remove flags'), 
(@ReliCoffer11, 1, 0, 1, 70, 0, 100, 0, 2, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, @Assemblage, 30, 0, 0, 0, 0, 0,  'ReliCoffer - On State 2  - Set data'),
(@ReliCoffer11, 1, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 106, 16, 0, 0, 0, 0, 0, 20, 160836, 10, 0, 0, 0, 0, 0,     'ReliCoffer - On State 2 - Remove flags'), 
(@ReliCoffer12, 1, 0, 1, 70, 0, 100, 0, 2, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, @Assemblage, 30, 0, 0, 0, 0, 0,  'ReliCoffer - On State 2  - Set data'),
(@ReliCoffer12, 1, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 106, 16, 0, 0, 0, 0, 0, 20, 160836, 10, 0, 0, 0, 0, 0,     'ReliCoffer - On State 2 - Remove flags'), 
(@Assemblage, 0, 0, 0, 38, 0, 100, 0, 0, 1, 0, 0, 63, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,                'Assemblage - On data set - Increment Counter 1'), -- the counter nbr 1 is incremented here
(@Assemblage, 0, 1, 2, 11, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,                 'Assemblage - On Respawn - Set passif'),
(@Assemblage, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 18, 33554432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,         'Assemblage - On Respawn - Add unit_flag'),
(@Assemblage, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,                'Assemblage - On Respawn - SET PHASE EVENT 0'),
(@Assemblage, 0, 4, 0, 77, 0, 100, 1, 1, 12, 0, 0, 80, @Assemblage*100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Assemblage - On counter1=12 - Actionlist'),  -- event triggred when the counter 1= 12
(@Assemblage*100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 19, 33554432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,      'Assemblage - Actionlist - Remmove unit flag'),
(@Assemblage*100, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,              'Assemblage - Actionlist - react agressif'),
(@Assemblage*100, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,             'Assemblage - Actionlist - SET PHASE EVENT 0'),
(@Assemblage, 0, 5, 0, 0, 0, 100, 0, 4000, 4000, 8000, 8000, 11, 15621, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Assemblage - IC - Cast'),
(@Secret, 1, 0, 0, 70, 0, 100, 0, 2, 0, 0, 0, 106, 16, 0, 0, 0, 0, 0, 20, 161495, 10, 0, 0, 0, 0, 0,           'Secret - On State 2  - Remove flags'),
(@Dark, 1, 0, 0, 70, 0, 100, 0, 2, 0, 0, 0, 106, 16, 0, 0, 0, 0, 0, 20, 160845, 10, 0, 0, 0, 0, 0,             '@Dark - On State 2  - Remove flags'),
(-46610, 0, 0, 0, 38, 0, 100, 0, 0, 1, 0, 0, 63, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,                     'Assemblage - On data set - Increment Counter1'), -- the counter nbr 1 is incremented here
(-46610, 0, 1, 2, 11, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,                      'Assemblage - On Respawn - Set passif'),
(-46610, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 18, 33554432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,              'Assemblage - On Respawn - Add unit_flag'),
(-46610, 0, 4, 0, 77, 0, 100, 1, 1, 12, 0, 0, 80, @Assemblage*100+1, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,    'Assemblage - On counter1=12 - Actionlist'), -- event triggred when the counter 1= 12
(@Assemblage*100+1, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 19, 33554432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,    'Assemblage - Actionlist - Remmove unit flag'),
(@Assemblage*100+1, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,            'Assemblage - Actionlist - react agressif'),
(@Assemblage*100+1, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, @DOOM, 7, 0, 0, 0, 0, 8, 0, 0, 0, 813.737915, -347.550354, -50.578030, 0.670515, 'Assemblage - Actionlist - Summon'),
(@Assemblage*100+1, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,           'Assemblage - Actionlist - SET PHASE EVENT 0'),
(-46610, 0, 5, 0, 0, 0, 100, 0, 4000, 4000, 8000, 8000, 11, 15621, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0,      'Assemblage - IC - Cast'),
(@DOOM, 0, 0, 0, 0, 0, 100, 0, 4000, 4000, 8000, 8000, 11, 11971, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0,       'DOOM - IC - Cast'),
(@DOOM, 0, 1, 0, 0, 0, 100, 0, 10000, 10000, 14000, 14000, 11, 15504, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,   'DOOM - IC - Cast'),
(@DOOM, 0, 2, 0, 6, 0, 100, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 20, 174553, 70, 0, 0, 0, 0, 0,                 'DOOM - On death - Activate gob'),
(@DOOM, 0, 3, 0, 4, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,                        'DOOM - On aggro - Talk');

DELETE FROM `creature_text` WHERE `CreatureID` IN (@DOOM);   
INSERT INTO `creature_text` (`CreatureID`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`, `BroadcastTextID`) VALUES
(@DOOM,0,0,"What are you doing?  Intruders!!",14,0,100,0,0,0,'Watchman Doomgrip', 4962);
