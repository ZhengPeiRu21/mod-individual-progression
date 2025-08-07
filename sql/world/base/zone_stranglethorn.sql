-- smart scripts
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (681, 682, 683, 736, 905, 1108);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(587, 588, 597, 660, 671, 675, 694, 697, 699, 701, 702, 723, 729, 1061, 1062, 1085, 1150);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(587, 588, 681, 597, 660, 671, 675, 682, 683, 694, 697, 699, 701, 702, 723, 729, 736, 905, 1061, 1062, 1085, 1108, 1150);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(587, 0, 0, 0, 9, 0, 100, 0, 26900, 35400, 20000, 32200, 0, 5, 11, 6713, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Bloodscalp Warrior - Within 0-5 Range - Cast Disarm'),
(587, 0, 1, 0, 105, 0, 100, 0, 0, 0, 15000, 20000, 0, 5, 11, 11972, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,         'Bloodscalp Warrior - Target Casting - Cast Shield Bash'),
(587, 0, 2, 3, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 8599, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Bloodscalp Warrior - Between 0-30% Health - Cast Enrage (No Repeat)'),
(587, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Bloodscalp Warrior - On Enrage - Say Line 0'),
(588, 0, 0, 1, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 8599, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Bloodscalp Scout - Between 0-30% Health - Cast Enrage (No Repeat)'),
(588, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Bloodscalp Scout - On Enrage - Say Line 0'),
(597, 0, 0, 1, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 8599, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Bloodscalp Berserker - Between 0-30% Health - Cast Enrage (No Repeat)'),
(597, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Bloodscalp Berserker - On Enrage - Say Line 0'),
(660, 0, 0, 0, 2, 0, 100, 1, 50, 90, 0, 0, 0, 0, 11, 8376, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Bloodscalp Witch Doctor - Between 50-90% Health - Cast Earthgrab Totem (No Repeat)'),
(660, 0, 1, 0, 2, 0, 100, 1, 0, 50, 0, 0, 0, 0, 11, 5605, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Bloodscalp Witch Doctor - Between 0-50% Health - Cast Healing Ward (No Repeat)'),
(660, 0, 2, 3, 2, 0, 100, 513, 0, 20, 0, 0, 0, 0, 11, 8599, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Bloodscalp Witch Doctor - Between 0-20% Health - Cast Enrage (No Repeat)'),
(660, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Bloodscalp Witch Doctor - On Enrage - Say Line 0'),
(671, 0, 0, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 10277, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Bloodscalp Headhunter - Within 5-30 Range - Cast Throw'),
(671, 0, 1, 2, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 8599, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Bloodscalp Headhunter - Between 0-30% Health - Cast Enrage (No Repeat)'),
(671, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Bloodscalp Headhunter - On Enrage - Say Line 0'),
(671, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Bloodscalp Headhunter - Between 0-15% Health - Flee For Assist (No Repeat)'),
(675, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8258, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Venture Co. Foreman - On Aggro - Cast Devotion Aura'),
(675, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Venture Co. Foreman - Between 0-15% Health - Flee For Assist (No Repeat)'),
(675, 0, 2, 0, 1, 0, 100, 0, 60000, 120000, 60000, 120000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Venture Co. Foreman - Out of Combat - Say Line 0'),
(694, 0, 0, 0, 9, 0, 100, 0, 0, 0, 3500, 4900, 5, 30, 11, 10277, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Bloodscalp Axe Thrower - Within 5-30 Range - Cast Throw'),
(694, 0, 1, 2, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Bloodscalp Axe Thrower - Between 0-30% Health - Cast Enrage (No Repeat)'),
(694, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Bloodscalp Axe Thrower - On Enrage - Say Line 0'),
(694, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Bloodscalp Axe Thrower - Between 0-15% Health - Flee For Assist (No Repeat)'),
(697, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 8788, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Bloodscalp Shaman - Out of Combat - Cast Lightning Shield (No Repeat)'),
(697, 0, 1, 0, 0, 0, 100, 0, 0, 0, 15000, 30000, 0, 0, 11, 8788, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Bloodscalp Shaman - On Missing Buff - Cast Lightning Shield'),
(697, 0, 2, 0, 106, 0, 100, 0, 13200, 29600, 24800, 37300, 0, 0, 11, 11969, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodscalp Shaman - In Combat - Cast Fire Nova'),
(697, 0, 3, 4, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Bloodscalp Shaman - Between 0-30% Health - Cast Enrage (No Repeat)'),
(697, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Bloodscalp Shaman - On Enrage - Say Line 0'),
(699, 0, 0, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 10277, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Bloodscalp Beastmaster - Within 5-30 Range - Cast Throw'),
(699, 0, 1, 2, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Bloodscalp Beastmaster - Between 0-30% Health - Cast Enrage (No Repeat)'),
(699, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Bloodscalp Beastmaster - On Enrage - Say Line 0'),
(699, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Bloodscalp Beastmaster - Between 0-15% Health - Flee For Assist (No Repeat)'),
(701, 0, 0, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 10277, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Bloodscalp Mystic - Within 5-30 Range - Cast Throw'),
(701, 0, 1, 0, 0, 0, 100, 0, 3000, 4000, 25000, 30000, 0, 0, 11, 4979, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Bloodscalp Mystic - In Combat - Cast Quick Flame Ward'),
(701, 0, 2, 0, 14, 0, 100, 0, 500, 40, 60000, 60000, 0, 0, 11, 11986, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,       'Bloodscalp Mystic - Friendly At 500 Health - Cast Healing Wave'),
(701, 0, 3, 4, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Bloodscalp Mystic - Between 0-30% Health - Cast Enrage (No Repeat)'),
(701, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Bloodscalp Mystic - On Enrage - Say Line 0'),
(701, 0, 5, 0, 0, 0, 100, 0, 0, 0, 2500, 3000, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Bloodscalp Mystic - In Combat - Cast Lightning Bolt'),
(701, 0, 6, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Bloodscalp Mystic - Between 0-15% Health - Flee For Assist (No Repeat)'),
(702, 0, 0, 0, 67, 0, 100, 0, 0, 0, 6000, 7000, 0, 0, 11, 7159, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Bloodscalp Scavenger - On Behind Target - Cast Backstab'),
(702, 0, 1, 0, 9, 0, 50, 512, 1000, 2000, 20000, 30000, 0, 5, 11, 744, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Bloodscalp Scavenger - Within 0-5 Range - Cast Poison'),
(702, 0, 2, 3, 2, 0, 100, 512, 0, 30, 0, 0, 0, 0, 11, 8599, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Bloodscalp Scavenger - Between 0-30% Health - Cast Enrage'),
(702, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Bloodscalp Scavenger - On Enrage - Say Line 0'),
--
(723, 0, 0, 0, 4, 0, 80, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                         'Mosh Ogg Butcher - On Aggro - Say Line 0'),
(723, 0, 1, 0, 9, 0, 100, 0, 4850, 18250, 4850, 18250, 0, 5, 11, 15496, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Mosh Ogg Butcher - Within 0-5 Range - Cast Cleave'),
(729, 0, 0, 0, 9, 0, 100, 0, 3000, 4000, 10000, 10000, 0, 5, 11, 5164, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Sin Dall - Within 0-5 Range - Cast Knockdown'),
(1085, 0, 0, 0, 9, 0, 100, 0, 8600, 8600, 31300, 31300, 0, 5, 11, 13443, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Elder Stranglethorn Tiger - Within 0-5 Range - Cast Rend'),
(1150, 0, 0, 0, 9, 0, 100, 0, 3000, 8000, 12000, 24000, 0, 5, 11, 3604, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'River Crocolisk -  Within 0-5 Range - Cast Tendon Rip'),
(1061, 0, 0, 1, 2, 0, 100, 513, 0, 30, 0, 0, 0, 0, 11, 8599, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Gan\'zulah - Between 0-30% Health - Cast Enrage (No Repeat)'),
(1061, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Gan\'zulah - On Enrage - Say Line 0'),
(1062, 0, 0, 0, 9, 0, 100, 0, 2000, 4000, 5000, 6000, 0, 30, 11, 421, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Nezzliok the Dire - Within 0-30 Range - Cast Chain Lightning'),
(1062, 0, 1, 0, 9, 0, 100, 0, 6000, 7000, 6000, 7000, 0, 20, 11, 2610, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Nezzliok the Dire - Within 0-20 Range - Cast Shock'),
(1062, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Nezzliok the Dire - Between 0-15% Health - Flee For Assist (No Repeat)');


-- Drop chance for Pristine Tigress Fang was incorrectly set to 100 - updated to 10
UPDATE `creature_loot_template` SET `Chance` = 10 WHERE `Item` = 3839;

-- Drop chance for Aged Gorilla Sinew was incorrectly set to 10 - updated to 4
UPDATE `creature_loot_template` SET `Chance` = 4 WHERE `Item` = 3862;

-- Drop chance for Jungle Stalker Feather was incorrectly set to 80 - updated to 25
UPDATE `creature_loot_template` SET `Chance` = 25 WHERE `Item` = 3863;

DELETE FROM `creature` WHERE `id1` IN (723);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, 
`wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
(600723, 723, 0, 0, 0, 0, 0, 1, 1, 1, -12357.4, -1075.36, 1.94221, 1.94815, 54000, 5, 0, 5346, 0, 1, 0, 0, 0, '', NULL, 0, NULL); 
    
DELETE FROM `creature_text` WHERE `CreatureID` IN (675, 723);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(675, 0, 0, 'Work you dogs! Put your back into it!',             12, 0, 100, 0, 0, 0, 306,  0, 'Venture Co. Foreman'),
(723, 0, 0, 'I\'ll crush you!',                                  12, 0, 100, 0, 0, 0, 1925, 0, 'Mosh Ogg Butcher'),
(723, 0, 1, 'Me smash! You die!',                                12, 0, 100, 0, 0, 0, 1926, 0, 'Mosh Ogg Butcher'),
(723, 0, 2, 'Raaaaaaaaaaaaaaaaaaaaaaaaaaaaaar!!! Me smash $R!',  12, 0, 100, 0, 0, 0, 1927, 0, 'Mosh Ogg Butcher');
    
