/*  
    This will phase WotLK NPCs & Gobjects placed in WotLK areas until they were originally added to the game.
*/

/* 3.0 - Naxx */
/* Open world WotLK NPCs */
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk' WHERE `map` = 1 AND `id1` IN (
33934 -- Ecton Brasstumbler <Apprentice Arena Vendor>, Tanaris
);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk' WHERE `map` = 530 AND `id1` IN (
33941 -- Leeni "Smiley" Smalls <Apprentice Arena Vendor>, Area52
);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk' WHERE `map` = 571 AND `id1` IN (
33938 -- Zom Bocom <Apprentice Arena Vendor>, Dalaran
);
/* Block access to Acherus area until WotLK */
DELETE FROM `gameobject` WHERE `guid` IN (6384278, 6384279);
INSERT INTO `gameobject` VALUES
(6384278, 194935, 0, 0, 0, 1, 1, 2554.358, -5553.575, 163.6444, 0, -0, -0, -0, -0, 300, 0, 1, 'gobject_ipp_pre_wotlk', 0, 'IPP Acherus area pre-WotLK'),
(6384279, 195647, 0, 0, 0, 1, 1, 1697.08, -5672.8, 100.934, 1.58118, -0, -0, -0.710768, -0.703427, 300, 0, 1, 'gobject_ipp_pre_wotlk', 0, 'IPP Acherus area pre-WotLK');

/* 3.1 - Ulduar */
/* Ulduar raid portal phasing */
UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_wotlk_ulduar' WHERE `map` = 571 AND `guid` IN (61102,66839) AND `id` IN (192512,192511);

/* 3.2 - TotC */
/* Open world TotC NPCs */
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk' WHERE `map` = 1 AND `id1` IN (
33935 -- Evee Copperspring <Arena Vendor>, Tanaris
);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk' WHERE `map` = 530 AND `id1` IN (
33933 -- Big Zokk Torquewrench <Arena Vendor>, Area52
);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk' WHERE `map` = 571 AND `id1` IN (
33937 -- Xazi Smolderpipe <Arena Vendor>, Dalaran
);
/* TotC raid & dungeon portal phasing */
UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_wotlk_totc' WHERE `map` = 571 AND `guid` IN (58075,58079,58087,58106,58111,58116) AND `id` IN (195592,195593,195594,195595,195596,195598);

/* 3.3 - ICC */
/* Open world ICC NPCs */
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk' WHERE `map` = 1 AND `id1` IN (
33939, -- Argex Irongut <Veteran Arena Vendor>, Tanaris
34093 -- Blazzek the Biter <Exceptional Arena Weaponry>, Tanaris
);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk' WHERE `map` = 530 AND `id1` IN (
33940, -- Kezzik the Striker <Veteran Arena Vendor>, Area52
34094 -- Grex Brainboiler <Exceptional Arena Weaponry>, Area52
);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk' WHERE `map` = 571 AND `id1` IN (
33936, -- Nargle Lashcord <Veteran Arena Vendor>, Dalaran
34095 -- Trapjaw Rix <Exceptional Arena Weaponry>, Dalaran
);
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

/* 3.3+ - Sanctum Ruby + Limited Cataclysm preparation events */
/* Hide Sanctum Ruby introduction quests until player has enough progress */
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 19 AND `ConditionTypeOrReference` = 8 AND `SourceEntry` IN (26012,26013,26034) AND `ConditionValue1` IN (66017);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, 
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(19, 0, 26012, 0, 0, 8, 0, 66017, 0, 0, 0, 0, 0, '', 'Quest Trouble at Wyrmrest requires Icc progression phase completed'),
(19, 0, 26013, 0, 0, 8, 0, 66017, 0, 0, 0, 0, 0, '', 'Quest Assault on the Sanctum requires Icc progression phase completed'),
(19, 0, 26034, 0, 0, 8, 0, 66017, 0, 0, 0, 0, 0, '', 'Quest The Twilight Destroyer requires Icc progression phase completed');

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
