/*
   Latest version of Patch-V is required for this to work.
   Re-route The Bravery to follow the pre-WotLK path to Menethil Harbor. The Northspear, now departs from Stormwind instead of Menethil Harbor.
   This restores the separation between the Kalimdor and Eastern Kingdom starting areas and the notorious 'Wetlands run' for players trying to change continents early.
   If not run, The Bravery will go directly to Stormwind Harbor.
*/

UPDATE `gameobject_template` SET `Data0` = 295 WHERE `entry` = 176310;  -- The Bravery
UPDATE `gameobject_template` SET `Data0` = 1981 WHERE `entry` = 181688; -- The Northspear

UPDATE `transports` SET `name` = 'Menethil Harbor and Auberdine, Darkshore ("Ship (The Bravery)")' WHERE `guid` = 2;
UPDATE `transports` SET `name` = 'Stormwind Harbor and Valgarde, Howling Fjord (Boat, Alliance ("Northspear"))' WHERE `guid` = 10;

-- update text for harbormasters
UPDATE `npc_text` SET `text0_0` = 'On the northern dock, you can board a ship that will carry you to Rut''theran Village and Darnassus. From the southern dock, you can find passage across the Great Sea to Menethil Harbor on Khaz Modan. The dock to the west, at the end of the pier, leads to Azuremyst Isle, near the Exodar. Safe journeys to you!' WHERE `ID` = 5480;
UPDATE `npc_text` SET `text0_1` = 'We\'ve sworn to do our very best to protect the passengers of The Bravery. The sea lane between Auberdine and Menethil Harbor must remain safe.' WHERE `ID` = 12270;
UPDATE `npc_text` SET `text0_0` = 'The steam-powered Alliance icebreaker Northspear sails from here to Stormwind Harbor, across the sea in the Eastern Kingdoms.' WHERE `ID` = 12638;
UPDATE `npc_text` SET `text0_1` = 'The Northspear sails from this dock to Valgarde in the Howling Fjord.$B$BIf you''d like to reach Auberdine, The Bravery sails from Menethil Harbor.' WHERE `ID` = 13321;

UPDATE `broadcast_text` SET `MaleText` = 'On the northern dock, you can board a ship that will carry you to Rut''theran Village and Darnassus. From the southern dock, you can find passage across the Great Sea to Menethil Harbor on Khaz Modan. The dock to the west, at the end of the pier, leads to Azuremyst Isle, near the Exodar. Safe journeys to you!' WHERE `ID` = 8106;
UPDATE `broadcast_text` SET `FemaleText` = 'We\'ve sworn to do our very best to protect the passengers of The Bravery. The sea lane between Auberdine and Menethil Harbor must remain safe.' WHERE `ID` = 24118;
UPDATE `broadcast_text` SET `MaleText` = 'The steam-powered Alliance icebreaker Northspear sails from here to Stormwind Harbor, across the sea in the Eastern Kingdoms.' WHERE `ID` = 25748;
UPDATE `broadcast_text` SET `FemaleText` = 'The Northspear sails from this dock to Valgarde in the Howling Fjord.$B$BIf you''d like to reach Auberdine, The Bravery sails from Menethil Harbor.' WHERE `ID` = 28636;

UPDATE `creature` SET `id1` = 6086 WHERE `guid` IN (9449, 9518);         -- replace Menethil guards with Auberdine Sentinels
DELETE FROM `creature` WHERE `guid` IN (203462, 203463, 203464, 203465); -- remove Auberdine Sentinels from Stormwind Harbor

UPDATE `gameobject_template` SET `name` = "Boat to Menethil Harbor" WHERE `entry` = 176364; -- sign

-- add new taxi path nodes to 1981, 300 to 196
DELETE FROM `taxipath_dbc` WHERE `ID` = 1981;
INSERT INTO `taxipath_dbc` (`ID`, `FromTaxiNode`, `ToTaxiNode`, `Cost`) VALUES (1981, 300, 196, 0);

