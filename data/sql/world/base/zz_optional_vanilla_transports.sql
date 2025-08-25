/*
   Latest version of Patch-V is required for this to work.
   Re-route The Bravery to follow the pre-WotLK path to Menethil Harbor. The Northspear, now departs from Stormwind instead of Menethil Harbor.
   This restores the separation between the Kalimdor and Eastern Kingdom starting areas and the notorious 'Wetlands run' for players trying to change continents early.
   If not run, The Bravery will go directly to Stormwind Harbor.
*/

-- UPDATE `gameobject_template` SET `Data0` = 295 WHERE `entry` = 176310;  -- The Bravery
-- UPDATE `gameobject_template` SET `Data0` = 1981 WHERE `entry` = 181688; -- The Northspear

-- UPDATE `transports` SET `name` = 'Menethil Harbor and Auberdine, Darkshore ("Ship (The Bravery)")' WHERE `guid` = 2;
-- UPDATE `transports` SET `name` = 'Stormwind Harbor and Valgarde, Howling Fjord (Boat, Alliance ("Northspear"))' WHERE `guid` = 10;

-- -- update text for harbormasters
-- UPDATE `npc_text` SET `text0_0` = 'On the northern dock, you can board a ship that will carry you to Rut''theran Village and Darnassus. From the southern dock, you can find passage across the Great Sea to Menethil Harbor on Khaz Modan. The dock to the west, at the end of the pier, leads to Azuremyst Isle, near the Exodar. Safe journeys to you!' WHERE `ID` = 5480;
-- UPDATE `npc_text` SET `text0_1` = 'We''ve sworn to do our very best to protect the passengers of The Bravery. The sea lane between Auberdine and Menethil Harbor must remain safe.' WHERE `ID` = 12270;
-- UPDATE `npc_text` SET `text0_0` = 'The steam-powered Alliance icebreaker Northspear sails from here to Stormwind Harbor, across the sea in the Eastern Kingdoms.' WHERE `ID` = 12638;
-- UPDATE `npc_text` SET `text0_1` = 'The Northspear sails from this dock to Valgarde in the Howling Fjord.$B$BIf you''d like to reach Auberdine, The Bravery sails from Menethil Harbor.' WHERE `ID` = 13321;

-- UPDATE `broadcast_text` SET `MaleText` = 'On the northern dock, you can board a ship that will carry you to Rut''theran Village and Darnassus. From the southern dock, you can find passage across the Great Sea to Menethil Harbor on Khaz Modan. The dock to the west, at the end of the pier, leads to Azuremyst Isle, near the Exodar. Safe journeys to you!' WHERE `ID` = 8106;
-- UPDATE `broadcast_text` SET `FemaleText` = 'We''ve sworn to do our very best to protect the passengers of The Bravery. The sea lane between Auberdine and Menethil Harbor must remain safe.' WHERE `ID` = 24118;
-- UPDATE `broadcast_text` SET `MaleText` = 'The steam-powered Alliance icebreaker Northspear sails from here to Stormwind Harbor, across the sea in the Eastern Kingdoms.' WHERE `ID` = 25748;
-- UPDATE `broadcast_text` SET `FemaleText` = 'The Northspear sails from this dock to Valgarde in the Howling Fjord.$B$BIf you''d like to reach Auberdine, The Bravery sails from Menethil Harbor.' WHERE `ID` = 28636;

-- UPDATE `creature` SET `id1` = 6086 WHERE `guid` IN (9449, 9518);         -- replace Menethil guards with Auberdine Sentinels
-- DELETE FROM `creature` WHERE `guid` IN (203462, 203463, 203464, 203465); -- remove Auberdine Sentinels from Stormwind Harbor

-- UPDATE `gameobject_template` SET `name` = "Boat to Menethil Harbor" WHERE `entry` = 176364; -- sign

