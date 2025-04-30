/* Drop chance for Pristine Tigress Fang was incorrectly set to 100 - updated to 4 */
UPDATE `creature_loot_template` SET `Chance` = 4 WHERE `Item` = 3839 AND `Entry` = 772;

/* Drop chance for Aged Gorilla Sinew was incorrectly set to 10 - updated to 2 */
UPDATE `creature_loot_template` SET `Chance` = 2 WHERE `Item` = 3862;

/* Drop chance for Jungle Stalker Feather was incorrectly set to 80 - updated to 20 */
UPDATE `creature_loot_template` SET `Chance` = 20 WHERE `Item` = 3863;
