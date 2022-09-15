/* Anvilrage Overseers and Anvilrage Wardens were replaced with new non-elite mobs in 2.3 - restore the originals */
UPDATE `creature` SET `id1` = 8889 WHERE `id1` = 24818;
UPDATE `creature` SET `id1` = 8890 WHERE `id1` = 24819;
