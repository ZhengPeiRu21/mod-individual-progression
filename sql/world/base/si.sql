SET @IPPPHASE := 65536;

/* Friendship Bread and Freshly-Squeezed Lemonade */
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


/*-- Objects and NPCs --*/

SET @ARGENT_RECRUITER      := 616241;
SET @ARGENT_SCOUT          := 616255;
SET @ARGENT_EMISSARY       := 616285;
SET @ARGENT_MESSENGER      := 616359;
SET @ARGENT_QUARTERMASTER  := 616786;
SET @ARGENT_OUTFITTER      := 616787;
--
SET @KEEPER_OF_THE_ROLLS   := 616281;
SET @COMMANDER_THOMAS      := 616361;
SET @LIEUTENANT_ORRIN      := 616478;
SET @LIEUTENANT_NEVELL     := 616484;
SET @LIEUTENANT_LISANDE    := 616490;
SET @LIEUTENANT_DAGEL      := 616493;
SET @LIEUTENANT_RUKAG      := 616494;
SET @LIEUTENANT_BEITHA     := 616495;
--
SET @NECROTIC_SHARD        := 616136;
SET @SHADOW_OF_DOOM        := 616143;
SET @CULTIST_ENGINEER      := 616230;
SET @GHOUL_BERSERKER       := 616141;
SET @SPECTRAL_SOLDIER      := 616298;
SET @SKELETAL_SHOCKTROOPER := 616299;
-- rares
SET @LUMBERING_HORROR      := 614697;
SET @SPIRIT_OF_THE_DAMNED  := 616379;
SET @BONE_WITCH            := 616380;
-- dungeon
SET @SEVER                 := 614682;
SET @BALZAPHON             := 614684;
SET @LADY_FALTHERESS       := 614686;
SET @REVANCHION            := 614690;
SET @SCORN                 := 614693;
SET @LORD_BLACKWOOD        := 614695;

-- Azerothcore uses these creatures for the WotLK version of the Scourge Invasion, 
-- so we have to create copies to avoid phasing the wotlk versions
DELETE FROM `creature_template` WHERE `entry` IN 
(@ARGENT_RECRUITER, @ARGENT_SCOUT, @ARGENT_EMISSARY, @ARGENT_MESSENGER, @ARGENT_QUARTERMASTER, @ARGENT_OUTFITTER, @KEEPER_OF_THE_ROLLS,
 @COMMANDER_THOMAS, @LIEUTENANT_ORRIN, @LIEUTENANT_NEVELL, @LIEUTENANT_LISANDE, @LIEUTENANT_DAGEL, @LIEUTENANT_RUKAG, @LIEUTENANT_BEITHA,
 @NECROTIC_SHARD, @SHADOW_OF_DOOM, @CULTIST_ENGINEER, @GHOUL_BERSERKER, @SPECTRAL_SOLDIER, @SKELETAL_SHOCKTROOPER,
 @LUMBERING_HORROR, @SPIRIT_OF_THE_DAMNED, @BONE_WITCH, @SEVER, @BALZAPHON, @LADY_FALTHERESS, @REVANCHION, @SCORN, @LORD_BLACKWOOD);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, 
`minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, 
`BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, 
`type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, 
`ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
--
(@ARGENT_RECRUITER, 0, 0, 0, 0, 0, 'Argent Recruiter', 'The Argent Dawn', NULL, 0, 55, 55, 0, 814, 2, 1, 1.14286, 1, 1, 18, 1, 0, 0, 3, 2000, 1900, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 2, 1, 1, 1, 0, 0, 1, 16, 0, 2, '', 12340),
(@ARGENT_SCOUT, 0, 0, 0, 0, 0, 'Argent Scout', 'The Argent Dawn', NULL, 0, 55, 55, 0, 814, 2, 1, 1.14286, 1, 1, 18, 1, 0, 0, 3, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 2, 1, 1, 1, 0, 0, 1, 1, 0, 2, '', 12340),
(@ARGENT_EMISSARY, 0, 0, 0, 0, 0, 'Argent Emissary', 'The Argent Dawn', NULL, 7164, 55, 55, 0, 814, 3, 1, 1.14286, 1, 1, 18, 1, 0, 0, 3, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 2, 1, 1, 1, 0, 0, 1, 16, 0, 2, '', 12340),
(@ARGENT_MESSENGER, 0, 0, 0, 0, 0, 'Argent Messenger', 'The Argent Dawn', NULL, 7164, 55, 55, 0, 814, 1, 1, 1.14286, 1, 1, 18, 1, 0, 0, 2.95, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 2, 1, 1, 1, 0, 0, 1, 1, 0, 2, '', 12340),
(@ARGENT_QUARTERMASTER, 0, 0, 0, 0, 0, 'Argent Quartermaster', 'The Argent Dawn', NULL, 7165, 55, 55, 0, 794, 3, 1, 1.14286, 1, 1, 18, 1, 0, 0, 3.1, 2000, 2000, 1, 1, 1, 33280, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 2, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 12340),
(@ARGENT_OUTFITTER, 0, 0, 0, 0, 0, 'Argent Outfitter', 'The Argent Dawn', NULL, 7165, 55, 55, 0, 814, 131, 1, 1.14286, 1, 1, 18, 1, 0, 0, 3, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 2, 1, 1, 1, 0, 0, 1, 1, 0, 2, '', 12340),
(@KEEPER_OF_THE_ROLLS, 0, 0, 0, 0, 0, 'Keeper of the Rolls', 'The Argent Dawn', NULL, 0, 55, 55, 0, 814, 2, 1, 1.14286, 1, 1, 18, 1, 0, 0, 0.05, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 2, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 12340),
(@COMMANDER_THOMAS, 0, 0, 0, 0, 0, 'Commander Thomas Helleran', 'The Argent Dawn', NULL, 0, 55, 55, 0, 814, 2, 1, 1.14286, 1, 1, 18, 1, 0, 0, 2.05, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 2, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 12340),
(@LIEUTENANT_ORRIN, 0, 0, 0, 0, 0, 'Lieutenant Orrin', 'The Argent Dawn', NULL, 0, 10, 10, 0, 794, 2, 1, 1.14286, 1, 1, 18, 1, 0, 0, 5.95, 2000, 1500, 1, 1, 2, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 1, 75, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 12340),
(@LIEUTENANT_NEVELL, 0, 0, 0, 0, 0, 'Lieutenant Nevell', 'The Argent Dawn', NULL, 0, 10, 10, 0, 794, 2, 1, 1.14286, 1, 1, 18, 1, 0, 0, 0.15, 2000, 1900, 1, 1, 2, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 12340),
(@LIEUTENANT_LISANDE, 0, 0, 0, 0, 0, 'Lieutenant Lisande', 'The Argent Dawn', NULL, 0, 10, 10, 0, 794, 2, 1, 1.14286, 1, 1, 18, 1, 0, 0, 0.15, 2000, 1900, 1, 1, 2, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 12340),
(@LIEUTENANT_DAGEL, 0, 0, 0, 0, 0, 'Lieutenant Dagel', 'The Argent Dawn', NULL, 0, 10, 10, 0, 794, 2, 1, 1.14286, 1, 1, 18, 1, 0, 0, 0.15, 2000, 1900, 1, 1, 2, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 12340),
(@LIEUTENANT_RUKAG, 0, 0, 0, 0, 0, 'Lieutenant Rukag', 'The Argent Dawn', NULL, 0, 10, 10, 0, 794, 2, 1, 1.14286, 1, 1, 18, 1, 0, 0, 5.95, 2000, 1500, 1, 1, 2, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 1, 75, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 12340),
(@LIEUTENANT_BEITHA, 0, 0, 0, 0, 0, 'Lieutenant Beitha', 'The Argent Dawn', NULL, 0, 10, 10, 0, 794, 2, 1, 1.14286, 1, 1, 18, 1, 0, 0, 0.15, 2000, 1900, 1, 1, 2, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 12340),
--
(@SEVER, 0, 0, 0, 0, 0, 'Sever', NULL, NULL, 0, 25, 25, 0, 21, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 5, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 6, 0, 14682, 0, 0, 0, 0, 64, 151, '', 0, 1, 9, 1, 1, 1, 0, 0, 1, 12585040, 0, 0, '', 12340),
(@BALZAPHON, 0, 0, 0, 0, 0, 'Balzaphon', NULL, NULL, 0, 60, 60, 0, 21, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 4, 2000, 2000, 1, 1, 2, 0, 2048, 0, 0, 0, 0, 0, 0, 6, 0, 14684, 0, 0, 0, 0, 2275, 2984, '', 0, 1, 6, 6, 1.1, 1, 0, 0, 1, 8415248, 0, 0, '', 12340),
(@LADY_FALTHERESS, 0, 0, 0, 0, 0, 'Lady Falther\'ess', NULL, NULL, 0, 40, 40, 0, 21, 0, 1, 1.14286, 1, 1, 20, 1, 1, 5, 5, 2000, 2000, 1, 1, 2, 0, 2048, 0, 0, 0, 0, 0, 0, 6, 0, 14686, 0, 0, 0, 0, 208, 378, '', 0, 1, 8, 4, 1, 1, 0, 0, 1, 12601360, 0, 0, '', 12340),
(@REVANCHION, 0, 0, 0, 0, 0, 'Revanchion', NULL, NULL, 0, 60, 60, 0, 21, 0, 1.11111, 1.14286, 1, 1, 20, 1, 1, 0, 8, 2000, 2000, 1, 1, 2, 0, 2048, 0, 0, 0, 0, 0, 0, 6, 0, 14690, 0, 0, 0, 0, 0, 0, '', 0, 1, 10, 2, 1.35, 1, 0, 0, 1, 46156048, 0, 0, '', 12340),
(@SCORN, 0, 0, 0, 0, 0, 'Scorn', NULL, NULL, 0, 34, 34, 0, 21, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 5.05, 2000, 2000, 1, 1, 2, 0, 2048, 0, 0, 0, 0, 0, 0, 6, 0, 14693, 0, 0, 0, 0, 238, 657, '', 0, 1, 8, 6, 0.9, 1, 0, 0, 1, 12585296, 0, 0, '', 12340),
(@LORD_BLACKWOOD, 0, 0, 0, 0, 0, 'Lord Blackwood', NULL, NULL, 0, 60, 60, 0, 21, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 6, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 6, 0, 14695, 0, 0, 0, 0, 1041, 1871, '', 0, 1, 10, 1, 1.1, 1, 0, 0, 1, 41962576, 0, 0, '', 12340),
--
(@NECROTIC_SHARD, 0, 0, 0, 0, 0, 'Necrotic Shard', NULL, NULL, 0, 70, 70, 0, 1630, 0, 1, 1, 1, 1, 0, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 260, 2048, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0.75, 1, 0, 1, 0, 0, 1, 0, 0, 2, '', 12340),
(@SHADOW_OF_DOOM, 0, 0, 0, 0, 0, 'Shadow of Doom', '', NULL, 0, 60, 60, 0, 2145, 0, 1, 1.14286, 1, 1, 4, 1, 1, 0, 9, 2000, 2000, 1, 1, 2, 0, 2048, 0, 0, 0, 0, 0, 0, 6, 0, 16143, 0, 0, 0, 0, 186, 615, '', 0, 1, 20, 1, 1, 1, 0, 0, 1, 8405524, 0, 0, '', 12340),
(@CULTIST_ENGINEER, 0, 0, 0, 0, 0, 'Cultist Engineer', '', NULL, 66000, 60, 60, 0, 190, 1, 1, 1.14286, 1, 1, 18, 1, 0, 0, 0.05, 2000, 2000, 1, 1, 1, 514, 2048, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1, 1, 1, 0.25, 0, 0, 1, 0, 0, 4194304, '', 12340),
(@GHOUL_BERSERKER, 0, 0, 0, 0, 0, 'Ghoul Berserker', NULL, NULL, 0, 59, 60, 0, 1630, 0, 0.777776, 1.14286, 1, 1, 4, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 6, 0, 16141, 0, 0, 0, 0, 144, 659, '', 0, 1, 2.7, 1, 1, 1, 0, 0, 1, 8388624, 0, 0, '', 12340),
(@SPECTRAL_SOLDIER, 0, 0, 0, 0, 0, 'Spectral Soldier', '', NULL, 0, 59, 60, 0, 1630, 0, 1.11111, 1.14286, 1, 1, 4, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 6, 0, 16298, 0, 0, 0, 0, 148, 660, '', 1, 1, 2.7, 1, 1.05, 1, 0, 0, 1, 8405008, 0, 0, '', 12340),
(@SKELETAL_SHOCKTROOPER, 0, 0, 0, 0, 0, 'Skeletal Shocktrooper', '', NULL, 0, 59, 60, 0, 1630, 0, 1, 1.19048, 1, 1, 4, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 6, 0, 16299, 0, 0, 0, 0, 144, 658, '', 1, 1, 2.7, 1, 1, 1, 0, 0, 1, 8602129, 0, 2048, '', 12340),
(@LUMBERING_HORROR, 0, 0, 0, 0, 0, 'Lumbering Horror', NULL, NULL, 0, 61, 61, 0, 1630, 0, 1, 1.14286, 1, 1, 4, 1, 4, 0, 1.5, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 6, 0, 14697, 0, 0, 0, 0, 271, 503, '', 0, 1, 5.4, 1, 1, 1, 0, 0, 1, 8388624, 0, 0, '', 12340),
(@SPIRIT_OF_THE_DAMNED, 0, 0, 0, 0, 0, 'Spirit of the Damned', '', NULL, 0, 61, 61, 0, 1630, 0, 1, 0.992063, 1, 1, 4, 1, 4, 0, 1.5, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 6, 0, 16379, 0, 0, 0, 0, 0, 0, '', 1, 1, 5, 1, 1, 1, 0, 0, 1, 8413718, 0, 0, '', 12340),
(@BONE_WITCH, 0, 0, 0, 0, 0, 'Bone Witch', '', NULL, 0, 61, 61, 0, 1630, 0, 1, 1.14286, 1, 1, 4, 1, 4, 0, 1.5, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 6, 0, 16380, 0, 0, 0, 0, 482, 558, '', 1, 1, 5, 1, 1, 1, 0, 0, 1, 8602129, 0, 0, '', 12340);


