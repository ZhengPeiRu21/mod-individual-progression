/* Sets TBC creatures to values extracted from cMangos TBC, which has high quality, pre-nef TBC Content */
/* These may need more updating as AzerothCore development continues to TBC and makes more corrections,
   But this is a better starting point than current AzerothCore TBC content which is quite bug */

/*  Skeletal Aberration  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ArmorModifier` = 1.33333 WHERE `entry`=1786;

/*  Corpse Eater  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=1790;

/*  Hissing Ghoul  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=1792;

/*  Lost Wraith  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ArmorModifier` = 1.33333 WHERE `entry`=1799;

/*  Giant Venom Mist Lurker  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=1823;

/*  Giant Plague Lurker  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=1825;

/*  Northshire Guard Justin  */
UPDATE `creature_template` SET `DamageModifier` = 2.5 WHERE `entry`=9095;

/*  Tender  */
UPDATE `creature_template` SET `speed_walk` = 1.2, `speed_run` = 1.14286 WHERE `entry`=15271;

/*  Arcane Wraith  */
UPDATE `creature_template` SET `speed_walk` = 1.31, `speed_run` = 1.14286 WHERE `entry`=15273;

/*  Magistrix Erona  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.4 WHERE `entry`=15278;

/*  Julia Sunstriker  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=15279;

/*  Jesthenis Sunstriker  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=15280;

/*  Lanthan Perilon  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.4 WHERE `entry`=15281;

/*  Summoner Teli'Larien  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=15283;

/*  Matron Arena  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=15284;

/*  Pathstalker Kariel  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=15285;

/*  Shara Sunwing  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=15287;

/*  Raelis Dawnstar  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=15289;

/*  Jainthess Thelryn  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=15291;

/*  Faraden Thelryn  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=15292;

/*  Feral Tender  */
UPDATE `creature_template` SET `speed_walk` = 1.2, `speed_run` = 1.14286 WHERE `entry`=15294;

/*  Arcanist Ithanas  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=15296;

/*  Arcanist Helion  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=15297;

/*  Tainted Arcane Wraith  */
UPDATE `creature_template` SET `speed_walk` = 1.3, `speed_run` = 1.14286 WHERE `entry`=15298;

/*  Outrunner Alarion  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.6 WHERE `entry`=15301;

/*  Felendren the Banished  */
UPDATE `creature_template` SET `speed_walk` = 1.35, `speed_run` = 1.14286 WHERE `entry`=15367;

/*  Sunstrider Guardian  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.5 WHERE `entry`=15371;

/*  Springpaw Lynx  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.707317 WHERE `entry`=15372;

/*  Larianna Riverwind  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 8.0, `HealthModifier` = 1.088 WHERE `entry`=15398;

/*  Lieutenant Dawnrunner  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 6.0 WHERE `entry`=15399;

/*  Arathel Sunforge  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=15400;

/*  Ley-Keeper Velania  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.3, `HealthModifier` = 1.088 WHERE `entry`=15401;

/*  Apprentice Mirveda  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.5, `HealthModifier` = 2.05, `ManaModifier` = 1.0 WHERE `entry`=15402;

/*  Aeldon Sunbrand  */
UPDATE `creature_template` SET `DamageModifier` = 1.15 WHERE `entry`=15403;

/*  Velendris Whitemorn  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 8.0 WHERE `entry`=15404;

/*  Ley-Keeper Caidanis  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.3, `HealthModifier` = 1.088 WHERE `entry`=15405;

/*  Ven'jashi  */
UPDATE `creature_template` SET `speed_walk` = 1.1, `DamageModifier` = 0.8 WHERE `entry`=15406;

/*  Chieftain Zul'Marosh  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=15407;

/*  Spearcrafter Otembe  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=15408;

/*  Old Whitebark  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.26, `ArmorModifier` = 0.759766 WHERE `entry`=15409;

/*  Ranger Jaela  */
UPDATE `creature_template` SET `DamageModifier` = 1.3 WHERE `entry`=15416;

/*  Velan Brightoak  */
UPDATE `creature_template` SET `DamageModifier` = 1.3 WHERE `entry`=15417;

/*  Magister Jaronis  */
UPDATE `creature_template` SET `DamageModifier` = 1.3 WHERE `entry`=15418;

/*  Prospector Anvilward  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=15420;

/*  Yasmine Teli'Larien  */
UPDATE `creature_template` SET `subname` = 'Demon Trainer', `speed_walk` = 1.125 WHERE `entry`=15494;

/*  Ranger Sallina  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=15513;

/*  Spectral Stallion  */
UPDATE `creature_template` SET `DamageModifier` = 5.0 WHERE `entry`=15548;

/*  Spectral Stable Hand  */
UPDATE `creature_template` SET `DamageModifier` = 8.0, `HealthModifier` = 6.0 WHERE `entry`=15551;

/*  Eversong Tender  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.7 WHERE `entry`=15635;

/*  Withered Green Keeper  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `ArmorModifier` = 0.896484 WHERE `entry`=15637;

/*  Arcane Warder  */
UPDATE `creature_template` SET `DamageModifier` = 0.96, `ArmorModifier` = 0.853333 WHERE `entry`=15639;

/*  Arcane Enforcer  */
UPDATE `creature_template` SET `ArmorModifier` = 0.975976 WHERE `entry`=15640;

/*  Amani Axe Thrower  */
UPDATE `creature_template` SET `speed_run` = 1.14286 WHERE `entry`=15641;

/*  Amani Shadowpriest  */
UPDATE `creature_template` SET `speed_run` = 1.14286 WHERE `entry`=15642;

/*  Amani Berserker  */
UPDATE `creature_template` SET `speed_run` = 0.857143, `DamageModifier` = 2.0 WHERE `entry`=15643;

/*  Wretched Thug  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.8 WHERE `entry`=15645;

/*  Mana Stalker  */
UPDATE `creature_template` SET `speed_walk` = 1.18, `speed_run` = 1.14286, `DamageModifier` = 0.96 WHERE `entry`=15647;

/*  Manawraith  */
UPDATE `creature_template` SET `speed_walk` = 1.28, `speed_run` = 1.14286 WHERE `entry`=15648;

/*  Feral Dragonhawk Hatchling  */
UPDATE `creature_template` SET `speed_run` = 0.857143, `DamageModifier` = 0.96, `ArmorModifier` = 0.853333 WHERE `entry`=15649;

/*  Crazed Dragonhawk  */
UPDATE `creature_template` SET `speed_run` = 0.857143, `ArmorModifier` = 0.884328 WHERE `entry`=15650;

/*  Springpaw Stalker  */
UPDATE `creature_template` SET `speed_run` = 0.857143, `ArmorModifier` = 0.861925 WHERE `entry`=15651;

/*  Elder Springpaw  */
UPDATE `creature_template` SET `DamageModifier` = 1.5, `ArmorModifier` = 1.30049 WHERE `entry`=15652;

/*  Springpaw Matriarch  */
UPDATE `creature_template` SET `DamageModifier` = 0.83, `ArmorModifier` = 0.896484 WHERE `entry`=15653;

/*  Plaguebone Pillager  */
UPDATE `creature_template` SET `speed_run` = 0.857143, `ArmorModifier` = 0.844828 WHERE `entry`=15654;

/*  Rotlimb Cannibal  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=15655;

/*  Angershade  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 1.2 WHERE `entry`=15656;

/*  Rotlimb Marauder  */
UPDATE `creature_template` SET `speed_walk` = 0.777776, `speed_run` = 0.857143 WHERE `entry`=15658;

/*  Grimscale Murloc  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=15668;

/*  Grimscale Oracle  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=15669;

/*  Grimscale Forager  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=15670;

/*  Terestian Illhoof  */
UPDATE `creature_template` SET `DamageModifier` = 20.0, `HealthModifier` = 100.0 WHERE `entry`=15688;

/*  Netherspite  */
UPDATE `creature_template` SET `DamageModifier` = 24.75, `HealthModifier` = 200.0 WHERE `entry`=15689;

/*  Jade Owl  */
UPDATE `creature_template` SET `minlevel` = 35, `maxlevel` = 40 WHERE `entry`=15919;

/*  Hathvelion Sungaze  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.8 WHERE `entry`=15920;

/*  Captain Kelisendra  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.5 WHERE `entry`=15921;

/*  Golden Hare  */
UPDATE `creature_template` SET `minlevel` = 35, `maxlevel` = 40, `speed_walk` = 1.2 WHERE `entry`=15923;

/*  Apprentice Loralthalis  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=15924;

/*  Black Pearl Panther  */
UPDATE `creature_template` SET `minlevel` = 38, `maxlevel` = 45 WHERE `entry`=15926;

/*  Truesilver Crab  */
UPDATE `creature_template` SET `minlevel` = 40, `maxlevel` = 45 WHERE `entry`=15927;

/*  Mmmrrrggglll  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=15937;

/*  Eversong Ranger  */
UPDATE `creature_template` SET `DamageModifier` = 0.8 WHERE `entry`=15938;

/*  Ranger Degolien  */
UPDATE `creature_template` SET `DamageModifier` = 1.3 WHERE `entry`=15939;

/*  Ranger Selron  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.3 WHERE `entry`=15940;

/*  Apprentice Ralen  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.3 WHERE `entry`=15941;

/*  Ranger Sareyn  */
UPDATE `creature_template` SET `DamageModifier` = 1.6 WHERE `entry`=15942;

/*  Hive'Zara Hornet  */
UPDATE `creature_template` SET `DamageModifier` = 7.0, `HealthModifier` = 15.0 WHERE `entry`=15943;

/*  Ruby Serpent  */
UPDATE `creature_template` SET `minlevel` = 47, `maxlevel` = 55 WHERE `entry`=15944;

/*  Apprentice Meledor  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.3 WHERE `entry`=15945;

/*  Apprentice Veya  */
UPDATE `creature_template` SET `DamageModifier` = 1.3 WHERE `entry`=15946;

/*  Emerald Owl  */
UPDATE `creature_template` SET `minlevel` = 50, `maxlevel` = 65, `ArmorModifier` = 1.33333 WHERE `entry`=15948;

/*  Thaelis the Hungerer  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.1 WHERE `entry`=15949;

/*  Grimscale Seer  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=15950;

/*  Magister Duskwither  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 6.0 WHERE `entry`=15951;

/*  Black Diamond Crab  */
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 65 WHERE `entry`=15955;

/*  Gharsul the Remorseless  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=15958;

/*  Duskwither Apprentice  */
UPDATE `creature_template` SET `speed_run` = 0.857143, `DamageModifier` = 0.6 WHERE `entry`=15965;

/*  Mana Serpent  */
UPDATE `creature_template` SET `ArmorModifier` = 0.901408 WHERE `entry`=15966;

/*  Darnassian Scout  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.8 WHERE `entry`=15968;

/*  Groundskeeper Wyllithen  */
UPDATE `creature_template` SET `speed_walk` = 1.25, `DamageModifier` = 0.7 WHERE `entry`=15969;

/*  Instructor Antheol  */
UPDATE `creature_template` SET `DamageModifier` = 1.3 WHERE `entry`=15970;

/*  Silvermoon Apprentice  */
UPDATE `creature_template` SET `DamageModifier` = 1.3 WHERE `entry`=15971;

/*  Lord Saltheril  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 5.0 WHERE `entry`=16144;

/*  Elisara Sunstriker  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.8 WHERE `entry`=16147;

/*  Berthold  */
UPDATE `creature_template` SET `DamageModifier` = 1.5 WHERE `entry`=16153;

/*  Calliard  */
UPDATE `creature_template` SET `DamageModifier` = 0.8 WHERE `entry`=16159;

/*  Magistrix Eredania  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16160;

/*  Arcanist Sheynathren  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16161;

/*  Wretched Hooligan  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=16162;

/*  Hastings  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 1.0 WHERE `entry`=16169;

/*  Coldmist Stalker  */
UPDATE `creature_template` SET `DamageModifier` = 6.0, `HealthModifier` = 3.0 WHERE `entry`=16170;

/*  Coldmist Widow  */
UPDATE `creature_template` SET `DamageModifier` = 12.0, `HealthModifier` = 7.0 WHERE `entry`=16171;

/*  Shadowbat  */
UPDATE `creature_template` SET `DamageModifier` = 6.0, `HealthModifier` = 3.0 WHERE `entry`=16173;

/*  Greater Shadowbat  */
UPDATE `creature_template` SET `DamageModifier` = 16.0, `HealthModifier` = 8.0 WHERE `entry`=16174;

/*  Vampiric Shadowbat  */
UPDATE `creature_template` SET `DamageModifier` = 12.0, `HealthModifier` = 6.0 WHERE `entry`=16175;

/*  Shadowbeast  */
UPDATE `creature_template` SET `DamageModifier` = 10.0, `HealthModifier` = 6.0 WHERE `entry`=16176;

/*  Dreadbeast  */
UPDATE `creature_template` SET `DamageModifier` = 16.0, `HealthModifier` = 7.0 WHERE `entry`=16177;

/*  Phase Hound  */
UPDATE `creature_template` SET `DamageModifier` = 8.0, `HealthModifier` = 3.5 WHERE `entry`=16178;

/*  Courier Dawnstrider  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=16183;

/*  Skymaster Sunwing  */
UPDATE `creature_template` SET `DamageModifier` = 3.0, `ManaModifier` = 1.0 WHERE `entry`=16189;

/*  Sathren Azuredawn  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16191;

/*  Skymistress Gloaming  */
UPDATE `creature_template` SET `DamageModifier` = 3.0, `ManaModifier` = 1.0 WHERE `entry`=16192;

/*  Apothecary Thedra  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=16196;

/*  Arcanist Vandril  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=16197;

/*  Apothecary Renzithen  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=16198;

/*  Magister Darenis  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=16199;

/*  Deathstalker Rathiel  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=16200;

/*  Geranis Whitemorn  */
UPDATE `creature_template` SET `DamageModifier` = 0.8 WHERE `entry`=16201;

/*  Farstrider Sedina  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=16202;

/*  Ranger Vynna  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=16203;

/*  Magistrix Aminel  */
UPDATE `creature_template` SET `DamageModifier` = 1.4 WHERE `entry`=16205;

/*  Apprentice Varnis  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.8 WHERE `entry`=16206;

/*  Apothecary Enith  */
UPDATE `creature_template` SET `DamageModifier` = 0.8 WHERE `entry`=16208;

/*  Ranger Vedoran  */
UPDATE `creature_template` SET `DamageModifier` = 1.4 WHERE `entry`=16209;

/*  Magistrix Landra Dawnstrider  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=16210;

/*  Ranger Lethvalin  */
UPDATE `creature_template` SET `DamageModifier` = 0.8 WHERE `entry`=16213;

/*  Lieutenant Tomathren  */
UPDATE `creature_template` SET `DamageModifier` = 1.3 WHERE `entry`=16217;

/*  Ranger Valanna  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=16219;

/*  Captain Helios  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=16220;

/*  Silvermoon Guardian  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=16221;

/*  Dame Auriferous  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=16231;

/*  Night Elf Ambusher  */
UPDATE `creature_template` SET `speed_run` = 1.38571 WHERE `entry`=16238;

/*  Magister Kaendris  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=16239;

/*  Tranquillien Scout  */
UPDATE `creature_template` SET `speed_run` = 0.857143, `DamageModifier` = 0.7 WHERE `entry`=16242;

/*  Luzran  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=16245;

/*  Knucklerot  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=16246;

/*  Borgoth the Bloodletter  */
UPDATE `creature_template` SET `speed_run` = 1.0, `DamageModifier` = 1.1 WHERE `entry`=16247;

/*  Jurion the Deceiver  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=16248;

/*  Masophet the Black  */
UPDATE `creature_template` SET `DamageModifier` = 1.1 WHERE `entry`=16249;

/*  High Executor Mavren  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=16252;

/*  Areyn  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16260;

/*  Paelarin  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16263;

/*  Winaestra  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `HealthModifier` = 1.09 WHERE `entry`=16264;

/*  Daestra  */
UPDATE `creature_template` SET `subname` = 'Demon Trainer' WHERE `entry`=16267;

/*  Perascamin  */
UPDATE `creature_template` SET `speed_walk` = 1.25, `HealthModifier` = 1.09 WHERE `entry`=16280;

/*  Ambassador Sunsorrow  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=16287;

/*  Advisor Sorrelon  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=16288;

/*  Magister Quallestis  */
UPDATE `creature_template` SET `DamageModifier` = 0.96 WHERE `entry`=16291;

/*  Aquantion  */
UPDATE `creature_template` SET `DamageModifier` = 1.5 WHERE `entry`=16292;

/*  Apprentice Shatharia  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=16293;

/*  Aldaron the Reckless  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16294;

/*  Risen Creeper  */
UPDATE `creature_template` SET `ArmorModifier` = 0.884766 WHERE `entry`=16300;

/*  Risen Hungerer  */
UPDATE `creature_template` SET `ArmorModifier` = 0.989097 WHERE `entry`=16301;

/*  Risen Stalker  */
UPDATE `creature_template` SET `ArmorModifier` = 0.973262 WHERE `entry`=16302;

/*  Dreadbone Skeleton  */
UPDATE `creature_template` SET `speed_walk` = 0.888888, `DamageModifier` = 0.98, `ArmorModifier` = 0.975836 WHERE `entry`=16303;

/*  Dreadbone Sentinel  */
UPDATE `creature_template` SET `speed_walk` = 0.888888, `ArmorModifier` = 0.978261 WHERE `entry`=16305;

/*  Deathcage Scryer  */
UPDATE `creature_template` SET `ArmorModifier` = 0.88 WHERE `entry`=16307;

/*  Deathcage Sorcerer  */
UPDATE `creature_template` SET `DamageModifier` = 0.98, `ArmorModifier` = 0.957055 WHERE `entry`=16308;

/*  Gangled Cannibal  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.0 WHERE `entry`=16309;

/*  Phantasmal Watcher  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=16311;

/*  Spectral Screamer  */
UPDATE `creature_template` SET `ArmorModifier` = 0.950912 WHERE `entry`=16312;

/*  Fallen Ranger  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=16314;

/*  Deatholme Acolyte  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=16315;

/*  Deatholme Necromancer  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=16317;

/*  Deatholme Darkmage  */
UPDATE `creature_template` SET `DamageModifier` = 1.5 WHERE `entry`=16318;

/*  Eye of Dar'Khan  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=16320;

/*  Gangled Flesheater  */
UPDATE `creature_template` SET `speed_walk` = 0.777776 WHERE `entry`=16322;

/*  Phantasmal Seeker  */
UPDATE `creature_template` SET `DamageModifier` = 0.9 WHERE `entry`=16323;

/*  Quel'dorei Ghost  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=16325;

/*  Quel'dorei Wraith  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=16326;

/*  Ravening Apparition  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=16327;

/*  Vengeful Apparition  */
UPDATE `creature_template` SET `DamageModifier` = 0.8 WHERE `entry`=16328;

/*  Dar'Khan Drathir  */
UPDATE `creature_template` SET `DamageModifier` = 2.6 WHERE `entry`=16329;

/*  Sentinel Spy  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=16330;

/*  Darnassian Druid  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=16331;

/*  Darnassian Huntress  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=16332;

/*  Sentinel Infiltrator  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=16333;

/*  Arcane Reaver  */
UPDATE `creature_template` SET `ArmorModifier` = 1.48247 WHERE `entry`=16339;

/*  Shadowpine Ripper  */
UPDATE `creature_template` SET `ArmorModifier` = 0.975836 WHERE `entry`=16340;

/*  Shadowpine Witch  */
UPDATE `creature_template` SET `ArmorModifier` = 0.970772 WHERE `entry`=16341;

/*  Mummified Headhunter  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16342;

/*  Shadowpine Oracle  */
UPDATE `creature_template` SET `ArmorModifier` = 0.974832 WHERE `entry`=16343;

/*  Shadowpine Headhunter  */
UPDATE `creature_template` SET `ArmorModifier` = 0.978261 WHERE `entry`=16344;

/*  Shadowpine Catlord  */
UPDATE `creature_template` SET `ArmorModifier` = 0.978038 WHERE `entry`=16345;

/*  Shadowpine Hexxer  */
UPDATE `creature_template` SET `ArmorModifier` = 0.95022 WHERE `entry`=16346;

/*  Starving Ghostclaw  */
UPDATE `creature_template` SET `ArmorModifier` = 0.896484 WHERE `entry`=16347;

/*  Ghostclaw Lynx  */
UPDATE `creature_template` SET `ArmorModifier` = 0.97352 WHERE `entry`=16348;

/*  Ghostclaw Ravager  */
UPDATE `creature_template` SET `ArmorModifier` = 0.975936 WHERE `entry`=16349;

/*  Spindleweb Spider  */
UPDATE `creature_template` SET `ArmorModifier` = 0.975836 WHERE `entry`=16350;

/*  Spindleweb Lurker  */
UPDATE `creature_template` SET `ArmorModifier` = 0.974889 WHERE `entry`=16351;

/*  Greater Spindleweb  */
UPDATE `creature_template` SET `ArmorModifier` = 0.978261 WHERE `entry`=16352;

/*  Mistbat  */
UPDATE `creature_template` SET `ArmorModifier` = 1.31055 WHERE `entry`=16353;

/*  Anok'suten  */
UPDATE `creature_template` SET `DamageModifier` = 1.75 WHERE `entry`=16357;

/*  Runewarden Deryan  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.3, `HealthModifier` = 1.088 WHERE `entry`=16362;

/*  Infused Crystal  */
UPDATE `creature_template` SET `speed_run` = 0.857143 WHERE `entry`=16364;

/*  Sempstress Ambershine  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16366;

/*  Botanist Tyniarrel  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16367;

/*  Koren  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=16388;

/*  Spectral Apprentice  */
UPDATE `creature_template` SET `DamageModifier` = 9.0, `HealthModifier` = 6.0 WHERE `entry`=16389;

/*  Ardeyn Riverwind  */
UPDATE `creature_template` SET `DamageModifier` = 0.8 WHERE `entry`=16397;

/*  Zombified Grimscale  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=16402;

/*  Withered Grimscale  */
UPDATE `creature_template` SET `DamageModifier` = 0.8 WHERE `entry`=16403;

/*  Yellowgill Frenzy  */
UPDATE `creature_template` SET `ArmorModifier` = 0.94704 WHERE `entry`=16404;

/*  Whitetail Frenzy  */
UPDATE `creature_template` SET `ArmorModifier` = 0.94704 WHERE `entry`=16405;

/*  Phantom Attendant  */
UPDATE `creature_template` SET `DamageModifier` = 10.0 WHERE `entry`=16406;

/*  Phantom Valet  */
UPDATE `creature_template` SET `DamageModifier` = 25.0, `HealthModifier` = 9.0 WHERE `entry`=16408;

/*  Phantom Guest  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=16409;

/*  Spectral Retainer  */
UPDATE `creature_template` SET `DamageModifier` = 18.0, `HealthModifier` = 8.0 WHERE `entry`=16410;

/*  Spectral Chef  */
UPDATE `creature_template` SET `DamageModifier` = 18.0, `HealthModifier` = 6.0 WHERE `entry`=16411;

/*  Ghostly Baker  */
UPDATE `creature_template` SET `DamageModifier` = 10.0 WHERE `entry`=16412;

/*  Ghostly Steward  */
UPDATE `creature_template` SET `DamageModifier` = 10.0 WHERE `entry`=16414;

/*  Skeletal Waiter  */
UPDATE `creature_template` SET `DamageModifier` = 15.0, `HealthModifier` = 6.0 WHERE `entry`=16415;

/*  Spectral Sentry  */
UPDATE `creature_template` SET `DamageModifier` = 12.0, `HealthModifier` = 6.0 WHERE `entry`=16424;

/*  Phantom Guardsman  */
UPDATE `creature_template` SET `DamageModifier` = 9.0 WHERE `entry`=16425;

/*  Bennett  */
UPDATE `creature_template` SET `DamageModifier` = 1.3 WHERE `entry`=16426;

/*  Zalene Firstlight  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16443;

/*  Wanton Hostess  */
UPDATE `creature_template` SET `DamageModifier` = 12.0, `HealthModifier` = 8.0 WHERE `entry`=16459;

/*  Night Mistress  */
UPDATE `creature_template` SET `DamageModifier` = 12.0, `HealthModifier` = 8.0 WHERE `entry`=16460;

/*  Concubine  */
UPDATE `creature_template` SET `DamageModifier` = 12.0, `HealthModifier` = 8.0 WHERE `entry`=16461;

/*  Ranger Krenn'an  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=16462;

/*  Farstrider Solanna  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=16463;

/*  Smoked Meat Rack Trigger  */
UPDATE `creature_template` SET `speed_walk` = 1.2 WHERE `entry`=16466;

/*  Spectral Patron  */
UPDATE `creature_template` SET `DamageModifier` = 4.5, `HealthModifier` = 2.0 WHERE `entry`=16468;

/*  Shadowpine Shadowcaster  */
UPDATE `creature_template` SET `ArmorModifier` = 0.980061 WHERE `entry`=16469;

/*  Ghostly Philanthropist  */
UPDATE `creature_template` SET `DamageModifier` = 10.0 WHERE `entry`=16470;

/*  Skeletal Usher  */
UPDATE `creature_template` SET `DamageModifier` = 22.0, `HealthModifier` = 12.0 WHERE `entry`=16471;

/*  Phantom Stagehand  */
UPDATE `creature_template` SET `DamageModifier` = 25.0 WHERE `entry`=16472;

/*  Megelon  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16475;

/*  Proenitus  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=16477;

/*  Ghastly Haunt  */
UPDATE `creature_template` SET `DamageModifier` = 32.0, `HealthModifier` = 10.0 WHERE `entry`=16481;

/*  Trapped Soul  */
UPDATE `creature_template` SET `DamageModifier` = 23.0 WHERE `entry`=16482;

/*  Arcane Watchman  */
UPDATE `creature_template` SET `DamageModifier` = 22.0, `HealthModifier` = 12.0 WHERE `entry`=16485;

/*  Arcane Anomaly  */
UPDATE `creature_template` SET `DamageModifier` = 16.0, `HealthModifier` = 0.2 WHERE `entry`=16488;

/*  Chaotic Sentience  */
UPDATE `creature_template` SET `DamageModifier` = 16.0, `HealthModifier` = 8.0 WHERE `entry`=16489;

/*  Mana Feeder  */
UPDATE `creature_template` SET `DamageModifier` = 6.0, `HealthModifier` = 2.0 WHERE `entry`=16491;

/*  Syphoner  */
UPDATE `creature_template` SET `DamageModifier` = 6.0, `HealthModifier` = 2.0 WHERE `entry`=16492;

/*  Arcane Protector  */
UPDATE `creature_template` SET `DamageModifier` = 30.0, `HealthModifier` = 16.0 WHERE `entry`=16504;

/*  Shattered Hand Sentry  */
UPDATE `creature_template` SET `DamageModifier` = 4.664 WHERE `entry`=16507;

/*  Nestlewood Owlkin  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=16518;

/*  Surveyor Candress  */
UPDATE `creature_template` SET `speed_walk` = 1.2, `speed_run` = 1.14286, `DamageModifier` = 1.4, `ArmorModifier` = 1.01538 WHERE `entry`=16522;

/*  Shattered Hand Savage  */
UPDATE `creature_template` SET `DamageModifier` = 4.664 WHERE `entry`=16523;

/*  Spell Shade  */
UPDATE `creature_template` SET `DamageModifier` = 12.0, `HealthModifier` = 6.0 WHERE `entry`=16525;

/*  Sorcerous Shade  */
UPDATE `creature_template` SET `DamageModifier` = 12.0, `HealthModifier` = 8.0 WHERE `entry`=16526;

/*  Magical Horror  */
UPDATE `creature_template` SET `DamageModifier` = 12.0, `HealthModifier` = 8.0 WHERE `entry`=16529;

/*  Mana Warp  */
UPDATE `creature_template` SET `DamageModifier` = 6.0, `HealthModifier` = 6.0 WHERE `entry`=16530;

/*  Inoculated Nestlewood Owlkin  */
UPDATE `creature_template` SET `DamageModifier` = 5.0 WHERE `entry`=16534;

/*  Vindicator Aldar  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=16535;

/*  Mutated Owlkin  */
UPDATE `creature_template` SET `speed_walk` = 1.1, `speed_run` = 1.14286 WHERE `entry`=16537;

/*  Homunculus  */
UPDATE `creature_template` SET `DamageModifier` = 3.0, `HealthModifier` = 3.0 WHERE `entry`=16539;

/*  Shadow Pillager  */
UPDATE `creature_template` SET `DamageModifier` = 8.0, `HealthModifier` = 6.0 WHERE `entry`=16540;

/*  Ethereal Thief  */
UPDATE `creature_template` SET `DamageModifier` = 24.0, `HealthModifier` = 8.0 WHERE `entry`=16544;

/*  Ethereal Spellfilcher  */
UPDATE `creature_template` SET `DamageModifier` = 24.0, `HealthModifier` = 10.0 WHERE `entry`=16545;

/*  Image of Technician Dyvuun  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 1.33333 WHERE `entry`=16550;

/*  Technician Dyvuun  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=16551;

/*  Aeun  */
UPDATE `creature_template` SET `DamageModifier` = 6.0 WHERE `entry`=16554;

/*  Orc Grunt UNUSED  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=16556;

/*  Orc Warlock UNUSED  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=16557;

/*  Orc Necrolyte UNUSED  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=16560;

/*  Orc Wolf UNUSED  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=16561;

/*  Summoned Daemon UNUSED  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=16562;

/*  Warchief Blackhand UNUSED  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=16563;

/*  Human Footman UNUSED  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=16567;

/*  Human Charger UNUSED  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=16569;

/*  Human Cleric UNUSED  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=16571;

/*  Human Conjurer UNUSED  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=16572;

/*  Far Seer Regulkut  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=16574;

/*  Shadow Hunter Ty'jin  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=16575;

/*  Overlord Hun Maimfist  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=16576;

/*  Martik Tor'seldori  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=16577;

/*  Blood Elf Pilgrim  */
UPDATE `creature_template` SET `minlevel` = 58, `DamageModifier` = 0.7 WHERE `entry`=16578;

/*  Falcon Watch Sentinel  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=16579;

/*  Thrallmar Grunt  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=16580;

/*  King Llane UNUSED  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=16581;

/*  Thrallmar Marksman  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=16582;

/*  Watch Commander Krunk  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=16584;

/*  Barley  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=16587;

/*  Guard Captain Cragtar  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=16589;

/*  Injured Thrallmar Grunt  */
UPDATE `creature_template` SET `minlevel` = 58, `DamageModifier` = 0.7 WHERE `entry`=16590;

/*  Thrallmar Peon  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=16591;

/*  Shattered Hand Brawler  */
UPDATE `creature_template` SET `DamageModifier` = 4.66 WHERE `entry`=16593;

/*  Shadowmoon Acolyte  */
UPDATE `creature_template` SET `DamageModifier` = 4.676 WHERE `entry`=16594;

/*  Fleshbeast  */
UPDATE `creature_template` SET `DamageModifier` = 22.0 WHERE `entry`=16595;

/*  Greater Fleshbeast  */
UPDATE `creature_template` SET `DamageModifier` = 36.0, `HealthModifier` = 16.0 WHERE `entry`=16596;

/*  Eye of Thrallmar  */
UPDATE `creature_template` SET `DamageModifier` = 0.02 WHERE `entry`=16598;

/*  Thrallmar Wolf Rider  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=16599;

/*  Dying Blood Elf  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16601;

/*  Farstrider Dusking  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=16603;

/*  Novia  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16615;

/*  Periel  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16616;

/*  Daenice  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16617;

/*  Celana  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16619;

/*  Mathaleron  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16620;

/*  Ileda  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16621;

/*  Gelanthis  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16624;

/*  Tynna  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16626;

/*  Ithillan  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16627;

/*  Caidori  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16628;

/*  Tandron  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16629;

/*  Sedana  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16633;

/*  Dolothos  */
UPDATE `creature_template` SET `DamageModifier` = 0.8 WHERE `entry`=16634;

/*  Lyna  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16635;

/*  Welethelon  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16637;

/*  Deynna  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16638;

/*  Keelen Sheets  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16640;

/*  Melaris  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16641;

/*  Camberon  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16642;

/*  Razia  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.8 WHERE `entry`=16643;

/*  Botanist Nathera  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16644;

/*  Torian  */
UPDATE `creature_template` SET `subname` = 'Demon Trainer' WHERE `entry`=16649;

/*  Shalenn  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16656;

/*  Feledis  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16666;

/*  Gloresse  */
UPDATE `creature_template` SET `DamageModifier` = 0.8 WHERE `entry`=16668;

/*  Eriden  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=16670;

/*  Mirvedon  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 5.0 WHERE `entry`=16671;

/*  Tana  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16672;

/*  Oninath  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16673;

/*  Zandine  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16674;

/*  Halthenis  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16675;

/*  Rahein  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16678;

/*  Osselan  */
UPDATE `creature_template` SET `speed_walk` = 0.93 WHERE `entry`=16679;

/*  Ithelis  */
UPDATE `creature_template` SET `speed_walk` = 0.93 WHERE `entry`=16680;

/*  Champion Bachi  */
UPDATE `creature_template` SET `speed_walk` = 0.93 WHERE `entry`=16681;

/*  Talmar  */
UPDATE `creature_template` SET `DamageModifier` = 0.8 WHERE `entry`=16687;

/*  Noraelath  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16691;

/*  Winthren  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16693;

/*  Karen Wentworth  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 15.0, `ManaModifier` = 1.0 WHERE `entry`=16694;

/*  Gurak  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 1.6 WHERE `entry`=16695;

/*  Krukk  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 1.6, `ManaModifier` = 1.0 WHERE `entry`=16696;

/*  Shattered Hand Reaver  */
UPDATE `creature_template` SET `DamageModifier` = 4.66 WHERE `entry`=16699;

/*  Shattered Hand Legionnaire  */
UPDATE `creature_template` SET `DamageModifier` = 5.0 WHERE `entry`=16700;

/*  Telia  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=16702;

/*  Amin  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16703;

/*  Shattered Hand Sharpshooter  */
UPDATE `creature_template` SET `DamageModifier` = 4.66 WHERE `entry`=16704;

/*  Oktan  */
UPDATE `creature_template` SET `subname` = 'Demon Trainer' WHERE `entry`=16720;

/*  Edrem  */
UPDATE `creature_template` SET `DamageModifier` = 0.8 WHERE `entry`=16740;

/*  Deriz  */
UPDATE `creature_template` SET `DamageModifier` = 0.8 WHERE `entry`=16741;

/*  Ghermas  */
UPDATE `creature_template` SET `DamageModifier` = 0.8 WHERE `entry`=16743;

/*  Feruul  */
UPDATE `creature_template` SET `DamageModifier` = 0.8 WHERE `entry`=16745;

/*  Firewing Warlock  */
UPDATE `creature_template` SET `ArmorModifier` = 0.989841 WHERE `entry`=16769;

/*  Ranger Captain Venn'ren  */
UPDATE `creature_template` SET `DamageModifier` = 2.6 WHERE `entry`=16789;

/*  Falconer Drenna Riverwind  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 4.0 WHERE `entry`=16790;

/*  Ryathen the Somber  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 5.0 WHERE `entry`=16791;

/*  Arcanist Calesthris Dawnstar  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 5.0 WHERE `entry`=16792;

/*  Magistrix Carinda  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16793;

/*  Apothecary Azethen  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 4.0 WHERE `entry`=16794;

/*  Draenei Prisoner  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 5.0 WHERE `entry`=16795;

/*  Amaan the Wise  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=16796;

/*  Scout Vanura  */
UPDATE `creature_template` SET `DamageModifier` = 5.0 WHERE `entry`=16797;

/*  Ikan  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=16799;

/*  Grand Magister Rommath  */
UPDATE `creature_template` SET `minlevel` = 73, `maxlevel` = 73, `DamageModifier` = 1.4, `HealthModifier` = 180.0 WHERE `entry`=16800;

/*  Halduron Brightwing  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=16801;

/*  Night Elf Corpse  */
UPDATE `creature_template` SET `speed_run` = 0.857143, `DamageModifier` = 0.8 WHERE `entry`=16804;

/*  Broken Skeleton  */
UPDATE `creature_template` SET `ArmorModifier` = 0.97165 WHERE `entry`=16805;

/*  Ebonlocke  */
UPDATE `creature_template` SET `DamageModifier` = 1.3 WHERE `entry`=16806;

/*  Grand Warlock Nethekurse  */
UPDATE `creature_template` SET `DamageModifier` = 6.0 WHERE `entry`=16807;

/*  Warchief Kargath Bladefist  */
UPDATE `creature_template` SET `DamageModifier` = 6.0 WHERE `entry`=16808;

/*  Warbringer O'mrogg  */
UPDATE `creature_template` SET `DamageModifier` = 5.6 WHERE `entry`=16809;

/*  Sebastian  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 1.0 WHERE `entry`=16811;

/*  Barnes  */
UPDATE `creature_template` SET `DamageModifier` = 1.3 WHERE `entry`=16812;

/*  Wravien  */
UPDATE `creature_template` SET `DamageModifier` = 1.3 WHERE `entry`=16813;

/*  Gradav  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 1.0 WHERE `entry`=16814;

/*  Kamsis  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=16815;

/*  Echo of Medivh  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `DamageModifier` = 2.0 WHERE `entry`=16816;

/*  Force Commander Danath Trollbane  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=16819;

/*  Lieutenant Amadi  */
UPDATE `creature_template` SET `DamageModifier` = 4.0, `ManaModifier` = 1.0 WHERE `entry`=16820;

/*  Magus Filinthus  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=16821;

/*  Flightmaster Krill Bitterhue  */
UPDATE `creature_template` SET `DamageModifier` = 2.5, `ManaModifier` = 1.0 WHERE `entry`=16822;

/*  Humphry  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=16823;

/*  Father Malgor Devidicus  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=16825;

/*  Honor Guard Wesilow  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=16827;

/*  Honor Guard Greyn  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=16828;

/*  Field Commander Romus  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=16830;

/*  Nethergarde Infantry  */
UPDATE `creature_template` SET `DamageModifier` = 0.7, `ManaModifier` = 1.0 WHERE `entry`=16831;

/*  Prospector Murantus  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `ManaModifier` = 1.0 WHERE `entry`=16832;

/*  Makuru  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=16833;

/*  Anchorite Obadei  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=16834;

/*  Explorers' League Archaeologist  */
UPDATE `creature_template` SET `DamageModifier` = 0.7, `ManaModifier` = 1.0 WHERE `entry`=16835;

/*  Escaped Dreghood  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=16836;

/*  Foreman Biggums  */
UPDATE `creature_template` SET `DamageModifier` = 4.0, `ManaModifier` = 1.0 WHERE `entry`=16837;

/*  Honor Hold Miner  */
UPDATE `creature_template` SET `speed_walk` = 0.666668, `DamageModifier` = 0.7, `ManaModifier` = 1.0 WHERE `entry`=16838;

/*  Warp-Scryer Kryv  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=16839;

/*  Advisor Sevel  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=16840;

/*  Watch Commander Relthorn Netherwane  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=16841;

/*  Honor Hold Defender  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=16842;

/*  Honor Hold Cavalryman  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=16843;

/*  Crust Burster  */
UPDATE `creature_template` SET `speed_run` = 1.19048 WHERE `entry`=16844;

/*  Gorkan Bloodfist  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 3.3, `ManaModifier` = 1.0 WHERE `entry`=16845;

/*  Debilitated Mag'har Grunt  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=16847;

/*  Provisioner Braknar  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 2.4, `ManaModifier` = 1.0 WHERE `entry`=16848;

/*  Gremni Longbeard  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=16850;

/*  Mirren Longbeard  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=16851;

/*  Sedai's Corpse  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3832 WHERE `entry`=16852;

/*  Eldinarcus  */
UPDATE `creature_template` SET `speed_walk` = 1.83, `DamageModifier` = 1.6, `HealthModifier` = 1.255 WHERE `entry`=16854;

/*  Caretaker Dilandrus  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=16856;

/*  Marauding Crust Burster  */
UPDATE `creature_template` SET `speed_run` = 1.19048 WHERE `entry`=16857;

/*  Silanna  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16862;

/*  Deranged Helboar  */
UPDATE `creature_template` SET `ArmorModifier` = 0.963334 WHERE `entry`=16863;

/*  Stormwind Infantry  */
UPDATE `creature_template` SET `DamageModifier` = 0.7, `ManaModifier` = 1.0 WHERE `entry`=16864;

/*  Injured Stormwind Infantry  */
UPDATE `creature_template` SET `DamageModifier` = 0.6, `ManaModifier` = 1.0 WHERE `entry`=16865;

/*  Shattered Hand Grunt  */
UPDATE `creature_template` SET `ArmorModifier` = 0.968024 WHERE `entry`=16867;

/*  Shattered Hand Captain  */
UPDATE `creature_template` SET `ArmorModifier` = 0.968024 WHERE `entry`=16870;

/*  Bleeding Hollow Dark Shaman  */
UPDATE `creature_template` SET `DamageModifier` = 1.3 WHERE `entry`=16873;

/*  Shattered Hand Berserker  */
UPDATE `creature_template` SET `ArmorModifier` = 0.544523 WHERE `entry`=16878;

/*  Starving Helboar  */
UPDATE `creature_template` SET `ArmorModifier` = 0.992261 WHERE `entry`=16879;

/*  Hulking Helboar  */
UPDATE `creature_template` SET `ArmorModifier` = 0.965839 WHERE `entry`=16880;

/*  War Horse  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=16884;

/*  Amythiel Mistwalker  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=16885;

/*  Arator the Redeemer  */
UPDATE `creature_template` SET `DamageModifier` = 4.0, `ManaModifier` = 1.0 WHERE `entry`=16886;

/*  Eye of Honor Hold  */
UPDATE `creature_template` SET `DamageModifier` = 0.02 WHERE `entry`=16887;

/*  Mahuram Stouthoof  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=16888;

/*  Honor Hold Archer  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=16896;

/*  Captive Ravager Hatchling  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=16900;

/*  Blistering Rot  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=16901;

/*  Blistering Oozeling  */
UPDATE `creature_template` SET `DamageModifier` = 0.1, `ManaModifier` = 1.0 WHERE `entry`=16903;

/*  Unyielding Footman  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=16904;

/*  Unyielding Sorcerer  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=16905;

/*  Unyielding Knight  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=16906;

/*  Mag'har Outrunner  */
UPDATE `creature_template` SET `ArmorModifier` = 0.968024 WHERE `entry`=16910;

/*  Mag'har Watcher  */
UPDATE `creature_template` SET `ArmorModifier` = 0.968379 WHERE `entry`=16911;

/*  Mag'har Hunter  */
UPDATE `creature_template` SET `ArmorModifier` = 0.968024 WHERE `entry`=16912;

/*  [Unused] Marauding Crust Burster Visual  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=16914;

/*  Foreman Razelcraz  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=16915;

/*  Ammen Vale Guardian  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=16921;

/*  Sergeant Kan'ren  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=16924;

/*  Bonechewer War Wolf  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=16926;

/*  Stonescythe Whelp  */
UPDATE `creature_template` SET `speed_run` = 1.42857, `ArmorModifier` = 0.963334 WHERE `entry`=16927;

/*  Stonescythe Ambusher  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=16928;

/*  Stonescythe Alpha  */
UPDATE `creature_template` SET `ArmorModifier` = 0.965839 WHERE `entry`=16929;

/*  Enraged Clefthoof  */
UPDATE `creature_template` SET `ArmorModifier` = 0.99214 WHERE `entry`=16931;

/*  Razorfang Hatchling  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `ArmorModifier` = 0.957003 WHERE `entry`=16932;

/*  Quillfang Ravager  */
UPDATE `creature_template` SET `ArmorModifier` = 0.961842 WHERE `entry`=16934;

/*  Dreghood Geomancer  */
UPDATE `creature_template` SET `speed_run` = 1.14286, `DamageModifier` = 0.49 WHERE `entry`=16937;

/*  Dreghood Brute  */
UPDATE `creature_template` SET `speed_run` = 0.714286 WHERE `entry`=16938;

/*  Void Baron Galaxis  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 1.5 WHERE `entry`=16939;

/*  Phasing Voidcaller  */
UPDATE `creature_template` SET `ArmorModifier` = 0.965839 WHERE `entry`=16941;

/*  Cyber-Rage Forgelord  */
UPDATE `creature_template` SET `speed_walk` = 0.944444, `speed_run` = 0.952381, `ArmorModifier` = 0.976895 WHERE `entry`=16943;

/*  Mo'arg Doomsmith  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `ArmorModifier` = 0.976895 WHERE `entry`=16944;

/*  Mo'arg Engineer  */
UPDATE `creature_template` SET `speed_walk` = 0.944444, `speed_run` = 0.952381, `DamageModifier` = 3.8, `ArmorModifier` = 0.975775, `ManaModifier` = 1.0 WHERE `entry`=16945;

/*  Mo'arg Forgefiend  */
UPDATE `creature_template` SET `speed_walk` = 0.944444, `speed_run` = 0.952381, `ArmorModifier` = 0.965839 WHERE `entry`=16946;

/*  Gan'arg Servant  */
UPDATE `creature_template` SET `DamageModifier` = 0.83 WHERE `entry`=16947;

/*  Gan'arg Engineer  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16948;

/*  Gan'arg Mekgineer  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16949;

/*  Netherhound  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=16950;

/*  Anger Guard  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16952;

/*  Forge Camp Legionnaire  */
UPDATE `creature_template` SET `ArmorModifier` = 1.0682 WHERE `entry`=16954;

/*  Dread Tactician  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=16959;

/*  Sister of Grief  */
UPDATE `creature_template` SET `DamageModifier` = 1.2, `ArmorModifier` = 0.963812 WHERE `entry`=16960;

/*  Infernal Destroyer  */
UPDATE `creature_template` SET `DamageModifier` = 2.2 WHERE `entry`=16963;

/*  Haal'eshi Windwalker  */
UPDATE `creature_template` SET `ArmorModifier` = 0.968379 WHERE `entry`=16966;

/*  Haal'eshi Talonguard  */
UPDATE `creature_template` SET `ArmorModifier` = 0.968024 WHERE `entry`=16967;

/*  Tunneler  */
UPDATE `creature_template` SET `speed_run` = 1.19048, `ArmorModifier` = 0.965839 WHERE `entry`=16968;

/*  Bristlehide Clefthoof  */
UPDATE `creature_template` SET `ArmorModifier` = 0.972074 WHERE `entry`=16970;

/*  Injured Draenei  */
UPDATE `creature_template` SET `minlevel` = 4 WHERE `entry`=16971;

/*  Bonestripper Buzzard  */
UPDATE `creature_template` SET `ArmorModifier` = 0.991975 WHERE `entry`=16972;

/*  Bonestripper Vulture  */
UPDATE `creature_template` SET `ArmorModifier` = 0.965839 WHERE `entry`=16973;

/*  Rogue Voidwalker  */
UPDATE `creature_template` SET `ArmorModifier` = 0.963812 WHERE `entry`=16974;

/*  Uncontrolled Voidwalker  */
UPDATE `creature_template` SET `ArmorModifier` = 0.963812 WHERE `entry`=16975;

/*  Arch Mage Xintor  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=16977;

/*  Thiah Redmane  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=16991;

/*  Dreadtusk  */
UPDATE `creature_template` SET `DamageModifier` = 1.5 WHERE `entry`=16992;

/*  Draenei Anchorite  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=16994;

/*  Aggonis  */
UPDATE `creature_template` SET `speed_run` = 1.0 WHERE `entry`=17000;

/*  [Unused] Crust Burster Visual  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=17001;

/*  Angela "The Claw" Kestrel  */
UPDATE `creature_template` SET `maxlevel` = 57, `DamageModifier` = 0.7, `HealthModifier` = 2.5 WHERE `entry`=17002;

/*  Lady Keira Berrybuck  */
UPDATE `creature_template` SET `DamageModifier` = 9.0, `HealthModifier` = 12.0 WHERE `entry`=17007;

/*  Gul'dan  */
UPDATE `creature_template` SET `DamageModifier` = 6.0 WHERE `entry`=17008;

/*  Durotan  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=17009;

/*  Draka  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=17010;

/*  Blackhand the Destroyer  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=17011;

/*  Orgrim Doomhammer  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=17012;

/*  Collapsing Voidwalker  */
UPDATE `creature_template` SET `ArmorModifier` = 0.965839 WHERE `entry`=17014;

/*  Taleris Dawngazer  */
UPDATE `creature_template` SET `minlevel` = 59, `DamageModifier` = 4.0 WHERE `entry`=17015;

/*  Shadow Council Enforcer  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=17023;

/*  Grom Hellscream  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=17026;

/*  Maim Blackhand  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=17028;

/*  Female Kaliri Hatchling  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 1.5 WHERE `entry`=17034;

/*  Male Kaliri Hatchling  */
UPDATE `creature_template` SET `DamageModifier` = 1.5 WHERE `entry`=17039;

/*  Pilgrim Gal'ressa  */
UPDATE `creature_template` SET `minlevel` = 59, `speed_walk` = 1.125, `DamageModifier` = 0.6 WHERE `entry`=17046;

/*  Wretched Crate Trigger  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=17047;

/*  Rumatu  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=17052;

/*  Eversong Partygoer  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=17056;

/*  Blacktalon the Savage  */
UPDATE `creature_template` SET `DamageModifier` = 3.3 WHERE `entry`=17057;

/*  Illidari Taskmaster  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=17058;

/*  Hellfire Combat Dummy Small  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=17060;

/*  Fel Orc Corpse  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.6 WHERE `entry`=17062;

/*  Wanton Hostess Transform Visual  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=17063;

/*  Night Mistress Transform Visual  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=17064;

/*  Concubine Transform Visual  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=17065;

/*  Technician Zhanaa  */
UPDATE `creature_template` SET `DamageModifier` = 6.0 WHERE `entry`=17071;

/*  Draenei Mourner  */
UPDATE `creature_template` SET `minlevel` = 5, `DamageModifier` = 0.3 WHERE `entry`=17073;

/*  Lady Liadrin  */
UPDATE `creature_template` SET `minlevel` = 73, `maxlevel` = 73, `DamageModifier` = 1.6 WHERE `entry`=17076;

/*  Ancestral Spirit Wolf  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `ArmorModifier` = 1.33333 WHERE `entry`=17077;

/*  Fel Orc Convert  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `DamageModifier` = 1.8 WHERE `entry`=17083;

/*  Aeranas  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=17085;

/*  Enraged Wraith  */
UPDATE `creature_template` SET `speed_run` = 0.857143, `DamageModifier` = 0.7 WHERE `entry`=17086;

/*  Spirit of the Vale  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 1.2 WHERE `entry`=17087;

/*  Shadowy Summoner  */
UPDATE `creature_template` SET `ArmorModifier` = 1.13726 WHERE `entry`=17088;

/*  Advisor Duskingdawn  */
UPDATE `creature_template` SET `DamageModifier` = 5.0 WHERE `entry`=17092;

/*  Nemeth Hawkeye  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=17094;

/*  Balandar Brightstar  */
UPDATE `creature_template` SET `minlevel` = 35, `speed_walk` = 1.25, `DamageModifier` = 5.0 WHERE `entry`=17095;

/*  Astral Flare  */
UPDATE `creature_template` SET `DamageModifier` = 0.007 WHERE `entry`=17096;

/*  Advisor Sarophas  */
UPDATE `creature_template` SET `speed_walk` = 1.05, `DamageModifier` = 3.0, `HealthModifier` = 2.0 WHERE `entry`=17097;

/*  Ambassador Dawnsinger  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=17098;

/*  Mehlar Dawnblade  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=17099;

/*  Advisor Sunsworn  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=17100;

/*  Angry Murloc  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `ArmorModifier` = 0.833333 WHERE `entry`=17102;

/*  Emissary Taluun  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=17103;

/*  Anchorite Delan  */
UPDATE `creature_template` SET `DamageModifier` = 3.5 WHERE `entry`=17104;

/*  Emissary Valustraa  */
UPDATE `creature_template` SET `DamageModifier` = 3.5 WHERE `entry`=17105;

/*  Vindicator Palanaar  */
UPDATE `creature_template` SET `DamageModifier` = 3.5 WHERE `entry`=17106;

/*  Forsaken Raider  */
UPDATE `creature_template` SET `ArmorModifier` = 0.985841 WHERE `entry`=17108;

/*  Cersei Dusksinger  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=17109;

/*  Captured Tarantula  */
UPDATE `creature_template` SET `speed_walk` = 1.05 WHERE `entry`=17112;

/*  Captured Crocolisk  */
UPDATE `creature_template` SET `speed_walk` = 1.05, `DamageModifier` = 1.3 WHERE `entry`=17113;

/*  Arugoo of the Stillpine  */
UPDATE `creature_template` SET `speed_walk` = 0.666668, `speed_run` = 0.992063, `DamageModifier` = 2.4 WHERE `entry`=17114;

/*  Cursed Lost One  */
UPDATE `creature_template` SET `speed_walk` = 1.05, `DamageModifier` = 1.5 WHERE `entry`=17115;

/*  Earthcaller Ryga  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0, `ManaModifier` = 1.0 WHERE `entry`=17123;

/*  Captured Tarantula Trigger  */
UPDATE `creature_template` SET `speed_walk` = 1.05 WHERE `entry`=17124;

/*  Captured Jaguar Trigger  */
UPDATE `creature_template` SET `speed_walk` = 1.05 WHERE `entry`=17125;

/*  Captured Crocolisk Trigger  */
UPDATE `creature_template` SET `speed_walk` = 1.05 WHERE `entry`=17126;

/*  Anchorite Avuun  */
UPDATE `creature_template` SET `speed_walk` = 1.05, `DamageModifier` = 4.0 WHERE `entry`=17127;

/*  Greater Windroc  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=17129;

/*  Boulderfist Crusher  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=17134;

/*  Boulderfist Mystic  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=17135;

/*  Warmaul Reaver  */
UPDATE `creature_template` SET `ArmorModifier` = 0.965838 WHERE `entry`=17138;

/*  Windyreed Scavenger  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=17139;

/*  Feral Lost One  */
UPDATE `creature_template` SET `ArmorModifier` = 0.975775 WHERE `entry`=17140;

/*  Windyreed Wretch  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=17141;

/*  Wrekt Warrior  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=17142;

/*  Wrekt Seer  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=17143;

/*  Goretooth  */
UPDATE `creature_template` SET `speed_walk` = 1.83, `DamageModifier` = 1.5 WHERE `entry`=17144;

/*  Vir'aani Raider  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=17149;

/*  Vir'aani Arcanist  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=17150;

/*  Felguard Legionnaire  */
UPDATE `creature_template` SET `DamageModifier` = 4.4, `ArmorModifier` = 0.975775 WHERE `entry`=17152;

/*  Lake Spirit  */
UPDATE `creature_template` SET `ArmorModifier` = 0.971228 WHERE `entry`=17153;

/*  Muck Spawn  */
UPDATE `creature_template` SET `ArmorModifier` = 0.951529 WHERE `entry`=17154;

/*  Lake Surger  */
UPDATE `creature_template` SET `ArmorModifier` = 0.963898 WHERE `entry`=17155;

/*  Tortured Earth Spirit  */
UPDATE `creature_template` SET `ArmorModifier` = 0.97165 WHERE `entry`=17156;

/*  Shattered Rumbler  */
UPDATE `creature_template` SET `ArmorModifier` = 0.974542 WHERE `entry`=17157;

/*  Storm Rager  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=17159;

/*  Blizzard (Shade of Aran)  */
UPDATE `creature_template` SET `speed_run` = 0.642857 WHERE `entry`=17161;

/*  Shade of Aran Teleport N  */
UPDATE `creature_template` SET `speed_run` = 0.992063 WHERE `entry`=17168;

/*  Shade of Aran Teleport S  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `speed_run` = 0.992063 WHERE `entry`=17169;

/*  Shade of Aran Teleport E  */
UPDATE `creature_template` SET `speed_run` = 0.992063 WHERE `entry`=17170;

/*  Shade of Aran Teleport W  */
UPDATE `creature_template` SET `speed_run` = 0.992063 WHERE `entry`=17171;

/*  Shade of Aran Teleport NE  */
UPDATE `creature_template` SET `speed_run` = 0.992063 WHERE `entry`=17172;

/*  Shade of Aran Teleport SE  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `speed_run` = 0.992063 WHERE `entry`=17173;

/*  Shade of Aran Teleport SW  */
UPDATE `creature_template` SET `speed_run` = 0.992063 WHERE `entry`=17174;

/*  Shade of Aran Teleport NW  */
UPDATE `creature_template` SET `speed_run` = 0.992063 WHERE `entry`=17175;

/*  Shade of Aran Teleport Center  */
UPDATE `creature_template` SET `speed_run` = 0.992063 WHERE `entry`=17176;

/*  Robotron 3000  */
UPDATE `creature_template` SET `speed_run` = 0.571429 WHERE `entry`=17178;

/*  Restless Spirit of Earth  */
UPDATE `creature_template` SET `speed_walk` = 1.12 WHERE `entry`=17179;

/*  Spirit of Air  */
UPDATE `creature_template` SET `speed_walk` = 1.12 WHERE `entry`=17180;

/*  Spirit of Water  */
UPDATE `creature_template` SET `speed_walk` = 1.12, `speed_run` = 1.14286 WHERE `entry`=17181;

/*  Spirit of Fire  */
UPDATE `creature_template` SET `speed_walk` = 1.12 WHERE `entry`=17182;

/*  Bristlelimb Furbolg  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=17183;

/*  Bristlelimb Windcaller  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.95 WHERE `entry`=17184;

/*  Bristlelimb Ursa  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 1.03 WHERE `entry`=17185;

/*  Deranged Owlbeast  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=17186;

/*  Aberrant Owlbeast  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=17187;

/*  Raving Owlbeast  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=17188;

/*  Crazed Wildkin  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=17189;

/*  Siltfin Murloc  */
UPDATE `creature_template` SET `ArmorModifier` = 0.808594 WHERE `entry`=17190;

/*  Siltfin Oracle  */
UPDATE `creature_template` SET `DamageModifier` = 1.2, `ArmorModifier` = 0.907407 WHERE `entry`=17191;

/*  Siltfin Hunter  */
UPDATE `creature_template` SET `ArmorModifier` = 0.901408 WHERE `entry`=17192;

/*  Wrathscale Naga  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.844937 WHERE `entry`=17193;

/*  Wrathscale Myrmidon  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.873418 WHERE `entry`=17194;

/*  Wrathscale Siren  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.901163 WHERE `entry`=17195;

/*  Root Trapper  */
UPDATE `creature_template` SET `ArmorModifier` = 0.844828 WHERE `entry`=17196;

/*  Root Thresher  */
UPDATE `creature_template` SET `ArmorModifier` = 0.879747 WHERE `entry`=17197;

/*  Ravager Specimen  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `ArmorModifier` = 0.888672 WHERE `entry`=17199;

/*  Moongraze Stag  */
UPDATE `creature_template` SET `speed_run` = 0.857143, `ArmorModifier` = 0.844828 WHERE `entry`=17200;

/*  Moongraze Buck  */
UPDATE `creature_template` SET `ArmorModifier` = 0.879747 WHERE `entry`=17201;

/*  Infected Nightstalker Runt  */
UPDATE `creature_template` SET `ArmorModifier` = 0.78481 WHERE `entry`=17202;

/*  Nightstalker  */
UPDATE `creature_template` SET `ArmorModifier` = 0.889163 WHERE `entry`=17203;

/*  Temper  */
UPDATE `creature_template` SET `DamageModifier` = 1.3 WHERE `entry`=17205;

/*  Naias  */
UPDATE `creature_template` SET `speed_run` = 1.14286 WHERE `entry`=17207;

/*  Sentinel Leader  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=17210;

/*  Human Footman  */
UPDATE `creature_template` SET `DamageModifier` = 1.5 WHERE `entry`=17211;

/*  Skittering Crawler  */
UPDATE `creature_template` SET `ArmorModifier` = 0.866109 WHERE `entry`=17216;

/*  Barbed Crawler  */
UPDATE `creature_template` SET `speed_run` = 0.857143, `ArmorModifier` = 0.795566 WHERE `entry`=17217;

/*  Huraan  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=17218;

/*  Ambassador Rualeth  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=17223;

/*  Keltus Darkleaf  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.7 WHERE `entry`=17224;

/*  Viera Sunwhisper  */
UPDATE `creature_template` SET `speed_run` = 0.714286, `DamageModifier` = 5.0 WHERE `entry`=17226;

/*  Human Peasant  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=17227;

/*  Kil'rek  */
UPDATE `creature_template` SET `DamageModifier` = 20.0 WHERE `entry`=17229;

/*  Cryptographer Aurren  */
UPDATE `creature_template` SET `DamageModifier` = 5.0 WHERE `entry`=17232;

/*  Ghost of Uther Lightbringer  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 1.6 WHERE `entry`=17233;

/*  [Unused] Tunneler Visual  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=17234;

/*  Tcha'kaz  */
UPDATE `creature_template` SET `minlevel` = 44 WHERE `entry`=17236;

/*  Anchorite Truuen  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=17238;

/*  Admiral Odesyus  */
UPDATE `creature_template` SET `DamageModifier` = 2.6 WHERE `entry`=17240;

/*  Priestess Kyleen Il'dinare  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=17241;

/*  Archaeologist Adamant Ironheart  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=17242;

/*  Engineer "Spark" Overgrind  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=17243;

/*  Alliance Axeman  */
UPDATE `creature_template` SET `speed_walk` = 0.666668, `DamageModifier` = 0.6 WHERE `entry`=17244;

/*  Alliance Logger  */
UPDATE `creature_template` SET `minlevel` = 10, `DamageModifier` = 0.6 WHERE `entry`=17247;

/*  Demon Chains  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.75 WHERE `entry`=17248;

/*  Defile Uther's Tomb Trigger  */
UPDATE `creature_template` SET `speed_walk` = 1.1, `ArmorModifier` = 1.33333 WHERE `entry`=17253;

/*  Bonechewer Hungerer  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=17259;

/*  Restless Skeleton  */
UPDATE `creature_template` SET `speed_run` = 1.14286, `DamageModifier` = 7.0, `HealthModifier` = 2.5 WHERE `entry`=17261;

/*  Recovering Pilgrim  */
UPDATE `creature_template` SET `minlevel` = 58, `DamageModifier` = 0.6 WHERE `entry`=17263;

/*  Bonechewer Ravener  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=17264;

/*  Fiendish Imp  */
UPDATE `creature_template` SET `DamageModifier` = 1.1, `HealthModifier` = 0.9 WHERE `entry`=17267;

/*  Image of Technician Zhanaa  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=17268;

/*  Bleeding Hollow Darkcaster  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=17269;

/*  Bleeding Hollow Archer  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=17270;

/*  Bonechewer Destroyer  */
UPDATE `creature_template` SET `DamageModifier` = 4.33 WHERE `entry`=17271;

/*  Flaming Aspect  */
UPDATE `creature_template` SET `DamageModifier` = 0.75 WHERE `entry`=17272;

/*  Temper's Target  */
UPDATE `creature_template` SET `DamageModifier` = 0.01 WHERE `entry`=17274;

/*  Aqueous  */
UPDATE `creature_template` SET `DamageModifier` = 0.01 WHERE `entry`=17275;

/*  Watery Aspect  */
UPDATE `creature_template` SET `ArmorModifier` = 0.981063 WHERE `entry`=17276;

/*  Venture Co. Saboteur  */
UPDATE `creature_template` SET `speed_run` = 0.857143, `ArmorModifier` = 0.866109 WHERE `entry`=17278;

/*  Venture Co. Gemologist  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `ArmorModifier` = 0.868293 WHERE `entry`=17279;

/*  Shattered Hand Warhound  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=17280;

/*  Falcon Watch Ranger  */
UPDATE `creature_template` SET `DamageModifier` = 2.6 WHERE `entry`=17282;

/*  Astral Spark  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.01 WHERE `entry`=17283;

/*  Sentinel Luciel Starwhisper  */
UPDATE `creature_template` SET `minlevel` = 29, `DamageModifier` = 3.5 WHERE `entry`=17287;

/*  Randy Whizzlesprocket  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=17288;

/*  Rifleman Brownbeard  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=17289;

/*  Captain Alina  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=17290;

/*  Architect Nemos  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=17291;

/*  Private Jacint  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=17292;

/*  Drisella  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=17294;

/*  Captain Boneshatter  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=17296;

/*  Scout Orgarr  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=17297;

/*  Warlord Sriss'tiz  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=17298;

/*  Gorgannon  */
UPDATE `creature_template` SET `speed_walk` = 1.05, `DamageModifier` = 1.1 WHERE `entry`=17300;

/*  Vindicator Vedaar  */
UPDATE `creature_template` SET `DamageModifier` = 3.5 WHERE `entry`=17303;

/*  Overseer Gorthak  */
UPDATE `creature_template` SET `speed_walk` = 1.05 WHERE `entry`=17304;

/*  Watchkeeper Gargolmar  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `DamageModifier` = 6.0 WHERE `entry`=17306;

/*  Vazruden the Herald  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=17307;

/*  Omor the Unscarred  */
UPDATE `creature_template` SET `DamageModifier` = 7.0 WHERE `entry`=17308;

/*  Hellfire Watcher  */
UPDATE `creature_template` SET `DamageModifier` = 4.3 WHERE `entry`=17309;

/*  Gnarl  */
UPDATE `creature_template` SET `DamageModifier` = 3.5 WHERE `entry`=17310;

/*  Cowlen  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=17311;

/*  Magwin  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=17312;

/*  Whisper  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=17314;

/*  Geezle  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=17318;

/*  Bristlelimb Shaman  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=17320;

/*  Bristlelimb Warrior  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=17321;

/*  Infected Wildkin  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=17322;

/*  Contaminated Wildkin  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=17323;

/*  Irradiated Wildkin  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=17324;

/*  Blacksilt Tidecaller  */
UPDATE `creature_template` SET `DamageModifier` = 0.97 WHERE `entry`=17327;

/*  Wrathscale Shorestalker  */
UPDATE `creature_template` SET `ArmorModifier` = 0.963816 WHERE `entry`=17331;

/*  Wrathscale Raider  */
UPDATE `creature_template` SET `ArmorModifier` = 0.857595 WHERE `entry`=17332;

/*  Wrathscale Screamer  */
UPDATE `creature_template` SET `ArmorModifier` = 0.969231 WHERE `entry`=17333;

/*  Wrathscale Marauder  */
UPDATE `creature_template` SET `ArmorModifier` = 0.97352 WHERE `entry`=17334;

/*  Wrathscale Serpent Guard  */
UPDATE `creature_template` SET `ArmorModifier` = 0.857595 WHERE `entry`=17335;

/*  Wrathscale Sorceress  */
UPDATE `creature_template` SET `ArmorModifier` = 0.968023 WHERE `entry`=17336;

/*  Nazzivus Satyr  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=17337;

/*  Nazzivus Rogue  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=17338;

/*  Thistle Lasher  */
UPDATE `creature_template` SET `ArmorModifier` = 0.970332 WHERE `entry`=17343;

/*  Mutated Constrictor  */
UPDATE `creature_template` SET `ArmorModifier` = 0.974889 WHERE `entry`=17344;

/*  Mutated Tangler  */
UPDATE `creature_template` SET `ArmorModifier` = 0.978261 WHERE `entry`=17346;

/*  Blue Flutterer  */
UPDATE `creature_template` SET `ArmorModifier` = 0.888476 WHERE `entry`=17349;

/*  Royal Blue Flutterer  */
UPDATE `creature_template` SET `ArmorModifier` = 1.40112 WHERE `entry`=17350;

/*  Saurian Slayer  */
UPDATE `creature_template` SET `ArmorModifier` = 0.958384 WHERE `entry`=17351;

/*  Corrupted Treant  */
UPDATE `creature_template` SET `ArmorModifier` = 0.942434 WHERE `entry`=17352;

/*  Corrupted Stomper  */
UPDATE `creature_template` SET `ArmorModifier` = 0.956522 WHERE `entry`=17353;

/*  Deonysius  */
UPDATE `creature_template` SET `rank` = 3, `DamageModifier` = 1.0 WHERE `entry`=17354;

/*  Valusha  */
UPDATE `creature_template` SET `speed_walk` = 1.05, `DamageModifier` = 4.0 WHERE `entry`=17355;

/*  Creeping Ooze  */
UPDATE `creature_template` SET `DamageModifier` = 4.664 WHERE `entry`=17356;

/*  Creeping Oozeling  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=17357;

/*  Fouled Water Spirit  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976574 WHERE `entry`=17358;

/*  Tel'athion the Impure  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 1.6, `ArmorModifier` = 1.0 WHERE `entry`=17359;

/*  Laughing Skull Enforcer  */
UPDATE `creature_template` SET `DamageModifier` = 10.0 WHERE `entry`=17370;

/*  Timberstrider Fledgling  */
UPDATE `creature_template` SET `speed_walk` = 0.666668, `ArmorModifier` = 0.844828 WHERE `entry`=17372;

/*  Timberstrider  */
UPDATE `creature_template` SET `speed_walk` = 0.666668, `ArmorModifier` = 0.775316 WHERE `entry`=17373;

/*  Greater Timberstrider  */
UPDATE `creature_template` SET `speed_walk` = 0.666668, `speed_run` = 0.928571, `ArmorModifier` = 0.795566 WHERE `entry`=17374;

/*  Stillpine Captive  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `ArmorModifier` = 0.669922 WHERE `entry`=17375;

/*  Keli'dan the Breaker  */
UPDATE `creature_template` SET `DamageModifier` = 6.0 WHERE `entry`=17377;

/*  Swamp Gas  */
UPDATE `creature_template` SET `speed_run` = 0.142857, `DamageModifier` = 0.01 WHERE `entry`=17378;

/*  Broggok  */
UPDATE `creature_template` SET `DamageModifier` = 4.7 WHERE `entry`=17380;

/*  The Maker  */
UPDATE `creature_template` SET `speed_walk` = 0.944444, `DamageModifier` = 6.0, `ManaModifier` = 1.0 WHERE `entry`=17381;

/*  Shattered Hand Elite  */
UPDATE `creature_template` SET `DamageModifier` = 2.5 WHERE `entry`=17385;

/*  Korgoth  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=17386;

/*  Shattered Hand Slayer  */
UPDATE `creature_template` SET `DamageModifier` = 2.4 WHERE `entry`=17387;

/*  Orlug'Gonn  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=17388;

/*  Shadowmoon Voidcaller  */
UPDATE `creature_template` SET `DamageModifier` = 1.12, `HealthModifier` = 1.7488 WHERE `entry`=17389;

/*  Stillpine Ancestor Tikti  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `ArmorModifier` = 0.827609 WHERE `entry`=17392;

/*  Stillpine Ancestor Yor  */
UPDATE `creature_template` SET `speed_run` = 0.857143, `ArmorModifier` = 0.827609 WHERE `entry`=17393;

/*  Shadowmoon Summoner  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=17395;

/*  Shadowmoon Sorcerer  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=17396;

/*  Shadowmoon Adept  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=17397;

/*  Nascent Fel Orc  */
UPDATE `creature_template` SET `DamageModifier` = 1.7 WHERE `entry`=17398;

/*  Felguard Annihilator  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=17400;

/*  Felhound Manastalker  */
UPDATE `creature_template` SET `DamageModifier` = 5.5 WHERE `entry`=17401;

/*  Yaluu  */
UPDATE `creature_template` SET `DamageModifier` = 0.8 WHERE `entry`=17402;

/*  Anchorite Alendar  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=17403;

/*  Vindicator Sedai  */
UPDATE `creature_template` SET `DamageModifier` = 1.5 WHERE `entry`=17404;

/*  Krun Spinebreaker  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 3.0 WHERE `entry`=17405;

/*  Artificer  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=17406;

/*  Felmist  */
UPDATE `creature_template` SET `speed_run` = 0.214286, `DamageModifier` = 0.75 WHERE `entry`=17407;

/*  Arcane Vortex  */
UPDATE `creature_template` SET `speed_run` = 0.214286, `ArmorModifier` = 1.33333 WHERE `entry`=17408;

/*  Apprentice Boulian  */
UPDATE `creature_template` SET `DamageModifier` = 3.5 WHERE `entry`=17409;

/*  Stillpine Ancestor Vark  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=17410;

/*  Sedai Quest Credit Marker  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=17413;

/*  Shadowmoon Technician  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=17414;

/*  Mag'har Escort  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.5 WHERE `entry`=17417;

/*  Laughing Skull Ambusher  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 1.00607 WHERE `entry`=17418;

/*  Shattered Hand Heathen  */
UPDATE `creature_template` SET `DamageModifier` = 4.66 WHERE `entry`=17420;

/*  Clopper Wizbang  */
UPDATE `creature_template` SET `minlevel` = 16 WHERE `entry`=17421;

/*  Harbinger Mikolaas  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=17423;

/*  Shattered Hand Archer  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=17427;

/*  Fel Orc Neophyte  */
UPDATE `creature_template` SET `DamageModifier` = 3.1 WHERE `entry`=17429;

/*  Velaada  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=17431;

/*  Stillpine Defender  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `ArmorModifier` = 0.896484 WHERE `entry`=17432;

/*  Vindicator Aalesia  */
UPDATE `creature_template` SET `DamageModifier` = 5.0 WHERE `entry`=17433;

/*  Susurrus  */
UPDATE `creature_template` SET `DamageModifier` = 3.3 WHERE `entry`=17435;

/*  Stillpine Defender Corpse  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.1 WHERE `entry`=17437;

/*  Crazed Wildkin Corpse  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.1 WHERE `entry`=17438;

/*  Stillpine Hunter  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `ArmorModifier` = 0.975836 WHERE `entry`=17439;

/*  High Chief Stillpine  */
UPDATE `creature_template` SET `speed_walk` = 0.666668, `speed_run` = 0.992063, `DamageModifier` = 0.6 WHERE `entry`=17440;

/*  Gurf  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=17441;

/*  Moordo  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=17442;

/*  Kurz the Revelator  */
UPDATE `creature_template` SET `speed_walk` = 0.666668, `speed_run` = 0.992063, `DamageModifier` = 0.5 WHERE `entry`=17443;

/*  Magtor the Blind Watcher  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=17444;

/*  Stillpine the Younger  */
UPDATE `creature_template` SET `speed_walk` = 0.666668, `speed_run` = 0.992063 WHERE `entry`=17445;

/*  Parkat Steelfur  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=17446;

/*  The Kurken  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=17447;

/*  Chieftain Oomooroo  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=17448;

/*  Vision of the Prophesied Hero  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 3.0 WHERE `entry`=17452;

/*  Vision of the Kurken  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 3.0 WHERE `entry`=17453;

/*  Burning Abyssal  */
UPDATE `creature_template` SET `speed_run` = 0.857143, `DamageModifier` = 4.0, `HealthModifier` = 300.0 WHERE `entry`=17454;

/*  Bonechewer Beastmaster  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=17455;

/*  Shattered Hand Blood Guard  */
UPDATE `creature_template` SET `DamageModifier` = 5.0 WHERE `entry`=17461;

/*  Shattered Hand Zealot  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=17462;

/*  [UNUSED] Shadowmoon Firestarter  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=17463;

/*  Shattered Hand Gladiator  */
UPDATE `creature_template` SET `DamageModifier` = 4.66 WHERE `entry`=17464;

/*  Shattered Hand Centurion  */
UPDATE `creature_template` SET `DamageModifier` = 5.0 WHERE `entry`=17465;

/*  Orc Grunt  */
UPDATE `creature_template` SET `DamageModifier` = 4.4 WHERE `entry`=17469;

/*  Lesser Shadow Fissure  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `speed_run` = 0.857143, `DamageModifier` = 0.01 WHERE `entry`=17471;

/*  Shadowmoon Summon Visual  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=17473;

/*  Target Trigger  */
UPDATE `creature_template` SET `speed_run` = 0.992063 WHERE `entry`=17474;

/*  Hellfire Imp  */
UPDATE `creature_template` SET `DamageModifier` = 6.0 WHERE `entry`=17477;

/*  Bleeding Hollow Scryer  */
UPDATE `creature_template` SET `DamageModifier` = 8.0 WHERE `entry`=17478;

/*  Gunny  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=17479;

/*  Ergh of the Stillpine  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=17490;

/*  Laughing Skull Rogue  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=17491;

/*  Stone Guard Stok'ton  */
UPDATE `creature_template` SET `DamageModifier` = 1.7 WHERE `entry`=17493;

/*  Zevrax  */
UPDATE `creature_template` SET `DamageModifier` = 1.15 WHERE `entry`=17494;

/*  Stillpine Raider  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.34, `ArmorModifier` = 0.896484 WHERE `entry`=17495;

/*  Vision of the Forlorn  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 1.0, `ArmorModifier` = 1.33333, `ManaModifier` = 1.0 WHERE `entry`=17499;

/*  Woeful Healer  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=17503;

/*  Hellfire Sentry  */
UPDATE `creature_template` SET `DamageModifier` = 6.0 WHERE `entry`=17517;

/*  Ythyar  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=17518;

/*  Gurrag  */
UPDATE `creature_template` SET `speed_walk` = 0.666668, `speed_run` = 0.992063 WHERE `entry`=17520;

/*  Myst Spinner  */
UPDATE `creature_template` SET `ArmorModifier` = 0.977273 WHERE `entry`=17522;

/*  Myst Leecher  */
UPDATE `creature_template` SET `ArmorModifier` = 0.978261 WHERE `entry`=17523;

/*  Nazzivus Summoner  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.43 WHERE `entry`=17524;

/*  Bloodmyst Hatchling  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `ArmorModifier` = 1.45167 WHERE `entry`=17525;

/*  Bloodmyst Ravager  */
UPDATE `creature_template` SET `ArmorModifier` = 0.975078 WHERE `entry`=17526;

/*  Enraged Ravager  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `ArmorModifier` = 0.969251 WHERE `entry`=17527;

/*  Tzerak  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.1 WHERE `entry`=17528;

/*  Elekk  */
UPDATE `creature_template` SET `ArmorModifier` = 1.5 WHERE `entry`=17530;

/*  Draenei Protector  */
UPDATE `creature_template` SET `speed_walk` = 1.05, `DamageModifier` = 1.18 WHERE `entry`=17531;

/*  Nazan  */
UPDATE `creature_template` SET `speed_walk` = 4.0, `speed_run` = 2.57143, `DamageModifier` = 4.376 WHERE `entry`=17536;

/*  Vazruden  */
UPDATE `creature_template` SET `DamageModifier` = 5.3 WHERE `entry`=17537;

/*  Fiendish Hound  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.43 WHERE `entry`=17540;

/*  Draenei Quartermaster  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=17541;

/*  Young Furbolg Shaman  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.8 WHERE `entry`=17542;

/*  Strawman  */
UPDATE `creature_template` SET `DamageModifier` = 16.0, `HealthModifier` = 15.0 WHERE `entry`=17543;

/*  K'ure  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.6 WHERE `entry`=17545;

/*  Roar  */
UPDATE `creature_template` SET `rank` = 1, `DamageModifier` = 16.0, `HealthModifier` = 15.0 WHERE `entry`=17546;

/*  Tinhead  */
UPDATE `creature_template` SET `DamageModifier` = 16.0 WHERE `entry`=17547;

/*  Blood Watch Peacekeeper  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=17549;

/*  Void Anomaly  */
UPDATE `creature_template` SET `DamageModifier` = 0.15 WHERE `entry`=17550;

/*  Tavara  */
UPDATE `creature_template` SET `speed_walk` = 1.5 WHERE `entry`=17551;

/*  Laando  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=17554;

/*  Stephanos  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=17555;

/*  Death Ravager  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.83 WHERE `entry`=17556;

/*  Lieutenant Chadwick  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=17557;

/*  Caza'rez  */
UPDATE `creature_template` SET `DamageModifier` = 1.7 WHERE `entry`=17558;

/*  Outland Doomguard (Default)  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=17568;

/*  Outland Doomguard (Black)  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=17569;

/*  Outland Doomguard (Blue)  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=17570;

/*  Outland Doomguard (Green)  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=17571;

/*  Outland Doomguard (Purple)  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=17572;

/*  Outland Doomguard (Yellow)  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=17573;

/*  Quartermaster Urgronn  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=17585;

/*  Vorkhan the Elekk Herder  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.7 WHERE `entry`=17586;

/*  Draenei Youngling  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.7 WHERE `entry`=17587;

/*  Veridian Whelp  */
UPDATE `creature_template` SET `ArmorModifier` = 0.977273 WHERE `entry`=17588;

/*  Blood Elf Bandit  */
UPDATE `creature_template` SET `speed_run` = 0.857143, `DamageModifier` = 0.8 WHERE `entry`=17591;

/*  Razormaw  */
UPDATE `creature_template` SET `DamageModifier` = 1.27 WHERE `entry`=17592;

/*  Hellfire Wolf Rider  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=17593;

/*  Captain Korfang  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=17594;

/*  Hellfire Lieutenant  */
UPDATE `creature_template` SET `ArmorModifier` = 0.965839 WHERE `entry`=17596;

/*  Aonar  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.8 WHERE `entry`=17599;

/*  Pack Elekk  */
UPDATE `creature_template` SET `DamageModifier` = 1.15, `ArmorModifier` = 0.976303 WHERE `entry`=17601;

/*  Grandmother  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 1.3 WHERE `entry`=17603;

/*  Sunhawk Spy  */
UPDATE `creature_template` SET `ArmorModifier` = 0.97352 WHERE `entry`=17604;

/*  Sunhawk Reclaimer  */
UPDATE `creature_template` SET `DamageModifier` = 1.18, `ArmorModifier` = 0.977612 WHERE `entry`=17606;

/*  Sunhawk Defender  */
UPDATE `creature_template` SET `ArmorModifier` = 0.977273 WHERE `entry`=17607;

/*  Sunhawk Pyromancer  */
UPDATE `creature_template` SET `DamageModifier` = 0.5, `ArmorModifier` = 0.980061 WHERE `entry`=17608;

/*  Sunhawk Saboteur  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `ArmorModifier` = 0.980061 WHERE `entry`=17609;

/*  Sunhawk Agent  */
UPDATE `creature_template` SET `DamageModifier` = 1.93, `ArmorModifier` = 0.977376 WHERE `entry`=17610;

/*  Warchief's Portal  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ArmorModifier` = 1.33333 WHERE `entry`=17611;

/*  Huntress Kella Nightbow  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=17614;

/*  Ravager Ambusher  */
UPDATE `creature_template` SET `DamageModifier` = 0.5, `ArmorModifier` = 0.881773 WHERE `entry`=17620;

/*  Heathen Guard  */
UPDATE `creature_template` SET `DamageModifier` = 3.22 WHERE `entry`=17621;

/*  Sharpshooter Guard  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=17622;

/*  Reaver Guard  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=17623;

/*  Laughing Skull Warden  */
UPDATE `creature_template` SET `DamageModifier` = 4.215 WHERE `entry`=17624;

/*  Fel Orc Grunt  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=17625;

/*  Laughing Skull Legionnaire  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=17626;

/*  Jenath  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=17627;

/*  Vynna  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=17628;

/*  Feynna  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=17629;

/*  K. Lee Smallfry  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=17634;

/*  Kalynna Lathred  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.7 WHERE `entry`=17636;

/*  Mack Diver  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=17637;

/*  Siltfin Ambusher  */
UPDATE `creature_template` SET `ArmorModifier` = 0.863636 WHERE `entry`=17638;

/*  Sunhawk Ambusher  */
UPDATE `creature_template` SET `DamageModifier` = 0.5, `ArmorModifier` = 0.816667 WHERE `entry`=17641;

/*  Tracker Lyceon  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=17642;

/*  Netherspite Infernal  */
UPDATE `creature_template` SET `DamageModifier` = 2.4, `ArmorModifier` = 1.4285 WHERE `entry`=17646;

/*  Felhunter Minion  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=17648;

/*  Kessel  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=17649;

/*  Image of Medivh  */
UPDATE `creature_template` SET `DamageModifier` = 9.0, `HealthModifier` = 0.875 WHERE `entry`=17651;

/*  Image of Arcanagos  */
UPDATE `creature_template` SET `DamageModifier` = 1.7 WHERE `entry`=17652;

/*  Shadowmoon Channeler  */
UPDATE `creature_template` SET `DamageModifier` = 3.6 WHERE `entry`=17653;

/*  Blade of Argus  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=17659;

/*  Jessera of Mac'Aree  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=17663;

/*  Matis the Cruel  */
UPDATE `creature_template` SET `DamageModifier` = 1.8, `HealthModifier` = 3.0, `ArmorModifier` = 1.0 WHERE `entry`=17664;

/*  Rabid Warhound  */
UPDATE `creature_template` SET `DamageModifier` = 1.8 WHERE `entry`=17669;

/*  Shattered Hand Houndmaster  */
UPDATE `creature_template` SET `DamageModifier` = 4.66 WHERE `entry`=17670;

/*  Shattered Hand Champion  */
UPDATE `creature_template` SET `DamageModifier` = 5.0 WHERE `entry`=17671;

/*  Deadwind Villager  */
UPDATE `creature_template` SET `minlevel` = 69, `ArmorModifier` = 0.977915 WHERE `entry`=17672;

/*  Stinkhorn Striker  */
UPDATE `creature_template` SET `ArmorModifier` = 0.94704 WHERE `entry`=17673;

/*  Prince Toreth  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=17674;

/*  Achelus  */
UPDATE `creature_template` SET `DamageModifier` = 0.9 WHERE `entry`=17676;

/*  Sironas  */
UPDATE `creature_template` SET `DamageModifier` = 2.3 WHERE `entry`=17678;

/*  Man'ari Abomination  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=17679;

/*  Webbed Creature  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.2 WHERE `entry`=17680;

/*  Expedition Researcher  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 5.0 WHERE `entry`=17681;

/*  Princess Stillpine  */
UPDATE `creature_template` SET `speed_walk` = 0.666668, `speed_run` = 0.992063, `DamageModifier` = 0.8 WHERE `entry`=17682;

/*  Zarakh  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `ArmorModifier` = 1.50061 WHERE `entry`=17683;

/*  Vindicator Boros  */
UPDATE `creature_template` SET `DamageModifier` = 8.0 WHERE `entry`=17684;

/*  Researcher Cornelius  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=17686;

/*  Shattered Hand Scout  */
UPDATE `creature_template` SET `DamageModifier` = 1.25 WHERE `entry`=17693;

/*  Shadowmoon Darkcaster  */
UPDATE `creature_template` SET `DamageModifier` = 4.676 WHERE `entry`=17694;

/*  Will of Sargaras  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=17700;

/*  Hand of Argus Swordsman  */
UPDATE `creature_template` SET `DamageModifier` = 0.7, `ManaModifier` = 1.0 WHERE `entry`=17704;

/*  Sunhawk Rogue  */
UPDATE `creature_template` SET `DamageModifier` = 1.4, `ArmorModifier` = 0.974889 WHERE `entry`=17705;

/*  Dawnstone Crab  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `ArmorModifier` = 1.33333 WHERE `entry`=17707;

/*  Living Ruby Serpent  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70 WHERE `entry`=17708;

/*  Nightseye Panther  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70 WHERE `entry`=17710;

/*  Captain Edward Hanes  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=17712;

/*  Bloodcursed Naga  */
UPDATE `creature_template` SET `DamageModifier` = 1.18 WHERE `entry`=17713;

/*  Bloodcursed Voyager  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 0.7 WHERE `entry`=17714;

/*  Atoph the Bloodcursed  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 1.45 WHERE `entry`=17715;

/*  Sangrias Stillblade  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.85 WHERE `entry`=17716;

/*  Knight-Lord Bloodvalor  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.5 WHERE `entry`=17717;

/*  Magister Astalor Bloodsworn  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.6 WHERE `entry`=17718;

/*  Coilfang Engineer  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 4.66 WHERE `entry`=17721;

/*  Coilfang Sorceress  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 4.66 WHERE `entry`=17722;

/*  Bog Giant  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 7.21 WHERE `entry`=17723;

/*  Underbog Lurker  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 4.0, `ManaModifier` = 1.0 WHERE `entry`=17725;

/*  Wrathfin Myrmidon  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 4.0 WHERE `entry`=17726;

/*  Wrathfin Sentry  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 4.0 WHERE `entry`=17727;

/*  Murkblood Tribesman  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 4.0 WHERE `entry`=17728;

/*  Murkblood Spearman  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 4.0 WHERE `entry`=17729;

/*  Murkblood Healer  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 4.0, `ArmorModifier` = 0.7365 WHERE `entry`=17730;

/*  Fen Ray  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 3.6 WHERE `entry`=17731;

/*  Lykul Wasp  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 3.6 WHERE `entry`=17732;

/*  Underbog Lord  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 8.0 WHERE `entry`=17734;

/*  Wrathfin Warrior  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 4.0 WHERE `entry`=17735;

/*  Underbat Swarmer  */
UPDATE `creature_template` SET `DamageModifier` = 0.6, `ArmorModifier` = 0.968024 WHERE `entry`=17736;

/*  Outland Chimera, White  */
UPDATE `creature_template` SET `DamageModifier` = 1.15 WHERE `entry`=17739;

/*  Blood Knight Stillblade  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=17768;

/*  Blood Knight Adept  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=17769;

/*  Hungarfen  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 10.0 WHERE `entry`=17770;

/*  Murkblood Oracle  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 4.0 WHERE `entry`=17771;

/*  Mekgineer Steamrigger  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 8.0 WHERE `entry`=17796;

/*  Hydromancer Thespia  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 6.5 WHERE `entry`=17797;

/*  Warlord Kalithresh  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 6.5 WHERE `entry`=17798;

/*  Dreghood Slave  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 4.66 WHERE `entry`=17799;

/*  Coilfang Myrmidon  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 4.66 WHERE `entry`=17800;

/*  Coilfang Siren  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 4.66 WHERE `entry`=17801;

/*  Coilfang Warrior  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 4.66 WHERE `entry`=17802;

/*  Coilfang Oracle  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 4.66 WHERE `entry`=17803;

/*  Coilfang Slavemaster  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 4.66 WHERE `entry`=17805;

/*  Master Kelerun Bloodmourn  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 4.0 WHERE `entry`=17807;

/*  Champion Bloodwrath  */
UPDATE `creature_template` SET `DamageModifier` = 0.7, `HealthModifier` = 0.555 WHERE `entry`=17809;

/*  Champion Lightrend  */
UPDATE `creature_template` SET `DamageModifier` = 0.7, `HealthModifier` = 0.555 WHERE `entry`=17810;

/*  Champion Swiftblade  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=17811;

/*  Champion Sunstriker  */
UPDATE `creature_template` SET `DamageModifier` = 0.7, `HealthModifier` = 0.6 WHERE `entry`=17812;

/*  Lordaeron Watchman  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 4.5 WHERE `entry`=17814;

/*  Lordaeron Sentry  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 4.5 WHERE `entry`=17815;

/*  Bogstrok  */
UPDATE `creature_template` SET `speed_walk` = 2.0, `speed_run` = 1.14286, `DamageModifier` = 4.0 WHERE `entry`=17816;

/*  Greater Bogstrok  */
UPDATE `creature_template` SET `speed_walk` = 2.0, `speed_run` = 1.14286, `DamageModifier` = 4.0 WHERE `entry`=17817;

/*  Towering Infernal  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 20.0, `HealthModifier` = 30.0, `ArmorModifier` = 1.29457 WHERE `entry`=17818;

/*  Durnholde Rifleman  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 1.5 WHERE `entry`=17820;

/*  Captured Sunhawk Agent  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=17824;

/*  Interrogator Elysia  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=17825;

/*  Swamplord Musel'ek  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 9.0 WHERE `entry`=17826;

/*  Claw  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 1.0, `ArmorModifier` = 1.567 WHERE `entry`=17827;

/*  Lykul Hatchling  */
UPDATE `creature_template` SET `ArmorModifier` = 0.987986 WHERE `entry`=17829;

/*  Zelemar the Wrathful  */
UPDATE `creature_template` SET `DamageModifier` = 2.9 WHERE `entry`=17830;

/*  Watcher Leesa'oh  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=17831;

/*  Blood Knight Dawnstar  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=17832;

/*  Durnholde Warden  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 1.5 WHERE `entry`=17833;

/*  Lethyn Moonfire  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=17834;

/*  Infinite Assassin  */
UPDATE `creature_template` SET `DamageModifier` = 2.3 WHERE `entry`=17835;

/*  Ogre Brawler  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 2.0 WHERE `entry`=17836;

/*  Troll Berserker  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=17837;

/*  Time Rift  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `ArmorModifier` = 1.33333 WHERE `entry`=17838;

/*  Durnholde Tracking Hound  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 3.0, `ArmorModifier` = 1.5 WHERE `entry`=17840;

/*  Ysiel Windsinger  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=17841;

/*  Vindicator Kuros  */
UPDATE `creature_template` SET `DamageModifier` = 8.0 WHERE `entry`=17843;

/*  Vindicator Aesom  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=17844;

/*  Blood Elf Magister  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=17845;

/*  Lieutenant Drake  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 4.66 WHERE `entry`=17848;

/*  Slain Outrunner  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 6.0 WHERE `entry`=17849;

/*  Tracker of the Hand  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=17853;

/*  Expedition Warden  */
UPDATE `creature_template` SET `DamageModifier` = 1.3, `ArmorModifier` = 1.24224 WHERE `entry`=17855;

/*  Gzhun'tt  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 2.0 WHERE `entry`=17856;

/*  T'shu  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 2.0 WHERE `entry`=17857;

/*  Durnholde Veteran  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 1.5 WHERE `entry`=17860;

/*  Captain Skarloc  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 1.5 WHERE `entry`=17862;

/*  Lesser Doomguard  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 0.857143, `DamageModifier` = 15.0, `HealthModifier` = 35.0, `ArmorModifier` = 1.4219 WHERE `entry`=17864;

/*  Matis  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=17865;

/*  Khn'nix  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 2.0 WHERE `entry`=17866;

/*  Angered Nether-wraith  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=17870;

/*  Underbog Shambler  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 3.6 WHERE `entry`=17871;

/*  Murkblood Foreman  */
UPDATE `creature_template` SET `DamageModifier` = 5.0 WHERE `entry`=17872;

/*  Murkblood Henchman  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=17873;

/*  Image of Velen  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=17874;

/*  Hunter of the Hand  */
UPDATE `creature_template` SET `DamageModifier` = 4.3 WHERE `entry`=17875;

/*  Thrall  */
UPDATE `creature_template` SET `speed_walk` = 1.1, `DamageModifier` = 1.5, `ArmorModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=17876;

/*  Fhwoor  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=17877;

/*  Scourge Siege Engineer  */
UPDATE `creature_template` SET `speed_walk` = 1.1 WHERE `entry`=17878;

/*  Aeonus  */
UPDATE `creature_template` SET `DamageModifier` = 13.0 WHERE `entry`=17881;

/*  The Black Stalker  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 9.6 WHERE `entry`=17882;

/*  Watcher Jhang  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=17884;

/*  Earthbinder Rayge  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=17885;

/*  [DND]Sunhawk Portal Controller  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=17886;

/*  Weeder Greenthumb  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0, `ArmorModifier` = 1.55468 WHERE `entry`=17890;

/*  Infinite Chronomancer  */
UPDATE `creature_template` SET `DamageModifier` = 2.5 WHERE `entry`=17892;

/*  Naturalist Bite  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.0 WHERE `entry`=17893;

/*  Windcaller Claw  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=17894;

/*  Ghoul  */
UPDATE `creature_template` SET `speed_run` = 1.42857, `DamageModifier` = 10.0, `HealthModifier` = 20.0 WHERE `entry`=17895;

/*  Crypt Fiend  */
UPDATE `creature_template` SET `speed_run` = 1.42857, `DamageModifier` = 14.27, `HealthModifier` = 25.0 WHERE `entry`=17897;

/*  Abomination  */
UPDATE `creature_template` SET `speed_run` = 1.42857, `DamageModifier` = 17.0, `HealthModifier` = 25.0 WHERE `entry`=17898;

/*  Shadowy Necromancer  */
UPDATE `creature_template` SET `speed_run` = 1.42857, `DamageModifier` = 17.0 WHERE `entry`=17899;

/*  Ashyen  */
UPDATE `creature_template` SET `DamageModifier` = 2.6 WHERE `entry`=17900;

/*  Keleth  */
UPDATE `creature_template` SET `DamageModifier` = 5.0 WHERE `entry`=17901;

/*  Skeleton Invader  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `speed_run` = 1.71429, `DamageModifier` = 4.4, `HealthModifier` = 5.0, `ArmorModifier` = 0.977915 WHERE `entry`=17902;

/*  Skeleton Mage  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `speed_run` = 1.71429, `DamageModifier` = 4.5, `HealthModifier` = 5.0, `ArmorModifier` = 0.978115 WHERE `entry`=17903;

/*  Fedryen Swiftspear  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=17904;

/*  Banshee  */
UPDATE `creature_template` SET `speed_run` = 1.42857, `DamageModifier` = 9.0, `HealthModifier` = 15.0 WHERE `entry`=17905;

/*  Gargoyle  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `speed_run` = 1.71429, `DamageModifier` = 13.0, `HealthModifier` = 18.0 WHERE `entry`=17906;

/*  Frost Wyrm  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `speed_run` = 2.57143, `DamageModifier` = 20.0, `HealthModifier` = 45.0 WHERE `entry`=17907;

/*  Giant Infernal  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `speed_run` = 1.71429, `DamageModifier` = 8.0, `HealthModifier` = 18.0 WHERE `entry`=17908;

/*  Lauranna Thar'well  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=17909;

/*  Gregor the Justiciar  */
UPDATE `creature_template` SET `DamageModifier` = 4.5 WHERE `entry`=17910;

/*  Cathela the Seeker  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=17911;

/*  Nemas the Arbiter  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=17912;

/*  Aelmar the Vanquisher  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=17913;

/*  Vicar Hieronymus  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=17914;

/*  Fel Stalker  */
UPDATE `creature_template` SET `speed_run` = 1.42857, `DamageModifier` = 10.0, `HealthModifier` = 15.0, `ManaModifier` = 1.0 WHERE `entry`=17916;

/*  Coilfang Water Elemental  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 1.5 WHERE `entry`=17917;

/*  Time Keeper  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=17918;

/*  Alliance Footman  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 0.857143, `DamageModifier` = 2.0 WHERE `entry`=17919;

/*  Alliance Knight  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.71429, `DamageModifier` = 2.0 WHERE `entry`=17920;

/*  Alliance Rifleman  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 0.857143, `DamageModifier` = 2.0 WHERE `entry`=17921;

/*  Alliance Sorceress  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 0.857143, `DamageModifier` = 2.5 WHERE `entry`=17922;

/*  Fahssn  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.4 WHERE `entry`=17923;

/*  Msshi'fn  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 2.0 WHERE `entry`=17924;

/*  Gshaff  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 4.0 WHERE `entry`=17925;

/*  Scout Loryi  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=17926;

/*  Scout Jorli  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=17927;

/*  Alliance Priest  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 0.857143, `DamageModifier` = 2.5 WHERE `entry`=17928;

/*  Alliance Peasant  */
UPDATE `creature_template` SET `speed_walk` = 0.666668, `speed_run` = 0.857143, `DamageModifier` = 2.0 WHERE `entry`=17931;

/*  Horde Grunt  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 0.857143, `DamageModifier` = 2.0 WHERE `entry`=17932;

/*  Tauren Warrior  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 0.857143, `DamageModifier` = 3.0 WHERE `entry`=17933;

/*  Horde Headhunter  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 0.857143, `DamageModifier` = 2.0 WHERE `entry`=17934;

/*  Horde Witch Doctor  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 0.857143, `DamageModifier` = 2.5 WHERE `entry`=17935;

/*  Horde Shaman  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 0.857143, `DamageModifier` = 2.5 WHERE `entry`=17936;

/*  Horde Peon  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 0.857143, `DamageModifier` = 2.0 WHERE `entry`=17937;

/*  Coilfang Observer  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 4.0 WHERE `entry`=17938;

/*  [UNUSED] Coilfang Watcher [PH]  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=17939;

/*  Coilfang Technician  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 4.0 WHERE `entry`=17940;

/*  Quagmirran  */
UPDATE `creature_template` SET `DamageModifier` = 8.0 WHERE `entry`=17942;

/*  Night Elf Archer  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 0.857143, `DamageModifier` = 16.0 WHERE `entry`=17943;

/*  Dryad  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 0.857143, `DamageModifier` = 4.44 WHERE `entry`=17944;

/*  Night Elf Huntress  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.38571, `DamageModifier` = 16.0 WHERE `entry`=17945;

/*  Ancient Wisp  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `DamageModifier` = 1.0 WHERE `entry`=17946;

/*  Red Crystal Bunny  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=17947;

/*  Malfurion Stormrage  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=17949;

/*  Steamrigger Mechanic  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.3 WHERE `entry`=17951;

/*  Darkwater Crocolisk  */
UPDATE `creature_template` SET `DamageModifier` = 1.5 WHERE `entry`=17952;

/*  Buddy  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 2.0 WHERE `entry`=17953;

/*  Naga Distiller  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 1.3 WHERE `entry`=17954;

/*  Hungry Bog Lord  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=17955;

/*  Ikeyen  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=17956;

/*  Coilfang Champion  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.0, `DamageModifier` = 4.0 WHERE `entry`=17957;

/*  Coilfang Defender  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 4.0 WHERE `entry`=17958;

/*  Coilfang Slavehandler  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 4.2 WHERE `entry`=17959;

/*  Coilfang Soothsayer  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 4.0 WHERE `entry`=17960;

/*  Coilfang Enchantress  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 4.0 WHERE `entry`=17961;

/*  Coilfang Collaborator  */
UPDATE `creature_template` SET `minlevel` = 62, `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 4.0 WHERE `entry`=17962;

/*  Kayra Longmane  */
UPDATE `creature_template` SET `speed_run` = 0.928571, `DamageModifier` = 2.5 WHERE `entry`=17969;

/*  High Botanist Freywinn  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 6.0 WHERE `entry`=17975;

/*  Warp Splinter  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 6.0 WHERE `entry`=17977;

/*  Laj  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 7.5 WHERE `entry`=17980;

/*  Voidspawn  */
UPDATE `creature_template` SET `ArmorModifier` = 0.973422 WHERE `entry`=17981;

/*  Demolitionist Legoso  */
UPDATE `creature_template` SET `speed_run` = 0.928571, `DamageModifier` = 4.0, `ArmorModifier` = 1.0, `ManaModifier` = 3.0 WHERE `entry`=17982;

/*  Vindicator Corin  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=17986;

/*  Strength of Earth  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=17987;

/*  Underbog Mushroom  */
UPDATE `creature_template` SET `speed_walk` = 0.0001 WHERE `entry`=17990;

/*  Rokmar the Crackler  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 6.5 WHERE `entry`=17991;

/*  Bloodwarder Protector  */
UPDATE `creature_template` SET `DamageModifier` = 4.66 WHERE `entry`=17993;

/*  Bloodwarder Falconer  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 4.66 WHERE `entry`=17994;

/*  Marshlight Steam Pump Credit Marker  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18002;

/*  Anchorite Ahuurn  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 2.0 WHERE `entry`=18003;

/*  Vindicator Idaar  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=18004;

/*  Haalrun  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18005;

/*  Noraani  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18006;

/*  Ruam  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=18007;

/*  Ikuti  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18008;

/*  Zurai  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18011;

/*  Reavij  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 4.0 WHERE `entry`=18012;

/*  Shadow Hunter Denjai  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=18013;

/*  Witch Doctor Tor'gash  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 4.0 WHERE `entry`=18014;

/*  Gambarinka  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18015;

/*  Magasha  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 4.0 WHERE `entry`=18016;

/*  Seer Janidi  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18017;

/*  Zurjaya  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18018;

/*  Defender Adrielle  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=18020;

/*  Defender Kaegan  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=18021;

/*  Defender Ursi  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=18022;

/*  Defender Kranos  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=18023;

/*  Defender Sorli  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=18024;

/*  Defender Auston  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=18025;

/*  Defender Haqi  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=18026;

/*  Defender Kadithuul  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=18027;

/*  Defender Akee  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=18028;

/*  Defender Kajad  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=18029;

/*  Knight-Defender Zunade  */
UPDATE `creature_template` SET `DamageModifier` = 1.4 WHERE `entry`=18030;

/*  Defender Zaibach  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=18031;

/*  Defender Ashoon  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=18032;

/*  Defender Katroi  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=18034;

/*  Scout Jyoba  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=18035;

/*  Horde Healing Ward  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.0 WHERE `entry`=18036;

/*  Warmaul Warlock  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.969926 WHERE `entry`=18037;

/*  Azuremyst Peacekeeper  */
UPDATE `creature_template` SET `minlevel` = 23, `DamageModifier` = 0.7 WHERE `entry`=18038;

/*  Umbrafen Slavebinder  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18042;

/*  Agitated Orc Spirit  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.974372 WHERE `entry`=18043;

/*  Rajis Fyashe  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18044;

/*  Rajah Haghazed  */
UPDATE `creature_template` SET `speed_walk` = 1.5, `DamageModifier` = 2.0 WHERE `entry`=18046;

/*  Bleeding Hollow Archer (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 14.0 WHERE `entry`=18048;

/*  Bleeding Hollow Darkcaster (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `speed_walk` = 1.0, `DamageModifier` = 13.0 WHERE `entry`=18049;

/*  Bleeding Hollow Scryer (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `speed_walk` = 1.0, `DamageModifier` = 11.0 WHERE `entry`=18050;

/*  Bonechewer Beastmaster (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 13.0 WHERE `entry`=18051;

/*  Bonechewer Hungerer (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `speed_walk` = 1.0, `DamageModifier` = 21.0 WHERE `entry`=18053;

/*  Bonechewer Ravener (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `speed_walk` = 1.0, `DamageModifier` = 16.0 WHERE `entry`=18054;

/*  Bonechewer Ripper (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 21.0 WHERE `entry`=18055;

/*  Hellfire Sentry (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `speed_walk` = 1.0, `DamageModifier` = 14.0 WHERE `entry`=18057;

/*  Hellfire Watcher (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 10.0 WHERE `entry`=18058;

/*  Shattered Hand Warhound (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.38571, `DamageModifier` = 6.0 WHERE `entry`=18059;

/*  Fel Reaver Netherstorm  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=18060;

/*  Felguard Netherstorm  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=18061;

/*  Enraged Crusher  */
UPDATE `creature_template` SET `ArmorModifier` = 0.973171 WHERE `entry`=18062;

/*  Garrosh  */
UPDATE `creature_template` SET `DamageModifier` = 1.5 WHERE `entry`=18063;

/*  Warmaul Shaman  */
UPDATE `creature_template` SET `ArmorModifier` = 0.963898 WHERE `entry`=18064;

/*  Warmaul Brute  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.978445 WHERE `entry`=18065;

/*  Farseer Kurkush  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.4 WHERE `entry`=18066;

/*  Farseer Corhuk  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.4 WHERE `entry`=18067;

/*  Farseer Margadesh  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.4 WHERE `entry`=18068;

/*  Mogor  */
UPDATE `creature_template` SET `DamageModifier` = 11.0 WHERE `entry`=18069;

/*  Windcaller Blackhoof  */
UPDATE `creature_template` SET `DamageModifier` = 5.0 WHERE `entry`=18070;

/*  Elementalist Untrag  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=18071;

/*  Elementalist Sharvak  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=18072;

/*  Elementalist Lo'ap  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 2.0 WHERE `entry`=18073;

/*  Elementalist Morgh  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 2.0 WHERE `entry`=18074;

/*  Umbrafen Oracle  */
UPDATE `creature_template` SET `ArmorModifier` = 0.963812 WHERE `entry`=18077;

/*  Umbrafen Seer  */
UPDATE `creature_template` SET `ArmorModifier` = 0.963812 WHERE `entry`=18079;

/*  Watoosun of the Water  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=18084;

/*  Darkcrest Taskmaster  */
UPDATE `creature_template` SET `ArmorModifier` = 0.968024 WHERE `entry`=18086;

/*  Darkcrest Siren  */
UPDATE `creature_template` SET `ArmorModifier` = 0.968379 WHERE `entry`=18087;

/*  Captain Kroghan  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.6 WHERE `entry`=18090;

/*  Tarren Mill Guardsman  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 1.2 WHERE `entry`=18092;

/*  Tarren Mill Protector  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 1.5 WHERE `entry`=18093;

/*  Tarren Mill Lookout  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 1.5 WHERE `entry`=18094;

/*  Doomfire  */
UPDATE `creature_template` SET `speed_walk` = 2.8, `speed_run` = 1.0 WHERE `entry`=18095;

/*  Epoch Hunter  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 6.7 WHERE `entry`=18096;

/*  Nahuud  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=18097;

/*  Arcane Guardian  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18103;

/*  Ghaz'an  */
UPDATE `creature_template` SET `DamageModifier` = 6.0, `ManaModifier` = 1.0 WHERE `entry`=18105;

/*  Jorin Deadeye  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.7 WHERE `entry`=18106;

/*  Overseer Tidewrath  */
UPDATE `creature_template` SET `DamageModifier` = 4.4 WHERE `entry`=18107;

/*  Living Fire  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18109;

/*  Feralfen Hunter  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18113;

/*  Feralfen Mystic  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.966526 WHERE `entry`=18114;

/*  Daggerfen Assassin  */
UPDATE `creature_template` SET `ArmorModifier` = 0.968024 WHERE `entry`=18116;

/*  Ango'rosh Brute  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.2 WHERE `entry`=18119;

/*  Ango'rosh Mauler  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18120;

/*  Dreghood Drudge  */
UPDATE `creature_template` SET `DamageModifier` = 0.65, `ManaModifier` = 1.0 WHERE `entry`=18122;

/*  Wrekt Slave  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=18123;

/*  Starving Fungal Giant  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18125;

/*  Expedition Scout  */
UPDATE `creature_template` SET `DamageModifier` = 4.0, `ArmorModifier` = 1.30234 WHERE `entry`=18126;

/*  Bog Lord  */
UPDATE `creature_template` SET `minlevel` = 64 WHERE `entry`=18127;

/*  Sporebat  */
UPDATE `creature_template` SET `speed_run` = 0.952381, `ArmorModifier` = 0.965839 WHERE `entry`=18128;

/*  Greater Sporebat  */
UPDATE `creature_template` SET `speed_run` = 0.952381, `ArmorModifier` = 0.968024 WHERE `entry`=18129;

/*  Umbraglow Stinger  */
UPDATE `creature_template` SET `ArmorModifier` = 0.96969 WHERE `entry`=18132;

/*  Fen Strider  */
UPDATE `creature_template` SET `ArmorModifier` = 0.965839 WHERE `entry`=18134;

/*  Marsh Walker  */
UPDATE `creature_template` SET `ArmorModifier` = 0.969946 WHERE `entry`=18135;

/*  Marsh Lurker  */
UPDATE `creature_template` SET `speed_walk` = 0.666668 WHERE `entry`=18136;

/*  Marsh Dredger  */
UPDATE `creature_template` SET `speed_walk` = 0.666668, `speed_run` = 1.14286 WHERE `entry`=18137;

/*  Umbrafen Eel  */
UPDATE `creature_template` SET `ArmorModifier` = 0.963334 WHERE `entry`=18138;

/*  Sporeggar Preserver  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 2.0 WHERE `entry`=18139;

/*  Sporeggar Harvester  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `ArmorModifier` = 0.969946 WHERE `entry`=18140;

/*  Watoosun's Polluted Essence  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=18145;

/*  Silvermoon Ranger  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.2 WHERE `entry`=18147;

/*  Outland Shivan  */
UPDATE `creature_template` SET `ArmorModifier` = 0.973171 WHERE `entry`=18149;

/*  Ssslith  */
UPDATE `creature_template` SET `DamageModifier` = 6.49 WHERE `entry`=18154;

/*  Bloodfalcon  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 4.25 WHERE `entry`=18155;

/*  Overlord Gorefist  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.2 WHERE `entry`=18160;

/*  Underground Well Credit Marker  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 1.33333 WHERE `entry`=18161;

/*  Archmage Cedric  */
UPDATE `creature_template` SET `minlevel` = 58, `DamageModifier` = 4.0 WHERE `entry`=18165;

/*  Khadgar  */
UPDATE `creature_template` SET `DamageModifier` = 1.5 WHERE `entry`=18166;

/*  Infinite Slayer  */
UPDATE `creature_template` SET `minlevel` = 67, `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 4.0 WHERE `entry`=18170;

/*  Infinite Defiler  */
UPDATE `creature_template` SET `minlevel` = 67, `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 4.0 WHERE `entry`=18171;

/*  Infinite Saboteur  */
UPDATE `creature_template` SET `minlevel` = 67, `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 13.02 WHERE `entry`=18172;

/*  Initiate Colin  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.7 WHERE `entry`=18174;

/*  Initiate Emeline  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.7 WHERE `entry`=18175;

/*  Hemet Nesingwary  */
UPDATE `creature_template` SET `DamageModifier` = 1.7 WHERE `entry`=18180;

/*  Minion of Gurok  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.4, `ArmorModifier` = 0.97165 WHERE `entry`=18181;

/*  Gurok the Usurper  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 4.4, `ManaModifier` = 1.0 WHERE `entry`=18182;

/*  Arechron  */
UPDATE `creature_template` SET `DamageModifier` = 1.7 WHERE `entry`=18183;

/*  Feralfen Serpent Spirit  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.5, `ArmorModifier` = 0.969946 WHERE `entry`=18185;

/*  Cheneta  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=18187;

/*  Tatai  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=18188;

/*  Dela Runetotem  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=18189;

/*  Kristine Denny  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=18190;

/*  Ambassador Kelemar  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=18191;

/*  Horde Halaani Guard  */
UPDATE `creature_template` SET `speed_run` = 1.14286, `DamageModifier` = 0.3 WHERE `entry`=18192;

/*  Expedition Preserver  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=18194;

/*  Elder Kuruti  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 3.3 WHERE `entry`=18197;

/*  Shado 'Fitz' Farstrider  */
UPDATE `creature_template` SET `DamageModifier` = 1.7 WHERE `entry`=18200;

/*  Tamed Sporebat  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 4.0 WHERE `entry`=18201;

/*  Murkblood Raider  */
UPDATE `creature_template` SET `DamageModifier` = 0.9 WHERE `entry`=18203;

/*  Murkblood Scavenger  */
UPDATE `creature_template` SET `DamageModifier` = 0.55 WHERE `entry`=18207;

/*  Kurenai Captive  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=18209;

/*  Mag'har Captive  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18210;

/*  Murkblood Brute  */
UPDATE `creature_template` SET `DamageModifier` = 0.8 WHERE `entry`=18211;

/*  Mudfin Frenzy  */
UPDATE `creature_template` SET `DamageModifier` = 0.25, `ArmorModifier` = 0.968024, `ManaModifier` = 1.0 WHERE `entry`=18212;

/*  Mire Hydra  */
UPDATE `creature_template` SET `ArmorModifier` = 0.511122 WHERE `entry`=18213;

/*  Fenclaw Thrasher  */
UPDATE `creature_template` SET `ArmorModifier` = 0.963547 WHERE `entry`=18214;

/*  Harold Lane  */
UPDATE `creature_template` SET `DamageModifier` = 1.7 WHERE `entry`=18218;

/*  Holaaru  */
UPDATE `creature_template` SET `speed_walk` = 1.05, `speed_run` = 1.14286, `DamageModifier` = 4.0 WHERE `entry`=18221;

/*  Otonbu the Sage  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18222;

/*  Mo'mor the Breaker  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18223;

/*  Poli'lukluk the Wiser  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18224;

/*  Fire Bomb Target  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18225;

/*  Saurfang the Younger  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `rank` = 1, `DamageModifier` = 0.8 WHERE `entry`=18229;

/*  Trayanise  */
UPDATE `creature_template` SET `speed_run` = 2.14286, `DamageModifier` = 0.6 WHERE `entry`=18230;

/*  Elementalist Ioki  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18233;

/*  Elementalist Yal'hah  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.7 WHERE `entry`=18234;

/*  Tiny Arcane Construct  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=18237;

/*  Crusty  */
UPDATE `creature_template` SET `minlevel` = 30, `speed_walk` = 1.02, `ArmorModifier` = 1.48346 WHERE `entry`=18241;

/*  Lorti  */
UPDATE `creature_template` SET `minlevel` = 62, `speed_walk` = 1.125 WHERE `entry`=18243;

/*  Merajit  */
UPDATE `creature_template` SET `minlevel` = 62 WHERE `entry`=18245;

/*  Nekthar  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=18248;

/*  Joraal  */
UPDATE `creature_template` SET `minlevel` = 62, `speed_walk` = 1.125 WHERE `entry`=18250;

/*  Caregiver Abidaar  */
UPDATE `creature_template` SET `minlevel` = 62, `speed_walk` = 1.125 WHERE `entry`=18251;

/*  Andarl  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18252;

/*  Shadow of Aran  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `speed_run` = 1.71429, `DamageModifier` = 4.0 WHERE `entry`=18254;

/*  Alliance Halaani Guard  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 2.0 WHERE `entry`=18256;

/*  Gutripper  */
UPDATE `creature_template` SET `DamageModifier` = 3.8 WHERE `entry`=18257;

/*  Bach'lor  */
UPDATE `creature_template` SET `DamageModifier` = 3.8 WHERE `entry`=18258;

/*  Banthar  */
UPDATE `creature_template` SET `DamageModifier` = 3.8 WHERE `entry`=18259;

/*  Boulderfist Invader  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18260;

/*  Lantresor of the Blade  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 1.0 WHERE `entry`=18261;

/*  Unkor the Ruthless  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18262;

/*  Nagrand Spawn Timer  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=18264;

/*  Gezhe  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=18265;

/*  Khoraazi  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=18269;

/*  Kilrath  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 0.01 WHERE `entry`=18273;

/*  Zerid  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18276;

/*  Sporewing  */
UPDATE `creature_template` SET `speed_run` = 0.952381 WHERE `entry`=18280;

/*  Boglash  */
UPDATE `creature_template` SET `DamageModifier` = 2.2, `ManaModifier` = 1.0 WHERE `entry`=18281;

/*  Lord Klaq  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18282;

/*  Blacksting  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18283;

/*  Razorgill  */
UPDATE `creature_template` SET `ArmorModifier` = 0.968024 WHERE `entry`=18284;

/*  "Count" Ungula  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=18285;

/*  Mragesh  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18286;

/*  Bull Elekk  */
UPDATE `creature_template` SET `ArmorModifier` = 0.974542 WHERE `entry`=18289;

/*  Tusker  */
UPDATE `creature_template` SET `DamageModifier` = 4.4 WHERE `entry`=18290;

/*  Kristen Dipswitch  */
UPDATE `creature_template` SET `speed_run` = 1.38571, `DamageModifier` = 0.01 WHERE `entry`=18294;

/*  Prospector Conall  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 1.0682 WHERE `entry`=18295;

/*  Sunspring Post Orphan  */
UPDATE `creature_template` SET `minlevel` = 9, `maxlevel` = 9, `speed_run` = 0.992063, `DamageModifier` = 3.0 WHERE `entry`=18296;

/*  Gava'xi  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18298;

/*  Elkay'gan the Mystic  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=18300;

/*  Matron Celestine  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.7 WHERE `entry`=18301;

/*  Matron Drakia  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18302;

/*  Lyria Skystrider  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18303;

/*  Burning Blade Pyre (01)  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.3 WHERE `entry`=18305;

/*  Burning Blade Pyre (02)  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.5 WHERE `entry`=18306;

/*  Burning Blade Pyre (03)  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.5 WHERE `entry`=18307;

/*  Ethereal Scavenger  */
UPDATE `creature_template` SET `DamageModifier` = 5.0 WHERE `entry`=18309;

/*  Ethereal Crypt Raider  */
UPDATE `creature_template` SET `DamageModifier` = 4.5 WHERE `entry`=18311;

/*  Ethereal Spellbinder  */
UPDATE `creature_template` SET `DamageModifier` = 7.73 WHERE `entry`=18312;

/*  Ethereal Sorcerer  */
UPDATE `creature_template` SET `DamageModifier` = 8.27 WHERE `entry`=18313;

/*  Nexus Stalker  */
UPDATE `creature_template` SET `DamageModifier` = 6.0 WHERE `entry`=18314;

/*  Ethereal Theurgist  */
UPDATE `creature_template` SET `DamageModifier` = 8.0 WHERE `entry`=18315;

/*  Ethereal Priest  */
UPDATE `creature_template` SET `DamageModifier` = 8.27 WHERE `entry`=18317;

/*  Sethekk Initiate  */
UPDATE `creature_template` SET `DamageModifier` = 4.66 WHERE `entry`=18318;

/*  Time-Lost Shadowmage  */
UPDATE `creature_template` SET `DamageModifier` = 4.66 WHERE `entry`=18320;

/*  Sethekk Talon Lord  */
UPDATE `creature_template` SET `DamageModifier` = 4.66 WHERE `entry`=18321;

/*  Sethekk Ravenguard  */
UPDATE `creature_template` SET `DamageModifier` = 4.66 WHERE `entry`=18322;

/*  Sethekk Shaman  */
UPDATE `creature_template` SET `DamageModifier` = 4.66 WHERE `entry`=18326;

/*  Time-Lost Controller  */
UPDATE `creature_template` SET `DamageModifier` = 4.66 WHERE `entry`=18327;

/*  [UNUSED] Sethekk Magelord  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=18329;

/*  Ethereal Darkcaster  */
UPDATE `creature_template` SET `DamageModifier` = 8.0 WHERE `entry`=18331;

/*  Talut  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=18332;

/*  Shadrek  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18333;

/*  Wild Elekk  */
UPDATE `creature_template` SET `DamageModifier` = 1.1 WHERE `entry`=18334;

/*  Consortium Recruiter  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18335;

/*  Silvermoon Magister  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 3.0 WHERE `entry`=18336;

/*  Priest Kath'mar  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 5.0 WHERE `entry`=18337;

/*  Highlord Kruul  */
UPDATE `creature_template` SET `DamageModifier` = 14.0, `HealthModifier` = 330.0, `ManaModifier` = 1.0 WHERE `entry`=18338;

/*  Pandemonius  */
UPDATE `creature_template` SET `DamageModifier` = 5.8 WHERE `entry`=18341;

/*  Theatre Spotlight  */
UPDATE `creature_template` SET `DamageModifier` = 2.5 WHERE `entry`=18342;

/*  Tavarok  */
UPDATE `creature_template` SET `DamageModifier` = 5.8 WHERE `entry`=18343;

/*  Nexus-Prince Shaffar  */
UPDATE `creature_template` SET `DamageModifier` = 6.0 WHERE `entry`=18344;

/*  Huntress Bintook  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18353;

/*  Sporeggar Spawn  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=18358;

/*  Corki  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.4 WHERE `entry`=18369;

/*  Wild Shadow Fissure  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `speed_run` = 0.857143, `ArmorModifier` = 1.33333 WHERE `entry`=18370;

/*  Shirrak the Dead Watcher  */
UPDATE `creature_template` SET `DamageModifier` = 6.0 WHERE `entry`=18371;

/*  Rough Stone Statue  */
UPDATE `creature_template` SET `speed_walk` = 0.9, `ArmorModifier` = 1.33333 WHERE `entry`=18372;

/*  Focus Fire  */
UPDATE `creature_template` SET `minlevel` = 65, `maxlevel` = 65, `speed_run` = 0.428571, `ArmorModifier` = 1.33333 WHERE `entry`=18374;

/*  Mycah  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=18382;

/*  Rokag  */
UPDATE `creature_template` SET `DamageModifier` = 1.7 WHERE `entry`=18386;

/*  Bertelm  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18387;

/*  Thander  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18389;

/*  Ros'eleth  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18390;

/*  Giselda the Crone  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18391;

/*  Boulderfist Saboteur  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.1 WHERE `entry`=18396;

/*  Kil'sorrow Invader  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18397;

/*  Brokentoe  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 8.0 WHERE `entry`=18398;

/*  Murkblood Twin  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 6.0 WHERE `entry`=18399;

/*  Rokdar the Sundered Lord  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 7.0 WHERE `entry`=18400;

/*  Skra'gath  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 15.5 WHERE `entry`=18401;

/*  Warmaul Champion  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 8.0 WHERE `entry`=18402;

/*  Sporebat  */
UPDATE `creature_template` SET `DamageModifier` = 3.1, `ArmorModifier` = 0.970268 WHERE `entry`=18403;

/*  Bloodwarder Steward  */
UPDATE `creature_template` SET `DamageModifier` = 4.66 WHERE `entry`=18404;

/*  Tempest-Forge Peacekeeper  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 4.66 WHERE `entry`=18405;

/*  Warden Bullrok  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 2.5 WHERE `entry`=18407;

/*  Warden Moi'bff Jill  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=18408;

/*  Large AOI Underbat  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=18409;

/*  Hyjal Despawn Trigger Unit  */
UPDATE `creature_template` SET `speed_walk` = 1.0 WHERE `entry`=18410;

/*  Durn the Hungerer  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 11.0 WHERE `entry`=18411;

/*  Zorbo the Advisor  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18413;

/*  Elder Yorley  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=18414;

/*  Elder Ungriz  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=18415;

/*  Huntress Kima  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18416;

/*  Altruis the Sufferer  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 1.0 WHERE `entry`=18417;

/*  Nethrandamus  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 1.6 WHERE `entry`=18418;

/*  Bloodwarder Greenkeeper  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 4.66 WHERE `entry`=18419;

/*  Sunseeker Geomancer  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 4.66 WHERE `entry`=18420;

/*  Sunseeker Researcher  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 4.66 WHERE `entry`=18421;

/*  Sunseeker Botanist  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 4.66 WHERE `entry`=18422;

/*  Cho'war the Pillager  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 2.2 WHERE `entry`=18423;

/*  Warden Treelos  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18424;

/*  Mag'har Prisoner  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.85825 WHERE `entry`=18428;

/*  Arcane Fiend  */
UPDATE `creature_template` SET `speed_run` = 0.714286, `DamageModifier` = 2.0 WHERE `entry`=18429;

/*  Ethereal Apprentice  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=18430;

/*  Ethereal Beacon  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=18431;

/*  Nazan (1)  */
UPDATE `creature_template` SET `speed_walk` = 4.0, `speed_run` = 2.57143, `DamageModifier` = 12.0 WHERE `entry`=18432;

/*  Omor the Unscarred (1)  */
UPDATE `creature_template` SET `DamageModifier` = 8.0 WHERE `entry`=18433;

/*  Vazruden (1)  */
UPDATE `creature_template` SET `DamageModifier` = 8.0 WHERE `entry`=18434;

/*  Vazruden the Herald (1)  */
UPDATE `creature_template` SET `speed_run` = 2.57143, `DamageModifier` = 1.0 WHERE `entry`=18435;

/*  Watchkeeper Gargolmar (1)  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `DamageModifier` = 20.0 WHERE `entry`=18436;

/*  Naphthal'ar  */
UPDATE `creature_template` SET `DamageModifier` = 1.15 WHERE `entry`=18438;

/*  Garokk  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18439;

/*  Prospector Balmoral  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18442;

/*  Lookout Nodak  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18443;

/*  Corki  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.01 WHERE `entry`=18445;

/*  Earthbinder Tavgren  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18446;

/*  Tooki  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18447;

/*  Kokorek  */
UPDATE `creature_template` SET `DamageModifier` = 0.02 WHERE `entry`=18448;

/*  Shienor Talonite  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=18449;

/*  Shienor Sorcerer  */
UPDATE `creature_template` SET `DamageModifier` = 0.7, `ArmorModifier` = 1.19104 WHERE `entry`=18450;

/*  Shienor Wing Guard  */
UPDATE `creature_template` SET `DamageModifier` = 1.5 WHERE `entry`=18451;

/*  Skithian Dreadhawk  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=18452;

/*  Skithian Windripper  */
UPDATE `creature_template` SET `DamageModifier` = 0.7, `ArmorModifier` = 1.13726 WHERE `entry`=18453;

/*  Shalassi Talonguard  */
UPDATE `creature_template` SET `minlevel` = 63, `ArmorModifier` = 0.969946 WHERE `entry`=18454;

/*  Shalassi Oracle  */
UPDATE `creature_template` SET `ArmorModifier` = 0.972164 WHERE `entry`=18455;

/*  Tuurem Hunter  */
UPDATE `creature_template` SET `ArmorModifier` = 1.19104 WHERE `entry`=18457;

/*  Jenai Starwhisper  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18459;

/*  Lost Spirit  */
UPDATE `creature_template` SET `speed_run` = 1.14286, `ArmorModifier` = 0.97165 WHERE `entry`=18460;

/*  Shalassi Sentry  */
UPDATE `creature_template` SET `DamageModifier` = 2.1 WHERE `entry`=18462;

/*  Warp Stalker  */
UPDATE `creature_template` SET `ArmorModifier` = 0.984143 WHERE `entry`=18464;

/*  Warp Hunter  */
UPDATE `creature_template` SET `speed_run` = 1.25714, `ArmorModifier` = 0.968437 WHERE `entry`=18465;

/*  Dreadfang Lurker  */
UPDATE `creature_template` SET `ArmorModifier` = 0.969946 WHERE `entry`=18466;

/*  Dreadfang Widow  */
UPDATE `creature_template` SET `ArmorModifier` = 0.97165 WHERE `entry`=18467;

/*  Teromoth  */
UPDATE `creature_template` SET `ArmorModifier` = 0.968024 WHERE `entry`=18468;

/*  Gurgthock  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=18471;

/*  Avatar of the Martyred  */
UPDATE `creature_template` SET `DamageModifier` = 4.994 WHERE `entry`=18478;

/*  Broken Corpse  */
UPDATE `creature_template` SET `DamageModifier` = 2.6 WHERE `entry`=18480;

/*  Empoor  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18482;

/*  Empoor's Bodyguard  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18483;

/*  Night Elf Ancient of War  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `speed_run` = 1.71429, `DamageModifier` = 4.0 WHERE `entry`=18485;

/*  Night Elf Ancient of Lore  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `speed_run` = 1.71429, `DamageModifier` = 4.0 WHERE `entry`=18486;

/*  Night Elf Ancient Protector  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `speed_run` = 1.71429, `DamageModifier` = 2.6 WHERE `entry`=18487;

/*  Telaari Watcher  */
UPDATE `creature_template` SET `DamageModifier` = 1.7 WHERE `entry`=18488;

/*  Garadar Defender  */
UPDATE `creature_template` SET `DamageModifier` = 8.0 WHERE `entry`=18489;

/*  Fallen Druid  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18490;

/*  Tavgren's Kodo  */
UPDATE `creature_template` SET `DamageModifier` = 2.6 WHERE `entry`=18492;

/*  Auchenai Soulpriest  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=18493;

/*  Deirom  */
UPDATE `creature_template` SET `DamageModifier` = 2.2 WHERE `entry`=18494;

/*  Auchenai Vindicator  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=18495;

/*  Dugar  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=18496;

/*  Auchenai Monk  */
UPDATE `creature_template` SET `DamageModifier` = 4.0, `ArmorModifier` = 0.803792 WHERE `entry`=18497;

/*  Night Elf Wisp  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 0.857143, `DamageModifier` = 15.0 WHERE `entry`=18502;

/*  Silvermoon Practice Dummy  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 1.33333 WHERE `entry`=18504;

/*  Silvermoon Farstrider  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.6 WHERE `entry`=18507;

/*  Raging Skeleton  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=18521;

/*  Angered Skeleton  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=18524;

/*  G'eras  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=18525;

/*  K'ode  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=18526;

/*  Xi'ri  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=18528;

/*  Ve'ru  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=18529;

/*  Voren'thal the Seer  */
UPDATE `creature_template` SET `DamageModifier` = 2.4 WHERE `entry`=18530;

/*  Forge Camp: Hate - Event Generator  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=18532;

/*  Luanga the Imprisoner  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 3.3 WHERE `entry`=18533;

/*  Demos, Overseer of Hate  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 6.7 WHERE `entry`=18535;

/*  Xirkos, Overseer of Fear  */
UPDATE `creature_template` SET `speed_walk` = 0.777776, `speed_run` = 0.992063, `DamageModifier` = 6.7 WHERE `entry`=18536;

/*  Adyen the Lightwarden  */
UPDATE `creature_template` SET `DamageModifier` = 1.3, `ArmorModifier` = 1.33882 WHERE `entry`=18537;

/*  Ishanah  */
UPDATE `creature_template` SET `DamageModifier` = 1.4, `ArmorModifier` = 1.85086 WHERE `entry`=18538;

/*  Ashkaz  */
UPDATE `creature_template` SET `minlevel` = 62 WHERE `entry`=18539;

/*  Urdak  */
UPDATE `creature_template` SET `ArmorModifier` = 0.969946 WHERE `entry`=18541;

/*  Nethrandamus Taxi  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=18543;

/*  Veraku  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=18544;

/*  Scryer Arcanist  */
UPDATE `creature_template` SET `minlevel` = 60, `DamageModifier` = 0.6 WHERE `entry`=18547;

/*  Aldor Vindicator  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18549;

/*  Aldor Mason  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=18552;

/*  Sharth Voldoun  */
UPDATE `creature_template` SET `DamageModifier` = 2.3 WHERE `entry`=18554;

/*  Phasing Soldier  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `ManaModifier` = 1.0 WHERE `entry`=18556;

/*  Phasing Cleric  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18557;

/*  Phasing Sorcerer  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18558;

/*  Phasing Stalker  */
UPDATE `creature_template` SET `DamageModifier` = 2.57 WHERE `entry`=18559;

/*  Horde Field Scout  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18564;

/*  Mo'arg Master Planner  */
UPDATE `creature_template` SET `speed_walk` = 0.944444, `speed_run` = 0.952381, `DamageModifier` = 4.2, `ManaModifier` = 1.0 WHERE `entry`=18567;

/*  Scryer Arcane Guardian  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18568;

/*  Alliance Field Scout  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18581;

/*  Sal'salabim  */
UPDATE `creature_template` SET `speed_walk` = 0.944444, `speed_run` = 0.952381, `DamageModifier` = 1.3 WHERE `entry`=18584;

/*  Raliq the Drunk  */
UPDATE `creature_template` SET `DamageModifier` = 2.5 WHERE `entry`=18585;

/*  Coosh'coosh  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `DamageModifier` = 4.0 WHERE `entry`=18586;

/*  Frayer  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.0 WHERE `entry`=18587;

/*  Floon  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 2.602 WHERE `entry`=18588;

/*  Scryer Retainer  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=18593;

/*  Dathris Sunstriker  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=18594;

/*  Warped Peon  */
UPDATE `creature_template` SET `speed_run` = 0.857143, `ArmorModifier` = 1.19104 WHERE `entry`=18595;

/*  Arcanist Adyria  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=18596;

/*  Sha'nir  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=18597;

/*  Orc Prisoner  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.5 WHERE `entry`=18598;

/*  Injured Refugee  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=18600;

/*  Broggok (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 15.0 WHERE `entry`=18601;

/*  Broggok Poison Cloud (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70 WHERE `entry`=18602;

/*  Fel Orc Neophyte (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 8.0 WHERE `entry`=18603;

/*  Felguard Annihilator (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.42857, `DamageModifier` = 10.0 WHERE `entry`=18604;

/*  Felhound Manastalker (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `speed_walk` = 1.0, `DamageModifier` = 8.0 WHERE `entry`=18605;

/*  Hellfire Imp (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 6.0 WHERE `entry`=18606;

/*  Keli'dan the Breaker (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 14.0, `ArmorModifier` = 1.07296 WHERE `entry`=18607;

/*  Laughing Skull Enforcer (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 14.0 WHERE `entry`=18608;

/*  Laughing Skull Legionnaire (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 12.0 WHERE `entry`=18609;

/*  Laughing Skull Warden (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 12.0 WHERE `entry`=18611;

/*  Nascent Fel Orc (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `speed_walk` = 1.0, `DamageModifier` = 8.0 WHERE `entry`=18612;

/*  Orc Captive (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 7.0 WHERE `entry`=18613;

/*  Shadowmoon Adept (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `speed_walk` = 1.0, `DamageModifier` = 14.0 WHERE `entry`=18615;

/*  Shadowmoon Summoner (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `speed_walk` = 1.0, `DamageModifier` = 13.0 WHERE `entry`=18617;

/*  Shadowmoon Technician (1)  */
UPDATE `creature_template` SET `maxlevel` = 71, `speed_walk` = 1.0, `DamageModifier` = 14.0 WHERE `entry`=18618;

/*  Shadowmoon Warlock (1)  */
UPDATE `creature_template` SET `maxlevel` = 71, `speed_walk` = 1.0, `DamageModifier` = 14.0 WHERE `entry`=18619;

/*  Shadowmoon Channeler (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 12.0, `HealthModifier` = 2.2693 WHERE `entry`=18620;

/*  The Maker (1)  */
UPDATE `creature_template` SET `minlevel` = 71, `maxlevel` = 71, `speed_walk` = 0.944444, `speed_run` = 1.42857, `DamageModifier` = 10.0, `ArmorModifier` = 1.05798, `ManaModifier` = 1.0 WHERE `entry`=18621;

/*  Iz'zard  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=18622;

/*  Unkillable Test Dummy 73 Warrior  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=18624;

/*  Dark Portal Dummy  */
UPDATE `creature_template` SET `minlevel` = 70, `speed_walk` = 1.48, `DamageModifier` = 1.0 WHERE `entry`=18625;

/*  Trainee Alcor  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=18626;

/*  Trainee Firea  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=18627;

/*  Trainee Sinthar  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.5 WHERE `entry`=18628;

/*  Instructor Cel  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=18629;

/*  Cabal Cultist  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 4.66, `ManaModifier` = 1.0 WHERE `entry`=18631;

/*  Cabal Executioner  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 4.66, `ManaModifier` = 1.0 WHERE `entry`=18632;

/*  Cabal Acolyte  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 4.66 WHERE `entry`=18633;

/*  Cabal Summoner  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 4.66 WHERE `entry`=18634;

/*  Cabal Deathsworn  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 4.66, `ManaModifier` = 1.0 WHERE `entry`=18635;

/*  Cabal Assassin  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 4.884, `ManaModifier` = 1.0 WHERE `entry`=18636;

/*  Cabal Shadow Priest  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 4.66 WHERE `entry`=18637;

/*  Cabal Zealot  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 4.25 WHERE `entry`=18638;

/*  Cabal Spellbinder  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 4.66 WHERE `entry`=18639;

/*  Cabal Warlock  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 4.66 WHERE `entry`=18640;

/*  Cabal Familiar  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.894 WHERE `entry`=18641;

/*  Fel Guardhound  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=18642;

/*  Barnes (Tuxedo)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=18643;

/*  Tarren Mill Peasant  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 3.2 WHERE `entry`=18644;

/*  Tarren Mill Horsehand  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 3.2 WHERE `entry`=18646;

/*  Deathskitter  */
UPDATE `creature_template` SET `DamageModifier` = 3.3 WHERE `entry`=18647;

/*  Stonegazer  */
UPDATE `creature_template` SET `DamageModifier` = 2.8 WHERE `entry`=18648;

/*  Innkeeper Monica  */
UPDATE `creature_template` SET `minlevel` = 2, `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 1.0, `ArmorModifier` = 1.25 WHERE `entry`=18649;

/*  Young Blanchy  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 5.0, `ArmorModifier` = 1.25 WHERE `entry`=18651;

/*  Zahlia  */
UPDATE `creature_template` SET `DamageModifier` = 1.7 WHERE `entry`=18652;

/*  Crowd Murmur Helper  */
UPDATE `creature_template` SET `DamageModifier` = 0.007 WHERE `entry`=18654;

/*  Tarren Mill Fisherman  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 3.0 WHERE `entry`=18657;

/*  Kil'sorrow Ritualist  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18658;

/*  Voidwraith  */
UPDATE `creature_template` SET `DamageModifier` = 1.4, `ArmorModifier` = 0.975775 WHERE `entry`=18659;

/*  Subjugator Vaz'shir  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18660;

/*  Terrorguard  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `ArmorModifier` = 0.975976 WHERE `entry`=18661;

/*  Orc Ancestor  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.5 WHERE `entry`=18662;

/*  Maiden of Discipline  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=18663;

/*  Aged Dalaran Wizard  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.0 WHERE `entry`=18664;

/*  Dalaran Sorceress  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 3.95, `ArmorModifier` = 0.936816 WHERE `entry`=18666;

/*  Blackheart the Inciter  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 5.3, `ManaModifier` = 1.0 WHERE `entry`=18667;

/*  Ironjaw  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18670;

/*  Thomas Yance  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.0 WHERE `entry`=18672;

/*  Soolaveen  */
UPDATE `creature_template` SET `DamageModifier` = 0.8 WHERE `entry`=18675;

/*  Mekthorg the Wild  */
UPDATE `creature_template` SET `DamageModifier` = 1.5 WHERE `entry`=18677;

/*  Fulgorge  */
UPDATE `creature_template` SET `DamageModifier` = 1.8 WHERE `entry`=18678;

/*  Vorakem Doomspeaker  */
UPDATE `creature_template` SET `DamageModifier` = 1.5 WHERE `entry`=18679;

/*  Marticar  */
UPDATE `creature_template` SET `speed_run` = 1.78, `DamageModifier` = 1.4, `ManaModifier` = 1.0 WHERE `entry`=18680;

/*  Coilfang Emissary  */
UPDATE `creature_template` SET `speed_walk` = 1.83, `speed_run` = 1.14286, `DamageModifier` = 1.5 WHERE `entry`=18681;

/*  Bog Lurker  */
UPDATE `creature_template` SET `speed_walk` = 1.2, `DamageModifier` = 1.5 WHERE `entry`=18682;

/*  Voidhunter Yar  */
UPDATE `creature_template` SET `speed_walk` = 1.83, `speed_run` = 1.14286, `DamageModifier` = 1.5 WHERE `entry`=18683;

/*  Bro'Gaz the Clanless  */
UPDATE `creature_template` SET `speed_walk` = 1.2, `DamageModifier` = 1.5 WHERE `entry`=18684;

/*  Okrek  */
UPDATE `creature_template` SET `DamageModifier` = 1.5 WHERE `entry`=18685;

/*  Doomsayer Jurim  */
UPDATE `creature_template` SET `speed_walk` = 1.83, `DamageModifier` = 1.5 WHERE `entry`=18686;

/*  Mother Kashur  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.3 WHERE `entry`=18687;

/*  Ancient Orc Ancestor  */
UPDATE `creature_template` SET `DamageModifier` = 1.75 WHERE `entry`=18688;

/*  Crippler  */
UPDATE `creature_template` SET `DamageModifier` = 1.8 WHERE `entry`=18689;

/*  Morcrush  */
UPDATE `creature_template` SET `speed_walk` = 1.78, `speed_run` = 1.14286, `DamageModifier` = 1.8, `HealthModifier` = 2.0, `ManaModifier` = 1.0 WHERE `entry`=18690;

/*  Hemathion  */
UPDATE `creature_template` SET `DamageModifier` = 1.8, `ManaModifier` = 1.0 WHERE `entry`=18692;

/*  Speaker Mar'grom  */
UPDATE `creature_template` SET `speed_walk` = 1.83, `speed_run` = 1.14286, `DamageModifier` = 1.8 WHERE `entry`=18693;

/*  Collidus the Warp-Watcher  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `DamageModifier` = 1.8, `ManaModifier` = 1.0 WHERE `entry`=18694;

/*  Ambassador Jerrikar  */
UPDATE `creature_template` SET `DamageModifier` = 1.5 WHERE `entry`=18695;

/*  Kraator  */
UPDATE `creature_template` SET `speed_walk` = 1.78, `DamageModifier` = 1.5, `ManaModifier` = 1.0 WHERE `entry`=18696;

/*  Chief Engineer Lorthander  */
UPDATE `creature_template` SET `speed_walk` = 1.2, `DamageModifier` = 1.5 WHERE `entry`=18697;

/*  Ever-Core the Punisher  */
UPDATE `creature_template` SET `speed_walk` = 1.83, `DamageModifier` = 1.5 WHERE `entry`=18698;

/*  Netherstorm Rare Chimaera UNUSED  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=18699;

/*  Reanimated Bones  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=18700;

/*  Taela Everstride  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18704;

/*  Mawg Grimshot  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18705;

/*  Torgos  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=18707;

/*  Murmur  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 5.0, `ManaModifier` = 1.0 WHERE `entry`=18708;

/*  Lieutenant Gravelhammer  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18713;

/*  Scout Neftis  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=18714;

/*  Private Weeks  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18715;

/*  Shadowy Initiate  */
UPDATE `creature_template` SET `DamageModifier` = 2.4 WHERE `entry`=18716;

/*  Shadowy Laborer  */
UPDATE `creature_template` SET `DamageModifier` = 2.6 WHERE `entry`=18717;

/*  Shadowy Hunter  */
UPDATE `creature_template` SET `speed_run` = 0.857143, `DamageModifier` = 2.0 WHERE `entry`=18718;

/*  Shadowy Advisor  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18719;

/*  Leper Gnome Laborer  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18722;

/*  Erozion  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 1.3 WHERE `entry`=18723;

/*  Brazen  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 1.0 WHERE `entry`=18725;

/*  Flying Raging Soul  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=18726;

/*  Rarthein  */
UPDATE `creature_template` SET `DamageModifier` = 0.9 WHERE `entry`=18727;

/*  Infernal Rain (Hellfire)  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18729;

/*  Sirigna'no  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18730;

/*  Ambassador Hellmaw  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 6.0, `ManaModifier` = 1.0 WHERE `entry`=18731;

/*  Grandmaster Vorpil  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 6.0 WHERE `entry`=18732;

/*  Fel Reaver  */
UPDATE `creature_template` SET `DamageModifier` = 6.7, `ArmorModifier` = 1.42182 WHERE `entry`=18733;

/*  Coarse Stone Statue  */
UPDATE `creature_template` SET `speed_walk` = 0.9, `DamageModifier` = 1.4 WHERE `entry`=18734;

/*  Heavy Stone Statue  */
UPDATE `creature_template` SET `speed_walk` = 0.9, `DamageModifier` = 1.4 WHERE `entry`=18735;

/*  Solid Stone Statue  */
UPDATE `creature_template` SET `DamageModifier` = 1.4 WHERE `entry`=18736;

/*  Dense Stone Statue  */
UPDATE `creature_template` SET `DamageModifier` = 1.4 WHERE `entry`=18737;

/*  Captain Auric Sunchaser  */
UPDATE `creature_template` SET `DamageModifier` = 1.7 WHERE `entry`=18745;

/*  Shimmerscale Eel  */
UPDATE `creature_template` SET `speed_run` = 0.857143, `ArmorModifier` = 0.968024 WHERE `entry`=18750;

/*  Haris Pilton  */
UPDATE `creature_template` SET `ArmorModifier` = 1.2884 WHERE `entry`=18756;

/*  Telhamat Protector  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=18758;

/*  Zangarmarsh PvP Beam (Blue)  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18759;

/*  Isla Starmane  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0, `HealthModifier` = 1.8 WHERE `entry`=18760;

/*  Darise  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18761;

/*  Blood Elf Warlock  */
UPDATE `creature_template` SET `DamageModifier` = 0.8 WHERE `entry`=18763;

/*  Durnholde Armorer  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.5 WHERE `entry`=18764;

/*  Durnholde Cook  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.5 WHERE `entry`=18765;

/*  Pool of Souls  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `speed_walk` = 1.0, `ArmorModifier` = 1.33333 WHERE `entry`=18766;

/*  Soldier of Terror  */
UPDATE `creature_template` SET `ArmorModifier` = 0.95583 WHERE `entry`=18770;

/*  Cosmetic Raging Soul  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=18778;

/*  The Curator Transform Visual  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=18780;

/*  Kuma  */
UPDATE `creature_template` SET `DamageModifier` = 1.8, `ManaModifier` = 1.0 WHERE `entry`=18785;

/*  Munci  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 2.5, `ManaModifier` = 1.0 WHERE `entry`=18788;

/*  Furgu  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 2.0, `ManaModifier` = 1.0 WHERE `entry`=18789;

/*  Gatewatcher Aendor  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=18790;

/*  Du'ga  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 2.5, `ManaModifier` = 1.0 WHERE `entry`=18791;

/*  Fel Overseer  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 10.0, `ManaModifier` = 1.0 WHERE `entry`=18796;

/*  Tortured Skeleton  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0, `ManaModifier` = 1.0 WHERE `entry`=18797;

/*  Worker  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=18800;

/*  Stillpine Ambassador Frasaboo  */
UPDATE `creature_template` SET `speed_walk` = 0.666668, `speed_run` = 0.992063 WHERE `entry`=18803;

/*  Solarium Priest  */
UPDATE `creature_template` SET `DamageModifier` = 0.8, `ArmorModifier` = 1.66309 WHERE `entry`=18806;

/*  Kerna  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=18807;

/*  Gursha  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 3.0 WHERE `entry`=18808;

/*  Furnan Skysoar  */
UPDATE `creature_template` SET `DamageModifier` = 1.8, `ManaModifier` = 1.0 WHERE `entry`=18809;

/*  Exodar Proselyte  */
UPDATE `creature_template` SET `speed_run` = 0.628571 WHERE `entry`=18815;

/*  Chief Researcher Amereldine  */
UPDATE `creature_template` SET `DamageModifier` = 1.3 WHERE `entry`=18816;

/*  Chief Researcher Kartos  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 1.7 WHERE `entry`=18817;

/*  Quartermaster Jaffrey Noreliqe  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=18821;

/*  Quartermaster Davian Vaclav  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 1.0 WHERE `entry`=18822;

/*  Minor Water Spirit  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `ArmorModifier` = 1.33333 WHERE `entry`=18823;

/*  Minor Fire Spirit  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 1.33333 WHERE `entry`=18824;

/*  Minor Air Spirit  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 1.33333 WHERE `entry`=18825;

/*  Minor Earth Spirit  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 1.33333 WHERE `entry`=18826;

/*  Hellfire Warder  */
UPDATE `creature_template` SET `DamageModifier` = 22.0, `HealthModifier` = 32.0 WHERE `entry`=18829;

/*  Cabal Fanatic  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 4.66, `ManaModifier` = 1.0 WHERE `entry`=18830;

/*  Nightlord Malphas  */
UPDATE `creature_template` SET `DamageModifier` = 9.5 WHERE `entry`=18838;

/*  Garadar Credit Marker  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18842;

/*  Bleeding Hollow Clan Ruins Credit Marker  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18843;

/*  Benevolent Mr. Pinchy  */
UPDATE `creature_template` SET `speed_run` = 1.14286 WHERE `entry`=18845;

/*  Furious Mr. Pinchy  */
UPDATE `creature_template` SET `speed_run` = 1.14286, `DamageModifier` = 0.3 WHERE `entry`=18846;

/*  Malicious Instructor  */
UPDATE `creature_template` SET `maxlevel` = 70, `DamageModifier` = 6.0 WHERE `entry`=18848;

/*  Sunfury Guardsman  */
UPDATE `creature_template` SET `ArmorModifier` = 0.975775 WHERE `entry`=18850;

/*  Dragonhawk Protector  */
UPDATE `creature_template` SET `ArmorModifier` = 0.975775 WHERE `entry`=18851;

/*  Sunfury Warp-Engineer  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.975976 WHERE `entry`=18852;

/*  Sunfury Bloodwarder  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.975775 WHERE `entry`=18853;

/*  Unstable Dragonhawk  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976895 WHERE `entry`=18854;

/*  Sunfury Magister  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.975976 WHERE `entry`=18855;

/*  Arcane Annihilator  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 3.3 WHERE `entry`=18856;

/*  Sunfury Warp-Master  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18857;

/*  Wrathbringer  */
UPDATE `creature_template` SET `DamageModifier` = 1.75 WHERE `entry`=18858;

/*  Wrath Priestess  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18859;

/*  Daughter of Destiny  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18860;

/*  Eredar Tactician  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976895 WHERE `entry`=18861;

/*  Manaspawn  */
UPDATE `creature_template` SET `ArmorModifier` = 0.973506 WHERE `entry`=18863;

/*  Mana Wraith  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.85, `ArmorModifier` = 0.956395 WHERE `entry`=18864;

/*  Warp Aberration  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=18865;

/*  Mageslayer  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.8 WHERE `entry`=18866;

/*  Mana Seeker  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.8 WHERE `entry`=18867;

/*  Voidfiend  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976895 WHERE `entry`=18868;

/*  Unstable Voidwraith  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `ArmorModifier` = 0.976895 WHERE `entry`=18869;

/*  Voidshrieker  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `ArmorModifier` = 0.977077 WHERE `entry`=18870;

/*  Voidlord  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976895 WHERE `entry`=18871;

/*  Disembodied Vindicator  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.3 WHERE `entry`=18872;

/*  Disembodied Protector  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.4 WHERE `entry`=18873;

/*  Zaxxis Spell-Thief  */
UPDATE `creature_template` SET `ArmorModifier` = 0.975775 WHERE `entry`=18874;

/*  Zaxxis Raider  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.985465 WHERE `entry`=18875;

/*  Phase Hatchling  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976895 WHERE `entry`=18876;

/*  Nether Drake  */
UPDATE `creature_template` SET `speed_walk` = 0.666668 WHERE `entry`=18877;

/*  Warp Beast  */
UPDATE `creature_template` SET `ArmorModifier` = 0.964955 WHERE `entry`=18878;

/*  Phase Hunter  */
UPDATE `creature_template` SET `ArmorModifier` = 0.975775 WHERE `entry`=18879;

/*  Sundered Rumbler  */
UPDATE `creature_template` SET `DamageModifier` = 1.75 WHERE `entry`=18881;

/*  Sundered Thunderer  */
UPDATE `creature_template` SET `minlevel` = 68, `speed_walk` = 1.125, `DamageModifier` = 0.5 WHERE `entry`=18882;

/*  Mana Snapper  */
UPDATE `creature_template` SET `ArmorModifier` = 0.97739 WHERE `entry`=18883;

/*  Warp Chaser  */
UPDATE `creature_template` SET `ArmorModifier` = 0.965439 WHERE `entry`=18884;

/*  Farahlon Giant  */
UPDATE `creature_template` SET `DamageModifier` = 3.3 WHERE `entry`=18885;

/*  Farahlon Breaker  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `DamageModifier` = 3.3 WHERE `entry`=18886;

/*  Taretha  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 3.5 WHERE `entry`=18887;

/*  Peoreth of the Weakest Sauce  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=18888;

/*  Spy To'gun  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.7 WHERE `entry`=18891;

/*  Spymistress Mehlisah Highcrown  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18893;

/*  Felguard Brute  */
UPDATE `creature_template` SET `DamageModifier` = 4.0, `ArmorModifier` = 0.8 WHERE `entry`=18894;

/*  Ear-Biter  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 1.6 WHERE `entry`=18895;

/*  "King" Dond  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18897;

/*  Explodyne Fizzlespurt  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18898;

/*  Torias  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=18899;

/*  Tobin  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=18900;

/*  Curzon  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=18901;

/*  Emony  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=18902;

/*  Audrid  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=18903;

/*  Vision of the Forgotten  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 2.0 WHERE `entry`=18904;

/*  Innkeeper Bazil Olof'tazun  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18905;

/*  Zabra'jin Guard  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18909;

/*  Swamprat Guard  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 2.0 WHERE `entry`=18910;

/*  Juno Dufrain  */
UPDATE `creature_template` SET `subname` = 'Fishing Supplies' WHERE `entry`=18911;

/*  Sporelok  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `DamageModifier` = 0.2, `ArmorModifier` = 0.965839, `ManaModifier` = 1.0 WHERE `entry`=18912;

/*  Matron Tikkit  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18913;

/*  Caregiver Isel  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18914;

/*  Foreman Dunaer  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=18915;

/*  Valon  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=18916;

/*  Drysc  */
UPDATE `creature_template` SET `DamageModifier` = 0.8 WHERE `entry`=18918;

/*  Sayari  */
UPDATE `creature_template` SET `DamageModifier` = 0.8 WHERE `entry`=18919;

/*  Artificer Drenin  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=18921;

/*  Telredor Guard  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 2.0 WHERE `entry`=18922;

/*  Artificer Andren  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=18924;

/*  Solarium Agent  */
UPDATE `creature_template` SET `maxlevel` = 69, `DamageModifier` = 4.0 WHERE `entry`=18925;

/*  Vlagga Freyfeather  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `ManaModifier` = 1.0 WHERE `entry`=18930;

/*  Amish Wildhammer  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `ManaModifier` = 1.0 WHERE `entry`=18931;

/*  Astromancer Trigger  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=18932;

/*  Isfar  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=18933;

/*  Durnholde Mage  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 1.5 WHERE `entry`=18934;

/*  Amerun Leafshade  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 2.0, `ManaModifier` = 1.0 WHERE `entry`=18937;

/*  Krexcil  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 2.0 WHERE `entry`=18938;

/*  Brubeck Stormfoot  */
UPDATE `creature_template` SET `DamageModifier` = 3.5, `ManaModifier` = 1.0 WHERE `entry`=18939;

/*  Nutral  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=18940;

/*  Innalia  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 3.0 WHERE `entry`=18942;

/*  Orebor Harborage Defender  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18943;

/*  Fel Soldier  */
UPDATE `creature_template` SET `DamageModifier` = 2.4, `ManaModifier` = 1.0 WHERE `entry`=18944;

/*  Pit Commander  */
UPDATE `creature_template` SET `speed_walk` = 0.777776, `DamageModifier` = 17.0 WHERE `entry`=18945;

/*  Infernal Siegebreaker  */
UPDATE `creature_template` SET `DamageModifier` = 6.7 WHERE `entry`=18946;

/*  Solanin  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18947;

/*  Stormwind Soldier  */
UPDATE `creature_template` SET `minlevel` = 67, `DamageModifier` = 2.5, `ManaModifier` = 1.0 WHERE `entry`=18948;

/*  Orgrimmar Grunt  */
UPDATE `creature_template` SET `minlevel` = 67, `DamageModifier` = 2.5, `ManaModifier` = 1.0 WHERE `entry`=18950;

/*  Unoke Tenderhoof  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 2.0 WHERE `entry`=18953;

/*  Sailor Melinan  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18954;

/*  Lakka  */
UPDATE `creature_template` SET `DamageModifier` = 1.3 WHERE `entry`=18956;

/*  Rungor  */
UPDATE `creature_template` SET `minlevel` = 65 WHERE `entry`=18960;

/*  Windroc Huntress  */
UPDATE `creature_template` SET `DamageModifier` = 1.8 WHERE `entry`=18963;

/*  Injured Talbuk  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18964;

/*  Darnassian Archer  */
UPDATE `creature_template` SET `minlevel` = 67, `DamageModifier` = 2.5, `ManaModifier` = 1.0 WHERE `entry`=18965;

/*  Justinius the Harbinger  */
UPDATE `creature_template` SET `DamageModifier` = 2.6 WHERE `entry`=18966;

/*  Melgromm Highmountain  */
UPDATE `creature_template` SET `DamageModifier` = 2.6 WHERE `entry`=18969;

/*  Darkspear Axe Thrower  */
UPDATE `creature_template` SET `minlevel` = 67, `DamageModifier` = 4.4, `ArmorModifier` = 0.975775, `ManaModifier` = 1.0 WHERE `entry`=18970;

/*  Orgrimmar Shaman  */
UPDATE `creature_template` SET `minlevel` = 67, `DamageModifier` = 2.0 WHERE `entry`=18972;

/*  Z'kral  */
UPDATE `creature_template` SET `speed_walk` = 0.944444, `speed_run` = 0.952381, `DamageModifier` = 1.3 WHERE `entry`=18974;

/*  Urga'zz  */
UPDATE `creature_template` SET `speed_walk` = 0.944444, `speed_run` = 0.952381, `DamageModifier` = 1.3 WHERE `entry`=18976;

/*  Felguard Destroyer  */
UPDATE `creature_template` SET `DamageModifier` = 1.7 WHERE `entry`=18977;

/*  Heckling Fel Sprite  */
UPDATE `creature_template` SET `DamageModifier` = 0.45 WHERE `entry`=18978;

/*  Doomwhisperer  */
UPDATE `creature_template` SET `DamageModifier` = 0.82 WHERE `entry`=18981;

/*  Sable Jaguar  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18982;

/*  Blackfang Tarantula  */
UPDATE `creature_template` SET `DamageModifier` = 1.5 WHERE `entry`=18983;

/*  Ironforge Paladin  */
UPDATE `creature_template` SET `minlevel` = 67, `DamageModifier` = 3.0 WHERE `entry`=18986;

/*  Stonebreaker Guard  */
UPDATE `creature_template` SET `DamageModifier` = 1.4, `ArmorModifier` = 0.839027 WHERE `entry`=18989;

/*  Aresella  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18991;

/*  Captain Krosh  */
UPDATE `creature_template` SET `maxlevel` = 63, `speed_walk` = 1.125 WHERE `entry`=18992;

/*  Infinite Executioner  */
UPDATE `creature_template` SET `DamageModifier` = 2.5, `HealthModifier` = 1.25 WHERE `entry`=18994;

/*  Infinite Vanquisher  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.25 WHERE `entry`=18995;

/*  Windroc Hunter  */
UPDATE `creature_template` SET `DamageModifier` = 1.5 WHERE `entry`=18996;

/*  Fallesh Sunfallow  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=18997;

/*  Allerian Defender  */
UPDATE `creature_template` SET `DamageModifier` = 1.75 WHERE `entry`=18999;

/*  High Elf Ranger  */
UPDATE `creature_template` SET `minlevel` = 64, `DamageModifier` = 2.0 WHERE `entry`=19000;

/*  Allerian Horseman  */
UPDATE `creature_template` SET `DamageModifier` = 2.6 WHERE `entry`=19003;

/*  Wrath Master  */
UPDATE `creature_template` SET `DamageModifier` = 11.0, `ManaModifier` = 1.0 WHERE `entry`=19005;

/*  Silvermoon Magister  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19006;

/*  Gnomeregan Conjuror  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19007;

/*  Osrok the Immovable  */
UPDATE `creature_template` SET `minlevel` = 62, `maxlevel` = 62, `speed_walk` = 1.125 WHERE `entry`=19011;

/*  Sparik  */
UPDATE `creature_template` SET `minlevel` = 63, `maxlevel` = 63 WHERE `entry`=19012;

/*  Vanteg  */
UPDATE `creature_template` SET `minlevel` = 63, `maxlevel` = 63, `speed_walk` = 1.125 WHERE `entry`=19013;

/*  Ogir  */
UPDATE `creature_template` SET `minlevel` = 65, `maxlevel` = 65 WHERE `entry`=19014;

/*  Mathar G'ochar  */
UPDATE `creature_template` SET `minlevel` = 63, `maxlevel` = 63, `speed_walk` = 1.125 WHERE `entry`=19015;

/*  Hellfire Familiar  */
UPDATE `creature_template` SET `DamageModifier` = 1.25 WHERE `entry`=19016;

/*  Borto  */
UPDATE `creature_template` SET `minlevel` = 62, `maxlevel` = 62 WHERE `entry`=19017;

/*  Luftasia  */
UPDATE `creature_template` SET `minlevel` = 63, `maxlevel` = 63, `speed_walk` = 1.125 WHERE `entry`=19019;

/*  Matron Qualia  */
UPDATE `creature_template` SET `minlevel` = 64, `maxlevel` = 64, `speed_walk` = 1.125 WHERE `entry`=19020;

/*  Nancila  */
UPDATE `creature_template` SET `maxlevel` = 60 WHERE `entry`=19021;

/*  Stabled Tallstrider  */
UPDATE `creature_template` SET `minlevel` = 60, `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.8 WHERE `entry`=19023;

/*  Stabled Raptor  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=19026;

/*  Stabled Kurenai Panther  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.8 WHERE `entry`=19030;

/*  Stabled Kurenai Boar  */
UPDATE `creature_template` SET `DamageModifier` = 0.01 WHERE `entry`=19031;

/*  Nicole Bartlett  */
UPDATE `creature_template` SET `DamageModifier` = 1.4 WHERE `entry`=19033;

/*  Mendorn  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19034;

/*  Wazat  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=19035;

/*  Jump-a-tron 4000  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.01 WHERE `entry`=19041;

/*  Ahemen  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19043;

/*  Stonebreaker Peon  */
UPDATE `creature_template` SET `ArmorModifier` = 0.991481 WHERE `entry`=19048;

/*  Garul  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19050;

/*  Araac  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=19051;

/*  Windroc Matriarch  */
UPDATE `creature_template` SET `DamageModifier` = 4.2 WHERE `entry`=19055;

/*  Hamanar  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19063;

/*  Crystalhide Colossus  */
UPDATE `creature_template` SET `DamageModifier` = 2.8, `ArmorModifier` = 0.959284 WHERE `entry`=19066;

/*  Fel Cannon: Hate  */
UPDATE `creature_template` SET `speed_walk` = 0.01, `speed_run` = 1.14286 WHERE `entry`=19067;

/*  Garadar Wolf Rider  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 4.0 WHERE `entry`=19068;

/*  Telaari Elekk Rider  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19071;

/*  Nibblet  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=19073;

/*  Skettis Outcast  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=19075;

/*  High Elf Refugee  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=19076;

/*  Dwarf Refugee  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=19077;

/*  Broken Refugee  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=19120;

/*  Ohlorn Farstrider  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.5 WHERE `entry`=19133;

/*  Stonescythe Flayer  */
UPDATE `creature_template` SET `ArmorModifier` = 0.963334 WHERE `entry`=19134;

/*  Stonescythe Ripper  */
UPDATE `creature_template` SET `ArmorModifier` = 0.963334 WHERE `entry`=19135;

/*  Flamewaker Imp  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=19136;

/*  "Shotgun" Jones  */
UPDATE `creature_template` SET `DamageModifier` = 1.7 WHERE `entry`=19137;

/*  Anchorite Attendant  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=19138;

/*  Mag'har Pitfighter  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ManaModifier` = 1.0 WHERE `entry`=19140;

/*  Kurenai Pitfighter  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19141;

/*  Aldor Anchorite  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=19142;

/*  Mag'har Refugee  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=19144;

/*  Allerian Peasant  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=19147;

/*  Orc Refugee  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=19150;

/*  Captured Halaani Blood Knight  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19151;

/*  Aldor Neophyte  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=19153;

/*  Soot  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=19154;

/*  Sporeling Refugee  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `DamageModifier` = 0.7 WHERE `entry`=19155;

/*  Telaari Jailor  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19156;

/*  Captured Halaani Vindicator  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.7 WHERE `entry`=19157;

/*  Garadar Guard Captain  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19158;

/*  Allerian Peasant Cosmetic  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=19159;

/*  Lost One Refugee  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=19162;

/*  Veteran Vindicator  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=19165;

/*  Tempest-Forge Patroller  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 2.0 WHERE `entry`=19166;

/*  Bloodwarder Slayer  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 4.66, `ManaModifier` = 1.0 WHERE `entry`=19167;

/*  Sunseeker Astromage  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 4.66 WHERE `entry`=19168;

/*  Peasant Refugee  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=19170;

/*  Chieftain Mummaki  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.8 WHERE `entry`=19174;

/*  Lemla Hopewing  */
UPDATE `creature_template` SET `DamageModifier` = 0.6, `ManaModifier` = 1.0 WHERE `entry`=19181;

/*  Raging Colossus  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `DamageModifier` = 1.5 WHERE `entry`=19188;

/*  Quillfang Skitterer  */
UPDATE `creature_template` SET `minlevel` = 61, `ArmorModifier` = 0.961284 WHERE `entry`=19189;

/*  Fel Handler  */
UPDATE `creature_template` SET `DamageModifier` = 3.0, `ManaModifier` = 1.0 WHERE `entry`=19190;

/*  Arazzius the Cruel  */
UPDATE `creature_template` SET `speed_walk` = 0.888888, `speed_run` = 0.912699, `DamageModifier` = 6.0 WHERE `entry`=19191;

/*  Mistress of Doom  */
UPDATE `creature_template` SET `ArmorModifier` = 0.968379 WHERE `entry`=19192;

/*  High Exarch Commodus  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=19193;

/*  Ernie Packwell  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19194;

/*  Dread Overseer  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19199;

/*  Shape of the Beast  */
UPDATE `creature_template` SET `DamageModifier` = 1.6, `ManaModifier` = 1.0 WHERE `entry`=19200;

/*  Emissary Mordin  */
UPDATE `creature_template` SET `DamageModifier` = 2.7 WHERE `entry`=19202;

/*  Syth Fire Elemental  */
UPDATE `creature_template` SET `DamageModifier` = 2.32 WHERE `entry`=19203;

/*  Syth Frost Elemental  */
UPDATE `creature_template` SET `DamageModifier` = 2.32 WHERE `entry`=19204;

/*  Syth Arcane Elemental  */
UPDATE `creature_template` SET `DamageModifier` = 2.32 WHERE `entry`=19205;

/*  Syth Shadow Elemental  */
UPDATE `creature_template` SET `DamageModifier` = 2.32 WHERE `entry`=19206;

/*  Infernal Hound  */
UPDATE `creature_template` SET `DamageModifier` = 3.3, `ArmorModifier` = 1.42081 WHERE `entry`=19207;

/*  Summoned Cabal Acolyte  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 4.7 WHERE `entry`=19208;

/*  Summoned Cabal Deathsworn  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 5.0, `ManaModifier` = 1.0 WHERE `entry`=19209;

/*  Fel Cannon: Fear  */
UPDATE `creature_template` SET `speed_run` = 0.992063 WHERE `entry`=19210;

/*  Fel Cannon: Fear Target  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=19211;

/*  Fel Cannon: Hate Target  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=19212;

/*  Hand of the Highlord  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.14286, `rank` = 3, `DamageModifier` = 6.0 WHERE `entry`=19214;

/*  Ravandwyr  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=19217;

/*  Gatewatcher Gyro-Kill  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 8.0 WHERE `entry`=19218;

/*  Mechano-Lord Capacitus  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 8.0 WHERE `entry`=19219;

/*  Pathaleon the Calculator  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 6.0 WHERE `entry`=19220;

/*  Nethermancer Sepethrea  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 6.5 WHERE `entry`=19221;

/*  Void Portal  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 0.03 WHERE `entry`=19224;

/*  Void Traveler  */
UPDATE `creature_template` SET `speed_run` = 0.285714, `DamageModifier` = 2.0 WHERE `entry`=19226;

/*  Perry Gatner  */
UPDATE `creature_template` SET `DamageModifier` = 0.6, `ArmorModifier` = 1.10789 WHERE `entry`=19228;

/*  Commander Duron  */
UPDATE `creature_template` SET `DamageModifier` = 2.4 WHERE `entry`=19229;

/*  Mechanar Crusher  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 5.25 WHERE `entry`=19231;

/*  Flying Voidwalker  */
UPDATE `creature_template` SET `ArmorModifier` = 0.963812 WHERE `entry`=19233;

/*  Edward the Temporary  */
UPDATE `creature_template` SET `DamageModifier` = 6.0, `ManaModifier` = 1.0 WHERE `entry`=19241;

/*  Olodam Farhollow  */
UPDATE `creature_template` SET `DamageModifier` = 2.6 WHERE `entry`=19242;

/*  Enchanter Salias  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=19248;

/*  Enchantress Metura  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=19249;

/*  Lieutenant General Orion  */
UPDATE `creature_template` SET `DamageModifier` = 2.4 WHERE `entry`=19253;

/*  Warlord Dar'toon  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19254;

/*  General Krakork  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=19255;

/*  Sergeant Shatterskull  */
UPDATE `creature_template` SET `DamageModifier` = 4.0, `ArmorModifier` = 1.16209 WHERE `entry`=19256;

/*  Arcanist Torseldori  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19257;

/*  Bloodmage  */
UPDATE `creature_template` SET `DamageModifier` = 1.5 WHERE `entry`=19258;

/*  Destroyed Fel Reaver  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19260;

/*  Force-Commander Gorax  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19264;

/*  Scout Makha  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=19265;

/*  Private Imarion  */
UPDATE `creature_template` SET `DamageModifier` = 2.8 WHERE `entry`=19266;

/*  Laughing Skull Berserker  */
UPDATE `creature_template` SET `ArmorModifier` = 0.970622 WHERE `entry`=19267;

/*  Shattrath Saul  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=19270;

/*  Albert Quarksprocket  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=19271;

/*  Harbinger Argomen  */
UPDATE `creature_template` SET `DamageModifier` = 1.7 WHERE `entry`=19272;

/*  Forward Commander To'arch  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19273;

/*  Ushtug the Temporary  */
UPDATE `creature_template` SET `DamageModifier` = 6.0, `ManaModifier` = 1.0 WHERE `entry`=19274;

/*  Armored Wyvern Destroyer  */
UPDATE `creature_template` SET `DamageModifier` = 2.8 WHERE `entry`=19275;

/*  Legion Antenna: Spite  */
UPDATE `creature_template` SET `speed_walk` = 1.05, `DamageModifier` = 0.02 WHERE `entry`=19276;

/*  Legion Antenna: Rage  */
UPDATE `creature_template` SET `DamageModifier` = 0.02 WHERE `entry`=19277;

/*  Legion Antenna: Hate  */
UPDATE `creature_template` SET `DamageModifier` = 0.02 WHERE `entry`=19278;

/*  Legion Antenna: Fear  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.02 WHERE `entry`=19279;

/*  Red Hawkstrider  */
UPDATE `creature_template` SET `speed_walk` = 31.0, `speed_run` = 1.14286, `DamageModifier` = 1.8 WHERE `entry`=19280;

/*  Swift Pink Hawkstrider  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `ArmorModifier` = 1.5 WHERE `entry`=19281;

/*  Vagrant  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=19283;

/*  Invading Felguard  */
UPDATE `creature_template` SET `speed_walk` = 1.15, `DamageModifier` = 2.0 WHERE `entry`=19284;

/*  Invading Infernal  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=19285;

/*  Invading Fel Stalker  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=19286;

/*  Invading Voidwalker  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=19287;

/*  Dreadknight  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=19288;

/*  Vagabond  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=19289;

/*  Invading Anguisher  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=19290;

/*  Legion Transporter: Alpha  */
UPDATE `creature_template` SET `DamageModifier` = 0.02 WHERE `entry`=19291;

/*  Legion Transporter: Beta  */
UPDATE `creature_template` SET `DamageModifier` = 0.02 WHERE `entry`=19292;

/*  Tola'thion  */
UPDATE `creature_template` SET `DamageModifier` = 2.4 WHERE `entry`=19293;

/*  Earthbinder Galandria Nightbreeze  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=19294;

/*  Warbringer Arix'Amal  */
UPDATE `creature_template` SET `DamageModifier` = 1.1 WHERE `entry`=19298;

/*  Deathwhisperer  */
UPDATE `creature_template` SET `DamageModifier` = 3.3, `ArmorModifier` = 0.977915 WHERE `entry`=19299;

/*  Blackheart the Inciter  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.007 WHERE `entry`=19300;

/*  Blackheart the Inciter  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.007 WHERE `entry`=19301;

/*  Blackheart the Inciter  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.007 WHERE `entry`=19302;

/*  Blackheart the Inciter  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.007 WHERE `entry`=19303;

/*  Blackheart the Inciter  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.007 WHERE `entry`=19304;

/*  Goliathon  */
UPDATE `creature_template` SET `DamageModifier` = 2.2 WHERE `entry`=19305;

/*  Mana Leech  */
UPDATE `creature_template` SET `speed_run` = 0.857143, `DamageModifier` = 2.0 WHERE `entry`=19306;

/*  Nexus Terror  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `DamageModifier` = 5.0 WHERE `entry`=19307;

/*  Marshal Isildor  */
UPDATE `creature_template` SET `DamageModifier` = 1.7 WHERE `entry`=19308;

/*  Sergeant Altumus  */
UPDATE `creature_template` SET `DamageModifier` = 2.5 WHERE `entry`=19309;

/*  Forward Commander Kingston  */
UPDATE `creature_template` SET `DamageModifier` = 2.4 WHERE `entry`=19310;

/*  Portal Hound  */
UPDATE `creature_template` SET `DamageModifier` = 2.6, `ArmorModifier` = 1.42067 WHERE `entry`=19311;

/*  Drillmaster Zurok  */
UPDATE `creature_template` SET `DamageModifier` = 2.8 WHERE `entry`=19312;

/*  Supply Officer Shandria  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19314;

/*  Supply Officer Isabel  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19315;

/*  Field Marshal Rohamus  */
UPDATE `creature_template` SET `DamageModifier` = 1.6 WHERE `entry`=19316;

/*  Drek'Gol  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=19317;

/*  Quartermaster Endarin  */
UPDATE `creature_template` SET `subname` = 'Aldor: Quartermaster' WHERE `entry`=19321;

/*  Armored Gryphon Destroyer  */
UPDATE `creature_template` SET `DamageModifier` = 0.01 WHERE `entry`=19324;

/*  Legion Antenna: Oblivion  */
UPDATE `creature_template` SET `DamageModifier` = 0.02 WHERE `entry`=19326;

/*  Legion Antenna: Gehenna  */
UPDATE `creature_template` SET `DamageModifier` = 0.02 WHERE `entry`=19328;

/*  Legion Antenna: Mageddon  */
UPDATE `creature_template` SET `DamageModifier` = 0.02 WHERE `entry`=19329;

/*  Quartermaster Enuril  */
UPDATE `creature_template` SET `subname` = 'Scryers: Quartermaster' WHERE `entry`=19331;

/*  Stone Guard Ambelan  */
UPDATE `creature_template` SET `DamageModifier` = 2.4 WHERE `entry`=19332;

/*  Void Spawner XL  */
UPDATE `creature_template` SET `DamageModifier` = 0.01 WHERE `entry`=19336;

/*  Aldor Marksman  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=19337;

/*  Trop Rendlimb  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19343;

/*  Legassi  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19344;

/*  Kalara  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19345;

/*  Harbinger Erothem  */
UPDATE `creature_template` SET `DamageModifier` = 1.7 WHERE `entry`=19346;

/*  Targrom  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19348;

/*  Thornfang Ravager  */
UPDATE `creature_template` SET `ArmorModifier` = 0.958857 WHERE `entry`=19349;

/*  Thornfang Venomspitter  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `ArmorModifier` = 0.958857 WHERE `entry`=19350;

/*  Wildhammer Guard  */
UPDATE `creature_template` SET `DamageModifier` = 1.6 WHERE `entry`=19353;

/*  Arzeth the Merciless  */
UPDATE `creature_template` SET `DamageModifier` = 3.3 WHERE `entry`=19354;

/*  Void Wanderer  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976895 WHERE `entry`=19356;

/*  Dimming Voidwraith  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976895 WHERE `entry`=19357;

/*  Legion Transporter: Alpha (Alliance)  */
UPDATE `creature_template` SET `DamageModifier` = 0.02 WHERE `entry`=19358;

/*  Legion Transporter: Beta (Alliance)  */
UPDATE `creature_template` SET `DamageModifier` = 0.02 WHERE `entry`=19359;

/*  Naladu  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 4.0 WHERE `entry`=19361;

/*  Kor'kron Defender  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=19362;

/*  Sergeant Dalton  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=19363;

/*  Kor'kron Rider  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=19364;

/*  "Screaming" Screed Luckheed  */
UPDATE `creature_template` SET `DamageModifier` = 2.4 WHERE `entry`=19367;

/*  Neophyte Nemarn  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=19377;

/*  Anchorite Nindumen  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=19378;

/*  Sky'ree  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19379;

/*  Guard Untula  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 2.0 WHERE `entry`=19380;

/*  Wildhammer Gryphon Rider  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=19382;

/*  Wildhammer Scout  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=19384;

/*  Lord Marshal Raynor  */
UPDATE `creature_template` SET `DamageModifier` = 1.6 WHERE `entry`=19385;

/*  Stormwind Marshal  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=19386;

/*  Lair Brute  */
UPDATE `creature_template` SET `DamageModifier` = 30.047, `HealthModifier` = 40.0 WHERE `entry`=19389;

/*  Mounted Neophyte  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=19390;

/*  Felguard Lieutenant  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19391;

/*  Watch Commander Leonus  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=19392;

/*  Fear Controller  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19393;

/*  Bron Goldhammer  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=19395;

/*  Mo'arg Overseer  */
UPDATE `creature_template` SET `speed_walk` = 0.944444, `speed_run` = 0.952381, `DamageModifier` = 3.0, `ArmorModifier` = 0.979264 WHERE `entry`=19397;

/*  Gan'arg Peon  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=19398;

/*  Fel Cannon  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `DamageModifier` = 3.0, `ArmorModifier` = 0.979123 WHERE `entry`=19399;

/*  Fel Reaver Sentry  */
UPDATE `creature_template` SET `DamageModifier` = 15.0 WHERE `entry`=19400;

/*  Wing Commander Brack  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19401;

/*  Thunder Bluff Huntsman  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=19406;

/*  Azuremyst Vindicator  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=19407;

/*  Wing Commander Dabir'ee  */
UPDATE `creature_template` SET `DamageModifier` = 2.4 WHERE `entry`=19409;

/*  Shattered Hand Neophyte  */
UPDATE `creature_template` SET `ArmorModifier` = 0.968379 WHERE `entry`=19410;

/*  Shattered Hand Warlock  */
UPDATE `creature_template` SET `ArmorModifier` = 1.15731 WHERE `entry`=19411;

/*  Shattered Hand Mage  */
UPDATE `creature_template` SET `ArmorModifier` = 0.966262 WHERE `entry`=19413;

/*  Shattered Hand Guard  */
UPDATE `creature_template` SET `ArmorModifier` = 0.965839 WHERE `entry`=19414;

/*  Shattered Hand Acolyte  */
UPDATE `creature_template` SET `ArmorModifier` = 0.966526 WHERE `entry`=19415;

/*  Ramdor the Mad  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19417;

/*  Crystalhide Shardling  */
UPDATE `creature_template` SET `DamageModifier` = 0.5, `ArmorModifier` = 0.961842 WHERE `entry`=19418;

/*  Raging Shardling  */
UPDATE `creature_template` SET `DamageModifier` = 1.5 WHERE `entry`=19419;

/*  Bleeding Hollow Worg  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=19423;

/*  Orgrimmar Peon  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=19425;

/*  Voidwalker Summoner  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 0.03 WHERE `entry`=19427;

/*  Cobalt Serpent  */
UPDATE `creature_template` SET `DamageModifier` = 6.0 WHERE `entry`=19428;

/*  Dreadcaller  */
UPDATE `creature_template` SET `DamageModifier` = 0.82 WHERE `entry`=19434;

/*  Image of Erozion  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19438;

/*  Eye of Grillok  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `DamageModifier` = 0.1 WHERE `entry`=19440;

/*  Angersmith Okkos  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=19441;

/*  Worg Master Kruush  */
UPDATE `creature_template` SET `DamageModifier` = 0.75 WHERE `entry`=19442;

/*  Tagar Spinebreaker  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=19443;

/*  Peasant Worker  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=19444;

/*  Wounded Soldier  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=19445;

/*  Operations Officer  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=19446;

/*  Thunderlord Grunt  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19449;

/*  Pol Snowhoof  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19450;

/*  Sunfury Captain  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19453;

/*  Fallen Stormwind Infantry  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=19454;

/*  Nurse Judith  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=19455;

/*  Whitebark's Spirit  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.8, `ArmorModifier` = 0.759766 WHERE `entry`=19456;

/*  Grillok "Darkeye"  */
UPDATE `creature_template` SET `DamageModifier` = 1.9 WHERE `entry`=19457;

/*  Ripp  */
UPDATE `creature_template` SET `DamageModifier` = 0.5, `ArmorModifier` = 0.994554 WHERE `entry`=19458;

/*  Feng  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=19459;

/*  Tamed Ravager  */
UPDATE `creature_template` SET `speed_run` = 0.992063 WHERE `entry`=19461;

/*  Bleeding Hollow Soul  */
UPDATE `creature_template` SET `DamageModifier` = 2.7 WHERE `entry`=19464;

/*  Anchorite Karja  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19467;

/*  Spymaster Thalodien  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 1.0 WHERE `entry`=19468;

/*  Magistrix Larynna  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 1.0 WHERE `entry`=19469;

/*  Gholah  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19470;

/*  Old Orok  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19471;

/*  Threlc  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19472;

/*  Raiza  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19473;

/*  Karnaze  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19474;

/*  Harbinger Haronem  */
UPDATE `creature_template` SET `DamageModifier` = 1.7 WHERE `entry`=19475;

/*  Lor  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19476;

/*  Fleeing Dreghood Warrior  */
UPDATE `creature_template` SET `minlevel` = 56, `DamageModifier` = 4.0 WHERE `entry`=19477;

/*  Fera Palerunner  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19478;

/*  Orgatha  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19479;

/*  Darkened Spirit  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 6.34, `ManaModifier` = 1.0 WHERE `entry`=19480;

/*  Archmage Vargoth  */
UPDATE `creature_template` SET `DamageModifier` = 1.7 WHERE `entry`=19481;

/*  Magister Falris  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=19485;

/*  Sunseeker Chemist  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 4.66 WHERE `entry`=19486;

/*  Custodian Dieworth  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=19488;

/*  Lieutenant-Sorcerer Morran  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=19489;

/*  Ekkorash the Inquisitor  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.4 WHERE `entry`=19493;

/*  Ar'kelos  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19494;

/*  Innkeeper Shaunessy  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19495;

/*  Spy Grik'tha  */
UPDATE `creature_template` SET `DamageModifier` = 1.7 WHERE `entry`=19496;

/*  Caoileann  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19497;

/*  Tanaide  */
UPDATE `creature_template` SET `maxlevel` = 63, `speed_walk` = 1.125 WHERE `entry`=19498;

/*  Cahill  */
UPDATE `creature_template` SET `maxlevel` = 62, `speed_walk` = 1.125 WHERE `entry`=19499;

/*  Sylvanaar Sentinel  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=19500;

/*  Lower City Operative  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `DamageModifier` = 0.3 WHERE `entry`=19501;

/*  Lower City Healer  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 0.7 WHERE `entry`=19502;

/*  Cabal Agent  */
UPDATE `creature_template` SET `DamageModifier` = 0.65, `ArmorModifier` = 0.95583 WHERE `entry`=19503;

/*  Scryer Guardian  */
UPDATE `creature_template` SET `DamageModifier` = 1.7 WHERE `entry`=19504;

/*  Sunseeker Channeler  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 9.0 WHERE `entry`=19505;

/*  Sunseeker Gene-Splicer  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 9.0 WHERE `entry`=19507;

/*  Sunseeker Herbalist  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 4.66 WHERE `entry`=19508;

/*  Sunseeker Harvester  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 4.66 WHERE `entry`=19509;

/*  Bloodwarder Centurion  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 4.66 WHERE `entry`=19510;

/*  Nethervine Inciter  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 7.0 WHERE `entry`=19511;

/*  Nethervine Reaper  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 4.66 WHERE `entry`=19512;

/*  Mutate Fear-Shrieker  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 2.0 WHERE `entry`=19513;

/*  Alorra  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19517;

/*  Feranin  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19518;

/*  Starving Bog Lord  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19519;

/*  Lelagar  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19520;

/*  Arrond  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19521;

/*  O'mrogg's Left Head  */
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72, `DamageModifier` = 0.03 WHERE `entry`=19523;

/*  O'mrogg's Right Head  */
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72, `DamageModifier` = 0.03 WHERE `entry`=19524;

/*  Stage Spotlight  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=19525;

/*  Dunaman  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19526;

/*  Vacillating Voidcaller  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `ArmorModifier` = 0.853727 WHERE `entry`=19527;

/*  Nanomah  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19528;

/*  Stormspire Nexus-Guard  */
UPDATE `creature_template` SET `DamageModifier` = 6.0 WHERE `entry`=19529;

/*  Darmend  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19530;

/*  Dearny  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19532;

/*  Netherstorm Agent  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 1.6 WHERE `entry`=19541;

/*  Field Commander Mahfuun  */
UPDATE `creature_template` SET `DamageModifier` = 1.7 WHERE `entry`=19542;

/*  Battle-Mage Dathric  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19543;

/*  Conjurer Luminrath  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19544;

/*  Cohlien Frostweaver  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19545;

/*  Abjurist Belmara  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=19546;

/*  Ember of Al'ar  */
UPDATE `creature_template` SET `speed_run` = 2.14286, `DamageModifier` = 10.0 WHERE `entry`=19551;

/*  Sunfury Worker  */
UPDATE `creature_template` SET `ArmorModifier` = 0.975775 WHERE `entry`=19553;

/*  Dimensius the All-Devouring  */
UPDATE `creature_template` SET `DamageModifier` = 9.0 WHERE `entry`=19554;

/*  TK Atrium Channel Target  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=19555;

/*  Greater Frayer  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=19557;

/*  Amilya Airheart  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=19558;

/*  Enormous Void Storm  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=19565;

/*  Nethergarde Advisor  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=19566;

/*  Watcher Theronus  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=19567;

/*  Unending Voidwraith  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `ArmorModifier` = 0.976895 WHERE `entry`=19568;

/*  Netherologist Coppernickels  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.6 WHERE `entry`=19569;

/*  Rocket-Chief Fuselage  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.8 WHERE `entry`=19570;

/*  Innkeeper Remi Dodoso  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19571;

/*  Gant  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19572;

/*  Kizzie  */
UPDATE `creature_template` SET `minlevel` = 65, `speed_walk` = 1.125 WHERE `entry`=19574;

/*  Qiff  */
UPDATE `creature_template` SET `minlevel` = 67, `speed_walk` = 1.125 WHERE `entry`=19575;

/*  Xyrol  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19576;

/*  Arcane Orb Target  */
UPDATE `creature_template` SET `DamageModifier` = 0.007 WHERE `entry`=19577;

/*  Bot-Specialist Alley  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.5 WHERE `entry`=19578;

/*  Cohlien Frostweaver with Hat  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=19579;

/*  Luminrath with Cape  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=19580;

/*  Maddix  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=19581;

/*  Maxx A. Million Mk. I  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19582;

/*  Grennik  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 2.0 WHERE `entry`=19583;

/*  Maxx A. Million Mk. II  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19588;

/*  Maxx A. Million Mk. V  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19589;

/*  Thrall Event Generator  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.5 WHERE `entry`=19590;

/*  Snowsong  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19591;

/*  Kor'kron Warrior  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `ManaModifier` = 1.0 WHERE `entry`=19592;

/*  Spellbinder Maryana  */
UPDATE `creature_template` SET `DamageModifier` = 1.52 WHERE `entry`=19593;

/*  Drained Phase Hunter  */
UPDATE `creature_template` SET `DamageModifier` = 1.75 WHERE `entry`=19595;

/*  Kor'kron Mount  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19596;

/*  Mutate Fleshlasher  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 4.66, `ArmorModifier` = 0.901796 WHERE `entry`=19598;

/*  Void Servant  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.5 WHERE `entry`=19599;

/*  Tauren Warrior  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=19601;

/*  Tauren Mount  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19602;

/*  Tauren Shaman  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=19603;

/*  Duros  */
UPDATE `creature_template` SET `DamageModifier` = 1.16 WHERE `entry`=19605;

/*  Grek  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19606;

/*  Frayer Wildling  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.0 WHERE `entry`=19608;

/*  Caleth Sunblade  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19611;

/*  Drakan  */
UPDATE `creature_template` SET `DamageModifier` = 1.16 WHERE `entry`=19613;

/*  Terokkar Wolf Spirit  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.4 WHERE `entry`=19616;

/*  Boots  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19617;

/*  Warpmaster Lyssendra Credit  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19618;

/*  Commander Dawnforge Credit  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19619;

/*  Arcanist Ardonis Credit  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19620;

/*  Bill  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.3 WHERE `entry`=19621;

/*  Doc  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=19623;

/*  Wounded Stormwind Infantry  */
UPDATE `creature_template` SET `DamageModifier` = 0.6, `ManaModifier` = 1.0 WHERE `entry`=19624;

/*  Alorya  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19625;

/*  Belanna  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=19626;

/*  Sulamin  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19627;

/*  Denath  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=19629;

/*  Lykul Stinger  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 3.6 WHERE `entry`=19632;

/*  Lead Sapper Blastfizzle  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.8 WHERE `entry`=19634;

/*  Captain Arathyn  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 2.0 WHERE `entry`=19635;

/*  Warp-Raider Nesaad  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.2 WHERE `entry`=19641;

/*  Zaxxis Stalker  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19642;

/*  Sunfury Astromancer  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.1 WHERE `entry`=19643;

/*  Image of Archmage Vargoth  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19644;

/*  Papa Wheeler  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.7 WHERE `entry`=19645;

/*  Thrall Event Dummy  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19646;

/*  Maranem  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=19648;

/*  Seasoned Vindicator  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 1.8 WHERE `entry`=19651;

/*  Disrupt the Communications Quest Credit Marker North  */
UPDATE `creature_template` SET `speed_run` = 0.992063 WHERE `entry`=19652;

/*  Glacius  */
UPDATE `creature_template` SET `DamageModifier` = 0.8, `ManaModifier` = 1.0 WHERE `entry`=19653;

/*  Area 52 Analyzer Bunny  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19654;

/*  Area 52 Ethereal Technology Bunny  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19655;

/*  Brown Elekk  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=19658;

/*  Garrosh's Buff Bots  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.5 WHERE `entry`=19660;

/*  Shadow Lord Xiraxis  */
UPDATE `creature_template` SET `DamageModifier` = 6.0 WHERE `entry`=19666;

/*  Shadowfiend  */
UPDATE `creature_template` SET `minlevel` = 70, `speed_walk` = 1.125 WHERE `entry`=19668;

/*  Mamdy the "Ologist"  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19669;

/*  Artificer Morphalius  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19670;

/*  Cryo-Engineer Sha'heen  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19671;

/*  Consortium Laborer  */
UPDATE `creature_template` SET `DamageModifier` = 3.0, `ArmorModifier` = 0.909838, `ManaModifier` = 1.0 WHERE `entry`=19672;

/*  Consortium Engineer  */
UPDATE `creature_template` SET `DamageModifier` = 3.0, `ArmorModifier` = 0.9433, `ManaModifier` = 1.0 WHERE `entry`=19673;

/*  Nexus-Prince Haramad  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 1.0, `ArmorModifier` = 1.33333 WHERE `entry`=19675;

/*  "Captain" Kaftiz  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19676;

/*  Consortium Spell Marker  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `ManaModifier` = 1.0 WHERE `entry`=19677;

/*  "Slim"  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=19679;

/*  Aldor Spawn Controller  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=19680;

/*  Void Spawner L  */
UPDATE `creature_template` SET `DamageModifier` = 0.01 WHERE `entry`=19681;

/*  Emissary Mordiba  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=19682;

/*  Ogath the Mad  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=19683;

/*  Haggard War Veteran  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=19684;

/*  Nether Anomaly  */
UPDATE `creature_template` SET `DamageModifier` = 1.8 WHERE `entry`=19686;

/*  Shattrath City Peacekeeper  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=19687;

/*  Scryer Vault Guardian  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=19688;

/*  Draenei Pilgrim  */
UPDATE `creature_template` SET `minlevel` = 51, `maxlevel` = 58, `DamageModifier` = 4.5 WHERE `entry`=19689;

/*  N. D. Meancamp  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.6 WHERE `entry`=19690;

/*  Boom Bot  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=19692;

/*  Clarissa  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=19693;

/*  Loolruna  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19694;

/*  Ha'lei  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=19697;

/*  Greatfather Aldrimus  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19698;

/*  Aldor Acolyte  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=19702;

/*  Master Daellis Dawnstrike  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=19705;

/*  Sunfury Archer  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.975775 WHERE `entry`=19707;

/*  Chief Engineer Trep  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.8 WHERE `entry`=19709;

/*  Gatewatcher Iron-Hand  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 8.0 WHERE `entry`=19710;

/*  Mechanar Driller  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 5.25 WHERE `entry`=19712;

/*  Mechanar Wrecker  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 5.25 WHERE `entry`=19713;

/*  Ezekiel  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=19715;

/*  Mechanar Tinkerer  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.5 WHERE `entry`=19716;

/*  Disrupt the Communications Quest Credit Marker South  */
UPDATE `creature_template` SET `speed_run` = 0.992063 WHERE `entry`=19717;

/*  "Dirty" Larry  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 1.4 WHERE `entry`=19720;

/*  "Epic" Malone  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=19725;

/*  "Creepjack"  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=19726;

/*  Mama Wheeler  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.5 WHERE `entry`=19728;

/*  Ironspine Threshalisk  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.1, `ArmorModifier` = 1.20036 WHERE `entry`=19729;

/*  Ironspine Gazer  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.1, `ArmorModifier` = 1.20036 WHERE `entry`=19730;

/*  Nether Beast  */
UPDATE `creature_template` SET `DamageModifier` = 1.75 WHERE `entry`=19731;

/*  Ango'rosh Warlock  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.1 WHERE `entry`=19732;

/*  Daggerfen Servant  */
UPDATE `creature_template` SET `DamageModifier` = 0.4, `ManaModifier` = 1.0 WHERE `entry`=19733;

/*  Tempest-Forge Destroyer  */
UPDATE `creature_template` SET `speed_run` = 1.42857, `DamageModifier` = 8.0 WHERE `entry`=19735;

/*  Althen the Historian  */
UPDATE `creature_template` SET `DamageModifier` = 0.78 WHERE `entry`=19736;

/*  Engineering Crewmember  */
UPDATE `creature_template` SET `maxlevel` = 64, `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=19737;

/*  Doomclaw  */
UPDATE `creature_template` SET `speed_walk` = 0.944444, `speed_run` = 0.952381 WHERE `entry`=19738;

/*  Wrathwalker  */
UPDATE `creature_template` SET `ArmorModifier` = 0.978178 WHERE `entry`=19740;

/*  Hatescreamer  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976895 WHERE `entry`=19741;

/*  Dreadwarden  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=19744;

/*  Baelmon the Hound-Master  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 3.3 WHERE `entry`=19747;

/*  Legionlord  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976895 WHERE `entry`=19748;

/*  Shadowmoon Specter  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976895 WHERE `entry`=19749;

/*  Infernal Wrangler  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976895 WHERE `entry`=19753;

/*  Deathforge Tinkerer  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976895 WHERE `entry`=19754;

/*  Mo'arg Weaponsmith  */
UPDATE `creature_template` SET `speed_walk` = 0.944444, `speed_run` = 0.952381 WHERE `entry`=19755;

/*  Deathforge Smith  */
UPDATE `creature_template` SET `speed_walk` = 0.944444, `speed_run` = 0.952381, `ArmorModifier` = 0.977077 WHERE `entry`=19756;

/*  Infernal Soul  */
UPDATE `creature_template` SET `DamageModifier` = 0.7, `ArmorModifier` = 0.977077 WHERE `entry`=19757;

/*  Infernal Animus  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976895 WHERE `entry`=19758;

/*  Newly Crafted Infernal  */
UPDATE `creature_template` SET `minlevel` = 68, `DamageModifier` = 0.8 WHERE `entry`=19759;

/*  Manni  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=19763;

/*  Moh  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=19764;

/*  Coilskar Myrmidon  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.5 WHERE `entry`=19765;

/*  Jakk  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=19766;

/*  Coilskar Sorceress  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `ArmorModifier` = 0.978261 WHERE `entry`=19767;

/*  Coilskar Siren  */
UPDATE `creature_template` SET `ArmorModifier` = 0.977077 WHERE `entry`=19768;

/*  Coilskar Screamer  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.976895 WHERE `entry`=19769;

/*  Ravening Snap Dragon  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976895 WHERE `entry`=19770;

/*  Greater Snap Dragon  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976895 WHERE `entry`=19771;

/*  Kalinda  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19775;

/*  Sunfury Geologist  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.975775 WHERE `entry`=19779;

/*  Off-Duty Engineer  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=19780;

/*  Astral Flare  */
UPDATE `creature_template` SET `DamageModifier` = 0.03 WHERE `entry`=19781;

/*  Astral Flare  */
UPDATE `creature_template` SET `DamageModifier` = 0.03 WHERE `entry`=19782;

/*  Astral Flare  */
UPDATE `creature_template` SET `DamageModifier` = 0.03 WHERE `entry`=19783;

/*  Coilskar Cobra  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19784;

/*  Venomcowl Cobra  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976895 WHERE `entry`=19785;

/*  Devouring Slugg  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976895 WHERE `entry`=19787;

/*  Coilskar Muckwatcher  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19788;

/*  Coilskar Waterkeeper  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19789;

/*  Mud Lurker  */
UPDATE `creature_template` SET `ArmorModifier` = 0.981824 WHERE `entry`=19790;

/*  Eclipsion Centurion  */
UPDATE `creature_template` SET `ArmorModifier` = 0.977077 WHERE `entry`=19792;

/*  Eclipsion Pyromancer  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976895 WHERE `entry`=19793;

/*  Eclipsion Magister  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976895 WHERE `entry`=19794;

/*  Eclipsion Archmage  */
UPDATE `creature_template` SET `ArmorModifier` = 0.977077 WHERE `entry`=19796;

/*  Illidari Highlord  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=19797;

/*  Illidari Agonizer  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=19801;

/*  Hound of the Betrayer  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976895 WHERE `entry`=19804;

/*  Eclipsion Jailor  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976895 WHERE `entry`=19805;

/*  Bloodskin Mutate  */
UPDATE `creature_template` SET `DamageModifier` = 1.6 WHERE `entry`=19813;

/*  Bloodskin Grunt  */
UPDATE `creature_template` SET `DamageModifier` = 1.6 WHERE `entry`=19814;

/*  Bloodskin Warlock  */
UPDATE `creature_template` SET `DamageModifier` = 1.6 WHERE `entry`=19815;

/*  Bloodskin Berserker  */
UPDATE `creature_template` SET `DamageModifier` = 1.6 WHERE `entry`=19816;

/*  Bloodskin Destroyer  */
UPDATE `creature_template` SET `DamageModifier` = 1.6 WHERE `entry`=19817;

/*  Bloodskin Warlord  */
UPDATE `creature_template` SET `DamageModifier` = 1.6 WHERE `entry`=19818;

/*  Illidari Brute  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976895 WHERE `entry`=19822;

/*  Crazed Colossus  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 5.5, `ArmorModifier` = 0.979682 WHERE `entry`=19823;

/*  Son of Corok  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `DamageModifier` = 3.3, `ArmorModifier` = 0.976895 WHERE `entry`=19824;

/*  Dark Conclave Shadowmancer  */
UPDATE `creature_template` SET `ArmorModifier` = 0.975976 WHERE `entry`=19826;

/*  Commander Dawnforge  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19831;

/*  Doctor Vomisa, Ph.T.  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.7 WHERE `entry`=19832;

/*  Venomous Snake  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 0.3 WHERE `entry`=19833;

/*  Daga Ramba  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19837;

/*  Lariel Sunrunner  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 3.0, `ManaModifier` = 1.0 WHERE `entry`=19839;

/*  Caledis Brightdawn  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 2.0, `ManaModifier` = 1.0 WHERE `entry`=19840;

/*  Nethervine Trickster  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 4.66 WHERE `entry`=19843;

/*  Nitrin the Learned  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19844;

/*  Area 52 Fireworks Controller  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.02 WHERE `entry`=19845;

/*  Levixus  */
UPDATE `creature_template` SET `speed_walk` = 0.888888, `speed_run` = 0.912699, `DamageModifier` = 8.0 WHERE `entry`=19847;

/*  Scrap Reaver X6000  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 3.3 WHERE `entry`=19849;

/*  Councilor Arial D'Anastasis  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19850;

/*  Negatron  */
UPDATE `creature_template` SET `DamageModifier` = 5.5 WHERE `entry`=19851;

/*  Artifact Seeker  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=19852;

/*  Felblade Doomguard  */
UPDATE `creature_template` SET `ArmorModifier` = 0.975775 WHERE `entry`=19853;

/*  Sir Maximus Adams  */
UPDATE `creature_template` SET `speed_run` = 1.14286, `DamageModifier` = 10.0 WHERE `entry`=19855;

/*  Steamwheedle Sam  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19856;

/*  Meminnie  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19857;

/*  "Lefty" Puddemup  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19858;

/*  Urtrak  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.2 WHERE `entry`=19862;

/*  Vengeful Unyielding  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.3 WHERE `entry`=19863;

/*  Vengeful Unyielding Captain  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.5 WHERE `entry`=19864;

/*  Mutate Horror  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 2.0 WHERE `entry`=19865;

/*  World Trigger (Not Immune NPC)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19871;

/*  Lady Catriona Von'Indi  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 9.0, `HealthModifier` = 12.0 WHERE `entry`=19872;

/*  Lord Crispin Ference  */
UPDATE `creature_template` SET `DamageModifier` = 9.0, `HealthModifier` = 12.0, `ManaModifier` = 1.0 WHERE `entry`=19873;

/*  Baron Rafe Dreuger  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `speed_walk` = 1.71, `DamageModifier` = 9.0, `HealthModifier` = 12.0 WHERE `entry`=19874;

/*  Baroness Dorothea Millstipe  */
UPDATE `creature_template` SET `DamageModifier` = 9.0, `HealthModifier` = 12.0 WHERE `entry`=19875;

/*  Lord Robin Daris  */
UPDATE `creature_template` SET `DamageModifier` = 9.0, `HealthModifier` = 12.0, `ManaModifier` = 1.0 WHERE `entry`=19876;

/*  Spirit of Exarch Maladaar  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.14286, `DamageModifier` = 8.3 WHERE `entry`=19878;

/*  Horvon the Armorer  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19879;

/*  Nether-Stalker Khay'ji  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.7 WHERE `entry`=19880;

/*  Severed Spirit  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.3 WHERE `entry`=19881;

/*  Bogstrok (1)  */
UPDATE `creature_template` SET `DamageModifier` = 10.0, `HealthModifier` = 3.645 WHERE `entry`=19884;

/*  Coilfang Champion (1)  */
UPDATE `creature_template` SET `DamageModifier` = 10.0 WHERE `entry`=19885;

/*  Coilfang Defender (1)  */
UPDATE `creature_template` SET `DamageModifier` = 10.0 WHERE `entry`=19886;

/*  Coilfang Enchantress (1)  */
UPDATE `creature_template` SET `DamageModifier` = 10.0 WHERE `entry`=19887;

/*  Coilfang Observer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 10.0 WHERE `entry`=19888;

/*  Coilfang Slavehandler (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 10.5 WHERE `entry`=19889;

/*  Coilfang Technician (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 10.0 WHERE `entry`=19891;

/*  Greater Bogstrok (1)  */
UPDATE `creature_template` SET `DamageModifier` = 20.0 WHERE `entry`=19892;

/*  Mennu the Betrayer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 13.0, `ArmorModifier` = 1.01377 WHERE `entry`=19893;

/*  Quagmirran (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.14286, `DamageModifier` = 16.0 WHERE `entry`=19894;

/*  Rokmar the Crackler (1)  */
UPDATE `creature_template` SET `DamageModifier` = 14.0 WHERE `entry`=19895;

/*  Wastewalker Captive (1)  */
UPDATE `creature_template` SET `DamageModifier` = 0.007 WHERE `entry`=19901;

/*  Wastewalker Slave (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 7.0 WHERE `entry`=19902;

/*  Coilfang Collaborator (1)  */
UPDATE `creature_template` SET `DamageModifier` = 10.0 WHERE `entry`=19903;

/*  Wastewalker Worker (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 9.0 WHERE `entry`=19904;

/*  The Black Bride  */
UPDATE `creature_template` SET `speed_run` = 1.14286, `DamageModifier` = 10.0 WHERE `entry`=19905;

/*  Usha Eyegouge  */
UPDATE `creature_template` SET `speed_walk` = 1.05, `speed_run` = 1.14286, `DamageModifier` = 1.75 WHERE `entry`=19906;

/*  Grumbol Grimhammer  */
UPDATE `creature_template` SET `speed_walk` = 1.05, `speed_run` = 1.14286, `DamageModifier` = 3.0 WHERE `entry`=19907;

/*  Su'ura Swiftarrow  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.38571, `DamageModifier` = 15.0 WHERE `entry`=19908;

/*  Gargok  */
UPDATE `creature_template` SET `speed_walk` = 1.1, `speed_run` = 1.14286, `DamageModifier` = 1.75 WHERE `entry`=19910;

/*  Area 52 Spotlight  */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60, `ArmorModifier` = 1.33333 WHERE `entry`=19913;

/*  Hutihu  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 3.75 WHERE `entry`=19914;

/*  Time Watcher  */
UPDATE `creature_template` SET `speed_walk` = 0.666668, `DamageModifier` = 1.2 WHERE `entry`=19918;

/*  Thorn Lasher  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=19919;

/*  Thorn Flayer  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19920;

/*  Viper  */
UPDATE `creature_template` SET `minlevel` = 70, `speed_walk` = 1.48, `DamageModifier` = 0.2 WHERE `entry`=19921;

/*  Tornado  */
UPDATE `creature_template` SET `DamageModifier` = 0.03 WHERE `entry`=19922;

/*  Bipp Glizzitor  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19923;

/*  Spellreaver Marathelle  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19926;

/*  Time Watcher Transform  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19927;

/*  Laj (Arcane)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19928;

/*  Laj (Fire)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19929;

/*  Laj (Frost)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19930;

/*  Laj (Nature)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19931;

/*  Zaladormu  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19934;

/*  Arazmodu  */
UPDATE `creature_template` SET `DamageModifier` = 2.4 WHERE `entry`=19936;

/*  Apex  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 3.3 WHERE `entry`=19940;

/*  Agent Proudwell  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=19942;

/*  Lashh'an Talonite  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.85, `ArmorModifier` = 0.973171 WHERE `entry`=19943;

/*  Lashh'an Wing Guard  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.973171 WHERE `entry`=19944;

/*  Lashh'an Windwalker  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.973422 WHERE `entry`=19945;

/*  Darkcrest Slaver  */
UPDATE `creature_template` SET `ArmorModifier` = 0.965839 WHERE `entry`=19946;

/*  Darkcrest Sorceress  */
UPDATE `creature_template` SET `ArmorModifier` = 0.966526 WHERE `entry`=19947;

/*  Bloodmaul Skirmisher  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19948;

/*  Custodian of Time  */
UPDATE `creature_template` SET `DamageModifier` = 1.1 WHERE `entry`=19950;

/*  Warden of Time  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=19951;

/*  Bloodmaul Geomancer  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 1.17542 WHERE `entry`=19952;

/*  Frayer Protector  */
UPDATE `creature_template` SET `DamageModifier` = 4.285 WHERE `entry`=19953;

/*  Greater Sapling  */
UPDATE `creature_template` SET `DamageModifier` = 1.4 WHERE `entry`=19954;

/*  Bloodmaul Lookout  */
UPDATE `creature_template` SET `DamageModifier` = 1.4 WHERE `entry`=19956;

/*  Bloodmaul Brewmaster  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19957;

/*  Imprisoned Infinite Dragonspawn  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=19959;

/*  Doomforge Engineer  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=19960;

/*  Doomforge Attendant  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19961;

/*  Doomcryer  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 4.8 WHERE `entry`=19963;

/*  Doomforge Constructor  */
UPDATE `creature_template` SET `DamageModifier` = 1.4, `ArmorModifier` = 0.976895 WHERE `entry`=19965;

/*  Doomforge Laborer  */
UPDATE `creature_template` SET `DamageModifier` = 1.4, `ArmorModifier` = 0.997689 WHERE `entry`=19966;

/*  Terror Sentry  */
UPDATE `creature_template` SET `DamageModifier` = 1.75 WHERE `entry`=19967;

/*  Maiden of Nightmares  */
UPDATE `creature_template` SET `DamageModifier` = 1.4, `ArmorModifier` = 0.978435 WHERE `entry`=19968;

/*  Dreadforge Steam-Smith  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=19970;

/*  Dreadforge Servant  */
UPDATE `creature_template` SET `DamageModifier` = 1.75 WHERE `entry`=19971;

/*  Night Walker  */
UPDATE `creature_template` SET `DamageModifier` = 1.4 WHERE `entry`=19972;

/*  Abyssal Flamebringer  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=19973;

/*  Dreadforge Machinist  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976895 WHERE `entry`=19974;

/*  Terrorslayer  */
UPDATE `creature_template` SET `ArmorModifier` = 0.963334 WHERE `entry`=19976;

/*  Deathforge Over-Smith  */
UPDATE `creature_template` SET `speed_walk` = 0.944444, `speed_run` = 0.952381 WHERE `entry`=19978;

/*  Deathforge Technician  */
UPDATE `creature_template` SET `ArmorModifier` = 0.975775 WHERE `entry`=19979;

/*  Void Terror  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.75 WHERE `entry`=19980;

/*  Eredar Fel-Lord  */
UPDATE `creature_template` SET `ArmorModifier` = 0.963334 WHERE `entry`=19981;

/*  Vekh'nir Keeneye  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.973171 WHERE `entry`=19982;

/*  Vekh'nir Dreadhawk  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.973422 WHERE `entry`=19984;

/*  Ruuan'ok Cloudgazer  */
UPDATE `creature_template` SET `ArmorModifier` = 0.970557 WHERE `entry`=19985;

/*  Ruuan'ok Skyfury  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976578 WHERE `entry`=19986;

/*  Ruuan'ok Ravenguard  */
UPDATE `creature_template` SET `ArmorModifier` = 0.971147 WHERE `entry`=19987;

/*  Grishna Falconwing  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.7 WHERE `entry`=19988;

/*  Grishna Harbinger  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19989;

/*  Grishna Scorncrow  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19990;

/*  Bloodmaul Brute  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19991;

/*  Bloodmaul Mauler  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19993;

/*  Bloodmaul Warlock  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19994;

/*  Bladespire Brute  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19995;

/*  Bladespire Battlemage  */
UPDATE `creature_template` SET `DamageModifier` = 3.3 WHERE `entry`=19996;

/*  Bladespire Enforcer  */
UPDATE `creature_template` SET `DamageModifier` = 3.3 WHERE `entry`=19997;

/*  Bladespire Shaman  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=19998;

/*  Hurlog Horde  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=20002;

/*  Illiyana Moonblaze  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=20010;

/*  Illiyana Moonblaze  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=20011;

/*  Illiyana Moonblaze  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=20012;

/*  Illiyana Moonblaze  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=20013;

/*  Illiyana Moonblaze  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=20014;

/*  Nether Whelp  */
UPDATE `creature_template` SET `DamageModifier` = 0.2 WHERE `entry`=20021;

/*  Darkwater Crocolisk Specimen  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=20026;

/*  Blackfang Tarantula Specimen  */
UPDATE `creature_template` SET `DamageModifier` = 3.0, `ArmorModifier` = 0.975775 WHERE `entry`=20027;

/*  Bloodwarder Legionnaire  */
UPDATE `creature_template` SET `DamageModifier` = 28.0, `HealthModifier` = 25.0 WHERE `entry`=20031;

/*  Bloodwarder Vindicator  */
UPDATE `creature_template` SET `DamageModifier` = 32.0, `HealthModifier` = 40.0 WHERE `entry`=20032;

/*  Astromancer  */
UPDATE `creature_template` SET `DamageModifier` = 14.0, `HealthModifier` = 25.0 WHERE `entry`=20033;

/*  Star Scryer  */
UPDATE `creature_template` SET `DamageModifier` = 16.0, `HealthModifier` = 25.0 WHERE `entry`=20034;

/*  Bloodwarder Marshal  */
UPDATE `creature_template` SET `DamageModifier` = 32.0, `HealthModifier` = 40.0 WHERE `entry`=20035;

/*  Bloodwarder Squire  */
UPDATE `creature_template` SET `DamageModifier` = 24.0, `HealthModifier` = 25.0 WHERE `entry`=20036;

/*  Tempest Falconer  */
UPDATE `creature_template` SET `DamageModifier` = 10.0, `ArmorModifier` = 1.07578 WHERE `entry`=20037;

/*  Phoenix-Hawk Hatchling  */
UPDATE `creature_template` SET `DamageModifier` = 14.0 WHERE `entry`=20038;

/*  Crystalcore Devastator  */
UPDATE `creature_template` SET `DamageModifier` = 32.0, `HealthModifier` = 75.0 WHERE `entry`=20040;

/*  Crystalcore Sentinel  */
UPDATE `creature_template` SET `DamageModifier` = 28.0, `HealthModifier` = 40.0 WHERE `entry`=20041;

/*  Tempest-Smith  */
UPDATE `creature_template` SET `DamageModifier` = 13.0 WHERE `entry`=20042;

/*  Apprentice Star Scryer  */
UPDATE `creature_template` SET `DamageModifier` = 10.0 WHERE `entry`=20043;

/*  Novice Astromancer  */
UPDATE `creature_template` SET `DamageModifier` = 10.0 WHERE `entry`=20044;

/*  Nether Scryer  */
UPDATE `creature_template` SET `DamageModifier` = 20.0, `HealthModifier` = 40.0 WHERE `entry`=20045;

/*  Astromancer Lord  */
UPDATE `creature_template` SET `DamageModifier` = 20.0, `HealthModifier` = 40.0 WHERE `entry`=20046;

/*  Crimson Hand Battle Mage  */
UPDATE `creature_template` SET `DamageModifier` = 16.0 WHERE `entry`=20047;

/*  Crimson Hand Centurion  */
UPDATE `creature_template` SET `DamageModifier` = 15.0, `ArmorModifier` = 1.00042 WHERE `entry`=20048;

/*  Crimson Hand Blood Knight  */
UPDATE `creature_template` SET `DamageModifier` = 16.0, `ArmorModifier` = 1.24116 WHERE `entry`=20049;

/*  Crimson Hand Inquisitor  */
UPDATE `creature_template` SET `DamageModifier` = 15.0, `ArmorModifier` = 1.06046 WHERE `entry`=20050;

/*  UNUSED - Golem Crafter  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=20051;

/*  Crystalcore Mechanic  */
UPDATE `creature_template` SET `DamageModifier` = 20.0, `HealthModifier` = 25.0, `ManaModifier` = 1.0 WHERE `entry`=20052;

/*  Lodaeron Sentry Specimen  */
UPDATE `creature_template` SET `speed_walk` = 1.05, `DamageModifier` = 1.0, `ArmorModifier` = 1.33333 WHERE `entry`=20053;

/*  Lordaeron Watchman Specimen  */
UPDATE `creature_template` SET `speed_walk` = 1.05, `DamageModifier` = 1.0, `ArmorModifier` = 1.33333 WHERE `entry`=20054;

/*  Tarren Mill Peasant Specimen  */
UPDATE `creature_template` SET `speed_walk` = 1.05, `ArmorModifier` = 1.33333 WHERE `entry`=20055;

/*  Bloodmaul Dire Wolf  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20058;

/*  Sunseeker Netherbinder  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 9.0 WHERE `entry`=20059;

/*  Frostbite Invisible Stalker  */
UPDATE `creature_template` SET `minlevel` = 71, `maxlevel` = 71, `ArmorModifier` = 1.33333 WHERE `entry`=20061;

/*  Gahruj  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.6 WHERE `entry`=20066;

/*  Zuben Elgenubi  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=20067;

/*  Zuben Eschamali  */
UPDATE `creature_template` SET `DamageModifier` = 1.8 WHERE `entry`=20068;

/*  Night Elf Wisp Specimen  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ArmorModifier` = 1.33333 WHERE `entry`=20069;

/*  Wind Trader Marid  */
UPDATE `creature_template` SET `speed_walk` = 1.5, `speed_run` = 1.14286, `DamageModifier` = 1.8 WHERE `entry`=20071;

/*  Darkwater Crocolisk  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 2.14 WHERE `entry`=20075;

/*  Naga Distiller (Coilskar Point)  */
UPDATE `creature_template` SET `DamageModifier` = 1.6 WHERE `entry`=20076;

/*  Summoned Bloodwarder Reservist  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=20078;

/*  Darkcrest Sentry  */
UPDATE `creature_template` SET `DamageModifier` = 0.5, `ManaModifier` = 1.0 WHERE `entry`=20079;

/*  Summoned Bloodwarder Mender  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 4.135 WHERE `entry`=20083;

/*  Netherstorm Triangulation Point One Trigger  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 1.33333 WHERE `entry`=20086;

/*  Worker Mo'rrisroe  */
UPDATE `creature_template` SET `speed_run` = 0.857143, `DamageModifier` = 0.7 WHERE `entry`=20087;

/*  Bloodscale Sentry  */
UPDATE `creature_template` SET `DamageModifier` = 0.5, `ArmorModifier` = 0.952675, `ManaModifier` = 1.0 WHERE `entry`=20090;

/*  Dealer Hazzin  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20092;

/*  Grimnok Battleborn  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.2 WHERE `entry`=20095;

/*  Nula the Butcher  */
UPDATE `creature_template` SET `maxlevel` = 65, `speed_walk` = 1.125 WHERE `entry`=20097;

/*  Jessel  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.7 WHERE `entry`=20100;

/*  Nether-Stalker  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=20101;

/*  Tyri  */
UPDATE `creature_template` SET `DamageModifier` = 1.6 WHERE `entry`=20110;

/*  Jorad Mace  */
UPDATE `creature_template` SET `DamageModifier` = 1.6 WHERE `entry`=20111;

/*  Wind Trader Tuluman  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20112;

/*  Netherstorm Triangulation Point Two Trigger  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 1.33333 WHERE `entry`=20114;

/*  Umbrafen Witchdoctor  */
UPDATE `creature_template` SET `ArmorModifier` = 0.963812 WHERE `entry`=20115;

/*  Gurn Grubnosh  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=20116;

/*  Vengeful Unyielding Knight  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.8 WHERE `entry`=20117;

/*  Jihi  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 1.6 WHERE `entry`=20118;

/*  Mahul  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 1.6 WHERE `entry`=20119;

/*  Tolo  */
UPDATE `creature_template` SET `DamageModifier` = 1.6, `ManaModifier` = 1.0 WHERE `entry`=20120;

/*  Bloodscale Sea Witch  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=20122;

/*  Sylvanaar Ancient Protector  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 1.8 WHERE `entry`=20126;

/*  Tame Kaliri  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 1.8 WHERE `entry`=20127;

/*  Custodian of Time  */
UPDATE `creature_template` SET `speed_walk` = 1.05, `DamageModifier` = 0.03 WHERE `entry`=20129;

/*  Socrethar  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 23.0 WHERE `entry`=20132;

/*  Sunfury Arcanist  */
UPDATE `creature_template` SET `ArmorModifier` = 0.975976 WHERE `entry`=20134;

/*  Sunfury Arch Mage  */
UPDATE `creature_template` SET `DamageModifier` = 1.1 WHERE `entry`=20135;

/*  Sunfury Researcher  */
UPDATE `creature_template` SET `ArmorModifier` = 0.975775 WHERE `entry`=20136;

/*  Vengeful Unyielding Footman  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=20137;

/*  Culuthas  */
UPDATE `creature_template` SET `DamageModifier` = 3.3 WHERE `entry`=20138;

/*  Sunfury Conjurer  */
UPDATE `creature_template` SET `ArmorModifier` = 0.977077 WHERE `entry`=20139;

/*  Sunfury Centurion  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976895 WHERE `entry`=20140;

/*  Hound of Culuthas  */
UPDATE `creature_template` SET `ArmorModifier` = 0.977915 WHERE `entry`=20141;

/*  Steward of Time  */
UPDATE `creature_template` SET `speed_walk` = 0.666668, `DamageModifier` = 1.0 WHERE `entry`=20142;

/*  Void Spawner - Quest - Warp Rifts  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=20143;

/*  Unstable Voidwalker  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20145;

/*  Shrouded Figure  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=20154;

/*  Hillsbrad Internment Lodge Quest Trigger  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 1.33333 WHERE `entry`=20155;

/*  Thrall Quest Trigger  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 1.33333 WHERE `entry`=20156;

/*  Fleeing Dreghood Geomancer  */
UPDATE `creature_template` SET `DamageModifier` = 6.0 WHERE `entry`=20157;

/*  Slime-Covered Corpse  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0, `HealthModifier` = 1.3832 WHERE `entry`=20158;

/*  Magister Aledis  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=20159;

/*  Vekh'nir Matriarch  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.1 WHERE `entry`=20161;

/*  Veronia  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 1.0 WHERE `entry`=20162;

/*  Ambassador Solannas  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20163;

/*  Bog Giant (1)  */
UPDATE `creature_template` SET `DamageModifier` = 20.0 WHERE `entry`=20164;

/*  Claw (1)  */
UPDATE `creature_template` SET `DamageModifier` = 2.5, `ArmorModifier` = 1.567 WHERE `entry`=20165;

/*  Ghaz'an (1)  */
UPDATE `creature_template` SET `DamageModifier` = 20.0, `ManaModifier` = 1.0 WHERE `entry`=20168;

/*  Hungarfen (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 20.0 WHERE `entry`=20169;

/*  Fen Ray (1)  */
UPDATE `creature_template` SET `DamageModifier` = 9.0 WHERE `entry`=20173;

/*  Lykul Stinger (1)  */
UPDATE `creature_template` SET `DamageModifier` = 9.0 WHERE `entry`=20174;

/*  Lykul Wasp (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 9.0 WHERE `entry`=20175;

/*  Murkblood Foreman (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=20176;

/*  Murkblood Healer (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 5.0 WHERE `entry`=20177;

/*  Murkblood Henchman (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=20178;

/*  Murkblood Oracle (1)  */
UPDATE `creature_template` SET `maxlevel` = 71, `DamageModifier` = 4.0 WHERE `entry`=20179;

/*  Murkblood Spearman (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 5.0 WHERE `entry`=20180;

/*  Murkblood Tribesman (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 8.0 WHERE `entry`=20181;

/*  Overseer Tidewrath (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=20182;

/*  Swamplord Musel'ek (1)  */
UPDATE `creature_template` SET `DamageModifier` = 20.0, `ArmorModifier` = 1.22455 WHERE `entry`=20183;

/*  The Black Stalker (1)  */
UPDATE `creature_template` SET `DamageModifier` = 10.0 WHERE `entry`=20184;

/*  Underbat (1)  */
UPDATE `creature_template` SET `DamageModifier` = 20.0 WHERE `entry`=20185;

/*  Underbog Lord (1)  */
UPDATE `creature_template` SET `DamageModifier` = 20.0 WHERE `entry`=20187;

/*  Underbog Lurker (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 20.0, `ManaModifier` = 1.0 WHERE `entry`=20188;

/*  Underbog Mushroom (1)  */
UPDATE `creature_template` SET `speed_walk` = 0.0001, `DamageModifier` = 2.5 WHERE `entry`=20189;

/*  Underbog Shambler (1)  */
UPDATE `creature_template` SET `DamageModifier` = 8.0, `ArmorModifier` = 1.25 WHERE `entry`=20190;

/*  Wrathfin Myrmidon (1)  */
UPDATE `creature_template` SET `DamageModifier` = 17.0 WHERE `entry`=20191;

/*  Wrathfin Sentry (1)  */
UPDATE `creature_template` SET `DamageModifier` = 17.0 WHERE `entry`=20192;

/*  Wrathfin Warrior (1)  */
UPDATE `creature_template` SET `DamageModifier` = 17.0 WHERE `entry`=20193;

/*  Dealer Dunar  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20194;

/*  Bogflare Needler  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=20197;

/*  Fenglow Stinger  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.956939 WHERE `entry`=20198;

/*  Ambassador's Honor Guard  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.2 WHERE `entry`=20199;

/*  Cragskaar  */
UPDATE `creature_template` SET `DamageModifier` = 3.3 WHERE `entry`=20202;

/*  Nether Technician  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.6 WHERE `entry`=20203;

/*  Action Jaxon  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.8 WHERE `entry`=20204;

/*  Audi the Needle  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.8 WHERE `entry`=20205;

/*  Sunfury Bowman  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976895 WHERE `entry`=20207;

/*  Mennu's Healing Ward  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `HealthModifier` = 0.0015 WHERE `entry`=20208;

/*  B'naar Control Console  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 1.33333 WHERE `entry`=20209;

/*  Shaleskin Flayer  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `ArmorModifier` = 0.975775 WHERE `entry`=20210;

/*  Ruuan'ok Matriarch  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.1 WHERE `entry`=20211;

/*  Arakkoa Egg  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.4 WHERE `entry`=20214;

/*  Grulloc  */
UPDATE `creature_template` SET `DamageModifier` = 11.0 WHERE `entry`=20216;

/*  Purple Hawkstrider  */
UPDATE `creature_template` SET `speed_walk` = 31.0, `speed_run` = 1.14286, `DamageModifier` = 1.8 WHERE `entry`=20217;

/*  Sunfury Technician  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.3, `ArmorModifier` = 0.975775 WHERE `entry`=20218;

/*  Blue Hawkstrider  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `ArmorModifier` = 1.5 WHERE `entry`=20220;

/*  Sunfury Flamekeeper  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20221;

/*  Black Hawkstrider  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 1.8 WHERE `entry`=20222;

/*  Swift Purple Hawkstrider  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `ArmorModifier` = 1.5 WHERE `entry`=20223;

/*  Swift Green Hawkstrider  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 1.8 WHERE `entry`=20224;

/*  Manaforge Visual Trigger  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20226;

/*  Void Spawner - Quest - Void Ridge - Galaxis  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=20229;

/*  Blade's Edge - Bladespire Trigger 01  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20230;

/*  Supply Officer Pestle  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=20231;

/*  Wing Commander Gryphongar  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=20232;

/*  Runetog Wildhammer  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `ManaModifier` = 1.0 WHERE `entry`=20234;

/*  Gryphoneer Windbellow  */
UPDATE `creature_template` SET `DamageModifier` = 4.0, `ManaModifier` = 1.0 WHERE `entry`=20235;

/*  Gryphoneer Leafbeard  */
UPDATE `creature_template` SET `DamageModifier` = 4.0, `ManaModifier` = 1.0 WHERE `entry`=20236;

/*  Honor Hold Gryphon Rider  */
UPDATE `creature_template` SET `DamageModifier` = 5.0, `ManaModifier` = 1.0 WHERE `entry`=20237;

/*  Honor Hold Scout  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `ManaModifier` = 1.0 WHERE `entry`=20238;

/*  Trader Narasu  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=20240;

/*  Provisioner Nasela  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20241;

/*  Scrapped Fel Reaver  */
UPDATE `creature_template` SET `DamageModifier` = 1.6 WHERE `entry`=20243;

/*  Sunfury Nethermancer  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.978261 WHERE `entry`=20248;

/*  Cymbre Starsong  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20249;

/*  Rashere Pridehoof  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20250;

/*  Ethereal Apprentice (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 3.0 WHERE `entry`=20253;

/*  Ethereal Crypt Raider (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 10.0 WHERE `entry`=20255;

/*  Ethereal Darkcaster (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 7.816 WHERE `entry`=20256;

/*  Ethereal Priest (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 4.0 WHERE `entry`=20257;

/*  Ethereal Scavenger (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 10.0 WHERE `entry`=20258;

/*  Ethereal Sorcerer (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 4.0 WHERE `entry`=20259;

/*  Ethereal Spellbinder (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 4.766 WHERE `entry`=20260;

/*  Ethereal Theurgist (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 3.806 WHERE `entry`=20261;

/*  Mana Leech (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 0.857143, `DamageModifier` = 2.0 WHERE `entry`=20263;

/*  Nexus Stalker (1)  */
UPDATE `creature_template` SET `minlevel` = 71, `speed_walk` = 1.0, `DamageModifier` = 15.0 WHERE `entry`=20264;

/*  Nexus Terror (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 0.992063, `DamageModifier` = 15.0 WHERE `entry`=20265;

/*  Nexus-Prince Shaffar (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 4.7 WHERE `entry`=20266;

/*  Pandemonius (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 20.0 WHERE `entry`=20267;

/*  Tavarok (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 24.0 WHERE `entry`=20268;

/*  Montok Redhands  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=20269;

/*  Feralfen Druid  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20270;

/*  Haelga Slatefist  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=20271;

/*  Lylandor  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=20272;

/*  Adam Eternum  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=20273;

/*  Keldor the Lost  */
UPDATE `creature_template` SET `DamageModifier` = 1.6, `ManaModifier` = 1.0 WHERE `entry`=20274;

/*  Wolf-Sister Maka  */
UPDATE `creature_template` SET `DamageModifier` = 1.6 WHERE `entry`=20276;

/*  Ragestone Threshalisk  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.1 WHERE `entry`=20279;

/*  Ragestone Trampler  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.1 WHERE `entry`=20280;

/*  Drijya  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.5 WHERE `entry`=20281;

/*  Marshrock Stomper  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=20283;

/*  Dr. Boom  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 1.00081 WHERE `entry`=20284;

/*  Gan'arg Warp-Tinker  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20285;

/*  Zaxxis Ambusher  */
UPDATE `creature_template` SET `DamageModifier` = 1.4 WHERE `entry`=20287;

/*  Lagoon Eel  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=20290;

/*  Lagoon Walker  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.965839 WHERE `entry`=20291;

/*  Marsh Baron Brok  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20292;

/*  Bogstrok Clacker  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.7 WHERE `entry`=20293;

/*  Bogstrok Razorclaw  */
UPDATE `creature_template` SET `speed_run` = 0.992063 WHERE `entry`=20294;

/*  Bogstrok Crusher  */
UPDATE `creature_template` SET `speed_run` = 0.992063 WHERE `entry`=20295;

/*  Teleporter Explosion Trigger  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20296;

/*  Angered Skeleton (1)  */
UPDATE `creature_template` SET `minlevel` = 71, `maxlevel` = 71, `speed_walk` = 1.0, `speed_run` = 1.42857, `DamageModifier` = 10.0 WHERE `entry`=20298;

/*  Auchenai Monk (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 10.0 WHERE `entry`=20299;

/*  Auchenai Necromancer (1)  */
UPDATE `creature_template` SET `minlevel` = 71, `speed_walk` = 1.0, `DamageModifier` = 10.5 WHERE `entry`=20300;

/*  Auchenai Soulpriest (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 10.0 WHERE `entry`=20301;

/*  Auchenai Vindicator (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 10.0 WHERE `entry`=20302;

/*  Avatar of the Martyred (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `speed_run` = 1.71429, `DamageModifier` = 12.5 WHERE `entry`=20303;

/*  Cosmetic Raging Soul (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0 WHERE `entry`=20304;

/*  Stolen Soul (1)  */
UPDATE `creature_template` SET `minlevel` = 71, `speed_walk` = 1.0, `DamageModifier` = 4.0, `HealthModifier` = 1.051, `ManaModifier` = 1.0 WHERE `entry`=20305;

/*  Exarch Maladaar (1)  */
UPDATE `creature_template` SET `DamageModifier` = 12.0 WHERE `entry`=20306;

/*  Flying Raging Soul (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0 WHERE `entry`=20307;

/*  Focus Fire (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `speed_walk` = 1.2, `speed_run` = 0.428571 WHERE `entry`=20308;

/*  Phantasmal Possessor (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `speed_walk` = 1.0, `DamageModifier` = 5.0 WHERE `entry`=20309;

/*  Phasing Cleric (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 4.0 WHERE `entry`=20310;

/*  Phasing Soldier (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 7.0, `ManaModifier` = 1.0 WHERE `entry`=20311;

/*  Phasing Sorcerer (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 5.0 WHERE `entry`=20312;

/*  Phasing Stalker (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 9.0 WHERE `entry`=20313;

/*  Raging Skeleton (1)  */
UPDATE `creature_template` SET `minlevel` = 71, `speed_walk` = 1.0, `speed_run` = 1.42857, `DamageModifier` = 10.0 WHERE `entry`=20315;

/*  Raging Soul (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 3.0 WHERE `entry`=20316;

/*  Reanimated Bones (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 3.0 WHERE `entry`=20317;

/*  Shirrak the Dead Watcher (1)  */
UPDATE `creature_template` SET `minlevel` = 71, `maxlevel` = 71, `speed_walk` = 1.6, `speed_run` = 1.71429, `DamageModifier` = 10.0 WHERE `entry`=20318;

/*  Spirit of Exarch Maladaar (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=20319;

/*  Unliving Cleric (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 4.0 WHERE `entry`=20320;

/*  Unliving Soldier (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 7.0, `ManaModifier` = 1.0 WHERE `entry`=20321;

/*  Unliving Sorcerer (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `speed_walk` = 1.0, `DamageModifier` = 4.0 WHERE `entry`=20322;

/*  Unliving Stalker (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 8.0 WHERE `entry`=20323;

/*  Mo'arg Warp-Master  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=20326;

/*  Grishna Matriarch  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.3 WHERE `entry`=20329;

/*  Bloodmaul Battle Worg  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=20330;

/*  G'eras Vindicator  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=20331;

/*  Nether Dragon  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=20332;

/*  Northern Pipe Credit Marker  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20333;

/*  Bladespire Cook  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.754784 WHERE `entry`=20334;

/*  Parasitic Fleshbeast  */
UPDATE `creature_template` SET `DamageModifier` = 1.8 WHERE `entry`=20335;

/*  Eastern Pipe Credit Marker  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20336;

/*  Southern Pipe Credit Marker  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20337;

/*  Western Pipe Credit Marker  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20338;

/*  Oric Coe  */
UPDATE `creature_template` SET `DamageModifier` = 6.0 WHERE `entry`=20339;

/*  Fleshfiend  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.977915 WHERE `entry`=20340;

/*  Nether-Stalker Oazul  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.5 WHERE `entry`=20341;

/*  Hal McAllister  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.04 WHERE `entry`=20342;

/*  Nat Pagle  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 3.0 WHERE `entry`=20344;

/*  Commander Mograine  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 3.0 WHERE `entry`=20345;

/*  Isillien  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 3.0 WHERE `entry`=20346;

/*  Abbendis  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 3.0 WHERE `entry`=20347;

/*  Fairbanks  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 4.0 WHERE `entry`=20348;

/*  Tirion Fordring  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 3.0 WHERE `entry`=20349;

/*  Kel'Thuzad  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 3.0 WHERE `entry`=20350;

/*  Captain Sanders  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 3.5 WHERE `entry`=20351;

/*  Arcanist Doan  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 3.5 WHERE `entry`=20352;

/*  Helcular  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 3.5 WHERE `entry`=20353;

/*  Nathanos Marris  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 3.0 WHERE `entry`=20354;

/*  Stalvan Mistmantle  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.06 WHERE `entry`=20355;

/*  Sally Whitemane  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 3.5 WHERE `entry`=20357;

/*  Renault Mograine  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 3.5 WHERE `entry`=20358;

/*  Little Jimmy Vishas  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20359;

/*  Herod the Bully  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 3.5 WHERE `entry`=20360;

/*  Taelan  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 3.5 WHERE `entry`=20361;

/*  Iravar  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=20362;

/*  Caretaker Smithers  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 3.5 WHERE `entry`=20363;

/*  Bartolo Ginsetti  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 3.0 WHERE `entry`=20365;

/*  Farmer Kent  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 3.0 WHERE `entry`=20368;

/*  Phin Odelic  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.05 WHERE `entry`=20370;

/*  Jonathan Revah  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 4.0 WHERE `entry`=20372;

/*  Magistrate Henry Maleb  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.02 WHERE `entry`=20373;

/*  Jerry Carter  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 4.0 WHERE `entry`=20376;

/*  Barkeep Kelly  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.0 WHERE `entry`=20377;

/*  Chef Jessen  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.0 WHERE `entry`=20378;

/*  Bilger the Straight-laced  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 3.0 WHERE `entry`=20379;

/*  Raleigh the True  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 3.5 WHERE `entry`=20380;

/*  Mitia  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 1.2 WHERE `entry`=20382;

/*  Yula the Fair  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=20384;

/*  Young Sporebat  */
UPDATE `creature_template` SET `speed_run` = 0.952381, `ArmorModifier` = 0.963334 WHERE `entry`=20387;

/*  Lee Sparks  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=20389;

/*  Duyash the Cruel  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 0.8 WHERE `entry`=20390;

/*  Foreman Sundown  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.5 WHERE `entry`=20393;

/*  Eye of Culuthas  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `DamageModifier` = 1.8 WHERE `entry`=20394;

/*  Overseer Seylanna  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20397;

/*  Terror Imp  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.97 WHERE `entry`=20399;

/*  Captain Edward Hanes  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 3.2 WHERE `entry`=20400;

/*  Frances Lin  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 4.0 WHERE `entry`=20401;

/*  Legion Shocktrooper  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0, `HealthModifier` = 1.275 WHERE `entry`=20402;

/*  Legion Destroyer  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 1.75 WHERE `entry`=20403;

/*  Warp-Gate Engineer  */
UPDATE `creature_template` SET `minlevel` = 69, `speed_walk` = 1.125 WHERE `entry`=20404;

/*  Nether Charge  */
UPDATE `creature_template` SET `DamageModifier` = 0.01 WHERE `entry`=20405;

/*  Kirin'Var Apprentice  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20409;

/*  Rhonsus  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.8, `HealthModifier` = 1.122 WHERE `entry`=20410;

/*  Spectral Bovine  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=20411;

/*  Bessy  */
UPDATE `creature_template` SET `speed_run` = 0.857143, `DamageModifier` = 2.0 WHERE `entry`=20415;

/*  Overseer Theredis  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20416;

/*  Coruu Control Console  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 1.33333 WHERE `entry`=20417;

/*  Zixil  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.04 WHERE `entry`=20419;

/*  Overwatch Mark 0  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 3.0 WHERE `entry`=20420;

/*  Hillsbrad Peasant  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 5.0 WHERE `entry`=20424;

/*  Veneratus the Many  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 2.9 WHERE `entry`=20427;

/*  Hillsbrad Citizen  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.0, `ArmorModifier` = 1.33333 WHERE `entry`=20428;

/*  Hillsbrad Citizen  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.0, `ArmorModifier` = 1.33333 WHERE `entry`=20429;

/*  Hillsbrad Citizen  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.0, `ArmorModifier` = 1.33333 WHERE `entry`=20430;

/*  Beggar  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 5.0, `ArmorModifier` = 1.25 WHERE `entry`=20432;

/*  Overseer Athanel  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20435;

/*  Sunfury Protector  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.7, `ArmorModifier` = 0.976895 WHERE `entry`=20436;

/*  Ara Technician  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.5, `HealthModifier` = 0.612 WHERE `entry`=20438;

/*  Ara Engineer  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.5 WHERE `entry`=20439;

/*  Ara Control Console  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 1.33333 WHERE `entry`=20440;

/*  Natasha Morris  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.7 WHERE `entry`=20441;

/*  Captain Bo'kar  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.969946 WHERE `entry`=20442;

/*  Ango'rosh Sentry  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20443;

/*  Mal'druk the Soulrender  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 3.3 WHERE `entry`=20445;

/*  Protectorate Legionnaire  */
UPDATE `creature_template` SET `ArmorModifier` = 0.977915 WHERE `entry`=20446;

/*  Protectorate Vanguard  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20447;

/*  Commander Ameer  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.5 WHERE `entry`=20448;

/*  Researcher Navuud  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.8 WHERE `entry`=20449;

/*  Flesh Handler Viridius  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.8 WHERE `entry`=20450;

/*  Ethereum Assassin  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.976895 WHERE `entry`=20452;

/*  Ethereum Shocktrooper  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.976895 WHERE `entry`=20453;

/*  Nexus-King Salhadaar  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 7.0, `ArmorModifier` = 1.00017 WHERE `entry`=20454;

/*  Ethereum Researcher  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.8, `ArmorModifier` = 0.978261 WHERE `entry`=20456;

/*  Ethereum Archon  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.977915 WHERE `entry`=20458;

/*  Ethereum Overlord  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.977915 WHERE `entry`=20459;

/*  Chief Engineer Gork'lonn  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 3.0 WHERE `entry`=20460;

/*  Apprentice Andrethan  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `HealthModifier` = 1.0406 WHERE `entry`=20463;

/*  Thadell  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0, `HealthModifier` = 1.0406 WHERE `entry`=20464;

/*  Zephyrion  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=20470;

/*  Nether-Stalker Nauthis  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=20471;

/*  Surveying Marker One  */
UPDATE `creature_template` SET `DamageModifier` = 0.02 WHERE `entry`=20473;

/*  Ethereum Nexus-Stalker  */
UPDATE `creature_template` SET `minlevel` = 70, `speed_walk` = 1.125 WHERE `entry`=20474;

/*  Surveying Marker Two  */
UPDATE `creature_template` SET `DamageModifier` = 0.02 WHERE `entry`=20475;

/*  Surveying Marker Three  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.02 WHERE `entry`=20476;

/*  Terrorclaw  */
UPDATE `creature_template` SET `speed_run` = 0.992063 WHERE `entry`=20477;

/*  Arcane Servant  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.143 WHERE `entry`=20478;

/*  Raging Flames  */
UPDATE `creature_template` SET `speed_run` = 0.571429, `DamageModifier` = 2.86, `ManaModifier` = 1.0 WHERE `entry`=20481;

/*  Image of Commander Ameer  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.5 WHERE `entry`=20482;

/*  Naberius  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 3.1 WHERE `entry`=20483;

/*  Dama Wildmane  */
UPDATE `creature_template` SET `subname` = 'Windrider Keeper', `ManaModifier` = 1.0 WHERE `entry`=20494;

/*  Skeletal Stallion  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=20495;

/*  Kirin'Var Spectre  */
UPDATE `creature_template` SET `minlevel` = 68, `maxlevel` = 68, `DamageModifier` = 1.1, `ArmorModifier` = 1.62439 WHERE `entry`=20496;

/*  Sundered Shard  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.6, `ManaModifier` = 1.0 WHERE `entry`=20498;

/*  Seeping Sludge  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.75 WHERE `entry`=20501;

/*  Eclipsion Dragonhawk  */
UPDATE `creature_template` SET `ArmorModifier` = 0.975775 WHERE `entry`=20502;

/*  Tormented Soul  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=20512;

/*  Honor Hold Defender  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=20513;

/*  Searing Elemental  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.8, `ArmorModifier` = 0.975775 WHERE `entry`=20514;

/*  Harpax  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 2.0 WHERE `entry`=20515;

/*  Warp Monstrosity  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.6 WHERE `entry`=20516;

/*  Eclipsion Dragonhawk Hatchling  */
UPDATE `creature_template` SET `ArmorModifier` = 0.974542 WHERE `entry`=20517;

/*  Image of Wind Trader Marid  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 1.2, `HealthModifier` = 1.02 WHERE `entry`=20518;

/*  Ethereum Prisoner  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.006, `HealthModifier` = 2.0 WHERE `entry`=20520;

/*  Captain Skarloc (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `ArmorModifier` = 1.14024 WHERE `entry`=20521;

/*  Durnholde Armorer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 6.0 WHERE `entry`=20523;

/*  Durnholde Cook (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `maxlevel` = 69, `DamageModifier` = 6.0 WHERE `entry`=20524;

/*  Durnholde Mage (1)  */
UPDATE `creature_template` SET `minlevel` = 71, `maxlevel` = 71, `DamageModifier` = 6.0 WHERE `entry`=20525;

/*  Durnholde Rifleman (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 6.0 WHERE `entry`=20526;

/*  Durnholde Sentry (1)  */
UPDATE `creature_template` SET `DamageModifier` = 9.0 WHERE `entry`=20527;

/*  Durnholde Tracking Hound (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 7.0, `ArmorModifier` = 1.5 WHERE `entry`=20528;

/*  Durnholde Veteran (1)  */
UPDATE `creature_template` SET `minlevel` = 71, `speed_walk` = 1.48, `DamageModifier` = 8.0 WHERE `entry`=20529;

/*  Durnholde Warden (1)  */
UPDATE `creature_template` SET `DamageModifier` = 6.0 WHERE `entry`=20530;

/*  Epoch Hunter (1)  */
UPDATE `creature_template` SET `DamageModifier` = 20.0, `ArmorModifier` = 0.999323 WHERE `entry`=20531;

/*  Infinite Defiler (1)  */
UPDATE `creature_template` SET `minlevel` = 72, `DamageModifier` = 10.0 WHERE `entry`=20532;

/*  Infinite Saboteur (1)  */
UPDATE `creature_template` SET `minlevel` = 71, `DamageModifier` = 10.0 WHERE `entry`=20533;

/*  Infinite Slayer (1)  */
UPDATE `creature_template` SET `minlevel` = 71, `DamageModifier` = 10.0 WHERE `entry`=20534;

/*  Lieutenant Drake (1)  */
UPDATE `creature_template` SET `DamageModifier` = 9.0 WHERE `entry`=20535;

/*  Lodaeron Sentry Specimen (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=20536;

/*  Lordaeron Sentry (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 7.0 WHERE `entry`=20537;

/*  Lordaeron Watchman (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 8.0 WHERE `entry`=20538;

/*  Lordaeron Watchman Specimen (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=20539;

/*  Ogre Brawler (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 0.01 WHERE `entry`=20540;

/*  Orc Prisoner (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `maxlevel` = 69, `DamageModifier` = 0.01 WHERE `entry`=20541;

/*  Pit Announcer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 5.0 WHERE `entry`=20542;

/*  Pit Spectator (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 5.0 WHERE `entry`=20543;

/*  Tarren Mill Guardsman (1)  */
UPDATE `creature_template` SET `DamageModifier` = 8.0 WHERE `entry`=20545;

/*  Tarren Mill Lookout (1)  */
UPDATE `creature_template` SET `minlevel` = 71, `DamageModifier` = 10.0 WHERE `entry`=20546;

/*  Tarren Mill Protector (1)  */
UPDATE `creature_template` SET `minlevel` = 71, `DamageModifier` = 6.5 WHERE `entry`=20547;

/*  Troll Berserker (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=20549;

/*  Agent Araxes  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.6, `HealthModifier` = 1.0406 WHERE `entry`=20551;

/*  Agent Ya-six  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.3, `HealthModifier` = 1.0406 WHERE `entry`=20552;

/*  Image of Commander Ameer  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.007 WHERE `entry`=20553;

/*  Arconus the Insatiable  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=20554;

/*  Goc  */
UPDATE `creature_template` SET `speed_walk` = 1.6 WHERE `entry`=20555;

/*  Stormwind Marine  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 5.0 WHERE `entry`=20556;

/*  Wrath Hound  */
UPDATE `creature_template` SET `minlevel` = 70, `speed_run` = 1.14286 WHERE `entry`=20557;

/*  Forge Hound  */
UPDATE `creature_template` SET `DamageModifier` = 0.75, `ManaModifier` = 1.0 WHERE `entry`=20558;

/*  Withered Corpse  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.3 WHERE `entry`=20561;

/*  Grand Commander Ruusk  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 10.0 WHERE `entry`=20563;

/*  Image of Agent Ya-six  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.6 WHERE `entry`=20564;

/*  Creeping Ooze (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 9.5 WHERE `entry`=20565;

/*  Creeping Oozeling (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 2.0 WHERE `entry`=20566;

/*  Fel Orc Convert (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 0.992063, `DamageModifier` = 4.0 WHERE `entry`=20567;

/*  Grand Warlock Nethekurse (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `speed_run` = 1.42857, `DamageModifier` = 5.8, `HealthModifier` = 25.3126 WHERE `entry`=20568;

/*  Heathen Guard (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 4.18 WHERE `entry`=20569;

/*  Lesser Shadow Fissure (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 0.857143 WHERE `entry`=20570;

/*  O'mrogg's Left Head (1)  */
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72, `speed_walk` = 1.0, `DamageModifier` = 0.006 WHERE `entry`=20572;

/*  O'mrogg's Right Head (1)  */
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72, `speed_walk` = 1.0, `DamageModifier` = 0.006 WHERE `entry`=20573;

/*  Rabid Warhound (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.38571, `DamageModifier` = 3.0 WHERE `entry`=20574;

/*  Reaver Guard (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 10.0 WHERE `entry`=20575;

/*  Shadowmoon Acolyte (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 12.0 WHERE `entry`=20576;

/*  Shadowmoon Darkcaster (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 13.0 WHERE `entry`=20577;

/*  Sharpshooter Guard (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 10.0 WHERE `entry`=20578;

/*  Shattered Hand Archer (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 10.0 WHERE `entry`=20579;

/*  Shattered Hand Assassin (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `speed_walk` = 1.0, `DamageModifier` = 14.0 WHERE `entry`=20580;

/*  Shattered Hand Blood Guard (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `speed_walk` = 1.0, `DamageModifier` = 19.0, `HealthModifier` = 3.9 WHERE `entry`=20581;

/*  Shattered Hand Brawler (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 12.0 WHERE `entry`=20582;

/*  Shattered Hand Centurion (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `speed_walk` = 1.0, `DamageModifier` = 13.0 WHERE `entry`=20583;

/*  Shattered Hand Champion (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `speed_walk` = 1.0, `DamageModifier` = 14.0 WHERE `entry`=20584;

/*  Shattered Hand Executioner (1)  */
UPDATE `creature_template` SET `DamageModifier` = 14.0 WHERE `entry`=20585;

/*  Shattered Hand Gladiator (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 13.0 WHERE `entry`=20586;

/*  Shattered Hand Heathen (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 10.0 WHERE `entry`=20587;

/*  Shattered Hand Houndmaster (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 12.0 WHERE `entry`=20588;

/*  Shattered Hand Legionnaire (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 14.5 WHERE `entry`=20589;

/*  Shattered Hand Reaver (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 13.0 WHERE `entry`=20590;

/*  Shattered Hand Savage (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 12.0 WHERE `entry`=20591;

/*  Shattered Hand Scout (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.42857, `DamageModifier` = 10.0 WHERE `entry`=20592;

/*  Shattered Hand Sentry (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 13.0 WHERE `entry`=20593;

/*  Shattered Hand Sharpshooter (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 12.0 WHERE `entry`=20594;

/*  Shattered Hand Zealot (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.42857, `DamageModifier` = 8.0 WHERE `entry`=20595;

/*  Warbringer O'mrogg (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `speed_run` = 1.71429, `DamageModifier` = 13.0 WHERE `entry`=20596;

/*  Warchief Kargath Bladefist (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `DamageModifier` = 17.0 WHERE `entry`=20597;

/*  Wild Shadow Fissure (1)  */
UPDATE `creature_template` SET `minlevel` = 71, `maxlevel` = 71, `speed_walk` = 1.0, `speed_run` = 0.857143 WHERE `entry`=20598;

/*  Lured Colossus  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `DamageModifier` = 1.5 WHERE `entry`=20599;

/*  Maggoc  */
UPDATE `creature_template` SET `DamageModifier` = 11.0 WHERE `entry`=20600;

/*  Razaani Raider  */
UPDATE `creature_template` SET `DamageModifier` = 1.8 WHERE `entry`=20601;

/*  Reflection of Ya-six  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 1.33333 WHERE `entry`=20603;

/*  Dugiru  */
UPDATE `creature_template` SET `DamageModifier` = 0.8 WHERE `entry`=20604;

/*  Dr. Boom  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=20605;

/*  Shaleskin Ripper  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976895 WHERE `entry`=20606;

/*  Ya-six Spell Generator  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 1.33333 WHERE `entry`=20608;

/*  Razaani Nexus Stalker  */
UPDATE `creature_template` SET `DamageModifier` = 1.9 WHERE `entry`=20609;

/*  Shimmerwing Moth  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976741 WHERE `entry`=20611;

/*  Sorim Lightsong  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.8 WHERE `entry`=20612;

/*  Razaani Spell-Thief  */
UPDATE `creature_template` SET `DamageModifier` = 1.75 WHERE `entry`=20614;

/*  Darkmaw Cub  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976895 WHERE `entry`=20615;

/*  Asuur  */
UPDATE `creature_template` SET `HealthModifier` = 1.1296 WHERE `entry`=20616;

/*  Mana Invader  */
UPDATE `creature_template` SET `DamageModifier` = 1.4, `ArmorModifier` = 0.975976 WHERE `entry`=20618;

/*  Ethereum Relay  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.2 WHERE `entry`=20619;

/*  Coilfang Engineer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 11.5 WHERE `entry`=20620;

/*  Coilfang Myrmidon (1)  */
UPDATE `creature_template` SET `DamageModifier` = 11.5 WHERE `entry`=20621;

/*  Coilfang Oracle (1)  */
UPDATE `creature_template` SET `DamageModifier` = 11.5 WHERE `entry`=20622;

/*  Coilfang Siren (1)  */
UPDATE `creature_template` SET `DamageModifier` = 11.5 WHERE `entry`=20623;

/*  Coilfang Slavemaster (1)  */
UPDATE `creature_template` SET `DamageModifier` = 11.5 WHERE `entry`=20624;

/*  Coilfang Sorceress (1)  */
UPDATE `creature_template` SET `maxlevel` = 70, `DamageModifier` = 11.5 WHERE `entry`=20625;

/*  Coilfang Warrior (1)  */
UPDATE `creature_template` SET `maxlevel` = 70, `DamageModifier` = 11.5 WHERE `entry`=20626;

/*  Coilfang Water Elemental (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 12.0 WHERE `entry`=20627;

/*  Dreghood Slave (1)  */
UPDATE `creature_template` SET `maxlevel` = 70, `DamageModifier` = 7.0 WHERE `entry`=20628;

/*  Hydromancer Thespia (1)  */
UPDATE `creature_template` SET `DamageModifier` = 9.0 WHERE `entry`=20629;

/*  Mekgineer Steamrigger (1)  */
UPDATE `creature_template` SET `DamageModifier` = 10.0 WHERE `entry`=20630;

/*  Naga Distiller (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=20631;

/*  Steamrigger Mechanic (1)  */
UPDATE `creature_template` SET `DamageModifier` = 5.0 WHERE `entry`=20632;

/*  Warlord Kalithresh (1)  */
UPDATE `creature_template` SET `DamageModifier` = 12.0 WHERE `entry`=20633;

/*  Scythetooth Raptor  */
UPDATE `creature_template` SET `ArmorModifier` = 0.973814 WHERE `entry`=20634;

/*  Ambassador Hellmaw (1)  */
UPDATE `creature_template` SET `speed_run` = 1.14286, `rank` = 3, `DamageModifier` = 7.0, `ManaModifier` = 1.0 WHERE `entry`=20636;

/*  Blackheart the Inciter (1)  */
UPDATE `creature_template` SET `speed_run` = 1.14286, `rank` = 3, `DamageModifier` = 10.0, `ManaModifier` = 1.0 WHERE `entry`=20637;

/*  Cabal Acolyte (1)  */
UPDATE `creature_template` SET `maxlevel` = 70, `DamageModifier` = 11.5 WHERE `entry`=20638;

/*  Cabal Assassin (1)  */
UPDATE `creature_template` SET `maxlevel` = 70, `DamageModifier` = 12.5, `ManaModifier` = 1.0 WHERE `entry`=20639;

/*  Cabal Cultist (1)  */
UPDATE `creature_template` SET `DamageModifier` = 12.0, `ManaModifier` = 1.0 WHERE `entry`=20640;

/*  Cabal Deathsworn (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 71, `DamageModifier` = 12.0, `ManaModifier` = 1.0 WHERE `entry`=20641;

/*  Cabal Executioner (1)  */
UPDATE `creature_template` SET `DamageModifier` = 12.5, `ManaModifier` = 1.0 WHERE `entry`=20642;

/*  Cabal Familiar (1)  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=20643;

/*  Cabal Fanatic (1)  */
UPDATE `creature_template` SET `maxlevel` = 70, `DamageModifier` = 11.5, `ManaModifier` = 1.0 WHERE `entry`=20644;

/*  Cabal Ritualist (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 10.0 WHERE `entry`=20645;

/*  Cabal Shadow Priest (1)  */
UPDATE `creature_template` SET `DamageModifier` = 11.0 WHERE `entry`=20646;

/*  Cabal Spellbinder (1)  */
UPDATE `creature_template` SET `DamageModifier` = 11.5 WHERE `entry`=20647;

/*  Cabal Summoner (1)  */
UPDATE `creature_template` SET `DamageModifier` = 11.5 WHERE `entry`=20648;

/*  Cabal Warlock (1)  */
UPDATE `creature_template` SET `DamageModifier` = 11.5 WHERE `entry`=20649;

/*  Cabal Zealot (1)  */
UPDATE `creature_template` SET `DamageModifier` = 10.5 WHERE `entry`=20650;

/*  Fel Guardhound (1)  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=20651;

/*  Fel Overseer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 25.0, `ManaModifier` = 1.0 WHERE `entry`=20652;

/*  Grandmaster Vorpil (1)  */
UPDATE `creature_template` SET `speed_run` = 1.14286, `DamageModifier` = 6.0 WHERE `entry`=20653;

/*  Maiden of Discipline (1)  */
UPDATE `creature_template` SET `DamageModifier` = 9.5, `HealthModifier` = 1.9574 WHERE `entry`=20655;

/*  Malicious Instructor (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 17.0, `HealthModifier` = 16.5374 WHERE `entry`=20656;

/*  Murmur (1)  */
UPDATE `creature_template` SET `rank` = 3, `DamageModifier` = 9.0, `ManaModifier` = 1.0 WHERE `entry`=20657;

/*  Shape of the Beast (1)  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=20658;

/*  Spy To'gun (1)  */
UPDATE `creature_template` SET `DamageModifier` = 0.007 WHERE `entry`=20659;

/*  Summoned Cabal Acolyte (1)  */
UPDATE `creature_template` SET `DamageModifier` = 9.0 WHERE `entry`=20660;

/*  Summoned Cabal Deathsworn (1)  */
UPDATE `creature_template` SET `minlevel` = 71, `maxlevel` = 71, `DamageModifier` = 11.0, `ManaModifier` = 1.0 WHERE `entry`=20661;

/*  Tortured Skeleton (1)  */
UPDATE `creature_template` SET `DamageModifier` = 4.0, `ManaModifier` = 1.0 WHERE `entry`=20662;

/*  Void Portal (1)  */
UPDATE `creature_template` SET `DamageModifier` = 0.007 WHERE `entry`=20663;

/*  Void Traveler (1)  */
UPDATE `creature_template` SET `speed_walk` = 0.8, `speed_run` = 0.285714, `DamageModifier` = 3.0 WHERE `entry`=20664;

/*  Voidwalker Summoner (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=20665;

/*  Sporewind Frenzy  */
UPDATE `creature_template` SET `DamageModifier` = 0.25, `ArmorModifier` = 0.968024, `ManaModifier` = 1.0 WHERE `entry`=20667;

/*  Shade of Mal'druk  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.2 WHERE `entry`=20669;

/*  Ripfang Lynx  */
UPDATE `creature_template` SET `speed_run` = 1.14286, `ArmorModifier` = 0.976895 WHERE `entry`=20671;

/*  Swiftwing Shredder  */
UPDATE `creature_template` SET `ArmorModifier` = 0.967652 WHERE `entry`=20673;

/*  Ethereum Sparring Dummy  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20676;

/*  Morod the Windstirrer  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 4.0 WHERE `entry`=20677;

/*  Akoru the Firecaller  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=20678;

/*  Aylaan the Waterwaker  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.7 WHERE `entry`=20679;

/*  Arzeth the Powerless  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=20680;

/*  Terokkarantula  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 2.4 WHERE `entry`=20682;

/*  Prophetess Cavrylin  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.1, `ArmorModifier` = 0.977077 WHERE `entry`=20683;

/*  Lady Shav'rar  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 1.1, `ArmorModifier` = 0.977077 WHERE `entry`=20684;

/*  Overseer Azarad  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.908659 WHERE `entry`=20685;

/*  Avian Darkhawk (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `speed_walk` = 1.0, `DamageModifier` = 12.5 WHERE `entry`=20686;

/*  Cobalt Serpent (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `speed_walk` = 1.0, `DamageModifier` = 15.0 WHERE `entry`=20688;

/*  Dark Vortex (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 10.0, `ArmorModifier` = 1.48917 WHERE `entry`=20689;

/*  Darkweaver Syth (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 11.0 WHERE `entry`=20690;

/*  Time-Lost Controller (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 6.0 WHERE `entry`=20691;

/*  Sethekk Guard (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `speed_walk` = 1.0, `DamageModifier` = 20.0 WHERE `entry`=20692;

/*  Sethekk Initiate (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 10.0 WHERE `entry`=20693;

/*  Sethekk Oracle (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 11.5 WHERE `entry`=20694;

/*  Sethekk Prophet (1)  */
UPDATE `creature_template` SET `minlevel` = 71, `speed_walk` = 1.0, `speed_run` = 1.0, `DamageModifier` = 11.5 WHERE `entry`=20695;

/*  Sethekk Ravenguard (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 14.0 WHERE `entry`=20696;

/*  Time-Lost Scryer (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 8.5 WHERE `entry`=20697;

/*  Time-Lost Shadowmage (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 6.0, `HealthModifier` = 2.9 WHERE `entry`=20698;

/*  Sethekk Shaman (1)  */
UPDATE `creature_template` SET `minlevel` = 72, `speed_walk` = 1.0, `DamageModifier` = 11.5 WHERE `entry`=20699;

/*  Sethekk Talon Lord (1)  */
UPDATE `creature_template` SET `minlevel` = 71, `speed_walk` = 1.0, `DamageModifier` = 12.5 WHERE `entry`=20701;

/*  Syth Arcane Elemental (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 3.0, `HealthModifier` = 1.0 WHERE `entry`=20702;

/*  Syth Fire Elemental (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 3.0 WHERE `entry`=20703;

/*  Syth Frost Elemental (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.28968, `DamageModifier` = 3.0 WHERE `entry`=20704;

/*  Syth Shadow Elemental (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 3.0 WHERE `entry`=20705;

/*  Talon King Ikiss (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 15.0 WHERE `entry`=20706;

/*  Blade Dance Target  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ArmorModifier` = 1.33333 WHERE `entry`=20709;

/*  Fey Drake  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.973422 WHERE `entry`=20713;

/*  Ridgespine Stalker  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `ArmorModifier` = 0.974542 WHERE `entry`=20714;

/*  Herald Bran'daan  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=20722;

/*  Korgaah  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20723;

/*  Herald Amorlin  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.7 WHERE `entry`=20724;

/*  Captain Zovax  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20727;

/*  Bladespire Raptor  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.961188 WHERE `entry`=20728;

/*  Bladespire Ravager  */
UPDATE `creature_template` SET `DamageModifier` = 4.5 WHERE `entry`=20729;

/*  Glumdor  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.2 WHERE `entry`=20730;

/*  Droggam  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.2, `ArmorModifier` = 1.17542 WHERE `entry`=20731;

/*  Gorr'Dim  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.2 WHERE `entry`=20732;

/*  Daggermaw Raptor  */
UPDATE `creature_template` SET `ArmorModifier` = 0.973529 WHERE `entry`=20734;

/*  Aeonus (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 15.0 WHERE `entry`=20737;

/*  Imprisoned Infinite Dragonspawn (1)  */
UPDATE `creature_template` SET `speed_walk` = 2.0, `speed_run` = 1.42857, `ManaModifier` = 1.0 WHERE `entry`=20739;

/*  Infinite Assassin (1)  */
UPDATE `creature_template` SET `DamageModifier` = 7.0 WHERE `entry`=20740;

/*  Infinite Chronomancer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 8.0 WHERE `entry`=20741;

/*  Infinite Executioner (1)  */
UPDATE `creature_template` SET `DamageModifier` = 8.0 WHERE `entry`=20742;

/*  Infinite Vanquisher (1)  */
UPDATE `creature_template` SET `DamageModifier` = 5.0 WHERE `entry`=20743;

/*  Rift Lord (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.42857, `DamageModifier` = 10.0, `HealthModifier` = 18.561, `ManaModifier` = 1.0 WHERE `entry`=20744;

/*  Time Keeper (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.71429, `DamageModifier` = 1.6 WHERE `entry`=20746;

/*  Silkwing Larva  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.8, `ArmorModifier` = 1.44947 WHERE `entry`=20747;

/*  Thunderlord Dire Wolf  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20748;

/*  Scalewing Serpent  */
UPDATE `creature_template` SET `ArmorModifier` = 0.96945 WHERE `entry`=20749;

/*  Daggermaw Lashtail  */
UPDATE `creature_template` SET `ArmorModifier` = 0.971487 WHERE `entry`=20751;

/*  Grand Silkwing  */
UPDATE `creature_template` SET `DamageModifier` = 1.4, `ArmorModifier` = 0.976578 WHERE `entry`=20752;

/*  Dorgok  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.2 WHERE `entry`=20753;

/*  Daggermaw Devourer  */
UPDATE `creature_template` SET `DamageModifier` = 1.05 WHERE `entry`=20754;

/*  Bladespire Chef  */
UPDATE `creature_template` SET `DamageModifier` = 3.3 WHERE `entry`=20756;

/*  Fingrom  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 4.0 WHERE `entry`=20757;

/*  Gur'zil  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 2.5, `ManaModifier` = 1.0 WHERE `entry`=20762;

/*  Captured Protectorate Vanguard  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20763;

/*  Bladespire Crusher  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20765;

/*  Bladespire Mystic  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20766;

/*  Gnosh Brognat  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.5 WHERE `entry`=20768;

/*  Warden Icoshock  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.3 WHERE `entry`=20770;

/*  Netherock  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 3.3, `ArmorModifier` = 1.13905 WHERE `entry`=20772;

/*  Barbscale Crocolisk  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.976895 WHERE `entry`=20773;

/*  Farahlon Lasher  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976895 WHERE `entry`=20774;

/*  Markaru  */
UPDATE `creature_template` SET `DamageModifier` = 1.1 WHERE `entry`=20775;

/*  Void Waste  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.5 WHERE `entry`=20778;

/*  Congealed Void Horror  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=20779;

/*  Kaylaan  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 5.0 WHERE `entry`=20780;

/*  Captain Tyralius  */
UPDATE `creature_template` SET `DamageModifier` = 1.4, `ArmorModifier` = 0.977915 WHERE `entry`=20787;

/*  Bloodscale Elemental  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.3, `ArmorModifier` = 0.965253, `ManaModifier` = 1.0 WHERE `entry`=20792;

/*  Field Marshal Brock  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=20793;

/*  Kaylaan the Lost  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 5.0 WHERE `entry`=20794;

/*  Keeper of the Cistern  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.25 WHERE `entry`=20795;

/*  Netherstorm Target  */
UPDATE `creature_template` SET `DamageModifier` = 0.02 WHERE `entry`=20796;

/*  Deviate Coiler Hatchling  */
UPDATE `creature_template` SET `speed_walk` = 0.97 WHERE `entry`=20797;

/*  Razorsaw  */
UPDATE `creature_template` SET `minlevel` = 62, `speed_walk` = 0.944444, `speed_run` = 0.952381 WHERE `entry`=20798;

/*  Battle Scryer Unther  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ArmorModifier` = 1.33333, `ManaModifier` = 1.0 WHERE `entry`=20799;

/*  Forgemaster Morug  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 2.9, `ArmorModifier` = 0.976895, `ManaModifier` = 1.0 WHERE `entry`=20800;

/*  Silroth  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 2.9, `ArmorModifier` = 0.976895, `ManaModifier` = 1.0 WHERE `entry`=20801;

/*  Protectorate Demolitionist  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20802;

/*  Overmaster Grindgarr  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=20803;

/*  Void Waste Globule  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.3 WHERE `entry`=20805;

/*  Seeping Sludge Globule  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.5 WHERE `entry`=20806;

/*  Mehrdad  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.3 WHERE `entry`=20810;

/*  Ghabar  */
UPDATE `creature_template` SET `DamageModifier` = 1.8 WHERE `entry`=20811;

/*  Corki  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.01 WHERE `entry`=20812;

/*  Ethereum Prisoner (Tyralius)  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.007 WHERE `entry`=20825;

/*  Gray Elekk  */
UPDATE `creature_template` SET `DamageModifier` = 0.8 WHERE `entry`=20846;

/*  Purple Elekk  */
UPDATE `creature_template` SET `DamageModifier` = 0.8 WHERE `entry`=20847;

/*  Great Blue Elekk  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=20848;

/*  Great Green Elekk  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=20849;

/*  Great Purple Elekk  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=20850;

/*  Blade's Edge - Deadsoul Orb Flight 01  */
UPDATE `creature_template` SET `DamageModifier` = 0.01 WHERE `entry`=20851;

/*  Blade's Edge - Deadsoul Orb Flight 02  */
UPDATE `creature_template` SET `DamageModifier` = 0.01 WHERE `entry`=20852;

/*  Blade's Edge - Deadsoul Orb Flight 03  */
UPDATE `creature_template` SET `DamageModifier` = 0.01 WHERE `entry`=20853;

/*  Ethereum Gladiator  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.5 WHERE `entry`=20854;

/*  Blade's Edge - Deadsoul Orb Flight 04  */
UPDATE `creature_template` SET `DamageModifier` = 0.01 WHERE `entry`=20855;

/*  Blade's Edge - Deadsoul Orb Flight 05  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.01 WHERE `entry`=20856;

/*  Arcatraz Defender  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 4.664 WHERE `entry`=20857;

/*  Arena Event Controller  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.007 WHERE `entry`=20858;

/*  Arcatraz Warder  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 4.66 WHERE `entry`=20859;

/*  Mutated Fleshfiend  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=20860;

/*  Protean Nightmare  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 2.0 WHERE `entry`=20864;

/*  Protean Horror  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 4.0 WHERE `entry`=20865;

/*  Soul Devourer  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 8.0 WHERE `entry`=20866;

/*  Death Watcher  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 8.0 WHERE `entry`=20867;

/*  Entropic Eye  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 7.0 WHERE `entry`=20868;

/*  Arcatraz Sentinel  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 7.0 WHERE `entry`=20869;

/*  Zereketh the Unbound  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 6.0 WHERE `entry`=20870;

/*  Aurine Moonblaze  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=20871;

/*  Deathforge Summoner  */
UPDATE `creature_template` SET `DamageModifier` = 0.9, `ArmorModifier` = 0.977077 WHERE `entry`=20872;

/*  Negaton Warp-Master  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 8.75, `ArmorModifier` = 1.2 WHERE `entry`=20873;

/*  Negaton Screamer  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 7.0 WHERE `entry`=20875;

/*  Human Refugee  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=20876;

/*  Shattrath Refugee  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=20877;

/*  Deathforge Guardian  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976895 WHERE `entry`=20878;

/*  Eredar Soul-Eater  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 8.0 WHERE `entry`=20879;

/*  Eredar Deathbringer  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 8.0 WHERE `entry`=20880;

/*  Unbound Devastator  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 8.0 WHERE `entry`=20881;

/*  Skulking Witch  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 8.0, `ManaModifier` = 1.0 WHERE `entry`=20882;

/*  Spiteful Temptress  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 6.0 WHERE `entry`=20883;

/*  Deathforge Cultist  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976895 WHERE `entry`=20884;

/*  Dalliah the Doomsayer  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 8.5, `ManaModifier` = 1.0 WHERE `entry`=20885;

/*  Wrath-Scryer Soccothrates  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 8.0, `ManaModifier` = 1.0 WHERE `entry`=20886;

/*  Solus the Eternal  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 5.0 WHERE `entry`=20888;

/*  Ethereum Prisoner (Group Energy Ball)  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=20889;

/*  Ethereum Slayer  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 5.35, `ManaModifier` = 1.0 WHERE `entry`=20896;

/*  Ethereum Wave-Caster  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 5.35 WHERE `entry`=20897;

/*  Gargantuan Abyssal  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 10.0 WHERE `entry`=20898;

/*  Void Conduit  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 4.0 WHERE `entry`=20899;

/*  Unchained Doombringer  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 10.0 WHERE `entry`=20900;

/*  Sargeron Archer  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 6.75 WHERE `entry`=20901;

/*  Sargeron Hellcaller  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 6.75 WHERE `entry`=20902;

/*  Protectorate Nether Drake  */
UPDATE `creature_template` SET `speed_walk` = 1.1, `speed_run` = 1.14286, `DamageModifier` = 0.007 WHERE `entry`=20903;

/*  Warden Mellichar  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 1.2 WHERE `entry`=20904;

/*  Blazing Trickster  */
UPDATE `creature_template` SET `DamageModifier` = 6.0 WHERE `entry`=20905;

/*  Phase-Hunter  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 9.015, `ManaModifier` = 1.0 WHERE `entry`=20906;

/*  Professor Dabiri  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.6 WHERE `entry`=20907;

/*  Akkiris Lightning-Waker  */
UPDATE `creature_template` SET `DamageModifier` = 6.514 WHERE `entry`=20908;

/*  Sulfuron Magma-Thrower  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 7.014 WHERE `entry`=20909;

/*  Twilight Drakonaar  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 8.0, `ManaModifier` = 1.0 WHERE `entry`=20910;

/*  Blackwing Drakonaar  */
UPDATE `creature_template` SET `DamageModifier` = 8.0, `ManaModifier` = 1.0 WHERE `entry`=20911;

/*  Harbinger Skyriss  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 4.0 WHERE `entry`=20912;

/*  Tashar  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=20913;

/*  Noko Moonwhisper  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20915;

/*  Xerintha Ravenoak  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20916;

/*  Zinyen Swiftstrider  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20917;

/*  Deathforge Felstalker  */
UPDATE `creature_template` SET `DamageModifier` = 1.4 WHERE `entry`=20918;

/*  Magister Theledorn  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 1.0 WHERE `entry`=20920;

/*  Shauly Pore  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.6 WHERE `entry`=20921;

/*  Fallen Vindicator  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 1.2 WHERE `entry`=20922;

/*  Blood Guard Porung  */
UPDATE `creature_template` SET `DamageModifier` = 7.5 WHERE `entry`=20923;

/*  Grishnath Basilisk  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 4.055 WHERE `entry`=20924;

/*  Scalded Basilisk  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20925;

/*  Gan'arg Technomancer  */
UPDATE `creature_template` SET `DamageModifier` = 1.4 WHERE `entry`=20927;

/*  Ironspine Forgelord  */
UPDATE `creature_template` SET `speed_walk` = 0.944444, `speed_run` = 0.952381, `DamageModifier` = 0.5 WHERE `entry`=20928;

/*  Wrath Lord  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20929;

/*  Hatecryer  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20930;

/*  Tyrantus  */
UPDATE `creature_template` SET `DamageModifier` = 1.7 WHERE `entry`=20931;

/*  Nuramoc  */
UPDATE `creature_template` SET `speed_walk` = 1.78, `rank` = 4, `DamageModifier` = 1.8, `ManaModifier` = 1.0 WHERE `entry`=20932;

/*  Severed Defender  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=20934;

/*  Millhouse Manastorm  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 6.0, `ArmorModifier` = 1.59732 WHERE `entry`=20977;

/*  Wrath-Scryer's Felfire  */
UPDATE `creature_template` SET `speed_walk` = 0.01, `speed_run` = 1.14286, `DamageModifier` = 0.01 WHERE `entry`=20978;

/*  Dealer Najeeb  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20981;

/*  Mutated Farahlon Lasher  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `ArmorModifier` = 0.976895 WHERE `entry`=20983;

/*  Protectorate Defender  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.977915 WHERE `entry`=20984;

/*  Captain Saeed  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.5 WHERE `entry`=20985;

/*  Ruuan Weald Basilisk  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20987;

/*  Sunseeker Engineer  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 4.66 WHERE `entry`=20988;

/*  Bloodwarder Physician  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 4.66 WHERE `entry`=20990;

/*  Blood Guard Porung (1)  */
UPDATE `creature_template` SET `DamageModifier` = 13.0, `HealthModifier` = 18.9 WHERE `entry`=20992;

/*  Blood Guard Porung (1)  */
UPDATE `creature_template` SET `DamageModifier` = 7.5, `HealthModifier` = 14.0 WHERE `entry`=20993;

/*  Sunfury Elite  */
UPDATE `creature_template` SET `ArmorModifier` = 0.975775 WHERE `entry`=20994;

/*  Shadowmoon Villager  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=20995;

/*  Ridgespine Horror  */
UPDATE `creature_template` SET `minlevel` = 67, `speed_walk` = 1.125, `speed_run` = 1.14286, `ArmorModifier` = 0.975775 WHERE `entry`=20998;

/*  Scalewing Soarer  */
UPDATE `creature_template` SET `ArmorModifier` = 0.974483 WHERE `entry`=20999;

/*  Lesser Nether Drake  */
UPDATE `creature_template` SET `speed_walk` = 0.666668 WHERE `entry`=21004;

/*  Azurebeak  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 1.5 WHERE `entry`=21005;

/*  Lieutenant Meridian  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21006;

/*  Sergeant Chawni  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21007;

/*  Scorch Imp  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21021;

/*  Grovestalker Lynx  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 1.1, `ArmorModifier` = 0.973171 WHERE `entry`=21022;

/*  Stronglimb Deeproot  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=21023;

/*  Earthmender Torlok  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21024;

/*  Earthmender Gorboto  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21026;

/*  Earthmender Wilda  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21027;

/*  Captured Water Spirit  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.35 WHERE `entry`=21029;

/*  Wrath-Scryer's Charge Target  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.01 WHERE `entry`=21030;

/*  Dreadwing  */
UPDATE `creature_template` SET `DamageModifier` = 1.1 WHERE `entry`=21032;

/*  Bladewing Bloodletter  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=21033;

/*  Dimensius the All-Devouring 000  */
UPDATE `creature_template` SET `DamageModifier` = 9.0, `HealthModifier` = 40.0 WHERE `entry`=21035;

/*  Outraged Raven's Wood Sapling  */
UPDATE `creature_template` SET `DamageModifier` = 1.8 WHERE `entry`=21040;

/*  Earthmender Wilda Trigger  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 1.33333 WHERE `entry`=21041;

/*  Dire Raven  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `ArmorModifier` = 0.975775 WHERE `entry`=21042;

/*  Coilskar Assassin  */
UPDATE `creature_template` SET `DamageModifier` = 1.4, `ArmorModifier` = 0.976895 WHERE `entry`=21044;

/*  Hired Bodyguard  */
UPDATE `creature_template` SET `DamageModifier` = 2.5 WHERE `entry`=21045;

/*  Boulder'mok Brute  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21046;

/*  Boulder'mok Shaman  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21047;

/*  Boulder'mok Chieftain  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21048;

/*  Spirit of the Past  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=21049;

/*  Enraged Earth Spirit  */
UPDATE `creature_template` SET `DamageModifier` = 1.2, `ArmorModifier` = 0.976895 WHERE `entry`=21050;

/*  Blade's Edge - Orb Trigger 02  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 1.33333 WHERE `entry`=21051;

/*  Camera Shaker - Altar of Damnation  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=21052;

/*  Blade's Edge - Orb Trigger 03  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21053;

/*  Nexus-Prince Razaan  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21057;

/*  Disembodied Exarch  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.6 WHERE `entry`=21058;

/*  Enraged Water Spirit  */
UPDATE `creature_template` SET `DamageModifier` = 0.8, `ArmorModifier` = 0.986437 WHERE `entry`=21059;

/*  Enraged Air Spirit  */
UPDATE `creature_template` SET `DamageModifier` = 0.85 WHERE `entry`=21060;

/*  Enraged Fire Spirit  */
UPDATE `creature_template` SET `DamageModifier` = 0.8, `ArmorModifier` = 0.976895 WHERE `entry`=21061;

/*  Tormented Citizen  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=21065;

/*  Rina Moonspring  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=21066;

/*  Living Grove Defender  */
UPDATE `creature_template` SET `ArmorModifier` = 0.973171 WHERE `entry`=21072;

/*  Living Grove Defender Trigger  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21074;

/*  Farahlon Crumbler  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=21077;

/*  Farahlon Shardling  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 1.9 WHERE `entry`=21078;

/*  Cragskaar Shardling  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21079;

/*  Dormant Infernal  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=21080;

/*  Mok'Nathal Hunter  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 2.0 WHERE `entry`=21081;

/*  Krugash  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21082;

/*  Erool  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21083;

/*  Braagor  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21084;

/*  Ragar  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21085;

/*  Ruka  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21086;

/*  Grikka  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21087;

/*  Matron Varah  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21088;

/*  Sunfury Blood Knight  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21089;

/*  Professor Dabiri  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.2 WHERE `entry`=21090;

/*  Dancing Sword  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 1.0, `ArmorModifier` = 1.33333, `ManaModifier` = 1.0 WHERE `entry`=21093;

/*  Enraged Fiery Soul  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.01, `ArmorModifier` = 0.976895, `ManaModifier` = 1.0 WHERE `entry`=21097;

/*  Unbound Void Zone  */
UPDATE `creature_template` SET `speed_walk` = 0.0001, `speed_run` = 1.14286, `DamageModifier` = 0.006 WHERE `entry`=21101;

/*  Uvuros  */
UPDATE `creature_template` SET `DamageModifier` = 9.0 WHERE `entry`=21102;

/*  Spiritcaller Grakosh  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=21103;

/*  Spiritcaller Roxnak  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=21105;

/*  Spiritcaller Skrash  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=21106;

/*  Spawn of Uvuros  */
UPDATE `creature_template` SET `speed_run` = 0.992063 WHERE `entry`=21108;

/*  Fizit "Doc" Clocktock  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21110;

/*  Bembil Knockhammer  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21111;

/*  Bossi Pentapiston  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21112;

/*  Sassa Weldwell  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21113;

/*  Station Technician  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.8 WHERE `entry`=21114;

/*  Station Guard  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.8 WHERE `entry`=21115;

/*  Enraged Airy Soul  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.01, `ManaModifier` = 1.0 WHERE `entry`=21116;

/*  Gor'drek  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21117;

/*  Razak Ironsides  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 1.8 WHERE `entry`=21118;

/*  Felsworn Scalewing  */
UPDATE `creature_template` SET `ArmorModifier` = 0.981161 WHERE `entry`=21123;

/*  Felsworn Daggermaw  */
UPDATE `creature_template` SET `DamageModifier` = 1.35, `ArmorModifier` = 0.979005 WHERE `entry`=21124;

/*  Coilfang Ray  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 3.6 WHERE `entry`=21128;

/*  Scorned Spirit of Earth  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.7 WHERE `entry`=21129;

/*  Scorned Spirit of Fire  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.7 WHERE `entry`=21130;

/*  Scorned Spirit of Water  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 1.4 WHERE `entry`=21131;

/*  Scorned Spirit of Air  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.7 WHERE `entry`=21132;

/*  Corporal Ironridge  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21133;

/*  Eye of the Citadel  */
UPDATE `creature_template` SET `DamageModifier` = 0.08 WHERE `entry`=21134;

/*  Fel Imp  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.5 WHERE `entry`=21135;

/*  Infinite Chronomancer  */
UPDATE `creature_template` SET `DamageModifier` = 2.5 WHERE `entry`=21136;

/*  Infinite Assassin  */
UPDATE `creature_template` SET `DamageModifier` = 2.3 WHERE `entry`=21137;

/*  Infinite Executioner  */
UPDATE `creature_template` SET `DamageModifier` = 2.5, `HealthModifier` = 1.25 WHERE `entry`=21138;

/*  Infinite Vanquisher  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.25 WHERE `entry`=21139;

/*  Rift Lord  */
UPDATE `creature_template` SET `minlevel` = 71, `maxlevel` = 71, `DamageModifier` = 4.0, `HealthModifier` = 5.568, `ManaModifier` = 1.0 WHERE `entry`=21140;

/*  Dire Timber Wolf Trigger  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21142;

/*  Little Azimi  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21145;

/*  Tor'chunk Twoclaws  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=21147;

/*  Rift Keeper  */
UPDATE `creature_template` SET `minlevel` = 71, `maxlevel` = 71, `DamageModifier` = 4.0, `HealthModifier` = 6.96 WHERE `entry`=21148;

/*  Borgrim Stouthammer  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=21151;

/*  Station Bot-Jock  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.8 WHERE `entry`=21152;

/*  Kor'kron Wyvern Rider  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=21153;

/*  Senior Sergeant Eveningshade  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=21155;

/*  Master Sergeant Thelaana  */
UPDATE `creature_template` SET `DamageModifier` = 6.0 WHERE `entry`=21156;

/*  Commander Skyshadow  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=21158;

/*  Conjured Water Elemental  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=21160;

/*  Bonechewer Orc  */
UPDATE `creature_template` SET `DamageModifier` = 1.4 WHERE `entry`=21161;

/*  Netharel  */
UPDATE `creature_template` SET `DamageModifier` = 5.0 WHERE `entry`=21164;

/*  Illidari Dreadlord  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=21166;

/*  Theras  */
UPDATE `creature_template` SET `DamageModifier` = 5.0 WHERE `entry`=21168;

/*  Netharel - Metamorphosis  */
UPDATE `creature_template` SET `DamageModifier` = 64.0, `ManaModifier` = 1.0 WHERE `entry`=21169;

/*  Honor Hold Gryphon Brigadier, South  */
UPDATE `creature_template` SET `DamageModifier` = 2.5 WHERE `entry`=21170;

/*  Alandien  */
UPDATE `creature_template` SET `DamageModifier` = 6.0 WHERE `entry`=21171;

/*  Magister Bloodhawk  */
UPDATE `creature_template` SET `DamageModifier` = 1.7 WHERE `entry`=21175;

/*  Bloodmaul Dire Wolf Trigger  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21176;

/*  Ezeleth  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=21177;

/*  Varedis  */
UPDATE `creature_template` SET `DamageModifier` = 8.0 WHERE `entry`=21178;

/*  Cyrukh the Firelord  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 16.0 WHERE `entry`=21181;

/*  Oronok Torn-heart  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21183;

/*  Nether Whelp Egg  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21185;

/*  Designer Island Fel Reaver [PH]  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=21187;

/*  Thadok  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21188;

/*  Crystal Flayer  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `ArmorModifier` = 0.974542 WHERE `entry`=21189;

/*  Kugnar  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21192;

/*  Gralga  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21193;

/*  Ru'zah  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21194;

/*  Domesticated Felboar  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.6 WHERE `entry`=21195;

/*  Ravenous Flayer  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.3 WHERE `entry`=21196;

/*  Bronwyn Stouthammer  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=21197;

/*  Ravenous Flayer Matriarch  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 1.2 WHERE `entry`=21205;

/*  Summoner Skartax  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=21207;

/*  Dumphry  */
UPDATE `creature_template` SET `DamageModifier` = 4.0, `ManaModifier` = 1.0 WHERE `entry`=21209;

/*  Vashj'ir Honor Guard  */
UPDATE `creature_template` SET `DamageModifier` = 25.0 WHERE `entry`=21218;

/*  Coilfang Warlock (UNUSED)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=21219;

/*  Coilfang Priestess  */
UPDATE `creature_template` SET `DamageModifier` = 16.0, `HealthModifier` = 25.0 WHERE `entry`=21220;

/*  Coilfang Beast-Tamer  */
UPDATE `creature_template` SET `DamageModifier` = 28.0, `HealthModifier` = 35.0 WHERE `entry`=21221;

/*  Undersea Rager  */
UPDATE `creature_template` SET `speed_walk` = 1.2, `DamageModifier` = 1.0, `HealthModifier` = 1.0 WHERE `entry`=21222;

/*  Tidewalker Depth-Seer  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `speed_run` = 1.71429, `DamageModifier` = 20.0 WHERE `entry`=21224;

/*  Tidewalker Warrior  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `speed_run` = 1.71429, `DamageModifier` = 20.0 WHERE `entry`=21225;

/*  Tidewalker Shaman  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `speed_run` = 1.71429, `DamageModifier` = 16.0 WHERE `entry`=21226;

/*  Tidewalker Harpooner  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `speed_run` = 1.71429, `DamageModifier` = 20.0 WHERE `entry`=21227;

/*  Tidewalker Hydromancer  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `speed_run` = 1.71429, `DamageModifier` = 16.0 WHERE `entry`=21228;

/*  Greyheart Tidecaller  */
UPDATE `creature_template` SET `DamageModifier` = 20.0, `HealthModifier` = 25.0 WHERE `entry`=21229;

/*  Greyheart Nether-Mage  */
UPDATE `creature_template` SET `DamageModifier` = 16.0, `HealthModifier` = 25.0 WHERE `entry`=21230;

/*  Greyheart Shield-Bearer  */
UPDATE `creature_template` SET `DamageModifier` = 25.0, `HealthModifier` = 25.0 WHERE `entry`=21231;

/*  Greyheart Skulker  */
UPDATE `creature_template` SET `DamageModifier` = 35.0, `HealthModifier` = 25.0, `ArmorModifier` = 0.754549 WHERE `entry`=21232;

/*  Legion Fel Cannon  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `ArmorModifier` = 0.975775 WHERE `entry`=21233;

/*  Bloodmaul Drudger  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21238;

/*  Bloodmaul Brutebane Stout Trigger  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 1.33333 WHERE `entry`=21241;

/*  Bonechewer Messenger  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=21244;

/*  Bonechewer Marauder  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=21245;

/*  Serpentshrine Sporebat  */
UPDATE `creature_template` SET `DamageModifier` = 15.0 WHERE `entry`=21246;

/*  Pink Elekk  */
UPDATE `creature_template` SET `DamageModifier` = 5.0 WHERE `entry`=21250;

/*  Underbog Colossus  */
UPDATE `creature_template` SET `DamageModifier` = 30.0, `HealthModifier` = 75.0 WHERE `entry`=21251;

/*  Tainted Water Elemental  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=21253;

/*  Dullgrom Dredger  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=21254;

/*  Umberhowl  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 3.0 WHERE `entry`=21255;

/*  Vurtok Axebreaker  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21256;

/*  Apothecary Zelana  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21257;

/*  Slain Neophyte  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=21258;

/*  Crash Bigbomb  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21259;

/*  Purified Water Elemental  */
UPDATE `creature_template` SET `DamageModifier` = 3.0, `HealthModifier` = 1.5 WHERE `entry`=21260;

/*  Big Wagon Full of Explosives Trigger  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21261;

/*  Greyheart Technician  */
UPDATE `creature_template` SET `DamageModifier` = 4.0, `HealthModifier` = 2.0 WHERE `entry`=21263;

/*  Seeping Ooze  */
UPDATE `creature_template` SET `DamageModifier` = 1.6, `ManaModifier` = 1.0 WHERE `entry`=21264;

/*  Parasitic Fleshling  */
UPDATE `creature_template` SET `DamageModifier` = 0.4, `ManaModifier` = 1.0 WHERE `entry`=21265;

/*  Netherstrand Longbow  */
UPDATE `creature_template` SET `speed_run` = 1.14286, `rank` = 1, `DamageModifier` = 15.0, `ManaModifier` = 1.0 WHERE `entry`=21268;

/*  Devastation  */
UPDATE `creature_template` SET `speed_run` = 1.14286, `DamageModifier` = 30.0, `HealthModifier` = 31.5, `ManaModifier` = 1.0 WHERE `entry`=21269;

/*  Cosmic Infuser  */
UPDATE `creature_template` SET `speed_run` = 1.14286, `DamageModifier` = 15.0, `HealthModifier` = 36.0, `ManaModifier` = 1.0 WHERE `entry`=21270;

/*  Infinity Blades  */
UPDATE `creature_template` SET `speed_run` = 1.14286, `DamageModifier` = 30.0, `ManaModifier` = 1.0 WHERE `entry`=21271;

/*  Warp Slicer  */
UPDATE `creature_template` SET `speed_run` = 1.14286, `DamageModifier` = 15.0, `HealthModifier` = 36.0, `ManaModifier` = 1.0 WHERE `entry`=21272;

/*  Phaseshift Bulwark  */
UPDATE `creature_template` SET `speed_run` = 1.14286, `rank` = 1, `DamageModifier` = 13.0, `ArmorModifier` = 1.88339, `ManaModifier` = 1.0 WHERE `entry`=21273;

/*  Staff of Disintegration  */
UPDATE `creature_template` SET `speed_run` = 1.14286, `DamageModifier` = 15.0, `ManaModifier` = 1.0 WHERE `entry`=21274;

/*  Harbinger Ardonan  */
UPDATE `creature_template` SET `DamageModifier` = 1.75 WHERE `entry`=21275;

/*  Kil'sorrow Agent  */
UPDATE `creature_template` SET `DamageModifier` = 1.4 WHERE `entry`=21276;

/*  Vindicator Vuuleen  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=21277;

/*  Apothecary Albreck  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21279;

/*  Megzeg Nukklebust  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21283;

/*  Auchenai Initiate  */
UPDATE `creature_template` SET `speed_walk` = 1.2 WHERE `entry`=21284;

/*  Ethereum Mace  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.007 WHERE `entry`=21286;

/*  Warbringer Razuun  */
UPDATE `creature_template` SET `speed_walk` = 0.888888, `speed_run` = 0.912699, `DamageModifier` = 1.1 WHERE `entry`=21287;

/*  Inactive Infernal  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=21289;

/*  Grom'tor, Son of Oronok  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.5 WHERE `entry`=21291;

/*  Borak, Son of Oronok  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21293;

/*  Coilskar Commander  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21295;

/*  Bladespire Champion  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.1 WHERE `entry`=21296;

/*  Coilfang Serpentguard  */
UPDATE `creature_template` SET `DamageModifier` = 26.0, `HealthModifier` = 25.0 WHERE `entry`=21298;

/*  Coilfang Fathom-Witch  */
UPDATE `creature_template` SET `DamageModifier` = 16.0, `HealthModifier` = 25.0 WHERE `entry`=21299;

/*  Fel Corrupter  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21300;

/*  Coilfang Shatterer  */
UPDATE `creature_template` SET `DamageModifier` = 26.0, `HealthModifier` = 25.0 WHERE `entry`=21301;

/*  Defender Corpse  */
UPDATE `creature_template` SET `speed_walk` = 0.0001, `DamageModifier` = 0.01 WHERE `entry`=21303;

/*  Warder Corpse  */
UPDATE `creature_template` SET `speed_walk` = 0.0001, `DamageModifier` = 0.01 WHERE `entry`=21304;

/*  Mutant Horror  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=21305;

/*  Cursed Scarab  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.8 WHERE `entry`=21306;

/*  Eva  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=21307;

/*  Cursed Scarab Summoner  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `ArmorModifier` = 1.33333 WHERE `entry`=21308;

/*  Painmistress Gabrissa  */
UPDATE `creature_template` SET `DamageModifier` = 1.4 WHERE `entry`=21309;

/*  Rokgah Bloodgrip  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.4, `HealthModifier` = 1.2138 WHERE `entry`=21311;

/*  Neophyte Guardian  */
UPDATE `creature_template` SET `DamageModifier` = 1.75 WHERE `entry`=21312;

/*  Dead Clefthoof  */
UPDATE `creature_template` SET `DamageModifier` = 0.01 WHERE `entry`=21313;

/*  Terrormaster  */
UPDATE `creature_template` SET `ArmorModifier` = 0.975775 WHERE `entry`=21314;

/*  Ruul the Darkener  */
UPDATE `creature_template` SET `DamageModifier` = 5.0 WHERE `entry`=21315;

/*  Deathforged Infernal  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=21316;

/*  Spirit of Ar'tor  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=21318;

/*  Gor Grimgut  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.7 WHERE `entry`=21319;

/*  Warp Storm  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 1.33333 WHERE `entry`=21322;

/*  Netherock Crumbler  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.4, `ArmorModifier` = 1.21172 WHERE `entry`=21323;

/*  Spirit Raven  */
UPDATE `creature_template` SET `DamageModifier` = 1.75 WHERE `entry`=21324;

/*  Raven's Wood Stonebark  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 4.0, `ArmorModifier` = 0.975976 WHERE `entry`=21325;

/*  Raven's Wood Leafbeard  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `ArmorModifier` = 0.975775 WHERE `entry`=21326;

/*  Apex Crumbler  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.971657 WHERE `entry`=21328;

/*  Kurdran Wildhammer  */
UPDATE `creature_template` SET `DamageModifier` = 100.0 WHERE `entry`=21330;

/*  Thorny Growth  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.4, `ManaModifier` = 1.0 WHERE `entry`=21331;

/*  Spirit Hunter  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.007 WHERE `entry`=21332;

/*  Veneratus Spawn Node  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.007 WHERE `entry`=21334;

/*  Tentacle of Markaru  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `ArmorModifier` = 1.33333 WHERE `entry`=21335;

/*  Illidari Shadowstalker  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21337;

/*  Coilfang Leper  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.75 WHERE `entry`=21338;

/*  Coilfang Hate-Screamer  */
UPDATE `creature_template` SET `DamageModifier` = 16.0, `HealthModifier` = 25.0 WHERE `entry`=21339;

/*  Victor  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 5.0 WHERE `entry`=21341;

/*  Alex  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 5.0 WHERE `entry`=21342;

/*  Harvey  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 5.0 WHERE `entry`=21343;

/*  Phil  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 5.0 WHERE `entry`=21344;

/*  Hugh  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 5.0 WHERE `entry`=21345;

/*  Sightless Eye  */
UPDATE `creature_template` SET `DamageModifier` = 0.1 WHERE `entry`=21346;

/*  Shadowmoon Valley Tuber Node  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.3 WHERE `entry`=21347;

/*  T'chali the Witch Doctor  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=21349;

/*  Gronn-Priest  */
UPDATE `creature_template` SET `DamageModifier` = 26.053, `HealthModifier` = 40.0 WHERE `entry`=21350;

/*  Ogre Building Bunny Large  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 1.33333 WHERE `entry`=21351;

/*  Ogre Building Bunny Summoner  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21352;

/*  Terokkar - Bone Wastes - Soul Trigger  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=21353;

/*  Designer Island Bear Orc Leader [PH]  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=21356;

/*  Wing Commander Nuainn  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.6 WHERE `entry`=21357;

/*  Blood Guard Gulmok  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=21359;

/*  Phoenix  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 0.857143, `DamageModifier` = 13.0, `HealthModifier` = 25.0 WHERE `entry`=21362;

/*  Phoenix Egg  */
UPDATE `creature_template` SET `speed_walk` = 0.0001, `speed_run` = 1.14286, `DamageModifier` = 0.007 WHERE `entry`=21364;

/*  Ethereal Plunderer  */
UPDATE `creature_template` SET `ArmorModifier` = 0.97165 WHERE `entry`=21368;

/*  Ethereal Nethermancer  */
UPDATE `creature_template` SET `ArmorModifier` = 0.972164 WHERE `entry`=21370;

/*  Silkwing  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0, `ManaModifier` = 1.0 WHERE `entry`=21373;

/*  Plump Silkwing Larva  */
UPDATE `creature_template` SET `DamageModifier` = 1.4, `ArmorModifier` = 0.974542 WHERE `entry`=21375;

/*  Greater Crust Burster  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.19048 WHERE `entry`=21380;

/*  Young Crust Burster  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21381;

/*  Wyrmcult Zealot  */
UPDATE `creature_template` SET `speed_run` = 0.857143, `ArmorModifier` = 0.974483 WHERE `entry`=21382;

/*  Wyrmcult Acolyte  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `ArmorModifier` = 0.901902 WHERE `entry`=21383;

/*  Dark Conclave Harbinger  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21384;

/*  Dark Conclave Scorncrow  */
UPDATE `creature_template` SET `ArmorModifier` = 0.975976 WHERE `entry`=21385;

/*  Wyrmcult Blackwhelp  */
UPDATE `creature_template` SET `DamageModifier` = 1.2, `ArmorModifier` = 0.971371 WHERE `entry`=21387;

/*  Maxnar the Ashmaw  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 1.4 WHERE `entry`=21389;

/*  Protean Spawn  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 3.3 WHERE `entry`=21395;

/*  Theine Brightsong  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21398;

/*  Erick Nateson  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=21399;

/*  Eckert  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=21400;

/*  Anchorite Ceyla  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=21402;

/*  Legion Hold Fel Reaver  */
UPDATE `creature_template` SET `DamageModifier` = 3.7, `ArmorModifier` = 1.42182 WHERE `entry`=21404;

/*  Ethereal Arcanist  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `ArmorModifier` = 0.971963 WHERE `entry`=21405;

/*  Felfire Diemetradon  */
UPDATE `creature_template` SET `ArmorModifier` = 0.975775 WHERE `entry`=21408;

/*  Envoy Icarius  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21409;

/*  Blood Lord Zarath  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 30.0 WHERE `entry`=21410;

/*  Tobias the Filth Gorger  */
UPDATE `creature_template` SET `DamageModifier` = 1.6 WHERE `entry`=21411;

/*  Negaton Field  */
UPDATE `creature_template` SET `speed_walk` = 0.0001, `speed_run` = 1.14286, `DamageModifier` = 0.007 WHERE `entry`=21414;

/*  Lakaan  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 1.1 WHERE `entry`=21416;

/*  Infernal Attacker  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=21419;

/*  Gore-Scythe Ravager  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.8 WHERE `entry`=21423;

/*  Nexus-King Salhadaar  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=21425;

/*  Gnome Defender - 209  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 1.2, `ManaModifier` = 1.0 WHERE `entry`=21426;

/*  Strider Jock  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 3.0 WHERE `entry`=21427;

/*  Corrupted Water Elemental  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.32 WHERE `entry`=21428;

/*  Unliving Draenei  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21430;

/*  Gordie  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=21434;

/*  Station Sharpshooter  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.8 WHERE `entry`=21441;

/*  Bone Wastes - Orb Waypoint 01  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=21443;

/*  Tempixx Finagler  */
UPDATE `creature_template` SET `DamageModifier` = 6.0 WHERE `entry`=21444;

/*  Bladespire Evil Spirit  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=21446;

/*  Cursed Spirit  */
UPDATE `creature_template` SET `speed_walk` = 1.2, `DamageModifier` = 0.3 WHERE `entry`=21449;

/*  Bloodmaul Evil Spirit  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.4 WHERE `entry`=21452;

/*  Ogre Building Bunny Small  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 1.33333 WHERE `entry`=21456;

/*  Trayana  */
UPDATE `creature_template` SET `DamageModifier` = 2.5 WHERE `entry`=21458;

/*  Wyrmcult Dragon Egg  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=21459;

/*  Tally Zapnabber  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.75 WHERE `entry`=21460;

/*  Greater Felfire Diemetradon  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976895 WHERE `entry`=21462;

/*  David Wayne  */
UPDATE `creature_template` SET `DamageModifier` = 1.25 WHERE `entry`=21465;

/*  Harbinger Skyriss  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 4.0 WHERE `entry`=21466;

/*  Harbinger Skyriss  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 4.0 WHERE `entry`=21467;

/*  Daranelle  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.4 WHERE `entry`=21469;

/*  Stormer Ewan Wildwing  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=21471;

/*  Gryphonrider Nordin  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=21472;

/*  Coreiel  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=21474;

/*  Scout Zagran  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=21475;

/*  Mokthar Grimblade  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=21476;

/*  Rocknail Flayer  */
UPDATE `creature_template` SET `DamageModifier` = 0.27 WHERE `entry`=21477;

/*  Rocknail Ripper  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `DamageModifier` = 0.75 WHERE `entry`=21478;

/*  Tasaldan  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=21483;

/*  Embelar  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=21484;

/*  Aldraan  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 1.0 WHERE `entry`=21485;

/*  Cendrii  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 1.0 WHERE `entry`=21487;

/*  Banro  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 1.0 WHERE `entry`=21488;

/*  Wyrmcult Blessed  */
UPDATE `creature_template` SET `speed_walk` = 0.888888, `ArmorModifier` = 0.972172 WHERE `entry`=21492;

/*  Kablamm Farflinger  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.7 WHERE `entry`=21493;

/*  Smiles O'Byron  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.8 WHERE `entry`=21494;

/*  Raven Vision  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=21495;

/*  Dertrok  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.8 WHERE `entry`=21496;

/*  Blackscale  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 3.5 WHERE `entry`=21497;

/*  Ogre Building Cursed Spirit Bunny  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 1.33333 WHERE `entry`=21498;

/*  Overseer Ripsaw  */
UPDATE `creature_template` SET `speed_walk` = 0.944444, `speed_run` = 0.952381 WHERE `entry`=21499;

/*  Morgroron  */
UPDATE `creature_template` SET `speed_walk` = 0.777776, `speed_run` = 0.992063, `DamageModifier` = 3.3, `ArmorModifier` = 0.978224 WHERE `entry`=21500;

/*  Makazradon  */
UPDATE `creature_template` SET `speed_walk` = 0.777776, `speed_run` = 0.992063, `DamageModifier` = 3.3, `ArmorModifier` = 0.978435 WHERE `entry`=21501;

/*  Image of Warbringer Razuun  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.3 WHERE `entry`=21502;

/*  Sunfury Warlock  */
UPDATE `creature_template` SET `ArmorModifier` = 0.9019 WHERE `entry`=21503;

/*  Pathaleon the Calculator's Image  */
UPDATE `creature_template` SET `DamageModifier` = 1.3, `ManaModifier` = 1.0 WHERE `entry`=21504;

/*  Azaloth  */
UPDATE `creature_template` SET `speed_walk` = 0.777776, `speed_run` = 0.992063, `DamageModifier` = 4.0 WHERE `entry`=21506;

/*  Coilfang Frenzy  */
UPDATE `creature_template` SET `speed_run` = 2.14286 WHERE `entry`=21508;

/*  Gorgrom the Dragon-Eater  */
UPDATE `creature_template` SET `speed_walk` = 3.0, `speed_run` = 3.0, `DamageModifier` = 16.0 WHERE `entry`=21514;

/*  Trachela  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.5 WHERE `entry`=21515;

/*  Death's Watch  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `DamageModifier` = 2.0 WHERE `entry`=21516;

/*  Death's Might  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21519;

/*  Illidari Jailor  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=21520;

/*  Arcane Servant (1)  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=21521;

/*  Bloodwarder Centurion (1)  */
UPDATE `creature_template` SET `minlevel` = 71, `DamageModifier` = 12.0 WHERE `entry`=21522;

/*  Bloodwarder Physician (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 10.0 WHERE `entry`=21523;

/*  Bloodwarder Slayer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 12.0, `ManaModifier` = 1.0 WHERE `entry`=21524;

/*  Gatewatcher Gyro-Kill (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 8.0 WHERE `entry`=21525;

/*  Gatewatcher Iron-Hand (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 8.0 WHERE `entry`=21526;

/*  Mechanar Crusher (1)  */
UPDATE `creature_template` SET `DamageModifier` = 13.0 WHERE `entry`=21527;

/*  Mechanar Driller (1)  */
UPDATE `creature_template` SET `DamageModifier` = 13.0 WHERE `entry`=21528;

/*  Mechanar Tinkerer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 5.0, `ManaModifier` = 1.0 WHERE `entry`=21531;

/*  Mechanar Wrecker (1)  */
UPDATE `creature_template` SET `DamageModifier` = 14.0 WHERE `entry`=21532;

/*  Mechano-Lord Capacitus (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 8.0 WHERE `entry`=21533;

/*  Nether Charge (1)  */
UPDATE `creature_template` SET `speed_walk` = 0.7, `speed_run` = 1.14286 WHERE `entry`=21534;

/*  Nethermancer Sepethrea (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 6.5 WHERE `entry`=21536;

/*  Pathaleon the Calculator (1)  */
UPDATE `creature_template` SET `DamageModifier` = 16.0 WHERE `entry`=21537;

/*  Sunseeker Engineer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 12.0 WHERE `entry`=21540;

/*  Sunseeker Netherbinder (1)  */
UPDATE `creature_template` SET `DamageModifier` = 20.0 WHERE `entry`=21541;

/*  Tempest-Forge Destroyer (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.42857, `DamageModifier` = 24.0 WHERE `entry`=21542;

/*  Tempest-Forge Patroller (1)  */
UPDATE `creature_template` SET `DamageModifier` = 12.0 WHERE `entry`=21543;

/*  Bloodfalcon (1)  */
UPDATE `creature_template` SET `DamageModifier` = 13.0 WHERE `entry`=21544;

/*  Bloodwarder Falconer (1)  */
UPDATE `creature_template` SET `minlevel` = 71, `DamageModifier` = 12.0 WHERE `entry`=21545;

/*  Bloodwarder Greenkeeper (1)  */
UPDATE `creature_template` SET `DamageModifier` = 12.0 WHERE `entry`=21546;

/*  Bloodwarder Mender (1)  */
UPDATE `creature_template` SET `DamageModifier` = 15.0 WHERE `entry`=21547;

/*  Bloodwarder Protector (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 13.0 WHERE `entry`=21548;

/*  Bloodwarder Steward (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 12.5 WHERE `entry`=21549;

/*  Blue Seedling (1)  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=21550;

/*  Commander Sarannis (1)  */
UPDATE `creature_template` SET `DamageModifier` = 13.0 WHERE `entry`=21551;

/*  Frayer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 5.0 WHERE `entry`=21552;

/*  Frayer Protector (1)  */
UPDATE `creature_template` SET `DamageModifier` = 7.0 WHERE `entry`=21553;

/*  Frayer Wildling (1)  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=21554;

/*  Greater Frayer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 8.0 WHERE `entry`=21555;

/*  Greater Sapling (1)  */
UPDATE `creature_template` SET `DamageModifier` = 0.007 WHERE `entry`=21556;

/*  Green Seedling (1)  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=21557;

/*  Mutate Fear-Shrieker (1)  */
UPDATE `creature_template` SET `DamageModifier` = 10.0 WHERE `entry`=21560;

/*  Mutate Horror (1)  */
UPDATE `creature_template` SET `DamageModifier` = 11.0 WHERE `entry`=21562;

/*  Nethervine Inciter (1)  */
UPDATE `creature_template` SET `DamageModifier` = 14.0 WHERE `entry`=21563;

/*  Nethervine Reaper (1)  */
UPDATE `creature_template` SET `DamageModifier` = 12.0 WHERE `entry`=21564;

/*  Nethervine Trickster (1)  */
UPDATE `creature_template` SET `DamageModifier` = 12.0 WHERE `entry`=21565;

/*  Red Seedling (1)  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=21566;

/*  Sapling (1)  */
UPDATE `creature_template` SET `speed_walk` = 0.8, `speed_run` = 0.285714, `DamageModifier` = 7.0 WHERE `entry`=21567;

/*  Summoned Bloodwarder Reservist (1)  */
UPDATE `creature_template` SET `DamageModifier` = 10.5 WHERE `entry`=21569;

/*  Sunseeker Botanist (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 12.0 WHERE `entry`=21570;

/*  Sunseeker Channeler (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 14.0 WHERE `entry`=21571;

/*  Sunseeker Chemist (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 13.0 WHERE `entry`=21572;

/*  Sunseeker Gene-Splicer (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 15.0 WHERE `entry`=21573;

/*  Sunseeker Geomancer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 13.0 WHERE `entry`=21574;

/*  Sunseeker Harvester (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 13.0 WHERE `entry`=21575;

/*  Sunseeker Herbalist (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 12.0 WHERE `entry`=21576;

/*  Sunseeker Researcher (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 13.0 WHERE `entry`=21577;

/*  Tempest-Forge Peacekeeper (1)  */
UPDATE `creature_template` SET `DamageModifier` = 14.5 WHERE `entry`=21578;

/*  Thorn Flayer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 10.0 WHERE `entry`=21579;

/*  Thorn Lasher (1)  */
UPDATE `creature_template` SET `DamageModifier` = 12.5 WHERE `entry`=21580;

/*  White Seedling (1)  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=21583;

/*  Arcatraz Defender (1)  */
UPDATE `creature_template` SET `minlevel` = 68, `maxlevel` = 69, `DamageModifier` = 7.0 WHERE `entry`=21585;

/*  Arcatraz Sentinel (1)  */
UPDATE `creature_template` SET `DamageModifier` = 20.0 WHERE `entry`=21586;

/*  Arcatraz Warder (1)  */
UPDATE `creature_template` SET `minlevel` = 68, `maxlevel` = 69, `DamageModifier` = 7.0 WHERE `entry`=21587;

/*  Blackwing Drakonaar (1)  */
UPDATE `creature_template` SET `DamageModifier` = 20.0, `ManaModifier` = 1.0 WHERE `entry`=21588;

/*  Blazing Trickster (1)  */
UPDATE `creature_template` SET `DamageModifier` = 14.0 WHERE `entry`=21589;

/*  Dalliah the Doomsayer (1)  */
UPDATE `creature_template` SET `speed_run` = 1.14286, `DamageModifier` = 8.5 WHERE `entry`=21590;

/*  Death Watcher (1)  */
UPDATE `creature_template` SET `DamageModifier` = 20.0 WHERE `entry`=21591;

/*  Defender Corpse (1)  */
UPDATE `creature_template` SET `minlevel` = 68, `maxlevel` = 69, `DamageModifier` = 0.01 WHERE `entry`=21592;

/*  Entropic Eye (1)  */
UPDATE `creature_template` SET `DamageModifier` = 17.5 WHERE `entry`=21593;

/*  Eredar Deathbringer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 20.0 WHERE `entry`=21594;

/*  Eredar Soul-Eater (1)  */
UPDATE `creature_template` SET `DamageModifier` = 30.0 WHERE `entry`=21595;

/*  Ethereum Slayer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 10.0, `ManaModifier` = 1.0 WHERE `entry`=21596;

/*  Ethereum Wave-Caster (1)  */
UPDATE `creature_template` SET `DamageModifier` = 6.0 WHERE `entry`=21597;

/*  Gargantuan Abyssal (1)  */
UPDATE `creature_template` SET `DamageModifier` = 25.0 WHERE `entry`=21598;

/*  Harbinger Skyriss (1)  */
UPDATE `creature_template` SET `DamageModifier` = 8.0 WHERE `entry`=21599;

/*  Harbinger Skyriss (1)  */
UPDATE `creature_template` SET `DamageModifier` = 8.0 WHERE `entry`=21600;

/*  Harbinger Skyriss (1)  */
UPDATE `creature_template` SET `DamageModifier` = 8.0, `HealthModifier` = 8.0 WHERE `entry`=21601;

/*  Millhouse Manastorm (1)  */
UPDATE `creature_template` SET `DamageModifier` = 6.0, `ArmorModifier` = 1.59732 WHERE `entry`=21602;

/*  Negaton Field (1)  */
UPDATE `creature_template` SET `DamageModifier` = 0.007 WHERE `entry`=21603;

/*  Negaton Screamer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 17.5 WHERE `entry`=21604;

/*  Negaton Warp-Master (1)  */
UPDATE `creature_template` SET `DamageModifier` = 22.0, `ArmorModifier` = 1.2 WHERE `entry`=21605;

/*  Phase-Hunter (1)  */
UPDATE `creature_template` SET `DamageModifier` = 24.0, `ManaModifier` = 1.0 WHERE `entry`=21606;

/*  Protean Horror (1)  */
UPDATE `creature_template` SET `minlevel` = 68, `maxlevel` = 69, `DamageModifier` = 9.0 WHERE `entry`=21607;

/*  Protean Nightmare (1)  */
UPDATE `creature_template` SET `DamageModifier` = 5.0 WHERE `entry`=21608;

/*  Protean Spawn (1)  */
UPDATE `creature_template` SET `minlevel` = 68, `maxlevel` = 69, `DamageModifier` = 4.2, `HealthModifier` = 0.6885 WHERE `entry`=21609;

/*  Sargeron Archer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 17.0 WHERE `entry`=21610;

/*  Sargeron Hellcaller (1)  */
UPDATE `creature_template` SET `DamageModifier` = 17.0 WHERE `entry`=21611;

/*  Sightless Eye (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 2.42857, `DamageModifier` = 0.26 WHERE `entry`=21612;

/*  Skulking Witch (1)  */
UPDATE `creature_template` SET `DamageModifier` = 20.0, `ManaModifier` = 1.0 WHERE `entry`=21613;

/*  Soul Devourer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 20.0 WHERE `entry`=21614;

/*  Spiteful Temptress (1)  */
UPDATE `creature_template` SET `DamageModifier` = 25.0 WHERE `entry`=21615;

/*  Sulfuron Magma-Thrower (1)  */
UPDATE `creature_template` SET `DamageModifier` = 17.5 WHERE `entry`=21616;

/*  Akkiris Lightning-Waker (1)  */
UPDATE `creature_template` SET `DamageModifier` = 14.0 WHERE `entry`=21617;

/*  Twilight Drakonaar (1)  */
UPDATE `creature_template` SET `DamageModifier` = 24.0, `ManaModifier` = 1.0 WHERE `entry`=21618;

/*  Unbound Devastator (1)  */
UPDATE `creature_template` SET `DamageModifier` = 20.0 WHERE `entry`=21619;

/*  Unbound Void Zone (1)  */
UPDATE `creature_template` SET `DamageModifier` = 0.006 WHERE `entry`=21620;

/*  Unchained Doombringer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 20.0 WHERE `entry`=21621;

/*  Warden Mellichar (1)  */
UPDATE `creature_template` SET `speed_run` = 1.14286, `DamageModifier` = 3.0 WHERE `entry`=21622;

/*  Warder Corpse (1)  */
UPDATE `creature_template` SET `minlevel` = 68, `maxlevel` = 69, `DamageModifier` = 0.01 WHERE `entry`=21623;

/*  Wrath-Scryer Soccothrates (1)  */
UPDATE `creature_template` SET `speed_run` = 1.14286, `DamageModifier` = 15.0, `ManaModifier` = 1.0 WHERE `entry`=21624;

/*  Wrath-Scryer's Felfire (1)  */
UPDATE `creature_template` SET `DamageModifier` = 0.007 WHERE `entry`=21625;

/*  Zereketh the Unbound (1)  */
UPDATE `creature_template` SET `speed_run` = 1.14286, `DamageModifier` = 10.0 WHERE `entry`=21626;

/*  Eclipsion Hawkstrider  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.6 WHERE `entry`=21627;

/*  Highborne Lamenter  */
UPDATE `creature_template` SET `DamageModifier` = 1.3, `HealthModifier` = 1.25 WHERE `entry`=21628;

/*  Deathbringer Jovaan  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 1.4 WHERE `entry`=21633;

/*  Forest Strider  */
UPDATE `creature_template` SET `DamageModifier` = 0.65, `ArmorModifier` = 0.973171 WHERE `entry`=21634;

/*  Afrazi Forest Strider  */
UPDATE `creature_template` SET `speed_walk` = 0.666668 WHERE `entry`=21635;

/*  Vengeful Draenei  */
UPDATE `creature_template` SET `DamageModifier` = 1.4 WHERE `entry`=21636;

/*  Wyrmcult Scout  */
UPDATE `creature_template` SET `speed_run` = 0.857143, `ArmorModifier` = 0.974483 WHERE `entry`=21637;

/*  Vengeful Harbinger  */
UPDATE `creature_template` SET `DamageModifier` = 1.4 WHERE `entry`=21638;

/*  Illidari Slayer  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 10.0 WHERE `entry`=21639;

/*  Trogma  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.973171 WHERE `entry`=21640;

/*  Lament of the Highborne Spell Bunny  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=21641;

/*  Skettis Wing Guard  */
UPDATE `creature_template` SET `ArmorModifier` = 0.979123 WHERE `entry`=21644;

/*  Felguard Brute (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `speed_walk` = 1.0, `speed_run` = 1.42857, `DamageModifier` = 10.0 WHERE `entry`=21645;

/*  Hellfire Familiar (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 1.25 WHERE `entry`=21646;

/*  Shadowmoon Sorcerer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 0.01 WHERE `entry`=21647;

/*  Mature Netherwing Drake  */
UPDATE `creature_template` SET `speed_walk` = 0.666668, `DamageModifier` = 3.3, `ManaModifier` = 1.0 WHERE `entry`=21648;

/*  Skettis Windwalker  */
UPDATE `creature_template` SET `ArmorModifier` = 0.978999 WHERE `entry`=21649;

/*  Time-Lost Skettis Reaver  */
UPDATE `creature_template` SET `ArmorModifier` = 0.979264 WHERE `entry`=21651;

/*  Skettis Time-Shifter  */
UPDATE `creature_template` SET `ArmorModifier` = 0.979845 WHERE `entry`=21652;

/*  Skettis Followers Spawner  */
UPDATE `creature_template` SET `DamageModifier` = 0.01 WHERE `entry`=21654;

/*  Neltharaku  */
UPDATE `creature_template` SET `DamageModifier` = 1.6 WHERE `entry`=21657;

/*  [UNUSED]Death's Deliverer  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ArmorModifier` = 1.33333, `ManaModifier` = 1.0 WHERE `entry`=21658;

/*  Cabal Abjurist  */
UPDATE `creature_template` SET `speed_walk` = 1.2, `ArmorModifier` = 0.970268 WHERE `entry`=21660;

/*  Cabal Tomb-Raider  */
UPDATE `creature_template` SET `ArmorModifier` = 0.969946 WHERE `entry`=21662;

/*  Oronu the Elder  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 1.1 WHERE `entry`=21663;

/*  Human Charger  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=21664;

/*  Human Cleric  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=21682;

/*  Human Conjurer  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=21683;

/*  King Llane  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=21684;

/*  Oronok Torn-heart  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 1.33333, `ManaModifier` = 1.0 WHERE `entry`=21685;

/*  Borak, Son of Oronok  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 1.33333 WHERE `entry`=21686;

/*  Grom'tor, Son of Oronok  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 1.33333 WHERE `entry`=21687;

/*  Coilfang Frenzy Corpse  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=21689;

/*  R-3D0  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=21690;

/*  Toshley  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.8 WHERE `entry`=21691;

/*  Cansis  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21692;

/*  Bog Overlord  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 13.0 WHERE `entry`=21694;

/*  Tidal Surger  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 5.5 WHERE `entry`=21695;

/*  Steam Surger  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 1.5 WHERE `entry`=21696;

/*  Infinite Chrono-Lord  */
UPDATE `creature_template` SET `DamageModifier` = 6.013 WHERE `entry`=21697;

/*  Infinite Timereaver  */
UPDATE `creature_template` SET `DamageModifier` = 10.516 WHERE `entry`=21698;

/*  Maiev Shadowsong  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `DamageModifier` = 1.25 WHERE `entry`=21699;

/*  Akama  */
UPDATE `creature_template` SET `minlevel` = 73, `maxlevel` = 73, `speed_run` = 0.992063, `DamageModifier` = 30.0, `HealthModifier` = 165.0, `ManaModifier` = 100.0 WHERE `entry`=21700;

/*  Ashtongue Deathsworn  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=21701;

/*  Ethereum Life-Binder  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 5.35 WHERE `entry`=21702;

/*  Corrupted Fire Elemental  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.46 WHERE `entry`=21706;

/*  Corrupted Air Elemental  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.32 WHERE `entry`=21707;

/*  Corrupted Earth Elemental  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.86 WHERE `entry`=21708;

/*  Uylaru  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=21710;

/*  Haalum  */
UPDATE `creature_template` SET `DamageModifier` = 1.08 WHERE `entry`=21711;

/*  Dragonmaw Wrangler  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976895 WHERE `entry`=21717;

/*  Dragonmaw Subjugator  */
UPDATE `creature_template` SET `ArmorModifier` = 0.978261 WHERE `entry`=21718;

/*  Dragonmaw Shaman  */
UPDATE `creature_template` SET `ArmorModifier` = 0.978261 WHERE `entry`=21720;

/*  Enslaved Netherwing Whelp  */
UPDATE `creature_template` SET `DamageModifier` = 0.3, `HealthModifier` = 1.275 WHERE `entry`=21721;

/*  Enslaved Netherwing Drake  */
UPDATE `creature_template` SET `speed_walk` = 0.666668, `DamageModifier` = 0.3, `ManaModifier` = 1.0 WHERE `entry`=21722;

/*  Blackwind Sabercat  */
UPDATE `creature_template` SET `DamageModifier` = 1.3, `ArmorModifier` = 0.978981 WHERE `entry`=21723;

/*  Hawkbane  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=21724;

/*  Kagrosh  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=21725;

/*  Summoned Daemon  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=21726;

/*  Flanis Swiftwing  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=21727;

/*  Skettis Surger  */
UPDATE `creature_template` SET `ArmorModifier` = 0.978999 WHERE `entry`=21728;

/*  Electromental  */
UPDATE `creature_template` SET `speed_walk` = 1.0 WHERE `entry`=21729;

/*  Alluvion  */
UPDATE `creature_template` SET `DamageModifier` = 3.2 WHERE `entry`=21730;

/*  Encased Electromental  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 1.4 WHERE `entry`=21731;

/*  Zixxy  */
UPDATE `creature_template` SET `minlevel` = 67, `speed_walk` = 1.125, `HealthModifier` = 1.3281 WHERE `entry`=21734;

/*  Infernal Oversoul  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.4, `ArmorModifier` = 0.977077 WHERE `entry`=21735;

/*  Wildhammer Defender  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21736;

/*  Mini-Electromental Flavor  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21737;

/*  Redeemed Spirit of Air  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.75 WHERE `entry`=21738;

/*  Redeemed Spirit of Earth  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.75 WHERE `entry`=21739;

/*  Redeemed Spirit of Fire  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.75 WHERE `entry`=21740;

/*  Redeemed Spirit of Water  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 1.75 WHERE `entry`=21741;

/*  Sunfury Eradicator  */
UPDATE `creature_template` SET `ArmorModifier` = 0.975976 WHERE `entry`=21742;

/*  Orc Necrolyte  */
UPDATE `creature_template` SET `DamageModifier` = 4.4 WHERE `entry`=21747;

/*  Orc Wolf  */
UPDATE `creature_template` SET `DamageModifier` = 4.4 WHERE `entry`=21748;

/*  Shadowmoon Scout  */
UPDATE `creature_template` SET `DamageModifier` = 0.45 WHERE `entry`=21749;

/*  Orc Warlock  */
UPDATE `creature_template` SET `DamageModifier` = 4.4 WHERE `entry`=21750;

/*  Chubis  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=21751;

/*  Warchief Blackhand  */
UPDATE `creature_template` SET `DamageModifier` = 4.4 WHERE `entry`=21752;

/*  Shadow Council Felsworn  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21753;

/*  Shadow Council Zealot  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21754;

/*  Nickwinkle the Metro-Gnome  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=21755;

/*  Shadowmoon Mark of Kael  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `ArmorModifier` = 1.33333 WHERE `entry`=21756;

/*  Big Electromental Flavor  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21757;

/*  Oscillating Frequency Scanner Top Bunny (Caster)  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=21759;

/*  Oscillating Frequency Scanner Master Bunny  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=21760;

/*  Destroyed Sentinel  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.007 WHERE `entry`=21761;

/*  Time-Lost Skettis Worshipper  */
UPDATE `creature_template` SET `minlevel` = 70, `ArmorModifier` = 0.978999 WHERE `entry`=21763;

/*  Alieshor  */
UPDATE `creature_template` SET `DamageModifier` = 2.4 WHERE `entry`=21766;

/*  Harbinger of the Raven  */
UPDATE `creature_template` SET `DamageModifier` = 1.4 WHERE `entry`=21767;

/*  Overlord Or'barokh  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=21769;

/*  Researcher Tiorus  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21770;

/*  Warcaller Sardon Truslice  */
UPDATE `creature_template` SET `DamageModifier` = 2.3 WHERE `entry`=21771;

/*  Chief Apothecary Hildagard  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21772;

/*  Thane Yoregar  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21773;

/*  Zorus the Judicator  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21774;

/*  Warcaller Beersnout  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 1.7 WHERE `entry`=21775;

/*  Gnomus  */
UPDATE `creature_template` SET `DamageModifier` = 2.6 WHERE `entry`=21777;

/*  Doctor Gutrick  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21778;

/*  Doctor Maleficus  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21779;

/*  Spawn of Dimensius  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 1.4 WHERE `entry`=21780;

/*  Timeon  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=21782;

/*  Protectorate Regenerator  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.978261 WHERE `entry`=21783;

/*  Underbog Quaker (UNUSED)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=21785;

/*  Infernal Attacker (1)  */
UPDATE `creature_template` SET `minlevel` = 68, `speed_walk` = 1.0, `DamageModifier` = 0.01, `HealthModifier` = 1.0272 WHERE `entry`=21786;

/*  Shadowmoon Zealot  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.75, `HealthModifier` = 1.02 WHERE `entry`=21788;

/*  Nakansi  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.7 WHERE `entry`=21789;

/*  Plexi  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=21790;

/*  Shadowmoon Harbinger  */
UPDATE `creature_template` SET `ArmorModifier` = 0.977077 WHERE `entry`=21795;

/*  Ancient Shadowmoon Spirit  */
UPDATE `creature_template` SET `DamageModifier` = 3.8 WHERE `entry`=21797;

/*  Singing Ridge Void Storm  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=21798;

/*  Vhel'kur  */
UPDATE `creature_template` SET `DamageModifier` = 9.0 WHERE `entry`=21801;

/*  Elekk Demolisher  */
UPDATE `creature_template` SET `DamageModifier` = 0.8, `ManaModifier` = 1.0 WHERE `entry`=21802;

/*  Ashtongue Handler  */
UPDATE `creature_template` SET `DamageModifier` = 0.6, `ManaModifier` = 1.0 WHERE `entry`=21803;

/*  Skettis Kaliri  */
UPDATE `creature_template` SET `DamageModifier` = 0.45, `ManaModifier` = 1.0 WHERE `entry`=21804;

/*  Protectorate Avenger  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.978261 WHERE `entry`=21805;

/*  Greyheart Spellbinder  */
UPDATE `creature_template` SET `DamageModifier` = 24.0, `HealthModifier` = 20.0 WHERE `entry`=21806;

/*  Wyrmcult Poacher  */
UPDATE `creature_template` SET `speed_run` = 0.857143, `ArmorModifier` = 0.975394 WHERE `entry`=21809;

/*  Wyrmcult Hewer  */
UPDATE `creature_template` SET `speed_run` = 0.857143, `ArmorModifier` = 0.97573 WHERE `entry`=21810;

/*  Phantom Leotheras  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=21812;

/*  Cleric of Karabor  */
UPDATE `creature_template` SET `ArmorModifier` = 0.977915 WHERE `entry`=21815;

/*  Adolescent Nether Drake  */
UPDATE `creature_template` SET `DamageModifier` = 1.4 WHERE `entry`=21817;

/*  Infinite Whelp  */
UPDATE `creature_template` SET `DamageModifier` = 0.56 WHERE `entry`=21818;

/*  Proto-Nether Drake  */
UPDATE `creature_template` SET `DamageModifier` = 1.4 WHERE `entry`=21821;

/*  Vindicator Aluumen  */
UPDATE `creature_template` SET `DamageModifier` = 1.7 WHERE `entry`=21822;

/*  Dizzy Dina  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=21824;

/*  Sanoru  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=21826;

/*  Summoned Wrath Hound  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.6, `HealthModifier` = 1.02 WHERE `entry`=21837;

/*  Terokk  */
UPDATE `creature_template` SET `DamageModifier` = 10.0, `ManaModifier` = 1.0 WHERE `entry`=21838;

/*  Mature Silkwing  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.955285 WHERE `entry`=21839;

/*  Cosmetic Silkwing  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21840;

/*  Coilfang Ray (1)  */
UPDATE `creature_template` SET `DamageModifier` = 7.0, `ArmorModifier` = 1.0265 WHERE `entry`=21841;

/*  Coilfang Tempest (1)  */
UPDATE `creature_template` SET `DamageModifier` = 10.0 WHERE `entry`=21843;

/*  Mountain Colossus  */
UPDATE `creature_template` SET `DamageModifier` = 4.0, `ArmorModifier` = 0.979829 WHERE `entry`=21844;

/*  Slain Auchenai Warrior  */
UPDATE `creature_template` SET `speed_walk` = 1.2, `DamageModifier` = 0.3 WHERE `entry`=21846;

/*  Auchenai Warrior  */
UPDATE `creature_template` SET `speed_walk` = 1.2 WHERE `entry`=21852;

/*  Inner Demon  */
UPDATE `creature_template` SET `DamageModifier` = 5.2, `HealthModifier` = 1.488 WHERE `entry`=21857;

/*  Sha'tar Vindicator  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=21858;

/*  Slain Sha'tar Vindicator  */
UPDATE `creature_template` SET `speed_walk` = 1.2, `DamageModifier` = 0.3 WHERE `entry`=21859;

/*  Vision of the Raven God  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 1.33333 WHERE `entry`=21861;

/*  Serpentshrine Lurker  */
UPDATE `creature_template` SET `DamageModifier` = 24.0 WHERE `entry`=21863;

/*  Scorchshell Pincer  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976895 WHERE `entry`=21864;

/*  Coilfang Ambusher  */
UPDATE `creature_template` SET `speed_run` = 1.42857, `DamageModifier` = 1.0, `HealthModifier` = 5.0 WHERE `entry`=21865;

/*  Teron Gorefiend  */
UPDATE `creature_template` SET `speed_run` = 1.5, `DamageModifier` = 2.6, `HealthModifier` = 3.75 WHERE `entry`=21867;

/*  Crust Burster Test  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=21868;

/*  Unliving Guardian  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21869;

/*  Unliving Initiate  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21870;

/*  The Voice of Gorefiend  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `DamageModifier` = 0.01 WHERE `entry`=21872;

/*  Coilfang Guardian  */
UPDATE `creature_template` SET `speed_run` = 1.42857, `DamageModifier` = 30.0, `HealthModifier` = 10.0 WHERE `entry`=21873;

/*  Water Walker Elemental  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 7.0, `HealthModifier` = 15.0 WHERE `entry`=21874;

/*  Chain of Shadows  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=21876;

/*  Karsius the Ancient Watcher  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 10.0 WHERE `entry`=21877;

/*  Felboar  */
UPDATE `creature_template` SET `DamageModifier` = 1.75 WHERE `entry`=21878;

/*  Exploding Rune  */
UPDATE `creature_template` SET `speed_walk` = 1.2 WHERE `entry`=21880;

/*  Sethekk Slayer  */
UPDATE `creature_template` SET `DamageModifier` = 10.6, `ArmorModifier` = 0.975775 WHERE `entry`=21889;

/*  Avian Ripper  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21891;

/*  Xeleth  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 1.4 WHERE `entry`=21894;

/*  Taerek  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.8 WHERE `entry`=21895;

/*  Silmara  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.8 WHERE `entry`=21896;

/*  Felspine the Greater  */
UPDATE `creature_template` SET `DamageModifier` = 1.5 WHERE `entry`=21897;

/*  Cabal Spell-weaver  */
UPDATE `creature_template` SET `speed_run` = 1.0, `ArmorModifier` = 0.968379 WHERE `entry`=21902;

/*  Avian Warhawk  */
UPDATE `creature_template` SET `DamageModifier` = 5.0 WHERE `entry`=21904;

/*  Cabal Initiate  */
UPDATE `creature_template` SET `ArmorModifier` = 0.968379 WHERE `entry`=21907;

/*  Spellbound Terrorguard  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=21908;

/*  Arcano-Scorp  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=21909;

/*  Skettis Soulcaller  */
UPDATE `creature_template` SET `ArmorModifier` = 0.978999 WHERE `entry`=21911;

/*  Skettis Sentinel  */
UPDATE `creature_template` SET `ArmorModifier` = 0.979829 WHERE `entry`=21912;

/*  Bog Overlord (1)  */
UPDATE `creature_template` SET `DamageModifier` = 30.0 WHERE `entry`=21914;

/*  Coilfang Leper (1)  */
UPDATE `creature_template` SET `DamageModifier` = 3.5 WHERE `entry`=21915;

/*  Steam Surger (1)  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=21916;

/*  Tidal Surger (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 12.0 WHERE `entry`=21917;

/*  Coilfang Guardian (1)  */
UPDATE `creature_template` SET `DamageModifier` = 30.0 WHERE `entry`=21918;

/*  Coilfang Ambusher (1)  */
UPDATE `creature_template` SET `DamageModifier` = 10.0 WHERE `entry`=21919;

/*  Tidewalker Lurker  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `speed_run` = 1.42857, `DamageModifier` = 6.0 WHERE `entry`=21920;

/*  Talbuk  */
UPDATE `creature_template` SET `DamageModifier` = 5.0 WHERE `entry`=21922;

/*  Terrorguard Protector  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=21923;

/*  Avatar of Sathal  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.7 WHERE `entry`=21925;

/*  Multi-Spectrum Light Trap Bunny  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `ArmorModifier` = 1.33333 WHERE `entry`=21926;

/*  Avian Flyer  */
UPDATE `creature_template` SET `DamageModifier` = 4.7 WHERE `entry`=21931;

/*  Hydross the Unstable  */
UPDATE `creature_template` SET `minlevel` = 73, `maxlevel` = 73, `DamageModifier` = 2.0, `ManaModifier` = 1.0 WHERE `entry`=21932;

/*  Crazed Shardling  */
UPDATE `creature_template` SET `DamageModifier` = 0.75 WHERE `entry`=21936;

/*  Earthmender Sophurus  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=21937;

/*  Earthmender Splinthoof  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=21938;

/*  Accursed Apparition  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.8, `ArmorModifier` = 0.97165 WHERE `entry`=21941;

/*  Underbog Frenzy (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 20.0 WHERE `entry`=21943;

/*  Collection of Souls Glow Trigger  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 1.33333 WHERE `entry`=21947;

/*  Fel Reaver Sentinel  */
UPDATE `creature_template` SET `speed_walk` = 2.1, `speed_run` = 1.7, `DamageModifier` = 5.0 WHERE `entry`=21949;

/*  Garm Wolfbrother  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 1.8 WHERE `entry`=21950;

/*  Thunderlord Clan Sub-Chief  */
UPDATE `creature_template` SET `minlevel` = 69, `speed_walk` = 1.71, `DamageModifier` = 1.7 WHERE `entry`=21951;

/*  Lobo  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 1.8 WHERE `entry`=21952;

/*  Varen the Reclaimer  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=21953;

/*  Larissa Sunstrike  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=21954;

/*  Arcanist Thelis  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21955;

/*  Rema  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.2 WHERE `entry`=21956;

/*  Enchanted Elemental  */
UPDATE `creature_template` SET `speed_run` = 2.14286, `HealthModifier` = 1.0 WHERE `entry`=21958;

/*  Fel Reaver Sentinel Credit  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=21959;

/*  Gan'arg Technician  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21960;

/*  Cataclysm Overseer  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 3.0 WHERE `entry`=21961;

/*  Enslaved Doomguard  */
UPDATE `creature_template` SET `DamageModifier` = 1.5 WHERE `entry`=21963;

/*  Fathom-Guard Caribdis  */
UPDATE `creature_template` SET `DamageModifier` = 25.0, `HealthModifier` = 150.0 WHERE `entry`=21964;

/*  Fathom-Guard Tidalvess  */
UPDATE `creature_template` SET `DamageModifier` = 42.0, `HealthModifier` = 150.0 WHERE `entry`=21965;

/*  Fathom-Guard Sharkkis  */
UPDATE `creature_template` SET `DamageModifier` = 25.0, `HealthModifier` = 150.0 WHERE `entry`=21966;

/*  Silvermoon City Commendation Officer  */
UPDATE `creature_template` SET `DamageModifier` = 3.6 WHERE `entry`=21968;

/*  Exodar Commendation Officer  */
UPDATE `creature_template` SET `DamageModifier` = 3.6 WHERE `entry`=21969;

/*  Officer Dawning  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.6 WHERE `entry`=21970;

/*  Officer Khaluun  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.7 WHERE `entry`=21971;

/*  Air Force Alarm Bot (Area 52)  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21974;

/*  Bladespire Sober Defender  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 3.6 WHERE `entry`=21975;

/*  Area 52 Death Machine  */
UPDATE `creature_template` SET `DamageModifier` = 2.9 WHERE `entry`=21976;

/*  Gadgetzan Air Strike Caller  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21977;

/*  Shadowmoon Valley Wildlife  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=21978;

/*  Val'zareq the Conqueror  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=21979;

/*  Overseer Nuaar  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.7 WHERE `entry`=21981;

/*  Wyrmcult Ambusher  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=21982;

/*  Samia Inkling  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=21983;

/*  Rexxar  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `rank` = 1, `DamageModifier` = 1.6, `ManaModifier` = 1.0 WHERE `entry`=21984;

/*  Skettis Eviscerator  */
UPDATE `creature_template` SET `ArmorModifier` = 0.979829 WHERE `entry`=21985;

/*  Altar of Sha'tar Vindicator  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21986;

/*  Avian Flyer (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 2.14286, `DamageModifier` = 4.7 WHERE `entry`=21988;

/*  Avian Ripper (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `speed_walk` = 1.0, `DamageModifier` = 5.0 WHERE `entry`=21989;

/*  Avian Warhawk (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 12.5 WHERE `entry`=21990;

/*  Sethekk Slayer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=21991;

/*  Air Force Guard Post (Horde - Bat Rider)  */
UPDATE `creature_template` SET `DamageModifier` = 1.8 WHERE `entry`=21993;

/*  Air Force Guard Post (Alliance - Gryphon)  */
UPDATE `creature_template` SET `DamageModifier` = 1.8 WHERE `entry`=21996;

/*  Air Force Guard Post (Goblin - Area 52 - Zeppelin)  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=21997;

/*  Kor'kron Wind Rider  */
UPDATE `creature_template` SET `DamageModifier` = 1.75 WHERE `entry`=21998;

/*  Air Force Trip Wire - Rooftop (Alliance)  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=21999;

/*  Dragonmaw Nether Drake  */
UPDATE `creature_template` SET `DamageModifier` = 1.14, `ManaModifier` = 1.0 WHERE `entry`=22000;

/*  Air Force Trip Wire - Rooftop (Horde)  */
UPDATE `creature_template` SET `DamageModifier` = 1.8 WHERE `entry`=22001;

/*  Air Force Trip Wire - Ground (Alliance)  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=22003;

/*  Leoroxx  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 12.0, `ManaModifier` = 1.0 WHERE `entry`=22004;

/*  Shadowlord Deathwail  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 2.0, `ArmorModifier` = 1.24077 WHERE `entry`=22006;

/*  Tree Warden Chawn  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=22007;

/*  Sky Marker  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.8 WHERE `entry`=22008;

/*  Tainted Elemental  */
UPDATE `creature_template` SET `speed_run` = 1.28968, `DamageModifier` = 0.75 WHERE `entry`=22009;

/*  Cask  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22010;

/*  Corok the Mighty  */
UPDATE `creature_template` SET `DamageModifier` = 3.3 WHERE `entry`=22011;

/*  Chancellor Bloodleaf  */
UPDATE `creature_template` SET `DamageModifier` = 2.2 WHERE `entry`=22012;

/*  Eye of the Storm Emissary  */
UPDATE `creature_template` SET `DamageModifier` = 4.0, `ArmorModifier` = 1.66616 WHERE `entry`=22013;

/*  Silvermoon Citizen  */
UPDATE `creature_template` SET `DamageModifier` = 1.3 WHERE `entry`=22014;

/*  Eye of the Storm Envoy  */
UPDATE `creature_template` SET `DamageModifier` = 4.0, `ArmorModifier` = 1.66616 WHERE `entry`=22015;

/*  Eclipsion Soldier  */
UPDATE `creature_template` SET `ArmorModifier` = 0.977077 WHERE `entry`=22016;

/*  Eclipsion Spellbinder  */
UPDATE `creature_template` SET `ArmorModifier` = 0.977077 WHERE `entry`=22017;

/*  Kolphis Darkscale  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=22019;

/*  O'Mally Zapnabber  */
UPDATE `creature_template` SET `minlevel` = 68, `speed_walk` = 1.125, `DamageModifier` = 2.0, `HealthModifier` = 1.0406 WHERE `entry`=22020;

/*  Arcane Burst  */
UPDATE `creature_template` SET `DamageModifier` = 1.4 WHERE `entry`=22022;

/*  [DND]Spirit 1  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=22023;

/*  Parshah  */
UPDATE `creature_template` SET `DamageModifier` = 0.14 WHERE `entry`=22024;

/*  Asghar  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `HealthModifier` = 1.301 WHERE `entry`=22025;

/*  Bahat  */
UPDATE `creature_template` SET `DamageModifier` = 2.5 WHERE `entry`=22026;

/*  Nether Drakonid Boss (Purple)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22028;

/*  Nether Drakonid (Purple)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22029;

/*  Nether Drakonid (Blue)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22030;

/*  Nether Drakonid (Green)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22031;

/*  Nether Drakonid Boss (Green)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22032;

/*  Nether Drakonid Boss (Blue)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22033;

/*  Nether Drakonid Boss (Black)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22034;

/*  Pure Spawn of Hydross  */
UPDATE `creature_template` SET `DamageModifier` = 12.0, `HealthModifier` = 6.0 WHERE `entry`=22035;

/*  Tainted Spawn of Hydross  */
UPDATE `creature_template` SET `DamageModifier` = 10.0 WHERE `entry`=22036;

/*  Smith Gorlunk  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=22037;

/*  Hai'shulud  */
UPDATE `creature_template` SET `DamageModifier` = 4.5, `ArmorModifier` = 0.973171 WHERE `entry`=22038;

/*  [PH] bat target  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=22039;

/*  [PH] Cave Bat JZB  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=22040;

/*  Gryphonrider Kieran  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.6, `HealthModifier` = 1.0406 WHERE `entry`=22042;

/*  Sergeant Kargrul  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=22043;

/*  Cavern Crawler  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=22044;

/*  Vengeful Husk  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.3 WHERE `entry`=22045;

/*  [PH] Cave Bat  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=22046;

/*  Cave Beetle  */
UPDATE `creature_template` SET `ArmorModifier` = 0.969946 WHERE `entry`=22047;

/*  Crazed Colossus Kill Credit  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22051;

/*  Daggermaw Blackhide  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.973171 WHERE `entry`=22052;

/*  Mosswood the Ancient  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=22053;

/*  Behemothon, King of the Colossi  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 1.6 WHERE `entry`=22054;

/*  Coilfang Elite  */
UPDATE `creature_template` SET `speed_run` = 1.42857, `DamageModifier` = 31.0, `HealthModifier` = 25.0 WHERE `entry`=22055;

/*  Coilfang Strider  */
UPDATE `creature_template` SET `speed_run` = 1.0, `DamageModifier` = 60.0, `HealthModifier` = 25.0 WHERE `entry`=22056;

/*  Wildhammer Gryphon Rider  */
UPDATE `creature_template` SET `speed_walk` = 2.0, `speed_run` = 2.28571, `DamageModifier` = 0.03 WHERE `entry`=22059;

/*  Fenissa the Assassin  */
UPDATE `creature_template` SET `DamageModifier` = 1.15 WHERE `entry`=22060;

/*  Shadowmoon Soulstealer  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=22061;

/*  Dr. Whitherlimb  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=22062;

/*  Air Force Trip Wire - Rooftop (Goblin - Area 52)  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=22063;

/*  Stormspire Drake  */
UPDATE `creature_template` SET `DamageModifier` = 2.9 WHERE `entry`=22064;

/*  Air Force Guard Post (Scryer - Dragonhawk)  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=22066;

/*  Scryer Dragonhawk  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=22067;

/*  Air Force Trip Wire - Rooftop (Scryer)  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=22070;

/*  Air Force Alarm Bot (Scryer)  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=22071;

/*  Shadowsworn Drakonid  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `DamageModifier` = 3.3 WHERE `entry`=22072;

/*  Illidari Mind Breaker  */
UPDATE `creature_template` SET `DamageModifier` = 5.0 WHERE `entry`=22074;

/*  Illidari Soldier  */
UPDATE `creature_template` SET `DamageModifier` = 0.75 WHERE `entry`=22075;

/*  Torloth the Magnificent  */
UPDATE `creature_template` SET `DamageModifier` = 10.0 WHERE `entry`=22076;

/*  Aldor Gryphon Guard  */
UPDATE `creature_template` SET `DamageModifier` = 1.75 WHERE `entry`=22077;

/*  Air Force Alarm Bot (Aldor)  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=22078;

/*  Air Force Guard Post (Aldor - Gryphon)  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=22079;

/*  Air Force Trip Wire - Rooftop (Aldor)  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=22080;

/*  Shadowmoon Darkweaver  */
UPDATE `creature_template` SET `ArmorModifier` = 0.978261 WHERE `entry`=22081;

/*  Shadowmoon Slayer  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976895 WHERE `entry`=22082;

/*  Air Force Alarm Bot (Sporeggar)  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=22086;

/*  Air Force Trip Wire - Rooftop (Sporeggar)  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=22088;

/*  Toshley Flying Machine  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 1.8 WHERE `entry`=22089;

/*  Air Force Guard Post (Toshley's Station - Flying Machine)  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=22090;

/*  Illidari Watcher  */
UPDATE `creature_template` SET `DamageModifier` = 6.0 WHERE `entry`=22093;

/*  Remnant of Hate  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.3 WHERE `entry`=22094;

/*  Infested Root-Walker  */
UPDATE `creature_template` SET `ArmorModifier` = 0.97165 WHERE `entry`=22095;

/*  Veteran Gladiator  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=22097;

/*  Grizzled Gladiator  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=22098;

/*  Wyrmcult Provisioner  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `ArmorModifier` = 0.974483 WHERE `entry`=22099;

/*  Scorpid Bonecrawler  */
UPDATE `creature_template` SET `ArmorModifier` = 0.97165 WHERE `entry`=22100;

/*  Arena Promoter  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=22101;

/*  Shadowmoon Retainer  */
UPDATE `creature_template` SET `DamageModifier` = 0.8, `ArmorModifier` = 0.977915 WHERE `entry`=22102;

/*  Baron Sablemane  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ArmorModifier` = 0.806146 WHERE `entry`=22103;

/*  Cyclone (Karathress)  */
UPDATE `creature_template` SET `speed_walk` = 0.8, `speed_run` = 0.857143 WHERE `entry`=22104;

/*  Decrepit Clefthoof  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.3 WHERE `entry`=22105;

/*  Ruul's Netherdrake  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 2.0, `ManaModifier` = 1.0 WHERE `entry`=22106;

/*  Captain Darkhowl  */
UPDATE `creature_template` SET `DamageModifier` = 1.8 WHERE `entry`=22107;

/*  Blackwhelp  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0, `HealthModifier` = 1.301 WHERE `entry`=22108;

/*  Tethik  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=22110;

/*  Karynaku  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=22112;

/*  Mordenai  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=22113;

/*  Enraged Earth Shard  */
UPDATE `creature_template` SET `DamageModifier` = 0.6, `ArmorModifier` = 0.976895 WHERE `entry`=22115;

/*  Fathom Lurker  */
UPDATE `creature_template` SET `DamageModifier` = 26.0, `HealthModifier` = 25.0 WHERE `entry`=22119;

/*  Fathom Sporebat  */
UPDATE `creature_template` SET `DamageModifier` = 8.0, `HealthModifier` = 25.0 WHERE `entry`=22120;

/*  Felfire Summoner  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=22121;

/*  Cenarion Storm Crow  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=22122;

/*  Rip-Blade Ravager  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=22123;

/*  Air Force Alarm Bot (Cenarion)  */
UPDATE `creature_template` SET `DamageModifier` = 0.007 WHERE `entry`=22124;

/*  Air Force Guard Post (Cenarion - Stormcrow)  */
UPDATE `creature_template` SET `DamageModifier` = 0.007 WHERE `entry`=22125;

/*  Air Force Trip Wire - Rooftop (Cenarion Expedition)  */
UPDATE `creature_template` SET `DamageModifier` = 0.007 WHERE `entry`=22126;

/*  Wildlord Antelarion  */
UPDATE `creature_template` SET `speed_run` = 1.0, `DamageModifier` = 5.0 WHERE `entry`=22127;

/*  Durnholde Lookout  */
UPDATE `creature_template` SET `minlevel` = 66, `maxlevel` = 67, `DamageModifier` = 1.5 WHERE `entry`=22128;

/*  Durnholde Lookout (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 71, `DamageModifier` = 11.0 WHERE `entry`=22129;

/*  Baron Sablemane's Blackwhelp  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 1.0002 WHERE `entry`=22130;

/*  Mature Cavern Crawler  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=22132;

/*  Faradrella  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 4.0 WHERE `entry`=22133;

/*  Shadowmoon Eye of Kilrogg  */
UPDATE `creature_template` SET `speed_run` = 0.714286, `DamageModifier` = 0.05 WHERE `entry`=22134;

/*  Tame Clefthoof  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.4 WHERE `entry`=22135;

/*  Dubu  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.4 WHERE `entry`=22136;

/*  Summoned Old God  */
UPDATE `creature_template` SET `DamageModifier` = 1.6 WHERE `entry`=22137;

/*  Dark Conclave Ritualist  */
UPDATE `creature_template` SET `DamageModifier` = 0.35, `ArmorModifier` = 0.975976 WHERE `entry`=22138;

/*  Quilbeast  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=22141;

/*  Zakk  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=22142;

/*  Summoning Voidstorm  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=22146;

/*  Commander Haephus Stonewall  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=22149;

/*  Lieutenant Fairweather  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=22150;

/*  Ruuan Weald Sister  */
UPDATE `creature_template` SET `speed_run` = 1.0, `DamageModifier` = 2.0 WHERE `entry`=22151;

/*  Bloodmaul Taskmaster  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=22160;

/*  Infinite Assassin (1)  */
UPDATE `creature_template` SET `DamageModifier` = 7.0 WHERE `entry`=22164;

/*  Infinite Chronomancer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 8.0 WHERE `entry`=22165;

/*  Infinite Executioner (1)  */
UPDATE `creature_template` SET `DamageModifier` = 8.0 WHERE `entry`=22166;

/*  Infinite Vanquisher (1)  */
UPDATE `creature_template` SET `DamageModifier` = 5.0 WHERE `entry`=22168;

/*  Infinite Whelp (1)  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=22169;

/*  Rift Keeper (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.42857, `DamageModifier` = 10.0, `HealthModifier` = 23.205 WHERE `entry`=22170;

/*  Rift Keeper (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.42857, `DamageModifier` = 10.0, `HealthModifier` = 23.205 WHERE `entry`=22171;

/*  Rift Lord (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.42857, `DamageModifier` = 10.0, `HealthModifier` = 18.561, `ManaModifier` = 1.0 WHERE `entry`=22172;

/*  Trigul  */
UPDATE `creature_template` SET `DamageModifier` = 4.5, `ManaModifier` = 1.0 WHERE `entry`=22174;

/*  Apexis Flayer  */
UPDATE `creature_template` SET `speed_run` = 1.14286 WHERE `entry`=22175;

/*  Shard-Hide Boar  */
UPDATE `creature_template` SET `speed_run` = 1.14286 WHERE `entry`=22180;

/*  Aether Ray  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=22181;

/*  Lightning Wasp  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976725 WHERE `entry`=22182;

/*  Black Blade Drake [PH]  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22190;

/*  Bladestalker  */
UPDATE `creature_template` SET `ArmorModifier` = 0.979687 WHERE `entry`=22191;

/*  Giant Black Blade Drake [PH]  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22192;

/*  Armored Blade Stinger  */
UPDATE `creature_template` SET `ArmorModifier` = 0.999295 WHERE `entry`=22193;

/*  Spire Needler  */
UPDATE `creature_template` SET `ArmorModifier` = 0.959794 WHERE `entry`=22194;

/*  Wrath Reaver  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 5.0, `ManaModifier` = 1.0 WHERE `entry`=22196;

/*  Dragonmaw Orc  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=22197;

/*  Slaag  */
UPDATE `creature_template` SET `DamageModifier` = 11.0 WHERE `entry`=22199;

/*  Son of Slaag  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22200;

/*  Fear Whisperer  */
UPDATE `creature_template` SET `ArmorModifier` = 0.978999 WHERE `entry`=22201;

/*  Nightmare Imp  */
UPDATE `creature_template` SET `DamageModifier` = 1.3 WHERE `entry`=22202;

/*  Infernal  */
UPDATE `creature_template` SET `minlevel` = 50, `maxlevel` = 50 WHERE `entry`=22203;

/*  Lord Corruptor  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.07 WHERE `entry`=22205;

/*  Expedition Druid  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 3.0 WHERE `entry`=22206;

/*  Spore Drop Trigger  */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60 WHERE `entry`=22207;

/*  Battlemage Vyara  */
UPDATE `creature_template` SET `DamageModifier` = 1.6 WHERE `entry`=22211;

/*  Treebole  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 2.0 WHERE `entry`=22215;

/*  Fhyn Leafshadow  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 2.0 WHERE `entry`=22216;

/*  Felstorm Corruptor  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 71, `DamageModifier` = 0.75, `HealthModifier` = 0.75, `ArmorModifier` = 0.974763, `ManaModifier` = 1.0 WHERE `entry`=22217;

/*  Insidious Familiar  */
UPDATE `creature_template` SET `DamageModifier` = 1.3 WHERE `entry`=22218;

/*  Legion War-Hound  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=22220;

/*  Felstorm Overseer  */
UPDATE `creature_template` SET `DamageModifier` = 1.3 WHERE `entry`=22221;

/*  Voice of Grillok  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `ArmorModifier` = 1.33333 WHERE `entry`=22224;

/*  Reagan Mancuso  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=22225;

/*  Koi-Koi Spirit  */
UPDATE `creature_template` SET `DamageModifier` = 1.2, `HealthModifier` = 1.0272 WHERE `entry`=22226;

/*  Markus Scylan  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=22227;

/*  Flame Wave II  */
UPDATE `creature_template` SET `minlevel` = 68, `maxlevel` = 69, `ArmorModifier` = 1.33333 WHERE `entry`=22228;

/*  Druman Shadowgrove  */
UPDATE `creature_template` SET `speed_walk` = 1.2, `DamageModifier` = 0.7 WHERE `entry`=22229;

/*  Zezzak  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=22231;

/*  Grishna Arakkoa  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.4 WHERE `entry`=22232;

/*  Unsuspecting Leafbeard  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 1.4, `ArmorModifier` = 0.983043 WHERE `entry`=22233;

/*  Sinnea Starsong  */
UPDATE `creature_template` SET `speed_walk` = 1.1, `DamageModifier` = 0.7 WHERE `entry`=22234;

/*  Evil Koi-Koi  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.4, `ArmorModifier` = 0.975775 WHERE `entry`=22235;

/*  Loirea Galerunner  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=22237;

/*  Serpentshrine Tidecaller  */
UPDATE `creature_template` SET `DamageModifier` = 18.0, `HealthModifier` = 15.0 WHERE `entry`=22238;

/*  Leafbeard Flavor Event Channel Bunny  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 1.33333 WHERE `entry`=22240;

/*  Bash'ir Spell-Thief  */
UPDATE `creature_template` SET `ArmorModifier` = 0.982499 WHERE `entry`=22242;

/*  Unbound Ethereal  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=22244;

/*  Leafbeard Flavor Event Particle Bunny  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 1.33333 WHERE `entry`=22246;

/*  Rancid Mushroom  */
UPDATE `creature_template` SET `HealthModifier` = 17.2494 WHERE `entry`=22250;

/*  Dragonmaw Peon  */
UPDATE `creature_template` SET `DamageModifier` = 0.5, `ArmorModifier` = 0.976895, `ManaModifier` = 1.0 WHERE `entry`=22252;

/*  Dragonmaw Ascendant  */
UPDATE `creature_template` SET `DamageModifier` = 8.0 WHERE `entry`=22253;

/*  Daggertail Lizard  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `ArmorModifier` = 0.959656 WHERE `entry`=22255;

/*  Deathlash Stinger  */
UPDATE `creature_template` SET `DamageModifier` = 1.25, `ArmorModifier` = 0.961348 WHERE `entry`=22257;

/*  Bladespire Elder  */
UPDATE `creature_template` SET `ArmorModifier` = 0.999839 WHERE `entry`=22262;

/*  Bladespire Keg King  */
UPDATE `creature_template` SET `DamageModifier` = 1.35 WHERE `entry`=22263;

/*  Ogri'la Steelshaper  */
UPDATE `creature_template` SET `speed_walk` = 1.2 WHERE `entry`=22264;

/*  Ogri'la Grubgiver  */
UPDATE `creature_template` SET `speed_walk` = 1.2 WHERE `entry`=22266;

/*  Leokk  */
UPDATE `creature_template` SET `DamageModifier` = 7.0 WHERE `entry`=22268;

/*  Black Drake Corpse  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22269;

/*  Ogri'la Merchant  */
UPDATE `creature_template` SET `speed_walk` = 1.2 WHERE `entry`=22270;

/*  Ogri'la Trader  */
UPDATE `creature_template` SET `speed_walk` = 1.2 WHERE `entry`=22271;

/*  Kirrik the Awakened  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=22272;

/*  Fel Warden  */
UPDATE `creature_template` SET `DamageModifier` = 1.4 WHERE `entry`=22273;

/*  Dragonmaw Skybreaker  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=22274;

/*  Apexis Guardian  */
UPDATE `creature_template` SET `DamageModifier` = 9.0 WHERE `entry`=22275;

/*  Terror Steed [PH]  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22276;

/*  Black Drake Corpse Transform  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22277;

/*  High Priest Orglum  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=22278;

/*  Galvanoth  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 6.2 WHERE `entry`=22281;

/*  Witness of Doom  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.1 WHERE `entry`=22282;

/*  Eredar Stormbringer  */
UPDATE `creature_template` SET `DamageModifier` = 5.0, `ArmorModifier` = 0.978999 WHERE `entry`=22283;

/*  Draenei Tomb Guardian  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=22285;

/*  High Astromancer Solarian Transform Visual  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22290;

/*  Furnace Guard  */
UPDATE `creature_template` SET `ArmorModifier` = 0.959794 WHERE `entry`=22291;

/*  Rilak the Redeemed  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=22292;

/*  Inactive Fel Reaver  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 4.0 WHERE `entry`=22293;

/*  Deathforge Automaton  */
UPDATE `creature_template` SET `DamageModifier` = 6.5, `ArmorModifier` = 1.42223, `ManaModifier` = 1.0 WHERE `entry`=22295;

/*  Throne-Guard Highlord  */
UPDATE `creature_template` SET `DamageModifier` = 3.6 WHERE `entry`=22297;

/*  Vile Fire-Soul  */
UPDATE `creature_template` SET `minlevel` = 70, `speed_walk` = 1.125, `DamageModifier` = 0.85, `ArmorModifier` = 0.978999 WHERE `entry`=22298;

/*  Spore Strider (1)  */
UPDATE `creature_template` SET `DamageModifier` = 2.5, `HealthModifier` = 1.25 WHERE `entry`=22300;

/*  Throne-Guard Sentinel  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=22301;

/*  Throne-Guard Champion  */
UPDATE `creature_template` SET `DamageModifier` = 1.3 WHERE `entry`=22302;

/*  Throne Hound  */
UPDATE `creature_template` SET `DamageModifier` = 3.0, `ManaModifier` = 1.0 WHERE `entry`=22303;

/*  Mo'arg Extractor  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.14286 WHERE `entry`=22304;

/*  Vekh  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.2 WHERE `entry`=22305;

/*  Rotting Forest-Rager  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=22307;

/*  Wyrmcult Hunter  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `ArmorModifier` = 0.973712 WHERE `entry`=22308;

/*  Crashing Wave-Spirit  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 1.04, `ArmorModifier` = 0.977074 WHERE `entry`=22309;

/*  Storming Wind-Ripper  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.4 WHERE `entry`=22310;

/*  Raging Fire-Soul  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.04, `ArmorModifier` = 0.979123 WHERE `entry`=22311;

/*  Spiritcaller Dohgar  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0 WHERE `entry`=22312;

/*  Rumbling Earth-Heart  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.3, `ArmorModifier` = 0.975032 WHERE `entry`=22313;

/*  Enslaved Netherwing Drake Kill Credit  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=22316;

/*  Living Rock  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=22319;

/*  Mennu's Healing Ward (1)  */
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72, `DamageModifier` = 0.006, `HealthModifier` = 0.0007 WHERE `entry`=22322;

/*  Nightmare Weaver  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=22325;

/*  Redeemed Avian  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=22326;

/*  Zuluhed Transform  */
UPDATE `creature_template` SET `DamageModifier` = 10.0, `ManaModifier` = 1.0 WHERE `entry`=22330;

/*  Dragonmaw Elite  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.25 WHERE `entry`=22331;

/*  Brood of Neltharaku  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `speed_run` = 1.14286, `DamageModifier` = 1.2, `ManaModifier` = 1.0 WHERE `entry`=22332;

/*  Mushrom Spell Effect  */
UPDATE `creature_template` SET `minlevel` = 73, `maxlevel` = 73 WHERE `entry`=22335;

/*  Demon Portal (Zuluhed)  */
UPDATE `creature_template` SET `DamageModifier` = 0.02 WHERE `entry`=22336;

/*  Malevolent Hatchling  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0, `HealthModifier` = 1.1297 WHERE `entry`=22337;

/*  Arcubus Destroyer  */
UPDATE `creature_template` SET `speed_walk` = 0.777776, `speed_run` = 0.992063, `DamageModifier` = 9.5 WHERE `entry`=22338;

/*  Redeemed Hatchling  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.3, `HealthModifier` = 1.1758 WHERE `entry`=22339;

/*  Deathshadow Acolyte  */
UPDATE `creature_template` SET `ArmorModifier` = 0.978999 WHERE `entry`=22341;

/*  Deathshadow Spellbinder  */
UPDATE `creature_template` SET `ArmorModifier` = 0.978999 WHERE `entry`=22342;

/*  Deathshadow Archon  */
UPDATE `creature_template` SET `ArmorModifier` = 0.979123 WHERE `entry`=22343;

/*  Morcrush Shardling  */
UPDATE `creature_template` SET `DamageModifier` = 0.75, `HealthModifier` = 1.0 WHERE `entry`=22344;

/*  Twilight Ridge Drakonid [PH]  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22345;

/*  Ethereum Life-Binder (1)  */
UPDATE `creature_template` SET `DamageModifier` = 12.0 WHERE `entry`=22346;

/*  Colossus Lurker  */
UPDATE `creature_template` SET `DamageModifier` = 25.0, `HealthModifier` = 20.0 WHERE `entry`=22347;

/*  Western Gehenna Teleporter Credit  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=22348;

/*  Central Gehenna Teleporter Credit  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=22350;

/*  Eastern Gehenna Teleporter Credit  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=22351;

/*  Colossus Rager  */
UPDATE `creature_template` SET `DamageModifier` = 3.0, `HealthModifier` = 4.0 WHERE `entry`=22352;

/*  Twilight Ridge Worg [PH]  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=22353;

/*  Netherweb Victim  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.4 WHERE `entry`=22355;

/*  Karynaku Taxi  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22360;

/*  Blacklord Hamarahk  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22361;

/*  Deathshadow Imp  */
UPDATE `creature_template` SET `DamageModifier` = 0.35, `ArmorModifier` = 0.978999 WHERE `entry`=22362;

/*  Deathshadow Warlock  */
UPDATE `creature_template` SET `ArmorModifier` = 0.978999 WHERE `entry`=22363;

/*  Scout Navrin  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 2.6, `HealthModifier` = 1.2259 WHERE `entry`=22364;

/*  Dread Relic Thrall  */
UPDATE `creature_template` SET `speed_walk` = 0.9, `speed_run` = 1.14286, `DamageModifier` = 0.7 WHERE `entry`=22369;

/*  Mekeda  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=22370;

/*  Mok'Nathal Spirit  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.8 WHERE `entry`=22372;

/*  Defender Grashna  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=22373;

/*  Hand of Kargath  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 1.5 WHERE `entry`=22374;

/*  Avatar of Terokk  */
UPDATE `creature_template` SET `DamageModifier` = 5.0 WHERE `entry`=22375;

/*  Minion of Terokk  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `ManaModifier` = 1.0 WHERE `entry`=22376;

/*  Cabal Interrogator  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `ArmorModifier` = 0.972164 WHERE `entry`=22378;

/*  Ambient Minion of Terokk  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 0.3 WHERE `entry`=22380;

/*  Hathyss the Wicked  */
UPDATE `creature_template` SET `speed_run` = 1.03175 WHERE `entry`=22381;

/*  Bloodmaul Soothsayer  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=22384;

/*  Terrordar the Tormentor  */
UPDATE `creature_template` SET `DamageModifier` = 3.0, `ArmorModifier` = 1.02192 WHERE `entry`=22385;

/*  Watcher Moonshade  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0, `HealthModifier` = 1.0406 WHERE `entry`=22386;

/*  Lithic Oracle  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.4, `HealthModifier` = 1.3832 WHERE `entry`=22387;

/*  Lithic Talonguard  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.7, `HealthModifier` = 1.1143 WHERE `entry`=22388;

/*  Kil'Jaeden Reaver (non-interactable)  */
UPDATE `creature_template` SET `DamageModifier` = 0.01, `ManaModifier` = 1.0 WHERE `entry`=22389;

/*  Mountain Shardling  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=22390;

/*  Vortex Shardling  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=22391;

/*  Deathshadow Overlord  */
UPDATE `creature_template` SET `DamageModifier` = 4.5, `ArmorModifier` = 0.978999 WHERE `entry`=22393;

/*  Deathshadow Hound  */
UPDATE `creature_template` SET `speed_run` = 0.857143, `DamageModifier` = 0.5, `ArmorModifier` = 0.979123 WHERE `entry`=22394;

/*  Draaca Longtail  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 1.1 WHERE `entry`=22396;

/*  Durnholde Reinforcement  */
UPDATE `creature_template` SET `minlevel` = 66, `maxlevel` = 67, `DamageModifier` = 1.5 WHERE `entry`=22398;

/*  Durnholde Reinforcement (1)  */
UPDATE `creature_template` SET `DamageModifier` = 8.0 WHERE `entry`=22399;

/*  Twilight Ridge Target  */
UPDATE `creature_template` SET `DamageModifier` = 0.02 WHERE `entry`=22400;

/*  Honor Hold Gryphon Brigadier, North  */
UPDATE `creature_template` SET `DamageModifier` = 2.5 WHERE `entry`=22404;

/*  Honor Hold Gryphon Brigadier, Forge  */
UPDATE `creature_template` SET `DamageModifier` = 2.5 WHERE `entry`=22405;

/*  Honor Hold Gryphon Brigadier, Foothill  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=22406;

/*  Caravan Defender  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=22407;

/*  Furious Nether-wraith  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.9 WHERE `entry`=22408;

/*  ZZZ - Dan Reed Test  */
UPDATE `creature_template` SET `rank` = 3, `DamageModifier` = 1.0 WHERE `entry`=22409;

/*  Expedition Outrider  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=22410;

/*  Archimonde Channel Target  */
UPDATE `creature_template` SET `speed_walk` = 0.8, `speed_run` = 0.857143 WHERE `entry`=22418;

/*  Lakotae  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=22420;

/*  Skar'this the Heretic  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 0.8 WHERE `entry`=22421;

/*  Evergrove Druid  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=22423;

/*  Skywing  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=22424;

/*  Zarevhi  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=22427;

/*  Vekax  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=22429;

/*  Assistant Klatu  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=22430;

/*  Anchorite Barada  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=22431;

/*  Colonel Jules  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=22432;

/*  Ja'y Nosliw  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.625 WHERE `entry`=22433;

/*  Remnant of Malice  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.3 WHERE `entry`=22437;

/*  Remnant of Greed  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.4 WHERE `entry`=22438;

/*  Remnant of Corruption  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.4 WHERE `entry`=22439;

/*  Remnant of Pride  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.3 WHERE `entry`=22440;

/*  Teribus the Cursed  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=22441;

/*  Lonika Stillblade  */
UPDATE `creature_template` SET `DamageModifier` = 0.3 WHERE `entry`=22442;

/*  Death's Door Fel Cannon  */
UPDATE `creature_template` SET `speed_run` = 0.992063 WHERE `entry`=22443;

/*  Anchorite Relic Bunny  */
UPDATE `creature_template` SET `ArmorModifier` = 1.33333 WHERE `entry`=22444;

/*  Commander Ra'vaj  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 2.3, `HealthModifier` = 1.0844 WHERE `entry`=22446;

/*  Rexxar  */
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72, `speed_run` = 2.85714, `rank` = 1, `DamageModifier` = 2.0, `ManaModifier` = 1.0 WHERE `entry`=22448;

/*  Reanimated Exarch  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.3, `HealthModifier` = 1.3832 WHERE `entry`=22452;

/*  Injured Sha'tar Vindicator  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 1.7 WHERE `entry`=22453;

/*  Fel Spirit  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=22454;

/*  Sky-Master Maxxor  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 2.4 WHERE `entry`=22455;

/*  Oakun  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 2.0, `HealthModifier` = 3.7499 WHERE `entry`=22456;

/*  Sand Gnome Trigger  */
UPDATE `creature_template` SET `speed_walk` = 1.2 WHERE `entry`=22457;

/*  Chief Archaeologist Letoll  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0, `HealthModifier` = 1.1065 WHERE `entry`=22458;

/*  Freed Sha'tar Warrior  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.8, `HealthModifier` = 1.1065 WHERE `entry`=22459;

/*  Spirit  */
UPDATE `creature_template` SET `HealthModifier` = 5.0 WHERE `entry`=22460;

/*  Fel Cannon MKI  */
UPDATE `creature_template` SET `speed_run` = 0.992063 WHERE `entry`=22461;

/*  Vindicator Haylen  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 0.02, `HealthModifier` = 4.408 WHERE `entry`=22462;

/*  Wounded Sha'tar Vindicator  */
UPDATE `creature_template` SET `speed_walk` = 1.71, `DamageModifier` = 0.01, `HealthModifier` = 3.7499 WHERE `entry`=22463;

/*  Explorers' League Researcher  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 0.6, `HealthModifier` = 1.1065 WHERE `entry`=22464;

/*  Bone Sifter  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 1.9, `HealthModifier` = 1.1065 WHERE `entry`=22466;

/*  Ogrin  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=22468;

/*  Fiskal Shadowsong  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=22469;

/*  Death's Door North Warp-Gate  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.8 WHERE `entry`=22471;

/*  Death's Door South Warp-Gate  */
UPDATE `creature_template` SET `DamageModifier` = 1.8 WHERE `entry`=22472;

/*  Baron Sablemane  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=22473;

/*  Unstable Fel-Imp  */
UPDATE `creature_template` SET `speed_run` = 0.714286, `DamageModifier` = 0.1 WHERE `entry`=22474;

/*  Evergrove Ancient  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.14286 WHERE `entry`=22478;

/*  Sab'aoth  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=22479;

/*  Dwarfowitz  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 2.0, `HealthModifier` = 1.1065 WHERE `entry`=22481;

/*  Mature Bone Sifter  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286 WHERE `entry`=22482;

/*  Sand Gnome  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=22483;

/*  Halu  */
UPDATE `creature_template` SET `DamageModifier` = 3.0, `ManaModifier` = 1.0 WHERE `entry`=22485;

/*  Sentinel Moonwhisper  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=22488;

/*  Grunt Grahk  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.4 WHERE `entry`=22489;

/*  Kerpow Blastwrench  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=22491;

/*  Sabellian  */
UPDATE `creature_template` SET `DamageModifier` = 9.6, `HealthModifier` = 10.0, `ManaModifier` = 1.0 WHERE `entry`=22496;

/*  V'eru  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=22497;

/*  Misha  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=22498;

/*  Void Hound  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.75 WHERE `entry`=22500;

/*  Foul Purge  */
UPDATE `creature_template` SET `DamageModifier` = 0.6 WHERE `entry`=22506;

/*  Darkness Released  */
UPDATE `creature_template` SET `speed_walk` = 0.4, `speed_run` = 1.14286, `DamageModifier` = 2.75 WHERE `entry`=22507;

/*  Scrapped Fel Reaver Transform  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22509;

/*  World Trigger (Large AOI)  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `DamageModifier` = 1.0 WHERE `entry`=22517;

/*  Aerie Gryphon (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22525;

/*  Alliance Spirit Guide (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22526;

/*  Arch Druid Renferal (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22527;

/*  Athramanis (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0 WHERE `entry`=22528;

/*  Champion Coldmine Explorer (1)  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=22529;

/*  Champion Coldmine Guard (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `speed_walk` = 1.76 WHERE `entry`=22530;

/*  Champion Coldmine Invader (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.76 WHERE `entry`=22531;

/*  Champion Coldmine Surveyor (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `ManaModifier` = 1.0 WHERE `entry`=22532;

/*  Champion Guardsman (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.26 WHERE `entry`=22533;

/*  Champion Irondeep Explorer (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `speed_walk` = 1.0 WHERE `entry`=22534;

/*  Champion Irondeep Guard (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `speed_walk` = 1.75 WHERE `entry`=22535;

/*  Champion Irondeep Raider (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70 WHERE `entry`=22536;

/*  Champion Irondeep Surveyor (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `ManaModifier` = 1.0 WHERE `entry`=22537;

/*  Champion Legionnaire (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.26 WHERE `entry`=22538;

/*  Deathstalker Agent (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22539;

/*  Drakan (1)  */
UPDATE `creature_template` SET `speed_run` = 2.33, `DamageModifier` = 1.16 WHERE `entry`=22540;

/*  Druid of the Grove (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22541;

/*  Dun Baldar North Marshal (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 1.0 WHERE `entry`=22542;

/*  Dun Baldar North Warmaster (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22543;

/*  Dun Baldar South Marshal (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 1.0 WHERE `entry`=22544;

/*  Dun Baldar South Warmaster (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.76, `DamageModifier` = 1.0 WHERE `entry`=22545;

/*  Duros (1)  */
UPDATE `creature_template` SET `speed_run` = 2.33, `DamageModifier` = 1.16 WHERE `entry`=22546;

/*  East Frostwolf Marshal (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22547;

/*  East Frostwolf Warmaster (1)  */
UPDATE `creature_template` SET `speed_run` = 1.76, `DamageModifier` = 1.0 WHERE `entry`=22548;

/*  Frostwolf Shredder Unit (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22550;

/*  Frostwolf Stable Master (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22551;

/*  Frostwolf Wolf Rider Commander (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22552;

/*  Guse's War Rider (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22556;

/*  Horde Spirit Guide (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22558;

/*  Iceblood Marshal (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.76, `DamageModifier` = 1.0 WHERE `entry`=22559;

/*  Iceblood Warmaster (1)  */
UPDATE `creature_template` SET `speed_run` = 1.76, `DamageModifier` = 1.0 WHERE `entry`=22560;

/*  Icewing Marshal (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 1.0 WHERE `entry`=22561;

/*  Icewing Warmaster (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.76, `DamageModifier` = 1.0 WHERE `entry`=22562;

/*  Ichman's Gryphon (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22563;

/*  Jeztor's War Rider (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22564;

/*  Master Engineer Zinfizzlex (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22565;

/*  Mulverick's War Rider (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22566;

/*  Murgot Deepforge (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 1.0 WHERE `entry`=22567;

/*  Primalist Thurloga (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22568;

/*  Slidore's Gryphon (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22570;

/*  Smith Regzar (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22571;

/*  Stonehearth Marshal (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 1.0 WHERE `entry`=22572;

/*  Stonehearth Warmaster (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.76, `DamageModifier` = 1.0 WHERE `entry`=22573;

/*  Stormpike Herald (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0 WHERE `entry`=22574;

/*  Stormpike Ram Rider Commander (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.38571, `DamageModifier` = 1.0 WHERE `entry`=22575;

/*  Stormpike Shredder Unit (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22576;

/*  Stormpike Stable Master (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 1.0 WHERE `entry`=22577;

/*  Syndicate Master Ryson (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22578;

/*  Tower Point Marshal (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22579;

/*  Tower Point Warmaster (1)  */
UPDATE `creature_template` SET `speed_run` = 1.76, `DamageModifier` = 1.0 WHERE `entry`=22580;

/*  Trigger Guse (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22581;

/*  Trigger Ichman (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22582;

/*  Trigger Jeztor (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22583;

/*  Trigger Mulverick (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22584;

/*  Trigger Slidore (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22585;

/*  Trigger Vipore (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22586;

/*  Veteran Commando (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 1.0 WHERE `entry`=22587;

/*  Veteran Outrunner (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22590;

/*  Veteran Ranger (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22591;

/*  Veteran Reaver (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22592;

/*  Vipore's Gryphon (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22593;

/*  War Rider (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22594;

/*  West Frostwolf Marshal (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22595;

/*  West Frostwolf Warmaster (1)  */
UPDATE `creature_template` SET `speed_run` = 1.76, `DamageModifier` = 1.0 WHERE `entry`=22596;

/*  Wing Commander Ichman (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22597;

/*  Wing Commander Mulverick (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22598;

/*  Winterax Sentry (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `speed_walk` = 1.0, `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22599;

/*  Alterac Yeti (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22604;

/*  Captain Balinda Stonehearth (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22605;

/*  Captain Galvangar (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 1.0 WHERE `entry`=22606;

/*  Champion Commando (1)  */
UPDATE `creature_template` SET `minlevel` = 71, `maxlevel` = 71, `DamageModifier` = 1.0 WHERE `entry`=22607;

/*  Champion Defender (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.27 WHERE `entry`=22608;

/*  Champion Outrunner (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22610;

/*  Champion Ranger (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22611;

/*  Champion Reaver (1)  */
UPDATE `creature_template` SET `minlevel` = 71, `maxlevel` = 71, `DamageModifier` = 1.0 WHERE `entry`=22612;

/*  Commander Duffy (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22614;

/*  Commander Karl Philips (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22615;

/*  Commander Louis Philips (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22616;

/*  Commander Malgor (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22617;

/*  Commander Mortimer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22618;

/*  Commander Mulfort (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22619;

/*  Commander Randolph (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22620;

/*  Field Marshal Teravaine (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22621;

/*  Frostwolf Battleguard (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22622;

/*  Frostwolf Explosives Expert (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22623;

/*  Frostwolf Mine Layer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22624;

/*  Gash'nak the Cannibal (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22625;

/*  Ice Giant (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22626;

/*  Ivus the Forest Lord (1)  */
UPDATE `creature_template` SET `minlevel` = 71, `maxlevel` = 71, `rank` = 3, `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22627;

/*  Lieutenant Haggerdin (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 1.0 WHERE `entry`=22628;

/*  Lokholar the Ice Lord (1)  */
UPDATE `creature_template` SET `speed_walk` = 4.0, `speed_run` = 2.14286, `rank` = 3, `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22629;

/*  Prospector Stonehewer (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0 WHERE `entry`=22630;

/*  Risen Ancient (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22632;

/*  Stormpike Battleguard (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 1.0 WHERE `entry`=22633;

/*  Stormpike Explosives Expert (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22634;

/*  Stormpike Mine Layer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22635;

/*  Warmaster Garrick (1)  */
UPDATE `creature_template` SET `minlevel` = 71, `DamageModifier` = 1.0 WHERE `entry`=22639;

/*  Warmaster Laggrond (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22640;

/*  Drek'Thar (1)  */
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72, `speed_run` = 1.78, `DamageModifier` = 1.0 WHERE `entry`=22641;

/*  Korrak the Bloodrager (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.81, `DamageModifier` = 1.0 WHERE `entry`=22643;

/*  Vanndar Stormpike (1)  */
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72, `speed_walk` = 1.0, `DamageModifier` = 1.0 WHERE `entry`=22644;

/*  Alliance Sentinel (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.26 WHERE `entry`=22645;

/*  Brogus Thunderbrew (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0 WHERE `entry`=22646;

/*  Frostwolf Emissary (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0 WHERE `entry`=22647;

/*  Frostwolf Warrior (1)  */
UPDATE `creature_template` SET `minlevel` = 65, `maxlevel` = 65, `speed_walk` = 1.26 WHERE `entry`=22649;

/*  Jonivera Farmountain (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0 WHERE `entry`=22651;

/*  Kurdrum Barleybeard (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0 WHERE `entry`=22652;

/*  Lana Thunderbrew (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0 WHERE `entry`=22653;

/*  Stormpike Emissary (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0 WHERE `entry`=22656;

/*  Stormpike Quartermaster (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0 WHERE `entry`=22658;

/*  Svalbrad Farmountain (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0 WHERE `entry`=22659;

/*  Seasoned Mountaineer (1)  */
UPDATE `creature_template` SET `minlevel` = 66, `maxlevel` = 66, `speed_walk` = 1.26 WHERE `entry`=22662;

/*  Seasoned Sentinel (1)  */
UPDATE `creature_template` SET `minlevel` = 66, `maxlevel` = 66, `speed_walk` = 1.26 WHERE `entry`=22663;

/*  Seasoned Warrior (1)  */
UPDATE `creature_template` SET `minlevel` = 66, `maxlevel` = 66, `speed_walk` = 1.26 WHERE `entry`=22664;

/*  Frostwolf Legionnaire (1)  */
UPDATE `creature_template` SET `speed_run` = 1.26 WHERE `entry`=22665;

/*  Stormpike Guardsman (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0 WHERE `entry`=22666;

/*  Veteran Mountaineer (1)  */
UPDATE `creature_template` SET `minlevel` = 67, `maxlevel` = 67, `speed_walk` = 1.26 WHERE `entry`=22667;

/*  Veteran Sentinel (1)  */
UPDATE `creature_template` SET `minlevel` = 67, `maxlevel` = 67, `speed_walk` = 1.26 WHERE `entry`=22668;

/*  Veteran Warrior (1)  */
UPDATE `creature_template` SET `minlevel` = 67, `maxlevel` = 67, `speed_walk` = 1.26 WHERE `entry`=22669;

/*  Champion Mountaineer (1)  */
UPDATE `creature_template` SET `minlevel` = 68, `maxlevel` = 68, `speed_walk` = 1.26 WHERE `entry`=22671;

/*  Champion Sentinel (1)  */
UPDATE `creature_template` SET `minlevel` = 68, `maxlevel` = 68, `speed_walk` = 1.26 WHERE `entry`=22672;

/*  Champion Warrior (1)  */
UPDATE `creature_template` SET `minlevel` = 68, `maxlevel` = 68, `speed_walk` = 1.26 WHERE `entry`=22673;

/*  Frostwolf Guardian (1)  */
UPDATE `creature_template` SET `speed_run` = 1.26 WHERE `entry`=22674;

/*  Frostwolf Outrunner (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22675;

/*  Frostwolf Reaver (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `maxlevel` = 69, `DamageModifier` = 1.0 WHERE `entry`=22676;

/*  Frostwolf Shaman (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22678;

/*  Frostwolf Wolf Rider (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22679;

/*  Gaelden Hammersmith (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 1.0 WHERE `entry`=22680;

/*  Grunnda Wolfheart (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22681;

/*  Jekyll Flandring (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22682;

/*  Morloch (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22685;

/*  Ryson's Eye in the Sky (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22686;

/*  Seasoned Guardsman (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.26 WHERE `entry`=22687;

/*  Seasoned Legionnaire (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.27 WHERE `entry`=22688;

/*  Stormpike Commando (1)  */
UPDATE `creature_template` SET `minlevel` = 68, `maxlevel` = 68, `DamageModifier` = 1.0 WHERE `entry`=22689;

/*  Stormpike Defender (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0 WHERE `entry`=22690;

/*  Stormpike Ram Rider (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22691;

/*  Stormpike Ranger (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22692;

/*  Thanthaldis Snowgleam (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 1.0 WHERE `entry`=22695;

/*  Wing Commander Jeztor (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22697;

/*  Wing Commander Slidore (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22698;

/*  Dirk Swindle (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0 WHERE `entry`=22699;

/*  Lieutenant Greywand (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.78, `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22700;

/*  Lieutenant Grummus (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22701;

/*  Lieutenant Largent (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22702;

/*  Lieutenant Lewis (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22703;

/*  Lieutenant Lonadin (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22704;

/*  Lieutenant Mancuso (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.78, `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22705;

/*  Lieutenant Rugba (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22707;

/*  Lieutenant Spencer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22708;

/*  Lieutenant Stouthandle (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22709;

/*  Lieutenant Stronghoof (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22710;

/*  Lieutenant Vol'talar (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22711;

/*  Seasoned Commando (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `maxlevel` = 69, `DamageModifier` = 1.0 WHERE `entry`=22713;

/*  Seasoned Outrunner (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22716;

/*  Seasoned Ranger (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22717;

/*  Seasoned Reaver (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `maxlevel` = 69, `DamageModifier` = 1.0 WHERE `entry`=22718;

/*  Veteran Guardsman (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.26 WHERE `entry`=22719;

/*  Wing Commander Guse (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 1.0 WHERE `entry`=22721;

/*  Wing Commander Vipore (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22722;

/*  Jotek (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22723;

/*  Mountaineer Boombellow (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `speed_walk` = 1.0, `DamageModifier` = 1.0 WHERE `entry`=22724;

/*  Winterax Berserker (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22725;

/*  Alterac Ram (1)  */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 61 WHERE `entry`=22727;

/*  Coldmine Explorer (1)  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=22729;

/*  Coldmine Surveyor (1)  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=22734;

/*  Corporal Noreg Stormpike (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 1.0 WHERE `entry`=22735;

/*  Corporal Teeka Bloodsnarl (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22736;

/*  Frostwolf (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0 WHERE `entry`=22737;

/*  Frostwolf Bowman (1)  */
UPDATE `creature_template` SET `speed_run` = 1.27, `ManaModifier` = 1.0 WHERE `entry`=22739;

/*  Irondeep Cave Lurker UNUSED (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22740;

/*  Irondeep Explorer (1)  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=22741;

/*  Irondeep Geomancer UNUSED (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22742;

/*  Irondeep Miner (1)  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=22744;

/*  Irondeep Shaman (1)  */
UPDATE `creature_template` SET `minlevel` = 63, `maxlevel` = 64, `speed_walk` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22747;

/*  Irondeep Skullthumper (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22748;

/*  Irondeep Surveyor (1)  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=22749;

/*  Irondeep Trogg (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22750;

/*  Seasoned Coldmine Explorer (1)  */
UPDATE `creature_template` SET `minlevel` = 66, `ManaModifier` = 1.0 WHERE `entry`=22751;

/*  Seasoned Coldmine Guard (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.76 WHERE `entry`=22752;

/*  Seasoned Coldmine Invader (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.76 WHERE `entry`=22753;

/*  Seasoned Coldmine Surveyor (1)  */
UPDATE `creature_template` SET `minlevel` = 66, `maxlevel` = 67, `ManaModifier` = 1.0 WHERE `entry`=22754;

/*  Seasoned Irondeep Explorer (1)  */
UPDATE `creature_template` SET `minlevel` = 66, `speed_walk` = 1.0 WHERE `entry`=22755;

/*  Seasoned Irondeep Raider (1)  */
UPDATE `creature_template` SET `minlevel` = 66 WHERE `entry`=22757;

/*  Seasoned Irondeep Surveyor (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22758;

/*  Sergeant Durgen Stormpike (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22759;

/*  Snowblind Ambusher (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.38889 WHERE `entry`=22761;

/*  Snowblind Harpy (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.38889 WHERE `entry`=22762;

/*  Snowblind Windcaller (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.38889 WHERE `entry`=22763;

/*  Stabled Alterac Ram (1)  */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 61 WHERE `entry`=22764;

/*  Stabled Frostwolf (1)  */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 61 WHERE `entry`=22765;

/*  Stormpike Bowman (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22766;

/*  Stormpike Owl (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0 WHERE `entry`=22767;

/*  Syndicate Agent (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22768;

/*  Syndicate Brigand (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22769;

/*  Veteran Coldmine Explorer (1)  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=22770;

/*  Veteran Coldmine Invader (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.74 WHERE `entry`=22772;

/*  Veteran Coldmine Surveyor (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22773;

/*  Veteran Irondeep Explorer (1)  */
UPDATE `creature_template` SET `minlevel` = 68, `maxlevel` = 69, `speed_walk` = 1.0 WHERE `entry`=22774;

/*  Veteran Irondeep Raider (1)  */
UPDATE `creature_template` SET `minlevel` = 68, `maxlevel` = 69 WHERE `entry`=22776;

/*  Veteran Irondeep Surveyor (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22777;

/*  Whitewhisker Digger (1)  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=22778;

/*  Whitewhisker Geomancer (1)  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=22779;

/*  Whitewhisker Overseer (1)  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=22780;

/*  Whitewhisker Vermin (1)  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=22782;

/*  Winterax Axe Thrower (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `maxlevel` = 70, `DamageModifier` = 1.0 WHERE `entry`=22788;

/*  Winterax Hunter (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22789;

/*  Winterax Mystic (1)  */
UPDATE `creature_template` SET `minlevel` = 67, `maxlevel` = 68, `speed_walk` = 1.0, `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22790;

/*  Winterax Seer (1)  */
UPDATE `creature_template` SET `minlevel` = 68, `maxlevel` = 69, `speed_walk` = 1.0, `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22791;

/*  Winterax Shadow Hunter (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22792;

/*  Winterax Troll (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22794;

/*  Winterax Warrior (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22795;

/*  Winterax Witch Doctor (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22796;

/*  Silvermoon Fireeater  */
UPDATE `creature_template` SET `minlevel` = 42, `maxlevel` = 42 WHERE `entry`=22804;

/*  Shattrath Firebreather  */
UPDATE `creature_template` SET `minlevel` = 23, `maxlevel` = 24 WHERE `entry`=22806;

/*  Lost Torranche  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.14286 WHERE `entry`=22807;

/*  Rescued Cenarion Expedition Druid  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `ArmorModifier` = 1.20756 WHERE `entry`=22810;

/*  Rescued Sha'tar Vindicator  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22812;

/*  Rescued Consortium Dealer  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22813;

/*  Rescued Sporeggar Scout  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22814;

/*  Orphan Matron Mercy  */
UPDATE `creature_template` SET `DamageModifier` = 1.5 WHERE `entry`=22819;

/*  Seer Olum  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 0.992063, `DamageModifier` = 3.0 WHERE `entry`=22820;

/*  Ethereum Avenger  */
UPDATE `creature_template` SET `ArmorModifier` = 0.977915 WHERE `entry`=22821;

/*  Ethereum Nullifier  */
UPDATE `creature_template` SET `ArmorModifier` = 0.977915 WHERE `entry`=22822;

/*  Matron Li-sahar  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 4.0 WHERE `entry`=22825;

/*  King Dorfbruiser  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 5.0, `ManaModifier` = 1.0 WHERE `entry`=22826;

/*  Gorgolon the All-seeing  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 5.0 WHERE `entry`=22827;

/*  Trelopades  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 6.0, `ManaModifier` = 1.0 WHERE `entry`=22828;

/*  Morthis Whisperwing  */
UPDATE `creature_template` SET `DamageModifier` = 1.7 WHERE `entry`=22832;

/*  Clintar Dreamwalker  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 0.5 WHERE `entry`=22834;

/*  Cenarion Dreamwarden  */
UPDATE `creature_template` SET `DamageModifier` = 1.4 WHERE `entry`=22835;

/*  Dreamwarden Lurosa  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 0.5 WHERE `entry`=22837;

/*  Ashtongue Illusion  */
UPDATE `creature_template` SET `DamageModifier` = 0.47, `HealthModifier` = 0.7536 WHERE `entry`=22840;

/*  Corvax  */
UPDATE `creature_template` SET `DamageModifier` = 5.0 WHERE `entry`=22842;

/*  Rook  */
UPDATE `creature_template` SET `DamageModifier` = 5.0 WHERE `entry`=22843;

/*  Ashtongue Battlelord  */
UPDATE `creature_template` SET `speed_run` = 1.42857, `DamageModifier` = 30.0, `HealthModifier` = 45.0 WHERE `entry`=22844;

/*  Ashtongue Mystic  */
UPDATE `creature_template` SET `speed_run` = 1.0, `DamageModifier` = 18.0, `HealthModifier` = 30.0 WHERE `entry`=22845;

/*  Ashtongue Stormcaller  */
UPDATE `creature_template` SET `speed_run` = 1.0, `DamageModifier` = 16.0, `HealthModifier` = 30.0 WHERE `entry`=22846;

/*  Ashtongue Primalist  */
UPDATE `creature_template` SET `speed_run` = 1.0, `DamageModifier` = 26.0 WHERE `entry`=22847;

/*  Storm Fury  */
UPDATE `creature_template` SET `DamageModifier` = 2.4, `ManaModifier` = 1.0 WHERE `entry`=22848;

/*  Ashtongue Feral Spirit  */
UPDATE `creature_template` SET `DamageModifier` = 26.0, `HealthModifier` = 15.0 WHERE `entry`=22849;

/*  [UNUSED] Dread Lord  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22852;

/*  Illidari Defiler  */
UPDATE `creature_template` SET `speed_walk` = 2.0, `speed_run` = 1.42857, `DamageModifier` = 18.0, `HealthModifier` = 30.0 WHERE `entry`=22853;

/*  [UNUSED] Illidari Felstalker  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22854;

/*  Illidari Nightlord  */
UPDATE `creature_template` SET `speed_walk` = 2.0, `speed_run` = 1.71429, `DamageModifier` = 35.0, `HealthModifier` = 60.0, `ManaModifier` = 1.0 WHERE `entry`=22855;

/*  Illidari Ravager  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=22857;

/*  Illidari Succubus  */
UPDATE `creature_template` SET `DamageModifier` = 1.1 WHERE `entry`=22860;

/*  Illidan's Presence  */
UPDATE `creature_template` SET `speed_run` = 1.0, `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22865;

/*  Illidari Boneslicer  */
UPDATE `creature_template` SET `speed_walk` = 2.0, `speed_run` = 1.42857, `DamageModifier` = 16.0, `HealthModifier` = 30.0, `ManaModifier` = 1.0 WHERE `entry`=22869;

/*  Olum's Spirit  */
UPDATE `creature_template` SET `speed_walk` = 0.2, `speed_run` = 0.0714286 WHERE `entry`=22870;

/*  Coilskar General  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `speed_run` = 1.71429, `DamageModifier` = 28.0, `HealthModifier` = 40.0 WHERE `entry`=22873;

/*  Coilskar Harpooner  */
UPDATE `creature_template` SET `DamageModifier` = 20.0, `HealthModifier` = 30.0 WHERE `entry`=22874;

/*  Coilskar Sea-Caller  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `speed_run` = 1.71429, `DamageModifier` = 16.0, `HealthModifier` = 30.0 WHERE `entry`=22875;

/*  Coilskar Soothsayer  */
UPDATE `creature_template` SET `DamageModifier` = 16.0, `HealthModifier` = 30.0 WHERE `entry`=22876;

/*  Coilskar Wrangler  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `speed_run` = 1.71429, `DamageModifier` = 30.0, `HealthModifier` = 30.0 WHERE `entry`=22877;

/*  Aqueous Lord  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `speed_run` = 1.71429, `DamageModifier` = 26.0, `HealthModifier` = 60.0 WHERE `entry`=22878;

/*  Shadowmoon Reaver  */
UPDATE `creature_template` SET `DamageModifier` = 26.0, `HealthModifier` = 30.0 WHERE `entry`=22879;

/*  Shadowmoon Champion  */
UPDATE `creature_template` SET `DamageModifier` = 30.0, `HealthModifier` = 45.0 WHERE `entry`=22880;

/*  Aqueous Surger  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `speed_run` = 1.71429, `DamageModifier` = 16.75, `HealthModifier` = 15.0 WHERE `entry`=22881;

/*  Shadowmoon Deathshaper  */
UPDATE `creature_template` SET `DamageModifier` = 18.0 WHERE `entry`=22882;

/*  Leviathan  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `speed_run` = 1.71429, `DamageModifier` = 43.5, `HealthModifier` = 75.0 WHERE `entry`=22884;

/*  Dragon Turtle  */
UPDATE `creature_template` SET `DamageModifier` = 25.0, `HealthModifier` = 15.0, `ArmorModifier` = 1.9813 WHERE `entry`=22885;

/*  Black Temple Captive  */
UPDATE `creature_template` SET `DamageModifier` = 6.0, `ArmorModifier` = 1.0265 WHERE `entry`=22886;

/*  Manifest Nightmare  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 0.75 WHERE `entry`=22889;

/*  First Fragment Guardian  */
UPDATE `creature_template` SET `DamageModifier` = 3.0, `ManaModifier` = 1.0 WHERE `entry`=22890;

/*  Second Fragment Guardian  */
UPDATE `creature_template` SET `DamageModifier` = 3.0, `ManaModifier` = 1.0 WHERE `entry`=22891;

/*  Third Fragment Guardian  */
UPDATE `creature_template` SET `DamageModifier` = 3.0, `ManaModifier` = 1.0 WHERE `entry`=22892;

/*  Wodin the Troll-Servant  */
UPDATE `creature_template` SET `DamageModifier` = 0.8 WHERE `entry`=22893;

/*  Protectorate Advisor Rahim  */
UPDATE `creature_template` SET `speed_walk` = 1.1, `DamageModifier` = 1.2, `ArmorModifier` = 1.00118 WHERE `entry`=22899;

/*  Phantasmal Lash  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 0.5 WHERE `entry`=22902;

/*  Skulloc Soulgrinder  */
UPDATE `creature_template` SET `DamageModifier` = 11.0 WHERE `entry`=22910;

/*  Vim'gol the Vile  */
UPDATE `creature_template` SET `DamageModifier` = 11.0 WHERE `entry`=22911;

/*  Clintar Dreamwalker's Spirit  */
UPDATE `creature_template` SET `speed_walk` = 1.0 WHERE `entry`=22916;

/*  Thuk the Defiant  */
UPDATE `creature_template` SET `DamageModifier` = 6.0 WHERE `entry`=22920;

/*  Innkeeper Aelerya  */
UPDATE `creature_template` SET `speed_walk` = 1.1 WHERE `entry`=22922;

/*  Arthorn Windsong  */
UPDATE `creature_template` SET `speed_walk` = 1.11, `DamageModifier` = 0.3 WHERE `entry`=22924;

/*  Ethereum Prisoner (Dungeon Energy Ball)  */
UPDATE `creature_template` SET `HealthModifier` = 35.0 WHERE `entry`=22927;

/*  Ambassador Pax'ivi  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22928;

/*  Greater Shadowfiend  */
UPDATE `creature_template` SET `speed_run` = 0.714286 WHERE `entry`=22929;

/*  Sai'kkal the Elder  */
UPDATE `creature_template` SET `DamageModifier` = 0.7 WHERE `entry`=22932;

/*  Auhula  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=22936;

/*  Naturalist Bite (1)  */
UPDATE `creature_template` SET `DamageModifier` = 0.7, `ArmorModifier` = 1.00475 WHERE `entry`=22938;

/*  Temple Concubine  */
UPDATE `creature_template` SET `speed_run` = 1.42857, `DamageModifier` = 20.0, `ManaModifier` = 1.0 WHERE `entry`=22939;

/*  Grok  */
UPDATE `creature_template` SET `DamageModifier` = 1.5, `HealthModifier` = 1.1065 WHERE `entry`=22940;

/*  Mog'dorg the Wizened  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.7 WHERE `entry`=22941;

/*  Fel Orc Mutant 1  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22942;

/*  Shadowmoon Blood Mage  */
UPDATE `creature_template` SET `DamageModifier` = 18.0, `HealthModifier` = 25.0 WHERE `entry`=22945;

/*  Shadowmoon War Hound  */
UPDATE `creature_template` SET `speed_run` = 1.38571, `DamageModifier` = 9.0 WHERE `entry`=22946;

/*  Veras Darkshadow  */
UPDATE `creature_template` SET `minlevel` = 73, `maxlevel` = 73, `speed_walk` = 1.6, `speed_run` = 1.71429, `DamageModifier` = 38.0, `HealthModifier` = 250.0, `ManaModifier` = 1.0 WHERE `entry`=22952;

/*  Wrathbone Flayer  */
UPDATE `creature_template` SET `DamageModifier` = 35.0, `HealthModifier` = 50.0 WHERE `entry`=22953;

/*  Illidari Fearbringer  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `speed_run` = 1.42857, `DamageModifier` = 30.0, `HealthModifier` = 75.0 WHERE `entry`=22954;

/*  Charming Courtesan  */
UPDATE `creature_template` SET `speed_run` = 1.42857, `DamageModifier` = 4.0 WHERE `entry`=22955;

/*  Sister of Pain  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `speed_run` = 1.42857, `DamageModifier` = 30.0, `HealthModifier` = 50.0 WHERE `entry`=22956;

/*  Priestess of Dementia  */
UPDATE `creature_template` SET `speed_walk` = 2.0, `speed_run` = 1.42857, `DamageModifier` = 26.0, `HealthModifier` = 90.0 WHERE `entry`=22957;

/*  Spellbound Attendant  */
UPDATE `creature_template` SET `DamageModifier` = 26.0, `HealthModifier` = 30.0 WHERE `entry`=22959;

/*  Dragonmaw Wyrmcaller  */
UPDATE `creature_template` SET `DamageModifier` = 28.0, `HealthModifier` = 35.0 WHERE `entry`=22960;

/*  [UNUSED] Harem Girl 3  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22961;

/*  Priestess of Delight  */
UPDATE `creature_template` SET `speed_walk` = 2.0, `speed_run` = 1.42857, `DamageModifier` = 40.0, `HealthModifier` = 90.0, `ManaModifier` = 1.0 WHERE `entry`=22962;

/*  Bonechewer Worker  */
UPDATE `creature_template` SET `DamageModifier` = 4.0, `HealthModifier` = 4.5 WHERE `entry`=22963;

/*  Sister of Pleasure  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `speed_run` = 1.42857, `DamageModifier` = 30.0, `HealthModifier` = 50.0 WHERE `entry`=22964;

/*  Enslaved Servant  */
UPDATE `creature_template` SET `DamageModifier` = 26.0, `ArmorModifier` = 1.04204 WHERE `entry`=22965;

/*  Lightsworn Elekk Rider  */
UPDATE `creature_template` SET `HealthModifier` = 1.25 WHERE `entry`=22966;

/*  Scryer Cavalier  */
UPDATE `creature_template` SET `DamageModifier` = 0.01, `HealthModifier` = 1.02 WHERE `entry`=22967;

/*  Scryer Hawkstrider  */
UPDATE `creature_template` SET `speed_run` = 1.14286 WHERE `entry`=22969;

/*  Cenarion Sparrowhawk  */
UPDATE `creature_template` SET `DamageModifier` = 200.0 WHERE `entry`=22972;

/*  Black Temple Shattered Hand Fel Orc  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22973;

/*  Wild Sparrowhawk  */
UPDATE `creature_template` SET `DamageModifier` = 1.7, `HealthModifier` = 1.25 WHERE `entry`=22979;

/*  Skyguard Scout  */
UPDATE `creature_template` SET `speed_run` = 1.71429, `DamageModifier` = 1.2 WHERE `entry`=22980;

/*  Watcher Elaira  */
UPDATE `creature_template` SET `speed_walk` = 1.11, `DamageModifier` = 0.3, `HealthModifier` = 1.25 WHERE `entry`=22981;

/*  Skyguard Navigator  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=22982;

/*  Black Temple Trigger  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `DamageModifier` = 1.0 WHERE `entry`=22984;

/*  Illidari Shadowlord  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.14286, `DamageModifier` = 10.0 WHERE `entry`=22988;

/*  Maiev Shadowsong  */
UPDATE `creature_template` SET `speed_run` = 1.14286, `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=22989;

/*  Akama  */
UPDATE `creature_template` SET `minlevel` = 73, `maxlevel` = 73, `DamageModifier` = 33.0, `HealthModifier` = 165.0, `ManaModifier` = 100.0 WHERE `entry`=22990;

/*  Guardian of the Hawk  */
UPDATE `creature_template` SET `DamageModifier` = 5.7 WHERE `entry`=22992;

/*  Guardian of the Eagle  */
UPDATE `creature_template` SET `DamageModifier` = 2.1, `ArmorModifier` = 0.509625 WHERE `entry`=22993;

/*  Guardian of the Falcon  */
UPDATE `creature_template` SET `DamageModifier` = 1.5 WHERE `entry`=22994;

/*  Chort  */
UPDATE `creature_template` SET `speed_walk` = 1.1 WHERE `entry`=22995;

/*  Blade of Azzinoth  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `DamageModifier` = 1.0 WHERE `entry`=22996;

/*  Rizzle Sprysprocket  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 4.0 WHERE `entry`=23002;

/*  Ethereum Jailor  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=23008;

/*  Skyguard Handler  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=23016;

/*  Shadowmoon Houndmaster  */
UPDATE `creature_template` SET `DamageModifier` = 30.0, `HealthModifier` = 35.0 WHERE `entry`=23018;

/*  Shadow Serpent  */
UPDATE `creature_template` SET `ArmorModifier` = 0.977915 WHERE `entry`=23020;

/*  Gordunni Soulreaper  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=23022;

/*  Rizzle's Depth Charge  */
UPDATE `creature_template` SET `speed_run` = 1.14286 WHERE `entry`=23025;

/*  Twilight Serpent  */
UPDATE `creature_template` SET `ArmorModifier` = 0.977915 WHERE `entry`=23026;

/*  Bonechewer Taskmaster  */
UPDATE `creature_template` SET `DamageModifier` = 24.0, `HealthModifier` = 30.0 WHERE `entry`=23028;

/*  Talonsworn Forest-Rager  */
UPDATE `creature_template` SET `DamageModifier` = 1.2, `ManaModifier` = 1.0 WHERE `entry`=23029;

/*  Dragonmaw Sky Stalker  */
UPDATE `creature_template` SET `speed_run` = 2.0, `DamageModifier` = 16.0, `HealthModifier` = 35.0 WHERE `entry`=23030;

/*  Armored Nether Drake  */
UPDATE `creature_template` SET `DamageModifier` = 0.8, `HealthModifier` = 10.0, `ManaModifier` = 1.0 WHERE `entry`=23031;

/*  Anzu  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `speed_run` = 1.14286, `DamageModifier` = 20.0 WHERE `entry`=23035;

/*  Captive Sparrowhawk  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `DamageModifier` = 1.7 WHERE `entry`=23036;

/*  Sky Commander Adaris  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=23038;

/*  Severin  */
UPDATE `creature_template` SET `DamageModifier` = 1.2, `ArmorModifier` = 1.00118 WHERE `entry`=23042;

/*  Shadowmoon Soldier  */
UPDATE `creature_template` SET `DamageModifier` = 5.0, `HealthModifier` = 5.0 WHERE `entry`=23047;

/*  Sky Sergeant Doryn  */
UPDATE `creature_template` SET `DamageModifier` = 1.2, `ArmorModifier` = 1.00118 WHERE `entry`=23048;

/*  Shadowmoon Weapon Master  */
UPDATE `creature_template` SET `DamageModifier` = 40.0, `HealthModifier` = 50.0 WHERE `entry`=23049;

/*  Little Noah  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=23050;

/*  Monstrous Kaliri  */
UPDATE `creature_template` SET `speed_walk` = 14.0, `speed_run` = 1.71429 WHERE `entry`=23051;

/*  Bladespire Supplicant  */
UPDATE `creature_template` SET `DamageModifier` = 1.7 WHERE `entry`=23053;

/*  Kael'thas Sunstrider  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.14286, `DamageModifier` = 1.3, `ArmorModifier` = 1.22764 WHERE `entry`=23054;

/*  Felguard Degrader  */
UPDATE `creature_template` SET `speed_run` = 0.857143, `DamageModifier` = 6.5, `ManaModifier` = 1.0 WHERE `entry`=23055;

/*  Rivendark  */
UPDATE `creature_template` SET `DamageModifier` = 6.0, `ManaModifier` = 1.0 WHERE `entry`=23061;

/*  Obsidian Consort  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=23062;

/*  Olnayvi Copperpinch  */
UPDATE `creature_template` SET `speed_walk` = 1.1 WHERE `entry`=23065;

/*  Talonpriest Ishaal  */
UPDATE `creature_template` SET `DamageModifier` = 3.75, `ArmorModifier` = 1.80319 WHERE `entry`=23066;

/*  Talonpriest Skizzik  */
UPDATE `creature_template` SET `DamageModifier` = 3.75, `ArmorModifier` = 1.90103 WHERE `entry`=23067;

/*  Talonpriest Zellek  */
UPDATE `creature_template` SET `DamageModifier` = 3.75, `ArmorModifier` = 1.95695 WHERE `entry`=23068;

/*  Illidan DB Target  */
UPDATE `creature_template` SET `speed_run` = 0.992063 WHERE `entry`=23070;

/*  Legion Flak Cannon  */
UPDATE `creature_template` SET `speed_run` = 1.14286, `DamageModifier` = 3.0, `ArmorModifier` = 0.979829 WHERE `entry`=23076;

/*  Peacekeeper Jadaar  */
UPDATE `creature_template` SET `speed_walk` = 1.1, `DamageModifier` = 1.2 WHERE `entry`=23079;

/*  Black Temple Invis Stalker  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=23084;

/*  Supremus Punch Invis Stalker  */
UPDATE `creature_template` SET `minlevel` = 73, `maxlevel` = 73, `speed_run` = 1.28571 WHERE `entry`=23095;

/*  Acolyte of Water  */
UPDATE `creature_template` SET `speed_run` = 1.28968 WHERE `entry`=23097;

/*  Acolyte of Earth  */
UPDATE `creature_template` SET `speed_walk` = 1.55556 WHERE `entry`=23098;

/*  Challe  */
UPDATE `creature_template` SET `DamageModifier` = 1.3, `ArmorModifier` = 1.57689 WHERE `entry`=23101;

/*  Vengeful Spirit  */
UPDATE `creature_template` SET `speed_walk` = 1.11111, `speed_run` = 1.42857, `DamageModifier` = 0.5 WHERE `entry`=23109;

/*  Ogri'la Keg King  */
UPDATE `creature_template` SET `minlevel` = 73, `speed_walk` = 1.1 WHERE `entry`=23110;

/*  Shadowy Construct  */
UPDATE `creature_template` SET `speed_run` = 0.785714, `DamageModifier` = 1.0 WHERE `entry`=23111;

/*  Mingo  */
UPDATE `creature_template` SET `minlevel` = 73, `speed_walk` = 1.1 WHERE `entry`=23112;

/*  Doomguard Punisher  */
UPDATE `creature_template` SET `speed_run` = 1.14286, `DamageModifier` = 6.5 WHERE `entry`=23113;

/*  Ogri'la Peacekeeper  */
UPDATE `creature_template` SET `speed_walk` = 1.48, `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=23115;

/*  Sky Sergeant Vanderlip  */
UPDATE `creature_template` SET `DamageModifier` = 1.5 WHERE `entry`=23120;

/*  Anzu (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=23122;

/*  Doom Blossom Move Target  */
UPDATE `creature_template` SET `speed_walk` = 0.4, `speed_run` = 0.142857, `DamageModifier` = 1.0 WHERE `entry`=23124;

/*  [UNUSED] Boss Teron Gorefiend (Mounted)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=23126;

/*  Farseer Javad  */
UPDATE `creature_template` SET `HealthModifier` = 3.1253 WHERE `entry`=23127;

/*  Brood of Anzu  */
UPDATE `creature_template` SET `speed_run` = 1.14286, `DamageModifier` = 2.0 WHERE `entry`=23132;

/*  Hawk Spirit  */
UPDATE `creature_template` SET `speed_run` = 1.14286, `DamageModifier` = 4.6 WHERE `entry`=23134;

/*  Falcon Spirit  */
UPDATE `creature_template` SET `speed_run` = 1.14286, `DamageModifier` = 1.0 WHERE `entry`=23135;

/*  Eagle Spirit  */
UPDATE `creature_template` SET `DamageModifier` = 4.6 WHERE `entry`=23136;

/*  Yarzill the Merc  */
UPDATE `creature_template` SET `DamageModifier` = 2.4 WHERE `entry`=23141;

/*  Dragonmaw Enforcer  */
UPDATE `creature_template` SET `DamageModifier` = 8.0, `ArmorModifier` = 0.979829 WHERE `entry`=23146;

/*  Shadowmoon Grunt  */
UPDATE `creature_template` SET `DamageModifier` = 4.0, `HealthModifier` = 4.5 WHERE `entry`=23147;

/*  Mistress of the Mines  */
UPDATE `creature_template` SET `DamageModifier` = 2.4 WHERE `entry`=23149;

/*  Dragonmaw Pitfighter  */
UPDATE `creature_template` SET `ArmorModifier` = 0.957963 WHERE `entry`=23150;

/*  The Rulkster  */
UPDATE `creature_template` SET `DamageModifier` = 1.75 WHERE `entry`=23151;

/*  Vagath  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=23152;

/*  Aluyen  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.0, `DamageModifier` = 1.0 WHERE `entry`=23157;

/*  Seer Kanai  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.0, `DamageModifier` = 3.0, `ArmorModifier` = 1.00118 WHERE `entry`=23158;

/*  Okuno  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.0, `DamageModifier` = 1.0, `ArmorModifier` = 1.00118 WHERE `entry`=23159;

/*  Darkscreecher Akkarai  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=23161;

/*  Vakkiz the Windrager  */
UPDATE `creature_template` SET `DamageModifier` = 8.5, `ManaModifier` = 1.0 WHERE `entry`=23162;

/*  Gezzarak the Huntress  */
UPDATE `creature_template` SET `DamageModifier` = 5.0, `ManaModifier` = 1.0 WHERE `entry`=23163;

/*  Toranaku  */
UPDATE `creature_template` SET `DamageModifier` = 4.0, `ArmorModifier` = 1.19113 WHERE `entry`=23164;

/*  Karrog  */
UPDATE `creature_template` SET `DamageModifier` = 8.0, `ManaModifier` = 1.0 WHERE `entry`=23165;

/*  Ronag the Slave Driver  */
UPDATE `creature_template` SET `DamageModifier` = 0.8 WHERE `entry`=23166;

/*  Anzuli Hatchling  */
UPDATE `creature_template` SET `ArmorModifier` = 0.976895 WHERE `entry`=23167;

/*  Or'kaos the Insane  */
UPDATE `creature_template` SET `speed_walk` = 2.0, `speed_run` = 2.0, `DamageModifier` = 8.0 WHERE `entry`=23168;

/*  Alliance Soldier  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `ArmorModifier` = 1.22543 WHERE `entry`=23170;

/*  Horde Soldier  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `ArmorModifier` = 1.22543 WHERE `entry`=23171;

/*  Hand of Gorefiend  */
UPDATE `creature_template` SET `DamageModifier` = 30.0 WHERE `entry`=23172;

/*  Tarren Mill Guardsman  */
UPDATE `creature_template` SET `minlevel` = 67, `maxlevel` = 68, `speed_walk` = 1.2, `DamageModifier` = 1.8, `HealthModifier` = 2.9789 WHERE `entry`=23175;

/*  Tarren Mill Guardsman  */
UPDATE `creature_template` SET `minlevel` = 67, `maxlevel` = 68, `speed_walk` = 1.2, `DamageModifier` = 1.8, `HealthModifier` = 2.9789 WHERE `entry`=23176;

/*  Tarren Mill Guardsman (1)  */
UPDATE `creature_template` SET `minlevel` = 71, `maxlevel` = 72, `DamageModifier` = 1.0 WHERE `entry`=23181;

/*  Tarren Mill Guardsman (1)  */
UPDATE `creature_template` SET `minlevel` = 71, `maxlevel` = 72, `DamageModifier` = 1.0 WHERE `entry`=23182;

/*  Tarren Mill Lookout (1)  */
UPDATE `creature_template` SET `minlevel` = 71, `maxlevel` = 72, `DamageModifier` = 1.0, `HealthModifier` = 4.7627 WHERE `entry`=23183;

/*  Tarren Mill Lookout (1)  */
UPDATE `creature_template` SET `minlevel` = 71, `maxlevel` = 72, `DamageModifier` = 1.0, `HealthModifier` = 4.7627 WHERE `entry`=23184;

/*  Tarren Mill Protector (1)  */
UPDATE `creature_template` SET `minlevel` = 71, `maxlevel` = 72, `DamageModifier` = 1.0, `HealthModifier` = 4.8946 WHERE `entry`=23185;

/*  Tarren Mill Protector (1)  */
UPDATE `creature_template` SET `minlevel` = 71, `maxlevel` = 72, `DamageModifier` = 1.0, `HealthModifier` = 4.8946, `ArmorModifier` = 1.12664 WHERE `entry`=23186;

/*  Dragonmaw Transporter  */
UPDATE `creature_template` SET `speed_walk` = 2.3, `DamageModifier` = 1.3 WHERE `entry`=23188;

/*  Ember of Azzinoth  */
UPDATE `creature_template` SET `DamageModifier` = 0.4 WHERE `entry`=23192;

/*  Lordaeron Citizen (Jesse)  */
UPDATE `creature_template` SET `speed_walk` = 1.0 WHERE `entry`=23193;

/*  Illidan Demon Form  */
UPDATE `creature_template` SET `rank` = 1, `DamageModifier` = 1.0 WHERE `entry`=23195;

/*  Bonechewer Behemoth  */
UPDATE `creature_template` SET `speed_walk` = 2.0, `speed_run` = 1.71429, `DamageModifier` = 30.0, `HealthModifier` = 90.0, `ManaModifier` = 1.0 WHERE `entry`=23196;

/*  Vakkiz the Windrager  */
UPDATE `creature_template` SET `DamageModifier` = 1.2, `ManaModifier` = 1.0 WHERE `entry`=23204;

/*  Akkarai Hatchling  */
UPDATE `creature_template` SET `DamageModifier` = 0.25, `ArmorModifier` = 0.911661 WHERE `entry`=23206;

/*  Skettis Assassin  */
UPDATE `creature_template` SET `DamageModifier` = 1.3, `ArmorModifier` = 0.979829 WHERE `entry`=23207;

/*  Dragonmaw Peon Kill Credit  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=23209;

/*  Creature Generator (Akama)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=23210;

/*  Dragonmaw Peon Mutton  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=23213;

/*  Ashtongue Sorcerer  */
UPDATE `creature_template` SET `speed_run` = 1.71429, `DamageModifier` = 27.4, `HealthModifier` = 20.0 WHERE `entry`=23215;

/*  Ashtongue Defender  */
UPDATE `creature_template` SET `speed_run` = 1.71429, `DamageModifier` = 20.0, `HealthModifier` = 12.0 WHERE `entry`=23216;

/*  Bladespire Agent  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.14286 WHERE `entry`=23217;

/*  Bloodmaul Agent  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.14286 WHERE `entry`=23218;

/*  Blackwind Warp Chaser  */
UPDATE `creature_template` SET `ArmorModifier` = 0.974823 WHERE `entry`=23219;

/*  Shivan Assassin  */
UPDATE `creature_template` SET `DamageModifier` = 8.0 WHERE `entry`=23220;

/*  Bonechewer Brawler  */
UPDATE `creature_template` SET `speed_run` = 2.0, `DamageModifier` = 40.0, `HealthModifier` = 55.0 WHERE `entry`=23222;

/*  Bonechewer Spectator  */
UPDATE `creature_template` SET `DamageModifier` = 4.0, `HealthModifier` = 4.5 WHERE `entry`=23223;

/*  Illidari Elite  */
UPDATE `creature_template` SET `DamageModifier` = 5.0, `HealthModifier` = 3.0 WHERE `entry`=23226;

/*  Eye of Shartuul  */
UPDATE `creature_template` SET `DamageModifier` = 1.3, `ArmorModifier` = 1.22691 WHERE `entry`=23228;

/*  Mutant War Hound  */
UPDATE `creature_template` SET `speed_run` = 1.42857, `DamageModifier` = 14.0, `HealthModifier` = 20.0 WHERE `entry`=23232;

/*  Chu'a'lor  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=23233;

/*  Bonechewer Blade Fury  */
UPDATE `creature_template` SET `speed_run` = 1.42857, `DamageModifier` = 24.0, `HealthModifier` = 30.0 WHERE `entry`=23235;

/*  Bonechewer Shield Disciple  */
UPDATE `creature_template` SET `DamageModifier` = 27.5, `HealthModifier` = 30.0 WHERE `entry`=23236;

/*  Bonechewer Blood Prophet  */
UPDATE `creature_template` SET `DamageModifier` = 18.0, `HealthModifier` = 30.0 WHERE `entry`=23237;

/*  [UNUSED] Mutant Commander [PH]  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=23238;

/*  Bonechewer Combatant  */
UPDATE `creature_template` SET `speed_run` = 2.0, `DamageModifier` = 40.0, `HealthModifier` = 55.0 WHERE `entry`=23239;

/*  Aether-tech Assistant  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.38571 WHERE `entry`=23243;

/*  Aether-tech Adept  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.38571 WHERE `entry`=23244;

/*  Aether-tech Master  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.38571 WHERE `entry`=23245;

/*  Bash'ir Subprimal  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 5.0 WHERE `entry`=23247;

/*  Bash'ir Flesh Fiend  */
UPDATE `creature_template` SET `DamageModifier` = 2.8 WHERE `entry`=23249;

/*  Kronk  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=23253;

/*  Ogri'la Storyteller  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=23256;

/*  Skyguard Windcharger  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=23257;

/*  Furywing  */
UPDATE `creature_template` SET `DamageModifier` = 6.0, `ManaModifier` = 1.0 WHERE `entry`=23261;

/*  Seer Nakha  */
UPDATE `creature_template` SET `speed_walk` = 1.1, `HealthModifier` = 1.3281 WHERE `entry`=23265;

/*  Arvoar the Rapacious  */
UPDATE `creature_template` SET `DamageModifier` = 2.5 WHERE `entry`=23267;

/*  Seer Jovar  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=23268;

/*  Barash the Den Mother  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=23269;

/*  Vindicator Aeus  */
UPDATE `creature_template` SET `DamageModifier` = 1.25 WHERE `entry`=23270;

/*  Vindicator Kaan  */
UPDATE `creature_template` SET `DamageModifier` = 1.25 WHERE `entry`=23271;

/*  Arcanist Savan  */
UPDATE `creature_template` SET `DamageModifier` = 1.25 WHERE `entry`=23272;

/*  Arcanist Raestan  */
UPDATE `creature_template` SET `DamageModifier` = 1.75 WHERE `entry`=23273;

/*  Dreadmaw  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=23275;

/*  Agadai  */
UPDATE `creature_template` SET `speed_walk` = 1.1, `DamageModifier` = 1.5 WHERE `entry`=23280;

/*  Insidion  */
UPDATE `creature_template` SET `DamageModifier` = 6.0, `ManaModifier` = 1.0 WHERE `entry`=23281;

/*  Obsidia  */
UPDATE `creature_template` SET `minlevel` = 72, `DamageModifier` = 6.0, `ManaModifier` = 1.0 WHERE `entry`=23282;

/*  Lady Sinestra  */
UPDATE `creature_template` SET `minlevel` = 73, `maxlevel` = 73, `DamageModifier` = 1.0 WHERE `entry`=23284;

/*  Nethermine Burster  */
UPDATE `creature_template` SET `speed_run` = 1.19048 WHERE `entry`=23285;

/*  Draenor Blood Terror  */
UPDATE `creature_template` SET `minlevel` = 70 WHERE `entry`=23290;

/*  Chief Overseer Mudlump  */
UPDATE `creature_template` SET `DamageModifier` = 0.01 WHERE `entry`=23291;

/*  Gahk  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=23300;

/*  Cage Trap Disturb Trigger  */
UPDATE `creature_template` SET `speed_run` = 0.992063 WHERE `entry`=23304;

/*  Crazed Murkblood Foreman  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=23305;

/*  Hazzik  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=23306;

/*  Disobedient Dragonmaw Peon  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=23311;

/*  [PH] PvP Cannon  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=23314;

/*  Torkus  */
UPDATE `creature_template` SET `speed_walk` = 1.125 WHERE `entry`=23316;

/*  Ashtongue Rogue  */
UPDATE `creature_template` SET `speed_run` = 1.71429, `DamageModifier` = 14.0, `HealthModifier` = 4.0, `ManaModifier` = 1.0 WHERE `entry`=23318;

/*  Ashtongue Broken  */
UPDATE `creature_template` SET `speed_run` = 1.0, `DamageModifier` = 6.0, `HealthModifier` = 7.0 WHERE `entry`=23319;

/*  Netherwing Ally  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.2 WHERE `entry`=23320;

/*  Nethermine Ravager  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `DamageModifier` = 1.3 WHERE `entry`=23326;

/*  Fel Eye Stalk Transform  */
UPDATE `creature_template` SET `minlevel` = 71, `maxlevel` = 71, `DamageModifier` = 1.0 WHERE `entry`=23329;

/*  Dragonmaw Wind Reaver  */
UPDATE `creature_template` SET `speed_run` = 2.0, `DamageModifier` = 14.0, `HealthModifier` = 35.0 WHERE `entry`=23330;

/*  Bash'ir Reckoner  */
UPDATE `creature_template` SET `HealthModifier` = 5.0 WHERE `entry`=23332;

/*  The Grand Collector  */
UPDATE `creature_template` SET `speed_run` = 1.71429, `DamageModifier` = 12.0, `ArmorModifier` = 1.00017 WHERE `entry`=23333;

/*  Sky Commander Keller  */
UPDATE `creature_template` SET `DamageModifier` = 1.8, `ArmorModifier` = 1.0159 WHERE `entry`=23334;

/*  Skyguard Khatie  */
UPDATE `creature_template` SET `speed_walk` = 1.1, `speed_run` = 1.14286, `DamageModifier` = 2.0, `ArmorModifier` = 1.04535 WHERE `entry`=23335;

/*  Illidari Centurion  */
UPDATE `creature_template` SET `speed_walk` = 2.0, `speed_run` = 1.71429, `DamageModifier` = 26.0, `HealthModifier` = 40.0, `ManaModifier` = 1.0 WHERE `entry`=23337;

/*  Arthorn's Sparrowhawk  */
UPDATE `creature_template` SET `DamageModifier` = 2000.0 WHERE `entry`=23338;

/*  Illidari Heartseeker  */
UPDATE `creature_template` SET `speed_walk` = 2.0, `speed_run` = 1.42857, `DamageModifier` = 18.0, `HealthModifier` = 30.0, `ManaModifier` = 1.0 WHERE `entry`=23339;

/*  Trope the Filth-Belcher  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=23342;

/*  Wrangled Aether Ray  */
UPDATE `creature_template` SET `speed_walk` = 6.4, `speed_run` = 4.0 WHERE `entry`=23343;

/*  Corlok the Vet  */
UPDATE `creature_template` SET `DamageModifier` = 0.9, `ArmorModifier` = 1.01178 WHERE `entry`=23344;

/*  Tork  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.4, `HealthModifier` = 1.1065 WHERE `entry`=23347;

/*  The Grand Collector  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=23350;

/*  Braxxus  */
UPDATE `creature_template` SET `DamageModifier` = 6.0 WHERE `entry`=23353;

/*  Mo'arg Incinerator  */
UPDATE `creature_template` SET `DamageModifier` = 6.0 WHERE `entry`=23354;

/*  Zarcsin  */
UPDATE `creature_template` SET `DamageModifier` = 6.0 WHERE `entry`=23355;

/*  Torki  */
UPDATE `creature_template` SET `speed_walk` = 1.125, `DamageModifier` = 1.4 WHERE `entry`=23362;

/*  Sahaak  */
UPDATE `creature_template` SET `speed_walk` = 1.0 WHERE `entry`=23363;

/*  Torkus Jr.  */
UPDATE `creature_template` SET `speed_walk` = 2.6, `speed_run` = 1.42857, `DamageModifier` = 2.0, `ArmorModifier` = 1.21637 WHERE `entry`=23365;

/*  Bash'ir Controller  */
UPDATE `creature_template` SET `DamageModifier` = 2.35 WHERE `entry`=23368;

/*  Dragonmaw Tower Controller  */
UPDATE `creature_template` SET `DamageModifier` = 8.0 WHERE `entry`=23370;

/*  Mortog Steamhead  */
UPDATE `creature_template` SET `ArmorModifier` = 1.06007 WHERE `entry`=23373;

/*  Ashtongue Stalker  */
UPDATE `creature_template` SET `speed_run` = 1.42857, `DamageModifier` = 26.0, `HealthModifier` = 30.0, `ManaModifier` = 1.0 WHERE `entry`=23374;

/*  Shadow Demon  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `speed_run` = 0.571429, `DamageModifier` = 1.0, `HealthModifier` = 3.0 WHERE `entry`=23375;

/*  Skyguard Ace  */
UPDATE `creature_template` SET `speed_run` = 1.71429, `DamageModifier` = 1.0 WHERE `entry`=23377;

/*  Bronco  */
UPDATE `creature_template` SET `speed_run` = 1.38571, `DamageModifier` = 1.2 WHERE `entry`=23380;

/*  Tydormu  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 1.0 WHERE `entry`=23381;

/*  Skyguard Prisoner  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=23383;

/*  Simon Unit  */
UPDATE `creature_template` SET `DamageModifier` = 0.007, `HealthModifier` = 1.0 WHERE `entry`=23385;

/*  Gan'arg Analyzer  */
UPDATE `creature_template` SET `speed_walk` = 1.0 WHERE `entry`=23386;

/*  Fallen Ally  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=23389;

/*  Bash'ir's Harbinger  */
UPDATE `creature_template` SET `DamageModifier` = 6.0 WHERE `entry`=23390;

/*  Bash'ir  */
UPDATE `creature_template` SET `DamageModifier` = 6.0 WHERE `entry`=23391;

/*  Skyguard Stable Master  */
UPDATE `creature_template` SET `ArmorModifier` = 1.00118 WHERE `entry`=23392;

/*  Deathshadow Agent  */
UPDATE `creature_template` SET `ArmorModifier` = 0.978999 WHERE `entry`=23393;

/*  Promenade Sentinel  */
UPDATE `creature_template` SET `speed_walk` = 2.0, `speed_run` = 1.71429, `DamageModifier` = 32.0, `HealthModifier` = 90.0 WHERE `entry`=23394;

/*  Krixel Pinchwhistle  */
UPDATE `creature_template` SET `subname` = 'Arena Vendor', `speed_walk` = 1.1 WHERE `entry`=23396;

/*  Illidari Blood Lord  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `speed_run` = 1.42857, `DamageModifier` = 29.0, `HealthModifier` = 40.0 WHERE `entry`=23397;

/*  Angered Soul Fragment  */
UPDATE `creature_template` SET `DamageModifier` = 5.0, `ArmorModifier` = 1.24077 WHERE `entry`=23398;

/*  Suffering Soul Fragment  */
UPDATE `creature_template` SET `speed_walk` = 1.11111, `speed_run` = 1.42857, `DamageModifier` = 12.0, `ArmorModifier` = 1.19248 WHERE `entry`=23399;

/*  Illidari Archon  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `speed_run` = 1.42857, `DamageModifier` = 20.0, `HealthModifier` = 30.0 WHERE `entry`=23400;

/*  Hungering Soul Fragment  */
UPDATE `creature_template` SET `speed_walk` = 1.11111, `speed_run` = 1.42857, `DamageModifier` = 9.0 WHERE `entry`=23401;

/*  Illidari Battle-mage  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `speed_run` = 1.42857, `DamageModifier` = 20.0, `HealthModifier` = 30.0 WHERE `entry`=23402;

/*  Illidari Assassin  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `speed_run` = 1.42857, `DamageModifier` = 25.0, `HealthModifier` = 25.0, `ManaModifier` = 1.0 WHERE `entry`=23403;

/*  Imp Retainer  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=23404;

/*  Jimmy McWeaksauce  */
UPDATE `creature_template` SET `DamageModifier` = 20.0 WHERE `entry`=23406;

/*  Johnny McWeaksauce  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=23407;

/*  Spirit of Udalo  */
UPDATE `creature_template` SET `speed_run` = 1.0, `DamageModifier` = 0.5, `HealthModifier` = 0.7536 WHERE `entry`=23410;

/*  Spirit of Olum  */
UPDATE `creature_template` SET `speed_run` = 1.0, `DamageModifier` = 0.5, `HealthModifier` = 0.7536 WHERE `entry`=23411;

/*  Illidan Door Trigger  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=23412;

/*  Skyguard Handler Irena  */
UPDATE `creature_template` SET `speed_walk` = 1.1, `DamageModifier` = 1.75 WHERE `entry`=23413;

/*  Bash'ir Inquisitor  */
UPDATE `creature_template` SET `DamageModifier` = 7.0, `HealthModifier` = 15.0 WHERE `entry`=23414;

/*  Skyguard Handler Deesak  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=23415;

/*  Reth'hedron's Target  */
UPDATE `creature_template` SET `minlevel` = 73, `maxlevel` = 73 WHERE `entry`=23416;

/*  Reliquary Combat Trigger  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `DamageModifier` = 1.0 WHERE `entry`=23417;

/*  Ashtongue Channeler  */
UPDATE `creature_template` SET `speed_run` = 1.71429, `DamageModifier` = 15.0, `HealthModifier` = 25.0 WHERE `entry`=23421;

/*  The Illidari Council  */
UPDATE `creature_template` SET `rank` = 3, `DamageModifier` = 1.0 WHERE `entry`=23426;

/*  Illidari Lord Balthas  */
UPDATE `creature_template` SET `speed_walk` = 0.888888, `speed_run` = 0.912699, `DamageModifier` = 0.7 WHERE `entry`=23427;

/*  Jho'nass  */
UPDATE `creature_template` SET `speed_walk` = 1.1 WHERE `entry`=23428;

/*  Commander Hobb  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=23434;

/*  Sanctum Defender  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=23435;

/*  Image of Dementia  */
UPDATE `creature_template` SET `speed_walk` = 2.0, `speed_run` = 1.42857, `DamageModifier` = 0.013, `ArmorModifier` = 1.22691 WHERE `entry`=23436;

/*  Indormi  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 1.0 WHERE `entry`=23437;

/*  Dragonmaw Skybreaker  */
UPDATE `creature_template` SET `DamageModifier` = 1.25 WHERE `entry`=23440;

/*  Dragonmaw Skybreaker  */
UPDATE `creature_template` SET `DamageModifier` = 1.25 WHERE `entry`=23441;

/*  Dragonmaw Raid Credit Marker (Scryers)  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=23443;

/*  Lieutenant Tristia  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `rank` = 1 WHERE `entry`=23446;

/*  Glaive Target  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `DamageModifier` = 2.5 WHERE `entry`=23448;

/*  Yuula  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=23449;

/*  Gordunni Proxy  */
UPDATE `creature_template` SET `DamageModifier` = 1.3 WHERE `entry`=23450;

/*  Veras Vanish Effect  */
UPDATE `creature_template` SET `speed_walk` = 2.0, `speed_run` = 1.42857, `DamageModifier` = 1.0 WHERE `entry`=23451;

/*  Commander Arcus  */
UPDATE `creature_template` SET `DamageModifier` = 1.2, `ArmorModifier` = 1.19006 WHERE `entry`=23452;

/*  Dragonmaw Raid Credit Marker (Aldor)  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=23454;

/*  Purple Netherwing Drake  */
UPDATE `creature_template` SET `DamageModifier` = 1.6 WHERE `entry`=23458;

/*  Cobalt Netherwing Drake  */
UPDATE `creature_template` SET `DamageModifier` = 1.6 WHERE `entry`=23460;

/*  Suraku  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=23461;

/*  Jorus  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=23462;

/*  Onyxien  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=23463;

/*  Malfas  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=23464;

/*  Zoya  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=23465;

/*  Voranaku  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=23466;

/*  Illidan Stormrage  */
UPDATE `creature_template` SET `speed_run` = 1.0, `DamageModifier` = 1.3, `ArmorModifier` = 1.22764 WHERE `entry`=23467;

/*  Yarzill Dragon Form  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=23468;

/*  Enslaved Soul  */
UPDATE `creature_template` SET `speed_walk` = 1.11111, `DamageModifier` = 1.0 WHERE `entry`=23469;

/*  Skettis Outrider  */
UPDATE `creature_template` SET `ArmorModifier` = 0.979123 WHERE `entry`=23471;

/*  World Trigger (Large AOI, Not Immune PC/NPC)  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `DamageModifier` = 1.0 WHERE `entry`=23472;

/*  Aether-tech Apprentice  */
UPDATE `creature_template` SET `speed_walk` = 1.1, `speed_run` = 1.14286, `DamageModifier` = 1.3 WHERE `entry`=23473;

/*  Shivan Assassin (Red)  */
UPDATE `creature_template` SET `DamageModifier` = 8.0 WHERE `entry`=23474;

/*  Shivan Assassin (Blue)  */
UPDATE `creature_template` SET `DamageModifier` = 8.0 WHERE `entry`=23475;

/*  Shivan Assassin (Black)  */
UPDATE `creature_template` SET `DamageModifier` = 8.0 WHERE `entry`=23476;

/*  Armored Nether Drake (Black Temple 01)  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=23477;

/*  Armored Nether Drake (Black Temple 02)  */
UPDATE `creature_template` SET `ManaModifier` = 1.0 WHERE `entry`=23478;

/*  Akama Event Trigger  */
UPDATE `creature_template` SET `speed_walk` = 1.2 WHERE `entry`=23496;

/*  Parasitic Shadowfiend  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 1.5, `HealthModifier` = 0.5 WHERE `entry`=23498;

/*  Blood Elf Council Voice Trigger  */
UPDATE `creature_template` SET `rank` = 3, `DamageModifier` = 1.0 WHERE `entry`=23499;

/*  Reliquary LoS Agro Trigger  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `DamageModifier` = 1.0 WHERE `entry`=23502;

/*  Shadowy Vortex  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=23503;

/*  Broken Illusion  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=23506;

/*  Gul'dan  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=23508;

/*  Ashtongue Elementalist  */
UPDATE `creature_template` SET `speed_run` = 1.71429, `DamageModifier` = 16.0, `HealthModifier` = 4.0 WHERE `entry`=23523;

/*  Ashtongue Spiritbinder  */
UPDATE `creature_template` SET `speed_run` = 1.71429, `DamageModifier` = 16.0, `HealthModifier` = 4.0 WHERE `entry`=23524;

/*  T'chali's Voodoo Brewery Apprentice  */
UPDATE `creature_template` SET `speed_walk` = 1.1 WHERE `entry`=23533;

/*  Matero Zeshuwal  */
UPDATE `creature_template` SET `subname` = 'Demon Trainer' WHERE `entry`=23535;

/*  Nagulon  */
UPDATE `creature_template` SET `DamageModifier` = 1.1, `ArmorModifier` = 1.4374 WHERE `entry`=23536;

/*  Headless Horseman - Fire (DND)  */
UPDATE `creature_template` SET `minlevel` = 70 WHERE `entry`=23537;

/*  Amani'shi Axe Thrower  */
UPDATE `creature_template` SET `DamageModifier` = 7.0, `HealthModifier` = 12.0 WHERE `entry`=23542;

/*  Kyle Radue  */
UPDATE `creature_template` SET `minlevel` = 69, `maxlevel` = 69 WHERE `entry`=23544;

/*  Soldier of the Frozen Wastes  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `speed_run` = 1.14286, `DamageModifier` = 1.0 WHERE `entry`=23561;

/*  Unstoppable Abomination  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `speed_run` = 1.14286, `DamageModifier` = 1.0 WHERE `entry`=23562;

/*  Soul Weaver  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `speed_walk` = 1.0, `speed_run` = 1.14286, `DamageModifier` = 1.0 WHERE `entry`=23563;

/*  Gizzix Grimegurgle  */
UPDATE `creature_template` SET `speed_walk` = 1.25 WHERE `entry`=23570;

/*  Razbo Rustgear  */
UPDATE `creature_template` SET `speed_walk` = 1.25 WHERE `entry`=23571;

/*  Drazzit Dripvalve  */
UPDATE `creature_template` SET `speed_walk` = 1.25 WHERE `entry`=23572;

/*  Krixil Slogswitch  */
UPDATE `creature_template` SET `speed_walk` = 1.25 WHERE `entry`=23573;

/*  Brogg  */
UPDATE `creature_template` SET `speed_walk` = 1.25 WHERE `entry`=23579;

/*  Amani'shi Warbringer  */
UPDATE `creature_template` SET `speed_run` = 1.14286, `DamageModifier` = 20.5, `HealthModifier` = 15.0 WHERE `entry`=23580;

/*  Amani'shi Medicine Man  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 5.0, `HealthModifier` = 12.0 WHERE `entry`=23581;

/*  Amani'shi Tribesman  */
UPDATE `creature_template` SET `DamageModifier` = 9.0, `HealthModifier` = 12.0 WHERE `entry`=23582;

/*  Amani Bear  */
UPDATE `creature_template` SET `DamageModifier` = 20.0, `HealthModifier` = 12.0 WHERE `entry`=23584;

/*  Amani'shi Scout  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.0 WHERE `entry`=23586;

/*  Amani'shi Reinforcement  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.42857, `DamageModifier` = 20.0, `HealthModifier` = 12.0, `ArmorModifier` = 1.15901 WHERE `entry`=23587;

/*  Grimtotem Spirit-Shifter  */
UPDATE `creature_template` SET `ArmorModifier` = 1.13208 WHERE `entry`=23593;

/*  Amani'shi Flame Caster  */
UPDATE `creature_template` SET `DamageModifier` = 8.0, `HealthModifier` = 12.0 WHERE `entry`=23596;

/*  Amani'shi Guardian  */
UPDATE `creature_template` SET `DamageModifier` = 17.0, `HealthModifier` = 12.0 WHERE `entry`=23597;

/*  Amani Dragonhawk Hatchling  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 9.0, `HealthModifier` = 1.0 WHERE `entry`=23598;

/*  Apprentice Morlann  */
UPDATE `creature_template` SET `speed_walk` = 1.25, `HealthModifier` = 1.2223 WHERE `entry`=23600;

/*  Apprentice Garion  */
UPDATE `creature_template` SET `speed_walk` = 1.25, `DamageModifier` = 0.8, `HealthModifier` = 1.2291 WHERE `entry`=23601;

/*  Uta Roughdough  */
UPDATE `creature_template` SET `speed_walk` = 1.1 WHERE `entry`=23603;

/*  Agnes Farwithers  */
UPDATE `creature_template` SET `speed_walk` = 1.1 WHERE `entry`=23604;

/*  Bron  */
UPDATE `creature_template` SET `speed_walk` = 1.1 WHERE `entry`=23605;

/*  Suntouched Apprentice  */
UPDATE `creature_template` SET `speed_walk` = 1.1 WHERE `entry`=23606;

/*  Ahab Wheathoof  */
UPDATE `creature_template` SET `DamageModifier` = 1.3 WHERE `entry`=23618;

/*  Bergrisst  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=23619;

/*  Chief Thunder-Skins  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=23623;

/*  Mai'Kyl  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=23624;

/*  Samuro  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=23625;

/*  Sig Nicious  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=23626;

/*  Mudsprocket Bruiser  */
UPDATE `creature_template` SET `speed_run` = 1.14286 WHERE `entry`=23636;

/*  Scorchscale Drake  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=23687;

/*  Drunken Brewfest Reveler  */
UPDATE `creature_template` SET `speed_run` = 1.14286 WHERE `entry`=23698;

/*  Kevin Browning  */
UPDATE `creature_template` SET `ArmorModifier` = 1.17331 WHERE `entry`=23699;

/*  [DND] Brewfest Dark Iron Event Generator  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `speed_run` = 0.992063, `HealthModifier` = 1.0 WHERE `entry`=23703;

/*  Cassa Crimsonwing  */
UPDATE `creature_template` SET `DamageModifier` = 1.6 WHERE `entry`=23704;

/*  Touring Orphan  */
UPDATE `creature_template` SET `minlevel` = 3 WHERE `entry`=23712;

/*  Grimtotem Elder  */
UPDATE `creature_template` SET `ArmorModifier` = 1.13208 WHERE `entry`=23714;

/*  Investigator Asric  */
UPDATE `creature_template` SET `DamageModifier` = 1.5, `ArmorModifier` = 1.00118 WHERE `entry`=23719;

/*  Concert Bruiser  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=23721;

/*  Amani Healing Ward  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.0 WHERE `entry`=23757;

/*  Prigmon  */
UPDATE `creature_template` SET `DamageModifier` = 2.3, `ArmorModifier` = 1.04535 WHERE `entry`=23761;

/*  Sylvanas Windrunner (High Elf)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=23765;

/*  Amani'shi Trainer  */
UPDATE `creature_template` SET `DamageModifier` = 9.0, `HealthModifier` = 15.0 WHERE `entry`=23774;

/*  Stonemaul Spirit  */
UPDATE `creature_template` SET `speed_walk` = 1.2 WHERE `entry`=23786;

/*  Smolderwing  */
UPDATE `creature_template` SET `speed_walk` = 1.1, `ArmorModifier` = 1.21656 WHERE `entry`=23789;

/*  Dark Iron Antagonist  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 1.6, `ArmorModifier` = 1.43242 WHERE `entry`=23795;

/*  [DND] Brewfest Keg Move to Target  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70 WHERE `entry`=23808;

/*  Lynx Spirit  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=23812;

/*  Amani'shi Hatcher  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `HealthModifier` = 1.0 WHERE `entry`=23818;

/*  Amani Protective Ward  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.0 WHERE `entry`=23822;

/*  Amani Dragonhawk  */
UPDATE `creature_template` SET `DamageModifier` = 11.0, `HealthModifier` = 3.0 WHERE `entry`=23834;

/*  Zelfrax  */
UPDATE `creature_template` SET `DamageModifier` = 1.4 WHERE `entry`=23864;

/*  Coren Direbrew  */
UPDATE `creature_template` SET `minlevel` = 73, `maxlevel` = 73, `DamageModifier` = 1.5, `HealthModifier` = 21.0, `ArmorModifier` = 1.26614 WHERE `entry`=23872;

/*  Goreclaw the Ravenous  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `DamageModifier` = 1.3 WHERE `entry`=23873;

/*  Amani Lynx Spirit  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=23877;

/*  Amani Bear Spirit  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=23878;

/*  Amani Eagle Spirit  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=23880;

/*  Apothecary Cylla  */
UPDATE `creature_template` SET `DamageModifier` = 1.4 WHERE `entry`=23881;

/*  Amani'shi Savage  */
UPDATE `creature_template` SET `DamageModifier` = 1.2, `HealthModifier` = 0.4 WHERE `entry`=23889;

/*  [DND] Brewfest Dark Iron Spawn Bunny  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `speed_run` = 0.992063, `ArmorModifier` = 1.43242 WHERE `entry`=23894;

/*  Tethyr  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.0, `rank` = 3, `DamageModifier` = 1.0 WHERE `entry`=23899;

/*  Theramore Marksman  */
UPDATE `creature_template` SET `speed_run` = 1.14286, `ArmorModifier` = 1.19642 WHERE `entry`=23900;

/*  Gavis Greyshield  */
UPDATE `creature_template` SET `DamageModifier` = 1.4 WHERE `entry`=23941;

/*  Andello Porter  */
UPDATE `creature_template` SET `speed_walk` = 1.25 WHERE `entry`=23942;

/*  Essence of Zul'jin  */
UPDATE `creature_template` SET `rank` = 3, `DamageModifier` = 1.0 WHERE `entry`=23944;

/*  Apprentice Tasserel  */
UPDATE `creature_template` SET `DamageModifier` = 5.0, `ArmorModifier` = 1.79143 WHERE `entry`=23948;

/*  Firemane Drake  */
UPDATE `creature_template` SET `speed_walk` = 1.0 WHERE `entry`=23969;

/*  Masked Orphan Matron  */
UPDATE `creature_template` SET `speed_walk` = 1.1 WHERE `entry`=23973;

/*  Axle  */
UPDATE `creature_template` SET `speed_walk` = 1.25 WHERE `entry`=23995;

/*  Harkor  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `ArmorModifier` = 1.00118 WHERE `entry`=23999;

/*  Ashli  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=24001;

/*  Amani Crocolisk  */
UPDATE `creature_template` SET `DamageModifier` = 10.0, `HealthModifier` = 4.0 WHERE `entry`=24047;

/*  Amani'shi Beast Tamer  */
UPDATE `creature_template` SET `DamageModifier` = 9.0, `HealthModifier` = 12.0 WHERE `entry`=24059;

/*  Amani Lynx Cub  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=24064;

/*  Amani'shi Handler  */
UPDATE `creature_template` SET `DamageModifier` = 9.0, `HealthModifier` = 12.0 WHERE `entry`=24065;

/*  [DND] Brewfest Target Dummy Move To Target  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70 WHERE `entry`=24109;

/*  Ancient Grimtotem Spirit Guide  */
UPDATE `creature_template` SET `DamageModifier` = 0.5 WHERE `entry`=24133;

/*  Tamed Amani Crocolisk  */
UPDATE `creature_template` SET `DamageModifier` = 10.0, `HealthModifier` = 4.0 WHERE `entry`=24138;

/*  Amani Eagle  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=24159;

/*  Amani'shi Lookout  */
UPDATE `creature_template` SET `DamageModifier` = 7.0 WHERE `entry`=24175;

/*  Amani'shi Wind Walker  */
UPDATE `creature_template` SET `DamageModifier` = 9.0, `HealthModifier` = 10.0 WHERE `entry`=24179;

/*  Amani'shi Protector  */
UPDATE `creature_template` SET `DamageModifier` = 10.0, `HealthModifier` = 10.0, `ManaModifier` = 1.0 WHERE `entry`=24180;

/*  "Little" Logok  */
UPDATE `creature_template` SET `speed_walk` = 1.25 WHERE `entry`=24208;

/*  Amani Bear Mount  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.42857, `DamageModifier` = 10.0, `HealthModifier` = 6.0 WHERE `entry`=24217;

/*  Windy Cloud  */
UPDATE `creature_template` SET `speed_run` = 0.142857 WHERE `entry`=24222;

/*  Amani'shi Warrior  */
UPDATE `creature_template` SET `DamageModifier` = 10.0, `HealthModifier` = 3.5, `ArmorModifier` = 1.04903 WHERE `entry`=24225;

/*  Alyson Antille  */
UPDATE `creature_template` SET `DamageModifier` = 5.0, `HealthModifier` = 17.5 WHERE `entry`=24240;

/*  Thurg  */
UPDATE `creature_template` SET `rank` = 1, `DamageModifier` = 10.0, `HealthModifier` = 14.0, `ManaModifier` = 1.0 WHERE `entry`=24241;

/*  Slither  */
UPDATE `creature_template` SET `HealthModifier` = 14.0, `ManaModifier` = 1.0 WHERE `entry`=24242;

/*  Lord Raadan  */
UPDATE `creature_template` SET `DamageModifier` = 8.0, `HealthModifier` = 14.0, `ManaModifier` = 1.0 WHERE `entry`=24243;

/*  Gazakroth  */
UPDATE `creature_template` SET `DamageModifier` = 0.4, `HealthModifier` = 17.5 WHERE `entry`=24244;

/*  Fenstalker  */
UPDATE `creature_template` SET `DamageModifier` = 8.0, `HealthModifier` = 14.0, `ManaModifier` = 1.0 WHERE `entry`=24245;

/*  Darkheart  */
UPDATE `creature_template` SET `speed_walk` = 1.11111, `speed_run` = 1.42857, `DamageModifier` = 13.0, `HealthModifier` = 14.0, `ManaModifier` = 1.0 WHERE `entry`=24246;

/*  Koragg  */
UPDATE `creature_template` SET `DamageModifier` = 10.0, `HealthModifier` = 14.0, `ManaModifier` = 1.0 WHERE `entry`=24247;

/*  Amani Snake  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 2.0, `ManaModifier` = 1.0 WHERE `entry`=24338;

/*  Harrison Jones  */
UPDATE `creature_template` SET `DamageModifier` = 1.35, `ArmorModifier` = 1.00118 WHERE `entry`=24358;

/*  Willie's Corpse  */
UPDATE `creature_template` SET `speed_walk` = 1.0 WHERE `entry`=24365;

/*  Amani'shi Gate Guard  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=24367;

/*  Wind Trader Zhareem  */
UPDATE `creature_template` SET `DamageModifier` = 1.6, `ArmorModifier` = 1.88211 WHERE `entry`=24369;

/*  Nether-Stalker Mah'duun  */
UPDATE `creature_template` SET `DamageModifier` = 1.3, `ArmorModifier` = 1.00118 WHERE `entry`=24370;

/*  Amani'shi Berserker  */
UPDATE `creature_template` SET `DamageModifier` = 15.0, `HealthModifier` = 20.0 WHERE `entry`=24374;

/*  Harrison Jones  */
UPDATE `creature_template` SET `DamageModifier` = 1.3, `ArmorModifier` = 1.00118 WHERE `entry`=24375;

/*  Leeni "Smiley" Smalls  */
UPDATE `creature_template` SET `speed_walk` = 1.5 WHERE `entry`=24392;

/*  Gunter  */
UPDATE `creature_template` SET `ArmorModifier` = 1.00118 WHERE `entry`=24408;

/*  Kyren  */
UPDATE `creature_template` SET `ArmorModifier` = 1.00118 WHERE `entry`=24409;

/*  Vazruden the Herald Image  */
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72, `DamageModifier` = 1.0 WHERE `entry`=24410;

/*  Shattered Hand Centurion Image  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 1.0 WHERE `entry`=24411;

/*  Daily Dungeon Image Bunny  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 8.0 WHERE `entry`=24412;

/*  Keli'dan the Breaker Image  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ArmorModifier` = 1.57886 WHERE `entry`=24413;

/*  Warchief Kargath Bladefist Image  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=24414;

/*  Coilfang Myrmidon Image  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 1.0 WHERE `entry`=24415;

/*  Grisy Spicecrackle  */
UPDATE `creature_template` SET `DamageModifier` = 10.0, `ArmorModifier` = 1.03005 WHERE `entry`=24416;

/*  Quagmirran Image  */
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72, `DamageModifier` = 1.0 WHERE `entry`=24419;

/*  The Black Stalker Image  */
UPDATE `creature_template` SET `DamageModifier` = 1.3, `ArmorModifier` = 1.22691 WHERE `entry`=24420;

/*  Warlord Kalithresh Image  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=24421;

/*  Talon King Ikiss Image  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ArmorModifier` = 1.57886 WHERE `entry`=24422;

/*  Nexus-Prince Shaffar Image  */
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72, `DamageModifier` = 1.3, `ArmorModifier` = 1.22691 WHERE `entry`=24423;

/*  Exarch Maladaar Image  */
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72, `speed_walk` = 1.6, `speed_run` = 1.71429, `DamageModifier` = 1.3, `ArmorModifier` = 1.22691 WHERE `entry`=24424;

/*  Murmur Image  */
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72, `speed_walk` = 1.6, `speed_run` = 1.71429, `DamageModifier` = 1.0 WHERE `entry`=24425;

/*  Malicious Instructor Image  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ArmorModifier` = 1.22543 WHERE `entry`=24426;

/*  Epoch Hunter Image  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=24427;

/*  Aeonus Image  */
UPDATE `creature_template` SET `DamageModifier` = 0.9 WHERE `entry`=24428;

/*  Rift Lord Image  */
UPDATE `creature_template` SET `speed_run` = 1.42857, `DamageModifier` = 1.0 WHERE `entry`=24429;

/*  Sunseeker Channeler Image  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=24430;

/*  Warp Splinter Image  */
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72, `DamageModifier` = 1.0 WHERE `entry`=24431;

/*  Tempest-Forge Destroyer Image  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=24432;

/*  Pathaleon Image  */
UPDATE `creature_template` SET `DamageModifier` = 1.3, `ArmorModifier` = 1.22691 WHERE `entry`=24433;

/*  Arcatraz Sentinel Image  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 1.0 WHERE `entry`=24434;

/*  Harbinger Skyriss Image  */
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72, `DamageModifier` = 1.3, `ArmorModifier` = 1.22691 WHERE `entry`=24435;

/*  Gargoth  */
UPDATE `creature_template` SET `DamageModifier` = 13.0, `ArmorModifier` = 1.1529 WHERE `entry`=24436;

/*  Consortium Assistant  */
UPDATE `creature_template` SET `DamageModifier` = 1.6 WHERE `entry`=24437;

/*  Minor Voidwalker  */
UPDATE `creature_template` SET `DamageModifier` = 0.56 WHERE `entry`=24476;

/*  Mojo  */
UPDATE `creature_template` SET `speed_run` = 1.14286 WHERE `entry`=24480;

/*  Ram Master Ray  */
UPDATE `creature_template` SET `speed_walk` = 1.1 WHERE `entry`=24497;

/*  Cort Gorestein  */
UPDATE `creature_template` SET `speed_walk` = 1.1 WHERE `entry`=24498;

/*  Ja'ron  */
UPDATE `creature_template` SET `speed_walk` = 1.1 WHERE `entry`=24499;

/*  Drohn's Distillery Apprentice  */
UPDATE `creature_template` SET `speed_walk` = 1.1 WHERE `entry`=24501;

/*  Amani'shi Hatcher  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `HealthModifier` = 1.0 WHERE `entry`=24504;

/*  Unkillable Test Dummy 73 Paladin  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=24505;

/*  Driz Tumblequick  */
UPDATE `creature_template` SET `speed_walk` = 1.1 WHERE `entry`=24510;

/*  Doris Volanthius  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 1.0 WHERE `entry`=24520;

/*  Voodoo Servant  */
UPDATE `creature_template` SET `DamageModifier` = 0.15 WHERE `entry`=24529;

/*  Amani Elder Lynx  */
UPDATE `creature_template` SET `DamageModifier` = 5.0, `HealthModifier` = 8.0 WHERE `entry`=24530;

/*  Dark Iron Herald  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `speed_run` = 0.992063, `DamageModifier` = 1.6, `ArmorModifier` = 1.43242 WHERE `entry`=24536;

/*  Amani'shi Tempest  */
UPDATE `creature_template` SET `DamageModifier` = 9.0, `HealthModifier` = 20.0, `ManaModifier` = 1.0 WHERE `entry`=24549;

/*  Sliver  */
UPDATE `creature_template` SET `DamageModifier` = 5.0 WHERE `entry`=24552;

/*  Apoko  */
UPDATE `creature_template` SET `DamageModifier` = 4.0, `ArmorModifier` = 1.44319 WHERE `entry`=24553;

/*  Eramas Brightblaze  */
UPDATE `creature_template` SET `DamageModifier` = 10.0 WHERE `entry`=24554;

/*  Garaxxas  */
UPDATE `creature_template` SET `speed_run` = 1.0, `DamageModifier` = 6.0 WHERE `entry`=24555;

/*  Zelfan  */
UPDATE `creature_template` SET `DamageModifier` = 3.0 WHERE `entry`=24556;

/*  Kagani Nightstrike  */
UPDATE `creature_template` SET `DamageModifier` = 5.0 WHERE `entry`=24557;

/*  Ellrys Duskhallow  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=24558;

/*  Warlord Salaris  */
UPDATE `creature_template` SET `speed_run` = 1.0, `DamageModifier` = 4.2 WHERE `entry`=24559;

/*  Priestess Delrissa  */
UPDATE `creature_template` SET `speed_run` = 1.03175, `DamageModifier` = 2.75 WHERE `entry`=24560;

/*  Yazzai  */
UPDATE `creature_template` SET `speed_run` = 1.0, `DamageModifier` = 4.0 WHERE `entry`=24561;

/*  Broken Earth Elemental  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=24650;

/*  Fizzle  */
UPDATE `creature_template` SET `speed_run` = 0.857143, `DamageModifier` = 1.75 WHERE `entry`=24656;

/*  Kael'thas Sunstrider  */
UPDATE `creature_template` SET `DamageModifier` = 4.75 WHERE `entry`=24664;

/*  Flame Strike Trigger (Kael - 5Man)  */
UPDATE `creature_template` SET `minlevel` = 73, `maxlevel` = 73, `speed_run` = 0.857143 WHERE `entry`=24666;

/*  Phoenix  */
UPDATE `creature_template` SET `speed_run` = 0.714286, `DamageModifier` = 1.0 WHERE `entry`=24674;

/*  Sunblade Mage Guard  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=24683;

/*  Sunblade Blood Knight  */
UPDATE `creature_template` SET `DamageModifier` = 8.0 WHERE `entry`=24684;

/*  Sunblade Magister  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=24685;

/*  Sunblade Warlock  */
UPDATE `creature_template` SET `DamageModifier` = 3.5 WHERE `entry`=24686;

/*  Sunblade Physician  */
UPDATE `creature_template` SET `DamageModifier` = 5.5 WHERE `entry`=24687;

/*  Wretched Skulker  */
UPDATE `creature_template` SET `DamageModifier` = 0.8, `ManaModifier` = 1.0 WHERE `entry`=24688;

/*  Wretched Bruiser  */
UPDATE `creature_template` SET `DamageModifier` = 0.9, `ManaModifier` = 1.0 WHERE `entry`=24689;

/*  Wretched Husk  */
UPDATE `creature_template` SET `DamageModifier` = 0.9 WHERE `entry`=24690;

/*  Coilskar Witch  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=24696;

/*  Sister of Torment  */
UPDATE `creature_template` SET `DamageModifier` = 3.5 WHERE `entry`=24697;

/*  Ethereum Smuggler  */
UPDATE `creature_template` SET `DamageModifier` = 5.5, `ManaModifier` = 1.0 WHERE `entry`=24698;

/*  Arcane Sphere  */
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72, `speed_run` = 0.428571 WHERE `entry`=24708;

/*  Tapper Swindlekeg  */
UPDATE `creature_template` SET `speed_walk` = 1.1 WHERE `entry`=24711;

/*  High Explosive Sheep  */
UPDATE `creature_template` SET `speed_run` = 0.571429 WHERE `entry`=24715;

/*  Fel Crystal  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=24722;

/*  Selin Fireheart  */
UPDATE `creature_template` SET `speed_walk` = 0.888888, `DamageModifier` = 3.5 WHERE `entry`=24723;

/*  Caylee Dak  */
UPDATE `creature_template` SET `DamageModifier` = 2.5, `ArmorModifier` = 1.11436 WHERE `entry`=24727;

/*  Dusky  */
UPDATE `creature_template` SET `DamageModifier` = 1.5 WHERE `entry`=24728;

/*  Sulan Dunadaire  */
UPDATE `creature_template` SET `minlevel` = 20 WHERE `entry`=24736;

/*  Vexallus  */
UPDATE `creature_template` SET `DamageModifier` = 8.0 WHERE `entry`=24744;

/*  Pure Energy  */
UPDATE `creature_template` SET `speed_run` = 0.428571 WHERE `entry`=24745;

/*  Brightscale Wyrm  */
UPDATE `creature_template` SET `speed_run` = 0.857143, `DamageModifier` = 2.0 WHERE `entry`=24761;

/*  Sunblade Keeper  */
UPDATE `creature_template` SET `DamageModifier` = 8.5 WHERE `entry`=24762;

/*  Sunblade Sentinel  */
UPDATE `creature_template` SET `DamageModifier` = 8.0, `ManaModifier` = 1.0 WHERE `entry`=24777;

/*  Weakened Morbent Fel  */
UPDATE `creature_template` SET `DamageModifier` = 1.3 WHERE `entry`=24782;

/*  Advanced Training Dummy  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 1.0 WHERE `entry`=24792;

/*  Broken Sentinel  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=24808;

/*  Exarch Larethor  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=24813;

/*  Sunblade Imp  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=24815;

/*  Anvilrage Taskmaster  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `ManaModifier` = 1.0 WHERE `entry`=24818;

/*  Anvilrage Enforcer  */
UPDATE `creature_template` SET `DamageModifier` = 1.6, `ManaModifier` = 1.0 WHERE `entry`=24819;

/*  Tyrith  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=24822;

/*  Stonevault Pillager  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=24830;

/*  Sister of Torment Image  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ArmorModifier` = 1.22543 WHERE `entry`=24854;

/*  Kael'thas Sunstrider Image  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=24855;

/*  Kael'thas Sunstrider (1)  */
UPDATE `creature_template` SET `DamageModifier` = 13.0 WHERE `entry`=24857;

/*  Soaring Eagle  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=24858;

/*  Defias Pirate, Female  */
UPDATE `creature_template` SET `DamageModifier` = 1.7, `ArmorModifier` = 0.980047 WHERE `entry`=24860;

/*  Karrtog  */
UPDATE `creature_template` SET `speed_walk` = 1.1 WHERE `entry`=24881;

/*  Exorcist Sullivan  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `ArmorModifier` = 1.06191 WHERE `entry`=24885;

/*  Exorcist Vaisha  */
UPDATE `creature_template` SET `DamageModifier` = 1.4 WHERE `entry`=24886;

/*  Leassian  */
UPDATE `creature_template` SET `minlevel` = 66, `HealthModifier` = 1.0479 WHERE `entry`=24905;

/*  Felblood Initiate  */
UPDATE `creature_template` SET `speed_walk` = 0.888888, `speed_run` = 0.992063, `DamageModifier` = 1.5, `ArmorModifier` = 1.29521 WHERE `entry`=24918;

/*  Wrath Herald  */
UPDATE `creature_template` SET `ArmorModifier` = 1.24224 WHERE `entry`=24919;

/*  Razorthorn Flayer  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `DamageModifier` = 1.4 WHERE `entry`=24920;

/*  Razorthorn Ravager  */
UPDATE `creature_template` SET `speed_run` = 0.992063 WHERE `entry`=24922;

/*  Sunwell Daily Bunny x 1.00  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=24928;

/*  Exarch Nasuun  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=24932;

/*  Magistrix Seyla  */
UPDATE `creature_template` SET `DamageModifier` = 2.1, `ArmorModifier` = 1.0159 WHERE `entry`=24937;

/*  Shattered Sun Marksman  */
UPDATE `creature_template` SET `DamageModifier` = 1.4 WHERE `entry`=24938;

/*  Emaciated Felblood  */
UPDATE `creature_template` SET `ArmorModifier` = 1.2426 WHERE `entry`=24955;

/*  Vindicator Xayann  */
UPDATE `creature_template` SET `DamageModifier` = 1.4 WHERE `entry`=24965;

/*  Captain Theris Dawnhearth  */
UPDATE `creature_template` SET `DamageModifier` = 1.4 WHERE `entry`=24967;

/*  Erratic Sentry  */
UPDATE `creature_template` SET `DamageModifier` = 1.5 WHERE `entry`=24972;

/*  Liza Cutlerflix  */
UPDATE `creature_template` SET `minlevel` = 65, `maxlevel` = 65, `HealthModifier` = 1.0994 WHERE `entry`=24974;

/*  Mar'nah  */
UPDATE `creature_template` SET `DamageModifier` = 1.6 WHERE `entry`=24975;

/*  Warpy  */
UPDATE `creature_template` SET `minlevel` = 12, `maxlevel` = 15, `ArmorModifier` = 1.17491 WHERE `entry`=24977;

/*  Dawnblade Summoner  */
UPDATE `creature_template` SET `DamageModifier` = 0.8 WHERE `entry`=24978;

/*  Crystal Ward  */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60 WHERE `entry`=24980;

/*  Converted Sentry  */
UPDATE `creature_template` SET `DamageModifier` = 1.5 WHERE `entry`=24981;

/*  Christmas Grand Warlock Nethekurse  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=24984;

/*  Christmas Grandmaster Vorpil  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=24985;

/*  Christmas Exarch Maladaar  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=24986;

/*  Christmas Captain Skarloc  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=24987;

/*  Christmas Nethermancer Sepethrea  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=24988;

/*  Christmas High Botanist Freywinn  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=24990;

/*  Converted Sentry Credit  */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60 WHERE `entry`=24991;

/*  Shattered Sun Sentry  */
UPDATE `creature_template` SET `DamageModifier` = 16.0 WHERE `entry`=24994;

/*  Mariner Farsight  */
UPDATE `creature_template` SET `minlevel` = 65, `maxlevel` = 65, `DamageModifier` = 2.0, `ArmorModifier` = 1.91906 WHERE `entry`=24998;

/*  Irespeaker  */
UPDATE `creature_template` SET `DamageModifier` = 1.5 WHERE `entry`=24999;

/*  Abyssal Flamewalker  */
UPDATE `creature_template` SET `DamageModifier` = 1.3 WHERE `entry`=25001;

/*  Unleashed Hellion  */
UPDATE `creature_template` SET `DamageModifier` = 1.4 WHERE `entry`=25002;

/*  Emissary of Hate  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=25003;

/*  Frenzied Ghoul  */
UPDATE `creature_template` SET `speed_walk` = 0.777776, `DamageModifier` = 0.25, `ManaModifier` = 1.0 WHERE `entry`=25027;

/*  Skeletal Ravager  */
UPDATE `creature_template` SET `speed_walk` = 0.888888, `DamageModifier` = 0.25, `ManaModifier` = 1.0 WHERE `entry`=25028;

/*  Amani'shi Warrior DEBUG  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=25029;

/*  Wrath Enforcer  */
UPDATE `creature_template` SET `DamageModifier` = 1.6 WHERE `entry`=25030;

/*  Pit Overlord  */
UPDATE `creature_template` SET `speed_walk` = 0.777776, `speed_run` = 0.992063, `DamageModifier` = 6.5 WHERE `entry`=25031;

/*  Eldara Dawnrunner  */
UPDATE `creature_template` SET `ArmorModifier` = 1.10424 WHERE `entry`=25032;

/*  Eredar Sorcerer  */
UPDATE `creature_template` SET `speed_walk` = 0.888888, `speed_run` = 0.912699, `DamageModifier` = 12.0, `ManaModifier` = 1.0 WHERE `entry`=25033;

/*  Kaalif  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ArmorModifier` = 1.98424 WHERE `entry`=25039;

/*  Greater Water Elemental  */
UPDATE `creature_template` SET `minlevel` = 69, `maxlevel` = 69, `speed_run` = 1.14286, `DamageModifier` = 2.0, `ArmorModifier` = 1.91156 WHERE `entry`=25040;

/*  Felmyst Visual  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=25041;

/*  Sentinel  */
UPDATE `creature_template` SET `speed_run` = 0.992063, `DamageModifier` = 0.8 WHERE `entry`=25045;

/*  Mariner Farseeker  */
UPDATE `creature_template` SET `minlevel` = 65, `maxlevel` = 65, `DamageModifier` = 2.0, `ArmorModifier` = 1.91906 WHERE `entry`=25053;

/*  Battlemage Arynna  */
UPDATE `creature_template` SET `DamageModifier` = 1.4 WHERE `entry`=25057;

/*  Ayren Cloudbreaker  */
UPDATE `creature_template` SET `DamageModifier` = 1.4, `ManaModifier` = 1.0 WHERE `entry`=25059;

/*  Darkspine Myrmidon  */
UPDATE `creature_template` SET `DamageModifier` = 1.3 WHERE `entry`=25060;

/*  Harbinger Inuuro  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=25061;

/*  Magister Ilastar  */
UPDATE `creature_template` SET `DamageModifier` = 2.5 WHERE `entry`=25069;

/*  Darkspine Siren  */
UPDATE `creature_template` SET `DamageModifier` = 1.4, `ArmorModifier` = 1.36986 WHERE `entry`=25073;

/*  Captain Valindria  */
UPDATE `creature_template` SET `DamageModifier` = 1.8, `ArmorModifier` = 1.00118 WHERE `entry`=25088;

/*  Vindicator Kaalan  */
UPDATE `creature_template` SET `DamageModifier` = 4.0 WHERE `entry`=25108;

/*  Anchorite Ayuri  */
UPDATE `creature_template` SET `DamageModifier` = 1.6 WHERE `entry`=25112;

/*  Shattered Sun Warrior  */
UPDATE `creature_template` SET `DamageModifier` = 1.4 WHERE `entry`=25115;

/*  Astromancer Darnarian  */
UPDATE `creature_template` SET `DamageModifier` = 1.4 WHERE `entry`=25133;

/*  Shattered Sun Trainee  */
UPDATE `creature_template` SET `DamageModifier` = 1.8 WHERE `entry`=25134;

/*  Shattered Sun Trainee  */
UPDATE `creature_template` SET `DamageModifier` = 1.75 WHERE `entry`=25135;

/*  Shattered Sun Trainee  */
UPDATE `creature_template` SET `DamageModifier` = 1.75 WHERE `entry`=25136;

/*  Shattered Sun Trainee  */
UPDATE `creature_template` SET `DamageModifier` = 1.75 WHERE `entry`=25137;

/*  Lord Torvos  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=25140;

/*  Shattered Sun Marksman  */
UPDATE `creature_template` SET `minlevel` = 70 WHERE `entry`=25142;

/*  Shattered Sun Veteran  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=25143;

/*  Shattered Sun Bombardier  */
UPDATE `creature_template` SET `minlevel` = 65, `maxlevel` = 65, `speed_walk` = 1.1, `speed_run` = 1.14286, `DamageModifier` = 2.0, `ArmorModifier` = 1.16959 WHERE `entry`=25144;

/*  Budd's Bodyguard  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=25145;

/*  Bergrisst  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=25148;

/*  Chief Thunder-Skins  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=25149;

/*  Mai'Kyl  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=25150;

/*  Samuro  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=25151;

/*  Sig Nicious  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=25152;

/*  Drill Sergeant Bahduum  */
UPDATE `creature_template` SET `DamageModifier` = 1.4 WHERE `entry`=25162;

/*  Anchorite Kairthos  */
UPDATE `creature_template` SET `DamageModifier` = 1.75 WHERE `entry`=25163;

/*  Shattered Sun Recruit  */
UPDATE `creature_template` SET `minlevel` = 65, `maxlevel` = 65 WHERE `entry`=25164;

/*  General Tiras'alan  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=25167;

/*  Archmage Ne'thul  */
UPDATE `creature_template` SET `DamageModifier` = 1.6, `ArmorModifier` = 1.39782 WHERE `entry`=25169;

/*  Shattered Sun Archmage  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=25170;

/*  Archmage Invisible Target  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 1.3, `ArmorModifier` = 1.57689 WHERE `entry`=25172;

/*  K'iru  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=25174;

/*  Shattered Sun Dragonhawk  */
UPDATE `creature_template` SET `DamageModifier` = 1.5 WHERE `entry`=25175;

/*  Grikkin Copperspring  */
UPDATE `creature_template` SET `speed_walk` = 1.1 WHERE `entry`=25176;

/*  Evee Copperspring  */
UPDATE `creature_template` SET `speed_walk` = 1.1 WHERE `entry`=25177;

/*  Ecton Brasstumbler  */
UPDATE `creature_template` SET `speed_walk` = 1.05 WHERE `entry`=25178;

/*  Frixee Brasstumbler  */
UPDATE `creature_template` SET `speed_walk` = 1.1 WHERE `entry`=25179;

/*  Archer Delvinar  */
UPDATE `creature_template` SET `ArmorModifier` = 1.37834 WHERE `entry`=25196;

/*  Shadow Image  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `speed_run` = 1.71429, `DamageModifier` = 1.0 WHERE `entry`=25214;

/*  Lord Solanar Bloodwrath  */
UPDATE `creature_template` SET `speed_walk` = 1.1 WHERE `entry`=25223;

/*  Practice Dummy  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70 WHERE `entry`=25225;

/*  Unrestrained Dragonhawk  */
UPDATE `creature_template` SET `speed_walk` = 1.1, `speed_run` = 1.14286, `DamageModifier` = 1.0 WHERE `entry`=25236;

/*  Lady Liadrin  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 1.0 WHERE `entry`=25246;

/*  Unyielding Dead  */
UPDATE `creature_template` SET `DamageModifier` = 8.0, `HealthModifier` = 5.0 WHERE `entry`=25268;

/*  Seer Cragh Grimtusk  */
UPDATE `creature_template` SET `subname` = 'Earthen Ring' WHERE `entry`=25344;

/*  Earthen Ring Horde Disguise  */
UPDATE `creature_template` SET `subname` = 'Earthen Ring' WHERE `entry`=25345;

/*  Mutate Fleshlasher  */
UPDATE `creature_template` SET `DamageModifier` = 4.7, `ArmorModifier` = 0.901796 WHERE `entry`=25354;

/*  Earthen Ring Alliance Disguise  */
UPDATE `creature_template` SET `subname` = 'Earthen Ring' WHERE `entry`=25360;

/*  Sunblade Cabalist  */
UPDATE `creature_template` SET `speed_run` = 1.42857, `DamageModifier` = 16.0, `HealthModifier` = 35.0 WHERE `entry`=25363;

/*  Sunblade Arch Mage  */
UPDATE `creature_template` SET `speed_run` = 1.42857, `DamageModifier` = 16.0, `HealthModifier` = 35.0 WHERE `entry`=25367;

/*  Sunblade Slayer  */
UPDATE `creature_template` SET `speed_run` = 1.42857, `DamageModifier` = 42.0, `HealthModifier` = 35.0, `ManaModifier` = 1.0 WHERE `entry`=25368;

/*  Sunblade Vindicator  */
UPDATE `creature_template` SET `speed_run` = 1.42857, `DamageModifier` = 42.0, `HealthModifier` = 35.0, `ManaModifier` = 1.0 WHERE `entry`=25369;

/*  Sunblade Dusk Priest  */
UPDATE `creature_template` SET `speed_run` = 1.42857, `DamageModifier` = 16.0, `HealthModifier` = 35.0 WHERE `entry`=25370;

/*  Sunblade Dawn Priest  */
UPDATE `creature_template` SET `speed_run` = 1.42857, `DamageModifier` = 16.0, `HealthModifier` = 35.0 WHERE `entry`=25371;

/*  Sunblade Scout  */
UPDATE `creature_template` SET `speed_run` = 1.42857, `DamageModifier` = 9.0, `HealthModifier` = 3.0, `ManaModifier` = 1.0 WHERE `entry`=25372;

/*  Shadowsword Soulbinder  */
UPDATE `creature_template` SET `speed_walk` = 0.888888, `speed_run` = 2.85714, `DamageModifier` = 16.0, `HealthModifier` = 35.0 WHERE `entry`=25373;

/*  Shadowsword Manafiend  */
UPDATE `creature_template` SET `speed_walk` = 0.888888, `speed_run` = 2.71429, `DamageModifier` = 16.0, `HealthModifier` = 35.0 WHERE `entry`=25483;

/*  Shadowsword Assassin  */
UPDATE `creature_template` SET `speed_walk` = 3.2, `speed_run` = 2.71429, `DamageModifier` = 36.0, `HealthModifier` = 35.0, `ManaModifier` = 1.0 WHERE `entry`=25484;

/*  Shadowsword Deathbringer  */
UPDATE `creature_template` SET `speed_walk` = 0.888888, `speed_run` = 2.28571, `DamageModifier` = 34.0, `HealthModifier` = 35.0, `ManaModifier` = 1.0 WHERE `entry`=25485;

/*  Shadowsword Vanquisher  */
UPDATE `creature_template` SET `speed_walk` = 0.888888, `speed_run` = 2.85714, `DamageModifier` = 42.0, `HealthModifier` = 35.0, `ManaModifier` = 1.0 WHERE `entry`=25486;

/*  Shield Orb  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `speed_run` = 0.571429, `DamageModifier` = 1.0, `HealthModifier` = 2.86 WHERE `entry`=25502;

/*  Shadowsword Lifeshaper  */
UPDATE `creature_template` SET `speed_walk` = 0.888888, `speed_run` = 2.71429, `DamageModifier` = 16.0, `HealthModifier` = 35.0 WHERE `entry`=25506;

/*  Sunblade Protector  */
UPDATE `creature_template` SET `speed_walk` = 2.0, `speed_run` = 1.42857, `DamageModifier` = 60.0, `HealthModifier` = 75.0, `ManaModifier` = 1.0 WHERE `entry`=25507;

/*  Priestess of Torment  */
UPDATE `creature_template` SET `speed_walk` = 2.4, `speed_run` = 1.71429, `DamageModifier` = 42.0, `HealthModifier` = 35.0 WHERE `entry`=25509;

/*  Apoko (1)  */
UPDATE `creature_template` SET `speed_run` = 1.0, `DamageModifier` = 12.0, `ArmorModifier` = 1.44319 WHERE `entry`=25541;

/*  Arcane Sphere (1)  */
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72, `speed_run` = 0.428571 WHERE `entry`=25543;

/*  Brightscale Wyrm (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 5.0 WHERE `entry`=25545;

/*  Broken Sentinel (1)  */
UPDATE `creature_template` SET `minlevel` = 71, `maxlevel` = 71, `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=25546;

/*  Coilskar Witch (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.0, `DamageModifier` = 12.0 WHERE `entry`=25547;

/*  Dawnblade Summoner (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `ArmorModifier` = 1.22543 WHERE `entry`=25548;

/*  Ellrys Duskhallow (1)  */
UPDATE `creature_template` SET `DamageModifier` = 12.0 WHERE `entry`=25549;

/*  Eramas Brightblaze (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 17.0 WHERE `entry`=25550;

/*  Ethereum Smuggler (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 12.25, `ManaModifier` = 1.0 WHERE `entry`=25551;

/*  Fel Crystal (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.0, `DamageModifier` = 2.0 WHERE `entry`=25552;

/*  Fizzle (1)  */
UPDATE `creature_template` SET `speed_run` = 0.857143, `DamageModifier` = 3.0 WHERE `entry`=25553;

/*  Garaxxas (1)  */
UPDATE `creature_template` SET `speed_run` = 1.0, `DamageModifier` = 13.5 WHERE `entry`=25555;

/*  Kagani Nightstrike (1)  */
UPDATE `creature_template` SET `DamageModifier` = 16.0 WHERE `entry`=25556;

/*  Nether Energy (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 2.0 WHERE `entry`=25557;

/*  Selin Fireheart (1)  */
UPDATE `creature_template` SET `minlevel` = 71, `maxlevel` = 71, `DamageModifier` = 13.0 WHERE `entry`=25562;

/*  Sliver (1)  */
UPDATE `creature_template` SET `DamageModifier` = 12.0 WHERE `entry`=25564;

/*  Sunblade Blood Knight (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 13.5 WHERE `entry`=25565;

/*  Sunblade Imp (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 6.0 WHERE `entry`=25566;

/*  Sunblade Keeper (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `speed_walk` = 1.0, `DamageModifier` = 16.0 WHERE `entry`=25567;

/*  Sunblade Mage Guard (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 13.0 WHERE `entry`=25568;

/*  Sunblade Magister (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 12.0 WHERE `entry`=25569;

/*  Sunblade Physician (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 13.0 WHERE `entry`=25570;

/*  Sunblade Sentinel (1)  */
UPDATE `creature_template` SET `DamageModifier` = 18.0, `ManaModifier` = 1.0 WHERE `entry`=25571;

/*  Sunblade Warlock (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 12.5 WHERE `entry`=25572;

/*  Warlord Salaris (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.0, `DamageModifier` = 8.0 WHERE `entry`=25574;

/*  Wretched Bruiser (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 1.2, `ManaModifier` = 1.0 WHERE `entry`=25575;

/*  Wretched Husk (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 1.2 WHERE `entry`=25576;

/*  Wretched Skulker (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 1.1, `ManaModifier` = 1.0 WHERE `entry`=25577;

/*  Yazzai (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.0, `DamageModifier` = 12.0 WHERE `entry`=25578;

/*  Zelfan (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `DamageModifier` = 10.0 WHERE `entry`=25579;

/*  Old Man Barlo  */
UPDATE `creature_template` SET `DamageModifier` = 4.0, `ArmorModifier` = 1.03062 WHERE `entry`=25580;

/*  Painbringer  */
UPDATE `creature_template` SET `speed_walk` = 2.4, `speed_run` = 1.42857, `DamageModifier` = 48.0, `HealthModifier` = 35.0 WHERE `entry`=25591;

/*  Doomfire Destroyer  */
UPDATE `creature_template` SET `speed_walk` = 2.4, `speed_run` = 1.42857, `DamageModifier` = 44.0, `HealthModifier` = 40.0 WHERE `entry`=25592;

/*  Apocalypse Guard  */
UPDATE `creature_template` SET `speed_walk` = 2.4, `speed_run` = 1.42857, `DamageModifier` = 46.25, `HealthModifier` = 68.75 WHERE `entry`=25593;

/*  Chaos Gazer  */
UPDATE `creature_template` SET `speed_walk` = 2.4, `speed_run` = 1.42857, `DamageModifier` = 35.0, `HealthModifier` = 76.0 WHERE `entry`=25595;

/*  Oblivion Mage  */
UPDATE `creature_template` SET `speed_walk` = 2.4, `speed_run` = 1.42857, `DamageModifier` = 27.0, `HealthModifier` = 35.0 WHERE `entry`=25597;

/*  Volatile Felfire Fiend  */
UPDATE `creature_template` SET `speed_walk` = 2.4, `speed_run` = 1.42857, `DamageModifier` = 9.5, `HealthModifier` = 0.26 WHERE `entry`=25598;

/*  Cataclysm Hound  */
UPDATE `creature_template` SET `speed_walk` = 2.4, `speed_run` = 1.42857, `DamageModifier` = 50.0, `HealthModifier` = 86.0 WHERE `entry`=25599;

/*  Felfire Portal  */
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72, `speed_run` = 1.0, `HealthModifier` = 0.01 WHERE `entry`=25603;

/*  Kil'jaeden  */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60, `DamageModifier` = 1.0 WHERE `entry`=25608;

/*  Captain Selana  */
UPDATE `creature_template` SET `DamageModifier` = 1.15 WHERE `entry`=25638;

/*  Anchorite Elbadon  */
UPDATE `creature_template` SET `DamageModifier` = 1.1 WHERE `entry`=25639;

/*  Neophyte Narama  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=25644;

/*  Power of the Blue Flight  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=25653;

/*  Shattered Sun Soldier  */
UPDATE `creature_template` SET `DamageModifier` = 1.2 WHERE `entry`=25661;

/*  Brutallus Death Cloud  */
UPDATE `creature_template` SET `rank` = 3, `DamageModifier` = 1.0 WHERE `entry`=25703;

/*  Sinister Reflection  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `speed_run` = 1.71429, `DamageModifier` = 30.0, `HealthModifier` = 20.0 WHERE `entry`=25708;

/*  Dark Fiend  */
UPDATE `creature_template` SET `speed_walk` = 1.2, `speed_run` = 0.428571, `HealthModifier` = 1.0 WHERE `entry`=25744;

/*  Earthen Ring Flamecaller  */
UPDATE `creature_template` SET `DamageModifier` = 1.3, `HealthModifier` = 1.607, `ArmorModifier` = 1.18415 WHERE `entry`=25754;

/*  M'uru Portal Target  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 1.0 WHERE `entry`=25770;

/*  Void Sentinal Summoner  */
UPDATE `creature_template` SET `HealthModifier` = 1.35 WHERE `entry`=25782;

/*  Normal Realm  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=25795;

/*  Spectral Realm  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=25796;

/*  Shadowsword Berserker  */
UPDATE `creature_template` SET `speed_walk` = 0.888888, `speed_run` = 1.42857, `DamageModifier` = 30.0, `HealthModifier` = 19.0, `ManaModifier` = 1.0 WHERE `entry`=25798;

/*  Shadowsword Fury Mage  */
UPDATE `creature_template` SET `speed_walk` = 0.888888, `speed_run` = 1.42857, `DamageModifier` = 24.0, `HealthModifier` = 20.0 WHERE `entry`=25799;

/*  Shadowsword Commander  */
UPDATE `creature_template` SET `speed_walk` = 0.888888, `speed_run` = 1.42857, `DamageModifier` = 36.0, `HealthModifier` = 35.0, `ManaModifier` = 1.0 WHERE `entry`=25837;

/*  Volatile Fiend  */
UPDATE `creature_template` SET `speed_walk` = 2.4, `speed_run` = 1.42857, `DamageModifier` = 6.5, `HealthModifier` = 2.0 WHERE `entry`=25851;

/*  Blazing Infernal  */
UPDATE `creature_template` SET `speed_walk` = 2.4, `speed_run` = 1.42857, `DamageModifier` = 12.0, `HealthModifier` = 13.0 WHERE `entry`=25860;

/*  Twilight Firesworn  */
UPDATE `creature_template` SET `minlevel` = 19 WHERE `entry`=25863;

/*  Sunblade Dragonhawk  */
UPDATE `creature_template` SET `speed_walk` = 1.6, `speed_run` = 1.42857, `DamageModifier` = 24.5, `HealthModifier` = 20.0, `ManaModifier` = 1.0 WHERE `entry`=25867;

/*  Darkness  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=25879;

/*  Multiphase Disturbance  */
UPDATE `creature_template` SET `speed_run` = 0.142857 WHERE `entry`=25882;

/*  Blade's Edge Flame Warden  */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60 WHERE `entry`=25889;

/*  Shadowmoon Valley Flame Warden  */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60 WHERE `entry`=25905;

/*  Terokkar Forest Flame Warden  */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60 WHERE `entry`=25907;

/*  Zangarmarsh Flame Warden  */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60 WHERE `entry`=25912;

/*  Netherstorm Flame Warden  */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60 WHERE `entry`=25913;

/*  Netherstorm Flame Keeper  */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60 WHERE `entry`=25918;

/*  Blade's Edge Flame Keeper  */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60 WHERE `entry`=25926;

/*  Durotar Flame Keeper  */
UPDATE `creature_template` SET `minlevel` = 40, `maxlevel` = 40 WHERE `entry`=25929;

/*  Eversong Woods Flame Keeper  */
UPDATE `creature_template` SET `minlevel` = 40, `maxlevel` = 40 WHERE `entry`=25931;

/*  Ghostlands Flame Keeper  */
UPDATE `creature_template` SET `minlevel` = 40, `maxlevel` = 40 WHERE `entry`=25933;

/*  Mulgore Flame Keeper  */
UPDATE `creature_template` SET `minlevel` = 45, `maxlevel` = 45 WHERE `entry`=25936;

/*  Shadowmoon Valley Flame Keeper  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70 WHERE `entry`=25938;

/*  Tirisfal Glades Flame Keeper  */
UPDATE `creature_template` SET `minlevel` = 45, `maxlevel` = 45 WHERE `entry`=25946;

/*  Doomfire Shard  */
UPDATE `creature_template` SET `speed_walk` = 2.4, `speed_run` = 1.42857, `DamageModifier` = 20.0, `HealthModifier` = 8.0 WHERE `entry`=25948;

/*  Shadowsword Guardian Sunwell  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=25954;

/*  Hand of the Deceiver Sunwell  */
UPDATE `creature_template` SET `DamageModifier` = 1.3, `ArmorModifier` = 1.22629 WHERE `entry`=25955;

/*  Chaos Gazer Sunwell  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=25956;

/*  Cataclysm Hound Sunwell  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=25957;

/*  Volatile Felfire Fiend Sunwell  */
UPDATE `creature_template` SET `DamageModifier` = 1.3, `ArmorModifier` = 1.22629 WHERE `entry`=25958;

/*  Apocalypse Guard Sunwell  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=25959;

/*  M'uru Sunwell  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=25960;

/*  Zephyr  */
UPDATE `creature_template` SET `DamageModifier` = 2.5, `ArmorModifier` = 1.00118 WHERE `entry`=25967;

/*  Theremis  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=25976;

/*  Yrma  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=25977;

/*  Big Bruiser  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=25992;

/*  Kayri  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=26089;

/*  Karynna  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=26090;

/*  Olus  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ArmorModifier` = 1.98424 WHERE `entry`=26091;

/*  Soryn  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `ArmorModifier` = 1.98424 WHERE `entry`=26092;

/*  Fire Fiend  */
UPDATE `creature_template` SET `speed_walk` = 2.4, `speed_run` = 1.42857, `DamageModifier` = 3.0, `HealthModifier` = 2.0, `ArmorModifier` = 1.24077 WHERE `entry`=26101;

/*  Master Flame Eater  */
UPDATE `creature_template` SET `speed_walk` = 1.1 WHERE `entry`=26113;

/*  Twilight Cryomancer  */
UPDATE `creature_template` SET `minlevel` = 61 WHERE `entry`=26222;

/*  Twilight Frostblade  */
UPDATE `creature_template` SET `minlevel` = 62, `maxlevel` = 64 WHERE `entry`=26223;

/*  Seaspray Albatross  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70 WHERE `entry`=26240;

/*  Empyrean Tortoise  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70 WHERE `entry`=26242;

/*  Crimson Serpent  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70 WHERE `entry`=26243;

/*  Shadowsong Panther  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70 WHERE `entry`=26244;

/*  Prophet Velen  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=26246;

/*  Lady Liadrin  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=26247;

/*  Shattered Sun Peacekeeper  */
UPDATE `creature_template` SET `DamageModifier` = 1.4 WHERE `entry`=26253;

/*  Shattered Sun Riftwaker  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=26289;

/*  Accessories Vendor  */
UPDATE `creature_template` SET `speed_walk` = 1.1 WHERE `entry`=26300;

/*  Enchantments Vendor  */
UPDATE `creature_template` SET `speed_walk` = 1.1 WHERE `entry`=26302;

/*  Druid Trainer  */
UPDATE `creature_template` SET `speed_walk` = 1.1 WHERE `entry`=26324;

/*  Hunter Trainer  */
UPDATE `creature_template` SET `speed_walk` = 1.1 WHERE `entry`=26325;

/*  Mage Trainer  */
UPDATE `creature_template` SET `speed_walk` = 1.1 WHERE `entry`=26326;

/*  Paladin Trainer  */
UPDATE `creature_template` SET `speed_walk` = 1.1 WHERE `entry`=26327;

/*  Priest Trainer  */
UPDATE `creature_template` SET `speed_walk` = 1.1 WHERE `entry`=26328;

/*  Rogue Trainer  */
UPDATE `creature_template` SET `speed_walk` = 1.1 WHERE `entry`=26329;

/*  Shaman Trainer  */
UPDATE `creature_template` SET `speed_walk` = 1.1 WHERE `entry`=26330;

/*  Warlock Trainer  */
UPDATE `creature_template` SET `speed_walk` = 1.1 WHERE `entry`=26331;

/*  Warrior Trainer  */
UPDATE `creature_template` SET `speed_walk` = 1.1 WHERE `entry`=26332;

/*  Alliance Graveyard Teleporter  */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60, `speed_run` = 0.992063 WHERE `entry`=26350;

/*  Horde Graveyard Teleporter  */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60, `speed_run` = 0.992063 WHERE `entry`=26351;

/*  Big Zokk Torquewrench  */
UPDATE `creature_template` SET `speed_walk` = 1.5 WHERE `entry`=26352;

/*  Lieutenant Tristia  */
UPDATE `creature_template` SET `rank` = 1 WHERE `entry`=26395;

/*  Doris Volanthius  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=26398;

/*  Ohura  */
UPDATE `creature_template` SET `DamageModifier` = 5.0, `ManaModifier` = 1.0 WHERE `entry`=26560;

/*  [PH] Justin's Test NPC  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `ManaModifier` = 1.0 WHERE `entry`=26576;

/*  Anveena Replica  */
UPDATE `creature_template` SET `rank` = 3, `DamageModifier` = 1.0, `ManaModifier` = 1.0 WHERE `entry`=26579;

/*  Durnholde Captain  */
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72, `DamageModifier` = 6.0 WHERE `entry`=26650;

/*  Durnholde Captain (1)  */
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72, `DamageModifier` = 16.0 WHERE `entry`=26651;

/*  [DND] TAR Pedestal - Accessories  */
UPDATE `creature_template` SET `speed_walk` = 1.1, `speed_run` = 1.14286 WHERE `entry`=26738;

/*  [DND] TAR Pedestal - Enchantments  */
UPDATE `creature_template` SET `speed_walk` = 1.1, `speed_run` = 1.14286 WHERE `entry`=26739;

/*  [DND] TAR Pedestal - Gems  */
UPDATE `creature_template` SET `speed_walk` = 1.1, `speed_run` = 1.14286 WHERE `entry`=26740;

/*  [DND] TAR Pedestal - General Goods  */
UPDATE `creature_template` SET `speed_walk` = 1.1, `speed_run` = 1.14286 WHERE `entry`=26741;

/*  [DND] TAR Pedestal - Weapons  */
UPDATE `creature_template` SET `speed_walk` = 1.1, `speed_run` = 1.14286 WHERE `entry`=26745;

/*  [DND] TAR Pedestal - Arena Organizer  */
UPDATE `creature_template` SET `speed_walk` = 1.1, `speed_run` = 1.14286 WHERE `entry`=26747;

/*  [DND] TAR Pedestal - Beastmaster  */
UPDATE `creature_template` SET `speed_walk` = 1.1, `speed_run` = 1.14286 WHERE `entry`=26748;

/*  [DND] TAR Pedestal - Paymaster  */
UPDATE `creature_template` SET `speed_walk` = 1.1, `speed_run` = 1.14286 WHERE `entry`=26749;

/*  [DND] TAR Pedestal - Trainer, Druid  */
UPDATE `creature_template` SET `speed_walk` = 1.1, `speed_run` = 1.14286 WHERE `entry`=26751;

/*  [DND] TAR Pedestal - Trainer, Hunter  */
UPDATE `creature_template` SET `speed_walk` = 1.1, `speed_run` = 1.14286 WHERE `entry`=26752;

/*  [DND] TAR Pedestal - Trainer, Mage  */
UPDATE `creature_template` SET `speed_walk` = 1.1, `speed_run` = 1.14286 WHERE `entry`=26753;

/*  [DND] TAR Pedestal - Trainer, Paladin  */
UPDATE `creature_template` SET `speed_walk` = 1.1, `speed_run` = 1.14286 WHERE `entry`=26754;

/*  [DND] TAR Pedestal - Trainer, Priest  */
UPDATE `creature_template` SET `speed_walk` = 1.1, `speed_run` = 1.14286 WHERE `entry`=26755;

/*  [DND] TAR Pedestal - Trainer, Rogue  */
UPDATE `creature_template` SET `speed_walk` = 1.1, `speed_run` = 1.14286 WHERE `entry`=26756;

/*  [DND] TAR Pedestal - Trainer, Shaman  */
UPDATE `creature_template` SET `speed_walk` = 1.1, `speed_run` = 1.14286 WHERE `entry`=26757;

/*  [DND] TAR Pedestal - Trainer, Warlock  */
UPDATE `creature_template` SET `speed_walk` = 1.1, `speed_run` = 1.14286 WHERE `entry`=26758;

/*  [DND] TAR Pedestal - Trainer, Warrior  */
UPDATE `creature_template` SET `speed_walk` = 1.1, `speed_run` = 1.14286 WHERE `entry`=26759;

/*  Ilsa Direbrew  */
UPDATE `creature_template` SET `minlevel` = 73, `maxlevel` = 73, `DamageModifier` = 1.5, `ArmorModifier` = 1.26614 WHERE `entry`=26764;

/*  [DND] TAR Pedestal - Fight Promoter  */
UPDATE `creature_template` SET `speed_walk` = 1.1, `speed_run` = 1.14286 WHERE `entry`=26765;

/*  Direbrew Minion  */
UPDATE `creature_template` SET `minlevel` = 73, `maxlevel` = 73, `DamageModifier` = 1.5, `ArmorModifier` = 1.26614 WHERE `entry`=26776;

/*  Ursula Direbrew  */
UPDATE `creature_template` SET `minlevel` = 73, `maxlevel` = 73, `DamageModifier` = 1.5, `ArmorModifier` = 1.26614 WHERE `entry`=26822;

/*  Muja  */
UPDATE `creature_template` SET `minlevel` = 45, `maxlevel` = 45 WHERE `entry`=27399;

/*  Darna Honeybock  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=27584;

/*  Ysuria  */
UPDATE `creature_template` SET `ArmorModifier` = 1.05402 WHERE `entry`=27703;

/*  Silvermoon Dragonhawk  */
UPDATE `creature_template` SET `DamageModifier` = 3.0, `ManaModifier` = 1.0 WHERE `entry`=27946;

/*  Dread Crew  */
UPDATE `creature_template` SET `maxlevel` = 62 WHERE `entry`=28052;

/*  Nyuni  */
UPDATE `creature_template` SET `minlevel` = 53, `maxlevel` = 53 WHERE `entry`=28060;

/*  Guerrero  */
UPDATE `creature_template` SET `speed_walk` = 1.2, `speed_run` = 1.14286, `DamageModifier` = 2.0 WHERE `entry`=28163;

/*  Don Carlos (1)  */
UPDATE `creature_template` SET `speed_walk` = 1.0, `speed_run` = 1.38571 WHERE `entry`=28171;

/*  Griz Gutshank  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=28225;

/*  Snaggletooth  */
UPDATE `creature_template` SET `speed_walk` = 1.0 WHERE `entry`=28226;

/*  Slobbermouth  */
UPDATE `creature_template` SET `speed_walk` = 1.0 WHERE `entry`=28227;

/*  Coyote Spirit  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70 WHERE `entry`=28267;

/*  Meeda  */
UPDATE `creature_template` SET `minlevel` = 67 WHERE `entry`=28343;

/*  Blazzle  */
UPDATE `creature_template` SET `maxlevel` = 65 WHERE `entry`=28344;
