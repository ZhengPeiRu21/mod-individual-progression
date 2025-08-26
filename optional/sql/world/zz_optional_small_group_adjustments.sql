/* These changes are intended to be used in conjunction with autobalance, NPCBots, or other methods that allow players to complete raids with smaller groups.
   Given the nature of the module, it is not uncommon for players to be in different phases and to have difficulty finding a full group, particularly for 40-man raids.
 */

 /* -- Earlier access to Eternal Quintessence --
    This change will cause Duke Hydraxis to give Eternal Quintessence at the time he would normally give standard Aqual Quintessence, along with removing its cooldown.

    This will allow players to have the full Molten Core experience including progress through the Hydraxian Waterlords faction and all quests with appropriate rewards,
    while still allowing them to douse runes. Originally, due to the standard Quintessence being unique and having a week long cooldown, accessing the end bosses of the instance
    requires one player per boss to douse the runes.

    One other alternative provided by the module is the disabling runes entirely, which allows players to skip the faction and quests entirely and clear the instance as soon
    as they enter the first time. This is done through the module's config file (disabled by default). This optional change is a medium between the two.
*/

UPDATE `smart_scripts` SET `action_param1` = 22754 WHERE `entryorguid` = 13278 AND `id` = 1;
UPDATE `item_template` SET `spellcooldown_1` = 0, `spellcategorycooldown_1` = 0 WHERE `entry` = 22754;

/* -- Fewer Firesworn in Garr fight --
   The Garr fight in Molten Core was designed to have a group of 40 players split up to defeat the 8 Firesworn minions.
   With a smaller group, this fight becomes very difficult to manage even when scaled down.

   This change reduces the number of Firesworn to only 4, making the fight more reasonable for a smaller party without
   having to resort to excessive scaling.
 */
DELETE FROM `creature` WHERE `guid` IN (56628, 56619, 56622, 56610);
DELETE FROM `creature_formations` WHERE `memberGUID` IN (56628, 56619, 56622, 56610);
DELETE FROM `linked_respawn` WHERE `guid` IN (56628, 56619, 56622, 56610);

/* -- Restore Firesworn in Garr fight (if needed) -- */
/* DELETE FROM `creature` WHERE `guid` IN (56628, 56619, 56622, 56610);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES
(56619,12099,0,0,409,0,0,1,1,0,693.192,-494.994,-214.185,0,7200,0,0,61040,0,0,0,0,0,'',0,0,NULL),
(56610,12099,0,0,409,0,0,1,1,0,688.943,-508.177,-214.46,4.83456,7200,0,0,61040,0,0,0,0,0,'',0,0,NULL),
(56622,12099,0,0,409,0,0,1,1,0,683.891,-496.467,-213.892,6.02003,7200,0,0,61040,0,0,0,0,0,'',0,0,NULL),
(56628,12099,0,0,409,0,0,1,1,0,698.831,-507.815,-214.691,6.02004,7200,0,0,61040,0,0,0,0,0,'',0,0,NULL);

DELETE FROM `creature_formations` WHERE `memberGUID` IN (56628, 56619, 56622, 56610);
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES
(56609,56610,10,45,514,0,0),
(56609,56619,10,135,514,0,0),
(56609,56622,10,225,514,0,0),
(56609,56628,10,315,514,0,0);

DELETE FROM `linked_respawn` WHERE `guid` IN (56628, 56619, 56622, 56610);
INSERT INTO `linked_respawn` (`guid`, `linkedGuid`, `linkType`) VALUES
(56610,56609,0),
(56619,56609,0),
(56622,56609,0),
(56628,56609,0);
*/
