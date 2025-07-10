
SET @IPPPHASE := 65536;


/*-- REMOVE EVENT 17 --*/
DELETE FROM `game_event_creature` WHERE `eventEntry` = 17;
DELETE FROM `game_event_gameobject` WHERE `eventEntry` = 17;
DELETE FROM `game_event_npcflag` WHERE `eventEntry` = 17;
DELETE FROM `game_event_npc_vendor` WHERE `eventEntry` = 17;
DELETE FROM `game_event` WHERE `eventEntry` = 17;

/* Friendship Bread and Freshly-Squeezed Lemonade */
-- Making these NPCs vendors, they will appear after the Naxx phase started.
-- Before Naxx they will be replaced with copies that do not sell these items.

DELETE FROM `npc_vendor` WHERE `entry` IN (2482, 3044, 4165, 5173, 5698, 15006) AND `item` IN (23160, 23161);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(2482, 0, 23160, 0, 0, 0, 0),  -- Zarena Cromwind
(2482, 0, 23161, 0, 0, 0, 0),
(3044, 0, 23160, 0, 0, 0, 0),  -- Miles Welsh
(3044, 0, 23161, 0, 0, 0, 0),
(4165, 0, 23160, 0, 0, 0, 0),  -- Elissa Dumas
(4165, 0, 23161, 0, 0, 0, 0),
(5173, 0, 23160, 0, 0, 0, 0),  -- Alexander Calder
(5173, 0, 23161, 0, 0, 0, 0),
(5698, 0, 23160, 0, 0, 0, 0),  -- Joanna Whitehall
(5698, 0, 23161, 0, 0, 0, 0),
(15006, 0, 23160, 0, 0, 0, 0), -- Deze Snowbane
(15006, 0, 23161, 0, 0, 0, 0);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 23 AND `SourceGroup` IN (2482, 3044, 4165, 5173, 5698, 11038, 14450, 15006, 16543);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` IN (4533, 4566, 4821, 6470, 8730);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, 
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
--
(23, 2482,  23160, 0, 0, 8, 0, 9301, 0, 0, 0, 0, 0, '', 'Zarena Cromwind will not sell Friendship Bread until the player has completed \'Envelope from the Front\''),
(23, 2482,  23161, 0, 1, 8, 0, 9301, 0, 0, 0, 0, 0, '', 'Zarena Cromwind will not sell Freshly-Squeezed Lemonade until the player has completed \'Envelope from the Front\''),
--
(23, 3044,  23160, 0, 0, 8, 0, 9300, 0, 0, 0, 0, 0, '', 'Miles Welsh will not sell Friendship Bread until the player has completed \'Page from the Front\''),
(23, 3044,  23161, 0, 0, 8, 0, 9300, 0, 0, 0, 0, 0, '', 'Miles Welsh will not sell Freshly-Squeezed Lemonade until the player has completed \'Page from the Front\''),
(15, 4533,  3,     0, 0, 8, 0, 9300, 0, 0, 0, 0, 0, '', 'Miles Welsh will not show vendor gossip option until the player has completed \'Page from the Front\''),
--
(23, 4165,  23160, 0, 0, 8, 0, 9300, 0, 0, 0, 0, 0, '', 'Elissa Dumas will not sell Friendship Bread until the player has completed \'Page from the Front\''),
(23, 4165,  23161, 0, 0, 8, 0, 9300, 0, 0, 0, 0, 0, '', 'Elissa Dumas will not sell Freshly-Squeezed Lemonade until the player has completed \'Page from the Front\''),
(15, 4821,  1,     0, 0, 8, 0, 9300, 0, 0, 0, 0, 0, '', 'Elissa Dumas will not show vendor gossip option until the player has completed \'Page from the Front\''),
--
(23, 5173,  23160, 0, 0, 8, 0, 9299, 0, 0, 0, 0, 0, '', 'Alexander Calder will not sell Friendship Bread until the player has completed \'Note from the Front\''),
(23, 5173,  23161, 0, 0, 8, 0, 9299, 0, 0, 0, 0, 0, '', 'Alexander Calder will not sell Freshly-Squeezed Lemonade until the player has completed \'Note from the Front\''),
(15, 4566,  3,     0, 0, 8, 0, 9299, 0, 0, 0, 0, 0, '', 'Alexander Calder will not show vendor gossip option until the player has completed \'Note from the Front\''),
--
(23, 5698,  23160, 0, 0, 8, 0, 9295, 0, 0, 0, 0, 0, '', 'Joanna Whitehall will not sell Friendship Bread until the player has completed \'Letter from the Front\''),
(23, 5698,  23161, 0, 0, 8, 0, 9295, 0, 0, 0, 0, 0, '', 'Joanna Whitehall will not sell Freshly-Squeezed Lemonade until the player has completed \'Letter from the Front\''),
(15, 8730,  0,     0, 0, 8, 0, 9295, 0, 0, 0, 0, 0, '', 'Joanna Whitehall will not show vendor gossip option until the player has completed \'Letter from the Front\''),
--
(23, 11038, 23160, 0, 0, 8, 0, 9304, 0, 0, 0, 0, 0, '', 'Caretaker Alen will not sell Friendship Bread until the player has completed \'Document from the Front\''),
(23, 11038, 23161, 0, 1, 8, 0, 9304, 0, 0, 0, 0, 0, '', 'Caretaker Alen will not sell Freshly-Squeezed Lemonade until the player has completed \'Document from the Front\''),
--
(23, 14450, 23160, 0, 0, 8, 0, 9295, 0, 0, 0, 0, 0, '', 'Orphan Matron Nightingale will not sell Friendship Bread until the player has completed \'Letter from the Front\''),
(23, 14450, 23161, 0, 1, 8, 0, 9295, 0, 0, 0, 0, 0, '', 'Orphan Matron Nightingale will not sell Freshly-Squeezed Lemonade until the player has completed \'Letter from the Front\''),
--
(23, 15006, 23160, 0, 0, 8, 0, 9299, 0, 0, 0, 0, 0, '', 'Deze Snowbane will not sell Friendship Bread until the player has completed \'Note from the Front\''),
(23, 15006, 23161, 0, 0, 8, 0, 9299, 0, 0, 0, 0, 0, '', 'Deze Snowbane will not sell Freshly-Squeezed Lemonade until the player has completed \'Note from the Front\''),
(15, 6470,  1,     0, 0, 8, 0, 9299, 0, 0, 0, 0, 0, '', 'Deze Snowbane will not show vendor gossip option until the player has completed \'Note from the Front\''),
--
(23, 16543, 23160, 0, 0, 8, 0, 9302, 0, 0, 0, 0, 0, '', 'Garon Hutchins will not sell Friendship Bread until the player has completed \'Missive from the Front\''),
(23, 16543, 23161, 0, 1, 8, 0, 9302, 0, 0, 0, 0, 0, '', 'Garon Hutchins will not sell Freshly-Squeezed Lemonade until the player has completed \'Missive from the Front\'');

    
UPDATE `creature` SET `npcflag` = 691 WHERE `guid` = 1803;
UPDATE `creature` SET `npcflag` = 691 WHERE `guid` = 26771;
UPDATE `creature` SET `npcflag` = 129 WHERE `guid` = 38112;
UPDATE `creature` SET `npcflag` = 689 WHERE `guid` = 46320;
UPDATE `creature` SET `npcflag` = 1048705 WHERE `guid` = 208240;

DELETE FROM `gossip_menu_option` WHERE `MenuID` = 4533 AND `OptionID` = 3;
DELETE FROM `gossip_menu_option` WHERE `MenuID` = 4566 AND `OptionID` = 3; 
DELETE FROM `gossip_menu_option` WHERE `MenuID` = 4821 AND `OptionID` = 1;
DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (6470, 8730);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, 
`ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES 
(4533, 3, 1, 'Show me what you have for sale.', 29959, 3, 128, 0, 0, 0, 0, '', 0, 0),
(4566, 3, 1, 'Show me what you have for sale.', 29959, 3, 128, 0, 0, 0, 0, '', 0, 0),
(4821, 1, 1, 'Show me what you have for sale.', 29959, 3, 128, 0, 0, 0, 0, '', 0, 0),
(6470, 0, 9, 'I would like to go to the battleground.', 10355, 12, 1048576, 0, 0, 0, 0, '', 0, 0),
(6470, 1, 1, 'Show me what you have for sale.', 29959, 3, 128, 0, 0, 0, 0, '', 0, 0),
(8730, 0, 1, 'Show me what you have for sale.', 29959, 3, 128, 0, 0, 0, 0, '', 0, 0);


