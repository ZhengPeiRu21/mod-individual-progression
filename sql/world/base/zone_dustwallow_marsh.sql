/* smart scripts */
-- UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN ();
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(4328, 4329, 4331, 4345, 4356, 23873);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(4328, 4329, 4331, 4345, 4356, 23873);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--

(4328, 0, 1, 0, 0, 0, 100, 0, 0, 0, 15000, 30000, 0, 0, 11, 18968, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Firemane Scalebane - In Combat - Cast Fire Shield'),
(4328, 0, 2, 0, 105, 0, 100, 0, 0, 0, 12000, 17000, 0, 5, 11, 11972, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,        'Firemane Scalebane - Within 0-5 Range - Cast Shield Bash'),
(4328, 0, 3, 0, 9, 0, 100, 0, 3000, 3000, 5000, 9000, 0, 5, 11, 11971, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Firemane Scalebane - Within 0-5 Range - Cast Sunder Armor'),
(4328, 0, 4, 0, 8, 0, 100, 512, 42411, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Firemane Scalebane - On spell hit  - Despawn'), -- Brogg's Totem
(4329, 0, 0, 0, 0, 0, 100, 0, 0, 0, 15000, 30000, 0, 0, 11, 18968, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Firemane Scout - In Combat - Cast Fire Shield'),
(4329, 0, 1, 0, 8, 0, 100, 512, 42411, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Firemane Scout - On spell hit  - Despawn'), -- Brogg's Totem
(4331, 0, 0, 0, 0, 0, 100, 0, 0, 0, 15000, 30000, 0, 0, 11, 18968, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Firemane Ash Tail - In Combat - Cast Fire Shield'),
(4331, 0, 1, 0, 106, 0, 100, 0, 4000, 6000, 12000, 16000, 0, 5, 11, 11969, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Firemane Ash Tail - Within 0-5 Range - Cast Fire Nova'),
(4331, 0, 2, 0, 8, 0, 100, 512, 42411, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Firemane Ash Tail - On spell hit  - Despawn'), -- Brogg's Totem
(4345, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 42455, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                  'Drywallow Daggermaw - On Death - Cast Captured Totem Test Credit'),
(4345, 0, 1, 0, 9, 0, 100, 0, 3000, 3000, 45000, 45000, 0, 5, 11, 11971, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Drywallow Daggermaw - Within 0-5 Range - Cast Pierce Armor'),
(4356, 0, 0, 0, 9, 0, 100, 0, 2300, 2600, 8000, 14000, 0, 5, 11, 3427, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Bloodfen Razormaw - Within 0-5 Range - Cast Infected Wound'),

(23873, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 53625, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                 'Goreclaw the Ravenous - On Aggro - Cast Heroic Leap'),
(23873, 0, 1, 0, 9, 0, 100, 0, 2600, 2900, 17600, 17900, 0, 5, 11, 32019, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Goreclaw the Ravenous - Within 0-5 Range - Cast Gore');


/* Old Vanilla Varian Wrynn Npc in Alcaz during Vanilla phases */
DELETE FROM `creature` WHERE `id1` = 11699 AND `map` = 1;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES
(611699, 11699, 0, 0, 1, 0, 0, 1, 1, 1, -2744.03, -4994.2, 8.26564, 0.0392587, 300, 0, 0, 4121, 0, 0, 0, 0, 0, 'npc_ipp_pre_naxx40', 0, 'Varian Wrynn in Alcaz (Vanilla)');
