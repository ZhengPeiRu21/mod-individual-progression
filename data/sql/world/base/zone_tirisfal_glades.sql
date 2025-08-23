/* Drop chance for Rattlecage Skull was incorrectly set to 15 - updated to 80 */
UPDATE `creature_loot_template` SET `Chance` = 80 WHERE `Entry` = 1890 AND `Item` = 6281;

-- Undertaker Mordo
DELETE FROM `creature` WHERE `id1` = 1568;
INSERT INTO `creature` (`id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES (1568, 0, 1678.99, 1667.86, 135.855, 3.76991, 300);

-- update npc names
UPDATE `creature_template` SET `name` = 'Wretched Zombie' WHERE `entry` = 1502; -- Wretched Zombie

UPDATE `creature_template` SET `subname` = 'Apprentice Herbalist'     WHERE `entry` = 2114; -- Faruza <Apprentice Herbalist>
UPDATE `creature_template` SET `subname` = 'Journeyman Alchemist'     WHERE `entry` = 2132; -- Carolai Anise <Journeyman Alchemist>
UPDATE `creature_template` SET `subname` = 'Zeppelin Master'          WHERE `entry` = 3150; -- Hin Denburg <Zeppelin Master>
UPDATE `creature_template` SET `subname` = 'Journeyman Leatherworker' WHERE `entry` = 3549; -- Shelene Rhobart <Journeyman Leatherworker>
UPDATE `creature_template` SET `subname` = 'Fisherman'                WHERE `entry` = 5690; -- Clyde Kellen <Fisherman>
UPDATE `creature_template` SET `subname` = 'Journeyman Enchanter'     WHERE `entry` = 5695; -- Vance Undergloom <Journeyman Enchanter>
UPDATE `creature_template` SET `subname` = 'Demon Trainer'            WHERE `entry` = 5749; -- Kayla Smithe <Demon Trainer>
UPDATE `creature_template` SET `subname` = 'Demon Trainer'            WHERE `entry` = 5750; -- Gina Lang <Demon Trainer>
UPDATE `creature_template` SET `subname` = 'Skinner'                  WHERE `entry` = 6289; -- Rand Rhobart <Skinner>
UPDATE `creature_template` SET `subname` = 'Zeppelin Master'          WHERE `entry` = 9566; -- Zapetta <Zeppelin Master>

-- update npc factions
UPDATE `creature_template` SET `faction` = 22 WHERE `entry` = 1505;  -- Night Web Spider
UPDATE `creature_template` SET `faction` = 67 WHERE `entry` = 1506;  -- Scarlet Convert
UPDATE `creature_template` SET `faction` = 67 WHERE `entry` = 1507;  -- Scarlet Initiate
UPDATE `creature_template` SET `faction` = 67 WHERE `entry` = 1667;  -- Meven Korgal
UPDATE `creature_template` SET `faction` = 22 WHERE `entry` = 1688;  -- Night Web Matriarch
UPDATE `creature_template` SET `faction` = 67 WHERE `entry` = 13158; -- Lieutenant Sanders

-- update npc levels
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry` = 1736; -- Deathguard Randolph
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry` = 1737; -- Deathguard Oliver
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry` = 1739; -- Deathguard Phillip
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry` = 1741; -- Deathguard Bartrand
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry` = 7980; -- Deathguard Elite

-- update npc ranks
UPDATE `creature_template` SET `rank` = 1 WHERE `entry` = 4280; -- Scarlet Preserver
UPDATE `creature_template` SET `rank` = 1 WHERE `entry` = 4281; -- Scarlet Scout
UPDATE `creature_template` SET `rank` = 1 WHERE `entry` = 4282; -- Scarlet Magician
UPDATE `creature_template` SET `rank` = 1 WHERE `entry` = 4283; -- Scarlet Sentry
UPDATE `creature_template` SET `rank` = 1 WHERE `entry` = 4284; -- Scarlet Augur
UPDATE `creature_template` SET `rank` = 1 WHERE `entry` = 4285; -- Scarlet Disciple

DELETE FROM `npc_trainer` WHERE `ID` IN (2114, 2132, 3549, 4773, 5690, 5695, 5759, 6289);
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES 
(2114, -370000), -- Faruza <Apprentice Herbalist>
(2132, -300000), -- Carolai Anise <Journeyman Alchemist>
(3549, -380000), -- Shelene Rhobart <Journeyman Leatherworker>
(4773, -450000), -- Velma Warnam <Riding Trainer>
(5690, -360000), -- Clyde Kellen <Fisherman>
(5695, -330000), -- Vance Undergloom <Journeyman Enchanter>
(5759, -350000), -- Nurse Neela <First Aid Trainer>
(6289, -400000); -- Rand Rhobart <Skinner>

DELETE FROM `npc_vendor` WHERE `entry` = 2118 AND `item` IN (10648, 30817, 39354); -- Abigail Shiel <Trade Supplies>
DELETE FROM `npc_vendor` WHERE `entry` = 3548 AND `item` = 40411;                  -- Selina Weston <Alchemy & Herbalism Supplies>
DELETE FROM `npc_vendor` WHERE `entry` = 4731 AND `item` IN (46308, 47101);        -- Zachariah Post <Undead Horse Merchant>


/* Quests */

-- Rude Awakening
UPDATE `quest_template` SET `Flags` = 8, 
`QuestDescription` = 'About time you woke up. We were ready to toss you into the fire with the others, but it looks like you made it.$b$b
I am Mordo, the caretaker of the crypt of Deathknell. And you are the Lich King\'s slave no more.$b$b
Speak with Shadow Priest Sarvis in the chapel at the base of the hill, he will tell you more of what you must know.' WHERE `ID` = 363;

-- The Mindless Ones
UPDATE `quest_template` SET `Flags` = 8, 
`LogDescription` = 'Shadow Priest Sarvis wants you to kill 8 Mindless Zombies and 8 Wretched Zombies.', `RequiredNpcOrGoCount1` = 8, `RequiredNpcOrGoCount2` = 8 WHERE `ID` = 364;

-- Night Web's Hollow
UPDATE `quest_template` SET `Flags` = 8, 
`LogDescription` = 'Executor Arren wants you to kill 10 Young Night Web Spiders and 8 Night Web Spiders.', `RequiredNpcOrGoCount1` = 10, `RequiredNpcOrGoCount2` = 8 WHERE `ID` = 380;

-- Rattling the Rattlecages
UPDATE `quest_template` SET `Flags` = 8, 
`LogDescription` = 'Kill 12 Rattlecage Skeletons, and then return to Shadow Priest Sarvis in Deathknell when you are done.', `RequiredNpcOrGoCount1` = 12 WHERE `ID` = 3901;


UPDATE `quest_template` SET `Flags` = 0 WHERE `ID` = 8;    -- A Rogue's Deal
UPDATE `quest_template` SET `Flags` = 8 WHERE `ID` = 376;  -- The Damned
UPDATE `quest_template` SET `Flags` = 8 WHERE `ID` = 381;  -- The Scarlet Crusade
UPDATE `quest_template` SET `Flags` = 8 WHERE `ID` = 382;  -- The Red Messenger
UPDATE `quest_template` SET `Flags` = 0 WHERE `ID` = 383;  -- Vital Intelligence
UPDATE `quest_template` SET `Flags` = 8 WHERE `ID` = 3902; -- Scavenging Deathknell
UPDATE `quest_template` SET `Flags` = 8 WHERE `ID` = 6395; -- Marla's Last Wish

UPDATE `quest_template_addon` SET `PrevQuestID` = 427 WHERE `ID` = 374; -- Proof of Demise

UPDATE `quest_template_addon` SET `SpecialFlags` = 0 WHERE `ID` IN (
8,    -- A Rogue's Deal
363,  -- Rude Awakening
364,  -- The Mindless Ones
376,  -- The Damned
380,  -- Night Web's Hollow
381,  -- The Scarlet Crusade
382,  -- The Red Messenger
383,  -- Vital Intelligence
3095, -- Simple Scroll
3096, -- Encrypted Scroll
3097, -- Hallowed Scroll
3098, -- Glyphic Scroll
3099, -- Tainted Scroll
3901, -- Rattling the Rattlecages
3902, -- Scavenging Deathknell
6395  -- Marla's Last Wish
);

-- Piercing the Veil (Warlock)
DELETE FROM `creature_questender` WHERE `id` = 5667 AND `quest` = 1470;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (5667, 1470);

-- Piercing the Veil (Warlock)
DELETE FROM `creature_queststarter` WHERE `id` = 5667 AND `quest` = 1470;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (5667, 1470);
