/*  
    This will phase WotLK TBC NPCs & Gobjects placed in WotLK areas until they were originally added to the game.
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
