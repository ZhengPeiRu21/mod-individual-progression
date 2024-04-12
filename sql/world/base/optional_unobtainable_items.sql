/* These changes add otherwise unobtainable items to appropriate places in the world, with suitable levels of challenge to obtain them.
   This is in line with the module's intent to allow each player to experience all of the available content in WoW - in this case,
   it removes reliance on out-of-game events, real money purchases, or cheating via GM commands.

   These items are almost entirely cosmetic and were available to players through external means - debug or cheat items not intended for player use are not added.
 */

/* Tabard of Flame (WoW TCG Promotional Item) - added as a 3% drop from Ragnaros */
DELETE FROM `creature_loot_template` WHERE `Entry`=11502 AND `Item`=23705 AND `Reference`=0 AND `GroupId`=0;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (11502, 23705, 0, 3, 0, 1, 0, 1, 1, NULL);

/* Celestial Steed (Real Money Purchase) - added as a 1% drop from Gift of the Observer */
DELETE FROM `gameobject_loot_template` WHERE `Entry`=26974 AND `Item`=54811;
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (26974, 54811, 0, 1, 0, 1, 0, 1, 1, 'Gift of the Observer - Celestial Steed');
