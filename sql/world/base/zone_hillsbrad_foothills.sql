/* Drop chance for Humbert's Sword was incorrectly set to 100 - updated to 25 - value copied from VMangos */
UPDATE `creature_loot_template` SET `Chance` = 25 WHERE `Item` = 3693;
