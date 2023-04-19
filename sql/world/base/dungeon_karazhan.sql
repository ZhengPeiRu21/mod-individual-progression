# Restore Enchanting formula drops to their pre-3.1 rates
UPDATE `creature_loot_template` SET `Chance` = 5 WHERE `Item` IN (22559, 22561, 22545, 22560);
