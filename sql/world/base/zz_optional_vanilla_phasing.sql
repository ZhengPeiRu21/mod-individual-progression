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
17106, -- Vindicator Palanaar, Astranaar
17109, -- Cersei Dusksinger, Stonard
17119, -- Ithania, North Point Tower
17194, -- Anchorite Delan, Darkshire
17218, -- Huraan, Southshore
17223, -- Ambassador Rualeth, Aerie Peak
22931, -- Gorrim, Emerald Sanctuary, Flight Master
24366, -- Nizzle, Rebel Camp, Flight Master
27705, -- Lorrin Foxfire, Stonard
37888, -- Frax Bucketdrop, Thondroril River, Flight Master
37915 -- Timothy Cunningham, The Bulwark, Flight Master
);

/* the flight masters at Ratchet and Marshal's Refuge were originally added in patch 1.11
UPDATE `creature_template` SET `ScriptName` = 'npc_ipp_naxx40' WHERE `entry` IN (
10583, -- Gryfe, Marshal's Refuge, Flight Master
16227 -- Bragok, Ratchet, Flight Master); 
*/

-- remove interactions between Cersei, Lorrin and the orcs in Stonard 
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (12807, 17109, 27705);

-- to do: mail boxes
