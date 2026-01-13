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

-- fix Fathom-Lord Karathress TextGroup 6 console error
DELETE FROM `creature_text` WHERE `CreatureID` = 21214;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(21214, 0, 0, 'Guards, attention! We have visitors....', 14, 0, 100, 0, 0, 11277, 20000, 0, 'karathress SAY_AGGRO'),
(21214, 1, 0, 'Your overconfidence will be your undoing! Guards, lend me your strength!', 14, 0, 100, 0, 0, 11278, 19854, 0, 'karathress SAY_GAIN_BLESSING'),
(21214, 2, 0, 'Go on, kill them! I\'ll be the better for it!', 14, 0, 100, 0, 0, 11279, 19643, 0, 'karathress SAY_GAIN_ABILITY1'),
(21214, 3, 0, 'I am more powerful than ever!', 14, 0, 100, 0, 0, 11280, 19645, 0, 'karathress SAY_GAIN_ABILITY2'),
(21214, 4, 0, 'More knowledge, more power!', 14, 0, 100, 0, 0, 11281, 19644, 0, 'karathress SAY_GAIN_ABILITY3'),
(21214, 5, 0, 'Land-dwelling scum!', 14, 0, 100, 0, 0, 11282, 20001, 0, 'karathress SAY_SLAY1'),
(21214, 5, 1, 'Alana be\'lendor!', 14, 0, 100, 0, 0, 11283, 20002, 0, 'karathress SAY_SLAY2'),
(21214, 5, 2, 'I am rid of you.', 14, 0, 100, 0, 0, 11284, 20003, 0, 'karathress SAY_SLAY3'),
(21214, 6, 0, 'Her... excellency... awaits.', 14, 0, 100, 0, 0, 11285, 20004, 0, 'karathress SAY_DEATH');
