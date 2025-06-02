/* fix Gordunni Orb drop rate. Was set to 100 */
UPDATE `creature_loot_template` SET `Chance` = 15 WHERE `Item` = 9371;


/* Quest - Testing the Vessel - now asks for Wildkin Muisek instead of Beast Muisek */
UPDATE `item_template` SET `name` = 'Wildkin Muisek', `displayid` = 18094 WHERE `entry` = 9594;
UPDATE `item_template` SET `name` = 'Wildkin Muisek Vessel' WHERE `entry` = 9618;

-- update target creatures, was 5268 and 5286
DELETE FROM `conditions` WHERE `SourceEntry` = 11886;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, 
`ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 11886, 0, 0, 31, 1, 3, 2927, 0, 0, 0, 0, '', 'Wildkin Muisek Vessel target - Vicious Owlbeast'),
(17, 0, 11886, 0, 0, 36, 1, 0, 0, 0, 1, 0, 0, '', 'Target must be dead'),
(17, 0, 11886, 0, 1, 31, 1, 3, 2928, 0, 0, 0, 0, '', 'Wildkin Muisek Vessel target - Primitive Owlbeast'),
(17, 0, 11886, 0, 1, 36, 1, 0, 0, 0, 1, 0, 0, '', 'Target must be dead'),
(17, 0, 11886, 0, 2, 31, 1, 3, 2929, 0, 0, 0, 0, '', 'Wildkin Muisek Vessel target - Savage Owlbeast'),
(17, 0, 11886, 0, 2, 36, 1, 0, 0, 0, 1, 0, 0, '', 'Target must be dead');

-- update quest text
UPDATE `quest_template` SET `LogDescription` = 
'This will be a test; both of the ritual I performed, and of your abilities. Take this vessel, $N. With it, you will have the power to shrink and capture a creature inside of it.$B$BTravel to the Hinterlands and look for creatures known as Wildkin that were once pets of the night elf goddess Elune. The vicious, primitive, or savage owlbeasts are your targets, $N. Kill 10, and use the muisek vessel to shrink and capture them before their spirits can escape.',
`QuestDescription` = 
'Travel to the Hinterlands, and locate the Wildkin. Kill 10, and use the Muisek Vessel to shrink and capture the fallen Wildkin.$B$BBring 10 Wildkin Muiseks and the Muisek Vessel to Witch Doctor Uzer\'i in Feralas.' WHERE `ID` = 3123;

UPDATE `quest_request_items` SET `CompletionText` = 
'Were you able to capture the wildkin?$B$BIf you succeed, we will be ready to shrink and capture the muisek of creatures of Feralas.' WHERE `ID` = 3123;

-- update item display id
DELETE FROM `item_dbc` WHERE `ID` = 9594;
INSERT INTO `item_dbc` (`ID`, `ClassID`, `SubclassID`, `Sound_Override_Subclassid`, `Material`, `DisplayInfoID`, `InventoryType`, `SheatheType`) VALUES
(9594, 12, 0, -1, 1, 18094, 0, 0);

-- update quest poi map markers
DELETE FROM `quest_poi` WHERE `QuestID` = 3123;
INSERT INTO `quest_poi` (`QuestID`, `id`, `ObjectiveIndex`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`, `VerifiedBuild`) VALUES
(3123, 0, -1, 1, 121, 0, 0, 1, 0),
(3123, 1, 4, 0, 26, 0, 0, 1, 0),
(3123, 2, 4, 0, 26, 0, 0, 1, 0);

DELETE FROM `quest_poi_points` WHERE `QuestID` = 3123;
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES 
(3123, 0, 0, -4376, 270, 0),
(3123, 1, 1, 218, -4582, 0),
(3123, 1, 2, 314, -4217, 0),
(3123, 1, 3, 217, -4117, 0),
(3123, 1, 4, 16, -4117, 0),
(3123, 1, 5, -83, -4149, 0),
(3123, 2, 0, -150, -3551, 0),
(3123, 2, 1, -81, -3551, 0),
(3123, 2, 2, -17, -3550, 0),
(3123, 2, 3, 249, -3415, 0),
(3123, 2, 4, 382, -3152, 0),
(3123, 2, 5, 351, -3056, 0),
(3123, 2, 6, -50, -2983, 0),
(3123, 2, 7, -85, -3015, 0),
(3123, 2, 8, -250, -3183, 0);
