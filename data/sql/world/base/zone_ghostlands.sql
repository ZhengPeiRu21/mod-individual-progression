-- fix Eye of Dar'khan worldserver error
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` = 82897;
