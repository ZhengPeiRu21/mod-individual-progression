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
