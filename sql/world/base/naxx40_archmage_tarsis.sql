-- Add Archmage Tarsis Kir-Moldir
UPDATE `creature_template` SET `gossip_menu_id` = 7229, `npcflag` = 1, `unit_flags` = 512 WHERE (`entry` = 16381);
DELETE FROM `creature_template_addon` WHERE `entry` = 16381;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES
(16381, 0, 0, 3, 0, 0, 0, '');
-- fix: archmage not sitting properly, wrong animation (sleep) to dead
UPDATE `creature_template_addon` SET `bytes1` = 7, `bytes2` = 1 WHERE (`entry` = 16381);
UPDATE `smart_scripts` SET `action_param1` = 7 WHERE (`entryorguid` = 16381) AND (`source_type` = 0) AND (`id` = 2);
UPDATE `creature_template` SET `scale` = 1.2 WHERE (`entry` = 16381);

-- CreatureText
DELETE FROM `creature_text` WHERE `CreatureID`=16381;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(16381, 0, 0, '%s gets to one knee.', 16, 0, 100, 0, 0, 0, 12295, 0, 'Archmage Tarsis Kir-Moldir - kneels'),
(16381, 1, 0, '%s sits down.', 16, 0, 100, 0, 0, 0, 12296, 0, 'Archmage Tarsis Kir-Moldir - sits down'),
(16381, 2, 0, 'You... The frame! How? You must not... It... the Destroyer...', 12, 0, 100, 0, 0, 0, 12312, 0, 'Archmage Tarsis Kir-Moldir'),
(16381, 3, 0, '%s scratches at his throat.', 16, 0, 100, 0, 0, 0, 12314, 0, 'Archmage Tarsis Kir-Moldir');

-- Menu
DELETE FROM `gossip_menu` WHERE `MenuID` IN (7222, 7223, 7224, 7225, 7226, 7227, 7228, 7231, 7232, 7233);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES
(7222, 8523),
(7223, 8522),
(7224, 8521),
(7225, 8520),
(7226, 8519),
(7227, 8518),
(7228, 8517),
(7231, 8531),
(7232, 8530),
(7233, 8529);

DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (7222, 7223, 7224, 7225, 7226, 7227, 7228, 7232, 7233);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(7222, 0, 0, 'What happened to the staff?', 12304, 1, 1, 7233, 0, 0, 0, '', 0, 0),
(7223, 0, 0, 'You said you would have it back. What does that mean?', 12293, 1, 1, 7222, 0, 0, 0, '', 0, 0),
(7224, 0, 0, 'What staff?', 12291, 1, 1, 7223, 0, 0, 0, '', 0, 0),
(7225, 0, 0, 'You are talking nonsense, mage. ', 12289, 1, 1, 7224, 0, 0, 0, '', 0, 0),
(7226, 0, 0, 'I still do not understand.', 12287, 1, 1, 7225, 0, 0, 0, '', 0, 0),
(7227, 0, 0, 'Why have you done such horrible things?', 12285, 1, 1, 7226, 0, 0, 0, '', 0, 0),
(7228, 0, 0, 'What are you talking about, mage?', 12283, 1, 1, 7227, 0, 0, 0, '', 0, 0),
(7228, 1, 0, 'What is it Tarsis? I don\'t know what to do!', 12313, 1, 1, 0, 0, 0, 0, '', 0, 0),
(7232, 0, 0, 'So Kel\'Thuzad holds all of the pieces?', 12308, 1, 1, 7231, 0, 0, 0, '', 0, 0),
(7233, 0, 0, 'So what has led you to Naxxramas?', 12306, 1, 1, 7232, 0, 0, 0, '', 0, 0);

-- Different dialog option if has Splinter of Atiesh
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 15) AND (`SourceGroup` = 7228);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, 7228, 0, 0, 0, 2, 0, 22727, 1, 0, 1, 0, 0, '', 'Player does not have the Frame of Atiesh'),
(15, 7228, 1, 0, 0, 2, 0, 22727, 1, 0, 0, 0, 0, '', 'Player has the Frame of Atiesh');

