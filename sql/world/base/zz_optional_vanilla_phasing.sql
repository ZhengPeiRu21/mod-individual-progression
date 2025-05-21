/*  
    This will phase Vanilla/TBC npcs & objects placed in vanilla areas until they were originally added to the game.
    This includes quest givers and flight paths. 
*/

UPDATE `creature_template` SET `ScriptName` = 'npc_ipp_tbc' WHERE `entry` IN (
16288, -- Advisor Sorrelon, The Sepulcher
17092, -- Advisor Duskingdawn, Tarren Mill
17093, -- Magistrix Elosai, Freewind Post
17094, -- Nemeth Hawkeye, Grom'gol Base Camp
17095, -- Balandar Brightstar, Brackenwall Village
17097, -- Advisor Sarophas, Kargath
17099, -- Mehlar Dawnblade, The Bulwark
17103, -- Emissary Taluun, Stormwind
17106, -- Vindicator Palanaar, Astranaar
17109, -- Cersei Dusksinger, Stonard
17119, -- Ithania, North Point Tower
17104, -- Anchorite Delan, Darkshire
17218, -- Huraan, Southshore
17223, -- Ambassador Rualeth, Aerie Peak
17238, -- Anchorite Truuen, Western Plaguelands
22931, -- Gorrim, Emerald Sanctuary, Flight Master
24366, -- Nizzle, Rebel Camp, Flight Master
27705, -- Lorrin Foxfire, Stonard
37888, -- Frax Bucketdrop, Thondroril River, Flight Master
37915 -- Timothy Cunningham, The Bulwark, Flight Master
);
-- fix bad phasing for Wrathscale Myrmidon, Azuremyst Isle 
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` = 17194;

-- the flight masters at Ratchet and Marshal's Refuge were originally added in patch 1.11 - disabled by default, because most players will expect these npcs to be there
/* UPDATE `creature_template` SET `ScriptName` = 'npc_ipp_naxx40' WHERE `entry` IN (
10583, -- Gryfe, Marshal's Refuge, Flight Master
16227 -- Bragok, Ratchet, Flight Master
); */

-- remove interactions between Cersei, Lorrin and the orcs in Stonard 
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (12807, 17109, 27705);

-- to do: mail boxes in cities and anvil + furnace at Orgrimmar entrance

-- hide Rogg and his anvil + forge at the entrance of Orgrimmar until WotLK
UPDATE `creature_template` SET `ScriptName` = 'npc_ipp_wotlk' WHERE `entry` = 37072;
UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_wotlk' WHERE `guid` IN (347, 387);

-- hide mailboxes, see: https://www.wowhead.com/classic/object=32349/mailbox
UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_tbc' WHERE `guid` = 49832; -- Darnassus

UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_wotlk' WHERE `guid` IN (
150747, 150748, 150749, 150750, 150751, 150752, 150753, -- Orgrimmar
100500, 100501, 100502, 100503, 268683, -- Undercity
932, 933, 100156, 100157, 100158, 100159, 100505, 100506, 150736, 150737, 150738, 150740, 150742, 150743, 150744, 150746, 151239,  -- Stormwind
121574 -- Darnassus
);

-- hide guild vaults until TBC (was introduced during 2.3) - disabled by default, because most players will expect these gobject to be there
/* UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_tbc' WHERE `guid` IN (
12496, 12497,
20621,
45029, 45030, 45069, 45132,
44709, 44710, 44711,
44715, 44716,
41911, 41912, 41913, 41914,
49821, 49822,
44713, 44714,
14641,
17352, 17353,
49095,
50356, 50357
); */