/*-- Smart AI --*/

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(14682, 14684, 14686, 14690, 14697, 16136, 16141, 16230, 16298, 16299, 16379, 16380, 16422, 16423, 16437, 16438);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN 
(14682, 14684, 14686, 14690, 16136, 16141, 14697, 16230, 16298, 16299, 16379, 16380, 16422, 16423, 16437, 16438);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, 
`event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(14682, 0, 0, 0, 0, 0, 100, 0, 3000, 10000, 8000, 20000, 0, 0, 11, 17745, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Sever - In Combat - Cast Diseased Spit'),
(14682, 0, 1, 0, 0, 0, 100, 0, 15000, 18000, 135000, 138000, 0, 0, 11, 8269, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Sever - In Combat - Cast Enrage'),
(14684, 0, 0, 0, 0, 0, 100, 0, 2000, 5000, 12000, 15000, 0, 0, 11, 12542, 1, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0,     'Balzaphon - In Combat - Cast Fear'),
(14684, 0, 1, 0, 0, 0, 100, 0, 0, 1000, 3000, 4000, 0, 0, 11, 16799, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Balzaphon - In Combat - Cast Frostbolt'),
(14684, 0, 2, 0, 0, 0, 100, 0, 5000, 10000, 13000, 21000, 0, 0, 11, 8398, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Balzaphon - In Combat - Cast Frostbolt Volley'),
(14686, 0, 0, 0, 0, 0, 100, 0, 1000, 12000, 18000, 24000, 0, 0, 11, 17105, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,   'Lady Falther\'ess - In Combat - Cast Banshee Curse'),
(14686, 0, 1, 0, 0, 0, 100, 0, 4000, 15000, 15000, 25000, 0, 0, 11, 16838, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Lady Falther\'ess - In Combat - Cast Banshee Shriek'),
(14686, 0, 2, 0, 0, 0, 100, 0, 4000, 15000, 15000, 25000, 0, 0, 11, 22743, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Lady Falther\'ess - In Combat - Cast Ribbon of Souls'),
(14690, 0, 0, 0, 106, 0, 100, 0, 4000, 9000, 8000, 15000, 0, 10, 11, 14907, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Revanchion - In Combat - Cast Frost Nova'),
(14690, 0, 1, 0, 0, 0, 100, 0, 5000, 7000, 15000, 17000, 0, 0, 11, 15245, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Revanchion - In Combat - Cast Shadow Bolt Volley'),
--
(16230, 0, 0, 0, 11, 0, 100, 512, 0, 0, 0, 0, 0, 0, 2, 190, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Cultist Engineer - On Respawn - Set Faction 190'),
(16230, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 36, 16230, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Cultist Engineer - On Respawn - Set guid to Cultist Engineer'),
(16230, 0, 2, 0, 1, 0, 100, 0, 1000, 2000, 0, 0, 0, 0, 11, 47850, 3, 6, 0, 0, 0, 9, 16136, 0, 15, 1, 0, 0, 0, 0,     'Cultist Engineer - Out of Combat - Cast Scourge Beam'), -- wrong spell, visual incorrect
(16230, 0, 3, 4, 62, 0, 100, 0, 66000, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Cultist Engineer - On Gossip Option 0 Selected - Say Line 1'),
(16230, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 57, 22484, 8, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,               'Cultist Engineer - On Gossip Option 0 Selected - Remove 8 Necrotic Runes'),
(16230, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 36, 16143, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Cultist Engineer - On Gossip Option 0 Selected - Set guid to Shadow of Doom'),
(16230, 0, 6, 7, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 142, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Cultist Engineer - On Gossip Option 0 Selected - Set Health 100%'),
(16230, 0, 7, 8, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Cultist Engineer - On Gossip Option 0 Selected - Set Faction 14'),
(16230, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                   'Cultist Engineer - On Gossip Option 0 Selected - Start Attacking'),
(16230, 0, 9, 0, 0, 0, 100, 0, 4000, 7000, 9000, 12000, 0, 0, 11, 16568, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Shadow of Doom - In Combat - Cast Mind Flay'),
(16230, 0, 10, 0, 0, 0, 100, 0, 2000, 5000, 12000, 15000, 0, 0, 11, 12542, 1, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 'Shadow of Doom - In Combat - Cast Fear'),
--
(14697, 0, 0, 0, 0, 0, 100, 0, 2000, 4000, 12000, 15000, 0, 0, 11, 16790, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Lumbering Horror - In Combat - Cast Knockdown'),
(14697, 0, 1, 0, 0, 0, 100, 0, 5000, 7000, 10000, 12000, 0, 0, 11, 55090, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Lumbering Horror - In Combat - Cast Scourge Strike'),
(14697, 0, 2, 0, 0, 0, 100, 0, 3200, 11900, 11500, 16100, 0, 0, 11, 5568, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Lumbering Horror - In Combat - Cast Trample'),
(16379, 0, 0, 0, 0, 0, 100, 0, 2000, 5000, 12000, 15000, 0, 0, 11, 16243, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Spirit of the Damned - In Combat - Cast Ribbon of Souls'),
(16379, 0, 1, 0, 0, 0, 100, 0, 5000, 7000, 10000, 12000, 0, 0, 11, 55090, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Spirit of the Damned - In Combat - Cast Scourge Strike'),
(16380, 0, 0, 0, 11, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 32900, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Bone Witch - On Respawn - Cast Bone Shards'),
(16380, 0, 1, 0, 0, 0, 100, 0, 5000, 7000, 10000, 12000, 0, 0, 11, 55090, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Bone Witch - In Combat - Cast Scourge Strike'),
--
(16422, 0, 0, 0, 0, 0, 100, 0, 5000, 7000, 10000, 12000, 0, 0, 11, 55090, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Skeletal Soldier - In Combat - Cast Scourge Strike'),
(16423, 0, 0, 0, 0, 0, 100, 0, 5000, 7000, 10000, 12000, 0, 0, 11, 55090, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Spectral Apparition - In Combat - Cast Scourge Strike'),
(16437, 0, 0, 0, 0, 0, 100, 0, 5000, 7000, 10000, 12000, 0, 0, 11, 55090, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Spectral Spirit - In Combat - Cast Scourge Strike'), 
(16438, 0, 0, 0, 0, 0, 100, 0, 5000, 7000, 10000, 12000, 0, 0, 11, 55090, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Skeletal Trooper - In Combat - Cast Scourge Strike'),
--
(16141, 0, 0, 0, 0, 0, 100, 0, 6000, 9000, 16000, 24000, 0, 0, 11, 7367, 33, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Ghoul Berserker - In Combat - Cast Infected Bite'),
(16141, 0, 1, 0, 0, 0, 100, 0, 5000, 7000, 10000, 12000, 0, 0, 11, 55090, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Ghoul Berserker - In Combat - Cast Scourge Strike'),
(16298, 0, 0, 0, 0, 0, 100, 0, 2000, 10000, 10000, 20000, 0, 0, 11, 13444, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectral Soldier - In Combat - Cast Sunder Armor'),
(16298, 0, 1, 0, 0, 0, 100, 0, 5000, 7000, 10000, 12000, 0, 0, 11, 55090, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Spectral Soldier - In Combat - Cast Scourge Strike'),
(16299, 0, 0, 0, 11, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 32900, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Skeletal Shocktrooper - On Respawn - Cast Bone Shards'),
(16299, 0, 1, 0, 0, 0, 100, 0, 5000, 7000, 10000, 12000, 0, 0, 11, 55090, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Skeletal Shocktrooper - In Combat - Cast Scourge Strike'),
--
(16136, 0, 0, 0, 12, 0, 100, 0, 0, 0, 0, 0, 0, 40, 11, 28032, 0, 39, 0, 0, 0, 9, 16141, 0, 40, 2, 0, 0, 0, 0, 'Necrotic Shard - Ghoul Berserker - Cast Zap Crystal'), -- doesn't work yet
(16136, 0, 1, 0, 12, 0, 100, 0, 0, 0, 0, 0, 0, 40, 11, 28032, 0, 39, 0, 0, 0, 9, 16298, 0, 40, 2, 0, 0, 0, 0, 'Necrotic Shard - Spectral Soldier - Cast Zap Crystal'),
(16136, 0, 2, 0, 12, 0, 100, 0, 0, 0, 0, 0, 0, 40, 11, 28032, 0, 39, 0, 0, 0, 9, 16299, 0, 40, 2, 0, 0, 0, 0, 'Necrotic Shard - Skeletal Shocktrooper - Cast Zap Crystal'); 


/*-- Object and NPC Updates --*/

UPDATE `creature_template` SET `name` = 'Mouth of Kel\'Thuzad' WHERE `entry` = 16995;

-- Necrotic Shards 256+4
UPDATE `creature_template` SET `unit_flags` = 260 WHERE `entry` = 16136;

-- Cultist Engineer
UPDATE `creature_template` SET `gossip_menu_id` = 66000, `npcflag` = 1, `unit_flags` = 514, `flags_extra` = 4194304 WHERE `entry` = 16230;

-- Lumbering Horror, fix movement
UPDATE `creature_template` SET `unit_flags` = 0, `HealthModifier` = 5.4 WHERE `entry` = 14697;

-- Spirit of the Damned, Bone Witch
UPDATE `creature_template` SET `HealthModifier` = 5 WHERE `entry` IN (16379, 16380);

-- Ghoul Berserker, Spectral Soldier, Skeletal Shocktrooper
UPDATE `creature_template` SET `HealthModifier` = 2.7 WHERE `entry` IN (16141, 16298, 16299);

DELETE FROM `creature_loot_template` WHERE `Entry` IN (16141, 16298, 16299);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
--
(16141, 12841, 0, 35, 0, 1, 0, 1, 1,    'Ghoul Berserker - Invader\'s Scourgestone'),
(16141, 22484, 0, 33.64, 0, 1, 0, 1, 1, 'Ghoul Berserker - Necrotic Rune'),
(16141, 22970, 0, 0.6, 0, 1, 0, 1, 1,   'Ghoul Berserker - A Bloodstained Envelope'),
(16141, 22972, 0, 0.6, 0, 1, 0, 1, 1,   'Ghoul Berserker - A Careworn Note'),
(16141, 22973, 0, 0.7, 0, 1, 0, 1, 1,   'Ghoul Berserker - A Crumpled Missive'),
(16141, 22974, 0, 0.7, 0, 1, 0, 1, 1,   'Ghoul Berserker - A Ragged Page'),
(16141, 22975, 0, 0.6, 0, 1, 0, 1, 1,   'Ghoul Berserker - A Smudged Document'),
(16141, 22977, 0, 0.7, 0, 1, 0, 1, 1,   'Ghoul Berserker - A Torn Letter'),
--
(16298, 12841, 0, 35, 0, 1, 0, 1, 1,    'Spectral Soldier - Invader\'s Scourgestone'),
(16298, 22484, 0, 34.26, 0, 1, 0, 1, 1, 'Spectral Soldier - Necrotic Rune'),
(16298, 22970, 0, 0.7, 0, 1, 0, 1, 1,   'Spectral Soldier - A Bloodstained Envelope'),
(16298, 22972, 0, 0.7, 0, 1, 0, 1, 1,   'Spectral Soldier - A Careworn Note'),
(16298, 22973, 0, 0.6, 0, 1, 0, 1, 1,   'Spectral Soldier - A Crumpled Missive'),
(16298, 22974, 0, 0.8, 0, 1, 0, 1, 1,   'Spectral Soldier - A Ragged Page'),
(16298, 22975, 0, 0.7, 0, 1, 0, 1, 1,   'Spectral Soldier - A Smudged Document'),
(16298, 22977, 0, 0.6, 0, 1, 0, 1, 1,   'Spectral Soldier - A Torn Letter'),
--
(16299, 12841, 0, 35, 0, 1, 0, 1, 1,    'Skeletal Shocktrooper - Invader\'s Scourgestone'),
(16299, 22484, 0, 33.54, 0, 1, 0, 1, 1, 'Skeletal Shocktrooper - Necrotic Rune'),
(16299, 22970, 0, 0.7, 0, 1, 0, 1, 1,   'Skeletal Shocktrooper - A Bloodstained Envelope'),
(16299, 22972, 0, 0.7, 0, 1, 0, 1, 1,   'Skeletal Shocktrooper - A Careworn Note'),
(16299, 22973, 0, 0.6, 0, 1, 0, 1, 1,   'Skeletal Shocktrooper - A Crumpled Missive'),
(16299, 22974, 0, 0.7, 0, 1, 0, 1, 1,   'Skeletal Shocktrooper - A Ragged Page'),
(16299, 22975, 0, 0.7, 0, 1, 0, 1, 1,   'Skeletal Shocktrooper - A Smudged Document'),
(16299, 22977, 0, 0.7, 0, 1, 0, 1, 1,   'Skeletal Shocktrooper - A Torn Letter');

    
-- Necropolis Not selectable
UPDATE `gameobject_template_addon` SET `flags` = 16 WHERE `entry` IN (181154, 181215, 181223, 181373, 181374);

-- Shadow of Doom, fix Necrotic runes drop
UPDATE `creature_loot_template` SET `MinCount` = 30, `MaxCount` = 30 WHERE `Item` = 22484 AND `entry` = 16143;

DELETE FROM `creature_onkill_reputation` WHERE `creature_id` IN (16141, 16298, 16299, 14697, 16379, 16380, 16143);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, 
`MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES 
(16141, 529, 0, 4, 0, 5, 0, 0, 0, 0),
(16298, 529, 0, 4, 0, 5, 0, 0, 0, 0),
(16299, 529, 0, 4, 0, 5, 0, 0, 0, 0),
(14697, 529, 0, 5, 0, 10, 0, 0, 0, 0),
(16379, 529, 0, 5, 0, 10, 0, 0, 0, 0),
(16380, 529, 0, 5, 0, 10, 0, 0, 0, 0),
(16143, 529, 0, 5, 0, 50, 0, 0, 0, 0);


