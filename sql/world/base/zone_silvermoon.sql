-- Alestus <First Aid Trainer> 
DELETE FROM `npc_trainer` WHERE `ID`=16662; 
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (16662, -350000); 

/* Restore Blood Knight quests to pre-2.4 state */
SET @MURU_GUID := 352043;
DELETE FROM `creature` WHERE `guid` = @MURU_GUID;
INSERT INTO `creature` (`guid`, `id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES
(@MURU_GUID, 17544, 530, 9850.99, -7522.666, -9.157837, 1.537163);

UPDATE `creature_template` SET `rank` = 3, `type_flags` = 4 WHERE `entry` = 17544;

UPDATE `quest_template` SET `LogDescription` = "Use the Shimmering Vessel on M'uru to fill it and return to Knight-Lord Bloodvalor in Silvermoon City.", `QuestDescription` = "Take this vessel, $N. Invoking its magic will allow you to take this creature's power and claim it for yourself. With it, you will be able to restore your fallen comrade to life.$B$BThere are those who would say what we're doing is wrong, but much of what has befallen us is also wrong. Would they have us throw away such a gift?$B$BThey do not complain when our power is used to prevent the further destruction of Silvermoon. No, they object when they are safe from harm and indulging their magic addictions." WHERE `ID` = 9684;

/* TODO: Spell tooltip for Shimmering Vessel needs to be updated, but this requires a client-side edit */
UPDATE `quest_template` SET `QuestDescription` = "Do not think me unduly harsh, $N. Stillblade knew well what he was being sent to do. He understood and accepted his duty and is an example for all aspiring Blood Knights.$B$BMy words are no eulogy, $N. Stillblade's service to us is far from over and you will be the instrument of his resurrection.$B$BYour education in the use of the Light has focused on mere charms and parlor tricks thus far. The time has come for you to learn of the nature and breadth of our power. Seek out Magister Astalor Bloodsworn." WHERE `ID` = 9681;

UPDATE `creature_addon` SET `bytes1` = 0, `bytes2` = 0, `emote` = 0 WHERE `guid` IN (96978, 96979, 96980, 96981, 96982);

UPDATE `creature` SET `position_x` = 9866.592, `position_y` = -7522.429688, `position_z` = -0.490965, `orientation` = 3.187847 WHERE `guid` = 96982;
UPDATE `creature` SET `position_x` = 9860.192383, `position_y` = -7504.206055, `position_z` = -4.002384, `orientation` = 4.269403 WHERE `guid` = 96980;
UPDATE `creature` SET `position_x` = 9850.7529, `position_y` = -7537.9208, `position_z` = -0.49, `orientation` = 1.548791 WHERE `guid` = 96981;
UPDATE `creature` SET `position_x` = 9835.078, `position_y` = -7522.6352, `position_z` = -0.49134, `orientation` = 0.001539 WHERE `guid` = 96979;
UPDATE `creature` SET `position_x` = 9841.158, `position_y` = -7504.5, `position_z` = -4.007, `orientation` = 5.3532 WHERE `guid` = 96978;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-96982, -96980, -96981, -96979,-96978) AND `source_type`=0 AND `id`=0 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(-96982, 0, 0, 0, 1, 0, 100, 1, 500, 500, 500, 500, 0, 11, 31324, 0, 0, 0, 0, 0, 10, 352043, 17544, 0, 0, 0, 0, 0, 0, 'Blood Elf Magister - Out of Combat - Cast \'Drain Naaru Channel\' (No Repeat)'),
(-96980, 0, 0, 0, 1, 0, 100, 1, 500, 500, 500, 500, 0, 11, 31324, 0, 0, 0, 0, 0, 10, 352043, 17544, 0, 0, 0, 0, 0, 0, 'Blood Elf Magister - Out of Combat - Cast \'Drain Naaru Channel\' (No Repeat)'),
(-96981, 0, 0, 0, 1, 0, 100, 1, 500, 500, 500, 500, 0, 11, 31324, 0, 0, 0, 0, 0, 10, 352043, 17544, 0, 0, 0, 0, 0, 0, 'Blood Elf Magister - Out of Combat - Cast \'Drain Naaru Channel\' (No Repeat)'),
(-96979, 0, 0, 0, 1, 0, 100, 1, 500, 500, 500, 500, 0, 11, 31324, 0, 0, 0, 0, 0, 10, 352043, 17544, 0, 0, 0, 0, 0, 0, 'Blood Elf Magister - Out of Combat - Cast \'Drain Naaru Channel\' (No Repeat)'),
(-96978, 0, 0, 0, 1, 0, 100, 1, 500, 500, 500, 500, 0, 11, 31324, 0, 0, 0, 0, 0, 10, 352043, 17544, 0, 0, 0, 0, 0, 0, 'Blood Elf Magister - Out of Combat - Cast \'Drain Naaru Channel\' (No Repeat)');

DELETE FROM `broadcast_text` WHERE `ID`=14807;
INSERT INTO `broadcast_text` (`ID`, `LanguageID`, `MaleText`, `FemaleText`, `EmoteID1`, `EmoteID2`, `EmoteID3`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `SoundEntriesId`, `EmotesID`, `Flags`, `VerifiedBuild`) VALUES
(14807, 1, 'Glory to the Sun King!', 'Glory to the Sun King!', 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);

DELETE FROM `creature_text` WHERE `CreatureID`=16222 AND `GroupID`=0 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(16222, 0, 0, 'Glory to the Sun King!', 12, 1, 100, 0, 0, 0, 14807, 0, 'Silvermoon City Guardian');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=31324;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,31324,0,0,31,0,3,17544,0,0,0,0,"","Naaru Drain Effect Condition");

UPDATE `conditions` SET `ConditionValue2` = 17544 WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` = 45351;
