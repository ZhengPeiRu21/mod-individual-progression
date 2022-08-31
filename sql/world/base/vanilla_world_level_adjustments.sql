/* To make NPCs added later to the original world maps better fit the Vanilla world, this adjusts their levels to fit Vanilla range */

/* Reduce the level of BG Emissaries to be the same as Vanilla BG emissaries */
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry` IN (30566, 34948, 34950, 34951, 30567, 34949);

/* Stormwind Harbor guards should be the same level as other guards */
UPDATE `creature_template` SET `minlevel` = 45, `maxlevel` = 46 WHERE `entry` IN (29019);
UPDATE `creature_template` SET `minlevel` = 45, `maxlevel` = 45 WHERE `entry` IN (29088, 29152);
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry` IN (29712, 29016, 29154, 28050, 28051);
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60 WHERE `entry` IN (28048, 29144);
UPDATE `creature_template` SET `minlevel` = 58, `maxlevel` = 58 WHERE `entry` IN (28049);

/* Undercity NPCs */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60 WHERE `entry` IN (36224, 36225, 36226);

/* Locksmiths */
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry` IN (29725, 29728);

/* Event vendors */
UPDATE `creature_template` SET `minlevel` = 35, `maxlevel` = 35 WHERE `entry` IN (34382, 34383, 34653, 38065, 32798, 32799, 26124,
                                                                                  23486, 23710, 26221, 25909, 25925, 25941, 27215,
                                                                                  25944, 34382, 34383, 34653, 34654, 38065);

UPDATE `creature_template` SET `minlevel` = 37, `maxlevel` = 37 WHERE `entry` IN (25915, 25920);
UPDATE `creature_template` SET `minlevel` = 30, `maxlevel` = 37 WHERE `entry` IN (26123, 26124);
UPDATE `creature_template` SET `minlevel` = 32, `maxlevel` = 37 WHERE `entry` IN (25975, 25920);

/* Karazhan Quest NPCs */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60 WHERE `entry` IN (17613);
UPDATE `creature_template` SET `minlevel` = 59, `maxlevel` = 59 WHERE `entry` IN (18253);
UPDATE `creature_template` SET `minlevel` = 58, `maxlevel` = 58 WHERE `entry` IN (18255);

/* Arena NPCs */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60, `ScriptName`='npc_ipp_tbc' WHERE `entry` IN
(19915, 19909, 19911, 26012, 26007, 26075, 26307, 26309, 26760);

/* PvP Vendors */
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry` IN (32834, 34075, 34078, 34081);

/* Wintergrasp NPCs */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60, `ScriptName`='npc_ipp_wotlk' WHERE `entry` IN (35611, 35598, 35600);

/* Battlemasters */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60 WHERE `entry` IN (34997, 34998, 35007, 34991, 30578, 30579, 30583, 35021, 35024, 35025, 35598, 35600, 35611);
UPDATE `creature_template` SET `minlevel` = 59, `maxlevel` = 59 WHERE `entry` IN (19848);
UPDATE `creature_template` SET `minlevel` = 51, `maxlevel` = 51 WHERE `entry` IN (20374, 20381, 20386);

/* New flightmasters */
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry` IN (24366, 37888, 29480, 37915);

/* Alicia */
UPDATE `creature_template` SET `minlevel` = 5, `maxlevel` = 5 WHERE `entry` IN (24729);
