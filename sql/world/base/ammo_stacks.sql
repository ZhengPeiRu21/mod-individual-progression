/* In 3.1 all ammo was changed to stack to 1000. This reduced the usefulness of quivers and ammo pouches, so it is more than just a QoL change, unlike other stack size changes. */
UPDATE `item_template` SET `stackable` = 200 WHERE `stackable` = 1000 AND `InventoryType` = 24;
