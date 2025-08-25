/* 
    This will restore specialization requirements for vanilla crafting recipes.
    This may require a reset of the item WDB cache files. 
*/

/* Dragonscale Leatherworking (10656) */
UPDATE `npc_trainer` SET `ReqSpell` = 10656 WHERE SpellID=10619;      -- Dragonscale Gauntlets
UPDATE `npc_trainer` SET `ReqSpell` = 10656 WHERE SpellID=10650;      -- Dragonscale Breastplate
UPDATE `npc_trainer` SET `ReqSpell` = 10656 WHERE SpellID=24654;      -- Blue Dragonscale Leggings
UPDATE `npc_trainer` SET `ReqSpell` = 10656 WHERE SpellID=24655;      -- Green Dragonscale Gauntlets
UPDATE `npc_trainer` SET `ReqSpell` = 10656 WHERE SpellID=36076;      -- Dragonstrike Leggings
UPDATE `item_template` SET `requiredspell` = 10656 WHERE entry=15726; -- Pattern: Green Dragonscale Breastplate
UPDATE `item_template` SET `requiredspell` = 10656 WHERE entry=15730; -- Pattern: Red Dragonscale Breastplate
UPDATE `item_template` SET `requiredspell` = 10656 WHERE entry=15733; -- Pattern: Green Dragonscale Leggings
UPDATE `item_template` SET `requiredspell` = 10656 WHERE entry=15751; -- Pattern: Blue Dragonscale Breastplate
UPDATE `item_template` SET `requiredspell` = 10656 WHERE entry=15759; -- Pattern: Black Dragonscale Breastplate
UPDATE `item_template` SET `requiredspell` = 10656 WHERE entry=15763; -- Pattern: Blue Dragonscale Shoulders
UPDATE `item_template` SET `requiredspell` = 10656 WHERE entry=15770; -- Pattern: Black Dragonscale Shoulders
UPDATE `item_template` SET `requiredspell` = 10656 WHERE entry=15781; -- Pattern: Black Dragonscale Leggings
UPDATE `item_template` SET `requiredspell` = 10656 WHERE entry=17025; -- Pattern: Black Dragonscale Boots
UPDATE `item_template` SET `requiredspell` = 10656 WHERE entry=19331; -- Pattern: Chromatic Gauntlets
UPDATE `item_template` SET `requiredspell` = 10656 WHERE entry=20382; -- Pattern: Dreamscale Breastplate

/* Elemental Leatherworking (10658) */
UPDATE `npc_trainer` SET `ReqSpell` = 10658 WHERE SpellID=10630;      -- Gauntlets of the Sea
UPDATE `npc_trainer` SET `ReqSpell` = 10658 WHERE SpellID=10632;      -- Helm of Fire
UPDATE `npc_trainer` SET `ReqSpell` = 10658 WHERE SpellID=36074;      -- Blackstorm Leggings
UPDATE `item_template` SET `requiredspell` = 10658 WHERE entry=15732; -- Pattern: Volcanic Leggings
UPDATE `item_template` SET `requiredspell` = 10658 WHERE entry=15734; -- Pattern: Living Shoulders
UPDATE `item_template` SET `requiredspell` = 10658 WHERE entry=15741; -- Pattern: Stormshroud Pants
UPDATE `item_template` SET `requiredspell` = 10658 WHERE entry=15749; -- Pattern: Volcanic Breastplate
UPDATE `item_template` SET `requiredspell` = 10658 WHERE entry=15752; -- Pattern: Living Leggings
UPDATE `item_template` SET `requiredspell` = 10658 WHERE entry=15753; -- Pattern: Stormshroud Armor
UPDATE `item_template` SET `requiredspell` = 10658 WHERE entry=15764; -- Pattern: Stormshroud Shoulders
UPDATE `item_template` SET `requiredspell` = 10658 WHERE entry=15771; -- Pattern: Living Breastplate
UPDATE `item_template` SET `requiredspell` = 10658 WHERE entry=15775; -- Pattern: Volcanic Shoulders
UPDATE `item_template` SET `requiredspell` = 10658 WHERE entry=17023; -- Pattern: Molten Helm
UPDATE `item_template` SET `requiredspell` = 10658 WHERE entry=18519; -- Pattern: Shifting Cloak
UPDATE `item_template` SET `requiredspell` = 10658 WHERE entry=19333; -- Pattern: Molten Belt
UPDATE `item_template` SET `requiredspell` = 10658 WHERE entry=21548; -- Pattern: Stormshroud Gloves