-- -- add new taxi path nodes to 1981, 300 to 196
-- DELETE FROM `taxipath_dbc` WHERE `ID` = 1981;
-- INSERT INTO `taxipath_dbc` (`ID`, `FromTaxiNode`, `ToTaxiNode`, `Cost`) VALUES (1981, 300, 196, 0);

-- -- 0-10 taken from Stormwind to Auberdine route (967), 300 to 24
-- -- 11-48 taken from Menethil to Valgarde route (964), 299 to 196
-- DELETE FROM `taxipathnode_dbc` WHERE `PathID` = 1981;
-- INSERT INTO `taxipathnode_dbc` (`ID`, `PathID`, `NodeIndex`, `ContinentID`, `LocX`, `LocY`, `LocZ`, `Flags`, `Delay`, `ArrivalEventID`, `DepartureEventID`) VALUES 
-- (50000,1981,0,0,-9064.902,1516.2056,0,0,0,0,0),
-- (50001,1981,1,0,-9020.901,1430.217,0,0,0,0,0),
-- (50002,1981,2,0,-8961.511,1355.442,0,0,0,0,0),
-- (50003,1981,3,0,-8864.228,1311.78687,0,0,0,0,0),
-- (50004,1981,4,0,-8746.162,1310.55237,0,0,0,0,0),
-- (50005,1981,5,0,-8650.719,1346.05127,0,2,60,19030,0),
-- (50006,1981,6,0,-8588.92,1379.80371,0,0,0,0,0),
-- (50007,1981,7,0,-8547.475,1420.05884,0,0,0,0,0),
-- (50008,1981,8,0,-8520.636,1496.645,0,0,0,0,0),
-- (50009,1981,9,0,-8544.172,1636.45056,0,0,0,0,0),
-- (50010,1981,10,0,-8663.575,1853.96814,0,0,0,0,0),
-- (50011,1981,11,571,-961.4925,-5707.88135,0,0,0,0,0),
-- (50012,1981,12,571,-403.671143,-5502.03564,0,0,0,0,0),
-- (50013,1981,13,571,-155.525177,-5409.379,0,0,0,0,0),
-- (50014,1981,14,571,-7.784831,-5328.58057,0,0,0,0,0),
-- (50015,1981,15,571,61.4432526,-5204.762,0,0,0,0,0),
-- (50016,1981,16,571,125.446716,-5139.68359,0,0,0,0,0),
-- (50017,1981,17,571,191.763885,-5084.757,0,0,0,0,0),
-- (50018,1981,18,571,262.733948,-5086.47754,0,0,0,0,0),
-- (50019,1981,19,571,351.297638,-5152.98242,0,0,0,0,0),
-- (50020,1981,20,571,446.2677,-5151.3623,0,0,0,0,0),
-- (50021,1981,21,571,520.494934,-5171.032,0,0,0,0,0),
-- (50022,1981,22,571,585.5191,-5206.27148,0,0,0,0,0),
-- (50023,1981,23,571,639.3492,-5246.682,0,0,0,0,0),
-- (50024,1981,24,571,692.096,-5291.55273,0,0,0,0,0),
-- (50025,1981,25,571,716.334656,-5338.55371,0,0,0,0,0),
-- (50026,1981,26,571,748.588745,-5422.865,0,0,0,0,0),
-- (50027,1981,27,571,799.4392,-5462.138,0,0,0,0,0),
-- (50028,1981,28,571,889.717957,-5470.501,0,0,0,0,0),
-- (50029,1981,29,571,955.5159,-5400.40039,0,0,0,0,0),
-- (50030,1981,30,571,983.0024,-5321.90332,0,0,0,0,0),
-- (50031,1981,31,571,993.5777,-5252.186,0,0,0,0,0),
-- (50032,1981,32,571,978.387939,-5179.028,0,0,0,0,0),
-- (50033,1981,33,571,907.8108,-5136.40527,0,0,0,0,0),
-- (50034,1981,34,571,807.639832,-5144.284,0,0,0,0,0),
-- (50035,1981,35,571,694.530151,-5148.08545,0,0,0,0,0),
-- (50036,1981,36,571,584.0138,-5118.85547,0,2,60,19123,0),
-- (50037,1981,37,571,507.206268,-5107.522,0,0,0,0,0),
-- (50038,1981,38,571,433.1082,-5142.845,0,0,0,0,0),
-- (50039,1981,39,571,357.554474,-5150.58154,0,0,0,0,0),
-- (50040,1981,40,571,294.414276,-5111.416,0,0,0,0,0),
-- (50041,1981,41,571,236.737518,-5080.412,0,0,0,0,0),
-- (50042,1981,42,571,179.596024,-5097.815,0,0,0,0,0),
-- (50043,1981,43,571,132.027451,-5135.98828,0,0,0,0,0),
-- (50044,1981,44,571,71.95768,-5198.6,0,0,0,0,0),
-- (50045,1981,45,571,-3.877062,-5315.229,0,0,0,0,0),
-- (50046,1981,46,571,-150.968689,-5416.606,0,0,0,0,0),
-- (50047,1981,47,571,-400.795319,-5508.57666,0,0,0,0,0),
-- (50048,1981,48,571,-1009.90808,-5783.04834,0,0,0,0,0); 


