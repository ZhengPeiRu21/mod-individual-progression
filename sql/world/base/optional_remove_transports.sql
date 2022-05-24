/* Removes transports added in WotLK that remove separation between the continents in early game. */
-- From Stormwind to Auberdine
DELETE FROM `transports` WHERE `guid`=2;

-- From Orgrimmar to Thunder Bluff
DELETE FROM `transports` WHERE `guid`=20;