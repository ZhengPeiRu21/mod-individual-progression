/* Caverns of Time Door */
DELETE FROM `gameobject` WHERE `guid`=2993000;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`) VALUES
(2993000, 176996, 1, 0, 0, 1, 1, -8173.02, -4747.2, 34.2107, 1.80084, -0, -0, -0.783588, -0.621281, 0, 0, 0, '', 0);

UPDATE `gameobject_template` SET `ScriptName` = "go_cavernsoftimedoor" WHERE `entry` = 176996;

UPDATE `creature` SET `position_x` = -8175.67, `position_y` = -4718.28, `position_z` = 26.3489, `orientation` = 1.88496 WHERE `id1` = 15192;
