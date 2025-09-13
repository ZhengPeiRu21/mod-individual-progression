/* smart scripts */
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (14340, 14343);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(7092, 7093, 7097, 7098, 7099, 7100, 7101, 7104, 7105, 7106, 7107, 7108, 7109, 7110, 7111, 7112, 7113, 7114, 7115, 7118, 7120, 7125, 7132, 7136, 7139, 7153, 7154, 7155, 7156, 7157, 7158,
8957, 8958, 8959, 8960, 8961, 9454, 9462, 9464, 9516, 9517, 9518, 9860, 9861, 9862, 9877, 9878, 10648, 14342, 14344, 14345);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(7092, 7093, 7097, 7098, 7099, 7100, 7101, 7104, 7105, 7106, 7107, 7108, 7109, 7110, 7111, 7112, 7113, 7114, 7115, 7118, 7120, 7125, 7132, 7136, 7139, 7153, 7154, 7155, 7156, 7157, 7158,
8957, 8958, 8959, 8960, 8961, 9454, 9462, 9464, 9516, 9517, 9518, 9860, 9861, 9862, 9877, 9878, 10648, 14340, 14342, 14343, 14344, 14345);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(7092, 0, 0, 0, 106, 0, 100, 0, 0, 0, 180000, 180000, 0, 5, 11, 3335, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Tainted Ooze - Within 0-5 Range - Cast Dark Sludge'),
(7093, 0, 0, 0, 0, 0, 100, 0, 0, 0, 4000, 6000, 0, 0, 11, 21067, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Vile Ooze - In Combat - Cast Poison Bolt'),
(7093, 0, 1, 0, 9, 0, 100, 0, 0, 0, 11000, 14000, 0, 5, 11, 22595, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Vile Ooze - Within 0-5 Range - Cast Poison Shock'),
(7097, 0, 0, 0, 9, 0, 100, 0, 0, 0, 8000, 11000, 0, 5, 11, 5708, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Ironbeak Owl - Within 0-5 Range - Cast Swoop'),
(7098, 0, 0, 0, 9, 0, 100, 0, 0, 0, 13000, 16000, 0, 5, 11, 3589, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Ironbeak Screecher - Within 0-5 Range - Cast Deafening Screech'),
(7099, 0, 0, 0, 9, 0, 100, 0, 0, 0, 21000, 24000, 0, 5, 11, 13443, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Ironbeak Hunter - Within 0-5 Range - Cast Rend'),
(7100, 0, 0, 0, 9, 0, 100, 0, 0, 0, 21000, 25000, 0, 30, 11, 11922, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Warpwood Moss Flayer - In Combat - Cast Entangling Roots'),
(7101, 0, 0, 0, 0, 0, 100, 0, 8000, 12000, 15000, 20000, 0, 0, 11, 3391, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Warpwood Shredder - In Combat - Cast Thrash'),
(7101, 0, 1, 0, 9, 0, 100, 0, 0, 0, 5000, 9000, 0, 5, 11, 13444, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Warpwood Shredder - Within 0-5 Range - Cast Sunder Armor'),
(7104, 0, 0, 0, 9, 0, 100, 0, 0, 0, 6000, 10000, 0, 30, 11, 12058, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Dessecus - In Combat - Cast Chain Lightning'),
(7104, 0, 1, 0, 0, 0, 100, 0, 6000, 11000, 16000, 21000, 0, 0, 11, 8293, 64, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 0,  'Dessecus - In Combat - Cast Lightning Cloud'),
--
(7105, 0, 0, 0, 0, 0, 100, 0, 6000, 9000, 16000, 19000, 0, 0, 11, 13578, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Jadefire Satyr - In Combat - Cast Jadefire'),
(7106, 0, 0, 0, 0, 0, 100, 0, 6000, 9000, 16000, 19000, 0, 0, 11, 13578, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Jadefire Rogue - In Combat - Cast Jadefire'),
(7106, 0, 1, 0, 0, 0, 100, 0, 4000, 7000, 9000, 12000, 0, 0, 11, 13579, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Jadefire Rogue - Within 0-5 Range - Cast Gouge'),
(7106, 0, 2, 0, 67, 0, 100, 0, 0, 0, 6000, 11000, 0, 5, 11, 7159, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Jadefire Rogue - Behind Target - Cast Backstab'),
(7107, 0, 0, 0, 0, 0, 100, 0, 6000, 9000, 16000, 19000, 0, 0, 11, 13578, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Jadefire Trickster - In Combat - Cast Jadefire'),
(7107, 0, 1, 0, 0, 0, 100, 0, 5000, 9000, 21000, 25000, 0, 0, 11, 13338, 256, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Jadefire Trickster - In Combat - Cast Curse of Tongues'),
(7107, 0, 2, 0, 9, 0, 100, 0, 0, 0, 120000, 125000, 0, 30, 11, 11980, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Jadefire Trickster - In Combat - Cast Curse of Weakness'),
(7108, 0, 0, 0, 0, 0, 100, 0, 6000, 9000, 16000, 19000, 0, 0, 11, 13578, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Jadefire Betrayer - In Combat - Cast Jadefire'),
(7108, 0, 1, 0, 0, 0, 100, 0, 5000, 8000, 18000, 22000, 0, 0, 11, 13443, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Jadefire Betrayer - Within 0-5 Range - Cast Rend'),
(7108, 0, 2, 0, 9, 0, 100, 0, 0, 0, 7000, 11000, 0, 5, 11, 15496, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Jadefire Betrayer - Within 0-5 Range - Cast Cleave'),
(7109, 0, 0, 0, 0, 0, 100, 0, 6000, 9000, 16000, 19000, 0, 0, 11, 13578, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Jadefire Felsworn - In Combat - Cast Jadefire'),
(7109, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9613, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Jadefire Felsworn - In Combat - Cast Shadow Bolt'),
(7109, 0, 2, 0, 0, 0, 100, 0, 7000, 11000, 21000, 24000, 0, 0, 11, 11443, 64, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 0, 'Jadefire Felsworn - In Combat - Cast Cripple'),
(7110, 0, 0, 0, 0, 0, 100, 0, 6000, 9000, 16000, 19000, 0, 0, 11, 13578, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Jadefire Shadowstalker - In Combat - Cast Jadefire'),
(7111, 0, 0, 0, 0, 0, 100, 0, 6000, 9000, 16000, 19000, 0, 0, 11, 13578, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Jadefire Hellcaller - In Combat - Cast Jadefire'),
(7111, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20823, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Jadefire Hellcaller - In Combat - Cast Fireball'),
(7111, 0, 2, 0, 0, 0, 100, 0, 9000, 13000, 18000, 22000, 0, 0, 11, 11990, 65, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Jadefire Hellcaller - In Combat - Cast Rain of Fire'),
--
(7112, 0, 0, 0, 0, 0, 100, 0, 9000, 14000, 22000, 25000, 0, 0, 11, 11639, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Jaedenar Cultist - In Combat - Cast Shadow Word: Pain'),
(7112, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20825, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,            'Jaedenar Cultist - In Combat - Cast Shadow Bolt'),
(7112, 0, 2, 0, 0, 0, 100, 0, 7000, 9000, 15000, 25000, 0, 0, 11, 11980, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Jaedenar Cultist - In Combat - Cast Curse of Weakness'),
(7112, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Jaedenar Cultist - Between 0-15% Health - Flee For Assist (No Repeat)'),
(7113, 0, 0, 0, 0, 0, 100, 0, 5000, 9000, 13000, 17000, 0, 0, 11, 3248, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Jaedenar Guardian - In Combat - Cast Improved Blocking'),
(7113, 0, 1, 0, 105, 0, 100, 0, 0, 0, 9000, 12000, 0, 5, 11, 11972, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,          'Jaedenar Guardian - Within 0-5 Range - Cast Shield Bash'),
(7114, 0, 0, 0, 9, 0, 100, 0, 0, 0, 17000, 21000, 0, 5, 11, 11977, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Jaedenar Enforcer - Within 0-5 Range - Cast Rend'),
(7115, 0, 0, 0, 0, 0, 100, 0, 11000, 15000, 12000, 16000, 0, 0, 11, 20832, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, 0, 'Jaedenar Adept - Within 0-20 Range - Cast Fire Blast'),
(7115, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20823, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Jaedenar Adept - In Combat - Cast Fireball'),
(7115, 0, 2, 0, 9, 0, 100, 0, 0, 0, 16000, 21000, 0, 5, 11, 14514, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Jaedenar Adept - Within 0-5 Range - Cast Blink'),
(7115, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Jaedenar Adept - Between 0-15% Health - Flee For Assist (No Repeat)'),
(7118, 0, 0, 0, 0, 0, 100, 0, 9000, 13000, 21000, 26000, 0, 0, 11, 11962, 97, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Jaedenar Darkweaver - In Combat - Cast Immolate'),
(7118, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9613, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Jaedenar Darkweaver - In Combat - Cast Shadow Bolt'),
(7118, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Jaedenar Darkweaver - Between 0-15% Health - Flee For Assist (No Repeat)'),
(7120, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 11939, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Jaedenar Warlock - Out of Combat - Cast Summon Imp (No Repeat)'),
(7120, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9613, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Jaedenar Warlock - In Combat - Cast Shadow Bolt'),
(7120, 0, 2, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 8699, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Jaedenar Warlock - Between 0-30% Health - Cast Unholy Frenzy (No Repeat)'),
(7120, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Jaedenar Warlock - Between 0-15% Health - Flee For Assist (No Repeat)'),
(7125, 0, 0, 0, 9, 0, 100, 0, 0, 0, 9000, 15000, 0, 30, 11, 13321, 320, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Jaedenar Hound - Within 0-30 Range - Cast Mana Burn'),
--
(7132, 0, 0, 0, 9, 0, 100, 0, 0, 0, 8000, 16000, 0, 5, 11, 7947, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Toxic Horror - Within 0-5 Range - Cast Localized Toxin'),
(7132, 0, 1, 0, 0, 0, 100, 0, 6000, 9000, 12000, 18000, 0, 0, 11, 13582, 32, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 0,  'Toxic Horror - Within 0-10 Range - Cast Deadly Poison'),
(7136, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 2602, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Infernal Sentry - On Aggro - Cast Fire Shield IV'),
(7139, 0, 0, 0, 9, 0, 100, 0, 0, 0, 9000, 16000, 0, 5, 11, 45, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Irontree Stomper - Within 0-5 Range - Cast War Stomp'),
--
(7153, 0, 0, 0, 0, 0, 100, 0, 4000, 11000, 12000, 15000, 0, 0, 11, 13583, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Deadwood Warrior - In Combat - Cast Curse of the Deadwood'),
(7153, 0, 1, 0, 9, 0, 100, 0, 0, 0, 6000, 9000, 0, 5, 11, 13584, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Deadwood Warrior - Within 0-5 Range - Cast Strike'),
(7154, 0, 0, 0, 0, 0, 100, 0, 4000, 11000, 12000, 15000, 0, 0, 11, 13583, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Deadwood Gardener - In Combat - Cast Curse of the Deadwood'),
(7154, 0, 1, 0, 14, 0, 100, 0, 1000, 40, 14000, 17000, 0, 0, 11, 12160, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,      'Deadwood Gardener - Friendly Missing 1000 Health - Cast Rejuvenation'),
(7154, 0, 3, 0, 2, 0, 100, 0, 0, 50, 12000, 15000, 0, 0, 11, 11986, 64, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Deadwood Gardener - Between 0-50% Health - Cast Healing Wave'),
(7155, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Deadwood Pathfinder - Outside 30 Range - Start Combat Movement'),
(7155, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Deadwood Pathfinder - Within 5-30 Range - Stop Combat Movement'),
(7155, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Deadwood Pathfinder - Within 0-5 Range - Start Combat Movement'),
(7155, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Deadwood Pathfinder - In Combat - Cast Shoot'),
(7155, 0, 4, 0, 9, 0, 100, 0, 0, 0, 6000, 12000, 5, 30, 11, 6685, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Deadwood Pathfinder - Within 5-30 Range - Cast Piercing Shot'),
(7155, 0, 5, 0, 0, 0, 100, 0, 4000, 11000, 12000, 15000, 0, 0, 11, 13583, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Deadwood Pathfinder - In Combat - Cast Curse of the Deadwood'),
(7156, 0, 0, 0, 0, 0, 100, 0, 4000, 11000, 12000, 15000, 0, 0, 11, 13583, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Deadwood Den Watcher - In Combat - Cast Curse of the Deadwood'),
(7156, 0, 1, 0, 2, 0, 100, 1, 0, 50, 0, 0, 0, 0, 39, 20, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Deadwood Den Watcher - Between 0-50% Health - Call For Help (No Repeat)'),
(7156, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Deadwood Den Watcher - Between 0-15% Health - Flee For Assist (No Repeat)'),
(7156, 0, 3, 4, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 86, 8599, 2, 9, 7157, 0, 15, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Deadwood Den Watcher - On Death - Cross Cast Enrage'),
(7156, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 9, 7157, 0, 15, 1, 0, 0, 0, 0,                   'Deadwood Den Watcher - On Death - Deadwood Avenger Say Line 0'),
(7157, 0, 0, 0, 0, 0, 100, 0, 4000, 11000, 12000, 15000, 0, 0, 11, 13583, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Deadwood Avenger - In Combat - Cast Curse of the Deadwood'),
(7157, 0, 1, 2, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 86, 8599, 2, 9, 7157, 0, 15, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Deadwood Avenger - On Death - Cross Cast Enrage'),
(7157, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 9, 7157, 0, 15, 1, 0, 0, 0, 0,                   'Deadwood Avenger - On Death - Deadwood Avenger Say Line 0'),
(7158, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 90000, 90000, 0, 0, 11, 13585, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Deadwood Shaman - Out of Combat - Cast Lightning Shield'),
(7158, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Deadwood Shaman - In Combat- Cast Lightning Bolt'),
(7158, 0, 2, 0, 0, 0, 100, 0, 4000, 11000, 12000, 15000, 0, 0, 11, 13583, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Deadwood Shaman - In Combat - Cast Curse of the Deadwood'),
(7158, 0, 3, 0, 0, 0, 100, 0, 5000, 9000, 6000, 9000, 0, 0, 11, 12058, 65, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Deadwood Shaman - In Combat - Cast Chain Lightning'),
(7158, 0, 4, 5, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 86, 8599, 2, 9, 7157, 0, 15, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Deadwood Shaman - On Death - Cross Cast Enrage'),
(7158, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 9, 7157, 0, 15, 1, 0, 0, 0, 0,                   'Deadwood Shaman - On Death - Deadwood Avenger Say Line 0'),
--
(8957, 0, 0, 1, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Angerclaw Grizzly - Between 0-30% Health - Cast Enrage (No Repeat)'),
(8957, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Angerclaw Grizzly - On Enrage - Say Line 0'),
(8957, 0, 2, 0, 9, 0, 100, 0, 0, 0, 16000, 19000, 0, 5, 11, 8716, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Angerclaw Grizzly - Within 0-5 Range - Cast Low Swipe'),
(8958, 0, 0, 1, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Angerclaw Mauler - Between 0-30% Health - Cast Enrage (No Repeat)'),
(8958, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Angerclaw Mauler - On Enrage - Say Line 0'),
(8958, 0, 2, 0, 9, 0, 100, 0, 0, 0, 5000, 8000, 0, 5, 11, 15793, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Angerclaw Mauler - Within 0-5 Range - Cast Maul'),
(8959, 0, 0, 0, 9, 0, 100, 0, 0, 0, 8000, 14000, 0, 5, 11, 3427, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Felpaw Wolf - Within 0-5 Range - Cast Infected Wound'),
(8960, 0, 0, 0, 9, 0, 100, 0, 0, 0, 20000, 24000, 0, 5, 11, 3604, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Felpaw Scavenger - Within 0-5 Range - Cast Tendon Rip'),
(8960, 0, 1, 0, 9, 0, 100, 0, 0, 0, 8000, 14000, 0, 5, 11, 17230, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Felpaw Scavenger - Within 0-5 Range - Cast Infected Wound'),
(8961, 0, 0, 0, 0, 0, 100, 0, 8000, 12000, 15000, 20000, 0, 0, 11, 3391, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Felpaw Ravager - In Combat - Cast Thrash'),
(8961, 0, 1, 0, 9, 0, 100, 0, 0, 0, 8000, 14000, 0, 5, 11, 17230, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Felpaw Ravager - In Combat - Cast Infected Wound'),
--
(9454, 0, 0, 0, 9, 0, 100, 0, 0, 0, 21000, 26000, 0, 5, 11, 13443, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Xavathras - Within 0-5 Range - Cast Rend'),
(9454, 0, 1, 2, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Xavathras - Between 0-30% Health - Cast Enrage (No Repeat)'),
(9454, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Xavathras - On Enrage - Say Line 0'),
(9462, 0, 0, 0, 0, 0, 100, 0, 4000, 11000, 12000, 15000, 0, 0, 11, 13583, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Chieftain Bloodmaw - In Combat - Cast Curse of the Deadwood'),
(9462, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Chieftain Bloodmaw - Between 0-15% Health - Flee For Assist (No Repeat)'),
(9464, 0, 0, 0, 9, 0, 100, 0, 0, 0, 5000, 8000, 0, 5, 11, 15793, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Overlord Ror - In Combat - Cast Maul'),
(9464, 0, 1, 0, 0, 0, 100, 0, 12000, 18000, 17000, 21000, 0, 0, 11, 14100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Overlord Ror - In Combat - Cast Terrifying Roar'),
(9464, 0, 2, 0, 2, 0, 100, 1, 0, 50, 0, 0, 0, 0, 39, 20, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Overlord Ror - Between 0-50% Health - Call For Help (No Repeat)'), -- https://www.youtube.com/watch?v=mJFGtJ2fg9U
(9516, 0, 0, 0, 9, 0, 100, 0, 0, 0, 8000, 13000, 0, 15, 11, 17399, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Lord Banehollow - Within 0-15 Range - Cast Shadow Shock'),
(9516, 0, 1, 0, 9, 0, 100, 0, 0, 0, 12000, 21000, 0, 5, 11, 16247, 96, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Lord Banehollow - Within 0-5 Range - Cast Curse of Thorns (No Repeat)'),
(9517, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20825, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Shadow Lord Fel dan - In Combat - Cast Shadow Bolt'),
(9517, 0, 1, 0, 0, 0, 100, 0, 9000, 14000, 11000, 15000, 0, 0, 11, 9081, 64, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Shadow Lord Fel dan - In Combat - Cast Shadow Bolt Volley'),
(9517, 0, 2, 0, 0, 0, 100, 0, 12000, 16000, 10000, 13000, 0, 0, 11, 16583, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Shadow Lord Fel dan - In Combat - Cast Shadow Shock'),
(9518, 0, 0, 0, 0, 0, 100, 0, 5000, 8000, 14000, 19000, 0, 0, 11, 17227, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Rakaiah - In Combat - Cast Curse of Weakness'),
(9518, 0, 1, 0, 9, 0, 100, 0, 0, 0, 5000, 9000, 0, 5, 11, 15968, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Rakaiah - Within 0-5 Range - Cast Lash of Pain'),
(9860, 0, 0, 0, 0, 0, 100, 0, 0, 0, 18000, 24000, 0, 0, 11, 12888, 0, 0, 0, 0, 0, 6, 30, 0, 0, 0, 0, 0, 0, 0,          'Salia - In Combat - Cast Cause Insanity'),
(9861, 0, 0, 0, 0, 0, 100, 0, 6000, 12000, 21000, 26000, 0, 0, 11, 11639, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Moora - In Combat - Cast Shadow Word: Pain'),
(9862, 0, 0, 0, 9, 0, 100, 0, 0, 0, 12000, 17000, 0, 8, 11, 10966, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Jaedenar Legionnaire - Within 0-8 Range - Cast Uppercut'),
(9877, 0, 0, 0, 0, 0, 100, 0, 6000, 9000, 16000, 19000, 0, 0, 11, 13578, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Prince Xavalis - In Combat - Cast Jadefire'),
(9877, 0, 1, 0, 0, 0, 100, 0, 4000, 6000, 19000, 22000, 0, 0, 11, 11962, 96, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Prince Xavalis - In Combat - Cast Immolate'),
(9878, 0, 0, 0, 9, 0, 100, 0, 0, 0, 25000, 28000, 0, 30, 11, 15661, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Entropic Beast - Within 0-30 Range - Cast Immolate'),
(10648, 0, 0, 0, 0, 0, 100, 0, 6000, 9000, 16000, 19000, 0, 0, 11, 13578, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Xavaric - In Combat - Cast Jadefire'),
(10648, 0, 1, 0, 9, 0, 100, 0, 3000, 6000, 6500, 7200, 0, 5, 11, 15496, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Xavaric - Within 0-5 Range - Cast Cleave'), -- https://www.youtube.com/watch?v=vrKLtNwHMvE
(14342, 0, 0, 0, 0, 0, 100, 0, 4000, 11000, 12000, 15000, 0, 0, 11, 13583, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Ragepaw - On Aggro - Cast Curse of the Deadwood'),
(14344, 0, 0, 1, 2, 0, 100, 0, 0, 30, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Mongress - Between 0-30% Health - Cast Enrage'),
(14344, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Mongress - On Enrage - Say Line 0'),
(14345, 0, 0, 0, 9, 0, 100, 0, 0, 0, 180000, 180000, 0, 5, 11, 3335, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'The Ongar - Within 0-5 Range - Cast Dark Sludge');


DELETE FROM `creature_text` WHERE `CreatureID` IN (14344);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(14344, 0, 0, '$s becomes enraged!', 16, 0, 100, 0, 0, 0, 10677, 0, 'Mongress enrage at 30%');

-- Ragepaw, fix movement
UPDATE `creature` SET `MovementType` = 1, `wander_distance` = 5 WHERE `id1` = 14342;

-- Olm the Wise, Cenarion Circle
UPDATE `creature_template` SET `faction` = 1254 WHERE `entry` = 14343;
