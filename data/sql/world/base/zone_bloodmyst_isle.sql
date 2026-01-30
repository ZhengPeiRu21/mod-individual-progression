-- fix Lord Xiz path ID 0 error (these changes are correct, but sadly this doesn't fix it still)
UPDATE `creature` SET `MovementType` = 2, `currentwaypoint` = 1 WHERE `id1` = 17701;
UPDATE `creature_template` SET `MovementType` = 0 WHERE `entry` = 17701
