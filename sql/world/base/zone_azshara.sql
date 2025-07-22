-- smart scripts
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (6350, 6372, 6379);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (6350, 6372, 6379);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(6350, 0, 0, 0, 9, 0, 100, 0, 3000, 4000, 12000, 13000, 0, 5, 11, 13444, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Makrinni Razorclaw - Within 0-5 Range - Cast Sunder Armor'),
(6372, 0, 0, 0, 9, 0, 100, 0, 10000, 19100, 25300, 46800, 0, 5, 11, 3604, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Makrinni Snapclaw  - Within 0-5 Range - Cast Tendon Rip'),
(6379, 0, 0, 0, 9, 0, 100, 1, 0, 0, 0, 0, 5, 20, 11, 6268, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Thunderhead Patriarch - Within 5-20 Range - Cast Rushing Charge');

-- Quest: Kim'jael's "Missing" Equipment, fix drop rate 'Some Rune', was 100%
UPDATE `creature_loot_template` SET `Chance` = 15 WHERE `Item` = 13815;

-- Quest: Encoded Fragments, description was using tbc version (changed in ~2.1)
DELETE FROM `creature_loot_template` WHERE `item`= 20023 AND `entry` IN (6377, 6378, 6379, 6380, 8762); -- remove quest drops TBC version

UPDATE `quest_template` SET 
`QuestDescription` = 'Lord Ravenholdt has asked a favor of us both. He wishes to remove the enchantment from this bag.$b$b
    Unfortunately, some of my books on the subject of dispelling were taken recently, only to be destroyed by savages.  The remains of my books are still valuable to me.$b$b
    If you can bring me enough of the encoded fragments, I can piece them back together.  Your best chance is to kill forest oozes, since they have a tendency to pick up just about anything.  
    You\'ll find them in northeast Azshara.' WHERE `ID` = 8235;