/*-- Quests --*/

-- Lieutenants, Investigate the Scourge
UPDATE `quest_template` SET `AllowableRaces` = 1101 WHERE `ID` IN (9260, 9261, 9262); -- Stormwind, Ironforge, Darnassus, Exodar(12817)
UPDATE `quest_template` SET `AllowableRaces` = 690 WHERE `ID` IN (9263, 9264, 9265);  -- Orgrimmar, Thunder Bluff, Undercity, Silvermoon(12816)
UPDATE `quest_template` SET `Flags` = 12, `RequiredNpcOrGo1` = 0 WHERE `ID` IN (9260, 9261, 9262, 9263, 9264, 9265);
UPDATE `quest_template_addon` SET `SpecialFlags` = 2 WHERE `ID` IN (9260, 9261, 9262, 9263, 9264, 9265);

UPDATE `creature_template` SET `npcflag` = 2 WHERE `entry` IN (16478, 16484, 16490, 16493, 16494, 16495);
UPDATE `creature_template` SET `npcflag` = 0 WHERE `entry` IN (29441, 29442); -- there are no scourge outside Exodar and Silvermoon.

DELETE FROM `creature_queststarter` WHERE `quest` IN (9260, 9261, 9262, 9263, 9264, 9265, 12816, 12817);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(16478, 9260),  -- Orrin
(16484, 9261),  -- Nevell
(16490, 9264),  -- Lisande
(16493, 9263),  -- Dagel
(16494, 9265),  -- Rukag
(16495, 9262);  -- Beitha
-- (29441, 12816), -- Julek
-- (29442, 12817); -- Kregor

