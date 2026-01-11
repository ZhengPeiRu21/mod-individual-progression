/* smart scripts */
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(11318, 11319, 11320, 11322, 11323, 11324, 11517, 11518, 11519, 11520);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(11318, 11319, 11320, 11322, 11323, 11324, 11517, 11518, 11519, 11520);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(11318, 0, 0, 0, 0, 0, 100, 0, 6000, 8000, 5000, 11000, 0, 0, 11, 11976, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Ragefire Trogg - In Combat - Cast Strike'),
(11319, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Ragefire Shaman - In Combat - Cast Lightning Bolt'),
(11319, 0, 1, 0, 74, 0, 100, 0, 0, 0, 30000, 35000, 30, 40, 11, 11986, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,       'Ragefire Shaman - Friendly At 30% Health - Cast Healing Wave'),
(11319, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Ragefire Shaman - Between 0-15% Health - Flee For Assist (No Repeat)'),
(11320, 0, 0, 0, 0, 0, 100, 0, 2000, 15000, 5000, 14000, 0, 0, 11, 18070, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Earthborer - Within 0-5 Range - Cast Earthborer Acid'),
(11322, 0, 0, 0, 0, 0, 100, 0, 3000, 10000, 10000, 19000, 0, 0, 11, 18266, 32, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0, 'Searing Blade Cultist - In Combat - Cast Curse of Agony'),
(11323, 0, 0, 0, 0, 0, 100, 0, 6000, 15000, 7000, 15000, 0, 0, 11, 8242, 32, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,    'Searing Blade Enforcer - Within 0-5 Range - Cast Shield Slam'),
(11324, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 12746, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Searing Blade Warlock - Out of Combat - Cast Summon Voidwalker (No Repeat)'),
(11324, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20791, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Searing Blade Warlock - In Combat - Cast Shadow Bolt'),
(11324, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Searing Blade Warlock - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(11517, 0, 0, 0, 0, 0, 100, 0, 8000, 15000, 5000, 12000, 0, 0, 11, 40505, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Oggleflint - Within 0-5 Range - Cast Cleave'),
(11518, 0, 0, 0, 0, 0, 100, 0, 1000, 1000, 7000, 16000, 0, 0, 11, 18267, 32, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 0,  'Jergosh the Invoker - Within 0-30 Range - Cast Curse of Weakness'),
(11518, 0, 1, 0, 0, 0, 100, 0, 3000, 3000, 6000, 23000, 0, 0, 11, 20800, 32, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 0,  'Jergosh the Invoker - Within 0-30 Range - Cast Immolate'),
(11519, 0, 0, 0, 9, 0, 100, 0, 0, 0, 10200, 15000, 0, 5, 11, 744, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Bazzalan - Within 0-5 Range - Cast Poison'),
(11519, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4900, 15700, 0, 5, 11, 14873, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Bazzalan - Within 0-5 Range - Cast Sinister Strike'),
(11520, 0, 0, 0, 0, 0, 100, 0, 7000, 12000, 6000, 16000, 0, 0, 11, 18072, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 0,  'Taragaman the Hungerer - Within 0-10 Range - Cast Uppercut'),
(11520, 0, 1, 0, 0, 0, 100, 0, 9000, 14000, 10000, 18000, 0, 0, 11, 11970, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Taragaman the Hungerer - In Combat - Cast Fire Nova');
