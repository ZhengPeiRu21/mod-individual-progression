/* smart scripts */
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(15318, 15319, 15320, 15323, 15324, 15333, 15335, 15336, 15343, 15344, 15385, 15386, 15387, 15388, 15389, 15390, 15391, 15392, 15461, 15462);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(15318, 15319, 15320, 15323, 15324, 15333, 15335, 15336, 15343, 15344, 15385, 15386, 15387, 15388, 15389, 15390, 15391, 15392, 15461, 15462);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(15318, 0, 0, 0, 0, 0, 100, 0, 2000, 2000, 2000, 2000, 0, 0, 13, 0, 100, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Hive\'Zara Drone - In Combat - Reset aggro'),
(15319, 0, 0, 0, 9, 0, 100, 0, 0, 0, 10000, 16000, 0, 30, 11, 12252, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Hive\'Zara Collector - Within 0-30 Range - Cast Web Spray'),
(15319, 0, 1, 0, 0, 0, 100, 0, 7000, 11000, 12000, 15000, 0, 0, 11, 3589, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,    'Hive\'Zara Collector - Within 0-5 Range - Cast Deafening Screech'),
(15320, 0, 0, 0, 9, 0, 100, 0, 0, 0, 10000, 18200, 0, 30, 11, 25497, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Hive\'Zara Soldier - Within 0-30 Range - Cast Venom Spit'),
(15320, 0, 1, 2, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 22857, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Hive\'Zara Soldier - Between 0-30% Health - Cast Retaliation (No Repeat)'),
(15320, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Hive\'Zara Soldier - Between 0-30% Health - Say Line 0 (No Repeat)'),
(15323, 0, 0, 1, 0, 0, 100, 0, 5000, 5000, 8000, 10000, 0, 0, 11, 26381, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Hive\'Zara Sandstalker - In Combat - Cast Burrow'),
(15323, 0, 1, 2, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 13, 0, 100, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                 'Hive\'Zara Sandstalker - In Combat - Set Single Threat 0-100'),
(15323, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Hive\'Zara Sandstalker - In Combat - Disable melee attack'),
(15323, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Hive\'Zara Sandstalker - In Combat - Set Phase 1'),
(15323, 0, 4, 5, 0, 1, 100, 0, 3000, 6000, 3000, 6000, 0, 0, 28, 26381, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Hive\'Zara Sandstalker - In Combat - Remove Borrow'),
(15323, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 41390, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                 'Hive\'Zara Sandstalker - In Combat - Cast Ambush'),
(15323, 0, 6, 7, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 20, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Hive\'Zara Sandstalker - In Combat - Enable melee attack'),
(15323, 0, 7, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Hive\'Zara Sandstalker - In Combat - Set Phase 0'),
(15324, 0, 0, 0, 11, 0, 100, 256, 0, 0, 0, 0, 0, 0, 211, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Qiraji Gladiator - On Respawn - Set not phase reset'),
(15324, 0, 1, 0, 0, 0, 100, 0, 3000, 6000, 4000, 8000, 0, 0, 11, 5568, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Qiraji Gladiator - In Combat - Cast Trample'),
(15324, 0, 2, 0, 0, 0, 100, 0, 4000, 12000, 8000, 24000, 0, 0, 11, 10966, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 0,  'Qiraji Gladiator - Within 0-10 Range - Cast Uppercut'),
(15324, 0, 3, 4, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 86, 25164, 2, 9, 15324, 0, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Qiraji Gladiator - On Death - Cross Cast Vengeance'),
(15324, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 9, 15324, 0, 20, 1, 0, 0, 0, 0,                 'Qiraji Gladiator - On Death - Qiraji Gladiator Say Line 0'),
(15333, 0, 0, 0, 6, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 17742, 2, 7, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Silicate Feeder - On Just Died - Cast Cloud of Disease'),
(15335, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Flesh Hunter - On Respawn - Cast Thrash'),
(15335, 0, 1, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Flesh Hunter - On Aggro - Set Event Phase 1'),
(15335, 0, 2, 0, 0, 0, 100, 0, 6000, 7000, 9000, 10000, 0, 0, 11, 25424, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Flesh Hunter - In Combat - Cast Poison Bolt'),
(15335, 0, 3, 0, 24, 2, 100, 0, 25371, 1, 5000, 5000, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Flesh Hunter - On Target Buffed With Consume - Set Event Phase 2 (Phase 2)'),
(15335, 0, 4, 0, 28, 0, 100, 0, 5000, 5000, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Flesh Hunter - On Passenger Removed - Set Event Phase 1'),
(15335, 0, 5, 0, 9, 1, 100, 0, 0, 0, 21000, 24000, 0, 10, 11, 25371, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Flesh Hunter - Within 0-10 Range - Cast Consume (Phase 1)'),
(15335, 0, 6, 0, 7, 0, 100, 0, 0, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Flesh Hunter - On Evade - Set Event Phase 1'),
(15336, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Hive\'Zara Tail Lasher - On Aggro - Set Event Phase 1'),
(15336, 0, 1, 0, 9, 1, 100, 0, 0, 0, 6000, 9000, 0, 5, 11, 25645, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Hive\'Zara Tail Lasher - Within 0-5 Range - Cast Poison (Phase 1)'),
(15336, 0, 2, 0, 24, 1, 100, 0, 25645, 5, 5000, 5000, 0, 0, 22, 2, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Hive\'Zara Tail Lasher - On Target Buffed With Poison - Set Event Phase 2 (Phase 1)'),
(15336, 0, 3, 0, 24, 2, 100, 0, 25645, 1, 5000, 5000, 0, 0, 22, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Hive\'Zara Tail Lasher - On Target Buffed With Poison - Set Event Phase 1 (Phase 2)'),
(15336, 0, 4, 0, 9, 0, 100, 0, 0, 0, 7000, 10000, 0, 30, 11, 25654, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Hive\'Zara Tail Lasher - Within 0-30 Range - Cast Tail Lash'),
(15336, 0, 5, 0, 7, 0, 100, 0, 0, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Hive\'Zara Tail Lasher - On Evade - Set Event Phase 0'),
(15343, 0, 0, 0, 9, 0, 100, 0, 0, 0, 5000, 7000, 0, 5, 11, 25174, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,           'Qiraji Swarmguard - Within 0-5 Range - Cast Sundering Cleave'),
(15344, 0, 0, 0, 0, 0, 100, 0, 4850, 18250, 4850, 18250, 0, 0, 11, 40504, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Swarmguard Needler - Within 0-5 Range - Cast Cleave'),
--
(15385, 0, 0, 0, 9, 0, 100, 0, 0, 0, 5000, 9000, 0, 0, 11, 24317, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Colonel Zerran - Within 0-5 Range - Cast Sunder Armor'),
(15385, 0, 1, 0, 0, 0, 100, 0, 4000, 5000, 10000, 10000, 0, 0, 11, 25462, 32, 0, 0, 0, 0, 26, 20, 0, 0, 0, 0, 0, 0, 0, 'Colonel Zerran - In Combat - Cast Enlarge'),
(15385, 0, 2, 0, 0, 0, 100, 512, 13000, 17000, 14000, 18000, 0, 0, 23, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Colonel Zerran - In Combat - Increment Phase'),
(15385, 0, 3, 0, 0, 1, 100, 0, 1000, 1000, 1000, 1000, 0, 0, 11, 40504, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Colonel Zerran - Within 0-5 Range - Cast Cleave (Phase 1)'),
(15385, 0, 4, 0, 9, 1, 100, 0, 0, 0, 2000, 2000, 0, 5, 11, 40504, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Colonel Zerran - Within 0-5 Range - Cast Cleave (Phase 1)'),
(15385, 0, 5, 0, 0, 1, 100, 512, 3000, 3000, 3000, 3000, 0, 0, 23, 0, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Colonel Zerran - In Combat - Decrement Phase (Phase 1)'),
(15385, 0, 6, 0, 4, 0, 100, 2, 0, 0, 0, 0, 0, 0, 34, 1, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Colonel Zerran - On Aggro - Set Instance Data 1 to 14 (Normal Dungeon)'),
--
(15386, 0, 0, 0, 9, 0, 100, 0, 0, 0, 5000, 9000, 0, 5, 11, 24317, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Major Yeggeth - Within 0-5 Range - Cast Sunder Armor'),
(15386, 0, 1, 0, 0, 0, 100, 0, 12000, 13000, 8000, 9000, 0, 0, 11, 25282, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Major Yeggeth - In Combat - Cast Shield of Rajaxx'),
(15386, 0, 2, 0, 0, 0, 100, 512, 13000, 17000, 14000, 18000, 0, 0, 23, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Major Yeggeth - In Combat - Increment Phase (Normal Dungeon)'),
(15386, 0, 3, 0, 0, 1, 100, 0, 1000, 1000, 1000, 1000, 0, 0, 11, 40504, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Major Yeggeth - Within 0-5 Range - Cast Cleave (Phase 1)'),
(15386, 0, 4, 0, 9, 1, 100, 0, 0, 0, 2000, 2000, 0, 5, 11, 40504, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Major Yeggeth - Within 0-5 Range - Cast Cleave (Phase 1)'),
(15386, 0, 5, 0, 0, 1, 100, 512, 3000, 3000, 3000, 3000, 0, 0, 23, 0, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Major Yeggeth - In Combat - Decrement Phase (Phase 1)'),
(15386, 0, 6, 0, 4, 0, 100, 2, 0, 0, 0, 0, 0, 0, 34, 1, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Major Yeggeth - On Aggro - Set Instance Data 1 to 12 (Normal Dungeon)'),
--
(15387, 0, 0, 1, 2, 0, 100, 1, 0, 25, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Qiraji Warrior - Between 0-25% Health - Cast Enrage (No Repeat)'),
(15387, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Qiraji Warrior - On Enrage - Say Line 0'),
(15387, 0, 2, 0, 9, 0, 100, 0, 0, 0, 7000, 11000, 0, 8, 11, 10966, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Qiraji Warrior - Within 0-8 Range - Cast Uppercut'),
(15387, 0, 3, 0, 9, 0, 100, 0, 0, 0, 14000, 17000, 0, 8, 11, 15588, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Qiraji Warrior - Within 0-8 Range - Cast Thunderclap'),
--
(15388, 0, 0, 0, 9, 0, 100, 0, 0, 0, 5000, 9000, 0, 5, 11, 24317, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Major Pakkon - Within 0-5 Range - Cast Sunder Armor'),
(15388, 0, 1, 0, 0, 0, 100, 0, 12000, 13000, 14000, 15000, 0, 0, 11, 25322, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Major Pakkon - In Combat - Cast Sweeping Slam'),
(15388, 0, 2, 0, 0, 0, 100, 512, 13000, 17000, 14000, 18000, 0, 0, 23, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Major Pakkon - In Combat - Increment Phase'),
(15388, 0, 3, 0, 0, 1, 100, 0, 1000, 1000, 1000, 1000, 0, 0, 11, 40504, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Major Pakkon - Within 0-5 Range - Cast Cleave (Phase 1)'),
(15388, 0, 4, 0, 9, 1, 100, 0, 0, 0, 2000, 2000, 0, 5, 11, 40504, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Major Pakkon - Within 0-5 Range - Cast Cleave (Phase 1)'),
(15388, 0, 5, 0, 0, 1, 100, 512, 3000, 3000, 3000, 3000, 0, 0, 23, 0, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Major Pakkon - In Combat - Decrement Phase (Phase 1)'),
(15388, 0, 6, 0, 4, 0, 100, 2, 0, 0, 0, 0, 0, 0, 34, 1, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Major Pakkon - On Aggro - Set Instance Data 1 to 13 (Normal Dungeon)'),
--
(15389, 0, 0, 0, 9, 0, 100, 0, 0, 0, 5000, 9000, 0, 5, 11, 24317, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Captain Drenn - Within 0-5 Range - Cast Sunder Armor'),
(15389, 0, 1, 0, 0, 0, 100, 0, 9000, 12000, 18000, 22000, 0, 0, 11, 26550, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Captain Drenn - In Combat - Cast Lightning Cloud'),
(15389, 0, 2, 0, 0, 0, 100, 512, 13000, 17000, 14000, 18000, 0, 0, 23, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Captain Drenn - In Combat - Increment Phase'),
(15389, 0, 3, 0, 0, 1, 100, 0, 1000, 1000, 1000, 1000, 0, 0, 11, 40504, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Captain Drenn - Within 0-5 Range - Cast Cleave (Phase 1)'),
(15389, 0, 4, 0, 9, 1, 100, 0, 0, 0, 2000, 2000, 0, 5, 11, 40504, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Captain Drenn - Within 0-5 Range - Cast Cleave (Phase 1)'),
(15389, 0, 5, 0, 0, 1, 100, 512, 3000, 3000, 3000, 3000, 0, 0, 23, 0, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Captain Drenn - In Combat - Decrement Phase (Phase 1)'),
(15389, 0, 6, 0, 4, 0, 100, 2, 0, 0, 0, 0, 0, 0, 34, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Captain Drenn - On Aggro - Set Instance Data 1 to 10 (Normal Dungeon)'),
--
(15390, 0, 0, 0, 9, 0, 100, 0, 0, 0, 5000, 9000, 0, 5, 11, 24317, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Captain Xurrem - Within 0-5 Range - Cast Sunder Armor'),
(15390, 0, 1, 0, 0, 0, 100, 0, 8000, 12000, 9000, 14000, 0, 0, 11, 25425, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Captain Xurrem - In Combat - Cast Shockwave'),
(15390, 0, 2, 0, 0, 0, 100, 512, 13000, 17000, 14000, 18000, 0, 0, 23, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Captain Xurrem - In Combat - Increment Phase'),
(15390, 0, 3, 0, 0, 1, 100, 0, 1000, 1000, 1000, 1000, 0, 0, 11, 40504, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Captain Xurrem - Within 0-5 Range - Cast Cleave (Phase 1)'),
(15390, 0, 4, 0, 9, 1, 100, 0, 0, 0, 2000, 2000, 0, 5, 11, 40504, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Captain Xurrem - Within 0-5 Range - Cast Cleave (Phase 1)'),
(15390, 0, 5, 0, 0, 1, 100, 512, 3000, 3000, 3000, 3000, 0, 0, 23, 0, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Captain Xurrem - In Combat - Decrement Phase (Phase 1)'),
(15390, 0, 6, 0, 4, 0, 100, 2, 0, 0, 0, 0, 0, 0, 34, 1, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Captain Xurrem - On Aggro - Set Instance Data 1 to 11 (Normal Dungeon)'),
--
(15391, 0, 0, 0, 9, 0, 100, 0, 0, 0, 5000, 9000, 0, 5, 11, 24317, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Captain Qeez - Within 0-5 Range - Cast Sunder Armor'),
(15391, 0, 1, 0, 0, 0, 100, 0, 9000, 13000, 12000, 16000, 0, 0, 11, 19134, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Captain Qeez - In Combat - Cast Frightening Shout'),
(15391, 0, 2, 0, 0, 0, 100, 512, 13000, 17000, 14000, 18000, 0, 0, 23, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Captain Qeez - In Combat - Increment Phase'),
(15391, 0, 3, 0, 0, 1, 100, 0, 1000, 1000, 1000, 1000, 0, 0, 11, 40504, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Captain Qeez - Within 0-5 Range - Cast Cleave (Phase 1)'),
(15391, 0, 4, 0, 9, 1, 100, 0, 0, 0, 2000, 2000, 0, 5, 11, 40504, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Captain Qeez - Within 0-5 Range - Cast Cleave (Phase 1)'),
(15391, 0, 5, 0, 0, 1, 100, 512, 3000, 3000, 3000, 3000, 0, 0, 23, 0, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Captain Qeez - In Combat - Decrement Phase (Phase 1)'),
(15391, 0, 6, 0, 4, 0, 100, 2, 0, 0, 0, 0, 0, 0, 34, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Captain Qeez - On Aggro - Set Instance Data 1 to 8 (Normal Dungeon)'),
--
(15392, 0, 0, 0, 9, 0, 100, 0, 0, 0, 5000, 9000, 0, 5, 11, 24317, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Captain Tuubid - Within 0-5 Range - Cast Sunder Armor'),
(15392, 0, 1, 0, 0, 0, 100, 0, 12000, 13000, 14000, 15000, 0, 0, 11, 25471, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Captain Tuubid - In Combat - Cast Attack Order'),
(15392, 0, 2, 0, 0, 0, 100, 512, 13000, 17000, 14000, 18000, 0, 0, 23, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Captain Tuubid - In Combat - Increment Phase'),
(15392, 0, 3, 0, 0, 1, 100, 0, 1000, 1000, 1000, 1000, 0, 0, 11, 40504, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Captain Tuubid - Within 0-5 Range - Cast Cleave (Phase 1)'),
(15392, 0, 4, 0, 9, 1, 100, 0, 0, 0, 2000, 2000, 0, 5, 11, 40504, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Captain Tuubid - Within 0-5 Range - Cast Cleave (Phase 1)'),
(15392, 0, 5, 0, 0, 1, 100, 512, 3000, 3000, 3000, 3000, 0, 0, 23, 0, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Captain Tuubid - In Combat - Decrement Phase (Phase 1)'),
(15392, 0, 6, 0, 4, 0, 100, 2, 0, 0, 0, 0, 0, 0, 34, 1, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Captain Tuubid - On Aggro - Set Instance Data 1 to 9 (Normal Dungeon)'),
--
(15461, 0, 0, 0, 0, 0, 100, 0, 4000, 6000, 7000, 10000, 0, 0, 11, 22886, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,    'Shrieker Scarab - In Combat - Cast Berserker Charge'),
(15461, 0, 1, 0, 0, 0, 100, 0, 2000, 5000, 7000, 9000, 0, 0, 11, 26379, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Shrieker Scarab - In Combat - Cast Piercing Shriek'),

(15462, 0, 0, 0, 0, 0, 100, 0, 4000, 6000, 7000, 10000, 0, 0, 11, 22886, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,    'Spitting Scarab - In Combat - Cast Berserker Charge'),
(15462, 0, 1, 0, 0, 0, 100, 0, 2000, 7000, 8000, 14000, 0, 0, 11, 24334, 64, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,   'Spitting Scarab - In Combat - Cast Acid Spit');


/* fix loot tables */
DELETE FROM `reference_loot_template` WHERE `Entry` IN (30411, 30420, 30421, 30422, 30423, 30424, 30425, 30426, 30427, 30428, 30429, 30430, 30431, 30432, 30433, 30434, 30435, 30436);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
(30411, 20727, 0, 0, 0, 1, 1, 1, 1, 'Formula: Enchant Gloves - Shadow Power'),
(30411, 20728, 0, 0, 0, 1, 1, 1, 1, 'Formula: Enchant Gloves - Frost Power'),
(30411, 20729, 0, 0, 0, 1, 1, 1, 1, 'Formula: Enchant Gloves - Fire Power'),
(30411, 20730, 0, 0, 0, 1, 1, 1, 1, 'Formula: Enchant Gloves - Healing Power'),
(30411, 20731, 0, 0, 0, 1, 1, 1, 1, 'Formula: Enchant Gloves - Superior Agility'),
(30411, 20734, 0, 0, 0, 1, 1, 1, 1, 'Formula: Enchant Cloak - Stealth'),
(30411, 20736, 0, 0, 0, 1, 1, 1, 1, 'Formula: Enchant Cloak - Dodge'),
--
(30420, 21214, 0, 0, 0, 1, 1, 1, 1, 'Tome of Frostbolt XI'),
(30420, 21279, 0, 0, 0, 1, 1, 1, 1, 'Tome of Fireball XII'),
(30420, 21280, 0, 0, 0, 1, 1, 1, 1, 'Tome of Arcane Missiles VIII'),
(30420, 21281, 0, 0, 0, 1, 1, 1, 1, 'Grimoire of Shadow Bolt X'),
(30420, 21282, 0, 0, 0, 1, 1, 1, 1, 'Grimoire of Immolate VIII'),
(30420, 21283, 0, 0, 0, 1, 1, 1, 1, 'Grimoire of Corruption VII'),
(30420, 21288, 0, 0, 0, 1, 1, 1, 1, 'Libram: Blessing of Wisdom VI'),
(30420, 21291, 0, 0, 0, 1, 1, 1, 1, 'Tablet of Healing Wave X'),
(30420, 21297, 0, 0, 0, 1, 1, 1, 1, 'Manual of Heroic Strike IX'),
--
(30421, 21284, 0, 0, 0, 1, 1, 1, 1, 'Codex of Greater Heal V'),
(30421, 21285, 0, 0, 0, 1, 1, 1, 1, 'Codex of Renew X'),
(30421, 21287, 0, 0, 0, 1, 1, 1, 1, 'Codex of Prayer of Healing V'),
(30421, 21289, 0, 0, 0, 1, 1, 1, 1, 'Libram: Blessing of Might VII'),
(30421, 21292, 0, 0, 0, 1, 1, 1, 1, 'Tablet of Strength of Earth Totem V'),
(30421, 21294, 0, 0, 0, 1, 1, 1, 1, 'Book of Healing Touch XI'),
(30421, 21295, 0, 0, 0, 1, 1, 1, 1, 'Book of Starfire VII'),
(30421, 21296, 0, 0, 0, 1, 1, 1, 1, 'Book of Rejuvenation XI'),
(30421, 21298, 0, 0, 0, 1, 1, 1, 1, 'Manual of Battle Shout VII'),
--
(30424, 21290, 0, 0, 0, 1, 1, 1, 1, 'Libram: Holy Light IX'),
(30424, 21293, 0, 0, 0, 1, 1, 1, 1, 'Tablet of Grace of Air Totem III'),
(30424, 21299, 0, 0, 0, 1, 1, 1, 1, 'Manual of Revenge VI'),
(30424, 21300, 0, 0, 0, 1, 1, 1, 1, 'Handbook of Backstab IX'),
-- (30424, 21302, 0, 0, 0, 1, 1, 1, 1, 'Handbook of Deadly Poison V'), -- gets added to reference loot in zz_optional_restore_rogue_poisons
(30424, 21303, 0, 0, 0, 1, 1, 1, 1, 'Handbook of Feint V'),
(30424, 21304, 0, 0, 0, 1, 1, 1, 1, 'Guide: Multi-Shot V'),
(30424, 21306, 0, 0, 0, 1, 1, 1, 1, 'Guide: Serpent Sting IX'),
(30424, 21307, 0, 0, 0, 1, 1, 1, 1, 'Guide: Aspect of the Hawk VII'),
--
(30422, 21457, 0, 0,  0, 1, 1, 1, 1, 'Ossirian the Unscarred - Bracers of Brutality'),
(30422, 21459, 0, 10, 0, 1, 1, 1, 1, 'Ossirian the Unscarred - Crossbow of Imminent Doom'),
(30422, 21460, 0, 0,  0, 1, 1, 1, 1, 'Ossirian the Unscarred - Helm of Domination'),
(30422, 21461, 0, 0,  0, 1, 1, 1, 1, 'Ossirian the Unscarred - Leggings of the Black Blizzard'),
(30422, 21462, 0, 0,  0, 1, 1, 1, 1, 'Ossirian the Unscarred - Gloves of Dark Wisdom'),
(30422, 21463, 0, 0,  0, 1, 1, 1, 1, 'Ossirian the Unscarred - Ossirian\'s Binding'),
(30422, 21464, 0, 0,  0, 1, 1, 1, 1, 'Ossirian the Unscarred - Shackles of the Unscarred'),
--
(30423, 21452, 0, 0,  0, 1, 1, 1, 1, 'Ossirian the Unscarred - Staff of the Ruins'),
(30423, 21453, 0, 0,  0, 1, 1, 1, 1, 'Ossirian the Unscarred - Mantle of the Horusath'),
(30423, 21454, 0, 0,  0, 1, 1, 1, 1, 'Ossirian the Unscarred - Runic Stone Shoulders'),
(30423, 21456, 0, 0,  0, 1, 1, 1, 1, 'Ossirian the Unscarred - Sandstorm Cloak'),
(30423, 21458, 0, 0,  0, 1, 1, 1, 1, 'Ossirian the Unscarred - Gauntlets of New Life'),
(30423, 21715, 0, 10, 0, 1, 1, 1, 1, 'Ossirian the Unscarred - Sand Polished Hammer'),
--
(30425, 20886, 0, 0, 0, 1, 1, 1, 1, 'Qiraji Spiked Hilt'),
(30425, 20890, 0, 0, 0, 1, 1, 1, 1, 'Qiraji Ornate Hilt'),
--
(30426, 21214, 0, 0, 0, 1, 1, 1, 1, 'Tome of Frostbolt XI'),
(30426, 21279, 0, 0, 0, 1, 1, 1, 1, 'Tome of Fireball XII'),
(30426, 21280, 0, 0, 0, 1, 1, 1, 1, 'Tome of Arcane Missiles VIII'),
(30426, 21281, 0, 0, 0, 1, 1, 1, 1, 'Grimoire of Shadow Bolt X'),
(30426, 21282, 0, 0, 0, 1, 1, 1, 1, 'Grimoire of Immolate VIII'),
(30426, 21283, 0, 0, 0, 1, 1, 1, 1, 'Grimoire of Corruption VII'),
(30426, 21284, 0, 0, 0, 1, 1, 1, 1, 'Codex of Greater Heal V'),
(30426, 21285, 0, 0, 0, 1, 1, 1, 1, 'Codex of Renew X'),
(30426, 21287, 0, 0, 0, 1, 1, 1, 1, 'Codex of Prayer of Healing V'),
(30426, 21288, 0, 0, 0, 1, 1, 1, 1, 'Libram: Blessing of Wisdom VI'),
(30426, 21289, 0, 0, 0, 1, 1, 1, 1, 'Libram: Blessing of Might VII'),
(30426, 21290, 0, 0, 0, 1, 1, 1, 1, 'Libram: Holy Light IX'),
(30426, 21291, 0, 0, 0, 1, 1, 1, 1, 'Tablet of Healing Wave X'),
(30426, 21292, 0, 0, 0, 1, 1, 1, 1, 'Tablet of Strength of Earth Totem V'),
(30426, 21293, 0, 0, 0, 1, 1, 1, 1, 'Tablet of Grace of Air Totem III'),
(30426, 21294, 0, 0, 0, 1, 1, 1, 1, 'Book of Healing Touch XI'),
(30426, 21295, 0, 0, 0, 1, 1, 1, 1, 'Book of Starfire VII'),
(30426, 21296, 0, 0, 0, 1, 1, 1, 1, 'Book of Rejuvenation XI'),
(30426, 21297, 0, 0, 0, 1, 1, 1, 1, 'Manual of Heroic Strike IX'),
(30426, 21298, 0, 0, 0, 1, 1, 1, 1, 'Manual of Battle Shout VII'),
(30426, 21299, 0, 0, 0, 1, 1, 1, 1, 'Manual of Revenge VI'),
(30426, 21300, 0, 0, 0, 1, 1, 1, 1, 'Handbook of Backstab IX'),
(30426, 21302, 0, 0, 0, 1, 1, 1, 1, 'Handbook of Deadly Poison V'),
(30426, 21303, 0, 0, 0, 1, 1, 1, 1, 'Handbook of Feint V'),
(30426, 21304, 0, 0, 0, 1, 1, 1, 1, 'Guide: Multi-Shot V'),
(30426, 21306, 0, 0, 0, 1, 1, 1, 1, 'Guide: Serpent Sting IX'),
(30426, 21307, 0, 0, 0, 1, 1, 1, 1, 'Guide: Aspect of the Hawk VII'),
--
(30427, 21214, 0, 0, 0, 1, 2, 1, 1, 'Tome of Frostbolt XI'),
(30427, 21279, 0, 0, 0, 1, 2, 1, 1, 'Tome of Fireball XII'),
(30427, 21280, 0, 0, 0, 1, 2, 1, 1, 'Tome of Arcane Missiles VIII'),
(30427, 21281, 0, 0, 0, 1, 2, 1, 1, 'Grimoire of Shadow Bolt X'),
(30427, 21282, 0, 0, 0, 1, 2, 1, 1, 'Grimoire of Immolate VIII'),
(30427, 21283, 0, 0, 0, 1, 2, 1, 1, 'Grimoire of Corruption VII'),
(30427, 21284, 0, 0, 0, 1, 2, 1, 1, 'Codex of Greater Heal V'),
(30427, 21285, 0, 0, 0, 1, 2, 1, 1, 'Codex of Renew X'),
(30427, 21287, 0, 0, 0, 1, 2, 1, 1, 'Codex of Prayer of Healing V'),
(30427, 21288, 0, 0, 0, 1, 2, 1, 1, 'Libram: Blessing of Wisdom VI'),
(30427, 21289, 0, 0, 0, 1, 2, 1, 1, 'Libram: Blessing of Might VII'),
(30427, 21290, 0, 0, 0, 1, 2, 1, 1, 'Libram: Holy Light IX'),
(30427, 21291, 0, 0, 0, 1, 2, 1, 1, 'Tablet of Healing Wave X'),
(30427, 21292, 0, 0, 0, 1, 2, 1, 1, 'Tablet of Strength of Earth Totem V'),
(30427, 21293, 0, 0, 0, 1, 2, 1, 1, 'Tablet of Grace of Air Totem III'),
(30427, 21294, 0, 0, 0, 1, 2, 1, 1, 'Book of Healing Touch XI'),
(30427, 21295, 0, 0, 0, 1, 2, 1, 1, 'Book of Starfire VII'),
(30427, 21296, 0, 0, 0, 1, 2, 1, 1, 'Book of Rejuvenation XI'),
(30427, 21297, 0, 0, 0, 1, 2, 1, 1, 'Manual of Heroic Strike IX'),
(30427, 21298, 0, 0, 0, 1, 2, 1, 1, 'Manual of Battle Shout VII'),
(30427, 21299, 0, 0, 0, 1, 2, 1, 1, 'Manual of Revenge VI'),
(30427, 21300, 0, 0, 0, 1, 2, 1, 1, 'Handbook of Backstab IX'),
(30427, 21302, 0, 0, 0, 1, 2, 1, 1, 'Handbook of Deadly Poison V'),
(30427, 21303, 0, 0, 0, 1, 2, 1, 1, 'Handbook of Feint V'),
(30427, 21304, 0, 0, 0, 1, 2, 1, 1, 'Guide: Multi-Shot V'),
(30427, 21306, 0, 0, 0, 1, 2, 1, 1, 'Guide: Serpent Sting IX'),
(30427, 21307, 0, 0, 0, 1, 2, 1, 1, 'Guide: Aspect of the Hawk VII'),
--
(30428, 20884, 0, 0, 0, 1, 1, 1, 1, 'Qiraji Magisterial Ring'),
(30428, 20886, 0, 0, 0, 1, 1, 1, 1, 'Qiraji Spiked Hilt'),
(30428, 20888, 0, 0, 0, 1, 1, 1, 1, 'Qiraji Ceremonial Ring'),
(30428, 20890, 0, 0, 0, 1, 1, 1, 1, 'Qiraji Ornate Hilt'),
--
(30429, 21455, 0, 0, 0, 1, 1, 1, 1, 'Moam - Southwind Helm'),
(30429, 21468, 0, 0, 0, 1, 1, 1, 1, 'Moam - Mantle of Maz\'Nadir'),
(30429, 21469, 0, 0, 0, 1, 1, 1, 1, 'Moam - Gauntlets of Southwind'),
(30429, 21470, 0, 0, 0, 1, 1, 1, 1, 'Moam - Cloak of the Savior'),
(30429, 21473, 0, 0, 0, 1, 1, 1, 1, 'Moam - Eye of Moam'),
(30429, 21474, 0, 0, 0, 1, 1, 1, 1, 'Moam - Chitinous Shoulderguards'),
(30429, 21475, 0, 0, 0, 1, 1, 1, 1, 'Moam - Legplates of the Destroyer'),
(30429, 21476, 0, 0, 0, 1, 1, 1, 1, 'Moam - Obsidian Scaled Leggings'),
(30429, 21477, 0, 0, 0, 1, 1, 1, 1, 'Moam - Ring of Fury'),
--
(30430, 21467, 0, 0, 0, 1, 1, 1, 1, 'Moam - Thick Silithid Chestguard'),
(30430, 21471, 0, 0, 0, 1, 1, 1, 1, 'Moam - Talon of Furious Concentration'),
(30430, 21472, 0, 0, 0, 1, 1, 1, 1, 'Moam - Dustwind Turban'),
(30430, 21479, 0, 0, 0, 1, 1, 1, 1, 'Moam - Gauntlets of the Immovable'),
--
(30431, 20884, 0, 0, 0, 1, 1, 1, 1, 'Qiraji Magisterial Ring'),
(30431, 20885, 0, 0, 0, 1, 1, 1, 1, 'Qiraji Martial Drape'),
(30431, 20888, 0, 0, 0, 1, 1, 1, 1, 'Qiraji Ceremonial Ring'),
(30431, 20889, 0, 0, 0, 1, 1, 1, 1, 'Qiraji Regal Drape'),
--
(30432, 21492, 0, 0, 0, 1, 1, 1, 1, 'General Rajaxx - Manslayer of the Qiraji'),
(30432, 21493, 0, 0, 0, 1, 1, 1, 1, 'General Rajaxx - Boots of the Vanguard'),
(30432, 21494, 0, 0, 0, 1, 1, 1, 1, 'General Rajaxx - Southwind\'s Grasp'),
(30432, 21495, 0, 0, 0, 1, 1, 1, 1, 'General Rajaxx - Legplates of the Qiraji Command'),
(30432, 21496, 0, 0, 0, 1, 1, 1, 1, 'General Rajaxx - Bracers of Qiraji Command'),
(30432, 21497, 0, 0, 0, 1, 1, 1, 1, 'General Rajaxx - Boots of the Qiraji General'),
--
(30433, 21498, 0, 0, 0, 1, 1, 1, 1, 'Kurinnaxx - Qiraji Sacrificial Dagger'),
(30433, 21499, 0, 0, 0, 1, 1, 1, 1, 'Kurinnaxx - Vestments of the Shifting Sands'),
(30433, 21500, 0, 0, 0, 1, 1, 1, 1, 'Kurinnaxx - Belt of the Inquisition'),
(30433, 21501, 0, 0, 0, 1, 1, 1, 1, 'Kurinnaxx - Toughened Silithid Hide Gloves'),
(30433, 21502, 0, 0, 0, 1, 1, 1, 1, 'Kurinnaxx - Sand Reaver Wristguards'),
(30433, 21503, 0, 0, 0, 1, 1, 1, 1, 'Kurinnaxx - Belt of the Sand Reaver'),
--
(30434, 20884, 0, 0, 0, 1, 1, 1, 1, 'Qiraji Magisterial Ring'),
(30434, 20885, 0, 0, 0, 1, 1, 1, 1, 'Qiraji Martial Drape'),
(30434, 20886, 0, 0, 0, 1, 1, 1, 1, 'Qiraji Spiked Hilt'),
(30434, 20888, 0, 0, 0, 1, 1, 1, 1, 'Qiraji Ceremonial Ring'),
(30434, 20889, 0, 0, 0, 1, 1, 1, 1, 'Qiraji Regal Drape'),
(30434, 20890, 0, 0, 0, 1, 1, 1, 1, 'Qiraji Ornate Hilt'),
--
(30435, 21466, 0, 0, 0, 1, 1, 1, 1, 'Ayamiss the Hunter - Stinger of Ayamiss'),
(30435, 21478, 0, 0, 0, 1, 1, 1, 1, 'Ayamiss the Hunter - Bow of Taut Sinew'),
(30435, 21479, 0, 0, 0, 1, 1, 1, 1, 'Ayamiss the Hunter - Gauntlets of the Immovable'),
(30435, 21480, 0, 0, 0, 1, 1, 1, 1, 'Ayamiss the Hunter - Scaled Silithid Gauntlets'),
(30435, 21481, 0, 0, 0, 1, 1, 1, 1, 'Ayamiss the Hunter - Boots of the Desert Protector'),
(30435, 21482, 0, 0, 0, 1, 1, 1, 1, 'Ayamiss the Hunter - Boots of the Fiery Sands'),
(30435, 21483, 0, 0, 0, 1, 1, 1, 1, 'Ayamiss the Hunter - Ring of the Desert Winds'),
(30435, 21484, 0, 0, 0, 1, 1, 1, 1, 'Ayamiss the Hunter - Helm of Regrowth'),
--
(30436, 21485, 0, 0, 0, 1, 1, 1, 1, 'Buru the Gorger - Buru\'s Skull Fragment'),
(30436, 21486, 0, 0, 0, 1, 1, 1, 1, 'Buru the Gorger - Gloves of the Swarm'),
(30436, 21487, 0, 0, 0, 1, 1, 1, 1, 'Buru the Gorger - Slimy Scaled Gauntlets'),
(30436, 21488, 0, 0, 0, 1, 1, 1, 1, 'Buru the Gorger - Fetish of Chitinous Spikes'),
(30436, 21489, 0, 0, 0, 1, 1, 1, 1, 'Buru the Gorger - Quicksand Waders'),
(30436, 21490, 0, 0, 0, 1, 1, 1, 1, 'Buru the Gorger - Slime Kickers'),
(30436, 21491, 0, 0, 0, 1, 1, 1, 1, 'Buru the Gorger - Scaled Bracers of the Gorger');


DELETE FROM `creature_loot_template` WHERE `entry` IN (15339, 15340, 15341, 15348, 15369, 15370);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
--
(15339, 20884, 0,     10,  0, 1, 0, 1, 1, 'Ossirian the Unscarred - Qiraji Magisterial Ring'),
(15339, 21220, 0,     100, 0, 1, 0, 1, 1, 'Ossirian the Unscarred - Head of Ossirian the Unscarred'),
(15339, 30411, 30411, 100, 0, 1, 0, 1, 1, 'Ossirian the Unscarred - Formula ReferenceTable'),
(15339, 30420, 30420, 100, 0, 1, 0, 1, 1, 'Ossirian the Unscarred - Skillbook ReferenceTable'),
(15339, 30421, 30421, 100, 0, 1, 0, 1, 1, 'Ossirian the Unscarred - Skillbook ReferenceTable'),
(15339, 30424, 30424, 100, 0, 1, 0, 1, 1, 'Ossirian the Unscarred - Skillbook ReferenceTable'),
(15339, 30422, 30422, 100, 0, 1, 0, 1, 1, 'Ossirian the Unscarred - Epic ReferenceTable'),
(15339, 30423, 30423, 100, 0, 1, 0, 1, 1, 'Ossirian the Unscarred - Epic ReferenceTable'),
(15339, 30425, 30425, 100, 0, 1, 0, 1, 1, 'Ossirian the Unscarred - Qiraji Hilt ReferenceTable'),
--
(15340, 22220, 0,     15,  0, 1, 0, 1, 1, 'Moam - Plans: Black Grasp of the Destroyer'),
(15340, 30411, 30411, 7,   0, 1, 0, 1, 1, 'Moam - Formula ReferenceTable'),
(15340, 30426, 30426, 100, 0, 1, 1, 1, 1, 'Moam - Skillbook ReferenceTable'),
(15340, 30427, 30427, 100, 0, 1, 2, 1, 1, 'Moam - Skillbook ReferenceTable'),
(15340, 30428, 30428, 100, 0, 1, 0, 1, 1, 'Moam - Qiraji Ring+Hilt ReferenceTable'),
(15340, 30429, 30429, 100, 0, 1, 0, 1, 1, 'Moam - Epic ReferenceTable'),
(15340, 30430, 30430, 100, 0, 1, 0, 1, 1, 'Moam - Epic ReferenceTable'),
--
(15341, 30411, 30411, 7,   0, 1, 0, 1, 1, 'General Rajaxx - Formula ReferenceTable'),
(15341, 30426, 30426, 100, 0, 1, 1, 1, 1, 'General Rajaxx - Skillbook ReferenceTable'),
(15341, 30427, 30427, 100, 0, 1, 2, 1, 1, 'General Rajaxx - Skillbook ReferenceTable'),
(15341, 30431, 30431, 100, 0, 1, 0, 1, 1, 'General Rajaxx - Qiraji Ring+Drape ReferenceTable'),
(15341, 30432, 30432, 100, 0, 1, 0, 1, 1, 'General Rajaxx - Epic ReferenceTable'),
--
(15348, 22217, 0,     100, 1, 1, 0, 1, 1, 'Kurinnaxx - Kurinnaxx\'s Venom Sac'),
(15348, 30411, 30411, 7,   0, 1, 0, 1, 1, 'Kurinnaxx - Formula ReferenceTable'),
(15348, 30426, 30426, 100, 0, 1, 1, 1, 1, 'Kurinnaxx - Skillbook ReferenceTable'),
(15348, 30431, 30431, 100, 0, 1, 0, 1, 1, 'Kurinnaxx - Qiraji Ring+Drape ReferenceTable'),
(15348, 30433, 30433, 100, 0, 1, 0, 1, 1, 'Kurinnaxx - Epic ReferenceTable'),
--
(15369, 30411, 30411, 7,   0, 1, 0, 1, 1, 'Ayamiss the Hunter - Formula ReferenceTable'),
(15369, 30426, 30426, 100, 0, 1, 1, 1, 1, 'Ayamiss the Hunter - Skillbook ReferenceTable'),
(15369, 30427, 30427, 100, 0, 1, 2, 1, 1, 'Ayamiss the Hunter - Skillbook ReferenceTable'),
(15369, 30434, 30434, 100, 0, 1, 0, 1, 1, 'Ayamiss the Hunter - Qiraji Ring+Drape+Hilt ReferenceTable'),
(15369, 30435, 30435, 100, 0, 1, 0, 1, 1, 'Ayamiss the Hunter - Epic ReferenceTable'),
--
(15370, 30411, 30411, 7,   0, 1, 0, 1, 1, 'Buru the Gorger - Formula ReferenceTable'),
(15370, 30426, 30426, 100, 0, 1, 0, 1, 1, 'Buru the Gorger - Skillbook ReferenceTable'),
(15370, 30427, 30427, 100, 0, 1, 0, 1, 1, 'Buru the Gorger - Skillbook ReferenceTable'),
(15370, 30434, 30434, 100, 0, 1, 0, 1, 1, 'Buru the Gorger - Qiraji Ring+Drape+Hilt ReferenceTable'),
(15370, 30436, 30436, 100, 0, 1, 0, 1, 1, 'Buru the Gorger - Epic ReferenceTable');

-- remove unused AC reference loot templates
DELETE FROM `reference_loot_template` WHERE `Entry` IN (34024, 34025);

/*
https://www.azerothcore.org/wiki/conditions#sourcetypeorreferenceid
this should work, but doesn't
engine thinks SourceGroup is a creature_loot_template entry. it's not. 
it's a reference_loot_template` entry. no idea how to let the engine know this
https://www.azerothcore.org/wiki/loot_template#loot_template-Entry
reference_loot_template 	*_loot_template.reference

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 1 AND `SourceGroup` IN (30423, 30429, 30435, 30436); 
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, 
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
--
(1, 30423, 21453, 0, 0, 6, 0, 469, 0, 0, 0, 0, 0, '', 'Mantle of the Horusath will only drop for Alliance'),        -- Ossirian the Unscarred
(1, 30423, 21454, 0, 0, 6, 0, 67,  0, 0, 0, 0, 0, '', 'Runic Stone Shoulders will only drop for Horde'),            -- Ossirian the Unscarred
(1, 30429, 21475, 0, 0, 6, 0, 469, 0, 0, 0, 0, 0, '', 'Legplates of the Destroyer will only drop for Alliance'),    -- Moam
(1, 30429, 21476, 0, 0, 6, 0, 67,  0, 0, 0, 0, 0, '', 'Obsidian Scaled Leggings will only drop for Horde'),         -- Moam
(1, 30435, 21481, 0, 0, 6, 0, 469, 0, 0, 0, 0, 0, '', 'Boots of the Desert Protector will only drop for Alliance'), -- Ayamiss the Hunter
(1, 30435, 21482, 0, 0, 6, 0, 67,  0, 0, 0, 0, 0, '', 'Boots of the Fiery Sands will only drop for Horde'),         -- Ayamiss the Hunter
(1, 30436, 21486, 0, 0, 6, 0, 469, 0, 0, 0, 0, 0, '', 'Gloves of the Swarm will only drop for Alliance'),           -- Buru the Gorger
(1, 30436, 21487, 0, 0, 6, 0, 67,  0, 0, 0, 0, 0, '', 'Slimy Scaled Gauntlets will only drop for Horde');           -- Buru the Gorger
*/
