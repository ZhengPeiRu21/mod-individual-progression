/* Restore Ruby Shades to Haris Pilton */
DELETE FROM `npc_vendor` WHERE `entry`=18756 AND `item`=38089 AND `ExtendedCost`=0;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(18756, 0, 38089, 1, 1800, 0, 0);

-- Mildred Fletcher <Physician>
DELETE FROM `npc_trainer` WHERE `ID`=19184; 
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (19184, -350000); 
