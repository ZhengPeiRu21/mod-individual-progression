DELETE FROM `gameobject` WHERE `id` IN (176146, 176147, 176148);
INSERT INTO `gameobject` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(176146, 1, -8133.34, 1525.13, 17.1904, 6.28103, 0.00107995, -0.999999, 600, 100, 1), -- Gate of Ahn'Qiraj
(176147, 1, -8133.34, 1525.13, 17.1904, 6.28103, 0.00107995, -0.999999, 600, 100, 1), -- Ahn'Qiraj Gate Roots
(176148, 1, -8133.34, 1525.13, 17.1904, 6.28103, 0.00107995, -0.999999, 600, 100, 1); -- Ahn'Qiraj Gate Runes

-- Ghost Gate - should not be placed, remove it if it is present
DELETE FROM `gameobject` WHERE `id` = 180322;

-- Ahn'Qiraj Gate, Roots and Runes
UPDATE `gameobject_template_addon` SET `flags` = 4 WHERE `entry` IN (176146, 176147, 176148);
UPDATE `gameobject_template` SET `ScriptName` = 'aq_gate' WHERE `entry` IN (176146, 176147, 176148);

-- fix tiny red crystal quest not completing
UPDATE `gameobject_template` SET `ScriptName` = 'gobject_crystalline_tear' WHERE `entry` = 180633; -- was go_crystalline_tear

-- add unused crystal to avoid worldserver error due to 'go_crystalline_tear' scrypt no longer being used.
DELETE FROM `gameobject_template` WHERE `entry` = 280633;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `size`, `Data1`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES 
(280633, 2, 5746, 'Crystalline Tear', 1, 7062, '', 'go_crystalline_tear', 12340);

-- Scarab Gong
-- See related AC PR: https://github.com/azerothcore/azerothcore-wotlk/pull/12879/files
UPDATE `gameobject_template` SET `type` = 2, `ScriptName` = "gobject_scarab_gong" WHERE `entry` = 180717;
UPDATE `gameobject` SET `id` = 180717 WHERE `guid` = 49451;
DELETE FROM `gameobject_questender` WHERE `quest`=8743;
INSERT INTO `gameobject_questender` (`id`, `quest`) VALUES (180717, 8743);
DELETE FROM `gameobject_queststarter` WHERE `quest`=8743;
INSERT INTO `gameobject_queststarter` (`id`, `quest`) VALUES (180717, 8743);

SET @STRING_ENTRY := 41100;
DELETE FROM `acore_string` WHERE `entry` IN  (@STRING_ENTRY);
INSERT INTO `acore_string` (`entry`, `content_default`) VALUES
(@STRING_ENTRY, '%s, Champion of the Bronze Dragonflight, has rung the Scarab Gong. The ancient gates of Ahn''Qiraj open, revealing the horrors of a forgotten war...');

-- Fix drop rate for Nightmare_corruption
UPDATE `creature_loot_template` SET `Chance` = 5 WHERE `Item` = 21146;
UPDATE `creature_loot_template` SET `Chance` = 5 WHERE `Item` = 21147;
UPDATE `creature_loot_template` SET `Chance` = 5 WHERE `Item` = 21148;

-- Fix drop rate for Narain's Scrying Goggles
UPDATE `creature_loot_template` SET `Chance` = 2 WHERE `Item` = 20951;

-- Fix missing quest details for The Charge of the Dragonflights
UPDATE `quest_template` SET `QuestDescription` = 'Eranikus, Vaelastrasz, and Azuregos... No doubt you know of these dragons, mortal. It is no coincidence, then, that they have played such influential roles as watchers of our world. Unfortunately whether by agents of the Old Gods or betrayal by those that would call them friend, each guardian has fallen to tragedy. The extent of which has fueled my own distrust towards your kind. Seek them out... And prepare yourself for the worst.', `LogDescription` = 'Speak with Anachronos.',  `QuestCompletionLog` = 'Speak with Anachronos.' WHERE `ID` = 8555;
UPDATE `quest_template_locale` SET `Details` = 'Eranikus, Vaelastrasz, et Azuregos... Vous avez certainement entendu parler de ces dragons, mortel. Ce n''est pas une simple coïncidence si chacun d''eux a joué un grand rôle comme gardien de ce monde. Malheureusement, et ma propre naïveté en est en partie responsable, ces gardiens ont tous succombé à de terribles tragédies, si terribles qu''elles ont alimenté ma méfiance à l''égard de votre espèce. Cherchez-les… Et préparez-vous au pire.', `Objectives` = 'Parlez à Anachronos.',  `CompletedText` = 'Parlez à Anachronos.' WHERE `ID` = 8555 AND `locale` = 'frFR';

