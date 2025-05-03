/* Quest - Testing the Vessel - now asks for Wildkin Muisek instead of Beast Muisek */

-- update name and displayid, was 61417
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
