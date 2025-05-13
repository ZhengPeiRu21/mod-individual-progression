/* Silvermane Stalker (2926) should have sneak spell 22766 */
DELETE FROM `smart_scripts` WHERE `entryorguid` = 2926;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(2926, 0, 0, 0, 0, 0, 100, 0, 4000, 5000, 17000, 19000, 0, 0, 11, 7367, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Silvermane Stalker - In Combat - Cast Infected Bite'), 
(2926, 0, 1, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 22766, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Silvermane Stalker - Out of Combat - Cast \'Sneak\'');

-- Troll Necklace Bounty quest should be for Alliance only
UPDATE `quest_template` SET `AllowableRaces` = 1101 WHERE `ID` = 2880;