DELETE FROM `creature_questender` WHERE `quest` IN (9260, 9261, 9262, 9263, 9264, 9265, 12816, 12817);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(16478, 9260),
(16484, 9261),
(16490, 9264),
(16493, 9263),
(16494, 9265),
(16495, 9262);
-- (29441, 12816),
-- (29442, 12817); 

SET @AGUID    := 6000;

DELETE FROM `areatrigger` WHERE `entry` IN (@AGUID+1, @AGUID+2, @AGUID+3, @AGUID+4, @AGUID+5, @AGUID+6, @AGUID+7, @AGUID+8, @AGUID+9);
INSERT INTO `areatrigger` (`entry`, `map`, `x`, `y`, `z`, `radius`) VALUES
(@AGUID+1, 0, -9118.92, 330.1, 93.198, 10),     -- Stormwind
(@AGUID+2, 0, -9061.46, 349.666, 93.1098, 10),  -- Stormwind
(@AGUID+3, 0, -5163.2, -645.852, 396.992, 10),  -- Ironforge
(@AGUID+4, 0, -5175.25, -588.093, 397.984, 10), -- Ironforge
(@AGUID+5, 1, 9948.02, 1932.39, 1328.69, 10),   -- Darnassus
(@AGUID+6, 1, 1217.81, -4339.42, 20.8739, 10),  -- Orgrimmar
(@AGUID+7, 1, 1169.62, -4320.03, 20.8739, 10),  -- Orgrimmar
(@AGUID+8, 1, -1535.21, 68.198, 1.9512, 10),    -- Thunder Bluff
(@AGUID+9, 0, 1980.01, 305.231, 41.1893, 10);   -- Undercity

