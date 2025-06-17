/* Old Vanilla Varian Wrynn Npc in Alcaz during Vanilla phases */
DELETE FROM `creature` WHERE `id1` = 11699 AND `map` = 1;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES
(611699, 11699, 0, 0, 1, 0, 0, 1, 1, 1, -2744.03, -4994.2, 8.26564, 0.0392587, 300, 0, 0, 4121, 0, 0, 0, 0, 0, 'npc_ipp_pre_naxx40', 0, 'Varian Wrynn in Alcaz (Vanilla)');
