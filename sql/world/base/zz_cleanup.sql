DELETE FROM `game_event_creature` WHERE `guid` IN (208146, 208159, 208185, 208207, 208240, 208251, 208355, 208368, 208394, 208407);
DELETE FROM `creature_addon` WHERE `guid` IN (29803, 133925, 133926);

/* Several unused BG NPCs have wrong classes in AC - fix to prevent console warning */
UPDATE `creature_template` SET `unit_class` = 2 WHERE `entry` IN (22742, 22791, 22796, 22792, 22627, 22532, 22774, 22534, 22529, 22537, 22790, 22791, 22637, 22599,
                                                                 32013, 22781, 31930, 32128, 31935, 31927, 31938, 32120, 37332, 32142, 31821, 37248, 37453, 37253,
                                                                 37245, 37256, 37443, 37472, 37341);
UPDATE `creature_template` SET `unit_class` = 1 WHERE `entry` IN (22632, 32055, 31921, 37376);
UPDATE `creature_template` SET `unit_class` = 8 WHERE `entry` IN (29273);

/* Delete unused Creature Addon data */
DELETE FROM `creature_addon` WHERE `guid` IN (133917, 133918, 133919, 133920, 133928);

/* Remove script from database to avoid worldserver error. The code for this script has been commented out. Need to figure out why. */
UPDATE `creature_template` SET `Scriptname` = '' WHERE `entry` = 351042;


-- undo previous method of Lights Hope Chapel phasing 
UPDATE `creature` SET `phaseMask` = 1 WHERE `id1` IN 
(11102, 16112, 16113, 16114, 16115, 16116, 16131, 16132, 16133, 16134, 16135, 16212, 16225, 16228, 16229, 16256, 16283, 16284, 16376, 16378, 17069, 17072);

-- Drop source for 2.3 Jewelcrafting Recipe
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` = 19768; -- disabled for now to prevent the creature from attacking while phased

-- undo TBC vendor phasing
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` IN (17585, 17657, 21655);  

-- UNDO previous cloning method to hide vendor item drops
SET @Nakodu  := 121655;
SET @Urgronn := 117585;
SET @Ulrike  := 117657;

DELETE FROM `creature_template` WHERE `entry` IN (@Nakodu, @Urgronn, @Ulrike);
DELETE FROM `creature_template_addon` WHERE `entry` IN (@Nakodu, @Urgronn, @Ulrike);
DELETE FROM `creature_template_locale` WHERE `entry` IN (@Nakodu, @Urgronn, @Ulrike);
DELETE FROM `creature_template_model` WHERE `CreatureID` IN (@Nakodu, @Urgronn, @Ulrike);
DELETE FROM `creature` WHERE `id1` IN (@Nakodu, @Urgronn, @Ulrike);
DELETE FROM `npc_vendor` WHERE `entry` IN (@Nakodu, @Urgronn, @Ulrike);
DELETE FROM `creature_equip_template` WHERE `CreatureID` = @Ulrike;

-- UNDO previous cloning - SI friendship NPCs
SET @Zarena    := 102482;
SET @Miles     := 103044;
SET @Elissa    := 104165;
SET @Alexander := 105173;
SET @Joanna    := 105698;
SET @Deze      := 115006;

UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` IN (2482, 3044, 4165, 5173, 5698, 15006);
DELETE FROM `creature_template` WHERE `entry` IN (@Zarena, @Miles, @Elissa, @Alexander, @Joanna, @Deze);
DELETE FROM `creature_template_addon` WHERE `entry` IN (@Elissa, @Alexander);
DELETE FROM `creature_template_locale` WHERE `entry` IN (@Zarena, @Miles, @Elissa, @Alexander, @Joanna, @Deze);
DELETE FROM `creature_template_model` WHERE `CreatureID` IN (@Zarena, @Miles, @Elissa, @Alexander, @Joanna, @Deze);
DELETE FROM `creature` WHERE `id1` IN (@Zarena, @Miles, @Elissa, @Alexander, @Joanna, @Deze);
DELETE FROM `creature_equip_template` WHERE `CreatureID` IN (@Zarena, @Miles, @Elissa, @Alexander, @Joanna, @Deze);
DELETE FROM `npc_vendor` WHERE `entry` = @Zarena;
DELETE FROM `npc_trainer` WHERE `ID` = @Elissa;
DELETE FROM `battlemaster_entry` WHERE `entry` = @Deze;

-- alliance battlemasters
DELETE FROM `game_event_creature` WHERE `guid` IN (207918, 207929, 207951, 208042, 208081, 208107);

-- Alterac Valley - now using @CGUID 670000 instead
DELETE FROM `waypoint_data` WHERE `id` IN (6300880, 6300890, 6301050, 6301060, 6301140, 6301330, 6301380, 6301390);
DELETE FROM `creature_addon` WHERE `guid` IN (630088, 630089, 630105, 630106, 630114, 630133, 630138, 630139, 630164, 630165, 630181, 630182, 630190, 630209, 630214, 630215);
