/* smart scripts */
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (213, 521, 898, 923);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(48, 202, 203, 205, 206, 210, 212, 215, 217, 218, 300, 314, 315, 503, 507, 511, 522, 531, 533, 534, 539, 565, 569, 570, 574, 
604, 628, 785, 787, 889, 891, 892, 909, 910, 920, 930, 948, 949, 1110, 1200, 1251, 1258, 1270, 1487, 6170);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(48, 202, 203, 205, 206, 210, 212, 213, 215, 217, 218, 300, 314, 315, 503, 507, 511, 521, 522, 531, 533, 534, 539, 565, 569, 570, 574, 
604, 628, 785, 787, 889, 891, 892, 898, 909, 910, 920, 923, 930, 948, 949, 1110, 1200, 1251, 1258, 1270, 1487, 6170);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(48, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7165, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Skeletal Warrior - On Aggro - Cast Battle Stance'),
(48, 0, 1, 0, 0, 0, 100, 0, 2000, 13000, 10000, 20000, 0, 0, 11, 9080, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Skeletal Warrior - Within 0-5 Range - Cast Hamstring'),
(202, 0, 0, 0, 0, 0, 100, 0, 5000, 20000, 20000, 30000, 0, 0, 11, 7399, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Skeletal Horror - Within 0-5 Range - Cast Terrify'),
(203, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 900000, 900000, 0, 0, 11, 12544, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Skeletal Mage - Out of Combat - Cast Frost Armor'),
(203, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20792, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Skeletal Mage - In Combat - Cast Frostbolt'),
(205, 0, 0, 0, 67, 0, 100, 0, 0, 0, 10000, 21000, 0, 5, 11, 6595, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Nightbane Dark Runner - Behind Target - Cast Exploit Weakness'),
(206, 0, 0, 0, 0, 0, 100, 0, 2000, 16000, 17000, 34000, 0, 0, 11, 3427, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Nightbane Vile Fang - Within 0-5 Range - Cast Infected Wound'),
(210, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 26047, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Bone Chewer - On Respawn - Cast Birth'),
(210, 0, 1, 0, 0, 0, 100, 0, 2000, 12000, 46000, 66000, 0, 0, 11, 6016, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Bone Chewer - Within 0-5 Range - Cast Pierce Armor'),
(212, 0, 0, 0, 4, 0, 10, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                          'Splinter Fist Warrior - On Aggro - Say Line 0'),
(212, 0, 1, 0, 0, 0, 100, 0, 1000, 3000, 1000, 9000, 0, 0, 11, 5242, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,        'Splinter Fist Warrior - In Combat - Cast Battle Shout'),
(215, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 22766, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Defias Night Runner - Out of Combat - Cast Sneak (No Repeat)'),
(215, 0, 1, 0, 67, 0, 80, 0, 3000, 6000, 5000, 8000, 0, 5, 11, 2589, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Defias Night Runner - Behind Target - Cast Backstab'),
(215, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                       'Defias Night Runner - Between 0-15% Health - Flee For Assist (No Repeat)'),
(217, 0, 0, 0, 0, 0, 100, 0, 9000, 23000, 30000, 63000, 0, 0, 11, 745, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Venom Web Spider - In Combat - Cast Web'),
(217, 0, 1, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7276, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Venom Web Spider - On Respawn - Cast Poison Proc'),
(218, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                       'Grave Robber - Between 0-15% Health - Flee For Assist (No Repeat)'),
(300, 0, 0, 0, 0, 0, 100, 0, 4000, 14000, 11000, 25000, 0, 0, 11, 8716, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Zzarc Vul - Within 0-5 Range - Cast Low Swipe'),
(314, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Eliza - On Aggro - Say Line 0'),
(314, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20819, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Eliza - In Combat - Cast Frostbolt'),
(314, 0, 2, 0, 106, 0, 100, 0, 0, 0, 2900, 5900, 0, 8, 11, 11831, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Eliza - In Combat - Cast Frost Nova'),
(314, 0, 3, 0, 0, 0, 100, 0, 4000, 6000, 72000, 72000, 0, 0, 11, 3107, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Eliza - In Combat - Cast Summon Elizas Guard'),
(315, 0, 0, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                          'Stalvan Mistmantle - On Aggro - Say Line 0'),
(315, 0, 1, 0, 0, 0, 100, 0, 7000, 9000, 8000, 16000, 0, 0, 11, 3105, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,       'Stalvan Mistmantle - In Combat - Cast Curse of Stalvan'),
(315, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                       'Stalvan Mistmantle - Between 0-15% Health - Flee For Assist (No Repeat)'),
(503, 0, 0, 0, 0, 0, 100, 0, 0, 0, 5900, 14200, 0, 0, 11, 2767, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Lord Malathrom - In Combat - Cast Shadow Word: Pain'),
(503, 0, 1, 0, 0, 0, 100, 0, 5000, 11000, 22000, 33000, 0, 0, 11, 3537, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Lord Malathrom - In Combat - Cast Minions of Malathrom'),
(507, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 900000, 900000, 0, 0, 11, 12544, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Fenros - Out of Combat - Cast Frost Armor'),
(507, 0, 1, 0, 9, 0, 100, 0, 0, 0, 32000, 48000, 0, 30, 11, 6725, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Fenros - Within 0-30 Range - Cast Flame Spike'),
(507, 0, 2, 0, 9, 0, 40, 0, 0, 0, 25000, 45000, 0, 8, 11, 865, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Fenros - Within 0-8 Range - Cast Frost Nova'),
(511, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 26047, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Insane Ghoul - On Respawn - Cast Birth'),
(511, 0, 1, 0, 0, 0, 100, 0, 2000, 5000, 120000, 130000, 0, 0, 11, 8282, 32, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, 0,  'Insane Ghoul - Within 0-20 Range - Cast Curse of Blood'),
(522, 0, 0, 0, 9, 0, 100, 0, 0, 0, 8000, 28000, 0, 5, 11, 3547, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Mor Ladim - Within 0-5 Range - Cast Enraging Memories'),
(531, 0, 0, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 3416, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Skeletal Fiend - Between 0-30% Health - Cast Fiend Fury (No Repeat)'),
(533, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9613, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Nightbane Shadow Weaver - In Combat - Cast Shadow Bolt'),
(533, 0, 1, 0, 0, 0, 100, 0, 5000, 10000, 76000, 91000, 0, 0, 11, 992, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,       'Nightbane Shadow Weaver - In Combat - Cast Shadow Word: Pain'),
(534, 0, 0, 0, 0, 0, 100, 0, 2000, 4000, 30000, 45000, 0, 0, 11, 8715, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Nefaru - In Combat - Cast Terrifying Howl'),
(534, 0, 1, 0, 0, 0, 100, 0, 5000, 7000, 21000, 48000, 0, 0, 11, 3604, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Nefaru - Within 0-5 Range - Cast Tendon Rip'),
(539, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7276, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Pygmy Venom Web Spider - On Respawn - Cast Poison Proc'),
(565, 0, 0, 0, 0, 0, 100, 0, 19000, 34000, 34000, 71000, 0, 0, 11, 3150, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Rabid Dire Wolf - Within 0-5 Range - Cast Rabies'),
(569, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7276, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Green Recluse - On Respawn - Cast Poison Proc'),
(570, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 26047, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Brain Eater - Out of Combat - Cast Birth'), -- test!
(570, 0, 1, 0, 0, 0, 100, 0, 1000, 7000, 4000, 13000, 0, 0, 11, 3429, 32, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,      'Brain Eater - In Combat - Cast Plague Mind'),
(574, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 10022, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Naraxis - On Respawn - Cast Deadly Poison Proc'),
(574, 0, 1, 0, 0, 0, 100, 0, 4000, 20000, 60000, 134000, 0, 0, 11, 3542, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Naraxis - Within 0-5 Range - Cast Naraxis Web'),
(604, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 26047, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Plague Spreader - On Respawn - Cast Birth'),
(604, 0, 1, 0, 0, 0, 100, 0, 0, 7000, 420000, 426000, 0, 0, 11, 3436, 32, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,       'Plague Spreader - Within 0-5 Range - Cast Wandering Plague'),
(628, 0, 0, 0, 9, 0, 100, 0, 0, 0, 20000, 28000, 0, 5, 11, 13443, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Black Ravager - Within 0-5 Range - Cast Rend'),
(785, 0, 0, 0, 0, 0, 20, 0, 20000, 26000, 30000, 45000, 0, 0, 11, 4979, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Skeletal Warder - In Combat - Cast Quick Flame Ward'),
(785, 0, 1, 0, 0, 0, 100, 0, 1000, 9000, 20000, 44000, 0, 0, 11, 8699, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Skeletal Warder - In Combat - Cast Unholy Frenzy'),
(787, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9613, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Skeletal Healer - In Combat - Cast Shadow Bolt'),
(787, 0, 1, 0, 74, 0, 100, 0, 5000, 5000, 60000, 60000, 40, 40, 11, 2054, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,    'Skeletal Healer - Friendly Between 0-40% Health - Cast Heal'),
--
(889, 0, 0, 0, 4, 0, 10, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                          'Splinter Fist Ogre - On Aggro - Say Line 0'),
(891, 0, 0, 0, 4, 0, 10, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                          'Splinter Fist Fire Weaver - On Aggro - Say Line 0'),
(891, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 19816, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Splinter Fist Fire Weaver - In Combat - Cast Fireball'),
(891, 0, 2, 0, 0, 0, 100, 0, 1000, 5000, 18000, 20000, 0, 0, 11, 20296, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Splinter Fist Fire Weaver - In Combat - Cast Flamestrike'),
(892, 0, 0, 0, 4, 0, 10, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                          'Splinter Fist Taskmaster - On Aggro - Say Line 0'),
(892, 0, 1, 0, 0, 0, 100, 0, 1000, 3000, 1000, 5000, 0, 0, 11, 3631, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,        'Splinter Fist Taskmaster - In Combat - Cast Battle Fury'),
--
(909, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3616, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Defias Night Blade - On Respawn - Cast Poison Proc'),
(909, 0, 2, 0, 67, 0, 70, 0, 0, 0, 3000, 12000, 0, 5, 11, 2589, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Defias Night Blade - Behind Target - Cast Backstab'),
(909, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                       'Defias Night Blade - Between 0-15% Health - Flee For Assist (No Repeat)'),
(910, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 900000, 900000, 0, 0, 11, 12544, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Defias Enchanter - Out of Combat - Cast Frost Armor'),
(910, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20811, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Defias Enchanter - In Combat - Cast Fireball'),
(910, 0, 2, 0, 0, 0, 100, 0, 5000, 15000, 15000, 40000, 0, 0, 11, 3443, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Defias Enchanter - In Combat - Cast Enchanted Quickness'),
(910, 0, 3, 0, 2, 0, 100, 1, 0, 20, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                       'Defias Enchanter - Between 0-20% Health - Flee For Assist (No Repeat)'),
(920, 0, 0, 0, 0, 0, 100, 0, 13000, 19000, 24000, 38000, 0, 0, 11, 3424, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Nightbane Tainted One - In Combat - Cast Tainted Howl'),
(920, 0, 1, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3616, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Nightbane Tainted One - On Respawn - Cast Poison Proc'),
(930, 0, 0, 0, 0, 0, 100, 0, 3000, 13000, 8000, 14000, 0, 0, 11, 7367, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Black Widow Hatchling - Within 0-5 Range - Cast Infected Bite'),
(930, 0, 1, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3616, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Black Widow Hatchling - On Respawn - Cast Poison Proc'),
(948, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 26047, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Rotted One - On Respawn - Cast Birth'),
(948, 0, 1, 0, 6, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 3428, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Rotted One - On Just Died - Cast \'Summon Flesh Eating Worms\''),
(949, 0, 0, 0, 0, 0, 100, 0, 9000, 26000, 13000, 48000, 0, 0, 11, 3609, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Carrion Recluse - Within 0-5 Range - Cast Paralyzing Poison'),
(1110, 0, 0, 0, 0, 0, 100, 0, 1000, 4000, 19000, 34000, 0, 0, 11, 7992, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Skeletal Raider - In Combat - Cast Slowing Poison'),
--
(1200, 0, 0, 0, 1, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 8909, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Morbent Fel - Out of Combat - Cast Unholy Shield'),
(1200, 0, 1, 0, 8, 0, 100, 512, 8913, 0, 0, 0, 0, 0, 36, 24782, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Morbent Fel - On Spellhit \'Sacred Cleansing\' - Update Template To \'Weakened Morbent Fel\''),
(1200, 0, 2, 0, 0, 0, 100, 0, 0, 0, 3000, 13000, 0, 0, 11, 3108, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Morbent Fel - In Combat - Cast Touch of Death'),
(1200, 0, 3, 0, 0, 0, 100, 0, 0, 0, 24000, 24000, 0, 0, 11, 3109, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Morbent Fel - In Combat - Cast Presence of Death'),
(1200, 0, 4, 0, 2, 0, 100, 513, 0, 15, 0, 0, 0, 0, 28, 8909, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Morbent Fel - Between 0-15% Health - Remove Aura Unholy Shield'),
--
(1251, 0, 0, 0, 4, 0, 10, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                         'Splinter Fist Firemonger - On Aggro - Say Line 0'),
(1251, 0, 1, 0, 0, 0, 100, 0, 1000, 5000, 61000, 71000, 0, 0, 11, 184, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Splinter Fist Firemonger - In Combat - Cast Fire Shield II'),
(1258, 0, 0, 0, 0, 0, 100, 0, 6000, 8000, 30000, 47000, 0, 0, 11, 3149, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Black Ravager Mastiff - In Combat - Cast Furious Howl'),
(1258, 0, 1, 0, 0, 0, 100, 0, 9000, 12000, 15000, 25000, 0, 0, 11, 13443, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,  'Black Ravager Mastiff - Within 0-5 Range - Cast Rend'),
(1270, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 26047, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Fetid Corpse - On Respawn - Cast Birth'),
(1270, 0, 1, 0, 0, 0, 100, 0, 2000, 18000, 120000, 125000, 0, 0, 11, 7102, 32, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,  'Fetid Corpse - Within 0-5 Range - Cast Contagion of Rot'),
(1487, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Splinter Fist Enslaver - Outside 30 Range - Start Combat Movement'),
(1487, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Splinter Fist Enslaver - Within 5-30 Range - Stop Combat Movement'),
(1487, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Splinter Fist Enslaver - Within 0-5 Range - Start Combat Movement'),
(1487, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 10277, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Splinter Fist Enslaver - Within 5-30 Range - Cast Throw'),
(1487, 0, 4, 0, 9, 0, 100, 0, 0, 0, 20000, 45000, 0, 20, 11, 6533, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Splinter Fist Enslaver - Within 0-20 Range - Cast Net'),
--
(6170, 0, 0, 0, 0, 0, 100, 0, 17000, 20000, 21000, 37000, 0, 0, 11, 3424, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Gutspill - In Combat - Cast Tainted Howl'),
(6170, 0, 1, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3616, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Gutspill - On Respawn - Cast Poison Proc');


-- fix respawn time of Lord Malathrom and Naraxis
UPDATE `creature` SET `spawntimesecs` = 23400 WHERE `id1` IN (503, 574);

-- Nothing but the Truth, should require deepstrider tumor(6082)
DELETE FROM `item_dbc` WHERE `ID` = 6082;
INSERT INTO `item_dbc` (`ID`, `ClassID`, `SubclassID`, `Sound_Override_Subclassid`, `Material`, `DisplayInfoID`, `InventoryType`, `SheatheType`) VALUES
(6082, 12, 0, -1, -1, 9734, 0, 0);

-- Nothing but the Truth, item ID stayed the same, so only updating name and icon
UPDATE `item_template` SET `name` = 'Deepstrider Tumor', `displayid` = 9734 WHERE `entry` = 6082;

-- Nothing but the Truth, tumor dropped from: Deepstrider Giant(4686), Deepstrider Searcher(4687)
DELETE FROM `creature_loot_template` WHERE `Item` = 6082;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
(4686, 6082, 0, 100, 1, 1, 0, 1, 1, 'Deepstrider Giant - Deepstrider Tumor'),
(4687, 6082, 0, 100, 1, 1, 0, 1, 1, 'Deepstrider Searcher - Deepstrider Tumor');

-- Nothing but the Truth, update quest log and description
UPDATE `quest_template` SET `LogDescription` = 'Apothecary Faustin at Beggar\'s Haunt needs 5 Shadow Panther Hearts, Mire Lord Fungus and a Deepstrider Tumor.' WHERE `ID` = 1383;
UPDATE `quest_template` SET `QuestDescription` = 'I have just the right serum in mind. It will deal with the truth in precisely the way the truth should be dealt with.$b$bFor this concoction I will need several Shadow Panther hearts from the Swamp. I also require the enchanted fungus off of the Mire Lord who resides there. I am sure one as able as you, $n, can persuade him to part with some.$b$bNow the hard part will be locating a Deepstrider tumor from far-off Desolace. Very rarely the giants there become ill and a tumor forms.$b$bNow, off you go!' WHERE `ID` = 1383;
