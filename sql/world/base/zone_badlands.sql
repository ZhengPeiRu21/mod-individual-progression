-- fix drop rate Small Stone Shard, quest 710
UPDATE `creature_loot_template` SET `Chance` = 20 WHERE `Item` = 4626;

-- fix drop rate of Indurium Flake from non elites, quest 1108
UPDATE `creature_loot_template` SET `Chance` = 20 WHERE `Item` = 5797 AND `Entry` IN (2893, 2894);
