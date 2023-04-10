--
-- Quest: Encoded Fragments

-- description was using tbc version (changed in ~2.1)
UPDATE `quest_template` SET `QuestDescription`='Lord Ravenholdt has asked a favor of us both.  He wishes to remove the enchantment from this bag.$b$bUnfortunately, some of my books on the subject of dispelling were taken recently, only to be destroyed by savages.  The remains of my books are still valuable to me.$b$bIf you can bring me enough of the encoded fragments, I can piece them back together.  Your best chance is to kill forest oozes, since they have a tendency to pick up just about anything.  You\'ll find them in northeast Azshara.' WHERE  `ID`=8235;

-- remove questdrops from TBC version
DELETE FROM `creature_loot_template` WHERE `item`=20023 AND `entry` IN (6377, 6378, 6379, 6380, 8762);
