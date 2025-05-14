/*
    Re-route The Bravery to follow the pre-WotLK path to Menethil Harbor - fix associated text
    This restores the original separate between Kalimdor and Eastern Kingdom starting areas, and the notorious 'Wetlands run' for players trying to change continents early.
    If not run, The Bravery will go directly to Stormwind Harbor, allowing players to skip to the other continent immediately any time 
*/

UPDATE `gameobject_template` SET `Data0` = 295 WHERE `entry` = 176310;
UPDATE `transports` SET `name` = 'Menethil Harbor and Auberdine, Darkshore ("Ship (The Bravery)")' WHERE `guid` = 2;
UPDATE `npc_text` SET `text0_1` = 'We\'ve sworn to do our very best to protect the passengers of The Bravery. The sea lane between Auberdine and Menethil Harbor must remain safe.' WHERE `ID` = 12270;
UPDATE `npc_text` SET `text0_1` = 'No ship currently sails from this dock. If you''d like to reach Auberdine, The Bravery sails from Menethil Harbor.' WHERE `ID` = 13321;
UPDATE `npc_text` SET `text0_0` = 'On the northern dock, you can board a ship that will carry you to Rut''theran Village and Darnassus. From the southern dock, you can find passage across the Great Sea to Menethil Harbor on Khaz Modan. The dock to the west, at the end of the pier, leads to Azuremyst Isle, near the Exodar. Safe journeys to you!' WHERE `ID` = 5480;
UPDATE `gameobject_template` SET `name` = "Boat to Menethil Harbor" WHERE `entry` = 176364;

UPDATE `broadcast_text` SET `FemaleText` = 'We\'ve sworn to do our very best to protect the passengers of The Bravery. The sea lane between Auberdine and Menethil Harbor must remain safe.' WHERE `ID` = 24118;
UPDATE `broadcast_text` SET `MaleText` = 'On the northern dock, you can board a ship that will carry you to Rut''theran Village and Darnassus. From the southern dock, you can find passage across the Great Sea to Menethil Harbor on Khaz Modan. The dock to the west, at the end of the pier, leads to Azuremyst Isle, near the Exodar. Safe journeys to you!' WHERE `ID` = 8106;
UPDATE `broadcast_text` SET `FemaleText` = 'No ship currently sails from this dock. If you''d like to reach Auberdine, The Bravery sails from Menethil Harbor.' WHERE `ID` = 28636;


DELETE FROM `transports` WHERE `guid`=20; -- Remove transport from Orgrimmar to Thunder Bluff
-- INSERT INTO `transports` (`guid`, `entry`, `name`, `ScriptName`) VALUES 
-- (20,190549,'Orgrimmar, Durotar and Thunder Bluff, Mulgore (Zeppelin, Horde (\"The Zephyr\"))','');


/*-- Re-route the Northspear --*/

-- remove current Northspear
DELETE FROM `transports` WHERE `guid`= 10; 
-- INSERT INTO `transports` (`guid`, `entry`, `name`, `ScriptName`) VALUES 
-- (10,181688,'Menethil Harbor, Wetlands and Valgarde, Howling Fjord (Boat, Alliance (\"Northspear\"))','');

-- create copy of the Northspear
DELETE FROM `gameobject_template` WHERE `entry` = 381688;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES 
(381688, 15, 7446, 'Ship, Icebreaker (Northspear)', '', '', '', 1, 1981, 15, 1, 0, 0, 1, 612, 3481, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 12340);

-- add new Northspear to transports
DELETE FROM `transports` WHERE `guid`= 22;
INSERT INTO `transports` (`guid`, `entry`, `name`, `ScriptName`) VALUES 
(22, 381688, 'Stormwind Harbor and Valgarde, Howling Fjord ("Boat (The Northspear)")', '');

DELETE FROM `taxipath_dbc` WHERE `ID` = 1981;
INSERT INTO `taxipath_dbc` (`ID`, `FromTaxiNode`, `ToTaxiNode`, `Cost`) VALUES (1981, 300, 196, 0);

/* add new taxi path nodes for 1981 (300 to 196)
   300 is listed as Stormwind and is also used for the Stormwind to Auberdine route.
   196 is used in the Menethil to Valgarde route, with 299 being Menethil
   0-10 taken from Stormwind to Auberdine route (967), 300 to 24
   11-49 taken from Menethil to Valgarde route (964), 299 to 196 */