/* Tribal Leatherworking (10660) */
UPDATE `npc_trainer` SET `ReqSpell` = 10660 WHERE SpellID=10621;      -- Wolfshead Helm
UPDATE `npc_trainer` SET `ReqSpell` = 10660 WHERE SpellID=10647;      -- Feathered Breastplate
UPDATE `npc_trainer` SET `ReqSpell` = 10660 WHERE SpellID=36075;      -- Wildfeather Leggings
UPDATE `item_template` SET `requiredspell` = 10660 WHERE entry=15729; -- Pattern: Chimeric Gloves
UPDATE `item_template` SET `requiredspell` = 10660 WHERE entry=15735; -- Pattern: Ironfeather Shoulders
UPDATE `item_template` SET `requiredspell` = 10660 WHERE entry=15737; -- Pattern: Chimeric Boots
UPDATE `item_template` SET `requiredspell` = 10660 WHERE entry=15740; -- Pattern: Frostsaber Boots
UPDATE `item_template` SET `requiredspell` = 10660 WHERE entry=15746; -- Pattern: Chimeric Leggings
UPDATE `item_template` SET `requiredspell` = 10660 WHERE entry=15747; -- Pattern: Frostsaber Leggings
UPDATE `item_template` SET `requiredspell` = 10660 WHERE entry=15755; -- Pattern: Chimeric Vest
UPDATE `item_template` SET `requiredspell` = 10660 WHERE entry=15758; -- Pattern: Devilsaur Gauntlets
UPDATE `item_template` SET `requiredspell` = 10660 WHERE entry=15760; -- Pattern: Ironfeather Breastplate
UPDATE `item_template` SET `requiredspell` = 10660 WHERE entry=15761; -- Pattern: Frostsaber Gloves
UPDATE `item_template` SET `requiredspell` = 10660 WHERE entry=15772; -- Pattern: Devilsaur Leggings
UPDATE `item_template` SET `requiredspell` = 10660 WHERE entry=15779; -- Pattern: Frostsaber Tunic
UPDATE `item_template` SET `requiredspell` = 10660 WHERE entry=17022; -- Pattern: Corehound Boots
UPDATE `item_template` SET `requiredspell` = 10660 WHERE entry=18518; -- Pattern: Hide of the Wild
UPDATE `item_template` SET `requiredspell` = 10660 WHERE entry=19332; -- Pattern: Corehound Belt
UPDATE `item_template` SET `requiredspell` = 10660 WHERE entry=20253; -- Pattern: Warbear Harness
UPDATE `item_template` SET `requiredspell` = 10660 WHERE entry=20254; -- Pattern: Warbear Woolies

/* Armorsmith (9788) */
UPDATE `npc_trainer` SET `ReqSpell` = 9788 WHERE SpellID=9974;       -- Truesilver Breastplate
UPDATE `npc_trainer` SET `ReqSpell` = 9788 WHERE SpellID=9954;       -- Truesilver Gauntlets
UPDATE `npc_trainer` SET `ReqSpell` = 9788 WHERE SpellID=36122;      -- Earthforged Leggings
UPDATE `npc_trainer` SET `ReqSpell` = 9788 WHERE SpellID=36124;      -- Windforged Leggings
UPDATE `item_template` SET `requiredspell` = 9788 WHERE entry=17051; -- Plans: Dark Iron Bracers
UPDATE `item_template` SET `requiredspell` = 9788 WHERE entry=19207; -- Plans: Dark Iron Gauntlets
UPDATE `item_template` SET `requiredspell` = 9788 WHERE entry=19206; -- Plans: Dark Iron Helm
UPDATE `item_template` SET `requiredspell` = 9788 WHERE entry=17052; -- Plans: Dark Iron Leggings
UPDATE `item_template` SET `requiredspell` = 9788 WHERE entry=20040; -- Plans: Dark Iron Boots
UPDATE `item_template` SET `requiredspell` = 9788 WHERE entry=11612; -- Plans: Dark Iron Plate
UPDATE `item_template` SET `requiredspell` = 9788 WHERE entry=12698; -- Plans: Dawnbringer Shoulders
UPDATE `item_template` SET `requiredspell` = 9788 WHERE entry=12696; -- Plans: Demon Forged Breastplate
UPDATE `item_template` SET `requiredspell` = 9788 WHERE entry=12727; -- Plans: Enchanted Thorium Breastplate
UPDATE `item_template` SET `requiredspell` = 9788 WHERE entry=12725; -- Plans: Enchanted Thorium Helm
UPDATE `item_template` SET `requiredspell` = 9788 WHERE entry=12726; -- Plans: Enchanted Thorium Leggings
UPDATE `item_template` SET `requiredspell` = 9788 WHERE entry=17049; -- Plans: Fiery Chain Girdle
UPDATE `item_template` SET `requiredspell` = 9788 WHERE entry=17053; -- Plans: Fiery Chain Shoulders
UPDATE `item_template` SET `requiredspell` = 9788 WHERE entry=12699; -- Plans: Fiery Plate Gauntlets
UPDATE `item_template` SET `requiredspell` = 9788 WHERE entry=12716; -- Plans: Helm of the Great Chief
UPDATE `item_template` SET `requiredspell` = 9788 WHERE entry=12728; -- Plans: Invulnerable Mail
UPDATE `item_template` SET `requiredspell` = 9788 WHERE entry=12717; -- Plans: Lionheart Helm
UPDATE `item_template` SET `requiredspell` = 9788 WHERE entry=12703; -- Plans: Storm Gauntlets
UPDATE `item_template` SET `requiredspell` = 9788 WHERE entry=12720; -- Plans: Stronghold Gauntlets
UPDATE `item_template` SET `requiredspell` = 9788 WHERE entry=22388; -- Plans: Titanic Leggings
UPDATE `item_template` SET `requiredspell` = 9788 WHERE entry=12711; -- Plans: Whitesoul Helm
UPDATE `item_template` SET `requiredspell` = 9788 WHERE entry=12691; -- Plans: Wildthorn Mail

