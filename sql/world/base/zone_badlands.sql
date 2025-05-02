-- fix drop rate of Indurium Flakes from non elites.
UPDATE `creature_loot_template` SET `Chance` = 20 WHERE `Item` = 5797 AND `Entry` IN (2893, 2894);
