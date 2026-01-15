/* Correct quest log text for SSC attunement quest "The Cudgel of Kar'desh" */
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Skar\'this the Heretic in the heroic Slave Pens of Coilfang Reservoir.' WHERE `ID` = 10901;

-- fix reputation gain for creatures in normal Slave Pens
UPDATE `creature_onkill_reputation` SET `MaxStanding1` = 4 WHERE `creature_id` = 17938; -- Coilfang Observer
UPDATE `creature_onkill_reputation` SET `MaxStanding1` = 4 WHERE `creature_id` = 21128; -- Coilfang Ray <Observer's Pet>
    
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

-- fix Greyheart Shield-Bearer (Shield Charge)
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (21231);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(21231, 0, 0, 0, 0, 0, 100, 0, 5000, 12000, 10000, 15000, 0, 0, 11, 38631, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Greyheart Shield-Bearer - In Combat - Cast Avenger\'s Shield'),
(21231, 0, 1, 0, 9, 0, 100, 0, 0, 0, 10000, 15000, 8, 25, 11, 38630, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,       'Greyheart Shield-Bearer - In Combat - Cast Shield Charge');

