/* smart scripts */
-- UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN ();
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(11685, 11686, 11687, 11688, 11777, 11787, 11790, 11791, 11792, 11793, 11794, 12216, 12223, 12224, 12236, 13141, 13142, 13696, 13718);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(11685, 11686, 11687, 11688, 11777, 11787, 11790, 11791, 11792, 11793, 11794, 12216, 12223, 12224, 12236, 13141, 13142, 13696, 13718);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(11685, 0, 0, 0, 0, 0, 100, 0, 7000, 12000, 21000, 25000, 0, 0, 11, 11639, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Maraudine Priest - In Combat - Cast Shadow Word: Pain'),
(11685, 0, 1, 0, 0, 0, 100, 0, 3400, 4100, 7000, 10000, 0, 0, 11, 16568, 64, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, 0, 'Maraudine Priest - Within 0-20 Range - Cast Mind Flay'),
(11686, 0, 0, 0, 110, 0, 100, 1, 0, 0, 0, 0, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Ghostly Raider - Outside 30 Range - Start Combat Movement'),
(11686, 0, 1, 0, 110, 0, 100, 1, 0, 0, 0, 0, 0, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Ghostly Raider - Within 0-30 Range - Stop Combat Movement'),
(11686, 0, 2, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Ghostly Raider - Within 5-30 Range - Cast Shoot'),
(11686, 0, 3, 0, 9, 0, 100, 0, 0, 5000, 8000, 12000, 5, 30, 11, 17174, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Ghostly Raider - Within 5-30 Range - Cast Concussive Shot'),
(11686, 0, 4, 0, 9, 0, 100, 0, 0, 0, 12000, 25000, 0, 20, 11, 6533, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Ghostly Raider - Within 0-20 Range - Cast Net'),
(11687, 0, 0, 0, 9, 0, 100, 0, 0, 0, 6000, 9000, 0, 5, 11, 11976, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Ghostly Marauder - Within 0-5 Range - Cast Strike'),
(11688, 0, 0, 0, 0, 0, 100, 0, 0, 0, 25000, 35000, 0, 0, 11, 21048, 96, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,        'Cursed Centaur - In Combat  - Cast Curse of the Tribes'),
(11777, 0, 0, 0, 9, 0, 100, 0, 0, 0, 6000, 10000, 0, 10, 11, 5568, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Shadowshard Rumbler - Within 0-10 Range - Cast Trample'),
(11787, 0, 0, 0, 9, 0, 100, 0, 0, 0, 7000, 12000, 0, 5, 11, 14120, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Rock Borer - Within 0-5 Range - Cast Tunneler Acid'),
(11790, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 21061, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Putridus Satyr - On Reset - Cast Putrid Breath'),
(11790, 0, 1, 0, 0, 0, 100, 0, 8000, 15000, 12000, 15000, 0, 5, 11, 14873, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0, 'Putridus Satyr - Within 0-5 Range - Cast Sinister Strike'),
(11790, 0, 2, 0, 0, 0, 100, 0, 7000, 11000, 7000, 11000, 0, 0, 11, 12540, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,  'Putridus Satyr - Within 0-5 Range - Cast Gouge'),
(11791, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 21061, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Putridus Trickster - On Reset - Cast Putrid Breath'),
(11791, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Putridus Trickster - On Reset - Cast Thrash'),
(11791, 0, 2, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 13299, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Putridus Trickster - On Reset - Cast Poison Proc'),
(11791, 0, 3, 0, 67, 0, 100, 0, 5000, 8000, 5000, 8000, 0, 5, 11, 15657, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Putridus Trickster - Behind Target - Cast Backstab'),
(11792, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 21061, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Putridus Shadowstalker - On Reset - Cast Putrid Breath'),
(11792, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 22766, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Putridus Shadowstalker - On Reset - Cast Sneak'),
(11792, 0, 2, 0, 9, 0, 100, 0, 0, 5000, 12000, 15000, 0, 5, 11, 9080, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Putridus Shadowstalker - In Combat - Cast Hamstring'),
(11792, 0, 3, 0, 0, 0, 100, 0, 8000, 16000, 21000, 30000, 0, 0, 11, 15087, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Putridus Shadowstalker - In Combat - Cast Evasion'),
(11793, 0, 0, 0, 4, 0, 50, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Celebrian Dryad - On Aggro - Say Line 0'),
(11793, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8601, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Celebrian Dryad - On Reset - Cast Slowing Poison Proc'),
(11793, 0, 2, 0, 0, 0, 100, 0, 8000, 16000, 12000, 16000, 0, 0, 11, 17201, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0, 'Celebrian Dryad - Within 0-30 Range - Cast Dispel Magic'),
(11793, 0, 3, 0, 110, 0, 100, 1, 0, 0, 0, 0, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Celebrian Dryad - Outside 30 Range - Start Combat Movement'),
(11793, 0, 4, 0, 110, 0, 100, 1, 0, 0, 0, 0, 0, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Celebrian Dryad - Within 0-30 Range - Stop Combat Movement'),
(11793, 0, 5, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 16000, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Celebrian Dryad - Within 5-30 Range - Cast Throw'),
(11794, 0, 0, 0, 4, 0, 50, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Sister of Celebrian - On Aggro - Say Line 0'),
(11794, 0, 1, 0, 110, 0, 100, 1, 0, 0, 0, 0, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Sister of Celebrian - Outside 30 Range - Start Combat Movement'),
(11794, 0, 2, 0, 110, 0, 100, 1, 0, 0, 0, 0, 0, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Sister of Celebrian - Within 0-30 Range - Stop Combat Movement'),
(11794, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 15795, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Sister of Celebrian - Within 5-30 Range - Cast Throw'),
(11794, 0, 4, 0, 9, 0, 100, 0, 0, 0, 5000, 9000, 0, 5, 11, 14516, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Sister of Celebrian - Within 0-5 Range - Cast Strike'),
(12216, 0, 0, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 0, 30, 11, 21067, 96, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Poison Sprite - Within 0-30 Range - Cast Poison Bolt'),
(12216, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Poison Sprite - Between 0-15% Health - Flee For Assist (No Repeat)'),
(12223, 0, 0, 0, 0, 0, 100, 0, 4000, 7000, 6000, 11000, 0, 0, 11, 11428, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,    'Cavern Lurker - Within 0-5 Range - Cast Knockdown'),
(12224, 0, 0, 0, 2, 0, 100, 0, 0, 75, 21000, 26000, 0, 0, 11, 7948, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Cavern Shambler - Between 0-75% Health - Cast Wild Regeneration'),
(12224, 0, 1, 0, 0, 0, 100, 0, 6000, 11000, 6000, 11000, 0, 0, 11, 16790, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,   'Cavern Shambler - In Combat - Cast Knockdown'),
--
(12236, 0, 0, 0, 110, 0, 100, 1, 0, 0, 0, 0, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Lord Vyletongue - Outside 30 Range - Start Combat Movement'),
(12236, 0, 1, 0, 110, 0, 100, 1, 0, 0, 0, 0, 0, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Lord Vyletongue - Within 0-30 Range - Stop Combat Movement'),
(12236, 0, 2, 0, 9, 0, 100, 0, 0, 0, 2000, 2000, 5, 30, 11, 16100, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Lord Vyletongue - Within 5-30 Range - Cast Shoot'),
(12236, 0, 3, 0, 0, 0, 100, 0, 3000, 7000, 7000, 11000, 0, 0, 11, 21390, 0, 0, 0, 0, 0, 28, 30, 1, 1, 5, 0, 0, 0, 0,  'Lord Vyletongue - Within 5-30 Range - Cast Multi-Shot'),
(12236, 0, 4, 0, 0, 0, 100, 0, 15000, 15000, 15000, 15000, 0, 0, 11, 21655, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lord Vyletongue - In Combat - Cast Blink'),
(12236, 0, 5, 0, 0, 0, 100, 0, 13000, 13000, 15000, 15000, 0, 0, 11, 7964, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Lord Vyletongue - In Combat - Cast Smoke Bomb'),
--
(13141, 0, 0, 0, 9, 0, 100, 0, 0, 5000, 7000, 10000, 0, 5, 11, 13446, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,       'Deeprot Stomper - In Combat - Cast Strike'),
(13141, 0, 1, 0, 0, 0, 100, 0, 11000, 16000, 15000, 21000, 0, 0, 11, 11876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Deeprot Stomper - In Combat - Cast War Stomp'),
(13142, 0, 0, 0, 1, 0, 100, 0, 1000, 5000, 90000, 90000, 0, 0, 11, 21337, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Deeprot Tangler - Out of Combat - Cast Thorns'),
(13142, 0, 1, 0, 0, 0, 100, 0, 4000, 11000, 17000, 21000, 0, 0, 11, 21331, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0, 'Deeprot Tangler - In Combat - Cast Entangling Roots'),
(13696, 0, 0, 0, 0, 0, 100, 0, 4000, 11000, 30000, 45000, 0, 5, 11, 5413, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,   'Noxxious Scion - Within 0-5 Range - Cast Noxious Catalyst'),
(13696, 0, 1, 0, 0, 0, 100, 0, 1000, 2000, 14000, 21000, 0, 0, 11, 21068, 96, 1, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0, 'Noxxious Scion - In Combat - Cast Corruption'),
(13718, 0, 0, 0, 0, 0, 100, 0, 5400, 6200, 25900, 34600, 0, 0, 11, 15848, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'The Nameless Prophet - In Combat - Cast Festering Rash'),
(13718, 0, 1, 0, 0, 0, 100, 0, 3000, 11000, 30000, 30000, 0, 0, 11, 16098, 64, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'The Nameless Prophet - In Combat - Cast Curse of Blood');


-- Legends of Maraudon
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Celebras the Redeemed.' WHERE `ID` = 7044;

-- The Pariah's Instructions
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Centaur Pariah in Desolace.' WHERE `ID` = 7067;
