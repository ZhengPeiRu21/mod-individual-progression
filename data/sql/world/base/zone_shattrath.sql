/* Restore Ruby Shades to Haris Pilton */
DELETE FROM `npc_vendor` WHERE `entry`=18756 AND `item`=38089 AND `ExtendedCost`=0;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(18756, 0, 38089, 1, 1800, 0, 0);

/* Hide certain vendor items until the player has reached the progression tier for them */
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 19 AND `ConditionTypeOrReference` = 8 AND `SourceEntry` IN (11130, 11481, 11482);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 23 AND `ConditionTypeOrReference` = 8 AND `SourceEntry` IN (34200, 34201);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, 
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
--
(19, 0, 11130, 0, 0, 8, 0, 66011, 0, 0, 0, 0, 0, '', 'Hide \'Oooh, Shinies!\' until the player reaches TBC T4'),
(19, 0, 11481, 0, 0, 8, 0, 66012, 0, 0, 0, 0, 0, '', 'Hide \'Crisis at the Sunwell\' until the player reaches TBC T5'),
(19, 0, 11482, 0, 0, 8, 0, 66012, 0, 0, 0, 0, 0, '', 'Hide \'Duty Calls\' until the player reaches TBC T5'),
--
(23, 21655, 34200, 0, 0, 8, 0, 66011, 0, 0, 0, 0, 0, '', 'Nakodu will not sell Pattern: Quiver of a Thousand Feathers until the player has completed PROGRESSION_TBC_TIER_3'),
(23, 17585, 34201, 0, 0, 8, 0, 66011, 0, 0, 0, 0, 0, '', 'Urgronn will not sell Pattern: Netherscale Ammo Pouch until the player has completed PROGRESSION_TBC_TIER_3'),
(23, 17657, 34201, 0, 0, 8, 0, 66011, 0, 0, 0, 0, 0, '', 'Ulrike will not sell Pattern: Netherscale Ammo Pouch until the player has completed PROGRESSION_TBC_TIER_3');

-- TBC battlemasters
DELETE FROM `creature` WHERE `id1` IN (20269, 20271, 20272, 20273, 20274, 20276, 20339, 20362, 20384, 20395);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, 
`wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
--
(207610, 20269, 0, 0, 530, 0, 0, 1, 1, 1, -1971.8900, 5269.0400, -38.7644, 3.0718, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(207861, 20271, 0, 0, 530, 0, 0, 1, 1, 1, -1773.7700, 5253.8501, -38.7647, 4.6600, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(207611, 20272, 0, 0, 530, 0, 0, 1, 1, 1, -1778.4000, 5255.8701, -38.7643, 4.2935, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(207761, 20273, 0, 0, 530, 0, 0, 1, 1, 1, -1763.7400, 5258.8901, -38.7644, 5.6723, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(207760, 20274, 0, 0, 530, 0, 0, 1, 1, 1, -1961.8300, 5257.8301, -38.7648, 4.6077, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(207860, 20276, 0, 0, 530, 0, 0, 1, 1, 1, -1971.3600, 5264.0098, -38.7650, 3.5954, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(72252,  20339, 0, 0, 530, 0, 0, 1, 1, 0, -1762.7200, 5260.0200, -38.7661, 6.1261, 120, 0, 0, 110050, 5875, 0, 0, 0, 0, '', 0, 0, NULL),
(207811, 20362, 0, 0, 530, 0, 0, 1, 1, 1, -1762.3000, 5264.3501, -38.7645, 5.8643, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(207810, 20384, 0, 0, 530, 0, 0, 1, 1, 1, -1956.3300, 5259.4199, -38.7645, 4.9044, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(72364,  20395, 0, 0, 530, 0, 0, 1, 1, 0, -1764.6200, 5260.4102, -38.7595, 0.7679, 300, 0, 0, 3144, 0, 0, 0, 0, 0, '', 0, 0, NULL);

-- don't hide battlemasters
DELETE FROM `game_event_creature` WHERE `guid` IN (72252, 72364, 207610, 207611, 207760, 207761, 207810, 207811, 207860, 207861);

-- remove wotlk battlemaster from Shattrath
DELETE FROM `creature` WHERE `guid` IN (63451, 88251, 88252, 88254, 207710, 207711);
