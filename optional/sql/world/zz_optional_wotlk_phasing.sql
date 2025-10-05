/*  
    This will phase WotLK NPCs & Gobjects placed in WotLK areas until they were originally added to the game.
*/

/* 3.1 - Ulduar */
/* Ulduar raid portal phasing */
UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_wotlk_ulduar' WHERE `map` = 571 AND `guid` IN (61102,66839) AND `id` IN (192512,192511);

/* 3.2 - TotC */
/* TotC raid & dungeon portal phasing */
UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_wotlk_totc' WHERE `map` = 571 AND `guid` IN (58075,58079,58087,58106,58111,58116) AND `id` IN (195592,195593,195594,195595,195596,195598);

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
/* ICC raid & dungeon portal phasing */
UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_wotlk_icc'  WHERE `map` = 571 AND `guid` IN (151103,151104,151105,151106,151108,151109,151110,151111,151113,151114) AND `id` IN (202347,202348,202349,202350,196391,196392);

/* 3.3 - Sanctum Ruby + Limited Cataclysm preparation events */
/* Open world "Operation: Gnomeregan" NPCs in Dun Morogh */
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
/* Open world "Operation: Gnomeregan" gobjects */
UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_wotlk_rubysanctum' WHERE `guid` BETWEEN 151244 AND 151888 AND `map` = 0 AND `id` IN (
179968, -- Haystack 01, Dun Morogh
180038, -- Haybail 02, Dun Morogh
187254, -- Rolled Scroll, Dun Morogh
194498, -- Gnomeregan Banner, Dun Morogh
202564, -- Gnome Table, Dun Morogh
202713 -- Hazard Light Red 02, Dun Morogh
);
/* Sanctum Ruby raid portal phasing */
UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_wotlk_rubysanctum' WHERE `map` = 571 AND `guid` IN (151153,151154,151155,151156) AND `id` IN (203959,203960,203961,203962);