/*-- Remove transport from Orgrimmar to Thunder Bluff, added during WotLK (3.2.0) --*/
DELETE FROM `transports` WHERE `guid` = 20;

DELETE FROM `creature` WHERE `guid` IN (203461, 203490); -- remove Zeppelin masters at Orgrimmar and Thunder Bluff 

/*-- Remove post-Vanilla NPCs added later (2.0+) in Vanilla transports --*/
/* Doesn't remove NPCs from new transports added during TBC or WoTLK, it only removes NPCs added later in old Vanilla transports */
DELETE FROM `creature` 
WHERE `map` IN (
582, -- Transport: Rut'theran to Auberdine
584, -- Transport: Menethil to Theramore
587, -- Transport: Feathermoon Ferry
589, -- Transport: Orgrimmar to Grom'Gol
590, -- Transport: Grom'Gol to Undercity
591, -- Transport: Undercity to Orgrimmar
593 -- Transport: Booty Bay to Ratchet
)
AND `id1` IN (
24456, -- Captain Taldar Windsinger, Boat
24833, -- Captain "Stash" Torgoley, Boat
24834, -- Galley Chief Grace, Boat
24835, -- First Mate Kowalski, Boat
24836, -- Abe the Cabin Boy, Boat
24837, -- Navigator Mehran, Boat
24839, -- Sailor Wicks, Boat
24840, -- Sailor Vines, Boat
24841, -- Marine Halters, Boat
24842, -- Marine Anderson, Boat
24843, -- Engineer Combs, Boat
24924, -- Sky-Captain Bomblast, Zep
24926, -- Chief Officer Brassbolt, Zep
24927, -- Navigator Sparksizzle, Zep
24929, -- Crewman Crosswire, Zep
24930, -- Crewman Gazzlegear, Zep
24931, -- Crewman Fastwrench, Zep
24934, -- Snack-O-Matic IV, Zep
24935, -- Vend-O-Tron D-Luxe, Zep
24993, -- Galley Chief Mariss, Boat
24995, -- Merchant Fallel Stargazer, Boat
24996, -- Mariner Bladewhisper, Boat
24997, -- Mariner Swiftstar, Boat
25007, -- Mariner Evenmist, Boat
25019, -- Merchant Felagunne, Boat
25020, -- Galley Chief Alunwea, Boat
25021, -- Mariner Moonblade, Boat
25022, -- Mariner Stillwake, Boat
25023, -- Mariner Everwatch, Boat
25024, -- Mariner Softsong, Boat
25025, -- Captain Idrilae, Boat
25070, -- Chief Officer Coppernut, Zep
25071, -- Crewman Rusthammer, Zep
25072, -- Crewman Quickfix, Zep
25074, -- Crewman Sparkfly, Zep
25075, -- Zeppelin Controls, Zep
25076, -- Navigator Fairweather, Zep
25077, -- Sky-Captain Cloudkicker, Zep
25078, -- Captain Krick Wrenchnozzle, Boat
25079, -- Deathguard Fowles, Zep
25080, -- Grunt Umgor, Zep
25081, -- Grunt Ounda, Zep
25082, -- Engineer Torquespindle, Boat
25083, -- Deathguard Lawson, Zep
25089, -- Galley Chief Steelbelly, Boat
25093, -- First Mate Masker, Boat
25094, -- Navigator Tah're, Boat
25095, -- Crewman Springwidget, Boat
25097, -- Crewman Hammertink, Boat
25100, -- Chief Officer Hammerflange, Zep
25101, -- Crewman Cutpipe, Zep
25102, -- Crewman Spinshaft, Zep
25103, -- Crewman Boltshine, Zep
25104, -- Navigator Hatch, Zep
25105, -- Sky-Captain Cableclamp, Zep
25106, -- Watcher Du'una, Zep
25107, -- Watcher Umjin, Zep
25111 -- Treasure, Boat
);