-- Fix missing quest details for Translating the Ledger
UPDATE `quest_template` SET `QuestDescription` = 'First things first! We need to figure out what Azuregos wrote in this ledger. You say that he''s told you to make an arcanite buoy and that this is the schematic? Strange that he would write this in Draconic. That old goat knows I can''t read this nonsense. If this is going to work, I''m going to need my scrying goggles, a five hundred pound chicken and volume II of Draconic for Dummies. Not necessarily in that order.', `LogDescription` = 'We need to figure out what Azuregos wrote in this ledger.',  `QuestCompletionLog` = 'We need to figure out what Azuregos wrote in this ledger.' WHERE `ID` = 8576;
UPDATE `quest_template_locale` SET `Details` = 'Commençons par le commencement ! Il faut comprendre ce que Azuregos a écrit dans ce registre. Vous dites qu''il vous a demandé de fabriquer une bouée en arcanite avec le schéma ? Étrange qu''il ait écrit ça en draconique. Ce vieux bouc sait que je ne peux pas déchiffrer ces absurdités. Pour que ça marche, il me faut mes lunettes de divination, un poulet de deux cents kilos et le tome II de Draconique pour les Nuls.', `Objectives` = 'Nous devons découvrir ce que Azuregos a écrit dans ce registre.',  `CompletedText` = 'Nous devons découvrir ce que Azuregos a écrit dans ce registre.' WHERE `ID` = 8576 AND `locale` = 'frFR';

-- New 'Bang a Gong!' quest. No rewards for completing this version. No mount, no title. Currently the Mallet of Zul'Farrak is required to bang the gong.
-- New 'Chaos and Destruction' quest. Kill Colossus of Zora(15740), Regal(15741) and Ashi(15742)
DELETE FROM `quest_template` WHERE `ID` IN (108743, 108744, 108745, 108746, 108747);
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, 
`StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, 
`RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, 
`POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, 
`TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, 
`RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES 

(108743, 0, 60, 60, 1377, 82, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Simply Bang a Gong!', '', '', NULL, 'Return to The Scarab Gong in Silithus.', 0, 0, 0, 0, 0, 0, 0, 0, 9240, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 3, '', '', '', '', 12340),
(108744, 2, 60, 60, 1377, 82, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 910, 7, 0, 609, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Chaos and Destruction', 'Kill Lieutenant General Nokhor, 3 Colossal Anubisath Warbringers and 12 Supreme Anubisath Warbringers.', '', '', 'Return to Jonathan the Revelator at the Scarab Gong.', 15818, 15743, 15758, 0, 1, 3, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', NULL),
(108745, 2, 60, 60, 1377, 82, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 910, 7, 0, 609, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Colossus of Zora', 'Kill the Colossus of Zora.', '', '', 'Return to Jonathan the Revelator at the Scarab Gong.', 15740, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', NULL),
(108746, 2, 60, 60, 1377, 82, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 910, 7, 0, 609, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Colossus of Regal', 'Kill the Colossus of Regal.', '', '', 'Return to Jonathan the Revelator at the Scarab Gong.', 15741, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', NULL),
(108747, 2, 60, 60, 1377, 82, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 910, 7, 0, 609, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Colossus of Ashi', 'Kill the Colossus of Ashi.', '', '', 'Return to Jonathan the Revelator at the Scarab Gong.', 15742, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', NULL);

-- don't count quests for the loremaster achievement
DELETE FROM `quest_template_addon` WHERE `ID` IN (108743, 108744, 108745, 108746, 108747);
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, 
`RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES 
(108743, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 256),
(108744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 256),
(108745, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 256),
(108746, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 256),
(108747, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 256);

