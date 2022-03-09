-- Gate of Ahn'Qiraj
DELETE FROM `gameobject` WHERE `id`=176146;
INSERT INTO `gameobject` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (176146, 1, -8133.34, 1525.13, 17.1904, 6.28103, 0.00107995, -0.999999, 600, 100, 1);

-- Ahn'Qiraj Gate Roots
DELETE FROM `gameobject` WHERE `id`=176147;
INSERT INTO `gameobject` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (176147, 1, -8133.34, 1525.13, 17.1904, 6.28103, 0.00107995, -0.999999, 600, 100, 1);

-- Ahn'Qiraj Gate Runes
DELETE FROM `gameobject` WHERE `id`=176148;
INSERT INTO `gameobject` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (176148, 1, -8133.34, 1525.13, 17.1904, 6.28103, 0.00107995, -0.999999, 600, 100, 1);

-- Ghost Gate
DELETE FROM `gameobject` WHERE `id`=180322;
INSERT INTO `gameobject` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (180322, 1, -8132.76, 1525.19, 6.19048, 6.27739, 0.00289526, -0.999996, 25, 100, 1);

-- Gate of Ahn'Qiraj
UPDATE `gameobject_template_addon` SET `flags`=4 WHERE `entry`=176146;

-- Ahn'Qiraj Gate Roots
UPDATE `gameobject_template_addon` SET `flags`=4 WHERE `entry`=176147;

-- Ahn'Qiraj Gate Runes
UPDATE `gameobject_template_addon` SET `flags`=4 WHERE `entry`=176148;