/* 3.0 - Block access to Northrend Horde transports until WotLK */
/* mainly for cosmetic purpose */
DELETE FROM `gameobject` WHERE `guid` IN (6184274, 6184275, 6184276, 6184277);
INSERT INTO `gameobject` VALUES
(6184274, 184274, 1, 0, 0, 1, 1, 1170.86, -4166.63, 24.3501, 5.343030, -0, -0, -0.452956, 0.8915330, 300, 0, 1, 'gobject_ipp_pre_wotlk', 0, 'IPP Pre-WotLK'),
(6184275, 184274, 0, 0, 0, 1, 1, 2067.68, 339.9780, 69.9851, 1.929900, -0, -0, -0.822021, -0.569458, 300, 0, 1, 'gobject_ipp_pre_wotlk', 0, 'IPP Pre-WotLK'),
(6184276, 184274, 0, 0, 0, 1, 1, 2080.97, 319.4470, 59.0478, 0.346562, -0, -0, -0.172415, -0.985024, 300, 0, 1, 'gobject_ipp_pre_wotlk', 0, 'IPP Pre-WotLK'),
(6184277, 184274, 0, 0, 0, 1, 1, 2070.46, 315.4950, 58.7964, 0.307293, -0, -0, -0.153043, -0.988220, 300, 0, 1, 'gobject_ipp_pre_wotlk', 0, 'IPP Pre-WotLK');

