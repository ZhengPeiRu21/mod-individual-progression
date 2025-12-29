/*-- SCOURCE INVASION - WotLK additions --*/

SET @CGUID    := 660000;
SET @OGUID    := 660000;
SET @IPPPHASE := 65536;

/* Creature Tenris Mirkblood in Karazhan (Phasing) */
UPDATE `creature` SET `phaseMask` = @IPPPHASE WHERE `id1` = 28194; -- Prince Tenris Mirkblood

/* Gobject for Tenris Mirkblood room in Karazhan */

/* Setup quest items */
UPDATE `quest_template` SET `AreaDescription` = 'Search the chamber of Tenris Mirkblood.' WHERE `ID` = 12616;

DELETE FROM `smart_scripts` WHERE `source_type` = 1 AND `entryorguid` = 190610;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(190610, 1, 0, 0, 70, 0, 100, 0, 2, 0, 0, 0, 0, 0, 70, 120, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `gameobject_questitem` WHERE `GameObjectEntry` = 190610 AND `Idx` IN (0);
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES
(190610, 0, 38629, 0);

DELETE FROM `gameobject_template_addon` WHERE `entry` = 190610;
INSERT INTO `gameobject_template_addon` (`entry`, `faction`, `flags`, `mingold`, `maxgold`, `artkit0`, `artkit1`, `artkit2`, `artkit3`) VALUES
(190610, 0, 4, 0, 0, 0, 0, 0, 0);

DELETE FROM `gameobject_loot_template` WHERE `Entry` = @OGUID+2990;
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(@OGUID+2990, 38629, 0, 100, 1, 1, 0, 1, 1, '');

DELETE FROM `gameobject_template` WHERE `entry` = 190610;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
(190610, 3, 220, 'Orders from the Lich King', '', 'Reading orders', '', 1, 43, @OGUID+2990, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartGameObjectAI', '', 49345);

DELETE FROM `gameobject` WHERE `map` = 532 AND `id` IN (190604, 190609, 190610);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`, `ScriptName`) VALUES 
(@OGUID+2990, 190610, 532, 0, 0, 1, 1, -11083.367, -1972.86, 77.576, 3.11328, 0, 0, 0, 0, 120, 100, 1, 0, 'gobject_ipp_si'),
(@OGUID+2991, 190609, 532, 0, 0, 1, 1, -11082.5, -1973.44, 77.5755, 1.36805, 0, 0, 0, 0, 120, 100, 1, 0, 'gobject_ipp_si'),
(@OGUID+2992, 190604, 532, 0, 0, 1, 1, -11085.7, -1981.78, 76.1737, 2.91534, 0, 0, 0, 0, 120, 100, 1, 0, 'gobject_ipp_si'),
(@OGUID+2993, 190604, 532, 0, 0, 1, 1, -11087.4, -1996.69, 76.1779, 1.81579, 0, 0, 0, 0, 120, 100, 1, 0, 'gobject_ipp_si'),
(@OGUID+2994, 190604, 532, 0, 0, 1, 1, -11100.9, -1978.69, 76.1755	, 1.32579, 0, 0, 0, 0, 120, 100, 1, 0, 'gobject_ipp_si');

/* Make trinket works: Monster Slayer's Kit (40354) */
/* spell_item_monster_slayer_s_kit is not implemented in AzerothCore at the moment, we are replacing it */
DELETE FROM `spell_script_names` WHERE `spell_id` = 54092;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (54092, 'spell_item_six_demon_bag');

/* Broll and Valeera at Stormwind Harbor */
DELETE FROM `creature` WHERE `id1` IN (29604, 29607) and `map` = 0;
-- INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, 
-- `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
-- (@CGUID+2990, 29604, 0, 0, 0, 0, 0, 1, 1, 0, -8541.75, 1017.81, 89.7305, 0.897277, 300, 0, 0, 151200, 0, 0, 0, 0, 0, '', 'toDo', 0, NULL), -- to do
-- (@CGUID+2991, 29607, 0, 0, 0, 0, 0, 1, 1, 0, -8540.83, 1016.55, 89.7305, 0.818736, 300, 0, 0, 126000, 0, 0, 0, 0, 0, '', 'toDo', 0, NULL); -- to do