UPDATE `quest_template` SET `RewardNextQuest` = 0 WHERE `ID` = 8743; -- can be removed later

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 19 AND `ConditionTypeOrReference` = 8 AND `SourceEntry` IN (8286, 8857, 8858, 8859, 108743, 108744, 108745, 108746, 108747);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, 
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
--
(19, 0, 8286, 0, 0, 8, 0, 108850, 0, 0, 0, 0, 0, '',   'Quest \'What Tomorrow Brings\' requires the \'Complete the War Effort\' quest to be completed'),
(19, 0, 8286, 0, 1, 8, 0, 108855, 0, 0, 0, 0, 0, '',   'Quest \'What Tomorrow Brings\' requires the \'Complete the War Effort\' quest to be completed'),
(19, 0, 8857, 0, 1, 8, 0, 108747, 0, 0, 0, 0, 0, '',   'Quest \'Secrets of the Colossus - Ashi\' requires the \'Colossus of Ashi\' quest to be completed'),
(19, 0, 8858, 0, 1, 8, 0, 108746, 0, 0, 0, 0, 0, '',   'Quest \'Secrets of the Colossus - Regal\' requires the \'Colossus of Regal\' quest to be completed'),
(19, 0, 8859, 0, 1, 8, 0, 108745, 0, 0, 0, 0, 0, '',   'Quest \'Secrets of the Colossus - Zora\' requires the \'Colossus of Zora\' quest to be completed'),
(19, 0, 108743, 0, 0, 8, 0, 8743, 0, 0, 1, 0, 0, '',   'Quest \'Simply Bang a Gong!\' requires the \'Bang a Gong!\' quest to NOT be completed'),
(19, 0, 108743, 0, 0, 8, 0, 108850, 0, 0, 0, 0, 0, '', 'Quest \'Simply Bang a Gong!\' requires the \'Complete the War Effort\' quest to be completed'),
(19, 0, 108743, 0, 1, 8, 0, 8743, 0, 0, 1, 0, 0, '',   'Quest \'Simply Bang a Gong!\' requires the \'Bang a Gong!\' quest to NOT be completed'),
(19, 0, 108743, 0, 1, 8, 0, 108855, 0, 0, 0, 0, 0, '', 'Quest \'Simply Bang a Gong!\' requires the \'Complete the War Effort\' quest to be completed'),
(19, 0, 108744, 0, 0, 8, 0, 108745, 0, 0, 0, 0, 0, '', 'Quest \'Chaos and Destruction\' requires the \'Colossus of Zora\' quest to be completed'),
(19, 0, 108744, 0, 0, 8, 0, 108746, 0, 0, 0, 0, 0, '', 'Quest \'Chaos and Destruction\' requires the \'Colossus of Regal\' quest to be completed'),
(19, 0, 108744, 0, 0, 8, 0, 108747, 0, 0, 0, 0, 0, '', 'Quest \'Chaos and Destruction\' requires the \'Colossus of Ashi\' quest to be completed'),
(19, 0, 108745, 0, 0, 8, 0, 8743, 0, 0, 0, 0, 0, '',   'Quest \'Colossus of Zora\' requires either quest 8743 or 108743 to be completed'),
(19, 0, 108745, 0, 1, 8, 0, 108743, 0, 0, 0, 0, 0, '', 'Quest \'Colossus of Zora\' requires either quest 8743 or 108743 to be completed'),
(19, 0, 108746, 0, 0, 8, 0, 8743, 0, 0, 0, 0, 0, '',   'Quest \'Colossus of Regal\' requires either quest 8743 or 108743 to be completed'),
(19, 0, 108746, 0, 1, 8, 0, 108743, 0, 0, 0, 0, 0, '', 'Quest \'Colossus of Regal\' requires either quest 8743 or 108743 to be completed'),
(19, 0, 108747, 0, 0, 8, 0, 8743, 0, 0, 0, 0, 0, '',   'Quest \'Colossus of Ashi\' requires either quest 8743 or 108743 to be completed'),
(19, 0, 108747, 0, 1, 8, 0, 108743, 0, 0, 0, 0, 0, '', 'Quest \'Colossus of Ashi\' requires either quest 8743 or 108743 to be completed');

-- update quest texts for the new 'Simply Bang a Gong!' quest
DELETE FROM `quest_request_items` WHERE `ID` IN (108743, 108744);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES 
(108743, 1, 0, 'The Scarab Gong looms ominously before you. Steel yourself, $N; for once the Scarab Gong is rung, the gates of Ahn\'Qiraj will be opened.$B$BHowever, the Brood of Nozdomu and the Cenarion Circle will not reward you, unless you aid them.', 12340),
(108744, 1, 0, '', NULL);

DELETE FROM `quest_offer_reward` WHERE `ID` IN (108743, 108744);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES 
(108743, 0, 0, 0, 0, 0, 0, 0, 0, 'From the ground near the gong springs a special crystal. Perhaps favor from the Brood.', 12340),
(108744, 0, 0, 0, 0, 0, 0, 0, 0, '', NULL);
    
DELETE FROM `quest_template_addon` WHERE `ID` IN (8743);
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, 
`RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES 
(8743, 0, 0, 0, 8742, 0, 0, 0, 0, 0, 0, 910, 0, 0, 0, 0, 0);

UPDATE `quest_template` SET `QuestDescription` = '' WHERE `ID` = 108743;    
    
-- Connect new 'Bang a Gong!' quest to the Scarab Gong in Silithus
DELETE FROM `gameobject_queststarter` WHERE `id` = 180717 AND `quest` IN (8743, 108743, 108744);
INSERT INTO `gameobject_queststarter` (`id`, `quest`) VALUES (180717, 8743), (180717, 108743);

DELETE FROM `gameobject_questender` WHERE `id` = 180717 AND `quest` IN (8743, 108743);
INSERT INTO `gameobject_questender` (`id`, `quest`) VALUES (180717, 8743), (180717, 108743);

DELETE FROM `creature_queststarter` WHERE `id` = 15693 AND `quest` IN (108744, 108745, 108746, 108747);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (15693, 108744), (15693, 108745), (15693, 108746), (15693, 108747);

DELETE FROM `creature_questender` WHERE `id` = 15693 AND `quest` IN (8745, 108744, 108745, 108746, 108747);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (15693, 8745), (15693, 108744), (15693, 108745), (15693, 108746), (15693, 108747);
