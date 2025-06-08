/* Hide certain vendor items until the player has reached the progression tier for them */

DELETE FROM `conditions` WHERE `SourceEntry` IN (); 
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, 
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
-- 
(23, 21655, 34200, 0, 0, 8, 0, 66011, 0, 0, 0, 0, 0, '', 'Nakodu will not sell Pattern: Quiver of a Thousand Feathers until the player has completed PROGRESSION_TBC_TIER_3'),
(23, 17585, 34201, 0, 0, 8, 0, 66011, 0, 0, 0, 0, 0, '', 'Urgronn will not sell Pattern: Netherscale Ammo Pouch until the player has completed PROGRESSION_TBC_TIER_3'),
(23, 17657, 34201, 0, 0, 8, 0, 66011, 0, 0, 0, 0, 0, '', 'Ulrike will not sell Pattern: Netherscale Ammo Pouch until the player has completed PROGRESSION_TBC_TIER_3');

    

-- UNDO previous cloning method
    
SET @Nakodu := 121655;
SET @Urgronn := 117585;
SET @Ulrike := 117657;

DELETE FROM `creature_template` WHERE `entry` IN (@Nakodu, @Urgronn, @Ulrike);
DELETE FROM `creature_template_addon` WHERE `entry` IN (@Nakodu, @Urgronn, @Ulrike);
DELETE FROM `creature_template_locale` WHERE `entry` IN (@Nakodu, @Urgronn, @Ulrike);
DELETE FROM `creature_template_model` WHERE `CreatureID` IN (@Nakodu, @Urgronn, @Ulrike);
DELETE FROM `creature` WHERE `id1` IN (@Nakodu, @Urgronn, @Ulrike);
DELETE FROM `npc_vendor` WHERE `entry` IN (@Nakodu, @Urgronn, @Ulrike);
