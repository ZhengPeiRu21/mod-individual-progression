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

/* Flight masters at Ratchet and Marshal's Refuge were originally added in patch 1.11 - disabled by default, because most players will expect these npcs to be there */
/* UPDATE `creature_template` SET `ScriptName` = 'npc_ipp_naxx40' WHERE `entry` IN (
10583, -- Gryfe, Marshal's Refuge, Flight Master
16227  -- Bragok, Ratchet, Flight Master
); */


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
17103, -- Emissary Taluun, Stormwind
17104, -- Anchorite Delan, Darkshire
17106, -- Vindicator Palanaar, Astranaar
17109, -- Cersei Dusksinger, Stonard
17119, -- Ithania, North Point Tower
17218, -- Huraan, Southshore
17223, -- Ambassador Rualeth, Aerie Peak
17238, -- Anchorite Truuen, Western Plaguelands
21045, -- Landro Hired Bodyguard, Booty Bay
22931, -- Gorrim, Emerald Sanctuary, Flight Master
23131, -- Blood Knight Honor Guard, Orgrimmar
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

/* Remove interactions between Cersei, Lorrin and the orcs in Stonard */
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (12807, 17109, 27705);


/* Hide guild vaults until TBC (was introduced during 2.3) - disabled by default, because most players will expect these gobject to be there */
/* UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_tbc' WHERE `guid` IN 
(12496, 12497, 14641, 17352, 17353, 20621, 41911, 41912, 41913, 41914, 44709, 44710, 44711, 44713, 44714, 44715, 44716, 45029, 45030, 45069, 45132, 49095, 49821, 49822, 50356, 50357); */

/* 3.0+ - NPCs/Gobjects added in Eastern/Kalimdor during WotLK pre-patch or more */
UPDATE `creature_template` SET `ScriptName` = 'npc_ipp_wotlk' WHERE `entry` IN (
26537, -- Greeb Ramrocket, Zep
26539, -- Meefi Farthrottle, Zep
29346, -- Apothecary Karlov, Orgrimmar
31704, -- Crewman Spinwheel, Zep
31705, -- Crewman Coilspan, Zep
31706, -- Crewman Stembolt, Zep
31716, -- Sky-Captain Cryoflight, Zep
31720, -- Crewman Shubbscoop, Zep
31723, -- Crewman Barrowswizzle, Zep
31724, -- Crewman Paltertop, Zep
31725 -- Sky-Captain LaFontaine, Zep
);

/* Hide mailboxes, see: https://www.wowhead.com/classic/object=32349/mailbox */
UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_tbc' WHERE `guid` = 49832; -- Darnassus
UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_wotlk' WHERE `guid` IN (
150747, 150748, 150749, 150750, 150751, 150752, 150753, 150755, -- Orgrimmar
100500, 100501, 100502, 100503, 268683, -- Undercity
932, 933, 100156, 100157, 100158, 100159, 100505, 100506, 150736, 150737, 150738, 150740, 150742, 150743, 150744, 150746, 151239,  -- Stormwind
121573, 121574, 121575 -- Darnassus
);

/* Hide Rogg and his anvil + forge at the entrance of Orgrimmar until WotLK */
UPDATE `creature_template` SET `ScriptName` = 'npc_ipp_wotlk' WHERE `entry` = 37072;
UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_wotlk' WHERE `guid` IN (347, 387);

/* Landro for TCG promotion in Booty Bay */
UPDATE `creature_template` SET `ScriptName` = 'npc_ipp_aq' WHERE `entry` = 17249;

/* Hide barber in Kalimdor/Eastern Kingdom/Outland until WotLK - disabled by default, because most players will expect barbers to be there */
/* UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk' WHERE `map` IN (0, 1, 530) AND `id1` IN (29139, 29141, 29142, 29143, 29145);
UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_wotlk' WHERE `map` IN (0, 1, 530) AND `id` IN (190683, 190684, 190697, 190698, 190699, 190704, 190710, 190711, 190712, 191028, 191029, 191030); */

/* Hide training dummy in Kalimdor/Eastern Kingdom/Outland until WotLK - disabled by default, because most players will expect dummies to be there */
/* UPDATE `creature` SET `ScriptName` = 'npc_training_dummy_ipp_wotlk' WHERE `map` IN (0, 1, 530) AND `id1` IN (31144, 31146, 32666, 32667); */
