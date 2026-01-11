/* smart scripts */
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(4798, 4799, 4805, 4807, 4809, 4810, 4811, 4812, 4813, 4814, 4815, 4818, 4819, 4820, 4823, 4825, 4827, 4829, 4831, 4887, 6243);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(4798, 4799, 4805, 4807, 4809, 4810, 4811, 4812, 4813, 4814, 4815, 4818, 4819, 4820, 4823, 4825, 4827, 4829, 4831, 4887, 6243);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(4798, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 5916, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Fallenroot Shadowstalker - Out of Combat - Cast Shadowstalker Stealth'),
(4798, 0, 1, 0, 0, 0, 100, 0, 5000, 7000, 20000, 35000, 0, 0, 11, 6205, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Fallenroot Shadowstalker - In Combat - Cast Curse of Weakness'),
(4799, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9613, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Fallenroot Hellcaller - In Combat - Cast Shadow Bolt'),
(4799, 0, 1, 0, 0, 0, 100, 0, 12000, 15000, 30000, 45000, 0, 0, 11, 8129, 256, 0, 0, 0, 0, 5, 30, 0, 1, 0, 0, 0, 0, 0, 'Fallenroot Hellcaller - Within 0-30 Range - Cast Mana Burn'),
(4805, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 90000, 90000, 0, 0, 11, 12544, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Blackfathom Sea Witch - Out of Combat - Cast Frost Armor'),
(4805, 0, 1, 0, 0, 0, 100, 0, 7000, 10000, 16000, 20000, 0, 0, 11, 122, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Blackfathom Sea Witch - Within 0-10 Range - Cast Frost Nova'),
(4805, 0, 2, 0, 0, 0, 100, 1, 3000, 6000, 0, 0, 0, 0, 11, 6143, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Blackfathom Sea Witch - In Combat - Cast Frost Ward (No Repeat)'),
(4805, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Blackfathom Sea Witch - Between 0-15% Health - Flee For Assist'),
(4807, 0, 0, 0, 0, 0, 100, 0, 5000, 8000, 16000, 20000, 0, 0, 11, 8379, 32, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,     'Blackfathom Myrmidon - Within 0-5 Range - Cast Disarm'),
(4807, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Blackfathom Myrmidon - Between 0-15% Health - Flee For Assist'),
--
(4809, 0, 0, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Twilight Acolyte - On Aggro - Say Line 0'),
(4809, 0, 1, 0, 14, 0, 100, 0, 750, 40, 18000, 22000, 0, 0, 11, 2055, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,        'Twilight Acolyte - Friendly Missing Health - Cast Heal'),
(4809, 0, 2, 0, 74, 0, 100, 0, 0, 0, 22000, 25000, 50, 40, 11, 8362, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,         'Twilight Acolyte - Friendly Missing Health - Cast Renew'),
(4809, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Twilight Acolyte - Between 0-15% Health - Flee For Assist'),
(4810, 0, 0, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Twilight Reaver - On Aggro - Say Line 0'),
(4810, 0, 1, 0, 0, 0, 100, 0, 5000, 9000, 8000, 12000, 0, 0, 11, 8374, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Twilight Reaver - Within 0-5 Range - Cast Arcing Smash'),
(4810, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Twilight Reaver - Between 0-15% Health - Flee For Assist'),
(4811, 0, 0, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Twilight Aquamancer - On Aggro - Say Line 0'),
(4811, 0, 1, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 8372, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Twilight Aquamancer - Out of Combat - Cast Summon Aqua Guardian'),
(4811, 0, 2, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9672, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Twilight Aquamancer - In Combat - Cast Frostbolt'),
(4811, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Twilight Aquamancer - Between 0-15% Health - Flee For Assist'),
(4812, 0, 0, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Twilight Loreseeker - On Aggro - Say Line 0'),
(4812, 0, 1, 0, 0, 0, 100, 0, 5000, 10000, 25000, 35000, 0, 0, 11, 8365, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Twilight Loreseeker - In Combat - Cast Enlarge'),
(4812, 0, 2, 0, 0, 0, 100, 0, 9000, 12000, 12000, 20000, 0, 0, 11, 18972, 32, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,  'Twilight Loreseeker - Within 0-30 Range - Cast Slow'),
(4812, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Twilight Loreseeker - Between 0-15% Health - Flee For Assist'),
(4813, 0, 0, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Twilight Shadowmage - On Aggro - Say Line 0'),
(4813, 0, 1, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 12746, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Twilight Shadowmage - Out of Combat - Cast Summon Voidwalker'),
(4813, 0, 2, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9613, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Twilight Shadowmage - In Combat - Cast Shadow Bolt'),
(4813, 0, 3, 0, 0, 0, 100, 0, 5000, 15000, 24000, 30000, 0, 0, 11, 7645, 0, 0, 0, 0, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0,    'Twilight Shadowmage - Within 0-20 Range - Cast Dominate Mind'),
(4813, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Twilight Shadowmage - Between 0-15% Health - Flee For Assist'),
(4814, 0, 0, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Twilight Elementalist - On Aggro - Say Line 0'),
(4814, 0, 1, 0, 0, 0, 100, 0, 4000, 7000, 9000, 12000, 0, 0, 11, 13728, 0, 0, 0, 0, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0,     'Twilight Elementalist - Within 0-20 Range - Cast Earth Shock'),
(4814, 0, 2, 0, 0, 0, 100, 0, 5000, 9000, 13000, 17000, 0, 0, 11, 15039, 0, 0, 0, 0, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0,    'Twilight Elementalist - Within 0-20 Range - Cast Flame Shock'),
(4814, 0, 3, 0, 9, 0, 100, 0, 0, 0, 11000, 15000, 0, 20, 11, 12548, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Twilight Elementalist - Within 0-20 Range - Cast Frost Shock'),
(4814, 0, 4, 0, 0, 0, 100, 0, 3000, 6000, 7000, 12000, 0, 0, 11, 11824, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Twilight Elementalist - In Combat - Cast Shock'),
(4814, 0, 5, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Twilight Elementalist - Between 0-15% Health - Flee For Assist'),
--
(4815, 0, 0, 0, 0, 0, 100, 0, 5000, 9000, 16000, 20000, 0, 0, 11, 8379, 32, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,     'Murkshallow Snapclaw - Within 0-5 Range - Cast Disarm'),
(4815, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Murkshallow Snapclaw - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4818, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 7164, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Blindlight Murloc - In Combat - Cast Defensive Stance (No Repeat)'),
(4818, 0, 1, 0, 9, 0, 100, 0, 0, 0, 5000, 9000, 0, 5, 11, 7405, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Blindlight Murloc - Within 0-5 Range - Cast Sunder Armor'),
(4818, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Blindlight Murloc - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4819, 0, 0, 0, 2, 0, 100, 0, 0, 50, 50000, 60000, 0, 0, 11, 8382, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,           'Blindlight Muckdweller - Between 0-50% Health - Cast Leech Poison'),
(4819, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Blindlight Muckdweller - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4820, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Blindlight Oracle - In Combat - Cast Lightning Bolt'),
(4820, 0, 1, 0, 74, 0, 100, 0, 0, 0, 30000, 40000, 70, 40, 11, 6063, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,         'Blindlight Oracle - Friendly Missing Health - Cast Heal'),
(4820, 0, 2, 0, 74, 0, 100, 0, 0, 0, 120000, 120000, 90, 40, 11, 8362, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,       'Blindlight Oracle - Friendly Missing Health - Cast Renew'),
(4820, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Blindlight Oracle - Between 0-15% Health - Flee For Assist'),
(4823, 0, 0, 0, 54, 0, 100, 512, 0, 0, 0, 0, 0, 0, 38, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Barbed Crustacean - Is Summoned - Set In Combat With Zone'),
(4823, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Barbed Crustacean - Between 0-15% Health - Flee For Assist'),
(4825, 0, 0, 0, 0, 0, 100, 0, 5000, 8000, 9000, 14000, 0, 0, 11, 8391, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Aku\'mai Snapjaw - Within 0-5 Range - Cast Ravage'),
(4825, 0, 1, 0, 54, 0, 100, 512, 0, 0, 0, 0, 0, 0, 38, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Aku\'mai Snapjaw - Is Summoned - Set In Combat With Zone'),
(4827, 0, 0, 0, 0, 0, 100, 0, 3000, 6000, 20000, 25000, 0, 0, 11, 3604, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Deep Pool Threshfin - Within 0-5 Range - Cast Tendon Rip'),
--
(4829, 0, 0, 0, 9, 0, 100, 0, 0, 0, 5000, 9000, 0, 8, 11, 3815, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Aku\'mai - Within 0-8 Range - Cast Poison Cloud'),
(4829, 0, 1, 0, 0, 0, 100, 0, 15000, 15000, 20000, 20000, 0, 0, 11, 3490, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Aku\'mai - In Combat - Cast Frenzied Rage'),
(4829, 0, 2, 3, 6, 0, 100, 512, 0, 0, 0, 0, 0, 0, 34, 5, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Aku\'mai - On Just Died - Set Instance Data 5 to 3'),
(4829, 0, 3, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 106, 16, 0, 0, 0, 0, 0, 14, 32935, 103016, 0, 0, 0, 0, 0, 0,        'Aku\'mai - On Just Died - Remove Gameobject Flags'),
--
(4831, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Lady Sarevess - Outside 30 Range - Start Combat Movement'),
(4831, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Lady Sarevess - Within 5-30 Range - Stop Combat Movement'),
(4831, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Lady Sarevess - Within 0-5 Range - Start Combat Movement'),
(4831, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Lady Sarevess - Within 5-30 Range - Cast Shoot'),
(4831, 0, 4, 0, 0, 0, 100, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Lady Sarevess - In Combat - Say Line 0 (No Repeat)'),
(4831, 0, 5, 0, 0, 0, 100, 0, 3000, 5000, 9000, 15000, 0, 0, 11, 8435, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,       'Lady Sarevess - In Combat - Cast Forked Lightning'),
(4831, 0, 6, 0, 106, 0, 100, 0, 0, 0, 9000, 13000, 0, 8, 11, 865, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Lady Sarevess - Within 0-8 Range - Cast Frost Nova'),
(4831, 0, 7, 0, 0, 0, 100, 0, 7000, 9000, 9000, 13000, 0, 0, 11, 246, 32, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,      'Lady Sarevess - Within 0-30 Range - Cast Slow'),
(4831, 0, 8, 0, 5, 0, 100, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Lady Sarevess - On Player Kill - Say Line 1'),
--
(4887, 0, 0, 0, 9, 0, 100, 0, 0, 0, 7000, 12000, 0, 10, 11, 5568, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Ghamoo-ra - Within 0-10 Range - Cast Trample'),
--
(6243, 0, 0, 1, 0, 0, 100, 0, 3000, 6000, 15500, 25300, 0, 0, 11, 6533, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Gelihast - In Combat - Cast Net'),
(6243, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 13, 0, 30, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                     'Gelihast - On Cast Net - Reduce Aggro'),
(6243, 0, 2, 3, 6, 0, 100, 512, 0, 0, 0, 0, 0, 0, 34, 0, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Gelihast - On Just Died - Set Instance Data 0 to 3'),
(6243, 0, 3, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 106, 16, 0, 0, 0, 0, 0, 14, 32610, 103015, 0, 0, 0, 0, 0, 0,        'Gelihast - On Just Died - Remove Gameobject Flags');


-- Lorgus Jett spawn locations
DELETE FROM `creature` WHERE `id1` IN (12902);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, 
`wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
(26173, 12902, 0, 0, 48, 0, 0, 1, 1, 1, -622.355, -10.3501, -22.777, 4.90438, 86400, 0, 0, 1713, 1236, 0, 0, 0, 0, '', 0, 0, NULL),
(695095, 12902, 0, 0, 48, 0, 0, 1, 1, 1, -455.93, -39.96, -32.5239, 2.5, 86400, 0, 0, 1713, 1236, 0, 0, 0, 0, '', 0, 0, NULL),
(695096, 12902, 0, 0, 48, 0, 0, 1, 1, 1, -474.22, -86.95, -39.87, 2.98, 86400, 0, 0, 1713, 1236, 0, 0, 0, 0, '', 0, 0, NULL);

DELETE FROM `pool_creature` WHERE `pool_entry` IN (601052);
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
(26173,  601052, 0, 'Lorgus Jett'),
(695095, 601052, 0, 'Lorgus Jett'),
(695096, 601052, 0, 'Lorgus Jett');

DELETE FROM `pool_template` WHERE `entry` IN (601052);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES 
(601052, 1, 'Lorgus Jett - Blackfathom Deeps');

-- Lady Sarevess, waypoints
UPDATE `creature` SET `MovementType` = 2, `currentwaypoint` = 1 WHERE `guid` = 26129;

DELETE FROM `creature_addon` WHERE `guid` = 26129;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(26129, 261290, 0, 0, 0, 0, 0, NULL);

DELETE FROM `waypoint_data` WHERE `id` = 261290;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
(261290, 1, -312.805, 407.16, -56.5854, 3.41055, 0, 0, 0, 100, 0),
(261290, 2, -325.807, 403.323, -55.7881, 3.45767, 0, 0, 0, 100, 0),
(261290, 3, -333.846, 406.983, -54.9061, 2.99429, 0, 0, 0, 100, 0),
(261290, 4, -340.258, 405.888, -54.2951, 3.4349, 0, 0, 0, 100, 0),
(261290, 5, -345.776, 402.011, -54.1311, 3.84016, 0, 0, 0, 100, 0),
(261290, 6, -350.274, 395.867, -54.1332, 4.13469, 0, 0, 0, 100, 0),
(261290, 7, -351.786, 390.66, -54.2861, 4.55487, 0, 0, 0, 100, 0),
(261290, 8, -352.866, 383.857, -54.4278, 4.55487, 0, 0, 0, 100, 0),
(261290, 9, -350.646, 380.474, -54.389, 5.29315, 0, 0, 0, 100, 0),
(261290, 10, -346.748, 371.39, -54.5548, 5.03397, 0, 0, 0, 100, 0),
(261290, 11, -342.772, 359.456, -54.3117, 5.03397, 0, 0, 0, 100, 0),
(261290, 12, -347.951, 348.789, -53.7274, 4.17553, 0, 0, 0, 100, 0),
(261290, 13, -353.978, 342.069, -53.6887, 4.09149, 0, 0, 0, 100, 0),
(261290, 14, -343.813, 341.429, -53.8566, 0.08753, 0, 0, 0, 100, 0),
(261290, 15, -333.13, 342.367, -53.6974, 0.08753, 0, 0, 0, 100, 0),
(261290, 16, -322.67, 343.285, -53.7259, 0.08753, 0, 0, 0, 100, 0),
(261290, 17, -314.112, 340.418, -53.7111, 5.89241, 0, 0, 0, 100, 0),
(261290, 18, -307.333, 324.547, -54.0365, 5.08266, 0, 0, 0, 100, 0),
(261290, 19, -302.799, 335.283, -53.2095, 1.57272, 0, 0, 0, 100, 0),
(261290, 20, -322.509, 340.928, -53.8995, 2.98722, 0, 0, 0, 100, 0),
(261290, 21, -333.96, 341.848, -53.7635, 2.98722, 0, 0, 0, 100, 0),
(261290, 22, -341.952, 347.971, -53.7221, 2.32277, 0, 0, 0, 100, 0),
(261290, 23, -342.252, 359.977, -54.313, 1.67403, 0, 0, 0, 100, 0),
(261290, 24, -344.524, 369.895, -54.5549, 1.67403, 0, 0, 0, 100, 0),
(261290, 25, -339.919, 376.27, -54.1613, 0.865859, 0, 0, 0, 100, 0),
(261290, 26, -333.826, 384.731, -54.0877, 1.08499, 0, 0, 0, 100, 0),
(261290, 27, -326.317, 393.96, -54.1919, 0.865859, 0, 0, 0, 100, 0),
(261290, 28, -322.542, 396.938, -55.2278, 0.667939, 0, 0, 0, 100, 0),
(261290, 29, -317.173, 404.37, -56.2554, 0.962463, 0, 0, 0, 100, 0);

DELETE FROM `creature` WHERE `guid` = 27406; -- Barbed Crustacean
