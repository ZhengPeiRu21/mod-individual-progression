DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceEntry` = 0 AND `ConditionTypeOrReference` = 7 AND `SourceGroup` IN (2783, 4206, 4350);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES 
(15, 2783, 0, 7, 164, 50, 'Show menu if blacksmithing is 50 or higher'),  -- Traugh <Expert Blacksmith>
(15, 4206, 0, 7, 165, 50, 'Show menu if leatherworking is 50 or higher'), -- Krulmoo Fullmoon <Expert Leatherworker>
(15, 4350, 0, 7, 197, 50, 'Show menu if tailoring is 50 or higher');      -- Mahani <Expert Tailor>

-- Vile Familiars (Warlock)
DELETE FROM `creature_questender` WHERE `id` = 5765 AND `quest` = 1485;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (5765, 1485);

-- Summon Felsteed (Warlock)
DELETE FROM `creature_questender` WHERE `id` = 6251 AND `quest` IN (3631, 4487, 4488, 4489, 4490);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (6251, 3631), (6251, 4487), (6251, 4488), (6251, 4489), (6251, 4490);

DELETE FROM `creature_queststarter` WHERE `id` = 6251 AND `quest` = 4490;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (6251, 4490);

-- Vile Familiars (Warlock)
DELETE FROM `creature_queststarter` WHERE `id`=5765 AND `quest`=1485;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (5765, 1485);

UPDATE `creature_template` SET `subname` = 'Blacksmithing Supplier'   WHERE `entry` = 3477;-- Hraq <Blacksmithing Supplier>
UPDATE `creature_template` SET `subname` = 'Expert Blacksmith'        WHERE `entry` = 3478; -- Traugh <Expert Blacksmith>
UPDATE `creature_template` SET `subname` = 'Journeyman Tailor'        WHERE `entry` = 3484; -- Kil'hala <Journeyman Tailor>
UPDATE `creature_template` SET `subname` = 'Reagents and Herbs'       WHERE `entry` = 3490; -- Hula'mahi <Reagents and Herbs>
UPDATE `creature_template` SET `subname` = 'Journeyman Engineer'      WHERE `entry` = 3494;-- Tinkerwiz <Journeyman Engineer>
UPDATE `creature_template` SET `subname` = 'Engineering Goods'        WHERE `entry` = 3495;-- Gagsprocket <Engineering Goods>
UPDATE `creature_template` SET `subname` = 'Expert Leatherworker'     WHERE `entry` = 3703;-- Krulmoo Fullmoon <Expert Leatherworker>
UPDATE `creature_template` SET `subname` = 'Expert Tailor'            WHERE `entry` = 3704;-- Mahani <Expert Tailor>
UPDATE `creature_template` SET `subname` = 'Journeyman Leatherworker' WHERE `entry` = 5784;-- Waldor <Journeyman Leatherworker>
UPDATE `creature_template` SET `subname` = 'Skinner'                  WHERE `entry` = 6387;-- Dranh <Skinner>
UPDATE `creature_template` SET `subname` = 'Master Goblin Engineer'   WHERE `entry` = 8738;-- Vazario Linkgrease <Master Goblin Engineer>

UPDATE `creature_template` SET `minlevel` = 15, `maxlevel` = 17 WHERE `entry` = 3634;  -- Deviate Stalker
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry` = 3615;  -- Devrak <Wind Rider Master>
UPDATE `creature_template` SET `minlevel` = 19, `maxlevel` = 19 WHERE `entry` = 3652;  -- Trigore the Lasher
UPDATE `creature_template` SET `minlevel` = 20, `maxlevel` = 20 WHERE `entry` = 3672;  -- Boahn <Druid of the Fang>
UPDATE `creature_template` SET `minlevel` = 40, `maxlevel` = 40 WHERE `entry` = 4380;  -- Darkmist Widow
UPDATE `creature_template` SET `minlevel` = 25, `maxlevel` = 25 WHERE `entry` = 5797;  -- Aean Swiftriver <Alliance Outrunner>
UPDATE `creature_template` SET `minlevel` = 24, `maxlevel` = 24 WHERE `entry` = 5800;  -- Marcus Bel <Alliance Outrunner>
UPDATE `creature_template` SET `minlevel` = 19, `maxlevel` = 19 WHERE `entry` = 5835;  -- Foreman Grills
UPDATE `creature_template` SET `minlevel` = 15, `maxlevel` = 15 WHERE `entry` = 8236;  -- Muck Frenzy
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry` = 10378; -- Omusa Thunderhorn <Wind Rider Master>
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry` = 14717; -- Horde Elite
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry` = 16227; -- Bragok <Flight Master>

UPDATE `creature_template` SET `rank` = 1 WHERE `entry` IN (
3630,   -- Deviate Coiler
3631,   -- Deviate Stinglash
3632,   -- Deviate Creeper
3633,   -- Deviate Slayer
3634,   -- Deviate Stalker
3638,   -- Devouring Ectoplasm
3641,   -- Deviate Lurker
6132,   -- Razorfen Servitor
7872,   -- Death's Head Cultist
7873,   -- Razorfen Battleguard
7874,   -- Razorfen Thornweaver
12865   -- Ambassador Malcin
); 

UPDATE `creature_template` SET `rank` = 2 WHERE `entry` IN (
3652, -- Trigore the Lasher
3672, -- Boahn <Druid of the Fang>
7895  -- Ambassador Bloodrage
);

UPDATE `creature_template` SET `rank` = 4      WHERE `entry` = 4380; -- Darkmist Widow
UPDATE `creature_template` SET `faction` = 16  WHERE `entry` = 3503; -- Silithid Protector
UPDATE `creature_template` SET `gossip_menu_id` = 0, `npcflag` = 2 WHERE `entry` = 3443; -- Grub
UPDATE `creature_template_model` SET `CreatureDisplayID` = 4244    WHERE `CreatureID` = 3465;-- Gilthares Firebough

DELETE FROM `npc_trainer` WHERE `ID` IN (3478, 3484, 3494, 3703, 3704, 5784, 6387, 8306, 8738);
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES 
(3478, -310000), -- Traugh <Expert Blacksmith>
(3478, -310001), -- Traugh <Expert Blacksmith>
(3484, -410000), -- Kil'hala <Journeyman Tailor>
(3494, -340000), -- Tinkerwiz <Journeyman Engineer>
(3703, -380000), -- Krulmoo Fullmoon <Expert Leatherworker>
(3703, -380001), -- Krulmoo Fullmoon <Expert Leatherworker>
(3704, -410000), -- Mahani <Expert Tailor>
(3704, -410001), -- Mahani <Expert Tailor>
(5784, -380000), -- Waldor <Journeyman Leatherworker>
(6387, -400000), -- Dranh <Skinner>
(8306, -320000); -- Duhng <Cook>


-- this should go to vanilla_vendors
DELETE FROM `npc_vendor` WHERE `entry` = 3443;                                     -- Grub
DELETE FROM `npc_vendor` WHERE `entry` = 3482 AND `item` = 39354;                  -- Tari'qa <Trade Supplies>
DELETE FROM `npc_vendor` WHERE `entry` = 3485 AND `item` = 38426;                  -- Wrahk <Tailoring Supplies>
DELETE FROM `npc_vendor` WHERE `entry` = 3495 AND `item` IN (14639, 39684, 40533); -- Gagsprocket <Engineering Goods>
DELETE FROM `npc_vendor` WHERE `entry` = 3499 AND `item` IN (20855, 39354);        -- Ranik <Trade Supplies>
DELETE FROM `npc_vendor` WHERE `entry` = 5783 AND `item` = 38426;                  -- Kalldan Felmoon <Specialist Leatherworking Supplies>
DELETE FROM `npc_vendor` WHERE `entry` = 5944 AND `item` = 38426;                  -- Yonada <Tailoring & Leatherworking Supplies>
DELETE FROM `npc_vendor` WHERE `entry` = 8307 AND `item` = 30817;                  -- Tarban Hearthgrain <Baker>
DELETE FROM `npc_vendor` WHERE `entry` = 14754 AND `item` = 30498;                 -- Kelm Hargunth <Warsong Supply Officer>

-- Hula'mahi <Reagents and Herbs>
DELETE FROM `npc_vendor` WHERE `entry`=3490 AND `item` IN (21835, 21927, 22053, 22054, 22055, 22147, 22148, 37201, 43230, 43231, 43232, 43233, 43234, 43235, 43237);
DELETE FROM `npc_vendor` WHERE `entry`=3490 AND `item`=8925;
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES (3490, 8925);

-- The Angry Scytheclaws
DELETE FROM `quest_offer_reward` WHERE `ID` = 905;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `RewardText`) VALUES 
(905, 1, 'So you\'ve been to the nests and placed the feathers of your prey within them. That took a fair portion of courage, no doubt about it.$B$B
 Do you feel a little tougher, $N? Because you look tougher now then when you first came here. I guess the Barrens is doing its job.');

-- Call of Water (Shaman)
DELETE FROM `quest_request_items` WHERE `ID` = 63;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `CompletionText`) VALUES 
(63, 1, 'The brazier still reflects the ambient light from the area, and the flame shifts slightly as you move closer.$B$B
 The corruption along the hills seems to have kept its distance, and besides the missing components, the brazier looks prepared for the ritual to summon a cleansed manifestation of water.');

-- Hamuul Runetotem
DELETE FROM `quest_request_items` WHERE `ID` = 1489;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `CompletionText`) VALUES (1489, 1, NULL);

UPDATE `quest_template` SET `LogDescription` = 'Bring the Shard of Water to Islen Waterseer in the Barrens.'       WHERE `ID` = 96;   -- Call of Water (Shaman)
UPDATE `quest_template` SET `LogDescription` = 'Bring the Vial of Purest Water to Islen Waterseer in the Barrens.' WHERE `ID` = 220;  -- Call of Water (Shaman)
UPDATE `quest_template` SET `LogDescription` = 'Speak with Ziz Fizziks in Windshear Crag.'                         WHERE `ID` = 1483; -- Ziz Fizziks
UPDATE `quest_template` SET `LogDescription` = 'Find Brine in Southern Barrens.'                                   WHERE `ID` = 1530; -- Call of Water (Shaman)
UPDATE `quest_template` SET `LogDescription` = 'Speak with Mura Runetotem in the Sepulcher.'                       WHERE `ID` = 3301; -- Mura Runetotem

UPDATE `quest_template_addon` SET `PrevQuestID` = 882  WHERE `ID` = 1130; -- Melor Sends Word
UPDATE `quest_template_addon` SET `PrevQuestID` = 1799 WHERE `ID` = 4962; -- Shard of a Felhound (Warlock)
UPDATE `quest_template_addon` SET `PrevQuestID` = 1799 WHERE `ID` = 4963; -- Shard of an Infernal (Warlock)
UPDATE `quest_template_addon` SET `PrevQuestID` = 4962 WHERE `ID` = 4964; -- The Completed Orb of Dar Orahil (Warlock)
UPDATE `quest_template_addon` SET `PrevQuestID` = 4963 WHERE `ID` = 4975; -- The Completed Orb of Noh Orahil (Warlock)
UPDATE `quest_template_addon` SET `PrevQuestID` = 871  WHERE `ID` = 5041; -- Supplies for the Crossroads

DELETE FROM `creature_text` WHERE `CreatureID` = 3279;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(3279, 0, 0, 'A fine trophy your head will make, $R.',  12, 0, 100, 0, 0, 0, 2229, 0, 'Witchwing Ambusher'),
(3279, 0, 1, 'My talons will shred your puny body, $R', 12, 0, 100, 0, 0, 0, 2230, 0, 'Witchwing Ambusher'),
(3279, 0, 2, 'You will be easy prey, $C.',              12, 0, 100, 0, 0, 0, 2231, 0, 'Witchwing Ambusher');

-- smart scripts
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (3244, 3245, 3246, 3279, 3398, 3634);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (3244, 3245, 3246, 3279, 3398, 3634);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
    
(3244, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Greater Plainstrider  - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3245, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Ornery Plainstrider   - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3246, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Fleeting Plainstrider - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3279, 0, 0, 0, 4, 0, 20, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                       'Witchwing Ambusher    - On Aggro - Say Line 0'),
(3398, 0, 0, 0, 9, 0, 100, 0, 5000, 8000, 120000, 130000, 0, 10, 11, 3583, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Gesharahan            - Within 0-10 Range - Cast Deadly Poison'),
(3634, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 22766, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Deviate Stalker       - Out of Combat - Cast Sneak');
    