-- 0-10 taken from Stormwind to Auberdine route (967), 300 to 24
-- 11-48 taken from Menethil to Valgarde route (964), 299 to 196
DELETE FROM `taxipathnode_dbc` WHERE `PathID` = 1981;
INSERT INTO `taxipathnode_dbc` (`ID`, `PathID`, `NodeIndex`, `ContinentID`, `LocX`, `LocY`, `LocZ`, `Flags`, `Delay`, `ArrivalEventID`, `DepartureEventID`) VALUES 
(50000,1981,0,0,-9064.902,1516.2056,0,0,0,0,0),
(50001,1981,1,0,-9020.901,1430.217,0,0,0,0,0),
(50002,1981,2,0,-8961.511,1355.442,0,0,0,0,0),
(50003,1981,3,0,-8864.228,1311.78687,0,0,0,0,0),
(50004,1981,4,0,-8746.162,1310.55237,0,0,0,0,0),
(50005,1981,5,0,-8650.719,1346.05127,0,2,60,19030,0),
(50006,1981,6,0,-8588.92,1379.80371,0,0,0,0,0),
(50007,1981,7,0,-8547.475,1420.05884,0,0,0,0,0),
(50008,1981,8,0,-8520.636,1496.645,0,0,0,0,0),
(50009,1981,9,0,-8544.172,1636.45056,0,0,0,0,0),
(50010,1981,10,0,-8663.575,1853.96814,0,0,0,0,0),
(50011,1981,11,571,-961.4925,-5707.88135,0,0,0,0,0),
(50012,1981,12,571,-403.671143,-5502.03564,0,0,0,0,0),
(50013,1981,13,571,-155.525177,-5409.379,0,0,0,0,0),
(50014,1981,14,571,-7.784831,-5328.58057,0,0,0,0,0),
(50015,1981,15,571,61.4432526,-5204.762,0,0,0,0,0),
(50016,1981,16,571,125.446716,-5139.68359,0,0,0,0,0),
(50017,1981,17,571,191.763885,-5084.757,0,0,0,0,0),
(50018,1981,18,571,262.733948,-5086.47754,0,0,0,0,0),
(50019,1981,19,571,351.297638,-5152.98242,0,0,0,0,0),
(50020,1981,20,571,446.2677,-5151.3623,0,0,0,0,0),
(50021,1981,21,571,520.494934,-5171.032,0,0,0,0,0),
(50022,1981,22,571,585.5191,-5206.27148,0,0,0,0,0),
(50023,1981,23,571,639.3492,-5246.682,0,0,0,0,0),
(50024,1981,24,571,692.096,-5291.55273,0,0,0,0,0),
(50025,1981,25,571,716.334656,-5338.55371,0,0,0,0,0),
(50026,1981,26,571,748.588745,-5422.865,0,0,0,0,0),
(50027,1981,27,571,799.4392,-5462.138,0,0,0,0,0),
(50028,1981,28,571,889.717957,-5470.501,0,0,0,0,0),
(50029,1981,29,571,955.5159,-5400.40039,0,0,0,0,0),
(50030,1981,30,571,983.0024,-5321.90332,0,0,0,0,0),
(50031,1981,31,571,993.5777,-5252.186,0,0,0,0,0),
(50032,1981,32,571,978.387939,-5179.028,0,0,0,0,0),
(50033,1981,33,571,907.8108,-5136.40527,0,0,0,0,0),
(50034,1981,34,571,807.639832,-5144.284,0,0,0,0,0),
(50035,1981,35,571,694.530151,-5148.08545,0,0,0,0,0),
(50036,1981,36,571,584.0138,-5118.85547,0,2,60,19123,0),
(50037,1981,37,571,507.206268,-5107.522,0,0,0,0,0),
(50038,1981,38,571,433.1082,-5142.845,0,0,0,0,0),
(50039,1981,39,571,357.554474,-5150.58154,0,0,0,0,0),
(50040,1981,40,571,294.414276,-5111.416,0,0,0,0,0),
(50041,1981,41,571,236.737518,-5080.412,0,0,0,0,0),
(50042,1981,42,571,179.596024,-5097.815,0,0,0,0,0),
(50043,1981,43,571,132.027451,-5135.98828,0,0,0,0,0),
(50044,1981,44,571,71.95768,-5198.6,0,0,0,0,0),
(50045,1981,45,571,-3.877062,-5315.229,0,0,0,0,0),
(50046,1981,46,571,-150.968689,-5416.606,0,0,0,0,0),
(50047,1981,47,571,-400.795319,-5508.57666,0,0,0,0,0),
(50048,1981,48,571,-1009.90808,-5783.04834,0,0,0,0,0); 


/*-- Remove transport from Orgrimmar to Thunder Bluff, added during WotLK (3.2.0) --*/
DELETE FROM `transports` WHERE `guid` = 20;

DELETE FROM `creature` WHERE `guid` IN (203461, 203490); -- remove Zeppelin masters at Orgrimmar and Thunder Bluff 
