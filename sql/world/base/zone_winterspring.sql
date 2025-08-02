DELETE FROM `creature_text` WHERE `CreatureID` IN (7451, 10200);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(7451, 0, 0, '$s becomes enraged!', 16, 0, 100, 0, 0, 0, 10677, 0,  'Raging Owlbeast enrage at 30%'),
(10200, 0, 0, '$s becomes enraged!', 16, 0, 100, 0, 0, 0, 10677, 0, 'Rak shiri enrage at 30%');

-- Pooled Treasure Chests
DELETE FROM `pool_template` WHERE `entry` IN (66002, 66003);
INSERT INTO `pool_template` (`entry`,`max_limit`,`description`) VALUES
(66002, 1, 'Treasures - Winterspring'),
(66003, 1, 'Treasures - Winterspring');

UPDATE `gameobject` SET `spawntimesecs` = 900 WHERE `guid` IN (49089, 49090, 49091, 85796, 85798, 85799, 85801, 85803);

DELETE FROM `pool_gameobject` WHERE `pool_entry` IN (66002, 66003);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
(49091, 66002, 0, 'Solid Chest, Winterfall Village, node 1'),
(85798, 66002, 0, 'Solid Chest, Winterfall Village, node 2'),
(85799, 66002, 0, 'Solid Chest, Winterfall Village, node 3'),
(85803, 66002, 0, 'Solid Chest, Winterfall Village, node 4'),
--
(49089, 66003, 0, 'Solid Chest, Timbermaw Post, node 1'),
(49090, 66003, 0, 'Solid Chest, Timbermaw Post, node 2'),
(85796, 66003, 0, 'Solid Chest, Timbermaw Post, node 3'),
(85801, 66003, 0, 'Solid Chest, Timbermaw Post, node 4');

-- smart scripts
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (7451, 7523, 7524, 10200, 10684, 10737, 14372);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (7451, 7523, 7524, 10200, 10684, 10737, 14372);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(7451, 0, 0, 1, 2, 0, 100, 0, 0, 30, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Raging Owlbeast - Between 0-30% Health - Cast Enrage'),
(7451, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Raging Owlbeast - On Enrage - Say Line 0'),
--
(7523, 0, 2, 0, 38, 0, 100, 512, 1, 1, 0, 0, 0, 0, 2, 124, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Suffering Highborne  - On Data Set 1 1 - Set Faction 124'),
(7523, 0, 3, 0, 38, 0, 100, 512, 2, 2, 0, 0, 0, 0, 2, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Suffering Highborne  - On Data Set 2 2 - Set Faction 21'),
(7523, 0, 4, 0, 9, 0, 100, 0, 3000, 6000, 13000, 19000, 0, 30, 11, 14868, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Suffering Highborne  - Within 0-30 Range - Cast Curse of Agony'),
(7524, 0, 2, 0, 38, 0, 100, 512, 1, 1, 0, 0, 0, 0, 2, 124, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Anguished Highborne  - On Data Set 1 1 - Set Faction 124'),
(7524, 0, 3, 0, 38, 0, 100, 512, 2, 2, 0, 0, 0, 0, 2, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Anguished Highborne  - On Data Set 2 2 - Set Faction 21'),
(7524, 0, 4, 0, 9, 0, 100, 0, 2200, 3400, 9800, 12700, 0, 30, 11, 13860, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Anguished Highborne  - Within 0-30 Range - Cast Mind Blast'),
(10684, 0, 0, 0, 20, 0, 100, 0, 5248, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Remorseful Highborne - On Quest Tormented by the Past Finished - Say Line 0'),
(10684, 0, 1, 0, 9, 0, 100, 0, 2200, 3400, 9800, 12700, 0, 30, 11, 13860, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Remorseful Highborne - Within 0-30 Range - Cast Mind Blast'),
--
(10200, 0, 0, 1, 2, 0, 100, 0, 0, 30, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Rak shiri - Between 0-30% Health - Cast Enrage'),
(10200, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Rak shiri - On Enrage - Say Line 0'),
(10200, 0, 2, 0, 2, 0, 100, 0, 0, 60, 15000, 21000, 0, 0, 11, 7399, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,       'Rak shiri - Between 0-60% Health - Cast Terrify'),
--
(10737, 0, 0, 0, 0, 0, 100, 0, 5000, 5000, 5000, 10000, 0, 0, 11, 14100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Shy-Rotam - In Combat - Cast Terrifying Roar '),
(10737, 0, 1, 0, 9, 0, 100, 0, 7000, 9000, 22000, 27000, 0, 5, 11, 13443, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Shy-Rotam - Within 0-5 Range - Cast Rend'),
(10737, 0, 2, 0, 9, 0, 100, 0, 2000, 3000, 15000, 20000, 0, 5, 11, 3604, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Shy-Rotam - Within 0-5 Range - Cast Tendon Rip'),
(10737, 0, 3, 0, 2, 0, 100, 1, 0, 50, 0, 0, 0, 0, 12, 10741, 1, 180000, 0, 0, 0, 8, 0, 0, 0, 0, 8074.84, -3840, 690.061, 4.6, 'Shy-Rotam - Between 0-50% health - Summon Creature Sian-Rotam (No Repeat)'),
--
(14372, 0, 0, 0, 1, 0, 100, 0, 4000, 4000, 4000, 4000, 0, 0, 11, 17205, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Winterfall Ambusher - OOC - Cast Winterfall Firewater');
