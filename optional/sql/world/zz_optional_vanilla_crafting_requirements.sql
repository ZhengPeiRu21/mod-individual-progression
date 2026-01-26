/* 
    This will restore specialization requirements for vanilla crafting recipes.
    This may require a reset of the item WDB cache files. 
*/

/* Dragonscale Leatherworking (10656) */
UPDATE `trainer_spell` SET `ReqAbility1` = 10656 WHERE `SpellID` IN
(10619,  -- Dragonscale Gauntlets
 10650,  -- Dragonscale Breastplate
 24654,  -- Blue Dragonscale Leggings
 24655,  -- Green Dragonscale Gauntlets
 36076); -- Dragonstrike Leggings

UPDATE `item_template` SET `requiredspell` = 10656 WHERE `entry` IN 
(15726,  -- Pattern: Green Dragonscale Breastplate
 15730,  -- Pattern: Red Dragonscale Breastplate
 15733,  -- Pattern: Green Dragonscale Leggings
 15751,  -- Pattern: Blue Dragonscale Breastplate
 15759,  -- Pattern: Black Dragonscale Breastplate
 15763,  -- Pattern: Blue Dragonscale Shoulders
 15770,  -- Pattern: Black Dragonscale Shoulders
 15781,  -- Pattern: Black Dragonscale Leggings
 17025,  -- Pattern: Black Dragonscale Boots
 18517,  -- Pattern: Chromatic Cloak
 19331,  -- Pattern: Chromatic Gauntlets
 20382); -- Pattern: Dreamscale Breastplate

/* Elemental Leatherworking (10658) */
UPDATE `trainer_spell` SET `ReqAbility1` = 10658 WHERE `SpellID` IN 
(10630,  -- Gauntlets of the Sea
 10632,  -- Helm of Fire
 36074); -- Blackstorm Leggings

UPDATE `item_template` SET `requiredspell` = 10658 WHERE `entry` IN 
(15732,  -- Pattern: Volcanic Leggings
 15734,  -- Pattern: Living Shoulders
 15741,  -- Pattern: Stormshroud Pants
 15749,  -- Pattern: Volcanic Breastplate
 15752,  -- Pattern: Living Leggings
 15753,  -- Pattern: Stormshroud Armor
 15764,  -- Pattern: Stormshroud Shoulders
 15771,  -- Pattern: Living Breastplate
 15775,  -- Pattern: Volcanic Shoulders
 17023,  -- Pattern: Molten Helm
 18519,  -- Pattern: Shifting Cloak
 19333,  -- Pattern: Molten Belt
 21548); -- Pattern: Stormshroud Gloves

/* Tribal Leatherworking (10660) */
UPDATE `trainer_spell` SET `ReqAbility1` = 10660 WHERE `SpellID` IN 
(10621,  -- Wolfshead Helm
 10647,  -- Feathered Breastplate
 36075); -- Wildfeather Leggings

UPDATE `item_template` SET `requiredspell` = 10660 WHERE `entry` IN 
(15729,  -- Pattern: Chimeric Gloves
 15735,  -- Pattern: Ironfeather Shoulders
 15737,  -- Pattern: Chimeric Boots
 15740,  -- Pattern: Frostsaber Boots
 15746,  -- Pattern: Chimeric Leggings
 15747,  -- Pattern: Frostsaber Leggings
 15755,  -- Pattern: Chimeric Vest
 15758,  -- Pattern: Devilsaur Gauntlets
 15760,  -- Pattern: Ironfeather Breastplate
 15761,  -- Pattern: Frostsaber Gloves
 15772,  -- Pattern: Devilsaur Leggings
 15779,  -- Pattern: Frostsaber Tunic
 17022,  -- Pattern: Corehound Boots
 18518,  -- Pattern: Hide of the Wild
 19332,  -- Pattern: Corehound Belt
 20253,  -- Pattern: Warbear Harness
 20254); -- Pattern: Warbear Woolies

/* Armorsmith (9788) */
UPDATE `trainer_spell` SET `ReqAbility1` = 9788 WHERE `SpellID` IN 
(9974,   -- Truesilver Breastplate
 9954,   -- Truesilver Gauntlets
 36122,  -- Earthforged Leggings
 36124); -- Windforged Leggings

UPDATE `item_template` SET `requiredspell` = 9788 WHERE `entry` IN 
(17051,  -- Plans: Dark Iron Bracers
 19207,  -- Plans: Dark Iron Gauntlets
 19206,  -- Plans: Dark Iron Helm
 17052,  -- Plans: Dark Iron Leggings
 20040,  -- Plans: Dark Iron Boots
 11612,  -- Plans: Dark Iron Plate
 12698,  -- Plans: Dawnbringer Shoulders
 12696,  -- Plans: Demon Forged Breastplate
 12727,  -- Plans: Enchanted Thorium Breastplate
 12725,  -- Plans: Enchanted Thorium Helm
 12726,  -- Plans: Enchanted Thorium Leggings
 17049,  -- Plans: Fiery Chain Girdle
 17053,  -- Plans: Fiery Chain Shoulders
 12699,  -- Plans: Fiery Plate Gauntlets
 12716,  -- Plans: Helm of the Great Chief
 12728,  -- Plans: Invulnerable Mail
 12717,  -- Plans: Lionheart Helm
 12703,  -- Plans: Storm Gauntlets
 12720,  -- Plans: Stronghold Gauntlets
 22388,  -- Plans: Titanic Leggings
 12711,  -- Plans: Whitesoul Helm
 12691); -- Plans: Wildthorn Mail

/* Weaponsmith (9787) */
UPDATE `trainer_spell` SET `ReqAbility1` = 9787 WHERE `SpellID` IN 
(10003,  -- The Shatterer
 10007,  -- Phantom Blade
 10011,  -- Blight
 10015,  -- Truesilver Champion
 36125,  -- Light Earthforged Blade
 36126,  -- Light Skyforged Axe
 36128); -- Light Emberforged Hammer

UPDATE `item_template` SET `requiredspell` = 9787 WHERE `entry` IN 
(11610,  -- Plans: Dark Iron Pulverizer
 11611,  -- Plans: Dark Iron Sunderer
 12839,  -- Plans: Heartseeker
 19208,  -- Plans: Black Amnesty
 19209); -- Plans: Blackfury

/* Master Swordsmith (17039) */
UPDATE `item_template` SET `requiredspell` = 17039 WHERE `entry` IN 
(12825,  -- Plans: Blazing Rapier
 12834,  -- Plans: Arcanite Champion
 12836,  -- Plans: Frostguard
 12830,  -- Plans: Corruption
 17059,  -- Plans: Dark Iron Reaver
 19211,  -- Plans: Blackguard
 22389); -- Plans: Sageblade

/* Master Hammersmith (17040) */
UPDATE `item_template` SET `requiredspell` = 17040 WHERE `entry` IN 
(12824,  -- Plans: Enchanted Battlehammer
 12827,  -- Plans: Serenity
 12833,  -- Plans: Hammer of the Titans
 12837,  -- Plans: Masterwork Stormhammer
 19210,  -- Plans: Ebon Hand
 22390); -- Plans: Persuader

/* Master Axesmith (17041) */
UPDATE `item_template` SET `requiredspell` = 17041 WHERE `entry` IN 
(12835,  -- Plans: Annihilator
 12838,  -- Plans: Arcanite Reaper
 17060,  -- Plans: Dark Iron Destroyer
 12821,  -- Plans: Dawn's Edge
 19212); -- Plans: Nightfall
