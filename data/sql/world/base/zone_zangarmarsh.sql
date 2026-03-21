-- Withered Giant - Scout Jyoba's Report
UPDATE `creature_loot_template` SET `Chance` = 20 WHERE `Item` = 24373 AND `Entry` = 18124;

-- fix creature placed under ground
UPDATE `creature` SET `position_x` = -230.598, `position_y` = 6376.8, `position_z` = 19.8601 WHERE `guid` = 63967;

-- Juno Dufrain <Fishing Supplies>
DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (10437);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, 
`OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES 
(10437, 0, 1, 'Let me browse your goods.', 8097, 3, 128, 0, 0, 0, 0, '', 0, 0),
(10437, 1, 3, 'I seek training in Fishing.', 34245, 5, 16, 0, 0, 0, 0, '', 0, 0);