DELETE FROM `areatrigger_involvedrelation` WHERE `id` IN (@AGUID+1, @AGUID+2, @AGUID+3, @AGUID+4, @AGUID+5, @AGUID+6, @AGUID+7, @AGUID+8, @AGUID+9);
INSERT INTO `areatrigger_involvedrelation` (`id`, `quest`) VALUES
(@AGUID+1, 9260), -- Stormwind
(@AGUID+2, 9260), -- Stormwind
(@AGUID+3, 9261), -- Ironforge
(@AGUID+4, 9261), -- Ironforge
(@AGUID+5, 9262), -- Darnassus
(@AGUID+6, 9263), -- Orgrimmar
(@AGUID+7, 9263), -- Orgrimmar
(@AGUID+8, 9264), -- Thunder Bluff
(@AGUID+9, 9265); -- Undercity

    
-- Necrotic Crystal item quests
DELETE FROM `creature_questender` WHERE `quest` IN (9292, 9310);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(16478, 9292),
(16494, 9310);

-- Argent Scout and Recruiter, Light's Hope Chapel
UPDATE `creature_template` SET `npcflag` = 2 WHERE `entry` IN (16241, 16255);

DELETE FROM `creature_queststarter` WHERE `quest` = 9154;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(16241, 9154),
(16255, 9154);

