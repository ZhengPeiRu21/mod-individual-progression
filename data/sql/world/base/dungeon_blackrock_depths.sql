/* smart scripts */
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(8889, 8890, 8891, 8892, 8893, 8894, 8895, 8896, 8897, 8898, 8899, 8900, 8901, 8902, 8904, 8905, 8906, 8907, 8908, 8909, 8910, 8911, 8912, 8913, 
8914, 8915, 8920, 8921, 8922, 8923, 9017, 9024, 9025, 9026, 9034, 9035, 9036, 9038, 9040, 9041, 9042, 9056, 9319, 9543, 9545, 9547, 9956, 10043);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(8889, 8890, 8891, 8892, 8893, 8894, 8895, 8896, 8897, 8898, 8899, 8900, 8901, 8902, 8904, 8905, 8906, 8907, 8908, 8909, 8910, 8911, 8912, 8913, 
8914, 8915, 8920, 8921, 8922, 8923, 9017, 9024, 9025, 9026, 9034, 9035, 9036, 9038, 9040, 9041, 9042, 9056, 9319, 9543, 9545, 9547, 9956, 10043);

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
(8894, 0, 3, 0, 14, 0, 100, 0, 2500, 40, 4000, 6000, 0, 0, 11, 15586, 64, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,       'Anvilrage Medic - Friendly Missing 2500 Health - Cast Heal'),
(8894, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Anvilrage Medic - Between 0-15% Health - Flee For Assist'),
(8895, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 9128, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Anvilrage Officer - On Aggro - Cast Battle Shout'),
(8895, 0, 1, 0, 9, 0, 100, 0, 0, 0, 9000, 15000, 0, 5, 11, 6253, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Anvilrage Officer - Within 0-5 Range - Cast Backhand'),
(8895, 0, 2, 0, 14, 0, 100, 0, 3000, 40, 6000, 10000, 0, 0, 11, 13952, 64, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,      'Anvilrage Officer - Friendly Missing 3000 Health - Cast Holy Light'),
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
(8896, 0, 9, 0, 74, 0, 100, 0, 0, 00, 20000, 25000, 50, 40, 11, 11642, 64, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,      'Shadowforge Peasant - Friendly Between 0-50% Health - Cast Heal'),
(8896, 0, 10, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Shadowforge Peasant - Between 0-15% Health - Flee For Assist'),
(8897, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Doomforge Craftsman - Outside 30 Range - Start Combat Movement'),
(8897, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Doomforge Craftsman - Within 5-30 Range - Stop Combat Movement'),
(8897, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Doomforge Craftsman - Within 0-5 Range - Start Combat Movement'),
(8897, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 9143, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Doomforge Craftsman - In Combat - Cast Bomb'),
(8897, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Doomforge Craftsman - Between 0-15% Health - Flee For Assist (No Repeat)'),
(8898, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8258, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Anvilrage Marshal - On Aggro - Cast Devotion Aura'),
(8898, 0, 1, 0, 9, 0, 100, 0, 0, 0, 6000, 8000, 0, 5, 11, 13953, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Anvilrage Marshal - Within 0-5 Range - Cast Holy Strike'),
(8898, 0, 2, 0, 14, 0, 100, 0, 3000, 40, 3000, 6000, 0, 0, 11, 15493, 64, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,       'Anvilrage Marshal - Friendly Missing 3000 Health - Cast Holy Light'),
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
(8907, 0, 0, 0, 0, 0, 100, 0, 1000, 1000, 6000, 9000, 0, 0, 11, 15575, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Wrath Hammer Construct - In Combat - Cast Flame Cannon'),
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
(9017, 0, 1, 0, 0, 0, 100, 0, 6000, 11000, 9000, 16000, 0, 0, 11, 13900, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Lord Incendius - In Combat - Cast Fiery Burst'),
(9017, 0, 2, 0, 0, 0, 100, 0, 12000, 16000, 11000, 14000, 0, 0, 11, 13899, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Lord Incendius - In Combat - Cast Fire Storm'),
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
(9036, 0, 2, 0, 0, 0, 100, 0, 15000, 20000, 15000, 20000, 0, 0, 11, 15585, 65, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Vile\'rel - In Combat - Cast Prayer of Healing'),
(9036, 0, 3, 0, 2, 0, 100, 0, 0, 50, 16000, 20000, 0, 0, 11, 15586, 65, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Vile\'rel - Between 0-50% Health - Cast Heal'),
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
(9056, 0, 1, 0, 2, 0, 100, 1, 0, 60, 0, 0, 0, 0, 11, 15493, 65, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Fineous Darkvire - Between 0-60% Health - Cast Holy Light (No Repeat)'),
(9056, 0, 2, 0, 2, 0, 100, 1, 0, 40, 0, 0, 0, 0, 11, 15493, 64, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Fineous Darkvire - Between 0-40% Health - Cast Holy Light (No Repeat)'),
(9056, 0, 3, 0, 9, 0, 100, 0, 0, 0, 6000, 8500, 0, 5, 11, 13953, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Fineous Darkvire - Within 0-5 Range - Cast Holy Strike'),
(9056, 0, 4, 0, 105, 0, 100, 0, 0, 0, 11000, 15000, 0, 5, 11, 11978, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,         'Fineous Darkvire - Target Casting - Cast Kick'),
(9056, 0, 5, 0, 2, 0, 100, 1, 0, 20, 0, 0, 0, 0, 11, 15346, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Fineous Darkvire - Between 0-20% Health - Cast Seal of Reckoning (No Repeat)'),
--
(9319, 0, 0, 0, 0, 0, 100, 0, 9000, 10000, 15000, 60000, 0, 0, 11, 13730, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Houndmaster Grebmar - In Combat - Cast Demoralizing Shout'),
(9319, 0, 1, 0, 105, 0, 100, 0, 0, 0, 7000, 25000, 0, 5, 11, 15615, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,          'Houndmaster Grebmar - Target Casting - Cast Pummel'),
(9319, 0, 2, 0, 0, 0, 100, 0, 4000, 12000, 4000, 12000, 0, 0, 11, 21049, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Houndmaster Grebmar - In Combat - Cast Bloodlust'), -- https://www.youtube.com/watch?v=RdBpOWNqZeg
(9319, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Houndmaster Grebmar - Between 0-15% Health - Flee For Assist (No Repeat)'),
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

    
-- Houndmaster Grebmar, guid 46284, entry 9319, waypoints?

-- fireguard destroyer, guid 47738, entry 8911, waypoints?


/*  Rockfist was removed from Phalanx's drop table in TBC - placing it back */
DELETE FROM `creature_loot_template` WHERE `Entry` = 9502 AND `Item` = 11743;
INSERT INTO `creature_loot_template` (Entry, Item, Reference, Chance, QuestRequired, LootMode, GroupId, MinCount, MaxCount, Comment) VALUES
(9502, 11743, 0, 0, 0, 1, 1, 1, 1, 'Phalanx - Rockfist');


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
