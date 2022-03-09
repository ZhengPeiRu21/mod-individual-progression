-- Defias Messenger
UPDATE `creature_template` SET `minlevel`=14, `maxlevel`=15 WHERE `entry`=550;

-- Christopher Hewen <General Trade Goods Vendor>
UPDATE `creature_template` SET `subname`='General Trade Goods Vendor' WHERE `entry`=8934;

-- Vol'jin <King of Darkspear Trolls>
UPDATE `creature_template` SET `subname`='King of Darkspear Trolls', `minlevel`=60, `maxlevel`=60 WHERE `entry`=8934;

-- Gina MacGregor <Trade Supplies>
DELETE FROM `npc_vendor` WHERE `entry`=843 AND `item`=39354;

-- Christopher Hewen <General Trade Goods Vendor>
DELETE FROM `npc_vendor` WHERE `entry`=8934 AND `item` IN (10648, 14341, 18256, 30817, 39354);