/* Drop chance for Pristine Tigress Fang was incorrectly set to 100 - updated to 4 */
UPDATE `creature_loot_template` SET `Chance` = 4 WHERE `Item` = 3839 AND `Entry` = 772;
