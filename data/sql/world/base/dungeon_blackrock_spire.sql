-- Dragonspine Door
UPDATE `gameobject` SET `animprogress`=100, `state`=1 WHERE `id`=164725;

-- Doodad_DarkIronBrazier01
UPDATE `gameobject` SET `animprogress`=100, `state`=1 WHERE `id`=175528;

-- Doodad_DarkIronBrazier02
UPDATE `gameobject` SET `animprogress`=100, `state`=1 WHERE `id`=175529;

-- Doodad_DarkIronBrazier03
UPDATE `gameobject` SET `animprogress`=100, `state`=1 WHERE `id`=175530;

-- Doodad_DarkIronBrazier04
UPDATE `gameobject` SET `animprogress`=100, `state`=1 WHERE `id`=175531;

-- Doodad_DarkIronBrazier05
UPDATE `gameobject` SET `animprogress`=100, `state`=1 WHERE `id`=175532;

-- Doodad_DarkIronBrazier06
UPDATE `gameobject` SET `animprogress`=100, `state`=1 WHERE `id`=175533;


/* important blackrock documents (item 12562) is currently a dropped item. it shouldn't be.
this item can be found as a lootable scroll on the ground within LBRS. */
DELETE FROM `creature_loot_template` WHERE `Item` = 12562;

/* gemstones shouldn't have 100% drop rate. should be around 33%.
exact rates unknown. wowhead's listed drop rates aren't correct. */
UPDATE `creature_loot_template` SET `Chance` = 33 WHERE `Item` IN (12335, 12336, 12337);
