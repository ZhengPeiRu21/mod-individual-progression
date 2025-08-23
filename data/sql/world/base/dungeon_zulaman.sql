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

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 10) AND (`SourceGroup` = @REFIDFOUR) AND (`ConditionTypeOrReference` = 13) AND (`ConditionValue1` = 8) AND (`ConditionValue2` = 4);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(10, @REFIDFOUR, 33809, 0, 0, 13, 0, 8, 4, 0, 0, 0, 0, '', 'Yield Amani War Bear if all hostages have been rescued');
