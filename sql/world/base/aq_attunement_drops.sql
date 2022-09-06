-- Fix drop rate for Nightmare_corruption
UPDATE `creature_loot_template` SET `Chance` = 5 WHERE `Item` = 21146;
UPDATE `creature_loot_template` SET `Chance` = 5 WHERE `Item` = 21147;
UPDATE `creature_loot_template` SET `Chance` = 5 WHERE `Item` = 21148;

-- FIx drop rate for Narain's Scrying Goggles
UPDATE `creature_loot_template` SET `Chance` = 2 WHERE `Item` = 20951;