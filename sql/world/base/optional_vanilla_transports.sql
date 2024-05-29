/* Re-route The Bravery to follow the pre-WotLK path to Menethil Harbor - fix associated text */
/* This restores the original separate between Kalimdor and Eastern Kingdom starting areas, and the notorious 'Wetlands run' for players trying to change continents early. */
/* If not run, The Bravery will go directly to Stormwind Harbor, allowing players to skip to the other continent immediately any time */
UPDATE `gameobject_template` SET `Data0` = 295 WHERE `entry` = 176310;
UPDATE `transports` SET `name` = 'Menethil Harbor and Auberdine, Darkshore ("Ship (The Bravery)")' WHERE `guid` = 2;
UPDATE `npc_text` SET `text0_1` = 'We\'ve sworn to do our very best to protect the passengers of The Bravery. The sea lane between Auberdine and Menethil Harbor must remain safe.' WHERE `ID` = 12270;
UPDATE `npc_text` SET `text0_1` = 'No ship currently sails from this dock. If you''d like to reach Auberdine, The Bravery sails from Menethil Harbor.' WHERE `ID` = 13321;
UPDATE `npc_text` SET `text0_0` = 'On the northern dock, you can board a ship that will carry you to Rut''theran Village and Darnassus. From the southern dock, you can find passage across the Great Sea to Menethil Harbor on Khaz Modan. The dock to the west, at the end of the pier, leads to Azuremyst Isle, near the Exodar. Safe journeys to you!' WHERE `ID` = 5480;
UPDATE `gameobject_template` SET `name` = "Boat to Menethil Harbor" WHERE `entry` = 176364;

UPDATE `broadcast_text` SET `FemaleText` = 'We\'ve sworn to do our very best to protect the passengers of The Bravery. The sea lane between Auberdine and Menethil Harbor must remain safe.' WHERE `ID` = 24118;
UPDATE `broadcast_text` SET `MaleText` = 'On the northern dock, you can board a ship that will carry you to Rut''theran Village and Darnassus. From the southern dock, you can find passage across the Great Sea to Menethil Harbor on Khaz Modan. The dock to the west, at the end of the pier, leads to Azuremyst Isle, near the Exodar. Safe journeys to you!' WHERE `ID` = 8106;
UPDATE `broadcast_text` SET `FemaleText` = 'No ship currently sails from this dock. If you''d like to reach Auberdine, The Bravery sails from Menethil Harbor.' WHERE `ID` = 28636;


/* Like the above, removes a transport added in late WotLK (3.2.0) that remove intended separation between the continents in early game. */
-- From Orgrimmar to Thunder Bluff
DELETE FROM `transports` WHERE `guid`=20;