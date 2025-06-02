/* Anvilrage Overseers and Anvilrage Wardens were replaced with new non-elite mobs in 2.3 - restore the originals */
UPDATE `creature` SET `id1` = 8889 WHERE `id1` = 24818;
UPDATE `creature` SET `id1` = 8890 WHERE `id1` = 24819;

/* 3 Dark Iron Sentries in the towers were replaced with non-elite dark iron lookouts in 2.3 - restore the originals */
UPDATE `creature` SET `id1` = 8504 WHERE `guid` = 6830;
UPDATE `creature` SET `id1` = 8504 WHERE `guid` = 6831;
UPDATE `creature` SET `id1` = 8504 WHERE `guid` = 6832;

/* Maltorius had 2 elite Dark Iron Sentries next to him that were replaced by a single non-elite dark iron lookout in 2.3 - restore the originals */
UPDATE `creature` SET `id1` = 8504 WHERE `guid` = 5846;

DELETE FROM `creature` WHERE `guid` = 608504;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, 
`wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
(608504, 8504, 0, 0, 0, 0, 0, 1, 1, 1, -6630.98, -1233.1, 209.809, 1.29509, 300, 0, 0, 2578, 0, 0, 0, 0, 0, '', NULL, 0, NULL);

/* Group Maltorius together with the 2 sentries */
DELETE FROM `creature_formations` WHERE `leaderGUID` = 5845;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES 
(5845, 5845, 0, 0, 3, 0, 0),
(5845, 5846, 0, 0, 3, 0, 0),
(5845, 608504, 0, 0, 3, 0, 0);

/* Twilight cultists in Searing Gorge missing smart AI */
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (5860, 5861, 5862);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (5860, 5861, 5862);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
-- Twilight Dark Shaman (5860)
(5860, 0, 0, 0, 0, 0, 100, 0, 0, 0, 3400, 4800, 0, 0, 11, 15500, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Twilight Dark Shaman - In Combat CMC - Cast \'Shock\''),
(5860, 0, 1, 0, 0, 0, 100, 0, 2500, 10000, 35000, 40000, 0, 0, 11, 7289, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Twilight Dark Shaman - In Combat - Cast Shrink'),
(5860, 0, 2, 0, 14, 0, 100, 0, 1000, 30, 8000, 11000, 0, 0, 11, 12491, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Twilight Dark Shaman - Friendly Missing Health - Cast Healing Wave'),
-- Twilight Fire Guard (5861)
(5861, 0, 0, 0, 0, 0, 100, 0, 4000, 9000, 18000, 26000, 0, 0, 11, 15243, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Twilight Fire Guard - In Combat - Cast \'Fireball Volley\''),
-- Twilight Geomancer (5862)
(5862, 0, 0, 0, 0, 0, 100, 0, 0, 0, 3400, 4800, 0, 0, 11, 9053, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Twilight Geomancer - In Combat CMC - Cast \'Fireball\''),
(5862, 0, 1, 0, 0, 0, 100, 0, 4000, 9000, 18000, 26000, 0, 0, 11, 11436, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Twilight Geomancer - In Combat - Cast \'Slow\''),
(5862, 0, 2, 0, 2, 0, 100, 1, 30, 60, 0, 0, 0, 0, 11, 11990, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Twilight Geomancer - Between 30-60% Health - Cast \'11990\' (No Repeat)');
