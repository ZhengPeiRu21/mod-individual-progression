/*
    Pooled Treasure Chests
    This should and likely will get fixed by AzerothCore itself at some point,
    so that's why this is a separate file.
*/

DELETE FROM `pool_template` WHERE `entry` BETWEEN 66001 AND 66006;
INSERT INTO `pool_template` (`entry`,`max_limit`,`description`) VALUES
(66001, 1, 'Treasures - Thousand Needles'),
(66002, 1, 'Treasures - Winterspring'),
(66003, 1, 'Treasures - Winterspring'),
(66004, 1, 'Treasures - Hillsbrad Foothills'),
(66005, 1, 'Treasures - The Hinterlands'),
(66006, 1, 'Treasures - Alterac Mountains');

UPDATE `gameobject` SET `spawntimesecs` = 900 WHERE `guid` IN (
16718, 85670, 87381,                                    -- Thousand Needles
49089, 49090, 49091, 85796, 85798, 85799, 85801, 85803, -- Winterspring
20885, 30036, 85804,                                    -- Hillsbrad Foothills
46292, 46346, 46370, 85894, 87392,                      -- The Hinterlands
33193, 33206, 33207                                     -- Alterac Mountains 
);

DELETE FROM `pool_gameobject` WHERE `guid` IN (
16718, 85670, 87381,                                    -- Thousand Needles
49089, 49090, 49091, 85796, 85798, 85799, 85801, 85803, -- Winterspring
20885, 30036, 85804,                                    -- Hillsbrad Foothills
46292, 46346, 46370, 85894, 87392,                      -- The Hinterlands
33193, 33206, 33207                                     -- Alterac Mountains 
);

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
--
(16718, 66001, 0, 'Solid Chest, Camp E\'thok, node 1'),
(85670, 66001, 0, 'Solid Chest, Camp E\'thok, node 2'),
(87381, 66001, 0, 'Solid Chest, Camp E\'thok, node 3'),
--
(49091, 66002, 0, 'Solid Chest, Winterfall Village, node 1'),
(85798, 66002, 0, 'Solid Chest, Winterfall Village, node 2'),
(85799, 66002, 0, 'Solid Chest, Winterfall Village, node 3'),
(85803, 66002, 0, 'Solid Chest, Winterfall Village, node 4'),
--
(49089, 66003, 0, 'Solid Chest, Timbermaw Post, node 1'),
(49090, 66003, 0, 'Solid Chest, Timbermaw Post, node 2'),
(85796, 66003, 0, 'Solid Chest, Timbermaw Post, node 3'),
(85801, 66003, 0, 'Solid Chest, Timbermaw Post, node 4'),
--
(20885, 66004, 0, 'Tattered Chest, Hillsbrad Fields, node 1'),
(30036, 66004, 0, 'Tattered Chest, Hillsbrad Fields, node 2'),
(85804, 66004, 0, 'Tattered Chest, Hillsbrad Fields, node 3'),
--
(46292, 66005, 0, 'Solid Chest, Jintha Alor, node 1'),
(46346, 66005, 0, 'Solid Chest, Jintha Alor, node 2'),
(46370, 66005, 0, 'Solid Chest, Jintha Alor, node 3'),
(85894, 66005, 0, 'Solid Chest, Jintha Alor, node 4'),
(87392, 66005, 0, 'Solid Chest, Jintha Alor, node 5'),
--
(33193, 66006, 0, 'Solid Chest, Alterac Mountains, node 1'),
(33206, 66006, 0, 'Solid Chest, Alterac Mountains, node 2'),
(33207, 66006, 0, 'Solid Chest, Alterac Mountains, node 3');
