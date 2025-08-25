-- Gina MacGregor <Trade Supplies>
DELETE FROM `npc_vendor` WHERE `entry`=843 AND `item`=39354;

-- Christopher Hewen <General Trade Goods Vendor>
DELETE FROM `npc_vendor` WHERE `entry`=8934 AND `item` IN (10648, 14341, 18256, 30817, 39354);

-- Restore Defias Pillager to original Fireball spell (was nerfed in 2.3)
DELETE FROM `creature_template_spell` WHERE `CreatureID`=589 AND `Index`=0;
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES (589, 0, 19816, 12340);
UPDATE `smart_scripts` SET `action_param1` = 19816 WHERE `entryorguid`=589 AND `source_type`=0 AND `id`=2 AND `link`=0;