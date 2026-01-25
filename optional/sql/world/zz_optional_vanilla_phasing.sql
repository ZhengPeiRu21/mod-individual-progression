/*  
    This will phase Vanilla/TBC npcs & objects placed in vanilla areas until they were originally added to the game.
    This includes quest givers and flight paths. 
*/

/* Meeting Stones */
UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_preaq'  WHERE `map` = 0 AND `zoneId` = 33 AND `id` = 185433; -- ZG
UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_preaq'  WHERE `map` = 1 AND `id` = 185322; -- AQ
UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_tbc'    WHERE `map` = 0 AND `id` = 184463; -- Karazhan 
UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_tbc'    WHERE `map` = 1 AND `id` = 182560; -- Time cavern
UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_naxx40' WHERE `map` = 0 AND `id` = 193166; -- Naxx40

/* 2.0+ - NPCs/Gobjects added in Eastern/Kalimdor during TBC pre-patch or more */
UPDATE `creature_template` SET `ScriptName` = 'npc_ipp_tbc' WHERE `entry` IN (
11701, -- Mor'Vek, Un'Goro
16288, -- Advisor Sorrelon, The Sepulcher
17092, -- Advisor Duskingdawn, Tarren Mill
17093, -- Magistrix Elosai, Freewind Post
17094, -- Nemeth Hawkeye, Grom'gol Base Camp
17095, -- Balandar Brightstar, Brackenwall Village
17097, -- Advisor Sarophas, Kargath
17098, -- Ambassador Dawnsinger, Orgrimmar
17099, -- Mehlar Dawnblade, The Bulwark
17100, -- Advisor Sunsworn
17103, -- Emissary Taluun, Stormwind
17104, -- Anchorite Delan, Darkshire
17106, -- Vindicator Palanaar, Astranaar
17109, -- Cersei Dusksinger, Stonard
17119, -- Ithania, North Point Tower
17218, -- Huraan, Southshore
17223, -- Ambassador Rualeth, Aerie Peak
17238, -- Anchorite Truuen, Western Plaguelands
19923, -- Bipp Glizzitor (Arena Master), Silvermoon
19925, -- Miglik Blotstrom (Arena Master), Exodar
21045, -- Landro Hired Bodyguard, Booty Bay
22931, -- Gorrim, Emerald Sanctuary, Flight Master
23131, -- Blood Knight Honor Guard, Orgrimmar
23534, -- Babagaya Shadowcleft, Ratchet
23535, -- Matero Zeshuwal, Ratchet
23536, -- Nagulon, Ratchet
24366, -- Nizzle, Rebel Camp, Flight Master
24924, -- Sky-Captain Bomblast, Zep
24926, -- Chief Officer Brassbolt, Zep
24927, -- Navigator Sparksizzle, Zep
24929, -- Crewman Crosswire, Zep
24930, -- Crewman Gazzlegear, Zep
24931, -- Crewman Fastwrench, Zep
24934, -- Snack-O-Matic IV, Zep
24935, -- Vend-O-Tron D-Luxe, Zep
25070, -- Chief Officer Coppernut, Zep
25071, -- Crewman Rusthammer, Zep
25072, -- Crewman Quickfix, Zep
25074, -- Crewman Sparkfly, Zep
25075, -- Zeppelin Controls, Zep
25076, -- Navigator Fairweather, Zep
25077, -- Sky-Captain Cloudkicker, Zep
25100, -- Chief Officer Hammerflange, Zep
25101, -- Crewman Cutpipe, Zep
25102, -- Crewman Spinshaft, Zep
25103, -- Crewman Boltshine, Zep
25104, -- Navigator Hatch, Zep
25105, -- Sky-Captain Cableclamp, Zep
27705, -- Lorrin Foxfire, Stonard
29093, -- Ian Drake, Stormwind
29095, -- Edward Cairn, Undercity
37888, -- Frax Bucketdrop, Thondroril River, Flight Master
37915  -- Timothy Cunningham, The Bulwark, Flight Master
);

SET @IPPPHASE     := 65536;

-- Forest Song - Ashenvale - Draenei camp
UPDATE `creature` SET `phaseMask` = @IPPPHASE WHERE `id1` IN (17291, 17303, 17406, 17409, 17412, 17541, 22935, 22936);

/* Remove interactions between Cersei, Lorrin and the orcs in Stonard */
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (12807, 17109, 27705);

