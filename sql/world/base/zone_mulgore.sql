UPDATE `creature_template` SET `faction` = 14  WHERE `entry` IN (2966, 8554);       -- Battleboar, Chief Sharptusk Thornmantle
UPDATE `creature_template` SET `faction` = 57  WHERE `entry` IN (2989, 2990);       -- Bael'dun Digger, Appraiser
UPDATE `creature_template` SET `faction` = 111 WHERE `entry` IN (2952, 2953, 2954); -- Bristleback Quilboar, Shaman, Battleboar

UPDATE `creature_template` SET `subname` = 'Journeyman Leatherworker'  WHERE `entry` = 3069;  -- Chaw Stronghide <Journeyman Leatherworker>
UPDATE `creature_template` SET `subname` = 'Armorer and Shieldcrafter' WHERE `entry` = 3075;  -- Bronk Steelrage
UPDATE `creature_template` SET `subname` = 'Fisherman'                 WHERE `entry` = 5938;  -- Uthan Stillwater <Fisherman>
UPDATE `creature_template` SET `subname` = 'Skinner'                   WHERE `entry` = 6290;  -- Yonn Deepcut <Skinner>
UPDATE `creature_template` SET `subname` = 'Journeyman Engineer'       WHERE `entry` = 10993; -- Twizwick Sprocketgrind <Journeyman Engineer>

UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry` IN (3210, 3211, 7975); -- guards


DELETE FROM `npc_trainer` WHERE `ID` IN (3069, 3690, 5938, 5939, 6290, 10993);
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES 
(3069,  -380000), -- Chaw Stronghide <Journeyman Leatherworker>
(3690,  -450000), -- Kar Stormsinger <Riding Trainer>
(5938,  -360000), -- Uthan Stillwater <Fisherman>
(5939,  -350000), -- Vira Younghoof <First Aid Trainer>
(6290,  -400000), -- Yonn Deepcut <Skinner>
(10993, -340000); -- Twizwick Sprocketgrind <Journeyman Engineer>


-- The Hunt Begins
DELETE FROM `quest_offer_reward` WHERE `ID` = 747;
INSERT INTO `quest_offer_reward` (`ID`, `RewardText`) VALUES 
(747, 'The tauren of Narache thank you, $n. You show much promise.');

-- The Hunter's Way
DELETE FROM `quest_offer_reward` WHERE `ID` = 861;
INSERT INTO `quest_offer_reward` (`ID`, `RewardText`) VALUES 
(861, 'Skorn Whitecloud is a wise tauren. He has hunted for years and years, and although his body is old, his spirit burns fiercely. We are honored to have him with us.$B$B
 If Skorn sent you to me, then you too must have the hunter\'s spirit. And to have gathered these claws shows your burgeoning skills.$B$BPerhaps you are ready to walk the path.');

-- The Hunt Begins
DELETE FROM `quest_request_items` WHERE `ID` = 747;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `CompletionText`) VALUES 
(747, 1, 'Providing meat and feathers for the tribe is the first step in proving yourself as a hunter before the Chief.');

-- Wildmane Cleansing
DELETE FROM `quest_request_items` WHERE `ID` = 760;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `CompletionText`) VALUES 
(760, 1, 'The last water well remains fetid and poisonous, $N. You must not delay!');


UPDATE `quest_template` SET `Flags` = 0 WHERE `ID` = 1518; -- Call of Earth (Shaman)

UPDATE `quest_template_addon` SET `SpecialFlags` = 0 WHERE `ID` IN (
747,  -- The Hunt Begins
750,  -- The Hunt Continues
752,  -- A Humble Task
753,  -- A Humble Task
755,  -- Rites of the Earthmother
757,  -- Rite of Strength
763,  -- Rites of the Earthmother
780,  -- The Battleboars
1518, -- Call of Earth (Shaman)
1520, -- Call of Earth (Shaman)
1521, -- Call of Earth (Shaman)
1656, -- A Task Unfinished
3093, -- Rune-Inscribed Note
3376  -- Break Sharptusk!
);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (3058, 3068, 5807);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (3058, 3068, 5807);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(3058, 0, 0, 0, 0, 0, 100, 0, 11000, 15000, 0, 0, 0, 0, 11, 6730, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Arra chea   - In Combat - Cast Head Butt'),
(3068, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3583, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,        'Mazzranache - On Reset  - Cast Deadly Poison'),
(3068, 0, 1, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 6268, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Mazzranache - On Aggro  - Cast Rushing Charge'),
(5807, 0, 0, 0, 0, 0, 100, 0, 8000, 12000, 0, 0, 0, 0, 11, 12166, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'The Rake    - In Combat - Cast Muscle Tear');
