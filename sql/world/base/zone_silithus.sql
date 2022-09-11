-- Gate of Ahn'Qiraj
DELETE FROM `gameobject` WHERE `id`=176146;
INSERT INTO `gameobject` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (176146, 1, -8133.34, 1525.13, 17.1904, 6.28103, 0.00107995, -0.999999, 600, 100, 1);

-- Ahn'Qiraj Gate Roots
DELETE FROM `gameobject` WHERE `id`=176147;
INSERT INTO `gameobject` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (176147, 1, -8133.34, 1525.13, 17.1904, 6.28103, 0.00107995, -0.999999, 600, 100, 1);

-- Ahn'Qiraj Gate Runes
DELETE FROM `gameobject` WHERE `id`=176148;
INSERT INTO `gameobject` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (176148, 1, -8133.34, 1525.13, 17.1904, 6.28103, 0.00107995, -0.999999, 600, 100, 1);

-- Ghost Gate - should not be placed, remove it if it is present
DELETE FROM `gameobject` WHERE `id`=180322;
# INSERT INTO `gameobject` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (180322, 1, -8132.76, 1525.19, 6.19048, 6.27739, 0.00289526, -0.999996, 25, 100, 1);

-- Gate of Ahn'Qiraj
UPDATE `gameobject_template_addon` SET `flags`=4 WHERE `entry`=176146;

-- Ahn'Qiraj Gate Roots
UPDATE `gameobject_template_addon` SET `flags`=4 WHERE `entry`=176147;

-- Ahn'Qiraj Gate Runes
UPDATE `gameobject_template_addon` SET `flags`=4 WHERE `entry`=176148;

-- Scarab Gong
-- See related AC PR: https://github.com/azerothcore/azerothcore-wotlk/pull/12879/files
UPDATE `gameobject_template` SET `type` = 2, `ScriptName` = "gobject_scarab_gong" WHERE `entry` = 180717;
UPDATE `gameobject` SET `id` = 180717 WHERE `guid` = 49451;
DELETE FROM `gameobject_questender` WHERE `quest`=8743;
INSERT INTO `gameobject_questender` (`id`, `quest`) VALUES (180717, 8743);
DELETE FROM `gameobject_queststarter` WHERE `quest`=8743;
INSERT INTO `gameobject_queststarter` (`id`, `quest`) VALUES (180717, 8743);

SET @STRING_ENTRY := 41100;
DELETE FROM `acore_string` WHERE `entry` IN  (@STRING_ENTRY);
INSERT INTO `acore_string` (`entry`, `content_default`) VALUES
(@STRING_ENTRY, '%s, Champion of the Bronze Dragonflight, has rung the Scarab Gong. The ancient gates of Ahn''Qiraj open, revealing the horrors of a forgotten war...');
