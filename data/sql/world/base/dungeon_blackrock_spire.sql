/* smart scripts */
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(9045, 9096, 9817, 9818, 9819, 10083, 10317, 10318, 10319, 10366, 10371, 10372, 10509, 10814, 10899);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(9045, 9096, 9817, 9818, 9819, 10083, 10317, 10318, 10319, 10366, 10371, 10372, 10509, 10814, 10899);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(9045, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 39, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Scarshield Acolyte - On Aggro - Call For Help'),
(9045, 0, 1, 0, 0, 0, 100, 0, 7000, 15000, 21000, 33000, 0, 0, 11, 14032, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Scarshield Acolyte - In Combat - Cast Shadow Word: Pain'),
(9045, 0, 2, 0, 2, 0, 100, 1, 0, 75, 0, 0, 0, 0, 11, 12039, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Scarshield Acolyte - Between 0-75% Health - Cast Heal (No Repeat)'),
(9045, 0, 3, 0, 74, 0, 100, 0, 0, 0, 17000, 24000, 35, 40, 11, 8362, 96, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,           'Scarshield Acolyte - On Friendly Between 0-35% Health - Cast Renew'),
(9045, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                         'Scarshield Acolyte - Between 0-15% Health - Flee For Assist (No Repeat)'),
(9096, 0, 0, 0, 0, 0, 100, 0, 4000, 9000, 7000, 12000, 0, 0, 11, 15580, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,        'Rage Talon Dragonspawn - Within 0-5 Range - Cast Strike'),
(9096, 0, 1, 0, 0, 0, 100, 0, 7700, 17100, 20300, 34200, 0, 0, 11, 12021, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Rage Talon Dragonspawn - Within 0-5 Range - Cast Fixate'),
(9096, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 8000, 0, 5, 11, 15572, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                'Rage Talon Dragonspawn - Within 0-5 Range - Cast Sunder Armor'),
(9096, 0, 3, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Rage Talon Dragonspawn - In Combat - Cast Thrash'),
(9096, 0, 4, 5, 2, 0, 100, 0, 0, 30, 120000, 120000, 0, 0, 11, 8269, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Rage Talon Dragonspawn - Between 0-30% Health - Cast Frenzy'),
(9096, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                          'Rage Talon Dragonspawn - On Frenzy - Say Line 0'),
(9096, 0, 6, 0, 9, 0, 100, 0, 0, 0, 22000, 25000, 8, 25, 11, 24023, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Rage Talon Dragonspawn - Within 8-25 Range - Cast Charge'), -- test!
(9817, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 12380, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Blackhand Dreadweaver - On Reset - Cast Shadow Channeling'),
(9817, 0, 1, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 39, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Blackhand Dreadweaver - On Aggro - Call For Help'),
(9817, 0, 2, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 12739, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,               'Blackhand Dreadweaver - In Combat - Cast Shadow Bolt'),
(9817, 0, 3, 0, 0, 0, 100, 0, 4000, 7000, 7000, 11000, 0, 0, 11, 7068, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Blackhand Dreadweaver - In Combat - Cast Veil of Shadow'),
(9817, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                         'Blackhand Dreadweaver - Between 0-15% Health - Flee For Assist (No Repeat)'),
(9817, 0, 5, 6, 1, 0, 100, 0, 0, 8000, 12000, 14000, 0, 0, 92, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Blackhand Dreadweaver - Out of Combat - Interrupt Spell'),
(9817, 0, 6, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Blackhand Dreadweaver - Out of Combat - Set Event Phase 1'),
(9817, 0, 7, 0, 1, 1, 100, 0, 0, 0, 0, 0, 0, 0, 5, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                           'Blackhand Dreadweaver - Out of Combat - Play Emote 1 (Phase 1)'),
(9817, 0, 8, 9, 1, 1, 100, 0, 4000, 4000, 4000, 4000, 0, 0, 11, 12380, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Blackhand Dreadweaver - Out of Combat - Cast Shadow Channeling (Phase 1)'),
(9817, 0, 9, 0, 61, 1, 100, 512, 0, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Blackhand Dreadweaver - Out of Combat - Set Event Phase 0 (Phase 1)'),
(9817, 0, 10, 0, 9, 0, 100, 0, 0, 0, 6000, 11000, 0, 5, 11, 16247, 34, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Blackhand Dreadweaver - Within 0-5 Range - Cast Curse of Thorns'),
(9818, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 12380, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Blackhand Summoner - On Reset - Cast Shadow Channeling'),
(9818, 0, 1, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 39, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Blackhand Summoner - On Aggro - Call For Help'),
(9818, 0, 2, 0, 0, 0, 100, 0, 6000, 22000, 16000, 24000, 0, 0, 87, 981800, 981801, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Blackhand Summoner - In Combat - Summon Blackhand Veteran or Dreadweaver'),
(9818, 0, 3, 0, 0, 0, 100, 0, 0, 0, 3000, 3000, 0, 0, 11, 12466, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,               'Blackhand Summoner - In Combat - Cast Fireball'),
(9818, 0, 4, 0, 0, 0, 100, 0, 10000, 20000, 120000, 120000, 0, 0, 11, 15532, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Blackhand Summoner - In Combat - Cast Frost Nova'),
(9818, 0, 5, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                         'Blackhand Summoner - Between 0-15% Health - Flee For Assist (No Repeat)'),
(9818, 0, 6, 0, 1, 0, 100, 0, 0, 8000, 12000, 14000, 0, 0, 5, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Blackhand Summoner - Out of Combat - Play Emote 1'),
(9819, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 39, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Blackhand Veteran - On Aggro - Call For Help'),
(9819, 0, 1, 0, 0, 0, 100, 1, 0, 3200, 0, 0, 0, 0, 11, 15749, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                   'Blackhand Veteran - In Combat - Cast Shield Charge (No Repeat)'),
(9819, 0, 2, 0, 0, 0, 100, 0, 6000, 9000, 11000, 14000, 0, 0, 11, 15749, 0, 0, 0, 0, 0, 28, 25, 1, 1, 8, 0, 0, 0, 0,      'Blackhand Veteran - Within 8-25 Range - Cast Shield Charge'),
(9819, 0, 3, 0, 0, 0, 100, 0, 4000, 7000, 7000, 10000, 0, 0, 11, 14516, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,        'Blackhand Veteran - Within 0-5 Range - Cast Strike'),
(9819, 0, 4, 0, 105, 0, 100, 0, 0, 0, 10000, 11000, 0, 5, 11, 11972, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,            'Blackhand Veteran - Target Casting - Cast Shield Bash'),
(9819, 0, 5, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                         'Blackhand Veteran - Between 0-15% Health - Flee For Assist (No Repeat)'),
(9819, 0, 6, 0, 1, 0, 100, 0, 0, 8000, 12000, 14000, 0, 0, 5, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Blackhand Veteran - Out of Combat - Play Emote 1'),
(10083, 0, 0, 0, 0, 0, 100, 0, 7000, 130000, 15000, 20000, 0, 0, 11, 15285, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Rage Talon Flamescale - In Combat - Cast Fireball Volley'),
(10083, 0, 1, 0, 0, 0, 100, 0, 10000, 13000, 25000, 35000, 0, 0, 11, 12470, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Rage Talon Flamescale - In Combat - Cast Fire Nova'),
(10083, 0, 2, 0, 0, 0, 100, 0, 10000, 20000, 20000, 30000, 0, 0, 11, 16102, 64, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,   'Rage Talon Flamescale - In Combat - Cast Flamestrike'),
(10317, 0, 0, 0, 0, 0, 100, 0, 5000, 10000, 8000, 14000, 0, 0, 11, 15580, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Blackhand Elite - Within 0-5 Range - Cast Strike'),
(10317, 0, 1, 0, 0, 0, 100, 0, 3000, 6000, 4000, 7000, 0, 0, 11, 16172, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,       'Blackhand Elite - Within 0-5 Range - Cast Head Crack'),
(10317, 0, 2, 0, 0, 0, 100, 0, 5000, 8000, 6000, 7000, 0, 0, 11, 6253, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,         'Blackhand Elite - Within 0-5 Range - Cast Backhand'),
(10318, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 674, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Blackhand Assassin - On Respawn - Cast Dual Wield'),
(10318, 0, 1, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 22766, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Blackhand Assassin - Out of Combat - Cast Sneak'),
(10318, 0, 2, 0, 0, 0, 100, 0, 6000, 20000, 10000, 20000, 0, 0, 11, 12540, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Blackhand Assassin - Within 0-5 Range - Cast Gouge'),
(10318, 0, 3, 0, 0, 0, 100, 0, 10000, 18000, 17000, 26000, 0, 0, 11, 6434, 0, 7, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Blackhand Assassin - In Combat - Cast Slice and Dice'),
(10318, 0, 4, 0, 67, 0, 100, 0, 0, 0, 10000, 20000, 0, 5, 11, 15582, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Blackhand Assassin - Behind Target - Cast Backstab'),
(10319, 0, 0, 1, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 12782, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Blackhand Iron Guard - On Respawn - Cast Shield Spike'),
(10319, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 21478, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Blackhand Iron Guard - On Respawn - Cast Increased Block 16'),
(10319, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 21494, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Blackhand Iron Guard - On Respawn - Cast Increased Block 34'),
(10319, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 21495, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Blackhand Iron Guard - On Respawn - Cast Increased Block 35'),
(10319, 0, 4, 0, 0, 0, 100, 0, 4000, 7000, 7000, 9000, 0, 0, 11, 15655, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,        'Blackhand Iron Guard - Within 0-5 Range - Cast Shield Slam'),
(10319, 0, 5, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 15062, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Blackhand Iron Guard - Between 0-30% Health - Cast Shield Wall (No Repeat)'),
(10366, 0, 0, 0, 0, 0, 100, 0, 4000, 9000, 10000, 16000, 0, 0, 11, 15655, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Rage Talon Dragon Guard - Within 0-5 Range - Cast Shield Slam'),
(10366, 0, 1, 0, 9, 0, 100, 0, 0, 0, 6000, 10000, 0, 5, 11, 16145, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Rage Talon Dragon Guard - In Combat - Cast Sunder Armor'),
(10366, 0, 2, 0, 0, 0, 100, 0, 3000, 6000, 8000, 12000, 0, 0, 11, 15284, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,       'Rage Talon Dragon Guard - Within 0-5 Range - Cast Cleave'),
(10371, 0, 0, 0, 0, 0, 100, 0, 4000, 7000, 8000, 11000, 0, 0, 11, 16169, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,       'Rage Talon Captain - Within 0-5 Range - Cast Arcing Smash'),
(10371, 0, 1, 0, 9, 0, 100, 0, 0, 0, 8000, 14000, 0, 8, 11, 10101, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Rage Talon Captain - Within 0-8 Range - Cast Knock Away'),
(10371, 0, 2, 0, 0, 0, 100, 0, 6000, 9000, 17000, 21000, 0, 0, 11, 15708, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Rage Talon Captain - Within 0-5 Range - Cast Mortal Strike'),
(10372, 0, 0, 0, 106, 0, 100, 0, 0, 0, 12000, 17000, 0, 8, 11, 16635, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Rage Talon Fire Tongue - In Combat - Cast Fire Nova'),
(10372, 0, 1, 0, 0, 0, 100, 0, 5000, 8000, 11000, 16000, 0, 0, 11, 16144, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,       'Rage Talon Fire Tongue - In Combat - Cast Fire Blast'),
(10372, 0, 2, 0, 0, 0, 100, 0, 2000, 5000, 6000, 9000, 0, 0, 11, 16168, 96, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Rage Talon Fire Tongue - In Combat - Cast Flame Buffet'),
(10509, 0, 0, 0, 37, 0, 85, 0, 0, 0, 0, 0, 0, 0, 41, 500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Jed Runewatcher - On AI Init - Despawn'),
(10509, 0, 1, 0, 0, 0, 100, 0, 4000, 7000, 7000, 10000, 0, 0, 11, 14516, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,       'Jed Runewatcher - Within 0-5 Range - Cast Strike'),
(10509, 0, 2, 0, 105, 0, 100, 0, 0, 0, 4000, 6000, 0, 5, 11, 11972, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,             'Jed Runewatcher - Target Casting - Cast Shield Bash'),
(10509, 0, 3, 0, 9, 0, 100, 1, 0, 0, 0, 0, 8, 25, 11, 15749, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                    'Jed Runewatcher - Within 8-25 Range - Cast Shield Charge (No Repeat)'),
(10814, 0, 0, 0, 0, 0, 100, 0, 9000, 15000, 18000, 24000, 0, 0, 11, 15708, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Chromatic Elite Guard - Within 0-5 Range - Cast Mortal Strike'),
(10814, 0, 1, 0, 0, 0, 100, 0, 3000, 8000, 9000, 16000, 0, 0, 11, 16790, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,       'Chromatic Elite Guard - Within 0-5 Range - Cast Knockdown'),
(10814, 0, 2, 0, 0, 0, 100, 0, 5000, 8000, 9000, 14000, 0, 0, 11, 15580, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,       'Chromatic Elite Guard - Within 0-5 Range - Cast Strike'),
(10899, 0, 1, 0, 0, 0, 100, 0, 5000, 8000, 6000, 10000, 0, 0, 11, 15580, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,       'Goraluk Anvilcrack - Within 0-5 Range - Cast Strike'),
(10899, 0, 2, 0, 0, 0, 100, 0, 3000, 6000, 3000, 6000, 0, 0, 11, 16172, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,       'Goraluk Anvilcrack - Within 0-5 Range - Cast Head Crack'),
(10899, 0, 3, 0, 0, 0, 100, 0, 5000, 8000, 4000, 6000, 0, 0, 11, 6253, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,         'Goraluk Anvilcrack - Within 0-5 Range - Cast Backhand');


UPDATE `gameobject` SET `animprogress` = 100, `state` = 1 WHERE `id` = 164725; -- Dragonspine Door
UPDATE `gameobject` SET `animprogress` = 100, `state` = 1 WHERE `id` = 175528; -- Doodad_DarkIronBrazier01
UPDATE `gameobject` SET `animprogress` = 100, `state` = 1 WHERE `id` = 175529; -- Doodad_DarkIronBrazier02
UPDATE `gameobject` SET `animprogress` = 100, `state` = 1 WHERE `id` = 175530; -- Doodad_DarkIronBrazier03
UPDATE `gameobject` SET `animprogress` = 100, `state` = 1 WHERE `id` = 175531; -- Doodad_DarkIronBrazier04
UPDATE `gameobject` SET `animprogress` = 100, `state` = 1 WHERE `id` = 175532; -- Doodad_DarkIronBrazier05
UPDATE `gameobject` SET `animprogress` = 100, `state` = 1 WHERE `id` = 175533; -- Doodad_DarkIronBrazier06


/* important blackrock documents (item 12562) was a dropped item. it shouldn't be. this item can be found as a lootable scroll on the ground within LBRS. */
DELETE FROM `creature_loot_template` WHERE `Item` = 12562;

/* gemstones shouldn't have 100% drop rate. should be around 33%. exact rates unknown. wowhead's listed drop rates aren't correct. */
UPDATE `creature_loot_template` SET `Chance` = 33 WHERE `Item` IN (12335, 12336, 12337);
