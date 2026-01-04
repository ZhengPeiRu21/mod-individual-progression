/* Restore Ruby Shades to Haris Pilton */
DELETE FROM `npc_vendor` WHERE `entry`=18756 AND `item`=38089 AND `ExtendedCost`=0;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(18756, 0, 38089, 1, 1800, 0, 0);

/* Hide certain vendor items until the player has reached the progression tier for them */
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 19 AND `ConditionTypeOrReference` = 8 AND `SourceEntry` IN (11481, 11482);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 23 AND `ConditionTypeOrReference` = 8 AND `SourceEntry` IN (34200, 34201);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, 
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
--
(19, 0, 11481, 0, 0, 8, 0, 66012, 0, 0, 0, 0, 0, '', 'Hide \'Crisis at the Sunwell\' until the player reaches TBC T5'),
(19, 0, 11482, 0, 0, 8, 0, 66012, 0, 0, 0, 0, 0, '', 'Hide \'Duty Calls\' until the player reaches TBC T5'),
--
(23, 21655, 34200, 0, 0, 8, 0, 66011, 0, 0, 0, 0, 0, '', 'Nakodu will not sell Pattern: Quiver of a Thousand Feathers until the player has completed PROGRESSION_TBC_TIER_3'),
(23, 17585, 34201, 0, 0, 8, 0, 66011, 0, 0, 0, 0, 0, '', 'Urgronn will not sell Pattern: Netherscale Ammo Pouch until the player has completed PROGRESSION_TBC_TIER_3'),
(23, 17657, 34201, 0, 0, 8, 0, 66011, 0, 0, 0, 0, 0, '', 'Ulrike will not sell Pattern: Netherscale Ammo Pouch until the player has completed PROGRESSION_TBC_TIER_3');

-- fix quest: The Skettis Offensive
UPDATE `quest_template` SET `RequiredNpcOrGo1` = 22375, `RequiredNpcOrGoCount1 = 1 WHERE `ID` = 10879;
UPDATE `quest_template_addon` SET `SpecialFlags` = 0 WHERE `ID` = 10879;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 22375 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(22375, 0, 0, 0, 54, 0, 100, 512, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, -1641.12, 5436.65, -43.3445, 0.803601, 'Avatar of Terokk - On Just Summoned - Move To Position'),
(22375, 0, 1, 0, 6, 0, 100, 512, 0, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0,                            'Avatar of Terokk - On Just Died - Set Data 1 1'),
(22375, 0, 2, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 24193, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                           'Avatar of Terokk - On Aggro - Cast Charge'),
(22375, 0, 3, 0, 0, 0, 100, 0, 6000, 9000, 11000, 14000, 0, 0, 11, 39068, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Avatar of Terokk - In Combat - Cast Feather Burst');

-- fix worldserver error during quest: The Skettis Offensive
UPDATE `smart_scripts` SET `event_type` = 61 WHERE `entryorguid` = 22374 AND `source_type` = 0 AND `id` = 1;
