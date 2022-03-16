/* These commands will remove quest markers so that player need to read quest description and think about it. These markers were added in late WotLK. */
/* This is all commented out by default because there are many players who will not like this change! Uncomment and run this file to remove the quest markers. */

# DELETE FROM `gameobject_questitem`;
# DELETE FROM `quest_poi`;
# DELETE FROM `quest_poi_points`;
# DELETE FROM `creature_questitem`;