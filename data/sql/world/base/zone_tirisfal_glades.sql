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
(1674, 0, 1, 0, 0, 0, 100, 0, 7000, 21000, 30000, 45000, 0, 0, 11, 3237, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Rot Hide Gnoll - In Combat - Cast Curse of Thule'),
(1674, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Rot Hide Gnoll - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1675, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Rot Hide Mongrel - On Aggro - Say Line 0'),
(1675, 0, 1, 0, 0, 0, 100, 0, 7000, 14000, 30000, 45000, 0, 0, 11, 3237, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Rot Hide Mongrel - In Combat - Cast Curse of Thule'),
(1688, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 11959, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Night Web Matriarch - On Respawn - Cast Poison Proc'),
(1753, 0, 0, 0, 2, 0, 100, 0, 4000, 9000, 30000, 45000, 0, 0, 11, 3237, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Maggot Eye - In Combat - Cast Curse of Thule'),
(1753, 0, 1, 0, 2, 0, 100, 0, 0, 75, 7000, 14000, 0, 0, 11, 3243, 64, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,          'Maggot Eye - Between 0-75% Health - Cast Life Harvest'),
(1765, 0, 0, 0, 0, 0, 100, 0, 4000, 14000, 34000, 60000, 0, 0, 11, 3149, 24604, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Worg - In Combat - Cast Furious Howl'),
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
(1941, 0, 1, 0, 0, 0, 100, 0, 7000, 14000, 30000, 45000, 0, 0, 11, 3237, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Rot Hide Graverobber - In Combat - Cast Curse of Thule'),
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
DELETE FROM `creature_queststarter` WHERE `id` = 5667 AND `quest` = 1470;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (5667, 1470);


-- fix respawn times and movement
UPDATE `creature` SET `spawntimesecs` = 5400 WHERE `id1` = 1910; -- Muad
UPDATE `creature` SET `spawntimesecs` = 7200 WHERE `id1` = 1911; -- Deeb
UPDATE `creature` SET `spawntimesecs` = 5400 WHERE `id1` = 1936; -- Farmer Solliden

UPDATE `creature` SET `MovementType` = 1, `wander_distance` = 5 WHERE `id1` = 1911;

-- fix patrols
DELETE FROM `creature` WHERE `guid` IN (37920, 38292, 42142, 44762, 44763, 44990, 49222);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, 
`spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
--
(37920, 1540, 0, 0, 0, 0, 0, 1, 1, 1, 2943.75, -554.264, 109.317, 3.22052, 300,  0, 1, 198, 0,   2, 0, 0, 0, '', 0, 0, NULL), -- Scarlet Vanguard
(38292, 3547, 0, 0, 0, 0, 0, 1, 1, 1, 2282.38, 343.513, 34.21, 4.52215,    300,  0, 1, 198, 0,   2, 0, 0, 0, '', 0, 0, NULL), -- Hamlin Atkins
(42142, 10356, 0, 0, 0, 0, 0, 1, 1, 0, 2405.87, 974.879, 71.1481, 4.45794, 5400, 0, 1, 198, 0,   2, 0, 0, 0, '', 0, 0, NULL), -- Bayne
(44762, 1539, 0, 0, 0, 0, 0, 1, 1, 1, 3066.25, -538.546, 126.765, 3.39442, 300,  0, 1, 186, 191, 2, 0, 0, 0, '', 0, 0, NULL), -- Scarlet Neophyte
(44763, 1538, 0, 0, 0, 0, 0, 1, 1, 1, 3054.86, -558.552, 125.615, 4.58007, 300,  0, 1, 166, 178, 2, 0, 0, 0, '', 0, 0, NULL), -- Scarlet Friar
(44990, 1655, 0, 0, 0, 0, 0, 1, 1, 0, 2742.71, 785.519, 119.133, 0.453786, 300,  0, 1, 198, 0,   2, 0, 0, 0, '', 0, 0, NULL), -- Nissa Agamand
(49222, 1533, 0, 0, 0, 0, 0, 1, 1, 0, 2885.04, 973.306, 116.983, 0.199966, 5400, 0, 1, 187, 0,   2, 0, 0, 0, '', 0, 0, NULL); -- Tormented Spirit

DELETE FROM `creature_addon` WHERE `guid` IN (37920, 38292, 42142, 44762, 44763, 44990, 49222);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(37920, 379200, 0, 0, 1, 0, 0, NULL),
(38292, 382920, 0, 0, 1, 0, 0, NULL),
(42142, 421420, 0, 0, 1, 0, 0, NULL),
(44762, 447620, 0, 0, 1, 0, 0, NULL),
(44763, 447630, 0, 0, 1, 0, 0, NULL),
(44990, 449900, 0, 0, 1, 0, 0, NULL),
(49222, 492220, 0, 0, 1, 0, 0, NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (379200, 382920, 421420, 447620, 447630, 449900, 492220);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
--
(379200, 1, 2960.3, -552.672, 110.327, NULL, 0, 0, 0, 100, 0),
(379200, 2, 2940.26, -554.539, 109.246, NULL, 0, 0, 0, 100, 0),
(379200, 3, 2916.27, -551.676, 107.651, NULL, 0, 0, 0, 100, 0),
(379200, 4, 2874.67, -536.489, 107.311, NULL, 0, 0, 0, 100, 0),
(379200, 5, 2839.63, -516.702, 105.725, NULL, 0, 0, 0, 100, 0),
(379200, 6, 2803.22, -499.831, 101.804, NULL, 0, 0, 0, 100, 0),
(379200, 7, 2771.16, -500.166, 102.97, NULL, 0, 0, 0, 100, 0),
(379200, 8, 2732.84, -505.034, 102.902, NULL, 10000, 0, 0, 100, 0),
(379200, 9, 2760.67, -500.122, 103.1, NULL, 0, 0, 0, 100, 0),
(379200, 10, 2796.81, -496.366, 101.708, NULL, 0, 0, 0, 100, 0),
(379200, 11, 2812.43, -499.164, 102.332, NULL, 0, 0, 0, 100, 0),
(379200, 12, 2818.95, -498.18, 102.874, NULL, 16000, 0, 0, 100, 0),
(379200, 13, 2843.72, -517.035, 105.978, NULL, 0, 0, 0, 100, 0),
(379200, 14, 2874.6, -536.226, 107.318, NULL, 0, 0, 0, 100, 0),
(379200, 15, 2909.05, -547.642, 107.35, NULL, 0, 0, 0, 100, 0),
(379200, 16, 2927.9, -554.754, 108.465, NULL, 0, 0, 0, 100, 0),
(379200, 17, 2955.81, -553.454, 110.043, NULL, 0, 0, 0, 100, 0),
(379200, 18, 2983.71, -549.755, 113.185, NULL, 0, 0, 0, 100, 0),
(379200, 19, 3003.41, -550.633, 116.004, NULL, 0, 0, 0, 100, 0),
(379200, 20, 3024.5, -545.387, 119.129, NULL, 0, 0, 0, 100, 0),
(379200, 21, 3023.49, -544.493, 119.116, NULL, 0, 0, 0, 100, 0),
(379200, 22, 3023.49, -544.493, 119.116, 3.28122, 58000, 0, 0, 100, 0),
(379200, 23, 3016.2, -547.756, 118.261, NULL, 0, 0, 0, 100, 0),
(379200, 24, 2992.87, -547.953, 114.424, NULL, 0, 0, 0, 100, 0),
--
(382920, 1, 2310.18, 397.315, 33.9347, NULL, 0, 0, 0, 100, 0),
(382920, 2, 2322.26, 397.615, 33.6847, NULL, 0, 0, 0, 100, 0),
(382920, 3, 2330.38, 397.349, 33.6966, NULL, 0, 0, 0, 100, 0),
(382920, 4, 2337.76, 395.369, 33.7192, NULL, 0, 0, 0, 100, 0),
(382920, 5, 2343.01, 389.469, 33.9749, NULL, 0, 0, 0, 100, 0),
(382920, 6, 2349.7, 379.942, 34.9612, NULL, 0, 0, 0, 100, 0),
(382920, 7, 2354.96, 373.952, 36.1026, NULL, 0, 0, 0, 100, 0),
(382920, 8, 2358.22, 367.133, 37.2494, NULL, 0, 0, 0, 100, 0),
(382920, 9, 2359.14, 359.222, 37.8627, NULL, 0, 0, 0, 100, 0),
(382920, 10, 2360.47, 351.254, 37.7572, NULL, 0, 0, 0, 100, 0),
(382920, 11, 2361.44, 347.31, 37.8067, NULL, 0, 0, 0, 100, 0),
(382920, 12, 2363.57, 343.985, 38.007, NULL, 0, 0, 0, 100, 0),
(382920, 13, 2363.32, 351.705, 38.1075, NULL, 0, 0, 0, 100, 0),
(382920, 14, 2359.32, 363.234, 37.7029, NULL, 0, 0, 0, 100, 0),
(382920, 15, 2356.25, 370.523, 36.7018, NULL, 0, 0, 0, 100, 0),
(382920, 16, 2348.96, 379.911, 34.819, NULL, 0, 0, 0, 100, 0),
(382920, 17, 2344.83, 386.735, 34.18, NULL, 0, 0, 0, 100, 0),
(382920, 18, 2339.93, 392.945, 33.7299, NULL, 0, 0, 0, 100, 0),
(382920, 19, 2337.06, 395.768, 33.7177, NULL, 0, 0, 0, 100, 0),
(382920, 20, 2325.26, 397.579, 33.6847, NULL, 0, 0, 0, 100, 0),
(382920, 21, 2313.13, 398.231, 33.9347, NULL, 0, 0, 0, 100, 0),
(382920, 22, 2301.17, 397.051, 34.0366, NULL, 0, 0, 0, 100, 0),
(382920, 23, 2293.16, 396.125, 34.0751, NULL, 0, 0, 0, 100, 0),
(382920, 24, 2285.45, 397.514, 34.0751, NULL, 0, 0, 0, 100, 0),
(382920, 25, 2282.47, 399.886, 34.0617, NULL, 0, 0, 0, 100, 0),
(382920, 26, 2277.42, 419.43, 33.9922, NULL, 0, 0, 0, 100, 0),
(382920, 27, 2264.04, 468.425, 33.9297, NULL, 0, 0, 0, 100, 0),
(382920, 28, 2266.28, 459.441, 34.1562, NULL, 0, 0, 0, 100, 0),
(382920, 29, 2272.29, 435.895, 34.0305, NULL, 0, 0, 0, 100, 0),
(382920, 30, 2275.47, 420.025, 33.9922, NULL, 0, 0, 0, 100, 0),
(382920, 31, 2278.7, 404.17, 33.9922, NULL, 0, 0, 0, 100, 0),
(382920, 32, 2280.77, 396.374, 34.2001, NULL, 0, 0, 0, 100, 0),
(382920, 33, 2282.22, 388.493, 34.2001, NULL, 0, 0, 0, 100, 0),
(382920, 34, 2282.95, 380.4, 34.2001, NULL, 0, 0, 0, 100, 0),
(382920, 35, 2283.79, 368.298, 34.208, NULL, 0, 0, 0, 100, 0),
(382920, 36, 2284.1, 356.134, 34.21, NULL, 0, 0, 0, 100, 0),
(382920, 37, 2282.5, 344.128, 34.21, NULL, 0, 0, 0, 100, 0),
(382920, 38, 2276.79, 329.093, 34.2321, NULL, 0, 0, 0, 100, 0),
(382920, 39, 2268.67, 310.562, 34.2387, NULL, 0, 0, 0, 100, 0),
(382920, 40, 2260.04, 292.212, 34.2387, NULL, 0, 0, 0, 100, 0),
(382920, 41, 2256.22, 285.082, 34.2387, NULL, 0, 0, 0, 100, 0),
(382920, 42, 2248, 276.239, 34.2387, NULL, 0, 0, 0, 100, 0),
(382920, 43, 2239.06, 267.987, 34.2387, NULL, 0, 0, 0, 100, 0),
(382920, 44, 2229.5, 260.504, 34.0848, NULL, 0, 0, 0, 100, 0),
(382920, 45, 2212.84, 248.977, 34.1069, NULL, 0, 0, 0, 100, 0),
(382920, 46, 2198.58, 241.224, 34.5578, NULL, 0, 0, 0, 100, 0),
(382920, 47, 2206.44, 246.768, 34.1706, NULL, 0, 0, 0, 100, 0),
(382920, 48, 2223.25, 258.023, 34.1308, NULL, 0, 0, 0, 100, 0),
(382920, 49, 2229.78, 262.839, 34.1308, NULL, 0, 0, 0, 100, 0),
(382920, 50, 2236.03, 267.997, 34.1858, NULL, 0, 0, 0, 100, 0),
(382920, 51, 2245.06, 276.165, 34.2387, NULL, 0, 0, 0, 100, 0),
(382920, 52, 2248.04, 278.906, 34.2387, NULL, 0, 0, 0, 100, 0),
(382920, 53, 2253.27, 285.053, 34.2387, NULL, 0, 0, 0, 100, 0),
(382920, 54, 2257.37, 292.008, 34.2387, NULL, 0, 0, 0, 100, 0),
(382920, 55, 2259.39, 295.522, 34.2387, NULL, 0, 0, 0, 100, 0),
(382920, 56, 2268.08, 313.743, 34.2387, NULL, 0, 0, 0, 100, 0),
(382920, 57, 2275.52, 328.13, 34.2387, NULL, 0, 0, 0, 100, 0),
(382920, 58, 2281.81, 343.094, 34.2177, NULL, 0, 0, 0, 100, 0),
(382920, 59, 2283.51, 354.957, 34.21, NULL, 0, 0, 0, 100, 0),
(382920, 60, 2283.59, 367.076, 34.2041, NULL, 0, 0, 0, 100, 0),
(382920, 61, 2283.53, 379.206, 34.2001, NULL, 0, 0, 0, 100, 0),
(382920, 62, 2282.75, 387.251, 34.2001, NULL, 0, 0, 0, 100, 0),
(382920, 63, 2283.41, 390.968, 34.1464, NULL, 0, 0, 0, 100, 0),
(382920, 64, 2285.92, 393.952, 34.0544, NULL, 0, 0, 0, 100, 0),
(382920, 65, 2293.63, 396.229, 34.0751, NULL, 0, 0, 0, 100, 0),
(382920, 66, 2305.73, 397.131, 33.9895, NULL, 0, 0, 0, 100, 0),
--
(421420, 1, 2412.42, 956.28, 71.9938, 5.19032, 0, 0, 0, 100, 0),
(421420, 2, 2452.55, 917.825, 77.2033, 5.5516, 0, 0, 0, 100, 0),
(421420, 3, 2470.74, 898.827, 81.6906, 2.64956, 0, 0, 0, 100, 0),
(421420, 4, 2470.75, 895.358, 81.7894, 2.46696, 0, 0, 0, 100, 0),
(421420, 5, 2461.1, 883.453, 80.1041, 1.43612, 0, 0, 0, 100, 0),
(421420, 6, 2437.6, 879.715, 73.9088, 2.88321, 0, 0, 0, 100, 0),
(421420, 7, 2401.93, 887.366, 67.1455, 2.95783, 0, 0, 0, 100, 0),
(421420, 8, 2359.51, 911.356, 62.4552, 2.77129, 0, 0, 0, 100, 0),
(421420, 9, 2328.25, 934.621, 61.2293, 4.32834, 0, 0, 0, 100, 0),
(421420, 10, 2289, 937.2, 53.6748, 3.09527, 0, 0, 0, 100, 0),
(421420, 11, 2270.99, 952.763, 46.5578, 0.856879, 0, 0, 0, 100, 0),
(421420, 12, 2281.11, 995.701, 45.3271, 5.09803, 0, 0, 0, 100, 0),
(421420, 13, 2307.68, 1013.27, 46.3188, 6.0621, 0, 0, 0, 100, 0),
(421420, 14, 2354.59, 1005.3, 55.0511, 6.16617, 0, 0, 0, 100, 0),
(421420, 15, 2401.77, 1004.12, 61.9311, 5.46324, 0, 0, 0, 100, 0),
(421420, 16, 2413.23, 981.802, 69.8087, 4.89187, 0, 0, 0, 100, 0),
--
(447620, 1, 3060.96, -544.896, 126.663, NULL, 0, 0, 0, 100, 0),
(447620, 2, 3069.91, -537.846, 126.605, NULL, 0, 0, 0, 100, 0),
(447620, 3, 3085.12, -539.188, 126.662, NULL, 0, 0, 0, 100, 0),
(447620, 4, 3097.5, -549, 126.686, NULL, 0, 0, 0, 100, 0),
(447620, 5, 3099.88, -560.332, 126.596, NULL, 0, 0, 0, 100, 0),
(447620, 6, 3092.31, -573.752, 126.669, NULL, 0, 0, 0, 100, 0),
(447620, 7, 3081.74, -578.396, 126.669, NULL, 0, 0, 0, 100, 0),
(447620, 8, 3061.56, -575.405, 126.643, NULL, 0, 0, 0, 100, 0),
(447620, 9, 3058.23, -575.547, 126.714, NULL, 17000, 0, 0, 100, 0),
(447620, 10, 3065.4, -576.252, 126.618, NULL, 0, 0, 0, 100, 0),
(447620, 11, 3076.92, -579.648, 126.717, NULL, 0, 0, 0, 100, 0),
(447620, 12, 3088.35, -576.192, 126.641, NULL, 0, 0, 0, 100, 0),
(447620, 13, 3097.13, -568.084, 126.691, NULL, 0, 0, 0, 100, 0),
(447620, 14, 3098.48, -556.51, 126.593, NULL, 0, 0, 0, 100, 0),
(447620, 15, 3094.51, -545.803, 126.712, NULL, 0, 0, 0, 100, 0),
(447620, 16, 3081.16, -536.871, 126.707, NULL, 0, 0, 0, 100, 0),
(447620, 17, 3069.68, -537.661, 126.595, NULL, 0, 0, 0, 100, 0),
(447620, 18, 3060.14, -544.622, 126.654, NULL, 0, 0, 0, 100, 0),
(447620, 19, 3056.59, -555.846, 126.141, NULL, 0, 0, 0, 100, 0),
(447620, 20, 3058.82, -572.383, 126.673, NULL, 0, 0, 0, 100, 0),
(447620, 21, 3058.23, -575.547, 126.714, NULL, 0, 0, 0, 100, 0),
(447620, 22, 3058.23, -575.547, 126.714, 3.19395, 26000, 0, 0, 100, 0),
(447620, 23, 3058.73, -571.998, 126.675, NULL, 0, 0, 0, 100, 0),
(447620, 24, 3056.83, -556.481, 126.106, NULL, 0, 0, 0, 100, 0),
--
(447630, 1, 3054.86, -558.552, 125.615, NULL, 0, 0, 0, 100, 0),
(447630, 2, 3062.33, -558.525, 126.715, NULL, 0, 0, 0, 100, 0),
(447630, 3, 3067.16, -557.802, 126.716, NULL, 0, 0, 0, 100, 0),
(447630, 4, 3068.05, -552.204, 126.719, NULL, 5000, 0, 0, 100, 0),
(447630, 5, 3065.24, -558.082, 126.716, NULL, 0, 0, 0, 100, 0),
(447630, 6, 3055.91, -558.276, 125.816, NULL, 0, 0, 0, 100, 0),
(447630, 7, 3057.49, -552.196, 126.715, NULL, 0, 0, 0, 100, 0),
(447630, 8, 3065.44, -542.652, 126.637, NULL, 0, 0, 0, 100, 0),
(447630, 9, 3075.93, -539.182, 126.715, NULL, 0, 0, 0, 100, 0),
(447630, 10, 3087.46, -542.022, 126.634, NULL, 0, 0, 0, 100, 0),
(447630, 11, 3093.49, -549.332, 126.715, NULL, 0, 0, 0, 100, 0),
(447630, 12, 3095.92, -558.364, 126.645, NULL, 0, 0, 0, 100, 0),
(447630, 13, 3094.79, -565.612, 126.713, NULL, 0, 0, 0, 100, 0),
(447630, 14, 3089.36, -574.491, 126.615, NULL, 0, 0, 0, 100, 0),
(447630, 15, 3078.73, -577.878, 126.714, NULL, 0, 0, 0, 100, 0),
(447630, 16, 3067.35, -574.907, 126.641, NULL, 0, 0, 0, 100, 0),
(447630, 17, 3060.19, -568.41, 126.715, NULL, 0, 0, 0, 100, 0),
(447630, 18, 3057.55, -563.597, 126.628, NULL, 0, 0, 0, 100, 0),
(447630, 19, 3055.86, -559.84, 125.719, NULL, 0, 0, 0, 100, 0),
(447630, 20, 3050.66, -559.801, 124.785, NULL, 0, 0, 0, 100, 0),
(447630, 21, 3039.53, -559.229, 121.807, NULL, 5000, 0, 0, 100, 0),
(447630, 22, 3052.65, -559.154, 125.194, NULL, 0, 0, 0, 100, 0),
(447630, 23, 3056.56, -560.105, 125.865, NULL, 0, 0, 0, 100, 0),
(447630, 24, 3058.14, -564.394, 126.715, NULL, 0, 0, 0, 100, 0),
(447630, 25, 3066.19, -575.584, 126.619, NULL, 0, 0, 0, 100, 0),
(447630, 26, 3076.61, -577.827, 126.715, NULL, 0, 0, 0, 100, 0),
(447630, 27, 3087.73, -576.337, 126.615, NULL, 0, 0, 0, 100, 0),
(447630, 28, 3095.5, -567.851, 126.715, NULL, 0, 0, 0, 100, 0),
(447630, 29, 3096.17, -559.743, 126.635, NULL, 0, 0, 0, 100, 0),
(447630, 30, 3093.62, -548.964, 126.714, NULL, 0, 0, 0, 100, 0),
(447630, 31, 3087.29, -541.621, 126.631, NULL, 0, 0, 0, 100, 0),
(447630, 32, 3076.1, -538.644, 126.715, NULL, 0, 0, 0, 100, 0),
(447630, 33, 3066.62, -541.631, 126.633, NULL, 0, 0, 0, 100, 0),
(447630, 34, 3059.06, -549.551, 126.714, NULL, 0, 0, 0, 100, 0),
(447630, 35, 3057.23, -553.086, 126.682, NULL, 0, 0, 0, 100, 0),
--
(449900, 1, 2742.71, 785.519, 119.133, 0.454, 25000, 0, 0, 100, 0),
(449900, 2, 2747.48, 789.889, 119.131, 0.981, 0, 0, 0, 100, 0),
(449900, 3, 2749.94, 797.442, 119.108, 0.871, 0, 0, 0, 100, 0),
(449900, 4, 2753.93, 798.877, 119.091, 0.086, 0, 0, 0, 100, 0),
(449900, 5, 2756.69, 798.914, 119.131, 5.933, 0, 0, 0, 100, 0),
(449900, 6, 2763.93, 796.199, 114.367, 5.395, 0, 0, 0, 100, 0),
(449900, 7, 2764.54, 794.093, 114.367, 4.295, 0, 0, 0, 100, 0),
(449900, 8, 2762.54, 791.399, 114.367, 3.644, 0, 0, 0, 100, 0),
(449900, 9, 2758.8, 790.731, 114.367, 2.941, 0, 0, 0, 100, 0),
(449900, 10, 2752.16, 792.589, 114.367, 3.467, 0, 0, 0, 100, 0),
(449900, 11, 2751.12, 799.975, 114.367, 1.29676, 0, 0, 0, 100, 0),
(449900, 12, 2752.03, 803.195, 114.245, 1.32032, 15000, 0, 0, 100, 0),
(449900, 13, 2748.36, 790.155, 114.367, 4.268, 0, 0, 0, 100, 0),
(449900, 14, 2746.26, 783.31, 114.837, 1.247, 80000, 0, 0, 100, 0),
(449900, 15, 2748.36, 790.155, 114.367, 1.268, 0, 0, 0, 100, 0),
(449900, 16, 2751.12, 799.975, 114.367, 1.29676, 0, 0, 0, 100, 0),
(449900, 17, 2752.03, 803.195, 114.245, 1.32032, 15000, 0, 0, 100, 0),
(449900, 18, 2752.16, 792.589, 114.367, 0.467, 0, 0, 0, 100, 0),
(449900, 19, 2758.8, 790.731, 114.367, 5.941, 0, 0, 0, 100, 0),
(449900, 20, 2762.54, 791.399, 114.367, 0.644, 0, 0, 0, 100, 0),
(449900, 21, 2764.54, 794.093, 114.367, 1.295, 0, 0, 0, 100, 0),
(449900, 22, 2763.93, 796.199, 114.367, 2.395, 0, 0, 0, 100, 0),
(449900, 23, 2756.69, 798.914, 119.131, 2.933, 0, 0, 0, 100, 0),
(449900, 24, 2753.93, 798.877, 119.091, 3.086, 0, 0, 0, 100, 0),
(449900, 25, 2749.94, 797.442, 119.108, 3.871, 0, 0, 0, 100, 0),
(449900, 26, 2747.48, 789.889, 119.131, 3.981, 0, 0, 0, 100, 0),
(449900, 27, 2742.71, 785.519, 119.133, 3.454, 0, 0, 0, 100, 0),
--
(492220, 1, 2894.92, 1012.92, 108.181, NULL, 0, 0, 0, 100, 0),
(492220, 2, 2897.3, 977.081, 113.989, NULL, 0, 0, 0, 100, 0),
(492220, 3, 2899.77, 952.999, 115.272, NULL, 0, 0, 0, 100, 0),
(492220, 4, 2906.39, 934.062, 114.953, NULL, 0, 0, 0, 100, 0),
(492220, 5, 2907.19, 926.758, 114.842, NULL, 0, 0, 0, 100, 0),
(492220, 6, 2878.13, 899.498, 113.909, NULL, 0, 0, 0, 100, 0),
(492220, 7, 2853.26, 878.781, 112.285, NULL, 0, 0, 0, 100, 0),
(492220, 8, 2843.07, 872.395, 112.125, NULL, 0, 0, 0, 100, 0),
(492220, 9, 2807.69, 865.106, 111.961, NULL, 0, 0, 0, 100, 0),
(492220, 10, 2784.52, 871.533, 111.552, NULL, 0, 0, 0, 100, 0),
(492220, 11, 2765.41, 886.143, 111.542, NULL, 0, 0, 0, 100, 0),
(492220, 12, 2745.78, 911.722, 110.987, NULL, 0, 0, 0, 100, 0),
(492220, 13, 2739.29, 930.655, 110.038, NULL, 0, 0, 0, 100, 0),
(492220, 14, 2733.75, 950.191, 109.366, NULL, 0, 0, 0, 100, 0),
(492220, 15, 2734.68, 966, 109.377, NULL, 0, 0, 0, 100, 0),
(492220, 16, 2741.92, 975.155, 109.384, NULL, 0, 0, 0, 100, 0),
(492220, 17, 2755.03, 984.404, 109.384, NULL, 0, 0, 0, 100, 0),
(492220, 18, 2765.68, 996.238, 109.873, NULL, 0, 0, 0, 100, 0),
(492220, 19, 2770.84, 1011.45, 108.965, NULL, 0, 0, 0, 100, 0),
(492220, 20, 2773.95, 1027.29, 108.573, NULL, 0, 0, 0, 100, 0),
(492220, 21, 2784.05, 1038.97, 109.812, NULL, 0, 0, 0, 100, 0),
(492220, 22, 2797.76, 1047.34, 110.888, NULL, 0, 0, 0, 100, 0),
(492220, 23, 2821.59, 1048.73, 110.915, NULL, 0, 0, 0, 100, 0),
(492220, 24, 2841.68, 1049.63, 112.071, NULL, 0, 0, 0, 100, 0),
(492220, 25, 2857.62, 1049.02, 114.487, NULL, 0, 0, 0, 100, 0),
(492220, 26, 2878.6, 1046.55, 112.899, NULL, 15000, 0, 0, 100, 0);