/* 3.0+ - NPCs/Gobjects added in Eastern/Kalimdor during WotLK pre-patch or more */
UPDATE `creature_template` SET `ScriptName` = 'npc_ipp_wotlk' WHERE `entry` IN (
26537, -- Greeb Ramrocket, Zep
26539, -- Meefi Farthrottle, Zep
31704, -- Crewman Spinwheel, Zep
31705, -- Crewman Coilspan, Zep
31706, -- Crewman Stembolt, Zep
31716, -- Sky-Captain Cryoflight, Zep
31720, -- Crewman Shubbscoop, Zep
31723, -- Crewman Barrowswizzle, Zep
31724, -- Crewman Paltertop, Zep
31725  -- Sky-Captain LaFontaine, Zep
);

-- Hide Inscription vendors and trainers
UPDATE `creature_template` SET `ScriptName` = 'npc_ipp_wotlk' WHERE `entry` IN (
30706, -- Jo'mah <Inscription Trainer>, Orgrimmar
30709, -- Poshken Hardbinder <Inscription Trainer>, Thunder Bluff
30710, -- Zantasia <Inscription Trainer>, Silvermoon
30711, -- Margaux Parchley <Inscription Trainer>, Undercity
30713, -- Catarina Stanford <Inscription Trainer>, Stormwind
30715, -- Feyden Darkin <Inscription Trainer>, Darnassus
30716, -- Thoth <Inscription Trainer>, Exodar
30717, -- Elise Brightletter <Inscription Trainer>, Ironforge
30723, -- Xantili <Inscription Supplies>, Orgrimmar
30724, -- Mertle Murkpen <Inscription Supplies>, Thunder Bluff
30727, -- Lelorian <Inscription Supplies>, Silvermoon
30729, -- Ickabod Pimlen <Inscription Supplies>, Undercity
30730, -- Stanly McCormick <Inscription Supplies>, Stormwind
30731, -- Illianna Moonscribe <Inscription Supplies>, Darnassus
30732, -- Sessoh <Inscription Supplies>, Exodar
30733  -- Thargen Heavyquill <Inscription Supplies>, Ironforge
);

-- Hide Inscription gameobject - Lexicon of Power
UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_wotlk' WHERE `guid` IN (
61967, -- Stormwind
63170, -- Orgrimmar
63171, -- Thunder Bluff
63172, -- Undercity
63173, -- Silvermoon
63174, -- Ironforge
63175, -- Darnassus
63176  -- Exodar
);

