/* These commands will remove quest markers from the map so that player need to read quest description. These markers were added in late WotLK. */
/* This is the optional file with the most differing opinions from players on whether to enable or disable - older versions of the module had it disabled
   by default. Because the opinion is so mixed, I have changed it to be enabled by default, as this is the most accurate to pre-3.2 WoW and the quests
   were designed to be played without markers. But please feel free to comment out or delete this file if you prefer to have them! */

DELETE FROM `gameobject_questitem` WHERE `GameObjectEntry` BETWEEN 32 AND 201937;
DELETE FROM `quest_poi` WHERE `QuestID` BETWEEN 1 AND 25495;
DELETE FROM `quest_poi_points` WHERE `QuestID` BETWEEN 1 AND 25495;
DELETE FROM `creature_questitem` WHERE `CreatureEntry` BETWEEN 3 AND 39819;
