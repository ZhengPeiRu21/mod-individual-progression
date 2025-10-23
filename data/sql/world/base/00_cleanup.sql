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

-- needed to avoid error because zone_burning_steppes is run before zone_hillsbrad_foothills
DELETE FROM `pool_creature` WHERE `pool_entry` IN (601046);

-- undo incorrect waypoint IDs 
DELETE FROM `waypoint_data` WHERE `id` = 48310;  -- Lady Sarevess
DELETE FROM `waypoint_data` WHERE `id` = 101820; -- Rexxar

-- removed unused requirement for Onyxia 40, this is now handled with cpp
DELETE FROM `dungeon_access_requirements` WHERE `dungeon_access_id` = 123;

-- undo incorrect title change
UPDATE `creature_template` SET `subname` = 'Master Blacksmithing Trainer' WHERE `entry` = 16583;

-- alliance battlemasters
DELETE FROM `game_event_creature` WHERE `guid` IN (207918, 207929, 207951, 208042, 208081, 208107);

-- Onyxia wotlk version
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83, `DamageModifier` = 35, `HealthModifier` = 350.0, `ManaModifier` = 1, `mingold` = 93755, `maxgold` = 122438 WHERE `entry` = 10184;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `DamageModifier` = 1, `HealthModifier` = 5 WHERE `entry` = 11262;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `DamageModifier` = 7.5, `HealthModifier` = 70, `ManaModifier` = 1 WHERE `entry` = 12129;

-- Naxx40 - Razuvious
DELETE FROM `spell_script_names` WHERE `spell_id` IN (29107, 55543);

-- Naxx40
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` = 15975;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(15975,0,0,0,0,0,100,2,5000,8000,14000,18000,0,0,11,30043,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Cast Spell IC'),
(15975,0,1,0,0,0,100,4,5000,8000,14000,18000,0,0,11,56032,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Cast Spell IC'),
(15975,0,2,0,0,0,100,0,9000,16000,18000,21000,0,0,11,28434,0,0,0,0,0,5,0,0,0,0,0,0,0,0,'Cast Spell IC');

-- Scourge Invasion Update
UPDATE `creature_template` SET `AIName` = ''   WHERE `entry` = 16136;
UPDATE `creature_template` SET `npcflag` = 1   WHERE `entry` = 16786;
UPDATE `creature_template` SET `npcflag` = 129 WHERE `entry` = 16787;
UPDATE `creature_template` SET `npcflag` = 2   WHERE `entry` IN (29441, 29442);

UPDATE `creature` SET `phaseMask` = 1   WHERE `id1` IN (14682, 14684, 14686, 14690, 14693, 14695);
UPDATE `creature` SET `ScriptName` = '' WHERE `id1` IN (16241, 16255, 16281, 16285, 16359, 16361, 16478, 16484, 16490, 16493, 16494, 16495, 16786, 16787);

-- remove AzerothCore area triggers used by WotLK Scourge Invasion Event
DELETE FROM `areatrigger_involvedrelation` WHERE `id` IN (4092, 4094, 4095, 4096, 4098, 4099, 4100, 4101, 4103, 4104, 4105, 5151, 5152, 5153, 5154, 5158, 5159, 5160, 5161);

-- maraudon cleanup
SET @CGUID  := 349000;
SET @WPID   := 3490000;

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+1 AND @CGUID+32;
DELETE FROM `creature_formations` WHERE `leaderGUID` IN (@CGUID+1, @CGUID+6, @CGUID+11, @CGUID+16, @CGUID+21, @CGUID+26, @CGUID+31);
DELETE FROM `creature_addon` WHERE `guid` IN (@CGUID+1, @CGUID+6, @CGUID+11, @CGUID+16, @CGUID+21, @CGUID+26, @CGUID+31);
DELETE FROM `waypoint_data` WHERE `id` IN (@WPID+10, @WPID+60, @WPID+110, @WPID+160, @WPID+210, @WPID+260, @WPID+310);
DELETE FROM `creature_addon` WHERE `guid` IN (@CGUID+41, @CGUID+42, @CGUID+43, @CGUID+44);

-- Into the Breach cleanup
SET @CGUID  := 640000;
SET @WPID   := 6400000;

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID AND @CGUID+212;
DELETE FROM `creature_formations` WHERE `leaderGUID` IN (@CGUID+6, @CGUID+7, @CGUID+8, @CGUID+200, @CGUID+203, @CGUID+206);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-640006, -640007, -640008);
DELETE FROM `creature_addon` WHERE `guid` IN 
(@CGUID+4, @CGUID+5, @CGUID+6, @CGUID+7, @CGUID+8, @CGUID+9, @CGUID+10, @CGUID+11, @CGUID+12, @CGUID+13, @CGUID+14, @CGUID+15, 
@CGUID+16, @CGUID+17, @CGUID+18, @CGUID+19, @CGUID+20, @CGUID+21, @CGUID+22, @CGUID+102, @CGUID+200, @CGUID+203, @CGUID+206);
DELETE FROM `waypoint_data` WHERE `id` IN 
(@WPID+40, @WPID+50, @WPID+60, @WPID+70, @WPID+80, @WPID+90, @WPID+100, @WPID+110, @WPID+120, @WPID+130, @WPID+140, @WPID+150, 
@WPID+160, @WPID+170, @WPID+180, @WPID+190, @WPID+200, @WPID+0210, @WPID+0220, @WPID+1020, @WPID+2000, @WPID+2030, @WPID+2060);

-- AV cleanup
SET @CGUID  := 670000;
SET @WPID   := 6700000;

DELETE FROM `creature_addon` WHERE `guid` IN (@CGUID+88, @CGUID+89, @CGUID+105, @CGUID+106, @CGUID+114, @CGUID+133, @CGUID+138, @CGUID+139);
DELETE FROM `waypoint_data` WHERE `id` IN (@WPID+880, @WPID+890, @WPID+1050, @WPID+1060, @WPID+1140, @WPID+1330, @WPID+1380, @WPID+1390);
DELETE FROM `creature_addon` WHERE `guid` IN (@CGUID+164, @CGUID+165, @CGUID+181, @CGUID+182, @CGUID+190, @CGUID+209, @CGUID+214, @CGUID+215);
