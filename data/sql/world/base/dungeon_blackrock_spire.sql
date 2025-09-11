/* ---- Upper Blackrock Spire ---- */

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
(9096, 0, 6, 0, 9, 0, 100, 0, 0, 0, 22000, 25000, 8, 25, 11, 24023, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Rage Talon Dragonspawn - Within 8-25 Range - Cast Charge'),
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


/* ---- Lower Blackrock Spire ---- */

/* smart scripts */
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (9416);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(9045, 9097, 9098, 9197, 9198, 9199, 9200, 9201, 9216, 9217, 9218, 9219, 9236, 9239, 9240, 9241, 9257, 9258, 9259, 
9260, 9261, 9262, 9263, 9264, 9265, 9266, 9267, 9268, 9269, 9583, 9596, 9692, 9693, 9716, 9717, 10374, 10376, 10596);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(9045, 9097, 9098, 9197, 9198, 9199, 9200, 9201, 9216, 9217, 9218, 9219, 9236, 9239, 9240, 9241, 9257, 9258, 9259, 
9260, 9261, 9262, 9263, 9264, 9265, 9266, 9267, 9268, 9269, 9416, 9583, 9596, 9692, 9693, 9716, 9717, 10374, 10376, 10596);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(9045, 0, 0, 0, 4, 0, 100, 2, 0, 0, 0, 0, 0, 0, 39, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Scarshield Acolyte - On Aggro - Call For Help (Normal Dungeon)'),
(9045, 0, 1, 0, 0, 0, 100, 0, 7000, 15000, 21000, 33000, 0, 0, 11, 14032, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Scarshield Acolyte - In Combat - Cast Shadow Word: Pain'),
(9045, 0, 2, 0, 2, 0, 100, 1, 0, 75, 0, 0, 0, 0, 11, 12039, 64, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Scarshield Acolyte - Between 0-75% Health - Cast Heal (No Repeat)'),
(9045, 0, 3, 0, 74, 0, 100, 0, 0, 0, 17000, 24000, 35, 40, 11, 8362, 96, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,        'Scarshield Acolyte - On Friendly Between 0-35% Health - Cast Renew'),
(9045, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Scarshield Acolyte - Between 0-15% Health - Flee For Assist (No Repeat)'),
(9097, 0, 0, 0, 4, 0, 100, 2, 0, 0, 0, 0, 0, 0, 39, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Scarshield Legionnaire - On Aggro - Call For Help (Normal Dungeon)'),
(9097, 0, 1, 0, 0, 0, 100, 0, 7800, 11500, 8000, 22100, 0, 0, 11, 15496, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Scarshield Legionnaire - Within 0-5 Range - Cast Cleave'),
(9097, 0, 2, 0, 105, 0, 100, 0, 0, 0, 14000, 20000, 0, 5, 11, 11972, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,         'Scarshield Legionnaire - Target Casting - Cast Shield Bash'),
(9098, 0, 0, 0, 63, 0, 100, 0, 0, 0, 0, 0, 0, 0, 58, 1, 13748, 1100, 3000, 30, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Scarshield Spellbinder - On Respawn - Set Caster Template'),
(9098, 0, 1, 0, 4, 0, 100, 2, 0, 0, 0, 0, 0, 0, 39, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Scarshield Spellbinder - On Aggro - Call For Help (Normal Dungeon)'),
(9098, 0, 2, 0, 16, 0, 100, 0, 15123, 30, 3000, 6000, 0, 0, 11, 15123, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,       'Scarshield Spellbinder - On Friendly Missing Buff - Cast Resist Fire'),
--
(9197, 0, 0, 0, 0, 0, 100, 0, 4000, 10000, 5000, 15000, 0, 0, 11, 15305, 64, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,   'Spirestone Battle Mage - In Combat - Cast Chain Lightning'),
(9197, 0, 1, 0, 14, 0, 100, 0, 6000, 40, 20000, 20000, 0, 0, 11, 16170, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,      'Spirestone Battle Mage - Friendly Missing 6000 Health - Cast Bloodlust'),
(9198, 0, 0, 0, 0, 0, 100, 0, 4000, 10000, 5000, 15000, 0, 0, 11, 15659, 64, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,   'Spirestone Mystic - In Combat - Cast Chain Lightning'),
(9198, 0, 1, 0, 0, 0, 100, 0, 5000, 5000, 10000, 20000, 0, 0, 11, 8435, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Spirestone Mystic - In Combat - Cast Forked Lightning'),
(9198, 0, 2, 0, 14, 0, 100, 0, 3000, 40, 5000, 10000, 0, 0, 11, 15981, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,       'Spirestone Mystic - Friendly Missing 3000 Health - Cast Rejuvenation'),
(9198, 0, 3, 0, 14, 0, 100, 0, 4000, 40, 10000, 15000, 0, 0, 11, 15982, 65, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,     'Spirestone Mystic - Friendly Missing 4000 Health - Cast Healing Wave'),
(9199, 0, 0, 0, 0, 0, 100, 0, 6000, 20000, 8000, 18000, 0, 0, 11, 14516, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Spirestone Enforcer - Within 0-5 Range - Cast Strike'),
(9200, 0, 0, 0, 0, 0, 100, 0, 7000, 15000, 15000, 22000, 0, 0, 11, 11876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Spirestone Reaver - In Combat - Cast War Stomp'),
(9200, 0, 1, 0, 0, 0, 100, 0, 5000, 8000, 3000, 10000, 0, 0, 11, 15284, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Spirestone Reaver - Within 0-5 Range - Cast Cleave'),
(9201, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 4000, 0, 0, 11, 15979, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Spirestone Ogre Magus - In Combat - Cast Arcane Bolt'),
(9201, 0, 1, 0, 2, 0, 100, 0, 0, 60, 30000, 35000, 0, 0, 11, 6742, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Spirestone Ogre Magus - Between 0-60% Health - Cast Bloodlust'),
(9201, 0, 2, 0, 0, 0, 100, 0, 6000, 9000, 20000, 30000, 0, 0, 11, 13747, 33, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Spirestone Ogre Magus - In Combat - Cast Slow'),
(9216, 0, 0, 0, 0, 0, 100, 0, 20000, 20000, 20000, 20000, 0, 0, 11, 16171, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Spirestone Warlord - In Combat - Cast Empower Will'),
(9216, 0, 1, 2, 2, 0, 100, 0, 0, 30, 30000, 30000, 0, 0, 11, 8269, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Spirestone Warlord - Between 0-30% Health - Cast Frenzy'),
(9216, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Spirestone Warlord - On Frenzy - Say Line 0'),
--
(9217, 0, 0, 0, 37, 0, 85, 2, 0, 0, 0, 0, 0, 0, 41, 500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Spirestone Lord Magus - On AI initialize - Despawn in 0.5s (Normal Dungeon)'),
(9217, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 4000, 0, 0, 11, 15230, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Spirestone Lord Magus - In Combat - Cast Arcane Bolt'),
(9217, 0, 2, 0, 0, 0, 100, 0, 7000, 12000, 14000, 19000, 0, 0, 11, 13323, 33, 0, 0, 0, 0, 6, 30, 0, 0, 0, 0, 0, 0, 0,  'Spirestone Lord Magus - In Combat - Cast Polymorph'),
(9217, 0, 3, 0, 74, 0, 100, 0, 0, 0, 25000, 30000, 50, 40, 11, 8365, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,         'Spirestone Lord Magus - Friendly Between 0-50% Health - Cast Enlarge'),
(9217, 0, 4, 0, 74, 0, 100, 0, 0, 0, 30000, 30000, 70, 30, 11, 6742, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,         'Spirestone Lord Magus - Friendly Between 0-70% Health - Cast Bloodlust'),
(9218, 0, 0, 0, 37, 0, 85, 2, 0, 0, 0, 0, 0, 0, 41, 500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Spirestone Battle Lord - On AI initialize - Despawn in 0.5s (Normal Dungeon)'),
(9219, 0, 0, 0, 37, 0, 85, 2, 0, 0, 0, 0, 0, 0, 41, 500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Spirestone Butcher - On AI initialize - Despawn in 0.5s (Normal Dungeon)'),
--
(9236, 0, 0, 0, 0, 0, 100, 0, 2000, 2000, 45000, 45000, 0, 0, 11, 16098, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Shadow Hunter Vosh gajin - In Combat - Cast Curse of Blood'),
(9236, 0, 1, 0, 0, 0, 100, 0, 8000, 8000, 15000, 15000, 0, 0, 11, 16097, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Shadow Hunter Vosh gajin - In Combat - Cast Hex'),
(9236, 0, 2, 0, 0, 0, 100, 0, 14000, 14000, 7000, 7000, 0, 0, 11, 15284, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Shadow Hunter Vosh gajin - Within 0-5 Range - Cast Cleave'),
(9239, 0, 0, 0, 0, 0, 100, 0, 5000, 10000, 5000, 10000, 0, 0, 11, 16006, 64, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,   'Smolderthorn Mystic - In Combat - Cast Chain Lightning'),
(9239, 0, 1, 0, 14, 0, 100, 0, 2000, 40, 10000, 15000, 0, 0, 11, 15799, 65, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,     'Smolderthorn Mystic - Friendly Missing 2000 Health - Cast Chain Heal'),
(9239, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Smolderthorn Mystic - Between 0-15% Health - Flee For Assist (No Repeat)'),
(9240, 0, 0, 0, 0, 0, 100, 0, 10000, 10000, 10000, 10000, 0, 0, 11, 15090, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Smolderthorn Shadow Priest - In Combat - Cast Dispel Magic'),
(9240, 0, 1, 0, 0, 0, 100, 0, 5000, 10000, 20000, 20000, 0, 0, 11, 11641, 32, 0, 0, 0, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0,  'Smolderthorn Shadow Priest - Within 0-20 Range - Cast Hex'),
(9240, 0, 2, 0, 0, 0, 100, 0, 6000, 8000, 5000, 10000, 0, 0, 11, 15800, 320, 0, 0, 0, 0, 5, 30, 0, 1, 0, 0, 0, 0, 0,   'Smolderthorn Shadow Priest - Within 0-30 Range - Cast Mana Burn'),
(9240, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Smolderthorn Shadow Priest - Between 0-15% Health - Flee For Assist (No Repeat)'),
(9241, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Smolderthorn Headhunter - Outside 30 Range - Start Combat Movement'),
(9241, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Smolderthorn Headhunter - Within 5-30 Range - Stop Combat Movement'),
(9241, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Smolderthorn Headhunter - Within 0-5 Range - Start Combat Movement'),
(9241, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 15795, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Smolderthorn Headhunter - Within 5-30 Range - Cast Throw'),
(9241, 0, 4, 0, 9, 0, 100, 0, 0, 0, 9000, 13000, 5, 30, 11, 16001, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Smolderthorn Headhunter - Within 5-30 Range - Cast Impale'),
(9241, 0, 5, 0, 0, 0, 100, 0, 5000, 10000, 22000, 26000, 0, 0, 11, 6016, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Smolderthorn Headhunter - Within 0-5 Range - Cast Pierce Armor'),
(9241, 0, 6, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Smolderthorn Headhunter - Between 0-15% Health - Flee For Assist (No Repeat)'),
(9257, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 12471, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Scarshield Warlock - In Combat - Cast Shadow Bolt'),
(9257, 0, 1, 0, 0, 0, 100, 0, 10000, 20000, 60000, 75000, 0, 0, 11, 15125, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Scarshield Warlock - In Combat - Cast Scarshield Portal'),
(9257, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Scarshield Warlock - Between 0-15% Health - Flee For Assist (No Repeat)'),
(9258, 0, 0, 0, 9, 0, 100, 0, 0, 0, 6000, 9000, 0, 5, 11, 11976, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Scarshield Raider - Within 0-5 Range - Cast Strike'),
(9258, 0, 1, 0, 9, 0, 100, 0, 0, 0, 15000, 34000, 5, 30, 11, 14030, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Scarshield Raider - Within 5-30 Range - Cast Hooked Net'),
--
(9259, 0, 0, 1, 2, 0, 100, 0, 0, 30, 30000, 35000, 0, 0, 11, 8269, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Firebrand Grunt - Between 0-30% Health - Cast Frenzy'),
(9259, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Firebrand Grunt - On Frenzy - Say Line 0'),
(9259, 0, 2, 0, 0, 0, 100, 0, 5000, 5000, 6000, 10000, 0, 0, 11, 13737, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Firebrand Grunt - Within 0-5 Range - Cast Mortal Strike'),
(9259, 0, 3, 0, 0, 0, 100, 0, 20000, 20000, 30000, 30000, 0, 0, 11, 15128, 96, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Firebrand Grunt - In Combat - Cast Mark of Flames'),
(9260, 0, 0, 0, 0, 0, 100, 0, 1000, 5000, 10000, 15000, 0, 0, 11, 3248, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Firebrand Legionnaire - In Combat - Cast Improved Blocking'),
(9260, 0, 1, 0, 105, 0, 100, 0, 0, 0, 6000, 12000, 0, 5, 11, 11972, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,          'Firebrand Legionnaire - Target Casting - Cast Shield Bash'),
(9260, 0, 2, 0, 0, 0, 100, 0, 20000, 20000, 30000, 30000, 0, 0, 11, 15128, 96, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Firebrand Legionnaire - In Combat - Cast Mark of Flames'),
(9261, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 12471, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Firebrand Darkweaver - In Combat - Cast Shadow Bolt'),
(9261, 0, 1, 0, 0, 0, 50, 0, 4000, 6000, 30000, 45000, 0, 0, 11, 15128, 96, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,    'Firebrand Darkweaver - In Combat - Cast Mark of Flames'),
(9261, 0, 2, 0, 0, 0, 100, 0, 9000, 14000, 9000, 14000, 0, 0, 11, 15090, 1, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,    'Firebrand Darkweaver - In Combat - Cast Dispel Magic'),
(9261, 0, 3, 0, 0, 0, 100, 0, 1000, 4000, 12000, 15000, 0, 0, 11, 16071, 96, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,   'Firebrand Darkweaver - In Combat - Cast Curse of the Firebrand'),
(9261, 0, 4, 0, 0, 0, 100, 0, 12000, 15000, 12000, 15000, 0, 0, 11, 14887, 65, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Firebrand Darkweaver - In Combat - Cast Shadow Bolt Volley'),
(9261, 0, 5, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Firebrand Darkweaver - Between 0-15% Health - Flee For Assist (Normal Dungeon)'),
(9262, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 15242, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Firebrand Invoker - In Combat - Cast Fireball'),
(9262, 0, 1, 0, 0, 0, 50, 0, 4000, 6000, 30000, 45000, 0, 0, 11, 15128, 96, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,    'Firebrand Invoker - In Combat - Cast Mark of Flames'),
(9262, 0, 2, 0, 0, 0, 100, 0, 8000, 10000, 11000, 14000, 0, 0, 11, 12470, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Firebrand Invoker - In Combat - Cast Fire Nova'),
(9262, 0, 3, 0, 0, 0, 100, 0, 12000, 16000, 14000, 18000, 0, 0, 11, 12468, 65, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0, 'Firebrand Invoker - In Combat - Cast Flamestrike'),
(9262, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Firebrand Invoker - Between 0-15% Health - Flee For Assist (No Repeat)'),
(9263, 0, 0, 0, 0, 0, 100, 0, 20000, 20000, 30000, 30000, 0, 0, 11, 15128, 96, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Firebrand Dreadweaver - In Combat - Cast Mark of Flames'),
(9263, 0, 1, 0, 0, 0, 100, 0, 1000, 4000, 12000, 15000, 0, 0, 11, 16071, 96, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,   'Firebrand Dreadweaver - In Combat - Cast Curse of the Firebrand'),
(9263, 0, 2, 0, 0, 0, 100, 0, 10000, 15000, 10000, 20000, 0, 0, 11, 15728, 64, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Firebrand Dreadweaver - In Combat - Cast Plague Cloud'),
(9263, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Firebrand Dreadweaver - Between 0-15% Health - Flee For Assist (No Repeat)'),
(9264, 0, 0, 0, 0, 0, 100, 0, 20000, 20000, 30000, 30000, 0, 0, 11, 15128, 96, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Firebrand Pyromancer - In Combat - Cast Mark of Flames'),
(9264, 0, 1, 0, 0, 0, 100, 0, 1000, 4000, 5000, 8000, 0, 0, 11, 15096, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0,       'Firebrand Pyromancer - In Combat - Cast Flame Shock'),
(9264, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Firebrand Pyromancer - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(9265, 0, 0, 0, 0, 0, 100, 0, 10000, 10000, 12000, 15000, 0, 0, 11, 12540, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,  'Smolderthorn Shadow Hunter - Within 0-5 Range - Cast Gouge'),
(9265, 0, 1, 0, 105, 0, 100, 0, 0, 0, 6000, 12000, 0, 5, 11, 15614, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,          'Smolderthorn Shadow Hunter - Target Casting - Cast Kick'),
(9265, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Smolderthorn Shadow Hunter - Between 0-15% Health - Flee For Assist (No Repeat)'),
(9266, 0, 0, 0, 0, 0, 100, 0, 20000, 20000, 20000, 20000, 0, 0, 11, 15867, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Smolderthorn Witch Doctor - In Combat - Cast Flame Buffet Totem'),
(9266, 0, 1, 0, 0, 0, 100, 0, 8000, 12000, 10000, 15000, 0, 0, 11, 15869, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Smolderthorn Witch Doctor - In Combat - Cast Superior Healing Ward'),
(9266, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Smolderthorn Witch Doctor - Between 0-15% Health - Flee For Assist (No Repeat)'),
(9267, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Smolderthorn Axe Thrower - Outside 30 Range - Start Combat Movement'),
(9267, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Smolderthorn Axe Thrower - Within 5-30 Range - Stop Combat Movement'),
(9267, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Smolderthorn Axe Thrower - Within 0-5 Range - Start Combat Movement'),
(9267, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 15795, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Smolderthorn Axe Thrower - Within 5-30 Range - Cast Throw'),
(9267, 0, 4, 0, 0, 0, 100, 0, 6000, 9000, 9000, 12000, 0, 0, 11, 3391, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Smolderthorn Axe Thrower - In Combat - Cast Thrash'),
(9267, 0, 5, 0, 0, 0, 100, 0, 9000, 14000, 11000, 15000, 0, 0, 11, 11428, 1, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Smolderthorn Axe Thrower - Within 0-5 Range - Cast Knockdown'),
(9267, 0, 6, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Smolderthorn Axe Thrower - Between 0-15% Health - Flee For Assist (No Repeat)'),
(9268, 0, 0, 1, 2, 0, 100, 0, 0, 30, 30000, 35000, 0, 0, 11, 8269, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Smolderthorn Berserker - Between 0-30% Health - Cast Frenzy'),
(9268, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Smolderthorn Berserker - On Frenzy - Say Line 0'),
(9268, 0, 2, 0, 0, 0, 100, 0, 5000, 7000, 4000, 6000, 0, 0, 11, 13446, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Smolderthorn Berserker - Within 0-5 Range - Cast Strike'),
(9268, 0, 3, 0, 0, 0, 100, 0, 5000, 5000, 6000, 10000, 0, 0, 11, 17547, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Smolderthorn Berserker - Within 0-5 Range - Cast Mortal Strike'),
(9269, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 600000, 600000, 0, 0, 11, 13585, 33, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Smolderthorn Seer - Out of Combat - Cast Lightning Shield'),
(9269, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 15801, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Smolderthorn Seer - In Combat - Cast Lightning Bolt'),
(9269, 0, 2, 0, 14, 0, 100, 0, 3000, 40, 15000, 25000, 0, 0, 11, 12492, 65, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,     'Smolderthorn Seer - Friendly Missing 3000 Health - Cast Healing Wave'),
(9269, 0, 3, 0, 0, 0, 100, 0, 3000, 6000, 12000, 15000, 0, 0, 11, 15802, 96, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,   'Smolderthorn Seer - In Combat - Cast Shrink'),
(9269, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Smolderthorn Seer - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(9583, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 674, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Bloodaxe Veteran - On Aggro - Cast Dual Wield'),
(9583, 0, 1, 0, 0, 0, 80, 0, 12000, 12000, 15000, 15000, 0, 0, 11, 15618, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Bloodaxe Veteran - Within 0-5 Range - Cast Snap Kick'),
(9583, 0, 2, 0, 105, 0, 90, 0, 0, 0, 9000, 9000, 0, 5, 11, 15615, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,            'Bloodaxe Veteran - Target Casting - Cast Pummel'),
(9596, 0, 0, 0, 37, 0, 85, 2, 0, 0, 0, 0, 0, 0, 41, 500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Bannok Grimaxe - On AI initialize - Despawn in 0.5s (Normal Dungeon)'),
(9596, 0, 1, 0, 9, 0, 100, 0, 0, 0, 7000, 11000, 0, 5, 11, 13737, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Bannok Grimaxe - Within 0-5 Range - Cast Mortal Strike'),
(9692, 0, 0, 0, 9, 0, 100, 0, 0, 0, 5000, 9000, 0, 5, 11, 15572, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Bloodaxe Raider - Within 0-5 Range - Cast Sunder Armor'),
(9692, 0, 1, 0, 0, 0, 100, 0, 4000, 7000, 7000, 11000, 0, 0, 11, 15284, 0, 0, 0, 0, 0, 21, 4, 0, 0, 0, 0, 0, 0, 0,     'Bloodaxe Raider - Within 0-5 Range - Cast Cleave'),
(9693, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 5000, 0, 0, 11, 13748, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Bloodaxe Evoker - In Combat - Cast Arcane Bolt'),
(9693, 0, 1, 0, 0, 0, 75, 0, 12000, 14000, 25000, 30000, 0, 0, 11, 15743, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Bloodaxe Evoker - In Combat - Cast Flamecrack'),
(9693, 0, 2, 0, 106, 0, 80, 0, 7000, 9000, 15000, 20000, 0, 10, 11, 15744, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Bloodaxe Evoker - In Combat - Cast Blast Wave'),
(9693, 0, 3, 0, 2, 0, 100, 3, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Bloodaxe Evoker - Between 0-15% Health - Flee For Assist (No Repeat) (Normal Dungeon)'),
(9716, 0, 0, 0, 0, 0, 80, 0, 5000, 9000, 9000, 13000, 0, 0, 11, 10966, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Bloodaxe Warmonger - Within 0-5 Range - Cast Uppercut'),
(9716, 0, 1, 2, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 8269, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Bloodaxe Warmonger - Between 0-30% Health - Cast Frenzy (No Repeat)'),
(9716, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Bloodaxe Warmonger - On Frenzy - Say Line 0'),
(9717, 0, 0, 0, 0, 0, 100, 0, 0, 0, 3000, 3000, 0, 0, 11, 15791, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Bloodaxe Summoner - In Combat - Cast Arcane Missiles'),
(9717, 0, 1, 0, 106, 0, 90, 0, 0, 0, 13000, 18000, 0, 8, 11, 15532, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Bloodaxe Summoner - Within 0-8 Range - Cast Frost Nova'),
(9717, 0, 2, 0, 0, 0, 75, 0, 6000, 12000, 15000, 20000, 0, 0, 11, 15734, 1, 0, 0, 0, 0, 6, 40, 0, 0, 0, 0, 0, 0, 0,    'Bloodaxe Summoner - In Combat - Cast Summon'),
(9717, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Bloodaxe Summoner - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(10374, 0, 0, 0, 6, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 16103, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Spire Spider - On Death - Cast Summon Spire Spiderling'),
(10374, 0, 1, 0, 0, 0, 100, 0, 15000, 15000, 15000, 15000, 0, 0, 11, 16104, 32, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0, 'Spire Spider - Within 0-5 Range - Cast Crystallize'),
(10374, 0, 2, 0, 1, 0, 100, 0, 0, 0, 0, 0, 0, 0, 89, 20, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Spire Spider - Out of Combat - Random move'),
(10376, 0, 0, 0, 37, 0, 85, 2, 0, 0, 0, 0, 0, 0, 41, 500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Crystal Fang - On AI initialize - Despawn in 0.5s (Normal Dungeon)'),
(10376, 0, 1, 0, 0, 0, 100, 0, 5000, 10000, 5000, 10000, 0, 0, 11, 16103, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Crystal Fang - In Combat - Cast Spell Summon Spire Spiderling'),
(10596, 0, 0, 0, 0, 0, 100, 0, 1000, 1000, 7000, 15000, 0, 0, 11, 16468, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Mother Smolderweb - In Combat - Cast Mothers Milk'), -- test!
(10596, 0, 1, 0, 0, 0, 100, 0, 7000, 15000, 10000, 17000, 0, 0, 11, 16104, 32, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,  'Mother Smolderweb - Within 0-5 Range - Cast Crystallize'),
(10596, 0, 2, 0, 6, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 16103, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Mother Smolderweb - On Death - Cast Summon Spire Spiderling');


SET @OGUID   := 654000;
SET @CGUID   := 654000;
SET @WPID    := 6540000;

-- move/remove misplaced NPC's
DELETE FROM `creature` WHERE `guid` IN (43101, 43114, 43115, 45741, 45743, 45744, 45748, 45767, 45769, 45770, 45771, 45772, 45781, 45791, 45792, 45793, 45794, 45795, 45796, 45798, 45799, 45800, 45803);
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+14 AND @CGUID+19;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, 
`spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(45741, 9716, 0, 0, 229, 0, 0, 1, 1, 1, -171.36, -417.206, 76.1473, 1.52441, 10800, 0, 0, 8352, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(45744, 9716, 0, 0, 229, 0, 0, 1, 1, 1, -169.123, -321.02, 64.3947, 4.72885, 10800, 0, 0, 8352, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(45748, 9717, 0, 0, 229, 0, 0, 1, 1, 1, -167.538, -419.606, 76.1473, 1.57546, 10800, 0, 0, 6681, 2241, 0, 0, 0, 0, '', 0, 0, NULL),
(45767, 9696, 0, 0, 229, 0, 0, 1, 1, 0, -122.884, -352.058, 70.9525, 2.31766, 10800, 0, 0, 2699, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(45771, 9696, 0, 0, 229, 0, 0, 1, 1, 0, -138.83, -321.97, 71.13, 6.22, 3600, 0, 0, 2699, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(45772, 9696, 0, 0, 229, 0, 0, 1, 1, 0, -139.37, -315.74, 71.13, 0.01, 3600, 0, 0, 2699, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(45781, 9716, 0, 0, 229, 0, 0, 1, 1, 1, -85.2799, -345.586, 70.9524, 1.72314, 10800, 0, 0, 8352, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(45792, 9717, 0, 0, 229, 0, 0, 1, 1, 1, -107.565, -293.609, 70.9526, 3.16355, 10800, 0, 0, 6681, 2241, 0, 0, 0, 0, '', 0, 0, NULL),
(45793, 9717, 0, 0, 229, 0, 0, 1, 1, 1, -84.6158, -309.542, 70.9524, 4.87259, 10800, 0, 0, 6681, 2241, 0, 0, 0, 0, '', 0, 0, NULL),
(45794, 9717, 0, 0, 229, 0, 0, 1, 1, 1, -89.491, -350.449, 70.9524, 1.72156, 10800, 0, 0, 6681, 2241, 0, 0, 0, 0, '', 0, 0, NULL),
(45795, 9717, 0, 0, 229, 0, 0, 1, 1, 1, -54.3983, -318.314, 70.9704, 1.58176, 10800, 0, 0, 6681, 2241, 0, 0, 0, 0, '', 0, 0, NULL),
(45796, 9717, 0, 0, 229, 0, 0, 1, 1, 1, -50.3958, -298.244, 70.9406, 6.18258, 10800, 0, 0, 6681, 2241, 0, 0, 0, 0, '', 0, 0, NULL),
(45798, 9716, 0, 0, 229, 0, 0, 1, 1, 1, -50.8581, -315.852, 70.9638, 3.13607, 10800, 0, 0, 8352, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(45803, 9716, 0, 0, 229, 0, 0, 1, 1, 1, -119.141, -326.153, 70.9524, 3.69014, 10800, 0, 0, 8352, 0, 0, 0, 0, 0, '', 0, 0, NULL),
--
(@CGUID+14, 9696, 0, 0, 229, 0, 0, 1, 1, 0, -36.8292, -524.41, 87.2589, 3.17996,  10800, 0, 0, 2784, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+15, 9696, 0, 0, 229, 0, 0, 1, 1, 0, -38.0471, -519.213, 87.9575, 3.47448, 10800, 0, 0, 2699, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+16, 9692, 0, 0, 229, 0, 0, 1, 1, 1, -37.6197, -521.544, 87.6463, 3.32525, 10800, 0, 0, 8352, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+17, 9696, 0, 0, 229, 0, 0, 1, 1, 0, -47.4574, -480.846, 77.9158, 3.08178, 10800, 0, 0, 2784, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+18, 9696, 0, 0, 229, 0, 0, 1, 1, 0, -51.4571, -484.525, 77.9158, 2.33173, 10800, 0, 0, 2784, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+19, 9692, 0, 0, 229, 0, 0, 1, 1, 1, -49.9808, -482.456, 77.9158, 2.26498, 10800, 0, 0, 8352, 0, 0, 0, 0, 0, '', NULL, 0, NULL);


-- remove wrong patrol
DELETE FROM `creature_addon` WHERE `guid` = 43101;
DELETE FROM `waypoint_data` WHERE `id` = 926800;


-- Bannok Grimaxe (9596), spawn locations
DELETE FROM `creature` WHERE `guid` IN (44020, 44318); -- creatures placed in Bannok Grimaxe's spawn locations by AC
DELETE FROM `creature` WHERE `id1` IN (9596);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, 
`spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(@CGUID+11, 9596, 0, 0, 229, 0, 0, 1, 1, 1, -26.6918, -428.557, -18.935, 2.25881, 10800, 0, 0, 8883, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+12, 9596, 0, 0, 229, 0, 0, 1, 1, 1, -74.0576, -406.988, -18.935, 5.22526, 10800, 0, 0, 8883, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+13, 9596, 0, 0, 229, 0, 0, 1, 1, 1, -88.41, -463.18, -18.76, 2.93,        10800, 0, 0, 8883, 0, 0, 0, 0, 0, '', 0, 0, NULL);

DELETE FROM `pool_creature` WHERE `pool_entry` IN (601051);
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
(@CGUID+11, 601051, 0, 'Bannok Grimaxe'),
(@CGUID+12, 601051, 0, 'Bannok Grimaxe'),
(@CGUID+13, 601051, 0, 'Bannok Grimaxe');

DELETE FROM `pool_template` WHERE `entry` IN (601051);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES 
(601051, 1, 'Bannok Grimaxe - LBRS');


-- Bijou's Belongings & Important Blackrock Documents
DELETE FROM `gameobject` WHERE `id` IN (175334, 175785);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, 
`rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES 
--
(@OGUID+1,  175334, 229, 0, 0, 1, 1, 33.7166, -466.067, -18.4651, 4.7473, 0, 0, 0, 0, 120, 0, 1, '', 0, NULL),   -- Bijou's Belongings
(@OGUID+2,  175334, 229, 0, 0, 1, 1, -78.5492, -402.515, -18.935, 5.53805, 0, 0, 0, 0, 120, 0, 1, '', 0, NULL),
(@OGUID+3,  175334, 229, 0, 0, 1, 1, -32.4305, -403.26, -18.935, -2.26892, 0, 0, 0, 0, 120, 0, 1, '', 0, NULL),
(@OGUID+4,  175334, 229, 0, 0, 1, 1, -121.016, -419.94, -18.935, 5.42797, 0, 0, 0, 0, 120, 0, 1, '', 0, NULL),
(@OGUID+5,  175334, 229, 0, 0, 1, 1, -77.3365, -403.739, -18.935, 5.25344, 0, 0, 0, 0, 120, 0, 1, '', 0, NULL),
(@OGUID+6,  175334, 229, 0, 0, 1, 1, -71.1755, -460.103, -18.935, 2.11185, 0, 0, 0, 0, 120, 0, 1, '', 0, NULL),
(@OGUID+7,  175334, 229, 0, 0, 1, 1, -28.901, -433.178, -18.935, 1.95477, 0, 0, 0, 0, 120, 0, 1, '', 0, NULL),
(@OGUID+8,  175334, 229, 0, 0, 1, 1, -8.94373, -462.763, -18.6443, 3.12412, 0, 0, 0, 0, 120, 0, 1, '', 0, NULL),
(@OGUID+9,  175334, 229, 0, 0, 1, 1, 35.3153, -518.408, -18.6015, 3.45576, 0, 0, 0, 0, 120, 0, 1, '', 0, NULL),
(@OGUID+10, 175334, 229, 0, 0, 1, 1, 36.3325, -445.572, -18.7313, 2.65289, 0, 0, 0, 0, 120, 0, 1, '', 0, NULL),
(@OGUID+11, 175334, 229, 0, 0, 1, 1, -73.1233, -458.259, -18.9349, 3.36977, 0, 0, 0, 0, 120, 0, 1, '', 0, NULL),
--
(@OGUID+21, 175785, 229, 0, 0, 1, 1, -10.5242, -391.338, 48.8214, 0, 0, 0, 0, 0, 300, 0, 1, '', 0, NULL),  -- Important Blackrock Documents
(@OGUID+22, 175785, 229, 0, 0, 1, 1, -12.2736, -446.629, -18.6443, 0, 0, 0, 0, 0, 300, 0, 1, '', 0, NULL),
(@OGUID+23, 175785, 229, 0, 0, 1, 1, -18.376, -299.271, 31.6183, 0, 0, 0, 0, 0, 300, 0, 1, '', 0, NULL),
(@OGUID+24, 175785, 229, 0, 0, 1, 1, -16.1217, -492.558, 90.6585, 0, 0, 0, 0, 0, 300, 0, 1, '', 0, NULL);

DELETE FROM `pool_gameobject` WHERE `pool_entry` IN (601001, 601002);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
(@OGUID+1,  601001, 0, 'Bijou\'s Belongings'),
(@OGUID+2,  601001, 0, 'Bijou\'s Belongings'),
(@OGUID+3,  601001, 0, 'Bijou\'s Belongings'),
(@OGUID+4,  601001, 0, 'Bijou\'s Belongings'),
(@OGUID+5,  601001, 0, 'Bijou\'s Belongings'),
(@OGUID+6,  601001, 0, 'Bijou\'s Belongings'),
(@OGUID+7,  601001, 0, 'Bijou\'s Belongings'),
(@OGUID+8,  601001, 0, 'Bijou\'s Belongings'),
(@OGUID+9,  601001, 0, 'Bijou\'s Belongings'),
(@OGUID+10, 601001, 0, 'Bijou\'s Belongings'),
(@OGUID+11, 601001, 0, 'Bijou\'s Belongings'),
--
(@OGUID+21, 601002, 0, 'Important Blackrock Documents'),
(@OGUID+22, 601002, 0, 'Important Blackrock Documents'),
(@OGUID+23, 601002, 0, 'Important Blackrock Documents'),
(@OGUID+24, 601002, 0, 'Important Blackrock Documents');

DELETE FROM `pool_template` WHERE `entry` IN (601001, 601002);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES 
(601001, 1, 'Bijou\'s Belongings - LBRS'),
(601002, 1, 'Important Blackrock Documents - LBRS');


-- fix missing patrols
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+1 AND @CGUID+9;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, 
`spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
--
(@CGUID+1, 9583, 0, 0, 229, 0, 0, 1, 1, 1, -138.983, -369.133, 58.079,  NULL, 10800, 0, 1, 8883, 0, 2, 0, 0, 0, '', 0, 0, NULL), -- Bloodaxe Veteran
(@CGUID+2, 9583, 0, 0, 229, 0, 0, 1, 1, 1, -155.045, -343.796, 64.4458, NULL, 10800, 0, 1, 8883, 0, 2, 0, 0, 0, '', 0, 0, NULL), -- Bloodaxe Veteran
(@CGUID+3, 9583, 0, 0, 229, 0, 0, 1, 1, 1, -53.6383, -442.827, 78.2854, NULL, 10800, 0, 1, 8883, 0, 2, 0, 0, 0, '', 0, 0, NULL), -- Bloodaxe Veteran
--
(@CGUID+4, 9692, 0, 0, 229, 0, 0, 1, 1, 1, -127.276, -368.965, 57.4075, NULL, 10800, 0, 1, 8352, 0, 2, 0, 0, 0, '', 0, 0, NULL), -- Bloodaxe Raider
(@CGUID+5, 9696, 0, 0, 229, 0, 0, 1, 1, 0, -127.319, -366.515, 57.4149, NULL, 10800, 0, 0, 2699, 0, 0, 0, 0, 0, '', 0, 0, NULL), -- Bloodaxe Worg
(@CGUID+6, 9696, 0, 0, 229, 0, 0, 1, 1, 0, -127.275, -371.063, 57.4151, NULL, 10800, 0, 0, 2699, 0, 0, 0, 0, 0, '', 0, 0, NULL), -- Bloodaxe Worg
(@CGUID+7, 9692, 0, 0, 229, 0, 0, 1, 1, 1, -147.824, -343.794, 67.7461, NULL, 10800, 0, 1, 8352, 0, 2, 0, 0, 0, '', 0, 0, NULL), -- Bloodaxe Raider
(@CGUID+8, 9696, 0, 0, 229, 0, 0, 1, 1, 0, -146.107, -341.598, 67.7461, NULL, 10800, 0, 0, 2699, 0, 0, 0, 0, 0, '', 0, 0, NULL), -- Bloodaxe Worg
(@CGUID+9, 9696, 0, 0, 229, 0, 0, 1, 1, 0, -146.194, -345.962, 67.7461, NULL, 10800, 0, 0, 2699, 0, 0, 0, 0, 0, '', 0, 0, NULL); -- Bloodaxe Worg


DELETE FROM `creature_formations` WHERE `leaderGUID` IN (@CGUID+4, @CGUID+7);
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES
(@CGUID+4, @CGUID+4, 0, 0, 515, 0, 0),
(@CGUID+4, @CGUID+5, 3, 135, 515, 0, 0),
(@CGUID+4, @CGUID+6, 3, 225, 515, 0, 0),
--
(@CGUID+7, @CGUID+7, 0, 0, 515, 0, 0),
(@CGUID+7, @CGUID+8, 3, 135, 515, 0, 0),
(@CGUID+7, @CGUID+9, 3, 225, 515, 0, 0);

DELETE FROM `creature_addon` WHERE `guid` BETWEEN @CGUID+1 AND @CGUID+9;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(@CGUID+1, @WPID+10, 0, 0, 1, 0, 0, NULL),
(@CGUID+2, @WPID+20, 0, 0, 1, 0, 0, NULL),
(@CGUID+3, @WPID+30, 0, 0, 1, 0, 0, NULL),
(@CGUID+4, @WPID+40, 0, 0, 1, 0, 0, NULL),
(@CGUID+7, @WPID+70, 0, 0, 1, 0, 0, NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (@WPID+10, @WPID+20, @WPID+30, @WPID+40, @WPID+70);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
--
(@WPID+10, 1, -138.983, -369.133, 58.079, 3.13493, 0, 0, 0, 100, 0),    -- Bloodaxe Veteran 1
(@WPID+10, 2, -146.064, -369.086, 61.2936, 3.13493, 0, 0, 0, 100, 0),
(@WPID+10, 3, -149.074, -369.066, 61.4779, 3.13493, 0, 0, 0, 100, 0),
(@WPID+10, 4, -155.094, -369.025, 64.4457, 3.13493, 0, 0, 0, 100, 0),
(@WPID+10, 5, -165.454, -368.957, 64.4008, 3.13493, 0, 0, 0, 100, 0),
(@WPID+10, 6, -165.386, -383.734, 64.4008, 4.76563, 0, 0, 0, 100, 0),
(@WPID+10, 7, -164.965, -406.343, 76.0815, 4.70281, 0, 0, 0, 100, 0),
(@WPID+10, 8, -165.245, -422.421, 76.219, 4.69495, 0, 0, 0, 100, 0),
(@WPID+10, 9, -165.634, -444.73, 87.3903, 4.69495, 0, 0, 0, 100, 0),
(@WPID+10, 10, -169.699, -456.036, 87.3903, 4.31403, 0, 0, 0, 100, 0),
(@WPID+10, 11, -165.669, -444.443, 87.3715, 1.43241, 0, 0, 0, 100, 0),
(@WPID+10, 12, -165.108, -422.091, 76.1472, 1.55729, 0, 0, 0, 100, 0),
(@WPID+10, 13, -164.871, -406.03, 75.9186, 1.68688, 0, 0, 0, 100, 0),
(@WPID+10, 14, -165.201, -383.502, 64.4008, 1.57299, 0, 0, 0, 100, 0),
(@WPID+10, 15, -165.416, -368.879, 64.4008, 1.57692, 0, 0, 0, 100, 0),
(@WPID+10, 16, -154.997, -368.647, 64.4457, 0.026232, 0, 0, 0, 100, 0),
(@WPID+10, 17, -149.005, -368.587, 61.4419, 0.39144, 0, 0, 0, 100, 0),
(@WPID+10, 18, -146.121, -368.644, 61.2936, 5.73214, 0, 0, 0, 100, 0),
--
(@WPID+20, 1, -155.045, -343.796, 64.4458, 3.10946, 0, 0, 0, 100, 0),   -- Bloodaxe Veteran 2
(@WPID+20, 2, -165.449, -343.462, 64.4008, 4.68418, 0, 0, 0, 100, 0),
(@WPID+20, 3, -165.504, -368.608, 64.4008, 4.69282, 0, 0, 0, 100, 0),
(@WPID+20, 4, -165.318, -383.51, 64.4009, 4.70148, 0, 0, 0, 100, 0),
(@WPID+20, 5, -164.988, -406.131, 75.9712, 4.64521, 0, 0, 0, 100, 0),
(@WPID+20, 6, -165.197, -421.986, 76.1472, 4.70412, 0, 0, 0, 100, 0),
(@WPID+20, 7, -165.558, -444.263, 87.28, 4.70412, 0, 0, 0, 100, 0),
(@WPID+20, 8, -169.715, -455.654, 87.3903, 4.36247, 0, 0, 0, 100, 0),
(@WPID+20, 9, -165.547, -444.16, 87.2283, 1.34654, 0, 0, 0, 100, 0),
(@WPID+20, 10, -165.192, -422.352, 76.1843, 1.5586, 0, 0, 0, 100, 0),
(@WPID+20, 11, -164.896, -406.065, 75.9368, 1.45728, 0, 0, 0, 100, 0),
(@WPID+20, 12, -165.313, -383.191, 64.4008, 1.59394, 0, 0, 0, 100, 0),
(@WPID+20, 13, -165.519, -368.518, 64.4008, 1.59394, 0, 0, 0, 100, 0),
(@WPID+20, 14, -165.425, -343.417, 64.4008, 1.46435, 0, 0, 0, 100, 0),
--
(@WPID+30, 1, -53.7135, -469.51, 77.8413, 100, 0, 0, 0, 100, 0),        -- Bloodaxe Veteran 3
(@WPID+30, 2, -57.2509, -477.311, 77.9158, 100, 0, 0, 0, 100, 0),
(@WPID+30, 3, -61.6685, -480.695, 77.9158, 100, 0, 0, 0, 100, 0),
(@WPID+30, 4, -68.0847, -485.191, 77.9158, 100, 0, 0, 0, 100, 0),
(@WPID+30, 5, -76.1309, -488.445, 77.9158, 100, 0, 0, 0, 100, 0),
(@WPID+30, 6, -78.755, -497.51, 77.9866, 100, 0, 0, 0, 100, 0),
(@WPID+30, 7, -77.5, -506.46, 79.4722, 100, 0, 0, 0, 100, 0),
(@WPID+30, 8, -73.2358, -515.496, 81.09, 100, 0, 0, 0, 100, 0),
(@WPID+30, 9, -65.7134, -519.569, 82.9049, 100, 0, 0, 0, 100, 0),
(@WPID+30, 10, -57.8619, -517.623, 86.636, 100, 0, 0, 0, 100, 0),
(@WPID+30, 11, -50.2694, -512.905, 88.2413, 100, 0, 0, 0, 100, 0),
(@WPID+30, 12, -47.6077, -508.537, 88.6223, 100, 0, 0, 0, 100, 0),
(@WPID+30, 13, -43.8517, -499.036, 90.1431, 100, 0, 0, 0, 100, 0),
(@WPID+30, 14, -33.9322, -488.698, 90.6663, 100, 0, 0, 0, 100, 0),
(@WPID+30, 15, -43.8517, -499.036, 90.1431, 100, 0, 0, 0, 100, 0),
(@WPID+30, 16, -47.6077, -508.537, 88.6223, 100, 0, 0, 0, 100, 0),
(@WPID+30, 17, -50.2694, -512.905, 88.2413, 100, 0, 0, 0, 100, 0),
(@WPID+30, 18, -57.8619, -517.623, 86.636, 100, 0, 0, 0, 100, 0),
(@WPID+30, 19, -65.7134, -519.569, 82.9049, 100, 0, 0, 0, 100, 0),
(@WPID+30, 20, -73.2358, -515.496, 81.09, 100, 0, 0, 0, 100, 0),
(@WPID+30, 21, -77.5, -506.46, 79.4722, 100, 0, 0, 0, 100, 0),
(@WPID+30, 22, -78.755, -497.51, 77.9866, 100, 0, 0, 0, 100, 0),
(@WPID+30, 23, -76.1309, -488.445, 77.9158, 100, 0, 0, 0, 100, 0),
(@WPID+30, 24, -68.0847, -485.191, 77.9158, 100, 0, 0, 0, 100, 0),
(@WPID+30, 25, -61.6685, -480.695, 77.9158, 100, 0, 0, 0, 100, 0),
(@WPID+30, 26, -57.2509, -477.311, 77.9158, 100, 0, 0, 0, 100, 0),
(@WPID+30, 27, -53.7135, -469.51, 77.8413, 100, 0, 0, 0, 100, 0),
(@WPID+30, 28, -53.3688, -431.997, 78.2854, 100, 0, 0, 0, 100, 0),
--
(@WPID+40, 1, -167.25, -369.183, 64.4008, 3.14078, 6000, 0, 0, 100, 0),   -- Bloodaxe Raider 1
(@WPID+40, 2, -130.649, -368.794, 57.4333, 0.081649, 6000, 0, 0, 100, 0),
(@WPID+70, 1, -162.309, -343.957, 64.4016, 3.13687, 6000, 0, 0, 100, 0),  -- Bloodaxe Raider 2
(@WPID+70, 2, -132.763, -343.776, 70.9524, 0.007049, 6000, 0, 0, 100, 0);


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