DELETE FROM `creature_questender` WHERE `quest` = 9154;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(16281, 9154);

-- Argent Quartermaster and Outfitter
UPDATE `creature_template` SET `npcflag` = 2 WHERE `entry` IN (16786, 16787);
DELETE FROM `npc_vendor` WHERE `entry` IN (16786, 16787); -- they aren't vendors in vanilla

DELETE FROM `creature_queststarter` WHERE `quest` IN
(9094, 9317, 9318, 9321, 9337, 9341,  -- Alliance
 9333, 9334, 9335, 9336, 9320, 9343); -- Horde
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(16786, 9094), (16786, 9317), (16786, 9318), (16786, 9321), (16786, 9337), (16786, 9341),
(16787, 9333), (16787, 9334), (16787, 9335), (16787, 9336), (16787, 9320), (16787, 9343);

DELETE FROM `creature_questender` WHERE `quest` IN 
(9094, 9317, 9318, 9321, 9337, 9341,  -- Alliance
 9320, 9333, 9334, 9335, 9336, 9343); -- Horde
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(16786, 9094), (16786, 9317), (16786, 9318), (16786, 9321), (16786, 9337), (16786, 9341),
(16787, 9333), (16787, 9334), (16787, 9335), (16787, 9336), (16787, 9320), (16787, 9343);

