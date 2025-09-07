/* Dire Maul North - smart scripts */
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(11441, 11444, 11445, 11448, 11450, 11501, 11859, 13036, 13160, 14321, 14322, 14323, 14325, 14326);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(11441, 11444, 11445, 11448, 11450, 11501, 11859, 13036, 13160, 14321, 14322, 14323, 14325, 14326);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(11441, 0, 0, 0, 4, 0, 10, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                             'Gordok Brute - On Aggro - Say Line 0'),
(11441, 0, 1, 0, 0, 0, 100, 0, 8900, 17900, 6200, 16400, 0, 0, 11, 18072, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 0,       'Gordok Brute - Within 0-10 Range - Cast Uppercut'),
(11441, 0, 2, 0, 9, 0, 100, 0, 0, 0, 14000, 21000, 0, 5, 11, 22572, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,               'Gordok Brute - Within 0-5 Range - Cast Bruising Blow'),
(11441, 0, 3, 0, 0, 0, 100, 0, 8000, 17000, 14000, 21000, 0, 0, 11, 6253, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,         'Gordok Brute - Within 0-5 Range - Cast Backhand'),
(11441, 0, 4, 0, 105, 0, 100, 0, 0, 0, 10000, 20000, 0, 5, 11, 15615, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,             'Gordok Brute - Target Casting - Cast Pummel'),
(11441, 0, 5, 6, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 15716, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Gordok Brute - Between 0-30% Health - Cast Enrage'),
(11441, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                           'Gordok Brute - On Enrage - Say Line 1'),
(11441, 0, 7, 0, 1, 0, 100, 0, 4000, 15000, 20000, 40000, 0, 0, 10, 1, 11, 25, 6, 21, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Gordok Brute - Out of Combat - Play Random Emote'),
--
(11444, 0, 0, 0, 4, 0, 10, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                             'Gordok Mage-Lord - On Aggro - Say Line 0'),
(11444, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 15530, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                'Gordok Mage-Lord - In Combat - Cast Frostbolt'),
(11444, 0, 2, 0, 0, 0, 100, 0, 7000, 14000, 12000, 15000, 0, 0, 11, 14145, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Gordok Mage-Lord - In Combat - Cast Fire Blast'),
(11444, 0, 3, 0, 0, 0, 100, 0, 12000, 17000, 19000, 25000, 0, 0, 11, 16102, 64, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,     'Gordok Mage-Lord - In Combat - Cast Flamestrike'),
(11444, 0, 4, 0, 0, 0, 100, 0, 7000, 9000, 16000, 20000, 0, 0, 11, 13323, 96, 0, 0, 0, 0, 6, 30, 0, 0, 0, 0, 0, 0, 0,       'Gordok Mage-Lord - In Combat - Cast Polymorph'),
(11444, 0, 5, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 16170, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Gordok Mage-Lord - Between 0-30% Health - Cast Bloodlust'),
(11444, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                           'Gordok Mage-Lord - On Bloodlust - Say Line 1'),
(11444, 0, 7, 0, 1, 0, 100, 0, 4000, 15000, 20000, 40000, 0, 0, 10, 1, 11, 25, 6, 21, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Gordok Mage-Lord - Out of Combat - Play Random Emote'),
--
(11445, 0, 0, 0, 4, 0, 10, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                             'Gordok Captain - On Aggro - Say Line 0'),
(11445, 0, 1, 0, 0, 0, 100, 0, 4000, 9000, 6000, 16000, 0, 0, 11, 22574, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 0,        'Gordok Captain - Within 0-10 Range - Cast Dark Strike'),
(11445, 0, 2, 0, 0, 0, 100, 0, 8000, 9000, 11000, 20000, 0, 0, 11, 16244, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Gordok Captain - In Combat - Cast Demoralizing Shout'),
(11445, 0, 3, 0, 0, 0, 100, 0, 3000, 5000, 7000, 9000, 0, 0, 11, 22575, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Gordok Captain - In Combat - Cast Shadow Shock'),
(11445, 0, 4, 0, 0, 0, 100, 0, 1000, 11000, 17000, 25000, 0, 0, 11, 12096, 0, 0, 0, 0, 0, 6, 20, 0, 0, 0, 0, 0, 0, 0,       'Gordok Captain - In Combat - Cast Fear'),
(11445, 0, 5, 0, 1, 0, 100, 0, 4000, 15000, 20000, 40000, 0, 0, 10, 1, 11, 25, 6, 21, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Gordok Captain - Out of Combat - Play Random Emote'),
--
(11448, 0, 0, 0, 4, 0, 10, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                             'Gordok Warlock - On Aggro - Say Line 0'),
(11448, 0, 1, 0, 1, 0, 100, 1, 1000, 3000, 0, 0, 0, 0, 11, 22865, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Gordok Warlock - Out of Combat - Cast Summon Doomguard'),
(11448, 0, 2, 0, 1, 0, 100, 0, 1000, 1000, 600000, 600000, 0, 0, 11, 13787, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Gordok Warlock - Out of Combat - Cast Demon Armor'),
(11448, 0, 3, 4, 1, 0, 100, 1, 10000, 10000, 0, 0, 0, 0, 11, 21157, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Gordok Warlock - Out of Combat - Cast Dark Channeling'),
(11448, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 17, 193, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Gordok Warlock - Out of Combat - Set Emotestate'),
(11448, 0, 5, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 15232, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                'Gordok Warlock - In Combat - Cast Shadow Bolt'),
(11448, 0, 6, 0, 0, 0, 100, 0, 9000, 15000, 26000, 30000, 0, 0, 11, 17883, 64, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,      'Gordok Warlock - In Combat - Cast Immolate'),
(11448, 0, 7, 0, 0, 0, 100, 0, 7000, 15000, 20000, 26000, 0, 0, 11, 8994, 32, 0, 0, 0, 0, 6, 30, 0, 0, 0, 0, 0, 0, 0,       'Gordok Warlock - In Combat - Cast Banish'),
(11448, 0, 8, 0, 0, 0, 100, 0, 5000, 9000, 20000, 25000, 0, 0, 11, 13338, 288, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,      'Gordok Warlock - In Combat - Cast Curse of Tongues'),
--
(11450, 0, 0, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                             'Gordok Reaver - On Aggro - Say Line 0'),
(11450, 0, 1, 0, 0, 0, 100, 0, 13800, 19200, 8100, 17800, 0, 0, 11, 15284, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,       'Gordok Reaver - Within 0-5 Range - Cast Cleave'),
(11450, 0, 2, 0, 0, 0, 100, 0, 9500, 14500, 14500, 23100, 0, 0, 11, 13737, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,       'Gordok Reaver - Within 0-5 Range - Cast Mortal Strike'),
(11450, 0, 3, 0, 9, 0, 100, 0, 0, 0, 7200, 9600, 0, 5, 11, 16145, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                 'Gordok Reaver - Within 0-5 Range - Cast Sunder Armor'),
(11450, 0, 4, 0, 1, 0, 100, 0, 4000, 15000, 20000, 40000, 0, 0, 10, 1, 11, 25, 6, 21, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Gordok Reaver - Out of Combat - Play Random Emote'),
--
(11501, 0, 0, 0, 9, 0, 100, 0, 0, 0, 10000, 10000, 5, 40, 11, 22886, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'King Gordok - Within 5-40 Range - Cast Berserker Charge'),
(11501, 0, 1, 0, 0, 0, 100, 0, 5000, 7000, 9000, 14000, 0, 0, 11, 15708, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,         'King Gordok - Within 0-5 Range - Cast Mortal Strike'),
(11501, 0, 2, 0, 9, 0, 100, 0, 0, 0, 7000, 12000, 0, 5, 11, 15572, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                'King Gordok - Within 0-5 Range - Cast Sunder Armor'),
(11501, 0, 3, 0, 0, 0, 100, 0, 12000, 15000, 17000, 24000, 0, 0, 11, 16727, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'King Gordok - In Combat - Cast War Stomp'),
(11501, 0, 4, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                            'King Gordok - On Aggro - Say Line 0'),
(11501, 0, 5, 6, 6, 0, 100, 512, 0, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, 14324, 100, 0, 0, 0, 0, 0, 0,                  'King Gordok - On Death - Set Data'),
(11501, 0, 6, 7, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 34, 3, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'King Gordok - On Death - Set Instance Data 3 to 3'),
(11501, 0, 7, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 12, 14353, 8, 0, 0, 0, 0, 8, 0, 0, 0, 0, 711.46, 479.36, 28.18, 0,      'King Gordok - On Death - Summon Creature'),
(11501, 0, 8, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 38, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                           'King Gordok - On Aggro - Call For Help'),
--
(11859, 0, 0, 0, 9, 0, 100, 0, 0, 0, 30000, 30000, 0, 30, 11, 89, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                'Doomguard Minion - In Combat - Cast Cripple'),
(11859, 0, 1, 0, 0, 0, 100, 0, 12000, 15000, 20000, 25000, 0, 0, 11, 16727, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Doomguard Minion - In Combat - Cast War Stomp'),
(11859, 0, 2, 0, 0, 0, 100, 0, 1000, 10000, 15000, 30000, 0, 0, 11, 21949, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Doomguard Minion - In Combat - Cast Rend'),
(11859, 0, 3, 0, 0, 0, 100, 0, 5000, 8000, 18000, 24000, 0, 0, 11, 16005, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,        'Doomguard Minion - In Combat - Cast Rain of Fire'),
(11859, 0, 4, 0, 0, 0, 100, 0, 7000, 14000, 17000, 22000, 0, 0, 11, 15090, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Doomguard Minion - In Combat - Cast Dispel Magic'),
--
(13036, 0, 0, 0, 0, 0, 100, 0, 4000, 8000, 3000, 8000, 0, 0, 11, 13738, 32, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,          'Gordok Mastiff - Within 0-5 Range - Cast Rend'),
(13036, 0, 1, 0, 9, 0, 100, 0, 0, 0, 21100, 21800, 0, 5, 11, 3604, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,               'Gordok Mastiff - Within 0-5 Range - Cast Tendon Rip'),
(13160, 0, 0, 0, 9, 0, 100, 0, 0, 0, 9050, 17500, 0, 5, 11, 5416, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                'Carrion Swarmer - Within 0-5 Range - Cast Venom Sting'),
--
(14321, 0, 0, 0, 9, 0, 100, 0, 0, 0, 10000, 10000, 8, 25, 11, 15749, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Guard Fengus - Within 8-25 Range - Cast Shield Charge'),
(14321, 0, 1, 0, 105, 0, 100, 0, 0, 0, 9000, 12000, 0, 5, 11, 11972, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,              'Guard Fengus - Target Casting - Cast Shield Bash'),
(14321, 0, 2, 0, 0, 0, 100, 0, 5000, 8000, 8000, 12000, 0, 0, 11, 15580, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,         'Guard Fengus - Within 0-5 Range - Cast Strike'),
(14321, 0, 3, 0, 0, 0, 100, 0, 7000, 12000, 12000, 15000, 0, 0, 11, 10101, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 0,      'Guard Fengus - Within 0-10 Range - Cast Knock Away'),
(14321, 0, 4, 5, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 8269, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Guard Fengus - Between Health 0-30% - Cast Frenzy'),
(14321, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                           'Guard Fengus - On Frenzy - Say Line 0'),
(14321, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 39, 40, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Guard Fengus - On Frenzy - Call For Help'),
(14321, 0, 7, 0, 6, 0, 100, 512, 0, 0, 0, 0, 0, 0, 34, 4, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Guard Fengus - On Death - Set Instance Data 4 to 1'),
(14321, 0, 8, 0, 62, 0, 100, 0, 5734, 0, 0, 0, 0, 0, 11, 22817, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                   'Guard Fengus - On Gossip Select - Cast Fengus\' Ferocity'),
--
(14322, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 20000, 20000, 0, 0, 88, 1432200, 1432202, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Stomper Kreeg - Out of Combat - Random Range Script9'),
(14322, 0, 1, 0, 0, 0, 100, 0, 7000, 12000, 15000, 22000, 0, 0, 11, 22833, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,        'Stomper Kreeg - In Combat - Cast Booze Spit'), -- test!
(14322, 0, 2, 0, 0, 0, 100, 0, 12000, 15000, 12000, 16000, 0, 0, 11, 16740, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Stomper Kreeg - In Combat - Cast War Stomp'),
(14322, 0, 3, 0, 0, 0, 100, 0, 2000, 6000, 7000, 10000, 0, 0, 11, 15577, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Stomper Kreeg - In Combat - Cast Whirlwind'),
(14322, 0, 4, 5, 2, 0, 100, 1, 0, 50, 0, 0, 0, 0, 11, 22835, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Stomper Kreeg - Between Health 0-50% - Cast Drunken Rage'),
(14322, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                           'Stomper Kreeg - Between Health 0-50% - Say Line 0'),
(14322, 0, 6, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 8269, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Stomper Kreeg - Between Health 0-50% - Cast Frenzy'),
(14322, 0, 7, 0, 62, 0, 100, 512, 5721, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                     'Stomper Kreeg - On Gossip Select - Close Gossip'),
--
(14323, 0, 0, 0, 9, 0, 100, 0, 0, 0, 10000, 10000, 8, 25, 11, 15749, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Guard Slip\'kik - Within 8-25 Range - Cast Shield Charge'),
(14323, 0, 1, 0, 105, 0, 100, 0, 0, 0, 9000, 12000, 0, 5, 11, 11972, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,              'Guard Slip\'kik - Target Casting - Cast Shield Bash'),
(14323, 0, 2, 0, 0, 0, 100, 0, 5000, 8000, 8000, 12000, 0, 0, 11, 15580, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,         'Guard Slip\'kik - Within 0-5 Range - Cast Strike'),
(14323, 0, 3, 4, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 8269, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Guard Slip\'kik - Between Health 0-30% - Cast Frenzy'),
(14323, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                           'Guard Slip\'kik - On Frenzy - Say Line 0'),
(14323, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 39, 40, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Guard Slip\'kik - On Frenzy - Call For Help'),
(14323, 0, 6, 0, 25, 0, 100, 512, 0, 0, 0, 0, 0, 0, 211, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Guard Slip\'kik - On Reset - Set No Event Flag Reset'),
(14323, 0, 7, 0, 38, 0, 100, 512, 1, 1, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Guard Slip\'kik - On Data Set - Set Event Phase'),
(14323, 0, 8, 9, 34, 1, 100, 512, 2, 16, 0, 0, 0, 0, 18, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Guard Slip\'kik - On Movement Inform - Set Unit Flags'),
(14323, 0, 9, 10, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Guard Slip\'kik - On Movement Inform - Set React Passive'),
(14323, 0, 10, 11, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 20, 179512, 50, 0, 0, 0, 0, 0, 0,               'Guard Slip\'kik - On Movement Inform - Remove Trap'),
(14323, 0, 11, 12, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Guard Slip\'kik - On Movement Inform - Say Line 1'),
(14323, 0, 12, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 22856, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Guard Slip\'kik - On Movement Inform - Cast Ice Lock'),
(14323, 0, 13, 0, 6, 0, 100, 512, 0, 0, 0, 0, 0, 0, 34, 4, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Guard Slip\'kik - On Death - Set Instance Data 4 to 1'),
(14323, 0, 14, 0, 62, 0, 100, 512, 5733, 0, 0, 0, 0, 0, 11, 22820, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                'Guard Slip\'kik - On Gossip Select - Cast Slip\'kik\'s Savvy'),
--
(14325, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                            'Captain Kromcrush - On Aggro - Say Line 0'),
(14325, 0, 1, 0, 0, 0, 100, 0, 2000, 6000, 7000, 10000, 0, 0, 11, 22859, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,         'Captain Kromcrush - Within 0-5 Range - Cast Mortal Cleave'),
(14325, 0, 2, 0, 0, 0, 100, 0, 9000, 18000, 15000, 19000, 0, 0, 11, 19134, 1, 0, 0, 0, 0, 6, 10, 0, 0, 0, 0, 0, 0, 0,       'Captain Kromcrush - Within 0-10 Range - Cast Frightening Shout'),
(14325, 0, 3, 4, 2, 0, 100, 1, 0, 75, 0, 0, 0, 0, 11, 22860, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Captain Kromcrush - Between 0-75% Health - Cast Call Reavers'),
(14325, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                           'Captain Kromcrush - On Call Reavers - Say Line 1'),
(14325, 0, 5, 6, 0, 0, 100, 0, 12000, 15000, 19000, 25000, 0, 0, 11, 22857, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Captain Kromcrush - In Combat - Cast Retaliation'),
(14325, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                           'Captain Kromcrush - On Retaliation - Say Line 2'),
(14325, 0, 7, 8, 62, 0, 100, 512, 5738, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                     'Captain Kromcrush - On Gossip Option Selected - Close Gossip'),
(14325, 0, 8, 9, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Captain Kromcrush - On Gossip Option Selected - Say Line 3'),
(14325, 0, 9, 10, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 18, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Captain Kromcrush - On Gossip Option Selected - Set Unit Flags'),
(14325, 0, 10, 11, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Captain Kromcrush - On Gossip Option Selected - Set React Passive'),
(14325, 0, 11, 12, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 48, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Captain Kromcrush - On Gossip Option Selected - Set Active'),
(14325, 0, 12, 13, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Captain Kromcrush - On Gossip Option Selected - Set Npc Flags'),
(14325, 0, 13, 14, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Captain Kromcrush - On Gossip Option Selected - Cast Enrage'),
(14325, 0, 14, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 67, 1, 2500, 2500, 0, 0, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Captain Kromcrush - On Gossip Option Selected - Create Timed Event'),
(14325, 0, 15, 0, 40, 0, 100, 0, 69, 14325, 0, 0, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Captain Kromcrush - On Reached WP69 - Say Line 4'),
(14325, 0, 16, 17, 40, 0, 100, 512, 76, 14325, 0, 0, 0, 0, 81, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Captain Kromcrush - On Reached WP76 - Set Npc Flags'),
(14325, 0, 17, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 19, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Captain Kromcrush - On Reached WP76 - Set Remove Flags'),
(14325, 0, 18, 0, 59, 0, 100, 512, 1, 0, 0, 0, 0, 0, 53, 1, 14325, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Captain Kromcrush - On Timed Event - Start WP'),
(14325, 0, 19, 0, 60, 0, 100, 769, 5000, 5000, 5000, 5000, 0, 0, 2, 45, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Captain Kromcrush - On Update - Set Faction'),
(14325, 0, 20, 0, 60, 0, 100, 512, 5000, 5000, 5000, 5000, 0, 0, 81, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Captain Kromcrush - On Update - Set Npc Flags'),
(14325, 0, 21, 0, 25, 0, 100, 769, 0, 0, 0, 0, 0, 0, 81, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Captain Kromcrush - On Reset - Set Npc Flags'),
(14325, 0, 22, 0, 6, 0, 100, 512, 0, 0, 0, 0, 0, 0, 34, 4, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Captain Kromcrush - On Death - Set Instance Data 4 to 1'),
--
(14326, 0, 0, 0, 9, 0, 100, 0, 0, 0, 10000, 10000, 8, 25, 11, 15749, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Guard Mol\'dar - Within 8-25 Range - Cast Shield Charge'),
(14326, 0, 1, 0, 105, 0, 100, 0, 0, 0, 9000, 12000, 0, 5, 11, 11972, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,              'Guard Mol\'dar - Target Casting - Cast Shield Bash'),
(14326, 0, 2, 0, 0, 0, 100, 0, 5000, 8000, 8000, 12000, 0, 0, 11, 15580, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,         'Guard Mol\'dar - Within 0-5 Range - Cast Strike'),
(14326, 0, 3, 4, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 8269, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Guard Mol\'dar - Between Health 0-30% - Cast Frenzy'),
(14326, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                           'Guard Mol\'dar - On Frenzy - Say Line 0'),
(14326, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 39, 40, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Guard Mol\'dar - On Frenzy - Call For Help'),
(14326, 0, 6, 0, 6, 0, 100, 512, 0, 0, 0, 0, 0, 0, 34, 4, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Guard Mol\'dar - On Death - Set Instance Data 4 to 1'),
(14326, 0, 7, 0, 62, 0, 100, 0, 5735, 0, 0, 0, 0, 0, 11, 22818, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                   'Guard Mol\'dar - On Gossip Select - Cast Mol\'dar\'s Moxie');


/* Dire Maul West - smart scripts */
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (11477);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (11477);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(11477, 0, 0, 0, 6, 0, 100, 513, 0, 0, 0, 0, 0, 0, 11, 22825, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Rotting Highborne - On Just Died - Cast Summon Cadaverous Worm');
