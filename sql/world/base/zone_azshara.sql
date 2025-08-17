/* smart scripts */
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (6125);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(6116, 6117, 6118, 6126, 6127, 6350, 6372, 6379, 6648, 8660);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(6116, 6117, 6118, 6125, 6126, 6127, 6350, 6372, 6379, 6648, 8660);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(6116, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 11, 12542, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                  'Highborne Apparition - Between 0-15% Health - Cast Fear (No Repeat)'),
(6117, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 90000, 90000, 0, 0, 11, 12544, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Highborne Lichling - Out of Combat - Cast Frost Armor'),
(6117, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20822, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Highborne Lichling - In Combat - Cast Frostbolt'),
(6118, 0, 0, 0, 0, 0, 100, 0, 3000, 6000, 120000, 120000, 0, 0, 11, 21007, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Varo\'then\'s Ghost - In Combat - Cast Curse of Weakness'),
(6126, 0, 0, 0, 9, 0, 100, 0, 0, 0, 20000, 45000, 0, 10, 11, 7098, 96, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Haldarr Trickster - In Combat - Cast Curse of Mending'),
(6127, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 11939, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Haldarr Felsworn - Out of Combat - Cast Summon Imp'),
(6127, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20825, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Haldarr Felsworn - In Combat - Cast Shadow Bolt'),
(6350, 0, 0, 0, 9, 0, 100, 0, 3000, 4000, 12000, 13000, 0, 5, 11, 13444, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Makrinni Razorclaw - Within 0-5 Range - Cast Sunder Armor'),
(6372, 0, 0, 0, 9, 0, 100, 0, 10000, 19100, 25300, 46800, 0, 5, 11, 3604, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Makrinni Snapclaw  - Within 0-5 Range - Cast Tendon Rip'),
(6379, 0, 0, 0, 9, 0, 100, 1, 0, 0, 0, 0, 5, 20, 11, 6268, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Thunderhead Patriarch - Within 5-20 Range - Cast Rushing Charge'),
(6648, 0, 0, 0, 0, 0, 100, 0, 7000, 12000, 19000, 23000, 0, 0, 11, 13445, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Antilos - Within 0-5 Range - Cast Rend'),
(6648, 0, 1, 0, 9, 0, 100, 0, 0, 0, 11000, 15000, 0, 5, 11, 40504, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Antilos - Within 0-5 Range - Cast Cleave'),
(6648, 0, 2, 0, 0, 0, 100, 0, 11000, 15000, 12000, 15000, 0, 0, 11, 5708, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Antilos - Within 0-5 Range - Cast Swoop'),
(8660, 0, 0, 0, 0, 0, 100, 0, 0, 0, 4000, 6000, 0, 0, 11, 20793, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'The Evalcharr - In Combat - Cast Fireball'),
(8660, 0, 1, 0, 0, 0, 100, 0, 8000, 13000, 12000, 15000, 0, 0, 11, 15797, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'The Evalcharr - In Combat - Cast Lightning Breath');


-- Quest: Kim'jael's "Missing" Equipment, fix drop rate 'Some Rune', was 100%
UPDATE `creature_loot_template` SET `Chance` = 15 WHERE `Item` = 13815;

-- Quest: Encoded Fragments, description was using tbc version (changed in ~2.1)
DELETE FROM `creature_loot_template` WHERE `item`= 20023 AND `entry` IN (6377, 6378, 6379, 6380, 8762); -- remove quest drops TBC version

UPDATE `quest_template` SET 
`QuestDescription` = 'Lord Ravenholdt has asked a favor of us both. He wishes to remove the enchantment from this bag.$b$b
Unfortunately, some of my books on the subject of dispelling were taken recently, only to be destroyed by savages.  The remains of my books are still valuable to me.$b$b
If you can bring me enough of the encoded fragments, I can piece them back together.  Your best chance is to kill forest oozes, since they have a tendency to pick up just about anything.  
You\'ll find them in northeast Azshara.' WHERE `ID` = 8235;
