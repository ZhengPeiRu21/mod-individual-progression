-- Withered Giant - Scout Jyoba's Report
UPDATE `creature_loot_template` SET `Chance` = 20 WHERE `Item` = 24373 AND `Entry` = 18124;

-- fix creature placed under ground
UPDATE `creature` SET `position_x` = -230.598, `position_y` = 6376.8, `position_z` = 19.8601 WHERE `guid` = 63967;
