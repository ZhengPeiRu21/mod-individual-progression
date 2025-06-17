/* These attunements are not in the original game, but make progression feel more smooth by requiring players to complete necessary story questlines before entering relevant dungeons */

DELETE FROM `dungeon_access_requirements` WHERE `dungeon_access_id` IN (20, 26);
INSERT INTO `dungeon_access_requirements` (`dungeon_access_id`, `requirement_type`, `requirement_id`, `requirement_note`, `faction`, `priority`, `leader_only`, `comment`) VALUES 
(20, 1, 8182, 'You must complete the quest "The Hand of Rastakhan" and be level 60 before entering Zul\'Gurub.', 2, NULL, 0, NULL),    
(26, 1, 7761, 'You must complete the quest "Blackhand\'s Command" and be level 60 before entering Blackwing Lair.', 2, NULL, 0, NULL);

/* Optional attunement change intended when playing with bots (only the leader needs attunement) */
-- UPDATE `dungeon_access_requirements` SET `leader_only` = 1;
