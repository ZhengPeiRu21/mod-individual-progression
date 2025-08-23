/* Restore Ruby Shades to Haris Pilton */
DELETE FROM `npc_vendor` WHERE `entry`=18756 AND `item`=38089 AND `ExtendedCost`=0;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(18756, 0, 38089, 1, 1800, 0, 0);


/* Hide certain vendor items until the player has reached the progression tier for them */
DELETE FROM `conditions` WHERE `SourceEntry` IN (34200, 34201); 
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, 
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
-- 
(23, 21655, 34200, 0, 0, 8, 0, 66011, 0, 0, 0, 0, 0, '', 'Nakodu will not sell Pattern: Quiver of a Thousand Feathers until the player has completed PROGRESSION_TBC_TIER_3'),
(23, 17585, 34201, 0, 0, 8, 0, 66011, 0, 0, 0, 0, 0, '', 'Urgronn will not sell Pattern: Netherscale Ammo Pouch until the player has completed PROGRESSION_TBC_TIER_3'),
(23, 17657, 34201, 0, 0, 8, 0, 66011, 0, 0, 0, 0, 0, '', 'Ulrike will not sell Pattern: Netherscale Ammo Pouch until the player has completed PROGRESSION_TBC_TIER_3');