-- Hide Inscription option in city guard search menu
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `ConditionTypeOrReference` = 8 AND `SourceGroup` IN 
(421, 751, 1942, 2168, 2351, 2847, 3284, 3330, 3355, 3532, 3558, 3572, 7667, 7788, 8138, 8205);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, 
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
--
(15, 421,  8, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Stormwind - Hide inscription gossip menu option until player reaches WotLK'),
(15, 751,  7, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Thunder Bluff - Hide inscription gossip menu option until player reaches WotLK'),
(15, 1942, 8, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Orgrimmar - Hide inscription gossip menu option until player reaches WotLK'), 
(15, 2168, 8, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Ironforge - Hide inscription gossip menu option until player reaches WotLK'), 
(15, 2351, 6, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Darnassus - Hide inscription gossip menu option until player reaches WotLK'), 
(15, 2847, 8, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Undercity - Hide inscription gossip menu option until player reaches WotLK'),
--
(15, 3284, 8, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Razor Hill - Hide inscription gossip menu option until player reaches WotLK'), 
(15, 3330, 7, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Bloodhoof Village - Hide inscription gossip menu option until player reaches WotLK'),
(15, 3355, 8, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Brill - Hide inscription gossip menu option until player reaches WotLK'),
(15, 3532, 8, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Elwynn Forest - Hide inscription gossip menu option until player reaches WotLK'),
(15, 3558, 8, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Dun Morogh - Hide inscription gossip menu option until player reaches WotLK'),
(15, 3572, 6, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Teldrassil - Hide inscription gossip menu option until player reaches WotLK'),
--
(15, 7667, 8, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Silvermoon - Hide inscription gossip menu option until player reaches WotLK'),
(15, 7788, 7, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Exodar - Hide inscription gossip menu option until player reaches WotLK'),
(15, 8138, 8, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Azeremyst - Hide inscription gossip menu option until player reaches WotLK'),
(15, 8205, 8, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Eversong Woods - Hide inscription gossip menu option until player reaches WotLK');

-- Hide Jewelcrafting recipes on vanilla vendors
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 23 AND `ConditionValue1` = 66008 AND `SourceEntry` IN
(20855, 20856, 20970, 20971, 20975, 21941, 21942, 21943, 21948, 21952, 21954, 21957);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, 
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
--
(23, 3499,  20855, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Ranik - Design: Wicked Moonstone Ring'),
(23, 3954,  20855, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Dalria - Design: Wicked Moonstone Ring'),
(23, 1286,  20856, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Edna Mullby - Design: Heavy Golden Necklace of Battle'),
(23, 3367,  20856, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Felika - Design: Heavy Golden Necklace of Battle'),
(23, 1448,  20970, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Neal Allen - Design: Pendant of the Agate Shield'),
(23, 4877,  20970, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Jandia - Design: Pendant of the Agate Shield'),
(23, 2381,  20971, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Micha Yance - Design: Heavy Iron Knuckles'),
(23, 2393,  20971, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Christoph Jeffcoat - Design: Heavy Iron Knuckles'),
(23, 4775,  20975, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Burbik Gearspanner - Design: The Jade Eye'),
(23, 5163,  20975, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Felika - Design: The Jade Eye'),
(23, 989,   21941, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Banalash - Design: Black Pearl Panther'),
(23, 4897,  21941, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Helenia Olden - Design: Black Pearl Panther'),
(23, 2810,  21942, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Hammon Karwn - Design: Ruby Crown of Restoration'),
(23, 2821,  21942, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Keena - Design: Ruby Crown of Restoration'),
(23, 1148,  21943, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Nerrist - Design: Truesilver Crab'),
(23, 4897,  21943, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Helenia Olden - Design: Truesilver Crab'),
(23, 5163,  21948, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Burbik Gearspanner - Design: Wicked Moonstone Ring'),
(23, 8363,  21948, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Shadi Mistrunner - Design: Wicked Moonstone Ring'),
(23, 15179, 21952, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Mishta - Design: Emerald Crown of Destruction'),
(23, 12941, 21954, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Jase Farlane - Design: Ring of Bitter Shadows'),
(23, 11189, 21957, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Qia - Design: Necklace of the Diamond Tower');

-- Hide TBC quests
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 19 AND `SourceEntry` IN (9189, 9425, 9601);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, 
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(19, 0, 9189, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Hide \'Delivery to the Sepulcher\' until the player reaches TBC'),
(19, 0, 9425, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Hide \'Report to Tarren Mill\' until the player reaches TBC'),
(19, 0, 9601, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Hide \'To The Bulwark\' until the player reaches TBC');

/* Hide mailboxes, see: https://www.wowhead.com/classic/object=32349/mailbox */
UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_tbc' WHERE `guid` = 49832; -- Darnassus
UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_wotlk' WHERE `guid` IN (
150747, 150748, 150749, 150750, 150751, 150752, 150753, 150755, -- Orgrimmar
100500, 100501, 100502, 100503, 268683, -- Undercity
932, 933, 100156, 100157, 100158, 100159, 100505, 100506, 150736, 150737, 150738, 150740, 150742, 150743, 150744, 150746, 151239,  -- Stormwind
121573, 121574, 121575 -- Darnassus
);

/* Hide Rogg and his anvil + forge at the entrance of Orgrimmar until WotLK */
UPDATE `creature_template` SET `ScriptName` = 'npc_ipp_wotlk', `flags_extra` = 2 WHERE `entry` = 37072;
UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_wotlk' WHERE `guid` IN (347, 387); 

/* Landro for TCG promotion in Booty Bay */
UPDATE `creature_template` SET `ScriptName` = 'npc_ipp_aq' WHERE `entry` = 17249;

/* Flight masters at Ratchet and Marshal's Refuge were originally added in patch 1.11 - disabled by default, because most players will expect these npcs to be there */
/* UPDATE `creature_template` SET `ScriptName` = 'npc_ipp_naxx40' WHERE `entry` IN (10583, 16227); */
 
/* Hide guild vaults until TBC (was introduced during 2.3) - disabled by default, because most players will expect these gobject to be there */
/* UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_tbc' WHERE `guid` IN 
(12496, 12497, 14641, 17352, 17353, 20621, 41911, 41912, 41913, 41914, 44709, 44710, 44711, 44713, 44714, 44715, 44716, 45029, 45030, 45069, 45132, 49095, 49804, 49821, 49822, 50356, 50357); */

/* Hide barber in Kalimdor/Eastern Kingdom/Outland until WotLK - disabled by default, because most players will expect barbers to be there */
/* UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk' WHERE `map` IN (0, 1, 530) AND `id1` IN (29139, 29141, 29142, 29143, 29145);
UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_wotlk' WHERE `map` IN (0, 1, 530) AND `id` IN (190683, 190684, 190697, 190698, 190699, 190704, 190710, 190711, 190712, 191028, 191029, 191030); */
