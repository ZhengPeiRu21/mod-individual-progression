UPDATE `creature_template` SET `faction` = 14 WHERE `entry` = 3101; -- Vile Familiar
UPDATE `creature_template` SET `faction` = 14 WHERE `entry` = 3102; -- Felstalker
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` = 3183; -- Yarrog Baneshadow


DELETE FROM `npc_trainer` WHERE `ID` IN (3174, 3175, 3184, 3185, 5943, 7953, 11025);
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES
(3174, -310000),  -- Dwukk <Journeyman Blacksmith>
(3175, -390000),  -- Krunn <Miner>
(3184, -300000),  -- Miao'zan <Journeyman Alchemist>
(3185, -370000),  -- Mishiki <Herbalist>
(5943, -350000),  -- Rawrk <First Aid Trainer>
(7953, -450000),  -- Xar'Ti <Riding Trainer>
(11025, -340000); -- Mukdrak <Journeyman Engineer>

DELETE FROM `npc_vendor` WHERE `entry` = 3167 AND `item` IN (20815, 20824); -- Wuark <Armorer & Shieldcrafter>
DELETE FROM `npc_vendor` WHERE `entry` = 3168 AND `item` IN (30817);        -- Flakk <Trade Supplies>
DELETE FROM `npc_vendor` WHERE `entry` = 3187 AND `item` IN (30817);        -- Tai'tasi <Trade Supplies>
DELETE FROM `npc_vendor` WHERE `entry` = 5942 AND `item` IN (6365, 6533);   -- Zansoa <Fishing Supplies>


/* Quests */

-- Cutting Teeth
UPDATE `quest_template` SET `Flags` = 8, 
`LogDescription` = 'Kill 10 Mottled Boars then return to Gornek at the Den.', `RequiredNpcOrGoCount1` = 10 WHERE `ID` = 788;

-- Sting of the Scorpid
UPDATE `quest_template` SET `Flags` = 8, 
`LogDescription` = 'Get 10 Scorpid Worker Tails for Gornek in the Den.', `RequiredItemCount1` = 10 WHERE `ID` = 789;

-- Vile Familiars
UPDATE `quest_template` SET `Flags` = 8, 
`LogDescription` = 'Kill 12 Vile Familiars.$b$bReturn to Zureetha Fargaze outside the Den.', `RequiredNpcOrGoCount1` = 12 WHERE `ID` = 792;

-- Galgar's Cactus Apple Surprise
UPDATE `quest_template` SET `Flags` = 8, 
`LogDescription` = 'Bring Galgar 10 Cactus Apples. You remember him saying that they could be found near cactuses.', `RequiredItemCount1` = 10 WHERE `ID` = 4402;

UPDATE `quest_template` SET `Flags` = 8 WHERE `ID` = 790; -- Sarkoth
UPDATE `quest_template` SET `Flags` = 8 WHERE `ID` = 794; -- Burning Blade Medallion
UPDATE `quest_template` SET `Flags` = 0 WHERE `ID` = 804; -- Sarkoth
UPDATE `quest_template` SET `Flags` = 8 WHERE `ID` = 805; -- Report to Sen'jin Village
UPDATE `quest_template` SET `Flags` = 8 WHERE `ID` = 1516; -- Call of Earth (Shaman)
UPDATE `quest_template` SET `Flags` = 0 WHERE `ID` = 1517; -- Call of Earth (Shaman)
UPDATE `quest_template` SET `Flags` = 0 WHERE `ID` = 2161; -- A Peon's Burden
UPDATE `quest_template` SET `Flags` = 8 WHERE `ID` = 4641; -- Your Place In The World
UPDATE `quest_template` SET `Flags` = 0 WHERE `ID` = 5441; -- Lazy Peons
UPDATE `quest_template` SET `Flags` = 8 WHERE `ID` = 6394; -- Thazz'ril's Pick

UPDATE `quest_template_addon` SET `AllowableClasses` = 1279 WHERE `ID` = 792;

UPDATE `quest_template_addon` SET `SpecialFlags` = 0 WHERE `ID` IN (
788,  -- Cutting Teeth
789,  -- Sting of the Scorpid
790,  -- Sarkoth
792,  -- Vile Familiars
794,  -- Burning Blade Medallion
804,  -- Sarkoth
805,  -- Report to Sen'jin Village
1516, -- Call of Earth (Shaman)
1517, -- Call of Earth (Shaman)
2161, -- A Peon's Burden
2383, -- Simple Parchment
4402, -- Galgar's Cactus Apple Surprise
4641, -- Your Place In The World
5441, -- Lazy Peons
6394  -- Thazz'ril's Pick
);
