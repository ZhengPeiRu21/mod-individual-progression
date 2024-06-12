-- Enable Naxxramas Map (mapID: 533)
SET @MAP_ID := 533;
DELETE FROM `disables` WHERE `entry` = @MAP_ID;
