/* Several unused BG NPCs have wrong classes in AC - fix to prevent console warning */
UPDATE `creature_template` SET `unit_class` = 2 WHERE `entry` IN (22742, 22791, 22796, 22792, 22627, 22532, 22774, 22534, 22529, 22537, 22790, 22791, 22637, 22599,
                                                                 32013, 22781, 31930, 32128, 31935, 31927, 31938, 32120, 37332, 32142, 31821, 37248, 37453, 37253,
                                                                 37245, 37256, 37443, 37472, 37341);
UPDATE `creature_template` SET `unit_class` = 1 WHERE `entry` IN (22632, 32055, 31921, 37376);
UPDATE `creature_template` SET `unit_class` = 8 WHERE `entry` IN (29273);

/* Delete unused Creature Addon data */
DELETE FROM `creature_addon` WHERE `guid` IN (133917, 133918, 133919, 133920, 133925);

-- battlemasters
DELETE FROM `game_event_creature` WHERE `guid` IN (207918, 207929, 207951, 208042, 208081, 208107, 208146, 208159, 208185, 208511, 208512); -- alliance
DELETE FROM `game_event_creature` WHERE `guid` IN (208207, 208240, 208251, 208355, 208368, 208394, 208407, 208509, 208510); -- horde

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

-- remove pvp progression requirements to show pvp gear. added rank requirements back
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 23 AND `ConditionTypeOrReference` = 8 AND `Comment` = "Vanilla PvP Ranked Gear (IPP)";

-- remove vanilla AV landmines, default is no landmines
SET @OGUID := 657000;
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+101 AND @OGUID+499;

-- undo changes made to wotlk naxx creatures - 00_cleanup.sql
UPDATE `creature_template` SET `CreatureImmunitiesId` = -420 WHERE `entry` IN (16168, 16446);
UPDATE `creature_template` SET `CreatureImmunitiesId` = -417 WHERE `entry` IN (16243);
UPDATE `creature_template` SET `CreatureImmunitiesId` = -416 WHERE `entry` IN (15976, 15978, 15979);
UPDATE `creature_template` SET `CreatureImmunitiesId` = -415 WHERE `entry` IN (16573);
UPDATE `creature_template` SET `CreatureImmunitiesId` = -414 WHERE `entry` IN (15980, 15981, 16506);
UPDATE `creature_template` SET `CreatureImmunitiesId` = -413 WHERE `entry` IN (15974, 15975, 16505);
UPDATE `creature_template` SET `CreatureImmunitiesId` = -412 WHERE `entry` IN (16126);
UPDATE `creature_template` SET `CreatureImmunitiesId` = -411 WHERE `entry` IN (16441);
UPDATE `creature_template` SET `CreatureImmunitiesId` = -410 WHERE `entry` IN (15928, 15929, 15930, 15931, 15932, 15936, 15952, 15953, 15954, 15956, 15989, 15990, 16011, 16060, 16061, 16063, 16064, 16065);
UPDATE `creature_template` SET `CreatureImmunitiesId` = -406 WHERE `entry` IN (16062);
UPDATE `creature_template` SET `CreatureImmunitiesId` = -405 WHERE `entry` IN (16017, 16018, 16029);
UPDATE `creature_template` SET `CreatureImmunitiesId` = -404 WHERE `entry` IN (16194, 16215, 16216);
UPDATE `creature_template` SET `CreatureImmunitiesId` = -403 WHERE `entry` IN (16021, 16165, 16368);
UPDATE `creature_template` SET `CreatureImmunitiesId` = -402 WHERE `entry` IN (16428, 16429);
UPDATE `creature_template` SET `CreatureImmunitiesId` = -401 WHERE `entry` IN (16034);
UPDATE `creature_template` SET `CreatureImmunitiesId` = -399 WHERE `entry` IN (16037);
UPDATE `creature_template` SET `CreatureImmunitiesId` = -398 WHERE `entry` IN (16036, 16056, 16057, 16236, 16297, 16698, 17055);
UPDATE `creature_template` SET `CreatureImmunitiesId` = -397 WHERE `entry` IN (16984);
UPDATE `creature_template` SET `CreatureImmunitiesId` = -396 WHERE `entry` IN (16447);
UPDATE `creature_template` SET `CreatureImmunitiesId` = -395 WHERE `entry` IN (16290);
UPDATE `creature_template` SET `CreatureImmunitiesId` = -394 WHERE `entry` IN (16375);
UPDATE `creature_template` SET `CreatureImmunitiesId` = -393 WHERE `entry` IN (16024);
UPDATE `creature_template` SET `CreatureImmunitiesId` = -392 WHERE `entry` IN (16020);
UPDATE `creature_template` SET `CreatureImmunitiesId` = -391 WHERE `entry` IN (16167);
UPDATE `creature_template` SET `CreatureImmunitiesId` = -390 WHERE `entry` IN (16164);
UPDATE `creature_template` SET `CreatureImmunitiesId` = -389 WHERE `entry` IN (16022, 16981);
UPDATE `creature_template` SET `CreatureImmunitiesId` = -388 WHERE `entry` IN (16150);
UPDATE `creature_template` SET `CreatureImmunitiesId` = -387 WHERE `entry` IN (16244, 16360, 16427, 16983);
UPDATE `creature_template` SET `CreatureImmunitiesId` = -385 WHERE `entry` IN (16156);
UPDATE `creature_template` SET `CreatureImmunitiesId` = -384 WHERE `entry` IN (16149);
UPDATE `creature_template` SET `CreatureImmunitiesId` = -383 WHERE `entry` IN (16124);
UPDATE `creature_template` SET `CreatureImmunitiesId` = -382 WHERE `entry` IN (16127);
UPDATE `creature_template` SET `CreatureImmunitiesId` = -375 WHERE `entry` IN (30183, 16486);
UPDATE `creature_template` SET `CreatureImmunitiesId` = -303 WHERE `entry` IN (16193);
UPDATE `creature_template` SET `CreatureImmunitiesId` = -286 WHERE `entry` IN (16028);
UPDATE `creature_template` SET `CreatureImmunitiesId` = -93  WHERE `entry` IN (23561, 23562, 23563, 25463, 25465, 28357, 28658, 28890, 28919, 29112, 29113, 31099);
UPDATE `creature_template` SET `CreatureImmunitiesId` =  0   WHERE `entry` IN (16082, 16137, 16286, 16363, 16385, 16400, 16419, 20350, 20423, 23876, 28619);