/* Restore/keep post-Vanilla NPCs in Vanilla transports if needed/deleted */
-- INSERT IGNORE INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
-- (142717,24456,0,0,582,0,0,1,1,0,29.5627,0.150031,16.6147,3.18002,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142718,24993,0,0,582,0,0,1,1,1,13.1874,7.71381,6.07001,3.09834,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142719,24995,0,0,582,0,0,1,1,1,13.3456,-7.63689,6.09325,3.06064,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142720,24996,0,0,582,0,0,1,1,1,-0.258897,-7.62734,4.80823,5.66423,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142721,24997,0,0,582,0,0,1,1,1,-0.416482,4.39825,4.79739,5.10346,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142722,25007,0,0,582,0,0,1,1,1,21.2462,1.87803,11.7334,3.19572,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (52011,24833,0,0,584,0,0,1,1,0,37.0303,4.62236,6.17641,1,120,0,0,1474,0,2,0,0,0,'',0,0,NULL),
-- (52012,24834,0,0,584,0,0,1,1,0,17.7362,-7.96364,6.18101,1.65806,120,0,0,1474,0,0,0,0,0,'',0,0,NULL),
-- (52013,24835,0,0,584,0,0,1,1,0,24.6154,5.46865,16.124,3.1765,120,0,0,1358,0,2,0,0,0,'',0,0,NULL),
-- (52014,24836,0,0,584,0,0,1,1,0,-2.2334,2.55383,6.09902,1.57667,120,0,0,312,0,2,0,0,0,'',0,0,NULL),
-- (52015,24837,0,0,584,0,0,1,1,0,21.2882,-6.49847,6.34678,3.66717,120,0,0,867,0,2,0,0,0,'',0,0,NULL),
-- (52017,24839,0,0,584,0,0,1,1,0,9.59588,-1.21492,11.801,1.53995,120,0,0,804,0,2,0,0,0,'',0,0,NULL),
-- (52018,24840,0,0,584,0,0,1,1,0,-12.1809,5.48897,6.14024,1.08723,120,0,0,804,0,2,0,0,0,'',0,0,NULL),
-- (52019,24841,0,0,584,0,0,1,1,0,-9.323,-1.66992,6.09808,0.0174532,120,0,0,10236,0,0,0,0,0,'',0,0,NULL),
-- (52020,24842,0,0,584,0,0,1,1,0,20.1177,-6.31861,6.38887,3.3096,120,0,0,10236,0,2,0,0,0,'',0,0,NULL),
-- (52021,24843,0,0,584,0,0,1,1,0,6.35056,8.71821,6.18084,5.42797,120,0,0,928,0,0,0,0,0,'',0,0,NULL),
-- (142731,25019,0,0,587,0,0,1,1,1,12.805,-7.60196,6.10507,2.9147,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142732,25020,0,0,587,0,0,1,1,1,12.9539,7.33394,6.13112,3.28122,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142733,25021,0,0,587,0,0,1,1,1,-21.4174,-2.8336,4.39169,6.24828,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142734,25022,0,0,587,0,0,1,1,1,20.8633,-1.28591,11.809,2.94961,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142735,25023,0,0,587,0,0,1,1,1,-36.7691,0.169367,5.97592,3.1765,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142736,25024,0,0,587,0,0,1,1,1,-21.6595,3.22012,4.40273,0.139626,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142737,25025,0,0,587,0,0,1,1,0,31.131,-0.454317,16.7328,2.96706,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142748,24924,0,0,589,0,0,1,1,1,-1.2076,-9.94886,-23.6749,0.15708,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142749,24926,0,0,589,0,0,1,1,1,-10.3057,-12.1052,-16.9691,5.92724,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142750,24927,0,0,589,0,0,1,1,0,-1.87417,-7.84711,-23.6872,3.38594,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142751,24929,0,0,589,0,0,1,1,1,9.08301,-4.96411,-23.5921,1.59406,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142752,24930,0,0,589,0,0,1,1,1,-17.0083,-7.87488,-15.1878,3.14159,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142753,24931,0,0,589,0,0,1,1,1,7.88492,-11.1513,-17.7623,4.90483,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142754,24934,0,0,589,0,0,1,1,0,9.20919,-3.50392,-23.5121,3.12414,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142755,24935,0,0,589,0,0,1,1,0,9.55492,-12.0229,-23.5059,3.12414,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142756,25075,0,0,589,0,0,1,1,0,-2.70556,-7.84588,-23.6967,0.0349066,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142757,25080,0,0,589,0,0,1,1,1,-4.91002,-4.74236,-17.6153,1.6057,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142758,25081,0,0,589,0,0,1,1,1,-4.93939,-10.8049,-17.6109,4.71239,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142759,24934,0,0,590,0,0,1,1,0,9.63549,-3.67192,-23.588,6.25904,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142760,24935,0,0,590,0,0,1,1,0,9.79838,-11.8681,-23.5848,6.25118,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142761,25075,0,0,590,0,0,1,1,0,-3.59133,-7.84061,-23.7802,6.1969,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142762,25100,0,0,590,0,0,1,1,1,-0.411733,-5.7239,-23.7457,3.70414,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142763,25101,0,0,590,0,0,1,1,1,7.56919,-4.02088,-17.7543,4.77071,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142764,25102,0,0,590,0,0,1,1,1,-11.0882,-3.47446,-16.7988,2.00924,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142765,25103,0,0,590,0,0,1,1,1,7.59398,-11.5166,-17.7745,1.62204,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142766,25104,0,0,590,0,0,1,1,0,-0.898213,-7.76559,-23.7548,3.11116,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142767,25105,0,0,590,0,0,1,1,1,-9.54405,-7.94072,-17.2053,3.17242,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142768,25106,0,0,590,0,0,1,1,1,-4.93938,-10.9634,-17.6988,4.76285,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142769,25107,0,0,590,0,0,1,1,1,-4.98215,-4.67863,-17.696,1.59455,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142771,24934,0,0,591,0,0,1,1,0,-4.5165,-13.1125,-22.5947,1.53589,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142772,24935,0,0,591,0,0,1,1,0,-6.37827,-13.1838,-22.5939,4.71239,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142773,25070,0,0,591,0,0,1,1,1,-9.40787,-8.02398,-17.1578,3.1765,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142774,25071,0,0,591,0,0,1,1,1,7.24887,-5.48033,-17.6859,4.81711,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142775,25072,0,0,591,0,0,1,1,1,8.00807,-10.7134,-17.6737,1.16937,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142776,25074,0,0,591,0,0,1,1,1,5.02375,-7.69781,-17.7888,5.98648,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142777,25075,0,0,591,0,0,1,1,0,-4.16189,-7.68752,-23.6975,0,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142778,25075,0,0,591,0,0,1,1,0,4.36215,-2.25417,-23.59,4.71239,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142779,25075,0,0,591,0,0,1,1,0,-3.31418,-6.12881,-23.6984,4.67748,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142780,25075,0,0,591,0,0,1,1,0,4.48208,-13.4008,-23.59,1.62316,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142781,25075,0,0,591,0,0,1,1,0,-3.30777,-9.47416,-23.6959,1.55334,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142782,25075,0,0,591,0,0,1,1,0,10.7034,-3.50542,-23.49,3.24631,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142783,25075,0,0,591,0,0,1,1,0,-8.87581,-11.4028,-22.5883,6.24828,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142784,25075,0,0,591,0,0,1,1,0,10.8261,-12.1854,-23.4895,3.1765,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142785,25075,0,0,591,0,0,1,1,0,11.7436,-10.4452,-24.2189,6.16101,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142786,25076,0,0,591,0,0,1,1,0,-2.72723,-7.77286,-23.6968,1.55334,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142787,25077,0,0,591,0,0,1,1,1,-19.6886,-8.17058,-14.3765,3.1765,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142788,25079,0,0,591,0,0,1,1,1,-5.1094,-11.1466,-17.606,4.4855,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142789,25083,0,0,591,0,0,1,1,1,-5.2125,-4.92702,-17.5966,1.43117,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142791,25078,0,0,593,0,0,1,1,1,34.095,3.54049,17.8892,5.50987,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142792,25082,0,0,593,0,0,1,1,1,15.6121,1.09944,6.09764,2.52482,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142793,25089,0,0,593,0,0,1,1,1,17.8437,-7.84575,6.09877,1.64493,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142794,25093,0,0,593,0,0,1,1,1,15.8067,-5.80051,11.9732,1.86484,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142795,25094,0,0,593,0,0,1,1,1,34.0585,-0.04162,18.2865,3.17017,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142796,25095,0,0,593,0,0,1,1,1,9.39981,9.17899,11.5941,1.52083,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142797,25097,0,0,593,0,0,1,1,1,-11.4014,6.67999,6.09785,2.93715,120,0,0,1,0,0,0,0,0,'',0,0,NULL),
-- (142798,25111,0,0,593,0,0,1,1,0,6.20811,0.005208,14.0554,2.54813,120,0,0,1,0,0,0,0,0,'',0,0,NULL);

/* Restore/keep "The Bravery" as in WotLK (not Vanilla) if you want to avoid client modifications */
-- UPDATE `gameobject_template` SET `Data0` = 967 WHERE `entry` = 176310;
-- UPDATE `gameobject_template` SET `Data0` = 964 WHERE `entry` = 181688;
-- UPDATE `transports` SET `name` = 'Auberdine, Darkshore and Stormwind Harbor (Boat, Alliance ("The Bravery"))' WHERE `entry` = 176310;
-- UPDATE `transports` SET `name` = 'Menethil Harbor, Wetlands and Valgarde, Howling Fjord (Boat, Alliance ("Northspear"))' WHERE `entry` = 181688;
-- UPDATE `npc_text` SET `text0_0` = 'On the northern dock, you can board a ship that will carry you to Rut''theran Village and Darnassus. From the southern dock, you can find passage across the Great Sea to Stormwind Harbor. The dock to the west, at the end of the pier, leads to Azuremyst Isle, near the Exodar. Safe journeys to you!' WHERE `ID` = 5480;
-- UPDATE `npc_text` SET `text0_1` = 'We''ve sworn to do our very best to protect the passengers of The Bravery. The sea lane between Auberdine to Stormwind Harbor must remain safe.' WHERE `ID` = 12270;
-- UPDATE `npc_text` SET `text0_0` = 'The steam-powered Alliance icebreaker Northspear sails from here to Menethil Harbor in the Wetlands, across the sea in the Eastern Kingdoms.'WHERE `ID` = 12638;
-- UPDATE `npc_text` SET `text0_1` = 'From this dock, The Bravery travels back and forth between Stormwind and Auberdine.' WHERE `ID` = 13321;
-- UPDATE `broadcast_text` SET `MaleText` = 'On the northern dock, you can board a ship that will carry you to Rut''theran Village and Darnassus. From the southern dock, you can find passage across the Great Sea to Stormwind Harbor. The dock to the west, at the end of the pier, leads to Azuremyst Isle, near the Exodar. Safe journeys to you!' WHERE `ID` = 8106;
-- UPDATE `broadcast_text` SET `FemaleText` = 'We''ve sworn to do our very best to protect the passengers of The Bravery. The sea lane between Rut''theran Village and Stormwind Harbor must remain safe.' WHERE `ID` = 24118;
-- UPDATE `broadcast_text` SET `MaleText` = 'The steam-powered Alliance icebreaker Northspear sails from here to Menethil Harbor in the Wetlands, across the sea in the Eastern Kingdoms.' WHERE `ID` = 25748;
-- UPDATE `broadcast_text` SET `FemaleText` = 'From this dock, The Bravery travels back and forth between Stormwind and Rut''theran Village.' WHERE `ID` = 28636;
-- UPDATE `creature` SET `id1` = 1434 WHERE `guid` IN (9449, 9518);   
-- DELETE FROM `creature` WHERE `guid` IN (203462, 203463, 203464, 203465);
-- INSERT INTO `creature` VALUES (203462,6086,0,0,0,0,0,1,1,1,-8606.82,1239.39,5.33124,0.6379,275,0,0,3048,0,0,0,0,0,'',0,0,NULL), (203463,6086,0,0,0,0,0,1,1,1,-8592.74,1246.62,5.3304,3.63,275,0,0,3048,0,0,0,0,0,'',0,0,NULL), (203464,6086,0,0,0,0,0,1,1,1,-8645.35,1314.62,5.33226,0.43,275,0,0,3048,0,0,0,0,0,'',0,0,NULL), (203465,6086,0,0,0,0,0,1,1,1,-8633.03,1322.93,5.33226,3.8,275,0,0,3048,0,0,0,0,0,'',0,0,NULL);
-- UPDATE `gameobject_template` SET `name` = "Boat to Stormwind" WHERE `entry` = 176364;
-- DELETE FROM `taxipath_dbc` WHERE `ID` = 1981;
-- DELETE FROM `taxipathnode_dbc` WHERE `PathID` = 1981;
