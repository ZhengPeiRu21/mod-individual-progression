DELETE FROM `creature_loot_template` WHERE `Entry` = 19402 AND `Item` = 24373;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
(19402, 24373, 0, 5, 1, 1, 0, 1, 1, 'Withered Giant - Scout Jyoba\'s Report');

-- fix creature placed under ground
UPDATE `creature` SET `position_x` = -230.598, `position_y` = 6376.8, `position_z` = 19.8601 WHERE `guid` = 63967;