DELETE FROM `creature_template_addon` WHERE `entry` IN 
(@LORD_BLACKWOOD, @NECROTIC_SHARD, @CULTIST_ENGINEER, @LUMBERING_HORROR, @SPIRIT_OF_THE_DAMNED, @BONE_WITCH, @GHOUL_BERSERKER, @SPECTRAL_SOLDIER, @SKELETAL_SHOCKTROOPER);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES
(@LORD_BLACKWOOD, 146950, 0, 0, 0, 0, 0, ''),
(@NECROTIC_SHARD, 0, 0, 0, 0, 0, 3, ''),
(@LUMBERING_HORROR, 0, 0, 0, 0, 0, 0, ''),
(@GHOUL_BERSERKER, 0, 0, 0, 0, 0, 0, ''),
(@CULTIST_ENGINEER, 0, 0, 0, 0, 0, 0, ''),
(@SPECTRAL_SOLDIER, 0, 0, 0, 0, 0, 0, ''),
(@SKELETAL_SHOCKTROOPER, 0, 0, 0, 0, 0, 0, ''),
(@SPIRIT_OF_THE_DAMNED, 0, 0, 0, 0, 0, 0, ''),
(@BONE_WITCH, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `creature_template_locale` WHERE `entry` IN 
(@ARGENT_RECRUITER, @ARGENT_SCOUT, @ARGENT_EMISSARY, @ARGENT_MESSENGER, @ARGENT_QUARTERMASTER, @ARGENT_OUTFITTER, @KEEPER_OF_THE_ROLLS,
 @COMMANDER_THOMAS, @LIEUTENANT_ORRIN, @LIEUTENANT_NEVELL, @LIEUTENANT_LISANDE, @LIEUTENANT_DAGEL, @LIEUTENANT_RUKAG, @LIEUTENANT_BEITHA,
 @NECROTIC_SHARD, @SHADOW_OF_DOOM, @CULTIST_ENGINEER, @GHOUL_BERSERKER, @SPECTRAL_SOLDIER, @SKELETAL_SHOCKTROOPER,
 @LUMBERING_HORROR, @SPIRIT_OF_THE_DAMNED, @BONE_WITCH, @SEVER, @BALZAPHON, @LADY_FALTHERESS, @REVANCHION, @SCORN, @LORD_BLACKWOOD);
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES 
(@ARGENT_RECRUITER, 'deDE', 'Argentumrekrutierungsoffizier', 'Die Argentumdämmerung', 18019),
(@ARGENT_RECRUITER, 'esES', 'Reclutador Argenta', 'El Alba Argenta', 18019),
(@ARGENT_RECRUITER, 'esMX', 'Reclutador Argenta', 'El Alba Argenta', 18019),
(@ARGENT_RECRUITER, 'frFR', 'Recruteur de l\'Aube d\'argent', 'L\'Aube d\'argent', 18019),
(@ARGENT_RECRUITER, 'koKR', '은빛 여명회 징병관', '은빛 여명회', 18019),
(@ARGENT_RECRUITER, 'ruRU', 'Вербовщик из ордена Серебряного Рассвета', 'Серебряный Рассвет', 18019),
(@ARGENT_RECRUITER, 'zhCN', '银色新兵', '银色黎明', 18019),
(@ARGENT_RECRUITER, 'zhTW', '銀色黎明招募員', '銀色黎明', 18019),
(@ARGENT_SCOUT, 'deDE', 'Argentumspäher', 'Die Argentumdämmerung', 18019),
(@ARGENT_SCOUT, 'esES', 'Explorador Argenta', 'El Alba Argenta', 18019),
(@ARGENT_SCOUT, 'esMX', 'Explorador Argenta', 'El Alba Argenta', 18019),
(@ARGENT_SCOUT, 'frFR', 'Eclaireur de l\'Aube d\'argent', 'L\'Aube d\'argent', 18019),
(@ARGENT_SCOUT, 'koKR', '은빛 여명회 정찰병', '은빛 여명회', 18019),
(@ARGENT_SCOUT, 'ruRU', 'Разведчик из ордена Серебряного Рассвета', 'Серебряный Рассвет', 18019),
(@ARGENT_SCOUT, 'zhCN', '银色斥候', '银色黎明', 18019),
(@ARGENT_SCOUT, 'zhTW', '銀色黎明斥候', '銀色黎明', 18019),
(@KEEPER_OF_THE_ROLLS, 'deDE', 'Bewahrer der Schriften', 'Die Argentumdämmerung', 18019),
(@KEEPER_OF_THE_ROLLS, 'esES', 'Guardián de los Pergaminos', 'El Alba Argenta', 18019),
(@KEEPER_OF_THE_ROLLS, 'esMX', 'Guardián de los Pergaminos', 'El Alba Argenta', 18019),
(@KEEPER_OF_THE_ROLLS, 'frFR', 'Gardien des registres', 'L\'Aube d\'argent', 18019),
(@KEEPER_OF_THE_ROLLS, 'koKR', '기록 보관원', '은빛 여명회', 18019),
(@KEEPER_OF_THE_ROLLS, 'ruRU', 'Архивариус', 'Серебряный Рассвет', 18019),
(@KEEPER_OF_THE_ROLLS, 'zhCN', '名单登记员', '银色黎明', 18019),
(@KEEPER_OF_THE_ROLLS, 'zhTW', '名冊保管者', '銀色黎明', 18019),
(@ARGENT_EMISSARY, 'deDE', 'Argentumabgesandter', 'Die Argentumdämmerung', 18019),
(@ARGENT_EMISSARY, 'esES', 'Emisario Argenta', 'El Alba Argenta', 18019),
(@ARGENT_EMISSARY, 'esMX', 'Emisario Argenta', 'El Alba Argenta', 18019),
(@ARGENT_EMISSARY, 'frFR', 'Emissaire de l\'Aube d\'argent', 'L\'Aube d\'argent', 18019),
(@ARGENT_EMISSARY, 'koKR', '은빛 여명회 사절', '은빛 여명회', 18019),
(@ARGENT_EMISSARY, 'ruRU', 'Посланник из ордена Серебряного Рассвета', 'Серебряный Рассвет', 18019),
(@ARGENT_EMISSARY, 'zhCN', '银色特使', '银色黎明', 18019),
(@ARGENT_EMISSARY, 'zhTW', '銀色黎明特使', '銀色黎明', 18019),
(@ARGENT_MESSENGER, 'deDE', 'Argentumbote', 'Die Argentumdämmerung', 18019),
(@ARGENT_MESSENGER, 'esES', 'Mensajero Argenta', 'El Alba Argenta', 18019),
(@ARGENT_MESSENGER, 'esMX', 'Mensajero Argenta', 'El Alba Argenta', 18019),
(@ARGENT_MESSENGER, 'frFR', 'Messager de l\'Aube d\'argent', 'L\'Aube d\'argent', 18019),
(@ARGENT_MESSENGER, 'koKR', '은빛 여명회 전령', '은빛 여명회', 18019),
(@ARGENT_MESSENGER, 'ruRU', 'Вестник из ордена Серебряного Рассвета', 'Серебряный Рассвет', 18019),
(@ARGENT_MESSENGER, 'zhCN', '银色信使', '银色黎明', 18019),
(@ARGENT_MESSENGER, 'zhTW', '銀色黎明信差', '銀色黎明', 18019),
(@COMMANDER_THOMAS, 'deDE', 'Kommandant Thomas Helleran', 'Die Argentumdämmerung', 18019),
(@COMMANDER_THOMAS, 'esES', 'Comandante Thomas Helleran', 'El Alba Argenta', 18019),
(@COMMANDER_THOMAS, 'esMX', 'Comandante Thomas Helleran', 'El Alba Argenta', 18019),
(@COMMANDER_THOMAS, 'frFR', 'Commandant Thomas Helleran', 'L\'Aube d\'argent', 18019),
(@COMMANDER_THOMAS, 'koKR', '사령관 토마스 헬러랜', '은빛 여명회', 18019),
(@COMMANDER_THOMAS, 'ruRU', 'Командир Томас Элеран', 'Серебряный Рассвет', 18019),
(@COMMANDER_THOMAS, 'zhCN', '指挥官托马斯·海勒拉', '银色黎明', 18019),
(@COMMANDER_THOMAS, 'zhTW', '指揮官湯瑪斯·海勒瑞', '銀色黎明', 18019),
(@LIEUTENANT_ORRIN, 'deDE', 'Leutnant Orrin', 'Die Argentumdämmerung', 18019),
(@LIEUTENANT_ORRIN, 'esES', 'Teniente Orrin', 'El Alba Argenta', 18019),
(@LIEUTENANT_ORRIN, 'esMX', 'Teniente Orrin', 'El Alba Argenta', 18019),
(@LIEUTENANT_ORRIN, 'frFR', 'Lieutenant Orrin', 'L\'Aube d\'argent', 18019),
(@LIEUTENANT_ORRIN, 'koKR', '부관 오린', '은빛 여명회', 18019),
(@LIEUTENANT_ORRIN, 'ruRU', 'Лейтенант Оррин', 'Серебряный Рассвет', 18019),
(@LIEUTENANT_ORRIN, 'zhCN', '奥林中尉', '银色黎明', 18019),
(@LIEUTENANT_ORRIN, 'zhTW', '歐令中尉', '銀色黎明', 18019),
(@LIEUTENANT_NEVELL, 'deDE', 'Leutnant Nevell', 'Die Argentumdämmerung', 18019),
(@LIEUTENANT_NEVELL, 'esES', 'Tenienve Nevell', 'El Alba Argenta', 18019),
(@LIEUTENANT_NEVELL, 'esMX', 'Tenienve Nevell', 'El Alba Argenta', 18019),
(@LIEUTENANT_NEVELL, 'frFR', 'Lieutenant Nevell', 'L\'Aube d\'argent', 18019),
(@LIEUTENANT_NEVELL, 'koKR', '부관 니블', '은빛 여명회', 18019),
(@LIEUTENANT_NEVELL, 'ruRU', 'Лейтенант Невилл', 'Серебряный Рассвет', 18019),
(@LIEUTENANT_NEVELL, 'zhCN', '奈维尔中尉', '银色黎明', 18019),
(@LIEUTENANT_NEVELL, 'zhTW', '諾維中尉', '銀色黎明', 18019),
(@LIEUTENANT_LISANDE, 'deDE', 'Leutnant Lisande', 'Die Argentumdämmerung', 18019),
(@LIEUTENANT_LISANDE, 'esES', 'Teniente Lisande', 'El Alba Argenta', 18019),
(@LIEUTENANT_LISANDE, 'esMX', 'Teniente Lisande', 'El Alba Argenta', 18019),
(@LIEUTENANT_LISANDE, 'frFR', 'Lieutenant Lisande', 'L\'Aube d\'argent', 18019),
(@LIEUTENANT_LISANDE, 'koKR', '부관 리산데', '은빛 여명회', 18019),
(@LIEUTENANT_LISANDE, 'ruRU', 'Лейтенант Лисанд', 'Серебряный Рассвет', 18019),
(@LIEUTENANT_LISANDE, 'zhCN', '利山德中尉', '银色黎明', 18019),
(@LIEUTENANT_LISANDE, 'zhTW', '利山中尉', '銀色黎明', 18019),
(@LIEUTENANT_DAGEL, 'deDE', 'Leutnant Dagel', 'Die Argentumdämmerung', 18019),
(@LIEUTENANT_DAGEL, 'esES', 'Teniente Dagel', 'El Alba Argenta', 18019),
(@LIEUTENANT_DAGEL, 'esMX', 'Teniente Dagel', 'El Alba Argenta', 18019),
(@LIEUTENANT_DAGEL, 'frFR', 'Lieutenant Dagel', 'L\'Aube d\'argent', 18019),
(@LIEUTENANT_DAGEL, 'koKR', '부관 다겔', '은빛 여명회', 18019),
(@LIEUTENANT_DAGEL, 'ruRU', 'Лейтенант Дагел', 'Серебряный Рассвет', 18019),
(@LIEUTENANT_DAGEL, 'zhCN', '达格尔中尉', '银色黎明', 18019),
(@LIEUTENANT_DAGEL, 'zhTW', '戴吉中尉', '銀色黎明', 18019),
(@LIEUTENANT_RUKAG, 'deDE', 'Leutnant Rukag', 'Die Argentumdämmerung', 18019),
(@LIEUTENANT_RUKAG, 'esES', 'Teniente Rukag', 'El Alba Argenta', 18019),
(@LIEUTENANT_RUKAG, 'esMX', 'Teniente Rukag', 'El Alba Argenta', 18019),
(@LIEUTENANT_RUKAG, 'frFR', 'Lieutenant Rukag', 'L\'Aube d\'argent', 18019),
(@LIEUTENANT_RUKAG, 'koKR', '부관 루카그', '은빛 여명회', 18019),
(@LIEUTENANT_RUKAG, 'ruRU', 'Лейтенант Рукаг', 'Серебряный Рассвет', 18019),
(@LIEUTENANT_RUKAG, 'zhCN', '卢卡中尉', '银色黎明', 18019),
(@LIEUTENANT_RUKAG, 'zhTW', '盧卡中尉', '銀色黎明', 18019),
(@LIEUTENANT_BEITHA, 'deDE', 'Leutnant Beitha', 'Die Argentumdämmerung', 18019),
(@LIEUTENANT_BEITHA, 'esES', 'Teniente Beitha', 'El Alba Argenta', 18019),
(@LIEUTENANT_BEITHA, 'esMX', 'Teniente Beitha', 'El Alba Argenta', 18019),
(@LIEUTENANT_BEITHA, 'frFR', 'Lieutenant Beitha', 'L\'Aube d\'argent', 18019),
(@LIEUTENANT_BEITHA, 'koKR', '부관 바이사', '은빛 여명회', 18019),
(@LIEUTENANT_BEITHA, 'ruRU', 'Лейтенант Бейта', 'Серебряный Рассвет', 18019),
(@LIEUTENANT_BEITHA, 'zhCN', '贝萨中尉', '银色黎明', 18019),
(@LIEUTENANT_BEITHA, 'zhTW', '貝沙中尉', '銀色黎明', 18019),
(@SEVER, 'deDE', 'Häcksler', '', 18019),
(@SEVER, 'esES', 'Cercenador', '', 18019),
(@SEVER, 'esMX', 'Cercenador', '', 18019),
(@SEVER, 'frFR', 'Sectionneur', '', 18019),
(@SEVER, 'koKR', '살육의 괴물', '', 18019),
(@SEVER, 'ruRU', 'Калечер', '', 18019),
(@SEVER, 'zhCN', '塞沃尔', '', 18019),
(@SEVER, 'zhTW', '塞沃爾', '', 18019),
(@BALZAPHON, 'deDE', 'Balzaphon', '', 18019),
(@BALZAPHON, 'esES', 'Balzaphon', '', 18019),
(@BALZAPHON, 'esMX', 'Balzaphon', '', 18019),
(@BALZAPHON, 'frFR', 'Balzaphon', '', 18019),
(@BALZAPHON, 'koKR', '발자폰', '', 18019),
(@BALZAPHON, 'ruRU', 'Балзафон', '', 18019),
(@BALZAPHON, 'zhCN', '巴尔萨冯', '', 18019),
(@BALZAPHON, 'zhTW', '巴爾薩馮', '', 18019),
(@LADY_FALTHERESS, 'deDE', 'Lady Falther\'ess', '', 18019),
(@LADY_FALTHERESS, 'esES', 'Lady Falther\'ess', '', 18019),
(@LADY_FALTHERESS, 'esMX', 'Lady Falther\'ess', '', 18019),
(@LADY_FALTHERESS, 'frFR', 'Dame Falther\'ess', '', 18019),
(@LADY_FALTHERESS, 'koKR', '귀부인 팔데리스', '', 18019),
(@LADY_FALTHERESS, 'ruRU', 'Леди Фалтер\'есс', '', 18019),
(@LADY_FALTHERESS, 'zhCN', '法瑟蕾丝夫人', '', 18019),
(@LADY_FALTHERESS, 'zhTW', '法瑟蕾絲女士', '', 18019),
(@REVANCHION, 'deDE', 'Revanchion', '', 18019),
(@REVANCHION, 'esES', 'Revanchion', '', 18019),
(@REVANCHION, 'esMX', 'Revanchion', '', 18019),
(@REVANCHION, 'frFR', 'Revanchion', '', 18019),
(@REVANCHION, 'koKR', '레반치온', '', 18019),
(@REVANCHION, 'ruRU', 'Реваншион', '', 18019),
(@REVANCHION, 'zhCN', '雷瓦克安', '', 18019),
(@REVANCHION, 'zhTW', '雷瓦克安', '', 18019),
(@SCORN, 'deDE', 'Der Verächter', '', 18019),
(@SCORN, 'esES', 'Desdén', '', 18019),
(@SCORN, 'esMX', 'Desdén', '', 18019),
(@SCORN, 'frFR', 'Dédain', '', 18019),
(@SCORN, 'koKR', '냉소의 영혼', '', 18019),
(@SCORN, 'ruRU', 'Насмешник', '', 18019),
(@SCORN, 'zhCN', '瑟克恩', '', 18019),
(@SCORN, 'zhTW', '瑟克恩', '', 18019),
(@LORD_BLACKWOOD, 'deDE', 'Fürst Schwarzstahl', '', 18019),
(@LORD_BLACKWOOD, 'esES', 'Lord Bosque Negro', '', 18019),
(@LORD_BLACKWOOD, 'esMX', 'Lord Bosque Negro', '', 18019),
(@LORD_BLACKWOOD, 'frFR', 'Seigneur Noirbois', '', 18019),
(@LORD_BLACKWOOD, 'koKR', '군주 블랙우드', '', 18019),
(@LORD_BLACKWOOD, 'ruRU', 'Лорд Блэквуд', '', 18019),
(@LORD_BLACKWOOD, 'zhCN', '布莱克伍德公爵', '', 18019),
(@LORD_BLACKWOOD, 'zhTW', '黑木領主', '', 18019),
(@SHADOW_OF_DOOM, 'deDE', 'Schatten der Verdammnis', '', 18019),
(@SHADOW_OF_DOOM, 'esES', 'Sombra de fatalidad', '', 18019),
(@SHADOW_OF_DOOM, 'esMX', 'Sombra de fatalidad', '', 18019),
(@SHADOW_OF_DOOM, 'frFR', 'Ombre funeste', '', 18019),
(@SHADOW_OF_DOOM, 'koKR', '파멸의 망령', '', 18019),
(@SHADOW_OF_DOOM, 'ruRU', 'Тень Рока', '', 18019),
(@SHADOW_OF_DOOM, 'zhCN', '末日之影', '', 18019),
(@SHADOW_OF_DOOM, 'zhTW', '末日陰影', '', 18019),
(@CULTIST_ENGINEER, 'deDE', 'Kultisteningenieur', '', 18019),
(@CULTIST_ENGINEER, 'esES', 'Cultor ingeniero', '', 18019),
(@CULTIST_ENGINEER, 'esMX', 'Cultor ingeniero', '', 18019),
(@CULTIST_ENGINEER, 'frFR', 'Sectateur ingénieur', '', 18019),
(@CULTIST_ENGINEER, 'koKR', '신도 기술자', '', 18019),
(@CULTIST_ENGINEER, 'ruRU', 'Сектант-инженер', '', 18019),
(@CULTIST_ENGINEER, 'zhCN', '信徒技师', '', 18019),
(@CULTIST_ENGINEER, 'zhTW', '教徒工程師', '', 18019),
(@GHOUL_BERSERKER, 'deDE', 'Ghulberserker', '', 18019),
(@GHOUL_BERSERKER, 'esES', 'Rabioso necrófago', '', 18019),
(@GHOUL_BERSERKER, 'esMX', 'Rabioso necrófago', '', 18019),
(@GHOUL_BERSERKER, 'frFR', 'Goule berserker', '', 18019),
(@GHOUL_BERSERKER, 'koKR', '구울 광전사', '', 18019),
(@GHOUL_BERSERKER, 'ruRU', 'Вурдалак-берсерк', '', 18019),
(@GHOUL_BERSERKER, 'zhCN', '食尸鬼狂暴者', '', 18019),
(@GHOUL_BERSERKER, 'zhTW', '狂暴食屍鬼', '', 18019),
(@SPECTRAL_SOLDIER, 'deDE', 'Spektraler Soldat', '', 18019),
(@SPECTRAL_SOLDIER, 'esES', 'Soldado espectral', '', 18019),
(@SPECTRAL_SOLDIER, 'esMX', 'Soldado espectral', '', 18019),
(@SPECTRAL_SOLDIER, 'frFR', 'Soldat spectral', '', 18019),
(@SPECTRAL_SOLDIER, 'koKR', '기괴한 병사 유령', '', 18019),
(@SPECTRAL_SOLDIER, 'ruRU', 'Призрачный солдат', '', 18019),
(@SPECTRAL_SOLDIER, 'zhCN', '鬼灵士兵', '', 18019),
(@SPECTRAL_SOLDIER, 'zhTW', '鬼靈士兵', '', 18019),
(@SKELETAL_SHOCKTROOPER, 'deDE', 'Skelettstoßtruppsoldat', '', 18019),
(@SKELETAL_SHOCKTROOPER, 'esES', 'Soldado de choque esquelético', '', 18019),
(@SKELETAL_SHOCKTROOPER, 'esMX', 'Soldado de choque esquelético', '', 18019),
(@SKELETAL_SHOCKTROOPER, 'frFR', 'Troupier squelettique de choc', '', 18019),
(@SKELETAL_SHOCKTROOPER, 'koKR', '해골 기습돌격병', '', 18019),
(@SKELETAL_SHOCKTROOPER, 'ruRU', 'Скелет-штурмовик', '', 18019),
(@SKELETAL_SHOCKTROOPER, 'zhCN', '骷髅突击队员', '', 18019),
(@SKELETAL_SHOCKTROOPER, 'zhTW', '骷髏突擊兵', '', 18019),
(@LUMBERING_HORROR, 'deDE', 'Schwerfälliger Schrecken', '', 18019),
(@LUMBERING_HORROR, 'esES', 'Horror torpe', '', 18019),
(@LUMBERING_HORROR, 'esMX', 'Horror torpe', '', 18019),
(@LUMBERING_HORROR, 'frFR', 'Horreur chancelante', '', 18019),
(@LUMBERING_HORROR, 'koKR', '성큼걸이 누더기골렘', '', 18019),
(@LUMBERING_HORROR, 'ruRU', 'Неуклюжий ужас', '', 18019),
(@LUMBERING_HORROR, 'zhCN', '笨拙的憎恶', '', 18019),
(@LUMBERING_HORROR, 'zhTW', '笨拙的憎惡', '', 18019),
(@SPIRIT_OF_THE_DAMNED, 'deDE', 'Geist der Verdammten', '', 18019),
(@SPIRIT_OF_THE_DAMNED, 'esES', 'Espíritu de los Malditos', '', 18019),
(@SPIRIT_OF_THE_DAMNED, 'esMX', 'Espíritu de los Malditos', '', 18019),
(@SPIRIT_OF_THE_DAMNED, 'frFR', 'Esprit de damné', '', 18019),
(@SPIRIT_OF_THE_DAMNED, 'koKR', '저주받은 자의 영혼', '', 18019),
(@SPIRIT_OF_THE_DAMNED, 'ruRU', 'Дух проклятого', '', 18019),
(@SPIRIT_OF_THE_DAMNED, 'zhCN', '诅咒者之魂', '', 18019),
(@SPIRIT_OF_THE_DAMNED, 'zhTW', '詛咒神教之靈', '', 18019),
(@BONE_WITCH, 'deDE', 'Knochenhexe', '', 18019),
(@BONE_WITCH, 'esES', 'Bruja Osaria', '', 18019),
(@BONE_WITCH, 'esMX', 'Bruja Osaria', '', 18019),
(@BONE_WITCH, 'frFR', 'Sorcière des ossements', '', 18019),
(@BONE_WITCH, 'koKR', '해골 마녀', '', 18019),
(@BONE_WITCH, 'ruRU', 'Костяной ведьмак', '', 18019),
(@BONE_WITCH, 'zhCN', '骨巫', '', 18019),
(@BONE_WITCH, 'zhTW', '骸骨女巫', '', 18019),
(@ARGENT_QUARTERMASTER, 'deDE', 'Argentumrüstmeister', 'Die Argentumdämmerung', 18019),
(@ARGENT_QUARTERMASTER, 'esES', 'Intendente Argenta', 'El Alba Argenta', 18019),
(@ARGENT_QUARTERMASTER, 'esMX', 'Intendente Argenta', 'El Alba Argenta', 18019),
(@ARGENT_QUARTERMASTER, 'frFR', 'Intendant de l\'Aube d\'argent', 'L\'Aube d\'argent', 18019),
(@ARGENT_QUARTERMASTER, 'koKR', '은빛 여명회 병참장교', '은빛 여명회', 18019),
(@ARGENT_QUARTERMASTER, 'ruRU', 'Интендант из ордена Серебряного Рассвета', 'Серебряный Рассвет', 18019),
(@ARGENT_QUARTERMASTER, 'zhCN', '银色军需官', '银色黎明', 18019),
(@ARGENT_QUARTERMASTER, 'zhTW', '銀色黎明軍需官', '銀色黎明', 18019),
(@ARGENT_OUTFITTER, 'deDE', 'Argentumausstatter', 'Die Argentumdämmerung', 18019),
(@ARGENT_OUTFITTER, 'esES', 'Proveedor Argenta', 'El Alba Argenta', 18019),
(@ARGENT_OUTFITTER, 'esMX', 'Proveedor Argenta', 'El Alba Argenta', 18019),
(@ARGENT_OUTFITTER, 'frFR', 'Tailleur de l\'Aube d\'argent', 'L\'Aube d\'argent', 18019),
(@ARGENT_OUTFITTER, 'koKR', '은빛 여명회 보급장교', '은빛 여명회', 18019),
(@ARGENT_OUTFITTER, 'ruRU', 'Экипировщик из ордена Серебряного Рассвета', 'Серебряный Рассвет', 18019),
(@ARGENT_OUTFITTER, 'zhCN', '银色物资官', '银色黎明', 18019),
(@ARGENT_OUTFITTER, 'zhTW', '銀色黎明物資官', '銀色黎明', 18019),
(@NECROTIC_SHARD, 'deDE', 'Nekrotischer Splitter', '', 18019),
(@NECROTIC_SHARD, 'esES', 'Fragmento necrótico', '', 18019),
(@NECROTIC_SHARD, 'esMX', 'Fragmento necrótico', '', 18019),
(@NECROTIC_SHARD, 'frFR', 'Eclat nécrotique', '', 18019),
(@NECROTIC_SHARD, 'koKR', '죽음의 결정', '', 18019),
(@NECROTIC_SHARD, 'ruRU', 'Некротический осколок', '', 18019),
(@NECROTIC_SHARD, 'zhCN', '死灵碎片', '', 18019),
(@NECROTIC_SHARD, 'zhTW', '亡域水晶裂片', '', 18019);


DELETE FROM `creature_template_model` WHERE `CreatureID` IN 
(@ARGENT_RECRUITER, @ARGENT_SCOUT, @ARGENT_EMISSARY, @ARGENT_MESSENGER, @ARGENT_QUARTERMASTER, @ARGENT_OUTFITTER, @KEEPER_OF_THE_ROLLS,
 @COMMANDER_THOMAS, @LIEUTENANT_ORRIN, @LIEUTENANT_NEVELL, @LIEUTENANT_LISANDE, @LIEUTENANT_DAGEL, @LIEUTENANT_RUKAG, @LIEUTENANT_BEITHA,
 @NECROTIC_SHARD, @SHADOW_OF_DOOM, @CULTIST_ENGINEER, @GHOUL_BERSERKER, @SPECTRAL_SOLDIER, @SKELETAL_SHOCKTROOPER,
 @LUMBERING_HORROR, @SPIRIT_OF_THE_DAMNED, @BONE_WITCH, @SEVER, @BALZAPHON, @LADY_FALTHERESS, @REVANCHION, @SCORN, @LORD_BLACKWOOD);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES 
(@ARGENT_RECRUITER, 0, 16131, 1, 1, 12340),
(@ARGENT_SCOUT, 0, 10727, 1, 1, 12340),
(@KEEPER_OF_THE_ROLLS, 0, 16105, 1, 1, 12340),
(@ARGENT_EMISSARY, 0, 16130, 1, 1, 12340),
(@ARGENT_MESSENGER, 0, 10727, 1, 1, 12340),
(@COMMANDER_THOMAS, 0, 16132, 1, 1, 12340),
(@LIEUTENANT_ORRIN, 0, 16204, 1, 1, 12340),
(@LIEUTENANT_NEVELL, 0, 16212, 1, 1, 12340),
(@LIEUTENANT_LISANDE, 0, 16218, 1, 1, 12340),
(@LIEUTENANT_DAGEL, 0, 16219, 1, 1, 12340),
(@LIEUTENANT_RUKAG, 0, 16220, 1, 1, 12340),
(@LIEUTENANT_BEITHA, 0, 16221, 1, 1, 12340),
(@SEVER, 0, 1061, 1, 1, 12340),
(@BALZAPHON, 0, 7919, 1, 1, 12340),
(@LADY_FALTHERESS, 0, 10698, 1, 1, 12340),
(@REVANCHION, 0, 14695, 1, 1, 12340),
(@SCORN, 0, 16197, 1, 1, 12340),
(@LORD_BLACKWOOD, 0, 14699, 1, 1, 12340),
(@SHADOW_OF_DOOM, 0, 16168, 1, 1, 12340),
(@CULTIST_ENGINEER, 0, 16151, 1, 1, 12340),
(@GHOUL_BERSERKER, 0, 24993, 1, 1, 12340),
(@SPECTRAL_SOLDIER, 0, 16169, 1, 1, 12340),
(@SKELETAL_SHOCKTROOPER, 0, 12074, 1, 1, 12340),
(@LUMBERING_HORROR, 0, 12819, 1, 1, 12340),
(@SPIRIT_OF_THE_DAMNED, 0, 16170, 1, 1, 12340),
(@BONE_WITCH, 0, 16167, 1, 1, 12340),
(@ARGENT_QUARTERMASTER, 0, 16336, 1, 1, 12340),
(@ARGENT_OUTFITTER, 0, 16337, 1, 1, 12340),
(@NECROTIC_SHARD, 0, 16135, 1, 1, 12340);


DELETE FROM `creature_template_spell` WHERE `CreatureID` IN 
(@SEVER, @BALZAPHON, @REVANCHION, @SHADOW_OF_DOOM, @SKELETAL_SHOCKTROOPER, @SPIRIT_OF_THE_DAMNED, @BONE_WITCH);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(@SEVER, 0, 17745, 12340),
(@SEVER, 1, 16508, 12340),
(@BALZAPHON, 0, 12096, 12340),
(@BALZAPHON, 1, 37265, 12340),
(@BALZAPHON, 2, 8398, 12340),
(@BALZAPHON, 3, 32370, 12340),
(@REVANCHION, 0, 29849, 12340),
(@REVANCHION, 1, 30267, 12340),
(@SHADOW_OF_DOOM, 0, 12542, 12340),
(@SHADOW_OF_DOOM, 1, 16568, 12340),
(@SHADOW_OF_DOOM, 2, 28265, 12340),
(@SKELETAL_SHOCKTROOPER, 0, 17014, 12340),
(@SKELETAL_SHOCKTROOPER, 1, 28265, 12340),
(@SPIRIT_OF_THE_DAMNED, 0, 34322, 12340),
(@SPIRIT_OF_THE_DAMNED, 1, 16243, 12340),
(@SPIRIT_OF_THE_DAMNED, 2, 28265, 12340),
(@BONE_WITCH, 0, 13748, 12340),
(@BONE_WITCH, 1, 17014, 12340),
(@BONE_WITCH, 2, 28265, 12340);


-- Necrotic Shards 256+4
UPDATE `creature_template` SET `unit_flags` = 260 WHERE `entry` = @NECROTIC_SHARD;

-- Disable combat assistance
UPDATE `creature_template` SET `unit_flags` = 512 WHERE `entry` IN (@ARGENT_OUTFITTER, @KEEPER_OF_THE_ROLLS, @COMMANDER_THOMAS);

-- Set Quest Giver flag
UPDATE `creature_template` SET `npcflag` = 2 WHERE `entry` IN (@ARGENT_RECRUITER, @ARGENT_SCOUT);
    
-- Cultist Engineer
UPDATE `creature_template` SET `gossip_menu_id` = 66000, `npcflag` = 1, `unit_flags` = 514, `flags_extra` = 4194304 WHERE `entry` = @CULTIST_ENGINEER;

-- Lumbering Horror, fix movement
UPDATE `creature_template` SET `unit_flags` = 0, `HealthModifier` = 5.4 WHERE `entry` = @LUMBERING_HORROR;

-- Spirit of the Damned, Bone Witch
UPDATE `creature_template` SET `HealthModifier` = 5 WHERE `entry` IN (@SPIRIT_OF_THE_DAMNED, @BONE_WITCH);

-- Ghoul Berserker, Spectral Soldier, Skeletal Shocktrooper
UPDATE `creature_template` SET `HealthModifier` = 2.7 WHERE `entry` IN (@GHOUL_BERSERKER, @SPECTRAL_SOLDIER, @SKELETAL_SHOCKTROOPER);

DELETE FROM `creature_loot_template` WHERE `Entry` IN (16141, 16298, 16299);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
--
(16141, 40110, 40110, 2, 0, 1, 1, 1, 1, 'Ghoul Berserker - Reference Loot - Haunted Memento'),
(16141, 12841, 0, 35, 0, 1, 0, 1, 1,    'Ghoul Berserker - Invaders Scourgestone'),
(16141, 22484, 0, 33.64, 0, 1, 0, 1, 1, 'Ghoul Berserker - Necrotic Rune'),
(16141, 22970, 0, 0.6, 0, 1, 0, 1, 1,   'Ghoul Berserker - A Bloodstained Envelope'),
(16141, 22972, 0, 0.6, 0, 1, 0, 1, 1,   'Ghoul Berserker - A Careworn Note'),
(16141, 22973, 0, 0.7, 0, 1, 0, 1, 1,   'Ghoul Berserker - A Crumpled Missive'),
(16141, 22974, 0, 0.7, 0, 1, 0, 1, 1,   'Ghoul Berserker - A Ragged Page'),
(16141, 22975, 0, 0.6, 0, 1, 0, 1, 1,   'Ghoul Berserker - A Smudged Document'),
(16141, 22977, 0, 0.7, 0, 1, 0, 1, 1,   'Ghoul Berserker - A Torn Letter'),
--
(16298, 40110, 40110, 2, 0, 1, 1, 1, 1, 'Spectral Soldier - Reference Loot - Haunted Memento'),
(16298, 12841, 0, 35, 0, 1, 0, 1, 1,    'Spectral Soldier - Invaders Scourgestone'),
(16298, 22484, 0, 34.26, 0, 1, 0, 1, 1, 'Spectral Soldier - Necrotic Rune'),
(16298, 22970, 0, 0.7, 0, 1, 0, 1, 1,   'Spectral Soldier - A Bloodstained Envelope'),
(16298, 22972, 0, 0.7, 0, 1, 0, 1, 1,   'Spectral Soldier - A Careworn Note'),
(16298, 22973, 0, 0.6, 0, 1, 0, 1, 1,   'Spectral Soldier - A Crumpled Missive'),
(16298, 22974, 0, 0.8, 0, 1, 0, 1, 1,   'Spectral Soldier - A Ragged Page'),
(16298, 22975, 0, 0.7, 0, 1, 0, 1, 1,   'Spectral Soldier - A Smudged Document'),
(16298, 22977, 0, 0.6, 0, 1, 0, 1, 1,   'Spectral Soldier - A Torn Letter'),
--
(16299, 40110, 40110, 2, 0, 1, 1, 1, 1, 'Skeletal Shocktrooper - Reference Loot - Haunted Memento'),
(16299, 12841, 0, 35, 0, 1, 0, 1, 1,    'Skeletal Shocktrooper - Invaders Scourgestone'),
(16299, 22484, 0, 33.54, 0, 1, 0, 1, 1, 'Skeletal Shocktrooper - Necrotic Rune'),
(16299, 22970, 0, 0.7, 0, 1, 0, 1, 1,   'Skeletal Shocktrooper - A Bloodstained Envelope'),
(16299, 22972, 0, 0.7, 0, 1, 0, 1, 1,   'Skeletal Shocktrooper - A Careworn Note'),
(16299, 22973, 0, 0.6, 0, 1, 0, 1, 1,   'Skeletal Shocktrooper - A Crumpled Missive'),
(16299, 22974, 0, 0.7, 0, 1, 0, 1, 1,   'Skeletal Shocktrooper - A Ragged Page'),
(16299, 22975, 0, 0.7, 0, 1, 0, 1, 1,   'Skeletal Shocktrooper - A Smudged Document'),
(16299, 22977, 0, 0.7, 0, 1, 0, 1, 1,   'Skeletal Shocktrooper - A Torn Letter');

-- no epic rewards from Shadow of Doom
UPDATE `creature_template` SET `lootid` = @SHADOW_OF_DOOM WHERE `entry` = @SHADOW_OF_DOOM;
DELETE FROM `creature_loot_template` WHERE `Entry` IN (@SHADOW_OF_DOOM);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(@SHADOW_OF_DOOM, 3356, 0, 0.02, 0, 1, 0, 1, 1,   'Shadow of Doom - Kingsblood'),
(@SHADOW_OF_DOOM, 12843, 0, 100, 0, 1, 0, 1, 1,   'Shadow of Doom - Corruptors Scourgestone'),
(@SHADOW_OF_DOOM, 22484, 0, 100, 0, 1, 0, 30, 30, 'Shadow of Doom - Necrotic Rune'),
(@SHADOW_OF_DOOM, 23085, 0, 6.35, 0, 1, 0, 1, 1,  'Shadow of Doom - Robe of Undead Cleansing'),
(@SHADOW_OF_DOOM, 23087, 0, 6.33, 0, 1, 0, 1, 1,  'Shadow of Doom - Breastplate of Undead Slaying'),
(@SHADOW_OF_DOOM, 23088, 0, 7.19, 0, 1, 0, 1, 1,  'Shadow of Doom - Chestguard of Undead Slaying'),
(@SHADOW_OF_DOOM, 23089, 0, 6.33, 0, 1, 0, 1, 1,  'Shadow of Doom - Tunic of Undead Slaying');

-- Necropolis Not selectable
UPDATE `gameobject_template_addon` SET `flags` = 16 WHERE `entry` IN (181154, 181215, 181223, 181373, 181374);

-- Reputation changes
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` IN (@GHOUL_BERSERKER, @SPECTRAL_SOLDIER, @SKELETAL_SHOCKTROOPER, @LUMBERING_HORROR, @SPIRIT_OF_THE_DAMNED, @BONE_WITCH, @SHADOW_OF_DOOM);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, 
`MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES 
(@GHOUL_BERSERKER, 529, 0, 4, 0, 5, 0, 0, 0, 0),
(@SPECTRAL_SOLDIER, 529, 0, 4, 0, 5, 0, 0, 0, 0),
(@SKELETAL_SHOCKTROOPER, 529, 0, 4, 0, 5, 0, 0, 0, 0),
(@LUMBERING_HORROR, 529, 0, 5, 0, 10, 0, 0, 0, 0),
(@SPIRIT_OF_THE_DAMNED, 529, 0, 5, 0, 10, 0, 0, 0, 0),
(@BONE_WITCH, 529, 0, 5, 0, 10, 0, 0, 0, 0),
(@SHADOW_OF_DOOM, 529, 0, 5, 0, 50, 0, 0, 0, 0);


/*-- Smart AI --*/

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(@CULTIST_ENGINEER, @GHOUL_BERSERKER, @SPECTRAL_SOLDIER, @SKELETAL_SHOCKTROOPER, 16422, 16423, 16437, 16438,
 @SEVER, @BALZAPHON, @LADY_FALTHERESS, @REVANCHION, @SCORN, @LORD_BLACKWOOD, @LUMBERING_HORROR, @SPIRIT_OF_THE_DAMNED, @BONE_WITCH);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN 
(@CULTIST_ENGINEER, @GHOUL_BERSERKER, @SPECTRAL_SOLDIER, @SKELETAL_SHOCKTROOPER, 16422, 16423, 16437, 16438,
 @SEVER, @BALZAPHON, @LADY_FALTHERESS, @REVANCHION, @SCORN, @LORD_BLACKWOOD, @LUMBERING_HORROR, @SPIRIT_OF_THE_DAMNED, @BONE_WITCH);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, 
`event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(@SEVER, 0, 0, 0, 0, 0, 100, 0, 3000, 10000, 8000, 20000, 0, 0, 11, 17745, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                   'Sever - In Combat - Cast Diseased Spit'),
(@SEVER, 0, 1, 0, 0, 0, 100, 0, 15000, 18000, 135000, 138000, 0, 0, 11, 8269, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Sever - In Combat - Cast Enrage'),
(@BALZAPHON, 0, 0, 0, 0, 0, 100, 0, 2000, 5000, 12000, 15000, 0, 0, 11, 12542, 1, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0,               'Balzaphon - In Combat - Cast Fear'),
(@BALZAPHON, 0, 1, 0, 0, 0, 100, 0, 0, 1000, 3000, 4000, 0, 0, 11, 16799, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                   'Balzaphon - In Combat - Cast Frostbolt'),
(@BALZAPHON, 0, 2, 0, 0, 0, 100, 0, 5000, 10000, 13000, 21000, 0, 0, 11, 8398, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Balzaphon - In Combat - Cast Frostbolt Volley'),
(@LADY_FALTHERESS, 0, 0, 0, 0, 0, 100, 0, 1000, 12000, 18000, 24000, 0, 0, 11, 17105, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,       'Lady Faltheress - In Combat - Cast Banshee Curse'),
(@LADY_FALTHERESS, 0, 1, 0, 0, 0, 100, 0, 4000, 15000, 15000, 25000, 0, 0, 11, 16838, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,        'Lady Faltheress - In Combat - Cast Banshee Shriek'),
(@LADY_FALTHERESS, 0, 2, 0, 0, 0, 100, 0, 4000, 15000, 15000, 25000, 0, 0, 11, 22743, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,        'Lady Faltheress - In Combat - Cast Ribbon of Souls'),
(@REVANCHION, 0, 0, 0, 106, 0, 100, 0, 4000, 9000, 8000, 15000, 0, 10, 11, 14907, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Revanchion - In Combat - Cast Frost Nova'),
(@REVANCHION, 0, 1, 0, 0, 0, 100, 0, 5000, 7000, 15000, 17000, 0, 0, 11, 15245, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Revanchion - In Combat - Cast Shadow Bolt Volley'),
(@SCORN, 0, 0, 0, 106, 0, 100, 0, 4000, 9000, 8000, 15000, 0, 10, 11, 14907, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Scorn - In Combat - Cast Frost Nova'),
(@SCORN, 0, 1, 0, 0, 0, 100, 0, 5000, 10000, 13000, 21000, 0, 0, 11, 8398, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Scorn - In Combat - Cast Frostbolt Volley'),
(@SCORN, 0, 2, 0, 0, 0, 100, 0, 2000, 5000, 12000, 15000, 0, 0, 11, 28873, 1, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,                   'Scorn - In Combat - Cast Lich Slap'),
(@LORD_BLACKWOOD, 0, 0, 0, 9, 0, 100, 0, 0, 0, 7000, 11000, 5, 30, 11, 21390, 64, 0, 0, 0, 0, 25, 30, 0, 0, 0, 0, 0, 0, 0,             'Lord Blackwood - On Victim In Range - Cast Multi-Shot'), 
(@LORD_BLACKWOOD, 0, 1, 0, 0, 0, 100, 0, 2000, 5000, 12000, 15000, 0, 0, 11, 11972, 1, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,          'Lord Blackwood - In Combat - Cast Shield Bash'),
(@LORD_BLACKWOOD, 0, 2, 0, 106, 0, 100, 0, 13000, 13000, 15000, 15000, 0, 5, 11, 7964, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Lord Blackwood - In Combat - Cast Smoke Bomb'),
--
(@CULTIST_ENGINEER, 0, 0, 0, 11, 0, 100, 512, 0, 0, 0, 0, 0, 0, 2, 190, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Cultist Engineer - On Respawn - Set Faction 190'),
(@CULTIST_ENGINEER, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 36, @CULTIST_ENGINEER, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Cultist Engineer - On Respawn - Set guid to Cultist Engineer'),
(@CULTIST_ENGINEER, 0, 2, 0, 1, 0, 100, 0, 1000, 2000, 0, 0, 0, 0, 11, 47850, 3, 6, 0, 0, 0, 9, @NECROTIC_SHARD, 0, 15, 1, 0, 0, 0, 0, 'Cultist Engineer - Out of Combat - Cast Scourge Beam'), -- wrong spell, visual incorrect
(@CULTIST_ENGINEER, 0, 3, 4, 62, 0, 100, 0, 66000, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Cultist Engineer - On Gossip Option 0 Selected - Say Line 1'),
(@CULTIST_ENGINEER, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 57, 22484, 8, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                     'Cultist Engineer - On Gossip Option 0 Selected - Remove 8 Necrotic Runes'),
(@CULTIST_ENGINEER, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 36, @SHADOW_OF_DOOM, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Cultist Engineer - On Gossip Option 0 Selected - Set guid to Shadow of Doom'),
(@CULTIST_ENGINEER, 0, 6, 7, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 142, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Cultist Engineer - On Gossip Option 0 Selected - Set Health 100%'),
(@CULTIST_ENGINEER, 0, 7, 8, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Cultist Engineer - On Gossip Option 0 Selected - Set Faction 14'),
(@CULTIST_ENGINEER, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                         'Cultist Engineer - On Gossip Option 0 Selected - Start Attacking'),
(@CULTIST_ENGINEER, 0, 9, 0, 0, 0, 100, 0, 4000, 7000, 9000, 12000, 0, 0, 11, 16568, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Shadow of Doom - In Combat - Cast Mind Flay'),
(@CULTIST_ENGINEER, 0, 10, 0, 0, 0, 100, 0, 2000, 5000, 12000, 15000, 0, 0, 11, 12542, 1, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0,       'Shadow of Doom - In Combat - Cast Fear'),
--
(@LUMBERING_HORROR, 0, 0, 0, 0, 0, 100, 0, 2000, 4000, 12000, 15000, 0, 0, 11, 16790, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Lumbering Horror - In Combat - Cast Knockdown'),
(@LUMBERING_HORROR, 0, 1, 0, 0, 0, 100, 0, 5000, 7000, 10000, 12000, 0, 0, 11, 55090, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Lumbering Horror - In Combat - Cast Scourge Strike'),
(@LUMBERING_HORROR, 0, 2, 0, 0, 0, 100, 0, 3200, 11900, 11500, 16100, 0, 0, 11, 5568, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,        'Lumbering Horror - In Combat - Cast Trample'),
(@LUMBERING_HORROR, 0, 3, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 28032, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Lumbering Horror - On Just Died - Cast Zap Crystal'),
(@LUMBERING_HORROR, 0, 4, 0, 8, 0, 100, 0, 17680, 0, 0, 0, 0, 0, 41, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Lumbering Horror - On Spellhit Spirit Spawn-out - Despawn In 3000 ms'),
(@SPIRIT_OF_THE_DAMNED, 0, 0, 0, 0, 0, 100, 0, 2000, 5000, 12000, 15000, 0, 0, 11, 16243, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Spirit of the Damned - In Combat - Cast Ribbon of Souls'),
(@SPIRIT_OF_THE_DAMNED, 0, 1, 0, 0, 0, 100, 0, 5000, 7000, 10000, 12000, 0, 0, 11, 55090, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Spirit of the Damned - In Combat - Cast Scourge Strike'),
(@SPIRIT_OF_THE_DAMNED, 0, 2, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 28032, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Spirit of the Damned - On Just Died - Cast Zap Crystal'),
(@SPIRIT_OF_THE_DAMNED, 0, 3, 0, 8, 0, 100, 0, 17680, 0, 0, 0, 0, 0, 41, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Spirit of the Damned - On Spellhit Spirit Spawn-out - Despawn In 3000 ms'),
(@BONE_WITCH, 0, 0, 0, 25, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 32900, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                           'Bone Witch - On Respawn - Cast Bone Shards'),
(@BONE_WITCH, 0, 1, 0, 0, 0, 100, 0, 5000, 7000, 10000, 12000, 0, 0, 11, 55090, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Bone Witch - In Combat - Cast Scourge Strike'),
(@BONE_WITCH, 0, 2, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 28032, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                            'Bone Witch - On Just Died - Cast Zap Crystal'),
(@BONE_WITCH, 0, 3, 0, 8, 0, 100, 0, 17680, 0, 0, 0, 0, 0, 41, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Bone Witch - On Spellhit Spirit Spawn-out - Despawn In 3000 ms'),
--
(16422, 0, 0, 0, 0, 0, 100, 0, 5000, 7000, 10000, 12000, 0, 0, 11, 55090, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                    'Skeletal Soldier - In Combat - Cast Scourge Strike'),
(16423, 0, 0, 0, 0, 0, 100, 0, 5000, 7000, 10000, 12000, 0, 0, 11, 55090, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                    'Spectral Apparition - In Combat - Cast Scourge Strike'),
(16437, 0, 0, 0, 0, 0, 100, 0, 5000, 7000, 10000, 12000, 0, 0, 11, 55090, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                    'Spectral Spirit - In Combat - Cast Scourge Strike'), 
(16438, 0, 0, 0, 0, 0, 100, 0, 5000, 7000, 10000, 12000, 0, 0, 11, 55090, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                    'Skeletal Trooper - In Combat - Cast Scourge Strike'),
--
(@GHOUL_BERSERKER, 0, 0, 0, 0, 0, 100, 0, 6000, 9000, 16000, 24000, 0, 0, 11, 7367, 33, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Ghoul Berserker - In Combat - Cast Infected Bite'),
(@GHOUL_BERSERKER, 0, 1, 0, 0, 0, 100, 0, 5000, 7000, 10000, 12000, 0, 0, 11, 55090, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Ghoul Berserker - In Combat - Cast Scourge Strike'),
(@GHOUL_BERSERKER, 0, 2, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 28032, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Ghoul Berserker - On Just Died - Cast Zap Crystal'),
(@GHOUL_BERSERKER, 0, 3, 0, 8, 0, 100, 0, 17680, 0, 0, 0, 0, 0, 41, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Ghoul Berserker - On Spellhit Spirit Spawn-out - Despawn In 3000 ms'),
(@SPECTRAL_SOLDIER, 0, 0, 0, 0, 0, 100, 0, 2000, 10000, 10000, 20000, 0, 0, 11, 13444, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,       'Spectral Soldier - In Combat - Cast Sunder Armor'),
(@SPECTRAL_SOLDIER, 0, 1, 0, 0, 0, 100, 0, 5000, 7000, 10000, 12000, 0, 0, 11, 55090, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Spectral Soldier - In Combat - Cast Scourge Strike'),
(@SPECTRAL_SOLDIER, 0, 2, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 28032, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Skeletal Soldier - On Just Died - Cast Zap Crystal'),
(@SPECTRAL_SOLDIER, 0, 3, 0, 8, 0, 100, 0, 17680, 0, 0, 0, 0, 0, 41, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Spectral Soldier - On Spellhit Spirit Spawn-out - Despawn In 3000 ms'),
(@SKELETAL_SHOCKTROOPER, 0, 0, 0, 25, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 32900, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Skeletal Shocktrooper - On Respawn - Cast Bone Shards'),
(@SKELETAL_SHOCKTROOPER, 0, 1, 0, 0, 0, 100, 0, 5000, 7000, 10000, 12000, 0, 0, 11, 55090, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Skeletal Shocktrooper - In Combat - Cast Scourge Strike'),
(@SKELETAL_SHOCKTROOPER, 0, 2, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 28032, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Skeletal Shocktrooper - On Just Died - Cast Zap Crystal'),
(@SKELETAL_SHOCKTROOPER, 0, 3, 0, 8, 0, 100, 0, 17680, 0, 0, 0, 0, 0, 41, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Skeletal Shocktrooper - On Spellhit Spirit Spawn-out - Despawn In 3000 ms');


/*-- Quests --*/

-- Lieutenants, Investigate the Scourge
UPDATE `quest_template` SET `AllowableRaces` = 1101 WHERE `ID` IN (9260, 9261, 9262); -- Stormwind, Ironforge, Darnassus, Exodar(12817)
UPDATE `quest_template` SET `AllowableRaces` = 690 WHERE `ID` IN (9263, 9264, 9265);  -- Orgrimmar, Thunder Bluff, Undercity, Silvermoon(12816)
UPDATE `quest_template` SET `Flags` = 12, `RequiredNpcOrGo1` = 0 WHERE `ID` IN (9260, 9261, 9262, 9263, 9264, 9265);
UPDATE `quest_template_addon` SET `SpecialFlags` = 2 WHERE `ID` IN (9260, 9261, 9262, 9263, 9264, 9265);

UPDATE `creature_template` SET `npcflag` = 2 WHERE `entry` IN (@LIEUTENANT_ORRIN, @LIEUTENANT_NEVELL, @LIEUTENANT_LISANDE, @LIEUTENANT_DAGEL, @LIEUTENANT_RUKAG, @LIEUTENANT_BEITHA);
UPDATE `creature_template` SET `npcflag` = 0 WHERE `entry` IN (29441, 29442); -- there are no scourge outside Exodar and Silvermoon.

DELETE FROM `creature_queststarter` WHERE `quest` IN (9260, 9261, 9262, 9263, 9264, 9265, 12816, 12817);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(16478, 9260),  -- Orrin
(16484, 9261),  -- Nevell
(16490, 9264),  -- Lisande
(16493, 9263),  -- Dagel
(16494, 9265),  -- Rukag
(16495, 9262),  -- Beitha
-- (29441, 12816), -- Julek
-- (29442, 12817), -- Kregor
(@LIEUTENANT_ORRIN, 9260),
(@LIEUTENANT_NEVELL, 9261),
(@LIEUTENANT_LISANDE, 9264),
(@LIEUTENANT_DAGEL, 9263),
(@LIEUTENANT_RUKAG, 9265),
(@LIEUTENANT_BEITHA, 9262);

DELETE FROM `creature_questender` WHERE `quest` IN 
(9260, 9261, 9262, 9263, 9264, 9265, 12816, 12817);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(16478, 9260),
(16484, 9261),
(16490, 9264),
(16493, 9263),
(16494, 9265),
(16495, 9262),
-- (29441, 12816),
-- (29442, 12817),
(@LIEUTENANT_ORRIN, 9260),
(@LIEUTENANT_NEVELL, 9261),
(@LIEUTENANT_LISANDE, 9264),
(@LIEUTENANT_DAGEL, 9263),
(@LIEUTENANT_RUKAG, 9265),
(@LIEUTENANT_BEITHA, 9262);


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
(16494, 9310),
(@LIEUTENANT_ORRIN, 9292),
(@LIEUTENANT_RUKAG, 9310);

DELETE FROM `creature_queststarter` WHERE `quest` = 9154;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(16241, 9154),
(16255, 9154),
(@ARGENT_RECRUITER, 9154),
(@ARGENT_SCOUT, 9154);

DELETE FROM `creature_questender` WHERE `quest` = 9154;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(16281, 9154),
(@KEEPER_OF_THE_ROLLS, 9154);

-- Argent Quartermaster and Outfitter
UPDATE `creature_template` SET `npcflag` = 3   WHERE `entry` = @ARGENT_QUARTERMASTER;
UPDATE `creature_template` SET `npcflag` = 131 WHERE `entry` = @ARGENT_OUTFITTER;
-- DELETE FROM `npc_vendor` WHERE `entry` IN (@ARGENT_QUARTERMASTER, @ARGENT_OUTFITTER); -- they aren't vendors in vanilla

DELETE FROM `creature_queststarter` WHERE `quest` IN
(9094, 9317, 9318, 9321, 9337, 9341,  -- Alliance
 9333, 9334, 9335, 9336, 9320, 9343); -- Horde
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(@ARGENT_QUARTERMASTER, 9094), (@ARGENT_QUARTERMASTER, 9317), (@ARGENT_QUARTERMASTER, 9318), (@ARGENT_QUARTERMASTER, 9321), (@ARGENT_QUARTERMASTER, 9337), (@ARGENT_QUARTERMASTER, 9341),
(@ARGENT_OUTFITTER, 9333), (@ARGENT_OUTFITTER, 9334), (@ARGENT_OUTFITTER, 9335), (@ARGENT_OUTFITTER, 9336), (@ARGENT_OUTFITTER, 9320), (@ARGENT_OUTFITTER, 9343);

DELETE FROM `creature_questender` WHERE `quest` IN 
(9094, 9317, 9318, 9321, 9337, 9341,  -- Alliance
 9320, 9333, 9334, 9335, 9336, 9343); -- Horde
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(@ARGENT_QUARTERMASTER, 9094), (@ARGENT_QUARTERMASTER, 9317), (@ARGENT_QUARTERMASTER, 9318), (@ARGENT_QUARTERMASTER, 9321), (@ARGENT_QUARTERMASTER, 9337), (@ARGENT_QUARTERMASTER, 9341),
(@ARGENT_OUTFITTER, 9333), (@ARGENT_OUTFITTER, 9334), (@ARGENT_OUTFITTER, 9335), (@ARGENT_OUTFITTER, 9336), (@ARGENT_OUTFITTER, 9320), (@ARGENT_OUTFITTER, 9343);

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

-- Keeper of the Rolls <The Argent Dawn>
DELETE FROM `quest_mail_sender` WHERE `QuestId` IN (9295, 9299, 9300, 9301, 9302, 9304);
INSERT INTO `quest_mail_sender` (`QuestId`, `RewardMailSenderEntry`) VALUES 
(9295, @KEEPER_OF_THE_ROLLS), -- Joanna Whitehall / Orphan Matron Nightingale
(9299, @KEEPER_OF_THE_ROLLS), -- Alexander Calder / Deze Snowbane
(9300, @KEEPER_OF_THE_ROLLS), -- Miles Welsh / Elissa Dumas
(9301, @KEEPER_OF_THE_ROLLS), -- Zarena Cromwind
(9302, @KEEPER_OF_THE_ROLLS), -- Garon Hutchins
(9304, @KEEPER_OF_THE_ROLLS); -- Caretaker Alen

DELETE FROM `quest_template_addon` WHERE `ID` IN (9295, 9299, 9300, 9301, 9302, 9304);
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, 
`RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
(9295, 0, 0, 0, 0, 0, 0, 172, 604800, 0, 0, 0, 0, 0, 0, 1, 0), -- 7 days delay
(9299, 0, 0, 0, 0, 0, 0, 173, 604800, 0, 0, 0, 0, 0, 0, 1, 0),
(9300, 0, 0, 0, 0, 0, 0, 174, 604800, 0, 0, 0, 0, 0, 0, 1, 0),
(9301, 0, 0, 0, 0, 0, 0, 175, 604800, 0, 0, 0, 0, 0, 0, 1, 0),
(9302, 0, 0, 0, 0, 0, 0, 176, 604800, 0, 0, 0, 0, 0, 0, 1, 0),
(9304, 0, 0, 0, 0, 0, 0, 177, 604800, 0, 0, 0, 0, 0, 0, 1, 0);

/* no longer needed, this is now done by AzerothCore
DELETE FROM `mail_loot_template` WHERE `Entry` IN (172, 173, 174, 175, 176, 177);
INSERT INTO `mail_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
(172, 23010, 0, 100, 0, 1, 0, 1, 1, 'Research Report'), -- Joanna Whitehall / Orphan Matron Nightingale
(173, 23008, 0, 100, 0, 1, 0, 1, 1, 'Research Report'), -- Alexander Calder / Deze Snowbane
(174, 23011, 0, 100, 0, 1, 0, 1, 1, 'Research Report'), -- Miles Welsh / Elissa Dumas
(175, 23013, 0, 100, 0, 1, 0, 1, 1, 'Research Report'), -- Zarena Cromwind
(176, 23012, 0, 100, 0, 1, 0, 1, 1, 'Research Report'), -- Garon Hutchins
(177, 23016, 0, 100, 0, 1, 0, 1, 1, 'Research Report'); -- Caretaker Alen
*/



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

DELETE FROM `creature_text` WHERE `CreatureID` = @CULTIST_ENGINEER AND `GroupID` = 1;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(@CULTIST_ENGINEER, 1, 0, 'These heroics mean nothing, $c.  Your future is sealed and your soul is doomed to servitude!', 12, 0, 100, 0, 0, 0, 12421, 0, 'Cultist Engineer');

DELETE FROM `creature_text` WHERE `CreatureID` = @SHADOW_OF_DOOM AND `GroupID` = 0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(@SHADOW_OF_DOOM, 0, 0, '', 12, 0, 0, 0, 0, 0, 12420, 0, 'Shadow of Doom Aggro 1'),
(@SHADOW_OF_DOOM, 0, 1, '', 12, 0, 0, 0, 0, 0, 12421, 0, 'Shadow of Doom Aggro 2'),
(@SHADOW_OF_DOOM, 0, 2, '', 12, 0, 0, 0, 0, 0, 12422, 0, 'Shadow of Doom Aggro 3'),
(@SHADOW_OF_DOOM, 0, 3, '', 12, 0, 0, 0, 0, 0, 12243, 0, 'Shadow of Doom Aggro 4');
