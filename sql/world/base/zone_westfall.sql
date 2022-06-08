-- Defias Messenger
UPDATE `creature_template` SET `minlevel`=14, `maxlevel`=15 WHERE `entry`=550;

-- Christopher Hewen <General Trade Goods Vendor>
UPDATE `creature_template` SET `subname`='General Trade Goods Vendor', `minlevel`=30, `maxlevel`=30 WHERE `entry`=8934;

-- Gina MacGregor <Trade Supplies>
DELETE FROM `npc_vendor` WHERE `entry`=843 AND `item`=39354;

-- Christopher Hewen <General Trade Goods Vendor>
DELETE FROM `npc_vendor` WHERE `entry`=8934 AND `item` IN (10648, 14341, 18256, 30817, 39354);