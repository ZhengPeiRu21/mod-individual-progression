/* To make NPCs added later to the original world maps better fit the Vanilla world, this adjusts their levels to fit Vanilla range */

/* Reduce the level of BG Emissaries to be the same as Vanilla BG emissaries */
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry` IN (30566, 34948, 34950, 34951, 30567, 34949);

/* Stormwind Harbor guards should be the same level as other guards */
UPDATE `creature_template` SET `minlevel` = 45, `maxlevel` = 46 WHERE `entry` IN (29019);
UPDATE `creature_template` SET `minlevel` = 45, `maxlevel` = 45 WHERE `entry` IN (29088, 29152);
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry` IN (29712, 29016, 29154, 28050, 28051);
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60 WHERE `entry` IN (28048, 29144);
UPDATE `creature_template` SET `minlevel` = 58, `maxlevel` = 58 WHERE `entry` IN (28049);

/* Orgrimmar Guards */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60 WHERE `entry` IN (23090);
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry` IN (31564, 31416, 31431);

/* Undercity NPCs */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60 WHERE `entry` IN (36224, 36225, 36226);

/* Blood Knight Honor Guard */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60 WHERE `entry` IN (23131);

/* Locksmiths */
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry` IN (29725, 29728);

/* Event vendors */
UPDATE `creature_template` SET `minlevel` = 35, `maxlevel` = 35 WHERE `entry` IN (34382, 34383, 34653, 38065, 32798, 32799, 26124,
                                                                                  23486, 23710, 26221, 25909, 25925, 25941, 27215,
                                                                                  25944, 34382, 34383, 34653, 34654, 38065, 24657,
                                                                                  24495, 27216, 25906, 25928, 25930, 25932);

UPDATE `creature_template` SET `minlevel` = 37, `maxlevel` = 37 WHERE `entry` IN (25915, 25920, 25914, 25916, 25917, 25919, 25921, 25922);
UPDATE `creature_template` SET `minlevel` = 30, `maxlevel` = 37 WHERE `entry` IN (26123, 26124);
UPDATE `creature_template` SET `minlevel` = 32, `maxlevel` = 37 WHERE `entry` IN (25975, 25920);
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry` IN (37671);

/* Karazhan Quest NPCs */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60, `ScriptName`='npc_ipp_tbc' WHERE `entry` IN (17613);
UPDATE `creature_template` SET `minlevel` = 59, `maxlevel` = 59, `ScriptName`='npc_ipp_tbc' WHERE `entry` IN (18253);  # TODO: This is currently overriding some SmartAI and needs a custom fix
UPDATE `creature_template` SET `minlevel` = 58, `maxlevel` = 58, `ScriptName`='npc_ipp_tbc' WHERE `entry` IN (18255);

/* Arena NPCs */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60, `ScriptName`='npc_ipp_tbc' WHERE `entry` IN
(19915, 19909, 19911, 26012, 26007, 26075, 26307, 26309, 26760, 19912, 19859, 19860, 19861, 21448, 20499, 20497,
 34093, 20278, 33939, 33935, 33934, 30610, 30611, 32407, 32385, 32832, 32383, 33924, 34090, 33928, 33929, 33915,
 34088, 33920, 33917);

/* WotLK Arena NPCs */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60, `ScriptName`='npc_ipp_wotlk' WHERE `entry` IN
(34060, 34063, 34038);

/* PvP Vendors */
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry` IN (32834, 34075, 34078, 34081);

/* Wintergrasp NPCs - These have custom phasing set in their script so we do not need to change the ScriptName*/
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60 WHERE `entry` IN (35611, 35598, 35600, 35599, 35603, 35602);

/* Battlemasters */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60 WHERE `entry` IN (34997, 34998, 35007, 34991, 30578, 30579, 30583, 35021, 35024, 35025, 35598,
35600, 35611, 34988, 34978, 34976, 35008, 34955, 35023, 30580, 30582, 35017, 20385, 35020, 20388);
UPDATE `creature_template` SET `minlevel` = 59, `maxlevel` = 59 WHERE `entry` IN (19848);
UPDATE `creature_template` SET `minlevel` = 51, `maxlevel` = 51 WHERE `entry` IN (20374, 20381, 20386, 20383);

/* New flightmasters */
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry` IN (24366, 37888, 29480, 37915, 23612, 22935, 22931, 40204, 31426);

/* Alicia */
UPDATE `creature_template` SET `minlevel` = 5, `maxlevel` = 5 WHERE `entry` IN (24729);

/* Don Carlos */
UPDATE `creature_template` SET `minlevel` = 58, `maxlevel` = 58 WHERE `entry` IN (28126);

/* Sentinel Stillbough */
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry` IN (36481);

/* Rukua - Draenei Paladin Trainer in Darnassus */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60 WHERE `entry` IN (35281);

/* Boat Crews */
UPDATE `creature_template` SET `minlevel` = 45, `maxlevel` = 45 WHERE `entry` IN (25019, 25020, 24993, 24995, 25051, 25052);
UPDATE `creature_template` SET `minlevel` = 50, `maxlevel` = 50 WHERE `entry` IN (25025, 24456, 25050);
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry` IN (25089, 24841, 24842, 25021, 25022, 25023, 25024, 24996, 24997, 25007, 25054, 25055, 25056);
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60 WHERE `entry` IN (31788, 31763);
UPDATE `creature_template` SET `minlevel` = 52, `maxlevel` = 52 WHERE `entry` IN (31791, 31792, 31793, 31759, 31760, 31761);
UPDATE `creature_template` SET `minlevel` = 54, `maxlevel` = 54 WHERE `entry` IN (31790, 31762);
UPDATE `creature_template` SET `minlevel` = 56, `maxlevel` = 56 WHERE `entry` IN (31789, 31764);
