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
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
(608504, 8504, 0, 0, 0, 0, 0, 1, 1, 1, -6630.98, -1233.1, 209.809, 1.29509, 300, 0, 0, 2578, 0, 0, 0, 0, 0, '', NULL, 0, NULL);

/* Group Maltorius together with the 2 sentries */
DELETE FROM `creature_formations` WHERE `leaderGUID` = 5845;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES 
(5845, 5845, 0, 0, 3, 0, 0),
(5845, 5846, 0, 0, 3, 0, 0),
(5845, 608504, 0, 0, 3, 0, 0);
