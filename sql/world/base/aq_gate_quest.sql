-- Gate of Ahn'Qiraj
DELETE FROM `gameobject` WHERE `id`=176146;
INSERT INTO `gameobject` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (176146, 1, -8133.34, 1525.13, 17.1904, 6.28103, 0.00107995, -0.999999, 600, 100, 1);

-- Ahn'Qiraj Gate Roots
DELETE FROM `gameobject` WHERE `id`=176147;
INSERT INTO `gameobject` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (176147, 1, -8133.34, 1525.13, 17.1904, 6.28103, 0.00107995, -0.999999, 600, 100, 1);

-- Ahn'Qiraj Gate Runes
DELETE FROM `gameobject` WHERE `id`=176148;
INSERT INTO `gameobject` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (176148, 1, -8133.34, 1525.13, 17.1904, 6.28103, 0.00107995, -0.999999, 600, 100, 1);

-- Ghost Gate - should not be placed, remove it if it is present
DELETE FROM `gameobject` WHERE `id`=180322;
# INSERT INTO `gameobject` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (180322, 1, -8132.76, 1525.19, 6.19048, 6.27739, 0.00289526, -0.999996, 25, 100, 1);

-- Gate of Ahn'Qiraj
UPDATE `gameobject_template_addon` SET `flags`=4 WHERE `entry`=176146;
UPDATE `gameobject_template` SET `ScriptName`='aq_gate' WHERE  `entry`=176148;
UPDATE `gameobject_template` SET `ScriptName`='aq_gate' WHERE  `entry`=176147;
UPDATE `gameobject_template` SET `ScriptName`='aq_gate' WHERE  `entry`=176146;

-- Ahn'Qiraj Gate Roots
UPDATE `gameobject_template_addon` SET `flags`=4 WHERE `entry`=176147;

-- Ahn'Qiraj Gate Runes
UPDATE `gameobject_template_addon` SET `flags`=4 WHERE `entry`=176148;

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

-- New 'Bang a Gong!' quest. No rewards for completing this version. No mount, no title. Currently the Mallet of Zul'Farrak is required to bang the gong.
-- New 'Chaos and Destruction' quest. Kill Colossus of Zora(15740), Regal(15741) and Ashi(15742)
DELETE FROM `quest_template` WHERE `ID` IN (108743, 108744);
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, 
`StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, 
`RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, 
`POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, 
`TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, 
`RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES 

(108743, 0, 60, 60, 1377, 82, 0, 0, 0, 0, 0, 108744, 0, 0, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bang a Gong!', '', '', NULL, 'Return to The Scarab Gong in Silithus.', 0, 0, 0, 0, 0, 0, 0, 0, 9240, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 3, '', '', '', '', 12340),
(108744, 2, 60, 60, 1377, 82, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 910, 7, 0, 609, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 172800, 0, 'Chaos and Destruction', 'Kill the Colossus of Ashi, Regal and Zora.', '', '', 'Return to Jonathan the Revelator at the Scarab Gong.', 15740, 15741, 15742, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', NULL);

UPDATE `quest_template` SET `RewardNextQuest` = 108744 WHERE `ID` = 8743;

-- update quest texts for the new 'Bang a Gong!' quest
DELETE FROM `quest_request_items` WHERE `ID` IN (108743, 108744);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES 
(108743, 1, 0, 'The Scarab Gong looms ominously before you. Steel yourself, $N; for once the Scarab Gong is rung, the gates of Ahn\'Qiraj will be opened.$B$BHowever, the Brood of Nozdomu and the Cenarion Circle will not reward you, unless you aid them.', 12340),
(108744, 1, 0, '', NULL);

DELETE FROM `quest_offer_reward` WHERE `ID` IN (108743, 108744);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES 
(108743, 0, 0, 0, 0, 0, 0, 0, 0, 'From the ground near the gong springs a special crystal. Perhaps favor from the Brood.', 12340),
(108744, 0, 0, 0, 0, 0, 0, 0, 0, '', NULL);
    
DELETE FROM `quest_template_addon` WHERE `ID` IN (8743, 108743, 108744);
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, 
`RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES 
(8743, 0, 0, 0, 8742, 108744, 0, 0, 0, 0, 0, 910, 0, 0, 0, 0, 0),
(108743, 0, 0, 0, 0, 108744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(108744, 0, 0, 0, 108743, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

UPDATE `quest_template` SET `QuestDescription` = '' WHERE `ID` = 108743;    
    
-- Connect new 'Bang a Gong!' quest to the Scarab Gong in Silithus
DELETE FROM `gameobject_queststarter` WHERE `id` = 180717;
INSERT INTO `gameobject_queststarter` (`id`, `quest`) VALUES (180717, 8743), (180717, 108743), (180717, 108744);

DELETE FROM `gameobject_questender` WHERE `id` = 180717;
INSERT INTO `gameobject_questender` (`id`, `quest`) VALUES (180717, 8743), (180717, 108743);

DELETE FROM `creature_questender` WHERE `id` = 15693;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (15693, 8745), (15693, 108744);


