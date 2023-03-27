REPLACE INTO `dungeon_access_requirements` (`dungeon_access_id`, `requirement_type`, `requirement_id`, `requirement_note`, `faction`, `priority`, `leader_only`, `comment`) VALUES (15, 2, 16309, NULL, 2, NULL, 0, NULL);
REPLACE INTO `dungeon_access_requirements` (`dungeon_access_id`, `requirement_type`, `requirement_id`, `requirement_note`, `faction`, `priority`, `leader_only`, `comment`) VALUES (16, 2, 16309, NULL, 2, NULL, 0, NULL);
REPLACE INTO `dungeon_access_requirements` (`dungeon_access_id`, `requirement_type`, `requirement_id`, `requirement_note`, `faction`, `priority`, `leader_only`, `comment`) VALUES (32, 1, 10445, 'You must complete the quest "The Vials of Eternity" and be level 70 before entering The Battle of Mount Hyjal.', 2, NULL, 0, NULL);
REPLACE INTO `dungeon_access_requirements` (`dungeon_access_id`, `requirement_type`, `requirement_id`, `requirement_note`, `faction`, `priority`, `leader_only`, `comment`) VALUES (46, 1, 10901, 'You must complete the quest "The Cudgel of Kar\'desh" and be level 70 before entering Serpentshrine Reservoir.', 2, NULL, 0, NULL);
REPLACE INTO `dungeon_access_requirements` (`dungeon_access_id`, `requirement_type`, `requirement_id`, `requirement_note`, `faction`, `priority`, `leader_only`, `comment`) VALUES (47, 2, 31704, 'You must possess The Tempest Key to enter The Eye.', 2, NULL, 0, NULL);
REPLACE INTO `dungeon_access_requirements` (`dungeon_access_id`, `requirement_type`, `requirement_id`, `requirement_note`, `faction`, `priority`, `leader_only`, `comment`) VALUES (47, 1, 10888, 'You must complete "The Trial of the Naaru: Magtheridon" to enter The Eye.', 2, NULL, 0, NULL);
REPLACE INTO `dungeon_access_requirements` (`dungeon_access_id`, `requirement_type`, `requirement_id`, `requirement_note`, `faction`, `priority`, `leader_only`, `comment`) VALUES (62, 1, 10277, 'You must complete the quest "The Caverns of Time" to enter Old Hillsbrad.', 2, NULL, 0, NULL);
REPLACE INTO `dungeon_access_requirements` (`dungeon_access_id`, `requirement_type`, `requirement_id`, `requirement_note`, `faction`, `priority`, `leader_only`, `comment`) VALUES (63, 1, 10277, 'You must complete the quest "The Caverns of Time" to enter Old Hillsbrad.', 2, NULL, 0, NULL);
REPLACE INTO `dungeon_access_requirements` (`dungeon_access_id`, `requirement_type`, `requirement_id`, `requirement_note`, `faction`, `priority`, `leader_only`, `comment`) VALUES (64, 2, 32649, 'You must possess the Medallion of Karabor to enter the Black Temple.', 2, NULL, 0, NULL);

/* TBC Attunement Quests - Restore pre-3.0 version */
DELETE FROM `creature_questender` WHERE `id`=22421 AND `quest`=13431;
DELETE FROM `creature_questender` WHERE `id`=22421 AND `quest`=10901;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (22421, 10901);

DELETE FROM `creature_queststarter` WHERE `id`=22421 AND `quest`=13431;
DELETE FROM `creature_queststarter` WHERE `id`=22421 AND `quest`=10901;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (22421, 10901);

DELETE FROM `creature_questender` WHERE `id`=18481 AND `quest`=13430;

DELETE FROM `creature_queststarter` WHERE `id`=18481 AND `quest`=13430;
DELETE FROM `creature_queststarter` WHERE `id`=18481 AND `quest`=10888;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (18481, 10888);

DELETE FROM `disables` WHERE `sourceType` = 1 AND `entry` = 10888;
DELETE FROM `disables` WHERE `sourceType` = 1 AND `entry` = 10901;
UPDATE `quest_template` SET `QuestType` = 2 WHERE `ID` = 10901;
UPDATE `quest_template_addon` SET `NextQuestID` = 10888 WHERE `ID` = 10884;
UPDATE `quest_template_addon` SET `NextQuestID` = 10888 WHERE `ID` = 10885;
UPDATE `quest_template_addon` SET `NextQuestID` = 10888 WHERE `ID` = 10886;

/* A Distraction for Akama(13429) - Restore pre-3.0 version */
UPDATE `quest_template` SET `RewardNextQuest` = 10985 WHERE `ID` = 10949;
