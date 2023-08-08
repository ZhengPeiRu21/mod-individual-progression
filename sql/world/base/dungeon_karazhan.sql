# Restore Enchanting formula drops to their pre-3.1 rates
UPDATE `creature_loot_template` SET `Chance` = 5 WHERE `Item` IN (22559, 22561, 22545, 22560);

# make blackened urn unsellable and give as reward
UPDATE `item_template` SET `Quality` = 1, `SellPrice` = 0, `description` = 'Used to summon Nightbane in Karazhan' WHERE (`entry` = 24140);
UPDATE `quest_template` SET `StartItem` = 24140 WHERE `ID` = 9644;
UPDATE `quest_template_addon` SET `ProvidedItemCount` = 1 WHERE (`ID` = 9644);

# Philanthropist should drop gold
UPDATE `creature_template` SET `mingold` = 110000, `maxgold` = 130000 WHERE (`entry` = 16470);
