/* In Patch 3.0.2, all creatures in TBC raid instances had their max health reduced (almost all by 30%). This script restores the health values from Patch 2.4.3. */
/* WIP. Currently covers only Karazhan, Gruul's Lair, and Magtheridon's Lair. More to be added later. */

/* Karazhan Bosses and Adds */
UPDATE `creature_template` SET `HealthModifier` = 0.9 WHERE `entry` = 17267;
UPDATE `creature_template` SET `HealthModifier` = 1.9 WHERE `entry` IN (17096, 19781, 19782, 19783);
UPDATE `creature_template` SET `HealthModifier` = 2 WHERE `entry` = 17167;
UPDATE `creature_template` SET `HealthModifier` = 8.4 WHERE `entry` = 17229;
UPDATE `creature_template` SET `HealthModifier` = 5 WHERE `entry` = 17548;
UPDATE `creature_template` SET `HealthModifier` = 12 WHERE `entry` IN (17007, 17248, 19872, 19873, 19874, 19875);
UPDATE `creature_template` SET `HealthModifier` = 15 WHERE `entry` IN (17543, 17546, 17547);
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` IN (17533, 17534, 17535, 18168);
UPDATE `creature_template` SET `HealthModifier` = 30 WHERE `entry` = 16181;
UPDATE `creature_template` SET `HealthModifier` = 35 WHERE `entry` IN (16152, 16179, 16180);
UPDATE `creature_template` SET `HealthModifier` = 50 WHERE `entry` IN (15550, 15687, 16151, 17521);
UPDATE `creature_template` SET `HealthModifier` = 70 WHERE `entry` = 16457;
UPDATE `creature_template` SET `HealthModifier` = 100 WHERE `entry` = 15688;
UPDATE `creature_template` SET `HealthModifier` = 115 WHERE `entry` = 15691;
UPDATE `creature_template` SET `HealthModifier` = 150 WHERE `entry` = 15690;
UPDATE `creature_template` SET `HealthModifier` = 160 WHERE `entry` = 16524;
UPDATE `creature_template` SET `HealthModifier` = 175 WHERE `entry` = 17225;
UPDATE `creature_template` SET `HealthModifier` = 200 WHERE `entry` = 15689;

/* Karazhan Trash and NPCs */
UPDATE `creature_template` SET `HealthModifier` = 0.175 WHERE `entry` = 17283;
UPDATE `creature_template` SET `HealthModifier` = 0.2 WHERE `entry` = 16488;
UPDATE `creature_template` SET `HealthModifier` = 0.7 WHERE `entry` IN (16153, 16159, 16426, 16806, 16812, 16813, 16815, 16816, 17518, 17603);
UPDATE `creature_template` SET `HealthModifier` = 0.875 WHERE `entry` = 17651;
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` IN (16169, 16388, 16811, 16814);
UPDATE `creature_template` SET `HealthModifier` = 2 WHERE `entry` IN (16409, 16468, 16491, 16492, 17067);\
UPDATE `creature_template` SET `HealthModifier` = 2.5 WHERE `entry` = 17261;
UPDATE `creature_template` SET `HealthModifier` = 3 WHERE `entry` IN (16170, 16173, 16539);
UPDATE `creature_template` SET `HealthModifier` = 3.5 WHERE `entry` = 16178;
UPDATE `creature_template` SET `HealthModifier` = 6 WHERE `entry` IN (15551, 16175, 16176, 16389, 16406, 16407, 16411, 16412, 16415, 16424, 16425, 16525, 16530, 16540);
UPDATE `creature_template` SET `HealthModifier` = 7 WHERE `entry` IN (16171, 16177);
UPDATE `creature_template` SET `HealthModifier` = 8 WHERE `entry` IN (16174, 16410, 16414, 16459, 16460, 16461, 16470, 16473, 16489, 16526, 16544);
UPDATE `creature_template` SET `HealthModifier` = 9 WHERE `entry` IN (15547, 15548, 16408, 16472);
UPDATE `creature_template` SET `HealthModifier` = 10 WHERE `entry` IN (16481, 16482, 16545, 16595);
UPDATE `creature_template` SET `HealthModifier` = 12 WHERE `entry` IN (16471, 16485);
UPDATE `creature_template` SET `HealthModifier` = 16 WHERE `entry` IN (16504, 16596);
UPDATE `creature_template` SET `HealthModifier` = 70 WHERE `entry` = 17652;

/* Gruul's Lair Bosses and Adds */
UPDATE `creature_template` SET `HealthModifier` = 50 WHERE `entry` IN (18832, 18834, 18835, 18836);
UPDATE `creature_template` SET `HealthModifier` = 100 WHERE `entry` = 18831;
UPDATE `creature_template` SET `HealthModifier` = 450 WHERE `entry` = 19044;

/* Gruul's Lair Trash */
UPDATE `creature_template` SET `HealthModifier` = 40 WHERE `entry` IN (19389, 21350);

/* Magtheridon's Lair Bosses and Adds */
UPDATE `creature_template` SET `HealthModifier` = 40 WHERE `entry` = 17256;
UPDATE `creature_template` SET `HealthModifier` = 635 WHERE `entry` = 17257;
UPDATE `creature_template` SET `HealthModifier` = 300 WHERE `entry` = 17454;

/* Magtheridon's Lair Trash */
UPDATE `creature_template` SET `HealthModifier` = 32 WHERE `entry` = 18829;
