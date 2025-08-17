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
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (3476);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(3238, 3239, 3240, 3244, 3245, 3246, 3249, 3258, 3279, 3374, 3375, 3378, 3381, 3382, 3392, 3398, 3424, 3435, 3457, 3458, 3459, 3472, 3634, 
4128, 4129, 5848, 5849, 5851, 5859, 7872, 7873, 7874, 12865);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(3238, 3239, 3240, 3244, 3245, 3246, 3249, 3258, 3279, 3374, 3375, 3378, 3381, 3382, 3392, 3398, 3424, 3435, 3457, 3458, 3459, 3472, 3634, 
4128, 4129, 5848, 5849, 5851, 5859, 7872, 7873, 7874, 12865);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(3238, 0, 0, 0, 9, 0, 100, 0, 0, 0, 6000, 12000, 0, 30, 11, 5401, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Stormhide - Within 0-30 Range - Cast Lizard Bolt'),
(3238, 0, 1, 0, 9, 0, 100, 0, 0, 0, 9000, 15000, 0, 5, 11, 6730, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Stormhide - Within 0-5 Range  - Cast Head Butt'),
(3239, 0, 0, 0, 9, 0, 100, 0, 4000, 9000, 6000, 12000, 0, 30, 11, 5401, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Thunderhead - Within 0-30 Range - Cast Lizard Bolt'),
(3240, 0, 0, 0, 9, 0, 100, 0, 0, 0, 6000, 12000, 0, 30, 11, 5401, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Stormsnout - Within 0-30 Range - Cast Lizard Bolt'),
(3244, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Greater Plainstrider  - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3245, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Ornery Plainstrider   - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3246, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Fleeting Plainstrider - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3249, 0, 0, 0, 9, 0, 100, 0, 3000, 3000, 15000, 15000, 0, 10, 11, 8078, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Greater Thunderhawk - Within 0-10 Range - Cast Thunderclap'),
(3258, 0, 0, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Bristleback Hunter - Within 5-30 Range - Cast Shoot'),
(3258, 0, 1, 0, 9, 0, 100, 0, 0, 0, 9000, 14000, 5, 30, 11, 8806, 32, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0,        'Bristleback Hunter - Within 5-30 Range - Cast Poisoned Shot'),
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
(3381, 0, 0, 0, 0, 0, 80, 0, 7000, 12500, 10000, 16000, 0, 0, 11, 6253, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,   'Southsea Brigand - Within 0-5 Range  - Cast Backhand'),
(3382, 0, 0, 0, 9, 0, 100, 0, 0, 0, 2300, 3900, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Southsea Cannoneer - Within 5-30 Range - Cast Shoot'),
(3392, 0, 0, 0, 0, 0, 100, 0, 7000, 14000, 10000, 16000, 0, 0, 11, 6253, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,  'Prospector Khazgorm - Within 0-5 Range - Cast Backhand'),
(3398, 0, 0, 0, 0, 0, 100, 0, 5000, 8000, 12000, 13000, 0, 0, 11, 3583, 0, 0, 0, 0, 0, 5, 10, 0, 0, 0, 0, 0, 0, 0,  'Gesharahan - Within 0-10 Range - Cast Deadly Poison'),
(3424, 0, 0, 0, 9, 0, 80, 0, 3000, 3000, 15000, 15000, 0, 10, 11, 8078, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Thunderhawk Cloudscraper - Within 0-10 Range - Cast Thunderclap'),
(3435, 0, 0, 0, 0, 0, 100, 0, 7000, 7000, 15000, 15000, 0, 0, 11, 9080, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,   'Lok Orcbane - Within 0-5 Range - Cast Hamstring'),
(3435, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Lok Orcbane - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3457, 0, 0, 0, 1, 0, 100, 0, 0, 0, 1000, 1000, 0, 0, 11, 22766, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Razormane Stalker - OOC - Cast Sneak'),
(3457, 0, 1, 0, 9, 0, 100, 0, 1000, 1000, 6000, 6000, 0, 5, 11, 1758, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Razormane Stalker - In Combat - Cast Sinister Strike'),
(3457, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Bristleback Hunter - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3458, 0, 0, 0, 2, 0, 100, 0, 0, 50, 4000, 7500, 0, 0, 11, 6274, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Razormane Seer - Below 50% Health - Cast Healing Ward'),
(3458, 0, 1, 0, 0, 0, 100, 0, 5000, 11000, 16000, 24000, 0, 0, 11, 6363, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Razormane Seer - In Combat - Cast Searing Totem'),
(3458, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Bristleback Hunter - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3459, 0, 0, 0, 9, 0, 100, 0, 2600, 3300, 9600, 11200, 0, 5, 11, 12057, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Razormane Warfrenzy - Within 0-5 Range - Cast Strike'),
(3472, 0, 0, 0, 0, 0, 80, 0, 4000, 9000, 12000, 15000, 0, 0, 11, 25012, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, 0, 'Washte Pawne - Within 0-20 Range - Cast Lightning Breath'),
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
(7872, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2400, 3800, 0, 0, 11, 9613, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Deaths Head Cultist - In Combat - Cast Shadow Bolt'),
(7872, 0, 1, 0, 0, 0, 100, 0, 9000, 12500, 8000, 13000, 0, 0, 11, 11433, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0, 'Deaths Head Cultist - In Combat - Cast Death & Decay'),
(7872, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Deaths Head Cultist - Between 0-15% Health - Flee For Assist (No Repeat)'),
(7873, 0, 0, 0, 0, 0, 100, 0, 7000, 12000, 9000, 15000, 0, 0, 11, 11430, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,  'Razorfen Battleguard - Within 0-5 Range - Cast Slam'),
(7873, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Razorfen Battleguard - Between 0-15% Health - Flee For Assist (No Repeat)'),
(7874, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7966, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Razorfen Thornweaver - On Aggro - Cast Thorns Aura'),
(7874, 0, 1, 0, 2, 0, 100, 1, 0, 25, 0, 0, 0, 0, 11, 11431, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Razorfen Thornweaver - Between 0-25% Health - Cast Healing Touch (No Repeat)'),
(12865, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2400, 3800, 0, 0, 11, 9613, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Ambassador Malcin - Combat - Cast Shadow Bolt'),
(12865, 0, 1, 0, 0, 0, 100, 0, 5000, 9000, 15000, 25000, 0, 0, 11, 8282, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Ambassador Malcin - Combat - Cast Curse of Blood');


-- Isha Iwak, waypoints
UPDATE `creature` SET `MovementType` = 2, `currentwaypoint` = 1 WHERE `guid` = 15085;

DELETE FROM `creature_addon` WHERE `guid` = 15085;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(15085, 150850, 0, 0, 0, 0, 0, NULL);

DELETE FROM `waypoint_data` WHERE `id` = 150850;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES    
(150850, 1, -2095.51, -3839.77, -8.44877, 3.89162, 0, 0, 0, 100, 0),
(150850, 2, -2124.57, -3884.88, -8.93047, 3.95838, 0, 0, 0, 100, 0),
(150850, 3, -2143.06, -3905.65, -5.59513, 3.73061, 0, 0, 0, 100, 0),
(150850, 4, -2098.32, -3843.23, -8.3569, 0.420159, 0, 0, 0, 100, 0),
(150850, 5, -2031.07, -3816.66, -7.61196, 0.176686, 0, 0, 0, 100, 0),
(150850, 6, -1983.99, -3817.63, -6.51678, 6.26352, 0, 0, 0, 100, 0),
(150850, 7, -1927.65, -3820.4, -7.03604, 6.00827, 0, 0, 0, 100, 0),
(150850, 8, -1841.68, -3853.46, -8.76674, 5.56845, 0, 0, 0, 100, 0),
(150850, 9, -1769.55, -3916.58, -3.45852, 5.54881, 0, 0, 0, 100, 0),
(150850, 10, -1706.63, -3984.47, -11.0261, 5.49383, 0, 0, 0, 100, 0),
(150850, 11, -1689.02, -4004.74, -11.9683, 0.34163, 0, 0, 0, 100, 0),
(150850, 12, -1706.23, -3985.33, -11.0817, 2.23836, 0, 0, 0, 100, 0),
(150850, 13, -1770.32, -3915.41, -3.42027, 2.20302, 0, 0, 0, 100, 0),
(150850, 14, -1842.09, -3852.96, -8.75947, 2.38759, 0, 0, 0, 100, 0),
(150850, 15, -1927.05, -3820.15, -6.89651, 3.0002, 0, 0, 0, 100, 0),
(150850, 16, -1983.51, -3817.7, -6.48647, 3.0434, 0, 0, 0, 100, 0),
(150850, 17, -1988.69, -3806.41, -6.63219, 0.209271, 0, 0, 0, 100, 0),
(150850, 18, -1957.92, -3802.99, -7.52336, 0.012921, 0, 0, 0, 100, 0),
(150850, 19, -1939.34, -3805.68, -8.62174, 6.14295, 0, 0, 0, 100, 0),
(150850, 20, -1921.93, -3811.41, -9.28382, 5.56962, 0, 0, 0, 100, 0),
(150850, 21, -1906.15, -3830.63, -13.0489, 5.6835, 0, 0, 0, 100, 0),
(150850, 22, -1888.56, -3838.84, -12.2911, 6.09583, 0, 0, 0, 100, 0),
(150850, 23, -1868.58, -3844.4, -10.2373, 5.98588, 0, 0, 0, 100, 0),
(150850, 24, -1845.02, -3855.67, -9.19782, 5.69528, 0, 0, 0, 100, 0),
(150850, 25, -1831, -3868.09, -8.70919, 5.56177, 0, 0, 0, 100, 0),
(150850, 26, -1809.97, -3888.14, -7.13697, 5.67565, 0, 0, 0, 100, 0),
(150850, 27, -1797.16, -3897.53, -5.66095, 5.63638, 0, 0, 0, 100, 0),
(150850, 28, -1776.29, -3912.29, -4.08113, 5.79739, 0, 0, 0, 100, 0),
(150850, 29, -1762.23, -3925.4, -4.12622, 5.35757, 0, 0, 0, 100, 0),
(150850, 30, -1752.5, -3938.4, -6.53609, 5.49501, 0, 0, 0, 100, 0),
(150850, 31, -1736.71, -3954.1, -8.31746, 5.54606, 0, 0, 0, 100, 0),
(150850, 32, -1716.86, -3973.18, -9.53567, 5.64816, 0, 0, 0, 100, 0),
(150850, 33, -1699.86, -3987.3, -10.1186, 5.65994, 0, 0, 0, 100, 0),
(150850, 34, -1680.99, -3996.29, -9.15326, 6.2804, 0, 0, 0, 100, 0),
(150850, 35, -1664.48, -3995.32, -5.35163, 0.358501, 0, 0, 0, 100, 0),
(150850, 36, -1648.15, -3991.01, -2.5677, 6.27648, 0, 0, 0, 100, 0),
(150850, 37, -1629.88, -3993.46, -0.54796, 5.872, 0, 0, 0, 100, 0),
(150850, 38, -1612.31, -4000.69, -1.71012, 5.95446, 0, 0, 0, 100, 0),
(150850, 39, -1590.87, -4004.68, -4.61104, 0.264251, 0, 0, 0, 100, 0),
(150850, 40, -1567.53, -4005.89, -5.74705, 6.09191, 0, 0, 0, 100, 0),
(150850, 41, -1550.19, -4008.35, -6.64515, 6.1783, 0, 0, 0, 100, 0),
(150850, 42, -1533.02, -4012.82, -9.08394, 6.08405, 0, 0, 0, 100, 0),
(150850, 43, -1515.92, -4019.65, -9.619, 5.45181, 0, 0, 0, 100, 0),
(150850, 44, -1501.34, -4032.98, -14.5417, 5.98588, 0, 0, 0, 100, 0),
(150850, 45, -1492.53, -4035.17, -14.5213, 0.115023, 0, 0, 0, 100, 0),
(150850, 46, -1474.78, -4034.21, -12.5431, 6.15081, 0, 0, 0, 100, 0),
(150850, 47, -1457.58, -4037.82, -11.7392, 0.244615, 0, 0, 0, 100, 0),
(150850, 48, -1445.84, -4033.53, -9.8652, 0.586263, 0, 0, 0, 100, 0),
(150850, 49, -1429.26, -4030.82, -8.81005, 5.77774, 0, 0, 0, 100, 0),
(150850, 50, -1415.6, -4031.97, -8.77204, 0.633386, 0, 0, 0, 100, 0),
(150850, 51, -1416.64, -4022.04, -7.71688, 2.65186, 0, 0, 0, 100, 0),
(150850, 52, -1428.36, -4019.95, -7.68141, 3.42548, 0, 0, 0, 100, 0),
(150850, 53, -1443.32, -4027.76, -8.84914, 3.63754, 0, 0, 0, 100, 0),
(150850, 54, -1456.44, -4033.64, -10.7559, 3.29589, 0, 0, 0, 100, 0),
(150850, 55, -1475.76, -4033.27, -12.8238, 2.56547, 0, 0, 0, 100, 0),
(150850, 56, -1479.02, -4028.51, -12.2142, 1.70938, 0, 0, 0, 100, 0),
(150850, 57, -1484.58, -4013.1, -8.62078, 2.28272, 0, 0, 0, 100, 0),
(150850, 58, -1492.42, -4008.65, -7.82732, 3.28803, 0, 0, 0, 100, 0),
(150850, 59, -1501.62, -4010.71, -7.58155, 3.42155, 0, 0, 0, 100, 0),
(150850, 60, -1516.8, -4015.76, -9.06612, 3.08383, 0, 0, 0, 100, 0),
(150850, 61, -1525.3, -4015.12, -9.02112, 2.86784, 0, 0, 0, 100, 0),
(150850, 62, -1535.88, -4012.24, -8.91662, 2.76967, 0, 0, 0, 100, 0),
(150850, 63, -1545.5, -4009.04, -7.35983, 2.71862, 0, 0, 0, 100, 0),
(150850, 64, -1560.37, -4004.73, -5.79875, 2.94638, 0, 0, 0, 100, 0),
(150850, 65, -1571.98, -4004.15, -5.39911, 3.15452, 0, 0, 0, 100, 0),
(150850, 66, -1582.35, -4004.64, -5.27648, 3.05241, 0, 0, 0, 100, 0),
(150850, 67, -1598.4, -4004.99, -3.7378, 3.58256, 0, 0, 0, 100, 0),
(150850, 68, -1604.08, -4008.17, -3.62498, 3.78676, 0, 0, 0, 100, 0),
(150850, 69, -1616.65, -4019.06, -3.01547, 3.57078, 0, 0, 0, 100, 0),
(150850, 70, -1668.96, -4034.45, -5.39624, 2.9346, 0, 0, 0, 100, 0),
(150850, 71, -1674.82, -4022.51, -8.60031, 2.31021, 0, 0, 0, 100, 0),
(150850, 72, -1680.27, -4012.14, -6.43822, 2.24345, 0, 0, 0, 100, 0),
(150850, 73, -1688.55, -4001.91, -11.1724, 2.25523, 0, 0, 0, 100, 0),
(150850, 74, -1695.87, -3994.98, -10.9748, 2.24345, 0, 0, 0, 100, 0),
(150850, 75, -1703.37, -3987.48, -10.8121, 2.23167, 0, 0, 0, 100, 0),
(150850, 76, -1710.59, -3979.31, -10.7182, 2.1924, 0, 0, 0, 100, 0),
(150850, 77, -1716.95, -3971.52, -9.1143, 2.18847, 0, 0, 0, 100, 0),
(150850, 78, -1727.51, -3961.53, -7.93517, 2.51442, 0, 0, 0, 100, 0),
(150850, 79, -1741.19, -3952.66, -8.68873, 2.53405, 0, 0, 0, 100, 0),
(150850, 80, -1749.94, -3945.65, -8.27237, 2.20026, 0, 0, 0, 100, 0),
(150850, 81, -1755.59, -3938.61, -6.49431, 2.09423, 0, 0, 0, 100, 0),
(150850, 82, -1760.89, -3930.35, -4.84141, 2.08245, 0, 0, 0, 100, 0),
(150850, 83, -1765.26, -3923.79, -3.93848, 2.1924, 0, 0, 0, 100, 0),
(150850, 84, -1772.33, -3915.05, -3.82365, 2.44766, 0, 0, 0, 100, 0),
(150850, 85, -1788.19, -3903.41, -4.84894, 2.3809, 0, 0, 0, 100, 0),
(150850, 86, -1796.29, -3895.8, -5.52288, 2.32985, 0, 0, 0, 100, 0),
(150850, 87, -1804.33, -3888.08, -6.31431, 2.32985, 0, 0, 0, 100, 0),
(150850, 88, -1812.36, -3880.36, -7.085, 2.32592, 0, 0, 0, 100, 0),
(150850, 89, -1812.36, -3880.36, -7.085, 2.32592, 0, 0, 0, 100, 0),
(150850, 90, -1828.22, -3864.83, -8.29894, 2.32592, 0, 0, 0, 100, 0),
(150850, 91, -1837.33, -3857.71, -8.70937, 2.53405, 0, 0, 0, 100, 0),
(150850, 92, -1840.31, -3855.98, -8.82793, 2.63615, 0, 0, 0, 100, 0),
(150850, 93, -1850.4, -3851.44, -9.33667, 2.69506, 0, 0, 0, 100, 0),
(150850, 94, -1860.6, -3847.19, -9.8448, 2.70684, 0, 0, 0, 100, 0),
(150850, 95, -1870.52, -3843.34, -10.2919, 2.7304, 0, 0, 0, 100, 0),
(150850, 96, -1880.69, -3840.2, -10.9911, 2.77752, 0, 0, 0, 100, 0),
(150850, 97, -1895.76, -3835.22, -13.09, 2.66757, 0, 0, 0, 100, 0),
(150850, 98, -1908.48, -3827.99, -12.6724, 2.12564, 0, 0, 0, 100, 0),
(150850, 99, -1913.88, -3821.25, -11.6992, 1.76436, 0, 0, 0, 100, 0),
(150850, 100, -1916.8, -3813.05, -10.2679, 1.97642, 0, 0, 0, 100, 0),
(150850, 101, -1924.3, -3802.87, -8.4678, 2.69898, 0, 0, 0, 100, 0),
(150850, 102, -1936.64, -3799.71, -7.68608, 3.01314, 0, 0, 0, 100, 0),
(150850, 103, -1948.94, -3799.91, -7.29064, 3.22127, 0, 0, 0, 100, 0),
(150850, 104, -1959.75, -3801.94, -7.26259, 3.28411, 0, 0, 0, 100, 0),
(150850, 105, -1970.41, -3804.35, -7.21816, 3.29196, 0, 0, 0, 100, 0),
(150850, 106, -1980.97, -3806.71, -7.01286, 3.28803, 0, 0, 0, 100, 0),
(150850, 107, -1991.48, -3808.49, -6.56038, 3.28411, 0, 0, 0, 100, 0),
(150850, 108, -2002.16, -3810.73, -7.105, 3.31159, 0, 0, 0, 100, 0),
(150850, 109, -2023.04, -3816.41, -7.78386, 3.26447, 0, 0, 0, 100, 0);

    
-- Miner's Fortune quest
UPDATE `quest_template_locale` SET `Details` = 'Als Werftmeister eines so geschäftigen Hafens wie Ratchet habe ich mein Ohr immer am Puls der Zeit. Ich weiß alles über den Verkehr von Waren und Geld zwischen hier und Booty Bay. Die jüngste Neuigkeit, die ich erfahren habe, betrifft die Felsadermine der Venture Company nordöstlich des Schlickermoores. Einer der Minenarbeiter hat dort einen faustgroßen Smaragd gefunden. Ich kenne ein paar Käufer, die sich die Finger nach so etwas ablecken würden... und ich würde bei einem Verkauf Halbe-Halbe machen.', `CompletedText` = 'Bringt Katzenaugensmaragd zu Werftmeister Dizzywig.', `Objectives` = 'Beschafft Euch von einem der Vorarbeiter oder Vollstrecker der Venture Company den Katzenaugensmaragd und bringt ihn zu Dizzywig.' WHERE `ID` = 896 AND `locale` = 'deDE';
UPDATE `quest_template_locale` SET `Details` = 'Como maestro de los muelles de un puerto tan activo como Trinquete, estoy al tanto de cualquier información. Lo sé todo del intercambio de mercancía y dinero entre este lugar y Bahía del Botín. Lo último que he oído es sobre Mina Pedrusco de Ventura y Cía. al noreste de El Fangal. Uno de los mineros descubrió una esmeralda del tamaño de tu puño. Sé de unos cuantos compradores que estarían interesados en ponerle las manos encima y no me importaría ir a medias en la venta.', `CompletedText` = 'Llévale la esmeralda el maestro de muelle.', `Objectives` = 'Recupera la esmeralda de ojo felino de un vigía de Ventura y Cía. o de uno de sus gorilas para Vertipeluca, el maestro de muelles, en Trinquete.' WHERE `ID` = 896 AND `locale` = 'esES';
UPDATE `quest_template_locale` SET `Details` = 'Como maestro de los muelles de un puerto tan activo como Trinquete, estoy al tanto de cualquier información. Lo sé todo del intercambio de mercancía y dinero entre este lugar y Bahía del Botín. Lo último que he oído es sobre Mina Pedrusco de Ventura y Cía. al noreste de El Fangal. Uno de los mineros descubrió una esmeralda del tamaño de tu puño. Sé de unos cuantos compradores que estarían interesados en ponerle las manos encima y no me importaría ir a medias en la venta.', `CompletedText` = 'Llévale la esmeralda el maestro de muelle.', `Objectives` = 'Recupera la esmeralda de ojo felino de un vigía de Ventura y Cía. o de uno de sus gorilas para Vertipeluca, el maestro de muelles, en Trinquete.' WHERE `ID` = 896 AND `locale` = 'esMX';
UPDATE `quest_template_locale` SET `Details` = 'Etant Maître des quais d''un port plein d''activité comme Ratchet, je prends toujours le pouls de l''information. Je sais tout des échanges de biens et d''argent entre ici et Baie-du-Butin. La dernière nouvelle que j''ai entendue concerne la mine des Pierriers de la KapitalRisk, au nord-est de la Videfange. L''un des mineurs y a découvert une émeraude aussi grosse que votre poing. Je connais quelques acheteurs qui voudraient mettre la main sur un tel joyau, et je suis prêt à faire 50-50.', `CompletedText` = 'Apportez l''Emeraude au Maître des quais Dizzywig.', `Objectives` = 'Prendre l''Emeraude oeil-de-chat à l''un des Surveillants ou l''un des Massacreurs de la KapitalRisk pour le Maître des quais Dizzywig.' WHERE `ID` = 896 AND `locale` = 'frFR';
