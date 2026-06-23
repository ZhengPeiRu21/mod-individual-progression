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

-- fix quest: Sabotage the Warp-Gate! (https://www.youtube.com/watch?v=4lRGP8EW2PM)
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (20281);
DELETE FROM `smart_scripts` WHERE `source_type` = 9 AND `entryorguid` IN (2028100, 2028101, 2028102, 2028103, 2028104);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--  
(20281, 0, 0, 1, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 18, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'On Respawn - Set Flag'),
(20281, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 81, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'On Respawn - Set NPC Flag'),
(20281, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 235, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'On Respawn - Stop WP'),
(20281, 0, 3, 0, 19, 0, 100, 0, 10310, 0, 0, 0, 0, 0, 80, 2028100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'On Quest Accept - Run Script 2028100'),
--
(20281, 0, 4, 0, 108, 0, 100, 0, 4, 720420, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'On WP Reached - Talk'),
(20281, 0, 5, 0, 108, 0, 100, 0, 6, 720420, 0, 0, 0, 0, 80, 2028101, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'On WP Reached - Run Script 2028101'),
(20281, 0, 6, 0, 108, 0, 100, 0, 12, 720420, 0, 0, 0, 0, 80, 2028102, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'On WP Reached - Run Script 2028102'),
(20281, 0, 7, 0, 108, 0, 100, 0, 19, 720420, 0, 0, 0, 0, 80, 2028103, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'On WP Reached - Run Script 2028103'),
(20281, 0, 8, 0, 108, 0, 100, 0, 20, 720420, 0, 0, 0, 0, 80, 2028104, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'On WP Reached - Run Script 2028104'),
(20281, 0, 9, 0, 108, 0, 100, 0, 21, 720420, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, 20296, 100, 0, 0, 0, 0, 0, 0,   'On WP Reached - Set Data'), -- blow up teleporter
(20281, 0, 10, 11, 108, 0, 100, 0, 26, 720420, 0, 0, 0, 0, 1, 6, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 0,       'On WP Reached - Talk'),
(20281, 0, 11, 12, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 15, 10310, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 0,          'On WP Reached - Quest Credit'),
(20281, 0, 12, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'On WP Reached - Despawn After 5 Seconds'),
--
(20281, 0, 13, 0, 2, 0, 100, 0, 0, 75, 10000, 10000, 0, 0, 1, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Between 0-75% Health - Talk'), -- Get them off me!
(20281, 0, 14, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'On Aggro - Remove Emote State'),
--
(2028100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 64, 1, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0,                                'Script9 - On Quest Accept - Store Targetlist'),
(2028100, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                                  'Script9 - On Quest Accept - Talk'),
(2028100, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 19, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                               'Script9 - On Quest Accept - Remove Flag'),
(2028100, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                                 'Script9 - On Quest Accept - Set NPC Flag'),
(2028100, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 8, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                                  'Script9 - On Quest Accept - Set React State Defensive'),
(2028100, 9, 5, 0, 0, 0, 100, 0, 9000, 9000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                            'Script9 - On Quest Accept - Talk'),
(2028100, 9, 6, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, 0, 232, 720420, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Script9 - On Quest Accept - Start WP'),
--
(2028101, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 17, 173, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                               'Script9 - Set Emote State Work'),
(2028101, 9, 1, 0, 0, 0, 100, 1, 8000, 8000, 0, 0, 0, 0, 12, 20399, 4, 40000, 0, 1, 0, 8, 0, 0, 0, 0, 3021.84, 2718.74, 115.038, 0, 'Script9 - Summon Creature'),
(2028101, 9, 2, 0, 0, 0, 100, 1, 2000, 2000, 0, 0, 0, 0, 12, 20399, 4, 40000, 0, 1, 0, 8, 0, 0, 0, 0, 3021.84, 2718.74, 115.038, 0, 'Script9 - Summon Creature'),
(2028101, 9, 3, 0, 0, 0, 100, 1, 2000, 2000, 0, 0, 0, 0, 12, 20399, 4, 40000, 0, 1, 0, 8, 0, 0, 0, 0, 3021.84, 2718.74, 115.038, 0, 'Script9 - Summon Creature'),
(2028101, 9, 4, 0, 0, 0, 100, 1, 2000, 2000, 0, 0, 0, 0, 12, 20399, 4, 40000, 0, 1, 0, 8, 0, 0, 0, 0, 3021.84, 2718.74, 115.038, 0, 'Script9 - Summon Creature'),
(2028101, 9, 5, 0, 0, 0, 100, 1, 2000, 2000, 0, 0, 0, 0, 12, 20399, 4, 40000, 0, 1, 0, 8, 0, 0, 0, 0, 3021.84, 2718.74, 115.038, 0, 'Script9 - Summon Creature'),
(2028101, 9, 6, 0, 0, 0, 100, 1, 2000, 2000, 0, 0, 0, 0, 12, 20399, 4, 40000, 0, 1, 0, 8, 0, 0, 0, 0, 3021.84, 2718.74, 115.038, 0, 'Script9 - Summon Creature'),
(2028101, 9, 7, 0, 0, 0, 100, 1, 2000, 2000, 0, 0, 0, 0, 12, 20399, 4, 40000, 0, 1, 0, 8, 0, 0, 0, 0, 3021.84, 2718.74, 115.038, 0, 'Script9 - Summon Creature'),
(2028101, 9, 8, 0, 0, 0, 100, 1, 2000, 2000, 0, 0, 0, 0, 12, 20399, 4, 40000, 0, 1, 0, 8, 0, 0, 0, 0, 3021.84, 2718.74, 115.038, 0, 'Script9 - Summon Creature'),
(2028101, 9, 9, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 0, 0, 17, 173, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Script9 - Set Emote State'),
(2028101, 9, 10, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Script9 - Talk'),
--
(2028102, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 17, 173, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                               'Script9 - Set Emote State Work'),
(2028102, 9, 1, 0, 0, 0, 100, 1, 8000, 8000, 0, 0, 0, 0, 12, 20402, 4, 40000, 0, 1, 0, 8, 0, 0, 0, 0, 3021.84, 2718.74, 115.038, 0, 'Script9 - Summon Creature'),
(2028102, 9, 2, 0, 0, 0, 100, 1, 6000, 6000, 0, 0, 0, 0, 12, 20402, 4, 40000, 0, 1, 0, 8, 0, 0, 0, 0, 3021.84, 2718.74, 115.038, 0, 'Script9 - Summon Creature'),
(2028102, 9, 3, 0, 0, 0, 100, 1, 6000, 6000, 0, 0, 0, 0, 12, 20402, 4, 40000, 0, 1, 0, 8, 0, 0, 0, 0, 3021.84, 2718.74, 115.038, 0, 'Script9 - Summon Creature'),
(2028102, 9, 4, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 0, 0, 17, 173, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Script9 - Set Emote State'),
(2028102, 9, 5, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                          'Script9 - Talk'),
--
(2028103, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 17, 173, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                               'Script9 - Set Emote State Work'),
(2028103, 9, 1, 0, 0, 0, 100, 1, 8000, 8000, 0, 0, 0, 0, 12, 20403, 4, 40000, 0, 1, 0, 8, 0, 0, 0, 0, 3021.84, 2718.74, 115.038, 0, 'Script9 - Summon Creature'),
(2028103, 9, 2, 0, 0, 0, 100, 0, 12000, 22000, 0, 0, 0, 0, 17, 173, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Script9 - Set Emote State'),
--
(2028104, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                                  'Script9 - Talk'), -- should blow any second now
(2028104, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                                 'Script9 - Remove Emote State'),
(2028104, 9, 2, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 0, 0, 1, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                            'Script9 - Talk'); -- let's get out of here

UPDATE `creature_template` SET `detection_range` = 10, `MovementType` = 0 WHERE `entry` = 20281;
UPDATE `creature` SET `MovementType` = 0 WHERE `id1` = 20281;
DELETE FROM `waypoints` WHERE `entry` = 20281;

DELETE FROM `creature_addon` WHERE `guid` IN (72042);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(72042, 720420, 0, 0, 1, 0, 0, NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (720420);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
--
(720420, 1,  3099.33, 2799.70, 118.309, NULL, 0, 1, 0, 100, 0),
(720420, 2,  3099.10, 2790.70, 117.580, NULL, 0, 1, 0, 100, 0),
(720420, 3,  3081.99, 2734.98, 115.960, NULL, 0, 1, 0, 100, 0),
(720420, 4,  3081.99, 2734.98, 115.960, 3.31554, 7000, 1, 0, 100, 0),  -- look at pylon
(720420, 5,  3050.63, 2727.57, 114.078, NULL, 0, 1, 0, 100, 0),
(720420, 6,  3050.63, 2727.57, 114.078, 3.96742, 40000, 1, 0, 100, 0), -- pylon 1
(720420, 7,  3050.63, 2727.57, 114.078, 3.96742, 0, 1, 0, 100, 0),     -- pylon 1, temp solution because Drijya moves to next wp after player gets into combat
(720420, 8,  3054.62, 2727.40, 113.743, NULL, 0, 1, 0, 100, 0),
(720420, 9,  3055.19, 2722.67, 113.682, NULL, 0, 1, 0, 100, 0),
(720420, 10, 3045.77, 2704.06, 114.037, NULL, 0, 1, 0, 100, 0),
(720420, 11, 3029.48, 2694.45, 114.564, NULL, 0, 1, 0, 100, 0),
(720420, 12, 3023.26, 2695.21, 113.672, 2.86316, 40000, 1, 0, 100, 0), -- pylon 2
(720420, 13, 3023.26, 2695.21, 113.672, 2.86316, 0, 1, 0, 100, 0),     -- pylon 2, temp solution because Drijya moves to next wp after player gets into combat
(720420, 14, 3025.44, 2697.46, 113.894, NULL, 0, 1, 0, 100, 0),
(720420, 15, 3023.43, 2702.86, 113.710, NULL, 0, 1, 0, 100, 0),
(720420, 16, 3016.53, 2708.03, 113.710, NULL, 0, 1, 0, 100, 0),
(720420, 17, 3011.29, 2718.04, 113.684, NULL, 0, 1, 0, 100, 0),
(720420, 18, 3011.61, 2727.27, 114.228, NULL, 0, 1, 0, 100, 0),
(720420, 19, 3009.42, 2729.14, 114.319, 2.38013, 40000, 1, 0, 100, 0), -- pylon 3
(720420, 20, 3009.42, 2729.14, 114.319, 5.55315, 7000, 1, 0, 100, 0),
(720420, 21, 3011.61, 2727.27, 114.228, NULL, 0, 1, 0, 100, 0),
(720420, 22, 3075.81, 2738.93, 116.618, NULL, 0, 1, 0, 100, 0),
(720420, 23, 3085.80, 2750.45, 115.580, NULL, 0, 1, 0, 100, 0), -- start walking
(720420, 24, 3103.29, 2786.90, 117.014, NULL, 0, 0, 0, 100, 0),
(720420, 25, 3099.50, 2797.60, 118.139, NULL, 0, 0, 0, 100, 0),
(720420, 26, 3096.17, 2801.15, 118.221, NULL, 0, 0, 0, 100, 0); -- say: thank you

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
INSERT INTO `creature` (`guid`, `id1`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, 
`wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
--
(70089, 19653, 530, 0, 0, 1, 1, 0, 2948.9099, 2280.3501, 161.7080, 5.9072, 300, 0, 0, 2530, 0, 0, 0, 0, 0, '', 0, 0, NULL),    -- Glacius
(70141, 19657, 530, 0, 0, 1, 1, 0, 2952.3401, 2280.5801, 161.7080, 5.9091, 300, 0, 1, 5409, 3080, 2, 0, 0, 0, '', 0, 0, NULL); -- Summoner Kanthin

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
INSERT INTO `creature` (`guid`, `id1`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, 
`wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
--
(@CGUID+101, 18875, 530, 0, 0, 1, 1, 1, 2493.2236, 4047.8603, 133.6053, 0.0523, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+102, 18875, 530, 0, 0, 1, 1, 1, 2468.4416, 4041.4179, 127.5681, 4.5553, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+103, 18875, 530, 0, 0, 1, 1, 1, 2473.7265, 4035.1054, 128.8390, 2.0071, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+104, 18875, 530, 0, 0, 1, 1, 1, 2459.7622, 4032.2712, 124.8421, 0.9773, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+105, 18875, 530, 0, 0, 1, 1, 1, 2600.2282, 3911.5981, 136.2060, 4.9567, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+106, 18875, 530, 0, 0, 1, 1, 1, 2554.3347, 3886.2026, 138.6506, 0.9250, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+107, 18875, 530, 0, 0, 1, 1, 1, 2557.0432, 3896.5261, 138.0386, 4.6076, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+108, 18875, 530, 0, 0, 1, 1, 1, 2526.9973, 3859.1813, 136.8578, 5.1836, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+109, 18875, 530, 0, 0, 1, 1, 1, 2530.3850, 3847.1333, 137.4536, 2.4434, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+110, 18875, 530, 0, 0, 1, 1, 1, 2483.0676, 3860.4797, 125.3240, 4.5727, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+111, 18875, 530, 0, 0, 1, 1, 1, 2485.3046, 3848.2587, 126.0828, 2.9321, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+112, 18875, 530, 0, 0, 1, 1, 1, 2515.9096, 3784.0686, 132.5868, 5.8643, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+113, 18875, 530, 0, 0, 1, 1, 1, 2523.6750, 3782.0061, 135.0500, 2.8972, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+114, 18875, 530, 0, 0, 1, 1, 1, 2515.2541, 3772.5300, 132.3054, 2.1991, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+115, 18875, 530, 0, 0, 1, 1, 1, 2654.4431, 3856.9252, 138.0545, 5.8119, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+116, 18875, 530, 0, 0, 1, 1, 1, 2678.3569, 3814.7370, 137.8357, 5.6025, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+117, 18875, 530, 0, 0, 1, 1, 1, 2675.0178, 3803.1718, 139.3871, 1.0471, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+118, 18875, 530, 0, 0, 1, 1, 1, 2682.5480, 3803.6853, 140.1650, 6.2133, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+119, 18875, 530, 0, 0, 1, 1, 1, 2612.6723, 3731.4899, 145.0707, 6.0737, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+120, 18875, 530, 0, 0, 1, 1, 1, 2620.7150, 3738.4899, 144.9399, 4.1713, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+121, 18875, 530, 0, 0, 1, 1, 1, 2625.1333, 3726.2438, 144.7554, 1.2391, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+122, 18875, 530, 0, 0, 1, 1, 1, 2611.6418, 3780.2622, 142.1122, 5.0265, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+123, 18875, 530, 0, 0, 1, 1, 1, 2613.5512, 3770.8515, 143.1551, 1.8151, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+124, 18875, 530, 0, 0, 1, 1, 1, 2627.6955, 3775.3352, 143.1132, 3.3684, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+125, 18875, 530, 0, 0, 1, 1, 1, 2643.7111, 3773.7170, 143.9701, 5.9515, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+126, 18875, 530, 0, 0, 1, 1, 1, 2655.8430, 3776.9770, 144.0731, 3.3161, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+127, 18875, 530, 0, 0, 1, 1, 1, 2703.1691, 3752.9753, 142.2192, 1.6755, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+128, 18875, 530, 0, 0, 1, 1, 1, 2692.8112, 3763.2192, 142.8174, 4.9218, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+129, 18875, 530, 0, 0, 1, 1, 1, 2668.5402, 3744.2734, 143.6609, 3.7873, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+130, 18875, 530, 0, 0, 1, 1, 1, 2653.4018, 3710.3728, 144.4481, 5.7944, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+131, 18875, 530, 0, 0, 1, 1, 1, 2666.3569, 3718.8215, 144.5070, 4.8171, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+132, 18875, 530, 0, 0, 1, 1, 1, 2669.4016, 3705.8073, 144.0050, 0.9075, 300, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+133, 18875, 530, 0, 0, 1, 1, 1, 2707.0927, 3772.5764, 142.3062, 3.0967, 300, 0, 1, 6326, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+134, 18875, 530, 0, 0, 1, 1, 1, 2670.7036, 3821.6115, 139.2919, 4.3861, 300, 0, 1, 6326, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+135, 18875, 530, 0, 0, 1, 1, 1, 2607.5285, 3725.2192, 144.2711, 1.6109, 300, 0, 1, 6326, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+136, 18875, 530, 0, 0, 1, 1, 1, 2491.4416, 3862.7604, 128.0000, 4.9307, 300, 0, 1, 6326, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+137, 18875, 530, 0, 0, 1, 1, 1, 2608.2902, 3902.4914, 135.5155, 3.1545, 300, 0, 1, 6326, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+138, 18875, 530, 0, 0, 1, 1, 1, 2472.1313, 4026.4887, 127.8266, 0.6927, 300, 0, 1, 6326, 0, 2, 0, 0, 0, '', 0, 0, NULL),
--
(@CGUID+141, 19642, 530, 0, 0, 1, 1, 1, 2493.55, 3915.61, 127.110, 1.2740, 180, 0, 0, 6542, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+142, 19642, 530, 0, 0, 1, 1, 1, 2504.72, 3903.35, 129.319, 0.1396, 180, 0, 0, 6542, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+143, 19642, 530, 0, 0, 1, 1, 1, 2648.00, 3763.06, 143.565, 3.1641, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+144, 19642, 530, 0, 0, 1, 1, 1, 2668.26, 3750.03, 143.608, 5.6922, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+145, 19642, 530, 0, 0, 1, 1, 1, 2679.75, 3713.08, 144.104, 3.9176, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+146, 19642, 530, 0, 0, 1, 1, 1, 2687.15, 3733.26, 143.820, 5.3474, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+147, 19642, 530, 0, 0, 1, 1, 1, 2694.89, 3753.47, 143.085, 4.4080, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+148, 19642, 530, 0, 0, 1, 1, 1, 2618.97, 3766.44, 143.529, 5.9506, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+149, 19642, 530, 0, 0, 1, 1, 1, 2624.01, 3755.87, 144.174, 5.0293, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+150, 19642, 530, 0, 0, 1, 1, 1, 2628.27, 3734.59, 144.932, 2.5821, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+151, 19642, 530, 0, 0, 1, 1, 1, 2671.83, 3800.06, 140.558, 3.1308, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+152, 19642, 530, 0, 0, 1, 1, 1, 2662.68, 3848.30, 138.181, 2.2347, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+153, 19642, 530, 0, 0, 1, 1, 1, 2663.59, 3822.31, 138.388, 3.8144, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+154, 19642, 530, 0, 0, 1, 1, 1, 2653.54, 3802.00, 140.269, 2.5836, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+155, 19642, 530, 0, 0, 1, 1, 1, 2577.42, 3737.24, 145.059, 0.2760, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+156, 19642, 530, 0, 0, 1, 1, 1, 2607.27, 3796.84, 141.034, 4.3894, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+157, 19642, 530, 0, 0, 1, 1, 1, 2567.54, 3777.65, 142.653, 3.5173, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+158, 19642, 530, 0, 0, 1, 1, 1, 2531.69, 3777.07, 137.558, 0.3880, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+159, 19642, 530, 0, 0, 1, 1, 1, 2609.41, 3823.15, 139.041, 3.4216, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+160, 19642, 530, 0, 0, 1, 1, 1, 2721.24, 3714.03, 139.533, 3.0479, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+161, 19642, 530, 0, 0, 1, 1, 1, 2545.42, 3815.48, 141.253, 1.5938, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+162, 19642, 530, 0, 0, 1, 1, 1, 2492.92, 3954.59, 123.340, 2.5587, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+163, 19642, 530, 0, 0, 1, 1, 1, 2528.35, 3794.03, 136.311, 4.0679, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+164, 19642, 530, 0, 0, 1, 1, 1, 2483.14, 3838.20, 124.266, 2.9449, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+165, 19642, 530, 0, 0, 1, 1, 1, 2510.90, 3820.29, 130.064, 4.4633, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+166, 19642, 530, 0, 0, 1, 1, 1, 2519.78, 3851.19, 134.574, 5.4565, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+167, 19642, 530, 0, 0, 1, 1, 1, 2598.64, 3900.12, 136.893, 2.7108, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+168, 19642, 530, 0, 0, 1, 1, 1, 2539.79, 3859.37, 139.473, 5.4714, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+169, 19642, 530, 0, 0, 1, 1, 1, 2564.83, 3885.81, 138.153, 4.1943, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+170, 19642, 530, 0, 0, 1, 1, 1, 2581.14, 3869.95, 138.955, 1.1742, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+171, 19642, 530, 0, 0, 1, 1, 1, 2524.24, 3942.96, 126.237, 0.8268, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+172, 19642, 530, 0, 0, 1, 1, 1, 2540.84, 3927.82, 135.783, 2.8477, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+173, 19642, 530, 0, 0, 1, 1, 1, 2517.68, 3884.41, 134.999, 3.0243, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+174, 19642, 530, 0, 0, 1, 1, 1, 2580.77, 3924.47, 136.690, 6.1488, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+175, 19642, 530, 0, 0, 1, 1, 1, 2450.93, 4014.51, 120.112, 2.2656, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+176, 19642, 530, 0, 0, 1, 1, 1, 2484.48, 4051.00, 131.252, 1.1435, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+177, 19642, 530, 0, 0, 1, 1, 1, 2481.17, 4016.70, 128.634, 1.0437, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+178, 19642, 530, 0, 0, 1, 1, 1, 2449.39, 4049.83, 121.664, 4.7628, 300, 4, 0, 6542, 0, 1, 0, 0, 0, '', 0, 0, NULL);

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

/* Manaforge B'naar fixes */
SET @CGUID   := 670000;
SET @WPID    := 6700000;

DELETE FROM `creature` WHERE `id1` IN (18852, 18853, 18855, 18857, 19453, 19643);
INSERT INTO `creature` (`guid`, `id1`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, 
`wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
--
(@CGUID+201, 18853, 530, 0, 0, 1, 1, 1, 2810.81, 3923.14, 147.125, 0.122173, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+202, 18853, 530, 0, 0, 1, 1, 1, 2766.59, 3976.66, 144.374, 0.680678, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+203, 18853, 530, 0, 0, 1, 1, 1, 2766.43, 3980.43, 144.415, 6.02139, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+204, 18853, 530, 0, 0, 1, 1, 1, 2771.18, 3988.50, 144.591, 5.56760, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+205, 18853, 530, 0, 0, 1, 1, 1, 2778.90, 4104.49, 178.448, 5.56760, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+206, 18853, 530, 0, 0, 1, 1, 1, 2785.82, 4111.81, 177.54, 2.74017, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+207, 18853, 530, 0, 0, 1, 1, 1, 2784.78, 4119.01, 177.989, 4.69494, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+208, 18853, 530, 0, 0, 1, 1, 1, 2762.13, 4177.78, 183.554, 2.26893, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+209, 18853, 530, 0, 0, 1, 1, 1, 2757.64, 4185.13, 184.482, 5.96903, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+210, 18853, 530, 0, 0, 1, 1, 1, 2763.83, 4185.81, 182.977, 4.08407, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+211, 18853, 530, 0, 0, 1, 1, 1, 2693.64, 4253.53, 154.35, 1.08210, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+212, 18853, 530, 0, 0, 1, 1, 1, 2736.55, 4352.90, 137.21, 6.05630, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+213, 18853, 530, 0, 0, 1, 1, 1, 2755.17, 4352.64, 136.586, 6.16101, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+214, 18853, 530, 0, 0, 1, 1, 1, 2770.78, 4358.93, 136.481, 5.37561, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+215, 18853, 530, 0, 0, 1, 1, 1, 2779.66, 4369.59, 136.537, 5.63741, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+216, 18853, 530, 0, 0, 1, 1, 1, 2786.11, 4369.83, 136.74, 4.59022, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+217, 18853, 530, 0, 0, 1, 1, 1, 2798.28, 4381.00, 136.481, 4.53786, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+218, 18853, 530, 0, 0, 1, 1, 1, 3046.59, 3943.96, 156.478, 4.67748, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+219, 18853, 530, 0, 0, 1, 1, 1, 3054.48, 3920.30, 147.177, 4.46804, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+220, 18853, 530, 0, 0, 1, 1, 1, 3038.28, 3916.57, 147.058, 5.51524, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+221, 18853, 530, 0, 0, 1, 1, 1, 2948.82, 4092.75, 160.55, 4.74730, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+222, 18853, 530, 0, 0, 1, 1, 1, 2937.89, 4088.52, 161.097, 5.58505, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+223, 18853, 530, 0, 0, 1, 1, 1, 2946.24, 4072.66, 158.277, 5.63741, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+224, 18853, 530, 0, 0, 1, 1, 1, 2975.52, 4048.32, 151.357, 5.56760, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+225, 18853, 530, 0, 0, 1, 1, 1, 2967.75, 4040.70, 151.198, 5.75959, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+226, 18853, 530, 0, 0, 1, 1, 1, 2984.13, 4030.86, 148.562, 4.24115, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+227, 18853, 530, 0, 0, 1, 1, 1, 3017.69, 3962.30, 156.185, 5.93412, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+228, 18853, 530, 0, 0, 1, 1, 1, 3023.85, 3944.71, 154.933, 6.10865, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+229, 18853, 530, 0, 0, 1, 1, 1, 2894.18, 4352.87, 157.736, 3.87463, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+230, 18853, 530, 0, 0, 1, 1, 1, 2885.37, 4327.74, 157.533, 3.40339, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+231, 18853, 530, 0, 0, 1, 1, 1, 2886.19, 4314.07, 157.732, 3.22886, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+232, 18853, 530, 0, 0, 1, 1, 1, 2859.57, 4275.77, 160.189, 1.95477, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+233, 18853, 530, 0, 0, 1, 1, 1, 2871.77, 4280.43, 160.025, 2.23402, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+234, 18853, 530, 0, 0, 1, 1, 1, 3009.86, 4184.12, 160.888, 0.977384, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+235, 18853, 530, 0, 0, 1, 1, 1, 3006.66, 4193.74, 160.953, 6.19592, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+236, 18853, 530, 0, 0, 1, 1, 1, 2862.16, 4050.24, 170.225, 3.64774, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+237, 18853, 530, 0, 0, 1, 1, 1, 2857.96, 4042.26, 167.298, 2.79253, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+238, 18853, 530, 0, 0, 1, 1, 1, 2850.15, 4037.25, 166.736, 3.03687, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+239, 18853, 530, 0, 0, 1, 1, 1, 2839.80, 4033.06, 167.533, 1.39626, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+240, 18853, 530, 0, 0, 1, 1, 1, 2894.35, 3992.06, 153.44, 6.14356, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+241, 18853, 530, 0, 0, 1, 1, 1, 2915.79, 3988.80, 153.181, 4.10152, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+242, 18853, 530, 0, 0, 1, 1, 1, 2807.92, 3932.08, 145.757, 2.35619, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+243, 18853, 530, 0, 0, 1, 1, 1, 2809.77, 3940.10, 145.553, 4.13643, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+244, 18853, 530, 0, 0, 1, 1, 1, 2803.47, 3939.72, 144.808, 5.82940, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+245, 18853, 530, 0, 0, 1, 1, 1, 2795.33, 3936.39, 144.195, 2.58309, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+246, 18853, 530, 0, 0, 1, 1, 1, 2686.35, 4269.63, 154.404, 5.30580, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+247, 18853, 530, 0, 0, 1, 1, 1, 2885.82, 4345.76, 157.721, 4.46804, 360, 0, 0, 6326, 0, 0, 0, 0, 0, '', 0, 0, NULL),
--
(@CGUID+251, 18855, 530, 0, 0, 1, 1, 1, 2672.27, 3997.91, 171.881, 1.43117, 360, 0, 0, 5566, 2933, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+252, 18855, 530, 0, 0, 1, 1, 1, 2699.82, 4011.02, 175.791, 3.08923, 360, 0, 0, 5566, 2933, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+253, 18855, 530, 0, 0, 1, 1, 1, 2697.20, 4026.41, 177.688, 4.48550, 360, 0, 0, 5566, 2933, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+254, 18855, 530, 0, 0, 1, 1, 1, 2674.25, 4029.07, 176.497, 5.51524, 360, 0, 0, 5566, 2933, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+255, 18855, 530, 0, 0, 1, 1, 1, 2659.87, 4021.17, 173.581, 5.55015, 360, 0, 0, 5566, 2933, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+256, 18855, 530, 0, 0, 1, 1, 1, 2649.89, 4235.99, 154.412, 0.942478, 360, 0, 0, 5566, 2933, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+257, 18855, 530, 0, 0, 1, 1, 1, 2642.84, 4263.87, 154.423, 4.88692, 360, 0, 0, 5566, 2933, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+258, 18855, 530, 0, 0, 1, 1, 1, 2627.67, 4257.86, 155.165, 6.09120, 360, 0, 0, 5566, 2933, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+259, 18855, 530, 0, 0, 1, 1, 1, 3015.23, 4061.71, 150.21, 2.09440, 360, 0, 0, 5566, 2933, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+260, 18855, 530, 0, 0, 1, 1, 1, 3036.04, 4063.57, 150.998, 1.93732, 360, 0, 0, 5566, 2933, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+261, 18855, 530, 0, 0, 1, 1, 1, 3027.89, 4076.43, 150.291, 3.14159, 360, 0, 0, 5566, 2933, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+262, 18855, 530, 0, 0, 1, 1, 1, 3034.89, 4090.47, 150.703, 2.84489, 360, 0, 0, 5566, 2933, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+263, 18855, 530, 0, 0, 1, 1, 1, 3021.76, 4092.47, 150.303, 4.10152, 360, 0, 0, 5566, 2933, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+264, 18855, 530, 0, 0, 1, 1, 1, 3014.67, 4103.79, 150.632, 4.67748, 360, 0, 0, 5566, 2933, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+265, 18855, 530, 0, 0, 1, 1, 1, 2984.35, 4098.23, 150.186, 5.00909, 360, 0, 0, 5566, 2933, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+266, 18855, 530, 0, 0, 1, 1, 1, 2978.48, 4085.93, 150.241, 0.279253, 360, 0, 0, 5566, 2933, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+267, 18855, 530, 0, 0, 1, 1, 1, 3031.16, 4226.09, 160.862, 2.63545, 360, 0, 0, 5566, 2933, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+268, 18855, 530, 0, 0, 1, 1, 1, 3011.37, 4254.43, 160.945, 4.64258, 360, 0, 0, 5566, 2933, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+269, 18855, 530, 0, 0, 1, 1, 1, 2994.08, 4254.48, 160.855, 5.46288, 360, 0, 0, 5566, 2933, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+270, 18855, 530, 0, 0, 1, 1, 1, 2986.11, 4237.62, 160.973, 0.593412, 360, 0, 0, 5566, 2933, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+271, 18855, 530, 0, 0, 1, 1, 1, 3000.73, 4209.19, 160.967, 1.27409, 360, 0, 0, 5566, 2933, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+272, 18855, 530, 0, 0, 1, 1, 1, 2894.89, 4009.42, 149.813, 0.733038, 360, 0, 0, 5566, 2933, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+273, 18855, 530, 0, 0, 1, 1, 1, 2919.75, 4004.16, 149.871, 2.63545, 360, 0, 0, 5566, 2933, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+274, 18855, 530, 0, 0, 1, 1, 1, 2898.45, 4054.55, 149.472, 0.244346, 360, 0, 0, 5566, 2933, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+275, 18855, 530, 0, 0, 1, 1, 1, 2902.86, 4065.47, 149.259, 5.79449, 360, 0, 0, 5566, 2933, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+276, 18855, 530, 0, 0, 1, 1, 1, 2915.50, 4064.86, 149.253, 5.51524, 360, 0, 0, 5566, 2933, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+277, 18855, 530, 0, 0, 1, 1, 1, 2926.44, 4056.91, 149.323, 3.29867, 360, 0, 0, 5566, 2933, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+278, 18855, 530, 0, 0, 1, 1, 1, 2660.76, 4226.54, 154.412, 2.02458, 360, 0, 0, 5566, 2933, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+279, 18855, 530, 0, 0, 1, 1, 1, 2665.06, 4236.70, 154.412, 2.53073, 360, 0, 0, 5566, 2933, 0, 0, 0, 0, '', 0, 0, NULL),
--
(@CGUID+281, 18852, 530, 0, 0, 1, 1, 1, 2750.91, 3859.45, 139.879, 0.37783, 360, 5, 0, 5060, 2933, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+282, 18852, 530, 0, 0, 1, 1, 1, 2750.41, 3868.93, 141.36, 6.10865, 360, 5, 0, 5060, 2933, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+283, 18852, 530, 0, 0, 1, 1, 1, 2773.75, 3888.24, 157.259, 4.41542, 360, 5, 0, 5060, 2933, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+284, 18852, 530, 0, 0, 1, 1, 1, 2791.76, 3877.74, 160.80, 3.63, 360, 5, 0, 5060, 2933, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+285, 18852, 530, 0, 0, 1, 1, 1, 2784.79, 3885.33, 159.175, 3.83972, 360, 5, 0, 5060, 2933, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+286, 18852, 530, 0, 0, 1, 1, 1, 2793.85, 4209.25, 179.409, 0.942477, 360, 5, 0, 5060, 2933, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+287, 18852, 530, 0, 0, 1, 1, 1, 2783.92, 4213.40, 177.684, 1.01229, 360, 5, 0, 5060, 2933, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+288, 18852, 530, 0, 0, 1, 1, 1, 2776.94, 4218.59, 178.594, 1.08210, 360, 5, 0, 5060, 2933, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+289, 18852, 530, 0, 0, 1, 1, 1, 2769.02, 4226.05, 180.206, 0.907571, 360, 5, 0, 5060, 2933, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+290, 18852, 530, 0, 0, 1, 1, 1, 2762.66, 4234.74, 181.826, 0.48869, 360, 5, 0, 5060, 2933, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+291, 18852, 530, 0, 0, 1, 1, 1, 2761.43, 4244.97, 181.697, 0.0523599, 360, 5, 0, 5060, 2933, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+292, 18852, 530, 0, 0, 1, 1, 1, 2797.05, 4248.79, 172.619, 3.07177, 360, 5, 0, 5060, 2933, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+293, 18852, 530, 0, 0, 1, 1, 1, 2803.67, 4243.38, 171.76, 3.90954, 360, 5, 0, 5060, 2933, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+294, 18852, 530, 0, 0, 1, 1, 1, 2824.89, 4353.61, 142.763, 4.22360, 360, 5, 0, 5060, 2933, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+295, 18852, 530, 0, 0, 1, 1, 1, 2834.61, 4345.15, 144.91, 3.560471, 360, 5, 0, 5060, 2933, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+296, 18852, 530, 0, 0, 1, 1, 1, 2837.73, 4334.01, 146.746, 3.19395, 360, 5, 0, 5060, 2933, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+297, 18852, 530, 0, 0, 1, 1, 1, 2948.69, 4331.01, 154.045, 5.58505, 360, 5, 0, 5060, 2933, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+298, 18852, 530, 0, 0, 1, 1, 1, 2958.54, 4335.18, 149.24, 4.53786, 360, 5, 0, 5060, 2933, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+299, 18852, 530, 0, 0, 1, 1, 1, 2970.01, 4333.44, 148.965, 4.04910, 360, 5, 0, 5060, 2933, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+300, 18852, 530, 0, 0, 1, 1, 1, 2972.45, 4322.28, 147.871, 3.45575, 360, 5, 0, 5060, 2933, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+301, 18852, 530, 0, 0, 1, 1, 1, 2962.55, 4297.10, 149.571, 2.00712, 360, 5, 0, 5060, 2933, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+302, 18852, 530, 0, 0, 1, 1, 1, 2979.56, 4215.06, 162.682, 0.279253, 360, 5, 0, 5060, 2933, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+303, 18852, 530, 0, 0, 1, 1, 1, 2907.67, 4215.62, 164.07, 1.32640, 360, 5, 0, 5060, 2933, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+304, 18852, 530, 0, 0, 1, 1, 1, 2871.98, 4186.13, 164.053, 2.82743, 360, 5, 0, 5060, 2933, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+305, 18852, 530, 0, 0, 1, 1, 1, 2934.98, 4180.37, 163.845, 6.00312, 360, 5, 0, 5060, 2933, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+306, 18852, 530, 0, 0, 1, 1, 1, 2919.19, 4178.64, 161.966, 2.687807, 360, 5, 0, 5060, 2933, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+307, 18852, 530, 0, 0, 1, 1, 1, 2895.97, 4172.31, 161.966, 1.01229, 360, 5, 0, 5060, 2933, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+308, 18852, 530, 0, 0, 1, 1, 1, 2803.48, 4352.54, 141.888, 5.70722, 360, 5, 0, 5060, 2933, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+309, 18852, 530, 0, 0, 1, 1, 1, 2814.55, 4356.75, 142.432, 4.81710, 360, 5, 0, 5060, 2933, 1, 0, 0, 0, '', 0, 0, NULL),
--
(@CGUID+311, 18857, 530, 0, 0, 1, 1, 1, 2828.32, 4152.31, 162.682, 3.40456, 360, 5, 0, 5233, 2991, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+312, 18857, 530, 0, 0, 1, 1, 1, 2913.14, 4196.44, 161.961, 4.06662, 360, 5, 0, 5233, 2991, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+313, 18857, 530, 0, 0, 1, 1, 1, 2893.93, 4195.61, 161.965, 5.53269, 360, 5, 0, 5233, 2991, 1, 0, 0, 0, '', 0, 0, NULL),
--
(@CGUID+321, 18857, 530, 0, 0, 1, 1, 1, 2840.98, 3935.79, 151.741, 5.18363, 360, 0, 1, 5233, 2991, 2, 0, 0, 0, '', 0, 0, NULL), -- 5306509 (cMangos TBC guid)
(@CGUID+322, 18857, 530, 0, 0, 1, 1, 1, 2802.34, 3966.63, 142.425, 2.13739, 360, 0, 1, 5233, 2991, 2, 0, 0, 0, '', 0, 0, NULL), -- 5306501
(@CGUID+323, 18857, 530, 0, 0, 1, 1, 1, 2699.89, 4109.97, 197.545, 1.84869, 360, 0, 1, 5233, 2991, 2, 0, 0, 0, '', 0, 0, NULL), -- 5306468
(@CGUID+324, 18857, 530, 0, 0, 1, 1, 1, 2774.89, 4063.55, 175.334, 3.04158, 360, 0, 1, 5233, 2991, 2, 0, 0, 0, '', 0, 0, NULL), -- 5306461
(@CGUID+325, 18857, 530, 0, 0, 1, 1, 1, 2713.07, 4188.23, 194.615, 1.37899, 360, 0, 1, 5233, 2991, 2, 0, 0, 0, '', 0, 0, NULL), -- 5306443
(@CGUID+326, 18857, 530, 0, 0, 1, 1, 1, 2954.63, 4294.95, 151.89, 0.628319, 360, 0, 1, 5233, 2991, 2, 0, 0, 0, '', 0, 0, NULL), -- 5306391
(@CGUID+327, 18857, 530, 0, 0, 1, 1, 1, 2825.57, 4147.54, 162.682, 1.98750, 360, 0, 1, 5233, 2991, 2, 0, 0, 0, '', 0, 0, NULL), -- 5306379
(@CGUID+328, 18857, 530, 0, 0, 1, 1, 1, 2808.43, 4316.43, 150.29, 6.25682, 360, 0, 1, 5233, 2991, 2, 0, 0, 0, '', 0, 0, NULL),  -- 5306410
(@CGUID+329, 19453, 530, 0, 0, 1, 1, 1, 2793.76, 3923.89, 144.811, 5.61676, 360, 0, 1, 6542, 0, 2, 0, 0, 0, '', 0, 0, NULL),    -- 5306502
(@CGUID+330, 19453, 530, 0, 0, 1, 1, 1, 2745.80, 4172.07, 187.713, 1.57506, 360, 0, 1, 6542, 0, 2, 0, 0, 0, '', 0, 0, NULL),    -- 5306447
(@CGUID+331, 19643, 530, 0, 0, 1, 1, 1, 3002.18, 4103.35, 150.696, 5.89873, 360, 0, 1, 5756, 2991, 2, 0, 0, 0, '', 0, 0, NULL), -- 5306346
(@CGUID+332, 19643, 530, 0, 0, 1, 1, 1, 2903.34, 4044.79, 150.321, 2.65290, 360, 0, 1, 5756, 2991, 2, 0, 0, 0, '', 0, 0, NULL), -- 5306358
(@CGUID+333, 19643, 530, 0, 0, 1, 1, 1, 2658.79, 4004.69, 172.26, 2.23474, 360, 0, 1, 5756, 2991, 2, 0, 0, 0, '', 0, 0, NULL),  -- 5306474
(@CGUID+334, 19643, 530, 0, 0, 1, 1, 1, 3008.96, 4188.40, 160.925, 1.18447, 360, 0, 1, 5756, 2991, 2, 0, 0, 0, '', 0, 0, NULL), -- 5306388
(@CGUID+335, 19643, 530, 0, 0, 1, 1, 1, 2663.26, 4267.47, 154.412, 4.72924, 360, 0, 1, 5756, 2991, 2, 0, 0, 0, '', 0, 0, NULL), -- 5306422
(@CGUID+336, 19453, 530, 0, 0, 1, 1, 1, 2738.39, 4345.91, 139.135, 5.28835, 360, 0, 1, 6542, 0, 2, 0, 0, 0, '', 0, 0, NULL),    -- 5306417
(@CGUID+337, 19453, 530, 0, 0, 1, 1, 1, 2934.37, 4111.43, 162.682, 4.97978, 360, 0, 1, 6542, 0, 2, 0, 0, 0, '', 0, 0, NULL),    -- 5306337
(@CGUID+338, 19453, 530, 0, 0, 1, 1, 1, 2883.09, 4375.47, 158.305, 4.84596, 360, 0, 1, 6542, 0, 2, 0, 0, 0, '', 0, 0, NULL),    -- 5306404
(@CGUID+339, 18857, 530, 0, 0, 1, 1, 1, 2762.76, 3853.10, 142.561, 2.61799, 360, 0, 1, 5233, 2991, 2, 0, 0, 0, '', 0, 0, NULL), -- 5306510
(@CGUID+340, 18857, 530, 0, 0, 1, 1, 1, 2888.56, 4034.06, 152.30, 5.09636, 360, 0, 1, 5233, 2991, 2, 0, 0, 0, '', 0, 0, NULL);  -- 5306363

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+341 AND @CGUID+343;
DELETE FROM `creature` WHERE `guid` BETWEEN 69406 AND 69417;
INSERT INTO `creature` (`guid`, `id1`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, 
`wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
--
(@CGUID+341, 19421, 530, 0, 0, 1, 1, 0, 3008.33, 4225.37, 160.777, 2.25655, 300, 0, 0, 42, 0, 0, 0, 0, 0, '', NULL, 0, NULL), -- Netherstorm Crystal Target
(@CGUID+342, 19421, 530, 0, 0, 1, 1, 0, 3023.18, 4238.18, 161.775, 5.22065, 300, 0, 0, 42, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+343, 19421, 530, 0, 0, 1, 1, 0, 3000.75, 4245.59, 162.792, 1.34313, 300, 0, 0, 42, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
--
(69406, 19421, 530, 0, 0, 1, 1, 0, 3006.16, 4060.78, 150.433, 1.90241, 300, 0, 0, 42, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(69407, 19421, 530, 0, 0, 1, 1, 0, 3021.51, 4072.88, 152.311, 1.06465, 300, 0, 0, 42, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(69408, 19421, 530, 0, 0, 1, 1, 0, 2999.2, 4080.48, 152.873, 1.39626, 300, 0, 0, 42, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(69409, 19421, 530, 0, 0, 1, 1, 0, 2915.1, 4009.09, 152.306, 5.32325, 300, 0, 0, 42, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(69410, 19421, 530, 0, 0, 1, 1, 0, 2896.37, 4023.94, 151.232, 0.558505, 300, 0, 0, 42, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(69413, 19421, 530, 0, 0, 1, 1, 0, 2644.79, 4241.69, 153.121, 4.97419, 300, 0, 0, 42, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(69414, 19421, 530, 0, 0, 1, 1, 0, 2639.4, 4255.41, 151.525, 1.0821, 300, 0, 0, 42, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(69415, 19421, 530, 0, 0, 1, 1, 0, 2681.35, 3998.89, 173.784, 4.88692, 300, 0, 0, 42, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(69416, 19421, 530, 0, 0, 1, 1, 0, 2663.76, 4010.48, 176.027, 5.28835, 300, 0, 0, 42, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(69417, 19421, 530, 0, 0, 1, 1, 0, 2686.41, 4017.57, 174.755, 4.79965, 300, 0, 0, 42, 0, 0, 0, 0, 0, '', 0, 0, NULL);

DELETE FROM `creature_addon` WHERE `guid` BETWEEN @CGUID+321 AND @CGUID+340;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
--
(@CGUID+321, @WPID+3210, 0, 0, 1, 0, 0, ''),
(@CGUID+322, @WPID+3220, 0, 0, 1, 0, 0, ''),
(@CGUID+323, @WPID+3230, 0, 0, 1, 0, 0, ''),
(@CGUID+324, @WPID+3240, 0, 0, 1, 0, 0, ''),
(@CGUID+325, @WPID+3250, 0, 0, 1, 0, 0, ''),
(@CGUID+326, @WPID+3260, 0, 0, 1, 0, 0, ''),
(@CGUID+327, @WPID+3270, 0, 0, 1, 0, 0, ''),
(@CGUID+328, @WPID+3280, 0, 0, 1, 0, 0, ''),
(@CGUID+329, @WPID+3290, 0, 0, 1, 0, 0, ''),
(@CGUID+330, @WPID+3300, 0, 0, 1, 0, 0, ''),
(@CGUID+331, @WPID+3310, 0, 0, 1, 0, 0, ''),
(@CGUID+332, @WPID+3320, 0, 0, 1, 0, 0, ''),
(@CGUID+333, @WPID+3330, 0, 0, 1, 0, 0, ''),
(@CGUID+334, @WPID+3340, 0, 0, 1, 0, 0, ''),
(@CGUID+335, @WPID+3350, 0, 0, 1, 0, 0, ''),
(@CGUID+336, @WPID+3360, 0, 0, 1, 0, 0, ''),
(@CGUID+337, @WPID+3370, 0, 0, 1, 0, 0, ''),
(@CGUID+338, @WPID+3380, 0, 0, 1, 0, 0, ''),
(@CGUID+339, @WPID+3390, 0, 0, 1, 0, 0, ''),
(@CGUID+340, @WPID+3400, 0, 0, 1, 0, 0, '');

DELETE FROM `waypoint_data` WHERE `id` BETWEEN @WPID+3210 AND @WPID+3350;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
--
(@WPID+3210, 1, 2841.26, 3935.78, 151.729, NULL, 0, 0, 0, 100, 0),
(@WPID+3210, 2, 2850.54, 3934.78, 154.278, NULL, 0, 0, 0, 100, 0),
(@WPID+3210, 3, 2859.65, 3929.28, 157.901, NULL, 0, 0, 0, 100, 0),
(@WPID+3210, 4, 2862.72, 3920.81, 161.459, NULL, 0, 0, 0, 100, 0),
(@WPID+3210, 5, 2863.38, 3909.62, 164.332, NULL, 0, 0, 0, 100, 0),
(@WPID+3210, 6, 2856.46, 3896.95, 165.591, NULL, 0, 0, 0, 100, 0),
(@WPID+3210, 7, 2846.31, 3894.73, 163.401, NULL, 0, 0, 0, 100, 0),
(@WPID+3210, 8, 2846.7, 3894.81, 163.19, NULL, 0, 0, 0, 100, 0),
(@WPID+3210, 9, 2823.66, 3894.5, 157.835, NULL, 0, 0, 0, 100, 0),
(@WPID+3210, 10, 2826.77, 3901.8, 155.674, NULL, 0, 0, 0, 100, 0),
(@WPID+3210, 11, 2832.76, 3905.83, 155.644, NULL, 0, 0, 0, 100, 0),
(@WPID+3210, 12, 2833.89, 3916.01, 152.931, NULL, 0, 0, 0, 100, 0),
(@WPID+3210, 13, 2838.33, 3921.38, 152.876, NULL, 0, 0, 0, 100, 0),
--
(@WPID+3220, 1, 2802.2, 3966.57, 142.347, NULL, 0, 0, 0, 100, 0),
(@WPID+3220, 2, 2801.57, 3955.11, 143.506, NULL, 0, 0, 0, 100, 0),
(@WPID+3220, 3, 2793.79, 3951.53, 143.406, NULL, 0, 0, 0, 100, 0),
(@WPID+3220, 4, 2786.48, 3956.27, 143.124, NULL, 0, 0, 0, 100, 0),
(@WPID+3220, 5, 2781.29, 3962.22, 143.279, NULL, 0, 0, 0, 100, 0),
(@WPID+3220, 6, 2777, 3976.33, 144.218, NULL, 0, 0, 0, 100, 0),
(@WPID+3220, 7, 2781.85, 3987.59, 144.619, NULL, 0, 0, 0, 100, 0),
(@WPID+3220, 8, 2807.19, 4009.75, 144.771, NULL, 0, 0, 0, 100, 0),
(@WPID+3220, 9, 2813.55, 4022.74, 147.914, NULL, 0, 0, 0, 100, 0),
(@WPID+3220, 10, 2822.73, 4026.37, 148.89, NULL, 0, 0, 0, 100, 0),
(@WPID+3220, 11, 2828.36, 4023.73, 148.374, NULL, 0, 0, 0, 100, 0),
(@WPID+3220, 12, 2834.56, 4013.91, 145.116, NULL, 0, 0, 0, 100, 0),
(@WPID+3220, 13, 2829.61, 4003.83, 142.391, NULL, 0, 0, 0, 100, 0),
(@WPID+3220, 14, 2821.89, 4002.62, 142.315, NULL, 0, 0, 0, 100, 0),
(@WPID+3220, 15, 2810.36, 3992.62, 141.57, NULL, 0, 0, 0, 100, 0),
(@WPID+3220, 16, 2801.1, 3983.53, 141.966, NULL, 0, 0, 0, 100, 0),
(@WPID+3220, 17, 2806.95, 3975.13, 141.727, NULL, 0, 0, 0, 100, 0),
(@WPID+3220, 18, 2802.2, 3966.57, 142.347, NULL, 0, 0, 0, 100, 0),
--
(@WPID+3230, 1, 2699.85, 4109.98, 197.477, NULL, 0, 0, 0, 100, 0),
(@WPID+3230, 2, 2697.52, 4118.28, 197.706, NULL, 0, 0, 0, 100, 0),
(@WPID+3230, 3, 2706.52, 4134.56, 194.938, NULL, 0, 0, 0, 100, 0),
(@WPID+3230, 4, 2719.54, 4146.65, 192.373, NULL, 0, 0, 0, 100, 0),
(@WPID+3230, 5, 2730.93, 4146.35, 189.914, NULL, 0, 0, 0, 100, 0),
(@WPID+3230, 6, 2737.93, 4141, 187.871, NULL, 0, 0, 0, 100, 0),
(@WPID+3230, 7, 2739.57, 4128.99, 186.755, NULL, 0, 0, 0, 100, 0),
(@WPID+3230, 8, 2744, 4120.22, 185.329, NULL, 0, 0, 0, 100, 0),
(@WPID+3230, 9, 2754.11, 4111.88, 182.793, NULL, 0, 0, 0, 100, 0),
(@WPID+3230, 10, 2751.74, 4101.1, 182.789, NULL, 0, 0, 0, 100, 0),
(@WPID+3230, 11, 2742.56, 4096.84, 184.807, NULL, 0, 0, 0, 100, 0),
(@WPID+3230, 12, 2735.88, 4091.46, 186.473, NULL, 0, 0, 0, 100, 0),
(@WPID+3230, 13, 2719.98, 4091.79, 191.389, NULL, 0, 0, 0, 100, 0),
(@WPID+3230, 14, 2709.06, 4101.4, 194.313, NULL, 0, 0, 0, 100, 0),
--
(@WPID+3240, 1, 2774.39, 4063.6, 175.36, NULL, 0, 0, 0, 100, 0),
(@WPID+3240, 2, 2762.52, 4070.65, 179.224, NULL, 0, 0, 0, 100, 0),
(@WPID+3240, 3, 2762.66, 4089.84, 180.385, NULL, 0, 0, 0, 100, 0),
(@WPID+3240, 4, 2768.04, 4106.8, 180.001, NULL, 0, 0, 0, 100, 0),
(@WPID+3240, 5, 2769.24, 4119.73, 180.42, NULL, 0, 0, 0, 100, 0),
(@WPID+3240, 6, 2762.58, 4130.37, 182.142, NULL, 0, 0, 0, 100, 0),
(@WPID+3240, 7, 2761.03, 4137.93, 182.781, NULL, 0, 0, 0, 100, 0),
(@WPID+3240, 8, 2766.2, 4149.29, 182.6, NULL, 0, 0, 0, 100, 0),
(@WPID+3240, 9, 2774.23, 4154.33, 181.557, NULL, 0, 0, 0, 100, 0),
(@WPID+3240, 10, 2782.75, 4154.59, 180.477, NULL, 0, 0, 0, 100, 0),
(@WPID+3240, 11, 2787.65, 4147.14, 179.354, NULL, 0, 0, 0, 100, 0),
(@WPID+3240, 12, 2785.65, 4134.69, 178.812, NULL, 0, 0, 0, 100, 0),
(@WPID+3240, 13, 2774.5, 4127.15, 180.05, NULL, 0, 0, 0, 100, 0),
(@WPID+3240, 14, 2772.36, 4119.31, 179.889, NULL, 0, 0, 0, 100, 0),
(@WPID+3240, 15, 2770.13, 4106.4, 179.66, NULL, 0, 0, 0, 100, 0),
(@WPID+3240, 16, 2771.56, 4090.29, 178.584, NULL, 0, 0, 0, 100, 0),
(@WPID+3240, 17, 2776.88, 4085.16, 177.059, NULL, 0, 0, 0, 100, 0),
(@WPID+3240, 18, 2784.83, 4082.73, 175.001, NULL, 0, 0, 0, 100, 0),
(@WPID+3240, 19, 2798.02, 4078.83, 171.152, NULL, 0, 0, 0, 100, 0),
(@WPID+3240, 20, 2802.92, 4074.41, 169.217, NULL, 0, 0, 0, 100, 0),
(@WPID+3240, 21, 2799.46, 4066.03, 169.039, NULL, 0, 0, 0, 100, 0),
(@WPID+3240, 22, 2786.24, 4064.46, 172.402, NULL, 0, 0, 0, 100, 0),
(@WPID+3240, 23, 2780.38, 4066.97, 174.402, NULL, 0, 0, 0, 100, 0),
--
(@WPID+3250, 1, 2713.21, 4188.41, 194.503, NULL, 0, 0, 0, 100, 0),
(@WPID+3250, 2, 2714.74, 4196.85, 194.074, NULL, 0, 0, 0, 100, 0),
(@WPID+3250, 3, 2724.43, 4203.24, 191.814, NULL, 0, 0, 0, 100, 0),
(@WPID+3250, 4, 2744.36, 4212.5, 186.959, NULL, 0, 0, 0, 100, 0),
(@WPID+3250, 5, 2749.49, 4233.13, 185.674, NULL, 0, 0, 0, 100, 0),
(@WPID+3250, 6, 2751.29, 4242.29, 183.825, NULL, 0, 0, 0, 100, 0),
(@WPID+3250, 7, 2755.05, 4245.48, 183.69, NULL, 0, 0, 0, 100, 0),
(@WPID+3250, 8, 2758.04, 4241.95, 183.21, NULL, 0, 0, 0, 100, 0),
(@WPID+3250, 9, 2757.78, 4233.59, 183.05, NULL, 0, 0, 0, 100, 0),
(@WPID+3250, 10, 2762.14, 4222.23, 181.71, NULL, 0, 0, 0, 100, 0),
(@WPID+3250, 11, 2772.13, 4214.35, 179.601, NULL, 0, 0, 0, 100, 0),
(@WPID+3250, 12, 2779.54, 4207.12, 178.687, NULL, 0, 0, 0, 100, 0),
(@WPID+3250, 13, 2782.57, 4200.55, 178.5, NULL, 0, 0, 0, 100, 0),
(@WPID+3250, 14, 2778.61, 4196.04, 179.428, NULL, 0, 0, 0, 100, 0),
(@WPID+3250, 15, 2769.79, 4194.34, 181.318, NULL, 0, 0, 0, 100, 0),
(@WPID+3250, 16, 2757.98, 4200.88, 183.669, NULL, 0, 0, 0, 100, 0),
(@WPID+3250, 17, 2750.66, 4204.04, 185.418, NULL, 0, 0, 0, 100, 0),
(@WPID+3250, 18, 2744.48, 4203.28, 187.02, NULL, 0, 0, 0, 100, 0),
(@WPID+3250, 19, 2737.8, 4192.94, 188.914, NULL, 0, 0, 0, 100, 0),
(@WPID+3250, 20, 2736.3, 4182.55, 189.602, NULL, 0, 0, 0, 100, 0),
(@WPID+3250, 21, 2729.98, 4172.35, 191.488, NULL, 0, 0, 0, 100, 0),
(@WPID+3250, 22, 2722.85, 4165.63, 193.2, NULL, 0, 0, 0, 100, 0),
(@WPID+3250, 23, 2715.19, 4173.1, 194.713, NULL, 0, 0, 0, 100, 0),
--
(@WPID+3260, 1, 2963.85, 4294.43, 150.33, NULL, 0, 0, 0, 100, 0),
(@WPID+3260, 2, 2968.51, 4300.79, 147.691, NULL, 0, 0, 0, 100, 0),
(@WPID+3260, 3, 2971.74, 4311.49, 144.68, NULL, 0, 0, 0, 100, 0),
(@WPID+3260, 4, 2977.11, 4324.87, 146.424, NULL, 0, 0, 0, 100, 0),
(@WPID+3260, 5, 2976.95, 4324.48, 146.514, NULL, 0, 0, 0, 100, 0),
(@WPID+3260, 6, 2957.26, 4342.96, 145.572, NULL, 0, 0, 0, 100, 0),
(@WPID+3260, 7, 2944.19, 4340.17, 147.691, NULL, 0, 0, 0, 100, 0),
(@WPID+3260, 8, 2932.54, 4326.49, 147.076, NULL, 0, 0, 0, 100, 0),
(@WPID+3260, 9, 2934.43, 4312.04, 147.268, NULL, 0, 0, 0, 100, 0),
(@WPID+3260, 10, 2941.31, 4302.25, 151.322, NULL, 0, 0, 0, 100, 0),
(@WPID+3260, 11, 2947.94, 4298.31, 151.44, NULL, 0, 0, 0, 100, 0),
(@WPID+3260, 12, 2945.61, 4299.69, 151.546, NULL, 0, 0, 0, 100, 0),
--
(@WPID+3270, 1, 2825.52, 4147.5, 162.594, NULL, 0, 0, 0, 100, 0),
(@WPID+3270, 2, 2822.97, 4153.41, 162.594, NULL, 0, 0, 0, 100, 0),
(@WPID+3270, 3, 2837.83, 4156.96, 162.594, NULL, 0, 0, 0, 100, 0),
(@WPID+3270, 4, 2847.05, 4161.42, 162.594, NULL, 0, 0, 0, 100, 0),
(@WPID+3270, 5, 2862.13, 4167.14, 163.452, NULL, 0, 0, 0, 100, 0),
(@WPID+3270, 6, 2874.35, 4171.98, 164, NULL, 0, 0, 0, 100, 0),
(@WPID+3270, 7, 2874.53, 4186.8, 163.665, NULL, 0, 0, 0, 100, 0),
(@WPID+3270, 8, 2890.76, 4197.52, 162.262, NULL, 0, 0, 0, 100, 0),
(@WPID+3270, 9, 2906.53, 4212.61, 163.546, NULL, 0, 0, 0, 100, 0),
(@WPID+3270, 10, 2919.92, 4194.85, 162.24, NULL, 0, 0, 0, 100, 0),
(@WPID+3270, 11, 2930.02, 4196.91, 163.514, NULL, 0, 0, 0, 100, 0),
(@WPID+3270, 12, 2939.97, 4199.99, 164, NULL, 0, 0, 0, 100, 0),
(@WPID+3270, 13, 2953.66, 4205.66, 162.594, NULL, 0, 0, 0, 100, 0),
(@WPID+3270, 14, 2967.31, 4211.75, 162.594, NULL, 0, 0, 0, 100, 0),
(@WPID+3270, 15, 2980.52, 4220.01, 162.594, NULL, 0, 0, 0, 100, 0),
(@WPID+3270, 16, 2983.41, 4213.17, 162.594, NULL, 0, 0, 0, 100, 0),
(@WPID+3270, 17, 2969.05, 4209.4, 162.594, NULL, 0, 0, 0, 100, 0),
(@WPID+3270, 18, 2958.67, 4205.27, 162.594, NULL, 0, 0, 0, 100, 0),
(@WPID+3270, 19, 2940.36, 4197.3, 164, NULL, 0, 0, 0, 100, 0),
(@WPID+3270, 20, 2927.97, 4180.38, 162.857, NULL, 0, 0, 0, 100, 0),
(@WPID+3270, 21, 2915.21, 4164.22, 162.676, NULL, 0, 0, 0, 100, 0),
(@WPID+3270, 22, 2893.82, 4167.36, 162.35, NULL, 0, 0, 0, 100, 0),
(@WPID+3270, 23, 2876.4, 4168.27, 163.935, NULL, 0, 0, 0, 100, 0),
(@WPID+3270, 24, 2861.17, 4164.76, 163.244, NULL, 0, 0, 0, 100, 0),
(@WPID+3270, 25, 2842.02, 4156.35, 162.594, NULL, 0, 0, 0, 100, 0),
(@WPID+3270, 26, 2833.55, 4151.1, 162.594, NULL, 0, 0, 0, 100, 0),
--
(@WPID+3280, 1, 2808.43, 4316.62, 150.172, NULL, 0, 0, 0, 100, 0),
(@WPID+3280, 2, 2821.01, 4316.1, 148.818, NULL, 0, 0, 0, 100, 0),
(@WPID+3280, 3, 2836, 4318.92, 148.391, NULL, 0, 0, 0, 100, 0),
(@WPID+3280, 4, 2847.01, 4328.82, 144.937, NULL, 0, 0, 0, 100, 0),
(@WPID+3280, 5, 2845.77, 4341.43, 141.567, NULL, 0, 0, 0, 100, 0),
(@WPID+3280, 6, 2841.1, 4352.52, 142.427, NULL, 0, 0, 0, 100, 0),
(@WPID+3280, 7, 2828.34, 4362.66, 137.889, NULL, 0, 0, 0, 100, 0),
(@WPID+3280, 8, 2814.71, 4365.75, 138.724, NULL, 0, 0, 0, 100, 0),
(@WPID+3280, 9, 2802.43, 4361.03, 137.895, NULL, 0, 0, 0, 100, 0),
(@WPID+3280, 10, 2793.67, 4351.98, 138.878, NULL, 0, 0, 0, 100, 0),
(@WPID+3280, 11, 2788.13, 4337.33, 140.825, NULL, 0, 0, 0, 100, 0),
(@WPID+3280, 12, 2787.71, 4323.55, 144.645, NULL, 0, 0, 0, 100, 0),
(@WPID+3280, 13, 2799.79, 4318.85, 149.242, NULL, 0, 0, 0, 100, 0),
--
(@WPID+3290, 1, 2793.69, 3923.68, 144.719, NULL, 0, 0, 0, 100, 0),
(@WPID+3290, 2, 2803.79, 3915.99, 147.268, NULL, 0, 0, 0, 100, 0),
(@WPID+3290, 3, 2811.49, 3917.32, 148.223, NULL, 0, 0, 0, 100, 0),
(@WPID+3290, 4, 2814.65, 3925.62, 147.268, NULL, 0, 0, 0, 100, 0),
(@WPID+3290, 5, 2813.95, 3940.94, 145.956, NULL, 0, 0, 0, 100, 0),
(@WPID+3290, 6, 2809.55, 3945.27, 145.101, NULL, 0, 0, 0, 100, 0),
(@WPID+3290, 7, 2802.68, 3944.62, 144.38, NULL, 0, 0, 0, 100, 0),
(@WPID+3290, 8, 2795.07, 3949.71, 143.553, NULL, 0, 0, 0, 100, 0),
(@WPID+3290, 9, 2779.66, 3957.83, 143.271, NULL, 0, 0, 0, 100, 0),
(@WPID+3290, 10, 2769.37, 3967.04, 143.935, NULL, 0, 0, 0, 100, 0),
(@WPID+3290, 11, 2763.7, 3973.91, 143.976, NULL, 0, 0, 0, 100, 0),
(@WPID+3290, 12, 2762.14, 3977.6, 143.951, NULL, 0, 0, 0, 100, 0),
(@WPID+3290, 13, 2762.7, 3982.63, 144.071, NULL, 0, 0, 0, 100, 0),
(@WPID+3290, 14, 2757.93, 3985.68, 143.628, NULL, 0, 0, 0, 100, 0),
(@WPID+3290, 15, 2755.89, 3980.85, 143.41, NULL, 0, 0, 0, 100, 0),
(@WPID+3290, 16, 2767.06, 3966.07, 143.837, NULL, 0, 0, 0, 100, 0),
(@WPID+3290, 17, 2790.22, 3940.84, 143.554, NULL, 0, 0, 0, 100, 0),
--
(@WPID+3300, 1, 2745.8, 4172.42, 187.621, NULL, 0, 0, 0, 100, 0),
(@WPID+3300, 2, 2742.46, 4189.27, 187.917, NULL, 0, 0, 0, 100, 0),
(@WPID+3300, 3, 2743.84, 4194.39, 187.416, NULL, 0, 0, 0, 100, 0),
(@WPID+3300, 4, 2750.76, 4195.45, 185.758, NULL, 0, 0, 0, 100, 0),
(@WPID+3300, 5, 2757.87, 4188.93, 184.211, NULL, 0, 0, 0, 100, 0),
(@WPID+3300, 6, 2766.27, 4189.79, 182.256, NULL, 0, 0, 0, 100, 0),
(@WPID+3300, 7, 2769.75, 4182.51, 181.652, NULL, 0, 0, 0, 100, 0),
(@WPID+3300, 8, 2766.18, 4178, 182.509, NULL, 0, 0, 0, 100, 0),
(@WPID+3300, 9, 2769.69, 4167.6, 182.121, NULL, 0, 0, 0, 100, 0),
(@WPID+3300, 10, 2786.93, 4153.12, 179.854, NULL, 0, 0, 0, 100, 0),
(@WPID+3300, 11, 2790.11, 4137.71, 178.276, NULL, 0, 0, 0, 100, 0),
(@WPID+3300, 12, 2787.05, 4122.2, 177.593, NULL, 0, 0, 0, 100, 0),
(@WPID+3300, 13, 2789.4, 4115.15, 176.908, NULL, 0, 0, 0, 100, 0),
(@WPID+3300, 14, 2788.69, 4109.11, 177.08, NULL, 0, 0, 0, 100, 0),
(@WPID+3300, 15, 2776.72, 4097.74, 178.768, NULL, 0, 0, 0, 100, 0),
(@WPID+3300, 16, 2770.46, 4098.51, 179.273, NULL, 0, 0, 0, 100, 0),
(@WPID+3300, 17, 2768.96, 4109.05, 179.955, NULL, 0, 0, 0, 100, 0),
(@WPID+3300, 18, 2760.42, 4130.61, 182.533, NULL, 0, 0, 0, 100, 0),
(@WPID+3300, 19, 2756.59, 4152.27, 184.412, NULL, 0, 0, 0, 100, 0),
(@WPID+3300, 20, 2753.61, 4163.64, 185.816, NULL, 0, 0, 0, 100, 0),
--
(@WPID+3310, 1, 3002.47, 4103.19, 150.607, NULL, 0, 0, 0, 100, 0),
(@WPID+3310, 2, 3012.26, 4099.28, 150.33, NULL, 0, 0, 0, 100, 0),
(@WPID+3310, 3, 3018.39, 4091.11, 150.132, NULL, 0, 0, 0, 100, 0),
(@WPID+3310, 4, 3022.28, 4077.85, 150.119, NULL, 0, 0, 0, 100, 0),
(@WPID+3310, 5, 3013.72, 4067.54, 150.016, NULL, 0, 0, 0, 100, 0),
(@WPID+3310, 6, 3005.35, 4064.19, 149.951, NULL, 0, 0, 0, 100, 0),
(@WPID+3310, 7, 2987.48, 4064.93, 149.992, NULL, 0, 0, 0, 100, 0),
(@WPID+3310, 8, 2980.49, 4084.39, 150.127, NULL, 0, 0, 0, 100, 0),
(@WPID+3310, 9, 2986.15, 4096.42, 150.102, NULL, 0, 0, 0, 100, 0),
--
(@WPID+3320, 1, 2903.13, 4045.04, 150.253, NULL, 0, 0, 0, 100, 0),
(@WPID+3320, 2, 2900.97, 4054.78, 149.405, NULL, 0, 0, 0, 100, 0),
(@WPID+3320, 3, 2904.72, 4060.99, 149.221, NULL, 0, 0, 0, 100, 0),
(@WPID+3320, 4, 2915.96, 4060.8, 149.217, NULL, 0, 0, 0, 100, 0),
(@WPID+3320, 5, 2923.4, 4055.26, 149.519, NULL, 0, 0, 0, 100, 0),
(@WPID+3320, 6, 2923.97, 4037.36, 149.898, NULL, 0, 0, 0, 100, 0),
(@WPID+3320, 7, 2919.18, 4017.14, 149.729, NULL, 0, 0, 0, 100, 0),
(@WPID+3320, 8, 2910.86, 4004.79, 149.729, NULL, 0, 0, 0, 100, 0),
(@WPID+3320, 9, 2903.9, 4002.09, 149.731, NULL, 0, 0, 0, 100, 0),
(@WPID+3320, 10, 2897.39, 4011.31, 149.729, NULL, 0, 0, 0, 100, 0),
(@WPID+3320, 11, 2904.76, 4017.59, 149.729, NULL, 0, 0, 0, 100, 0),
(@WPID+3320, 12, 2907.02, 4029.97, 149.73, NULL, 0, 0, 0, 100, 0),
(@WPID+3320, 13, 2907.62, 4038.71, 149.753, NULL, 0, 0, 0, 100, 0),
--
(@WPID+3330, 1, 2658.58, 4004.96, 172.194, NULL, 0, 0, 0, 100, 0),
(@WPID+3330, 2, 2655.54, 4021.59, 172.855, NULL, 0, 0, 0, 100, 0),
(@WPID+3330, 3, 2658.97, 4029.03, 173.465, NULL, 0, 0, 0, 100, 0),
(@WPID+3330, 4, 2663.57, 4030.98, 174.857, NULL, 0, 0, 0, 100, 0),
(@WPID+3330, 5, 2672.5, 4023.5, 175.145, NULL, 0, 0, 0, 100, 0),
(@WPID+3330, 6, 2685.72, 4025.77, 176.976, NULL, 0, 0, 0, 100, 0),
(@WPID+3330, 7, 2692.26, 4025.18, 176.815, NULL, 0, 0, 0, 100, 0),
(@WPID+3330, 8, 2697.02, 4020.36, 176.596, NULL, 0, 0, 0, 100, 0),
(@WPID+3330, 9, 2696.21, 4013.51, 175.4, NULL, 0, 0, 0, 100, 0),
(@WPID+3330, 10, 2691.43, 4007.54, 174.711, NULL, 0, 0, 0, 100, 0),
(@WPID+3330, 11, 2687.95, 3999.77, 173.807, NULL, 0, 0, 0, 100, 0),
(@WPID+3330, 12, 2682.88, 3991.29, 171.561, NULL, 0, 0, 0, 100, 0),
(@WPID+3330, 13, 2677.23, 3990.72, 171.707, NULL, 0, 0, 0, 100, 0),
(@WPID+3330, 14, 2665.45, 3997.65, 171.778, NULL, 0, 0, 0, 100, 0),
--
(@WPID+3340, 1, 3008.97, 4188.46, 160.842, NULL, 0, 0, 0, 100, 0),
(@WPID+3340, 2, 3012.77, 4197.77, 160.672, NULL, 0, 0, 0, 100, 0),
(@WPID+3340, 3, 3013.51, 4209.45, 160.778, NULL, 0, 0, 0, 100, 0),
(@WPID+3340, 4, 3027.26, 4226.32, 160.778, NULL, 0, 0, 0, 100, 0),
(@WPID+3340, 5, 3028.07, 4237.91, 160.778, NULL, 0, 0, 0, 100, 0),
(@WPID+3340, 6, 3020.76, 4246.98, 160.778, NULL, 0, 0, 0, 100, 0),
(@WPID+3340, 7, 3007.83, 4250.5, 160.778, NULL, 0, 0, 0, 100, 0),
(@WPID+3340, 8, 2994.81, 4249.76, 160.782, NULL, 0, 0, 0, 100, 0),
(@WPID+3340, 9, 2989.9, 4245.5, 160.86, NULL, 0, 0, 0, 100, 0),
(@WPID+3340, 10, 2991.47, 4237.64, 160.888, NULL, 0, 0, 0, 100, 0),
(@WPID+3340, 11, 2999.33, 4228.1, 160.819, NULL, 0, 0, 0, 100, 0),
(@WPID+3340, 12, 3003.7, 4215.97, 160.862, NULL, 0, 0, 0, 100, 0),
(@WPID+3340, 13, 3004.97, 4209.17, 160.856, NULL, 0, 0, 0, 100, 0),
(@WPID+3340, 14, 3011.38, 4203.71, 160.701, NULL, 0, 0, 0, 100, 0),
(@WPID+3340, 15, 3010.3, 4195.54, 160.78, NULL, 0, 0, 0, 100, 0),
(@WPID+3340, 16, 3008.5, 4188.89, 160.855, NULL, 0, 0, 0, 100, 0),
--
(@WPID+3350, 1, 2663.27, 4266.95, 154.329, NULL, 0, 0, 0, 100, 0),
(@WPID+3350, 2, 2667.25, 4247.03, 154.329, NULL, 0, 0, 0, 100, 0),
(@WPID+3350, 3, 2661.71, 4238.74, 154.329, NULL, 0, 0, 0, 100, 0),
(@WPID+3350, 4, 2661.21, 4232.2, 154.329, NULL, 0, 0, 0, 100, 0),
(@WPID+3350, 5, 2656.1, 4229.51, 154.329, NULL, 0, 0, 0, 100, 0),
(@WPID+3350, 6, 2654.4, 4237.6, 154.329, NULL, 0, 0, 0, 100, 0),
(@WPID+3350, 7, 2637.78, 4240.8, 154.329, NULL, 0, 0, 0, 100, 0),
(@WPID+3350, 8, 2635.29, 4249.78, 154.329, NULL, 0, 0, 0, 100, 0),
(@WPID+3350, 9, 2630.57, 4254.07, 154.86, NULL, 0, 0, 0, 100, 0),
(@WPID+3350, 10, 2635.31, 4259.41, 154.595, NULL, 0, 0, 0, 100, 0),
(@WPID+3350, 11, 2644.85, 4259.37, 154.329, NULL, 0, 0, 0, 100, 0),
(@WPID+3350, 12, 2650.84, 4268.9, 154.549, NULL, 0, 0, 0, 100, 0);

DELETE FROM `waypoint_data` WHERE `id` BETWEEN @WPID+3360 AND @WPID+3400;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
--
(@WPID+3360, 1, 2738.6, 4346.41, 138.861, NULL, 0, 0, 0, 100, 0),
(@WPID+3360, 2, 2741.52, 4358.91, 136.461, NULL, 0, 0, 0, 100, 0),
(@WPID+3360, 3, 2753.45, 4360.75, 136.579, NULL, 0, 0, 0, 100, 0),
(@WPID+3360, 4, 2760.39, 4352.77, 136.312, NULL, 0, 0, 0, 100, 0),
(@WPID+3360, 5, 2766.75, 4348, 136.185, NULL, 0, 0, 0, 100, 0),
(@WPID+3360, 6, 2771.77, 4351.03, 135.816, NULL, 0, 0, 0, 100, 0),
(@WPID+3360, 7, 2774.95, 4357.59, 136.064, NULL, 0, 0, 0, 100, 0),
(@WPID+3360, 8, 2779.5, 4366.28, 136.398, NULL, 0, 0, 0, 100, 0),
(@WPID+3360, 9, 2784.12, 4367.55, 136.398, NULL, 0, 0, 0, 100, 0),
(@WPID+3360, 10, 2788.48, 4364.74, 136.431, NULL, 0, 0, 0, 100, 0),
(@WPID+3360, 11, 2797.74, 4373.3, 136.399, NULL, 0, 0, 0, 100, 0),
(@WPID+3360, 12, 2796.41, 4378.95, 136.398, NULL, 0, 0, 0, 100, 0),
(@WPID+3360, 13, 2788.11, 4384.18, 136.398, NULL, 0, 0, 0, 100, 0),
(@WPID+3360, 14, 2780.64, 4380.48, 136.398, NULL, 0, 0, 0, 100, 0),
--
(@WPID+3370, 1, 2934.52, 4110.88, 162.594, NULL, 0, 0, 0, 100, 0), 
(@WPID+3370, 2, 2940.61, 4096.29, 162.594, NULL, 0, 0, 0, 100, 0),
(@WPID+3370, 3, 2944.35, 4088.17, 160.377, NULL, 0, 0, 0, 100, 0),
(@WPID+3370, 4, 2949.86, 4073.68, 157.72, NULL, 0, 0, 0, 100, 0),
(@WPID+3370, 5, 2957.34, 4060.28, 154.838, NULL, 0, 0, 0, 100, 0),
(@WPID+3370, 6, 2966.58, 4050.1, 152.472, NULL, 0, 0, 0, 100, 0),
(@WPID+3370, 7, 2975.97, 4039.95, 149.571, NULL, 0, 0, 0, 100, 0),
(@WPID+3370, 8, 2977.33, 4028.82, 147.578, NULL, 0, 0, 0, 100, 0),
(@WPID+3370, 9, 2979.07, 4019.79, 146.81, NULL, 0, 0, 0, 100, 0),
--
(@WPID+3380, 1, 2883.13, 4375.16, 158.083, NULL, 0, 0, 0, 100, 0),
(@WPID+3380, 2, 2887.95, 4362.31, 157.653, NULL, 0, 0, 0, 100, 0),
(@WPID+3380, 3, 2891.56, 4352.51, 157.626, NULL, 0, 0, 0, 100, 0),
(@WPID+3380, 4, 2891.8, 4345.12, 157.597, NULL, 0, 0, 0, 100, 0),
(@WPID+3380, 5, 2885.57, 4339.95, 157.568, NULL, 0, 0, 0, 100, 0),
(@WPID+3380, 6, 2881.34, 4328.88, 157.378, NULL, 0, 0, 0, 100, 0),
(@WPID+3380, 7, 2880.21, 4313.57, 157.387, NULL, 0, 0, 0, 100, 0),
(@WPID+3380, 8, 2879.07, 4297.75, 157.535, NULL, 0, 0, 0, 100, 0),
(@WPID+3380, 9, 2877.82, 4286.19, 158.566, NULL, 0, 0, 0, 100, 0),
(@WPID+3380, 10, 2873.95, 4283.56, 158.99, NULL, 0, 0, 0, 100, 0),
(@WPID+3380, 11, 2861.58, 4279.48, 159.249, NULL, 0, 0, 0, 100, 0),
(@WPID+3380, 12, 2856.83, 4282.14, 158.125, NULL, 0, 0, 0, 100, 0),
(@WPID+3380, 13, 2846.12, 4298.63, 151.504, NULL, 0, 0, 0, 100, 0),
(@WPID+3380, 14, 2840.56, 4314.65, 148.62, NULL, 0, 0, 0, 100, 0),
--
(@WPID+3390, 1, 2759.38, 3855.21, 141.833, NULL, 0, 0, 0, 100, 0),
(@WPID+3390, 2, 2748.85, 3880.12, 140.931, NULL, 0, 0, 0, 100, 0),
(@WPID+3390, 3, 2750.34, 3891.44, 141.446, NULL, 0, 0, 0, 100, 0),
(@WPID+3390, 4, 2747.61, 3904.15, 140.25, NULL, 0, 0, 0, 100, 0),
(@WPID+3390, 5, 2755.67, 3911.44, 144.618, NULL, 0, 0, 0, 100, 0),
(@WPID+3390, 6, 2764.08, 3902.04, 148.057, NULL, 0, 0, 0, 100, 0),
(@WPID+3390, 7, 2767.87, 3894.14, 151.867, NULL, 0, 0, 0, 100, 0),
(@WPID+3390, 8, 2778.63, 3892.77, 155.128, NULL, 0, 0, 0, 100, 0),
(@WPID+3390, 9, 2787.5, 3888.22, 157.49, NULL, 0, 0, 0, 100, 0),
(@WPID+3390, 10, 2798.82, 3880.64, 159.698, NULL, 0, 0, 0, 100, 0),
(@WPID+3390, 11, 2820.72, 3878.2, 165.194, NULL, 0, 0, 0, 100, 0),
--
(@WPID+3400, 1, 2888.45, 4034.2, 152.296, NULL, 0, 0, 0, 100, 0),
(@WPID+3400, 2, 2882.89, 4040.52, 153.853, NULL, 0, 0, 0, 100, 0),
(@WPID+3400, 3, 2876.53, 4050.14, 156.212, NULL, 0, 0, 0, 100, 0),
(@WPID+3400, 4, 2873.1, 4057.86, 157.591, NULL, 0, 0, 0, 100, 0),
(@WPID+3400, 5, 2869.4, 4066.74, 157.068, NULL, 0, 0, 0, 100, 0),
(@WPID+3400, 6, 2862.16, 4073.52, 156.95, NULL, 0, 0, 0, 100, 0);

-- remove old entries added by AC
DELETE FROM `creature_addon` WHERE `guid` IN
(67284, 67285, 67286, 67287, 67288, 67289, 67290, 67291, 67292, 67295, 67296, 67298, 67301, 67302, 67305, 67306, 67307, 67309, 67311, 67313, 67317, 67318, 67321, 67322, 67323, 67325, 67326, 67328, 67329, 67330, 
 67335, 67337, 67338, 67340, 67342, 67343, 67345, 67347, 67348, 67349, 67350, 67351, 67352, 67353, 67354, 67355, 67357, 67358, 67360, 67361, 67362, 67363, 67364, 67365, 67367, 67369, 67370, 67371, 67372, 67383);

DELETE FROM `creature_addon` WHERE `guid` IN 
(@CGUID+236, @CGUID+251, @CGUID+252, @CGUID+253, @CGUID+255, @CGUID+256, @CGUID+257, @CGUID+258, @CGUID+259, @CGUID+261, @CGUID+262, @CGUID+263, @CGUID+266, @CGUID+267, @CGUID+268, @CGUID+269, 
 @CGUID+270, @CGUID+271, @CGUID+272, @CGUID+273, @CGUID+278, @CGUID+279, @CGUID+287, @CGUID+288, @CGUID+289, @CGUID+294, @CGUID+295, @CGUID+296, @CGUID+311);

INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES
--
(@CGUID+251, 0, 0, 0, 1, 0, 0, '35778'),
(@CGUID+252, 0, 0, 0, 1, 0, 0, '35778'),
(@CGUID+253, 0, 0, 0, 1, 0, 0, '35778'),
(@CGUID+255, 0, 0, 0, 1, 0, 0, '35778'),
(@CGUID+256, 0, 0, 0, 1, 0, 0, '35778'),
(@CGUID+257, 0, 0, 0, 1, 0, 0, '35778'),
(@CGUID+258, 0, 0, 0, 1, 0, 0, '35778'),
(@CGUID+259, 0, 0, 0, 1, 0, 0, '35778'),
(@CGUID+261, 0, 0, 0, 1, 0, 0, '35778'),
(@CGUID+262, 0, 0, 0, 1, 0, 0, '35778'),
(@CGUID+263, 0, 0, 0, 1, 0, 0, '35778'),
(@CGUID+266, 0, 0, 0, 1, 0, 0, '35778'),
(@CGUID+267, 0, 0, 0, 1, 0, 0, '35778'),
(@CGUID+268, 0, 0, 0, 1, 0, 0, '35778'),
(@CGUID+269, 0, 0, 0, 1, 0, 0, '35778'),
(@CGUID+270, 0, 0, 0, 1, 0, 0, '35778'),
(@CGUID+271, 0, 0, 0, 1, 0, 0, '35778'),
(@CGUID+272, 0, 0, 0, 1, 0, 0, '35778'),
(@CGUID+273, 0, 0, 0, 1, 0, 0, '35778'),
(@CGUID+278, 0, 0, 0, 1, 0, 0, '35778'),
(@CGUID+279, 0, 0, 0, 1, 0, 0, '35778'),
--
(@CGUID+236, 0, 0, 0, 1, 333, 0, NULL),
(@CGUID+287, 0, 0, 0, 1, 133, 0, NULL),
(@CGUID+288, 0, 0, 0, 1, 133, 0, NULL),
(@CGUID+289, 0, 0, 0, 1, 133, 0, NULL),
(@CGUID+294, 0, 0, 0, 1, 133, 0, NULL),
(@CGUID+295, 0, 0, 0, 1, 133, 0, NULL),
(@CGUID+296, 0, 0, 0, 1, 133, 0, NULL),
(@CGUID+311, 0, 0, 0, 1, 133, 0, NULL);
