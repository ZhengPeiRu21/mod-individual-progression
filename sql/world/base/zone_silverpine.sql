-- Call of Water (Shaman)
UPDATE `quest_template` SET `LogDescription`='Speak to the Minor Manifestation of Water in Silverpine Forest.' WHERE `ID`=100;

-- smart scripts
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` BETWEEN 2060 AND 2068;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` BETWEEN 2060 AND 2068;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(2060, 0, 1, 0, 7, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 1500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Councilman Smithers  - On Evade - Despawn In 1500 ms'), -- they should not transform into worgen
(2061, 0, 1, 0, 7, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 1500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Councilman Thatcher  - On Evade - Despawn In 1500 ms'),
(2062, 0, 1, 0, 7, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 1500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Councilman Hendricks - On Evade - Despawn In 1500 ms'),
(2063, 0, 1, 0, 7, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 1500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Councilman Wilhelm   - On Evade - Despawn In 1500 ms'),
(2064, 0, 1, 0, 7, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 1500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Councilman Hartin    - On Evade - Despawn In 1500 ms'),
(2065, 0, 1, 0, 7, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 1500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Councilman Cooper    - On Evade - Despawn In 1500 ms'),
(2066, 0, 1, 0, 7, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 1500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Councilman Higarth   - On Evade - Despawn In 1500 ms'),
(2067, 0, 1, 0, 7, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 1500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Councilman Brunswick - On Evade - Despawn In 1500 ms'),
(2068, 0, 1, 0, 7, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 1500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lord Mayor Morrison  - On Evade - Despawn In 1500 ms');
