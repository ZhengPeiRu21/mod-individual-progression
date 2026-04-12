-- fix quest 10182, 10305, 10306, 10307
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (19543, 19544, 19545, 19546);
DELETE FROM `smart_scripts` WHERE `source_type` = 9 AND `entryorguid` IN (1954400, 1954500);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(19543, 0, 0, 1, 54, 0, 100, 512, 0, 0, 0, 0, 0, 0, 64, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                 'Battle-Mage Dathric - On Just Summoned - Store Targetlist'),
(19543, 0, 1, 2, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 71, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Battle-Mage Dathric - On Just Summoned - Remove Weapon'),
(19543, 0, 2, 3, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Battle-Mage Dathric - On Just Summoned - Set Faction 35'),
(19543, 0, 3, 4, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 18, 131840, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Battle-Mage Dathric - On Just Summoned - Set Flags Immune to NPC/PC'),
(19543, 0, 4, 5, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 27, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Battle-Mage Dathric - On Just Summoned - Combat Stop'),
(19543, 0, 5, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 53, 1, 19543, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Battle-Mage Dathric - On Just Summoned - Start WP'),
(19543, 0, 6, 0, 40, 0, 100, 512, 5, 19543, 0, 0, 0, 0, 80, 1954300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Battle-Mage Dathric - On Reached WP5 - Run Script'),
(19543, 0, 7, 0, 0, 0, 100, 0, 0, 3000, 3000, 8000, 0, 0, 11, 36104, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Battle-Mage Dathric - In Combat - Cast \'Torrent of Flames\''),
(19543, 0, 8, 0, 0, 0, 100, 0, 0, 2500, 8500, 12000, 0, 0, 11, 17273, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Battle-Mage Dathric - In Combat - Cast \'Pyroblast\''),
--
(19544, 0, 0, 1, 54, 0, 100, 512, 0, 0, 0, 0, 0, 0, 64, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                 'Conjurer Luminrath - On Just Summoned - Store Targetlist'),
(19544, 0, 1, 2, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Conjurer Luminrath - On Just Summoned - Set Faction 35'),
(19544, 0, 2, 3, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 18, 131840, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Conjurer Luminrath - On Just Summoned - Set Flags Immune to NPC/PC'),
(19544, 0, 3, 4, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 27, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Conjurer Luminrath - On Just Summoned - Combat Stop'),
(19544, 0, 4, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 53, 1, 19544, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Conjurer Luminrath - On Just Summoned - Start WP'),
(19544, 0, 5, 0, 40, 0, 100, 512, 3, 19544, 0, 0, 0, 0, 80, 1954400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Conjurer Luminrath - On Reached WP3 - Run Script'),
(19544, 0, 6, 0, 0, 0, 100, 0, 0, 2500, 1000, 7500, 0, 0, 11, 9532, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Conjurer Luminrath - In Combat - Cast \'Lightning Bolt\''),
(19544, 0, 7, 0, 0, 0, 100, 0, 0, 5000, 15000, 30000, 0, 0, 11, 36110, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Conjurer Luminrath - In Combat - Cast \'Summon Dancing Sword\''),
(19544, 0, 8, 0, 0, 0, 100, 0, 0, 10000, 5000, 15000, 0, 0, 11, 36109, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Conjurer Luminrath - In Combat - Cast \'Blink\''),
--
(19545, 0, 0, 1, 54, 0, 100, 512, 0, 0, 0, 0, 0, 0, 64, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                 'Cohlien Frostweaver - On Just Summoned - Store Targetlist'),
(19545, 0, 1, 2, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Cohlien Frostweaver - On Just Summoned - Set Faction 35'),
(19545, 0, 2, 3, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 18, 131840, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Cohlien Frostweaver - On Just Summoned - Set Flags Immune to NPC/PC'),
(19545, 0, 3, 4, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 27, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Cohlien Frostweaver - On Just Summoned - Combat Stop'),
(19545, 0, 4, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 53, 1, 19545, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Cohlien Frostweaver - On Just Summoned - Start WP'),
(19545, 0, 5, 0, 40, 0, 100, 512, 6, 19545, 0, 0, 0, 0, 80, 1954500, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Cohlien Frostweaver - On Reached WP6 - Run Script'),
(19545, 0, 6, 0, 0, 0, 100, 0, 0, 1000, 25000, 30000, 0, 0, 11, 33245, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Cohlien Frostweaver - In Combat - Cast \'Ice Barrier\''),
(19545, 0, 7, 0, 106, 0, 100, 0, 0, 10000, 2500, 9500, 0, 10, 11, 11831, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Cohlien Frostweaver - In Combat - Cast \'Frost Nova\''),
(19545, 0, 8, 0, 0, 0, 100, 0, 0, 2500, 2500, 11000, 0, 0, 11, 9672, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Cohlien Frostweaver - In Combat - Cast \'Frostbolt\''),
--
(19546, 0, 0, 1, 54, 0, 100, 512, 0, 0, 0, 0, 0, 0, 64, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                 'Abjurist Belmara - On Just Summoned - Store Targetlist'),
(19546, 0, 1, 2, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Abjurist Belmara - On Just Summoned - Set Faction 35'),
(19546, 0, 2, 3, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 18, 131840, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Abjurist Belmara - On Just Summoned - Set Flags Immune to NPC/PC'),
(19546, 0, 3, 4, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 27, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Abjurist Belmara - On Just Summoned - Combat Stop'),
(19546, 0, 4, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 53, 1, 19546, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Abjurist Belmara - On Just Summoned - Start WP'),
(19546, 0, 5, 0, 40, 0, 100, 512, 5, 19546, 0, 0, 0, 0, 80, 1954600, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Abjurist Belmara - On Reached WP5 - Run Script'),
(19546, 0, 6, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 12544, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Abjurist Belmara - On Aggro - Cast \'Frost Armor\''),
(19546, 0, 7, 0, 0, 0, 100, 0, 2000, 5000, 12000, 22000, 0, 0, 11, 17740, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Abjurist Belmara - In Combat - Cast \'Mana Shield\''),
(19546, 0, 8, 0, 0, 0, 100, 0, 0, 6000, 2500, 8000, 0, 0, 11, 34447, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Abjurist Belmara - In Combat - Cast \'Arcane Missiles\''),
(19546, 0, 9, 0, 25, 0, 100, 512, 0, 0, 0, 0, 0, 0, 28, 12544, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Abjurist Belmara - On Reset - Remove Aura \'Frost Armor\''),
--
(1954400, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 3.9619,             'Conjurer Luminrath - Script - Set Orientation'),
(1954400, 9, 1, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Conjurer Luminrath - Script - Say Line'),
(1954400, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 5, 69, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Conjurer Luminrath - Script - Play Emote Use_standing'),
(1954400, 9, 3, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Conjurer Luminrath - Script - Play Emote none'),
(1954400, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Conjurer Luminrath - Script - Say Line 2'),
(1954400, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 36, 19580, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Conjurer Luminrath - Script - Change Entry to Luminrath with Cape'),
(1954400, 9, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Conjurer Luminrath - Script - Set Faction'),
(1954400, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 33, 19548, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 0,             'Conjurer Luminrath - Script - Give Kill Credit'),
--
(1954500, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 1.90241,            'Cohlien Frostweaver - Script - Set Orientation'),
(1954500, 9, 1, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 0, 0, 5, 69, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Cohlien Frostweaver - Script - Play Emote Use_standing'),
(1954500, 9, 2, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Cohlien Frostweaver - Script - Say Line'),
(1954500, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Cohlien Frostweaver - Script - Play Emote none'),
(1954500, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 36, 19579, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Cohlien Frostweaver - Script - Change Entry to Cohlien Frostweaver with Hat'),
(1954500, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Cohlien Frostweaver - Script - Set Faction'),
(1954500, 9, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 33, 19550, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 0,             'Cohlien Frostweaver - Script - Give Kill Credit');

-- fix creatures placed under ground
UPDATE `creature` SET `position_x` = 2185.01, `position_y` = 2281.85, `position_z` = 76.2261 WHERE `guid` = 67474;
UPDATE `creature` SET `position_x` = 2246.56, `position_y` = 2294.01, `position_z` = 86.2593 WHERE `guid` = 67476;
UPDATE `creature` SET `position_x` = 2189.28, `position_y` = 2225.27, `position_z` = 82.2145 WHERE `guid` = 67480;

-- fix quest: Escape from the Staging Grounds (didn't complete, because closest player was stored as target, now using invoker)
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (20763);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(20763, 0, 0, 1, 19, 0, 100, 0, 10425, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 0,        'Captured Protectorate Vanguard - On Quest Taken - Say Line 0'),
(20763, 0, 1, 2, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 53, 1, 20763, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Captured Protectorate Vanguard - On Quest Taken - Start Waypoint'),
(20763, 0, 2, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 64, 1, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0,          'Captured Protectorate Vanguard - On Quest Taken - Store Targetlist'),
(20763, 0, 3, 0, 40, 0, 100, 512, 16, 20763, 0, 0, 0, 0, 54, 4000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Captured Protectorate Vanguard - On Waypoint 16 Reached - Pause Waypoint'),
(20763, 0, 4, 5, 40, 0, 100, 512, 17, 20763, 0, 0, 0, 0, 15, 10425, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 0, 'Captured Protectorate Vanguard - On Waypoint 17 Reached - Quest Credit'),
(20763, 0, 5, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Captured Protectorate Vanguard - On Waypoint 17 Reached - Say Line 1'),
(20763, 0, 6, 7, 40, 0, 100, 0, 18, 20763, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Captured Protectorate Vanguard - On Waypoint 18 Reached - Say Line 2'),
(20763, 0, 7, 8, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 35517, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Captured Protectorate Vanguard - On Waypoint 18 Reached - Cast \'Teleport\''),
(20763, 0, 8, 9, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Captured Protectorate Vanguard - On Waypoint 18 Reached - Set Npc Flag'),
(20763, 0, 9, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 41, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,        'Captured Protectorate Vanguard - On Waypoint 18 Reached - Despawn In 3000 ms'),
(20763, 0, 10, 0, 6, 0, 100, 512, 0, 0, 0, 0, 0, 0, 6, 10425, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 0,       'Captured Protectorate Vanguard - On Just Died - Fail Quest'),
(20763, 0, 11, 0, 11, 0, 100, 512, 0, 0, 0, 0, 0, 0, 81, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Captured Protectorate Vanguard - On Respawn - Set Npc Flag');

-- fix quest: Sabotage the Warp-Gate! (had wrong text and wrong spawn location for creatures)
-- still has issue with quest npc running off to attack creature spawns and then complaining he's under attack
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (20281);
DELETE FROM `smart_scripts` WHERE `source_type` = 9 AND `entryorguid` IN (2028100, 2028101, 2028102, 2028103);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
-- 
(20281, 0, 0, 1, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 18, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'On Respawn - Set Flag'),
(20281, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 81, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'On Respawn - Set NPC Flag'),
--
(20281, 0, 2, 0, 19, 0, 100, 0, 10310, 0, 0, 0, 0, 0, 80, 2028100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'On Quest Accept - Run Script 2028100'),
--
(20281, 0, 3, 4, 40, 0, 100, 0, 5, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'On WP Reached - Talk'),
(20281, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 54, 7000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,        'On WP Reached - WP Pause'),
--
(20281, 0, 5, 6, 40, 0, 100, 0, 6, 0, 0, 0, 0, 0, 54, 40000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'On WP Reached - WP Pause'),
(20281, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 80, 2028101, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'On WP Reached - Run Script 2028101'),
(20281, 0, 7, 17, 56, 0, 100, 0, 6, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'On WP Resume - Talk'),
--
(20281, 0, 8, 9, 40, 0, 100, 0, 9, 0, 0, 0, 0, 0, 54, 40000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'On WP Reached - WP Pause'),
(20281, 0, 9, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 80, 2028102, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'On WP Reached - Run Script 2028102'),
(20281, 0, 10, 17, 56, 0, 100, 0, 9, 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'On WP Resume - Talk'),
--
(20281, 0, 11, 12, 40, 0, 100, 0, 12, 0, 0, 0, 0, 0, 54, 40000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'On WP Reached - WP Pause'),
(20281, 0, 12, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 80, 2028103, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'On WP Reached - Run Script 2028103'),
(20281, 0, 13, 17, 56, 0, 100, 0, 12, 0, 0, 0, 0, 0, 1, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'On WP Resume - Talk'),
--
(20281, 0, 14, 0, 40, 0, 100, 0, 14, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, 20296, 100, 0, 0, 0, 0, 0, 0,  'On WP Reached - Set Data'),
(20281, 0, 15, 0, 40, 0, 100, 0, 15, 0, 0, 0, 0, 0, 1, 6, 0, 0, 0, 0, 0, 12, 16777215, 0, 0, 0, 0, 0, 0, 0,  'On WP Reached - Talk'),
(20281, 0, 16, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'On Aggro - Talk'),
(20281, 0, 17, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Linked - Remove Emote State'),
--
(2028100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                                  'Script9 - On Quest Accept - Talk'),
(2028100, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 19, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                               'Script9 - On Quest Accept - Remove Flag'),
(2028100, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                                 'Script9 - On Quest Accept - Set NPC Flag'),
(2028100, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                                  'Script9 - On Quest Accept - Set React State Passive'),
(2028100, 9, 4, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 0, 0, 53, 2, 20281, 0, 10310, 5000, 2, 7, 0, 0, 0, 0, 0, 0, 0, 0,              'Script9 - On Quest Accept - Start WP'),
(2028100, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                                  'Script9 - On Quest Accept - Talk'),
--
(2028101, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 17, 469, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                               'Script9 - Set Emote State'),
(2028101, 9, 1, 0, 0, 0, 100, 1, 8000, 8000, 0, 0, 0, 0, 12, 20399, 4, 40000, 0, 1, 0, 8, 0, 0, 0, 0, 3021.84, 2718.74, 115.038, 0, 'Script9 - Summon Creature'),
(2028101, 9, 2, 0, 0, 0, 100, 1, 2000, 2000, 0, 0, 0, 0, 12, 20399, 4, 40000, 0, 1, 0, 8, 0, 0, 0, 0, 3021.84, 2718.74, 115.038, 0, 'Script9 - Summon Creature'),
(2028101, 9, 3, 0, 0, 0, 100, 1, 2000, 2000, 0, 0, 0, 0, 12, 20399, 4, 40000, 0, 1, 0, 8, 0, 0, 0, 0, 3021.84, 2718.74, 115.038, 0, 'Script9 - Summon Creature'),
(2028101, 9, 4, 0, 0, 0, 100, 1, 2000, 2000, 0, 0, 0, 0, 12, 20399, 4, 40000, 0, 1, 0, 8, 0, 0, 0, 0, 3021.84, 2718.74, 115.038, 0, 'Script9 - Summon Creature'),
(2028101, 9, 5, 0, 0, 0, 100, 1, 2000, 2000, 0, 0, 0, 0, 12, 20399, 4, 40000, 0, 1, 0, 8, 0, 0, 0, 0, 3021.84, 2718.74, 115.038, 0, 'Script9 - Summon Creature'),
(2028101, 9, 6, 0, 0, 0, 100, 1, 2000, 2000, 0, 0, 0, 0, 12, 20399, 4, 40000, 0, 1, 0, 8, 0, 0, 0, 0, 3021.84, 2718.74, 115.038, 0, 'Script9 - Summon Creature'),
(2028101, 9, 7, 0, 0, 0, 100, 1, 2000, 2000, 0, 0, 0, 0, 12, 20399, 4, 40000, 0, 1, 0, 8, 0, 0, 0, 0, 3021.84, 2718.74, 115.038, 0, 'Script9 - Summon Creature'),
(2028101, 9, 8, 0, 0, 0, 100, 1, 2000, 2000, 0, 0, 0, 0, 12, 20399, 4, 40000, 0, 1, 0, 8, 0, 0, 0, 0, 3021.84, 2718.74, 115.038, 0, 'Script9 - Summon Creature'),
--
(2028102, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 17, 469, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                               'Script9 - Set Emote State'),
(2028102, 9, 1, 0, 0, 0, 100, 1, 8000, 8000, 0, 0, 0, 0, 12, 20402, 4, 40000, 0, 1, 0, 8, 0, 0, 0, 0, 3021.84, 2718.74, 115.038, 0, 'Script9 - Summon Creature'),
(2028102, 9, 2, 0, 0, 0, 100, 1, 6000, 6000, 0, 0, 0, 0, 12, 20402, 4, 40000, 0, 1, 0, 8, 0, 0, 0, 0, 3021.84, 2718.74, 115.038, 0, 'Script9 - Summon Creature'),
(2028102, 9, 3, 0, 0, 0, 100, 1, 6000, 6000, 0, 0, 0, 0, 12, 20402, 4, 40000, 0, 1, 0, 8, 0, 0, 0, 0, 3021.84, 2718.74, 115.038, 0, 'Script9 - Summon Creature'),
--
(2028103, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 17, 469, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                               'Script9 - Set Emote State'),
(2028103, 9, 1, 0, 0, 0, 100, 1, 8000, 8000, 0, 0, 0, 0, 12, 20403, 4, 40000, 0, 1, 0, 8, 0, 0, 0, 0, 3021.84, 2718.74, 115.038, 0, 'Script9 - Summon Creature'),
(2028103, 9, 2, 0, 0, 0, 100, 0, 12000, 12000, 0, 0, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                          'Script9 - Talk');

DELETE FROM `creature_text` WHERE `CreatureID` = 20281;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
--
(20281, 0, 0, 'Let\'s proceed at a brisk pace.', 12, 0, 100, 0, 0, 0, 17941, 0, 'Drijya'),
(20281, 1, 0, 'We\'ll start at that first energy pylon, straight ahead. Remember, try to keep them off of me.', 12, 0, 100, 25, 0, 0, 17942, 0, 'Drijya'),
(20281, 2, 0, 'I\'m done with this pylon. On to the next.', 12, 0, 100, 0, 0, 0, 17943, 0, 'Drijya'),
(20281, 3, 0, 'Alright, pylon two down. Now for the heat manifold.', 12, 0, 100, 0, 0, 0, 17944, 0, 'Drijya'),
(20281, 4, 0, 'That should do it. The teleporter should blow any second now!', 12, 0, 100, 0, 0, 0, 17945, 0, 'Drijya'),
(20281, 5, 0, 'Ok, let\'s get out of here!', 12, 0, 100, 0, 0, 0, 17946, 0, 'Drijya'),
(20281, 6, 0, 'Thank you, $N! I couldn\'t have done it without you. You\'ll let Gahruj know?', 12, 0, 100, 0, 0, 0, 17949, 0, 'Drijya'),
(20281, 7, 0, 'Keep them off me!', 12, 0, 100, 0, 0, 0, 17950, 0, 'Drijya'),
(20281, 8, 0, 'Very well.  Before we head down there, take a moment to prepare yourself.', 12, 0, 100, 0, 0, 0, 17940, 0, 'Drijya');

-- add waypoints for Summoner Kanthin
DELETE FROM `creature` WHERE `id1` IN (19657, 19653);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, 
`wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
--
(70089, 19653, 0, 0, 530, 0, 0, 1, 1, 0, 2948.9099, 2280.3501, 161.7080, 5.9072, 300, 0, 0, 2530, 0, 0, 0, 0, 0, '', 0, 0, NULL),    -- Glacius
(70141, 19657, 0, 0, 530, 0, 0, 1, 1, 0, 2952.3401, 2280.5801, 161.7080, 5.9091, 300, 0, 1, 5409, 3080, 2, 0, 0, 0, '', 0, 0, NULL); -- Summoner Kanthin

DELETE FROM `creature_formations` WHERE `leaderGUID` IN (70141);
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES 
(70141, 70141, 0, 0,  515, 0, 0),  -- Summoner Kanthin
(70141, 70089, 4, 225, 515, 0, 0); -- Glacius

DELETE FROM `creature_addon` WHERE `guid` IN (70141);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(70141, 701410, 0, 0, 0, 0, 0, '');

DELETE FROM `waypoint_data` WHERE `id` IN (701410);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
--
(701410, 1, 2952.34, 2280.58, 161.708, NULL, 0, 0, 0, 100, 0),
(701410, 2, 2963.22, 2285.29, 161.715, NULL, 0, 0, 0, 100, 0),
(701410, 3, 2972.13, 2290.53, 161.709, NULL, 0, 0, 0, 100, 0),
(701410, 4, 2981.27, 2296.16, 161.709, NULL, 0, 0, 0, 100, 0),
(701410, 5, 2985.89, 2298.46, 161.709, NULL, 0, 0, 0, 100, 0),
(701410, 6, 2991.7, 2294.17, 161.709, NULL, 0, 0, 0, 100, 0),
(701410, 7, 2998.74, 2293.21, 161.706, NULL, 0, 0, 0, 100, 0),
(701410, 8, 3005.23, 2292.41, 161.537, NULL, 0, 0, 0, 100, 0),
(701410, 9, 3011.54, 2291.28, 160.931, NULL, 0, 0, 0, 100, 0),
(701410, 10, 3012.24, 2298.92, 161.379, NULL, 0, 0, 0, 100, 0),
(701410, 11, 3011.92, 2302.38, 161.554, NULL, 0, 0, 0, 100, 0),
(701410, 12, 3012.24, 2298.92, 161.379, NULL, 0, 0, 0, 100, 0),
(701410, 13, 3011.54, 2291.28, 160.931, NULL, 0, 0, 0, 100, 0),
(701410, 14, 3005.23, 2292.41, 161.537, NULL, 0, 0, 0, 100, 0),
(701410, 15, 2998.74, 2293.21, 161.706, NULL, 0, 0, 0, 100, 0),
(701410, 16, 2991.7, 2294.17, 161.709, NULL, 0, 0, 0, 100, 0),
(701410, 17, 2985.89, 2298.46, 161.709, NULL, 0, 0, 0, 100, 0),
(701410, 18, 2981.27, 2296.16, 161.709, NULL, 0, 0, 0, 100, 0),
(701410, 19, 2972.13, 2290.53, 161.709, NULL, 0, 0, 0, 100, 0),
(701410, 20, 2963.22, 2285.29, 161.715, NULL, 0, 0, 0, 100, 0);

-- Arena vendors
SET @CGUID      := 659000;

SET @Vixton     := 120278;
SET @Krixel     := 123396;
SET @Leeni      := 124392;

DELETE FROM `creature` WHERE `guid` IN (@CGUID+71, @CGUID+72);
DELETE FROM `creature` WHERE `id1` IN (23396, 24392, 26352, @Leeni, @Krixel);
DELETE FROM `creature` WHERE `id1` IN (32354, 33919, 33930, 33941, 32355, 33916, 33932, 33933, 32356, 33918, 33931, 33940, 34089, 34091, 34094);
INSERT INTO `creature` (`guid`, `id1`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES 
--
(@CGUID+71, 20278,   530, 1, 1, 3070.16, 3635.11, 143.864, 0.750492, 180), -- Vixton Pinchwhistle, WotLK Season 1
(@CGUID+72, @Vixton, 530, 1, 1, 3070.16, 3635.11, 143.864, 0.750492, 180), -- Vixton Pinchwhistle, WotLK Season 2
(@CGUID+73, 24392, 530, 1, 1, 3070.16, 3635.11, 143.864, 0.750492, 180),   -- Leeni Smalls, WotLK Season 3
(@CGUID+74, @Leeni, 530, 1, 1, 3070.16, 3635.11, 143.864, 0.750492, 180),  -- Leeni Smalls, WotLK Season 4
(@CGUID+75, 32354, 530, 1, 1, 3070.16, 3635.11, 143.864, 0.750492, 180),   -- Leeni Smalls, WotLK Season 5
(@CGUID+76, 33919, 530, 1, 1, 3070.16, 3635.11, 143.864, 0.750492, 180),   -- Leeni Smalls, WotLK Season 6
(@CGUID+77, 33930, 530, 1, 1, 3070.16, 3635.11, 143.864, 0.750492, 180),   -- Leeni Smalls, WotLK Season 7
(@CGUID+78, 33941, 530, 1, 1, 3070.16, 3635.11, 143.864, 0.750492, 180),   -- Leeni Smalls, WotLK Season 8
--
(@CGUID+79, 23396,   530, 1, 1, 3073.99, 3633.34, 143.881, 2.09012, 180),  -- Krixel Pinchwhistle, WotLK Season 2
(@CGUID+80, @Krixel, 530, 1, 1, 3073.99, 3633.34, 143.881, 2.09012, 180),  -- Krixel Pinchwhistle, WotLK Season 3
(@CGUID+81, 26352, 530, 1, 1, 3073.99, 3633.34, 143.881, 2.09012, 180),    -- Big Zokk Torquewrench, WotLK Season 4
(@CGUID+82, 32355, 530, 1, 1, 3073.99, 3633.34, 143.881, 2.09012, 180),    -- Big Zokk Torquewrench, WotLK Season 5
(@CGUID+83, 33916, 530, 1, 1, 3073.99, 3633.34, 143.881, 2.09012, 180),    -- Big Zokk Torquewrench, WotLK Season 6
(@CGUID+84, 33932, 530, 1, 1, 3073.99, 3633.34, 143.881, 2.09012, 180),    -- Big Zokk Torquewrench, WotLK Season 7
(@CGUID+85, 33933, 530, 1, 1, 3073.99, 3633.34, 143.881, 2.09012, 180),    -- Big Zokk Torquewrench, WotLK Season 8
--
(@CGUID+86, 32356, 530, 1, 1, 3066.45, 3638.87, 145.218, 0.875901, 180),   -- Kezzik the Striker, WotLK Season 5
(@CGUID+87, 33918, 530, 1, 1, 3066.45, 3638.87, 145.218, 0.875901, 180),   -- Kezzik the Striker, WotLK Season 6
(@CGUID+88, 33931, 530, 1, 1, 3066.45, 3638.87, 145.218, 0.875901, 180),   -- Kezzik the Striker, WotLK Season 7
(@CGUID+89, 33940, 530, 1, 1, 3066.45, 3638.87, 145.218, 0.875901, 180),   -- Kezzik the Striker, WotLK Season 8
--
(@CGUID+90, 34089, 530, 1, 1, 3078.46, 3636.98, 145.385, 3.12999, 180),    -- Grez Brainboiler, WotLK Season 6
(@CGUID+91, 34091, 530, 1, 1, 3078.46, 3636.98, 145.385, 3.12999, 180),    -- Grez Brainboiler, WotLK Season 7
(@CGUID+92, 34094, 530, 1, 1, 3078.46, 3636.98, 145.385, 3.12999, 180);    -- Grez Brainboiler, WotLK Season 8


UPDATE `creature` SET `ScriptName` = 'npc_ipp_tbc_S1'   WHERE `guid` IN (@CGUID+71);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_tbc_S2'   WHERE `guid` IN (@CGUID+72, @CGUID+79);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_tbc_S3'   WHERE `guid` IN (@CGUID+73, @CGUID+80);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_tbc_S4'   WHERE `guid` IN (@CGUID+74, @CGUID+81);

UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk_S5' WHERE `guid` IN (@CGUID+75, @CGUID+82, @CGUID+86);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk_S6' WHERE `guid` IN (@CGUID+76, @CGUID+83, @CGUID+87, @CGUID+90);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk_S7' WHERE `guid` IN (@CGUID+77, @CGUID+84, @CGUID+88, @CGUID+91);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk_S8' WHERE `guid` IN (@CGUID+78, @CGUID+85, @CGUID+89, @CGUID+92);

DELETE FROM `creature_addon` WHERE `guid` BETWEEN @CGUID+71 AND @CGUID+92;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(@CGUID+71, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+72, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+73, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+74, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+75, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+76, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+77, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+78, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+79, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+80, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+81, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+82, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+83, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+84, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+85, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+86, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+87, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+88, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+89, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+90, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+91, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+92, 0, 0, 0, 1, 0, 0, NULL);

/* The Heap fixes */
SET @CGUID   := 670000;
SET @WPID    := 6700000;

DELETE FROM `creature` WHERE `id1` IN (18875, 19642);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, 
`wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
--
(@CGUID+101, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2493.2236, 4047.8603, 133.6053, 0.0523, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+102, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2468.4416, 4041.4179, 127.5681, 4.5553, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+103, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2473.7265, 4035.1054, 128.8390, 2.0071, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+104, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2459.7622, 4032.2712, 124.8421, 0.9773, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+105, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2600.2282, 3911.5981, 136.2060, 4.9567, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+106, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2554.3347, 3886.2026, 138.6506, 0.9250, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+107, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2557.0432, 3896.5261, 138.0386, 4.6076, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+108, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2526.9973, 3859.1813, 136.8578, 5.1836, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+109, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2530.3850, 3847.1333, 137.4536, 2.4434, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+110, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2483.0676, 3860.4797, 125.3240, 4.5727, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+111, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2485.3046, 3848.2587, 126.0828, 2.9321, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+112, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2515.9096, 3784.0686, 132.5868, 5.8643, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+113, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2523.6750, 3782.0061, 135.0500, 2.8972, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+114, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2515.2541, 3772.5300, 132.3054, 2.1991, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+115, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2654.4431, 3856.9252, 138.0545, 5.8119, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+116, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2678.3569, 3814.7370, 137.8357, 5.6025, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+117, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2675.0178, 3803.1718, 139.3871, 1.0471, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+118, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2682.5480, 3803.6853, 140.1650, 6.2133, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+119, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2612.6723, 3731.4899, 145.0707, 6.0737, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+120, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2620.7150, 3738.4899, 144.9399, 4.1713, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+121, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2625.1333, 3726.2438, 144.7554, 1.2391, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+122, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2611.6418, 3780.2622, 142.1122, 5.0265, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+123, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2613.5512, 3770.8515, 143.1551, 1.8151, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+124, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2627.6955, 3775.3352, 143.1132, 3.3684, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+125, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2643.7111, 3773.7170, 143.9701, 5.9515, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+126, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2655.8430, 3776.9770, 144.0731, 3.3161, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+127, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2703.1691, 3752.9753, 142.2192, 1.6755, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+128, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2692.8112, 3763.2192, 142.8174, 4.9218, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+129, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2668.5402, 3744.2734, 143.6609, 3.7873, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+130, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2653.4018, 3710.3728, 144.4481, 5.7944, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+131, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2666.3569, 3718.8215, 144.5070, 4.8171, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+132, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2669.4016, 3705.8073, 144.0050, 0.9075, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+133, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2707.0927, 3772.5764, 142.3062, 3.0967, 300, 0, 1, 6326, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+134, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2670.7036, 3821.6115, 139.2919, 4.3861, 300, 0, 1, 6326, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+135, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2607.5285, 3725.2192, 144.2711, 1.6109, 300, 0, 1, 6326, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+136, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2491.4416, 3862.7604, 128.0000, 4.9307, 300, 0, 1, 6326, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+137, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2608.2902, 3902.4914, 135.5155, 3.1545, 300, 0, 1, 6326, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+138, 18875, 0, 0, 530, 0, 0, 1, 1, 1, 2472.1313, 4026.4887, 127.8266, 0.6927, 300, 0, 1, 6326, 0, 2, 0, 0, 0, '', 0, 0, NULL),
--
(@CGUID+141, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2493.55, 3915.61, 127.110, 1.2740, 180, 0, 0, 6542, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+142, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2504.72, 3903.35, 129.319, 0.1396, 180, 0, 0, 6542, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+143, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2648.00, 3763.06, 143.565, 3.1641, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+144, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2668.26, 3750.03, 143.608, 5.6922, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+145, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2679.75, 3713.08, 144.104, 3.9176, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+146, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2687.15, 3733.26, 143.820, 5.3474, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+147, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2694.89, 3753.47, 143.085, 4.4080, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+148, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2618.97, 3766.44, 143.529, 5.9506, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+149, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2624.01, 3755.87, 144.174, 5.0293, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+150, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2628.27, 3734.59, 144.932, 2.5821, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+151, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2671.83, 3800.06, 140.558, 3.1308, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+152, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2662.68, 3848.30, 138.181, 2.2347, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+153, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2663.59, 3822.31, 138.388, 3.8144, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+154, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2653.54, 3802.00, 140.269, 2.5836, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+155, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2577.42, 3737.24, 145.059, 0.2760, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+156, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2607.27, 3796.84, 141.034, 4.3894, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+157, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2567.54, 3777.65, 142.653, 3.5173, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+158, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2531.69, 3777.07, 137.558, 0.3880, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+159, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2609.41, 3823.15, 139.041, 3.4216, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+160, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2721.24, 3714.03, 139.533, 3.0479, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+161, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2545.42, 3815.48, 141.253, 1.5938, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+162, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2492.92, 3954.59, 123.340, 2.5587, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+163, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2528.35, 3794.03, 136.311, 4.0679, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+164, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2483.14, 3838.20, 124.266, 2.9449, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+165, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2510.90, 3820.29, 130.064, 4.4633, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+166, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2519.78, 3851.19, 134.574, 5.4565, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+167, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2598.64, 3900.12, 136.893, 2.7108, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+168, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2539.79, 3859.37, 139.473, 5.4714, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+169, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2564.83, 3885.81, 138.153, 4.1943, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+170, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2581.14, 3869.95, 138.955, 1.1742, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+171, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2524.24, 3942.96, 126.237, 0.8268, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+172, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2540.84, 3927.82, 135.783, 2.8477, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+173, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2517.68, 3884.41, 134.999, 3.0243, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+174, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2580.77, 3924.47, 136.690, 6.1488, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+175, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2450.93, 4014.51, 120.112, 2.2656, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+176, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2484.48, 4051.00, 131.252, 1.1435, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+177, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2481.17, 4016.70, 128.634, 1.0437, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+178, 19642, 0, 0, 530, 0, 0, 1, 1, 1, 2449.39, 4049.83, 121.664, 4.7628, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL);

DELETE FROM `creature_template_addon` WHERE `entry` = 18875;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(18875, 0, 0, 0, 1, 28, 0, NULL);

DELETE FROM `creature_addon` WHERE `guid` IN (67559, 67560, 67562, 67565, 67566, 67567, 67568, 67569, 67571, 67572, 67574, 67575, 67576, 67577, 67578, 67579, 67580, 67582, 70065);
DELETE FROM `creature_addon` WHERE `guid` IN (@CGUID+133, @CGUID+134, @CGUID+135, @CGUID+136, @CGUID+137, @CGUID+138);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
--
(@CGUID+133, @WPID+1330, 0, 0, 1, 0, 0, ''),
(@CGUID+134, @WPID+1340, 0, 0, 1, 0, 0, ''),
(@CGUID+135, @WPID+1350, 0, 0, 1, 0, 0, ''),
(@CGUID+136, @WPID+1360, 0, 0, 1, 0, 0, ''),
(@CGUID+137, @WPID+1370, 0, 0, 1, 0, 0, ''),
(@CGUID+138, @WPID+1380, 0, 0, 1, 0, 0, '');

DELETE FROM `waypoint_data` WHERE `id` IN (@WPID+1330, @WPID+1340, @WPID+1350, @WPID+1360, @WPID+1370, @WPID+1380);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
--
(@WPID+1330, 1, 2706.5, 3775.35, 142.265, NULL, 0, 0, 0, 100, 0),
(@WPID+1330, 2, 2682.88, 3773.67, 141.28, NULL, 0, 0, 0, 100, 0),
(@WPID+1330, 3, 2664.01, 3764.65, 143.128, NULL, 0, 0, 0, 100, 0),
(@WPID+1330, 4, 2633.5, 3754.44, 144.182, NULL, 0, 0, 0, 100, 0),
(@WPID+1330, 5, 2599.49, 3767.54, 143.5, NULL, 0, 0, 0, 100, 0),
(@WPID+1330, 6, 2565.73, 3780.04, 142.404, NULL, 0, 0, 0, 100, 0),
(@WPID+1330, 7, 2533.22, 3799.46, 137.998, NULL, 0, 0, 0, 100, 0),
(@WPID+1330, 8, 2506.08, 3832.59, 129.954, NULL, 0, 0, 0, 100, 0),
(@WPID+1330, 9, 2507.16, 3866.2, 131.767, NULL, 0, 0, 0, 100, 0),
(@WPID+1330, 10, 2545.39, 3882.25, 138.854, NULL, 0, 0, 0, 100, 0),
(@WPID+1330, 11, 2567.63, 3881.5, 138.439, NULL, 0, 0, 0, 100, 0),
(@WPID+1330, 12, 2590.2, 3904.55, 136.909, NULL, 0, 0, 0, 100, 0),
--
(@WPID+1340, 1, 2672.75, 3820.59, 139.305, NULL, 0, 0, 0, 100, 0),
(@WPID+1340, 2, 2664.23, 3802.49, 139.402, NULL, 0, 0, 0, 100, 0),
(@WPID+1340, 3, 2662.61, 3784.01, 141.743, NULL, 0, 0, 0, 100, 0),
(@WPID+1340, 4, 2657.52, 3768.14, 143.54, NULL, 0, 0, 0, 100, 0),
(@WPID+1340, 5, 2645.83, 3760.52, 143.723, NULL, 0, 0, 0, 100, 0),
(@WPID+1340, 6, 2615.32, 3765.42, 143.59, NULL, 0, 0, 0, 100, 0),
(@WPID+1340, 7, 2599.92, 3775.85, 142.276, NULL, 0, 0, 0, 100, 0),
(@WPID+1340, 8, 2612.58, 3796.7, 141.96, NULL, 0, 0, 0, 100, 0),
(@WPID+1340, 9, 2635.67, 3809.04, 140.755, NULL, 0, 0, 0, 100, 0),
(@WPID+1340, 10, 2634.29, 3848.28, 139.251, NULL, 0, 0, 0, 100, 0),
(@WPID+1340, 11, 2647.84, 3852.96, 138.382, NULL, 0, 0, 0, 100, 0),
--
(@WPID+1350, 1, 2607.35, 3726.63, 144.436, NULL, 0, 0, 0, 100, 0),
(@WPID+1350, 2, 2606.85, 3742.29, 145.291, NULL, 0, 0, 0, 100, 0),
(@WPID+1350, 3, 2623.96, 3747.46, 144.522, NULL, 0, 0, 0, 100, 0),
(@WPID+1350, 4, 2652.63, 3723.98, 144.414, NULL, 0, 0, 0, 100, 0),
(@WPID+1350, 5, 2676.07, 3724.03, 144.316, NULL, 0, 0, 0, 100, 0),
(@WPID+1350, 6, 2695.75, 3753.35, 143.032, NULL, 0, 0, 0, 100, 0),
--
(@WPID+1360, 1, 2492.57, 3860.92, 128.178, NULL, 0, 0, 0, 100, 0),
(@WPID+1360, 2, 2497.89, 3833.78, 128.055, NULL, 0, 0, 0, 100, 0),
(@WPID+1360, 3, 2505.95, 3800.5, 125.882, NULL, 0, 0, 0, 100, 0),
(@WPID+1360, 4, 2506.9, 3767.34, 129.5, NULL, 0, 0, 0, 100, 0),
(@WPID+1360, 5, 2528.99, 3763.7, 135.073, NULL, 0, 0, 0, 100, 0),
(@WPID+1360, 6, 2529.54, 3799.21, 136.562, NULL, 0, 0, 0, 100, 0),
(@WPID+1360, 7, 2508.93, 3834.16, 130.8, NULL, 0, 0, 0, 100, 0),
(@WPID+1360, 8, 2480.47, 3839.58, 123.363, NULL, 0, 0, 0, 100, 0),
--
(@WPID+1370, 1, 2608.29, 3902.49, 135.432, NULL, 0, 0, 0, 100, 0),
(@WPID+1370, 2, 2567.69, 3901.96, 137.591, NULL, 0, 0, 0, 100, 0),
(@WPID+1370, 3, 2549.9, 3901.63, 135.38, NULL, 0, 0, 0, 100, 0),
(@WPID+1370, 4, 2539.45, 3876.08, 138.79, NULL, 0, 0, 0, 100, 0),
(@WPID+1370, 5, 2534.01, 3847.28, 138.322, NULL, 0, 0, 0, 100, 0),
(@WPID+1370, 6, 2525.08, 3843.35, 135.762, NULL, 0, 0, 0, 100, 0),
(@WPID+1370, 7, 2520.88, 3857.2, 135.1, NULL, 0, 0, 0, 100, 0),
(@WPID+1370, 8, 2557.45, 3879.27, 138.754, NULL, 0, 0, 0, 100, 0),
(@WPID+1370, 9, 2575.86, 3898.82, 137.714, NULL, 0, 0, 0, 100, 0),
(@WPID+1370, 10, 2603.94, 3922.44, 136.214, NULL, 0, 0, 0, 100, 0),
--
(@WPID+1380, 1, 2472.24, 4030.05, 128.14, NULL, 0, 0, 0, 100, 0),
(@WPID+1380, 2, 2487.97, 4039.63, 132.33, NULL, 0, 0, 0, 100, 0),
(@WPID+1380, 3, 2493.34, 4025.29, 132.999, NULL, 0, 0, 0, 100, 0),
(@WPID+1380, 4, 2462.86, 4012.1, 123.805, NULL, 0, 0, 0, 100, 0),
(@WPID+1380, 5, 2448.48, 4036.84, 120.872, NULL, 0, 0, 0, 100, 0),
(@WPID+1380, 6, 2457.17, 4047.86, 125.012, NULL, 0, 0, 0, 100, 0),
(@WPID+1380, 7, 2476.59, 4052.68, 129.313, NULL, 0, 0, 0, 100, 0),
(@WPID+1380, 8, 2483.38, 4035.43, 131.168, NULL, 0, 0, 0, 100, 0),
(@WPID+1380, 9, 2484.59, 4012.73, 130.11, NULL, 0, 0, 0, 100, 0),
(@WPID+1380, 10, 2479.91, 3999.54, 126.257, NULL, 0, 0, 0, 100, 0),
(@WPID+1380, 11, 2475.95, 3984.73, 119.076, NULL, 0, 0, 0, 100, 0),
(@WPID+1380, 12, 2488.69, 4011.84, 131.44, NULL, 0, 0, 0, 100, 0),
(@WPID+1380, 13, 2481.41, 4044.58, 130.465, NULL, 0, 0, 0, 100, 0),
(@WPID+1380, 14, 2459.91, 4047.16, 125.761, NULL, 0, 0, 0, 100, 0),
(@WPID+1380, 15, 2445.96, 4037.96, 119.968, NULL, 0, 0, 0, 100, 0),
(@WPID+1380, 16, 2458.39, 4022.9, 123.463, NULL, 0, 0, 0, 100, 0);
