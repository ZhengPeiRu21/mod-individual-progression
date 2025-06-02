-- stratholme living side, 3 doors not locked that should require the scarlet key
UPDATE gameobject_template SET `Data1` = 299 WHERE `entry` IN (175967, 175968, 176194);
UPDATE gameobject_template_addon SET `flags` = 34 WHERE `entry` IN (175967, 175968, 176194);
