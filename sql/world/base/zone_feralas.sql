/* smart scripts */
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (5287, 11447, 11497, 11498);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (5287, 11447, 11497, 11498);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(5287, 0, 0, 0, 2, 0, 100, 1, 0, 20, 0, 0, 0, 0, 39, 20, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Longtooth Howler - Between 0-20% Health - Call For Help (No Repeat)'),
--
(11447, 0, 0, 0, 9, 0, 100, 0, 2000, 3000, 13000, 15000, 0, 30, 11, 22127, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Mushgog - Within 0-30 Range - Cast Entangling Roots'),
(11447, 0, 1, 0, 6, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 22948, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Mushgog - On Just Died - Cast Spore Cloud'),
(11447, 0, 2, 0, 0, 0, 100, 0, 7000, 10000, 8000, 12000, 0, 0, 11, 21749, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Mushgog - In Combat - Cast Thorn Volley'),
(11447, 0, 3, 0, 0, 0, 100, 0, 12000, 16000, 14000, 17000, 0, 0, 11, 22951, 0, 0, 0, 0, 0, 17, 10, 40, 1, 0, 0, 0, 0, 0, 'Mushgog - In Combat - Cast Summon Player'),
(11447, 0, 4, 0, 5, 0, 50, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                          'Mushgog - On Player Kill - Say Line 0'),
--
(11497, 0, 0, 0, 0, 0, 100, 0, 5000, 9000, 5000, 9000, 0, 5, 11, 22937, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,       'The Razza - In Combat - Cast Poison Bolt'),
(11497, 0, 1, 0, 0, 0, 100, 0, 8000, 12000, 9000, 15000, 0, 0, 11, 16033, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,     'The Razza - In Combat - Cast Chain Lightning'),
(11497, 0, 2, 0, 0, 0, 100, 0, 12000, 16000, 14000, 17000, 0, 0, 11, 22951, 0, 0, 0, 0, 0, 17, 10, 40, 1, 0, 0, 0, 0, 0, 'The Razza - In Combat - Cast Summon Player'),
--
(11498, 0, 0, 0, 9, 0, 100, 0, 7000, 10000, 7000, 10000, 0, 5, 11, 15496, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Skarr the Unbreakable - Within 0-5 Range - Cast Cleave'),
(11498, 0, 1, 0, 9, 0, 100, 0, 5000, 7000, 13000, 16000, 0, 5, 11, 11428, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Skarr the Unbreakable - Within 0-5 Range - Cast Knockdown'),
(11498, 0, 2, 0, 9, 0, 100, 0, 8000, 12000, 9000, 15000, 0, 5, 11, 15708, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Skarr the Unbreakable - Within 0-5 Range - Cast Mortal Strike'),
(11498, 0, 3, 0, 0, 0, 100, 0, 12000, 16000, 14000, 17000, 0, 0, 11, 22951, 0, 0, 0, 0, 0, 17, 10, 40, 1, 0, 0, 0, 0, 0, 'Skarr the Unbreakable - In Combat - Cast Summon Player');

DELETE FROM `creature_text` WHERE `CreatureID` IN (11447);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(11447, 0, 0, 'That will teach you to lay off the herb, $r.', 12, 0, 100, 0, 0, 0, 9500, 0, 'Mushgog');

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
