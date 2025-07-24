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


UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (675, 723);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (675, 723);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(675, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8258, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Venture Co. Foreman - On Aggro - Cast Devotion Aura'),
(675, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                  'Venture Co. Foreman - Between 0-15% Health - Flee For Assist (No Repeat)'),
(675, 0, 2, 0, 1, 0, 100, 0, 60000, 120000, 60000, 120000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Venture Co. Foreman - Out of Combat - Say Line 0'),
(723, 0, 0, 0, 4, 0, 80, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                     'Mosh Ogg Butcher - On Aggro - Say Line 0'),
(723, 0, 1, 0, 9, 0, 100, 0, 4850, 18250, 4850, 18250, 0, 5, 11, 15496, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Mosh Ogg Butcher - Within 0-5 Range - Cast Cleave');