UPDATE `quest_template` SET `QuestType` = 2, `QuestSortID` = -368, `AllowableRaces` = 1101 WHERE `ID` IN (9094, 9317, 9318, 9321, 9337, 9341);
UPDATE `quest_template` SET `QuestType` = 2, `QuestSortID` = -368, `AllowableRaces` = 690  WHERE `ID` IN (9333, 9334, 9335, 9336, 9320, 9343);

DELETE FROM `quest_request_items` WHERE `ID` IN (9295, 9299, 9300, 9301, 9302, 9304);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES
(9295, 1, 0, 'Yes? What do you have there?', 12340),
(9299, 1, 0, 'Yes? What do you have there?', 12340),
(9300, 1, 0, 'Yes? What do you have there?', 12340),
(9301, 1, 0, 'Yes? What do you have there?', 12340),
(9302, 1, 0, 'Yes? What do you have there?', 12340),
(9304, 1, 0, 'Yes? What do you have there?', 12340);

-- 16281, Keeper of the Rolls <The Argent Dawn>
DELETE FROM `quest_mail_sender` WHERE `QuestId` IN (9295, 9299, 9300, 9301, 9302, 9304);
INSERT INTO `quest_mail_sender` (`QuestId`, `RewardMailSenderEntry`) VALUES 
(9295, 16281), -- Joanna Whitehall / Orphan Matron Nightingale
(9299, 16281), -- Alexander Calder / Deze Snowbane
(9300, 16281), -- Miles Welsh / Elissa Dumas
(9301, 16281), -- Zarena Cromwind
(9302, 16281), -- Garon Hutchins
(9304, 16281); -- Caretaker Alen

DELETE FROM `quest_template_addon` WHERE `ID` IN (9295, 9299, 9300, 9301, 9302, 9304);
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, 
`RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
(9295, 0, 0, 0, 0, 0, 0, 172, 604800, 0, 0, 0, 0, 0, 0, 1, 0), -- 7 days delay
(9299, 0, 0, 0, 0, 0, 0, 173, 604800, 0, 0, 0, 0, 0, 0, 1, 0),
(9300, 0, 0, 0, 0, 0, 0, 174, 604800, 0, 0, 0, 0, 0, 0, 1, 0),
(9301, 0, 0, 0, 0, 0, 0, 175, 604800, 0, 0, 0, 0, 0, 0, 1, 0),
(9302, 0, 0, 0, 0, 0, 0, 176, 604800, 0, 0, 0, 0, 0, 0, 1, 0),
(9304, 0, 0, 0, 0, 0, 0, 177, 604800, 0, 0, 0, 0, 0, 0, 1, 0);

DELETE FROM `mail_loot_template` WHERE `Entry` IN (172, 173, 174, 175, 176, 177);
INSERT INTO `mail_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
(172, 23010, 0, 100, 0, 1, 0, 1, 1, 'Research Report'), -- Joanna Whitehall / Orphan Matron Nightingale
(173, 23008, 0, 100, 0, 1, 0, 1, 1, 'Research Report'), -- Alexander Calder / Deze Snowbane
(174, 23011, 0, 100, 0, 1, 0, 1, 1, 'Research Report'), -- Miles Welsh / Elissa Dumas
(175, 23013, 0, 100, 0, 1, 0, 1, 1, 'Research Report'), -- Zarena Cromwind
(176, 23012, 0, 100, 0, 1, 0, 1, 1, 'Research Report'), -- Garon Hutchins
(177, 23016, 0, 100, 0, 1, 0, 1, 1, 'Research Report'); -- Caretaker Alen




/**-- Text Updates --**/

UPDATE `quest_request_items` SET `CompletionText` = 'Have you investigated the invasion yet? There\'s no time for dawdling!' WHERE `ID` IN 
(9260, 9261, 9262, 9263, 9264, 9265);

UPDATE `quest_request_items` SET `CompletionText` = 'You\'ve come to join our order, have you not?' WHERE `ID` = 9154;

