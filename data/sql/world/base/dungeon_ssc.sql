/* Correct quest log text for SSC attunement quest "The Cudgel of Kar'desh" */
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Skar\'this the Heretic in the heroic Slave Pens of Coilfang Reservoir.' WHERE `ID` = 10901;

-- fix reputation gain for Coilfang Observer in normal Slave Pens
UPDATE `creature_onkill_reputation` SET `MaxStanding1` = 4 WHERE `creature_id` = 17938;
    
-- creatures in normal The Slave Pens should not drop Coilfang Armaments
DELETE FROM `creature_loot_template` WHERE `Item` = 24368 AND `Entry` IN (17938, 17957, 17958, 17959, 17960, 17961, 21126, 21127);

-- fix Mennu the Betrayer TextGroup 3 console error
DELETE FROM `creature_text` WHERE `CreatureID` = 17941;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(17941, 1, 0, 'The work must continue!', 14, 0, 100, 0, 0, 10376, 17888, 0, 'Mennu the Betrayer - Aggro'),
(17941, 1, 1, 'You brought this on yourselves!', 14, 0, 100, 0, 0, 10378, 17889, 0, 'Mennu the Betrayer - Aggro'),
(17941, 1, 2, 'Don\'t make me kill you!', 14, 0, 100, 0, 0, 10379, 17890, 0, 'Mennu the Betrayer - Aggro'),
(17941, 2, 0, 'It had to be done....', 14, 0, 100, 0, 0, 10380, 17892, 0, 'Mennu the Betrayer - Kill'),
(17941, 2, 1, 'You should not have come....', 14, 0, 100, 0, 0, 10381, 17893, 0, 'Mennu the Betrayer - Kill'),
(17941, 3, 0, 'I... deserve this....', 14, 0, 100, 0, 0, 10382, 17894, 0, 'Mennu the Betrayer - Death');
