-- smart scripts
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (2581);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(2554, 2555, 2556, 2558, 2560, 2561, 2562, 2563, 2564, 2565, 2566, 2567, 2569, 2570, 2571, 2573, 2574, 2580, 2582, 2583, 2584, 2585, 2586, 2587, 2588, 2589, 
2590, 2591, 2595, 2596, 2598, 2604, 2606, 2607, 2779, 2793, 4479, 4480, 4481);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(2554, 2555, 2556, 2558, 2560, 2561, 2562, 2563, 2564, 2565, 2566, 2567, 2569, 2570, 2571, 2573, 2574, 2580, 2581, 2582, 2583, 2584, 2585, 2586, 2587, 2588, 2589, 
2590, 2591, 2595, 2596, 2598, 2604, 2606, 2607, 2779, 2793, 4479, 4480, 4481);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(2554, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Witherbark Axe Thrower - Outside 30 Range - Start Combat Movement'),
(2554, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Witherbark Axe Thrower - Within 5-30 Range - Stop Combat Movement'),
(2554, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Witherbark Axe Thrower - Within 0-5 Range - Start Combat Movement'),    
(2554, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 10277, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Witherbark Axe Thrower - Within 5-30 Range - Cast Throw'),
(2554, 0, 4, 0, 0, 0, 100, 0, 10000, 26000, 2000, 7000, 0, 0, 11, 4974, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,     'Witherbark Axe Thrower - Within 0-5 Range - Cast Wither Touch'),
(2554, 0, 5, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Witherbark Axe Thrower - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2555, 0, 0, 0, 9, 0, 100, 0, 6500, 15300, 80900, 93900, 0, 5, 11, 5605, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Witherbark Witch Doctor - Within 0-5 Range - Cast Healing Ward'),
(2555, 0, 1, 0, 9, 0, 100, 0, 0, 16000, 11100, 23400, 0, 8, 11, 8190, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Witherbark Witch Doctor - Within 0-8 Range - Cast Magma Totem'),
(2555, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Witherbark Witch Doctor - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2556, 0, 0, 0, 0, 0, 100, 0, 9000, 24000, 18500, 39800, 0, 0, 11, 6533, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Witherbark Headhunter - In Combat - Cast Net'),
(2556, 0, 1, 0, 0, 0, 100, 0, 10000, 26000, 2000, 7000, 0, 0, 11, 4974, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,     'Witherbark Headhunter - Within 0-5 Range - Cast Wither Touch'),
(2556, 0, 2, 0, 12, 0, 100, 1, 0, 20, 0, 0, 0, 0, 11, 7160, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                 'Witherbark Headhunter - Target Between 0-20% Health - Cast Execute (No Repeat)'),
(2556, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Witherbark Headhunter - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2558, 0, 0, 0, 0, 0, 100, 0, 5000, 25000, 23000, 38000, 0, 0, 11, 4974, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,    'Witherbark Berserker - Within 0-5 Range - Cast Wither Touch'),
(2558, 0, 1, 0, 0, 0, 100, 0, 0, 15000, 15000, 28000, 0, 0, 11, 3019, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Witherbark Berserker - In Combat - Cast Frenzy'),
(2558, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Witherbark Berserker - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(2560, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Highland Thrasher - On Reset - Cast Thrash Proc'),
(2561, 0, 0, 0, 2, 0, 100, 0, 0, 50, 12000, 24000, 0, 0, 11, 3393, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,          'Highland Fleshstalker - Within 0-5 Range - Cast Consume Flesh'),
(2562, 0, 0, 0, 4, 0, 5, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                         'Boulderfist Ogre - On Aggro - Say Line 0 (No Repeat)'),
(2562, 0, 1, 0, 2, 0, 100, 0, 0, 30, 15300, 42700, 0, 0, 11, 4955, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Boulderfist Ogre - Between 0-30% Health - Cast Fist of Stone'),
(2563, 0, 0, 0, 0, 0, 100, 0, 9000, 34000, 19000, 38000, 0, 0, 11, 4962, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Plains Creeper - In Combat - Cast Encasing Webs'),
(2563, 0, 1, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3616, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Plains Creeper - On Respawn - Cast Poison Proc'),
(2564, 0, 0, 0, 4, 0, 5, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                         'Boulderfist Enforcer - On Aggro - Say Line 0 (No Repeat)'),
(2564, 0, 1, 0, 9, 0, 100, 0, 4000, 13000, 30000, 40000, 0, 10, 11, 13730, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Boulderfist Enforcer - Within 0-10 Range - Cast Demoralizing Shout'),
(2564, 0, 2, 0, 2, 0, 100, 0, 0, 30, 27200, 46600, 0, 0, 11, 4955, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Boulderfist Enforcer - Between 0-30% Health - Cast Fist of Stone'),
(2565, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3616, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                 'Giant Plains Creeper - On Reset - Cast Poison Proc'),
(2565, 0, 1, 0, 9, 0, 100, 0, 9000, 34000, 19000, 38000, 0, 20, 11, 4962, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Giant Plains Creeper - Within 0-20 Range - Cast Encasing Webs'),
(2566, 0, 0, 0, 4, 0, 5, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                         'Boulderfist Brute - On Aggro - Say Line 0 (No Repeat)'),
(2566, 0, 1, 0, 0, 0, 100, 0, 5000, 11000, 12000, 17000, 0, 0, 11, 11428, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,   'Boulderfist Brute - Within 0-5 Range - Cast Knockdown'),
(2566, 0, 2, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 4955, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Boulderfist Brute - Between 0-30% Health - Cast Fist of Stone (No Repeat)'),
(2567, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 12544, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Boulderfist Magus - Out of Combat - Cast Frost Armor (No Repeat)'),
(2567, 0, 1, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                        'Boulderfist Magus - On Aggro - Say Line 0'),
(2567, 0, 2, 0, 0, 0, 100, 0, 0, 0, 3500, 6400, 0, 0, 11, 20822, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Boulderfist Magus - In Combat - Cast Frostbolt'),
(2567, 0, 3, 0, 106, 0, 100, 0, 6000, 9800, 15400, 23500, 0, 10, 11, 11831, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Boulderfist Magus - Within 0-10 Range - Cast Frost Nova'),
(2567, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Boulderfist Magus - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2569, 0, 0, 0, 4, 0, 5, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                         'Boulderfist Mauler - On Aggro - Say Line 0 (No Repeat)'),
(2569, 0, 1, 0, 0, 0, 100, 0, 11000, 20000, 15000, 45000, 0, 0, 11, 4955, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Boulderfist Mauler - In Combat - Cast Fist of Stone'),
(2569, 0, 2, 0, 54, 0, 100, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 0,                   'Boulderfist Mauler - Just Summoned - Attack Start'),
(2570, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                        'Boulderfist Shaman - On Aggro - Say Line 0'),
(2570, 0, 1, 0, 0, 0, 100, 0, 0, 0, 3000, 4000, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Boulderfist Shaman - In Combat - Cast Lightning Bolt'),
(2570, 0, 2, 0, 2, 0, 100, 1, 0, 45, 0, 0, 0, 0, 11, 6364, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Boulderfist Shaman - Between 0-45% Health - Cast Searing Totem (No Repeat)'),
(2570, 0, 3, 0, 74, 0, 100, 0, 5000, 5000, 10000, 10000, 60, 40, 11, 959, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,   'Boulderfist Shaman - On Friendly Between 0-60% Health - Cast Healing Wave'),
(2570, 0, 4, 0, 54, 0, 100, 512, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 0,                 'Boulderfist Shaman - Just Summoned - Attack Start'),
(2571, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8258, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Boulderfist Lord - On Aggro - Cast Devotion Aura'),
(2571, 0, 1, 0, 0, 0, 100, 0, 11000, 17000, 21000, 37000, 0, 0, 11, 4955, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Boulderfist Lord - In Combat - Cast Fist of Stone'),
(2573, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 12544, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Drywhisker Surveyor - Out of Combat - Cast Frost Armor (No Repeat)'),
(2573, 0, 1, 0, 0, 0, 100, 0, 0, 0, 3500, 6400, 0, 0, 11, 20822, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Drywhisker Surveyor - In Combat - Cast Frostbolt'),
(2573, 0, 2, 0, 106, 0, 100, 0, 5100, 15000, 21000, 25000, 0, 10, 11, 865, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Drywhisker Surveyor - Within 0-10 Range - Cast Frost Nova'),
(2573, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Drywhisker Surveyor - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2574, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7164, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Drywhisker Digger - On Reset - Cast Defensive Stance'),
(2574, 0, 1, 0, 9, 0, 100, 0, 1700, 10300, 6000, 15400, 0, 5, 11, 8380, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Drywhisker Digger - Within 0-5 Range - Cast Sunder Armor'),
(2574, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Drywhisker Digger - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2580, 0, 0, 0, 0, 0, 100, 0, 9000, 15000, 39000, 65000, 0, 0, 11, 8139, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Elder Mesa Buzzard - In Combat - Cast Fevered Fatigue'),
(2582, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Dabyrie Laborer - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2583, 0, 0, 0, 0, 0, 100, 0, 2000, 5000, 19000, 23000, 0, 0, 11, 2767, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,    'Stromgarde Troll Hunter - In Combat - Cast Shadow Word: Pain'),
(2583, 0, 1, 0, 74, 0, 100, 0, 0, 0, 12000, 18000, 50, 40, 11, 17137, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Stromgarde Troll Hunter - On Friendly Between 0-50% Health - Cast Flash Heal'),
(2583, 0, 2, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 86, 8602, 2, 9, 2585, 0, 15, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Stromgarde Troll Hunter - On Death - Cross Cast Vengeance'),
(2584, 0, 0, 0, 1, 0, 100, 1, 2000, 6000, 0, 0, 0, 0, 11, 7164, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Stromgarde Defender - Out of Combat - Cast Defensive Stance (No Repeat)'),
(2584, 0, 1, 0, 105, 0, 100, 0, 7000, 10000, 9000, 13000, 0, 5, 11, 11972, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,  'Stromgarde Defender - Within 0-5 Range - Cast Shield Bash'),
(2584, 0, 2, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 86, 8602, 2, 9, 2585, 0, 15, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Stromgarde Defender - On Death - Cross Cast Vengeance'),
(2585, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 86, 8602, 2, 9, 2585, 0, 15, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Stromgarde Vindicator - On Death - Cross Cast Vengeance'),
(2586, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 22766, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Syndicate Highwayman - Out of Combat - Cast Sneak (No Repeat)'),
(2586, 0, 1, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 28, 22766, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Syndicate Highwayman - On Aggro - Remove Aura Sneak'),
(2586, 0, 2, 0, 67, 0, 100, 0, 1000, 3000, 4000, 7000, 0, 5, 11, 2591, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Syndicate Highwayman - On Behind Target - Cast Backstab'),
(2586, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Syndicate Highwayman - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2587, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Syndicate Pathstalker - Outside 30 Range - Start Combat Movement'),
(2587, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Syndicate Pathstalker - Within 5-30 Range - Stop Combat Movement'),
(2587, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Syndicate Pathstalker - Within 0-5 Range - Start Combat Movement'),   
(2587, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Syndicate Pathstalker - Within 5-30 Range - Cast Shoot'),
(2587, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Syndicate Pathstalker - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2588, 0, 0, 0, 1, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 22766, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Syndicate Prowler - Out of Combat - Cast Sneak'),
(2588, 0, 1, 0, 4, 0, 100, 513, 0, 0, 0, 0, 0, 0, 28, 22766, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Syndicate Prowler - On Aggro - Remove Aura Sneak'),
(2588, 0, 2, 0, 9, 0, 100, 0, 4000, 14000, 22000, 41000, 0, 5, 11, 14873, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Syndicate Prowler - Within 0-5 Range - Cast Sinister Strike'),
(2588, 0, 3, 0, 0, 0, 100, 0, 8000, 15800, 20200, 36000, 0, 0, 11, 6713, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,    'Syndicate Prowler - Within 0-5 Range - Cast Disarm'),
(2588, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Syndicate Prowler - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2589, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Syndicate Mercenary - Between 0-15% Health - Flee For Assist'),
(2590, 0, 0, 0, 1, 0, 50, 0, 3000, 5000, 300000, 300000, 0, 0, 11, 25085, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Syndicate Conjuror - Out of Combat - Cast Bright Campfire'),
(2590, 0, 1, 0, 1, 0, 100, 1, 3000, 3000, 0, 0, 0, 0, 11, 43896, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Syndicate Conjuror - Out of Combat - Cast Summon Voidwalker (No Repeat)'),
(2590, 0, 2, 0, 0, 0, 100, 0, 0, 0, 3400, 6500, 0, 0, 11, 9613, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Syndicate Conjuror - In Combat - Cast Shadow Bolt'),
(2590, 0, 3, 0, 0, 0, 100, 0, 2000, 21000, 18000, 36000, 0, 0, 11, 15970, 1, 0, 0, 0, 0, 6, 30, 0, 0, 0, 0, 0, 0, 0,  'Syndicate Conjuror - In Combat - Cast Sleep'),
(2590, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Syndicate Conjuror - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2591, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 12544, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Syndicate Magus - Out of Combat - Cast Frost Armor (No Repeat)'),
(2591, 0, 1, 0, 0, 0, 100, 0, 0, 0, 3000, 4000, 0, 0, 11, 9672, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Syndicate Magus - In Combat - Cast Frostbolt'),
(2591, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Syndicate Magus - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(2595, 0, 0, 0, 0, 0, 100, 0, 12000, 15000, 17000, 34000, 0, 0, 11, 6533, 0, 0, 0, 0, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0,  'Daggerspine Raider - In Combat - Cast Net'),
(2595, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Daggerspine Raider - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2596, 0, 0, 0, 0, 0, 100, 0, 0, 0, 3000, 4000, 0, 0, 11, 20824, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Daggerspine Sorceress - In Combat - Cast Lightning Bolt'),
(2596, 0, 1, 0, 2, 0, 100, 1, 0, 50, 0, 0, 0, 0, 11, 8134, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Daggerspine Sorceress - Between 0-50% Health - Cast Lightning Shield (No Repeat)'),
(2596, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Daggerspine Sorceress - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(2598, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 8722, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Darbel Montrose - Out of Combat - Cast Summon Succubus (No Repeat)'),
(2598, 0, 1, 0, 0, 0, 100, 0, 0, 0, 3600, 6000, 0, 0, 11, 9613, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Darbel Montrose - In Combat - Cast Shadow Bolt'),
(2598, 0, 2, 0, 0, 0, 100, 0, 4000, 7000, 60000, 60000, 0, 0, 11, 12741, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Darbel Montrose - In Combat - Cast Curse of Weakness'),
(2598, 0, 3, 0, 0, 0, 100, 0, 10000, 15000, 25000, 35000, 0, 0, 11, 8994, 1, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,  'Darbel Montrose - In Combat - Cast Banish'),
(2598, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Darbel Montrose - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2604, 0, 0, 0, 0, 0, 80, 0, 9000, 13000, 6000, 16000, 0, 0, 11, 6253, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,      'Molok the Crusher - Within 0-5 Range - Cast Backhand'),
(2606, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 2458, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Nimar the Slayer - On Aggro - Cast spell Berserker Stance'),
(2606, 0, 1, 0, 9, 0, 100, 0, 2000, 13000, 12000, 18000, 0, 5, 11, 17207, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Nimar the Slayer - Within 0-5 Range - Cast Whirlwind'),
(2606, 0, 2, 0, 12, 0, 100, 1, 0, 20, 0, 0, 0, 0, 11, 7160, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,                 'Nimar the Slayer - Within 0-5 Range - Cast Execute (No Repeat)'),
(2606, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Nimar the Slayer - Between 0-15% Health - Flee For Assist (No Repeat)'),   
(2607, 0, 0, 0, 9, 0, 100, 0, 3000, 5000, 12000, 15000, 0, 10, 11, 13730, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Prince Galen Trollbane - Within 0-10 Range - Cast Demoralizing Shout'),
(2607, 0, 1, 0, 9, 0, 100, 0, 2000, 4000, 6000, 12000, 0, 5, 11, 11971, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Prince Galen Trollbane - Within 0-5 Range - Cast Sunder Armor'),
(2607, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Prince Galen Trollbane - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2779, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Prince Nazjak - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2793, 0, 0, 0, 4, 0, 30, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                        'Kor gresh Coldrage - On Aggro - Say Line 0 (No Repeat)'),
(2793, 0, 1, 0, 106, 0, 100, 0, 8000, 12000, 48000, 53000, 0, 10, 11, 865, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Kor gresh Coldrage - Within 0-10 Range - Cast Frost Nova'),
(2793, 0, 2, 0, 0, 0, 100, 0, 1000, 7000, 48000, 55000, 0, 0, 11, 4320, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Kor gresh Coldrage - In Combat - Cast Trelanes Freezing Touch'),
(4479, 0, 0, 0, 9, 0, 100, 0, 3000, 6000, 12000, 13000, 0, 10, 11, 3583, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Fardel Dabyrie - Within 0-10 Range - Cast Deadly Poison'),
(4479, 0, 1, 0, 2, 0, 100, 1, 0, 20, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Fardel Dabyrie - Between 0-20% Health - Flee For Assist'),
(4480, 0, 0, 0, 9, 0, 100, 0, 2000, 4000, 6000, 12000, 0, 5, 11, 8379, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Kenata Dabyrie - Within 0-5 Range - Cast Disarm'),
(4480, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Kenata Dabyrier - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4481, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 7164, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Marcel Dabyrie - On Aggro - Cast Defensive Stance'),
(4481, 0, 1, 0, 105, 0, 100, 0, 6000, 11000, 19000, 25000, 0, 5, 11, 11972, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Marcel Dabyrie - In Combat - Cast Shield Bash'),
(4481, 0, 2, 0, 2, 0, 100, 1, 0, 50, 0, 0, 0, 0, 11, 15062, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Marcel Dabyrie - Between 0-50% Health - Cast Shield Wall (No Repeat)'),
(4481, 0, 3, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Marcel Dabyrie - Between 0-30% Health - Flee For Assist (No Repeat)');


-- multiple spawn locations for Prince Nazjak
DELETE FROM `creature` WHERE `id1` IN (2779);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, 
`spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
--
(84713, 2779, 0, 0, 0, 0, 0, 1, 1, 1, -2316.75, -1582.54, -36.352, 4.89399, 115200, 5, 0, 1902, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(695102, 2779, 0, 0, 0, 0, 0, 1, 1, 1, -2315.92, -1755.23, -34.1144, 5.33605, 115200, 5, 0, 1902, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(695103, 2779, 0, 0, 0, 0, 0, 1, 1, 1, -2214.64, -1734.71, -64.7424, 1.18521, 115200, 5, 0, 1902, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(695104, 2779, 0, 0, 0, 0, 0, 1, 1, 1, -2158.53, -1680.49, -40.1574, 4.4132, 115200, 5, 0, 1902, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(695105, 2779, 0, 0, 0, 0, 0, 1, 1, 1, -2186.8, -1596.94, -38.3966, 5.35174, 115200, 5, 0, 1902, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(695106, 2779, 0, 0, 0, 0, 0, 1, 1, 1, -2145.72, -1637.69, -44.1156, 2.46148, 115200, 0, 0, 1902, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(695107, 2779, 0, 0, 0, 0, 0, 1, 1, 1, -2131.6, -1843.87, -42.1255, 1.84023, 115200, 5, 0, 1902, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(695108, 2779, 0, 0, 0, 0, 0, 1, 1, 1, -2266.25, -1614.29, -63.013, 3.3215, 115200, 5, 0, 1902, 0, 1, 0, 0, 0, '', 0, 0, NULL);

DELETE FROM `pool_creature` WHERE `pool_entry` IN (601048);
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
(84713,  601048, 0, 'Prince Nazjak'),
(695102, 601048, 0, 'Prince Nazjak'),
(695103, 601048, 0, 'Prince Nazjak'),
(695104, 601048, 0, 'Prince Nazjak'),
(695105, 601048, 0, 'Prince Nazjak'),
(695106, 601048, 0, 'Prince Nazjak'),
(695107, 601048, 0, 'Prince Nazjak'),
(695108, 601048, 0, 'Prince Nazjak');

DELETE FROM `pool_template` WHERE `entry` IN (601048);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES 
(601048, 1, 'Prince Nazjak - Arathi Highlands');


-- misplaced ogre at Boulderfirst Outpost (under the surface)
DELETE FROM `creature` WHERE `guid` = 11228; -- (11228, 2564, 0, 0, 0, 0, 0, 1, 1, 1, -1251.99, -2054.92, 50.2847, 6.07375, 400, 0, 0, 1221, 0, 0, 0, 0, 0, '', 0, 0, NULL);
DELETE FROM `creature_addon` WHERE `guid` = 11228;

-- remove non elite Syndicate thief from Stromgarde
DELETE FROM `creature` WHERE `id1` = 24477;

-- delete all guids for id1 24477 from creature_addon
DELETE FROM `creature_addon` WHERE `guid` IN 
(11650, 11699, 11700, 14522, 14538, 14539, 14540, 
14548, 14553, 14554, 14555, 14567, 14569, 14580, 
14584, 14635, 14640, 14641, 14648, 14649, 14651);

-- set drop rate of sigil of strom to 5%, was 100%
UPDATE `creature_loot_template` SET `Chance` = 5 WHERE `Item` = 4440;

-- Mote of Myzrael drop rate too high. should be 50%
UPDATE `creature_loot_template` SET `Chance` = 50 WHERE `Item` = 4435;

-- Raptor Heart drop rate too high. should be below 40% but real drop rate unknown
UPDATE `creature_loot_template` SET `Chance` = 40 WHERE `Item` = 4513;

-- Pendant of Myzrael should not be consumed on use
UPDATE `item_template` SET `Material` = 4 WHERE `entry` = 4614;

-- summoning the princess, quest 656, remove suggested player 2
UPDATE `quest_template` SET `SuggestedGroupNum` = 0 WHERE `ID` = 656;