/* Weaponsmith (9787) */
UPDATE `npc_trainer` SET `ReqSpell` = 9787 WHERE SpellID=10003;      -- The Shatterer
UPDATE `npc_trainer` SET `ReqSpell` = 9787 WHERE SpellID=10007;      -- Phantom Blade
UPDATE `npc_trainer` SET `ReqSpell` = 9787 WHERE SpellID=10011;      -- Blight
UPDATE `npc_trainer` SET `ReqSpell` = 9787 WHERE SpellID=10015;      -- Truesilver Champion
UPDATE `npc_trainer` SET `ReqSpell` = 9787 WHERE SpellID=36125;      -- Light Earthforged Blade
UPDATE `npc_trainer` SET `ReqSpell` = 9787 WHERE SpellID=36126;      -- Light Skyforged Axe
UPDATE `npc_trainer` SET `ReqSpell` = 9787 WHERE SpellID=36128;      -- Light Emberforged Hammer
UPDATE `item_template` SET `requiredspell` = 9787 WHERE entry=11610; -- Plans: Dark Iron Pulverizer
UPDATE `item_template` SET `requiredspell` = 9787 WHERE entry=11611; -- Plans: Dark Iron Sunderer
UPDATE `item_template` SET `requiredspell` = 9787 WHERE entry=12839; -- Plans: Heartseeker
UPDATE `item_template` SET `requiredspell` = 9787 WHERE entry=19208; -- Plans: Black Amnesty
UPDATE `item_template` SET `requiredspell` = 9787 WHERE entry=19209; -- Plans: Blackfury

/* Master Swordsmith (17039) */
UPDATE `item_template` SET `requiredspell` = 17039 WHERE entry=12825; -- Plans: Blazing Rapier
UPDATE `item_template` SET `requiredspell` = 17039 WHERE entry=12834; -- Plans: Arcanite Champion
UPDATE `item_template` SET `requiredspell` = 17039 WHERE entry=12836; -- Plans: Frostguard
UPDATE `item_template` SET `requiredspell` = 17039 WHERE entry=12830; -- Plans: Corruption
UPDATE `item_template` SET `requiredspell` = 17039 WHERE entry=17059; -- Plans: Dark Iron Reaver
UPDATE `item_template` SET `requiredspell` = 17039 WHERE entry=19211; -- Plans: Blackguard
UPDATE `item_template` SET `requiredspell` = 17039 WHERE entry=22389; -- Plans: Sageblade

/* Master Hammersmith (17040) */
UPDATE `item_template` SET `requiredspell` = 17040 WHERE entry=12824; -- Plans: Enchanted Battlehammer
UPDATE `item_template` SET `requiredspell` = 17040 WHERE entry=12827; -- Plans: Serenity
UPDATE `item_template` SET `requiredspell` = 17040 WHERE entry=12833; -- Plans: Hammer of the Titans
UPDATE `item_template` SET `requiredspell` = 17040 WHERE entry=12837; -- Plans: Masterwork Stormhammer
UPDATE `item_template` SET `requiredspell` = 17040 WHERE entry=19210; -- Plans: Ebon Hand
UPDATE `item_template` SET `requiredspell` = 17040 WHERE entry=22390; -- Plans: Persuader

/* Master Axesmith (17041) */
UPDATE `item_template` SET `requiredspell` = 17041 WHERE entry=12835; -- Plans: Annihilator
UPDATE `item_template` SET `requiredspell` = 17041 WHERE entry=12838; -- Plans: Arcanite Reaper
UPDATE `item_template` SET `requiredspell` = 17041 WHERE entry=17060; -- Plans: Dark Iron Destroyer
UPDATE `item_template` SET `requiredspell` = 17041 WHERE entry=12821; -- Plans: Dawn's Edge
UPDATE `item_template` SET `requiredspell` = 17041 WHERE entry=19212; -- Plans: Nightfall
