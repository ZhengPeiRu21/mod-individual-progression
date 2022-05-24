/* Optional but suggested change. Be sure to run AFTER vanilla_quest_reputations.sql.
   Increases the Rep for The Hand of the Righteous by 40 times, so only about 5 turn-ins are necessary instead of 200.
   Feel free to adjust to taste - divide RewardFactionOverride1 by 100 to get the amount of rep that would be awarded */
UPDATE quest_template SET RewardFactionOverride1=800000, RewardFactionOverride2=0,RewardFactionOverride3=0,RewardFactionOverride4=0,RewardFactionOverride5=0 WHERE ID=8301;
UPDATE quest_template SET RewardFactionOverride1=800000, RewardFactionOverride2=0,RewardFactionOverride3=0,RewardFactionOverride4=0,RewardFactionOverride5=0 WHERE ID=8302;
