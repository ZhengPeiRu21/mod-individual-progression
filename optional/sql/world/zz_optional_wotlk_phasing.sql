/*  
    This will phase WotLK NPCs & Gobjects placed in WotLK areas until they were originally added to the game.
*/

/* 3.3 - ICC */
/* Open world ICC NPCs */
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk_icc' WHERE `map` = 571 AND `id1` IN (
36624, -- Caladis Brightspear, Icecrown
36642, -- Myralion Sunblaze, Icecrown
36656, -- Silver Covenant Sentinel, Icecrown
36657, -- Sunreaver War Mage, Icecrown
37742 -- Drugan Deepdraught, Icecrown
);

/* Open world ICC gobjects, including meeting stone */
UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_wotlk_icc'  WHERE `map` = 571 AND `id` IN (195695, 202184, 202218);

/* 3.3.5 - Gnomeregan Operation */
/* Open world Gnomeregan Operation NPCs in Dun Morogh */
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk_rubysanctum' WHERE `map` = 0 AND `id1` IN (
39263, -- Disassembled Mechano-Tank, Dun Morogh
39275, -- Gnomeregan Medic, Dun Morogh
39349, -- Gnomeregan Trainee, Dun Morogh
39368, -- Drill Sergeant Steamcrank, Dun Morogh
39386, -- Pilot Muzzlesprock, Dun Morogh
39396, -- 'Thunderflash', Dun Morogh
39675, -- Captain Tread Sparknozzle, Dun Morogh
39678, -- Toby Zeigear <Speechwriter>, Dun Morogh
39711, -- Mechano-Tank Attack Target, Dun Morogh
39715, -- Ejector Mechano-Tank, Dun Morogh
39716, -- Scuttling Mechano-Tank, Dun Morogh
39717 -- Shooting Mechano-Tank, Dun Morogh
);

/* Open world Gnomeregan Operation gobjects */
UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_wotlk_rubysanctum' 
WHERE `guid` BETWEEN 151244 AND 151888
AND `map` = 0
AND `id` IN (
179968, -- Haystack 01, Dun Morogh
180038, -- Haybail 02, Dun Morogh
187254, -- Rolled Scroll, Dun Morogh
194498, -- Gnomeregan Banner, Dun Morogh
202564, -- Gnome Table, Dun Morogh
202713 -- Hazard Light Red 02, Dun Morogh
);

