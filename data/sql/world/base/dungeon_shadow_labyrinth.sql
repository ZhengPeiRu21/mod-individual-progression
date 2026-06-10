-- fix worldserver errors near Murmur
/* the issue is that 3 enemies have scripts to attack Murmur
   this produces errors when they get in combat with the player, it's trying to override current actions
   this fix will disable their attacks on Murmur when their target is a player. */

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` IN (-146227, -146228, -146229);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, 
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
--
(22, 1005, -146227, 0, 0, 32, 1, 16, 0, 0, 1, 0, 0, '', 'Only attack Murmur if target is not a player'),
(22, 1005, -146228, 0, 0, 32, 1, 16, 0, 0, 1, 0, 0, '', 'Only attack Murmur if target is not a player'),
(22, 1005, -146229, 0, 0, 32, 1, 16, 0, 0, 1, 0, 0, '', 'Only attack Murmur if target is not a player');