-- Alliance Quartermaster and Horde Outfitter Quests
UPDATE `quest_template` SET `LogDescription` = 'Collect 30 Necrotic Runes.', `QuestDescription` = 'If you bring me thirty necrotic runes, I will give you your choice of hand protection in return. These should prove valuable in our fight against the undead Scourge.' WHERE `ID` IN (9094, 9333);
UPDATE `quest_template` SET `LogDescription` = 'Collect 8 Necrotic Runes.',  `QuestDescription` = 'If you bring me eight necrotic runes from the Scourge invaders, I can give you a consecrated sharpening stone. It should be of great help in your battle against the minions of the Lich King.' WHERE `ID` IN (9317, 9335);
UPDATE `quest_template` SET `LogDescription` = 'Collect 8 Necrotic Runes.',  `QuestDescription` = 'In exchange for the necrotic runes of the Scourge invaders, the Argent Dawn will give you one vial of blessed wizard oil.' WHERE `ID` IN (9318, 9334);
UPDATE `quest_template` SET `LogDescription` = 'Collect 15 Necrotic Runes.', `QuestDescription` = 'In addition to our other supplies, we also have a number of major healing potions you may find useful. I will give you one in exchange for fifteen necrotic runes.' WHERE `ID` IN (9321, 9336);
UPDATE `quest_template` SET `LogDescription` = 'Collect 15 Necrotic Runes.', `QuestDescription` = 'In addition to our other supplies, we also have a number of major mana potions you may find useful. I will give you one in exchange for fifteen necrotic runes.' WHERE `ID` IN (9320, 9337);
UPDATE `quest_template` SET `LogDescription` = 'Collect 10 Necrotic Runes.', `QuestDescription` = 'You have aided our cause greatly, $N. If you wish, I can make available the tabard of the Argent Dawn. We are proud to have you among our allies.' WHERE `ID` IN (9341, 9343);

DELETE FROM `quest_offer_reward` WHERE `ID` IN
(9094, 9317, 9318, 9321, 9337, 9341,  -- Alliance
 9320, 9333, 9334, 9335, 9336, 9343); -- Horde
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES 
(9094, 0, 0, 0, 0, 0, 0, 0, 0, 'You\'ve done well, $N. Take your pick of hand protection in thanks for your efforts.', NULL),
(9317, 0, 0, 0, 0, 0, 0, 0, 0, 'Thank you, $N. Here are your consecrated sharpening stones. Use them prudently.', NULL),
(9318, 0, 0, 0, 0, 0, 0, 0, 0, 'I hope that you will find these items useful in future battles.', NULL),
(9320, 0, 0, 0, 0, 0, 0, 0, 0, 'Here you are, $N. Be careful out there. Our numbers are not so large we can afford many battlefield casualties.', NULL),
(9321, 0, 0, 0, 0, 0, 0, 0, 0, 'Here you are, $N. Be careful out there. Our numbers are not so large we can afford many battlefield casualties.', NULL),
(9333, 0, 0, 0, 0, 0, 0, 0, 0, 'You\'ve done well, $N. Take your pick of hand protection in thanks for your efforts.', NULL),
(9334, 0, 0, 0, 0, 0, 0, 0, 0, 'I hope that you will find these items useful in future battles.', NULL),
(9335, 0, 0, 0, 0, 0, 0, 0, 0, 'Thank you, $N. Here are your consecrated sharpening stones. Use them prudently.', NULL),
(9336, 0, 0, 0, 0, 0, 0, 0, 0, 'Here you are, $N. Be careful out there. Our numbers are not so large we can afford many battlefield casualties.', NULL),
(9337, 0, 0, 0, 0, 0, 0, 0, 0, 'Here you are, $N. Be careful out there. Our numbers are not so large we can afford many battlefield casualties.', NULL),
(9341, 0, 0, 0, 0, 0, 0, 0, 0, 'Take this tabard and wear it proudly. Perhaps your deeds might inspire others to take up arms in support of our fight against the Scourge.', NULL),
(9343, 0, 0, 0, 0, 0, 0, 0, 0, 'Take this tabard and wear it proudly. Perhaps your deeds might inspire others to take up arms in support of our fight against the Scourge.', NULL);


DELETE FROM `npc_text` WHERE `ID` = 66000;
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`) VALUES 
(66000, 'The cultist is in a deep trance...', 'The cultist is in a deep trance...');

DELETE FROM `gossip_menu` WHERE `MenuID` = 66000;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES (66000, 66000);

DELETE FROM `gossip_menu_option` WHERE `MenuID` = 66000;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, 
`ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES 
(66000, 0, 0, 'Use 8 necrotic runes and disrupt his ritual.', 0, 1, 1, 0, 0, 0, 0, NULL, 0, 0); 

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 66000;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, 
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 66000, 0, 0, 0, 2, 0, 22484, 8, 0, 0, 0, 0, '', 'Cultist Engineer - Show gossip only if the player has 8 Necrotic Runes');

DELETE FROM `creature_text` WHERE `CreatureID` = 16230 AND `GroupID` = 1;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(16230, 1, 0, 'These heroics mean nothing, $c.  Your future is sealed and your soul is doomed to servitude!', 12, 0, 100, 0, 0, 0, 12421, 0, 'Cultist Engineer');
