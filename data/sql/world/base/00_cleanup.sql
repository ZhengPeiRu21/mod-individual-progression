/* Several unused BG NPCs have wrong classes in AC - fix to prevent console warning */
UPDATE `creature_template` SET `unit_class` = 2 WHERE `entry` IN (22742, 22791, 22796, 22792, 22627, 22532, 22774, 22534, 22529, 22537, 22790, 22791, 22637, 22599,
                                                                 32013, 22781, 31930, 32128, 31935, 31927, 31938, 32120, 37332, 32142, 31821, 37248, 37453, 37253,
                                                                 37245, 37256, 37443, 37472, 37341);
UPDATE `creature_template` SET `unit_class` = 1 WHERE `entry` IN (22632, 32055, 31921, 37376);
UPDATE `creature_template` SET `unit_class` = 8 WHERE `entry` IN (29273);

/* Delete unused Creature Addon data */
DELETE FROM `creature_addon` WHERE `guid` IN (133917, 133918, 133919, 133920, 133925);

-- battlemasters
DELETE FROM `game_event_creature` WHERE `guid` IN (207918, 207929, 207951, 208042, 208081, 208107, 208146, 208159, 208185); -- alliance
DELETE FROM `game_event_creature` WHERE `guid` IN (208207, 208240, 208251, 208355, 208368, 208394, 208407); -- horde

-- remove AzerothCore area triggers used by WotLK Scourge Invasion Event
DELETE FROM `areatrigger_involvedrelation` WHERE `id` IN (4092, 4094, 4095, 4096, 4098, 4099, 4100, 4101, 4103, 4104, 4105, 5151, 5152, 5153, 5154, 5158, 5159, 5160, 5161);

-- remove arena season event entries added by AC
DELETE FROM `creature_addon` WHERE `guid` IN (88155, 88156, 88158, 88159, 88160);
DELETE FROM `game_event_creature` WHERE `guid` IN 
(17676, 88155, 88156, 88158, 88159, 88160, 91798, 152022, 152023, 152026, 152027, 152028, 152029, 152030, 152031, 202335, 202336, 
208486, 208487, 208488, 208489, 208491, 208492, 208494, 208496, 208498, 208499, 208500, 208501, 208503, 208504, 208506, 208508);

DELETE FROM `creature`   WHERE `id1`   IN (32405, 32832, 32834);
DELETE FROM `npc_vendor` WHERE `entry` IN (32405, 32832, 32834);
DELETE FROM `creature` WHERE `guid` = 88156 AND `id1` IN (20278); -- Vixton Pinchwhistle


/* the following edits are temporary */

-- no longer hide npc, now hiding vendor items instead
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` IN 
(28701,  -- Timothy Jones <Grand Master Jewelcrafting Trainer>
 32172); -- Harold Winston <Jewelry Vendor>

-- remove unused riding spell list
DELETE FROM `trainer_spell` WHERE `TrainerId` = 648;

-- remove access requirements from database, this is now done with cpp
DELETE FROM `dungeon_access_requirements` WHERE `dungeon_access_id` IN (15, 16, 32, 46, 47, 64);

-- Make Spice Bread learnable for completion's sake, but only after reaching a level when it will no longer allow skipping early cooking
-- no longer needed. you can't get Simple Flour during vanilla.
UPDATE `trainer_spell` SET `ReqSkillRank` = 1 WHERE `SpellID` = 37836;

-- undo Replace orc guards with pre-wrathgate abomination guards -- 00_cleanup
UPDATE `creature` SET `id1` = 36213, `equipment_id` = 1 WHERE `guid` IN 
(17669, 28481, 28485, 28486, 28487, 28488, 28489, 28490, 33823, 33831, 34102, 34103, 34104, 34105, 34106, 38296, 38297, 38298, 38299, 38301, 38302, 38305, 
39019, 39020, 39022, 39023, 39024, 39025, 39026, 41884, 41887, 41888, 41889, 41890, 41891, 41892, 41956, 41960, 41961, 41964, 79264, 79265, 79266, 79267);
UPDATE `creature` SET `equipment_id` = 0 WHERE `guid` IN (34103, 34104, 38297);

-- Restore conversation between Faranell and Wrathgate NPC Kraggosh - 00_cleanup
UPDATE `creature_template` SET `AINAME` = 'SmartAI' WHERE `entry` = 2055;

-- restore AC entries that were wrongly overwritten by AQ war bosses
DELETE FROM `pool_template` WHERE `entry` IN (15813, 15818);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(15813,1,'Thousand Needles - Ore Pool - Iron Deposit / Silver Vein / Gold Vein'),
(15818,1,'Thousand Needles - Ore Pool - Iron Deposit / Silver Vein / Gold Vein');

-- undo phasing
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` IN (15599, 18594, 19227, 25167, 27666, 27667);

