/* smart scripts */
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (1766, 1778, 1797, 1923);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN
(1767, 1768, 1769, 1772, 1773, 1779, 1780, 1781, 1782, 1865, 1866, 1867, 1868, 1870, 1888, 1889, 1891, 1894, 1895, 1908, 1909, 1912, 1913, 1914, 1915, 
1920, 1924, 1939, 1940, 1942, 1947, 1953, 1954, 1955, 1956, 1957, 1958, 1971, 1973, 1974, 1983, 2053, 2054, 2120, 2283, 2332, 2529, 3528, 3530, 3532, 5682, 12431, 12433);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(1766, 1767, 1768, 1769, 1772, 1773, 1778, 1779, 1780, 1781, 1782, 1797, 1865, 1866, 1867, 1868, 1870, 1888, 1889, 1891, 1894, 1895, 1908, 1909, 1912, 1913, 1914, 1915, 
1920, 1923, 1924, 1939, 1940, 1942, 1947, 1953, 1954, 1955, 1956, 1957, 1958, 1971, 1973, 1974, 1983, 2053, 2054, 2120, 2283, 2332, 2529, 3528, 3530, 3532, 5682, 12431, 12433);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(1767, 0, 0, 0, 0, 0, 100, 0, 8000, 17000, 32000, 58000, 0, 0, 11, 3252, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Vile Fin Shredder - In Combat - Cast Shred'),
(1767, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Vile Fin Shredder - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1768, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 900000, 900000, 0, 0, 11, 12544, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Vile Fin Tidehunter - Out of Combat - Cast Frost Armor'),
(1768, 0, 1, 0, 106, 0, 100, 0, 0, 0, 21000, 28000, 0, 8, 11, 12748, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Vile Fin Tidehunter - Within 0-8 Range - Cast Frost Nova'),
(1768, 0, 2, 0, 0, 0, 100, 0, 0, 0, 15000, 30000, 0, 0, 11, 4980, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Vile Fin Tidehunter - In Combat - Cast Quick Frost Ward'),
(1768, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Vile Fin Tidehunter - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1769, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 900000, 900000, 0, 0, 11, 12544, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Moonrage Whitescalp - Out of Combat - Cast Frost Armor'),
--
(1772, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Rot Hide Gladerunner - On Aggro - Say Line 0'),
(1772, 0, 1, 0, 0, 0, 100, 0, 7000, 20000, 32000, 54000, 0, 0, 11, 3237, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Rot Hide Gladerunner - In Combat - Cast Curse of Thule'),
(1773, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Rot Hide Mystic - On Aggro - Say Line 0'),
(1773, 0, 1, 0, 74, 0, 100, 0, 0, 0, 14000, 22000, 50, 40, 11, 332, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,          'Rot Hide Mystic - Friendly Between 0-50% Health - Cast Healing Wave'),
(1773, 0, 2, 0, 0, 0, 100, 0, 2000, 12000, 30000, 45000, 0, 0, 11, 3237, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Rot Hide Mystic - In Combat - Cast Curse of Thule'),
(1773, 0, 3, 0, 6, 0, 20, 0, 0, 0, 0, 0, 0, 0, 12, 1983, 4, 150000, 0, 0, 0, 8, 0, 0, 0, 0, 1073.84, 1543.37, 28.6752, 0.174533, 'Rot Hide Mystic - On Just Died - Summon Creature \'Nightlash\''),
--
(1779, 0, 0, 0, 0, 0, 100, 0, 5000, 10000, 13000, 21000, 0, 0, 11, 6958, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Moonrage Glutton - Within 0-5 Range - Cast Blood Leech'),
(1780, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7276, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Moss Stalker - On Respawn - Cast Poison Proc'),
(1781, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7276, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Mist Creeper - On Respawn - Cast Poison Proc'),
(1782, 0, 0, 1, 2, 0, 100, 1, 0, 50, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Moonrage Darksoul - Between 0-50% Health - Cast Enrage (No Repeat)'),
(1782, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Moonrage Darksoul - On Enrage - Say Line 0'),
(1865, 0, 0, 0, 0, 0, 100, 0, 17, 26, 36, 58, 0, 0, 11, 5271, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,              'Ravenclaw Raider - Within 0-5 Range - Cast Cursed Blade'),
(1866, 0, 0, 0, 0, 0, 100, 0, 6000, 12000, 33000, 41000, 0, 0, 11, 7761, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Ravenclaw Slave - In Combat - Cast Shared Bondage'),
(1867, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 900000, 900000, 0, 0, 11, 12544, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Dalaran Apprentice - Out of Combat - Cast Frost Armor'),
(1867, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 13322, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Dalaran Apprentice - In Combat - Cast Frostbolt'),
(1867, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Dalaran Apprentice - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1868, 0, 0, 0, 2, 0, 100, 1, 0, 65, 22000, 22000, 0, 0, 11, 7290, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Ravenclaw Servant - Between 0-65% Health - Cast Soul Siphon (No Repeat)'),
(1868, 0, 1, 0, 0, 0, 100, 0, 4000, 4000, 24000, 28000, 0, 0, 11, 980, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Ravenclaw Servant - In Combat - Cast Curse of Agony'),
(1870, 0, 0, 0, 0, 0, 100, 0, 7000, 16000, 15000, 28000, 0, 0, 11, 3263, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Hand of Ravenclaw - Within 0-5 Range - Cast Touch of Ravenclaw'),
(1888, 0, 0, 0, 0, 0, 100, 0, 1000, 3000, 61000, 67000, 0, 0, 11, 134, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Dalaran Watcher - In Combat - Cast Fire Shield'),
(1888, 0, 1, 0, 0, 0, 100, 0, 9000, 18000, 17000, 28000, 0, 0, 11, 2120, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,    'Dalaran Watcher - In Combat - Cast Flamestrike'),
(1888, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Dalaran Watcher - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1889, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 900000, 900000, 0, 0, 11, 12544, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Dalaran Wizard - Out of Combat - Cast Frost Armor'),
(1889, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20792, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Dalaran Wizard - In Combat - Cast Frostbolt'),
(1889, 0, 2, 0, 106, 0, 100, 0, 0, 0, 9000, 14000, 0, 8, 11, 11831, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Dalaran Wizard - Within 0-8 Range - Cast Frost Nova'),
(1889, 0, 3, 0, 0, 0, 100, 0, 3000, 5000, 14000, 20000, 0, 0, 11, 4980, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Dalaran Wizard - In Combat - Cast Quick Frost Ward'),
(1889, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Dalaran Wizard - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1891, 0, 0, 2, 1, 0, 100, 512, 5000, 5000, 5000, 5000, 0, 0, 36, 1892, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Pyrewood Watcher - Out of Combat - Update Entry'),
(1891, 0, 1, 2, 1, 0, 100, 512, 5000, 5000, 5000, 5000, 0, 0, 36, 1891, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Pyrewood Watcher - Out of Combat - Update Entry'),
(1891, 0, 2, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 24085, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Pyrewood Watcher - Out of Combat - Cast Transform Visual'),
(1891, 0, 3, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Pyrewood Watcher - Outside 30 Range - Start Combat Movement'),
(1891, 0, 4, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Pyrewood Watcher - Within 5-30 Range - Stop Combat Movement'),
(1891, 0, 5, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Pyrewood Watcher - Within 0-5 Range - Start Combat Movement'),
(1891, 0, 6, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Pyrewood Watcher - Within 5-30 Range - Cast Shoot'),
(1891, 0, 7, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Pyrewood Watcher - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1894, 0, 0, 2, 1, 0, 100, 512, 5000, 5000, 5000, 5000, 0, 0, 36, 1893, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Pyrewood Sentry - Out of Combat - Update Entry'),
(1894, 0, 1, 2, 1, 0, 100, 512, 5000, 5000, 5000, 5000, 0, 0, 36, 1894, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Pyrewood Sentry - Out of Combat - Update Entry'),
(1894, 0, 2, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 24085, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Pyrewood Sentry - Out of Combat - Cast Transform Visual'),
(1894, 0, 3, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7164, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Pyrewood Sentry - On Aggro - Cast Defensive Stance'),
(1894, 0, 4, 0, 105, 0, 100, 0, 0, 0, 20000, 40000, 0, 5, 11, 11972, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,         'Pyrewood Sentry - Target Casting - Cast Shield Bash'),
(1894, 0, 5, 0, 0, 0, 100, 0, 2000, 20000, 12000, 30000, 0, 0, 11, 12169, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Pyrewood Sentry - In Combat - Cast Shield Block'),
(1894, 0, 6, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Pyrewood Sentry - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1895, 0, 0, 2, 1, 0, 100, 512, 5000, 5000, 5000, 5000, 0, 0, 36, 1896, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Pyrewood Elder - Out of Combat - Update Entry'),
(1895, 0, 1, 2, 1, 0, 100, 512, 5000, 5000, 5000, 5000, 0, 0, 36, 1895, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Pyrewood Elder - Out of Combat - Update Entry'),
(1895, 0, 2, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 24085, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Pyrewood Elder - Out of Combat - Cast Transform Visual'),
(1895, 0, 3, 0, 14, 0, 100, 0, 200, 30, 10000, 20000, 0, 0, 11, 2053, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,        'Pyrewood Elder - Friendly Missing 200 Health - Cast Lesser Heal'),
(1895, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Pyrewood Elder - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1908, 0, 0, 0, 9, 0, 100, 0, 0, 0, 12100, 20600, 0, 20, 11, 2606, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Vile Fin Oracle - Within 0-20 Range - Cast Shock'),
(1908, 0, 1, 0, 14, 0, 100, 0, 150, 30, 24400, 32900, 0, 0, 11, 913, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,         'Vile Fin Oracle - Friendly Missing 150 Health - Cast Healing Wave'),
(1908, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Vile Fin Oracle - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1909, 0, 0, 0, 0, 0, 100, 0, 10000, 17000, 33000, 40000, 0, 0, 11, 5605, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Vile Fin Lakestalker - In Combat - Cast Healing Ward'),
(1909, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Vile Fin Lakestalker - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1912, 0, 0, 0, 0, 0, 100, 0, 9000, 18000, 16000, 28000, 0, 0, 11, 3615, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Dalaran Protector - In Combat - Cast Summon Dalaran Serpent'),
(1912, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Dalaran Protector - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1913, 0, 0, 0, 0, 0, 100, 0, 9000, 18000, 16000, 28000, 0, 0, 11, 3615, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Dalaran Warder - In Combat - Cast Summon Dalaran Serpent'),
(1913, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Dalaran Warder - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1914, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20793, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Dalaran Mage - In Combat - Cast Fireball'),
(1914, 0, 1, 0, 0, 0, 100, 1, 8000, 14000, 0, 0, 0, 0, 11, 134, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Dalaran Mage - In Combat - Cast Fire Shield'),
(1914, 0, 2, 0, 0, 0, 100, 0, 4000, 7000, 20000, 30000, 0, 0, 11, 4979, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Dalaran Mage - In Combat - Cast Quick Flame Ward'),
(1914, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Dalaran Mage - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1915, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 900000, 900000, 0, 0, 11, 20798, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Dalaran Conjuror - Out of Combat - Cast Demon Skin'),
(1915, 0, 1, 0, 1, 0, 100, 1, 0, 2000, 0, 0, 0, 0, 11, 25112, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Dalaran Conjuror - Out of Combat - Cast Summon Voidwalker (No Repeat)'),
(1915, 0, 2, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20791, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Dalaran Conjuror - In Combat - Cast Shadow Bolt'),
(1915, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Dalaran Conjuror - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1920, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 900000, 900000, 0, 0, 11, 12544, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Dalaran Spellscribe - Out of Combat - Cast Frost Armor'),
(1920, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20792, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Dalaran Spellscribe - In Combat - Cast Frostbolt'),
(1920, 0, 2, 0, 0, 0, 20, 0, 20000, 25000, 60000, 60000, 0, 0, 11, 5276, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Dalaran Spellscribe - In Combat - Cast Freeze'),
(1920, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Dalaran Spellscribe - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(1924, 0, 0, 0, 0, 0, 100, 0, 5000, 22000, 23000, 27000, 0, 0, 11, 3264, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Moonrage Bloodhowler - In Combat - Cast Blood Howl'),
(1939, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Rot Hide Brute - On Aggro - Say Line 0'),
(1939, 0, 1, 0, 9, 0, 100, 0, 0, 0, 5000, 9000, 0, 5, 11, 11971, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Rot Hide Brute - Within 0-5 Range - Cast Sunder Armor'),
(1939, 0, 2, 0, 0, 0, 100, 0, 7000, 20000, 32000, 54000, 0, 0, 11, 3237, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Rot Hide Brute - In Combat - Cast Curse of Thule'),
(1940, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Rot Hide Plague Weaver - On Aggro - Say Line 0'),
(1940, 0, 1, 0, 0, 0, 75, 0, 5000, 5000, 20000, 40000, 0, 0, 11, 3256, 32, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,     'Rot Hide Plague Weaver - In Combat - Cast Plague Cloud'),
(1940, 0, 2, 0, 0, 0, 100, 0, 7000, 20000, 32000, 54000, 0, 0, 11, 3237, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Rot Hide Plague Weaver - In Combat - Cast Curse of Thule'),
(1942, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Rot Hide Savage - On Aggro - Say Line 0'),
(1942, 0, 1, 0, 0, 0, 100, 0, 11000, 16000, 31000, 37000, 0, 0, 11, 3258, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Rot Hide Savage - In Combat - Cast Savage Rage'),
(1942, 0, 2, 0, 0, 0, 100, 0, 7000, 20000, 32000, 54000, 0, 0, 11, 3237, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Rot Hide Savage - In Combat - Cast Curse of Thule'),
(1947, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 13787, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Thule Ravenclaw - Out of Combat - Cast Demon Armor (No Repeat)'),
(1947, 0, 1, 0, 1, 0, 100, 1, 3000, 3000, 0, 0, 0, 0, 11, 11939, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Thule Ravenclaw - Out of Combat - Cast Summon Imp (No Repeat)'),
(1947, 0, 2, 0, 0, 0, 100, 0, 3000, 7000, 31000, 37000, 0, 0, 11, 7655, 32, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,    'Thule Ravenclaw - In Combat - Cast Hex of Ravenclaw'),
(1947, 0, 3, 0, 0, 0, 100, 0, 2000, 5000, 8000, 23000, 0, 0, 11, 20800, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Thule Ravenclaw - In Combat - Cast Immolate'),
--
(1953, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 6867, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Lake Skulker - On Respawn - Cast Moss Covered Hands Proc'),
(1954, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 6867, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Elder Lake Skulker - On Respawn - Cast Moss Covered Hands Proc'),
(1954, 0, 1, 0, 2, 0, 100, 0, 0, 50, 32000, 45000, 0, 0, 11, 9616, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Elder Lake Skulker - Between 0-50% Health - Cast Wild Regeneration'),
(1955, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 6871, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Lake Creeper - On Respawn - Cast Moss Covered Feet Proc'),
(1956, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 6871, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Elder Lake Creeper - On Respawn - Cast Moss Covered Feet Proc'),
(1956, 0, 1, 0, 0, 0, 100, 0, 4000, 11000, 24000, 40000, 0, 0, 11, 11922, 32, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,  'Elder Lake Creeper - In Combat - Cast Entangling Roots'),
(1957, 0, 0, 0, 0, 0, 100, 0, 8000, 16000, 30000, 38000, 0, 0, 11, 1776, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,     'Vile Fin Shorecreeper - Within 0-5 Range - Cast Gouge'),
(1957, 0, 1, 0, 67, 0, 100, 0, 0, 0, 6000, 12000, 0, 5, 11, 7159, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Vile Fin Shorecreeper - Behind Target - Cast Backstab'),
(1957, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Vile Fin Shorecreeper - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1958, 0, 0, 0, 106, 0, 100, 0, 0, 0, 32, 58, 0, 8, 11, 11831, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Vile Fin Tidecaller - Within 0-8 Range - Cast Frost Nova'),
(1958, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Vile Fin Tidecaller - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(1971, 0, 0, 0, 11, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 7668, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Ivar the Foul - On Respawn - Cast Foul Odor (No Repeat)'),
(1973, 0, 0, 0, 0, 0, 100, 0, 8000, 19000, 36000, 51000, 0, 0, 11, 3248, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Ravenclaw Guardian - In Combat - Cast Improved Blocking'),
(1974, 0, 0, 0, 0, 0, 100, 0, 26000, 26000, 32000, 44000, 0, 0, 11, 3269, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Ravenclaw Drudger - In Combat - Cast Blessing of Thule'),
(1983, 0, 0, 0, 0, 0, 100, 0, 7000, 9000, 21000, 25000, 0, 0, 11, 3485, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 0,    'Nightlash - Within 0-10 Range - Cast Wail of Nightlash'),
(1983, 0, 1, 0, 14, 0, 100, 1, 150, 30, 0, 0, 0, 0, 11, 3477, 64, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,               'Nightlash - Friendly Missing 150 Health - Cast Spirit Steal (No Repeat)'),
(1983, 0, 2, 0, 6, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Nightlash - On Just Died - Say Line 0'),
--
(2053, 0, 0, 0, 0, 0, 100, 0, 12000, 26000, 28000, 36000, 0, 0, 11, 3261, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,  'Haggard Refugee - Within 0-5 Range - Cast Ignite'),
(2053, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Haggard Refugee - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2054, 0, 0, 0, 0, 0, 100, 0, 1000, 8000, 19000, 32000, 0, 0, 11, 1776, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Sickly Refugee - In Combat - Cast Gouge'),
(2054, 0, 1, 0, 0, 0, 100, 0, 3000, 9000, 12000, 19000, 0, 0, 11, 101, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,       'Sickly Refugee - In Combat - Cast Trip'),
(2054, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Sickly Refugee - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2120, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 3000, 0, 0, 11, 20792, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Archmage Ataeric - In Combat - Cast Frostbolt'),
(2120, 0, 1, 0, 0, 0, 100, 0, 11000, 16000, 28000, 38000, 0, 0, 11, 512, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,    'Archmage Ataeric - In Combat - Cast Chains of Ice'),
(2120, 0, 2, 0, 0, 0, 100, 0, 4000, 9000, 35000, 45000, 0, 0, 11, 118, 1, 0, 0, 0, 0, 6, 30, 0, 0, 0, 0, 0, 0, 0,      'Archmage Ataeric - In Combat - Cast Polymorph'),
(2120, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Archmage Ataeric - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2283, 0, 0, 0, 0, 0, 100, 0, 8000, 16000, 27000, 38000, 0, 0, 11, 970, 32, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,    'Ravenclaw Regent - In Combat - Cast Shadow Word: Pain'),
(2332, 0, 0, 0, 0, 0, 100, 0, 6000, 11000, 10000, 20000, 0, 0, 11, 14873, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Valdred Moray - Within 0-5 Range - Cast Sinister Strike'),
(2332, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Valdred Moray - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2529, 0, 0, 0, 0, 0, 100, 0, 11000, 11000, 9000, 21000, 0, 0, 11, 7124, 32, 0, 0, 0, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0,   'Son of Arugal - Within 0-20 Range - Cast Arugals Gift'),
--
(3528, 0, 0, 2, 1, 0, 100, 512, 5000, 5000, 5000, 5000, 0, 0, 36, 3529, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Pyrewood Armorer - Out of Combat - Update Entry'),
(3528, 0, 1, 2, 1, 0, 100, 512, 5000, 5000, 5000, 5000, 0, 0, 36, 3528, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Pyrewood Armorer - Out of Combat - Update Entry'),
(3528, 0, 2, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 24085, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Pyrewood Armorer - Out of Combat - Cast Transform Visual'),
(3528, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Pyrewood Armorer - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3530, 0, 0, 2, 1, 0, 100, 512, 5000, 5000, 5000, 5000, 0, 0, 36, 3531, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Pyrewood Tailor - Out of Combat - Update Entry'),
(3530, 0, 1, 2, 1, 0, 100, 512, 5000, 5000, 5000, 5000, 0, 0, 36, 3530, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Pyrewood Tailor - Out of Combat - Update Entry'),
(3530, 0, 2, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 24085, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Pyrewood Tailor - Out of Combat - Cast Transform Visual'),
(3530, 0, 3, 0, 67, 0, 100, 0, 0, 0, 7000, 7000, 0, 5, 11, 15657, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Pyrewood Tailor - Behind Target - Cast Backstab'),
(3530, 0, 4, 0, 0, 0, 100, 0, 5000, 15000, 10000, 17000, 0, 0, 11, 6713, 32, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,    'Pyrewood Tailor - Within 0-5 Range - Cast Disarm'),
(3530, 0, 5, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Pyrewood Tailor - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3532, 0, 0, 2, 1, 0, 100, 512, 5000, 5000, 5000, 5000, 0, 0, 36, 3533, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Pyrewood Leatherworker - Out of Combat - Update Entry'),
(3532, 0, 1, 2, 1, 0, 100, 512, 5000, 5000, 5000, 5000, 0, 0, 36, 3532, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Pyrewood Leatherworker - Out of Combat - Update Entry'),
(3532, 0, 2, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 24085, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Pyrewood Leatherworker - Out of Combat - Cast Transform Visual'),
(3532, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Pyrewood Leatherworker - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(5682, 0, 0, 0, 2, 0, 100, 0, 0, 80, 20000, 30000, 0, 0, 11, 6075, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Dalin Forgewright - Between 0-80% Health - Cast Renew'),
(5682, 0, 1, 0, 2, 0, 100, 0, 0, 30, 10000, 20000, 0, 0, 11, 2054, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Dalin Forgewright - Between 0-30% Health - Cast Heal'),
(5682, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Dalin Forgewright - Between 0-15% Health - Flee For Assist (No Repeat)'),
(12431, 0, 0, 0, 0, 0, 100, 0, 5000, 9000, 16000, 19000, 0, 0, 11, 13445, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Gorefang - Within 0-5 Range - Cast Rend'),
(12433, 0, 0, 0, 2, 0, 100, 0, 0, 20, 32100, 38100, 0, 0, 11, 12040, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Krethis Shadowspinner - Between 0-20% Health - Cast Shadow Shield'),
(12433, 0, 1, 0, 0, 0, 100, 0, 9000, 15000, 12000, 17000, 0, 0, 11, 17439, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Krethis Shadowspinner - In Combat - Cast Shadow Shock');


DELETE FROM `creature_text` WHERE `CreatureID` IN (1983);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(1983, 0, 0, 'I shall return in time...', 12, 0, 100, 0, 0, 0, 500, 0, 'Nightlash');


-- Quest: The Dead Fields - Nightlash now gets summoned by killing Rot Hide Mystics
DELETE FROM `creature` WHERE `id1` = 1983;
DELETE FROM `creature_addon` WHERE `guid` = 28379;

-- Quest: Call of Water (Shaman)
UPDATE `quest_template` SET `LogDescription`='Speak to the Minor Manifestation of Water in Silverpine Forest.' WHERE `ID`=100;

-- Quest: Pyrewood Ambush
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` BETWEEN 2060 AND 2068;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` BETWEEN 2060 AND 2068;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(2060, 0, 1, 0, 7, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 1500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Councilman Smithers  - On Evade - Despawn In 1500 ms'), -- they should not transform into worgen
(2061, 0, 1, 0, 7, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 1500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Councilman Thatcher  - On Evade - Despawn In 1500 ms'),
(2062, 0, 1, 0, 7, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 1500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Councilman Hendricks - On Evade - Despawn In 1500 ms'),
(2063, 0, 1, 0, 7, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 1500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Councilman Wilhelm   - On Evade - Despawn In 1500 ms'),
(2064, 0, 1, 0, 7, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 1500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Councilman Hartin    - On Evade - Despawn In 1500 ms'),
(2065, 0, 1, 0, 7, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 1500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Councilman Cooper    - On Evade - Despawn In 1500 ms'),
(2066, 0, 1, 0, 7, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 1500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Councilman Higarth   - On Evade - Despawn In 1500 ms'),
(2067, 0, 1, 0, 7, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 1500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Councilman Brunswick - On Evade - Despawn In 1500 ms'),
(2068, 0, 1, 0, 7, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 1500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lord Mayor Morrison  - On Evade - Despawn In 1500 ms');
