-- Vile Familiars
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=3101;

-- Felstalker
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=3102;

-- Dwukk <Journeyman Blacksmith>
UPDATE `creature_template` SET `subname`='Journeyman Blacksmith' WHERE `entry`=3174;

-- Krunn <Miner>
UPDATE `creature_template` SET `subname`='Miner' WHERE `entry`=3175;

-- Yarrog Baneshadow
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=3183;

-- Miao'zan <Journeyman Alchemist>
UPDATE `creature_template` SET `subname`='Journeyman Alchemist' WHERE `entry`=3184;

-- Mishiki <Herbalist>
UPDATE `creature_template` SET `subname`='Herbalist' WHERE `entry`=3185;

-- Gazz'uz
UPDATE `creature_template` SET `minlevel`=14, `maxlevel`=14 WHERE `entry`=3204;

-- Den Grunt
UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55 WHERE `entry`=5952;

-- Voidwalker Minion
UPDATE `creature_template` SET `minlevel`=47, `maxlevel`=47, `faction`=7 WHERE `entry`=8996;

-- Frezza <Zeppelin Master>
UPDATE `creature_template` SET `subname`='Zeppelin Master' WHERE `entry`=9564;

-- Mukdrak <Journeyman Engineer>
UPDATE `creature_template` SET `subname`='Journeyman Engineer' WHERE `entry`=11025;

-- Imp Minion
UPDATE `creature_template` SET `minlevel`=46, `maxlevel`=46 WHERE `entry`=12922;

-- Steamwheedle Bruiser
UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55 WHERE `entry`=16096;

-- Dwukk <Journeyman Blacksmith>
DELETE FROM `npc_trainer` WHERE `ID`=3174;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (3174, -310000);

-- Krunn <Miner>
DELETE FROM `npc_trainer` WHERE `ID`=3175;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (3175, -390000);

-- Miao'zan <Journeyman Alchemist>
DELETE FROM `npc_trainer` WHERE `ID`=3184;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (3184, -300000);

-- Mishiki <Herbalist>
DELETE FROM `npc_trainer` WHERE `ID`=3185;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (3185, -370000);

-- Rawrk <First Aid Trainer>
DELETE FROM `npc_trainer` WHERE `ID`=5943;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (5943, -350000);

-- Xar'Ti <Riding Trainer>
DELETE FROM `npc_trainer` WHERE `ID`=7953;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (7953, -450000);

-- Mukdrak <Journeyman Engineer>
DELETE FROM `npc_trainer` WHERE `ID`=11025;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (11025, -340000);

-- Wuark <Armorer & Shieldcrafter>
DELETE FROM `npc_vendor` WHERE `entry`=3167 AND `item` IN (20815, 20824);

-- Flakk <Trade Supplies>
DELETE FROM `npc_vendor` WHERE `entry`=3168 AND `item` IN (30817);

-- Tai'tasi <Trade Supplies>
DELETE FROM `npc_vendor` WHERE `entry`=3187 AND `item` IN (30817);

-- Zansoa <Fishing Supplies>
DELETE FROM `npc_vendor` WHERE `entry`=5942 AND `item` IN (6365, 6533);

-- Cutting Teeth
UPDATE `quest_template` SET `Flags`=8, `LogDescription`='Kill 10 Mottled Boars then return to Gornek at the Den.', `RequiredNpcOrGoCount1`=10 WHERE `ID`=788;

-- Sting of the Scorpid
UPDATE `quest_template` SET `Flags`=8, `LogDescription`='Get 10 Scorpid Worker Tails for Gornek in the Den.', `RequiredItemCount1`=10 WHERE `ID`=789;

-- Sarkoth
UPDATE `quest_template` SET `Flags`=8 WHERE `ID`=790;

-- Vile Familiars
UPDATE `quest_template` SET `Flags`=8, `LogDescription`='Kill 12 Vile Familiars.$b$bReturn to Zureetha Fargaze outside the Den.', `RequiredNpcOrGoCount1`=12 WHERE `ID`=792;

-- Burning Blade Medallion
UPDATE `quest_template` SET `Flags`=8 WHERE `ID`=794;

-- Sarkoth
UPDATE `quest_template` SET `Flags`=0 WHERE `ID`=804;

-- Report to Sen'jin Village
UPDATE `quest_template` SET `Flags`=8 WHERE `ID`=805;

-- Call of Earth (Shaman)
UPDATE `quest_template` SET `Flags`=8 WHERE `ID`=1516;

-- Call of Earth (Shaman)
UPDATE `quest_template` SET `Flags`=0 WHERE `ID`=1517;

-- A Peon's Burden
UPDATE `quest_template` SET `Flags`=0 WHERE `ID`=2161;

-- Galgar's Cactus Apple Surprise
UPDATE `quest_template` SET `Flags`=8, `LogDescription`='Bring Galgar 10 Cactus Apples. You remember him saying that they could be found near cactuses.', `RequiredItemCount1`=10 WHERE `ID`=4402;

-- Your Place In The World
UPDATE `quest_template` SET `Flags`=8 WHERE `ID`=4641;

-- Lazy Peons
UPDATE `quest_template` SET `Flags`=0 WHERE `ID`=5441;

-- Thazz'ril's Pick
UPDATE `quest_template` SET `Flags`=8 WHERE `ID`=6394;

-- Cutting Teeth
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=788;

-- Sting of the Scorpid
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=789;

-- Sarkoth
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=790;

-- Vile Familiars
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=792;

-- Burning Blade Medallion
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=794;

-- Sarkoth
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=804;

-- Report to Sen'jin Village
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=805;

-- Call of Earth (Shaman)
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=1516;

-- Call of Earth (Shaman)
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=1517;

-- A Peon's Burden
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=2161;

-- Simple Parchment
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=2383;

-- Galgar's Cactus Apple Surprise
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=4402;

-- Your Place In The World
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=4641;

-- Lazy Peons
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=5441;

-- Thazz'ril's Pick
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=6394;


