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
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(3238, 3239, 3240, 3244, 3245, 3246, 3249, 3258, 3279, 3374, 3375, 3378, 3381, 3382, 3392, 3398, 3424, 3435, 3457, 3458, 3459, 3472, 3476, 3634, 4128, 4129, 5848, 5849, 5851, 5859);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(3238, 3239, 3240, 3244, 3245, 3246, 3249, 3258, 3279, 3374, 3375, 3378, 3381, 3382, 3392, 3398, 3424, 3435, 3457, 3458, 3459, 3472, 3476, 3634, 4128, 4129, 5848, 5849, 5851, 5859);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(3238, 0, 0, 0, 9, 0, 100, 0, 5000, 11000, 6000, 12000, 0, 30, 11, 5401, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Stormhide - Within 0-30 Range - Cast Lizard Bolt'),
(3238, 0, 1, 0, 9, 0, 100, 0, 9000, 15000, 9000, 15000, 0, 5, 11, 6730, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Stormhide - Within 0-5 Range  - Cast Head Butt'),
(3239, 0, 0, 0, 9, 0, 100, 0, 4000, 9000, 6000, 12000, 0, 30, 11, 5401, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Thunderhead - Within 0-30 Range - Cast Lizard Bolt'),
(3240, 0, 0, 0, 9, 0, 100, 0, 4000, 9000, 6000, 12000, 0, 30, 11, 5401, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Stormsnout - Within 0-30 Range - Cast Lizard Bolt'),
(3244, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Greater Plainstrider  - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3245, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Ornery Plainstrider   - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3246, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Fleeting Plainstrider - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3249, 0, 0, 0, 9, 0, 100, 0, 3000, 3000, 15000, 15000, 0, 10, 11, 8078, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Greater Thunderhawk - Within 0-10 Range - Cast Thunderclap'),
(3258, 0, 0, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Bristleback Hunter - Within 5-30 Range - Cast Shoot'),
(3258, 0, 1, 0, 9, 0, 100, 0, 9000, 14000, 9000, 14000, 5, 30, 11, 8806, 32, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Bristleback Hunter - Within 5-30 Range - Cast Poisoned Shot'),
(3258, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Bristleback Hunter - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3279, 0, 0, 0, 4, 0, 20, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                      'Witchwing Ambusher - On Aggro - Say Line 0'),
(3374, 0, 0, 0, 0, 0, 100, 1, 0, 5000, 0, 0, 0, 0, 11, 7164, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Bael dun Excavator - In Combat - Cast Defensive Stance (No Repeat)'),
(3374, 0, 1, 0, 9, 0, 100, 0, 3000, 4000, 12000, 13000, 0, 5, 11, 7386, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0,   'Bael dun Excavator - Within 0-5 Range - Cast Sunder Armor'),
(3374, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Bael dun Excavator - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3375, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 6257, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,                'Bael dun Foreman - Within 5-30 Range - Cast Torch Toss (No Repeat)'),
(3375, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Bael dun Foreman - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3378, 0, 0, 0, 0, 0, 100, 0, 0, 2000, 15000, 23000, 0, 0, 11, 6264, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Bael dun Officer - In Combat - Cast Nimble Reflexes'),
(3378, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3391, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Bael dun Officer - On Reset - Cast Thrash'),
(3378, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Bael dun Officer - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3381, 0, 0, 0, 9, 0, 80, 0, 7000, 12500, 10000, 16000, 0, 5, 11, 6253, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Southsea Brigand - Within 0-5 Range  - Cast Backhand'),
(3382, 0, 0, 0, 9, 0, 100, 0, 0, 0, 2300, 3900, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Southsea Cannoneer - Within 5-30 Range - Cast Shoot'),
(3392, 0, 0, 0, 9, 0, 100, 0, 7000, 14000, 10000, 16000, 0, 5, 11, 6253, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Prospector Khazgorm - Within 0-5 Range - Cast Backhand'),
(3398, 0, 0, 0, 9, 0, 100, 0, 5000, 8000, 12000, 13000, 0, 10, 11, 3583, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Gesharahan - Within 0-10 Range - Cast Deadly Poison'),
(3424, 0, 0, 0, 9, 0, 80, 0, 3000, 3000, 15000, 15000, 0, 10, 11, 8078, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Thunderhawk Cloudscraper - Within 0-10 Range - Cast Thunderclap'),
(3435, 0, 0, 0, 9, 0, 100, 0, 7000, 7000, 15000, 15000, 0, 5, 11, 9080, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Lok Orcbane - Within 0-5 Range - Cast Hamstring'),
(3435, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Lok Orcbane - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3457, 0, 0, 0, 1, 0, 100, 0, 0, 0, 1000, 1000, 0, 0, 11, 22766, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Razormane Stalker - OOC - Cast Sneak'),
(3457, 0, 1, 0, 9, 0, 100, 0, 6000, 6000, 1000, 1000, 0, 5, 11, 1758, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Razormane Stalker - In Combat - Cast Sinister Strike'),
(3457, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Bristleback Hunter - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3458, 0, 0, 0, 2, 0, 100, 0, 0, 50, 4000, 7500, 0, 0, 11, 6274, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Razormane Seer - Below 50% Health - Cast Healing Ward'),
(3458, 0, 1, 0, 0, 0, 100, 0, 5000, 11000, 16000, 24000, 0, 0, 11, 6363, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Razormane Seer - In Combat - Cast Searing Totem'),
(3458, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Bristleback Hunter - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3459, 0, 0, 0, 9, 0, 100, 0, 2600, 3300, 9600, 11200, 0, 5, 11, 12057, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Razormane Warfrenzy - Within 0-5 Range - Cast Strike'),
(3472, 0, 0, 0, 9, 0, 80, 0, 4000, 9000, 12000, 15000, 0, 20, 11, 25012, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Washte Pawne - Within 0-20 Range - Cast Lightning Breath'),
(3476, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 232, 34760, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Isha Iwak - On Respawn - Waypoint Start'),
(3634, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 22766, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Deviate Stalker - Out of Combat - Cast Sneak'),
(4128, 0, 0, 0, 9, 0, 100, 0, 2100, 2500, 12100, 12500, 0, 5, 11, 3604, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Hecklefang Stalker - Within 0-5 Range - Cast Tendon Rip'),
(4129, 0, 0, 0, 9, 0, 100, 0, 2100, 2500, 12100, 12500, 0, 5, 11, 3604, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Hecklefang Snarler - Within 0-5 Range - Cast Tendon Rip'),
(5848, 0, 0, 0, 0, 0, 100, 1, 0, 5000, 0, 0, 0, 0, 11, 5242, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Malgin Barleybrew - In Combat - Cast Battle Shout (No Repeat)'),
(5849, 0, 0, 0, 0, 0, 80, 0, 12500, 12500, 10000, 10000, 0, 5, 11, 6253, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Digger Flameforge - Within 0-5 Range - Cast Backhand'),
(5849, 0, 1, 0, 0, 0, 100, 513, 100, 100, 1000, 1000, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,        'Digger Flameforge - In Combat - Enable Combat Movement (No Repeat)'),
(5849, 0, 2, 0, 0, 0, 100, 0, 2000, 2000, 2000, 2000, 0, 0, 11, 7978, 64, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,   'Digger Flameforge - Within 5-30 Range - Cast Throw Dynamite'),
(5849, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Digger Flameforge - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5851, 0, 0, 0, 0, 0, 100, 1, 0, 5000, 0, 0, 0, 0, 11, 7164, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Captain Gerogg Hammertoe - In Combat - Cast Defensive Stance (No Repeat)'),
(5851, 0, 1, 0, 2, 0, 100, 1, 0, 60, 0, 0, 0, 0, 11, 3419, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Captain Gerogg Hammertoe - Between 0-60% Health - Cast Improved Blocking (No Repeat)'),
(5851, 0, 2, 0, 105, 0, 100, 0, 2700, 3200, 12700, 13500, 0, 5, 11, 1672, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Captain Gerogg Hammertoe - Within 0-5 Range - Cast Shield Bash'),
(5851, 0, 3, 0, 2, 0, 100, 1, 0, 30, 30000, 40000, 0, 0, 11, 15062, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Captain Gerogg Hammertoe - Between 0-30% Health - Cast Shield Wall'),
(5859, 0, 0, 0, 0, 0, 100, 1, 0, 5000, 0, 0, 0, 0, 11, 7165, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Hagg Taurenbane - In Combat - Cast Battle Stance (No Repeat)'),
(5859, 0, 1, 0, 9, 0, 100, 0, 0, 0, 9000, 15000, 0, 5, 11, 9080, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Hagg Taurenbane - Within 0-5 Range - Cast Hamstring'),
(5859, 0, 2, 0, 9, 0, 100, 0, 7000, 10000, 7000, 10000, 0, 5, 11, 40505, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Hagg Taurenbane - Within 0-5 Range - Cast Cleave');


-- Isha Iwak, Way Points
DELETE FROM `creature_addon` WHERE `guid` = 15085;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(15085, 34760, 0, 0, 0, 0, 0, NULL);

DELETE FROM `waypoint_data` WHERE `id` = 34760;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
(34760, 1, 1534.19, -4155.62, 40.3488, 5.87661, 0, 0, 0, 100, 0),
(34760, 2, 1544.44, -4162.65, 39.8367, 5.42501, 0, 0, 0, 100, 0),
(34760, 3, 1547.06, -4167.18, 39.6695, 5.17762, 0, 0, 0, 100, 0),
(34760, 4, 1549.27, -4173.07, 39.8041, 4.81634, 0, 0, 0, 100, 0),
(34760, 5, 1549.59, -4176.55, 40.0143, 4.78492, 0, 0, 0, 100, 0),
(34760, 6, 1549.27, -4185.25, 40.5752, 4.46684, 0, 0, 0, 100, 0),
(34760, 7, 1547.36, -4191.98, 41.1029, 4.42364, 0, 0, 0, 100, 0),
(34760, 8, 1545.02, -4206.47, 42.5569, 4.91451, 0, 0, 0, 100, 0),
(34760, 9, 1549.87, -4209.81, 43.1262, 0.025409, 0, 0, 0, 100, 0),
(34760, 10, 1556.84, -4209.16, 43.1146, 0.088241, 0, 0, 0, 100, 0),
(34760, 11, 1570.78, -4207.95, 43.4408, 0.170707, 0, 0, 0, 100, 0),
(34760, 12, 1578.65, -4201.48, 41.6054, 1.43913, 0, 0, 0, 100, 0),
(34760, 13, 1578.36, -4193.4, 40.4334, 1.62762, 0, 0, 0, 100, 0),
(34760, 14, 1577.59, -4179.42, 38.2922, 1.59621, 0, 0, 0, 100, 0),
(34760, 15, 1578.2, -4170.32, 36.9015, 1.392, 0, 0, 0, 100, 0),
(34760, 16, 1578.98, -4167.14, 36.3675, 1.2899, 0, 0, 0, 100, 0),
(34760, 17, 1583.58, -4153.92, 34.3105, 1.17994, 0, 0, 0, 100, 0),
(34760, 18, 1585.63, -4149.37, 33.5837, 1.07392, 0, 0, 0, 100, 0),
(34760, 19, 1592.9, -4137.41, 31.8454, 0.979668, 0, 0, 0, 100, 0),
(34760, 20, 1600.39, -4128.34, 30.441, 0.84615, 0, 0, 0, 100, 0),
(34760, 21, 1605.28, -4123.33, 29.5494, 0.76761, 0, 0, 0, 100, 0),
(34760, 22, 1612.1, -4117.91, 29.4117, 0.55948, 0, 0, 0, 100, 0),
(34760, 23, 1618.23, -4114.54, 29.3931, 0.477013, 0, 0, 0, 100, 0),
(34760, 24, 1630.67, -4108.11, 29.4234, 0.477013, 0, 0, 0, 100, 0),
(34760, 25, 1636.99, -4105.11, 30.5278, 0.422035, 0, 0, 0, 100, 0),
(34760, 26, 1649.34, -4100.88, 32.1672, 0.296371, 0, 0, 0, 100, 0),
(34760, 27, 1656.03, -4098.83, 33.0677, 0.296371, 0, 0, 0, 100, 0),
(34760, 28, 1662.73, -4096.79, 34.0943, 0.296371, 0, 0, 0, 100, 0),
(34760, 29, 1669.42, -4094.74, 35.1439, 0.292444, 0, 0, 0, 100, 0),
(34760, 30, 1682.9, -4090.98, 36.5875, 0.229612, 0, 0, 0, 100, 0),
(34760, 31, 1689.73, -4089.41, 37.4712, 0.225685, 0, 0, 0, 100, 0),
(34760, 32, 1703.37, -4086.27, 39.2406, 0.241393, 0, 0, 0, 100, 0),
(34760, 33, 1708.41, -4084.48, 40.1815, 0.445597, 0, 0, 0, 100, 0),
(34760, 34, 1714.58, -4081.17, 41.1367, 0.516283, 0, 0, 0, 100, 0),
(34760, 35, 1726.33, -4073.58, 43.2032, 0.602677, 0, 0, 0, 100, 0),
(34760, 36, 1733.45, -4065.48, 44.4452, 1.03072, 0, 0, 0, 100, 0),
(34760, 37, 1737.01, -4058.01, 44.2252, 1.23885, 0, 0, 0, 100, 0),
(34760, 38, 1739.29, -4051.39, 44.1904, 1.23885, 0, 0, 0, 100, 0),
(34760, 39, 1742.49, -4039.85, 44.4019, 1.41949, 0, 0, 0, 100, 0),
(34760, 40, 1743.27, -4032.89, 44.9003, 1.47054, 0, 0, 0, 100, 0),
(34760, 41, 1743.66, -4018.92, 46.0975, 1.63548, 0, 0, 0, 100, 0),
(34760, 42, 1741.83, -4009.98, 46.4304, 1.80826, 0, 0, 0, 100, 0),
(34760, 43, 1740.19, -4003.18, 46.776, 1.80826, 0, 0, 0, 100, 0),
(34760, 44, 1737.92, -3993.42, 47.1959, 1.89858, 0, 0, 0, 100, 0),
(34760, 45, 1735.59, -3986.82, 47.4023, 1.89858, 0, 0, 0, 100, 0),
(34760, 46, 1731.16, -3974.04, 47.7736, 1.99676, 0, 0, 0, 100, 0),
(34760, 47, 1725.04, -3962.93, 48.7786, 2.06745, 0, 0, 0, 100, 0),
(34760, 48, 1721.91, -3956.67, 48.8548, 2.02032, 0, 0, 0, 100, 0),
(34760, 49, 1718.72, -3950.45, 48.884, 2.08708, 0, 0, 0, 100, 0),
(34760, 50, 1711.39, -3938.52, 49.4514, 2.10671, 0, 0, 0, 100, 0),
(34760, 51, 1710.75, -3937.45, 49.5897, 5.15013, 0, 0, 0, 100, 0),
(34760, 52, 1717.41, -3949.76, 49.1093, 5.23653, 0, 0, 0, 100, 0),
(34760, 53, 1720.92, -3955.82, 48.9868, 5.23653, 0, 0, 0, 100, 0),
(34760, 54, 1724.42, -3961.88, 48.8632, 5.23653, 0, 0, 0, 100, 0),
(34760, 55, 1731.3, -3974.07, 47.7247, 5.18547, 0, 0, 0, 100, 0),
(34760, 56, 1733.61, -3978.95, 47.3619, 5.07945, 0, 0, 0, 100, 0),
(34760, 57, 1738.11, -3992.2, 47.0133, 5.01662, 0, 0, 0, 100, 0),
(34760, 58, 1740.03, -3998.93, 46.6621, 4.95379, 0, 0, 0, 100, 0),
(34760, 59, 1741.6, -4005.75, 46.3484, 4.89881, 0, 0, 0, 100, 0),
(34760, 60, 1742.94, -4019.68, 46.3714, 4.7653, 0, 0, 0, 100, 0),
(34760, 61, 1743.51, -4026.65, 45.411, 4.79671, 0, 0, 0, 100, 0),
(34760, 62, 1743.7, -4035.07, 44.6985, 4.5768, 0, 0, 0, 100, 0),
(34760, 63, 1740.3, -4048.63, 44.1697, 4.39616, 0, 0, 0, 100, 0),
(34760, 64, 1737.86, -4054.92, 44.2263, 4.29406, 0, 0, 0, 100, 0),
(34760, 65, 1732.44, -4064.89, 44.6653, 4.08594, 0, 0, 0, 100, 0),
(34760, 66, 1728.91, -4069.04, 44.5909, 3.85817, 0, 0, 0, 100, 0),
(34760, 67, 1717.61, -4077.3, 42.2954, 3.76393, 0, 0, 0, 100, 0),
(34760, 68, 1711.86, -4081.3, 41.2839, 3.68931, 0, 0, 0, 100, 0),
(34760, 69, 1701.99, -4086.35, 39.1735, 3.49296, 0, 0, 0, 100, 0),
(34760, 70, 1695.33, -4088.49, 38.0327, 3.40657, 0, 0, 0, 100, 0),
(34760, 71, 1681.66, -4091.51, 36.4152, 3.35159, 0, 0, 0, 100, 0),
(34760, 72, 1674.83, -4093.04, 35.6922, 3.39479, 0, 0, 0, 100, 0),
(34760, 73, 1661.46, -4097.15, 33.9, 3.48904, 0, 0, 0, 100, 0),
(34760, 74, 1654.87, -4099.53, 32.8973, 3.48904, 0, 0, 0, 100, 0),
(34760, 75, 1648.29, -4101.91, 31.8945, 3.48904, 0, 0, 0, 100, 0),
(34760, 76, 1635.13, -4106.68, 29.8892, 3.49296, 0, 0, 0, 100, 0),
(34760, 77, 1628.62, -4109.27, 29.3917, 3.55972, 0, 0, 0, 100, 0),
(34760, 78, 1616.13, -4115.57, 29.3904, 3.6579, 0, 0, 0, 100, 0),
(34760, 79, 1610.95, -4118.95, 29.4436, 3.76393, 0, 0, 0, 100, 0),
(34760, 80, 1600.23, -4127.57, 30.3229, 3.91708, 0, 0, 0, 100, 0),
(34760, 81, 1596.21, -4131.88, 31.0344, 4.02311, 0, 0, 0, 100, 0),
(34760, 82, 1588.24, -4143.35, 32.5916, 4.18018, 0, 0, 0, 100, 0),
(34760, 83, 1584.92, -4149.5, 33.5332, 4.25872, 0, 0, 0, 100, 0),
(34760, 84, 1581.22, -4157.62, 34.7626, 4.40795, 0, 0, 0, 100, 0),
(34760, 85, 1578.15, -4172.11, 37.2176, 4.67891, 0, 0, 0, 100, 0),
(34760, 86, 1578.24, -4179.1, 38.3027, 4.73781, 0, 0, 0, 100, 0),
(34760, 87, 1578.52, -4186.1, 39.4297, 4.83598, 0, 0, 0, 100, 0),
(34760, 88, 1580.67, -4200.98, 41.4163, 4.70247, 0, 0, 0, 100, 0),
(34760, 89, 1575.95, -4206.59, 43.1207, 3.52437, 0, 0, 0, 100, 0),
(34760, 90, 1572.17, -4207.65, 43.3942, 3.30446, 0, 0, 0, 100, 0),
(34760, 91, 1558.28, -4209.37, 43.2461, 3.26911, 0, 0, 0, 100, 0),
(34760, 92, 1551.58, -4210.08, 43.1876, 3.04135, 0, 0, 0, 100, 0),
(34760, 93, 1548.53, -4208.96, 42.9495, 2.53869, 0, 0, 0, 100, 0),
(34760, 94, 1546.13, -4206.49, 42.6289, 1.84754, 0, 0, 0, 100, 0),
(34760, 95, 1547.13, -4200.32, 42.2043, 1.54124, 0, 0, 0, 100, 0),
(34760, 96, 1547.39, -4193.34, 41.2982, 1.43914, 0, 0, 0, 100, 0),
(34760, 97, 1549.63, -4179.76, 40.273, 1.5059, 0, 0, 0, 100, 0),
(34760, 98, 1548.18, -4170.28, 39.731, 1.84754, 0, 0, 0, 100, 0),
(34760, 99, 1545.46, -4164.36, 39.7275, 2.18134, 0, 0, 0, 100, 0),
(34760, 100, 1535.61, -4155.84, 40.2752, 2.845, 0, 0, 0, 100, 0),
(34760, 101, 1532.61, -4155.22, 40.3269, 3.06098, 0, 0, 0, 100, 0),
(34760, 102, 1519.53, -4155.72, 40.3673, 3.24948, 0, 0, 0, 100, 0),
(34760, 103, 1509.72, -4156.01, 40.5048, 3.04135, 0, 0, 0, 100, 0),
(34760, 104, 1504.78, -4155.21, 40.6633, 2.93925, 0, 0, 0, 100, 0),
(34760, 105, 1497.95, -4153.65, 40.909, 2.91176, 0, 0, 0, 100, 0),
(34760, 106, 1490.7, -4152.17, 40.5397, 6.03764, 0, 0, 0, 100, 0),
(34760, 107, 1497.53, -4153.71, 40.8645, 6.11225, 0, 0, 0, 100, 0),
(34760, 108, 1504.48, -4154.5, 40.8085, 6.19865, 0, 0, 0, 100, 0),
(34760, 109, 1514.69, -4155.16, 40.4725, 0.001851, 0, 0, 0, 100, 0),
(34760, 110, 1525.17, -4155.07, 40.3908, 0.009705, 0, 0, 0, 100, 0);
    
-- Miner's Fortune quest
UPDATE `quest_template_locale` SET `Details` = 'Als Werftmeister eines so geschäftigen Hafens wie Ratchet habe ich mein Ohr immer am Puls der Zeit. Ich weiß alles über den Verkehr von Waren und Geld zwischen hier und Booty Bay. Die jüngste Neuigkeit, die ich erfahren habe, betrifft die Felsadermine der Venture Company nordöstlich des Schlickermoores. Einer der Minenarbeiter hat dort einen faustgroßen Smaragd gefunden. Ich kenne ein paar Käufer, die sich die Finger nach so etwas ablecken würden... und ich würde bei einem Verkauf Halbe-Halbe machen.', `CompletedText` = 'Bringt Katzenaugensmaragd zu Werftmeister Dizzywig.', `Objectives` = 'Beschafft Euch von einem der Vorarbeiter oder Vollstrecker der Venture Company den Katzenaugensmaragd und bringt ihn zu Dizzywig.' WHERE `ID` = 896 AND `locale` = 'deDE';
UPDATE `quest_template_locale` SET `Details` = 'Como maestro de los muelles de un puerto tan activo como Trinquete, estoy al tanto de cualquier información. Lo sé todo del intercambio de mercancía y dinero entre este lugar y Bahía del Botín. Lo último que he oído es sobre Mina Pedrusco de Ventura y Cía. al noreste de El Fangal. Uno de los mineros descubrió una esmeralda del tamaño de tu puño. Sé de unos cuantos compradores que estarían interesados en ponerle las manos encima y no me importaría ir a medias en la venta.', `CompletedText` = 'Llévale la esmeralda el maestro de muelle.', `Objectives` = 'Recupera la esmeralda de ojo felino de un vigía de Ventura y Cía. o de uno de sus gorilas para Vertipeluca, el maestro de muelles, en Trinquete.' WHERE `ID` = 896 AND `locale` = 'esES';
UPDATE `quest_template_locale` SET `Details` = 'Como maestro de los muelles de un puerto tan activo como Trinquete, estoy al tanto de cualquier información. Lo sé todo del intercambio de mercancía y dinero entre este lugar y Bahía del Botín. Lo último que he oído es sobre Mina Pedrusco de Ventura y Cía. al noreste de El Fangal. Uno de los mineros descubrió una esmeralda del tamaño de tu puño. Sé de unos cuantos compradores que estarían interesados en ponerle las manos encima y no me importaría ir a medias en la venta.', `CompletedText` = 'Llévale la esmeralda el maestro de muelle.', `Objectives` = 'Recupera la esmeralda de ojo felino de un vigía de Ventura y Cía. o de uno de sus gorilas para Vertipeluca, el maestro de muelles, en Trinquete.' WHERE `ID` = 896 AND `locale` = 'esMX';
UPDATE `quest_template_locale` SET `Details` = 'Etant Maître des quais d''un port plein d''activité comme Ratchet, je prends toujours le pouls de l''information. Je sais tout des échanges de biens et d''argent entre ici et Baie-du-Butin. La dernière nouvelle que j''ai entendue concerne la mine des Pierriers de la KapitalRisk, au nord-est de la Videfange. L''un des mineurs y a découvert une émeraude aussi grosse que votre poing. Je connais quelques acheteurs qui voudraient mettre la main sur un tel joyau, et je suis prêt à faire 50-50.', `CompletedText` = 'Apportez l''Emeraude au Maître des quais Dizzywig.', `Objectives` = 'Prendre l''Emeraude oeil-de-chat à l''un des Surveillants ou l''un des Massacreurs de la KapitalRisk pour le Maître des quais Dizzywig.' WHERE `ID` = 896 AND `locale` = 'frFR';
