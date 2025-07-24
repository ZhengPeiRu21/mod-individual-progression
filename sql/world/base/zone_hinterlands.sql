-- smart scripts
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (2707, 2926, 8215);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (2707, 2926, 8215);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(2707, 0, 0, 0, 9, 0, 100, 0, 8000, 8000, 15000, 25000, 0, 5, 11, 3609, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Shadra - Within 0-5 Range - Cast Paralyzing Poison'),
(2707, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 13299, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Shadra - On Reset - Cast Poison Proc'),
(2926, 0, 0, 0, 9, 0, 100, 0, 4000, 5000, 17000, 19000, 0, 5, 11, 7367, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Silvermane Stalker - Within 0-5 Range - Cast Infected Bite'), 
(2926, 0, 1, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 22766, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Silvermane Stalker - Out of Combat - Cast Sneak'),
(8215, 0, 0, 0, 0, 0, 100, 0, 3000, 12000, 9000, 14000, 0, 0, 11, 5568, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Grimungous - In Combat - Cast Trample'),
(8215, 0, 1, 0, 0, 0, 100, 0, 14000, 20000, 14000, 20000, 0, 0, 11, 11876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Grimungous - In Combat - Cast War Stomp');


-- Troll Necklace Bounty quest should be for Alliance only
UPDATE `quest_template` SET `AllowableRaces` = 1101 WHERE `ID` = 2880;

-- Shadra incorrect display scale and missing smart AI
UPDATE `creature_template_model` SET `DisplayScale` = 5  WHERE `CreatureID` = 2707;



