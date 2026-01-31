/* Maraudon Portal Requirement Script */
UPDATE `gameobject_template` SET `ScriptName` = 'go_mara_portal' WHERE `entry` = 178404;

/* TBC Attunement Quests - Restore pre-3.0 version */

-- The Cudgel of Kar'desh
DELETE FROM `creature_queststarter` WHERE `id` = 22421 AND `quest` IN (10901, 13431); -- 
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (22421, 10901);

DELETE FROM `creature_questender` WHERE `id` = 22421 AND `quest` IN (10901, 13431);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (22421, 10901);

UPDATE `quest_template` SET `RewardSpell` = 39145 WHERE (`ID` = 10901); -- Adds The Mark of Vashj spell to The Cudgel of Kar'desh (cosmetic)

-- Trial of the Naaru: Magtheridon
DELETE FROM `creature_queststarter` WHERE `id` = 18481 AND `quest` IN (10888, 13430); 
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (18481, 10888);

DELETE FROM `creature_questender` WHERE `id` = 18481 AND `quest` = 13430;

DELETE FROM `disables` WHERE `sourceType` = 1 AND `entry` IN (10888, 10901);
UPDATE `quest_template` SET `QuestType` = 2 WHERE `ID` = 10901;
UPDATE `quest_template_addon` SET `NextQuestID` = 10888 WHERE `ID` IN (10884, 10885, 10886);

-- The Vials of Eternity
DELETE FROM `creature_questender` WHERE `id` = 19935 AND `quest` = 13432;
DELETE FROM `creature_queststarter` WHERE `id` = 19935 AND `quest` = 13432;
REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES (19935, 10445);

/* A Distraction for Akama(13429) - Restore pre-3.0 version */
UPDATE `quest_template` SET `RewardNextQuest` = 10985 WHERE `ID` = 10949;

/* Reward Title Scarab Lord */
UPDATE `quest_template` SET `RewardTitle` = 46 WHERE `ID` = 8743;

/* Reward Title Champion of the Naaru and Reward Item The Tempest Key */
UPDATE `quest_template` SET `RewardItem1` = 31704, `RewardAmount1` = 1, `RewardItem2` = 31746, `RewardAmount2` = 1, `RewardTitle` = 53 WHERE `ID` = 10888;
DELETE FROM `achievement_reward` WHERE `ID` = 432;
DELETE FROM `achievement_reward_locale` WHERE `ID` = 432 AND `Locale` = 'frFR';

/* Reward Title Hand of A'dal */
REPLACE INTO `achievement_reward` (`ID`, `TitleA`, `TitleH`, `ItemID`, `Sender`, `Subject`, `Body`, `MailTemplateID`) VALUES (431, 64, 64, 0, 0, NULL, NULL, 0);
