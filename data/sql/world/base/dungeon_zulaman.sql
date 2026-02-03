/* smart scripts */
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(24043);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(24043);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(24043, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 42943, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Amani Lynx Cub - Out of Combat - Cast \'Stealth\''),
(24043, 0, 1, 0, 4, 0, 100, 512, 0, 0, 0, 0, 0, 0, 28, 42943, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Amani Lynx Cub - On Aggro - Remove Aura \'Stealth\''),
(24043, 0, 2, 0, 0, 0, 100, 0, 5000, 5000, 35000, 35000, 0, 0, 11, 43357, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Amani Lynx Cub - In Combat - Cast \'Feral Swipe\'');

SET @REFIDTHREE = 35102,
@REFIDFOUR      = 527000,
@TANZAR         = 22699,
@KRAZ           = 22790,
@ASHLI          = 22797,
@HARKOR         = 22968;

DELETE FROM `gameobject_loot_template` WHERE (`Entry` IN (@TANZAR, @KRAZ, @ASHLI, @HARKOR)) AND (`Item` = @REFIDFOUR);
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(@TANZAR, @REFIDFOUR, @REFIDFOUR, 100, 0, 1, 0, 1, 1, 'Tanzar\'s Trunk - Fourth Hostage Loot'),
(@KRAZ,   @REFIDFOUR, @REFIDFOUR, 100, 0, 1, 0, 1, 1, 'Kraz\'s Package - Fourth Hostage Loot'),
(@ASHLI,  @REFIDFOUR, @REFIDFOUR, 100, 0, 1, 0, 1, 1, 'Ashli\'s Bag - Fourth Hostage Loot'),
(@HARKOR, @REFIDFOUR, @REFIDFOUR, 100, 0, 1, 0, 1, 1, 'Harkor\'s Satchel - Fourth Hostage Loot');

DELETE FROM `reference_loot_template` WHERE `Entry` = @REFIDFOUR;
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(@REFIDFOUR, 33809, 0, 0, 0, 1, 1, 1, 1, 'Zul\'Aman - Fourth Hostage Loot - Amani War Bear');

UPDATE `conditions` SET `ElseGroup` = 0 WHERE (`SourceTypeOrReferenceId` = 10) AND (`SourceGroup` = @REFIDTHREE) AND (`ConditionTypeOrReference` = 13) AND (`ConditionValue2` = 3);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 10 AND `SourceGroup` = @REFIDFOUR AND `SourceEntry` = 33809;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`,
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(10, @REFIDFOUR, 33809, 0, 1, 13, 0, 17, 4, 0, 0, 0, 0, '',   'Yield Amani War Bear if all hostages have been rescued'),
(10, @REFIDFOUR, 33809, 0, 1, 8, 0, 66013, 0, 0, 1, 0, 0, '', 'Yield Amani War Bear only if the player is still in TBC');
