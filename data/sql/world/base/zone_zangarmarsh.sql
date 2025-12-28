DELETE FROM `creature_loot_template` WHERE `Entry` = 19402 AND `Item` = 24373;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
(19402, 24373, 0, 5, 1, 1, 0, 1, 1, 'Withered Giant - Scout Jyoba\'s Report');

-- fix position Innkeeper Coryth Stoktron so he faces Naka
UPDATE `creature` SET `position_x` = -173.31, `position_y` = 5529.53, `orientation` = 3.46754 WHERE `id1` = 18907;
