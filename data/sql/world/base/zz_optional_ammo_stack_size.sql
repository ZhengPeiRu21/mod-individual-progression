/*
    In 3.1 all ammo was changed to stack to 1000. This reduced the usefulness of quivers and ammo pouches
    This SQL will restore Vanilla and TBC ammo stack sizes to 200.
*/

UPDATE `item_template` SET `stackable` = 200 WHERE `stackable` = 1000 AND `InventoryType` = 24;
UPDATE `item_template` SET `stackable` = 1000 WHERE `entry` IN (41164, 41165, 41584, 41586, 52020, 52021); -- WotLK ammo
