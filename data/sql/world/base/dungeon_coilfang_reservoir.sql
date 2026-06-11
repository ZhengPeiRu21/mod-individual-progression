/* smart scripts */
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (17721, 17722, 17800, 17801, 17802, 17803, 17805, 21231, 21694, 21695, 21696);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(17721, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Coilfang Engineer - On Aggro - Say Line 0'),
(17721, 0, 1, 0, 0, 0, 100, 0, 8000, 16000, 8000, 16000, 0, 0, 11, 40331, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 0,  'Coilfang Engineer - In Combat - Cast Bomb'),
(17721, 0, 2, 0, 0, 0, 100, 0, 11000, 24000, 11000, 24000, 0, 0, 11, 6533, 0, 0, 0, 0, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0,  'Coilfang Engineer - In Combat - Cast Net'),
(17722, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Coilfang Sorceress - On Aggro - Say Line 0'),
(17722, 0, 1, 0, 0, 0, 100, 2, 0, 0, 2400, 3800, 0, 0, 11, 12675, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Coilfang Sorceress - In Combat - Cast Frostbolt (Normal Dungeon)'),
(17722, 0, 2, 0, 0, 0, 100, 4, 0, 0, 2400, 3800, 0, 0, 11, 37930, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Coilfang Sorceress - In Combat - Cast Frostbolt (Heroic Dungeon)'),
(17722, 0, 3, 0, 106, 0, 100, 2, 0, 0, 18000, 30000, 0, 8, 11, 15063, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,        'Coilfang Sorceress - Within 0-8 Range - Cast Frost Nova (Normal Dungeon)'),
(17722, 0, 4, 0, 106, 0, 100, 4, 0, 0, 18000, 30000, 0, 8, 11, 15531, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,        'Coilfang Sorceress - Within 0-8 Range - Cast Frost Nova (Heroic Dungeon)'),
(17722, 0, 5, 0, 0, 0, 100, 2, 12000, 24000, 20000, 32000, 0, 0, 11, 39416, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0,  'Coilfang Sorceress - In Combat - Cast Blizzard (Normal Dungeon)'),
(17722, 0, 6, 0, 0, 0, 100, 4, 12000, 24000, 20000, 32000, 0, 0, 11, 31581, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0,  'Coilfang Sorceress - In Combat - Cast Blizzard (Heroic Dungeon)'),
--
(17800, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Coilfang Myrmidon - On Aggro - Say Line 0'),
(17800, 0, 1, 0, 9, 0, 100, 0, 0, 0, 8000, 18000, 0, 5, 11, 15496, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Coilfang Myrmidon - Within 0-5 Range - Cast Cleave'),
(17800, 0, 2, 0, 12, 0, 100, 0, 0, 20, 30000, 40000, 0, 0, 11, 7160, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Coilfang Myrmidon - Target Between 0-20% Health - Cast Execute'),
(17800, 0, 3, 0, 0, 0, 100, 0, 6000, 15000, 10000, 26000, 0, 0, 11, 18765, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Coilfang Myrmidon - In Combat - Cast Sweeping Strikes'),
(17801, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Coilfang Siren - On Aggro - Say Line 0'),
(17801, 0, 1, 0, 0, 0, 100, 2, 0, 0, 3400, 4500, 0, 0, 11, 15234, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Coilfang Siren - In Combat - Cast Lightning Bolt (Normal Dungeon)'),
(17801, 0, 2, 0, 0, 0, 100, 4, 0, 0, 3400, 4500, 0, 0, 11, 37664, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Coilfang Siren - In Combat - Cast Lightning Bolt (Heroic Dungeon)'),
(17801, 0, 3, 0, 0, 0, 100, 0, 6000, 23000, 6000, 23000, 0, 0, 11, 35106, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,   'Coilfang Siren - In Combat - Cast Arcane Flare'),
(17801, 0, 5, 0, 0, 0, 100, 0, 8000, 24000, 18000, 34000, 0, 0, 11, 38660, 0, 0, 0, 0, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0,  'Coilfang Siren - In Combat - Cast Fear'),
(17802, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7164, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Coilfang Warrior - On Aggro - Cast Spell Defensive Stance'),
(17802, 0, 1, 0, 0, 0, 100, 0, 2000, 5000, 120000, 120000, 0, 0, 11, 31403, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Coilfang Warrior - In Combat - Cast Battle Shout'),
(17802, 0, 2, 0, 0, 0, 100, 0, 6000, 16000, 13000, 19000, 0, 0, 11, 35105, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Coilfang Warrior - In Combat - Cast Mortal Blow'),
(17803, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Coilfang Oracle - On Aggro - Say Line 0'),
(17803, 0, 1, 0, 0, 0, 100, 2, 6000, 15000, 6000, 15000, 0, 0, 11, 22582, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Coilfang Oracle - In Combat - Cast Frost Shock (Normal Dungeon)'),
(17803, 0, 2, 0, 0, 0, 100, 4, 6000, 15000, 6000, 15000, 0, 0, 11, 37865, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Coilfang Oracle - In Combat - Cast Frost Shock (Heroic Dungeon)'),
(17803, 0, 3, 0, 74, 0, 100, 2, 0, 0, 10000, 20000, 40, 40, 11, 22883, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,       'Coilfang Oracle - On Friendly Between 0-40% Health - Cast Heal (Normal Dungeon)'),
(17803, 0, 4, 0, 74, 0, 100, 4, 0, 0, 10000, 20000, 40, 40, 11, 31730, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,       'Coilfang Oracle - On Friendly Between 0-40% Health - Cast Heal (Heroic Dungeon)'),
(17803, 0, 5, 0, 106, 0, 100, 0, 0, 0, 15000, 23000, 0, 8, 11, 8281, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Coilfang Oracle - Within 0-8 Range - Cast Sonic Burst'),
(17805, 0, 0, 0, 106, 0, 100, 0, 0, 0, 12000, 20000, 0, 8, 11, 10987, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,        'Coilfang Slavemaster - Within 0-8 Range - Cast Geyser'),
(17805, 0, 1, 0, 0, 0, 100, 0, 7000, 16000, 7000, 16000, 0, 0, 11, 6713, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Coilfang Slavemaster - In Combat - Cast Disarm'),
(17805, 0, 2, 3, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 64, 1, 0, 0, 0, 0, 0, 9, 17799, 0, 15, 1, 0, 0, 0, 0,                 'Coilfang Slavemaster - On Aggro - Store Targetlist (Store Nearby Slaves)'),
(17805, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 0,                    'Coilfang Slavemaster - On Aggro - Set Data 1 1 (Call Slaves for Help)'),
(17805, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Coilfang Slavemaster - On Aggro - Say Line 1'), -- Assist me slaves!
(17805, 0, 5, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 45, 2, 2, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 0,                     'Coilfang Slavemaster - On Just Died - Set Data 2 2 (Free Stored Slaves)'),
--
(21231, 0, 0, 0, 0, 0, 100, 0, 5000, 12000, 10000, 15000, 0, 0, 11, 38631, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Greyheart Shield-Bearer - In Combat - Cast Avengers Shield'),
(21231, 0, 1, 0, 9, 0, 100, 0, 0, 0, 10000, 15000, 8, 25, 11, 38630, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Greyheart Shield-Bearer - In Combat - Cast Shield Charge');
--
(21694, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 34158, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Bog Overlord - Out of Combat - Cast Fungal Decay (No Repeat)'),
(21694, 0, 1, 0, 0, 0, 100, 0, 5000, 18000, 5000, 18000, 0, 0, 11, 37272, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,   'Bog Overlord - In Combat - Cast Poison Bolt'),
(21694, 0, 2, 0, 0, 0, 100, 0, 7000, 20000, 15000, 28000, 0, 0, 11, 40340, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Bog Overlord - In Combat - Cast Trample'),
(21694, 0, 3, 4, 2, 0, 100, 1, 0, 20, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Bog Overlord - Between 0-20% Health - Cast Enrage (No Repeat)'),
(21694, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Bog Overlord - Between 0-20% Health - Say Line 0'),
--
(21695, 0, 0, 0, 0, 0, 100, 0, 4000, 12000, 6000, 14000, 0, 0, 11, 37250, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0,    'Tidal Surger - In Combat - Cast Water Spout'),
(21695, 0, 1, 0, 106, 0, 100, 0, 0, 0, 12000, 22000, 0, 8, 11, 15531, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,        'Tidal Surger - Within 0-8 Range - Cast Frost Nova'),
(21696, 0, 0, 0, 0, 0, 100, 0, 4000, 14000, 4000, 14000, 0, 0, 11, 37252, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Steam Surger - In Combat - Cast Water Bolt');

/* Correct quest log text for SSC attunement quest "The Cudgel of Kar'desh" */
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Skar\'this the Heretic in the heroic Slave Pens of Coilfang Reservoir.' WHERE `ID` = 10901;

-- fix reputation gain for creatures in normal Slave Pens
UPDATE `creature_onkill_reputation` SET `MaxStanding1` = 4 WHERE `creature_id` = 17938; -- Coilfang Observer
UPDATE `creature_onkill_reputation` SET `MaxStanding1` = 4 WHERE `creature_id` = 21128; -- Coilfang Ray <Observer's Pet>

-- The Underbog - fix SMART_ACTION_TALK worldserver errors 
UPDATE `smart_scripts` SET `target_type` = 21, `target_param1` = 40 WHERE `entryorguid` = 17725 AND `source_type` = 0 AND `id` = 0;

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
