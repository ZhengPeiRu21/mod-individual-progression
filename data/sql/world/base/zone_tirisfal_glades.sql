/* smart scripts */
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(1504, 1505, 1506, 1507, 1522, 1523, 1525, 1526, 1527, 1528, 1529, 1530, 1531, 1532, 1533, 1534, 1535, 1536, 1537, 1538, 1539, 1540, 1544, 1545, 1553, 1554, 1555, 
1657, 1660, 1662, 1664, 1665, 1674, 1675, 1688, 1753, 1765, 1910, 1911, 1934, 1935, 1936, 1941, 1943, 1944, 10356, 10358, 13158, 15195);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(1504, 1505, 1506, 1507, 1522, 1523, 1525, 1526, 1527, 1528, 1529, 1530, 1531, 1532, 1533, 1534, 1535, 1536, 1537, 1538, 1539, 1540, 1544, 1545, 1553, 1554, 1555, 
1657, 1660, 1662, 1664, 1665, 1674, 1675, 1688, 1753, 1765, 1910, 1911, 1934, 1935, 1936, 1941, 1943, 1944, 10356, 10358, 13158, 15195);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(1504, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 6752, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Young Night Web Spider - On Respawn - Cast Weak Poison Proc'),
(1505, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 6752, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Night Web Spider - On Respawn - Cast Weak Poison Proc'),
(1506, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Scarlet Convert - On Aggro - Say Line 0'),
(1507, 0, 0, 0, 4, 0, 50, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                         'Scarlet Initiate - On Aggro - Say Line 0'),
(1507, 0, 1, 0, 1, 0, 100, 0, 1000, 1000, 900000, 900000, 0, 0, 11, 12544, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Scarlet Initiate - Out of Combat - Cast Frost Armor'),
(1507, 0, 2, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20793, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Scarlet Initiate - In Combat - Cast Fireball'),
(1522, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 13322, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Darkeye Bonecaster - In Combat - Cast Frostbolt'),
(1523, 0, 0, 0, 0, 0, 100, 0, 4000, 9000, 21000, 25000, 0, 0, 11, 589, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Cracked Skull Soldier - On Aggro - Cast Shadow Word: Pain'),
(1525, 0, 0, 0, 9, 0, 100, 9, 0, 0, 9000, 15000, 0, 5, 11, 3234, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Rotting Dead - Within 0-5 Range - Cast Disease Touch'),
(1526, 0, 0, 0, 9, 0, 100, 9, 0, 0, 9000, 15000, 0, 5, 11, 3234, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Ravaged Corpse - Within 0-5 Range - Cast Disease Touch'),
(1527, 0, 0, 0, 9, 0, 100, 9, 0, 0, 9000, 15000, 0, 5, 11, 3234, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Hungering Dead - Within 0-5 Range - Cast Disease Touch'),
(1528, 0, 0, 0, 9, 0, 100, 9, 0, 0, 9000, 15000, 0, 5, 11, 3234, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Shambling Horror - Between 20-80% Health - Cast Disease Touch'),
(1529, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3235, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Bleeding Horror - On Respawn - Cast Rancid Blood Proc'),
(1530, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3235, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Rotting Ancestor - On Respawn - Cast Rancid Blood Proc'),
(1531, 0, 0, 0, 9, 0, 100, 0, 0, 0, 12000, 21000, 0, 8, 11, 7713, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Lost Soul - Within 0-8 Range - Cast Wailing Dead'),
(1532, 0, 0, 0, 9, 0, 100, 0, 0, 0, 12000, 21000, 0, 8, 11, 7713, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Wandering Spirit - Within 0-8 Range - Cast Wailing Dead'),
(1533, 0, 0, 0, 9, 0, 100, 0, 0, 0, 12000, 21000, 0, 8, 11, 7713, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Tormented Spirit - Within 0-8 Range - Cast Wailing Dead'),
(1534, 0, 0, 0, 9, 0, 100, 0, 0, 0, 12000, 21000, 0, 8, 11, 7713, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Wailing Ancestor - Within 0-8 Range - Cast Wailing Dead'),
--
(1535, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Scarlet Warrior - On Aggro - Say Line 0'),
(1535, 0, 1, 0, 0, 0, 100, 0, 3000, 5000, 45000, 50000, 0, 0, 11, 3238, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Scarlet Warrior - In Combat - Cast Nimble Reflexes'),
(1535, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Scarlet Warrior - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1536, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Scarlet Missionary - On Aggro - Say Line 0'),
(1536, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Scarlet Missionary - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1537, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Scarlet Zealot - On Aggro - Say Line 0'),
(1537, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Scarlet Zealot - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1538, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Scarlet Friar - On Aggro - Say Line 0'),
(1538, 0, 1, 0, 1, 0, 100, 0, 1000, 1000, 900000, 900000, 0, 0, 11, 1243, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Scarlet Friar - Out of Combat - Cast Power Word: Fortitude'),
(1538, 0, 2, 0, 14, 0, 100, 0, 55, 40, 8000, 12000, 0, 0, 11, 2052, 65, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,         'Scarlet Friar - Friendly Missing 55 Health - Cast Lesser Heal'),
(1538, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Scarlet Friar - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1539, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Scarlet Neophyte - On Aggro - Say Line 0'),
(1539, 0, 1, 0, 1, 0, 100, 0, 1000, 1000, 900000, 900000, 0, 0, 11, 12544, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Scarlet Neophyte - Out of Combat - Cast Frost Armor'),
(1539, 0, 2, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 13322, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Scarlet Neophyte - In Combat - Cast Frostbolt'),
(1539, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Scarlet Neophyte - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1540, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Scarlet Vanguard - On Aggro - Say Line 0'),
(1540, 0, 1, 0, 0, 0, 100, 0, 1000, 3000, 180000, 184000, 0, 0, 11, 7164, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Scarlet Vanguard - In Combat - Cast Defensive Stance'),
(1540, 0, 2, 0, 105, 0, 100, 0, 0, 0, 9000, 16000, 0, 5, 11, 72, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,             'Scarlet Vanguard - Target Casting - Cast Shield Bash'),
(1540, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Scarlet Vanguard - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(1544, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 600000, 600000, 0, 0, 11, 324, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Vile Fin Minor Oracle - Out of Combat - Cast Lightning Shield'),
(1544, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Vile Fin Minor Oracle - In Combat - Cast Lightning Bolt'),
(1544, 0, 2, 0, 0, 0, 100, 0, 11000, 16000, 12000, 16000, 0, 0, 11, 2607, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Vile Fin Minor Oracle - In Combat - Cast Shock'),
(1544, 0, 3, 0, 16, 0, 100, 0, 324, 1, 15000, 30000, 0, 0, 11, 324, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Vile Fin Minor Oracle - On Missing Buff - Cast Lightning Shield'),
(1544, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Vile Fin Minor Oracle - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1545, 0, 0, 0, 67, 0, 100, 0, 3000, 7000, 7000, 12000, 0, 5, 11, 7159, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Vile Fin Muckdweller - Behind Target - Cast Backstab'),
(1545, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Vile Fin Muckdweller - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1553, 0, 0, 0, 9, 0, 100, 0, 0, 0, 7000, 12000, 0, 5, 11, 3242, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Greater Duskbat - Within 0-5 Range - Cast Ravage'),
(1554, 0, 0, 0, 9, 0, 100, 0, 0, 0, 7000, 12000, 0, 5, 11, 3242, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Vampiric Duskbat - Within 0-5 Range - Cast Ravage'),
(1555, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3616, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Vicious Night Web Spider - On Respawn - Cast Poison Proc'),
(1657, 0, 0, 0, 1, 0, 100, 0, 0, 0, 30000, 60000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Devlin Agamand - Out of Combat - Say Line 1'),
(1657, 0, 1, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                        'Devlin Agamand - On Aggro - Say Line 0'),
(1657, 0, 2, 0, 9, 0, 100, 0, 0, 0, 16000, 30000, 0, 5, 11, 3148, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Devlin Agamand - Within 0-5 Range - Cast Head Crack'),
(1660, 0, 0, 0, 0, 0, 100, 0, 1000, 7000, 5000, 28000, 0, 0, 11, 12169, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Scarlet Bodyguard - In Combat - Cast Shield Block'),
(1660, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Scarlet Bodyguard - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1662, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Captain Perrine - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1664, 0, 0, 0, 0, 0, 100, 0, 1000, 3000, 182000, 186000, 0, 0, 11, 7164, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Captain Vachon - In Combat - Cast Defensive Stance'),
(1664, 0, 1, 0, 105, 0, 100, 0, 0, 0, 16000, 24000, 0, 5, 11, 72, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,            'Captain Vachon - Target Casting - Cast Shield Bash'),
(1664, 0, 2, 0, 0, 0, 100, 0, 8000, 14000, 18000, 30000, 0, 0, 11, 3248, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Captain Vachon - In Combat - Cast Improved Blocking'),
(1664, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Captain Vachon - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1665, 0, 0, 0, 0, 0, 100, 0, 1000, 3000, 240000, 300000, 0, 0, 11, 8258, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Captain Melrache - In Combat - Cast Devotion Aura'),
(1665, 0, 1, 0, 9, 0, 100, 0, 0, 0, 7000, 11000, 0, 5, 11, 11976, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Captain Melrache - Within 0-5 Range - Cast Strike'),
(1665, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Captain Melrache - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(1674, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Rot Hide Gnoll - On Aggro - Say Line 0'),
(1674, 0, 1, 0, 0, 0, 100, 0, 7000, 21000, 30000, 45000, 0, 0, 11, 3237, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Rot Hide Gnoll - In Combat - Cast Curse of Thule'), -- test!
(1674, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Rot Hide Gnoll - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1675, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Rot Hide Mongrel - On Aggro - Say Line 0'),
(1675, 0, 1, 0, 0, 0, 100, 0, 7000, 14000, 30000, 45000, 0, 0, 11, 3237, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Rot Hide Mongrel - In Combat - Cast Curse of Thule'), -- test!
(1688, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 11959, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Night Web Matriarch - On Respawn - Cast Poison Proc'),
(1753, 0, 0, 0, 2, 0, 100, 0, 4000, 9000, 30000, 45000, 0, 0, 11, 3237, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Maggot Eye - In Combat - Cast Curse of Thule'), -- test!
(1753, 0, 1, 0, 2, 0, 100, 0, 0, 75, 7000, 14000, 0, 0, 11, 3243, 64, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,          'Maggot Eye - Between 0-75% Health - Cast Life Harvest'),
(1765, 0, 0, 0, 0, 0, 100, 0, 4000, 14000, 34000, 60000, 0, 0, 11, 3149, 24604, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Worg - In Combat - Cast Furious Howl'), -- test!
--
(1910, 0, 0, 0, 0, 0, 100, 0, 2000, 6000, 6000, 10000, 0, 0, 11, 2607, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,       'Muad - In Combat - Cast Shock'),
(1910, 0, 1, 0, 74, 0, 100, 0, 0, 0, 12000, 16000, 50, 40, 11, 332, 65, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,         'Muad - Friendly Between 0-50% Health - Cast Healing Wave'),
(1910, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Muad - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1911, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Deeb - In Combat - Cast Lightning Bolt'),
(1911, 0, 1, 0, 0, 0, 100, 0, 2000, 6000, 6000, 6000, 0, 0, 11, 2607, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Deeb - In Combat - Cast Shock'),
(1911, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Deeb - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(1934, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Tirisfal Farmer - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1935, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Tirisfal Farmhand - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1936, 0, 0, 0, 0, 0, 100, 0, 2400, 2900, 8700, 9200, 0, 0, 11, 11976, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Farmer Solliden - Within 0-5 Range - Cast Strike'),
(1941, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Rot Hide Graverobber - On Aggro - Say Line 0'),
(1941, 0, 1, 0, 0, 0, 100, 0, 7000, 14000, 30000, 45000, 0, 0, 11, 3237, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Rot Hide Graverobber - In Combat - Cast Curse of Thule'), -- test!
(1943, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Vile Fin Puddlejumper - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1944, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 600000, 600000, 0, 0, 11, 324, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Vile Fin Minor Oracle - Out of Combat - Cast Lightning Shield'),
(1944, 0, 1, 0, 16, 0, 100, 0, 324, 1, 15000, 30000, 0, 0, 11, 324, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Vile Fin Minor Oracle - On Missing Buff - Cast Lightning Shield'),
(1944, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Vile Fin Minor Oracle - Between 0-15% Health - Flee For Assist (No Repeat)'),
(10356, 0, 0, 0, 0, 0, 100, 0, 5000, 8000, 21000, 25000, 0, 0, 11, 13443, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,    'Bayne - Within 0-5 Range - Cast Rend'),
(10356, 0, 1, 0, 9, 0, 100, 0, 0, 0, 20000, 24000, 0, 5, 11, 3604, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Bayne - Within 0-5 Range - Cast Tendon Rip'),
(10358, 0, 0, 0, 0, 0, 100, 0, 6000, 11000, 21000, 27000, 0, 0, 11, 7068, 96, 0, 0, 0, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0,  'Fellicents Shade - Within 0-20 Range - Cast Veil of Shadow'),
(10358, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 4000, 0, 0, 11, 13901, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Fellicents Shade - In Combat - Cast Arcane Bolt'),
(10358, 0, 2, 0, 106, 0, 100, 0, 0, 0, 12000, 17000, 0, 8, 11, 11975, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,        'Fellicents Shade - Within 0-8 Range - Cast Arcane Explosion'),
(13158, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Lieutenant Sanders - Between 0-15% Health - Flee For Assist (No Repeat)'),
(15195, 0, 0, 0, 9, 0, 100, 0, 0, 0, 8000, 12000, 0, 5, 11, 18368, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Wickerman Guardian - Within 0-5 Range - Cast Strike'),
(15195, 0, 1, 0, 0, 0, 100, 0, 8000, 14000, 9000, 15000, 0, 0, 11, 19128, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,    'Wickerman Guardian - Within 0-5 Range - Cast Knockdown'),
(15195, 0, 2, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 25007, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Wickerman Guardian - On Just Died - Cast Wickerman Guardian Ember');


/* Drop chance for Rattlecage Skull was incorrectly set to 15 - updated to 80 */
UPDATE `creature_loot_template` SET `Chance` = 80 WHERE `Entry` = 1890 AND `Item` = 6281;

-- Undertaker Mordo
DELETE FROM `creature` WHERE `id1` = 1568;
INSERT INTO `creature` (`id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES (1568, 0, 1678.99, 1667.86, 135.855, 3.76991, 300);

-- update npc names
UPDATE `creature_template` SET `name` = 'Wretched Zombie' WHERE `entry` = 1502; -- Wretched Zombie

UPDATE `creature_template` SET `subname` = 'Apprentice Herbalist'     WHERE `entry` = 2114; -- Faruza <Apprentice Herbalist>
UPDATE `creature_template` SET `subname` = 'Journeyman Alchemist'     WHERE `entry` = 2132; -- Carolai Anise <Journeyman Alchemist>
UPDATE `creature_template` SET `subname` = 'Zeppelin Master'          WHERE `entry` = 3150; -- Hin Denburg <Zeppelin Master>
UPDATE `creature_template` SET `subname` = 'Journeyman Leatherworker' WHERE `entry` = 3549; -- Shelene Rhobart <Journeyman Leatherworker>
UPDATE `creature_template` SET `subname` = 'Fisherman'                WHERE `entry` = 5690; -- Clyde Kellen <Fisherman>
UPDATE `creature_template` SET `subname` = 'Journeyman Enchanter'     WHERE `entry` = 5695; -- Vance Undergloom <Journeyman Enchanter>
UPDATE `creature_template` SET `subname` = 'Demon Trainer'            WHERE `entry` = 5749; -- Kayla Smithe <Demon Trainer>
UPDATE `creature_template` SET `subname` = 'Demon Trainer'            WHERE `entry` = 5750; -- Gina Lang <Demon Trainer>
UPDATE `creature_template` SET `subname` = 'Skinner'                  WHERE `entry` = 6289; -- Rand Rhobart <Skinner>
UPDATE `creature_template` SET `subname` = 'Zeppelin Master'          WHERE `entry` = 9566; -- Zapetta <Zeppelin Master>

-- update npc factions
UPDATE `creature_template` SET `faction` = 22 WHERE `entry` = 1505;  -- Night Web Spider
UPDATE `creature_template` SET `faction` = 67 WHERE `entry` = 1506;  -- Scarlet Convert
UPDATE `creature_template` SET `faction` = 67 WHERE `entry` = 1507;  -- Scarlet Initiate
UPDATE `creature_template` SET `faction` = 67 WHERE `entry` = 1667;  -- Meven Korgal
UPDATE `creature_template` SET `faction` = 22 WHERE `entry` = 1688;  -- Night Web Matriarch
UPDATE `creature_template` SET `faction` = 67 WHERE `entry` = 13158; -- Lieutenant Sanders

-- update npc levels
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry` = 1736; -- Deathguard Randolph
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry` = 1737; -- Deathguard Oliver
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry` = 1739; -- Deathguard Phillip
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry` = 1741; -- Deathguard Bartrand
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry` = 7980; -- Deathguard Elite

-- update npc ranks
UPDATE `creature_template` SET `rank` = 1 WHERE `entry` = 4280; -- Scarlet Preserver
UPDATE `creature_template` SET `rank` = 1 WHERE `entry` = 4281; -- Scarlet Scout
UPDATE `creature_template` SET `rank` = 1 WHERE `entry` = 4282; -- Scarlet Magician
UPDATE `creature_template` SET `rank` = 1 WHERE `entry` = 4283; -- Scarlet Sentry
UPDATE `creature_template` SET `rank` = 1 WHERE `entry` = 4284; -- Scarlet Augur
UPDATE `creature_template` SET `rank` = 1 WHERE `entry` = 4285; -- Scarlet Disciple

DELETE FROM `npc_trainer` WHERE `ID` IN (2114, 2132, 3549, 4773, 5690, 5695, 5759, 6289);
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES 
(2114, -370000), -- Faruza <Apprentice Herbalist>
(2132, -300000), -- Carolai Anise <Journeyman Alchemist>
(3549, -380000), -- Shelene Rhobart <Journeyman Leatherworker>
(4773, -450000), -- Velma Warnam <Riding Trainer>
(5690, -360000), -- Clyde Kellen <Fisherman>
(5695, -330000), -- Vance Undergloom <Journeyman Enchanter>
(5759, -350000), -- Nurse Neela <First Aid Trainer>
(6289, -400000); -- Rand Rhobart <Skinner>

DELETE FROM `npc_vendor` WHERE `entry` = 2118 AND `item` IN (10648, 30817, 39354); -- Abigail Shiel <Trade Supplies>
DELETE FROM `npc_vendor` WHERE `entry` = 3548 AND `item` = 40411;                  -- Selina Weston <Alchemy & Herbalism Supplies>
DELETE FROM `npc_vendor` WHERE `entry` = 4731 AND `item` IN (46308, 47101);        -- Zachariah Post <Undead Horse Merchant>


/* Quests */

-- Rude Awakening
UPDATE `quest_template` SET `Flags` = 8, 
`QuestDescription` = 'About time you woke up. We were ready to toss you into the fire with the others, but it looks like you made it.$b$b
I am Mordo, the caretaker of the crypt of Deathknell. And you are the Lich King\'s slave no more.$b$b
Speak with Shadow Priest Sarvis in the chapel at the base of the hill, he will tell you more of what you must know.' WHERE `ID` = 363;

-- The Mindless Ones
UPDATE `quest_template` SET `Flags` = 8, 
`LogDescription` = 'Shadow Priest Sarvis wants you to kill 8 Mindless Zombies and 8 Wretched Zombies.', `RequiredNpcOrGoCount1` = 8, `RequiredNpcOrGoCount2` = 8 WHERE `ID` = 364;

-- Night Web's Hollow
UPDATE `quest_template` SET `Flags` = 8, 
`LogDescription` = 'Executor Arren wants you to kill 10 Young Night Web Spiders and 8 Night Web Spiders.', `RequiredNpcOrGoCount1` = 10, `RequiredNpcOrGoCount2` = 8 WHERE `ID` = 380;

-- Rattling the Rattlecages
UPDATE `quest_template` SET `Flags` = 8, 
`LogDescription` = 'Kill 12 Rattlecage Skeletons, and then return to Shadow Priest Sarvis in Deathknell when you are done.', `RequiredNpcOrGoCount1` = 12 WHERE `ID` = 3901;


UPDATE `quest_template` SET `Flags` = 0 WHERE `ID` = 8;    -- A Rogue's Deal
UPDATE `quest_template` SET `Flags` = 8 WHERE `ID` = 376;  -- The Damned
UPDATE `quest_template` SET `Flags` = 8 WHERE `ID` = 381;  -- The Scarlet Crusade
UPDATE `quest_template` SET `Flags` = 8 WHERE `ID` = 382;  -- The Red Messenger
UPDATE `quest_template` SET `Flags` = 0 WHERE `ID` = 383;  -- Vital Intelligence
UPDATE `quest_template` SET `Flags` = 8 WHERE `ID` = 3902; -- Scavenging Deathknell
UPDATE `quest_template` SET `Flags` = 8 WHERE `ID` = 6395; -- Marla's Last Wish

UPDATE `quest_template_addon` SET `PrevQuestID` = 427 WHERE `ID` = 374; -- Proof of Demise

UPDATE `quest_template_addon` SET `SpecialFlags` = 0 WHERE `ID` IN (
8,    -- A Rogue's Deal
363,  -- Rude Awakening
364,  -- The Mindless Ones
376,  -- The Damned
380,  -- Night Web's Hollow
381,  -- The Scarlet Crusade
382,  -- The Red Messenger
383,  -- Vital Intelligence
3095, -- Simple Scroll
3096, -- Encrypted Scroll
3097, -- Hallowed Scroll
3098, -- Glyphic Scroll
3099, -- Tainted Scroll
3901, -- Rattling the Rattlecages
3902, -- Scavenging Deathknell
6395  -- Marla's Last Wish
);

-- Piercing the Veil (Warlock)
DELETE FROM `creature_questender` WHERE `id` = 5667 AND `quest` = 1470;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (5667, 1470);

-- Piercing the Veil (Warlock)
DELETE FROM `creature_queststarter` WHERE `id` = 5667 AND `quest` = 1470;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (5667, 1470);