DELETE FROM `taxipathnode_dbc` WHERE `PathID` = 1981;
INSERT INTO `taxipathnode_dbc` (`ID`, `PathID`, `NodeIndex`, `ContinentID`, `LocX`, `LocY`, `LocZ`, `Flags`, `Delay`, `ArrivalEventID`, `DepartureEventID`) VALUES 
(50001,1981,0,0,-9064.902,1516.2056,0,0,0,0,0),
(50002,1981,1,0,-9020.901,1430.217,0,0,0,0,0),
(50003,1981,2,0,-8961.511,1355.442,0,0,0,0,0),
(50004,1981,3,0,-8864.228,1311.78687,0,0,0,0,0),
(50005,1981,4,0,-8746.162,1310.55237,0,0,0,0,0),
(50006,1981,5,0,-8650.719,1346.05127,0,2,60,19030,0),
(50007,1981,6,0,-8588.92,1379.80371,0,0,0,0,0),
(50008,1981,7,0,-8547.475,1420.05884,0,0,0,0,0),
(50009,1981,8,0,-8520.636,1496.645,0,0,0,0,0),
(50010,1981,9,0,-8544.172,1636.45056,0,0,0,0,0),
(50011,1981,10,0,-8663.575,1853.96814,0,0,0,0,0),
(50012,1981,11,571,-961.4925,-5707.881,0,0,0,0,0),
(50013,1981,12,571,-403.6711,-5502.036,0,0,0,0,0),
(50014,1981,13,571,-155.5252,-5409.379,0,0,0,0,0),
(50015,1981,14,571,-7.784831,-5328.581,0,0,0,0,0),
(50016,1981,15,571,61.44325,-5204.762,0,0,0,0,0),
(50017,1981,16,571,125.4467,-5139.684,0,0,0,0,0),
(50018,1981,17,571,191.7639,-5084.757,0,0,0,0,0),
(50019,1981,18,571,262.7339,-5086.478,0,0,0,0,0),
(50020,1981,19,571,351.2976,-5152.982,0,0,0,0,0),
(50021,1981,20,571,446.2677,-5151.362,0,0,0,0,0),
(50022,1981,21,571,520.4949,-5171.032,0,0,0,0,0),
(50023,1981,22,571,585.5191,-5206.271,0,0,0,0,0),
(50024,1981,23,571,639.3492,-5246.682,0,0,0,0,0),
(50025,1981,24,571,692.096,-5291.553,0,0,0,0,0),
(50026,1981,25,571,716.3347,-5338.554,0,0,0,0,0),
(50027,1981,26,571,748.5887,-5422.865,0,0,0,0,0),
(50028,1981,27,571,799.4392,-5462.138,0,0,0,0,0),
(50029,1981,28,571,889.718,-5470.501,0,0,0,0,0),
(50030,1981,29,571,955.5159,-5400.4,0,0,0,0,0),
(50031,1981,30,571,983.0024,-5321.903,0,0,0,0,0),
(50032,1981,31,571,993.5777,-5252.186,0,0,0,0,0),
(50033,1981,32,571,978.3879,-5179.028,0,0,0,0,0),
(50034,1981,33,571,907.8108,-5136.405,0,0,0,0,0),
(50035,1981,34,571,807.6398,-5144.284,0,0,0,0,0),
(50036,1981,35,571,694.5302,-5148.085,0,0,0,0,0),
(50037,1981,36,571,584.0138,-5118.855,0,2,60,19123,0),
(50038,1981,37,571,507.2063,-5107.522,0,0,0,0,0),
(50039,1981,38,571,433.1082,-5142.845,0,0,0,0,0),
(50040,1981,39,571,357.5545,-5150.582,0,0,0,0,0),
(50041,1981,40,571,294.4143,-5111.416,0,0,0,0,0),
(50042,1981,41,571,236.7375,-5080.412,0,0,0,0,0),
(50043,1981,42,571,179.596,-5097.815,0,0,0,0,0),
(50044,1981,43,571,132.0275,-5135.988,0,0,0,0,0),
(50045,1981,44,571,71.95768,-5198.6,0,0,0,0,0),
(50046,1981,45,571,-3.877062,-5315.229,0,0,0,0,0),
(50047,1981,46,571,-150.9687,-5416.606,0,0,0,0,0),
(50048,1981,47,571,-400.7953,-5508.577,0,0,0,0,0),
(50049,1981,48,571,-1009.908,-5783.048,0,0,0,0,0); 

