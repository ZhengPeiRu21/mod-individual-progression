/* smart scripts */
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (15551);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (15551); 

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(15551, 0, 0, 0, 4, 0, 30, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Spectral Stable Hand - On Aggro - Say Line 0'),
(15551, 0, 1, 0, 6, 0, 50, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Spectral Stable Hand - On Death - Say Line 1'),
(15551, 0, 2, 0, 1, 0, 60, 0, 0, 70000, 80000, 190000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Spectral Stable Hand - Out of Combat - Say Line 2'),
(15551, 0, 3, 0, 0, 0, 100, 0, 2000, 11000, 12000, 21000, 0, 0, 11, 18812, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Spectral Stable Hand - In Combat - Cast Knockdown'),
(15551, 0, 4, 0, 0, 0, 100, 0, 2000, 15000, 17000, 28000, 0, 0, 11, 6016, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Spectral Stable Hand - In Combat - Cast Pierce Armor'),
(15551, 0, 5, 0, 74, 0, 100, 0, 0, 0, 14000, 22000, 70, 40, 11, 29339, 0, 0, 0, 0, 0, 9, 15547, 0, 40, 1, 0, 0, 0, 0, 'Spectral Stable Hand - Spectral Charger below 70% hp - Cast Healing Touch'),
(15551, 0, 6, 0, 0, 0, 100, 0, 0, 0, 21000, 38000, 0, 0, 11, 29340, 0, 0, 0, 0, 0, 9, 15547, 0, 40, 1, 0, 0, 0, 0,    'Spectral Stable Hand - In Combat - Cast Whip Rage');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 22) AND (`SourceGroup` IN (6, 7)) AND (`SourceEntry` = 15551) AND (`ConditionTypeOrReference` = 29);

-- Restore Enchanting formula drops to their pre-3.1 rates
UPDATE `creature_loot_template` SET `Chance` = 5 WHERE `Item` IN (22559, 22561, 22545, 22560);

-- make blackened urn unsellable and give as reward
UPDATE `item_template` SET `Quality` = 1, `SellPrice` = 0, `description` = 'Used to summon Nightbane in Karazhan' WHERE (`entry` = 24140);
UPDATE `quest_template` SET `StartItem` = 24140 WHERE `ID` = 9644;
UPDATE `quest_template_addon` SET `ProvidedItemCount` = 1 WHERE (`ID` = 9644);

-- fix boss reset with Midnight not respawning correctly
UPDATE `creature_template` SET `ScriptName` = 'boss_midnight_ipp' WHERE `entry` = 16151;
UPDATE `creature_template` SET `ScriptName` = 'boss_midnight' WHERE `entry` = 605; -- assigning old script to unused entry to avoid worldserver error about script not being assigned in database

-- fix worldserver error when Midnight kills a player, Midnight needs the text as well for Attumen to say the line
DELETE FROM `creature_text` WHERE `CreatureID` = 16151;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(16151, 0, 0, '%s calls for her master!', 16, 0, 100, 0, 0, 0, 13439, 0, 'midnight EMOTE_CALL_ATTUMEN'),
(16151, 1, 0, '%s rushes to her master\'s aid.', 16, 0, 100, 0, 0, 0, 13455, 0, 'midnight EMOTE_MOUNT_UP'),
(16151, 3, 0, 'Well done, Midnight!', 14, 0, 100, 0, 0, 9173, 15334, 0, 'attumen SAY_MIDNIGHT_KILL');