-- SmartAI
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 16381;
DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 16381);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(16381, 0, 0, 1, 64, 0, 100, 1, 0, 0, 0, 0, 0, 83, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tarsis Kir-Moldir - On Gossip Hello - Remove Npc Flags Gossip (No Repeat)'),
(16381, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 67, 1, 3000, 3000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tarsis Kir-Moldir - On Gossip Hello - Create Timed Event (No Repeat)'),
(16381, 0, 2, 3, 59, 0, 100, 0, 1, 0, 0, 0, 0, 91, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tarsis Kir-Moldir - On Timed Event 1 Triggered - Remove FlagStandstate Sleep'),
(16381, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 0, 67, 2, 3000, 3000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tarsis Kir-Moldir - On Timed Event 1 Triggered - Create Timed Event'),
(16381, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 0, 90, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tarsis Kir-Moldir - On Timed Event 1 Triggered - Set Flag Standstate Kneel'),
(16381, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tarsis Kir-Moldir - On Timed Event 1 Triggered - Say Line 0'),
(16381, 0, 6, 7, 59, 0, 100, 0, 2, 0, 0, 0, 0, 91, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tarsis Kir-Moldir - On Timed Event 2 Triggered - Remove FlagStandstate Kneel'),
(16381, 0, 7, 8, 61, 0, 100, 0, 0, 0, 0, 0, 0, 67, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tarsis Kir-Moldir - On Timed Event 2 Triggered - Create Timed Event'),
(16381, 0, 8, 9, 61, 0, 100, 0, 0, 0, 0, 0, 0, 90, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tarsis Kir-Moldir - On Timed Event 2 Triggered - Set Flag Standstate Sit Down'),
(16381, 0, 9, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tarsis Kir-Moldir - On Timed Event 2 Triggered - Say Line 1'),
(16381, 0, 10, 11, 59, 0, 100, 0, 3, 0, 0, 0, 0, 82, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tarsis Kir-Moldir - On Timed Event 3 Triggered - Add Npc Flags Gossip'),
(16381, 0, 11, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tarsis Kir-Moldir - On Timed Event 3 Triggered - Set Event Phase 1'),
(16381, 0, 12, 0, 64, 1, 100, 0, 0, 0, 0, 0, 0, 98, 7228, 8517, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tarsis Kir-Moldir - On Gossip Hello - Send Gossip (Phase 1)'),
(16381, 0, 13, 14, 62, 0, 100, 0, 7228, 1, 0, 0, 0, 83, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tarsis Kir-Moldir - On Gossip Option 1 Selected - Remove Npc Flags Gossip'),
(16381, 0, 14, 15, 61, 0, 100, 0, 0, 0, 0, 0, 0, 67, 4, 1000, 1000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tarsis Kir-Moldir - On Gossip Option 1 Selected - Create Timed Event'),
(16381, 0, 15, 16, 61, 0, 100, 0, 0, 0, 0, 0, 0, 67, 5, 3000, 3000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tarsis Kir-Moldir - On Gossip Option 1 Selected - Create Timed Event'),
(16381, 0, 16, 17, 61, 0, 100, 0, 0, 0, 0, 0, 0, 67, 6, 6000, 6000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tarsis Kir-Moldir - On Gossip Option 1 Selected - Create Timed Event'),
(16381, 0, 17, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 67, 7, 8000, 8000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tarsis Kir-Moldir - On Gossip Option 1 Selected - Create Timed Event'),
(16381, 0, 18, 19, 59, 0, 100, 0, 4, 0, 0, 0, 0, 91, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tarsis Kir-Moldir - On Timed Event 4 Triggered - Remove FlagStandstate Sit Down'),
(16381, 0, 19, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 90, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tarsis Kir-Moldir - On Timed Event 4 Triggered - Set Flag Standstate Stand Up'),
(16381, 0, 20, 0, 59, 0, 100, 0, 5, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tarsis Kir-Moldir - On Timed Event 5 Triggered - Say Line 2'),
(16381, 0, 22, 19, 59, 0, 100, 0, 6, 0, 0, 0, 0, 1, 3, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tarsis Kir-Moldir - On Timed Event 6 Triggered - Say Line 3'),
(16381, 0, 23, 19, 59, 0, 100, 0, 7, 0, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tarsis Kir-Moldir - On Timed Event 7 Triggered - Kill Self');
