/* Sets TBC creatures to values extracted from cMangos TBC, which has high quality, pre-nef TBC Content */
/* These may need more updating as AzerothCore development continues to TBC and makes more corrections,
   But this is a better starting point than current AzerothCore TBC content which is quite bug */

/*  Mithril Mechanical Dragonling  */
UPDATE `creature_template` SET `HealthModifier` = 1.6 WHERE `entry`=25;

/*  Andr'e  */
UPDATE `creature_template` SET `HealthModifier` = 1.6, `ArmorModifier` = 0.18018 WHERE `entry`=1722;

/*  Hissing Ghoul  */
UPDATE `creature_template` SET `DamageModifier` = 2.31492, `HealthModifier` = 2.4 WHERE `entry`=1792;

/*  Corpus Ragatus  */
UPDATE `creature_template` SET `HealthModifier` = 1.8 WHERE `entry`=8001;

/*  Innkeeper Sentinel Hill  */
UPDATE `creature_template` SET `HealthModifier` = 2.1 WHERE `entry`=8999;

/*  Northshire Guard Justin  */
UPDATE `creature_template` SET `DamageModifier` = 3.78446, `HealthModifier` = 1.7 WHERE `entry`=9095;

/*  Wynne Larsone  */
UPDATE `creature_template` SET `HealthModifier` = 1.6 WHERE `entry`=11111;

/*  Tender  */
UPDATE `creature_template` SET `ArmorModifier` = 1.45 WHERE `entry`=15271;

/*  Arcane Wraith  */
UPDATE `creature_template` SET `ArmorModifier` = 2.0303 WHERE `entry`=15273;

/*  Magistrix Erona  */
UPDATE `creature_template` SET `HealthModifier` = 1.4, `ArmorModifier` = 0.215054 WHERE `entry`=15278;

/*  Julia Sunstriker  */
UPDATE `creature_template` SET `HealthModifier` = 0.6, `ArmorModifier` = 0.215054 WHERE `entry`=15279;

/*  Jesthenis Sunstriker  */
UPDATE `creature_template` SET `HealthModifier` = 0.5, `ArmorModifier` = 0.183486 WHERE `entry`=15280;

/*  Lanthan Perilon  */
UPDATE `creature_template` SET `HealthModifier` = 0.7, `ArmorModifier` = 0.215054 WHERE `entry`=15281;

/*  Summoner Teli'Larien  */
UPDATE `creature_template` SET `ArmorModifier` = 0.215054 WHERE `entry`=15283;

/*  Matron Arena  */
UPDATE `creature_template` SET `HealthModifier` = 0.6, `ArmorModifier` = 0.215054 WHERE `entry`=15284;

/*  Pathstalker Kariel  */
UPDATE `creature_template` SET `DamageModifier` = 6.53669, `HealthModifier` = 0.6, `ArmorModifier` = 0.18018 WHERE `entry`=15285;

/*  Shara Sunwing  */
UPDATE `creature_template` SET `HealthModifier` = 0.5, `ArmorModifier` = 0.18018 WHERE `entry`=15287;

/*  Raelis Dawnstar  */
UPDATE `creature_template` SET `HealthModifier` = 0.5, `ArmorModifier` = 0.18018 WHERE `entry`=15289;

/*  Jainthess Thelryn  */
UPDATE `creature_template` SET `HealthModifier` = 1.4, `ArmorModifier` = 0.215054 WHERE `entry`=15291;

/*  Faraden Thelryn  */
UPDATE `creature_template` SET `ArmorModifier` = 0.183486 WHERE `entry`=15292;

/*  Feral Tender  */
UPDATE `creature_template` SET `DamageModifier` = 1.57011 WHERE `entry`=15294;

/*  Well Watcher Solanian  */
UPDATE `creature_template` SET `minlevel` = 63, `maxlevel` = 63, `DamageModifier` = 0.247796, `HealthModifier` = 0.2, `ManaModifier` = 0.4 WHERE `entry`=15295;

/*  Arcanist Ithanas  */
UPDATE `creature_template` SET `HealthModifier` = 1.0, `ArmorModifier` = 0.143885 WHERE `entry`=15296;

/*  Arcanist Helion  */
UPDATE `creature_template` SET `HealthModifier` = 0.6, `ArmorModifier` = 0.143885 WHERE `entry`=15297;

/*  Outrunner Alarion  */
UPDATE `creature_template` SET `HealthModifier` = 1.8, `ArmorModifier` = 0.183486 WHERE `entry`=15301;

/*  Felendren the Banished  */
UPDATE `creature_template` SET `DamageModifier` = 1.46154, `ArmorModifier` = 0.183486, `mingold` = 3, `maxgold` = 9 WHERE `entry`=15367;

/*  Sunstrider Guardian  */
UPDATE `creature_template` SET `DamageModifier` = 0.247404, `HealthModifier` = 1.5 WHERE `entry`=15371;

/*  Springpaw Lynx  */
UPDATE `creature_template` SET `ArmorModifier` = 1.45 WHERE `entry`=15372;

/*  Marniel Amberlight  */
UPDATE `creature_template` SET `HealthModifier` = 2.1, `ArmorModifier` = 0.18018 WHERE `entry`=15397;

/*  Larianna Riverwind  */
UPDATE `creature_template` SET `DamageModifier` = 6.55673, `HealthModifier` = 0.5 WHERE `entry`=15398;

/*  Lieutenant Dawnrunner  */
UPDATE `creature_template` SET `DamageModifier` = 4.73876, `HealthModifier` = 0.5 WHERE `entry`=15399;

/*  Arathel Sunforge  */
UPDATE `creature_template` SET `DamageModifier` = 6.29297, `HealthModifier` = 0.7 WHERE `entry`=15400;

/*  Ley-Keeper Velania  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=15401;

/*  Apprentice Mirveda  */
UPDATE `creature_template` SET `HealthModifier` = 2.1, `ManaModifier` = 1.0 WHERE `entry`=15402;

/*  Aeldon Sunbrand  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=15403;

/*  Velendris Whitemorn  */
UPDATE `creature_template` SET `DamageModifier` = 6.31905, `HealthModifier` = 1.0 WHERE `entry`=15404;

/*  Ley-Keeper Caidanis  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=15405;

/*  Ven'jashi  */
UPDATE `creature_template` SET `DamageModifier` = 0.439534, `HealthModifier` = 0.7 WHERE `entry`=15406;

/*  Ranger Jaela  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=15416;

/*  Velan Brightoak  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=15417;

/*  Magister Jaronis  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=15418;

/*  Prospector Anvilward  */
UPDATE `creature_template` SET `DamageModifier` = 0.509772, `HealthModifier` = 1.2 WHERE `entry`=15420;

/*  Innkeeper Delaniel  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=15433;

/*  Greater Fire Elemental  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 2.0, `HealthModifier` = 0.7 WHERE `entry`=15438;

/*  Marsilla Dawnstar  */
UPDATE `creature_template` SET `HealthModifier` = 0.5, `ArmorModifier` = 0.18018 WHERE `entry`=15493;

/*  Yasmine Teli'Larien  */
UPDATE `creature_template` SET `subname` = 'Demon Trainer', `HealthModifier` = 0.6, `ArmorModifier` = 0.215054 WHERE `entry`=15494;

/*  Aleinia  */
UPDATE `creature_template` SET `DamageModifier` = 4.13683, `HealthModifier` = 0.5 WHERE `entry`=15501;

/*  Ranger Sallina  */
UPDATE `creature_template` SET `HealthModifier` = 0.5, `ArmorModifier` = 0.183486 WHERE `entry`=15513;

/*  Spectral Stallion  */
UPDATE `creature_template` SET `DamageModifier` = 4.28783, `HealthModifier` = 9.6 WHERE `entry`=15548;

/*  Attumen the Huntsman  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 10.0, `HealthModifier` = 50.0 WHERE `entry`=15550;

/*  Spectral Stable Hand  */
UPDATE `creature_template` SET `DamageModifier` = 7.69129, `HealthModifier` = 6.0 WHERE `entry`=15551;

/*  Eversong Tender  */
UPDATE `creature_template` SET `minlevel` = 7, `DamageModifier` = 0.445849, `HealthModifier` = 0.7 WHERE `entry`=15635;

/*  Eversong Green Keeper  */
UPDATE `creature_template` SET `DamageModifier` = 0.445849 WHERE `entry`=15636;

/*  Arcane Patroller  */
UPDATE `creature_template` SET `maxlevel` = 8, `DamageModifier` = 0.292309 WHERE `entry`=15638;

/*  Arcane Enforcer  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=15640;

/*  Amani Axe Thrower  */
UPDATE `creature_template` SET `ArmorModifier` = 1.3268 WHERE `entry`=15641;

/*  Amani Shadowpriest  */
UPDATE `creature_template` SET `ArmorModifier` = 1.40594 WHERE `entry`=15642;

/*  Amani Berserker  */
UPDATE `creature_template` SET `ArmorModifier` = 1.323 WHERE `entry`=15643;

/*  Wretched Urchin  */
UPDATE `creature_template` SET `ArmorModifier` = 0.30303 WHERE `entry`=15644;

/*  Wretched Thug  */
UPDATE `creature_template` SET `DamageModifier` = 0.353613 WHERE `entry`=15645;

/*  Mana Stalker  */
UPDATE `creature_template` SET `ArmorModifier` = 1.37615 WHERE `entry`=15647;

/*  Manawraith  */
UPDATE `creature_template` SET `DamageModifier` = 0.442294, `ArmorModifier` = 1.25767 WHERE `entry`=15648;

/*  Springpaw Stalker  */
UPDATE `creature_template` SET `ArmorModifier` = 1.24848 WHERE `entry`=15651;

/*  Elder Springpaw  */
UPDATE `creature_template` SET `DamageModifier` = 1.78099, `ArmorModifier` = 1.72549 WHERE `entry`=15652;

/*  Plaguebone Pillager  */
UPDATE `creature_template` SET `ArmorModifier` = 1.32432 WHERE `entry`=15654;

/*  Rotlimb Cannibal  */
UPDATE `creature_template` SET `ArmorModifier` = 1.44848 WHERE `entry`=15655;

/*  Darkwraith  */
UPDATE `creature_template` SET `HealthModifier` = 1.1 WHERE `entry`=15657;

/*  Rotlimb Marauder  */
UPDATE `creature_template` SET `ArmorModifier` = 1.3268 WHERE `entry`=15658;

/*  Grimscale Murloc  */
UPDATE `creature_template` SET `ArmorModifier` = 1.37391 WHERE `entry`=15668;

/*  Grimscale Oracle  */
UPDATE `creature_template` SET `ArmorModifier` = 1.28846 WHERE `entry`=15669;

/*  Grimscale Forager  */
UPDATE `creature_template` SET `ArmorModifier` = 1.44848 WHERE `entry`=15670;

/*  Moroes  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 15.3756, `HealthModifier` = 51.0 WHERE `entry`=15687;

/*  Terestian Illhoof  */
UPDATE `creature_template` SET `DamageModifier` = 27.3696, `HealthModifier` = 92.1 WHERE `entry`=15688;

/*  Netherspite  */
UPDATE `creature_template` SET `DamageModifier` = 31.3506, `HealthModifier` = 184.2, `ManaModifier` = 0.9 WHERE `entry`=15689;

/*  Prince Malchezaar  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 21.3442, `HealthModifier` = 150.0 WHERE `entry`=15690;

/*  The Curator  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 20.0, `HealthModifier` = 115.0 WHERE `entry`=15691;

/*  Hathvelion Sungaze  */
UPDATE `creature_template` SET `DamageModifier` = 0.471256, `HealthModifier` = 0.6 WHERE `entry`=15920;

/*  Captain Kelisendra  */
UPDATE `creature_template` SET `DamageModifier` = 0.267058, `HealthModifier` = 0.6 WHERE `entry`=15921;

/*  Apprentice Loralthalis  */
UPDATE `creature_template` SET `DamageModifier` = 1.37406, `HealthModifier` = 2.5, `ArmorModifier` = 0.121212 WHERE `entry`=15924;

/*  Eversong Ranger  */
UPDATE `creature_template` SET `DamageModifier` = 0.382973, `HealthModifier` = 1.0 WHERE `entry`=15938;

/*  Ranger Degolien  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=15939;

/*  Ranger Selron  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=15940;

/*  Apprentice Ralen  */
UPDATE `creature_template` SET `HealthModifier` = 0.7 WHERE `entry`=15941;

/*  Ranger Sareyn  */
UPDATE `creature_template` SET `DamageModifier` = 1.2259, `HealthModifier` = 0.6 WHERE `entry`=15942;

/*  Hive'Zara Hornet  */
UPDATE `creature_template` SET `DamageModifier` = 15.8995, `HealthModifier` = 14.9 WHERE `entry`=15943;

/*  Apprentice Meledor  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=15945;

/*  Apprentice Veya  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=15946;

/*  Grimscale Seer  */
UPDATE `creature_template` SET `DamageModifier` = 0.442294, `ArmorModifier` = 1.25767 WHERE `entry`=15950;

/*  Magister Duskwither  */
UPDATE `creature_template` SET `DamageModifier` = 5.84698, `HealthModifier` = 1.0 WHERE `entry`=15951;

/*  Duskwither Apprentice  */
UPDATE `creature_template` SET `DamageModifier` = 0.39955 WHERE `entry`=15965;

/*  Darnassian Scout  */
UPDATE `creature_template` SET `ArmorModifier` = 0.121212 WHERE `entry`=15968;

/*  Groundskeeper Wyllithen  */
UPDATE `creature_template` SET `DamageModifier` = 0.385715, `HealthModifier` = 0.6 WHERE `entry`=15969;

/*  Instructor Antheol  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=15970;

/*  Silvermoon Apprentice  */
UPDATE `creature_template` SET `HealthModifier` = 0.7 WHERE `entry`=15971;

/*  Lord Saltheril  */
UPDATE `creature_template` SET `DamageModifier` = 3.97864, `HealthModifier` = 0.6 WHERE `entry`=16144;

/*  Elisara Sunstriker  */
UPDATE `creature_template` SET `HealthModifier` = 0.6 WHERE `entry`=16147;

/*  Midnight  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 13.6564, `HealthModifier` = 50.0 WHERE `entry`=16151;

/*  Attumen the Huntsman  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 10.0, `HealthModifier` = 50.0 WHERE `entry`=16152;

/*  Berthold  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 2.0 WHERE `entry`=16153;

/*  Calliard  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 1.6 WHERE `entry`=16159;

/*  Magistrix Eredania  */
UPDATE `creature_template` SET `DamageModifier` = 1.46174, `HealthModifier` = 0.6 WHERE `entry`=16160;

/*  Arcanist Sheynathren  */
UPDATE `creature_template` SET `DamageModifier` = 5.771, `HealthModifier` = 1.0 WHERE `entry`=16161;

/*  Wretched Hooligan  */
UPDATE `creature_template` SET `DamageModifier` = 0.442294, `ArmorModifier` = 0.122699 WHERE `entry`=16162;

/*  Hastings  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 1.0 WHERE `entry`=16169;

/*  Coldmist Stalker  */
UPDATE `creature_template` SET `DamageModifier` = 3.17308, `HealthModifier` = 3.0 WHERE `entry`=16170;

/*  Coldmist Widow  */
UPDATE `creature_template` SET `DamageModifier` = 10.6401, `HealthModifier` = 7.0 WHERE `entry`=16171;

/*  Shadowbat  */
UPDATE `creature_template` SET `DamageModifier` = 5.1783, `HealthModifier` = 3.0 WHERE `entry`=16173;

/*  Greater Shadowbat  */
UPDATE `creature_template` SET `DamageModifier` = 14.1752, `HealthModifier` = 8.0 WHERE `entry`=16174;

/*  Vampiric Shadowbat  */
UPDATE `creature_template` SET `DamageModifier` = 10.6401, `HealthModifier` = 6.0 WHERE `entry`=16175;

/*  Shadowbeast  */
UPDATE `creature_template` SET `DamageModifier` = 8.6305, `HealthModifier` = 6.0 WHERE `entry`=16176;

/*  Dreadbeast  */
UPDATE `creature_template` SET `DamageModifier` = 14.1752, `HealthModifier` = 7.0 WHERE `entry`=16177;

/*  Phase Hound  */
UPDATE `creature_template` SET `DamageModifier` = 7.22722, `HealthModifier` = 3.5 WHERE `entry`=16178;

/*  Hyakiss the Lurker  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 15.5924, `HealthModifier` = 35.0 WHERE `entry`=16179;

/*  Shadikith the Glider  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 16.7748, `HealthModifier` = 35.0 WHERE `entry`=16180;

/*  Rokad the Ravager  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 11.5317, `HealthModifier` = 30.0 WHERE `entry`=16181;

/*  Courier Dawnstrider  */
UPDATE `creature_template` SET `DamageModifier` = 0.235628, `HealthModifier` = 0.9 WHERE `entry`=16183;

/*  Anathos  */
UPDATE `creature_template` SET `DamageModifier` = 0.439534, `HealthModifier` = 0.6 WHERE `entry`=16185;

/*  Quartermaster Lymel  */
UPDATE `creature_template` SET `DamageModifier` = 0.368223, `HealthModifier` = 0.7 WHERE `entry`=16187;

/*  Skymaster Sunwing  */
UPDATE `creature_template` SET `subname` = 'Bat Handler', `DamageModifier` = 1.0, `HealthModifier` = 0.3 WHERE `entry`=16189;

/*  Sathren Azuredawn  */
UPDATE `creature_template` SET `DamageModifier` = 0.348703, `HealthModifier` = 1.5 WHERE `entry`=16191;

/*  Skymistress Gloaming  */
UPDATE `creature_template` SET `subname` = 'Bat Handler', `DamageModifier` = 1.0, `HealthModifier` = 0.3 WHERE `entry`=16192;

/*  Apothecary Thedra  */
UPDATE `creature_template` SET `DamageModifier` = 0.235628, `HealthModifier` = 0.7 WHERE `entry`=16196;

/*  Arcanist Vandril  */
UPDATE `creature_template` SET `DamageModifier` = 0.4585, `HealthModifier` = 1.5 WHERE `entry`=16197;

/*  Apothecary Renzithen  */
UPDATE `creature_template` SET `DamageModifier` = 0.235628, `HealthModifier` = 1.2 WHERE `entry`=16198;

/*  Magister Darenis  */
UPDATE `creature_template` SET `DamageModifier` = 0.215673 WHERE `entry`=16199;

/*  Deathstalker Rathiel  */
UPDATE `creature_template` SET `DamageModifier` = 0.346062 WHERE `entry`=16200;

/*  Geranis Whitemorn  */
UPDATE `creature_template` SET `DamageModifier` = 0.471256, `HealthModifier` = 0.6 WHERE `entry`=16201;

/*  Farstrider Sedina  */
UPDATE `creature_template` SET `DamageModifier` = 0.235628, `HealthModifier` = 0.8 WHERE `entry`=16202;

/*  Ranger Vynna  */
UPDATE `creature_template` SET `DamageModifier` = 0.235628, `HealthModifier` = 1.2 WHERE `entry`=16203;

/*  Magister Idonis  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=16204;

/*  Magistrix Aminel  */
UPDATE `creature_template` SET `DamageModifier` = 1.46174 WHERE `entry`=16205;

/*  Apprentice Varnis  */
UPDATE `creature_template` SET `DamageModifier` = 0.471256 WHERE `entry`=16206;

/*  Apothecary Enith  */
UPDATE `creature_template` SET `DamageModifier` = 0.471256, `HealthModifier` = 2.1 WHERE `entry`=16208;

/*  Ranger Vedoran  */
UPDATE `creature_template` SET `DamageModifier` = 1.29595, `HealthModifier` = 2.7 WHERE `entry`=16209;

/*  Magistrix Landra Dawnstrider  */
UPDATE `creature_template` SET `DamageModifier` = 0.235628 WHERE `entry`=16210;

/*  Ranger Lethvalin  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=16213;

/*  Lieutenant Tomathren  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=16217;

/*  Ranger Valanna  */
UPDATE `creature_template` SET `DamageModifier` = 0.235628, `HealthModifier` = 0.6 WHERE `entry`=16219;

/*  Captain Helios  */
UPDATE `creature_template` SET `DamageModifier` = 0.331047, `HealthModifier` = 0.6 WHERE `entry`=16220;

/*  Silvermoon Guardian  */
UPDATE `creature_template` SET `DamageModifier` = 0.356237, `HealthModifier` = 0.5 WHERE `entry`=16221;

/*  Silvermoon City Guardian  */
UPDATE `creature_template` SET `minlevel` = 65, `maxlevel` = 65, `HealthModifier` = 12000.0 WHERE `entry`=16222;

/*  Rathis Tomber  */
UPDATE `creature_template` SET `DamageModifier` = 0.267058, `HealthModifier` = 1.7 WHERE `entry`=16224;

/*  Dame Auriferous  */
UPDATE `creature_template` SET `DamageModifier` = 0.368223, `HealthModifier` = 0.5 WHERE `entry`=16231;

/*  Magister Sylastor  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=16237;

/*  Night Elf Ambusher  */
UPDATE `creature_template` SET `DamageModifier` = 4.65679 WHERE `entry`=16238;

/*  Magister Kaendris  */
UPDATE `creature_template` SET `DamageModifier` = 0.397257, `HealthModifier` = 0.5 WHERE `entry`=16239;

/*  Arcanist Janeda  */
UPDATE `creature_template` SET `HealthModifier` = 0.7 WHERE `entry`=16240;

/*  Tranquillien Scout  */
UPDATE `creature_template` SET `DamageModifier` = 0.422312 WHERE `entry`=16242;

/*  Luzran  */
UPDATE `creature_template` SET `DamageModifier` = 1.62773 WHERE `entry`=16245;

/*  Knucklerot  */
UPDATE `creature_template` SET `DamageModifier` = 1.62773 WHERE `entry`=16246;

/*  Mirdoran the Fallen  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=16250;

/*  Deathstalker Maltendis  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=16251;

/*  High Executor Mavren  */
UPDATE `creature_template` SET `DamageModifier` = 0.331047, `HealthModifier` = 1.0 WHERE `entry`=16252;

/*  Master Chef Mouldier  */
UPDATE `creature_template` SET `DamageModifier` = 0.4585, `HealthModifier` = 1.9 WHERE `entry`=16253;

/*  Geron  */
UPDATE `creature_template` SET `DamageModifier` = 0.251611, `HealthModifier` = 0.6 WHERE `entry`=16257;

/*  Farsil  */
UPDATE `creature_template` SET `DamageModifier` = 0.277073, `HealthModifier` = 0.6 WHERE `entry`=16258;

/*  Sheri  */
UPDATE `creature_template` SET `DamageModifier` = 0.29184, `HealthModifier` = 2.4 WHERE `entry`=16259;

/*  Areyn  */
UPDATE `creature_template` SET `DamageModifier` = 1.75814, `HealthModifier` = 1.3 WHERE `entry`=16260;

/*  Sathiel  */
UPDATE `creature_template` SET `DamageModifier` = 0.439534, `HealthModifier` = 0.8 WHERE `entry`=16261;

/*  Landraelanis  */
UPDATE `creature_template` SET `DamageModifier` = 0.404848, `HealthModifier` = 0.6 WHERE `entry`=16262;

/*  Paelarin  */
UPDATE `creature_template` SET `HealthModifier` = 0.6 WHERE `entry`=16263;

/*  Winaestra  */
UPDATE `creature_template` SET `DamageModifier` = 0.445783, `HealthModifier` = 4.0 WHERE `entry`=16264;

/*  Celoenus  */
UPDATE `creature_template` SET `DamageModifier` = 0.382973 WHERE `entry`=16266;

/*  Daestra  */
UPDATE `creature_template` SET `subname` = 'Demon Trainer', `DamageModifier` = 0.382973, `HealthModifier` = 0.6 WHERE `entry`=16267;

/*  Eralan  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=16268;

/*  Garridel  */
UPDATE `creature_template` SET `DamageModifier` = 0.382973, `HealthModifier` = 7.8 WHERE `entry`=16269;

/*  Hannovia  */
UPDATE `creature_template` SET `DamageModifier` = 0.263729, `HealthModifier` = 0.6 WHERE `entry`=16270;

/*  Telenus  */
UPDATE `creature_template` SET `DamageModifier` = 0.263729 WHERE `entry`=16271;

/*  Kanaria  */
UPDATE `creature_template` SET `DamageModifier` = 0.305988, `HealthModifier` = 0.6 WHERE `entry`=16272;

/*  Mathreyn  */
UPDATE `creature_template` SET `DamageModifier` = 0.306526 WHERE `entry`=16273;

/*  Narina  */
UPDATE `creature_template` SET `DamageModifier` = 0.445661, `HealthModifier` = 0.8 WHERE `entry`=16274;

/*  Noellene  */
UPDATE `creature_template` SET `DamageModifier` = 0.263729, `HealthModifier` = 14.8 WHERE `entry`=16275;

/*  Ponaris  */
UPDATE `creature_template` SET `DamageModifier` = 0.382973, `HealthModifier` = 0.6 WHERE `entry`=16276;

/*  Sathein  */
UPDATE `creature_template` SET `DamageModifier` = 0.306526, `HealthModifier` = 1.1 WHERE `entry`=16278;

/*  Tannaria  */
UPDATE `creature_template` SET `DamageModifier` = 0.269668, `HealthModifier` = 0.6 WHERE `entry`=16279;

/*  Perascamin  */
UPDATE `creature_template` SET `DamageModifier` = 1.2259, `HealthModifier` = 0.6 WHERE `entry`=16280;

/*  Ambassador Sunsorrow  */
UPDATE `creature_template` SET `DamageModifier` = 5.23829, `HealthModifier` = 1.5 WHERE `entry`=16287;

/*  Advisor Sorrelon  */
UPDATE `creature_template` SET `DamageModifier` = 6.23156, `HealthModifier` = 0.7 WHERE `entry`=16288;

/*  Advisor Valwyn  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=16289;

/*  Magister Quallestis  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=16291;

/*  Aquantion  */
UPDATE `creature_template` SET `DamageModifier` = 1.20517 WHERE `entry`=16292;

/*  Apprentice Shatharia  */
UPDATE `creature_template` SET `DamageModifier` = 0.350604, `HealthModifier` = 2.3 WHERE `entry`=16293;

/*  Ranger Lilatha  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=16295;

/*  Phantasmal Watcher  */
UPDATE `creature_template` SET `DamageModifier` = 0.229659 WHERE `entry`=16311;

/*  Fallen Ranger  */
UPDATE `creature_template` SET `DamageModifier` = 0.357645 WHERE `entry`=16314;

/*  Deatholme Acolyte  */
UPDATE `creature_template` SET `DamageModifier` = 0.419016 WHERE `entry`=16315;

/*  Deatholme Necromancer  */
UPDATE `creature_template` SET `DamageModifier` = 0.405984 WHERE `entry`=16317;

/*  Deatholme Darkmage  */
UPDATE `creature_template` SET `DamageModifier` = 1.36272 WHERE `entry`=16318;

/*  Eye of Dar'Khan  */
UPDATE `creature_template` SET `DamageModifier` = 0.38745 WHERE `entry`=16320;

/*  Phantasmal Seeker  */
UPDATE `creature_template` SET `DamageModifier` = 0.459319 WHERE `entry`=16323;

/*  Quel'dorei Ghost  */
UPDATE `creature_template` SET `DamageModifier` = 0.510066 WHERE `entry`=16325;

/*  Quel'dorei Wraith  */
UPDATE `creature_template` SET `DamageModifier` = 0.363176 WHERE `entry`=16326;

/*  Ravening Apparition  */
UPDATE `creature_template` SET `DamageModifier` = 0.400587 WHERE `entry`=16327;

/*  Vengeful Apparition  */
UPDATE `creature_template` SET `DamageModifier` = 0.471256 WHERE `entry`=16328;

/*  Dar'Khan Drathir  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=16329;

/*  Sentinel Spy  */
UPDATE `creature_template` SET `DamageModifier` = 0.340044 WHERE `entry`=16330;

/*  Darnassian Druid  */
UPDATE `creature_template` SET `DamageModifier` = 0.438243 WHERE `entry`=16331;

/*  Darnassian Huntress  */
UPDATE `creature_template` SET `DamageModifier` = 0.387795 WHERE `entry`=16332;

/*  Sentinel Infiltrator  */
UPDATE `creature_template` SET `DamageModifier` = 0.357645 WHERE `entry`=16333;

/*  Blackpaw Shaman  */
UPDATE `creature_template` SET `maxlevel` = 13 WHERE `entry`=16337;

/*  Arcane Reaver  */
UPDATE `creature_template` SET `ArmorModifier` = 1.54887 WHERE `entry`=16339;

/*  Mistbat  */
UPDATE `creature_template` SET `ArmorModifier` = 1.73385 WHERE `entry`=16353;

/*  Anok'suten  */
UPDATE `creature_template` SET `DamageModifier` = 1.20631 WHERE `entry`=16357;

/*  Kel'gash the Wicked  */
UPDATE `creature_template` SET `DamageModifier` = 1.46438 WHERE `entry`=16358;

/*  Runewarden Deryan  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=16362;

/*  Sempstress Ambershine  */
UPDATE `creature_template` SET `DamageModifier` = 1.54832, `HealthModifier` = 0.6 WHERE `entry`=16366;

/*  Botanist Tyniarrel  */
UPDATE `creature_template` SET `DamageModifier` = 1.54832, `HealthModifier` = 0.6 WHERE `entry`=16367;

/*  Koren  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.7 WHERE `entry`=16388;

/*  Spectral Apprentice  */
UPDATE `creature_template` SET `DamageModifier` = 8.91554, `HealthModifier` = 6.0 WHERE `entry`=16389;

/*  Ardeyn Riverwind  */
UPDATE `creature_template` SET `DamageModifier` = 0.382973, `HealthModifier` = 0.6 WHERE `entry`=16397;

/*  Zombified Grimscale  */
UPDATE `creature_template` SET `DamageModifier` = 0.471256, `HealthModifier` = 0.8 WHERE `entry`=16402;

/*  Phantom Attendant  */
UPDATE `creature_template` SET `DamageModifier` = 12.8304, `HealthModifier` = 6.0 WHERE `entry`=16406;

/*  Spectral Servant  */
UPDATE `creature_template` SET `maxlevel` = 70, `DamageModifier` = 9.48257, `HealthModifier` = 6.0 WHERE `entry`=16407;

/*  Phantom Valet  */
UPDATE `creature_template` SET `DamageModifier` = 18.3508, `HealthModifier` = 9.0 WHERE `entry`=16408;

/*  Phantom Guest  */
UPDATE `creature_template` SET `DamageModifier` = 5.31901, `HealthModifier` = 1.9 WHERE `entry`=16409;

/*  Spectral Retainer  */
UPDATE `creature_template` SET `DamageModifier` = 17.1121, `HealthModifier` = 8.0 WHERE `entry`=16410;

/*  Spectral Chef  */
UPDATE `creature_template` SET `DamageModifier` = 17.4562, `HealthModifier` = 6.0 WHERE `entry`=16411;

/*  Ghostly Baker  */
UPDATE `creature_template` SET `DamageModifier` = 11.9106, `HealthModifier` = 6.1 WHERE `entry`=16412;

/*  Ghostly Steward  */
UPDATE `creature_template` SET `DamageModifier` = 15.8459, `HealthModifier` = 8.0 WHERE `entry`=16414;

/*  Skeletal Waiter  */
UPDATE `creature_template` SET `DamageModifier` = 13.2871, `HealthModifier` = 6.0 WHERE `entry`=16415;

/*  Spectral Sentry  */
UPDATE `creature_template` SET `DamageModifier` = 10.6401, `HealthModifier` = 6.0 WHERE `entry`=16424;

/*  Phantom Guardsman  */
UPDATE `creature_template` SET `DamageModifier` = 4.35357, `HealthModifier` = 6.0 WHERE `entry`=16425;

/*  Bennett  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 3.3 WHERE `entry`=16426;

/*  Vinemaster Suntouched  */
UPDATE `creature_template` SET `DamageModifier` = 0.348703, `HealthModifier` = 0.4 WHERE `entry`=16442;

/*  Zalene Firstlight  */
UPDATE `creature_template` SET `DamageModifier` = 1.51722, `HealthModifier` = 1.0 WHERE `entry`=16443;

/*  Halis Dawnstrider  */
UPDATE `creature_template` SET `DamageModifier` = 0.357645, `HealthModifier` = 0.5 WHERE `entry`=16444;

/*  Maiden of Virtue  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 21.3429, `HealthModifier` = 70.0 WHERE `entry`=16457;

/*  Wanton Hostess  */
UPDATE `creature_template` SET `DamageModifier` = 10.6401, `HealthModifier` = 8.0 WHERE `entry`=16459;

/*  Night Mistress  */
UPDATE `creature_template` SET `DamageModifier` = 10.6249, `HealthModifier` = 8.0 WHERE `entry`=16460;

/*  Concubine  */
UPDATE `creature_template` SET `DamageModifier` = 10.6401, `HealthModifier` = 8.0 WHERE `entry`=16461;

/*  Ranger Krenn'an  */
UPDATE `creature_template` SET `DamageModifier` = 0.215673, `HealthModifier` = 0.7 WHERE `entry`=16462;

/*  Farstrider Solanna  */
UPDATE `creature_template` SET `DamageModifier` = 0.368223, `HealthModifier` = 0.8 WHERE `entry`=16463;

/*  Apothecary Venustus  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=16464;

/*  Spectral Patron  */
UPDATE `creature_template` SET `DamageModifier` = 4.06024, `HealthModifier` = 2.0 WHERE `entry`=16468;

/*  Ghostly Philanthropist  */
UPDATE `creature_template` SET `DamageModifier` = 4.51801, `HealthModifier` = 6.5 WHERE `entry`=16470;

/*  Skeletal Usher  */
UPDATE `creature_template` SET `DamageModifier` = 19.1202, `HealthModifier` = 12.0 WHERE `entry`=16471;

/*  Phantom Stagehand  */
UPDATE `creature_template` SET `DamageModifier` = 33.5312, `HealthModifier` = 8.9 WHERE `entry`=16472;

/*  Spectral Performer  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 20.8516, `HealthModifier` = 8.2 WHERE `entry`=16473;

/*  Megelon  */
UPDATE `creature_template` SET `DamageModifier` = 0.452984, `HealthModifier` = 0.5, `ArmorModifier` = 0.294118 WHERE `entry`=16475;

/*  Jaeleil  */
UPDATE `creature_template` SET `HealthModifier` = 1.2 WHERE `entry`=16476;

/*  Proenitus  */
UPDATE `creature_template` SET `DamageModifier` = 1.37406, `HealthModifier` = 0.6, `ArmorModifier` = 0.121212 WHERE `entry`=16477;

/*  Ghastly Haunt  */
UPDATE `creature_template` SET `DamageModifier` = 27.8469, `HealthModifier` = 10.0 WHERE `entry`=16481;

/*  Trapped Soul  */
UPDATE `creature_template` SET `DamageModifier` = 22.59, `HealthModifier` = 9.8 WHERE `entry`=16482;

/*  Arcane Watchman  */
UPDATE `creature_template` SET `DamageModifier` = 19.1468, `HealthModifier` = 12.0 WHERE `entry`=16485;

/*  Arcane Anomaly  */
UPDATE `creature_template` SET `DamageModifier` = 15.6727, `HealthModifier` = 0.2, `ArmorModifier` = 0.633658 WHERE `entry`=16488;

/*  Chaotic Sentience  */
UPDATE `creature_template` SET `DamageModifier` = 9.37072, `HealthModifier` = 8.0 WHERE `entry`=16489;

/*  Mana Feeder  */
UPDATE `creature_template` SET `DamageModifier` = 3.17308, `HealthModifier` = 2.0 WHERE `entry`=16491;

/*  Syphoner  */
UPDATE `creature_template` SET `DamageModifier` = 5.40723, `HealthModifier` = 2.0 WHERE `entry`=16492;

/*  Keilnei  */
UPDATE `creature_template` SET `HealthModifier` = 0.6, `ArmorModifier` = 0.122699 WHERE `entry`=16499;

/*  Valaatu  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.6, `ArmorModifier` = 0.143885 WHERE `entry`=16500;

/*  Aurelon  */
UPDATE `creature_template` SET `ArmorModifier` = 0.122699 WHERE `entry`=16501;

/*  Zalduun  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8, `ArmorModifier` = 0.143885 WHERE `entry`=16502;

/*  Kore  */
UPDATE `creature_template` SET `DamageModifier` = 1.37406, `HealthModifier` = 1.2, `ArmorModifier` = 0.121212 WHERE `entry`=16503;

/*  Arcane Protector  */
UPDATE `creature_template` SET `DamageModifier` = 26.1085, `HealthModifier` = 16.0 WHERE `entry`=16504;

/*  Shattered Hand Sentry  */
UPDATE `creature_template` SET `DamageModifier` = 8.685 WHERE `entry`=16507;

/*  Botanist Taerix  */
UPDATE `creature_template` SET `DamageModifier` = 0.452984, `HealthModifier` = 0.5, `ArmorModifier` = 0.294118 WHERE `entry`=16514;

/*  Mutated Root Lasher  */
UPDATE `creature_template` SET `ArmorModifier` = 1.24242 WHERE `entry`=16517;

/*  Blood Elf Scout  */
UPDATE `creature_template` SET `ArmorModifier` = 2.0303, `maxgold` = 7 WHERE `entry`=16521;

/*  Surveyor Candress  */
UPDATE `creature_template` SET `mingold` = 4, `maxgold` = 10 WHERE `entry`=16522;

/*  Shattered Hand Savage  */
UPDATE `creature_template` SET `DamageModifier` = 8.685 WHERE `entry`=16523;

/*  Shade of Aran  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 8.88557, `HealthModifier` = 160.0 WHERE `entry`=16524;

/*  Spell Shade  */
UPDATE `creature_template` SET `DamageModifier` = 11.6438, `HealthModifier` = 6.0 WHERE `entry`=16525;

/*  Sorcerous Shade  */
UPDATE `creature_template` SET `DamageModifier` = 11.4182, `HealthModifier` = 8.0 WHERE `entry`=16526;

/*  Provisioner Vredigar  */
UPDATE `creature_template` SET `DamageModifier` = 0.368223, `HealthModifier` = 1.2 WHERE `entry`=16528;

/*  Magical Horror  */
UPDATE `creature_template` SET `DamageModifier` = 11.6407, `HealthModifier` = 8.0 WHERE `entry`=16529;

/*  Mana Warp  */
UPDATE `creature_template` SET `DamageModifier` = 5.94699, `HealthModifier` = 6.0 WHERE `entry`=16530;

/*  Inoculated Nestlewood Owlkin  */
UPDATE `creature_template` SET `DamageModifier` = 8.15903, `HealthModifier` = 1.1 WHERE `entry`=16534;

/*  Vindicator Aldar  */
UPDATE `creature_template` SET `DamageModifier` = 1.37406, `HealthModifier` = 0.5, `ArmorModifier` = 0.121212 WHERE `entry`=16535;

/*  Mutated Owlkin  */
UPDATE `creature_template` SET `ArmorModifier` = 2.30303 WHERE `entry`=16537;

/*  Homunculus  */
UPDATE `creature_template` SET `DamageModifier` = 2.96801, `HealthModifier` = 3.0 WHERE `entry`=16539;

/*  Shadow Pillager  */
UPDATE `creature_template` SET `DamageModifier` = 7.61216, `HealthModifier` = 6.0 WHERE `entry`=16540;

/*  Ghostlands Guardian  */
UPDATE `creature_template` SET `maxlevel` = 30, `DamageModifier` = 0.402163, `HealthModifier` = 2.4 WHERE `entry`=16541;

/*  Innkeeper Kalarin  */
UPDATE `creature_template` SET `DamageModifier` = 1.49139, `HealthModifier` = 1.2 WHERE `entry`=16542;

/*  Ethereal Thief  */
UPDATE `creature_template` SET `DamageModifier` = 22.8192, `HealthModifier` = 8.0 WHERE `entry`=16544;

/*  Ethereal Spellfilcher  */
UPDATE `creature_template` SET `DamageModifier` = 22.8365, `HealthModifier` = 10.0 WHERE `entry`=16545;

/*  Tolaan  */
UPDATE `creature_template` SET `DamageModifier` = 0.452984, `HealthModifier` = 0.7, `ArmorModifier` = 0.294118 WHERE `entry`=16546;

/*  Technician Dyvuun  */
UPDATE `creature_template` SET `DamageModifier` = 3.64152, `HealthModifier` = 1.4 WHERE `entry`=16551;

/*  Caregiver Chellan  */
UPDATE `creature_template` SET `DamageModifier` = 4.69165, `HealthModifier` = 0.4 WHERE `entry`=16553;

/*  Aeun  */
UPDATE `creature_template` SET `DamageModifier` = 4.82247, `HealthModifier` = 1.2, `ArmorModifier` = 0.18018 WHERE `entry`=16554;

/*  Tandrine  */
UPDATE `creature_template` SET `DamageModifier` = 0.348703, `HealthModifier` = 3.5 WHERE `entry`=16568;

/*  Far Seer Regulkut  */
UPDATE `creature_template` SET `DamageModifier` = 0.367061, `HealthModifier` = 0.6 WHERE `entry`=16574;

/*  Shadow Hunter Ty'jin  */
UPDATE `creature_template` SET `DamageModifier` = 3.34434, `HealthModifier` = 2.0 WHERE `entry`=16575;

/*  Overlord Hun Maimfist  */
UPDATE `creature_template` SET `DamageModifier` = 3.36885, `HealthModifier` = 0.9 WHERE `entry`=16576;

/*  Martik Tor'seldori  */
UPDATE `creature_template` SET `DamageModifier` = 0.359078, `HealthModifier` = 0.4 WHERE `entry`=16577;

/*  Blood Elf Pilgrim  */
UPDATE `creature_template` SET `minlevel` = 58, `DamageModifier` = 0.361404, `HealthModifier` = 1.5 WHERE `entry`=16578;

/*  Falcon Watch Sentinel  */
UPDATE `creature_template` SET `DamageModifier` = 0.353095, `HealthModifier` = 1.6 WHERE `entry`=16579;

/*  Thrallmar Grunt  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 1.1 WHERE `entry`=16580;

/*  Thrallmar Marksman  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542 WHERE `entry`=16582;

/*  Rohok  */
UPDATE `creature_template` SET `DamageModifier` = 3.13916, `HealthModifier` = 3.3 WHERE `entry`=16583;

/*  Watch Commander Krunk  */
UPDATE `creature_template` SET `DamageModifier` = 0.330909, `HealthModifier` = 1.6 WHERE `entry`=16584;

/*  Cookie One-Eye  */
UPDATE `creature_template` SET `DamageModifier` = 0.33804, `HealthModifier` = 1.5 WHERE `entry`=16585;

/*  Huntsman Torf Angerhoof  */
UPDATE `creature_template` SET `DamageModifier` = 3.34402, `HealthModifier` = 1.3 WHERE `entry`=16586;

/*  Barley  */
UPDATE `creature_template` SET `DamageModifier` = 2.46972, `HealthModifier` = 1.1, `ManaModifier` = 0.8 WHERE `entry`=16587;

/*  Apothecary Antonivich  */
UPDATE `creature_template` SET `DamageModifier` = 3.34434, `HealthModifier` = 2.9 WHERE `entry`=16588;

/*  Guard Captain Cragtar  */
UPDATE `creature_template` SET `DamageModifier` = 3.13916, `HealthModifier` = 1.3 WHERE `entry`=16589;

/*  Injured Thrallmar Grunt  */
UPDATE `creature_template` SET `minlevel` = 58, `DamageModifier` = 0.33804, `HealthModifier` = 1.0 WHERE `entry`=16590;

/*  Thrallmar Peon  */
UPDATE `creature_template` SET `DamageModifier` = 0.326302, `HealthModifier` = 1.3 WHERE `entry`=16591;

/*  Shattered Hand Brawler  */
UPDATE `creature_template` SET `DamageModifier` = 8.72 WHERE `entry`=16593;

/*  Shadowmoon Acolyte  */
UPDATE `creature_template` SET `DamageModifier` = 4.66589, `ArmorModifier` = 0.63416, `ManaModifier` = 2.2 WHERE `entry`=16594;

/*  Fleshbeast  */
UPDATE `creature_template` SET `DamageModifier` = 16.2348, `HealthModifier` = 10.0 WHERE `entry`=16595;

/*  Greater Fleshbeast  */
UPDATE `creature_template` SET `DamageModifier` = 26.5685, `HealthModifier` = 16.0 WHERE `entry`=16596;

/*  Eye of Thrallmar  */
UPDATE `creature_template` SET `HealthModifier` = 2.0 WHERE `entry`=16598;

/*  Thrallmar Wolf Rider  */
UPDATE `creature_template` SET `DamageModifier` = 3.13916, `HealthModifier` = 0.3 WHERE `entry`=16599;

/*  Dying Blood Elf  */
UPDATE `creature_template` SET `HealthModifier` = 0.9 WHERE `entry`=16601;

/*  Floyd Pinkus  */
UPDATE `creature_template` SET `DamageModifier` = 0.367061, `HealthModifier` = 2.9 WHERE `entry`=16602;

/*  Farstrider Dusking  */
UPDATE `creature_template` SET `DamageModifier` = 0.290847, `HealthModifier` = 1.0 WHERE `entry`=16603;

/*  Kredis  */
UPDATE `creature_template` SET `HealthModifier` = 3.0 WHERE `entry`=16610;

/*  Zalle  */
UPDATE `creature_template` SET `HealthModifier` = 5.4 WHERE `entry`=16611;

/*  Parnis  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=16613;

/*  Novia  */
UPDATE `creature_template` SET `HealthModifier` = 2.8 WHERE `entry`=16615;

/*  Periel  */
UPDATE `creature_template` SET `HealthModifier` = 2.7 WHERE `entry`=16616;

/*  Daenice  */
UPDATE `creature_template` SET `HealthModifier` = 0.7 WHERE `entry`=16617;

/*  Mathaleron  */
UPDATE `creature_template` SET `HealthModifier` = 1.2 WHERE `entry`=16620;

/*  Ileda  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=16621;

/*  Zyandrel  */
UPDATE `creature_template` SET `HealthModifier` = 3.0 WHERE `entry`=16623;

/*  Gelanthis  */
UPDATE `creature_template` SET `HealthModifier` = 0.9 WHERE `entry`=16624;

/*  Keeli  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=16625;

/*  Ithillan  */
UPDATE `creature_template` SET `HealthModifier` = 1.1 WHERE `entry`=16627;

/*  Caidori  */
UPDATE `creature_template` SET `HealthModifier` = 1.1 WHERE `entry`=16628;

/*  Tandron  */
UPDATE `creature_template` SET `DamageModifier` = 0.462318, `HealthModifier` = 0.5 WHERE `entry`=16629;

/*  Andra  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=16631;

/*  Oss  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=16632;

/*  Sedana  */
UPDATE `creature_template` SET `DamageModifier` = 0.403593, `HealthModifier` = 0.5 WHERE `entry`=16633;

/*  Dolothos  */
UPDATE `creature_template` SET `DamageModifier` = 0.403593, `HealthModifier` = 1.5 WHERE `entry`=16634;

/*  Welethelon  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=16637;

/*  Deynna  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=16638;

/*  Galana  */
UPDATE `creature_template` SET `DamageModifier` = 0.403593, `HealthModifier` = 0.5 WHERE `entry`=16639;

/*  Keelen Sheets  */
UPDATE `creature_template` SET `DamageModifier` = 0.403593 WHERE `entry`=16640;

/*  Melaris  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=16641;

/*  Camberon  */
UPDATE `creature_template` SET `DamageModifier` = 0.454042 WHERE `entry`=16642;

/*  Razia  */
UPDATE `creature_template` SET `DamageModifier` = 0.454042, `HealthModifier` = 0.5 WHERE `entry`=16643;

/*  Botanist Nathera  */
UPDATE `creature_template` SET `DamageModifier` = 0.454042, `HealthModifier` = 0.5 WHERE `entry`=16644;

/*  Alamma  */
UPDATE `creature_template` SET `DamageModifier` = 0.512106, `HealthModifier` = 2.8 WHERE `entry`=16646;

/*  Talionia  */
UPDATE `creature_template` SET `HealthModifier` = 6.1 WHERE `entry`=16647;

/*  Zanien  */
UPDATE `creature_template` SET `HealthModifier` = 0.4 WHERE `entry`=16648;

/*  Torian  */
UPDATE `creature_template` SET `subname` = 'Demon Trainer', `HealthModifier` = 0.6 WHERE `entry`=16649;

/*  Zaedana  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=16651;

/*  Quithas  */
UPDATE `creature_template` SET `DamageModifier` = 0.512106, `HealthModifier` = 2.1 WHERE `entry`=16652;

/*  Harene Plainwalker  */
UPDATE `creature_template` SET `DamageModifier` = 0.367061, `HealthModifier` = 0.4 WHERE `entry`=16655;

/*  Feera  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=16657;

/*  Lotheolan  */
UPDATE `creature_template` SET `DamageModifier` = 0.512106 WHERE `entry`=16659;

/*  Belestra  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=16660;

/*  Alestus  */
UPDATE `creature_template` SET `DamageModifier` = 0.403593, `HealthModifier` = 0.7 WHERE `entry`=16662;

/*  Belil  */
UPDATE `creature_template` SET `DamageModifier` = 0.403593 WHERE `entry`=16663;

/*  Zelan  */
UPDATE `creature_template` SET `DamageModifier` = 0.395844, `HealthModifier` = 8.9 WHERE `entry`=16664;

/*  Paniar  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=16665;

/*  Feledis  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=16666;

/*  Danwe  */
UPDATE `creature_template` SET `DamageModifier` = 0.403593, `HealthModifier` = 0.5 WHERE `entry`=16667;

/*  Gloresse  */
UPDATE `creature_template` SET `DamageModifier` = 0.403593, `HealthModifier` = 0.5 WHERE `entry`=16668;

/*  Bemarrin  */
UPDATE `creature_template` SET `HealthModifier` = 0.6 WHERE `entry`=16669;

/*  Eriden  */
UPDATE `creature_template` SET `DamageModifier` = 0.337077, `HealthModifier` = 1.0 WHERE `entry`=16670;

/*  Mirvedon  */
UPDATE `creature_template` SET `DamageModifier` = 4.13683, `HealthModifier` = 1.4 WHERE `entry`=16671;

/*  Tana  */
UPDATE `creature_template` SET `DamageModifier` = 0.45435, `HealthModifier` = 0.6 WHERE `entry`=16672;

/*  Oninath  */
UPDATE `creature_template` SET `DamageModifier` = 0.350649, `HealthModifier` = 0.4 WHERE `entry`=16673;

/*  Zandine  */
UPDATE `creature_template` SET `DamageModifier` = 0.367061, `HealthModifier` = 0.4 WHERE `entry`=16674;

/*  Halthenis  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=16675;

/*  Sylann  */
UPDATE `creature_template` SET `DamageModifier` = 0.403593, `HealthModifier` = 0.5 WHERE `entry`=16676;

/*  Quelis  */
UPDATE `creature_template` SET `HealthModifier` = 8.4 WHERE `entry`=16677;

/*  Rahein  */
UPDATE `creature_template` SET `DamageModifier` = 0.395844, `HealthModifier` = 0.4 WHERE `entry`=16678;

/*  Osselan  */
UPDATE `creature_template` SET `DamageModifier` = 1.43878, `HealthModifier` = 1.4 WHERE `entry`=16679;

/*  Champion Bachi  */
UPDATE `creature_template` SET `HealthModifier` = 0.2 WHERE `entry`=16681;

/*  Darlia  */
UPDATE `creature_template` SET `HealthModifier` = 2.6 WHERE `entry`=16683;

/*  Zelanis  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 0.3 WHERE `entry`=16684;

/*  Elara  */
UPDATE `creature_template` SET `DamageModifier` = 0.326302, `HealthModifier` = 0.3 WHERE `entry`=16685;

/*  Nerisen  */
UPDATE `creature_template` SET `DamageModifier` = 0.387159, `HealthModifier` = 0.4 WHERE `entry`=16686;

/*  Talmar  */
UPDATE `creature_template` SET `DamageModifier` = 0.403593, `HealthModifier` = 0.8 WHERE `entry`=16687;

/*  Lynalis  */
UPDATE `creature_template` SET `DamageModifier` = 0.403593 WHERE `entry`=16688;

/*  Zaralda  */
UPDATE `creature_template` SET `HealthModifier` = 6.4 WHERE `entry`=16689;

/*  Tyn  */
UPDATE `creature_template` SET `DamageModifier` = 0.403593, `HealthModifier` = 0.7 WHERE `entry`=16692;

/*  Karen Wentworth  */
UPDATE `creature_template` SET `DamageModifier` = 1.57459, `HealthModifier` = 0.4 WHERE `entry`=16694;

/*  Gurak  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 1.5 WHERE `entry`=16695;

/*  Krukk  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 0.6 WHERE `entry`=16696;

/*  Shattered Hand Reaver  */
UPDATE `creature_template` SET `DamageModifier` = 8.69 WHERE `entry`=16699;

/*  Shattered Hand Legionnaire  */
UPDATE `creature_template` SET `DamageModifier` = 4.93169 WHERE `entry`=16700;

/*  Amin  */
UPDATE `creature_template` SET `DamageModifier` = 0.403593, `HealthModifier` = 1.1 WHERE `entry`=16703;

/*  Shattered Hand Sharpshooter  */
UPDATE `creature_template` SET `DamageModifier` = 4.40726 WHERE `entry`=16704;

/*  Altaa  */
UPDATE `creature_template` SET `HealthModifier` = 7.3 WHERE `entry`=16705;

/*  Musal  */
UPDATE `creature_template` SET `HealthModifier` = 6.1 WHERE `entry`=16706;

/*  Eoch  */
UPDATE `creature_template` SET `HealthModifier` = 3.4 WHERE `entry`=16707;

/*  Dekin  */
UPDATE `creature_template` SET `DamageModifier` = 0.395844, `HealthModifier` = 0.4 WHERE `entry`=16708;

/*  Cuzi  */
UPDATE `creature_template` SET `DamageModifier` = 0.462318, `HealthModifier` = 0.6 WHERE `entry`=16709;

/*  Kellag  */
UPDATE `creature_template` SET `HealthModifier` = 2.8 WHERE `entry`=16710;

/*  Ganaar  */
UPDATE `creature_template` SET `DamageModifier` = 0.462318, `HealthModifier` = 0.5 WHERE `entry`=16712;

/*  Arras  */
UPDATE `creature_template` SET `DamageModifier` = 0.339046, `HealthModifier` = 0.4 WHERE `entry`=16713;

/*  Ven  */
UPDATE `creature_template` SET `HealthModifier` = 1.1 WHERE `entry`=16714;

/*  Avelii  */
UPDATE `creature_template` SET `DamageModifier` = 4.05051, `HealthModifier` = 0.4 WHERE `entry`=16715;

/*  Gornii  */
UPDATE `creature_template` SET `HealthModifier` = 1.9 WHERE `entry`=16716;

/*  Mumman  */
UPDATE `creature_template` SET `DamageModifier` = 0.403593, `HealthModifier` = 0.5 WHERE `entry`=16719;

/*  Shalannius  */
UPDATE `creature_template` SET `DamageModifier` = 0.367061, `HealthModifier` = 0.6 WHERE `entry`=16721;

/*  Egomis  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=16722;

/*  Lucc  */
UPDATE `creature_template` SET `DamageModifier` = 0.403593, `HealthModifier` = 0.5 WHERE `entry`=16723;

/*  Miall  */
UPDATE `creature_template` SET `DamageModifier` = 0.403593, `HealthModifier` = 2.0 WHERE `entry`=16724;

/*  Nahogg  */
UPDATE `creature_template` SET `DamageModifier` = 0.403593, `HealthModifier` = 0.5 WHERE `entry`=16725;

/*  Ockil  */
UPDATE `creature_template` SET `DamageModifier` = 0.403593, `HealthModifier` = 7.3 WHERE `entry`=16726;

/*  Padaar  */
UPDATE `creature_template` SET `DamageModifier` = 4.13683, `HealthModifier` = 0.5 WHERE `entry`=16727;

/*  Akham  */
UPDATE `creature_template` SET `DamageModifier` = 0.403593 WHERE `entry`=16728;

/*  Refik  */
UPDATE `creature_template` SET `DamageModifier` = 0.403593, `HealthModifier` = 5.1 WHERE `entry`=16729;

/*  Nus  */
UPDATE `creature_template` SET `DamageModifier` = 0.403593 WHERE `entry`=16731;

/*  Onnis  */
UPDATE `creature_template` SET `HealthModifier` = 1.6 WHERE `entry`=16732;

/*  Exodar Peacekeeper  */
UPDATE `creature_template` SET `minlevel` = 65, `maxlevel` = 65, `HealthModifier` = 5200.0 WHERE `entry`=16733;

/*  Funaam  */
UPDATE `creature_template` SET `DamageModifier` = 0.337077, `HealthModifier` = 1.8 WHERE `entry`=16734;

/*  Muhaa  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=16735;

/*  Cemmorhan  */
UPDATE `creature_template` SET `DamageModifier` = 0.403593 WHERE `entry`=16736;

/*  Deremiis  */
UPDATE `creature_template` SET `DamageModifier` = 0.350649 WHERE `entry`=16738;

/*  Caregiver Breel  */
UPDATE `creature_template` SET `HealthModifier` = 1.2 WHERE `entry`=16739;

/*  Edrem  */
UPDATE `creature_template` SET `DamageModifier` = 0.403593, `HealthModifier` = 2.6 WHERE `entry`=16740;

/*  Deriz  */
UPDATE `creature_template` SET `DamageModifier` = 0.403593, `HealthModifier` = 0.6 WHERE `entry`=16741;

/*  Kudrii  */
UPDATE `creature_template` SET `DamageModifier` = 0.403593, `HealthModifier` = 0.6 WHERE `entry`=16742;

/*  Ghermas  */
UPDATE `creature_template` SET `DamageModifier` = 0.403593, `HealthModifier` = 0.6 WHERE `entry`=16743;

/*  Driaan  */
UPDATE `creature_template` SET `DamageModifier` = 4.17015, `HealthModifier` = 0.4 WHERE `entry`=16744;

/*  Feruul  */
UPDATE `creature_template` SET `DamageModifier` = 0.403593, `HealthModifier` = 0.7 WHERE `entry`=16745;

/*  Kayaart  */
UPDATE `creature_template` SET `DamageModifier` = 0.403593, `HealthModifier` = 5.1 WHERE `entry`=16746;

/*  Mahri  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=16747;

/*  Haferet  */
UPDATE `creature_template` SET `DamageModifier` = 0.403593, `HealthModifier` = 6.7 WHERE `entry`=16748;

/*  Edirah  */
UPDATE `creature_template` SET `HealthModifier` = 2.4 WHERE `entry`=16749;

/*  Yil  */
UPDATE `creature_template` SET `HealthModifier` = 9.8 WHERE `entry`=16750;

/*  Merran  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=16751;

/*  Muaat  */
UPDATE `creature_template` SET `DamageModifier` = 0.403593 WHERE `entry`=16752;

/*  Gotaan  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=16753;

/*  Lunaraa  */
UPDATE `creature_template` SET `HealthModifier` = 1.5 WHERE `entry`=16755;

/*  Caedmos  */
UPDATE `creature_template` SET `DamageModifier` = 0.363389, `HealthModifier` = 2.0 WHERE `entry`=16756;

/*  Bildine  */
UPDATE `creature_template` SET `HealthModifier` = 1.2 WHERE `entry`=16757;

/*  Baatun  */
UPDATE `creature_template` SET `DamageModifier` = 0.367061 WHERE `entry`=16761;

/*  Remere  */
UPDATE `creature_template` SET `DamageModifier` = 0.403593, `HealthModifier` = 0.5 WHERE `entry`=16763;

/*  Arthaid  */
UPDATE `creature_template` SET `DamageModifier` = 0.395844, `HealthModifier` = 8.0 WHERE `entry`=16764;

/*  Ellomin  */
UPDATE `creature_template` SET `HealthModifier` = 10.0 WHERE `entry`=16765;

/*  Issca  */
UPDATE `creature_template` SET `HealthModifier` = 1.2 WHERE `entry`=16766;

/*  Neii  */
UPDATE `creature_template` SET `DamageModifier` = 0.403593, `HealthModifier` = 8.4 WHERE `entry`=16767;

/*  Nurguni  */
UPDATE `creature_template` SET `DamageModifier` = 6.55673, `HealthModifier` = 0.5 WHERE `entry`=16768;

/*  Ahonan  */
UPDATE `creature_template` SET `DamageModifier` = 0.387159 WHERE `entry`=16771;

/*  Handiir  */
UPDATE `creature_template` SET `DamageModifier` = 0.395844, `HealthModifier` = 0.4 WHERE `entry`=16773;

/*  Erett  */
UPDATE `creature_template` SET `DamageModifier` = 0.403593, `HealthModifier` = 0.8 WHERE `entry`=16774;

/*  Drathen  */
UPDATE `creature_template` SET `DamageModifier` = 0.403593 WHERE `entry`=16780;

/*  Yatheon  */
UPDATE `creature_template` SET `HealthModifier` = 0.6 WHERE `entry`=16782;

/*  Ranger Captain Venn'ren  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=16789;

/*  Falconer Drenna Riverwind  */
UPDATE `creature_template` SET `DamageModifier` = 3.1114, `HealthModifier` = 1.3 WHERE `entry`=16790;

/*  Ryathen the Somber  */
UPDATE `creature_template` SET `DamageModifier` = 4.85964, `HealthModifier` = 1.6 WHERE `entry`=16791;

/*  Arcanist Calesthris Dawnstar  */
UPDATE `creature_template` SET `DamageModifier` = 4.85964, `HealthModifier` = 1.8 WHERE `entry`=16792;

/*  Magistrix Carinda  */
UPDATE `creature_template` SET `DamageModifier` = 0.50744, `HealthModifier` = 1.5 WHERE `entry`=16793;

/*  Apothecary Azethen  */
UPDATE `creature_template` SET `DamageModifier` = 3.13161 WHERE `entry`=16794;

/*  Draenei Prisoner  */
UPDATE `creature_template` SET `DamageModifier` = 4.88114, `HealthModifier` = 0.4 WHERE `entry`=16795;

/*  Amaan the Wise  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=16796;

/*  Scout Vanura  */
UPDATE `creature_template` SET `DamageModifier` = 4.88114, `HealthModifier` = 0.4 WHERE `entry`=16797;

/*  Provisioner Anir  */
UPDATE `creature_template` SET `DamageModifier` = 0.505972, `HealthModifier` = 1.7 WHERE `entry`=16798;

/*  Ikan  */
UPDATE `creature_template` SET `DamageModifier` = 3.32742, `HealthModifier` = 1.7 WHERE `entry`=16799;

/*  Grand Magister Rommath  */
UPDATE `creature_template` SET `HealthModifier` = 164.7, `ManaModifier` = 18.6 WHERE `entry`=16800;

/*  Halduron Brightwing  */
UPDATE `creature_template` SET `DamageModifier` = 5.0, `HealthModifier` = 100.2 WHERE `entry`=16801;

/*  Lor'themar Theron  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 150.9 WHERE `entry`=16802;

/*  Night Elf Corpse  */
UPDATE `creature_template` SET `DamageModifier` = 0.471256, `HealthModifier` = 0.6 WHERE `entry`=16804;

/*  Ebonlocke  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.7 WHERE `entry`=16806;

/*  Grand Warlock Nethekurse  */
UPDATE `creature_template` SET `DamageModifier` = 5.67857, `HealthModifier` = 18.8, `ManaModifier` = 18.7 WHERE `entry`=16807;

/*  Warchief Kargath Bladefist  */
UPDATE `creature_template` SET `DamageModifier` = 4.99711, `HealthModifier` = 22.8 WHERE `entry`=16808;

/*  Warbringer O'mrogg  */
UPDATE `creature_template` SET `DamageModifier` = 5.79665, `HealthModifier` = 20.8 WHERE `entry`=16809;

/*  Sebastian  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 1.0 WHERE `entry`=16811;

/*  Barnes  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.9 WHERE `entry`=16812;

/*  Wravien  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 2.0 WHERE `entry`=16813;

/*  Gradav  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 1.0 WHERE `entry`=16814;

/*  Kamsis  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 1.0 WHERE `entry`=16815;

/*  Echo of Medivh  */
UPDATE `creature_template` SET `DamageModifier` = 1.63312, `HealthModifier` = 2.6 WHERE `entry`=16816;

/*  Force Commander Danath Trollbane  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.5 WHERE `entry`=16819;

/*  Lieutenant Amadi  */
UPDATE `creature_template` SET `DamageModifier` = 3.13916, `HealthModifier` = 0.3 WHERE `entry`=16820;

/*  Magus Filinthus  */
UPDATE `creature_template` SET `DamageModifier` = 0.367061, `HealthModifier` = 2.1 WHERE `entry`=16821;

/*  Flightmaster Krill Bitterhue  */
UPDATE `creature_template` SET `DamageModifier` = 3.54684, `HealthModifier` = 1.6 WHERE `entry`=16822;

/*  Humphry  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 3.3 WHERE `entry`=16823;

/*  Master Sergeant Lorin Thalmerok  */
UPDATE `creature_template` SET `DamageModifier` = 0.361404, `HealthModifier` = 0.4 WHERE `entry`=16824;

/*  Father Malgor Devidicus  */
UPDATE `creature_template` SET `DamageModifier` = 3.34434, `HealthModifier` = 1.9 WHERE `entry`=16825;

/*  Sid Limbardi  */
UPDATE `creature_template` SET `DamageModifier` = 3.1601, `HealthModifier` = 1.8 WHERE `entry`=16826;

/*  Honor Guard Wesilow  */
UPDATE `creature_template` SET `DamageModifier` = 3.13916, `HealthModifier` = 0.3 WHERE `entry`=16827;

/*  Honor Guard Greyn  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401 WHERE `entry`=16828;

/*  Magus Zabraxis  */
UPDATE `creature_template` SET `DamageModifier` = 0.367061 WHERE `entry`=16829;

/*  Field Commander Romus  */
UPDATE `creature_template` SET `DamageModifier` = 3.32742, `HealthModifier` = 1.8 WHERE `entry`=16830;

/*  Nethergarde Infantry  */
UPDATE `creature_template` SET `DamageModifier` = 0.33804 WHERE `entry`=16831;

/*  Prospector Murantus  */
UPDATE `creature_template` SET `DamageModifier` = 0.337539 WHERE `entry`=16832;

/*  Makuru  */
UPDATE `creature_template` SET `DamageModifier` = 3.33145, `HealthModifier` = 1.6 WHERE `entry`=16833;

/*  Anchorite Obadei  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=16834;

/*  Explorers' League Archaeologist  */
UPDATE `creature_template` SET `DamageModifier` = 0.343366, `HealthModifier` = 0.6 WHERE `entry`=16835;

/*  Escaped Dreghood  */
UPDATE `creature_template` SET `DamageModifier` = 0.361404, `HealthModifier` = 1.4 WHERE `entry`=16836;

/*  Foreman Biggums  */
UPDATE `creature_template` SET `DamageModifier` = 3.13161, `HealthModifier` = 1.2 WHERE `entry`=16837;

/*  Honor Hold Miner  */
UPDATE `creature_template` SET `DamageModifier` = 0.351542 WHERE `entry`=16838;

/*  Warp-Scryer Kryv  */
UPDATE `creature_template` SET `DamageModifier` = 3.32742, `HealthModifier` = 1.4 WHERE `entry`=16839;

/*  Advisor Sevel  */
UPDATE `creature_template` SET `DamageModifier` = 2.48786 WHERE `entry`=16840;

/*  Watch Commander Relthorn Netherwane  */
UPDATE `creature_template` SET `DamageModifier` = 3.32742 WHERE `entry`=16841;

/*  Honor Hold Defender  */
UPDATE `creature_template` SET `DamageModifier` = 3.09497, `HealthModifier` = 2.2 WHERE `entry`=16842;

/*  Honor Hold Cavalryman  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542 WHERE `entry`=16843;

/*  Gorkan Bloodfist  */
UPDATE `creature_template` SET `DamageModifier` = 2.97948 WHERE `entry`=16845;

/*  Debilitated Mag'har Grunt  */
UPDATE `creature_template` SET `DamageModifier` = 3.16167 WHERE `entry`=16847;

/*  Provisioner Braknar  */
UPDATE `creature_template` SET `DamageModifier` = 2.26901, `HealthModifier` = 1.0 WHERE `entry`=16848;

/*  Gremni Longbeard  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=16850;

/*  Mirren Longbeard  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.7 WHERE `entry`=16851;

/*  Sedai's Corpse  */
UPDATE `creature_template` SET `DamageModifier` = 2.37775 WHERE `entry`=16852;

/*  Eldinarcus  */
UPDATE `creature_template` SET `DamageModifier` = 6.15218 WHERE `entry`=16854;

/*  Caretaker Dilandrus  */
UPDATE `creature_template` SET `DamageModifier` = 3.67271, `HealthModifier` = 0.4 WHERE `entry`=16856;

/*  Grelag  */
UPDATE `creature_template` SET `minlevel` = 54, `maxlevel` = 54, `DamageModifier` = 3.34194, `HealthModifier` = 0.4 WHERE `entry`=16858;

/*  Jilanne  */
UPDATE `creature_template` SET `HealthModifier` = 0.9 WHERE `entry`=16860;

/*  Silanna  */
UPDATE `creature_template` SET `DamageModifier` = 0.352171, `HealthModifier` = 0.6 WHERE `entry`=16862;

/*  Stormwind Infantry  */
UPDATE `creature_template` SET `DamageModifier` = 0.343988, `HealthModifier` = 1.3 WHERE `entry`=16864;

/*  Injured Stormwind Infantry  */
UPDATE `creature_template` SET `DamageModifier` = 0.323754, `HealthModifier` = 2.2 WHERE `entry`=16865;

/*  Injured Nethergarde Infantry  */
UPDATE `creature_template` SET `maxlevel` = 60, `DamageModifier` = 0.33804, `HealthModifier` = 2.2 WHERE `entry`=16866;

/*  Bleeding Hollow Grunt  */
UPDATE `creature_template` SET `maxgold` = 212 WHERE `entry`=16871;

/*  Bleeding Hollow Dark Shaman  */
UPDATE `creature_template` SET `maxgold` = 184 WHERE `entry`=16873;

/*  Bleeding Hollow Shadowcaster  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=16874;

/*  Bonechewer Mutant  */
UPDATE `creature_template` SET `maxgold` = 182 WHERE `entry`=16876;

/*  Shattered Hand Berserker  */
UPDATE `creature_template` SET `DamageModifier` = 1.2, `ArmorModifier` = 0.553744, `maxgold` = 224 WHERE `entry`=16878;

/*  War Horse  */
UPDATE `creature_template` SET `DamageModifier` = 0.31601 WHERE `entry`=16884;

/*  Amythiel Mistwalker  */
UPDATE `creature_template` SET `DamageModifier` = 0.346953 WHERE `entry`=16885;

/*  Arator the Redeemer  */
UPDATE `creature_template` SET `DamageModifier` = 3.13161, `HealthModifier` = 1.3 WHERE `entry`=16886;

/*  Eye of Honor Hold  */
UPDATE `creature_template` SET `HealthModifier` = 2.0 WHERE `entry`=16887;

/*  Mahuram Stouthoof  */
UPDATE `creature_template` SET `DamageModifier` = 0.374089, `HealthModifier` = 1.4 WHERE `entry`=16888;

/*  Honor Hold Archer  */
UPDATE `creature_template` SET `DamageModifier` = 0.353095, `HealthModifier` = 1.9 WHERE `entry`=16896;

/*  Honor Hold Target Dummy Middle  */
UPDATE `creature_template` SET `HealthModifier` = 2.1 WHERE `entry`=16897;

/*  Honor Hold Target Dummy Right  */
UPDATE `creature_template` SET `DamageModifier` = 0.326302, `HealthModifier` = 2.1 WHERE `entry`=16898;

/*  Honor Hold Target Dummy Left  */
UPDATE `creature_template` SET `DamageModifier` = 0.326302, `HealthModifier` = 2.1 WHERE `entry`=16899;

/*  Captive Ravager Hatchling  */
UPDATE `creature_template` SET `DamageModifier` = 2.76782 WHERE `entry`=16900;

/*  Blistering Rot  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=16901;

/*  Blistering Oozeling  */
UPDATE `creature_template` SET `HealthModifier` = 0.1 WHERE `entry`=16903;

/*  Unyielding Footman  */
UPDATE `creature_template` SET `DamageModifier` = 0.260134, `maxgold` = 205 WHERE `entry`=16904;

/*  Unyielding Sorcerer  */
UPDATE `creature_template` SET `DamageModifier` = 0.272366, `maxgold` = 175 WHERE `entry`=16905;

/*  Unyielding Knight  */
UPDATE `creature_template` SET `DamageModifier` = 0.272366, `maxgold` = 175 WHERE `entry`=16906;

/*  Bleeding Hollow Peon  */
UPDATE `creature_template` SET `maxgold` = 183 WHERE `entry`=16907;

/*  Foreman Razelcraz  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 1.3 WHERE `entry`=16915;

/*  Wretched Captive  */
UPDATE `creature_template` SET `maxlevel` = 4, `ArmorModifier` = 0.30303 WHERE `entry`=16916;

/*  Aurok  */
UPDATE `creature_template` SET `DamageModifier` = 5.71961, `HealthModifier` = 0.5, `ArmorModifier` = 0.18018 WHERE `entry`=16917;

/*  Jel  */
UPDATE `creature_template` SET `HealthModifier` = 0.6, `ArmorModifier` = 0.215054 WHERE `entry`=16918;

/*  Mura  */
UPDATE `creature_template` SET `DamageModifier` = 3.67689, `HealthModifier` = 0.5, `ArmorModifier` = 0.18018 WHERE `entry`=16919;

/*  Ryosh  */
UPDATE `creature_template` SET `DamageModifier` = 8.08121, `HealthModifier` = 0.6, `ArmorModifier` = 0.215054 WHERE `entry`=16920;

/*  Ammen Vale Guardian  */
UPDATE `creature_template` SET `DamageModifier` = 0.210878, `HealthModifier` = 0.2 WHERE `entry`=16921;

/*  Red Radiation Trigger  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=16922;

/*  Novice Ranger  */
UPDATE `creature_template` SET `DamageModifier` = 0.407672, `HealthModifier` = 0.6 WHERE `entry`=16923;

/*  Sergeant Kan'ren  */
UPDATE `creature_template` SET `DamageModifier` = 1.22302, `HealthModifier` = 2.3 WHERE `entry`=16924;

/*  Bonechewer Raider  */
UPDATE `creature_template` SET `maxgold` = 182 WHERE `entry`=16925;

/*  Dreghood Geomancer  */
UPDATE `creature_template` SET `DamageModifier` = 0.419325 WHERE `entry`=16937;

/*  Mo'arg Engineer  */
UPDATE `creature_template` SET `DamageModifier` = 3.22321 WHERE `entry`=16945;

/*  Mo'arg Forgefiend  */
UPDATE `creature_template` SET `maxgold` = 216 WHERE `entry`=16946;

/*  Gan'arg Servant  */
UPDATE `creature_template` SET `maxgold` = 212 WHERE `entry`=16947;

/*  Netherhound  */
UPDATE `creature_template` SET `DamageModifier` = 0.290239 WHERE `entry`=16950;

/*  Forge Camp Legionnaire  */
UPDATE `creature_template` SET `maxgold` = 212 WHERE `entry`=16954;

/*  Dread Tactician  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 2.3 WHERE `entry`=16959;

/*  Sister of Grief  */
UPDATE `creature_template` SET `HealthModifier` = 0.8, `maxgold` = 168 WHERE `entry`=16960;

/*  Infernal Destroyer  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=16963;

/*  Warlord Morkh  */
UPDATE `creature_template` SET `maxgold` = 213 WHERE `entry`=16964;

/*  Bone Magus Warlor  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=16969;

/*  Injured Draenei  */
UPDATE `creature_template` SET `minlevel` = 4, `DamageModifier` = 0.452984, `HealthModifier` = 0.8, `ArmorModifier` = 0.294118 WHERE `entry`=16971;

/*  Rogue Voidwalker  */
UPDATE `creature_template` SET `maxgold` = 184 WHERE `entry`=16974;

/*  Uncontrolled Voidwalker  */
UPDATE `creature_template` SET `maxgold` = 184 WHERE `entry`=16975;

/*  Ghostly Denizen  */
UPDATE `creature_template` SET `minlevel` = 41, `maxlevel` = 41 WHERE `entry`=16976;

/*  Arch Mage Xintor  */
UPDATE `creature_template` SET `DamageModifier` = 0.257552, `HealthModifier` = 1.3, `maxgold` = 213 WHERE `entry`=16977;

/*  Lieutenant Commander Thalvos  */
UPDATE `creature_template` SET `maxgold` = 213 WHERE `entry`=16978;

/*  Thiah Redmane  */
UPDATE `creature_template` SET `DamageModifier` = 0.367061, `HealthModifier` = 0.6 WHERE `entry`=16991;

/*  Wounded Blood Elf Pilgrim  */
UPDATE `creature_template` SET `maxlevel` = 63, `DamageModifier` = 3.14185, `HealthModifier` = 1.8 WHERE `entry`=16993;

/*  Draenei Anchorite  */
UPDATE `creature_template` SET `HealthModifier` = 0.6 WHERE `entry`=16994;

/*  Draenei Vindicator  */
UPDATE `creature_template` SET `maxlevel` = 59, `DamageModifier` = 1.44408 WHERE `entry`=16996;

/*  Aggonis  */
UPDATE `creature_template` SET `DamageModifier` = 1.47465 WHERE `entry`=17000;

/*  Angela "The Claw" Kestrel  */
UPDATE `creature_template` SET `DamageModifier` = 0.368143 WHERE `entry`=17002;

/*  Duelist Larenis  */
UPDATE `creature_template` SET `DamageModifier` = 6.55673, `HealthModifier` = 0.5 WHERE `entry`=17005;

/*  Elsaana  */
UPDATE `creature_template` SET `maxlevel` = 59, `DamageModifier` = 0.33804 WHERE `entry`=17006;

/*  Lady Keira Berrybuck  */
UPDATE `creature_template` SET `DamageModifier` = 8.90403, `HealthModifier` = 12.0 WHERE `entry`=17007;

/*  Gul'dan  */
UPDATE `creature_template` SET `DamageModifier` = 3.23023, `HealthModifier` = 1.5 WHERE `entry`=17008;

/*  Draka  */
UPDATE `creature_template` SET `DamageModifier` = 0.478206, `HealthModifier` = 0.6 WHERE `entry`=17010;

/*  Taleris Dawngazer  */
UPDATE `creature_template` SET `minlevel` = 59, `DamageModifier` = 3.24017, `HealthModifier` = 0.6 WHERE `entry`=17015;

/*  Pilgrim Gal'ressa  */
UPDATE `creature_template` SET `minlevel` = 59, `DamageModifier` = 0.330909 WHERE `entry`=17046;

/*  Wretched Crate Trigger  */
UPDATE `creature_template` SET `HealthModifier` = 2.3 WHERE `entry`=17047;

/*  Rumatu  */
UPDATE `creature_template` SET `DamageModifier` = 0.339129, `HealthModifier` = 0.6 WHERE `entry`=17052;

/*  Eversong Partygoer  */
UPDATE `creature_template` SET `DamageModifier` = 1.52015, `HealthModifier` = 0.6, `ArmorModifier` = 0.215054 WHERE `entry`=17056;

/*  Blacktalon the Savage  */
UPDATE `creature_template` SET `DamageModifier` = 2.95663 WHERE `entry`=17057;

/*  Hellfire Combat Dummy  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=17059;

/*  Fel Orc Corpse  */
UPDATE `creature_template` SET `DamageModifier` = 0.346669 WHERE `entry`=17062;

/*  Phantom Hound  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.0 WHERE `entry`=17067;

/*  Technician Zhanaa  */
UPDATE `creature_template` SET `DamageModifier` = 4.82247, `HealthModifier` = 0.5, `ArmorModifier` = 0.18018 WHERE `entry`=17071;

/*  Draenei Mourner  */
UPDATE `creature_template` SET `minlevel` = 5, `DamageModifier` = 0.344462, `HealthModifier` = 0.5, `ArmorModifier` = 0.18018 WHERE `entry`=17073;

/*  Lady Liadrin  */
UPDATE `creature_template` SET `DamageModifier` = 1.50203, `HealthModifier` = 184.0, `ManaModifier` = 9.3 WHERE `entry`=17076;

/*  Fel Orc Convert  */
UPDATE `creature_template` SET `DamageModifier` = 1.77729, `HealthModifier` = 1.4 WHERE `entry`=17083;

/*  Aeranas  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=17085;

/*  Enraged Wraith  */
UPDATE `creature_template` SET `DamageModifier` = 0.497012, `HealthModifier` = 0.3 WHERE `entry`=17086;

/*  Spirit of the Vale  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 0.2 WHERE `entry`=17087;

/*  Firmanvaar  */
UPDATE `creature_template` SET `HealthModifier` = 0.6, `ArmorModifier` = 0.122699 WHERE `entry`=17089;

/*  Advisor Duskingdawn  */
UPDATE `creature_template` SET `DamageModifier` = 6.38576, `HealthModifier` = 3.4 WHERE `entry`=17092;

/*  Magistrix Elosai  */
UPDATE `creature_template` SET `maxlevel` = 28, `DamageModifier` = 4.33364, `HealthModifier` = 1.3 WHERE `entry`=17093;

/*  Nemeth Hawkeye  */
UPDATE `creature_template` SET `DamageModifier` = 0.454042, `HealthModifier` = 2.6 WHERE `entry`=17094;

/*  Balandar Brightstar  */
UPDATE `creature_template` SET `minlevel` = 35, `DamageModifier` = 3.98457, `HealthModifier` = 1.7 WHERE `entry`=17095;

/*  Astral Flare  */
UPDATE `creature_template` SET `HealthModifier` = 1.7 WHERE `entry`=17096;

/*  Advisor Sarophas  */
UPDATE `creature_template` SET `minlevel` = 43, `DamageModifier` = 3.92092, `HealthModifier` = 2.2 WHERE `entry`=17097;

/*  Ambassador Dawnsinger  */
UPDATE `creature_template` SET `DamageModifier` = 5.23829, `HealthModifier` = 1.2 WHERE `entry`=17098;

/*  Mehlar Dawnblade  */
UPDATE `creature_template` SET `DamageModifier` = 3.61404, `HealthModifier` = 1.2 WHERE `entry`=17099;

/*  Advisor Sunsworn  */
UPDATE `creature_template` SET `DamageModifier` = 6.38576, `HealthModifier` = 1.4 WHERE `entry`=17100;

/*  Diktynna  */
UPDATE `creature_template` SET `HealthModifier` = 0.6 WHERE `entry`=17101;

/*  Angry Murloc  */
UPDATE `creature_template` SET `ArmorModifier` = 1.30631 WHERE `entry`=17102;

/*  Emissary Taluun  */
UPDATE `creature_template` SET `DamageModifier` = 3.58904, `HealthModifier` = 2.0 WHERE `entry`=17103;

/*  Anchorite Delan  */
UPDATE `creature_template` SET `DamageModifier` = 4.38175, `HealthModifier` = 3.0 WHERE `entry`=17104;

/*  Emissary Valustraa  */
UPDATE `creature_template` SET `DamageModifier` = 5.23829, `HealthModifier` = 3.2 WHERE `entry`=17105;

/*  Vindicator Palanaar  */
UPDATE `creature_template` SET `DamageModifier` = 4.38175, `HealthModifier` = 1.2 WHERE `entry`=17106;

/*  Forsaken Raider  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=17108;

/*  Cersei Dusksinger  */
UPDATE `creature_template` SET `DamageModifier` = 5.4019, `HealthModifier` = 1.7 WHERE `entry`=17109;

/*  Acteon  */
UPDATE `creature_template` SET `DamageModifier` = 0.2541 WHERE `entry`=17110;

/*  Captured Jaguar  */
UPDATE `creature_template` SET `maxlevel` = 36, `DamageModifier` = 1.29616, `HealthModifier` = 0.4 WHERE `entry`=17111;

/*  Captured Tarantula  */
UPDATE `creature_template` SET `HealthModifier` = 0.4 WHERE `entry`=17112;

/*  Captured Crocolisk  */
UPDATE `creature_template` SET `HealthModifier` = 0.4 WHERE `entry`=17113;

/*  Arugoo of the Stillpine  */
UPDATE `creature_template` SET `DamageModifier` = 1.35, `HealthModifier` = 0.6 WHERE `entry`=17114;

/*  Cursed Lost One  */
UPDATE `creature_template` SET `DamageModifier` = 1.36846, `HealthModifier` = 1.0 WHERE `entry`=17115;

/*  Injured Night Elf Priestess  */
UPDATE `creature_template` SET `HealthModifier` = 1.9, `ArmorModifier` = 0.18018 WHERE `entry`=17117;

/*  Behomat  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 0.3 WHERE `entry`=17120;

/*  Kavaan  */
UPDATE `creature_template` SET `DamageModifier` = 0.45435, `HealthModifier` = 0.6 WHERE `entry`=17121;

/*  Vord  */
UPDATE `creature_template` SET `DamageModifier` = 0.367061, `HealthModifier` = 2.8 WHERE `entry`=17122;

/*  Earthcaller Ryga  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.5 WHERE `entry`=17123;

/*  Captured Tarantula Trigger  */
UPDATE `creature_template` SET `HealthModifier` = 2.3 WHERE `entry`=17124;

/*  Captured Jaguar Trigger  */
UPDATE `creature_template` SET `HealthModifier` = 2.3 WHERE `entry`=17125;

/*  Captured Crocolisk Trigger  */
UPDATE `creature_template` SET `HealthModifier` = 2.3 WHERE `entry`=17126;

/*  Anchorite Avuun  */
UPDATE `creature_template` SET `DamageModifier` = 5.4019, `HealthModifier` = 2.6 WHERE `entry`=17127;

/*  Windyreed Scavenger  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=17139;

/*  Windyreed Wretch  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=17141;

/*  Wrekt Warrior  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=17142;

/*  Wrekt Seer  */
UPDATE `creature_template` SET `DamageModifier` = 2.2457 WHERE `entry`=17143;

/*  Goretooth  */
UPDATE `creature_template` SET `DamageModifier` = 1.49081 WHERE `entry`=17144;

/*  Kil'sorrow Spellbinder  */
UPDATE `creature_template` SET `HealthModifier` = 0.7 WHERE `entry`=17146;

/*  Vir'aani Raider  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=17149;

/*  Vir'aani Arcanist  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.7 WHERE `entry`=17150;

/*  Gan'arg Tinkerer  */
UPDATE `creature_template` SET `HealthModifier` = 0.7 WHERE `entry`=17151;

/*  Felguard Legionnaire  */
UPDATE `creature_template` SET `DamageModifier` = 3.79261, `HealthModifier` = 9.7 WHERE `entry`=17152;

/*  Storm Rager  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=17159;

/*  Living Cyclone  */
UPDATE `creature_template` SET `maxlevel` = 67, `HealthModifier` = 0.7 WHERE `entry`=17160;

/*  Conjured Elemental  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 2.0, `HealthModifier` = 1.5 WHERE `entry`=17167;

/*  Restless Spirit of Earth  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=17179;

/*  Spirit of Air  */
UPDATE `creature_template` SET `HealthModifier` = 0.6 WHERE `entry`=17180;

/*  Spirit of Water  */
UPDATE `creature_template` SET `HealthModifier` = 0.4 WHERE `entry`=17181;

/*  Spirit of Fire  */
UPDATE `creature_template` SET `HealthModifier` = 0.6 WHERE `entry`=17182;

/*  Bristlelimb Furbolg  */
UPDATE `creature_template` SET `ArmorModifier` = 1.37391 WHERE `entry`=17183;

/*  Bristlelimb Ursa  */
UPDATE `creature_template` SET `ArmorModifier` = 1.3268 WHERE `entry`=17185;

/*  Deranged Owlbeast  */
UPDATE `creature_template` SET `ArmorModifier` = 1.3268 WHERE `entry`=17186;

/*  Aberrant Owlbeast  */
UPDATE `creature_template` SET `ArmorModifier` = 1.40594 WHERE `entry`=17187;

/*  Raving Owlbeast  */
UPDATE `creature_template` SET `ArmorModifier` = 1.323 WHERE `entry`=17188;

/*  Crazed Wildkin  */
UPDATE `creature_template` SET `HealthModifier` = 1.2 WHERE `entry`=17189;

/*  Siltfin Murloc  */
UPDATE `creature_template` SET `ArmorModifier` = 1.35294 WHERE `entry`=17190;

/*  Wrathscale Myrmidon  */
UPDATE `creature_template` SET `ArmorModifier` = 1.2 WHERE `entry`=17194;

/*  Root Trapper  */
UPDATE `creature_template` SET `ArmorModifier` = 1.32432 WHERE `entry`=17196;

/*  Root Thresher  */
UPDATE `creature_template` SET `ArmorModifier` = 1.2087 WHERE `entry`=17197;

/*  Moongraze Stag  */
UPDATE `creature_template` SET `ArmorModifier` = 1.32432 WHERE `entry`=17200;

/*  Moongraze Buck  */
UPDATE `creature_template` SET `ArmorModifier` = 1.2087 WHERE `entry`=17201;

/*  Farseer Nobundo  */
UPDATE `creature_template` SET `DamageModifier` = 0.203498, `HealthModifier` = 0.2 WHERE `entry`=17204;

/*  Temper  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 0.2 WHERE `entry`=17205;

/*  Sentinel Leader  */
UPDATE `creature_template` SET `DamageModifier` = 0.400587 WHERE `entry`=17210;

/*  Human Footman  */
UPDATE `creature_template` SET `DamageModifier` = 4.01512, `HealthModifier` = 7.2 WHERE `entry`=17211;

/*  Tuluun  */
UPDATE `creature_template` SET `DamageModifier` = 3.99661, `HealthModifier` = 0.8 WHERE `entry`=17212;

/*  Anchorite Fateema  */
UPDATE `creature_template` SET `DamageModifier` = 0.305988, `HealthModifier` = 0.7 WHERE `entry`=17214;

/*  Daedal  */
UPDATE `creature_template` SET `DamageModifier` = 0.340044 WHERE `entry`=17215;

/*  Skittering Crawler  */
UPDATE `creature_template` SET `ArmorModifier` = 1.25455 WHERE `entry`=17216;

/*  Barbed Crawler  */
UPDATE `creature_template` SET `ArmorModifier` = 1.40435 WHERE `entry`=17217;

/*  Huraan  */
UPDATE `creature_template` SET `DamageModifier` = 4.43204, `HealthModifier` = 1.9 WHERE `entry`=17218;

/*  Sulaa  */
UPDATE `creature_template` SET `DamageModifier` = 0.350649, `HealthModifier` = 0.5 WHERE `entry`=17219;

/*  Artificer Daelo  */
UPDATE `creature_template` SET `DamageModifier` = 0.368223 WHERE `entry`=17222;

/*  Ambassador Rualeth  */
UPDATE `creature_template` SET `DamageModifier` = 3.92092, `HealthModifier` = 1.3 WHERE `entry`=17223;

/*  Keltus Darkleaf  */
UPDATE `creature_template` SET `DamageModifier` = 0.510066, `HealthModifier` = 0.7 WHERE `entry`=17224;

/*  Nightbane  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 29.0482, `HealthModifier` = 175.0 WHERE `entry`=17225;

/*  Viera Sunwhisper  */
UPDATE `creature_template` SET `DamageModifier` = 4.84887, `HealthModifier` = 1.3 WHERE `entry`=17226;

/*  Draenei Artificer  */
UPDATE `creature_template` SET `maxlevel` = 7, `HealthModifier` = 0.7, `ArmorModifier` = 0.183486 WHERE `entry`=17228;

/*  Kil'rek  */
UPDATE `creature_template` SET `DamageModifier` = 24.6776, `HealthModifier` = 12.0, `ArmorModifier` = 0.63416 WHERE `entry`=17229;

/*  Cryptographer Aurren  */
UPDATE `creature_template` SET `DamageModifier` = 3.94419, `HealthModifier` = 0.6 WHERE `entry`=17232;

/*  Ghost of Uther Lightbringer  */
UPDATE `creature_template` SET `DamageModifier` = 1.65831, `HealthModifier` = 41.2, `ManaModifier` = 14.0 WHERE `entry`=17233;

/*  Tcha'kaz  */
UPDATE `creature_template` SET `minlevel` = 44 WHERE `entry`=17236;

/*  Anchorite Truuen  */
UPDATE `creature_template` SET `DamageModifier` = 5.27341, `HealthModifier` = 1.0, `ArmorModifier` = 0.456204 WHERE `entry`=17238;

/*  Admiral Odesyus  */
UPDATE `creature_template` SET `DamageModifier` = 2.36418, `HealthModifier` = 0.2 WHERE `entry`=17240;

/*  Priestess Kyleen Il'dinare  */
UPDATE `creature_template` SET `DamageModifier` = 0.366094, `HealthModifier` = 0.6 WHERE `entry`=17241;

/*  Archaeologist Adamant Ironheart  */
UPDATE `creature_template` SET `DamageModifier` = 0.387795, `HealthModifier` = 0.5 WHERE `entry`=17242;

/*  Alliance Axeman  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=17244;

/*  Blacksmith Calypso  */
UPDATE `creature_template` SET `DamageModifier` = 0.385715 WHERE `entry`=17245;

/*  "Cookie" McWeaksauce  */
UPDATE `creature_template` SET `DamageModifier` = 0.385715, `HealthModifier` = 0.9 WHERE `entry`=17246;

/*  Alliance Logger  */
UPDATE `creature_template` SET `minlevel` = 10, `DamageModifier` = 0.510066, `HealthModifier` = 0.6 WHERE `entry`=17247;

/*  Demon Chains  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.9 WHERE `entry`=17248;

/*  Felguard  */
UPDATE `creature_template` SET `minlevel` = 68, `maxlevel` = 68, `HealthModifier` = 0.1, `ManaModifier` = 1.9 WHERE `entry`=17252;

/*  Hellfire Channeler  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 32.27, `HealthModifier` = 40.0 WHERE `entry`=17256;

/*  Magtheridon  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 46.9621, `HealthModifier` = 635.0 WHERE `entry`=17257;

/*  Bonechewer Hungerer  */
UPDATE `creature_template` SET `DamageModifier` = 5.3981, `ArmorModifier` = 1.012 WHERE `entry`=17259;

/*  Restless Skeleton  */
UPDATE `creature_template` SET `DamageModifier` = 5.73428, `HealthModifier` = 2.5 WHERE `entry`=17261;

/*  Recovering Pilgrim  */
UPDATE `creature_template` SET `minlevel` = 58, `DamageModifier` = 0.340145 WHERE `entry`=17263;

/*  Bonechewer Ravener  */
UPDATE `creature_template` SET `DamageModifier` = 5.5176, `HealthModifier` = 3.0, `ArmorModifier` = 1.012 WHERE `entry`=17264;

/*  Fiendish Imp  */
UPDATE `creature_template` SET `HealthModifier` = 1.0, `ArmorModifier` = 0.663248 WHERE `entry`=17267;

/*  Image of Technician Zhanaa  */
UPDATE `creature_template` SET `DamageModifier` = 0.344462, `HealthModifier` = 0.5, `ArmorModifier` = 0.18018 WHERE `entry`=17268;

/*  Bleeding Hollow Darkcaster  */
UPDATE `creature_template` SET `DamageModifier` = 10.7897, `ArmorModifier` = 0.6357 WHERE `entry`=17269;

/*  Bleeding Hollow Archer  */
UPDATE `creature_template` SET `DamageModifier` = 7.9051, `HealthModifier` = 2.8, `ArmorModifier` = 0.82 WHERE `entry`=17270;

/*  Bonechewer Destroyer  */
UPDATE `creature_template` SET `DamageModifier` = 19.1399, `HealthModifier` = 3.6, `ArmorModifier` = 1.01095 WHERE `entry`=17271;

/*  Flaming Aspect  */
UPDATE `creature_template` SET `DamageModifier` = 0.431345, `HealthModifier` = 0.5 WHERE `entry`=17272;

/*  Temper's Target  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=17274;

/*  Aqueous  */
UPDATE `creature_template` SET `HealthModifier` = 0.2 WHERE `entry`=17275;

/*  Provisioner Valine  */
UPDATE `creature_template` SET `DamageModifier` = 3.32742, `HealthModifier` = 1.5 WHERE `entry`=17277;

/*  Venture Co. Saboteur  */
UPDATE `creature_template` SET `ArmorModifier` = 1.25455 WHERE `entry`=17278;

/*  Venture Co. Gemologist  */
UPDATE `creature_template` SET `DamageModifier` = 0.442294 WHERE `entry`=17279;

/*  Shattered Hand Warhound  */
UPDATE `creature_template` SET `DamageModifier` = 3.16821, `HealthModifier` = 1.4 WHERE `entry`=17280;

/*  Bonechewer Ripper  */
UPDATE `creature_template` SET `maxlevel` = 62, `DamageModifier` = 10.0343, `HealthModifier` = 3.8, `ArmorModifier` = 1.011 WHERE `entry`=17281;

/*  Falcon Watch Ranger  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.0 WHERE `entry`=17282;

/*  Astral Spark  */
UPDATE `creature_template` SET `HealthModifier` = 0.6 WHERE `entry`=17283;

/*  Sentinel Luciel Starwhisper  */
UPDATE `creature_template` SET `minlevel` = 29, `DamageModifier` = 3.76904 WHERE `entry`=17287;

/*  Randy Whizzlesprocket  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 2.1 WHERE `entry`=17288;

/*  Rifleman Brownbeard  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 1.3 WHERE `entry`=17289;

/*  Captain Alina  */
UPDATE `creature_template` SET `DamageModifier` = 3.36885, `HealthModifier` = 1.0 WHERE `entry`=17290;

/*  Architect Nemos  */
UPDATE `creature_template` SET `DamageModifier` = 4.43952 WHERE `entry`=17291;

/*  Private Jacint  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 2.4 WHERE `entry`=17292;

/*  Drisella  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 8.8 WHERE `entry`=17294;

/*  Captain Boneshatter  */
UPDATE `creature_template` SET `DamageModifier` = 3.36885, `HealthModifier` = 1.0 WHERE `entry`=17296;

/*  Scout Orgarr  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 0.9 WHERE `entry`=17297;

/*  Shattered Hand Executioner  */
UPDATE `creature_template` SET `minlevel` = 69, `maxlevel` = 69, `DamageModifier` = 4.20268 WHERE `entry`=17301;

/*  Vindicator Vedaar  */
UPDATE `creature_template` SET `DamageModifier` = 4.43952, `HealthModifier` = 1.2 WHERE `entry`=17303;

/*  Overseer Gorthak  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=17304;

/*  Watchkeeper Gargolmar  */
UPDATE `creature_template` SET `DamageModifier` = 13.1948, `HealthModifier` = 11.2, `ArmorModifier` = 1.011 WHERE `entry`=17306;

/*  Vazruden the Herald  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 11.2 WHERE `entry`=17307;

/*  Omor the Unscarred  */
UPDATE `creature_template` SET `DamageModifier` = 23.645, `ArmorModifier` = 0.81925 WHERE `entry`=17308;

/*  Hellfire Watcher  */
UPDATE `creature_template` SET `DamageModifier` = 13.0346, `HealthModifier` = 5.7, `ArmorModifier` = 0.635776 WHERE `entry`=17309;

/*  Gnarl  */
UPDATE `creature_template` SET `DamageModifier` = 3.80707, `HealthModifier` = 3.2 WHERE `entry`=17310;

/*  Cowlen  */
UPDATE `creature_template` SET `DamageModifier` = 0.422312, `HealthModifier` = 0.5 WHERE `entry`=17311;

/*  Magwin  */
UPDATE `creature_template` SET `DamageModifier` = 0.2541, `HealthModifier` = 0.7 WHERE `entry`=17312;

/*  Geezle  */
UPDATE `creature_template` SET `DamageModifier` = 1.23634 WHERE `entry`=17318;

/*  Bristlelimb Pathfinder  */
UPDATE `creature_template` SET `HealthModifier` = 0.8, `ArmorModifier` = 1.37391 WHERE `entry`=17319;

/*  Infected Wildkin  */
UPDATE `creature_template` SET `DamageModifier` = 0.387795 WHERE `entry`=17322;

/*  Contaminated Wildkin  */
UPDATE `creature_template` SET `DamageModifier` = 0.357645 WHERE `entry`=17323;

/*  Irradiated Wildkin  */
UPDATE `creature_template` SET `DamageModifier` = 0.387795 WHERE `entry`=17324;

/*  Blacksilt Seer  */
UPDATE `creature_template` SET `minlevel` = 12, `maxlevel` = 13, `DamageModifier` = 1.22711, `HealthModifier` = 1.1, `ArmorModifier` = 1.28 WHERE `entry`=17330;

/*  Nazzivus Satyr  */
UPDATE `creature_template` SET `DamageModifier` = 0.471256 WHERE `entry`=17337;

/*  Nazzivus Rogue  */
UPDATE `creature_template` SET `DamageModifier` = 0.431345 WHERE `entry`=17338;

/*  Axxarien Trickster  */
UPDATE `creature_template` SET `maxlevel` = 17 WHERE `entry`=17341;

/*  Brown Bear  */
UPDATE `creature_template` SET `ArmorModifier` = 1.323 WHERE `entry`=17345;

/*  Blue Flutterer  */
UPDATE `creature_template` SET `ArmorModifier` = 1.23514 WHERE `entry`=17349;

/*  Royal Blue Flutterer  */
UPDATE `creature_template` SET `HealthModifier` = 1.1, `ArmorModifier` = 1.58571 WHERE `entry`=17350;

/*  Valusha  */
UPDATE `creature_template` SET `DamageModifier` = 3.45458, `HealthModifier` = 1.0 WHERE `entry`=17355;

/*  Creeping Ooze  */
UPDATE `creature_template` SET `DamageModifier` = 4.60245 WHERE `entry`=17356;

/*  Creeping Oozeling  */
UPDATE `creature_template` SET `DamageModifier` = 0.49312 WHERE `entry`=17357;

/*  Fouled Water Spirit  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=17358;

/*  Tel'athion the Impure  */
UPDATE `creature_template` SET `DamageModifier` = 1.25707, `ArmorModifier` = 1.0 WHERE `entry`=17359;

/*  Laughing Skull Enforcer  */
UPDATE `creature_template` SET `DamageModifier` = 14.076 WHERE `entry`=17370;

/*  Shadowmoon Warlock  */
UPDATE `creature_template` SET `maxlevel` = 62, `DamageModifier` = 12.0776 WHERE `entry`=17371;

/*  Timberstrider Fledgling  */
UPDATE `creature_template` SET `ArmorModifier` = 1.32432 WHERE `entry`=17372;

/*  Timberstrider  */
UPDATE `creature_template` SET `ArmorModifier` = 1.48485 WHERE `entry`=17373;

/*  Greater Timberstrider  */
UPDATE `creature_template` SET `DamageModifier` = 0.445849, `ArmorModifier` = 1.40435 WHERE `entry`=17374;

/*  Stillpine Captive  */
UPDATE `creature_template` SET `DamageModifier` = 0.274813, `ArmorModifier` = 2.07879 WHERE `entry`=17375;

/*  Keli'dan the Breaker  */
UPDATE `creature_template` SET `DamageModifier` = 14.4375 WHERE `entry`=17377;

/*  Swamp Gas  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=17378;

/*  Stillpine Ancestor Akida  */
UPDATE `creature_template` SET `minlevel` = 40, `maxlevel` = 50, `ArmorModifier` = 1.2807 WHERE `entry`=17379;

/*  Broggok  */
UPDATE `creature_template` SET `DamageModifier` = 11.5997 WHERE `entry`=17380;

/*  The Maker  */
UPDATE `creature_template` SET `DamageModifier` = 16.1288, `HealthModifier` = 7.2 WHERE `entry`=17381;

/*  Shattered Hand Elite  */
UPDATE `creature_template` SET `DamageModifier` = 2.27373 WHERE `entry`=17385;

/*  Shattered Hand Slayer  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=17387;

/*  Shadowmoon Voidcaller  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 1.2, `ArmorModifier` = 0.510198 WHERE `entry`=17389;

/*  Stillpine Ancestor Coo  */
UPDATE `creature_template` SET `minlevel` = 40, `maxlevel` = 50, `DamageModifier` = 0.488289, `HealthModifier` = 0.4 WHERE `entry`=17391;

/*  Stillpine Ancestor Tikti  */
UPDATE `creature_template` SET `ArmorModifier` = 1.2807 WHERE `entry`=17392;

/*  Stillpine Ancestor Yor  */
UPDATE `creature_template` SET `ArmorModifier` = 1.2807 WHERE `entry`=17393;

/*  Shadowmoon Summoner  */
UPDATE `creature_template` SET `DamageModifier` = 9.9401 WHERE `entry`=17395;

/*  Shadowmoon Sorcerer  */
UPDATE `creature_template` SET `DamageModifier` = 2.62226, `HealthModifier` = 2.0, `ArmorModifier` = 0.512231 WHERE `entry`=17396;

/*  Shadowmoon Adept  */
UPDATE `creature_template` SET `DamageModifier` = 6.6232 WHERE `entry`=17397;

/*  Nascent Fel Orc  */
UPDATE `creature_template` SET `DamageModifier` = 2.69636, `HealthModifier` = 1.3 WHERE `entry`=17398;

/*  Seductress  */
UPDATE `creature_template` SET `maxlevel` = 62, `DamageModifier` = 11.4984 WHERE `entry`=17399;

/*  Felguard Annihilator  */
UPDATE `creature_template` SET `DamageModifier` = 11.6646 WHERE `entry`=17400;

/*  Felhound Manastalker  */
UPDATE `creature_template` SET `DamageModifier` = 15.8821 WHERE `entry`=17401;

/*  Yaluu  */
UPDATE `creature_template` SET `DamageModifier` = 0.505972, `HealthModifier` = 2.4 WHERE `entry`=17402;

/*  Anchorite Alendar  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.5 WHERE `entry`=17403;

/*  Vindicator Sedai  */
UPDATE `creature_template` SET `DamageModifier` = 2.53336, `HealthModifier` = 0.8 WHERE `entry`=17404;

/*  Krun Spinebreaker  */
UPDATE `creature_template` SET `DamageModifier` = 3.98702 WHERE `entry`=17405;

/*  Artificer  */
UPDATE `creature_template` SET `DamageModifier` = 4.2543, `HealthModifier` = 1.1 WHERE `entry`=17406;

/*  Felmist  */
UPDATE `creature_template` SET `DamageModifier` = 0.187405, `HealthModifier` = 1.4 WHERE `entry`=17407;

/*  Apprentice Boulian  */
UPDATE `creature_template` SET `DamageModifier` = 4.33364 WHERE `entry`=17409;

/*  Phaedra  */
UPDATE `creature_template` SET `DamageModifier` = 4.31313 WHERE `entry`=17412;

/*  Shadowmoon Technician  */
UPDATE `creature_template` SET `DamageModifier` = 10.0204 WHERE `entry`=17414;

/*  Orc Captive  */
UPDATE `creature_template` SET `maxlevel` = 69, `DamageModifier` = 3.62289 WHERE `entry`=17416;

/*  Mag'har Escort  */
UPDATE `creature_template` SET `DamageModifier` = 0.473325 WHERE `entry`=17417;

/*  Shattered Hand Heathen  */
UPDATE `creature_template` SET `DamageModifier` = 4.14015 WHERE `entry`=17420;

/*  Clopper Wizbang  */
UPDATE `creature_template` SET `minlevel` = 16, `DamageModifier` = 0.33785, `HealthModifier` = 0.5 WHERE `entry`=17421;

/*  Harbinger Mikolaas  */
UPDATE `creature_template` SET `DamageModifier` = 0.439313, `HealthModifier` = 9.0 WHERE `entry`=17423;

/*  Anchorite Paetheus  */
UPDATE `creature_template` SET `DamageModifier` = 0.42638, `HealthModifier` = 0.6 WHERE `entry`=17424;

/*  Vale Hunter  */
UPDATE `creature_template` SET `maxlevel` = 4, `HealthModifier` = 1.0, `ArmorModifier` = 0.30303 WHERE `entry`=17425;

/*  Galaen  */
UPDATE `creature_template` SET `DamageModifier` = 0.423344, `HealthModifier` = 0.5 WHERE `entry`=17426;

/*  Shattered Hand Archer  */
UPDATE `creature_template` SET `DamageModifier` = 3.94496 WHERE `entry`=17427;

/*  Fel Orc Neophyte  */
UPDATE `creature_template` SET `DamageModifier` = 5.46556 WHERE `entry`=17429;

/*  Velaada  */
UPDATE `creature_template` SET `DamageModifier` = 0.488522, `HealthModifier` = 2.7 WHERE `entry`=17431;

/*  Vindicator Aalesia  */
UPDATE `creature_template` SET `DamageModifier` = 3.9227 WHERE `entry`=17433;

/*  Morae  */
UPDATE `creature_template` SET `DamageModifier` = 0.389914, `HealthModifier` = 0.6 WHERE `entry`=17434;

/*  Susurrus  */
UPDATE `creature_template` SET `DamageModifier` = 3.29779 WHERE `entry`=17435;

/*  Stillpine Defender Corpse  */
UPDATE `creature_template` SET `DamageModifier` = 0.189653, `HealthModifier` = 0.6 WHERE `entry`=17437;

/*  Crazed Wildkin Corpse  */
UPDATE `creature_template` SET `DamageModifier` = 0.189653, `HealthModifier` = 0.6 WHERE `entry`=17438;

/*  High Chief Stillpine  */
UPDATE `creature_template` SET `DamageModifier` = 0.219121, `HealthModifier` = 0.6 WHERE `entry`=17440;

/*  Moordo  */
UPDATE `creature_template` SET `DamageModifier` = 0.215673 WHERE `entry`=17442;

/*  Kurz the Revelator  */
UPDATE `creature_template` SET `DamageModifier` = 0.241262 WHERE `entry`=17443;

/*  Parkat Steelfur  */
UPDATE `creature_template` SET `DamageModifier` = 0.241262, `HealthModifier` = 0.6 WHERE `entry`=17446;

/*  Chieftain Oomooroo  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=17448;

/*  Vision of the Prophesied Hero  */
UPDATE `creature_template` SET `DamageModifier` = 4.59016, `HealthModifier` = 0.6 WHERE `entry`=17452;

/*  Vision of the Kurken  */
UPDATE `creature_template` SET `DamageModifier` = 4.85959 WHERE `entry`=17453;

/*  Burning Abyssal  */
UPDATE `creature_template` SET `DamageModifier` = 3.6091, `HealthModifier` = 152.7 WHERE `entry`=17454;

/*  Bonechewer Beastmaster  */
UPDATE `creature_template` SET `DamageModifier` = 10.3229, `HealthModifier` = 3.6, `ArmorModifier` = 1.011 WHERE `entry`=17455;

/*  Shattered Hand Blood Guard  */
UPDATE `creature_template` SET `DamageModifier` = 4.83481 WHERE `entry`=17461;

/*  Shattered Hand Zealot  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=17462;

/*  Shattered Hand Gladiator  */
UPDATE `creature_template` SET `DamageModifier` = 4.60619 WHERE `entry`=17464;

/*  Shattered Hand Centurion  */
UPDATE `creature_template` SET `DamageModifier` = 4.83481 WHERE `entry`=17465;

/*  Prophet Velen  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 140.8 WHERE `entry`=17468;

/*  Orc Grunt  */
UPDATE `creature_template` SET `DamageModifier` = 4.01512, `HealthModifier` = 7.2 WHERE `entry`=17469;

/*  Hellfire Imp  */
UPDATE `creature_template` SET `DamageModifier` = 14.0064 WHERE `entry`=17477;

/*  Bleeding Hollow Scryer  */
UPDATE `creature_template` SET `DamageModifier` = 12.3479, `HealthModifier` = 4.1, `ArmorModifier` = 0.63575 WHERE `entry`=17478;

/*  Gunny  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.7 WHERE `entry`=17479;

/*  Ruada  */
UPDATE `creature_template` SET `DamageModifier` = 0.235628, `HealthModifier` = 0.7 WHERE `entry`=17480;

/*  Semid  */
UPDATE `creature_template` SET `DamageModifier` = 0.39955, `HealthModifier` = 0.7 WHERE `entry`=17481;

/*  Guvan  */
UPDATE `creature_template` SET `ArmorModifier` = 0.143885 WHERE `entry`=17482;

/*  Tullas  */
UPDATE `creature_template` SET `DamageModifier` = 0.2541, `HealthModifier` = 0.6 WHERE `entry`=17483;

/*  Buruk  */
UPDATE `creature_template` SET `DamageModifier` = 0.306526, `HealthModifier` = 0.6 WHERE `entry`=17484;

/*  Ziz  */
UPDATE `creature_template` SET `DamageModifier` = 0.247074, `HealthModifier` = 0.5 WHERE `entry`=17486;

/*  Erin Kelly  */
UPDATE `creature_template` SET `HealthModifier` = 1.1 WHERE `entry`=17487;

/*  Dulvi  */
UPDATE `creature_template` SET `DamageModifier` = 4.44733, `HealthModifier` = 0.5 WHERE `entry`=17488;

/*  Logan Daniel  */
UPDATE `creature_template` SET `DamageModifier` = 0.440304, `HealthModifier` = 0.6 WHERE `entry`=17489;

/*  Ergh of the Stillpine  */
UPDATE `creature_template` SET `DamageModifier` = 0.398053 WHERE `entry`=17490;

/*  Laughing Skull Rogue  */
UPDATE `creature_template` SET `DamageModifier` = 5.95, `HealthModifier` = 1.4 WHERE `entry`=17491;

/*  Stone Guard Stok'ton  */
UPDATE `creature_template` SET `DamageModifier` = 1.72335, `HealthModifier` = 0.6 WHERE `entry`=17493;

/*  Zevrax  */
UPDATE `creature_template` SET `DamageModifier` = 1.30192 WHERE `entry`=17494;

/*  Stillpine Raider  */
UPDATE `creature_template` SET `DamageModifier` = 0.228686, `HealthModifier` = 0.2 WHERE `entry`=17495;

/*  Vision of the Remembered  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 4.28813, `HealthModifier` = 3.0, `ManaModifier` = 15.5 WHERE `entry`=17500;

/*  Kazi  */
UPDATE `creature_template` SET `DamageModifier` = 0.326302, `HealthModifier` = 0.3 WHERE `entry`=17504;

/*  Killac  */
UPDATE `creature_template` SET `DamageModifier` = 0.45435, `HealthModifier` = 3.8 WHERE `entry`=17505;

/*  Galaen's Corpse  */
UPDATE `creature_template` SET `DamageModifier` = 0.357645, `HealthModifier` = 0.5 WHERE `entry`=17508;

/*  Jol  */
UPDATE `creature_template` SET `DamageModifier` = 0.350649 WHERE `entry`=17509;

/*  Izmir  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=17510;

/*  Fallat  */
UPDATE `creature_template` SET `DamageModifier` = 0.512106, `HealthModifier` = 1.2 WHERE `entry`=17511;

/*  Arred  */
UPDATE `creature_template` SET `DamageModifier` = 3.94476, `HealthModifier` = 0.4 WHERE `entry`=17512;

/*  Harnan  */
UPDATE `creature_template` SET `DamageModifier` = 0.512106 WHERE `entry`=17513;

/*  Bati  */
UPDATE `creature_template` SET `HealthModifier` = 4.8 WHERE `entry`=17514;

/*  Hellfire Sentry  */
UPDATE `creature_template` SET `DamageModifier` = 15.9438, `HealthModifier` = 7.0, `ArmorModifier` = 1.0115 WHERE `entry`=17517;

/*  Ythyar  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 2.3 WHERE `entry`=17518;

/*  Hobahken  */
UPDATE `creature_template` SET `DamageModifier` = 0.367061, `HealthModifier` = 1.2 WHERE `entry`=17519;

/*  Gurrag  */
UPDATE `creature_template` SET `DamageModifier` = 0.45435, `HealthModifier` = 0.6 WHERE `entry`=17520;

/*  The Big Bad Wolf  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 14.4204, `HealthModifier` = 50.0 WHERE `entry`=17521;

/*  Bloodmyst Hatchling  */
UPDATE `creature_template` SET `ArmorModifier` = 1.68683 WHERE `entry`=17525;

/*  Elekk  */
UPDATE `creature_template` SET `ArmorModifier` = 1.65875 WHERE `entry`=17530;

/*  Draenei Protector  */
UPDATE `creature_template` SET `DamageModifier` = 1.22578, `HealthModifier` = 1.2 WHERE `entry`=17531;

/*  Vision of Purity  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 3.91078, `HealthModifier` = 2.3 WHERE `entry`=17532;

/*  Romulo  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 12.8049, `HealthModifier` = 25.0 WHERE `entry`=17533;

/*  Julianne  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 10.0, `HealthModifier` = 25.0 WHERE `entry`=17534;

/*  Dorothee  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 10.0, `HealthModifier` = 25.0 WHERE `entry`=17535;

/*  Nazan  */
UPDATE `creature_template` SET `DamageModifier` = 19.531, `HealthModifier` = 10.6 WHERE `entry`=17536;

/*  Vazruden  */
UPDATE `creature_template` SET `DamageModifier` = 23.396, `HealthModifier` = 6.3, `ArmorModifier` = 1.011 WHERE `entry`=17537;

/*  O'ros  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 3.2247, `HealthModifier` = 0.3 WHERE `entry`=17538;

/*  Fiendish Hound  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=17540;

/*  Draenei Quartermaster  */
UPDATE `creature_template` SET `DamageModifier` = 3.84471 WHERE `entry`=17541;

/*  Young Furbolg Shaman  */
UPDATE `creature_template` SET `DamageModifier` = 0.381149 WHERE `entry`=17542;

/*  Strawman  */
UPDATE `creature_template` SET `DamageModifier` = 13.9234, `HealthModifier` = 15.0 WHERE `entry`=17543;

/*  M'uru  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 0.337103, `HealthModifier` = 1.5 WHERE `entry`=17544;

/*  K'ure  */
UPDATE `creature_template` SET `HealthModifier` = 1.2 WHERE `entry`=17545;

/*  Roar  */
UPDATE `creature_template` SET `rank` = 1, `DamageModifier` = 9.42032, `HealthModifier` = 15.0 WHERE `entry`=17546;

/*  Tinhead  */
UPDATE `creature_template` SET `DamageModifier` = 13.9234, `HealthModifier` = 15.0, `ArmorModifier` = 1.41938 WHERE `entry`=17547;

/*  Tito  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 3.25257, `HealthModifier` = 5.0 WHERE `entry`=17548;

/*  Blood Watch Peacekeeper  */
UPDATE `creature_template` SET `DamageModifier` = 0.392291, `HealthModifier` = 2.2 WHERE `entry`=17549;

/*  Void Anomaly  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=17550;

/*  Tavara  */
UPDATE `creature_template` SET `HealthModifier` = 2.2, `ArmorModifier` = 0.18018 WHERE `entry`=17551;

/*  Caregiver Topher Loaal  */
UPDATE `creature_template` SET `maxlevel` = 17, `DamageModifier` = 0.42638, `HealthModifier` = 0.6 WHERE `entry`=17553;

/*  Laando  */
UPDATE `creature_template` SET `DamageModifier` = 2.7857, `HealthModifier` = 0.3, `ManaModifier` = 0.8 WHERE `entry`=17554;

/*  Stephanos  */
UPDATE `creature_template` SET `DamageModifier` = 2.7857, `HealthModifier` = 0.3, `ManaModifier` = 0.8 WHERE `entry`=17555;

/*  Lieutenant Chadwick  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=17557;

/*  Caza'rez  */
UPDATE `creature_template` SET `DamageModifier` = 1.72335, `HealthModifier` = 0.8 WHERE `entry`=17558;

/*  Torallius the Pack Handler  */
UPDATE `creature_template` SET `DamageModifier` = 0.290847, `HealthModifier` = 5.7 WHERE `entry`=17584;

/*  Quartermaster Urgronn  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 1.1, `ArmorModifier` = 0.506446 WHERE `entry`=17585;

/*  Vorkhan the Elekk Herder  */
UPDATE `creature_template` SET `DamageModifier` = 0.387795, `HealthModifier` = 0.5 WHERE `entry`=17586;

/*  Draenei Youngling  */
UPDATE `creature_template` SET `DamageModifier` = 0.385715, `HealthModifier` = 4.4 WHERE `entry`=17587;

/*  Veridian Broodling  */
UPDATE `creature_template` SET `ArmorModifier` = 1.73978 WHERE `entry`=17589;

/*  Blood Elf Bandit  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=17591;

/*  Razormaw  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=17592;

/*  Hellfire Wolf Rider  */
UPDATE `creature_template` SET `DamageModifier` = 1.66529 WHERE `entry`=17593;

/*  Aonar  */
UPDATE `creature_template` SET `DamageModifier` = 0.438243 WHERE `entry`=17599;

/*  Draenei Cartographer  */
UPDATE `creature_template` SET `DamageModifier` = 0.419016, `HealthModifier` = 0.6 WHERE `entry`=17600;

/*  Pack Elekk  */
UPDATE `creature_template` SET `HealthModifier` = 0.9 WHERE `entry`=17601;

/*  Grandmother  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 7.3 WHERE `entry`=17603;

/*  Sunhawk Pyromancer  */
UPDATE `creature_template` SET `DamageModifier` = 0.42638 WHERE `entry`=17608;

/*  Sunhawk Saboteur  */
UPDATE `creature_template` SET `DamageModifier` = 1.62024 WHERE `entry`=17609;

/*  Sunhawk Agent  */
UPDATE `creature_template` SET `DamageModifier` = 1.77534 WHERE `entry`=17610;

/*  Quel'dorei Magewraith  */
UPDATE `creature_template` SET `DamageModifier` = 0.448511 WHERE `entry`=17612;

/*  Huntress Kella Nightbow  */
UPDATE `creature_template` SET `DamageModifier` = 0.366094, `HealthModifier` = 0.6 WHERE `entry`=17614;

/*  Ravager Ambusher  */
UPDATE `creature_template` SET `DamageModifier` = 0.35091 WHERE `entry`=17620;

/*  Heathen Guard  */
UPDATE `creature_template` SET `DamageModifier` = 2.22634, `HealthModifier` = 1.2 WHERE `entry`=17621;

/*  Sharpshooter Guard  */
UPDATE `creature_template` SET `DamageModifier` = 2.22634, `HealthModifier` = 1.2 WHERE `entry`=17622;

/*  Reaver Guard  */
UPDATE `creature_template` SET `DamageModifier` = 2.22634, `HealthModifier` = 1.2 WHERE `entry`=17623;

/*  Laughing Skull Warden  */
UPDATE `creature_template` SET `DamageModifier` = 15.9598 WHERE `entry`=17624;

/*  Fel Orc Grunt  */
UPDATE `creature_template` SET `DamageModifier` = 0.504551 WHERE `entry`=17625;

/*  Laughing Skull Legionnaire  */
UPDATE `creature_template` SET `DamageModifier` = 16.3174 WHERE `entry`=17626;

/*  Vynna  */
UPDATE `creature_template` SET `DamageModifier` = 0.462318 WHERE `entry`=17628;

/*  Feynna  */
UPDATE `creature_template` SET `HealthModifier` = 1.9 WHERE `entry`=17629;

/*  Ceera  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=17631;

/*  Elana  */
UPDATE `creature_template` SET `HealthModifier` = 1.6 WHERE `entry`=17632;

/*  Hatheon  */
UPDATE `creature_template` SET `HealthModifier` = 2.4 WHERE `entry`=17633;

/*  Kalynna Lathred  */
UPDATE `creature_template` SET `DamageModifier` = 0.473826, `HealthModifier` = 0.4, `ManaModifier` = 0.9 WHERE `entry`=17636;

/*  Mack Diver  */
UPDATE `creature_template` SET `DamageModifier` = 0.210878, `HealthModifier` = 0.2 WHERE `entry`=17637;

/*  Siltfin Ambusher  */
UPDATE `creature_template` SET `DamageModifier` = 0.494318 WHERE `entry`=17638;

/*  Bristlelimb Ambusher  */
UPDATE `creature_template` SET `DamageModifier` = 0.494318 WHERE `entry`=17640;

/*  Sunhawk Ambusher  */
UPDATE `creature_template` SET `DamageModifier` = 0.402228, `HealthModifier` = 0.7, `ArmorModifier` = 1.44118 WHERE `entry`=17641;

/*  Tracker Lyceon  */
UPDATE `creature_template` SET `DamageModifier` = 0.389914 WHERE `entry`=17642;

/*  Netherspite Infernal  */
UPDATE `creature_template` SET `DamageModifier` = 3.8452, `HealthModifier` = 2.8, `ArmorModifier` = 1.42852 WHERE `entry`=17646;

/*  Kessel  */
UPDATE `creature_template` SET `DamageModifier` = 0.397257, `HealthModifier` = 0.5 WHERE `entry`=17649;

/*  Prince Malchezaar's Axes  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70 WHERE `entry`=17650;

/*  Image of Medivh  */
UPDATE `creature_template` SET `DamageModifier` = 13.5665, `HealthModifier` = 1.1 WHERE `entry`=17651;

/*  Image of Arcanagos  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 98.4 WHERE `entry`=17652;

/*  Shadowmoon Channeler  */
UPDATE `creature_template` SET `DamageModifier` = 24.8733 WHERE `entry`=17653;

/*  Tagged Blacksilt Scout  */
UPDATE `creature_template` SET `HealthModifier` = 0.6 WHERE `entry`=17654;

/*  Blacksmith Frances  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=17655;

/*  Heron Skygaze  */
UPDATE `creature_template` SET `DamageModifier` = 0.387795, `HealthModifier` = 1.1 WHERE `entry`=17656;

/*  Logistics Officer Ulrike  */
UPDATE `creature_template` SET `DamageModifier` = 3.11827, `HealthModifier` = 1.8 WHERE `entry`=17657;

/*  Blade of Argus  */
UPDATE `creature_template` SET `DamageModifier` = 0.387795 WHERE `entry`=17659;

/*  Deathclaw  */
UPDATE `creature_template` SET `HealthModifier` = 1.2 WHERE `entry`=17661;

/*  Broggok Poison Cloud  */
UPDATE `creature_template` SET `minlevel` = 63, `maxlevel` = 63 WHERE `entry`=17662;

/*  Jessera of Mac'Aree  */
UPDATE `creature_template` SET `DamageModifier` = 0.357645, `HealthModifier` = 0.6 WHERE `entry`=17663;

/*  Matis the Cruel  */
UPDATE `creature_template` SET `DamageModifier` = 1.54274, `HealthModifier` = 3.0, `ArmorModifier` = 1.0 WHERE `entry`=17664;

/*  Astur  */
UPDATE `creature_template` SET `DamageModifier` = 0.494148 WHERE `entry`=17666;

/*  Beega  */
UPDATE `creature_template` SET `DamageModifier` = 4.23378 WHERE `entry`=17667;

/*  Rabid Warhound  */
UPDATE `creature_template` SET `DamageModifier` = 1.33778, `HealthModifier` = 1.5 WHERE `entry`=17669;

/*  Shattered Hand Houndmaster  */
UPDATE `creature_template` SET `DamageModifier` = 4.60619 WHERE `entry`=17670;

/*  Shattered Hand Champion  */
UPDATE `creature_template` SET `DamageModifier` = 4.83481 WHERE `entry`=17671;

/*  Deadwind Villager  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 1.50472, `HealthModifier` = 1.7 WHERE `entry`=17672;

/*  Prince Toreth  */
UPDATE `creature_template` SET `DamageModifier` = 0.400046, `HealthModifier` = 0.5 WHERE `entry`=17674;

/*  Achelus  */
UPDATE `creature_template` SET `DamageModifier` = 0.421428, `HealthModifier` = 0.5 WHERE `entry`=17676;

/*  Sironas  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=17678;

/*  Man'ari Abomination  */
UPDATE `creature_template` SET `DamageModifier` = 2.44975 WHERE `entry`=17679;

/*  Webbed Creature  */
UPDATE `creature_template` SET `DamageModifier` = 0.17578, `HealthModifier` = 0.5 WHERE `entry`=17680;

/*  Expedition Researcher  */
UPDATE `creature_template` SET `DamageModifier` = 4.58187 WHERE `entry`=17681;

/*  Princess Stillpine  */
UPDATE `creature_template` SET `DamageModifier` = 0.457688, `HealthModifier` = 0.6 WHERE `entry`=17682;

/*  Zarakh  */
UPDATE `creature_template` SET `ArmorModifier` = 1.52868 WHERE `entry`=17683;

/*  Vindicator Boros  */
UPDATE `creature_template` SET `DamageModifier` = 5.8447, `HealthModifier` = 1.2 WHERE `entry`=17684;

/*  Researcher Cornelius  */
UPDATE `creature_template` SET `DamageModifier` = 0.450369 WHERE `entry`=17686;

/*  Shattered Hand Scout  */
UPDATE `creature_template` SET `DamageModifier` = 1.23686 WHERE `entry`=17693;

/*  Shadowmoon Darkcaster  */
UPDATE `creature_template` SET `DamageModifier` = 4.66589, `ArmorModifier` = 0.63416, `ManaModifier` = 2.2 WHERE `entry`=17694;

/*  Shattered Hand Assassin  */
UPDATE `creature_template` SET `maxlevel` = 71, `DamageModifier` = 3.89603 WHERE `entry`=17695;

/*  Lord Xiz  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=17701;

/*  Messenger Hermesius  */
UPDATE `creature_template` SET `DamageModifier` = 0.483579, `HealthModifier` = 0.8 WHERE `entry`=17703;

/*  Hand of Argus Swordsman  */
UPDATE `creature_template` SET `DamageModifier` = 0.387795, `HealthModifier` = 0.5 WHERE `entry`=17704;

/*  Felsteel Boar  */
UPDATE `creature_template` SET `DamageModifier` = 0.478206, `ArmorModifier` = 0.446495 WHERE `entry`=17706;

/*  Doomwalker  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 39.3507, `HealthModifier` = 300.0, `mingold` = 195755, `maxgold` = 255638 WHERE `entry`=17711;

/*  Captain Edward Hanes  */
UPDATE `creature_template` SET `DamageModifier` = 0.37563, `HealthModifier` = 0.8 WHERE `entry`=17712;

/*  Bloodcursed Voyager  */
UPDATE `creature_template` SET `DamageModifier` = 0.422312 WHERE `entry`=17714;

/*  Sangrias Stillblade  */
UPDATE `creature_template` SET `DamageModifier` = 1.76665 WHERE `entry`=17716;

/*  Knight-Lord Bloodvalor  */
UPDATE `creature_template` SET `DamageModifier` = 0.272541, `HealthModifier` = 0.2 WHERE `entry`=17717;

/*  Magister Astalor Bloodsworn  */
UPDATE `creature_template` SET `DamageModifier` = 0.363389 WHERE `entry`=17718;

/*  Coilfang Engineer  */
UPDATE `creature_template` SET `DamageModifier` = 4.62104 WHERE `entry`=17721;

/*  Coilfang Sorceress  */
UPDATE `creature_template` SET `DamageModifier` = 4.60627 WHERE `entry`=17722;

/*  Bog Giant  */
UPDATE `creature_template` SET `DamageModifier` = 7.26404 WHERE `entry`=17723;

/*  Underbat  */
UPDATE `creature_template` SET `maxlevel` = 63, `DamageModifier` = 3.41415 WHERE `entry`=17724;

/*  Underbog Lurker  */
UPDATE `creature_template` SET `DamageModifier` = 4.83571 WHERE `entry`=17725;

/*  Wrathfin Myrmidon  */
UPDATE `creature_template` SET `DamageModifier` = 3.99463 WHERE `entry`=17726;

/*  Wrathfin Sentry  */
UPDATE `creature_template` SET `DamageModifier` = 3.99463 WHERE `entry`=17727;

/*  Murkblood Tribesman  */
UPDATE `creature_template` SET `DamageModifier` = 3.82277 WHERE `entry`=17728;

/*  Murkblood Spearman  */
UPDATE `creature_template` SET `DamageModifier` = 3.7927 WHERE `entry`=17729;

/*  Murkblood Healer  */
UPDATE `creature_template` SET `DamageModifier` = 3.7927, `ArmorModifier` = 0.654734 WHERE `entry`=17730;

/*  Fen Ray  */
UPDATE `creature_template` SET `DamageModifier` = 3.60171 WHERE `entry`=17731;

/*  Lykul Wasp  */
UPDATE `creature_template` SET `DamageModifier` = 3.6251 WHERE `entry`=17732;

/*  Underbog Lord  */
UPDATE `creature_template` SET `DamageModifier` = 9.99312 WHERE `entry`=17734;

/*  Wrathfin Warrior  */
UPDATE `creature_template` SET `DamageModifier` = 3.99463 WHERE `entry`=17735;

/*  Underbat Swarmer  */
UPDATE `creature_template` SET `DamageModifier` = 0.50246 WHERE `entry`=17736;

/*  Outland Chimera, White  */
UPDATE `creature_template` SET `HealthModifier` = 0.9 WHERE `entry`=17739;

/*  Rage Winterchill  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 43.3008, `HealthModifier` = 700.2 WHERE `entry`=17767;

/*  Blood Knight Stillblade  */
UPDATE `creature_template` SET `DamageModifier` = 0.229659 WHERE `entry`=17768;

/*  Blood Knight Adept  */
UPDATE `creature_template` SET `DamageModifier` = 0.366094, `HealthModifier` = 2.0 WHERE `entry`=17769;

/*  Hungarfen  */
UPDATE `creature_template` SET `DamageModifier` = 9.95063 WHERE `entry`=17770;

/*  Murkblood Oracle  */
UPDATE `creature_template` SET `DamageModifier` = 3.7927 WHERE `entry`=17771;

/*  Lady Jaina Proudmoore  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 50.8524, `HealthModifier` = 29.7, `ManaModifier` = 18.0 WHERE `entry`=17772;

/*  Mekgineer Steamrigger  */
UPDATE `creature_template` SET `DamageModifier` = 7.60641 WHERE `entry`=17796;

/*  Hydromancer Thespia  */
UPDATE `creature_template` SET `DamageModifier` = 6.1787 WHERE `entry`=17797;

/*  Warlord Kalithresh  */
UPDATE `creature_template` SET `DamageModifier` = 6.18422 WHERE `entry`=17798;

/*  Dreghood Slave  */
UPDATE `creature_template` SET `DamageModifier` = 2.77064 WHERE `entry`=17799;

/*  Coilfang Myrmidon  */
UPDATE `creature_template` SET `DamageModifier` = 4.62104 WHERE `entry`=17800;

/*  Coilfang Siren  */
UPDATE `creature_template` SET `DamageModifier` = 4.58014 WHERE `entry`=17801;

/*  Coilfang Warrior  */
UPDATE `creature_template` SET `DamageModifier` = 4.59512 WHERE `entry`=17802;

/*  Coilfang Oracle  */
UPDATE `creature_template` SET `DamageModifier` = 4.60627 WHERE `entry`=17803;

/*  Coilfang Slavemaster  */
UPDATE `creature_template` SET `DamageModifier` = 4.62104 WHERE `entry`=17805;

/*  Master Kelerun Bloodmourn  */
UPDATE `creature_template` SET `DamageModifier` = 4.43952, `HealthModifier` = 1.1 WHERE `entry`=17807;

/*  Anetheron  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 48.1251, `HealthModifier` = 762.8 WHERE `entry`=17808;

/*  Champion Bloodwrath  */
UPDATE `creature_template` SET `DamageModifier` = 0.399225, `HealthModifier` = 0.6 WHERE `entry`=17809;

/*  Champion Lightrend  */
UPDATE `creature_template` SET `DamageModifier` = 0.399225, `HealthModifier` = 0.6 WHERE `entry`=17810;

/*  Champion Swiftblade  */
UPDATE `creature_template` SET `DamageModifier` = 0.399225 WHERE `entry`=17811;

/*  Champion Sunstriker  */
UPDATE `creature_template` SET `DamageModifier` = 0.399225 WHERE `entry`=17812;

/*  Lordaeron Watchman  */
UPDATE `creature_template` SET `DamageModifier` = 11.1133 WHERE `entry`=17814;

/*  Lordaeron Sentry  */
UPDATE `creature_template` SET `DamageModifier` = 10.2632 WHERE `entry`=17815;

/*  Bogstrok  */
UPDATE `creature_template` SET `DamageModifier` = 9.0661 WHERE `entry`=17816;

/*  Greater Bogstrok  */
UPDATE `creature_template` SET `DamageModifier` = 9.0808 WHERE `entry`=17817;

/*  Towering Infernal  */
UPDATE `creature_template` SET `DamageModifier` = 17.4085, `HealthModifier` = 29.8, `ArmorModifier` = 1.30678 WHERE `entry`=17818;

/*  Durnholde Sentry  */
UPDATE `creature_template` SET `maxlevel` = 71, `DamageModifier` = 8.59465 WHERE `entry`=17819;

/*  Durnholde Rifleman  */
UPDATE `creature_template` SET `DamageModifier` = 8.61816, `HealthModifier` = 2.6 WHERE `entry`=17820;

/*  Landen Stilwell  */
UPDATE `creature_template` SET `minlevel` = 23, `maxlevel` = 23, `DamageModifier` = 0.400046, `HealthModifier` = 1.6 WHERE `entry`=17822;

/*  Captured Sunhawk Agent  */
UPDATE `creature_template` SET `DamageModifier` = 0.422312, `HealthModifier` = 0.9 WHERE `entry`=17824;

/*  Interrogator Elysia  */
UPDATE `creature_template` SET `DamageModifier` = 0.46494 WHERE `entry`=17825;

/*  Swamplord Musel'ek  */
UPDATE `creature_template` SET `DamageModifier` = 8.05498, `HealthModifier` = 11.3 WHERE `entry`=17826;

/*  Claw  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `ArmorModifier` = 1.58407 WHERE `entry`=17827;

/*  Lykul Hatchling  */
UPDATE `creature_template` SET `HealthModifier` = 0.2 WHERE `entry`=17829;

/*  Zelemar the Wrathful  */
UPDATE `creature_template` SET `DamageModifier` = 2.58217 WHERE `entry`=17830;

/*  Watcher Leesa'oh  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=17831;

/*  Blood Knight Dawnstar  */
UPDATE `creature_template` SET `DamageModifier` = 4.39116, `HealthModifier` = 0.5 WHERE `entry`=17832;

/*  Durnholde Warden  */
UPDATE `creature_template` SET `DamageModifier` = 5.80636, `HealthModifier` = 3.5 WHERE `entry`=17833;

/*  Lethyn Moonfire  */
UPDATE `creature_template` SET `DamageModifier` = 2.2457, `HealthModifier` = 1.3 WHERE `entry`=17834;

/*  Infinite Assassin  */
UPDATE `creature_template` SET `DamageModifier` = 2.89286, `ArmorModifier` = 0.714392 WHERE `entry`=17835;

/*  Ogre Brawler  */
UPDATE `creature_template` SET `DamageModifier` = 2.35326, `HealthModifier` = 5.9 WHERE `entry`=17836;

/*  Troll Berserker  */
UPDATE `creature_template` SET `DamageModifier` = 2.35326, `HealthModifier` = 1.4 WHERE `entry`=17837;

/*  Rift Lord  */
UPDATE `creature_template` SET `minlevel` = 71, `maxlevel` = 71, `DamageModifier` = 10.9024 WHERE `entry`=17839;

/*  Durnholde Tracking Hound  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.4, `ArmorModifier` = 1.51987 WHERE `entry`=17840;

/*  Ysiel Windsinger  */
UPDATE `creature_template` SET `DamageModifier` = 0.210477, `HealthModifier` = 1.3 WHERE `entry`=17841;

/*  Azgalor  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 81.8068, `HealthModifier` = 700.2 WHERE `entry`=17842;

/*  Vindicator Kuros  */
UPDATE `creature_template` SET `DamageModifier` = 5.8447, `HealthModifier` = 0.5 WHERE `entry`=17843;

/*  Vindicator Aesom  */
UPDATE `creature_template` SET `DamageModifier` = 5.8447, `HealthModifier` = 0.5 WHERE `entry`=17844;

/*  Blood Elf Magister  */
UPDATE `creature_template` SET `DamageModifier` = 0.512106 WHERE `entry`=17845;

/*  Pit Spectator  */
UPDATE `creature_template` SET `maxlevel` = 69, `DamageModifier` = 10.1893, `HealthModifier` = 1.9 WHERE `entry`=17846;

/*  Lieutenant Drake  */
UPDATE `creature_template` SET `DamageModifier` = 18.778 WHERE `entry`=17848;

/*  Slain Outrunner  */
UPDATE `creature_template` SET `DamageModifier` = 2.20231, `HealthModifier` = 2.7, `ArmorModifier` = 0.143885 WHERE `entry`=17849;

/*  Thrall  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 7.55155, `HealthModifier` = 93.8 WHERE `entry`=17852;

/*  Tracker of the Hand  */
UPDATE `creature_template` SET `DamageModifier` = 2.96609 WHERE `entry`=17853;

/*  Dire Wolf  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 1.7111 WHERE `entry`=17854;

/*  Expedition Warden  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 1.0 WHERE `entry`=17855;

/*  Gzhun'tt  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=17856;

/*  T'shu  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.7 WHERE `entry`=17857;

/*  Warden Hamoot  */
UPDATE `creature_template` SET `maxlevel` = 57, `DamageModifier` = 3.06896, `HealthModifier` = 0.3 WHERE `entry`=17858;

/*  Durnholde Veteran  */
UPDATE `creature_template` SET `DamageModifier` = 9.24887, `HealthModifier` = 2.0 WHERE `entry`=17860;

/*  Captain Skarloc  */
UPDATE `creature_template` SET `DamageModifier` = 18.5721, `HealthModifier` = 11.5 WHERE `entry`=17862;

/*  Lesser Doomguard  */
UPDATE `creature_template` SET `DamageModifier` = 13.039, `HealthModifier` = 24.6 WHERE `entry`=17864;

/*  Matis  */
UPDATE `creature_template` SET `DamageModifier` = 4.30343, `HealthModifier` = 0.6 WHERE `entry`=17865;

/*  Khn'nix  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.6 WHERE `entry`=17866;

/*  Angered Nether-wraith  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=17870;

/*  Underbog Shambler  */
UPDATE `creature_template` SET `DamageModifier` = 4.28541 WHERE `entry`=17871;

/*  Murkblood Foreman  */
UPDATE `creature_template` SET `DamageModifier` = 4.22724 WHERE `entry`=17872;

/*  Murkblood Henchman  */
UPDATE `creature_template` SET `DamageModifier` = 3.13989, `HealthModifier` = 2.3 WHERE `entry`=17873;

/*  Image of Velen  */
UPDATE `creature_template` SET `DamageModifier` = 2.93241, `HealthModifier` = 2.1 WHERE `entry`=17874;

/*  Hunter of the Hand  */
UPDATE `creature_template` SET `DamageModifier` = 2.96609 WHERE `entry`=17875;

/*  Thrall  */
UPDATE `creature_template` SET `DamageModifier` = 2.2112, `ArmorModifier` = 1.0 WHERE `entry`=17876;

/*  Fhwoor  */
UPDATE `creature_template` SET `DamageModifier` = 0.5, `HealthModifier` = 1.5 WHERE `entry`=17877;

/*  Chrono Lord Deja  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 15.9154, `HealthModifier` = 14.6, `ArmorModifier` = 0.783009, `ManaModifier` = 9.8 WHERE `entry`=17879;

/*  Temporus  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 16.9252, `HealthModifier` = 14.6 WHERE `entry`=17880;

/*  Aeonus  */
UPDATE `creature_template` SET `DamageModifier` = 21.9292 WHERE `entry`=17881;

/*  The Black Stalker  */
UPDATE `creature_template` SET `DamageModifier` = 9.55109 WHERE `entry`=17882;

/*  Watcher Jhang  */
UPDATE `creature_template` SET `DamageModifier` = 2.2457, `HealthModifier` = 0.7 WHERE `entry`=17884;

/*  Earthbinder Rayge  */
UPDATE `creature_template` SET `DamageModifier` = 2.45905, `HealthModifier` = 1.8 WHERE `entry`=17885;

/*  [DND]Sunhawk Portal Controller  */
UPDATE `creature_template` SET `HealthModifier` = 0.6 WHERE `entry`=17886;

/*  Void Critter  */
UPDATE `creature_template` SET `HealthModifier` = 5.9 WHERE `entry`=17887;

/*  Kaz'rogal  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 48.1251, `HealthModifier` = 700.2 WHERE `entry`=17888;

/*  Weeder Greenthumb  */
UPDATE `creature_template` SET `DamageModifier` = 2.5449, `HealthModifier` = 1.6, `ArmorModifier` = 1.27237 WHERE `entry`=17890;

/*  Infinite Chronomancer  */
UPDATE `creature_template` SET `DamageModifier` = 4.95036, `HealthModifier` = 0.9 WHERE `entry`=17892;

/*  Naturalist Bite  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=17893;

/*  Windcaller Claw  */
UPDATE `creature_template` SET `DamageModifier` = 2.23006, `HealthModifier` = 1.1 WHERE `entry`=17894;

/*  Ghoul  */
UPDATE `creature_template` SET `DamageModifier` = 9.89516, `HealthModifier` = 20.0 WHERE `entry`=17895;

/*  Kameel Longstride  */
UPDATE `creature_template` SET `DamageModifier` = 3.06896, `HealthModifier` = 0.3 WHERE `entry`=17896;

/*  Crypt Fiend  */
UPDATE `creature_template` SET `DamageModifier` = 7.88644, `HealthModifier` = 25.0 WHERE `entry`=17897;

/*  Abomination  */
UPDATE `creature_template` SET `DamageModifier` = 16.1413, `HealthModifier` = 25.0 WHERE `entry`=17898;

/*  Shadowy Necromancer  */
UPDATE `creature_template` SET `DamageModifier` = 34.3608, `HealthModifier` = 21.5 WHERE `entry`=17899;

/*  Ashyen  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=17900;

/*  Keleth  */
UPDATE `creature_template` SET `DamageModifier` = 4.87115, `HealthModifier` = 1.6 WHERE `entry`=17901;

/*  Skeleton Invader  */
UPDATE `creature_template` SET `DamageModifier` = 3.82744, `HealthModifier` = 5.0 WHERE `entry`=17902;

/*  Skeleton Mage  */
UPDATE `creature_template` SET `DamageModifier` = 3.10694, `HealthModifier` = 4.4, `ArmorModifier` = 0.52277, `ManaModifier` = 11.4 WHERE `entry`=17903;

/*  Fedryen Swiftspear  */
UPDATE `creature_template` SET `DamageModifier` = 3.13916, `HealthModifier` = 0.3 WHERE `entry`=17904;

/*  Banshee  */
UPDATE `creature_template` SET `DamageModifier` = 8.37738, `HealthModifier` = 14.3 WHERE `entry`=17905;

/*  Gargoyle  */
UPDATE `creature_template` SET `DamageModifier` = 12.5914, `HealthModifier` = 18.0 WHERE `entry`=17906;

/*  Frost Wyrm  */
UPDATE `creature_template` SET `DamageModifier` = 18.1613, `HealthModifier` = 45.0 WHERE `entry`=17907;

/*  Giant Infernal  */
UPDATE `creature_template` SET `dmgschool` = 2, `DamageModifier` = 6.16934, `HealthModifier` = 18.0 WHERE `entry`=17908;

/*  Lauranna Thar'well  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.5 WHERE `entry`=17909;

/*  Gregor the Justiciar  */
UPDATE `creature_template` SET `DamageModifier` = 3.7114 WHERE `entry`=17910;

/*  Cathela the Seeker  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=17911;

/*  Nemas the Arbiter  */
UPDATE `creature_template` SET `DamageModifier` = 1.67217 WHERE `entry`=17912;

/*  Aelmar the Vanquisher  */
UPDATE `creature_template` SET `DamageModifier` = 2.48786 WHERE `entry`=17913;

/*  Vicar Hieronymus  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=17914;

/*  Fel Stalker  */
UPDATE `creature_template` SET `DamageModifier` = 9.43884, `HealthModifier` = 15.0 WHERE `entry`=17916;

/*  Coilfang Water Elemental  */
UPDATE `creature_template` SET `DamageModifier` = 1.47869 WHERE `entry`=17917;

/*  Time Keeper  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.0 WHERE `entry`=17918;

/*  Alliance Footman  */
UPDATE `creature_template` SET `DamageModifier` = 31.9614 WHERE `entry`=17919;

/*  Alliance Knight  */
UPDATE `creature_template` SET `DamageModifier` = 31.9614 WHERE `entry`=17920;

/*  Alliance Rifleman  */
UPDATE `creature_template` SET `DamageModifier` = 30.0 WHERE `entry`=17921;

/*  Alliance Sorceress  */
UPDATE `creature_template` SET `DamageModifier` = 42.5339, `HealthModifier` = 8.6, `ArmorModifier` = 0.703183, `ManaModifier` = 4.5 WHERE `entry`=17922;

/*  Fahssn  */
UPDATE `creature_template` SET `DamageModifier` = 0.221271, `HealthModifier` = 0.5 WHERE `entry`=17923;

/*  Msshi'fn  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=17924;

/*  Gshaff  */
UPDATE `creature_template` SET `DamageModifier` = 2.45455 WHERE `entry`=17925;

/*  Scout Loryi  */
UPDATE `creature_template` SET `DamageModifier` = 0.405984, `HealthModifier` = 0.9 WHERE `entry`=17926;

/*  Scout Jorli  */
UPDATE `creature_template` SET `DamageModifier` = 0.405984, `HealthModifier` = 0.6 WHERE `entry`=17927;

/*  Alliance Priest  */
UPDATE `creature_template` SET `DamageModifier` = 42.5339, `HealthModifier` = 8.6, `ArmorModifier` = 0.703183, `ManaModifier` = 4.5 WHERE `entry`=17928;

/*  Kioni  */
UPDATE `creature_template` SET `DamageModifier` = 4.44952, `HealthModifier` = 0.7 WHERE `entry`=17929;

/*  Nabek  */
UPDATE `creature_template` SET `DamageModifier` = 0.306526, `HealthModifier` = 0.6 WHERE `entry`=17930;

/*  Alliance Peasant  */
UPDATE `creature_template` SET `DamageModifier` = 33.2921, `ArmorModifier` = 0.591624 WHERE `entry`=17931;

/*  Horde Grunt  */
UPDATE `creature_template` SET `DamageModifier` = 31.9614 WHERE `entry`=17932;

/*  Tauren Warrior  */
UPDATE `creature_template` SET `DamageModifier` = 31.9614 WHERE `entry`=17933;

/*  Horde Headhunter  */
UPDATE `creature_template` SET `DamageModifier` = 31.9614, `ArmorModifier` = 0.699509 WHERE `entry`=17934;

/*  Horde Witch Doctor  */
UPDATE `creature_template` SET `DamageModifier` = 34.3608, `HealthModifier` = 7.5 WHERE `entry`=17935;

/*  Horde Shaman  */
UPDATE `creature_template` SET `DamageModifier` = 34.3608, `HealthModifier` = 7.5, `ArmorModifier` = 0.566488 WHERE `entry`=17936;

/*  Horde Peon  */
UPDATE `creature_template` SET `DamageModifier` = 33.2921, `HealthModifier` = 6.2 WHERE `entry`=17937;

/*  Coilfang Observer  */
UPDATE `creature_template` SET `DamageModifier` = 9.8655 WHERE `entry`=17938;

/*  Coilfang Technician  */
UPDATE `creature_template` SET `DamageModifier` = 9.19336 WHERE `entry`=17940;

/*  Mennu the Betrayer  */
UPDATE `creature_template` SET `minlevel` = 64, `maxlevel` = 64, `DamageModifier` = 9.06568 WHERE `entry`=17941;

/*  Quagmirran  */
UPDATE `creature_template` SET `DamageModifier` = 24.561 WHERE `entry`=17942;

/*  Night Elf Archer  */
UPDATE `creature_template` SET `DamageModifier` = 31.9614, `HealthModifier` = 1.4 WHERE `entry`=17943;

/*  Dryad  */
UPDATE `creature_template` SET `DamageModifier` = 5.53177 WHERE `entry`=17944;

/*  Night Elf Huntress  */
UPDATE `creature_template` SET `DamageModifier` = 31.9614, `HealthModifier` = 2.4 WHERE `entry`=17945;

/*  Red Crystal Bunny  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=17947;

/*  Tyrande Whisperwind  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 50.0, `HealthModifier` = 15.0, `ManaModifier` = 20.0 WHERE `entry`=17948;

/*  Steamrigger Mechanic  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=17951;

/*  Darkwater Crocolisk  */
UPDATE `creature_template` SET `DamageModifier` = 3.19617 WHERE `entry`=17952;

/*  Buddy  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.7 WHERE `entry`=17953;

/*  Naga Distiller  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=17954;

/*  Ikeyen  */
UPDATE `creature_template` SET `DamageModifier` = 3.32742, `HealthModifier` = 1.6 WHERE `entry`=17956;

/*  Coilfang Champion  */
UPDATE `creature_template` SET `DamageModifier` = 9.75457 WHERE `entry`=17957;

/*  Coilfang Defender  */
UPDATE `creature_template` SET `DamageModifier` = 9.75457 WHERE `entry`=17958;

/*  Coilfang Slavehandler  */
UPDATE `creature_template` SET `DamageModifier` = 10.7704 WHERE `entry`=17959;

/*  Coilfang Soothsayer  */
UPDATE `creature_template` SET `DamageModifier` = 10.55, `ArmorModifier` = 0.635143 WHERE `entry`=17960;

/*  Coilfang Enchantress  */
UPDATE `creature_template` SET `DamageModifier` = 9.6163 WHERE `entry`=17961;

/*  Coilfang Collaborator  */
UPDATE `creature_template` SET `minlevel` = 62, `DamageModifier` = 6.62789 WHERE `entry`=17962;

/*  Wastewalker Slave  */
UPDATE `creature_template` SET `maxlevel` = 71, `DamageModifier` = 3.12311 WHERE `entry`=17963;

/*  Wastewalker Worker  */
UPDATE `creature_template` SET `maxlevel` = 71, `DamageModifier` = 1.53864 WHERE `entry`=17964;

/*  Archimonde  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 150.0, `HealthModifier` = 807.2 WHERE `entry`=17968;

/*  Kayra Longmane  */
UPDATE `creature_template` SET `DamageModifier` = 2.48315 WHERE `entry`=17969;

/*  High Botanist Freywinn  */
UPDATE `creature_template` SET `DamageModifier` = 13.7612, `HealthModifier` = 15.8 WHERE `entry`=17975;

/*  Commander Sarannis  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 12.3422, `HealthModifier` = 14.6 WHERE `entry`=17976;

/*  Warp Splinter  */
UPDATE `creature_template` SET `DamageModifier` = 16.479, `HealthModifier` = 25.9 WHERE `entry`=17977;

/*  Thorngrin the Tender  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 18.7492, `HealthModifier` = 12.2, `ArmorModifier` = 0.783009 WHERE `entry`=17978;

/*  Laj  */
UPDATE `creature_template` SET `DamageModifier` = 16.4974 WHERE `entry`=17980;

/*  Demolitionist Legoso  */
UPDATE `creature_template` SET `DamageModifier` = 4.31991, `HealthModifier` = 2.5, `ArmorModifier` = 1.0, `ManaModifier` = 3.0 WHERE `entry`=17982;

/*  Heur  */
UPDATE `creature_template` SET `DamageModifier` = 0.398053 WHERE `entry`=17983;

/*  As the Crow Flies Credit Marker  */
UPDATE `creature_template` SET `HealthModifier` = 2.3 WHERE `entry`=17985;

/*  Vindicator Corin  */
UPDATE `creature_template` SET `DamageModifier` = 4.33944, `HealthModifier` = 1.1 WHERE `entry`=17986;

/*  Underbog Mushroom  */
UPDATE `creature_template` SET `HealthModifier` = 3.2 WHERE `entry`=17990;

/*  Rokmar the Crackler  */
UPDATE `creature_template` SET `DamageModifier` = 14.1449 WHERE `entry`=17991;

/*  Bloodwarder Protector  */
UPDATE `creature_template` SET `DamageModifier` = 10.5031 WHERE `entry`=17993;

/*  Bloodwarder Falconer  */
UPDATE `creature_template` SET `DamageModifier` = 10.667 WHERE `entry`=17994;

/*  Umbrafen Steam Pump Credit Marker  */
UPDATE `creature_template` SET `DamageModifier` = 20.0983, `HealthModifier` = 2.3 WHERE `entry`=17998;

/*  Lagoon Steam Pump Credit Marker  */
UPDATE `creature_template` SET `HealthModifier` = 2.3 WHERE `entry`=17999;

/*  Serpent Steam Pump Credit Marker  */
UPDATE `creature_template` SET `HealthModifier` = 2.3 WHERE `entry`=18000;

/*  Guardian Water Elemental  */
UPDATE `creature_template` SET `minlevel` = 50, `maxlevel` = 50, `DamageModifier` = 1.65482 WHERE `entry`=18001;

/*  Marshlight Steam Pump Credit Marker  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 2.3 WHERE `entry`=18002;

/*  Anchorite Ahuurn  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=18003;

/*  Vindicator Idaar  */
UPDATE `creature_template` SET `DamageModifier` = 2.2457, `HealthModifier` = 1.2 WHERE `entry`=18004;

/*  Haalrun  */
UPDATE `creature_template` SET `DamageModifier` = 2.2457, `HealthModifier` = 1.6 WHERE `entry`=18005;

/*  Noraani  */
UPDATE `creature_template` SET `DamageModifier` = 2.2457, `HealthModifier` = 1.9 WHERE `entry`=18006;

/*  Ruam  */
UPDATE `creature_template` SET `DamageModifier` = 2.2457 WHERE `entry`=18007;

/*  Ikuti  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18008;

/*  Puluu  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=18009;

/*  Maktu  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.1 WHERE `entry`=18010;

/*  Zurai  */
UPDATE `creature_template` SET `DamageModifier` = 0.374089, `HealthModifier` = 1.7 WHERE `entry`=18011;

/*  Reavij  */
UPDATE `creature_template` SET `DamageModifier` = 3.32742, `HealthModifier` = 1.1 WHERE `entry`=18012;

/*  Shadow Hunter Denjai  */
UPDATE `creature_template` SET `DamageModifier` = 3.08831, `HealthModifier` = 1.3 WHERE `entry`=18013;

/*  Witch Doctor Tor'gash  */
UPDATE `creature_template` SET `DamageModifier` = 3.32742, `HealthModifier` = 1.9 WHERE `entry`=18014;

/*  Gambarinka  */
UPDATE `creature_template` SET `DamageModifier` = 3.32742, `HealthModifier` = 1.5 WHERE `entry`=18015;

/*  Magasha  */
UPDATE `creature_template` SET `DamageModifier` = 3.32742, `HealthModifier` = 2.0 WHERE `entry`=18016;

/*  Seer Janidi  */
UPDATE `creature_template` SET `DamageModifier` = 3.32742, `HealthModifier` = 1.9 WHERE `entry`=18017;

/*  Zurjaya  */
UPDATE `creature_template` SET `DamageModifier` = 3.32742, `HealthModifier` = 2.2 WHERE `entry`=18018;

/*  Timothy Daniels  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=18019;

/*  Defender Adrielle  */
UPDATE `creature_template` SET `DamageModifier` = 0.46494, `HealthModifier` = 0.6 WHERE `entry`=18020;

/*  Defender Kaegan  */
UPDATE `creature_template` SET `DamageModifier` = 0.439313, `HealthModifier` = 0.6 WHERE `entry`=18021;

/*  Defender Ursi  */
UPDATE `creature_template` SET `DamageModifier` = 0.46494, `HealthModifier` = 3.7 WHERE `entry`=18022;

/*  Defender Kranos  */
UPDATE `creature_template` SET `DamageModifier` = 4.31991, `HealthModifier` = 0.7 WHERE `entry`=18023;

/*  Defender Sorli  */
UPDATE `creature_template` SET `DamageModifier` = 0.46494, `HealthModifier` = 0.6 WHERE `entry`=18024;

/*  Defender Auston  */
UPDATE `creature_template` SET `DamageModifier` = 4.31991, `HealthModifier` = 3.9 WHERE `entry`=18025;

/*  Defender Haqi  */
UPDATE `creature_template` SET `DamageModifier` = 0.439313, `HealthModifier` = 4.2 WHERE `entry`=18026;

/*  Defender Kadithuul  */
UPDATE `creature_template` SET `DamageModifier` = 0.439313, `HealthModifier` = 3.9 WHERE `entry`=18027;

/*  Defender Akee  */
UPDATE `creature_template` SET `DamageModifier` = 0.46494, `HealthModifier` = 1.2 WHERE `entry`=18028;

/*  Defender Kajad  */
UPDATE `creature_template` SET `DamageModifier` = 0.439313, `HealthModifier` = 2.2 WHERE `entry`=18029;

/*  Knight-Defender Zunade  */
UPDATE `creature_template` SET `DamageModifier` = 1.23984 WHERE `entry`=18030;

/*  Defender Zaibach  */
UPDATE `creature_template` SET `DamageModifier` = 0.439313, `HealthModifier` = 4.8 WHERE `entry`=18031;

/*  Defender Ashoon  */
UPDATE `creature_template` SET `DamageModifier` = 0.46494, `HealthModifier` = 1.0 WHERE `entry`=18032;

/*  Defender Katroi  */
UPDATE `creature_template` SET `DamageModifier` = 0.46494 WHERE `entry`=18034;

/*  Scout Jyoba  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.4 WHERE `entry`=18035;

/*  Warmaul Warlock  */
UPDATE `creature_template` SET `HealthModifier` = 0.7 WHERE `entry`=18037;

/*  Azuremyst Peacekeeper  */
UPDATE `creature_template` SET `minlevel` = 23, `DamageModifier` = 0.342896, `HealthModifier` = 0.5 WHERE `entry`=18038;

/*  Lich  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 27.7426, `HealthModifier` = 40.0 WHERE `entry`=18040;

/*  Doomguard Lord  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 30.7999, `HealthModifier` = 240.0 WHERE `entry`=18041;

/*  Rajis Fyashe  */
UPDATE `creature_template` SET `DamageModifier` = 2.2457, `HealthModifier` = 4.1 WHERE `entry`=18044;

/*  Rajah Haghazed  */
UPDATE `creature_template` SET `DamageModifier` = 2.37984 WHERE `entry`=18046;

/*  Bleeding Hollow Archer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 16.7497, `HealthModifier` = 4.0, `mingold` = 1034, `maxgold` = 1355 WHERE `entry`=18048;

/*  Bleeding Hollow Darkcaster (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 21.0643, `HealthModifier` = 4.5, `mingold` = 949, `maxgold` = 1244 WHERE `entry`=18049;

/*  Bleeding Hollow Scryer (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 12.188, `HealthModifier` = 2.4, `mingold` = 609, `maxgold` = 800 WHERE `entry`=18050;

/*  Bonechewer Beastmaster (1)  */
UPDATE `creature_template` SET `DamageModifier` = 18.3574, `ArmorModifier` = 1.011, `mingold` = 1289, `maxgold` = 1688 WHERE `entry`=18051;

/*  Bonechewer Destroyer (1)  */
UPDATE `creature_template` SET `maxlevel` = 70, `DamageModifier` = 31.2058, `HealthModifier` = 3.9, `ArmorModifier` = 1.011, `mingold` = 1289, `maxgold` = 1688 WHERE `entry`=18052;

/*  Bonechewer Hungerer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 21.3551, `HealthModifier` = 3.9, `ArmorModifier` = 1.00954, `mingold` = 1289, `maxgold` = 1688 WHERE `entry`=18053;

/*  Bonechewer Ravener (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 25.2975, `HealthModifier` = 4.0, `mingold` = 1289, `maxgold` = 1688 WHERE `entry`=18054;

/*  Bonechewer Ripper (1)  */
UPDATE `creature_template` SET `DamageModifier` = 18.3123, `HealthModifier` = 8.2, `ArmorModifier` = 1.0551, `mingold` = 2523, `maxgold` = 3300 WHERE `entry`=18055;

/*  Fiendish Hound (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `rank` = 1, `DamageModifier` = 17.4103, `HealthModifier` = 2.1 WHERE `entry`=18056;

/*  Hellfire Sentry (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 17.9987, `HealthModifier` = 8.4, `ArmorModifier` = 1.01087, `mingold` = 1496, `maxgold` = 1959 WHERE `entry`=18057;

/*  Hellfire Watcher (1)  */
UPDATE `creature_template` SET `DamageModifier` = 12.563, `HealthModifier` = 5.5, `ArmorModifier` = 0.634217, `mingold` = 1075, `maxgold` = 1408 WHERE `entry`=18058;

/*  Shattered Hand Warhound (1)  */
UPDATE `creature_template` SET `DamageModifier` = 43.7813, `HealthModifier` = 1.4 WHERE `entry`=18059;

/*  Garrosh  */
UPDATE `creature_template` SET `DamageModifier` = 2.63553, `HealthModifier` = 1.5 WHERE `entry`=18063;

/*  Farseer Kurkush  */
UPDATE `creature_template` SET `DamageModifier` = 0.210477, `HealthModifier` = 0.9 WHERE `entry`=18066;

/*  Farseer Corhuk  */
UPDATE `creature_template` SET `DamageModifier` = 0.210477, `HealthModifier` = 0.3 WHERE `entry`=18067;

/*  Farseer Margadesh  */
UPDATE `creature_template` SET `DamageModifier` = 0.210477, `HealthModifier` = 0.9 WHERE `entry`=18068;

/*  Mogor  */
UPDATE `creature_template` SET `DamageModifier` = 9.91904 WHERE `entry`=18069;

/*  Windcaller Blackhoof  */
UPDATE `creature_template` SET `DamageModifier` = 4.70935, `HealthModifier` = 0.4 WHERE `entry`=18070;

/*  Elementalist Untrag  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.4 WHERE `entry`=18071;

/*  Elementalist Sharvak  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.7 WHERE `entry`=18072;

/*  Elementalist Lo'ap  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=18073;

/*  Elementalist Morgh  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.2 WHERE `entry`=18074;

/*  Mannoroth  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 0.468917, `HealthModifier` = 1.6 WHERE `entry`=18075;

/*  Grom Hellscream  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 1.60139, `HealthModifier` = 1.4 WHERE `entry`=18076;

/*  Watoosun of the Water  */
UPDATE `creature_template` SET `DamageModifier` = 0.478206, `HealthModifier` = 0.6 WHERE `entry`=18084;

/*  Messenger Gazgrigg  */
UPDATE `creature_template` SET `maxlevel` = 62, `DamageModifier` = 2.21598, `HealthModifier` = 1.4 WHERE `entry`=18091;

/*  Tarren Mill Guardsman  */
UPDATE `creature_template` SET `DamageModifier` = 8.50806, `HealthModifier` = 2.8 WHERE `entry`=18092;

/*  Tarren Mill Protector  */
UPDATE `creature_template` SET `DamageModifier` = 13.6613 WHERE `entry`=18093;

/*  Tarren Mill Lookout  */
UPDATE `creature_template` SET `DamageModifier` = 9.10349, `HealthModifier` = 2.8 WHERE `entry`=18094;

/*  Epoch Hunter  */
UPDATE `creature_template` SET `DamageModifier` = 13.3683 WHERE `entry`=18096;

/*  Nahuud  */
UPDATE `creature_template` SET `DamageModifier` = 3.31714 WHERE `entry`=18097;

/*  Gordawg  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 113.273 WHERE `entry`=18099;

/*  Incineratus  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 1.5408, `HealthModifier` = 0.3 WHERE `entry`=18100;

/*  Aborius  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 113.273 WHERE `entry`=18101;

/*  Kalandrios  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 236.943 WHERE `entry`=18102;

/*  Arcane Guardian  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=18103;

/*  Ghaz'an  */
UPDATE `creature_template` SET `DamageModifier` = 4.7768 WHERE `entry`=18105;

/*  Jorin Deadeye  */
UPDATE `creature_template` SET `DamageModifier` = 1.72335, `HealthModifier` = 0.9 WHERE `entry`=18106;

/*  Overseer Tidewrath  */
UPDATE `creature_template` SET `DamageModifier` = 3.95118 WHERE `entry`=18107;

/*  Dreghood Drudge  */
UPDATE `creature_template` SET `HealthModifier` = 0.7, `maxgold` = 182 WHERE `entry`=18122;

/*  Wrekt Slave  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.7 WHERE `entry`=18123;

/*  Expedition Scout  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `ArmorModifier` = 1.31659 WHERE `entry`=18126;

/*  Bog Lord  */
UPDATE `creature_template` SET `minlevel` = 64 WHERE `entry`=18127;

/*  Fen Strider  */
UPDATE `creature_template` SET `DamageModifier` = 0.501848 WHERE `entry`=18134;

/*  Marsh Walker  */
UPDATE `creature_template` SET `DamageModifier` = 0.518573 WHERE `entry`=18135;

/*  Sporeggar Preserver  */
UPDATE `creature_template` SET `DamageModifier` = 3.33, `ArmorModifier` = 0.8178 WHERE `entry`=18139;

/*  Greatmother Geyah  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 2.78718, `HealthModifier` = 1.5 WHERE `entry`=18141;

/*  Champion Vranesh  */
UPDATE `creature_template` SET `minlevel` = 20, `maxlevel` = 20, `DamageModifier` = 4.02703, `HealthModifier` = 2.8 WHERE `entry`=18146;

/*  Silvermoon Ranger  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=18147;

/*  Ssslith  */
UPDATE `creature_template` SET `DamageModifier` = 6.76267 WHERE `entry`=18154;

/*  Bloodfalcon  */
UPDATE `creature_template` SET `DamageModifier` = 7.7922 WHERE `entry`=18155;

/*  Underground Pond Credit Marker  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=18162;

/*  Archmage Cedric  */
UPDATE `creature_template` SET `DamageModifier` = 5.22544, `HealthModifier` = 1.4 WHERE `entry`=18165;

/*  Khadgar  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 1.5 WHERE `entry`=18166;

/*  The Crone  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 17.0725, `HealthModifier` = 25.0 WHERE `entry`=18168;

/*  Infinite Slayer  */
UPDATE `creature_template` SET `DamageModifier` = 6.53897 WHERE `entry`=18170;

/*  Infinite Defiler  */
UPDATE `creature_template` SET `DamageModifier` = 7.25473 WHERE `entry`=18171;

/*  Infinite Saboteur  */
UPDATE `creature_template` SET `DamageModifier` = 5.3743 WHERE `entry`=18172;

/*  Initiate Colin  */
UPDATE `creature_template` SET `DamageModifier` = 0.366094, `HealthModifier` = 0.6 WHERE `entry`=18174;

/*  Initiate Emeline  */
UPDATE `creature_template` SET `DamageModifier` = 0.366094, `HealthModifier` = 2.5 WHERE `entry`=18175;

/*  Hemet Nesingwary  */
UPDATE `creature_template` SET `DamageModifier` = 1.72335, `HealthModifier` = 1.0 WHERE `entry`=18180;

/*  Minion of Gurok  */
UPDATE `creature_template` SET `DamageModifier` = 0.337729 WHERE `entry`=18181;

/*  Gurok the Usurper  */
UPDATE `creature_template` SET `DamageModifier` = 4.3775 WHERE `entry`=18182;

/*  Arechron  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.1 WHERE `entry`=18183;

/*  Cheneta  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 1.7 WHERE `entry`=18187;

/*  Tatai  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542 WHERE `entry`=18188;

/*  Dela Runetotem  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 0.3 WHERE `entry`=18189;

/*  Kristine Denny  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542 WHERE `entry`=18190;

/*  Ambassador Kelemar  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 0.3 WHERE `entry`=18191;

/*  Horde Halaani Guard  */
UPDATE `creature_template` SET `DamageModifier` = 0.234094 WHERE `entry`=18192;

/*  Elder Kuruti  */
UPDATE `creature_template` SET `DamageModifier` = 2.93769 WHERE `entry`=18197;

/*  Shado 'Fitz' Farstrider  */
UPDATE `creature_template` SET `DamageModifier` = 1.72335, `HealthModifier` = 0.8 WHERE `entry`=18200;

/*  Tamed Sporebat  */
UPDATE `creature_template` SET `DamageModifier` = 3.11015 WHERE `entry`=18201;

/*  Wastewalker Captive  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 2.0, `HealthModifier` = 1.7 WHERE `entry`=18206;

/*  Murkblood Scavenger  */
UPDATE `creature_template` SET `HealthModifier` = 0.2, `ArmorModifier` = 0.634901 WHERE `entry`=18207;

/*  Kurenai Captive  */
UPDATE `creature_template` SET `DamageModifier` = 0.290962, `HealthModifier` = 0.8 WHERE `entry`=18209;

/*  Mudfin Frenzy  */
UPDATE `creature_template` SET `DamageModifier` = 0.219021, `HealthModifier` = 0.3 WHERE `entry`=18212;

/*  Mire Hydra  */
UPDATE `creature_template` SET `ArmorModifier` = 0.5176 WHERE `entry`=18213;

/*  Murkblood Target Dummy  */
UPDATE `creature_template` SET `DamageModifier` = 0.210878, `HealthModifier` = 1.4 WHERE `entry`=18215;

/*  Harold Lane  */
UPDATE `creature_template` SET `DamageModifier` = 1.72335, `HealthModifier` = 0.8 WHERE `entry`=18218;

/*  Holaaru  */
UPDATE `creature_template` SET `DamageModifier` = 5.86196, `HealthModifier` = 2.4 WHERE `entry`=18221;

/*  Otonbu the Sage  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18222;

/*  Mo'mor the Breaker  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.1 WHERE `entry`=18223;

/*  Poli'lukluk the Wiser  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18224;

/*  Fire Bomb Target  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=18225;

/*  Saurfang the Younger  */
UPDATE `creature_template` SET `rank` = 1, `DamageModifier` = 1.0, `HealthModifier` = 1.3 WHERE `entry`=18229;

/*  Trayanise  */
UPDATE `creature_template` SET `DamageModifier` = 0.350604, `HealthModifier` = 3.0 WHERE `entry`=18230;

/*  Keyanomir  */
UPDATE `creature_template` SET `HealthModifier` = 2.4 WHERE `entry`=18231;

/*  Elementalist Ioki  */
UPDATE `creature_template` SET `DamageModifier` = 2.37775, `HealthModifier` = 2.1 WHERE `entry`=18233;

/*  Tiny Arcane Construct  */
UPDATE `creature_template` SET `HealthModifier` = 5.0 WHERE `entry`=18237;

/*  Sunspring Villager  */
UPDATE `creature_template` SET `maxlevel` = 58, `DamageModifier` = 0.503104 WHERE `entry`=18240;

/*  Crusty  */
UPDATE `creature_template` SET `minlevel` = 30, `ArmorModifier` = 1.55386 WHERE `entry`=18241;

/*  Lorti  */
UPDATE `creature_template` SET `DamageModifier` = 2.30652, `HealthModifier` = 0.4 WHERE `entry`=18243;

/*  Khalan  */
UPDATE `creature_template` SET `maxlevel` = 60, `DamageModifier` = 2.45068 WHERE `entry`=18244;

/*  Merajit  */
UPDATE `creature_template` SET `minlevel` = 62, `DamageModifier` = 2.0, `HealthModifier` = 1.1 WHERE `entry`=18245;

/*  Tayemba  */
UPDATE `creature_template` SET `minlevel` = 61, `maxlevel` = 61, `DamageModifier` = 2.24183, `HealthModifier` = 0.9 WHERE `entry`=18246;

/*  Farbosi  */
UPDATE `creature_template` SET `minlevel` = 61, `maxlevel` = 61, `DamageModifier` = 2.24183 WHERE `entry`=18247;

/*  Nekthar  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 2.5 WHERE `entry`=18248;

/*  Mokasa  */
UPDATE `creature_template` SET `maxlevel` = 60, `DamageModifier` = 0.245068, `HealthModifier` = 0.5 WHERE `entry`=18249;

/*  Joraal  */
UPDATE `creature_template` SET `minlevel` = 62, `HealthModifier` = 0.4 WHERE `entry`=18250;

/*  Caregiver Abidaar  */
UPDATE `creature_template` SET `minlevel` = 62, `HealthModifier` = 1.1 WHERE `entry`=18251;

/*  Andarl  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18252;

/*  Shadow of Aran  */
UPDATE `creature_template` SET `DamageModifier` = 2.21136, `HealthModifier` = 0.2 WHERE `entry`=18254;

/*  Alliance Halaani Guard  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18256;

/*  Gutripper  */
UPDATE `creature_template` SET `DamageModifier` = 2.35894 WHERE `entry`=18257;

/*  Bach'lor  */
UPDATE `creature_template` SET `DamageModifier` = 3.37573 WHERE `entry`=18258;

/*  Banthar  */
UPDATE `creature_template` SET `DamageModifier` = 3.37573 WHERE `entry`=18259;

/*  Lantresor of the Blade  */
UPDATE `creature_template` SET `DamageModifier` = 1.43176, `HealthModifier` = 0.8 WHERE `entry`=18261;

/*  Unkor the Ruthless  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.6 WHERE `entry`=18262;

/*  Nagrand Spawn Trigger  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=18263;

/*  Nagrand Spawn Timer  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 2.3 WHERE `entry`=18264;

/*  Gezhe  */
UPDATE `creature_template` SET `DamageModifier` = 0.195376, `HealthModifier` = 0.9 WHERE `entry`=18265;

/*  Warrant Officer Tracy Proudwell  */
UPDATE `creature_template` SET `DamageModifier` = 1.72335, `HealthModifier` = 0.7 WHERE `entry`=18266;

/*  Battlecryer Blackeye  */
UPDATE `creature_template` SET `DamageModifier` = 0.189478, `HealthModifier` = 0.7 WHERE `entry`=18267;

/*  Consortium Prospector  */
UPDATE `creature_template` SET `HealthModifier` = 2.4 WHERE `entry`=18271;

/*  Kilrath  */
UPDATE `creature_template` SET `HealthModifier` = 1.2 WHERE `entry`=18273;

/*  Zerid  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.2 WHERE `entry`=18276;

/*  Kinamisa  */
UPDATE `creature_template` SET `DamageModifier` = 0.331047, `HealthModifier` = 0.5 WHERE `entry`=18277;

/*  Pilot Marsha  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.5 WHERE `entry`=18278;

/*  Boglash  */
UPDATE `creature_template` SET `DamageModifier` = 1.20443 WHERE `entry`=18281;

/*  "Count" Ungula  */
UPDATE `creature_template` SET `DamageModifier` = 0.235015 WHERE `entry`=18285;

/*  Tusker  */
UPDATE `creature_template` SET `DamageModifier` = 3.9759 WHERE `entry`=18290;

/*  Bleeding Hollow Refugee  */
UPDATE `creature_template` SET `minlevel` = 42, `maxlevel` = 68, `DamageModifier` = 2.26262, `ArmorModifier` = 2.7917 WHERE `entry`=18292;

/*  Sunspring Post Refugee  */
UPDATE `creature_template` SET `minlevel` = 47, `maxlevel` = 49, `HealthModifier` = 3.5 WHERE `entry`=18293;

/*  Prospector Conall  */
UPDATE `creature_template` SET `HealthModifier` = 0.3 WHERE `entry`=18295;

/*  Sunspring Post Orphan  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 23.1 WHERE `entry`=18296;

/*  Gankly Rottenfist  */
UPDATE `creature_template` SET `DamageModifier` = 1.25313 WHERE `entry`=18297;

/*  Bleeding Hollow Orphan  */
UPDATE `creature_template` SET `minlevel` = 8, `maxlevel` = 15, `DamageModifier` = 0.154538, `ArmorModifier` = 2.21242 WHERE `entry`=18299;

/*  Elkay'gan the Mystic  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=18300;

/*  Matron Celestine  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=18301;

/*  Matron Drakia  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18302;

/*  Burning Blade Pyre (01)  */
UPDATE `creature_template` SET `DamageModifier` = 0.146002, `HealthModifier` = 0.4 WHERE `entry`=18305;

/*  Burning Blade Pyre (02)  */
UPDATE `creature_template` SET `DamageModifier` = 0.180455, `HealthModifier` = 1.3 WHERE `entry`=18306;

/*  Burning Blade Pyre (03)  */
UPDATE `creature_template` SET `DamageModifier` = 0.180455, `HealthModifier` = 1.3 WHERE `entry`=18307;

/*  Burning Blade Pyre (04)  */
UPDATE `creature_template` SET `minlevel` = 32, `maxlevel` = 32, `HealthModifier` = 0.4 WHERE `entry`=18308;

/*  Ethereal Scavenger  */
UPDATE `creature_template` SET `DamageModifier` = 4.00616 WHERE `entry`=18309;

/*  Ethereal Crypt Raider  */
UPDATE `creature_template` SET `DamageModifier` = 4.00616 WHERE `entry`=18311;

/*  Ethereal Spellbinder  */
UPDATE `creature_template` SET `DamageModifier` = 3.21403, `HealthModifier` = 2.5, `ArmorModifier` = 0.652824 WHERE `entry`=18312;

/*  Ethereal Sorcerer  */
UPDATE `creature_template` SET `DamageModifier` = 4.08386, `ArmorModifier` = 0.653759, `ManaModifier` = 5.1 WHERE `entry`=18313;

/*  Nexus Stalker  */
UPDATE `creature_template` SET `DamageModifier` = 5.85236, `ArmorModifier` = 0.573175 WHERE `entry`=18314;

/*  Ethereal Theurgist  */
UPDATE `creature_template` SET `DamageModifier` = 3.55203, `HealthModifier` = 2.5, `ArmorModifier` = 0.633632 WHERE `entry`=18315;

/*  Ethereal Priest  */
UPDATE `creature_template` SET `DamageModifier` = 3.755, `ArmorModifier` = 0.653759, `ManaModifier` = 5.1 WHERE `entry`=18317;

/*  Sethekk Initiate  */
UPDATE `creature_template` SET `DamageModifier` = 4.59076 WHERE `entry`=18318;

/*  Time-Lost Scryer  */
UPDATE `creature_template` SET `maxlevel` = 68, `DamageModifier` = 10.289, `HealthModifier` = 2.5, `ArmorModifier` = 0.647771 WHERE `entry`=18319;

/*  Time-Lost Shadowmage  */
UPDATE `creature_template` SET `DamageModifier` = 4.1881, `ArmorModifier` = 0.634217 WHERE `entry`=18320;

/*  Sethekk Talon Lord  */
UPDATE `creature_template` SET `DamageModifier` = 3.96979 WHERE `entry`=18321;

/*  Sethekk Ravenguard  */
UPDATE `creature_template` SET `DamageModifier` = 3.67817 WHERE `entry`=18322;

/*  Sethekk Guard  */
UPDATE `creature_template` SET `maxlevel` = 68, `DamageModifier` = 4.99484 WHERE `entry`=18323;

/*  Sethekk Prophet  */
UPDATE `creature_template` SET `maxlevel` = 69, `DamageModifier` = 3.9891, `ArmorModifier` = 0.649756 WHERE `entry`=18325;

/*  Sethekk Shaman  */
UPDATE `creature_template` SET `DamageModifier` = 3.69718 WHERE `entry`=18326;

/*  Time-Lost Controller  */
UPDATE `creature_template` SET `DamageModifier` = 4.1757, `HealthModifier` = 2.5, `ArmorModifier` = 0.631635 WHERE `entry`=18327;

/*  Sethekk Oracle  */
UPDATE `creature_template` SET `maxlevel` = 68, `DamageModifier` = 3.96541, `HealthModifier` = 2.5, `ArmorModifier` = 0.647771 WHERE `entry`=18328;

/*  Ethereal Darkcaster  */
UPDATE `creature_template` SET `DamageModifier` = 4.27656, `HealthModifier` = 2.5, `ArmorModifier` = 0.634789 WHERE `entry`=18331;

/*  Talut  */
UPDATE `creature_template` SET `DamageModifier` = 3.11664, `HealthModifier` = 1.3 WHERE `entry`=18332;

/*  Shadrek  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=18333;

/*  Consortium Recruiter  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=18335;

/*  Silvermoon Magister  */
UPDATE `creature_template` SET `DamageModifier` = 1.68907 WHERE `entry`=18336;

/*  Priest Kath'mar  */
UPDATE `creature_template` SET `DamageModifier` = 6.87785, `HealthModifier` = 21.1 WHERE `entry`=18337;

/*  Highlord Kruul  */
UPDATE `creature_template` SET `DamageModifier` = 2.21136, `HealthModifier` = 115.8 WHERE `entry`=18338;

/*  Pandemonius  */
UPDATE `creature_template` SET `DamageModifier` = 3.58399 WHERE `entry`=18341;

/*  Theatre Spotlight  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=18342;

/*  Tavarok  */
UPDATE `creature_template` SET `DamageModifier` = 3.58399 WHERE `entry`=18343;

/*  Nexus-Prince Shaffar  */
UPDATE `creature_template` SET `DamageModifier` = 5.19724, `HealthModifier` = 12.8 WHERE `entry`=18344;

/*  Olirea  */
UPDATE `creature_template` SET `DamageModifier` = 0.387159, `HealthModifier` = 0.4 WHERE `entry`=18347;

/*  Fanin  */
UPDATE `creature_template` SET `DamageModifier` = 0.395844, `HealthModifier` = 5.3 WHERE `entry`=18348;

/*  Iressa  */
UPDATE `creature_template` SET `HealthModifier` = 6.6 WHERE `entry`=18349;

/*  Jaela  */
UPDATE `creature_template` SET `DamageModifier` = 4.0574, `HealthModifier` = 0.4 WHERE `entry`=18350;

/*  Lump  */
UPDATE `creature_template` SET `HealthModifier` = 1.7 WHERE `entry`=18351;

/*  Huntress Bintook  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.9 WHERE `entry`=18353;

/*  Lump's Quest Credit  */
UPDATE `creature_template` SET `DamageModifier` = 0.218087, `HealthModifier` = 1.4 WHERE `entry`=18354;

/*  Corki  */
UPDATE `creature_template` SET `DamageModifier` = 0.245068 WHERE `entry`=18369;

/*  Shirrak the Dead Watcher  */
UPDATE `creature_template` SET `DamageModifier` = 5.78519, `HealthModifier` = 11.2 WHERE `entry`=18371;

/*  Exarch Maladaar  */
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72, `DamageModifier` = 11.4245, `HealthModifier` = 22.3 WHERE `entry`=18373;

/*  Mycah  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.4 WHERE `entry`=18382;

/*  Kurgatok  */
UPDATE `creature_template` SET `minlevel` = 63, `maxlevel` = 63, `DamageModifier` = 2.0, `HealthModifier` = 0.5 WHERE `entry`=18383;

/*  Malukaz  */
UPDATE `creature_template` SET `maxlevel` = 62, `DamageModifier` = 2.0, `HealthModifier` = 0.7 WHERE `entry`=18384;

/*  Rakoria  */
UPDATE `creature_template` SET `minlevel` = 61, `maxlevel` = 61, `DamageModifier` = 2.22824, `HealthModifier` = 1.1 WHERE `entry`=18385;

/*  Rokag  */
UPDATE `creature_template` SET `DamageModifier` = 1.72335, `HealthModifier` = 0.3 WHERE `entry`=18386;

/*  Bertelm  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.4 WHERE `entry`=18387;

/*  Thander  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.1 WHERE `entry`=18389;

/*  Ros'eleth  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.6 WHERE `entry`=18390;

/*  Ethereal Wraith  */
UPDATE `creature_template` SET `minlevel` = 63, `maxlevel` = 63, `DamageModifier` = 2.96837 WHERE `entry`=18394;

/*  Boulderfist Saboteur  */
UPDATE `creature_template` SET `DamageModifier` = 0.155592 WHERE `entry`=18396;

/*  Kil'sorrow Invader  */
UPDATE `creature_template` SET `DamageModifier` = 1.41689 WHERE `entry`=18397;

/*  Brokentoe  */
UPDATE `creature_template` SET `DamageModifier` = 7.34317 WHERE `entry`=18398;

/*  Murkblood Twin  */
UPDATE `creature_template` SET `DamageModifier` = 6.02485 WHERE `entry`=18399;

/*  Rokdar the Sundered Lord  */
UPDATE `creature_template` SET `DamageModifier` = 7.11322 WHERE `entry`=18400;

/*  Skra'gath  */
UPDATE `creature_template` SET `DamageModifier` = 8.81531, `HealthModifier` = 10.5, `ArmorModifier` = 0.633632 WHERE `entry`=18401;

/*  Warmaul Champion  */
UPDATE `creature_template` SET `DamageModifier` = 7.8795 WHERE `entry`=18402;

/*  Sporebat  */
UPDATE `creature_template` SET `DamageModifier` = 1.60049, `HealthModifier` = 1.8 WHERE `entry`=18403;

/*  Bloodwarder Steward  */
UPDATE `creature_template` SET `DamageModifier` = 9.8124 WHERE `entry`=18404;

/*  Tempest-Forge Peacekeeper  */
UPDATE `creature_template` SET `DamageModifier` = 11.404 WHERE `entry`=18405;

/*  Warden Bullrok  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 1.5 WHERE `entry`=18407;

/*  Warden Moi'bff Jill  */
UPDATE `creature_template` SET `DamageModifier` = 3.74449, `HealthModifier` = 1.7 WHERE `entry`=18408;

/*  Durn the Hungerer  */
UPDATE `creature_template` SET `DamageModifier` = 9.90349 WHERE `entry`=18411;

/*  Cyclone (The Crone)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 1.74354, `HealthModifier` = 1.3 WHERE `entry`=18412;

/*  Zorbo the Advisor  */
UPDATE `creature_template` SET `HealthModifier` = 0.7 WHERE `entry`=18413;

/*  Elder Yorley  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.2 WHERE `entry`=18414;

/*  Elder Ungriz  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.5 WHERE `entry`=18415;

/*  Huntress Kima  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18416;

/*  Altruis the Sufferer  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=18417;

/*  Nethrandamus  */
UPDATE `creature_template` SET `DamageModifier` = 1.64214, `HealthModifier` = 1.0 WHERE `entry`=18418;

/*  Bloodwarder Greenkeeper  */
UPDATE `creature_template` SET `DamageModifier` = 10.5364 WHERE `entry`=18419;

/*  Sunseeker Geomancer  */
UPDATE `creature_template` SET `DamageModifier` = 11.2099 WHERE `entry`=18420;

/*  Sunseeker Researcher  */
UPDATE `creature_template` SET `DamageModifier` = 11.3933 WHERE `entry`=18421;

/*  Sunseeker Botanist  */
UPDATE `creature_template` SET `DamageModifier` = 11.3827 WHERE `entry`=18422;

/*  Cho'war the Pillager  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18423;

/*  Warden Treelos  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.4 WHERE `entry`=18424;

/*  Terellia  */
UPDATE `creature_template` SET `DamageModifier` = 0.439534, `HealthModifier` = 3.6 WHERE `entry`=18426;

/*  Fazu  */
UPDATE `creature_template` SET `DamageModifier` = 0.455873, `HealthModifier` = 0.5 WHERE `entry`=18427;

/*  Mag'har Prisoner  */
UPDATE `creature_template` SET `ArmorModifier` = 1.21093 WHERE `entry`=18428;

/*  Arcane Fiend  */
UPDATE `creature_template` SET `DamageModifier` = 1.5851, `HealthModifier` = 0.3 WHERE `entry`=18429;

/*  Ethereal Apprentice  */
UPDATE `creature_template` SET `DamageModifier` = 2.66061 WHERE `entry`=18430;

/*  Ethereal Beacon  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 0.7 WHERE `entry`=18431;

/*  Nazan (1)  */
UPDATE `creature_template` SET `DamageModifier` = 28.9292, `mingold` = 3885, `maxgold` = 5078 WHERE `entry`=18432;

/*  Omor the Unscarred (1)  */
UPDATE `creature_template` SET `DamageModifier` = 19.5268, `HealthModifier` = 17.5, `ArmorModifier` = 0.48675, `mingold` = 3587, `maxgold` = 4690 WHERE `entry`=18433;

/*  Vazruden (1)  */
UPDATE `creature_template` SET `DamageModifier` = 36.3319 WHERE `entry`=18434;

/*  Vazruden the Herald (1)  */
UPDATE `creature_template` SET `DamageModifier` = 11.5469 WHERE `entry`=18435;

/*  Watchkeeper Gargolmar (1)  */
UPDATE `creature_template` SET `DamageModifier` = 17.6572, `mingold` = 4352, `maxgold` = 5689 WHERE `entry`=18436;

/*  Garokk  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.0 WHERE `entry`=18439;

/*  Warmaul Chef Bufferlo  */
UPDATE `creature_template` SET `maxlevel` = 65, `DamageModifier` = 1.69812 WHERE `entry`=18440;

/*  Stolen Soul  */
UPDATE `creature_template` SET `maxlevel` = 72, `DamageModifier` = 2.0 WHERE `entry`=18441;

/*  Prospector Balmoral  */
UPDATE `creature_template` SET `DamageModifier` = 2.42464, `HealthModifier` = 0.2 WHERE `entry`=18442;

/*  Lookout Nodak  */
UPDATE `creature_template` SET `DamageModifier` = 2.42464, `HealthModifier` = 0.2 WHERE `entry`=18443;

/*  Earthbinder Tavgren  */
UPDATE `creature_template` SET `DamageModifier` = 2.2457, `HealthModifier` = 0.8 WHERE `entry`=18446;

/*  Tooki  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.9 WHERE `entry`=18447;

/*  Kokorek  */
UPDATE `creature_template` SET `HealthModifier` = 0.2 WHERE `entry`=18448;

/*  Shienor Wing Guard  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18451;

/*  Shalassi Talonguard  */
UPDATE `creature_template` SET `minlevel` = 63 WHERE `entry`=18454;

/*  Jenai Starwhisper  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.7 WHERE `entry`=18459;

/*  Shalassi Sentry  */
UPDATE `creature_template` SET `DamageModifier` = 1.49109 WHERE `entry`=18462;

/*  Gurgthock  */
UPDATE `creature_template` SET `HealthModifier` = 2.0 WHERE `entry`=18471;

/*  Darkweaver Syth  */
UPDATE `creature_template` SET `minlevel` = 69, `maxlevel` = 69, `DamageModifier` = 6.57738, `ArmorModifier` = 0.634217 WHERE `entry`=18472;

/*  Talon King Ikiss  */
UPDATE `creature_template` SET `minlevel` = 69, `maxlevel` = 69, `DamageModifier` = 9.5983, `ArmorModifier` = 0.634217, `ManaModifier` = 5.3 WHERE `entry`=18473;

/*  Mug'gok  */
UPDATE `creature_template` SET `maxlevel` = 64 WHERE `entry`=18475;

/*  Avatar of the Martyred  */
UPDATE `creature_template` SET `DamageModifier` = 4.93518, `HealthModifier` = 4.7 WHERE `entry`=18478;

/*  Broken Corpse  */
UPDATE `creature_template` SET `DamageModifier` = 2.36418 WHERE `entry`=18480;

/*  A'dal  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 352.577 WHERE `entry`=18481;

/*  Empoor  */
UPDATE `creature_template` SET `DamageModifier` = 2.2457, `HealthModifier` = 0.8 WHERE `entry`=18482;

/*  Empoor's Bodyguard  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=18483;

/*  Wind Trader Lathrai  */
UPDATE `creature_template` SET `DamageModifier` = 0.210878, `HealthModifier` = 1.0 WHERE `entry`=18484;

/*  Night Elf Ancient of War  */
UPDATE `creature_template` SET `DamageModifier` = 3.95806 WHERE `entry`=18485;

/*  Night Elf Ancient of Lore  */
UPDATE `creature_template` SET `DamageModifier` = 3.95806 WHERE `entry`=18486;

/*  Night Elf Ancient Protector  */
UPDATE `creature_template` SET `DamageModifier` = 2.57274 WHERE `entry`=18487;

/*  Telaari Watcher  */
UPDATE `creature_template` SET `DamageModifier` = 1.72335, `HealthModifier` = 1.0 WHERE `entry`=18488;

/*  Garadar Defender  */
UPDATE `creature_template` SET `DamageModifier` = 7.22722 WHERE `entry`=18489;

/*  Fallen Druid  */
UPDATE `creature_template` SET `DamageModifier` = 2.36313 WHERE `entry`=18490;

/*  Tavgren's Kodo  */
UPDATE `creature_template` SET `DamageModifier` = 2.36418, `HealthModifier` = 0.2 WHERE `entry`=18492;

/*  Auchenai Soulpriest  */
UPDATE `creature_template` SET `DamageModifier` = 3.79711 WHERE `entry`=18493;

/*  Deirom  */
UPDATE `creature_template` SET `DamageModifier` = 2.52609, `HealthModifier` = 1.4 WHERE `entry`=18494;

/*  Auchenai Vindicator  */
UPDATE `creature_template` SET `DamageModifier` = 3.79711 WHERE `entry`=18495;

/*  Dugar  */
UPDATE `creature_template` SET `DamageModifier` = 2.52609, `HealthModifier` = 1.4 WHERE `entry`=18496;

/*  Auchenai Monk  */
UPDATE `creature_template` SET `DamageModifier` = 3.03194 WHERE `entry`=18497;

/*  Unliving Soldier  */
UPDATE `creature_template` SET `maxlevel` = 71, `DamageModifier` = 2.20849, `HealthModifier` = 1.4 WHERE `entry`=18498;

/*  Unliving Sorcerer  */
UPDATE `creature_template` SET `maxlevel` = 71, `DamageModifier` = 2.33156, `HealthModifier` = 1.4 WHERE `entry`=18499;

/*  Unliving Cleric  */
UPDATE `creature_template` SET `maxlevel` = 71, `DamageModifier` = 2.39773, `HealthModifier` = 1.4 WHERE `entry`=18500;

/*  Unliving Stalker  */
UPDATE `creature_template` SET `maxlevel` = 71, `DamageModifier` = 2.37775, `HealthModifier` = 1.4 WHERE `entry`=18501;

/*  Night Elf Wisp  */
UPDATE `creature_template` SET `DamageModifier` = 33.2921, `HealthModifier` = 1.8 WHERE `entry`=18502;

/*  Phantasmal Possessor  */
UPDATE `creature_template` SET `maxlevel` = 71, `DamageModifier` = 3.01733, `HealthModifier` = 0.4 WHERE `entry`=18503;

/*  Raging Soul  */
UPDATE `creature_template` SET `DamageModifier` = 0.479635, `HealthModifier` = 0.5 WHERE `entry`=18506;

/*  Silvermoon Farstrider  */
UPDATE `creature_template` SET `DamageModifier` = 0.31601, `HealthModifier` = 0.3 WHERE `entry`=18507;

/*  Raging Skeleton  */
UPDATE `creature_template` SET `DamageModifier` = 3.29793, `HealthModifier` = 2.8 WHERE `entry`=18521;

/*  Angered Skeleton  */
UPDATE `creature_template` SET `DamageModifier` = 3.45904, `HealthModifier` = 2.8 WHERE `entry`=18524;

/*  G'eras  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=18525;

/*  Conjurer Tyren  */
UPDATE `creature_template` SET `HealthModifier` = 2.5 WHERE `entry`=18527;

/*  Xi'ri  */
UPDATE `creature_template` SET `DamageModifier` = 1.62798, `HealthModifier` = 1.4 WHERE `entry`=18528;

/*  Voren'thal the Seer  */
UPDATE `creature_template` SET `DamageModifier` = 2.3441 WHERE `entry`=18530;

/*  Magistrix Fyalenn  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 1.0, `HealthModifier` = 1.3 WHERE `entry`=18531;

/*  Forge Camp: Hate - Event Generator  */
UPDATE `creature_template` SET `DamageModifier` = 0.217238, `HealthModifier` = 1.7 WHERE `entry`=18532;

/*  Luanga the Imprisoner  */
UPDATE `creature_template` SET `DamageModifier` = 4.93409 WHERE `entry`=18533;

/*  Demos, Overseer of Hate  */
UPDATE `creature_template` SET `DamageModifier` = 5.96874 WHERE `entry`=18535;

/*  Xirkos, Overseer of Fear  */
UPDATE `creature_template` SET `DamageModifier` = 5.96874 WHERE `entry`=18536;

/*  Adyen the Lightwarden  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=18537;

/*  Ishanah  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 19.4 WHERE `entry`=18538;

/*  Ashkaz  */
UPDATE `creature_template` SET `minlevel` = 62 WHERE `entry`=18539;

/*  Alexston Chrome  */
UPDATE `creature_template` SET `minlevel` = 30, `maxlevel` = 30, `DamageModifier` = 5.03494, `HealthModifier` = 2.7 WHERE `entry`=18542;

/*  Veraku  */
UPDATE `creature_template` SET `DamageModifier` = 2.96855 WHERE `entry`=18544;

/*  Scryer Arcanist  */
UPDATE `creature_template` SET `minlevel` = 60, `DamageModifier` = 0.363389 WHERE `entry`=18547;

/*  Aldor Vindicator  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=18549;

/*  Sharth Voldoun  */
UPDATE `creature_template` SET `DamageModifier` = 2.24417 WHERE `entry`=18554;

/*  Phasing Soldier  */
UPDATE `creature_template` SET `DamageModifier` = 1.65828 WHERE `entry`=18556;

/*  Phasing Cleric  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18557;

/*  Phasing Sorcerer  */
UPDATE `creature_template` SET `DamageModifier` = 1.70985 WHERE `entry`=18558;

/*  Phasing Stalker  */
UPDATE `creature_template` SET `DamageModifier` = 1.69775 WHERE `entry`=18559;

/*  Horde Field Scout  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18564;

/*  Theloria Shadecloak  */
UPDATE `creature_template` SET `maxlevel` = 63, `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=18565;

/*  Shadowstalker Kaide  */
UPDATE `creature_template` SET `minlevel` = 64, `maxlevel` = 64, `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=18566;

/*  Mo'arg Master Planner  */
UPDATE `creature_template` SET `DamageModifier` = 5.78052 WHERE `entry`=18567;

/*  Scryer Arcane Guardian  */
UPDATE `creature_template` SET `DamageModifier` = 0.203498 WHERE `entry`=18568;

/*  Alliance Field Scout  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=18581;

/*  Sal'salabim  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 4.6 WHERE `entry`=18584;

/*  Raliq the Drunk  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 4.4 WHERE `entry`=18585;

/*  Coosh'coosh  */
UPDATE `creature_template` SET `DamageModifier` = 3.28108, `HealthModifier` = 4.6 WHERE `entry`=18586;

/*  Frayer  */
UPDATE `creature_template` SET `DamageModifier` = 1.32285 WHERE `entry`=18587;

/*  Floon  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 2.1 WHERE `entry`=18588;

/*  Scryer Retainer  */
UPDATE `creature_template` SET `DamageModifier` = 0.248072 WHERE `entry`=18593;

/*  Dathris Sunstriker  */
UPDATE `creature_template` SET `DamageModifier` = 0.203498, `HealthModifier` = 0.6 WHERE `entry`=18594;

/*  Arcanist Adyria  */
UPDATE `creature_template` SET `DamageModifier` = 0.197001 WHERE `entry`=18596;

/*  Sha'nir  */
UPDATE `creature_template` SET `DamageModifier` = 2.57977, `HealthModifier` = 0.4 WHERE `entry`=18597;

/*  Orc Prisoner  */
UPDATE `creature_template` SET `DamageModifier` = 2.35326, `HealthModifier` = 1.5 WHERE `entry`=18598;

/*  Injured Refugee  */
UPDATE `creature_template` SET `DamageModifier` = 0.203498, `HealthModifier` = 1.3 WHERE `entry`=18600;

/*  Broggok (1)  */
UPDATE `creature_template` SET `DamageModifier` = 26.1363, `mingold` = 3589, `maxgold` = 4692 WHERE `entry`=18601;

/*  Fel Orc Neophyte (1)  */
UPDATE `creature_template` SET `DamageModifier` = 10.3018, `mingold` = 910, `maxgold` = 1193 WHERE `entry`=18603;

/*  Felguard Annihilator (1)  */
UPDATE `creature_template` SET `DamageModifier` = 66.0772, `HealthModifier` = 3.9, `mingold` = 1335, `maxgold` = 1748 WHERE `entry`=18604;

/*  Felhound Manastalker (1)  */
UPDATE `creature_template` SET `DamageModifier` = 19.777, `HealthModifier` = 1.3, `ArmorModifier` = 0.494335 WHERE `entry`=18605;

/*  Hellfire Imp (1)  */
UPDATE `creature_template` SET `DamageModifier` = 15.9988, `HealthModifier` = 1.3 WHERE `entry`=18606;

/*  Keli'dan the Breaker (1)  */
UPDATE `creature_template` SET `DamageModifier` = 39.3301, `HealthModifier` = 19.4, `mingold` = 4354, `maxgold` = 5691 WHERE `entry`=18607;

/*  Laughing Skull Enforcer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 60.8134, `HealthModifier` = 4.0, `mingold` = 1248, `maxgold` = 1635 WHERE `entry`=18608;

/*  Laughing Skull Legionnaire (1)  */
UPDATE `creature_template` SET `DamageModifier` = 53.7408, `HealthModifier` = 3.9, `mingold` = 1248, `maxgold` = 1635 WHERE `entry`=18609;

/*  Laughing Skull Rogue (1)  */
UPDATE `creature_template` SET `maxlevel` = 71, `DamageModifier` = 12.0809, `HealthModifier` = 1.9, `ArmorModifier` = 0.633725, `mingold` = 653, `maxgold` = 858 WHERE `entry`=18610;

/*  Laughing Skull Warden (1)  */
UPDATE `creature_template` SET `DamageModifier` = 34.3162, `HealthModifier` = 5.4, `ArmorModifier` = 0.744799, `mingold` = 1760, `maxgold` = 2303 WHERE `entry`=18611;

/*  Nascent Fel Orc (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 18.28, `mingold` = 601, `maxgold` = 790 WHERE `entry`=18612;

/*  Orc Captive (1)  */
UPDATE `creature_template` SET `DamageModifier` = 8.12574, `HealthModifier` = 3.6 WHERE `entry`=18613;

/*  Seductress (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 11.5744, `HealthModifier` = 1.3, `ArmorModifier` = 0.670841 WHERE `entry`=18614;

/*  Shadowmoon Adept (1)  */
UPDATE `creature_template` SET `DamageModifier` = 57.9222, `HealthModifier` = 4.0, `ArmorModifier` = 0.674517, `mingold` = 1036, `maxgold` = 1357 WHERE `entry`=18615;

/*  Shadowmoon Summoner (1)  */
UPDATE `creature_template` SET `DamageModifier` = 27.2243, `HealthModifier` = 3.9, `ArmorModifier` = 0.758854, `ManaModifier` = 3.1, `mingold` = 951, `maxgold` = 1246 WHERE `entry`=18617;

/*  Shadowmoon Technician (1)  */
UPDATE `creature_template` SET `DamageModifier` = 25.8829, `HealthModifier` = 4.0, `mingold` = 908, `maxgold` = 1191 WHERE `entry`=18618;

/*  Shadowmoon Warlock (1)  */
UPDATE `creature_template` SET `DamageModifier` = 25.6706, `HealthModifier` = 4.0, `mingold` = 951, `maxgold` = 1246 WHERE `entry`=18619;

/*  Shadowmoon Channeler (1)  */
UPDATE `creature_template` SET `DamageModifier` = 40.9194, `HealthModifier` = 3.8 WHERE `entry`=18620;

/*  The Maker (1)  */
UPDATE `creature_template` SET `DamageModifier` = 41.4655, `HealthModifier` = 13.9, `mingold` = 4352, `maxgold` = 5689 WHERE `entry`=18621;

/*  Iz'zard  */
UPDATE `creature_template` SET `DamageModifier` = 0.226689 WHERE `entry`=18622;

/*  Dark Portal Dummy  */
UPDATE `creature_template` SET `DamageModifier` = 4.97965, `HealthModifier` = 3.9 WHERE `entry`=18625;

/*  Trainee Alcor  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542 WHERE `entry`=18626;

/*  Trainee Firea  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 2.3 WHERE `entry`=18627;

/*  Trainee Sinthar  */
UPDATE `creature_template` SET `DamageModifier` = 3.98702, `HealthModifier` = 2.3 WHERE `entry`=18628;

/*  Instructor Cel  */
UPDATE `creature_template` SET `DamageModifier` = 0.189478, `HealthModifier` = 1.3 WHERE `entry`=18629;

/*  Cabal Cultist  */
UPDATE `creature_template` SET `DamageModifier` = 4.35018 WHERE `entry`=18631;

/*  Cabal Executioner  */
UPDATE `creature_template` SET `DamageModifier` = 5.3378 WHERE `entry`=18632;

/*  Cabal Acolyte  */
UPDATE `creature_template` SET `DamageModifier` = 4.54251 WHERE `entry`=18633;

/*  Cabal Summoner  */
UPDATE `creature_template` SET `DamageModifier` = 4.46959 WHERE `entry`=18634;

/*  Cabal Deathsworn  */
UPDATE `creature_template` SET `DamageModifier` = 4.35018 WHERE `entry`=18635;

/*  Cabal Assassin  */
UPDATE `creature_template` SET `DamageModifier` = 4.28482 WHERE `entry`=18636;

/*  Cabal Shadow Priest  */
UPDATE `creature_template` SET `DamageModifier` = 4.34596 WHERE `entry`=18637;

/*  Cabal Zealot  */
UPDATE `creature_template` SET `DamageModifier` = 4.54286 WHERE `entry`=18638;

/*  Cabal Spellbinder  */
UPDATE `creature_template` SET `DamageModifier` = 4.46959 WHERE `entry`=18639;

/*  Cabal Warlock  */
UPDATE `creature_template` SET `DamageModifier` = 4.54251 WHERE `entry`=18640;

/*  Cabal Familiar  */
UPDATE `creature_template` SET `DamageModifier` = 1.49583, `HealthModifier` = 1.0 WHERE `entry`=18641;

/*  Fel Guardhound  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.4 WHERE `entry`=18642;

/*  Tarren Mill Peasant  */
UPDATE `creature_template` SET `DamageModifier` = 4.65679, `HealthModifier` = 27.1 WHERE `entry`=18644;

/*  Tarren Mill Horsehand  */
UPDATE `creature_template` SET `DamageModifier` = 4.65679, `HealthModifier` = 18.3 WHERE `entry`=18646;

/*  Deathskitter  */
UPDATE `creature_template` SET `DamageModifier` = 2.95804 WHERE `entry`=18647;

/*  Stonegazer  */
UPDATE `creature_template` SET `DamageModifier` = 2.74879 WHERE `entry`=18648;

/*  Young Blanchy  */
UPDATE `creature_template` SET `DamageModifier` = 5.88106, `HealthModifier` = 154.5 WHERE `entry`=18651;

/*  Zahlia  */
UPDATE `creature_template` SET `DamageModifier` = 1.77301, `HealthModifier` = 0.7 WHERE `entry`=18652;

/*  Crowd Murmur Helper  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=18654;

/*  Tarren Mill Fisherman  */
UPDATE `creature_template` SET `DamageModifier` = 4.42164, `HealthModifier` = 18.2 WHERE `entry`=18657;

/*  Orc Ancestor  */
UPDATE `creature_template` SET `HealthModifier` = 2.3 WHERE `entry`=18662;

/*  Maiden of Discipline  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.4 WHERE `entry`=18663;

/*  Aged Dalaran Wizard  */
UPDATE `creature_template` SET `DamageModifier` = 5.78695, `HealthModifier` = 3.2 WHERE `entry`=18664;

/*  Dalaran Sorceress  */
UPDATE `creature_template` SET `DamageModifier` = 4.39105, `ArmorModifier` = 0.681581 WHERE `entry`=18666;

/*  Blackheart the Inciter  */
UPDATE `creature_template` SET `DamageModifier` = 6.63238, `HealthModifier` = 15.0 WHERE `entry`=18667;

/*  Thomas Yance  */
UPDATE `creature_template` SET `DamageModifier` = 4.43216, `HealthModifier` = 6.6 WHERE `entry`=18672;

/*  Pit Announcer  */
UPDATE `creature_template` SET `maxlevel` = 69, `DamageModifier` = 2.27934, `HealthModifier` = 2.4 WHERE `entry`=18673;

/*  [UNUSED]Anchorite Lyteera  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=18674;

/*  Soolaveen  */
UPDATE `creature_template` SET `HealthModifier` = 0.7 WHERE `entry`=18675;

/*  Mekthorg the Wild  */
UPDATE `creature_template` SET `DamageModifier` = 1.48528 WHERE `entry`=18677;

/*  Fulgorge  */
UPDATE `creature_template` SET `DamageModifier` = 2.60128, `HealthModifier` = 2.1, `ArmorModifier` = 1.24102 WHERE `entry`=18678;

/*  Vorakem Doomspeaker  */
UPDATE `creature_template` SET `DamageModifier` = 1.32499 WHERE `entry`=18679;

/*  Marticar  */
UPDATE `creature_template` SET `rank` = 2, `DamageModifier` = 3.16659 WHERE `entry`=18680;

/*  Coilfang Emissary  */
UPDATE `creature_template` SET `DamageModifier` = 1.47465 WHERE `entry`=18681;

/*  Bog Lurker  */
UPDATE `creature_template` SET `DamageModifier` = 1.3187 WHERE `entry`=18682;

/*  Voidhunter Yar  */
UPDATE `creature_template` SET `DamageModifier` = 1.48577 WHERE `entry`=18683;

/*  Bro'Gaz the Clanless  */
UPDATE `creature_template` SET `DamageModifier` = 1.33938, `HealthModifier` = 1.4 WHERE `entry`=18684;

/*  Okrek  */
UPDATE `creature_template` SET `DamageModifier` = 2.21163 WHERE `entry`=18685;

/*  Doomsayer Jurim  */
UPDATE `creature_template` SET `DamageModifier` = 2.21163 WHERE `entry`=18686;

/*  Mother Kashur  */
UPDATE `creature_template` SET `DamageModifier` = 0.404352, `HealthModifier` = 1.7 WHERE `entry`=18687;

/*  Ancient Orc Ancestor  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18688;

/*  Crippler  */
UPDATE `creature_template` SET `DamageModifier` = 1.59823 WHERE `entry`=18689;

/*  Morcrush  */
UPDATE `creature_template` SET `DamageModifier` = 3.26278, `HealthModifier` = 2.3 WHERE `entry`=18690;

/*  Hemathion  */
UPDATE `creature_template` SET `DamageModifier` = 7.1703, `HealthModifier` = 15.0 WHERE `entry`=18692;

/*  Speaker Mar'grom  */
UPDATE `creature_template` SET `DamageModifier` = 1.77596 WHERE `entry`=18693;

/*  Collidus the Warp-Watcher  */
UPDATE `creature_template` SET `rank` = 2, `DamageModifier` = 2.78551 WHERE `entry`=18694;

/*  Ambassador Jerrikar  */
UPDATE `creature_template` SET `DamageModifier` = 1.35086 WHERE `entry`=18695;

/*  Kraator  */
UPDATE `creature_template` SET `rank` = 2, `DamageModifier` = 7.89408 WHERE `entry`=18696;

/*  Chief Engineer Lorthander  */
UPDATE `creature_template` SET `DamageModifier` = 1.35172 WHERE `entry`=18697;

/*  Ever-Core the Punisher  */
UPDATE `creature_template` SET `DamageModifier` = 1.48577 WHERE `entry`=18698;

/*  Reanimated Bones  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 0.5 WHERE `entry`=18700;

/*  Dark Vortex  */
UPDATE `creature_template` SET `minlevel` = 67, `maxlevel` = 67, `DamageModifier` = 3.56382, `ArmorModifier` = 1.21646 WHERE `entry`=18701;

/*  Auchenai Necromancer  */
UPDATE `creature_template` SET `maxlevel` = 67, `DamageModifier` = 3.99106, `HealthModifier` = 3.2 WHERE `entry`=18702;

/*  Sethekk Spirit  */
UPDATE `creature_template` SET `DamageModifier` = 319.67, `HealthModifier` = 41.5, `ArmorModifier` = 22.9758 WHERE `entry`=18703;

/*  Taela Everstride  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18704;

/*  Mawg Grimshot  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.5 WHERE `entry`=18705;

/*  Torgos  */
UPDATE `creature_template` SET `DamageModifier` = 3.36295 WHERE `entry`=18707;

/*  Murmur  */
UPDATE `creature_template` SET `DamageModifier` = 13.5539, `HealthModifier` = 53.2 WHERE `entry`=18708;

/*  Lieutenant Gravelhammer  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.6 WHERE `entry`=18713;

/*  Scout Neftis  */
UPDATE `creature_template` SET `HealthModifier` = 0.6 WHERE `entry`=18714;

/*  Private Weeks  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18715;

/*  Shadowy Initiate  */
UPDATE `creature_template` SET `DamageModifier` = 2.3085 WHERE `entry`=18716;

/*  Shadowy Laborer  */
UPDATE `creature_template` SET `DamageModifier` = 2.36418, `HealthModifier` = 0.6 WHERE `entry`=18717;

/*  Shadowy Hunter  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18718;

/*  Shadowy Advisor  */
UPDATE `creature_template` SET `DamageModifier` = 2.2457, `HealthModifier` = 0.8 WHERE `entry`=18719;

/*  Leper Gnome Laborer  */
UPDATE `creature_template` SET `HealthModifier` = 27.3 WHERE `entry`=18722;

/*  Erozion  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18723;

/*  Brazen  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=18725;

/*  Flying Raging Soul  */
UPDATE `creature_template` SET `DamageModifier` = 0.25201, `HealthModifier` = 0.2 WHERE `entry`=18726;

/*  Rarthein  */
UPDATE `creature_template` SET `DamageModifier` = 0.38685, `HealthModifier` = 0.8 WHERE `entry`=18727;

/*  Doom Lord Kazzak  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 54.8888, `HealthModifier` = 125.2 WHERE `entry`=18728;

/*  Infernal Rain (Hellfire)  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=18729;

/*  Sirigna'no  */
UPDATE `creature_template` SET `HealthModifier` = 0.9 WHERE `entry`=18730;

/*  Ambassador Hellmaw  */
UPDATE `creature_template` SET `DamageModifier` = 8.18656, `HealthModifier` = 18.2 WHERE `entry`=18731;

/*  Grandmaster Vorpil  */
UPDATE `creature_template` SET `DamageModifier` = 5.4604, `HealthModifier` = 18.8 WHERE `entry`=18732;

/*  Fel Reaver  */
UPDATE `creature_template` SET `DamageModifier` = 6.01818, `ArmorModifier` = 1.5 WHERE `entry`=18733;

/*  Elrodan  */
UPDATE `creature_template` SET `HealthModifier` = 9.9 WHERE `entry`=18743;

/*  Aurosalia  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=18744;

/*  Captain Auric Sunchaser  */
UPDATE `creature_template` SET `DamageModifier` = 1.72335, `HealthModifier` = 0.6 WHERE `entry`=18745;

/*  Krugosh  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.7 WHERE `entry`=18747;

/*  Ruak Stronghorn  */
UPDATE `creature_template` SET `DamageModifier` = 0.210878, `HealthModifier` = 0.8 WHERE `entry`=18748;

/*  Dalinna  */
UPDATE `creature_template` SET `DamageModifier` = 5.3597, `HealthModifier` = 1.9 WHERE `entry`=18749;

/*  Kalaen  */
UPDATE `creature_template` SET `DamageModifier` = 5.3597, `HealthModifier` = 0.5 WHERE `entry`=18751;

/*  Zebig  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 1.1 WHERE `entry`=18752;

/*  Felannia  */
UPDATE `creature_template` SET `DamageModifier` = 3.84407, `HealthModifier` = 1.5 WHERE `entry`=18753;

/*  Barim Spilthoof  */
UPDATE `creature_template` SET `DamageModifier` = 3.13916, `HealthModifier` = 1.4 WHERE `entry`=18754;

/*  Moorutu  */
UPDATE `creature_template` SET `DamageModifier` = 3.13916, `HealthModifier` = 2.2 WHERE `entry`=18755;

/*  Haris Pilton  */
UPDATE `creature_template` SET `DamageModifier` = 0.235015 WHERE `entry`=18756;

/*  Telhamat Protector  */
UPDATE `creature_template` SET `DamageModifier` = 0.330909, `HealthModifier` = 1.9 WHERE `entry`=18758;

/*  Zangarmarsh PvP Beam (Blue)  */
UPDATE `creature_template` SET `HealthModifier` = 2.3 WHERE `entry`=18759;

/*  Isla Starmane  */
UPDATE `creature_template` SET `DamageModifier` = 2.2457, `HealthModifier` = 0.4, `ManaModifier` = 1.2 WHERE `entry`=18760;

/*  Darise  */
UPDATE `creature_template` SET `DamageModifier` = 0.462318, `HealthModifier` = 0.6 WHERE `entry`=18761;

/*  Blood Elf Warlock  */
UPDATE `creature_template` SET `DamageModifier` = 0.512106, `HealthModifier` = 3.0 WHERE `entry`=18763;

/*  Durnholde Armorer  */
UPDATE `creature_template` SET `DamageModifier` = 2.35326, `HealthModifier` = 1.7 WHERE `entry`=18764;

/*  Durnholde Cook  */
UPDATE `creature_template` SET `DamageModifier` = 2.35326, `HealthModifier` = 0.3 WHERE `entry`=18765;

/*  Brumman  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 1.0 WHERE `entry`=18771;

/*  Hama  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=18772;

/*  Johan Barnes  */
UPDATE `creature_template` SET `DamageModifier` = 0.42191, `HealthModifier` = 1.6 WHERE `entry`=18773;

/*  Tatiana  */
UPDATE `creature_template` SET `DamageModifier` = 0.42191, `HealthModifier` = 0.9, `ManaModifier` = 2.4 WHERE `entry`=18774;

/*  Lebowski  */
UPDATE `creature_template` SET `DamageModifier` = 0.245068 WHERE `entry`=18775;

/*  Rorelien  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 0.3 WHERE `entry`=18776;

/*  Jelena Nightsky  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 0.6 WHERE `entry`=18777;

/*  Cosmetic Raging Soul  */
UPDATE `creature_template` SET `DamageModifier` = 0.241105, `HealthModifier` = 0.1 WHERE `entry`=18778;

/*  Hurnak Grimmord  */
UPDATE `creature_template` SET `DamageModifier` = 3.13916, `HealthModifier` = 1.3 WHERE `entry`=18779;

/*  Faenel the Drunkard  */
UPDATE `creature_template` SET `DamageModifier` = 0.512106, `HealthModifier` = 2.9 WHERE `entry`=18781;

/*  Kuma  */
UPDATE `creature_template` SET `DamageModifier` = 2.77807, `HealthModifier` = 0.2 WHERE `entry`=18785;

/*  Munci  */
UPDATE `creature_template` SET `DamageModifier` = 3.54684, `HealthModifier` = 1.7 WHERE `entry`=18788;

/*  Furgu  */
UPDATE `creature_template` SET `DamageModifier` = 1.65985 WHERE `entry`=18789;

/*  Gatewatcher Aendor  */
UPDATE `creature_template` SET `DamageModifier` = 0.366094, `HealthModifier` = 0.6 WHERE `entry`=18790;

/*  Du'ga  */
UPDATE `creature_template` SET `DamageModifier` = 3.54684, `HealthModifier` = 1.8 WHERE `entry`=18791;

/*  Harassed Citizen  */
UPDATE `creature_template` SET `maxlevel` = 10, `DamageModifier` = 1.52015, `HealthModifier` = 48.4, `ArmorModifier` = 0.215054 WHERE `entry`=18792;

/*  Cabal Ritualist  */
UPDATE `creature_template` SET `maxlevel` = 70, `DamageModifier` = 4.34596 WHERE `entry`=18794;

/*  Fel Overseer  */
UPDATE `creature_template` SET `DamageModifier` = 3.72 WHERE `entry`=18796;

/*  Tortured Skeleton  */
UPDATE `creature_template` SET `DamageModifier` = 1.4602 WHERE `entry`=18797;

/*  Worker  */
UPDATE `creature_template` SET `DamageModifier` = 0.210878, `HealthModifier` = 1.7 WHERE `entry`=18800;

/*  Alchemist Gribble  */
UPDATE `creature_template` SET `DamageModifier` = 0.367061, `HealthModifier` = 2.4 WHERE `entry`=18802;

/*  Prospector Nachlan  */
UPDATE `creature_template` SET `DamageModifier` = 0.339046 WHERE `entry`=18804;

/*  High Astromancer Solarian  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 21.3429, `HealthModifier` = 500.0 WHERE `entry`=18805;

/*  Solarium Priest  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 14.9 WHERE `entry`=18806;

/*  Kerna  */
UPDATE `creature_template` SET `DamageModifier` = 2.46972, `HealthModifier` = 1.0, `ManaModifier` = 0.8 WHERE `entry`=18807;

/*  Gursha  */
UPDATE `creature_template` SET `DamageModifier` = 2.46972, `HealthModifier` = 1.1, `ManaModifier` = 0.8 WHERE `entry`=18808;

/*  Furnan Skysoar  */
UPDATE `creature_template` SET `DamageModifier` = 2.77807, `HealthModifier` = 1.4 WHERE `entry`=18809;

/*  Otonambusi  */
UPDATE `creature_template` SET `DamageModifier` = 0.229659, `HealthModifier` = 0.6 WHERE `entry`=18810;

/*  Meriaad  */
UPDATE `creature_template` SET `DamageModifier` = 0.387795, `HealthModifier` = 0.8 WHERE `entry`=18811;

/*  Ereuso  */
UPDATE `creature_template` SET `HealthModifier` = 3.0 WHERE `entry`=18812;

/*  Duumehi  */
UPDATE `creature_template` SET `HealthModifier` = 3.0 WHERE `entry`=18813;

/*  Exodar Proselyte  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=18815;

/*  Chief Researcher Amereldine  */
UPDATE `creature_template` SET `DamageModifier` = 3.93699, `HealthModifier` = 2.0 WHERE `entry`=18816;

/*  Chief Researcher Kartos  */
UPDATE `creature_template` SET `DamageModifier` = 3.09122, `HealthModifier` = 2.4 WHERE `entry`=18817;

/*  Quartermaster Jaffrey Noreliqe  */
UPDATE `creature_template` SET `DamageModifier` = 2.53336, `HealthModifier` = 1.7 WHERE `entry`=18821;

/*  Quartermaster Davian Vaclav  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.2 WHERE `entry`=18822;

/*  Gan'arg Sapper  */
UPDATE `creature_template` SET `maxgold` = 205 WHERE `entry`=18827;

/*  Hellfire Warder  */
UPDATE `creature_template` SET `rank` = 1, `DamageModifier` = 19.1292, `HealthModifier` = 32.0 WHERE `entry`=18829;

/*  Cabal Fanatic  */
UPDATE `creature_template` SET `DamageModifier` = 4.54775 WHERE `entry`=18830;

/*  High King Maulgar  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 42.5323, `HealthModifier` = 100.0 WHERE `entry`=18831;

/*  Krosh Firehand  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 15.4171, `HealthModifier` = 26.8 WHERE `entry`=18832;

/*  Olm the Summoner  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 15.4171, `HealthModifier` = 26.8 WHERE `entry`=18834;

/*  Kiggler the Crazed  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 25.6825, `HealthModifier` = 20.2 WHERE `entry`=18835;

/*  Blindeye the Seer  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 4.16678 WHERE `entry`=18836;

/*  Nightlord Malphas  */
UPDATE `creature_template` SET `DamageModifier` = 6.23204, `HealthModifier` = 7.2 WHERE `entry`=18838;

/*  Sunspring Post Credit Marker  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 2.3 WHERE `entry`=18840;

/*  Laughing Skull Clan Ruins Credit Marker  */
UPDATE `creature_template` SET `HealthModifier` = 2.3 WHERE `entry`=18841;

/*  Garadar Credit Marker  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 2.3 WHERE `entry`=18842;

/*  Bleeding Hollow Clan Ruins Credit Marker  */
UPDATE `creature_template` SET `DamageModifier` = 2.53717, `HealthModifier` = 0.2 WHERE `entry`=18843;

/*  Furious Mr. Pinchy  */
UPDATE `creature_template` SET `DamageModifier` = 0.193807 WHERE `entry`=18846;

/*  Wild Fel Stalker  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `rank` = 1, `DamageModifier` = 5.17578, `HealthModifier` = 4.0 WHERE `entry`=18847;

/*  Malicious Instructor  */
UPDATE `creature_template` SET `DamageModifier` = 4.46959, `HealthModifier` = 12.4 WHERE `entry`=18848;

/*  Arcane Annihilator  */
UPDATE `creature_template` SET `DamageModifier` = 2.97825 WHERE `entry`=18856;

/*  Wrathbringer  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18858;

/*  Warp Aberration  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18865;

/*  Disembodied Vindicator  */
UPDATE `creature_template` SET `DamageModifier` = 0.203357 WHERE `entry`=18872;

/*  Disembodied Protector  */
UPDATE `creature_template` SET `DamageModifier` = 0.219205 WHERE `entry`=18873;

/*  Sundered Rumbler  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.9 WHERE `entry`=18881;

/*  Sundered Thunderer  */
UPDATE `creature_template` SET `minlevel` = 68, `HealthModifier` = 0.9 WHERE `entry`=18882;

/*  Farahlon Giant  */
UPDATE `creature_template` SET `DamageModifier` = 2.8165 WHERE `entry`=18885;

/*  Farahlon Breaker  */
UPDATE `creature_template` SET `DamageModifier` = 2.84244 WHERE `entry`=18886;

/*  Taretha  */
UPDATE `creature_template` SET `DamageModifier` = 4.55144, `HealthModifier` = 12.2 WHERE `entry`=18887;

/*  Spy To'gun  */
UPDATE `creature_template` SET `DamageModifier` = 1.72335 WHERE `entry`=18891;

/*  Broken Miner  */
UPDATE `creature_template` SET `HealthModifier` = 3.0 WHERE `entry`=18892;

/*  Spymistress Mehlisah Highcrown  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.5 WHERE `entry`=18893;

/*  Felguard Brute  */
UPDATE `creature_template` SET `DamageModifier` = 10.0517 WHERE `entry`=18894;

/*  Ear-Biter  */
UPDATE `creature_template` SET `DamageModifier` = 1.64214, `HealthModifier` = 1.0 WHERE `entry`=18895;

/*  Explodyne Fizzlespurt  */
UPDATE `creature_template` SET `HealthModifier` = 1.1 WHERE `entry`=18898;

/*  Torias  */
UPDATE `creature_template` SET `DamageModifier` = 0.210878, `HealthModifier` = 1.9 WHERE `entry`=18899;

/*  Tobin  */
UPDATE `creature_template` SET `DamageModifier` = 0.210878, `HealthModifier` = 1.9 WHERE `entry`=18900;

/*  Curzon  */
UPDATE `creature_template` SET `DamageModifier` = 0.210878 WHERE `entry`=18901;

/*  Emony  */
UPDATE `creature_template` SET `DamageModifier` = 0.295471, `HealthModifier` = 1.2 WHERE `entry`=18902;

/*  Audrid  */
UPDATE `creature_template` SET `DamageModifier` = 0.295471, `HealthModifier` = 1.7 WHERE `entry`=18903;

/*  Vision of the Forgotten  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=18904;

/*  Innkeeper Bazil Olof'tazun  */
UPDATE `creature_template` SET `DamageModifier` = 5.35012, `HealthModifier` = 2.3 WHERE `entry`=18905;

/*  Caregiver Ophera Windfury  */
UPDATE `creature_template` SET `DamageModifier` = 2.79362, `HealthModifier` = 0.7 WHERE `entry`=18906;

/*  Innkeeper Coryth Stoktron  */
UPDATE `creature_template` SET `DamageModifier` = 0.325612, `HealthModifier` = 1.4 WHERE `entry`=18907;

/*  Innkeeper Kerp  */
UPDATE `creature_template` SET `DamageModifier` = 2.54842, `HealthModifier` = 0.9 WHERE `entry`=18908;

/*  Zabra'jin Guard  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.6 WHERE `entry`=18909;

/*  Swamprat Guard  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.9 WHERE `entry`=18910;

/*  Juno Dufrain  */
UPDATE `creature_template` SET `subname` = 'Fishing Supplies', `DamageModifier` = 3.13916, `HealthModifier` = 0.3 WHERE `entry`=18911;

/*  Sporelok  */
UPDATE `creature_template` SET `DamageModifier` = 0.163042, `HealthModifier` = 0.3 WHERE `entry`=18912;

/*  Matron Tikkit  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.2 WHERE `entry`=18913;

/*  Foreman Dunaer  */
UPDATE `creature_template` SET `DamageModifier` = 0.210878, `HealthModifier` = 0.2 WHERE `entry`=18915;

/*  Valon  */
UPDATE `creature_template` SET `DamageModifier` = 0.210878 WHERE `entry`=18916;

/*  Chakaa  */
UPDATE `creature_template` SET `HealthModifier` = 3.2 WHERE `entry`=18917;

/*  Drysc  */
UPDATE `creature_template` SET `HealthModifier` = 13.1 WHERE `entry`=18918;

/*  Sayari  */
UPDATE `creature_template` SET `HealthModifier` = 0.6 WHERE `entry`=18919;

/*  Artificer Drenin  */
UPDATE `creature_template` SET `DamageModifier` = 0.210878, `HealthModifier` = 0.2 WHERE `entry`=18921;

/*  Telredor Guard  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.2 WHERE `entry`=18922;

/*  Artificer Andren  */
UPDATE `creature_template` SET `DamageModifier` = 0.210878, `HealthModifier` = 0.2 WHERE `entry`=18924;

/*  Solarium Agent  */
UPDATE `creature_template` SET `DamageModifier` = 4.17454, `HealthModifier` = 3.8 WHERE `entry`=18925;

/*  Sleyin  */
UPDATE `creature_template` SET `DamageModifier` = 1.59221, `HealthModifier` = 1.5 WHERE `entry`=18926;

/*  Kyrenna  */
UPDATE `creature_template` SET `DamageModifier` = 0.398053, `HealthModifier` = 0.6 WHERE `entry`=18929;

/*  Vlagga Freyfeather  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.6 WHERE `entry`=18930;

/*  Amish Wildhammer  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.0 WHERE `entry`=18931;

/*  Astromancer Trigger  */
UPDATE `creature_template` SET `DamageModifier` = 2.21136, `HealthModifier` = 0.2 WHERE `entry`=18932;

/*  Isfar  */
UPDATE `creature_template` SET `DamageModifier` = 2.29953, `HealthModifier` = 1.3 WHERE `entry`=18933;

/*  Durnholde Mage  */
UPDATE `creature_template` SET `DamageModifier` = 9.9399, `HealthModifier` = 2.7 WHERE `entry`=18934;

/*  Amerun Leafshade  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.0 WHERE `entry`=18937;

/*  Krexcil  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.0 WHERE `entry`=18938;

/*  Brubeck Stormfoot  */
UPDATE `creature_template` SET `DamageModifier` = 3.11877 WHERE `entry`=18939;

/*  Nutral  */
UPDATE `creature_template` SET `DamageModifier` = 2.56383, `HealthModifier` = 1.2 WHERE `entry`=18940;

/*  Innalia  */
UPDATE `creature_template` SET `DamageModifier` = 2.46972, `HealthModifier` = 1.0, `ManaModifier` = 0.8 WHERE `entry`=18942;

/*  Orebor Harborage Defender  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.5 WHERE `entry`=18943;

/*  Fel Soldier  */
UPDATE `creature_template` SET `DamageModifier` = 5.0, `HealthModifier` = 12.7 WHERE `entry`=18944;

/*  Pit Commander  */
UPDATE `creature_template` SET `DamageModifier` = 15.0 WHERE `entry`=18945;

/*  Infernal Siegebreaker  */
UPDATE `creature_template` SET `DamageModifier` = 6.01818 WHERE `entry`=18946;

/*  Solanin  */
UPDATE `creature_template` SET `DamageModifier` = 0.43776, `HealthModifier` = 0.6 WHERE `entry`=18947;

/*  Stormwind Soldier  */
UPDATE `creature_template` SET `minlevel` = 67, `DamageModifier` = 4.5 WHERE `entry`=18948;

/*  Stormwind Mage  */
UPDATE `creature_template` SET `maxlevel` = 69, `DamageModifier` = 4.5 WHERE `entry`=18949;

/*  Orgrimmar Grunt  */
UPDATE `creature_template` SET `minlevel` = 67, `DamageModifier` = 4.5 WHERE `entry`=18950;

/*  Erilia  */
UPDATE `creature_template` SET `DamageModifier` = 0.439534 WHERE `entry`=18951;

/*  Bonechewer Scavenger  */
UPDATE `creature_template` SET `maxgold` = 182 WHERE `entry`=18952;

/*  Unoke Tenderhoof  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.7, `ManaModifier` = 0.8 WHERE `entry`=18953;

/*  Sailor Melinan  */
UPDATE `creature_template` SET `DamageModifier` = 0.29184, `HealthModifier` = 0.6 WHERE `entry`=18954;

/*  Lakka  */
UPDATE `creature_template` SET `DamageModifier` = 2.2112, `HealthModifier` = 1.4 WHERE `entry`=18956;

/*  Innkeeper Grilka  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.0 WHERE `entry`=18957;

/*  Dod'ss  */
UPDATE `creature_template` SET `minlevel` = 61, `maxlevel` = 61, `DamageModifier` = 2.21466, `HealthModifier` = 0.2 WHERE `entry`=18959;

/*  Rungor  */
UPDATE `creature_template` SET `minlevel` = 65, `DamageModifier` = 2.0, `HealthModifier` = 0.4 WHERE `entry`=18960;

/*  Bar Talet  */
UPDATE `creature_template` SET `HealthModifier` = 1.3, `ArmorModifier` = 1.41093 WHERE `entry`=18962;

/*  Windroc Huntress  */
UPDATE `creature_template` SET `DamageModifier` = 1.60438 WHERE `entry`=18963;

/*  Injured Talbuk  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.6 WHERE `entry`=18964;

/*  Darnassian Archer  */
UPDATE `creature_template` SET `minlevel` = 67, `DamageModifier` = 4.5 WHERE `entry`=18965;

/*  Justinius the Harbinger  */
UPDATE `creature_template` SET `DamageModifier` = 4.5 WHERE `entry`=18966;

/*  Melgromm Highmountain  */
UPDATE `creature_template` SET `DamageModifier` = 4.5, `ManaModifier` = 15.9 WHERE `entry`=18969;

/*  Darkspear Axe Thrower  */
UPDATE `creature_template` SET `minlevel` = 67, `DamageModifier` = 4.5 WHERE `entry`=18970;

/*  Undercity Mage  */
UPDATE `creature_template` SET `minlevel` = 69, `maxlevel` = 69, `DamageModifier` = 4.5, `ManaModifier` = 9.8 WHERE `entry`=18971;

/*  Orgrimmar Shaman  */
UPDATE `creature_template` SET `minlevel` = 67, `DamageModifier` = 4.5, `HealthModifier` = 2.0 WHERE `entry`=18972;

/*  Z'kral  */
UPDATE `creature_template` SET `mingold` = 1011 WHERE `entry`=18974;

/*  Wrathguard  */
UPDATE `creature_template` SET `DamageModifier` = 2.66337, `maxgold` = 160 WHERE `entry`=18975;

/*  Felguard Destroyer  */
UPDATE `creature_template` SET `DamageModifier` = 1.39833 WHERE `entry`=18977;

/*  Heckling Fel Sprite  */
UPDATE `creature_template` SET `DamageModifier` = 0.281521, `maxgold` = 100 WHERE `entry`=18978;

/*  Doomwhisperer  */
UPDATE `creature_template` SET `maxgold` = 161 WHERE `entry`=18981;

/*  Sable Jaguar  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=18982;

/*  Blackfang Tarantula  */
UPDATE `creature_template` SET `DamageModifier` = 3.22982 WHERE `entry`=18983;

/*  Trag  */
UPDATE `creature_template` SET `minlevel` = 64, `maxlevel` = 64, `DamageModifier` = 2.28624, `HealthModifier` = 0.2 WHERE `entry`=18984;

/*  Seer Skaltesh  */
UPDATE `creature_template` SET `DamageModifier` = 0.363389, `HealthModifier` = 2.0 WHERE `entry`=18985;

/*  Ironforge Paladin  */
UPDATE `creature_template` SET `minlevel` = 67, `DamageModifier` = 4.5, `HealthModifier` = 2.0 WHERE `entry`=18986;

/*  Gaston  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 0.3 WHERE `entry`=18987;

/*  Baxter  */
UPDATE `creature_template` SET `DamageModifier` = 3.13916, `HealthModifier` = 1.8 WHERE `entry`=18988;

/*  Stonebreaker Guard  */
UPDATE `creature_template` SET `ArmorModifier` = 1.25093 WHERE `entry`=18989;

/*  Burko  */
UPDATE `creature_template` SET `DamageModifier` = 3.13916, `HealthModifier` = 0.3 WHERE `entry`=18990;

/*  Aresella  */
UPDATE `creature_template` SET `DamageModifier` = 3.13916, `HealthModifier` = 0.3 WHERE `entry`=18991;

/*  Naka  */
UPDATE `creature_template` SET `DamageModifier` = 3.13916, `HealthModifier` = 1.6 WHERE `entry`=18993;

/*  Infinite Executioner  */
UPDATE `creature_template` SET `DamageModifier` = 2.64887 WHERE `entry`=18994;

/*  Infinite Vanquisher  */
UPDATE `creature_template` SET `DamageModifier` = 2.29781 WHERE `entry`=18995;

/*  Windroc Hunter  */
UPDATE `creature_template` SET `DamageModifier` = 1.26939 WHERE `entry`=18996;

/*  Fallesh Sunfallow  */
UPDATE `creature_template` SET `DamageModifier` = 0.374089, `HealthModifier` = 2.1 WHERE `entry`=18997;

/*  Lursa Sunfallow  */
UPDATE `creature_template` SET `DamageModifier` = 3.31533, `HealthModifier` = 3.8 WHERE `entry`=18998;

/*  Allerian Defender  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.4 WHERE `entry`=18999;

/*  High Elf Ranger  */
UPDATE `creature_template` SET `minlevel` = 64, `DamageModifier` = 2.0, `HealthModifier` = 0.5 WHERE `entry`=19000;

/*  Talaara  */
UPDATE `creature_template` SET `DamageModifier` = 3.1114, `HealthModifier` = 1.3 WHERE `entry`=19001;

/*  Allerian Horseman  */
UPDATE `creature_template` SET `DamageModifier` = 2.36418, `HealthModifier` = 0.2 WHERE `entry`=19003;

/*  Vodesiin  */
UPDATE `creature_template` SET `DamageModifier` = 4.74462, `HealthModifier` = 1.7 WHERE `entry`=19004;

/*  Wrath Master  */
UPDATE `creature_template` SET `DamageModifier` = 10.0 WHERE `entry`=19005;

/*  Silvermoon Magister  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=19006;

/*  Gnomeregan Conjuror  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.5 WHERE `entry`=19007;

/*  Osrok the Immovable  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 2.0 WHERE `entry`=19011;

/*  Sparik  */
UPDATE `creature_template` SET `DamageModifier` = 2.96689, `HealthModifier` = 1.2 WHERE `entry`=19012;

/*  Vanteg  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 1.1 WHERE `entry`=19013;

/*  Ogir  */
UPDATE `creature_template` SET `DamageModifier` = 0.367061, `HealthModifier` = 2.8 WHERE `entry`=19014;

/*  Mathar G'ochar  */
UPDATE `creature_template` SET `DamageModifier` = 0.367061, `HealthModifier` = 1.9 WHERE `entry`=19015;

/*  Hellfire Familiar  */
UPDATE `creature_template` SET `DamageModifier` = 5.24748 WHERE `entry`=19016;

/*  Borto  */
UPDATE `creature_template` SET `DamageModifier` = 0.257399, `HealthModifier` = 1.7 WHERE `entry`=19017;

/*  Wilda Bearmane  */
UPDATE `creature_template` SET `maxlevel` = 66, `DamageModifier` = 0.387453, `HealthModifier` = 0.8 WHERE `entry`=19018;

/*  Luftasia  */
UPDATE `creature_template` SET `DamageModifier` = 0.387453, `HealthModifier` = 1.2 WHERE `entry`=19019;

/*  Matron Qualia  */
UPDATE `creature_template` SET `DamageModifier` = 0.367061, `HealthModifier` = 2.8 WHERE `entry`=19020;

/*  Nancila  */
UPDATE `creature_template` SET `DamageModifier` = 3.32394, `HealthModifier` = 1.3 WHERE `entry`=19021;

/*  Stabled Panther  */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 68, `DamageModifier` = 0.443995, `HealthModifier` = 1.2 WHERE `entry`=19022;

/*  Stabled Tallstrider  */
UPDATE `creature_template` SET `minlevel` = 60, `DamageModifier` = 0.420627, `HealthModifier` = 0.7 WHERE `entry`=19023;

/*  Stabled Boar  */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 68, `DamageModifier` = 0.467363 WHERE `entry`=19024;

/*  Stabled Bear  */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 68, `DamageModifier` = 0.420627, `HealthModifier` = 1.0 WHERE `entry`=19025;

/*  Stabled Raptor  */
UPDATE `creature_template` SET `DamageModifier` = 0.467363, `HealthModifier` = 0.4 WHERE `entry`=19026;

/*  Stabled Kurenai Lion  */
UPDATE `creature_template` SET `maxlevel` = 68, `DamageModifier` = 0.397259, `HealthModifier` = 1.2 WHERE `entry`=19027;

/*  Stabled Kurenai Panther  */
UPDATE `creature_template` SET `DamageModifier` = 0.397259, `HealthModifier` = 1.0 WHERE `entry`=19030;

/*  Nicole Bartlett  */
UPDATE `creature_template` SET `DamageModifier` = 0.464597, `HealthModifier` = 2.0 WHERE `entry`=19033;

/*  Mendorn  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.7 WHERE `entry`=19034;

/*  Wazat  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19035;

/*  Supply Officer Mills  */
UPDATE `creature_template` SET `DamageModifier` = 3.13916, `HealthModifier` = 0.3 WHERE `entry`=19038;

/*  Jump-a-tron 4000  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=19041;

/*  Leeli Longhaggle  */
UPDATE `creature_template` SET `DamageModifier` = 3.13916, `HealthModifier` = 0.3 WHERE `entry`=19042;

/*  Ahemen  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.2 WHERE `entry`=19043;

/*  Gruul the Dragonkiller  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 24.0457, `HealthModifier` = 450.0 WHERE `entry`=19044;

/*  Oloraak  */
UPDATE `creature_template` SET `DamageModifier` = 0.259483, `HealthModifier` = 1.2 WHERE `entry`=19045;

/*  Minalei  */
UPDATE `creature_template` SET `DamageModifier` = 0.346062, `HealthModifier` = 13.8 WHERE `entry`=19046;

/*  Lissaf  */
UPDATE `creature_template` SET `DamageModifier` = 0.259483, `HealthModifier` = 1.4 WHERE `entry`=19047;

/*  Stonebreaker Peon  */
UPDATE `creature_template` SET `minlevel` = 40, `HealthModifier` = 1.5, `ArmorModifier` = 1.5614 WHERE `entry`=19048;

/*  Karokka  */
UPDATE `creature_template` SET `DamageModifier` = 0.259483, `HealthModifier` = 1.4 WHERE `entry`=19049;

/*  Garul  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19050;

/*  Araac  */
UPDATE `creature_template` SET `DamageModifier` = 0.259483, `HealthModifier` = 0.7 WHERE `entry`=19051;

/*  Lorokeem  */
UPDATE `creature_template` SET `DamageModifier` = 0.30937 WHERE `entry`=19052;

/*  Fabian Lanzonelli  */
UPDATE `creature_template` SET `DamageModifier` = 3.13916, `HealthModifier` = 0.3 WHERE `entry`=19053;

/*  Windroc Matriarch  */
UPDATE `creature_template` SET `DamageModifier` = 4.17919 WHERE `entry`=19055;

/*  Cecil Meyers  */
UPDATE `creature_template` SET `DamageModifier` = 3.13916, `HealthModifier` = 1.7 WHERE `entry`=19056;

/*  Hamanar  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.3 WHERE `entry`=19063;

/*  Leatei  */
UPDATE `creature_template` SET `DamageModifier` = 0.512106, `HealthModifier` = 4.0 WHERE `entry`=19064;

/*  Inessera  */
UPDATE `creature_template` SET `DamageModifier` = 0.346062, `HealthModifier` = 9.4 WHERE `entry`=19065;

/*  Crystalhide Colossus  */
UPDATE `creature_template` SET `DamageModifier` = 2.3577 WHERE `entry`=19066;

/*  Garadar Wolf Rider  */
UPDATE `creature_template` SET `DamageModifier` = 3.61812 WHERE `entry`=19068;

/*  Telaari Elekk Rider  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.4 WHERE `entry`=19071;

/*  Nibblet  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 0.3 WHERE `entry`=19073;

/*  Skreah  */
UPDATE `creature_template` SET `DamageModifier` = 0.259483, `HealthModifier` = 0.5 WHERE `entry`=19074;

/*  Skettis Outcast  */
UPDATE `creature_template` SET `DamageModifier` = 0.259483, `HealthModifier` = 1.4 WHERE `entry`=19075;

/*  High Elf Refugee  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 0.8 WHERE `entry`=19076;

/*  Dwarf Refugee  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 1.8 WHERE `entry`=19077;

/*  Broken Refugee  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 2.3 WHERE `entry`=19120;

/*  Ohlorn Farstrider  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=19133;

/*  Flamewaker Imp  */
UPDATE `creature_template` SET `DamageModifier` = 0.365373, `ArmorModifier` = 0.635766, `maxgold` = 99 WHERE `entry`=19136;

/*  "Shotgun" Jones  */
UPDATE `creature_template` SET `DamageModifier` = 1.72335, `HealthModifier` = 0.8 WHERE `entry`=19137;

/*  Anchorite Attendant  */
UPDATE `creature_template` SET `DamageModifier` = 0.346062 WHERE `entry`=19138;

/*  Nagrand Target Dummy  */
UPDATE `creature_template` SET `DamageModifier` = 0.387159, `HealthModifier` = 1.4 WHERE `entry`=19139;

/*  Kurenai Pitfighter  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.7 WHERE `entry`=19141;

/*  Aldor Anchorite  */
UPDATE `creature_template` SET `DamageModifier` = 0.189478, `HealthModifier` = 1.1 WHERE `entry`=19142;

/*  Mag'har Refugee  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 2.0 WHERE `entry`=19144;

/*  Allerian Peasant  */
UPDATE `creature_template` SET `DamageModifier` = 0.31601 WHERE `entry`=19147;

/*  Telaari Citizen  */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 68, `DamageModifier` = 0.273899, `HealthModifier` = 1.1 WHERE `entry`=19149;

/*  Orc Refugee  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 2.1 WHERE `entry`=19150;

/*  Captured Halaani Blood Knight  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.5 WHERE `entry`=19151;

/*  Interrogator Khan  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 1.0 WHERE `entry`=19152;

/*  Aldor Neophyte  */
UPDATE `creature_template` SET `DamageModifier` = 0.189478, `HealthModifier` = 1.2 WHERE `entry`=19153;

/*  Soot  */
UPDATE `creature_template` SET `DamageModifier` = 0.245068, `HealthModifier` = 0.2 WHERE `entry`=19154;

/*  Sporeling Refugee  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 2.3 WHERE `entry`=19155;

/*  Telaari Jailor  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.9 WHERE `entry`=19156;

/*  Captured Halaani Vindicator  */
UPDATE `creature_template` SET `HealthModifier` = 0.2 WHERE `entry`=19157;

/*  Allerian Peasant Cosmetic  */
UPDATE `creature_template` SET `DamageModifier` = 0.31601, `HealthModifier` = 2.2 WHERE `entry`=19159;

/*  Neophyte Combatant  */
UPDATE `creature_template` SET `maxlevel` = 64, `DamageModifier` = 0.232916, `HealthModifier` = 0.8 WHERE `entry`=19161;

/*  Lost One Refugee  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 1.3 WHERE `entry`=19162;

/*  Veteran Vindicator  */
UPDATE `creature_template` SET `DamageModifier` = 0.189478 WHERE `entry`=19165;

/*  Tempest-Forge Patroller  */
UPDATE `creature_template` SET `DamageModifier` = 7.55611, `HealthModifier` = 4.8 WHERE `entry`=19166;

/*  Bloodwarder Slayer  */
UPDATE `creature_template` SET `DamageModifier` = 6.24385, `HealthModifier` = 2.9 WHERE `entry`=19167;

/*  Sunseeker Astromage  */
UPDATE `creature_template` SET `DamageModifier` = 6.7282, `HealthModifier` = 5.0 WHERE `entry`=19168;

/*  Peasant Refugee  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 2.4 WHERE `entry`=19170;

/*  Seymour  */
UPDATE `creature_template` SET `DamageModifier` = 0.273899, `HealthModifier` = 0.9 WHERE `entry`=19180;

/*  Lemla Hopewing  */
UPDATE `creature_template` SET `DamageModifier` = 0.33804, `HealthModifier` = 1.5 WHERE `entry`=19181;

/*  Shaarubo  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 2.1 WHERE `entry`=19182;

/*  Mildred Fletcher  */
UPDATE `creature_template` SET `minlevel` = 11, `maxlevel` = 11, `DamageModifier` = 4.00587, `HealthModifier` = 1.4 WHERE `entry`=19184;

/*  Jack Trapper  */
UPDATE `creature_template` SET `DamageModifier` = 0.174721, `HealthModifier` = 2.2 WHERE `entry`=19185;

/*  Kylene  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 1.5 WHERE `entry`=19186;

/*  Darmari  */
UPDATE `creature_template` SET `DamageModifier` = 0.325612, `HealthModifier` = 2.5 WHERE `entry`=19187;

/*  Raging Colossus  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 2.9, `mingold` = 784, `maxgold` = 1029 WHERE `entry`=19188;

/*  Quillfang Skitterer  */
UPDATE `creature_template` SET `minlevel` = 61 WHERE `entry`=19189;

/*  Fel Handler  */
UPDATE `creature_template` SET `DamageModifier` = 2.55239, `maxgold` = 160 WHERE `entry`=19190;

/*  Arazzius the Cruel  */
UPDATE `creature_template` SET `DamageModifier` = 5.37924 WHERE `entry`=19191;

/*  High Exarch Commodus  */
UPDATE `creature_template` SET `DamageModifier` = 0.189478, `HealthModifier` = 0.9 WHERE `entry`=19193;

/*  Ernie Packwell  */
UPDATE `creature_template` SET `DamageModifier` = 0.337539, `HealthModifier` = 2.3 WHERE `entry`=19194;

/*  Jim Saltit  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 2.1 WHERE `entry`=19195;

/*  Cro Threadstrong  */
UPDATE `creature_template` SET `DamageModifier` = 0.350575, `HealthModifier` = 2.3 WHERE `entry`=19196;

/*  Eral  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 2.2 WHERE `entry`=19197;

/*  Shape of the Beast  */
UPDATE `creature_template` SET `DamageModifier` = 1.42591, `HealthModifier` = 1.4 WHERE `entry`=19200;

/*  Mountain Gronn  */
UPDATE `creature_template` SET `maxlevel` = 67, `DamageModifier` = 3.28723 WHERE `entry`=19201;

/*  Emissary Mordin  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 2.3 WHERE `entry`=19202;

/*  Syth Fire Elemental  */
UPDATE `creature_template` SET `DamageModifier` = 2.47589 WHERE `entry`=19203;

/*  Syth Frost Elemental  */
UPDATE `creature_template` SET `DamageModifier` = 2.47589 WHERE `entry`=19204;

/*  Syth Arcane Elemental  */
UPDATE `creature_template` SET `DamageModifier` = 2.5 WHERE `entry`=19205;

/*  Syth Shadow Elemental  */
UPDATE `creature_template` SET `DamageModifier` = 2.47589 WHERE `entry`=19206;

/*  Infernal Hound  */
UPDATE `creature_template` SET `DamageModifier` = 2.39019, `ArmorModifier` = 1.43661 WHERE `entry`=19207;

/*  Summoned Cabal Acolyte  */
UPDATE `creature_template` SET `DamageModifier` = 4.54251 WHERE `entry`=19208;

/*  Summoned Cabal Deathsworn  */
UPDATE `creature_template` SET `DamageModifier` = 3.6505 WHERE `entry`=19209;

/*  Fel Cannon: Fear Target  */
UPDATE `creature_template` SET `DamageModifier` = 0.180455, `HealthModifier` = 1.3 WHERE `entry`=19211;

/*  Fel Cannon: Hate Target  */
UPDATE `creature_template` SET `DamageModifier` = 0.180455, `HealthModifier` = 1.3 WHERE `entry`=19212;

/*  Eiin  */
UPDATE `creature_template` SET `DamageModifier` = 0.351542, `HealthModifier` = 2.9 WHERE `entry`=19213;

/*  Hand of the Highlord  */
UPDATE `creature_template` SET `rank` = 3, `DamageModifier` = 2.21136, `HealthModifier` = 28.9 WHERE `entry`=19214;

/*  Grand Anchorite Almonen  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 0.203498, `ManaModifier` = 1.1 WHERE `entry`=19216;

/*  Ravandwyr  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=19217;

/*  Gatewatcher Gyro-Kill  */
UPDATE `creature_template` SET `DamageModifier` = 12.7079, `HealthModifier` = 17.9 WHERE `entry`=19218;

/*  Mechano-Lord Capacitus  */
UPDATE `creature_template` SET `DamageModifier` = 12.8272, `HealthModifier` = 23.6 WHERE `entry`=19219;

/*  Pathaleon the Calculator  */
UPDATE `creature_template` SET `DamageModifier` = 6.02052, `HealthModifier` = 26.6, `ManaModifier` = 9.5 WHERE `entry`=19220;

/*  Nethermancer Sepethrea  */
UPDATE `creature_template` SET `DamageModifier` = 11.1019, `HealthModifier` = 29.5, `ManaModifier` = 9.5 WHERE `entry`=19221;

/*  Granny Smith  */
UPDATE `creature_template` SET `DamageModifier` = 0.174721, `HealthModifier` = 2.1 WHERE `entry`=19223;

/*  Void Portal  */
UPDATE `creature_template` SET `HealthModifier` = 2.3 WHERE `entry`=19224;

/*  Void Traveler  */
UPDATE `creature_template` SET `DamageModifier` = 1.48505 WHERE `entry`=19226;

/*  Griftah  */
UPDATE `creature_template` SET `DamageModifier` = 0.363389, `HealthModifier` = 1.8 WHERE `entry`=19227;

/*  Perry Gatner  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 3.0 WHERE `entry`=19228;

/*  Commander Duron  */
UPDATE `creature_template` SET `DamageModifier` = 2.25569, `HealthModifier` = 0.4 WHERE `entry`=19229;

/*  Mechanar Crusher  */
UPDATE `creature_template` SET `DamageModifier` = 5.7194 WHERE `entry`=19231;

/*  Innkeeper Haelthol  */
UPDATE `creature_template` SET `DamageModifier` = 0.272541 WHERE `entry`=19232;

/*  Flying Voidwalker  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=19233;

/*  Yurial Soulwater  */
UPDATE `creature_template` SET `DamageModifier` = 0.386816, `HealthModifier` = 0.3 WHERE `entry`=19234;

/*  Amshesha Stilldark  */
UPDATE `creature_template` SET `DamageModifier` = 0.386816, `HealthModifier` = 3.2 WHERE `entry`=19235;

/*  Quelama Lightblade  */
UPDATE `creature_template` SET `DamageModifier` = 0.386816, `HealthModifier` = 2.0 WHERE `entry`=19236;

/*  Urumir Stavebright  */
UPDATE `creature_template` SET `DamageModifier` = 0.363389, `HealthModifier` = 2.0 WHERE `entry`=19238;

/*  Mahir Redstroke  */
UPDATE `creature_template` SET `DamageModifier` = 0.259535, `HealthModifier` = 2.0 WHERE `entry`=19239;

/*  Selanam the Blade  */
UPDATE `creature_template` SET `DamageModifier` = 0.221271, `HealthModifier` = 0.6 WHERE `entry`=19240;

/*  Edward the Temporary  */
UPDATE `creature_template` SET `DamageModifier` = 2.74385 WHERE `entry`=19241;

/*  Olodam Farhollow  */
UPDATE `creature_template` SET `DamageModifier` = 2.8587, `HealthModifier` = 1.8 WHERE `entry`=19242;

/*  Nalama the Merchant  */
UPDATE `creature_template` SET `DamageModifier` = 0.272541, `HealthModifier` = 1.3 WHERE `entry`=19243;

/*  Trader Endernor  */
UPDATE `creature_template` SET `DamageModifier` = 0.363389, `HealthModifier` = 2.1 WHERE `entry`=19244;

/*  Vinemaster Alamaro  */
UPDATE `creature_template` SET `DamageModifier` = 0.386816, `HealthModifier` = 3.7 WHERE `entry`=19245;

/*  Berudan Keysworn  */
UPDATE `creature_template` SET `DamageModifier` = 0.272541, `HealthModifier` = 1.6 WHERE `entry`=19246;

/*  Enchanter Salias  */
UPDATE `creature_template` SET `DamageModifier` = 0.363389, `HealthModifier` = 0.4 WHERE `entry`=19248;

/*  Enchantress Metura  */
UPDATE `creature_template` SET `DamageModifier` = 3.31087, `HealthModifier` = 0.3 WHERE `entry`=19249;

/*  Enchanter Aeldron  */
UPDATE `creature_template` SET `minlevel` = 65, `maxlevel` = 66, `DamageModifier` = 0.27992, `HealthModifier` = 1.7, `ManaModifier` = 0.9 WHERE `entry`=19250;

/*  Enchantress Volali  */
UPDATE `creature_template` SET `DamageModifier` = 3.05153, `HealthModifier` = 1.9 WHERE `entry`=19251;

/*  High Enchanter Bardolan  */
UPDATE `creature_template` SET `DamageModifier` = 3.12754, `HealthModifier` = 2.6 WHERE `entry`=19252;

/*  Lieutenant General Orion  */
UPDATE `creature_template` SET `DamageModifier` = 2.25569, `HealthModifier` = 0.2 WHERE `entry`=19253;

/*  Warlord Dar'toon  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.5 WHERE `entry`=19254;

/*  General Krakork  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 13.4 WHERE `entry`=19255;

/*  Sergeant Shatterskull  */
UPDATE `creature_template` SET `DamageModifier` = 4.12262, `HealthModifier` = 3.1 WHERE `entry`=19256;

/*  Arcanist Torseldori  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.0 WHERE `entry`=19257;

/*  Bloodmage  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 8.4 WHERE `entry`=19258;

/*  Infernal Warbringer  */
UPDATE `creature_template` SET `maxgold` = 182 WHERE `entry`=19261;

/*  Force-Commander Gorax  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19264;

/*  Scout Makha  */
UPDATE `creature_template` SET `DamageModifier` = 2.53717, `HealthModifier` = 0.8 WHERE `entry`=19265;

/*  Private Imarion  */
UPDATE `creature_template` SET `DamageModifier` = 2.53717, `HealthModifier` = 0.2 WHERE `entry`=19266;

/*  Bleeding Hollow Vizier  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=19268;

/*  Shattrath Saul  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 0.3 WHERE `entry`=19270;

/*  Albert Quarksprocket  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 1.9 WHERE `entry`=19271;

/*  Harbinger Argomen  */
UPDATE `creature_template` SET `DamageModifier` = 1.72335, `HealthModifier` = 1.1 WHERE `entry`=19272;

/*  Forward Commander To'arch  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.5 WHERE `entry`=19273;

/*  Ushtug the Temporary  */
UPDATE `creature_template` SET `DamageModifier` = 2.74385, `HealthModifier` = 0.8 WHERE `entry`=19274;

/*  Armored Wyvern Destroyer  */
UPDATE `creature_template` SET `DamageModifier` = 3.31058, `HealthModifier` = 0.7 WHERE `entry`=19275;

/*  Legion Antenna: Spite  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=19276;

/*  Legion Antenna: Rage  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=19277;

/*  Legion Antenna: Hate  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=19278;

/*  Legion Antenna: Fear  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=19279;

/*  Red Hawkstrider  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19280;

/*  Swift Pink Hawkstrider  */
UPDATE `creature_template` SET `ArmorModifier` = 1.5163 WHERE `entry`=19281;

/*  Vagrant  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 1.8 WHERE `entry`=19283;

/*  Invading Felguard  */
UPDATE `creature_template` SET `DamageModifier` = 1.47248, `HealthModifier` = 1.2 WHERE `entry`=19284;

/*  Invading Infernal  */
UPDATE `creature_template` SET `DamageModifier` = 0.313672 WHERE `entry`=19285;

/*  Invading Fel Stalker  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 1.2 WHERE `entry`=19286;

/*  Invading Voidwalker  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 1.0 WHERE `entry`=19287;

/*  Dreadknight  */
UPDATE `creature_template` SET `DamageModifier` = 1.31949, `HealthModifier` = 9.6 WHERE `entry`=19288;

/*  Vagabond  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 2.4 WHERE `entry`=19289;

/*  Invading Anguisher  */
UPDATE `creature_template` SET `DamageModifier` = 0.337539, `HealthModifier` = 0.9 WHERE `entry`=19290;

/*  Legion Transporter: Alpha  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=19291;

/*  Legion Transporter: Beta  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=19292;

/*  Tola'thion  */
UPDATE `creature_template` SET `DamageModifier` = 2.3085, `HealthModifier` = 0.8 WHERE `entry`=19293;

/*  Earthbinder Galandria Nightbreeze  */
UPDATE `creature_template` SET `HealthModifier` = 1.2 WHERE `entry`=19294;

/*  Innkeeper Biribi  */
UPDATE `creature_template` SET `DamageModifier` = 0.257399, `HealthModifier` = 1.5 WHERE `entry`=19296;

/*  Deathwhisperer  */
UPDATE `creature_template` SET `DamageModifier` = 2.87996 WHERE `entry`=19299;

/*  Blackheart the Inciter  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=19300;

/*  Blackheart the Inciter  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=19301;

/*  Blackheart the Inciter  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=19302;

/*  Blackheart the Inciter  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=19303;

/*  Blackheart the Inciter  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=19304;

/*  Goliathon  */
UPDATE `creature_template` SET `DamageModifier` = 2.22146 WHERE `entry`=19305;

/*  Mana Leech  */
UPDATE `creature_template` SET `DamageModifier` = 1.77232 WHERE `entry`=19306;

/*  Nexus Terror  */
UPDATE `creature_template` SET `DamageModifier` = 4.44871, `HealthModifier` = 5.2 WHERE `entry`=19307;

/*  Marshal Isildor  */
UPDATE `creature_template` SET `DamageModifier` = 1.68919, `HealthModifier` = 1.7 WHERE `entry`=19308;

/*  Sergeant Altumus  */
UPDATE `creature_template` SET `DamageModifier` = 2.48056, `HealthModifier` = 1.2 WHERE `entry`=19309;

/*  Forward Commander Kingston  */
UPDATE `creature_template` SET `DamageModifier` = 2.40845, `HealthModifier` = 1.2 WHERE `entry`=19310;

/*  Portal Hound  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `ArmorModifier` = 1.44853 WHERE `entry`=19311;

/*  Drillmaster Zurok  */
UPDATE `creature_template` SET `DamageModifier` = 2.47365 WHERE `entry`=19312;

/*  Supply Officer Shandria  */
UPDATE `creature_template` SET `DamageModifier` = 2.25386, `HealthModifier` = 0.2 WHERE `entry`=19314;

/*  Supply Officer Isabel  */
UPDATE `creature_template` SET `DamageModifier` = 2.3085, `HealthModifier` = 0.7 WHERE `entry`=19315;

/*  Field Marshal Rohamus  */
UPDATE `creature_template` SET `DamageModifier` = 1.61082, `HealthModifier` = 0.3 WHERE `entry`=19316;

/*  Drek'Gol  */
UPDATE `creature_template` SET `DamageModifier` = 2.75606, `HealthModifier` = 1.5 WHERE `entry`=19317;

/*  Gromden  */
UPDATE `creature_template` SET `DamageModifier` = 1.72335, `HealthModifier` = 2.0 WHERE `entry`=19318;

/*  Innkeeper Darg Bloodclaw  */
UPDATE `creature_template` SET `DamageModifier` = 0.210878, `HealthModifier` = 0.5 WHERE `entry`=19319;

/*  Argent Protector  */
UPDATE `creature_template` SET `HealthModifier` = 0.6 WHERE `entry`=19320;

/*  Quartermaster Endarin  */
UPDATE `creature_template` SET `subname` = 'Aldor: Quartermaster', `DamageModifier` = 0.189478 WHERE `entry`=19321;

/*  Argent Guardian  */
UPDATE `creature_template` SET `HealthModifier` = 0.6 WHERE `entry`=19322;

/*  Armored Gryphon Destroyer  */
UPDATE `creature_template` SET `HealthModifier` = 0.3 WHERE `entry`=19324;

/*  Legion Antenna: Oblivion  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=19326;

/*  Legion Antenna: Gehenna  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=19328;

/*  Legion Antenna: Mageddon  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=19329;

/*  Lisrythe Bloodwatch  */
UPDATE `creature_template` SET `DamageModifier` = 0.237141, `HealthModifier` = 2.0 WHERE `entry`=19330;

/*  Quartermaster Enuril  */
UPDATE `creature_template` SET `subname` = 'Scryers: Quartermaster', `DamageModifier` = 0.363463, `HealthModifier` = 2.0 WHERE `entry`=19331;

/*  Stone Guard Ambelan  */
UPDATE `creature_template` SET `DamageModifier` = 2.26901, `HealthModifier` = 0.7 WHERE `entry`=19332;

/*  Grokom Deatheye  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=19333;

/*  Void Spawner XL  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=19336;

/*  Aldor Marksman  */
UPDATE `creature_template` SET `DamageModifier` = 0.189478 WHERE `entry`=19337;

/*  L'lura Goldspun  */
UPDATE `creature_template` SET `DamageModifier` = 0.272541, `HealthModifier` = 0.7 WHERE `entry`=19338;

/*  Korthul  */
UPDATE `creature_template` SET `HealthModifier` = 1.1 WHERE `entry`=19339;

/*  Mi'irku Farstep  */
UPDATE `creature_template` SET `DamageModifier` = 2.2457, `HealthModifier` = 0.7 WHERE `entry`=19340;

/*  Grutah  */
UPDATE `creature_template` SET `DamageModifier` = 0.210878, `HealthModifier` = 0.8 WHERE `entry`=19341;

/*  Legassi  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.2 WHERE `entry`=19344;

/*  Kalara  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=19345;

/*  Harbinger Erothem  */
UPDATE `creature_template` SET `DamageModifier` = 1.72335, `HealthModifier` = 0.5 WHERE `entry`=19346;

/*  Targrom  */
UPDATE `creature_template` SET `HealthModifier` = 1.2 WHERE `entry`=19348;

/*  Daggle Ironshaper  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=19351;

/*  Dreg Cloudsweeper  */
UPDATE `creature_template` SET `HealthModifier` = 1.2 WHERE `entry`=19352;

/*  Wildhammer Guard  */
UPDATE `creature_template` SET `DamageModifier` = 1.64214, `HealthModifier` = 1.1, `mingold` = 584, `maxgold` = 767 WHERE `entry`=19353;

/*  Arzeth the Merciless  */
UPDATE `creature_template` SET `DamageModifier` = 2.93769 WHERE `entry`=19354;

/*  Legion Transporter: Alpha (Alliance)  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=19358;

/*  Legion Transporter: Beta (Alliance)  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=19359;

/*  Naladu  */
UPDATE `creature_template` SET `DamageModifier` = 3.32742, `HealthModifier` = 1.9 WHERE `entry`=19361;

/*  Kor'kron Defender  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 2.0 WHERE `entry`=19362;

/*  Sergeant Dalton  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 1.3 WHERE `entry`=19363;

/*  Kor'kron Rider  */
UPDATE `creature_template` SET `HealthModifier` = 1.2 WHERE `entry`=19364;

/*  Argent Bowman  */
UPDATE `creature_template` SET `HealthModifier` = 0.6 WHERE `entry`=19365;

/*  Argent Hunter  */
UPDATE `creature_template` SET `HealthModifier` = 0.6 WHERE `entry`=19366;

/*  "Screaming" Screed Luckheed  */
UPDATE `creature_template` SET `DamageModifier` = 2.26901, `HealthModifier` = 0.6 WHERE `entry`=19367;

/*  Crinn Pathfinder  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=19368;

/*  Celie Steelwing  */
UPDATE `creature_template` SET `HealthModifier` = 0.7 WHERE `entry`=19369;

/*  Ordinn Thunderfist  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=19370;

/*  Dalin Stouthammer  */
UPDATE `creature_template` SET `HealthModifier` = 0.9 WHERE `entry`=19371;

/*  Oran Blusterbrew  */
UPDATE `creature_template` SET `HealthModifier` = 1.1 WHERE `entry`=19372;

/*  Mari Stonehand  */
UPDATE `creature_template` SET `DamageModifier` = 0.177581 WHERE `entry`=19373;

/*  Honor Hold Target Dummy Tower  */
UPDATE `creature_template` SET `HealthModifier` = 2.1 WHERE `entry`=19376;

/*  Neophyte Nemarn  */
UPDATE `creature_template` SET `DamageModifier` = 0.189478, `HealthModifier` = 0.6 WHERE `entry`=19377;

/*  Anchorite Nindumen  */
UPDATE `creature_template` SET `DamageModifier` = 3.31533, `HealthModifier` = 2.4 WHERE `entry`=19378;

/*  Sky'ree  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19379;

/*  Guard Untula  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.2 WHERE `entry`=19380;

/*  Flame Wave  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 0.180455, `HealthModifier` = 1.3 WHERE `entry`=19381;

/*  Wildhammer Gryphon Rider  */
UPDATE `creature_template` SET `DamageModifier` = 0.180455, `HealthModifier` = 1.3 WHERE `entry`=19382;

/*  Captured Gnome  */
UPDATE `creature_template` SET `minlevel` = 6, `maxlevel` = 6, `DamageModifier` = 0.274813, `HealthModifier` = 44.2, `ArmorModifier` = 0.121212 WHERE `entry`=19383;

/*  Wildhammer Scout  */
UPDATE `creature_template` SET `DamageModifier` = 0.193807, `HealthModifier` = 0.2 WHERE `entry`=19384;

/*  Lord Marshal Raynor  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 0.2 WHERE `entry`=19385;

/*  Stormwind Marshal  */
UPDATE `creature_template` SET `DamageModifier` = 0.210878, `HealthModifier` = 0.2 WHERE `entry`=19386;

/*  Wildhammer Stronghold Target Dummy Left  */
UPDATE `creature_template` SET `DamageModifier` = 0.326302, `HealthModifier` = 2.1 WHERE `entry`=19387;

/*  Wildhammer Stronghold Target Dummy Right  */
UPDATE `creature_template` SET `DamageModifier` = 0.326302, `HealthModifier` = 2.1 WHERE `entry`=19388;

/*  Lair Brute  */
UPDATE `creature_template` SET `DamageModifier` = 39.0781, `HealthModifier` = 40.4 WHERE `entry`=19389;

/*  Mounted Neophyte  */
UPDATE `creature_template` SET `DamageModifier` = 0.189478, `HealthModifier` = 0.5 WHERE `entry`=19390;

/*  Felguard Lieutenant  */
UPDATE `creature_template` SET `DamageModifier` = 1.66529 WHERE `entry`=19391;

/*  Watch Commander Leonus  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 1.0 WHERE `entry`=19392;

/*  Fear Controller  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 1.3 WHERE `entry`=19393;

/*  Bron Goldhammer  */
UPDATE `creature_template` SET `DamageModifier` = 0.245068, `HealthModifier` = 0.6 WHERE `entry`=19395;

/*  Mo'arg Overseer  */
UPDATE `creature_template` SET `DamageModifier` = 2.49097 WHERE `entry`=19397;

/*  Gan'arg Peon  */
UPDATE `creature_template` SET `DamageModifier` = 2.43102 WHERE `entry`=19398;

/*  Fel Cannon  */
UPDATE `creature_template` SET `DamageModifier` = 2.49097 WHERE `entry`=19399;

/*  Fel Reaver Sentry  */
UPDATE `creature_template` SET `DamageModifier` = 12.6211 WHERE `entry`=19400;

/*  Wing Commander Brack  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=19401;

/*  Thunder Bluff Huntsman  */
UPDATE `creature_template` SET `DamageModifier` = 0.210878, `HealthModifier` = 0.4 WHERE `entry`=19406;

/*  Azuremyst Vindicator  */
UPDATE `creature_template` SET `DamageModifier` = 0.210878 WHERE `entry`=19407;

/*  Maiden of Pain  */
UPDATE `creature_template` SET `maxgold` = 185 WHERE `entry`=19408;

/*  Wing Commander Dabir'ee  */
UPDATE `creature_template` SET `DamageModifier` = 2.40845, `HealthModifier` = 1.0 WHERE `entry`=19409;

/*  D'ore  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 2.51979, `HealthModifier` = 1.3 WHERE `entry`=19412;

/*  Shattered Hand Mage  */
UPDATE `creature_template` SET `HealthModifier` = 1.0, `ArmorModifier` = 0.65829 WHERE `entry`=19413;

/*  Ramdor the Mad  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.9 WHERE `entry`=19417;

/*  Crystalhide Shardling  */
UPDATE `creature_template` SET `DamageModifier` = 0.425158 WHERE `entry`=19418;

/*  Goliathon Shardling  */
UPDATE `creature_template` SET `maxlevel` = 63, `DamageModifier` = 2.76716 WHERE `entry`=19420;

/*  Bleeding Hollow Necrolyte  */
UPDATE `creature_template` SET `maxgold` = 184 WHERE `entry`=19422;

/*  Bleeding Hollow Worg  */
UPDATE `creature_template` SET `DamageModifier` = 0.418056 WHERE `entry`=19423;

/*  Bleeding Hollow Tormentor  */
UPDATE `creature_template` SET `maxgold` = 184 WHERE `entry`=19424;

/*  Orgrimmar Peon  */
UPDATE `creature_template` SET `DamageModifier` = 0.326302, `HealthModifier` = 1.2 WHERE `entry`=19425;

/*  Peon Overseer  */
UPDATE `creature_template` SET `maxlevel` = 56, `DamageModifier` = 0.337077, `HealthModifier` = 2.2 WHERE `entry`=19426;

/*  Voidwalker Summoner  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=19427;

/*  Cobalt Serpent  */
UPDATE `creature_template` SET `DamageModifier` = 4.93569 WHERE `entry`=19428;

/*  Avian Darkhawk  */
UPDATE `creature_template` SET `minlevel` = 67, `maxlevel` = 67, `DamageModifier` = 4.53464 WHERE `entry`=19429;

/*  Injured Grunt  */
UPDATE `creature_template` SET `maxlevel` = 59, `DamageModifier` = 0.343988, `HealthModifier` = 2.2 WHERE `entry`=19432;

/*  Dreadcaller  */
UPDATE `creature_template` SET `maxgold` = 161 WHERE `entry`=19434;

/*  Dark Cleric Malod  */
UPDATE `creature_template` SET `DamageModifier` = 0.270752, `HealthModifier` = 0.7 WHERE `entry`=19435;

/*  Supply Master Broog  */
UPDATE `creature_template` SET `DamageModifier` = 0.210878, `HealthModifier` = 0.5 WHERE `entry`=19436;

/*  Image of Erozion  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=19438;

/*  Eye of Grillok  */
UPDATE `creature_template` SET `DamageModifier` = 0.101484, `HealthModifier` = 0.2 WHERE `entry`=19440;

/*  Worg Master Kruush  */
UPDATE `creature_template` SET `HealthModifier` = 0.7 WHERE `entry`=19442;

/*  Tagar Spinebreaker  */
UPDATE `creature_template` SET `DamageModifier` = 5.36038 WHERE `entry`=19443;

/*  Peasant Worker  */
UPDATE `creature_template` SET `DamageModifier` = 0.337077, `HealthModifier` = 1.4 WHERE `entry`=19444;

/*  Wounded Soldier  */
UPDATE `creature_template` SET `DamageModifier` = 0.31601, `HealthModifier` = 2.2 WHERE `entry`=19445;

/*  Operations Officer  */
UPDATE `creature_template` SET `DamageModifier` = 0.31601, `HealthModifier` = 2.2 WHERE `entry`=19446;

/*  Brother Daniels  */
UPDATE `creature_template` SET `DamageModifier` = 0.425501, `HealthModifier` = 2.2 WHERE `entry`=19447;

/*  Thunderlord Grunt  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=19449;

/*  Pol Snowhoof  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 1.0 WHERE `entry`=19450;

/*  Quartermaster Gorman  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 1.8 WHERE `entry`=19451;

/*  Quartermaster Drake  */
UPDATE `creature_template` SET `DamageModifier` = 0.210878, `HealthModifier` = 0.4 WHERE `entry`=19452;

/*  Nurse Judith  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 2.3 WHERE `entry`=19455;

/*  Whitebark's Spirit  */
UPDATE `creature_template` SET `DamageModifier` = 1.4424 WHERE `entry`=19456;

/*  Grillok "Darkeye"  */
UPDATE `creature_template` SET `DamageModifier` = 1.65978 WHERE `entry`=19457;

/*  Ripp  */
UPDATE `creature_template` SET `DamageModifier` = 0.359953 WHERE `entry`=19458;

/*  Feng  */
UPDATE `creature_template` SET `DamageModifier` = 0.418056 WHERE `entry`=19459;

/*  Bleeding Hollow Skeleton  */
UPDATE `creature_template` SET `maxlevel` = 60, `DamageModifier` = 0.418056 WHERE `entry`=19460;

/*  Bleeding Hollow Soul  */
UPDATE `creature_template` SET `DamageModifier` = 2.99758, `HealthModifier` = 1.6 WHERE `entry`=19464;

/*  Anchorite Karja  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=19467;

/*  Spymaster Thalodien  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19468;

/*  Magistrix Larynna  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19469;

/*  Gholah  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 1.8 WHERE `entry`=19470;

/*  Old Orok  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 0.3 WHERE `entry`=19471;

/*  Threlc  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 1.5 WHERE `entry`=19472;

/*  Raiza  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 1.8 WHERE `entry`=19473;

/*  Karnaze  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 1.8 WHERE `entry`=19474;

/*  Harbinger Haronem  */
UPDATE `creature_template` SET `DamageModifier` = 1.72335 WHERE `entry`=19475;

/*  Lor  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 1.5 WHERE `entry`=19476;

/*  Fleeing Dreghood Warrior  */
UPDATE `creature_template` SET `minlevel` = 56, `DamageModifier` = 3.86449, `HealthModifier` = 1.0 WHERE `entry`=19477;

/*  Fera Palerunner  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 0.7 WHERE `entry`=19478;

/*  Orgatha  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 1.0 WHERE `entry`=19479;

/*  Darkened Spirit  */
UPDATE `creature_template` SET `DamageModifier` = 4.18668 WHERE `entry`=19480;

/*  Archmage Vargoth  */
UPDATE `creature_template` SET `DamageModifier` = 1.72335, `HealthModifier` = 1.6 WHERE `entry`=19481;

/*  Magister Falris  */
UPDATE `creature_template` SET `DamageModifier` = 0.221271, `HealthModifier` = 0.6 WHERE `entry`=19485;

/*  Sunseeker Chemist  */
UPDATE `creature_template` SET `DamageModifier` = 11.3827 WHERE `entry`=19486;

/*  Custodian Dieworth  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19488;

/*  Lieutenant-Sorcerer Morran  */
UPDATE `creature_template` SET `DamageModifier` = 3.09187, `HealthModifier` = 1.2 WHERE `entry`=19489;

/*  Innkeeper Shaunessy  */
UPDATE `creature_template` SET `DamageModifier` = 2.20725, `HealthModifier` = 0.7 WHERE `entry`=19495;

/*  Spy Grik'tha  */
UPDATE `creature_template` SET `DamageModifier` = 1.72335 WHERE `entry`=19496;

/*  Caoileann  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.5 WHERE `entry`=19497;

/*  Tanaide  */
UPDATE `creature_template` SET `minlevel` = 64, `DamageModifier` = 2.0 WHERE `entry`=19498;

/*  Cahill  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.2 WHERE `entry`=19499;

/*  Sylvanaar Sentinel  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=19500;

/*  Lower City Operative  */
UPDATE `creature_template` SET `DamageModifier` = 0.178239, `HealthModifier` = 1.8 WHERE `entry`=19501;

/*  Lower City Healer  */
UPDATE `creature_template` SET `minlevel` = 70, `HealthModifier` = 1.5 WHERE `entry`=19502;

/*  Scryer Guardian  */
UPDATE `creature_template` SET `DamageModifier` = 1.76365, `HealthModifier` = 1.2 WHERE `entry`=19504;

/*  Sunseeker Channeler  */
UPDATE `creature_template` SET `DamageModifier` = 13.0762, `ArmorModifier` = 0.63416 WHERE `entry`=19505;

/*  Sunseeker Gene-Splicer  */
UPDATE `creature_template` SET `DamageModifier` = 13.0762, `ArmorModifier` = 0.63416 WHERE `entry`=19507;

/*  Sunseeker Herbalist  */
UPDATE `creature_template` SET `DamageModifier` = 10.6868 WHERE `entry`=19508;

/*  Sunseeker Harvester  */
UPDATE `creature_template` SET `DamageModifier` = 5.69135 WHERE `entry`=19509;

/*  Bloodwarder Centurion  */
UPDATE `creature_template` SET `DamageModifier` = 6.27353, `HealthModifier` = 2.9 WHERE `entry`=19510;

/*  Nethervine Inciter  */
UPDATE `creature_template` SET `DamageModifier` = 10.667 WHERE `entry`=19511;

/*  Nethervine Reaper  */
UPDATE `creature_template` SET `DamageModifier` = 10.6571 WHERE `entry`=19512;

/*  Mutate Fear-Shrieker  */
UPDATE `creature_template` SET `DamageModifier` = 10.6868, `HealthModifier` = 2.4 WHERE `entry`=19513;

/*  Al'ar  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 30.6377, `HealthModifier` = 369.0 WHERE `entry`=19514;

/*  Void Reaver  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 30.0, `HealthModifier` = 750.0, `ArmorModifier` = 1.5 WHERE `entry`=19516;

/*  Alorra  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19517;

/*  Feranin  */
UPDATE `creature_template` SET `DamageModifier` = 1.76365, `HealthModifier` = 1.4 WHERE `entry`=19518;

/*  Lelagar  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19520;

/*  Arrond  */
UPDATE `creature_template` SET `DamageModifier` = 1.76365, `HealthModifier` = 1.2 WHERE `entry`=19521;

/*  Stage Spotlight  */
UPDATE `creature_template` SET `DamageModifier` = 2.53717, `HealthModifier` = 1.4 WHERE `entry`=19525;

/*  Dunaman  */
UPDATE `creature_template` SET `DamageModifier` = 1.76365 WHERE `entry`=19526;

/*  Vacillating Voidcaller  */
UPDATE `creature_template` SET `ArmorModifier` = 0.725272 WHERE `entry`=19527;

/*  Nanomah  */
UPDATE `creature_template` SET `DamageModifier` = 1.76365, `HealthModifier` = 1.6 WHERE `entry`=19528;

/*  Stormspire Nexus-Guard  */
UPDATE `creature_template` SET `DamageModifier` = 5.32006 WHERE `entry`=19529;

/*  Darmend  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19530;

/*  Eyonix  */
UPDATE `creature_template` SET `DamageModifier` = 0.382824, `HealthModifier` = 2.6 WHERE `entry`=19531;

/*  Dearny  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19532;

/*  Dealer Aljaan  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 1.0 WHERE `entry`=19533;

/*  Dealer Digriz  */
UPDATE `creature_template` SET `DamageModifier` = 0.401966, `HealthModifier` = 1.3 WHERE `entry`=19534;

/*  Dealer Zijaad  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 0.8 WHERE `entry`=19535;

/*  Dealer Jadyan  */
UPDATE `creature_template` SET `DamageModifier` = 0.382824, `HealthModifier` = 1.0 WHERE `entry`=19536;

/*  Dealer Malij  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 1.7 WHERE `entry`=19537;

/*  Dealer Senzik  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 0.4 WHERE `entry`=19538;

/*  Jazdalaad  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 2.3 WHERE `entry`=19539;

/*  Asarnan  */
UPDATE `creature_template` SET `DamageModifier` = 0.245068, `HealthModifier` = 1.3 WHERE `entry`=19540;

/*  Netherstorm Agent  */
UPDATE `creature_template` SET `DamageModifier` = 1.60605, `HealthModifier` = 1.4 WHERE `entry`=19541;

/*  Field Commander Mahfuun  */
UPDATE `creature_template` SET `DamageModifier` = 1.72335, `HealthModifier` = 1.3 WHERE `entry`=19542;

/*  Abjurist Belmara  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19546;

/*  Ember of Al'ar  */
UPDATE `creature_template` SET `DamageModifier` = 13.7146, `HealthModifier` = 9.9 WHERE `entry`=19551;

/*  Dimensius the All-Devouring  */
UPDATE `creature_template` SET `dmgschool` = 5, `DamageModifier` = 15.38, `ArmorModifier` = 1.011 WHERE `entry`=19554;

/*  Thrall  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 3.53836, `HealthModifier` = 1.0 WHERE `entry`=19556;

/*  Greater Frayer  */
UPDATE `creature_template` SET `DamageModifier` = 4.35992, `HealthModifier` = 1.2 WHERE `entry`=19557;

/*  Amilya Airheart  */
UPDATE `creature_template` SET `DamageModifier` = 2.51744, `HealthModifier` = 0.9, `ManaModifier` = 0.9 WHERE `entry`=19558;

/*  Mondul  */
UPDATE `creature_template` SET `DamageModifier` = 0.395663, `HealthModifier` = 0.8 WHERE `entry`=19559;

/*  Lukra  */
UPDATE `creature_template` SET `DamageModifier` = 3.60493, `HealthModifier` = 0.3 WHERE `entry`=19560;

/*  Hagash the Blind  */
UPDATE `creature_template` SET `DamageModifier` = 3.60493, `HealthModifier` = 0.3 WHERE `entry`=19561;

/*  Peon Bolgar  */
UPDATE `creature_template` SET `DamageModifier` = 3.18071, `HealthModifier` = 0.3 WHERE `entry`=19562;

/*  Enormous Void Storm  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=19565;

/*  Nethergarde Advisor  */
UPDATE `creature_template` SET `DamageModifier` = 0.278145, `HealthModifier` = 0.5 WHERE `entry`=19566;

/*  Watcher Theronus  */
UPDATE `creature_template` SET `DamageModifier` = 0.245068, `HealthModifier` = 0.8 WHERE `entry`=19567;

/*  Netherologist Coppernickels  */
UPDATE `creature_template` SET `HealthModifier` = 1.7 WHERE `entry`=19569;

/*  Rocket-Chief Fuselage  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.0 WHERE `entry`=19570;

/*  Innkeeper Remi Dodoso  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.0 WHERE `entry`=19571;

/*  Gant  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.2 WHERE `entry`=19572;

/*  Dash  */
UPDATE `creature_template` SET `minlevel` = 64, `maxlevel` = 64, `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=19573;

/*  Kizzie  */
UPDATE `creature_template` SET `minlevel` = 65, `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=19574;

/*  Qiff  */
UPDATE `creature_template` SET `minlevel` = 67, `DamageModifier` = 2.0, `HealthModifier` = 1.2 WHERE `entry`=19575;

/*  Xyrol  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.5 WHERE `entry`=19576;

/*  Bot-Specialist Alley  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=19578;

/*  Maddix  */
UPDATE `creature_template` SET `DamageModifier` = 2.56383, `HealthModifier` = 0.8 WHERE `entry`=19581;

/*  Grennik  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.0 WHERE `entry`=19583;

/*  Maxx A. Million Mk. II  */
UPDATE `creature_template` SET `DamageModifier` = 6.83688 WHERE `entry`=19588;

/*  Thrall Event Generator  */
UPDATE `creature_template` SET `DamageModifier` = 0.180455, `HealthModifier` = 1.3 WHERE `entry`=19590;

/*  Snowsong  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19591;

/*  Kor'kron Warrior  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=19592;

/*  Spellbinder Maryana  */
UPDATE `creature_template` SET `DamageModifier` = 1.77853 WHERE `entry`=19593;

/*  Kor'kron Honor Guard  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 2.0, `HealthModifier` = 0.7 WHERE `entry`=19594;

/*  Drained Phase Hunter  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19595;

/*  Thrall's Hero Music  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 1.53739, `HealthModifier` = 1.0 WHERE `entry`=19597;

/*  Mutate Fleshlasher  */
UPDATE `creature_template` SET `DamageModifier` = 4.62104 WHERE `entry`=19598;

/*  Void Servant  */
UPDATE `creature_template` SET `DamageModifier` = 2.70109 WHERE `entry`=19599;

/*  Drek'Thar  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 1.65831, `HealthModifier` = 0.5, `ManaModifier` = 293.1 WHERE `entry`=19604;

/*  Duros  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19605;

/*  Grek  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.0 WHERE `entry`=19606;

/*  Frayer Wildling  */
UPDATE `creature_template` SET `DamageModifier` = 3.19614 WHERE `entry`=19608;

/*  Irradiated Worker  */
UPDATE `creature_template` SET `minlevel` = 61, `maxlevel` = 65, `DamageModifier` = 2.3752 WHERE `entry`=19610;

/*  Irradiated Manager  */
UPDATE `creature_template` SET `minlevel` = 66, `maxlevel` = 66, `DamageModifier` = 1.76376, `HealthModifier` = 0.5 WHERE `entry`=19612;

/*  Drakan  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19613;

/*  Boots  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.1 WHERE `entry`=19617;

/*  Warpmaster Lyssendra Credit  */
UPDATE `creature_template` SET `HealthModifier` = 2.3 WHERE `entry`=19618;

/*  Commander Dawnforge Credit  */
UPDATE `creature_template` SET `HealthModifier` = 2.3 WHERE `entry`=19619;

/*  Arcanist Ardonis Credit  */
UPDATE `creature_template` SET `HealthModifier` = 2.3 WHERE `entry`=19620;

/*  Bill  */
UPDATE `creature_template` SET `DamageModifier` = 2.53153, `HealthModifier` = 1.2 WHERE `entry`=19621;

/*  Kael'thas Sunstrider  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 38.4154, `HealthModifier` = 600.0 WHERE `entry`=19622;

/*  Doc  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.5 WHERE `entry`=19623;

/*  Wounded Stormwind Infantry  */
UPDATE `creature_template` SET `DamageModifier` = 0.323754, `HealthModifier` = 0.6 WHERE `entry`=19624;

/*  Alorya  */
UPDATE `creature_template` SET `DamageModifier` = 2.95279, `HealthModifier` = 2.7 WHERE `entry`=19625;

/*  Belanna  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 2.3 WHERE `entry`=19626;

/*  Sulamin  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.2 WHERE `entry`=19627;

/*  Denath  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 1.0 WHERE `entry`=19629;

/*  Lykul Stinger  */
UPDATE `creature_template` SET `DamageModifier` = 3.60171 WHERE `entry`=19632;

/*  Bloodwarder Mender  */
UPDATE `creature_template` SET `maxlevel` = 70, `DamageModifier` = 12.0425, `ArmorModifier` = 0.663248 WHERE `entry`=19633;

/*  Lead Sapper Blastfizzle  */
UPDATE `creature_template` SET `DamageModifier` = 1.79177, `HealthModifier` = 1.0 WHERE `entry`=19634;

/*  Captain Arathyn  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19635;

/*  Sunfury Astromancer  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=19643;

/*  Image of Archmage Vargoth  */
UPDATE `creature_template` SET `DamageModifier` = 2.37921, `HealthModifier` = 2.2 WHERE `entry`=19644;

/*  Papa Wheeler  */
UPDATE `creature_template` SET `DamageModifier` = 1.72335, `HealthModifier` = 0.8 WHERE `entry`=19645;

/*  Thrall Event Dummy  */
UPDATE `creature_template` SET `DamageModifier` = 0.180455, `HealthModifier` = 1.3 WHERE `entry`=19646;

/*  Thrall  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 1.60139, `HealthModifier` = 1.4 WHERE `entry`=19647;

/*  Maranem  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401 WHERE `entry`=19648;

/*  Dorni  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 1.0 WHERE `entry`=19649;

/*  Seasoned Vindicator  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=19651;

/*  Disrupt the Communications Quest Credit Marker North  */
UPDATE `creature_template` SET `HealthModifier` = 2.3 WHERE `entry`=19652;

/*  Area 52 Analyzer Bunny  */
UPDATE `creature_template` SET `HealthModifier` = 2.3 WHERE `entry`=19654;

/*  Area 52 Ethereal Technology Bunny  */
UPDATE `creature_template` SET `HealthModifier` = 2.3 WHERE `entry`=19655;

/*  Brown Elekk  */
UPDATE `creature_template` SET `DamageModifier` = 0.387159, `HealthModifier` = 0.4 WHERE `entry`=19658;

/*  Garrosh's Buff Bots  */
UPDATE `creature_template` SET `DamageModifier` = 0.180455, `HealthModifier` = 1.3 WHERE `entry`=19660;

/*  Viggz Shinesparked  */
UPDATE `creature_template` SET `DamageModifier` = 0.221271, `HealthModifier` = 1.4 WHERE `entry`=19661;

/*  Aaron Hollman  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 2.4 WHERE `entry`=19662;

/*  Madame Ruby  */
UPDATE `creature_template` SET `HealthModifier` = 3.7 WHERE `entry`=19663;

/*  Muffin Man Moser  */
UPDATE `creature_template` SET `DamageModifier` = 0.210878, `HealthModifier` = 0.5 WHERE `entry`=19664;

/*  Ewe  */
UPDATE `creature_template` SET `HealthModifier` = 109.9 WHERE `entry`=19665;

/*  Shadow Lord Xiraxis  */
UPDATE `creature_template` SET `DamageModifier` = 5.93878, `HealthModifier` = 9.9 WHERE `entry`=19666;

/*  Shadowfiend  */
UPDATE `creature_template` SET `HealthModifier` = 1.0, `ManaModifier` = 1.5 WHERE `entry`=19668;

/*  Mamdy the "Ologist"  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.2 WHERE `entry`=19669;

/*  Artificer Morphalius  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.4 WHERE `entry`=19670;

/*  Cryo-Engineer Sha'heen  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 2.8 WHERE `entry`=19671;

/*  Consortium Laborer  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19672;

/*  Consortium Engineer  */
UPDATE `creature_template` SET `DamageModifier` = 2.40684 WHERE `entry`=19673;

/*  Nexus-Prince Haramad  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 1.61379, `HealthModifier` = 0.9 WHERE `entry`=19674;

/*  "Captain" Kaftiz  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.2 WHERE `entry`=19676;

/*  Consortium Spell Marker  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.2 WHERE `entry`=19677;

/*  Fantei  */
UPDATE `creature_template` SET `DamageModifier` = 0.346953, `HealthModifier` = 3.3 WHERE `entry`=19678;

/*  "Slim"  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.2 WHERE `entry`=19679;

/*  Aldor Spawn Controller  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 2.3 WHERE `entry`=19680;

/*  Void Spawner L  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=19681;

/*  Emissary Mordiba  */
UPDATE `creature_template` SET `DamageModifier` = 3.44834, `HealthModifier` = 0.3 WHERE `entry`=19682;

/*  Ogath the Mad  */
UPDATE `creature_template` SET `DamageModifier` = 3.31087, `HealthModifier` = 0.3 WHERE `entry`=19683;

/*  Haggard War Veteran  */
UPDATE `creature_template` SET `DamageModifier` = 0.210878, `HealthModifier` = 1.0 WHERE `entry`=19684;

/*  Khadgar's Servant  */
UPDATE `creature_template` SET `maxlevel` = 60, `rank` = 1, `DamageModifier` = 8.64944, `HealthModifier` = 1.4 WHERE `entry`=19685;

/*  Nether Anomaly  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.3 WHERE `entry`=19686;

/*  Shattrath City Peacekeeper  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=19687;

/*  Scryer Vault Guardian  */
UPDATE `creature_template` SET `DamageModifier` = 0.189478, `HealthModifier` = 1.1 WHERE `entry`=19688;

/*  Draenei Pilgrim  */
UPDATE `creature_template` SET `DamageModifier` = 2.59483, `HealthModifier` = 1.1 WHERE `entry`=19689;

/*  N. D. Meancamp  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=19690;

/*  Clarissa  */
UPDATE `creature_template` SET `HealthModifier` = 0.9 WHERE `entry`=19693;

/*  Loolruna  */
UPDATE `creature_template` SET `HealthModifier` = 0.6 WHERE `entry`=19694;

/*  Ha'lei  */
UPDATE `creature_template` SET `DamageModifier` = 0.510066, `HealthModifier` = 15.7 WHERE `entry`=19697;

/*  Bonechewer Evoker  */
UPDATE `creature_template` SET `maxgold` = 160 WHERE `entry`=19701;

/*  Aldor Acolyte  */
UPDATE `creature_template` SET `DamageModifier` = 0.346062 WHERE `entry`=19702;

/*  Chief Engineer Trep  */
UPDATE `creature_template` SET `DamageModifier` = 1.79177, `HealthModifier` = 0.6 WHERE `entry`=19709;

/*  Gatewatcher Iron-Hand  */
UPDATE `creature_template` SET `DamageModifier` = 12.7171 WHERE `entry`=19710;

/*  Mechanar Driller  */
UPDATE `creature_template` SET `DamageModifier` = 5.7194 WHERE `entry`=19712;

/*  Mechanar Wrecker  */
UPDATE `creature_template` SET `DamageModifier` = 7.72812, `HealthModifier` = 2.9 WHERE `entry`=19713;

/*  Ezekiel  */
UPDATE `creature_template` SET `DamageModifier` = 0.210878 WHERE `entry`=19715;

/*  Mechanar Tinkerer  */
UPDATE `creature_template` SET `DamageModifier` = 8.2251 WHERE `entry`=19716;

/*  Disrupt the Communications Quest Credit Marker South  */
UPDATE `creature_template` SET `HealthModifier` = 2.3 WHERE `entry`=19717;

/*  Provisioner Tsaalt  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=19718;

/*  "Dirty" Larry  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 4.1 WHERE `entry`=19720;

/*  Muheru the Weaver  */
UPDATE `creature_template` SET `HealthModifier` = 0.9 WHERE `entry`=19722;

/*  "Epic" Malone  */
UPDATE `creature_template` SET `DamageModifier` = 0.212501 WHERE `entry`=19725;

/*  "Creepjack"  */
UPDATE `creature_template` SET `DamageModifier` = 0.212501 WHERE `entry`=19726;

/*  Mama Wheeler  */
UPDATE `creature_template` SET `HealthModifier` = 0.7 WHERE `entry`=19728;

/*  Ironspine Threshalisk  */
UPDATE `creature_template` SET `ArmorModifier` = 1.29089 WHERE `entry`=19729;

/*  Ironspine Gazer  */
UPDATE `creature_template` SET `HealthModifier` = 1.0, `ArmorModifier` = 1.29089 WHERE `entry`=19730;

/*  Nether Beast  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.2 WHERE `entry`=19731;

/*  Ango'rosh Warlock  */
UPDATE `creature_template` SET `ArmorModifier` = 0.678286 WHERE `entry`=19732;

/*  Daggerfen Servant  */
UPDATE `creature_template` SET `DamageModifier` = 0.36074 WHERE `entry`=19733;

/*  Tempest-Forge Destroyer  */
UPDATE `creature_template` SET `DamageModifier` = 10.7196, `HealthModifier` = 11.5 WHERE `entry`=19735;

/*  Althen the Historian  */
UPDATE `creature_template` SET `ArmorModifier` = 0.635776 WHERE `entry`=19736;

/*  Engineering Crewmember  */
UPDATE `creature_template` SET `minlevel` = 63, `DamageModifier` = 2.0, `HealthModifier` = 0.7 WHERE `entry`=19737;

/*  Dreadwarden  */
UPDATE `creature_template` SET `DamageModifier` = 0.193807 WHERE `entry`=19744;

/*  Baelmon the Hound-Master  */
UPDATE `creature_template` SET `DamageModifier` = 2.95721 WHERE `entry`=19747;

/*  Mo'arg Weaponsmith  */
UPDATE `creature_template` SET `ArmorModifier` = 1.58055 WHERE `entry`=19755;

/*  Infernal Soul  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=19757;

/*  Newly Crafted Infernal  */
UPDATE `creature_template` SET `minlevel` = 68 WHERE `entry`=19759;

/*  Manni  */
UPDATE `creature_template` SET `DamageModifier` = 0.326302, `HealthModifier` = 1.3 WHERE `entry`=19763;

/*  Moh  */
UPDATE `creature_template` SET `DamageModifier` = 0.326302, `HealthModifier` = 0.6 WHERE `entry`=19764;

/*  Jakk  */
UPDATE `creature_template` SET `DamageModifier` = 0.326302, `HealthModifier` = 0.8 WHERE `entry`=19766;

/*  Spirit Sage Gartok  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19772;

/*  Spirit Sage Zran  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=19773;

/*  Toban  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=19774;

/*  Kalinda  */
UPDATE `creature_template` SET `DamageModifier` = 0.403593, `HealthModifier` = 0.6 WHERE `entry`=19775;

/*  Experimental Pilot  */
UPDATE `creature_template` SET `minlevel` = 64, `maxlevel` = 64, `DamageModifier` = 0.197979, `HealthModifier` = 1.4 WHERE `entry`=19776;

/*  Elaando  */
UPDATE `creature_template` SET `DamageModifier` = 4.17015, `HealthModifier` = 0.4 WHERE `entry`=19777;

/*  Farii  */
UPDATE `creature_template` SET `DamageModifier` = 0.403593, `HealthModifier` = 4.3 WHERE `entry`=19778;

/*  Off-Duty Engineer  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.3 WHERE `entry`=19780;

/*  Astral Flare  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=19781;

/*  Astral Flare  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=19782;

/*  Astral Flare  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=19783;

/*  Illidari Highlord  */
UPDATE `creature_template` SET `DamageModifier` = 3.8768 WHERE `entry`=19797;

/*  Illidari Dreadbringer  */
UPDATE `creature_template` SET `maxlevel` = 59 WHERE `entry`=19799;

/*  Illidari Painlasher  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=19800;

/*  Illidari Agonizer  */
UPDATE `creature_template` SET `DamageModifier` = 0.263046 WHERE `entry`=19801;

/*  Bloodskin Mutate  */
UPDATE `creature_template` SET `DamageModifier` = 1.68048, `HealthModifier` = 0.7 WHERE `entry`=19813;

/*  Bloodskin Grunt  */
UPDATE `creature_template` SET `DamageModifier` = 1.68048, `HealthModifier` = 0.7 WHERE `entry`=19814;

/*  Bloodskin Warlock  */
UPDATE `creature_template` SET `DamageModifier` = 1.68048, `HealthModifier` = 0.7 WHERE `entry`=19815;

/*  Bloodskin Berserker  */
UPDATE `creature_template` SET `DamageModifier` = 1.68048, `HealthModifier` = 0.7 WHERE `entry`=19816;

/*  Bloodskin Destroyer  */
UPDATE `creature_template` SET `DamageModifier` = 1.68048, `HealthModifier` = 0.7 WHERE `entry`=19817;

/*  Bloodskin Warlord  */
UPDATE `creature_template` SET `DamageModifier` = 1.68048, `HealthModifier` = 0.7 WHERE `entry`=19818;

/*  [PH] Illidari Overseer  */
UPDATE `creature_template` SET `DamageModifier` = 1.68048, `HealthModifier` = 0.7 WHERE `entry`=19819;

/*  Illidari Peacekeer  */
UPDATE `creature_template` SET `minlevel` = 68, `maxlevel` = 60 WHERE `entry`=19821;

/*  Crazed Colossus  */
UPDATE `creature_template` SET `DamageModifier` = 4.74678 WHERE `entry`=19823;

/*  Son of Corok  */
UPDATE `creature_template` SET `DamageModifier` = 2.85249 WHERE `entry`=19824;

/*  Arcanist Ardonis  */
UPDATE `creature_template` SET `maxlevel` = 68 WHERE `entry`=19830;

/*  Doctor Vomisa, Ph.T.  */
UPDATE `creature_template` SET `DamageModifier` = 1.72335, `HealthModifier` = 1.3 WHERE `entry`=19832;

/*  Venomous Snake  */
UPDATE `creature_template` SET `ArmorModifier` = 1.55077 WHERE `entry`=19833;

/*  Mixie Farshot  */
UPDATE `creature_template` SET `DamageModifier` = 3.18071, `HealthModifier` = 0.3 WHERE `entry`=19836;

/*  Daga Ramba  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 1.0 WHERE `entry`=19837;

/*  Lariel Sunrunner  */
UPDATE `creature_template` SET `DamageModifier` = 2.70172 WHERE `entry`=19839;

/*  Caledis Brightdawn  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.7 WHERE `entry`=19840;

/*  Nethervine Trickster  */
UPDATE `creature_template` SET `DamageModifier` = 10.6472 WHERE `entry`=19843;

/*  Nitrin the Learned  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19844;

/*  Area 52 Fireworks Controller  */
UPDATE `creature_template` SET `HealthModifier` = 2.3 WHERE `entry`=19845;

/*  Levixus  */
UPDATE `creature_template` SET `DamageModifier` = 6.92584, `HealthModifier` = 4.1 WHERE `entry`=19847;

/*  Scrap Reaver X6000  */
UPDATE `creature_template` SET `DamageModifier` = 2.97948 WHERE `entry`=19849;

/*  Councilor Arial D'Anastasis  */
UPDATE `creature_template` SET `DamageModifier` = 5.86195, `HealthModifier` = 1.5 WHERE `entry`=19850;

/*  Negatron  */
UPDATE `creature_template` SET `DamageModifier` = 13.0 WHERE `entry`=19851;

/*  Artifact Seeker  */
UPDATE `creature_template` SET `DamageModifier` = 0.219205 WHERE `entry`=19852;

/*  Sir Maximus Adams  */
UPDATE `creature_template` SET `DamageModifier` = 2.43205, `HealthModifier` = 1.6 WHERE `entry`=19855;

/*  Steamwheedle Sam  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.2 WHERE `entry`=19856;

/*  Meminnie  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.1 WHERE `entry`=19857;

/*  "Lefty" Puddemup  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19858;

/*  Max Luna  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.0 WHERE `entry`=19859;

/*  Katrina Turner  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.5 WHERE `entry`=19860;

/*  Bip Nigstrom  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=19861;

/*  Vengeful Unyielding  */
UPDATE `creature_template` SET `DamageModifier` = 3.18707 WHERE `entry`=19863;

/*  Vengeful Unyielding Captain  */
UPDATE `creature_template` SET `DamageModifier` = 3.01501 WHERE `entry`=19864;

/*  Mutate Horror  */
UPDATE `creature_template` SET `DamageModifier` = 10.7758, `HealthModifier` = 2.5 WHERE `entry`=19865;

/*  World Trigger (Not Immune NPC)  */
UPDATE `creature_template` SET `HealthModifier` = 2.3 WHERE `entry`=19871;

/*  Lady Catriona Von'Indi  */
UPDATE `creature_template` SET `DamageModifier` = 8.11084, `HealthModifier` = 12.0 WHERE `entry`=19872;

/*  Lord Crispin Ference  */
UPDATE `creature_template` SET `DamageModifier` = 8.1295, `HealthModifier` = 5.5 WHERE `entry`=19873;

/*  Baron Rafe Dreuger  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 4.6, `ManaModifier` = 35.7 WHERE `entry`=19874;

/*  Baroness Dorothea Millstipe  */
UPDATE `creature_template` SET `DamageModifier` = 8.11084, `HealthModifier` = 4.8 WHERE `entry`=19875;

/*  Lord Robin Daris  */
UPDATE `creature_template` SET `DamageModifier` = 8.91554, `HealthModifier` = 5.5 WHERE `entry`=19876;

/*  Spirit of Exarch Maladaar  */
UPDATE `creature_template` SET `DamageModifier` = 5.76999, `HealthModifier` = 16.8 WHERE `entry`=19878;

/*  Horvon the Armorer  */
UPDATE `creature_template` SET `DamageModifier` = 0.231225, `HealthModifier` = 1.4 WHERE `entry`=19879;

/*  Nether-Stalker Khay'ji  */
UPDATE `creature_template` SET `DamageModifier` = 1.72335, `HealthModifier` = 1.0 WHERE `entry`=19880;

/*  Severed Spirit  */
UPDATE `creature_template` SET `DamageModifier` = 2.51799 WHERE `entry`=19881;

/*  Jero'me  */
UPDATE `creature_template` SET `minlevel` = 26, `maxlevel` = 26, `DamageModifier` = 0.402559, `HealthModifier` = 0.5, `ManaModifier` = 0.9 WHERE `entry`=19882;

/*  Bogstrok (1)  */
UPDATE `creature_template` SET `DamageModifier` = 21.1183, `HealthModifier` = 3.6, `mingold` = 1250, `maxgold` = 1637 WHERE `entry`=19884;

/*  Coilfang Champion (1)  */
UPDATE `creature_template` SET `DamageModifier` = 28.9861, `HealthModifier` = 3.9, `mingold` = 1294, `maxgold` = 1695 WHERE `entry`=19885;

/*  Coilfang Defender (1)  */
UPDATE `creature_template` SET `DamageModifier` = 42.6703, `HealthModifier` = 3.9, `mingold` = 1294, `maxgold` = 1695 WHERE `entry`=19886;

/*  Coilfang Enchantress (1)  */
UPDATE `creature_template` SET `DamageModifier` = 11.4614, `HealthModifier` = 3.9, `ArmorModifier` = 0.696929, `mingold` = 1037, `maxgold` = 1360 WHERE `entry`=19887;

/*  Coilfang Observer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 17.2244, `HealthModifier` = 3.8, `ArmorModifier` = 0.67904, `mingold` = 1037, `maxgold` = 1360 WHERE `entry`=19888;

/*  Coilfang Slavehandler (1)  */
UPDATE `creature_template` SET `DamageModifier` = 38.8341, `HealthModifier` = 4.1, `mingold` = 1335, `maxgold` = 1748 WHERE `entry`=19889;

/*  Coilfang Soothsayer (1)  */
UPDATE `creature_template` SET `maxlevel` = 71, `DamageModifier` = 11.7636, `HealthModifier` = 3.8, `ArmorModifier` = 0.707439, `mingold` = 952, `maxgold` = 1249 WHERE `entry`=19890;

/*  Coilfang Technician (1)  */
UPDATE `creature_template` SET `DamageModifier` = 17.5095, `HealthModifier` = 3.8, `ArmorModifier` = 0.541601, `mingold` = 1039, `maxgold` = 1362 WHERE `entry`=19891;

/*  Greater Bogstrok (1)  */
UPDATE `creature_template` SET `DamageModifier` = 36.7358, `HealthModifier` = 3.9, `mingold` = 1250, `maxgold` = 1637 WHERE `entry`=19892;

/*  Mennu the Betrayer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 13.9064, `HealthModifier` = 22.0, `mingold` = 5631, `maxgold` = 7358 WHERE `entry`=19893;

/*  Quagmirran (1)  */
UPDATE `creature_template` SET `DamageModifier` = 45.3607, `mingold` = 7756, `maxgold` = 10133 WHERE `entry`=19894;

/*  Rokmar the Crackler (1)  */
UPDATE `creature_template` SET `DamageModifier` = 35.5629, `HealthModifier` = 23.0, `mingold` = 7331, `maxgold` = 9578 WHERE `entry`=19895;

/*  Wastewalker Slave (1)  */
UPDATE `creature_template` SET `DamageModifier` = 16.3581, `HealthModifier` = 1.3, `mingold` = 198, `maxgold` = 264 WHERE `entry`=19902;

/*  Coilfang Collaborator (1)  */
UPDATE `creature_template` SET `DamageModifier` = 15.6231, `HealthModifier` = 3.9, `ArmorModifier` = 0.65352, `mingold` = 1250, `maxgold` = 1637 WHERE `entry`=19903;

/*  Wastewalker Worker (1)  */
UPDATE `creature_template` SET `DamageModifier` = 6.01967, `HealthModifier` = 1.3, `mingold` = 264, `maxgold` = 350 WHERE `entry`=19904;

/*  The Black Bride  */
UPDATE `creature_template` SET `DamageModifier` = 3.35664, `HealthModifier` = 1.0 WHERE `entry`=19905;

/*  Usha Eyegouge  */
UPDATE `creature_template` SET `DamageModifier` = 3.35664, `HealthModifier` = 1.9 WHERE `entry`=19906;

/*  Grumbol Grimhammer  */
UPDATE `creature_template` SET `DamageModifier` = 3.80669, `HealthModifier` = 2.4 WHERE `entry`=19907;

/*  Su'ura Swiftarrow  */
UPDATE `creature_template` SET `DamageModifier` = 9.97616 WHERE `entry`=19908;

/*  Gargok  */
UPDATE `creature_template` SET `DamageModifier` = 3.35664, `HealthModifier` = 0.6 WHERE `entry`=19910;

/*  Zeggon Botsnap  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.4 WHERE `entry`=19912;

/*  Hutihu  */
UPDATE `creature_template` SET `DamageModifier` = 3.91686, `HealthModifier` = 0.7 WHERE `entry`=19914;

/*  Time Watcher  */
UPDATE `creature_template` SET `DamageModifier` = 1.51582 WHERE `entry`=19918;

/*  Thorn Lasher  */
UPDATE `creature_template` SET `DamageModifier` = 1.38532 WHERE `entry`=19919;

/*  Thorn Flayer  */
UPDATE `creature_template` SET `DamageModifier` = 5.48192 WHERE `entry`=19920;

/*  Viper  */
UPDATE `creature_template` SET `ArmorModifier` = 1.55077 WHERE `entry`=19921;

/*  Bipp Glizzitor  */
UPDATE `creature_template` SET `DamageModifier` = 0.189478, `HealthModifier` = 0.2 WHERE `entry`=19923;

/*  Miglik Blotstrom  */
UPDATE `creature_template` SET `DamageModifier` = 0.189478, `HealthModifier` = 0.8 WHERE `entry`=19925;

/*  Andormu  */
UPDATE `creature_template` SET `minlevel` = 66, `maxlevel` = 66, `DamageModifier` = 2.71928, `HealthModifier` = 1.1 WHERE `entry`=19932;

/*  Nozari  */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60, `DamageModifier` = 2.71805, `HealthModifier` = 2.2 WHERE `entry`=19933;

/*  Zaladormu  */
UPDATE `creature_template` SET `DamageModifier` = 2.69989, `HealthModifier` = 2.0 WHERE `entry`=19934;

/*  Soridormi  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 10.5816, `HealthModifier` = 1.6 WHERE `entry`=19935;

/*  Arazmodu  */
UPDATE `creature_template` SET `DamageModifier` = 2.87247, `HealthModifier` = 1.4 WHERE `entry`=19936;

/*  Image of Commander Sarannis  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 14.6 WHERE `entry`=19938;

/*  Apex  */
UPDATE `creature_template` SET `DamageModifier` = 2.89784 WHERE `entry`=19940;

/*  Agent Proudwell  */
UPDATE `creature_template` SET `DamageModifier` = 0.31601, `HealthModifier` = 1.2 WHERE `entry`=19942;

/*  Darkcrest Slaver  */
UPDATE `creature_template` SET `maxgold` = 219 WHERE `entry`=19946;

/*  Darkcrest Sorceress  */
UPDATE `creature_template` SET `maxgold` = 185 WHERE `entry`=19947;

/*  Sapling  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 5.69961, `HealthModifier` = 0.5 WHERE `entry`=19949;

/*  Custodian of Time  */
UPDATE `creature_template` SET `DamageModifier` = 1.51582 WHERE `entry`=19950;

/*  Warden of Time  */
UPDATE `creature_template` SET `DamageModifier` = 5.6302, `HealthModifier` = 0.7 WHERE `entry`=19951;

/*  Frayer Protector  */
UPDATE `creature_template` SET `DamageModifier` = 9.14313 WHERE `entry`=19953;

/*  Greater Sapling  */
UPDATE `creature_template` SET `DamageModifier` = 1.26319 WHERE `entry`=19954;

/*  White Seedling  */
UPDATE `creature_template` SET `maxlevel` = 69, `DamageModifier` = 3.94704, `HealthModifier` = 0.2 WHERE `entry`=19958;

/*  Blue Seedling  */
UPDATE `creature_template` SET `maxlevel` = 69, `DamageModifier` = 3.87176, `HealthModifier` = 0.1 WHERE `entry`=19962;

/*  Doomcryer  */
UPDATE `creature_template` SET `DamageModifier` = 3.28494 WHERE `entry`=19963;

/*  Red Seedling  */
UPDATE `creature_template` SET `maxlevel` = 69, `DamageModifier` = 4.39875, `HealthModifier` = 0.2 WHERE `entry`=19964;

/*  Terror Sentry  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19967;

/*  Green Seedling  */
UPDATE `creature_template` SET `maxlevel` = 69, `DamageModifier` = 3.91478, `HealthModifier` = 0.1 WHERE `entry`=19969;

/*  Dreadforge Servant  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19971;

/*  Night Walker  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=19972;

/*  Void Terror  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=19980;

/*  Vekh'nir Stormcaller  */
UPDATE `creature_template` SET `maxlevel` = 65 WHERE `entry`=19983;

/*  Ruuan'ok Cloudgazer  */
UPDATE `creature_template` SET `HealthModifier` = 0.7 WHERE `entry`=19985;

/*  Bloodmaul Shaman  */
UPDATE `creature_template` SET `maxlevel` = 66 WHERE `entry`=19992;

/*  Bloodmaul Warlock  */
UPDATE `creature_template` SET `HealthModifier` = 0.9, `ArmorModifier` = 0.667265 WHERE `entry`=19994;

/*  Bladespire Battlemage  */
UPDATE `creature_template` SET `DamageModifier` = 2.98119 WHERE `entry`=19996;

/*  Bladespire Enforcer  */
UPDATE `creature_template` SET `DamageModifier` = 2.97918 WHERE `entry`=19997;

/*  Bladespire Shaman  */
UPDATE `creature_template` SET `ArmorModifier` = 0.461936 WHERE `entry`=19998;

/*  Mountain Lion Mother  */
UPDATE `creature_template` SET `HealthModifier` = 1.7 WHERE `entry`=20001;

/*  Hurlog Horde  */
UPDATE `creature_template` SET `DamageModifier` = 2.57759, `HealthModifier` = 3.6 WHERE `entry`=20002;

/*  Blade's Edge Kneel Target 01  */
UPDATE `creature_template` SET `minlevel` = 61, `maxlevel` = 61, `DamageModifier` = 0.337539, `HealthModifier` = 5.9 WHERE `entry`=20003;

/*  Illiyana Moonblaze  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 2.2 WHERE `entry`=20010;

/*  Illiyana Moonblaze  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 2.2 WHERE `entry`=20011;

/*  Illiyana Moonblaze  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 2.2 WHERE `entry`=20012;

/*  Illiyana Moonblaze  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 2.2 WHERE `entry`=20013;

/*  Illiyana Moonblaze  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 2.2 WHERE `entry`=20014;

/*  Nether Whelp  */
UPDATE `creature_template` SET `DamageModifier` = 0.109603, `HealthModifier` = 1.2 WHERE `entry`=20021;

/*  Kelm Hargunth  */
UPDATE `creature_template` SET `HealthModifier` = 1.6 WHERE `entry`=20022;

/*  Blade's Edge Kneel Target 02  */
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55, `DamageModifier` = 0.31601, `HealthModifier` = 1.6 WHERE `entry`=20023;

/*  Blade's Edge Kneel Target 03  */
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55, `DamageModifier` = 0.31601, `HealthModifier` = 1.6 WHERE `entry`=20024;

/*  Blackfang Tarantula Specimen  */
UPDATE `creature_template` SET `DamageModifier` = 1.28115 WHERE `entry`=20027;

/*  Doba  */
UPDATE `creature_template` SET `DamageModifier` = 2.54842, `HealthModifier` = 1.0 WHERE `entry`=20028;

/*  Bloodwarder Legionnaire  */
UPDATE `creature_template` SET `DamageModifier` = 20.4306, `HealthModifier` = 25.0 WHERE `entry`=20031;

/*  Bloodwarder Vindicator  */
UPDATE `creature_template` SET `DamageModifier` = 28.3081, `HealthModifier` = 40.0 WHERE `entry`=20032;

/*  Astromancer  */
UPDATE `creature_template` SET `DamageModifier` = 13.356, `HealthModifier` = 25.0 WHERE `entry`=20033;

/*  Star Scryer  */
UPDATE `creature_template` SET `DamageModifier` = 14.1634, `HealthModifier` = 25.0 WHERE `entry`=20034;

/*  Bloodwarder Marshal  */
UPDATE `creature_template` SET `DamageModifier` = 22.2792, `HealthModifier` = 40.0 WHERE `entry`=20035;

/*  Bloodwarder Squire  */
UPDATE `creature_template` SET `DamageModifier` = 22.5425, `HealthModifier` = 25.0 WHERE `entry`=20036;

/*  Tempest Falconer  */
UPDATE `creature_template` SET `DamageModifier` = 5.2048, `HealthModifier` = 25.1 WHERE `entry`=20037;

/*  Phoenix-Hawk Hatchling  */
UPDATE `creature_template` SET `DamageModifier` = 12.6499, `HealthModifier` = 10.0 WHERE `entry`=20038;

/*  Phoenix-Hawk  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 13.0329, `HealthModifier` = 10.0 WHERE `entry`=20039;

/*  Crystalcore Devastator  */
UPDATE `creature_template` SET `DamageModifier` = 27.8469, `HealthModifier` = 75.0 WHERE `entry`=20040;

/*  Crystalcore Sentinel  */
UPDATE `creature_template` SET `DamageModifier` = 24.3702, `HealthModifier` = 40.0 WHERE `entry`=20041;

/*  Tempest-Smith  */
UPDATE `creature_template` SET `DamageModifier` = 10.3441, `HealthModifier` = 25.0 WHERE `entry`=20042;

/*  Apprentice Star Scryer  */
UPDATE `creature_template` SET `DamageModifier` = 5.81989, `HealthModifier` = 3.9 WHERE `entry`=20043;

/*  Novice Astromancer  */
UPDATE `creature_template` SET `DamageModifier` = 5.81989, `HealthModifier` = 4.7, `ArmorModifier` = 0.769827 WHERE `entry`=20044;

/*  Nether Scryer  */
UPDATE `creature_template` SET `DamageModifier` = 17.3943, `HealthModifier` = 40.0 WHERE `entry`=20045;

/*  Astromancer Lord  */
UPDATE `creature_template` SET `DamageModifier` = 17.3943, `HealthModifier` = 40.0 WHERE `entry`=20046;

/*  Crimson Hand Battle Mage  */
UPDATE `creature_template` SET `DamageModifier` = 14.1634, `HealthModifier` = 25.0 WHERE `entry`=20047;

/*  Crimson Hand Centurion  */
UPDATE `creature_template` SET `DamageModifier` = 13.1739, `HealthModifier` = 25.1 WHERE `entry`=20048;

/*  Crimson Hand Blood Knight  */
UPDATE `creature_template` SET `DamageModifier` = 14.1634, `HealthModifier` = 40.0 WHERE `entry`=20049;

/*  Crimson Hand Inquisitor  */
UPDATE `creature_template` SET `DamageModifier` = 13.6715, `HealthModifier` = 39.0 WHERE `entry`=20050;

/*  Crystalcore Mechanic  */
UPDATE `creature_template` SET `DamageModifier` = 17.719, `HealthModifier` = 25.0 WHERE `entry`=20052;

/*  Sunseeker Netherbinder  */
UPDATE `creature_template` SET `DamageModifier` = 7.65083, `ArmorModifier` = 0.63416 WHERE `entry`=20059;

/*  Lord Sanguinar  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `rank` = 1, `DamageModifier` = 29.3618, `HealthModifier` = 36.0 WHERE `entry`=20060;

/*  Grand Astromancer Capernian  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `rank` = 1, `DamageModifier` = 11.1394, `HealthModifier` = 36.0, `ArmorModifier` = 0.633039 WHERE `entry`=20062;

/*  Master Engineer Telonicus  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `rank` = 1, `DamageModifier` = 20.6465, `HealthModifier` = 36.0 WHERE `entry`=20063;

/*  Thaladred the Darkener  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `rank` = 1, `DamageModifier` = 33.031, `HealthModifier` = 36.0 WHERE `entry`=20064;

/*  Gahruj  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=20066;

/*  Zuben Elgenubi  */
UPDATE `creature_template` SET `DamageModifier` = 0.189478, `HealthModifier` = 1.4 WHERE `entry`=20067;

/*  Zuben Eschamali  */
UPDATE `creature_template` SET `DamageModifier` = 1.79177, `HealthModifier` = 0.8 WHERE `entry`=20068;

/*  Wind Trader Marid  */
UPDATE `creature_template` SET `DamageModifier` = 1.79177 WHERE `entry`=20071;

/*  Darkwater Crocolisk  */
UPDATE `creature_template` SET `DamageModifier` = 1.41427 WHERE `entry`=20075;

/*  Naga Distiller (Coilskar Point)  */
UPDATE `creature_template` SET `DamageModifier` = 1.64214, `HealthModifier` = 1.7 WHERE `entry`=20076;

/*  Summoned Bloodwarder Reservist  */
UPDATE `creature_template` SET `DamageModifier` = 4.54545, `HealthModifier` = 0.8 WHERE `entry`=20078;

/*  Darkcrest Sentry  */
UPDATE `creature_template` SET `DamageModifier` = 0.412548 WHERE `entry`=20079;

/*  Galgrom  */
UPDATE `creature_template` SET `DamageModifier` = 1.72032 WHERE `entry`=20080;

/*  Bortega  */
UPDATE `creature_template` SET `DamageModifier` = 1.72032, `HealthModifier` = 0.8 WHERE `entry`=20081;

/*  Yarley  */
UPDATE `creature_template` SET `DamageModifier` = 1.72032, `HealthModifier` = 1.2 WHERE `entry`=20082;

/*  Summoned Bloodwarder Mender  */
UPDATE `creature_template` SET `DamageModifier` = 14.6103, `HealthModifier` = 2.1 WHERE `entry`=20083;

/*  Image of Nexus-Prince Haramad  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 0.178409, `HealthModifier` = 0.8 WHERE `entry`=20084;

/*  Worker Mo'rrisroe  */
UPDATE `creature_template` SET `DamageModifier` = 0.358027 WHERE `entry`=20087;

/*  Bloodscale Sentry  */
UPDATE `creature_template` SET `DamageModifier` = 0.405929 WHERE `entry`=20090;

/*  Dealer Hazzin  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.7 WHERE `entry`=20092;

/*  Uriku  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.1 WHERE `entry`=20096;

/*  Jessel  */
UPDATE `creature_template` SET `DamageModifier` = 0.431345, `HealthModifier` = 0.5 WHERE `entry`=20100;

/*  Nether-Stalker  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.7 WHERE `entry`=20101;

/*  Lashh'an Kaliri  */
UPDATE `creature_template` SET `minlevel` = 65, `maxlevel` = 66, `DamageModifier` = 0.421756 WHERE `entry`=20109;

/*  Tyri  */
UPDATE `creature_template` SET `DamageModifier` = 1.64214, `HealthModifier` = 0.8 WHERE `entry`=20110;

/*  Jorad Mace  */
UPDATE `creature_template` SET `DamageModifier` = 1.64214, `HealthModifier` = 0.2 WHERE `entry`=20111;

/*  Wind Trader Tuluman  */
UPDATE `creature_template` SET `DamageModifier` = 1.72335, `HealthModifier` = 0.7 WHERE `entry`=20112;

/*  Gurn Grubnosh  */
UPDATE `creature_template` SET `DamageModifier` = 1.78954, `HealthModifier` = 2.3 WHERE `entry`=20116;

/*  Vengeful Unyielding Knight  */
UPDATE `creature_template` SET `DamageModifier` = 2.8726 WHERE `entry`=20117;

/*  Jihi  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 0.3 WHERE `entry`=20118;

/*  Mahul  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 1.5 WHERE `entry`=20119;

/*  Tolo  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 1.9 WHERE `entry`=20120;

/*  Fingin  */
UPDATE `creature_template` SET `DamageModifier` = 0.395844, `HealthModifier` = 0.4 WHERE `entry`=20121;

/*  Bloodscale Sea Witch  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=20122;

/*  Farmer Griffith  */
UPDATE `creature_template` SET `minlevel` = 61, `maxlevel` = 64, `DamageModifier` = 0.25815, `HealthModifier` = 0.8 WHERE `entry`=20123;

/*  Kradu Grimblade  */
UPDATE `creature_template` SET `DamageModifier` = 0.210878 WHERE `entry`=20124;

/*  Zula Slagfury  */
UPDATE `creature_template` SET `DamageModifier` = 0.210878, `HealthModifier` = 1.2 WHERE `entry`=20125;

/*  Sylvanaar Ancient Protector  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=20126;

/*  Tame Kaliri  */
UPDATE `creature_template` SET `DamageModifier` = 2.52275, `HealthModifier` = 0.2 WHERE `entry`=20127;

/*  Andormu  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 1.0, `HealthModifier` = 0.9 WHERE `entry`=20130;

/*  Nozari  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 2.28205, `HealthModifier` = 2.0 WHERE `entry`=20131;

/*  Socrethar  */
UPDATE `creature_template` SET `DamageModifier` = 19.563 WHERE `entry`=20132;

/*  Sunfury Arch Mage  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=20135;

/*  Vengeful Unyielding Footman  */
UPDATE `creature_template` SET `DamageModifier` = 2.99758, `HealthModifier` = 0.7 WHERE `entry`=20137;

/*  Culuthas  */
UPDATE `creature_template` SET `DamageModifier` = 3.00401 WHERE `entry`=20138;

/*  Sunfury Conjurer  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=20139;

/*  Steward of Time  */
UPDATE `creature_template` SET `DamageModifier` = 1.51582 WHERE `entry`=20142;

/*  Shrouded Figure  */
UPDATE `creature_template` SET `HealthModifier` = 1.2 WHERE `entry`=20154;

/*  Fleeing Dreghood Geomancer  */
UPDATE `creature_template` SET `DamageModifier` = 3.86449, `HealthModifier` = 1.0 WHERE `entry`=20157;

/*  Slime-Covered Corpse  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.5 WHERE `entry`=20158;

/*  Magister Aledis  */
UPDATE `creature_template` SET `DamageModifier` = 3.3044, `HealthModifier` = 1.4 WHERE `entry`=20159;

/*  Infernal Defender  */
UPDATE `creature_template` SET `minlevel` = 50, `maxlevel` = 50, `DamageModifier` = 1.5755, `ArmorModifier` = 1.43661 WHERE `entry`=20160;

/*  Vekh'nir Matriarch  */
UPDATE `creature_template` SET `HealthModifier` = 0.7 WHERE `entry`=20161;

/*  Veronia  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=20162;

/*  Bog Giant (1)  */
UPDATE `creature_template` SET `DamageModifier` = 30.0095, `HealthModifier` = 8.9 WHERE `entry`=20164;

/*  Claw (1)  */
UPDATE `creature_template` SET `DamageModifier` = 11.7031, `HealthModifier` = 12.0 WHERE `entry`=20165;

/*  Ghaz'an (1)  */
UPDATE `creature_template` SET `DamageModifier` = 27.9101, `mingold` = 4315, `maxgold` = 5640 WHERE `entry`=20168;

/*  Hungarfen (1)  */
UPDATE `creature_template` SET `DamageModifier` = 31.6758, `HealthModifier` = 14.9, `mingold` = 4783, `maxgold` = 6250 WHERE `entry`=20169;

/*  Fen Ray (1)  */
UPDATE `creature_template` SET `DamageModifier` = 15.2392, `HealthModifier` = 3.9 WHERE `entry`=20173;

/*  Lykul Stinger (1)  */
UPDATE `creature_template` SET `DamageModifier` = 27.125, `HealthModifier` = 5.3 WHERE `entry`=20174;

/*  Lykul Wasp (1)  */
UPDATE `creature_template` SET `DamageModifier` = 22.1007, `HealthModifier` = 3.1 WHERE `entry`=20175;

/*  Murkblood Healer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 10.852, `HealthModifier` = 3.9, `ArmorModifier` = 0.672756, `mingold` = 1039, `maxgold` = 1362 WHERE `entry`=20177;

/*  Murkblood Oracle (1)  */
UPDATE `creature_template` SET `DamageModifier` = 13.3083, `HealthModifier` = 3.9, `mingold` = 1039, `maxgold` = 1362 WHERE `entry`=20179;

/*  Murkblood Spearman (1)  */
UPDATE `creature_template` SET `DamageModifier` = 16.7591, `HealthModifier` = 3.9, `mingold` = 1039, `maxgold` = 1362 WHERE `entry`=20180;

/*  Murkblood Tribesman (1)  */
UPDATE `creature_template` SET `DamageModifier` = 7.57275, `HealthModifier` = 3.9, `mingold` = 1294, `maxgold` = 1695 WHERE `entry`=20181;

/*  Swamplord Musel'ek (1)  */
UPDATE `creature_template` SET `DamageModifier` = 12.0933, `HealthModifier` = 15.1, `mingold` = 3933, `maxgold` = 5140 WHERE `entry`=20183;

/*  The Black Stalker (1)  */
UPDATE `creature_template` SET `DamageModifier` = 23.0628, `mingold` = 5633, `maxgold` = 7360 WHERE `entry`=20184;

/*  Underbat (1)  */
UPDATE `creature_template` SET `DamageModifier` = 18.8485, `HealthModifier` = 3.9 WHERE `entry`=20185;

/*  Underbog Lord (1)  */
UPDATE `creature_template` SET `DamageModifier` = 56.2101, `HealthModifier` = 9.9 WHERE `entry`=20187;

/*  Underbog Lurker (1)  */
UPDATE `creature_template` SET `DamageModifier` = 16.9381, `HealthModifier` = 3.9 WHERE `entry`=20188;

/*  Underbog Mushroom (1)  */
UPDATE `creature_template` SET `HealthModifier` = 4.7 WHERE `entry`=20189;

/*  Underbog Shambler (1)  */
UPDATE `creature_template` SET `DamageModifier` = 39.6297, `HealthModifier` = 4.0 WHERE `entry`=20190;

/*  Wrathfin Myrmidon (1)  */
UPDATE `creature_template` SET `DamageModifier` = 32.1599, `HealthModifier` = 3.9, `mingold` = 1296, `maxgold` = 1697 WHERE `entry`=20191;

/*  Wrathfin Sentry (1)  */
UPDATE `creature_template` SET `DamageModifier` = 28.8738, `HealthModifier` = 3.9, `mingold` = 1296, `maxgold` = 1697 WHERE `entry`=20192;

/*  Wrathfin Warrior (1)  */
UPDATE `creature_template` SET `DamageModifier` = 15.2968, `HealthModifier` = 3.9, `mingold` = 1296, `maxgold` = 1697 WHERE `entry`=20193;

/*  Dealer Dunar  */
UPDATE `creature_template` SET `HealthModifier` = 0.9 WHERE `entry`=20194;

/*  Bogflare Needler  */
UPDATE `creature_template` SET `DamageModifier` = 0.244788 WHERE `entry`=20197;

/*  Ambassador's Honor Guard  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=20199;

/*  Sa'at  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 3.53272, `HealthModifier` = 1.8 WHERE `entry`=20201;

/*  Cragskaar  */
UPDATE `creature_template` SET `DamageModifier` = 3.00191 WHERE `entry`=20202;

/*  Nether Technician  */
UPDATE `creature_template` SET `HealthModifier` = 0.3 WHERE `entry`=20203;

/*  Action Jaxon  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.2 WHERE `entry`=20204;

/*  Audi the Needle  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.2 WHERE `entry`=20205;

/*  Arakkoa Egg  */
UPDATE `creature_template` SET `DamageModifier` = 0.245068, `HealthModifier` = 0.2 WHERE `entry`=20214;

/*  Grulloc  */
UPDATE `creature_template` SET `DamageModifier` = 7.20098 WHERE `entry`=20216;

/*  Purple Hawkstrider  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=20217;

/*  Sunfury Technician  */
UPDATE `creature_template` SET `DamageModifier` = 0.254196 WHERE `entry`=20218;

/*  Blue Hawkstrider  */
UPDATE `creature_template` SET `ArmorModifier` = 1.5163 WHERE `entry`=20220;

/*  Black Hawkstrider  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=20222;

/*  Swift Purple Hawkstrider  */
UPDATE `creature_template` SET `ArmorModifier` = 1.5163 WHERE `entry`=20223;

/*  Swift Green Hawkstrider  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.7 WHERE `entry`=20224;

/*  Manaforge Visual Trigger  */
UPDATE `creature_template` SET `HealthModifier` = 2.3 WHERE `entry`=20226;

/*  Apprentice Tedon  */
UPDATE `creature_template` SET `DamageModifier` = 0.452984, `HealthModifier` = 0.5, `ArmorModifier` = 0.294118 WHERE `entry`=20227;

/*  Blade's Edge - Bladespire Trigger 01  */
UPDATE `creature_template` SET `HealthModifier` = 2.3 WHERE `entry`=20230;

/*  Supply Officer Pestle  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=20231;

/*  Wing Commander Gryphongar  */
UPDATE `creature_template` SET `DamageModifier` = 3.36885 WHERE `entry`=20232;

/*  Apprentice Vishael  */
UPDATE `creature_template` SET `DamageModifier` = 0.452984, `HealthModifier` = 0.5, `ArmorModifier` = 0.294118 WHERE `entry`=20233;

/*  Runetog Wildhammer  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.7 WHERE `entry`=20234;

/*  Gryphoneer Windbellow  */
UPDATE `creature_template` SET `DamageModifier` = 3.85532, `HealthModifier` = 1.1 WHERE `entry`=20235;

/*  Gryphoneer Leafbeard  */
UPDATE `creature_template` SET `DamageModifier` = 3.85532, `HealthModifier` = 3.1 WHERE `entry`=20236;

/*  Honor Hold Gryphon Rider  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=20237;

/*  Honor Hold Scout  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.4 WHERE `entry`=20238;

/*  Trader Narasu  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.0 WHERE `entry`=20240;

/*  Provisioner Nasela  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=20241;

/*  Karaaz  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.9 WHERE `entry`=20242;

/*  Scrapped Fel Reaver  */
UPDATE `creature_template` SET `DamageModifier` = 1.64214, `HealthModifier` = 6.0 WHERE `entry`=20243;

/*  Cymbre Starsong  */
UPDATE `creature_template` SET `DamageModifier` = 0.180455, `HealthModifier` = 0.7 WHERE `entry`=20249;

/*  Rashere Pridehoof  */
UPDATE `creature_template` SET `DamageModifier` = 0.180455, `HealthModifier` = 0.8 WHERE `entry`=20250;

/*  Honor Hold Scout Archery Target  */
UPDATE `creature_template` SET `DamageModifier` = 2.53717, `HealthModifier` = 0.2 WHERE `entry`=20251;

/*  Arcane Fiend (1)  */
UPDATE `creature_template` SET `minlevel` = 64, `maxlevel` = 70, `DamageModifier` = 1.5851, `HealthModifier` = 0.3 WHERE `entry`=20252;

/*  Ethereal Apprentice (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.55395, `ManaModifier` = 4.3 WHERE `entry`=20253;

/*  Ethereal Beacon (1)  */
UPDATE `creature_template` SET `minlevel` = 65, `maxlevel` = 70, `DamageModifier` = 1.0, `HealthModifier` = 0.7, `ManaModifier` = 1.1 WHERE `entry`=20254;

/*  Ethereal Crypt Raider (1)  */
UPDATE `creature_template` SET `DamageModifier` = 10.8363, `HealthModifier` = 3.9, `mingold` = 1253, `maxgold` = 1642 WHERE `entry`=20255;

/*  Ethereal Darkcaster (1)  */
UPDATE `creature_template` SET `DamageModifier` = 7.41698, `ArmorModifier` = 0.633658, `mingold` = 618, `maxgold` = 811 WHERE `entry`=20256;

/*  Ethereal Priest (1)  */
UPDATE `creature_template` SET `DamageModifier` = 3.39069, `HealthModifier` = 3.9, `ArmorModifier` = 0.633658, `mingold` = 616, `maxgold` = 809 WHERE `entry`=20257;

/*  Ethereal Scavenger (1)  */
UPDATE `creature_template` SET `DamageModifier` = 12.6409, `ArmorModifier` = 0.742819, `mingold` = 1041, `maxgold` = 1364 WHERE `entry`=20258;

/*  Ethereal Sorcerer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 3.7025, `ArmorModifier` = 0.633658, `mingold` = 828, `maxgold` = 1087 WHERE `entry`=20259;

/*  Ethereal Spellbinder (1)  */
UPDATE `creature_template` SET `DamageModifier` = 3.55683, `ArmorModifier` = 0.633367, `mingold` = 618, `maxgold` = 811 WHERE `entry`=20260;

/*  Ethereal Theurgist (1)  */
UPDATE `creature_template` SET `DamageModifier` = 2.99919, `HealthModifier` = 3.9, `ArmorModifier` = 0.633367, `mingold` = 619, `maxgold` = 814 WHERE `entry`=20261;

/*  Ethereal Wraith (1)  */
UPDATE `creature_template` SET `minlevel` = 68, `maxlevel` = 69, `DamageModifier` = 2.7166, `HealthModifier` = 2.1 WHERE `entry`=20262;

/*  Mana Leech (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.37603, `HealthModifier` = 1.3, `ArmorModifier` = 0.60167 WHERE `entry`=20263;

/*  Nexus Stalker (1)  */
UPDATE `creature_template` SET `DamageModifier` = 4.57853, `HealthModifier` = 3.9, `ArmorModifier` = 0.748019, `mingold` = 873, `maxgold` = 1144 WHERE `entry`=20264;

/*  Nexus Terror (1)  */
UPDATE `creature_template` SET `DamageModifier` = 6.37909, `HealthModifier` = 7.1, `ArmorModifier` = 0.742819, `mingold` = 1381, `maxgold` = 1808 WHERE `entry`=20265;

/*  Nexus-Prince Shaffar (1)  */
UPDATE `creature_template` SET `DamageModifier` = 12.3432, `HealthModifier` = 23.7, `mingold` = 3807, `maxgold` = 4976 WHERE `entry`=20266;

/*  Pandemonius (1)  */
UPDATE `creature_template` SET `DamageModifier` = 14.2015, `HealthModifier` = 16.3, `mingold` = 4784, `maxgold` = 6253 WHERE `entry`=20267;

/*  Tavarok (1)  */
UPDATE `creature_template` SET `DamageModifier` = 14.7127, `HealthModifier` = 20.2, `mingold` = 3977, `maxgold` = 5198 WHERE `entry`=20268;

/*  Montok Redhands  */
UPDATE `creature_template` SET `DamageModifier` = 3.80669, `HealthModifier` = 2.1 WHERE `entry`=20269;

/*  Haelga Slatefist  */
UPDATE `creature_template` SET `DamageModifier` = 3.80669, `HealthModifier` = 2.0 WHERE `entry`=20271;

/*  Lylandor  */
UPDATE `creature_template` SET `DamageModifier` = 3.80669, `HealthModifier` = 2.4 WHERE `entry`=20272;

/*  Adam Eternum  */
UPDATE `creature_template` SET `DamageModifier` = 3.80669, `HealthModifier` = 2.0 WHERE `entry`=20273;

/*  Keldor the Lost  */
UPDATE `creature_template` SET `DamageModifier` = 1.57459, `HealthModifier` = 2.9 WHERE `entry`=20274;

/*  Wolf-Sister Maka  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 2.0 WHERE `entry`=20276;

/*  Vixton Pinchwhistle  */
UPDATE `creature_template` SET `subname` = 'Arena Vendor', `DamageModifier` = 2.0 WHERE `entry`=20278;

/*  Ragestone Threshalisk  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=20279;

/*  Ragestone Trampler  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=20280;

/*  Drijya  */
UPDATE `creature_template` SET `HealthModifier` = 1.6 WHERE `entry`=20281;

/*  Marshrock Stomper  */
UPDATE `creature_template` SET `DamageModifier` = 2.24183 WHERE `entry`=20283;

/*  Lagoon Eel  */
UPDATE `creature_template` SET `DamageModifier` = 0.244563 WHERE `entry`=20290;

/*  Teleporter Explosion Trigger  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=20296;

/*  Angered Skeleton (1)  */
UPDATE `creature_template` SET `DamageModifier` = 2.91007, `HealthModifier` = 3.6, `mingold` = 1299, `maxgold` = 1702 WHERE `entry`=20298;

/*  Auchenai Monk (1)  */
UPDATE `creature_template` SET `HealthModifier` = 4.3, `ArmorModifier` = 0.662152, `mingold` = 1383, `maxgold` = 1810 WHERE `entry`=20299;

/*  Auchenai Necromancer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 6.4, `ArmorModifier` = 0.704148, `ManaModifier` = 5.2, `mingold` = 1639, `maxgold` = 2146 WHERE `entry`=20300;

/*  Auchenai Soulpriest (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 3.9, `ArmorModifier` = 0.637299, `mingold` = 1043, `maxgold` = 1366 WHERE `entry`=20301;

/*  Auchenai Vindicator (1)  */
UPDATE `creature_template` SET `DamageModifier` = 2.91559, `HealthModifier` = 3.9, `ArmorModifier` = 0.745379, `ManaModifier` = 2.9, `mingold` = 1043, `maxgold` = 1366 WHERE `entry`=20302;

/*  Avatar of the Martyred (1)  */
UPDATE `creature_template` SET `DamageModifier` = 6.49604, `HealthModifier` = 6.4 WHERE `entry`=20303;

/*  Stolen Soul (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.65945, `HealthModifier` = 1.1, `ArmorModifier` = 0.311381 WHERE `entry`=20305;

/*  Exarch Maladaar (1)  */
UPDATE `creature_template` SET `DamageModifier` = 11.4245, `HealthModifier` = 22.3, `mingold` = 5636, `maxgold` = 7365 WHERE `entry`=20306;

/*  Phantasmal Possessor (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 4.72745, `ArmorModifier` = 0.148038, `ManaModifier` = 2.7, `mingold` = 144, `maxgold` = 192 WHERE `entry`=20309;

/*  Phasing Cleric (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.62333, `HealthModifier` = 1.2, `ArmorModifier` = 0.641026, `mingold` = 205, `maxgold` = 273 WHERE `entry`=20310;

/*  Phasing Soldier (1)  */
UPDATE `creature_template` SET `DamageModifier` = 8.62235, `HealthModifier` = 1.2, `ArmorModifier` = 0.787468, `mingold` = 229, `maxgold` = 303 WHERE `entry`=20311;

/*  Phasing Sorcerer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 3.4575, `HealthModifier` = 1.2, `ArmorModifier` = 0.637299, `mingold` = 193, `maxgold` = 256 WHERE `entry`=20312;

/*  Phasing Stalker (1)  */
UPDATE `creature_template` SET `DamageModifier` = 9.20189, `HealthModifier` = 1.1, `ArmorModifier` = 0.637299, `mingold` = 195, `maxgold` = 259 WHERE `entry`=20313;

/*  Raging Skeleton (1)  */
UPDATE `creature_template` SET `DamageModifier` = 2.88043, `HealthModifier` = 4.1, `mingold` = 1342, `maxgold` = 1757 WHERE `entry`=20315;

/*  Raging Soul (1)  */
UPDATE `creature_template` SET `DamageModifier` = 4.00493, `HealthModifier` = 0.7, `ArmorModifier` = 0.641026 WHERE `entry`=20316;

/*  Reanimated Bones (1)  */
UPDATE `creature_template` SET `DamageModifier` = 2.67218, `HealthModifier` = 0.7, `ArmorModifier` = 0.796666 WHERE `entry`=20317;

/*  Shirrak the Dead Watcher (1)  */
UPDATE `creature_template` SET `DamageModifier` = 12.1938, `HealthModifier` = 20.3, `ManaModifier` = 4.9, `mingold` = 5209, `maxgold` = 6808 WHERE `entry`=20318;

/*  Unliving Cleric (1)  */
UPDATE `creature_template` SET `DamageModifier` = 2.58733, `HealthModifier` = 1.6, `ArmorModifier` = 0.641026, `ManaModifier` = 3.1 WHERE `entry`=20320;

/*  Unliving Soldier (1)  */
UPDATE `creature_template` SET `DamageModifier` = 7.56666, `HealthModifier` = 1.6, `ArmorModifier` = 0.787468, `mingold` = 286, `maxgold` = 378 WHERE `entry`=20321;

/*  Unliving Sorcerer (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 3.32142, `HealthModifier` = 1.6, `ArmorModifier` = 0.637299, `mingold` = 256, `maxgold` = 340 WHERE `entry`=20322;

/*  Unliving Stalker (1)  */
UPDATE `creature_template` SET `DamageModifier` = 7.89765, `HealthModifier` = 1.6, `ArmorModifier` = 0.637299 WHERE `entry`=20323;

/*  Parched Hydra  */
UPDATE `creature_template` SET `maxlevel` = 62 WHERE `entry`=20324;

/*  Grishna Raven  */
UPDATE `creature_template` SET `minlevel` = 67, `maxlevel` = 68, `DamageModifier` = 0.508393 WHERE `entry`=20327;

/*  G'eras Vindicator  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.1 WHERE `entry`=20331;

/*  Northern Pipe Credit Marker  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=20333;

/*  Parasitic Fleshbeast  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=20335;

/*  Eastern Pipe Credit Marker  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=20336;

/*  Southern Pipe Credit Marker  */
UPDATE `creature_template` SET `HealthModifier` = 2.3 WHERE `entry`=20337;

/*  Western Pipe Credit Marker  */
UPDATE `creature_template` SET `HealthModifier` = 2.3 WHERE `entry`=20338;

/*  Oric Coe  */
UPDATE `creature_template` SET `DamageModifier` = 5.91929, `HealthModifier` = 3.2 WHERE `entry`=20339;

/*  Nether-Stalker Oazul  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=20341;

/*  Hal McAllister  */
UPDATE `creature_template` SET `HealthModifier` = 0.4 WHERE `entry`=20342;

/*  Nat Pagle  */
UPDATE `creature_template` SET `DamageModifier` = 4.45477, `HealthModifier` = 0.4 WHERE `entry`=20344;

/*  Commander Mograine  */
UPDATE `creature_template` SET `DamageModifier` = 4.05131, `HealthModifier` = 11.4 WHERE `entry`=20345;

/*  Isillien  */
UPDATE `creature_template` SET `DamageModifier` = 4.36327, `HealthModifier` = 2.6 WHERE `entry`=20346;

/*  Abbendis  */
UPDATE `creature_template` SET `DamageModifier` = 4.36636, `HealthModifier` = 2.6 WHERE `entry`=20347;

/*  Fairbanks  */
UPDATE `creature_template` SET `DamageModifier` = 5.21472, `HealthModifier` = 0.5 WHERE `entry`=20348;

/*  Tirion Fordring  */
UPDATE `creature_template` SET `DamageModifier` = 4.3388, `HealthModifier` = 2.7 WHERE `entry`=20349;

/*  Kel'Thuzad  */
UPDATE `creature_template` SET `DamageModifier` = 4.3388, `HealthModifier` = 6.7 WHERE `entry`=20350;

/*  Captain Sanders  */
UPDATE `creature_template` SET `DamageModifier` = 5.07105, `HealthModifier` = 10.9 WHERE `entry`=20351;

/*  Arcanist Doan  */
UPDATE `creature_template` SET `DamageModifier` = 5.08597, `HealthModifier` = 0.6 WHERE `entry`=20352;

/*  Helcular  */
UPDATE `creature_template` SET `DamageModifier` = 5.34697, `HealthModifier` = 3.5 WHERE `entry`=20353;

/*  Nathanos Marris  */
UPDATE `creature_template` SET `DamageModifier` = 4.39242, `HealthModifier` = 5.3 WHERE `entry`=20354;

/*  Stalvan Mistmantle  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=20355;

/*  Sally Whitemane  */
UPDATE `creature_template` SET `DamageModifier` = 5.08206, `HealthModifier` = 5.1 WHERE `entry`=20357;

/*  Renault Mograine  */
UPDATE `creature_template` SET `DamageModifier` = 4.75637, `HealthModifier` = 0.6 WHERE `entry`=20358;

/*  Little Jimmy Vishas  */
UPDATE `creature_template` SET `HealthModifier` = 0.6, `ArmorModifier` = 0.122699 WHERE `entry`=20359;

/*  Herod the Bully  */
UPDATE `creature_template` SET `DamageModifier` = 5.07941, `HealthModifier` = 0.6 WHERE `entry`=20360;

/*  Taelan  */
UPDATE `creature_template` SET `DamageModifier` = 5.07105, `HealthModifier` = 0.6 WHERE `entry`=20361;

/*  Iravar  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 0.9 WHERE `entry`=20362;

/*  Caretaker Smithers  */
UPDATE `creature_template` SET `DamageModifier` = 4.45978, `HealthModifier` = 0.4 WHERE `entry`=20363;

/*  Bartolo Ginsetti  */
UPDATE `creature_template` SET `DamageModifier` = 4.47528, `HealthModifier` = 0.4 WHERE `entry`=20365;

/*  Farmer Kent  */
UPDATE `creature_template` SET `DamageModifier` = 4.59016, `HealthModifier` = 0.6 WHERE `entry`=20368;

/*  Phin Odelic  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=20370;

/*  Jonathan Revah  */
UPDATE `creature_template` SET `DamageModifier` = 7.17166, `HealthModifier` = 3.7 WHERE `entry`=20372;

/*  Magistrate Henry Maleb  */
UPDATE `creature_template` SET `HealthModifier` = 2.5 WHERE `entry`=20373;

/*  Jerry Carter  */
UPDATE `creature_template` SET `DamageModifier` = 7.14903, `HealthModifier` = 3.7 WHERE `entry`=20376;

/*  Barkeep Kelly  */
UPDATE `creature_template` SET `DamageModifier` = 7.31949, `HealthModifier` = 13.8 WHERE `entry`=20377;

/*  Chef Jessen  */
UPDATE `creature_template` SET `DamageModifier` = 5.18562, `HealthModifier` = 8.1 WHERE `entry`=20378;

/*  Bilger the Straight-laced  */
UPDATE `creature_template` SET `DamageModifier` = 4.59016, `HealthModifier` = 0.5 WHERE `entry`=20379;

/*  Raleigh the True  */
UPDATE `creature_template` SET `DamageModifier` = 5.18562, `HealthModifier` = 1.7 WHERE `entry`=20380;

/*  Mitia  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 1.7 WHERE `entry`=20382;

/*  Enlae  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.0 WHERE `entry`=20383;

/*  Yula the Fair  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 0.9 WHERE `entry`=20384;

/*  Andrissa Heartspear  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.0 WHERE `entry`=20385;

/*  Althallen Brightblade  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.5 WHERE `entry`=20388;

/*  Lee Sparks  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.6 WHERE `entry`=20389;

/*  Duyash the Cruel  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 0.2 WHERE `entry`=20390;

/*  Foreman Sundown  */
UPDATE `creature_template` SET `HealthModifier` = 0.2 WHERE `entry`=20393;

/*  Eye of Culuthas  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=20394;

/*  Battle-Tiger  */
UPDATE `creature_template` SET `DamageModifier` = 0.337539, `HealthModifier` = 2.4 WHERE `entry`=20395;

/*  Terror Imp  */
UPDATE `creature_template` SET `HealthModifier` = 0.7 WHERE `entry`=20399;

/*  Captain Edward Hanes  */
UPDATE `creature_template` SET `DamageModifier` = 5.07941, `HealthModifier` = 1.5 WHERE `entry`=20400;

/*  Frances Lin  */
UPDATE `creature_template` SET `DamageModifier` = 6.87785, `HealthModifier` = 0.6 WHERE `entry`=20401;

/*  Legion Shocktrooper  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.2 WHERE `entry`=20402;

/*  Legion Destroyer  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=20403;

/*  Warp-Gate Engineer  */
UPDATE `creature_template` SET `minlevel` = 69 WHERE `entry`=20404;

/*  Nether Charge  */
UPDATE `creature_template` SET `HealthModifier` = 1.1 WHERE `entry`=20405;

/*  Champion Cyssa Dawnrose  */
UPDATE `creature_template` SET `DamageModifier` = 3.36885, `HealthModifier` = 1.2 WHERE `entry`=20406;

/*  Farseer Umbrua  */
UPDATE `creature_template` SET `DamageModifier` = 3.58904, `HealthModifier` = 1.6 WHERE `entry`=20407;

/*  Rhonsus  */
UPDATE `creature_template` SET `DamageModifier` = 1.79177 WHERE `entry`=20410;

/*  Spectral Bovine  */
UPDATE `creature_template` SET `HealthModifier` = 5.5, `ArmorModifier` = 0.18018 WHERE `entry`=20411;

/*  Bessy  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.4 WHERE `entry`=20415;

/*  Zixil  */
UPDATE `creature_template` SET `HealthModifier` = 0.4 WHERE `entry`=20419;

/*  Overwatch Mark 0  */
UPDATE `creature_template` SET `DamageModifier` = 4.47713, `HealthModifier` = 5.7 WHERE `entry`=20420;

/*  Kirin Tor Mage  */
UPDATE `creature_template` SET `minlevel` = 50, `maxlevel` = 60, `DamageModifier` = 3.60462, `HealthModifier` = 2.7, `ManaModifier` = 0.7 WHERE `entry`=20422;

/*  Hillsbrad Peasant  */
UPDATE `creature_template` SET `DamageModifier` = 9.89074, `HealthModifier` = 22.7 WHERE `entry`=20424;

/*  Hillsbrad Citizen  */
UPDATE `creature_template` SET `minlevel` = 40, `maxlevel` = 50, `DamageModifier` = 0.185514, `HealthModifier` = 2.9, `ManaModifier` = 0.1 WHERE `entry`=20426;

/*  Veneratus the Many  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=20427;

/*  Beggar  */
UPDATE `creature_template` SET `DamageModifier` = 5.88106, `HealthModifier` = 0.3 WHERE `entry`=20432;

/*  Hillsbrad Farmer  */
UPDATE `creature_template` SET `maxlevel` = 8, `DamageModifier` = 0.424331, `HealthModifier` = 17.6, `ArmorModifier` = 0.18018 WHERE `entry`=20433;

/*  Natasha Morris  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 0.6 WHERE `entry`=20441;

/*  Mal'druk the Soulrender  */
UPDATE `creature_template` SET `DamageModifier` = 2.92058 WHERE `entry`=20445;

/*  Researcher Navuud  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=20449;

/*  Flesh Handler Viridius  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=20450;

/*  Subservient Flesh Beast  */
UPDATE `creature_template` SET `minlevel` = 62, `maxlevel` = 65, `DamageModifier` = 2.0, `HealthModifier` = 0.3 WHERE `entry`=20451;

/*  Nexus-King Salhadaar  */
UPDATE `creature_template` SET `DamageModifier` = 6.08124 WHERE `entry`=20454;

/*  Chief Engineer Gork'lonn  */
UPDATE `creature_template` SET `DamageModifier` = 2.70683 WHERE `entry`=20460;

/*  Apprentice Andrethan  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.5 WHERE `entry`=20463;

/*  Thadell  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=20464;

/*  Underbog Frenzy  */
UPDATE `creature_template` SET `maxlevel` = 63, `DamageModifier` = 5.83284 WHERE `entry`=20465;

/*  Zephyrion  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.7 WHERE `entry`=20470;

/*  Nether-Stalker Nauthis  */
UPDATE `creature_template` SET `DamageModifier` = 0.180455, `HealthModifier` = 0.8 WHERE `entry`=20471;

/*  Surveying Marker One  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=20473;

/*  Ethereum Nexus-Stalker  */
UPDATE `creature_template` SET `minlevel` = 70 WHERE `entry`=20474;

/*  Surveying Marker Two  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=20475;

/*  Surveying Marker Three  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=20476;

/*  Arcane Servant  */
UPDATE `creature_template` SET `DamageModifier` = 1.47869, `HealthModifier` = 0.8 WHERE `entry`=20478;

/*  Unstable Shroom  */
UPDATE `creature_template` SET `maxlevel` = 65, `DamageModifier` = 2.20849, `HealthModifier` = 1.4 WHERE `entry`=20479;

/*  Raging Flames  */
UPDATE `creature_template` SET `DamageModifier` = 4.77121, `HealthModifier` = 15.6 WHERE `entry`=20481;

/*  Image of Commander Ameer  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=20482;

/*  Naberius  */
UPDATE `creature_template` SET `DamageModifier` = 3.76263 WHERE `entry`=20483;

/*  Area 52 Big Bruiser  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 1.72335, `HealthModifier` = 1.0 WHERE `entry`=20484;

/*  Area 52 Bruiser  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 1.60605, `HealthModifier` = 1.0 WHERE `entry`=20485;

/*  Dama Wildmane  */
UPDATE `creature_template` SET `subname` = 'Windrider Keeper', `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=20494;

/*  Kirin'Var Spectre  */
UPDATE `creature_template` SET `DamageModifier` = 1.3855, `HealthModifier` = 1.3, `ArmorModifier` = 1.332 WHERE `entry`=20496;

/*  Fima Five-Fingers  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.5 WHERE `entry`=20497;

/*  Fizim Blastwrench  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.6 WHERE `entry`=20499;

/*  Olrokk  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=20500;

/*  Seeping Sludge  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=20501;

/*  Ebon Gryphon  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70 WHERE `entry`=20503;

/*  Golden Gryphon  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70 WHERE `entry`=20504;

/*  Brunn Flamebeard  */
UPDATE `creature_template` SET `DamageModifier` = 1.72335, `HealthModifier` = 0.8 WHERE `entry`=20510;

/*  Ilsa Blusterbrew  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=20511;

/*  Tormented Soul  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=20512;

/*  Honor Hold Defender  */
UPDATE `creature_template` SET `DamageModifier` = 0.330909, `HealthModifier` = 2.3 WHERE `entry`=20513;

/*  Harpax  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.1 WHERE `entry`=20515;

/*  Image of Wind Trader Marid  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.1 WHERE `entry`=20518;

/*  Ethereum Prisoner  */
UPDATE `creature_template` SET `minlevel` = 70, `HealthModifier` = 1.3 WHERE `entry`=20520;

/*  Captain Skarloc (1)  */
UPDATE `creature_template` SET `DamageModifier` = 30.0433, `HealthModifier` = 16.3, `mingold` = 2748, `maxgold` = 3593 WHERE `entry`=20521;

/*  Durnholde Armorer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 2.70047, `HealthModifier` = 1.6, `ArmorModifier` = 0.501012 WHERE `entry`=20523;

/*  Durnholde Cook (1)  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8, `ArmorModifier` = 0.569281 WHERE `entry`=20524;

/*  Durnholde Rifleman (1)  */
UPDATE `creature_template` SET `DamageModifier` = 6.09824, `HealthModifier` = 3.9, `mingold` = 874, `maxgold` = 1147 WHERE `entry`=20526;

/*  Durnholde Sentry (1)  */
UPDATE `creature_template` SET `DamageModifier` = 15.1693, `HealthModifier` = 3.9, `ArmorModifier` = 0.75547, `mingold` = 874, `maxgold` = 1147 WHERE `entry`=20527;

/*  Durnholde Tracking Hound (1)  */
UPDATE `creature_template` SET `DamageModifier` = 4.36648, `HealthModifier` = 2.3, `ArmorModifier` = 0.747307 WHERE `entry`=20528;

/*  Durnholde Veteran (1)  */
UPDATE `creature_template` SET `DamageModifier` = 25.6483, `HealthModifier` = 3.9, `ArmorModifier` = 0.764102, `mingold` = 876, `maxgold` = 1149 WHERE `entry`=20529;

/*  Durnholde Warden (1)  */
UPDATE `creature_template` SET `DamageModifier` = 5.67162, `HealthModifier` = 3.8, `ArmorModifier` = 0.606679, `mingold` = 706, `maxgold` = 927 WHERE `entry`=20530;

/*  Epoch Hunter (1)  */
UPDATE `creature_template` SET `DamageModifier` = 46.3633, `HealthModifier` = 20.3, `mingold` = 4278, `maxgold` = 5591 WHERE `entry`=20531;

/*  Infinite Defiler (1)  */
UPDATE `creature_template` SET `DamageModifier` = 6.6745, `HealthModifier` = 3.9, `ArmorModifier` = 0.74554 WHERE `entry`=20532;

/*  Infinite Saboteur (1)  */
UPDATE `creature_template` SET `DamageModifier` = 21.2251, `HealthModifier` = 3.9, `mingold` = 748, `maxgold` = 982 WHERE `entry`=20533;

/*  Infinite Slayer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 24.168, `HealthModifier` = 3.9, `ArmorModifier` = 0.572014, `mingold` = 918, `maxgold` = 1204 WHERE `entry`=20534;

/*  Lieutenant Drake (1)  */
UPDATE `creature_template` SET `DamageModifier` = 63.0442, `HealthModifier` = 16.3, `mingold` = 3428, `maxgold` = 4481 WHERE `entry`=20535;

/*  Lordaeron Sentry (1)  */
UPDATE `creature_template` SET `DamageModifier` = 10.5183, `HealthModifier` = 3.9, `mingold` = 830, `maxgold` = 1089 WHERE `entry`=20537;

/*  Lordaeron Watchman (1)  */
UPDATE `creature_template` SET `DamageModifier` = 32.996, `HealthModifier` = 3.9, `mingold` = 830, `maxgold` = 1089 WHERE `entry`=20538;

/*  Pit Announcer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 2.96846, `HealthModifier` = 2.2, `ArmorModifier` = 0.566091 WHERE `entry`=20542;

/*  Pit Spectator (1)  */
UPDATE `creature_template` SET `DamageModifier` = 11.5723, `HealthModifier` = 3.8, `ArmorModifier` = 0.750245, `mingold` = 830, `maxgold` = 1089 WHERE `entry`=20543;

/*  Tarren Mill Guardsman (1)  */
UPDATE `creature_template` SET `DamageModifier` = 24.6884, `HealthModifier` = 4.0, `mingold` = 918, `maxgold` = 1204 WHERE `entry`=20545;

/*  Tarren Mill Lookout (1)  */
UPDATE `creature_template` SET `DamageModifier` = 16.1635, `HealthModifier` = 3.9, `ArmorModifier` = 0.724025, `mingold` = 748, `maxgold` = 982 WHERE `entry`=20546;

/*  Tarren Mill Protector (1)  */
UPDATE `creature_template` SET `DamageModifier` = 33.5417, `HealthModifier` = 3.9, `ArmorModifier` = 0.765355, `ManaModifier` = 4.5, `mingold` = 748, `maxgold` = 982 WHERE `entry`=20547;

/*  Thrall (1)  */
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72, `DamageModifier` = 7.39538, `HealthModifier` = 19.5, `ArmorModifier` = 1.0 WHERE `entry`=20548;

/*  Agent Araxes  */
UPDATE `creature_template` SET `HealthModifier` = 0.4 WHERE `entry`=20551;

/*  Agent Ya-six  */
UPDATE `creature_template` SET `DamageModifier` = 0.215098, `HealthModifier` = 0.5 WHERE `entry`=20552;

/*  Image of Commander Ameer  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=20553;

/*  Goc  */
UPDATE `creature_template` SET `DamageModifier` = 9.90506 WHERE `entry`=20555;

/*  Stormwind Marine  */
UPDATE `creature_template` SET `DamageModifier` = 4.14585, `HealthModifier` = 1.0 WHERE `entry`=20556;

/*  Wrath Hound  */
UPDATE `creature_template` SET `minlevel` = 70 WHERE `entry`=20557;

/*  Withered Corpse  */
UPDATE `creature_template` SET `DamageModifier` = 0.195836 WHERE `entry`=20561;

/*  Grand Commander Ruusk  */
UPDATE `creature_template` SET `DamageModifier` = 8.70004 WHERE `entry`=20563;

/*  Image of Agent Ya-six  */
UPDATE `creature_template` SET `HealthModifier` = 0.2 WHERE `entry`=20564;

/*  Creeping Ooze (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 2.33205, `HealthModifier` = 4.0, `ArmorModifier` = 0.537444 WHERE `entry`=20565;

/*  Creeping Oozeling (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 1.28417, `HealthModifier` = 0.7, `ArmorModifier` = 0.375681 WHERE `entry`=20566;

/*  Fel Orc Convert (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 8.00293, `ArmorModifier` = 0.663709, `mingold` = 353, `maxgold` = 466 WHERE `entry`=20567;

/*  Grand Warlock Nethekurse (1)  */
UPDATE `creature_template` SET `DamageModifier` = 8.6431, `HealthModifier` = 25.3, `ManaModifier` = 18.8, `mingold` = 6493, `maxgold` = 8484 WHERE `entry`=20568;

/*  Heathen Guard (1)  */
UPDATE `creature_template` SET `DamageModifier` = 9.26187, `HealthModifier` = 1.6 WHERE `entry`=20569;

/*  Rabid Warhound (1)  */
UPDATE `creature_template` SET `DamageModifier` = 7.2736, `HealthModifier` = 1.7, `ArmorModifier` = 0.638339 WHERE `entry`=20574;

/*  Reaver Guard (1)  */
UPDATE `creature_template` SET `DamageModifier` = 10.0634, `HealthModifier` = 1.6 WHERE `entry`=20575;

/*  Shadowmoon Acolyte (1)  */
UPDATE `creature_template` SET `DamageModifier` = 6.54539, `HealthModifier` = 3.9, `ArmorModifier` = 0.57735, `mingold` = 711, `maxgold` = 933 WHERE `entry`=20576;

/*  Shadowmoon Darkcaster (1)  */
UPDATE `creature_template` SET `DamageModifier` = 8.29346, `HealthModifier` = 3.9, `ArmorModifier` = 0.647853, `mingold` = 711, `maxgold` = 933 WHERE `entry`=20577;

/*  Sharpshooter Guard (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 9.03937, `HealthModifier` = 1.6 WHERE `entry`=20578;

/*  Shattered Hand Archer (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 10.1706, `HealthModifier` = 2.9, `mingold` = 964, `maxgold` = 1264 WHERE `entry`=20579;

/*  Shattered Hand Assassin (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 10.5341, `HealthModifier` = 3.7, `ArmorModifier` = 0.593243, `mingold` = 1009, `maxgold` = 1322 WHERE `entry`=20580;

/*  Shattered Hand Blood Guard (1)  */
UPDATE `creature_template` SET `DamageModifier` = 13.0321, `HealthModifier` = 3.9, `mingold` = 1308, `maxgold` = 1713 WHERE `entry`=20581;

/*  Shattered Hand Brawler (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 15.4823, `HealthModifier` = 4.0, `mingold` = 1009, `maxgold` = 1322 WHERE `entry`=20582;

/*  Shattered Hand Centurion (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 9.01512, `HealthModifier` = 5.1, `mingold` = 1308, `maxgold` = 1713 WHERE `entry`=20583;

/*  Shattered Hand Champion (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 13.6312, `HealthModifier` = 5.2, `ArmorModifier` = 1.21223, `mingold` = 1308, `maxgold` = 1713 WHERE `entry`=20584;

/*  Shattered Hand Executioner (1)  */
UPDATE `creature_template` SET `DamageModifier` = 8.58966, `HealthModifier` = 3.9, `mingold` = 1009, `maxgold` = 3991 WHERE `entry`=20585;

/*  Shattered Hand Gladiator (1)  */
UPDATE `creature_template` SET `DamageModifier` = 9.90282, `HealthModifier` = 3.9, `ArmorModifier` = 0.689239, `mingold` = 924, `maxgold` = 1211 WHERE `entry`=20586;

/*  Shattered Hand Heathen (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 8.91726, `HealthModifier` = 4.0, `mingold` = 1262, `maxgold` = 1653 WHERE `entry`=20587;

/*  Shattered Hand Houndmaster (1)  */
UPDATE `creature_template` SET `DamageModifier` = 7.69343, `HealthModifier` = 3.9, `ArmorModifier` = 0.465694, `mingold` = 1009, `maxgold` = 1322 WHERE `entry`=20588;

/*  Shattered Hand Legionnaire (1)  */
UPDATE `creature_template` SET `DamageModifier` = 9.55761, `mingold` = 1264, `maxgold` = 1655 WHERE `entry`=20589;

/*  Shattered Hand Reaver (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 12.9256, `HealthModifier` = 4.1, `mingold` = 1007, `maxgold` = 1320 WHERE `entry`=20590;

/*  Shattered Hand Savage (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 16.3009, `HealthModifier` = 4.0, `ArmorModifier` = 0.525922, `mingold` = 1262, `maxgold` = 1653 WHERE `entry`=20591;

/*  Shattered Hand Scout (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 8.20449, `HealthModifier` = 2.1, `ArmorModifier` = 0.704967 WHERE `entry`=20592;

/*  Shattered Hand Sentry (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 15.6124, `HealthModifier` = 4.0, `mingold` = 1304, `maxgold` = 1708 WHERE `entry`=20593;

/*  Shattered Hand Sharpshooter (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 8.87616, `HealthModifier` = 2.7, `ArmorModifier` = 0.732212, `mingold` = 964, `maxgold` = 1264 WHERE `entry`=20594;

/*  Shattered Hand Zealot (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 4.89011, `HealthModifier` = 1.3, `ArmorModifier` = 0.480617, `mingold` = 202, `maxgold` = 269 WHERE `entry`=20595;

/*  Warbringer O'mrogg (1)  */
UPDATE `creature_template` SET `DamageModifier` = 11.3116, `HealthModifier` = 28.0, `ArmorModifier` = 0.628314, `mingold` = 6494, `maxgold` = 8486 WHERE `entry`=20596;

/*  Warchief Kargath Bladefist (1)  */
UPDATE `creature_template` SET `DamageModifier` = 9.87611, `mingold` = 6919, `maxgold` = 9041 WHERE `entry`=20597;

/*  Lured Colossus  */
UPDATE `creature_template` SET `DamageModifier` = 1.52838 WHERE `entry`=20599;

/*  Maggoc  */
UPDATE `creature_template` SET `DamageModifier` = 9.93405 WHERE `entry`=20600;

/*  Razaani Raider  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=20601;

/*  Flame Patch (Al'ar)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 0.7 WHERE `entry`=20602;

/*  Dugiru  */
UPDATE `creature_template` SET `DamageModifier` = 0.372281, `HealthModifier` = 4.5 WHERE `entry`=20604;

/*  Razaani Nexus Stalker  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=20609;

/*  Sorim Lightsong  */
UPDATE `creature_template` SET `DamageModifier` = 0.372281, `HealthModifier` = 4.8 WHERE `entry`=20612;

/*  Arodis Sunblade  */
UPDATE `creature_template` SET `DamageModifier` = 0.241786, `HealthModifier` = 1.4 WHERE `entry`=20613;

/*  Razaani Spell-Thief  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=20614;

/*  Asuur  */
UPDATE `creature_template` SET `DamageModifier` = 0.388831, `HealthModifier` = 2.6 WHERE `entry`=20616;

/*  Mana Invader  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=20618;

/*  Ethereum Relay  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.3 WHERE `entry`=20619;

/*  Coilfang Engineer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 13.1804, `HealthModifier` = 3.8, `mingold` = 1009, `maxgold` = 1322 WHERE `entry`=20620;

/*  Coilfang Myrmidon (1)  */
UPDATE `creature_template` SET `DamageModifier` = 26.0737, `HealthModifier` = 3.9, `mingold` = 1009, `maxgold` = 1322 WHERE `entry`=20621;

/*  Coilfang Oracle (1)  */
UPDATE `creature_template` SET `DamageModifier` = 10.8933, `HealthModifier` = 3.8, `mingold` = 839, `maxgold` = 1100 WHERE `entry`=20622;

/*  Coilfang Siren (1)  */
UPDATE `creature_template` SET `DamageModifier` = 26.3067, `HealthModifier` = 4.0, `mingold` = 839, `maxgold` = 1100 WHERE `entry`=20623;

/*  Coilfang Slavemaster (1)  */
UPDATE `creature_template` SET `DamageModifier` = 42.8955, `HealthModifier` = 3.9, `mingold` = 1009, `maxgold` = 1322 WHERE `entry`=20624;

/*  Coilfang Sorceress (1)  */
UPDATE `creature_template` SET `DamageModifier` = 12.1912, `HealthModifier` = 5.3, `mingold` = 1094, `maxgold` = 1433 WHERE `entry`=20625;

/*  Coilfang Warrior (1)  */
UPDATE `creature_template` SET `DamageModifier` = 29.4993, `HealthModifier` = 4.0, `mingold` = 1009, `maxgold` = 1322 WHERE `entry`=20626;

/*  Coilfang Water Elemental (1)  */
UPDATE `creature_template` SET `DamageModifier` = 10.2616, `HealthModifier` = 3.7, `ArmorModifier` = 0.74935 WHERE `entry`=20627;

/*  Dreghood Slave (1)  */
UPDATE `creature_template` SET `DamageModifier` = 7.71823, `HealthModifier` = 3.9, `mingold` = 1009, `maxgold` = 1322 WHERE `entry`=20628;

/*  Hydromancer Thespia (1)  */
UPDATE `creature_template` SET `DamageModifier` = 22.9551, `HealthModifier` = 23.7, `mingold` = 4412, `maxgold` = 5766 WHERE `entry`=20629;

/*  Mekgineer Steamrigger (1)  */
UPDATE `creature_template` SET `DamageModifier` = 28.4896, `HealthModifier` = 16.3, `mingold` = 4412, `maxgold` = 5766 WHERE `entry`=20630;

/*  Naga Distiller (1)  */
UPDATE `creature_template` SET `HealthModifier` = 2.0 WHERE `entry`=20631;

/*  Steamrigger Mechanic (1)  */
UPDATE `creature_template` SET `DamageModifier` = 3.2446 WHERE `entry`=20632;

/*  Warlord Kalithresh (1)  */
UPDATE `creature_template` SET `DamageModifier` = 13.809, `HealthModifier` = 31.2, `mingold` = 6919, `maxgold` = 9041 WHERE `entry`=20633;

/*  Ambassador Hellmaw (1)  */
UPDATE `creature_template` SET `DamageModifier` = 9.95761, `HealthModifier` = 26.0, `mingold` = 5644, `maxgold` = 7376 WHERE `entry`=20636;

/*  Blackheart the Inciter (1)  */
UPDATE `creature_template` SET `DamageModifier` = 12.6413, `HealthModifier` = 25.8, `mingold` = 6069, `maxgold` = 7931 WHERE `entry`=20637;

/*  Cabal Acolyte (1)  */
UPDATE `creature_template` SET `DamageModifier` = 4.35445, `HealthModifier` = 4.3, `ArmorModifier` = 0.780411, `ManaModifier` = 2.9, `mingold` = 794, `maxgold` = 1042 WHERE `entry`=20638;

/*  Cabal Assassin (1)  */
UPDATE `creature_template` SET `DamageModifier` = 6.86545, `HealthModifier` = 3.8, `mingold` = 1009, `maxgold` = 1322 WHERE `entry`=20639;

/*  Cabal Cultist (1)  */
UPDATE `creature_template` SET `DamageModifier` = 4.1777, `HealthModifier` = 3.4, `mingold` = 922, `maxgold` = 1209 WHERE `entry`=20640;

/*  Cabal Deathsworn (1)  */
UPDATE `creature_template` SET `DamageModifier` = 6.63175, `HealthModifier` = 4.0, `mingold` = 1007, `maxgold` = 1320 WHERE `entry`=20641;

/*  Cabal Executioner (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 11.978, `HealthModifier` = 4.7, `mingold` = 1053, `maxgold` = 1380 WHERE `entry`=20642;

/*  Cabal Familiar (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 1.6, `ArmorModifier` = 0.606403, `mingold` = 168, `maxgold` = 225 WHERE `entry`=20643;

/*  Cabal Fanatic (1)  */
UPDATE `creature_template` SET `DamageModifier` = 7.49844, `HealthModifier` = 3.8, `mingold` = 1009, `maxgold` = 1322 WHERE `entry`=20644;

/*  Cabal Ritualist (1)  */
UPDATE `creature_template` SET `DamageModifier` = 6.8356, `HealthModifier` = 4.1, `ManaModifier` = 3.0, `mingold` = 879, `maxgold` = 1153 WHERE `entry`=20645;

/*  Cabal Shadow Priest (1)  */
UPDATE `creature_template` SET `DamageModifier` = 4.88829, `HealthModifier` = 4.0, `ManaModifier` = 2.9, `mingold` = 837, `maxgold` = 1098 WHERE `entry`=20646;

/*  Cabal Spellbinder (1)  */
UPDATE `creature_template` SET `DamageModifier` = 8.82404, `HealthModifier` = 3.0, `ManaModifier` = 3.0, `mingold` = 881, `maxgold` = 1155 WHERE `entry`=20647;

/*  Cabal Summoner (1)  */
UPDATE `creature_template` SET `DamageModifier` = 6.30139, `HealthModifier` = 3.9, `mingold` = 881, `maxgold` = 1155 WHERE `entry`=20648;

/*  Cabal Warlock (1)  */
UPDATE `creature_template` SET `DamageModifier` = 4.35445, `HealthModifier` = 4.2, `ArmorModifier` = 0.780411, `ManaModifier` = 2.9, `mingold` = 794, `maxgold` = 1042 WHERE `entry`=20649;

/*  Cabal Zealot (1)  */
UPDATE `creature_template` SET `DamageModifier` = 11.4304, `HealthModifier` = 4.2, `mingold` = 881, `maxgold` = 1155 WHERE `entry`=20650;

/*  Fel Guardhound (1)  */
UPDATE `creature_template` SET `DamageModifier` = 2.96228, `HealthModifier` = 3.1, `ArmorModifier` = 0.780411, `ManaModifier` = 2.0 WHERE `entry`=20651;

/*  Fel Overseer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 9.96221, `HealthModifier` = 16.9, `ArmorModifier` = 0.779134, `mingold` = 3686, `maxgold` = 4818 WHERE `entry`=20652;

/*  Grandmaster Vorpil (1)  */
UPDATE `creature_template` SET `DamageModifier` = 11.2323, `HealthModifier` = 26.4, `mingold` = 4794, `maxgold` = 6266 WHERE `entry`=20653;

/*  Maiden of Discipline (1)  */
UPDATE `creature_template` SET `DamageModifier` = 12.4605, `HealthModifier` = 2.1, `mingold` = 229, `maxgold` = 303 WHERE `entry`=20655;

/*  Malicious Instructor (1)  */
UPDATE `creature_template` SET `DamageModifier` = 10.1639, `HealthModifier` = 16.5, `mingold` = 3134, `maxgold` = 4097 WHERE `entry`=20656;

/*  Murmur (1)  */
UPDATE `creature_template` SET `DamageModifier` = 10.0, `HealthModifier` = 85.4, `mingold` = 17969, `maxgold` = 23471 WHERE `entry`=20657;

/*  Summoned Cabal Acolyte (1)  */
UPDATE `creature_template` SET `DamageModifier` = 8.48908, `HealthModifier` = 4.7, `ArmorModifier` = 0.780411, `ManaModifier` = 2.9, `mingold` = 794, `maxgold` = 1042 WHERE `entry`=20660;

/*  Summoned Cabal Deathsworn (1)  */
UPDATE `creature_template` SET `DamageModifier` = 5.85268, `HealthModifier` = 4.3, `mingold` = 1007, `maxgold` = 1320 WHERE `entry`=20661;

/*  Tortured Skeleton (1)  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.5, `ArmorModifier` = 0.542045 WHERE `entry`=20662;

/*  Void Portal (1)  */
UPDATE `creature_template` SET `HealthModifier` = 1.2 WHERE `entry`=20663;

/*  Void Traveler (1)  */
UPDATE `creature_template` SET `DamageModifier` = 2.54358, `HealthModifier` = 0.6, `ArmorModifier` = 0.542934 WHERE `entry`=20664;

/*  Blade's Edge - Orb Trigger 01  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=20666;

/*  Sporewind Frenzy  */
UPDATE `creature_template` SET `DamageModifier` = 0.204247, `HealthModifier` = 0.2 WHERE `entry`=20667;

/*  Shade of Mal'druk  */
UPDATE `creature_template` SET `DamageModifier` = 2.61501 WHERE `entry`=20669;

/*  Blade's Edge - Flesh Beast Zap Trigger  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=20670;

/*  Royal Guard  */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60, `DamageModifier` = 1.0, `HealthModifier` = 1300.0 WHERE `entry`=20672;

/*  Shield of Velen  */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60, `DamageModifier` = 1.0, `HealthModifier` = 1.0 WHERE `entry`=20674;

/*  Ethereum Sparring Dummy  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=20676;

/*  Morod the Windstirrer  */
UPDATE `creature_template` SET `DamageModifier` = 3.32742 WHERE `entry`=20677;

/*  Aylaan the Waterwaker  */
UPDATE `creature_template` SET `DamageModifier` = 0.374089, `HealthModifier` = 0.4 WHERE `entry`=20679;

/*  Arzeth the Powerless  */
UPDATE `creature_template` SET `DamageModifier` = 2.5449 WHERE `entry`=20680;

/*  Terokkarantula  */
UPDATE `creature_template` SET `DamageModifier` = 2.69238, `HealthModifier` = 3.9 WHERE `entry`=20682;

/*  Overseer Azarad  */
UPDATE `creature_template` SET `ArmorModifier` = 0.741503 WHERE `entry`=20685;

/*  Avian Darkhawk (1)  */
UPDATE `creature_template` SET `DamageModifier` = 6.90579, `HealthModifier` = 4.1 WHERE `entry`=20686;

/*  Cobalt Serpent (1)  */
UPDATE `creature_template` SET `DamageModifier` = 6.91789, `HealthModifier` = 7.5, `ManaModifier` = 4.6 WHERE `entry`=20688;

/*  Dark Vortex (1)  */
UPDATE `creature_template` SET `DamageModifier` = 2.9361, `HealthModifier` = 2.0, `ArmorModifier` = 0.68545 WHERE `entry`=20689;

/*  Darkweaver Syth (1)  */
UPDATE `creature_template` SET `DamageModifier` = 5.82802, `HealthModifier` = 16.5, `ManaModifier` = 18.7, `mingold` = 4789, `maxgold` = 6259 WHERE `entry`=20690;

/*  Time-Lost Controller (1)  */
UPDATE `creature_template` SET `DamageModifier` = 5.41221, `HealthModifier` = 3.9, `ArmorModifier` = 0.63416, `mingold` = 918, `maxgold` = 1204 WHERE `entry`=20691;

/*  Sethekk Guard (1)  */
UPDATE `creature_template` SET `DamageModifier` = 7.33695, `mingold` = 1598, `maxgold` = 2092 WHERE `entry`=20692;

/*  Sethekk Initiate (1)  */
UPDATE `creature_template` SET `DamageModifier` = 9.12334, `HealthModifier` = 3.8, `mingold` = 1258, `maxgold` = 1648 WHERE `entry`=20693;

/*  Sethekk Oracle (1)  */
UPDATE `creature_template` SET `DamageModifier` = 6.38667, `HealthModifier` = 2.8, `ManaModifier` = 10.2, `mingold` = 706, `maxgold` = 927 WHERE `entry`=20694;

/*  Sethekk Prophet (1)  */
UPDATE `creature_template` SET `DamageModifier` = 8.11173, `HealthModifier` = 3.8, `ManaModifier` = 5.1, `mingold` = 708, `maxgold` = 929 WHERE `entry`=20695;

/*  Sethekk Ravenguard (1)  */
UPDATE `creature_template` SET `DamageModifier` = 7.16544, `mingold` = 920, `maxgold` = 1206 WHERE `entry`=20696;

/*  Time-Lost Scryer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 9.61292, `HealthModifier` = 3.9, `ArmorModifier` = 0.65211, `mingold` = 663, `maxgold` = 871 WHERE `entry`=20697;

/*  Time-Lost Shadowmage (1)  */
UPDATE `creature_template` SET `DamageModifier` = 4.01513, `HealthModifier` = 3.8, `ArmorModifier` = 0.633367, `ManaModifier` = 4.7, `mingold` = 709, `maxgold` = 931 WHERE `entry`=20698;

/*  Sethekk Shaman (1)  */
UPDATE `creature_template` SET `DamageModifier` = 4.73832, `HealthModifier` = 4.4, `ArmorModifier` = 0.74711, `ManaModifier` = 5.1, `mingold` = 794, `maxgold` = 1042 WHERE `entry`=20699;

/*  Sethekk Talon Lord (1)  */
UPDATE `creature_template` SET `DamageModifier` = 10.7658, `HealthModifier` = 4.9, `mingold` = 793, `maxgold` = 1040 WHERE `entry`=20701;

/*  Syth Arcane Elemental (1)  */
UPDATE `creature_template` SET `DamageModifier` = 2.92623, `ArmorModifier` = 0.716632 WHERE `entry`=20702;

/*  Syth Fire Elemental (1)  */
UPDATE `creature_template` SET `DamageModifier` = 2.92623 WHERE `entry`=20703;

/*  Syth Frost Elemental (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.42357 WHERE `entry`=20704;

/*  Talon King Ikiss (1)  */
UPDATE `creature_template` SET `DamageModifier` = 15.3183, `HealthModifier` = 21.9, `mingold` = 3514, `maxgold` = 4594 WHERE `entry`=20706;

/*  Bogstrok Hatchling  */
UPDATE `creature_template` SET `minlevel` = 62, `maxlevel` = 62, `DamageModifier` = 0.18037 WHERE `entry`=20710;

/*  Herald Bran'daan  */
UPDATE `creature_template` SET `DamageModifier` = 0.326302, `HealthModifier` = 0.3 WHERE `entry`=20722;

/*  Herald Amorlin  */
UPDATE `creature_template` SET `DamageModifier` = 0.326302, `HealthModifier` = 1.2 WHERE `entry`=20724;

/*  Mugdorg  */
UPDATE `creature_template` SET `minlevel` = 65, `maxlevel` = 65, `HealthModifier` = 1.6 WHERE `entry`=20726;

/*  Bladespire Ravager  */
UPDATE `creature_template` SET `DamageModifier` = 4.0163 WHERE `entry`=20729;

/*  Droggam  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=20731;

/*  Aeonus (1)  */
UPDATE `creature_template` SET `DamageModifier` = 46.0514, `mingold` = 6494, `maxgold` = 8486 WHERE `entry`=20737;

/*  Chrono Lord Deja (1)  */
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72, `DamageModifier` = 37.6555, `mingold` = 3902, `maxgold` = 5100 WHERE `entry`=20738;

/*  Infinite Vanquisher (1)  */
UPDATE `creature_template` SET `DamageModifier` = 11.3721 WHERE `entry`=20743;

/*  Rift Lord (1)  */
UPDATE `creature_template` SET `DamageModifier` = 33.3028, `ArmorModifier` = 1.28413, `mingold` = 2880, `maxgold` = 3766 WHERE `entry`=20744;

/*  Temporus (1)  */
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72, `DamageModifier` = 9.99202, `mingold` = 4794, `maxgold` = 6266 WHERE `entry`=20745;

/*  Silkwing Larva  */
UPDATE `creature_template` SET `HealthModifier` = 1.4, `ArmorModifier` = 1.54834 WHERE `entry`=20747;

/*  Bladespire Chef  */
UPDATE `creature_template` SET `DamageModifier` = 2.97918 WHERE `entry`=20756;

/*  Fingrom  */
UPDATE `creature_template` SET `DamageModifier` = 3.57305 WHERE `entry`=20757;

/*  Gur'zil  */
UPDATE `creature_template` SET `DamageModifier` = 3.54684, `HealthModifier` = 2.0 WHERE `entry`=20762;

/*  Captured Protectorate Vanguard  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=20763;

/*  Gnosh Brognat  */
UPDATE `creature_template` SET `DamageModifier` = 1.34216 WHERE `entry`=20768;

/*  Warden Icoshock  */
UPDATE `creature_template` SET `DamageModifier` = 0.180455 WHERE `entry`=20770;

/*  Netherock  */
UPDATE `creature_template` SET `DamageModifier` = 2.95995 WHERE `entry`=20772;

/*  Markaru  */
UPDATE `creature_template` SET `DamageModifier` = 0.458864 WHERE `entry`=20775;

/*  Void Waste  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=20778;

/*  Congealed Void Horror  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=20779;

/*  Kaylaan  */
UPDATE `creature_template` SET `DamageModifier` = 4.4372, `HealthModifier` = 17.0 WHERE `entry`=20780;

/*  Malevus the Mad  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=20790;

/*  Iorioa  */
UPDATE `creature_template` SET `DamageModifier` = 0.50744, `HealthModifier` = 1.5 WHERE `entry`=20791;

/*  Bloodscale Elemental  */
UPDATE `creature_template` SET `DamageModifier` = 0.289031 WHERE `entry`=20792;

/*  Field Marshal Brock  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 3.3 WHERE `entry`=20793;

/*  Kaylaan the Lost  */
UPDATE `creature_template` SET `DamageModifier` = 4.42783, `unit_class` = 2 WHERE `entry`=20794;

/*  Netherstorm Target  */
UPDATE `creature_template` SET `HealthModifier` = 2.3 WHERE `entry`=20796;

/*  Razorsaw  */
UPDATE `creature_template` SET `minlevel` = 62 WHERE `entry`=20798;

/*  Forgemaster Morug  */
UPDATE `creature_template` SET `DamageModifier` = 2.49104 WHERE `entry`=20800;

/*  Silroth  */
UPDATE `creature_template` SET `DamageModifier` = 2.49104 WHERE `entry`=20801;

/*  Void Waste Globule  */
UPDATE `creature_template` SET `DamageModifier` = 0.195376 WHERE `entry`=20805;

/*  Mehrdad  */
UPDATE `creature_template` SET `DamageModifier` = 0.210477, `HealthModifier` = 0.9 WHERE `entry`=20810;

/*  Ghabar  */
UPDATE `creature_template` SET `DamageModifier` = 1.79177 WHERE `entry`=20811;

/*  Ethereum Prisoner (Tyralius)  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=20825;

/*  Outland Rock Flayer PurplePink  */
UPDATE `creature_template` SET `DamageModifier` = 1.74673, `HealthModifier` = 16.5 WHERE `entry`=20841;

/*  Gray Elekk  */
UPDATE `creature_template` SET `DamageModifier` = 0.387159, `HealthModifier` = 1.4 WHERE `entry`=20846;

/*  Purple Elekk  */
UPDATE `creature_template` SET `DamageModifier` = 0.387159, `HealthModifier` = 1.4 WHERE `entry`=20847;

/*  Great Blue Elekk  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 0.7 WHERE `entry`=20848;

/*  Great Green Elekk  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 2.3 WHERE `entry`=20849;

/*  Great Purple Elekk  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 0.7 WHERE `entry`=20850;

/*  Blade's Edge - Deadsoul Orb Flight 01  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=20851;

/*  Blade's Edge - Deadsoul Orb Flight 02  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=20852;

/*  Blade's Edge - Deadsoul Orb Flight 03  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=20853;

/*  Ethereum Gladiator  */
UPDATE `creature_template` SET `DamageModifier` = 1.35341 WHERE `entry`=20854;

/*  Blade's Edge - Deadsoul Orb Flight 04  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=20855;

/*  Blade's Edge - Deadsoul Orb Flight 05  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=20856;

/*  Arcatraz Defender  */
UPDATE `creature_template` SET `DamageModifier` = 3.99544 WHERE `entry`=20857;

/*  Arena Event Controller  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=20858;

/*  Arcatraz Warder  */
UPDATE `creature_template` SET `DamageModifier` = 3.99907 WHERE `entry`=20859;

/*  Mutated Fleshfiend  */
UPDATE `creature_template` SET `DamageModifier` = 0.451138 WHERE `entry`=20860;

/*  Protean Nightmare  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 6.6 WHERE `entry`=20864;

/*  Protean Horror  */
UPDATE `creature_template` SET `DamageModifier` = 3.34093, `HealthModifier` = 1.2 WHERE `entry`=20865;

/*  Soul Devourer  */
UPDATE `creature_template` SET `DamageModifier` = 6.77609 WHERE `entry`=20866;

/*  Death Watcher  */
UPDATE `creature_template` SET `DamageModifier` = 6.77609 WHERE `entry`=20867;

/*  Entropic Eye  */
UPDATE `creature_template` SET `DamageModifier` = 7.94384, `HealthModifier` = 8.1 WHERE `entry`=20868;

/*  Arcatraz Sentinel  */
UPDATE `creature_template` SET `DamageModifier` = 6.40562 WHERE `entry`=20869;

/*  Zereketh the Unbound  */
UPDATE `creature_template` SET `DamageModifier` = 5.21378 WHERE `entry`=20870;

/*  Aurine Moonblaze  */
UPDATE `creature_template` SET `DamageModifier` = 0.211837, `HealthModifier` = 0.8 WHERE `entry`=20871;

/*  Deathforge Summoner  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=20872;

/*  Negaton Warp-Master  */
UPDATE `creature_template` SET `DamageModifier` = 8.44961, `ArmorModifier` = 1.20926 WHERE `entry`=20873;

/*  Negaton Screamer  */
UPDATE `creature_template` SET `DamageModifier` = 6.30843 WHERE `entry`=20875;

/*  Human Refugee  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 1.7 WHERE `entry`=20876;

/*  Shattrath Refugee  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 1.8 WHERE `entry`=20877;

/*  Eredar Soul-Eater  */
UPDATE `creature_template` SET `DamageModifier` = 7.37265 WHERE `entry`=20879;

/*  Eredar Deathbringer  */
UPDATE `creature_template` SET `DamageModifier` = 11.0643 WHERE `entry`=20880;

/*  Unbound Devastator  */
UPDATE `creature_template` SET `DamageModifier` = 6.77609 WHERE `entry`=20881;

/*  Skulking Witch  */
UPDATE `creature_template` SET `DamageModifier` = 6.77609 WHERE `entry`=20882;

/*  Spiteful Temptress  */
UPDATE `creature_template` SET `DamageModifier` = 3.15906, `HealthModifier` = 6.9 WHERE `entry`=20883;

/*  Dalliah the Doomsayer  */
UPDATE `creature_template` SET `DamageModifier` = 6.26606 WHERE `entry`=20885;

/*  Wrath-Scryer Soccothrates  */
UPDATE `creature_template` SET `DamageModifier` = 6.96171 WHERE `entry`=20886;

/*  Solus the Eternal  */
UPDATE `creature_template` SET `DamageModifier` = 11.3041 WHERE `entry`=20888;

/*  Siflaed Coldhammer  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 1.0 WHERE `entry`=20890;

/*  Skraa  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 1.7 WHERE `entry`=20891;

/*  Ruogo  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 1.2 WHERE `entry`=20892;

/*  Morula  */
UPDATE `creature_template` SET `DamageModifier` = 0.346669, `HealthModifier` = 2.2 WHERE `entry`=20893;

/*  Ethereum Slayer  */
UPDATE `creature_template` SET `DamageModifier` = 4.83619 WHERE `entry`=20896;

/*  Ethereum Wave-Caster  */
UPDATE `creature_template` SET `DamageModifier` = 4.8258 WHERE `entry`=20897;

/*  Gargantuan Abyssal  */
UPDATE `creature_template` SET `DamageModifier` = 9.74329 WHERE `entry`=20898;

/*  Void Conduit  */
UPDATE `creature_template` SET `DamageModifier` = 3.2463, `HealthModifier` = 64.2 WHERE `entry`=20899;

/*  Unchained Doombringer  */
UPDATE `creature_template` SET `DamageModifier` = 8.86387 WHERE `entry`=20900;

/*  Sargeron Archer  */
UPDATE `creature_template` SET `DamageModifier` = 6.08555 WHERE `entry`=20901;

/*  Sargeron Hellcaller  */
UPDATE `creature_template` SET `DamageModifier` = 6.08555 WHERE `entry`=20902;

/*  Protectorate Nether Drake  */
UPDATE `creature_template` SET `HealthModifier` = 0.7 WHERE `entry`=20903;

/*  Warden Mellichar  */
UPDATE `creature_template` SET `DamageModifier` = 1.78032, `HealthModifier` = 5.2 WHERE `entry`=20904;

/*  Blazing Trickster  */
UPDATE `creature_template` SET `DamageModifier` = 5.93602 WHERE `entry`=20905;

/*  Phase-Hunter  */
UPDATE `creature_template` SET `DamageModifier` = 7.83508 WHERE `entry`=20906;

/*  Akkiris Lightning-Waker  */
UPDATE `creature_template` SET `DamageModifier` = 5.64751 WHERE `entry`=20908;

/*  Sulfuron Magma-Thrower  */
UPDATE `creature_template` SET `DamageModifier` = 6.65322 WHERE `entry`=20909;

/*  Twilight Drakonaar  */
UPDATE `creature_template` SET `DamageModifier` = 7.60641 WHERE `entry`=20910;

/*  Blackwing Drakonaar  */
UPDATE `creature_template` SET `DamageModifier` = 6.96171 WHERE `entry`=20911;

/*  Harbinger Skyriss  */
UPDATE `creature_template` SET `DamageModifier` = 3.46983, `HealthModifier` = 33.0 WHERE `entry`=20912;

/*  Tashar  */
UPDATE `creature_template` SET `HealthModifier` = 1.1 WHERE `entry`=20913;

/*  Aalun  */
UPDATE `creature_template` SET `DamageModifier` = 0.290847, `HealthModifier` = 0.5 WHERE `entry`=20914;

/*  Noko Moonwhisper  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=20915;

/*  Xerintha Ravenoak  */
UPDATE `creature_template` SET `DamageModifier` = 0.321416, `HealthModifier` = 1.4 WHERE `entry`=20916;

/*  Zinyen Swiftstrider  */
UPDATE `creature_template` SET `DamageModifier` = 3.2463, `HealthModifier` = 9.4 WHERE `entry`=20917;

/*  Magister Theledorn  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=20920;

/*  Fallen Vindicator  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=20922;

/*  Blood Guard Porung  */
UPDATE `creature_template` SET `DamageModifier` = 11.7064, `HealthModifier` = 18.9 WHERE `entry`=20923;

/*  Grishnath Basilisk  */
UPDATE `creature_template` SET `ArmorModifier` = 4.09882 WHERE `entry`=20924;

/*  Wrath Lord  */
UPDATE `creature_template` SET `ArmorModifier` = 0.470334 WHERE `entry`=20929;

/*  Nuramoc  */
UPDATE `creature_template` SET `DamageModifier` = 7.92602 WHERE `entry`=20932;

/*  Camera Shakers Manaforge Ultris  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=20933;

/*  Severed Defender  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=20934;

/*  Millhouse Manastorm  */
UPDATE `creature_template` SET `DamageModifier` = 6.20339, `HealthModifier` = 3.6 WHERE `entry`=20977;

/*  Wrath-Scryer's Felfire  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=20978;

/*  Dealer Rashaad  */
UPDATE `creature_template` SET `DamageModifier` = 0.401966, `HealthModifier` = 2.2 WHERE `entry`=20980;

/*  Dealer Najeeb  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 2.1 WHERE `entry`=20981;

/*  Captain Saeed  */
UPDATE `creature_template` SET `DamageModifier` = 2.5, `ArmorModifier` = 0.8155 WHERE `entry`=20985;

/*  Dealer Tariq  */
UPDATE `creature_template` SET `DamageModifier` = 3.13916, `HealthModifier` = 0.3 WHERE `entry`=20986;

/*  Sunseeker Engineer  */
UPDATE `creature_template` SET `DamageModifier` = 6.7282, `HealthModifier` = 3.7 WHERE `entry`=20988;

/*  Dealer Sadaqat  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 2.4 WHERE `entry`=20989;

/*  Bloodwarder Physician  */
UPDATE `creature_template` SET `DamageModifier` = 6.7282, `HealthModifier` = 3.7, `ManaModifier` = 4.8 WHERE `entry`=20990;

/*  Ridgespine Horror  */
UPDATE `creature_template` SET `minlevel` = 67 WHERE `entry`=20998;

/*  Azurebeak  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21005;

/*  Lieutenant Meridian  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21006;

/*  Sergeant Chawni  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.7 WHERE `entry`=21007;

/*  Sixx  */
UPDATE `creature_template` SET `HealthModifier` = 1.5 WHERE `entry`=21019;

/*  Stronglimb Deeproot  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21023;

/*  Earthmender Torlok  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.1 WHERE `entry`=21024;

/*  Earthmender Gorboto  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.5 WHERE `entry`=21026;

/*  Earthmender Wilda  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.4 WHERE `entry`=21027;

/*  Captured Water Spirit  */
UPDATE `creature_template` SET `DamageModifier` = 0.29112 WHERE `entry`=21029;

/*  Wrath-Scryer's Charge Target  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=21030;

/*  Dreadwing  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=21032;

/*  Dimensius the All-Devouring 000  */
UPDATE `creature_template` SET `DamageModifier` = 8.1295, `HealthModifier` = 40.0 WHERE `entry`=21035;

/*  Outraged Raven's Wood Sapling  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21040;

/*  Hired Bodyguard  */
UPDATE `creature_template` SET `DamageModifier` = 3.39941, `HealthModifier` = 0.9 WHERE `entry`=21045;

/*  Boulder'mok Chieftain  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=21048;

/*  Spirit of the Past  */
UPDATE `creature_template` SET `DamageModifier` = 0.272541, `HealthModifier` = 0.3 WHERE `entry`=21049;

/*  Camera Shaker - Altar of Damnation  */
UPDATE `creature_template` SET `DamageModifier` = 0.180455, `HealthModifier` = 1.3 WHERE `entry`=21052;

/*  Blade's Edge - Orb Trigger 03  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=21053;

/*  Enraged Water Spirit  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=21059;

/*  Nether Wraith  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 4.62754, `HealthModifier` = 1.9 WHERE `entry`=21062;

/*  Tormented Citizen  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21065;

/*  Rina Moonspring  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=21066;

/*  Living Grove Defender  */
UPDATE `creature_template` SET `HealthModifier` = 1.2 WHERE `entry`=21072;

/*  Enraged Earthen Soul  */
UPDATE `creature_template` SET `maxlevel` = 69, `HealthModifier` = 2.8 WHERE `entry`=21073;

/*  Living Grove Defender Trigger  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=21074;

/*  Farahlon Shardling  */
UPDATE `creature_template` SET `DamageModifier` = 1.23686 WHERE `entry`=21078;

/*  Mok'Nathal Hunter  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.5 WHERE `entry`=21081;

/*  Krugash  */
UPDATE `creature_template` SET `DamageModifier` = 0.245068, `HealthModifier` = 0.2 WHERE `entry`=21082;

/*  Erool  */
UPDATE `creature_template` SET `DamageModifier` = 0.245068, `HealthModifier` = 0.2 WHERE `entry`=21083;

/*  Braagor  */
UPDATE `creature_template` SET `DamageModifier` = 0.245068, `HealthModifier` = 0.2 WHERE `entry`=21084;

/*  Ragar  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 0.3 WHERE `entry`=21085;

/*  Ruka  */
UPDATE `creature_template` SET `DamageModifier` = 0.245068, `HealthModifier` = 0.2 WHERE `entry`=21086;

/*  Grikka  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 0.3 WHERE `entry`=21087;

/*  Matron Varah  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 2.7 WHERE `entry`=21088;

/*  Professor Dabiri  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.2 WHERE `entry`=21090;

/*  Credit Marker: Earth  */
UPDATE `creature_template` SET `DamageModifier` = 0.180455, `HealthModifier` = 1.3 WHERE `entry`=21092;

/*  Credit Marker: Fire  */
UPDATE `creature_template` SET `DamageModifier` = 0.180455, `HealthModifier` = 1.3 WHERE `entry`=21094;

/*  Credit Marker: Water  */
UPDATE `creature_template` SET `DamageModifier` = 0.197903, `HealthModifier` = 1.3 WHERE `entry`=21095;

/*  Credit Marker: Air  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=21096;

/*  Unbound Void Zone  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=21101;

/*  Uvuros  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 20.0 WHERE `entry`=21102;

/*  Spiritcaller Grakosh  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=21103;

/*  Rift Keeper  */
UPDATE `creature_template` SET `minlevel` = 71, `maxlevel` = 71, `DamageModifier` = 11.6726 WHERE `entry`=21104;

/*  Spiritcaller Roxnak  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.4 WHERE `entry`=21105;

/*  Spiritcaller Skrash  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.2 WHERE `entry`=21106;

/*  Rip Pedalslam  */
UPDATE `creature_template` SET `minlevel` = 65, `maxlevel` = 65, `DamageModifier` = 2.0, `HealthModifier` = 1.2 WHERE `entry`=21107;

/*  Enraged Watery Soul  */
UPDATE `creature_template` SET `maxlevel` = 70, `DamageModifier` = 2.0, `HealthModifier` = 0.2 WHERE `entry`=21109;

/*  Fizit "Doc" Clocktock  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.5 WHERE `entry`=21110;

/*  Bembil Knockhammer  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.3 WHERE `entry`=21111;

/*  Bossi Pentapiston  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.5 WHERE `entry`=21112;

/*  Sassa Weldwell  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.3 WHERE `entry`=21113;

/*  Station Technician  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.4 WHERE `entry`=21114;

/*  Station Guard  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.5 WHERE `entry`=21115;

/*  Enraged Airy Soul  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=21116;

/*  Gor'drek  */
UPDATE `creature_template` SET `HealthModifier` = 0.7 WHERE `entry`=21117;

/*  Razak Ironsides  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.0 WHERE `entry`=21118;

/*  Coilfang Scale-Healer  */
UPDATE `creature_template` SET `maxlevel` = 63, `DamageModifier` = 8.78192 WHERE `entry`=21126;

/*  Coilfang Tempest  */
UPDATE `creature_template` SET `maxlevel` = 70, `DamageModifier` = 2.37984 WHERE `entry`=21127;

/*  Coilfang Ray  */
UPDATE `creature_template` SET `DamageModifier` = 7.97616 WHERE `entry`=21128;

/*  Scorned Spirit of Earth  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.3 WHERE `entry`=21129;

/*  Scorned Spirit of Fire  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=21130;

/*  Scorned Spirit of Air  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=21132;

/*  Corporal Ironridge  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.6 WHERE `entry`=21133;

/*  Eye of the Citadel  */
UPDATE `creature_template` SET `DamageModifier` = 0.277467, `HealthModifier` = 0.4 WHERE `entry`=21134;

/*  Fel Imp  */
UPDATE `creature_template` SET `DamageModifier` = 1.53155, `HealthModifier` = 0.4, `ManaModifier` = 0.3 WHERE `entry`=21135;

/*  Infinite Assassin  */
UPDATE `creature_template` SET `DamageModifier` = 3.63152, `HealthModifier` = 1.0 WHERE `entry`=21137;

/*  Dire Timber Wolf Trigger  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=21142;

/*  Little Azimi  */
UPDATE `creature_template` SET `DamageModifier` = 0.397257, `HealthModifier` = 0.5 WHERE `entry`=21145;

/*  Tor'chunk Twoclaws  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.5 WHERE `entry`=21147;

/*  Borgrim Stouthammer  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.6 WHERE `entry`=21151;

/*  Station Bot-Jock  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.3 WHERE `entry`=21152;

/*  Kor'kron Wyvern Rider  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=21153;

/*  Senior Sergeant Eveningshade  */
UPDATE `creature_template` SET `DamageModifier` = 2.8726, `HealthModifier` = 1.4 WHERE `entry`=21155;

/*  Master Sergeant Thelaana  */
UPDATE `creature_template` SET `DamageModifier` = 2.74385, `HealthModifier` = 1.4 WHERE `entry`=21156;

/*  Culuthas Scan Target Dummy  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=21157;

/*  Commander Skyshadow  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.7 WHERE `entry`=21158;

/*  Conjured Water Elemental  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 8.3 WHERE `entry`=21160;

/*  Netharel  */
UPDATE `creature_template` SET `DamageModifier` = 2.64015 WHERE `entry`=21164;

/*  Dihyana the Huntress  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=21165;

/*  Illidari Dreadlord  */
UPDATE `creature_template` SET `DamageModifier` = 2.65857 WHERE `entry`=21166;

/*  Theras  */
UPDATE `creature_template` SET `DamageModifier` = 4.50602 WHERE `entry`=21168;

/*  Netharel - Metamorphosis  */
UPDATE `creature_template` SET `DamageModifier` = 20.6621, `HealthModifier` = 43.5 WHERE `entry`=21169;

/*  Honor Hold Gryphon Brigadier, South  */
UPDATE `creature_template` SET `DamageModifier` = 3.98702 WHERE `entry`=21170;

/*  Alandien  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 13.1 WHERE `entry`=21171;

/*  Sarinei Whitestar  */
UPDATE `creature_template` SET `DamageModifier` = 3.34434, `HealthModifier` = 0.4 WHERE `entry`=21172;

/*  Magtheridon  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 46.9621, `HealthModifier` = 635.0 WHERE `entry`=21174;

/*  Magister Bloodhawk  */
UPDATE `creature_template` SET `DamageModifier` = 1.72335, `HealthModifier` = 0.6 WHERE `entry`=21175;

/*  Bloodmaul Dire Wolf Trigger  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=21176;

/*  Varedis  */
UPDATE `creature_template` SET `DamageModifier` = 7.20964 WHERE `entry`=21178;

/*  Cyrukh the Firelord  */
UPDATE `creature_template` SET `DamageModifier` = 10.46 WHERE `entry`=21181;

/*  Oronok Torn-heart  */
UPDATE `creature_template` SET `DamageModifier` = 0.212761, `HealthModifier` = 2.3 WHERE `entry`=21183;

/*  Nether Whelp Egg  */
UPDATE `creature_template` SET `DamageModifier` = 2.34094, `HealthModifier` = 1.4 WHERE `entry`=21185;

/*  Thadok  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=21188;

/*  Kugnar  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21192;

/*  Gralga  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21193;

/*  Ru'zah  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21194;

/*  Domesticated Felboar  */
UPDATE `creature_template` SET `ExperienceModifier` = 1.0 WHERE `entry`=21195;

/*  Ravenous Flayer  */
UPDATE `creature_template` SET `DamageModifier` = 0.195836 WHERE `entry`=21196;

/*  Bronwyn Stouthammer  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21197;

/*  Ravenous Flayer Matriarch  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21205;

/*  Summoner Skartax  */
UPDATE `creature_template` SET `DamageModifier` = 0.260898 WHERE `entry`=21207;

/*  Dumphry  */
UPDATE `creature_template` SET `DamageModifier` = 3.13916, `HealthModifier` = 1.5 WHERE `entry`=21209;

/*  Lady Vashj  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 38.4067, `HealthModifier` = 800.0 WHERE `entry`=21212;

/*  Morogrim Tidewalker  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 40.9854, `HealthModifier` = 750.0 WHERE `entry`=21213;

/*  Fathom-Lord Karathress  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 30.7306, `HealthModifier` = 300.0 WHERE `entry`=21214;

/*  Leotheras the Blind  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 23.0553 WHERE `entry`=21215;

/*  Hydross the Unstable  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 19.2114, `HealthModifier` = 450.0 WHERE `entry`=21216;

/*  The Lurker Below  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 103.396, `HealthModifier` = 700.0 WHERE `entry`=21217;

/*  Vashj'ir Honor Guard  */
UPDATE `creature_template` SET `DamageModifier` = 24.1884, `HealthModifier` = 34.8 WHERE `entry`=21218;

/*  Coilfang Priestess  */
UPDATE `creature_template` SET `DamageModifier` = 14.1634, `HealthModifier` = 25.0 WHERE `entry`=21220;

/*  Coilfang Beast-Tamer  */
UPDATE `creature_template` SET `DamageModifier` = 24.8154, `HealthModifier` = 35.0 WHERE `entry`=21221;

/*  Undersea Rager  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 1.0 WHERE `entry`=21222;

/*  Tidewalker Depth-Seer  */
UPDATE `creature_template` SET `DamageModifier` = 15.9233, `HealthModifier` = 25.0 WHERE `entry`=21224;

/*  Tidewalker Warrior  */
UPDATE `creature_template` SET `DamageModifier` = 17.719, `HealthModifier` = 25.0 WHERE `entry`=21225;

/*  Tidewalker Shaman  */
UPDATE `creature_template` SET `DamageModifier` = 14.1634, `HealthModifier` = 25.0 WHERE `entry`=21226;

/*  Tidewalker Harpooner  */
UPDATE `creature_template` SET `DamageModifier` = 15.9515, `HealthModifier` = 25.0 WHERE `entry`=21227;

/*  Tidewalker Hydromancer  */
UPDATE `creature_template` SET `DamageModifier` = 14.1634, `HealthModifier` = 25.0 WHERE `entry`=21228;

/*  Greyheart Tidecaller  */
UPDATE `creature_template` SET `DamageModifier` = 17.6926, `HealthModifier` = 25.0 WHERE `entry`=21229;

/*  Greyheart Nether-Mage  */
UPDATE `creature_template` SET `DamageModifier` = 14.1634, `HealthModifier` = 25.0 WHERE `entry`=21230;

/*  Greyheart Shield-Bearer  */
UPDATE `creature_template` SET `DamageModifier` = 22.151, `HealthModifier` = 25.0 WHERE `entry`=21231;

/*  Greyheart Skulker  */
UPDATE `creature_template` SET `DamageModifier` = 31.0148, `HealthModifier` = 25.0, `ArmorModifier` = 0.762183 WHERE `entry`=21232;

/*  "Backstab" Bindo Gearbomb  */
UPDATE `creature_template` SET `DamageModifier` = 0.189478 WHERE `entry`=21235;

/*  Bonechewer Messenger  */
UPDATE `creature_template` SET `HealthModifier` = 0.7 WHERE `entry`=21244;

/*  Serpentshrine Sporebat  */
UPDATE `creature_template` SET `DamageModifier` = 11.9636, `HealthModifier` = 14.9 WHERE `entry`=21246;

/*  Wrathstalker  */
UPDATE `creature_template` SET `maxlevel` = 69, `DamageModifier` = 2.82318 WHERE `entry`=21249;

/*  Pink Elekk  */
UPDATE `creature_template` SET `DamageModifier` = 6.36497, `HealthModifier` = 2.9, `ArmorModifier` = 0.18018 WHERE `entry`=21250;

/*  Underbog Colossus  */
UPDATE `creature_template` SET `DamageModifier` = 26.1085, `HealthModifier` = 75.0 WHERE `entry`=21251;

/*  Tainted Water Elemental  */
UPDATE `creature_template` SET `DamageModifier` = 2.65568, `HealthModifier` = 1.5 WHERE `entry`=21253;

/*  Dullgrom Dredger  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21254;

/*  Umberhowl  */
UPDATE `creature_template` SET `DamageModifier` = 2.96801 WHERE `entry`=21255;

/*  Vurtok Axebreaker  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.4 WHERE `entry`=21256;

/*  Apothecary Zelana  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.7 WHERE `entry`=21257;

/*  Crash Bigbomb  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=21259;

/*  Purified Water Elemental  */
UPDATE `creature_template` SET `DamageModifier` = 2.65568, `HealthModifier` = 1.5 WHERE `entry`=21260;

/*  Big Wagon Full of Explosives Trigger  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=21261;

/*  Goblin Equipment Trigger  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=21262;

/*  Greyheart Technician  */
UPDATE `creature_template` SET `DamageModifier` = 3.54381, `HealthModifier` = 2.0 WHERE `entry`=21263;

/*  Seeping Ooze  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.3 WHERE `entry`=21264;

/*  Parasitic Fleshling  */
UPDATE `creature_template` SET `DamageModifier` = 0.195836, `HealthModifier` = 0.2 WHERE `entry`=21265;

/*  Mana Beast  */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60, `DamageModifier` = 0.211976 WHERE `entry`=21267;

/*  Netherstrand Longbow  */
UPDATE `creature_template` SET `rank` = 1, `DamageModifier` = 13.5522, `HealthModifier` = 27.4 WHERE `entry`=21268;

/*  Devastation  */
UPDATE `creature_template` SET `DamageModifier` = 27.0953, `HealthModifier` = 31.5 WHERE `entry`=21269;

/*  Cosmic Infuser  */
UPDATE `creature_template` SET `DamageModifier` = 13.5522, `HealthModifier` = 36.0 WHERE `entry`=21270;

/*  Infinity Blades  */
UPDATE `creature_template` SET `DamageModifier` = 16.6292, `HealthModifier` = 30.1 WHERE `entry`=21271;

/*  Warp Slicer  */
UPDATE `creature_template` SET `DamageModifier` = 13.5522, `HealthModifier` = 36.0 WHERE `entry`=21272;

/*  Phaseshift Bulwark  */
UPDATE `creature_template` SET `rank` = 1, `DamageModifier` = 15.0319, `HealthModifier` = 48.7, `ArmorModifier` = 1.90385 WHERE `entry`=21273;

/*  Staff of Disintegration  */
UPDATE `creature_template` SET `DamageModifier` = 13.5522, `HealthModifier` = 23.0 WHERE `entry`=21274;

/*  Harbinger Ardonan  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.2 WHERE `entry`=21275;

/*  Kil'sorrow Agent  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=21276;

/*  Vindicator Vuuleen  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=21277;

/*  Apothecary Albreck  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.5 WHERE `entry`=21279;

/*  Megzeg Nukklebust  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=21283;

/*  Ethereum Mace  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=21286;

/*  Grom'tor, Son of Oronok  */
UPDATE `creature_template` SET `HealthModifier` = 3.6 WHERE `entry`=21291;

/*  Coilfang Serpentguard  */
UPDATE `creature_template` SET `DamageModifier` = 23.0391, `HealthModifier` = 25.0 WHERE `entry`=21298;

/*  Coilfang Fathom-Witch  */
UPDATE `creature_template` SET `DamageModifier` = 14.1634, `HealthModifier` = 25.0, `ArmorModifier` = 0.772656 WHERE `entry`=21299;

/*  Fel Corrupter  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.5 WHERE `entry`=21300;

/*  Coilfang Shatterer  */
UPDATE `creature_template` SET `DamageModifier` = 23.0391, `HealthModifier` = 25.0 WHERE `entry`=21301;

/*  Cursed Scarab  */
UPDATE `creature_template` SET `DamageModifier` = 0.399894, `HealthModifier` = 2.2 WHERE `entry`=21306;

/*  Eva  */
UPDATE `creature_template` SET `DamageModifier` = 0.197903, `HealthModifier` = 1.2 WHERE `entry`=21307;

/*  Painmistress Gabrissa  */
UPDATE `creature_template` SET `DamageModifier` = 1.25975 WHERE `entry`=21309;

/*  Shadowmoon Valley Invisible Trigger (Tiny)  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=21310;

/*  Rokgah Bloodgrip  */
UPDATE `creature_template` SET `DamageModifier` = 2.57462, `HealthModifier` = 1.1 WHERE `entry`=21311;

/*  Neophyte Guardian  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.2 WHERE `entry`=21312;

/*  Dead Clefthoof  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=21313;

/*  Ruul the Darkener  */
UPDATE `creature_template` SET `DamageModifier` = 3.39215 WHERE `entry`=21315;

/*  Spirit of Ar'tor  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.6 WHERE `entry`=21318;

/*  Netherock Crumbler  */
UPDATE `creature_template` SET `ArmorModifier` = 1.22478 WHERE `entry`=21323;

/*  Spirit Raven  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21324;

/*  Raven's Wood Stonebark  */
UPDATE `creature_template` SET `DamageModifier` = 3.4196 WHERE `entry`=21325;

/*  Kurdran Wildhammer  */
UPDATE `creature_template` SET `DamageModifier` = 90.3268 WHERE `entry`=21330;

/*  Thorny Growth  */
UPDATE `creature_template` SET `DamageModifier` = 0.215098, `HealthModifier` = 0.2 WHERE `entry`=21331;

/*  Spirit Hunter  */
UPDATE `creature_template` SET `HealthModifier` = 1.3, `unit_class` = 1 WHERE `entry`=21332;

/*  Veneratus Spawn Node  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=21334;

/*  Gedrah  */
UPDATE `creature_template` SET `DamageModifier` = 0.277467, `HealthModifier` = 1.4 WHERE `entry`=21336;

/*  Coilfang Leper  */
UPDATE `creature_template` SET `DamageModifier` = 1.734 WHERE `entry`=21338;

/*  Coilfang Hate-Screamer  */
UPDATE `creature_template` SET `DamageModifier` = 14.1634, `HealthModifier` = 25.0 WHERE `entry`=21339;

/*  Victor  */
UPDATE `creature_template` SET `DamageModifier` = 5.30891, `HealthModifier` = 0.5, `ArmorModifier` = 0.30303 WHERE `entry`=21341;

/*  Alex  */
UPDATE `creature_template` SET `DamageModifier` = 5.30891, `HealthModifier` = 0.5, `ArmorModifier` = 0.30303 WHERE `entry`=21342;

/*  Harvey  */
UPDATE `creature_template` SET `DamageModifier` = 5.30891, `HealthModifier` = 51.8, `ArmorModifier` = 0.30303 WHERE `entry`=21343;

/*  Phil  */
UPDATE `creature_template` SET `DamageModifier` = 5.30891, `HealthModifier` = 0.5, `ArmorModifier` = 0.30303 WHERE `entry`=21344;

/*  Hugh  */
UPDATE `creature_template` SET `DamageModifier` = 5.30891, `HealthModifier` = 0.5, `ArmorModifier` = 0.30303 WHERE `entry`=21345;

/*  Sightless Eye  */
UPDATE `creature_template` SET `DamageModifier` = 0.207369 WHERE `entry`=21346;

/*  Shadowmoon Valley Tuber Node  */
UPDATE `creature_template` SET `DamageModifier` = 0.180455, `HealthModifier` = 1.3 WHERE `entry`=21347;

/*  Shadowmoon Trigger  */
UPDATE `creature_template` SET `HealthModifier` = 2.3 WHERE `entry`=21348;

/*  T'chali the Witch Doctor  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.5 WHERE `entry`=21349;

/*  Gronn-Priest  */
UPDATE `creature_template` SET `DamageModifier` = 24.7247, `HealthModifier` = 17.8, `ManaModifier` = 14.9 WHERE `entry`=21350;

/*  Ogre Building Bunny Summoner  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=21352;

/*  Blood Guard Gulmok  */
UPDATE `creature_template` SET `HealthModifier` = 0.6 WHERE `entry`=21359;

/*  Phoenix  */
UPDATE `creature_template` SET `DamageModifier` = 9.74797, `HealthModifier` = 25.0 WHERE `entry`=21362;

/*  Phoenix Egg  */
UPDATE `creature_template` SET `HealthModifier` = 9.9 WHERE `entry`=21364;

/*  Flame Strike Trigger (Kael)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70 WHERE `entry`=21369;

/*  Silkwing  */
UPDATE `creature_template` SET `DamageModifier` = 2.34094 WHERE `entry`=21373;

/*  Wyrmcult Acolyte  */
UPDATE `creature_template` SET `HealthModifier` = 1.0, `ArmorModifier` = 0.757945 WHERE `entry`=21383;

/*  Maxnar the Ashmaw  */
UPDATE `creature_template` SET `DamageModifier` = 1.26017 WHERE `entry`=21389;

/*  Protean Spawn  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21395;

/*  Theine Brightsong  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 3.4 WHERE `entry`=21398;

/*  Anchorite Ceyla  */
UPDATE `creature_template` SET `HealthModifier` = 0.9 WHERE `entry`=21402;

/*  Legion Hold Fel Reaver  */
UPDATE `creature_template` SET `DamageModifier` = 3.30233, `ArmorModifier` = 1.43727 WHERE `entry`=21404;

/*  Ethereal Arcanist  */
UPDATE `creature_template` SET `ArmorModifier` = 0.653759 WHERE `entry`=21405;

/*  Blood Lord Zarath  */
UPDATE `creature_template` SET `DamageModifier` = 29.0863 WHERE `entry`=21410;

/*  Tobias the Filth Gorger  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 1.2 WHERE `entry`=21411;

/*  Negaton Field  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=21414;

/*  Lakaan  */
UPDATE `creature_template` SET `ArmorModifier` = 0.63416 WHERE `entry`=21416;

/*  Infernal Attacker  */
UPDATE `creature_template` SET `DamageModifier` = 0.203357 WHERE `entry`=21419;

/*  Gnome Defender - 209  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.3 WHERE `entry`=21426;

/*  Strider Jock  */
UPDATE `creature_template` SET `DamageModifier` = 2.70683 WHERE `entry`=21427;

/*  Corrupted Water Elemental  */
UPDATE `creature_template` SET `DamageModifier` = 0.290711 WHERE `entry`=21428;

/*  Bone Wastes - Sealed Coffin Trigger 01  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=21429;

/*  Unliving Draenei  */
UPDATE `creature_template` SET `DamageModifier` = 2.35326 WHERE `entry`=21430;

/*  Almaador  */
UPDATE `creature_template` SET `DamageModifier` = 1.72335, `HealthModifier` = 1.1 WHERE `entry`=21432;

/*  Gordie  */
UPDATE `creature_template` SET `DamageModifier` = 0.235628, `HealthModifier` = 26.7 WHERE `entry`=21434;

/*  Shadow Horror  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 2.0, `HealthModifier` = 0.2 WHERE `entry`=21435;

/*  Station Sharpshooter  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.4 WHERE `entry`=21441;

/*  Bone Wastes - Orb Waypoint 01  */
UPDATE `creature_template` SET `DamageModifier` = 0.245068, `HealthModifier` = 1.4 WHERE `entry`=21443;

/*  Tempixx Finagler  */
UPDATE `creature_template` SET `DamageModifier` = 3.97066, `HealthModifier` = 2.2 WHERE `entry`=21444;

/*  Bladespire Evil Spirit  */
UPDATE `creature_template` SET `DamageModifier` = 2.28093, `HealthModifier` = 1.3 WHERE `entry`=21446;

/*  Gadgetzan Sniper  */
UPDATE `creature_template` SET `minlevel` = 27, `maxlevel` = 28, `HealthModifier` = 1.0 WHERE `entry`=21448;

/*  Cursed Spirit  */
UPDATE `creature_template` SET `DamageModifier` = 0.201876, `HealthModifier` = 0.8 WHERE `entry`=21449;

/*  Bone Wastes - Event Trigger A  */
UPDATE `creature_template` SET `HealthModifier` = 2.3 WHERE `entry`=21451;

/*  Bloodmaul Evil Spirit  */
UPDATE `creature_template` SET `DamageModifier` = 2.28093, `HealthModifier` = 1.3 WHERE `entry`=21452;

/*  [Unused] Greater Crust Burster Visual  */
UPDATE `creature_template` SET `DamageModifier` = 2.26918, `HealthModifier` = 1.4 WHERE `entry`=21457;

/*  Trayana  */
UPDATE `creature_template` SET `DamageModifier` = 2.8726, `HealthModifier` = 1.4 WHERE `entry`=21458;

/*  Tally Zapnabber  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.7 WHERE `entry`=21460;

/*  Rally Zapnabber  */
UPDATE `creature_template` SET `maxlevel` = 67, `DamageModifier` = 2.0, `HealthModifier` = 0.7 WHERE `entry`=21461;

/*  Bone Wastes - Portal Trigger  */
UPDATE `creature_template` SET `HealthModifier` = 2.3 WHERE `entry`=21463;

/*  David Wayne  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.2 WHERE `entry`=21465;

/*  Harbinger Skyriss  */
UPDATE `creature_template` SET `DamageModifier` = 3.46983, `HealthModifier` = 4.0 WHERE `entry`=21466;

/*  Harbinger Skyriss  */
UPDATE `creature_template` SET `DamageModifier` = 3.46983, `HealthModifier` = 8.0 WHERE `entry`=21467;

/*  Daranelle  */
UPDATE `creature_template` SET `DamageModifier` = 0.245068, `HealthModifier` = 0.8 WHERE `entry`=21469;

/*  Angered Arakkoa Protector  */
UPDATE `creature_template` SET `minlevel` = 65, `maxlevel` = 66, `HealthModifier` = 0.8 WHERE `entry`=21470;

/*  Stormer Ewan Wildwing  */
UPDATE `creature_template` SET `HealthModifier` = 0.9 WHERE `entry`=21471;

/*  Coreiel  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=21474;

/*  Mokthar Grimblade  */
UPDATE `creature_template` SET `HealthModifier` = 0.9 WHERE `entry`=21476;

/*  Rocknail Flayer  */
UPDATE `creature_template` SET `DamageModifier` = 0.425909 WHERE `entry`=21477;

/*  Tasaldan  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 11.6 WHERE `entry`=21483;

/*  Embelar  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.6 WHERE `entry`=21484;

/*  Aldraan  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.0 WHERE `entry`=21485;

/*  Cendrii  */
UPDATE `creature_template` SET `DamageModifier` = 1.64214, `HealthModifier` = 1.0 WHERE `entry`=21487;

/*  Banro  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.4 WHERE `entry`=21488;

/*  Bone Wastes - Event Trigger B  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=21489;

/*  Wyrmcult Blessed  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=21492;

/*  Kablamm Farflinger  */
UPDATE `creature_template` SET `DamageModifier` = 1.72335, `HealthModifier` = 0.8 WHERE `entry`=21493;

/*  Smiles O'Byron  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=21494;

/*  Dertrok  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.7 WHERE `entry`=21496;

/*  Blackscale  */
UPDATE `creature_template` SET `DamageModifier` = 3.16699 WHERE `entry`=21497;

/*  Morgroron  */
UPDATE `creature_template` SET `DamageModifier` = 2.83092 WHERE `entry`=21500;

/*  Makazradon  */
UPDATE `creature_template` SET `DamageModifier` = 2.82318 WHERE `entry`=21501;

/*  Image of Warbringer Razuun  */
UPDATE `creature_template` SET `DamageModifier` = 0.195836, `HealthModifier` = 0.5 WHERE `entry`=21502;

/*  Sunfury Warlock  */
UPDATE `creature_template` SET `ArmorModifier` = 0.735987 WHERE `entry`=21503;

/*  Pathaleon the Calculator's Image  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=21504;

/*  Azaloth  */
UPDATE `creature_template` SET `DamageModifier` = 3.60482 WHERE `entry`=21506;

/*  Coilfang Frenzy  */
UPDATE `creature_template` SET `DamageModifier` = 6.29975 WHERE `entry`=21508;

/*  Gorgrom the Dragon-Eater  */
UPDATE `creature_template` SET `DamageModifier` = 10.8946 WHERE `entry`=21514;

/*  Trachela  */
UPDATE `creature_template` SET `DamageModifier` = 1.34296, `HealthModifier` = 1.8 WHERE `entry`=21515;

/*  Death's Watch  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21516;

/*  Ilthuril  */
UPDATE `creature_template` SET `DamageModifier` = 0.272541, `HealthModifier` = 0.4 WHERE `entry`=21517;

/*  Oruhe  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 2.9 WHERE `entry`=21518;

/*  Death's Might  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21519;

/*  Arcane Servant (1)  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21521;

/*  Bloodwarder Centurion (1)  */
UPDATE `creature_template` SET `DamageModifier` = 15.8224, `HealthModifier` = 4.6, `mingold` = 1476, `maxgold` = 1932 WHERE `entry`=21522;

/*  Bloodwarder Physician (1)  */
UPDATE `creature_template` SET `DamageModifier` = 13.4009, `HealthModifier` = 4.5, `ManaModifier` = 5.1, `mingold` = 922, `maxgold` = 1209 WHERE `entry`=21523;

/*  Bloodwarder Slayer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 22.2938, `HealthModifier` = 4.0, `mingold` = 1094, `maxgold` = 1433 WHERE `entry`=21524;

/*  Gatewatcher Gyro-Kill (1)  */
UPDATE `creature_template` SET `DamageModifier` = 28.0309, `HealthModifier` = 24.9, `mingold` = 4199, `maxgold` = 5489 WHERE `entry`=21525;

/*  Gatewatcher Iron-Hand (1)  */
UPDATE `creature_template` SET `DamageModifier` = 28.0584, `HealthModifier` = 21.4, `mingold` = 5219, `maxgold` = 6821 WHERE `entry`=21526;

/*  Mechanar Crusher (1)  */
UPDATE `creature_template` SET `DamageModifier` = 7.8896, `HealthModifier` = 4.1, `mingold` = 1349, `maxgold` = 1766 WHERE `entry`=21527;

/*  Mechanar Driller (1)  */
UPDATE `creature_template` SET `DamageModifier` = 11.5485, `HealthModifier` = 4.1, `mingold` = 1349, `maxgold` = 1766 WHERE `entry`=21528;

/*  Mechanar Tinkerer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 17.3066, `HealthModifier` = 2.0, `ArmorModifier` = 0.68403, `mingold` = 353, `maxgold` = 466 WHERE `entry`=21531;

/*  Mechanar Wrecker (1)  */
UPDATE `creature_template` SET `DamageModifier` = 17.079, `HealthModifier` = 4.0, `mingold` = 1051, `maxgold` = 1377 WHERE `entry`=21532;

/*  Mechano-Lord Capacitus (1)  */
UPDATE `creature_template` SET `DamageModifier` = 14.8917, `HealthModifier` = 41.9, `mingold` = 6494, `maxgold` = 8486 WHERE `entry`=21533;

/*  Nether Wraith (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 4.7552, `HealthModifier` = 2.7, `ArmorModifier` = 0.515504 WHERE `entry`=21535;

/*  Nethermancer Sepethrea (1)  */
UPDATE `creature_template` SET `DamageModifier` = 22.9254, `HealthModifier` = 42.4, `mingold` = 4794, `maxgold` = 6266 WHERE `entry`=21536;

/*  Pathaleon the Calculator (1)  */
UPDATE `creature_template` SET `DamageModifier` = 13.8106, `HealthModifier` = 42.4, `mingold` = 5644, `maxgold` = 7376 WHERE `entry`=21537;

/*  Raging Flames (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 5.33349, `HealthModifier` = 23.5 WHERE `entry`=21538;

/*  Sunseeker Astromage (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 71, `DamageModifier` = 12.8295, `HealthModifier` = 6.7, `ArmorModifier` = 0.780411, `mingold` = 1389, `maxgold` = 1819 WHERE `entry`=21539;

/*  Sunseeker Engineer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 16.5528, `HealthModifier` = 5.1, `ArmorModifier` = 0.738223, `mingold` = 1049, `maxgold` = 1375 WHERE `entry`=21540;

/*  Sunseeker Netherbinder (1)  */
UPDATE `creature_template` SET `DamageModifier` = 14.8013, `HealthModifier` = 4.4, `ArmorModifier` = 0.63416, `mingold` = 796, `maxgold` = 1044 WHERE `entry`=21541;

/*  Tempest-Forge Destroyer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 48.7097, `mingold` = 4793, `maxgold` = 6264 WHERE `entry`=21542;

/*  Tempest-Forge Patroller (1)  */
UPDATE `creature_template` SET `DamageModifier` = 38.6381, `HealthModifier` = 6.8, `mingold` = 1733, `maxgold` = 2268 WHERE `entry`=21543;

/*  Bloodfalcon (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 13.3271 WHERE `entry`=21544;

/*  Bloodwarder Falconer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 20.9184, `HealthModifier` = 4.1, `mingold` = 1009, `maxgold` = 1322 WHERE `entry`=21545;

/*  Bloodwarder Greenkeeper (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 17.9197, `HealthModifier` = 4.1, `ManaModifier` = 4.9, `mingold` = 879, `maxgold` = 1153 WHERE `entry`=21546;

/*  Bloodwarder Mender (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 20.4462, `HealthModifier` = 4.0, `ArmorModifier` = 0.663248, `ManaModifier` = 2.9, `mingold` = 709, `maxgold` = 931 WHERE `entry`=21547;

/*  Bloodwarder Protector (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 48.4297, `HealthModifier` = 4.0, `mingold` = 837, `maxgold` = 1098 WHERE `entry`=21548;

/*  Bloodwarder Steward (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 31.0451, `HealthModifier` = 4.2, `mingold` = 1049, `maxgold` = 1375 WHERE `entry`=21549;

/*  Blue Seedling (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 4.7619, `HealthModifier` = 0.2, `ArmorModifier` = 0.622762 WHERE `entry`=21550;

/*  Commander Sarannis (1)  */
UPDATE `creature_template` SET `DamageModifier` = 38.4908, `HealthModifier` = 20.2, `mingold` = 4794, `maxgold` = 6266 WHERE `entry`=21551;

/*  Frayer (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 3.41167 WHERE `entry`=21552;

/*  Frayer Protector (1)  */
UPDATE `creature_template` SET `DamageModifier` = 9.13323, `HealthModifier` = 0.8 WHERE `entry`=21553;

/*  Frayer Wildling (1)  */
UPDATE `creature_template` SET `DamageModifier` = 6.85735, `HealthModifier` = 1.0 WHERE `entry`=21554;

/*  Greater Frayer (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 6.89548, `HealthModifier` = 1.8 WHERE `entry`=21555;

/*  Green Seedling (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 4.75159, `HealthModifier` = 0.2, `ArmorModifier` = 0.622762 WHERE `entry`=21557;

/*  High Botanist Freywinn (1)  */
UPDATE `creature_template` SET `maxlevel` = 72, `DamageModifier` = 16.0646, `HealthModifier` = 21.3, `mingold` = 4157, `maxgold` = 5433 WHERE `entry`=21558;

/*  Laj (1)  */
UPDATE `creature_template` SET `maxlevel` = 72, `DamageModifier` = 41.8032, `HealthModifier` = 22.3, `mingold` = 5219, `maxgold` = 6821 WHERE `entry`=21559;

/*  Mutate Fear-Shrieker (1)  */
UPDATE `creature_template` SET `DamageModifier` = 20.6314, `ArmorModifier` = 0.595327 WHERE `entry`=21560;

/*  Mutate Fleshlasher (1)  */
UPDATE `creature_template` SET `minlevel` = 71, `maxlevel` = 71, `DamageModifier` = 3.38262, `HealthModifier` = 1.0 WHERE `entry`=21561;

/*  Mutate Horror (1)  */
UPDATE `creature_template` SET `DamageModifier` = 22.8875, `ArmorModifier` = 0.673166 WHERE `entry`=21562;

/*  Nethervine Inciter (1)  */
UPDATE `creature_template` SET `DamageModifier` = 25.1337, `HealthModifier` = 4.0, `mingold` = 1051, `maxgold` = 1377 WHERE `entry`=21563;

/*  Nethervine Reaper (1)  */
UPDATE `creature_template` SET `DamageModifier` = 25.2129, `HealthModifier` = 4.0, `mingold` = 1009, `maxgold` = 1322 WHERE `entry`=21564;

/*  Nethervine Trickster (1)  */
UPDATE `creature_template` SET `DamageModifier` = 29.7251, `HealthModifier` = 4.0, `mingold` = 1009, `maxgold` = 1322 WHERE `entry`=21565;

/*  Red Seedling (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 4.7619, `HealthModifier` = 0.2, `ArmorModifier` = 0.491515 WHERE `entry`=21566;

/*  Sapling (1)  */
UPDATE `creature_template` SET `DamageModifier` = 6.57877, `HealthModifier` = 0.6 WHERE `entry`=21567;

/*  Summoned Bloodwarder Mender (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `maxlevel` = 70, `DamageModifier` = 20.5011, `HealthModifier` = 4.0, `ManaModifier` = 2.9 WHERE `entry`=21568;

/*  Summoned Bloodwarder Reservist (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 4.42177, `HealthModifier` = 1.0, `ArmorModifier` = 0.6799 WHERE `entry`=21569;

/*  Sunseeker Botanist (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 17.1272, `HealthModifier` = 3.9, `mingold` = 796, `maxgold` = 1044 WHERE `entry`=21570;

/*  Sunseeker Channeler (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 42.3495, `HealthModifier` = 3.9, `ArmorModifier` = 0.63416, `mingold` = 754, `maxgold` = 989 WHERE `entry`=21571;

/*  Sunseeker Chemist (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 17.3825, `HealthModifier` = 3.9, `mingold` = 796, `maxgold` = 1044 WHERE `entry`=21572;

/*  Sunseeker Gene-Splicer (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 19.8184, `HealthModifier` = 3.9, `ArmorModifier` = 0.63416, `mingold` = 711, `maxgold` = 933 WHERE `entry`=21573;

/*  Sunseeker Geomancer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 16.779, `mingold` = 1095, `maxgold` = 1435 WHERE `entry`=21574;

/*  Sunseeker Harvester (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 13.4997, `HealthModifier` = 3.9, `mingold` = 796, `maxgold` = 1044 WHERE `entry`=21575;

/*  Sunseeker Herbalist (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 34.8705, `HealthModifier` = 3.9, `mingold` = 966, `maxgold` = 1266 WHERE `entry`=21576;

/*  Sunseeker Researcher (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 13.8614, `HealthModifier` = 3.9, `mingold` = 796, `maxgold` = 1044 WHERE `entry`=21577;

/*  Tempest-Forge Peacekeeper (1)  */
UPDATE `creature_template` SET `DamageModifier` = 58.841, `HealthModifier` = 11.9, `ArmorModifier` = 1.32567, `mingold` = 1051, `maxgold` = 1377 WHERE `entry`=21578;

/*  Thorn Flayer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 5.48192, `HealthModifier` = 1.0 WHERE `entry`=21579;

/*  Thorn Lasher (1)  */
UPDATE `creature_template` SET `DamageModifier` = 2.92897, `HealthModifier` = 1.0 WHERE `entry`=21580;

/*  Thorngrin the Tender (1)  */
UPDATE `creature_template` SET `maxlevel` = 72, `DamageModifier` = 35.3916, `HealthModifier` = 16.9, `mingold` = 3264, `maxgold` = 4268 WHERE `entry`=21581;

/*  Warp Splinter (1)  */
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72, `DamageModifier` = 12.3409, `ArmorModifier` = 1.5, `mingold` = 5644, `maxgold` = 7376 WHERE `entry`=21582;

/*  White Seedling (1)  */
UPDATE `creature_template` SET `minlevel` = 68, `DamageModifier` = 4.96876, `HealthModifier` = 0.2, `ArmorModifier` = 0.652955 WHERE `entry`=21583;

/*  Arcatraz Defender (1)  */
UPDATE `creature_template` SET `DamageModifier` = 7.34452, `HealthModifier` = 3.8, `mingold` = 963, `maxgold` = 1262 WHERE `entry`=21585;

/*  Arcatraz Sentinel (1)  */
UPDATE `creature_template` SET `DamageModifier` = 17.7311, `HealthModifier` = 23.2, `mingold` = 4791, `maxgold` = 6261 WHERE `entry`=21586;

/*  Arcatraz Warder (1)  */
UPDATE `creature_template` SET `DamageModifier` = 7.88796, `HealthModifier` = 3.9, `ManaModifier` = 4.7, `mingold` = 835, `maxgold` = 1095 WHERE `entry`=21587;

/*  Blackwing Drakonaar (1)  */
UPDATE `creature_template` SET `DamageModifier` = 15.1327, `HealthModifier` = 16.3, `mingold` = 3859, `maxgold` = 5045 WHERE `entry`=21588;

/*  Blazing Trickster (1)  */
UPDATE `creature_template` SET `DamageModifier` = 5.93602, `HealthModifier` = 12.0, `mingold` = 3006, `maxgold` = 3930 WHERE `entry`=21589;

/*  Dalliah the Doomsayer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 6.26606, `HealthModifier` = 18.0, `mingold` = 5644, `maxgold` = 7376 WHERE `entry`=21590;

/*  Death Watcher (1)  */
UPDATE `creature_template` SET `DamageModifier` = 16.259, `HealthModifier` = 8.0 WHERE `entry`=21591;

/*  Entropic Eye (1)  */
UPDATE `creature_template` SET `DamageModifier` = 19.061 WHERE `entry`=21593;

/*  Eredar Deathbringer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 29.5012, `mingold` = 1774, `maxgold` = 2321 WHERE `entry`=21594;

/*  Eredar Soul-Eater (1)  */
UPDATE `creature_template` SET `DamageModifier` = 25.5663, `mingold` = 1859, `maxgold` = 2432 WHERE `entry`=21595;

/*  Ethereum Slayer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 10.8363, `mingold` = 1009, `maxgold` = 1322 WHERE `entry`=21596;

/*  Ethereum Wave-Caster (1)  */
UPDATE `creature_template` SET `DamageModifier` = 5.39754, `mingold` = 881, `maxgold` = 1155 WHERE `entry`=21597;

/*  Gargantuan Abyssal (1)  */
UPDATE `creature_template` SET `DamageModifier` = 15.6903, `HealthModifier` = 13.4 WHERE `entry`=21598;

/*  Harbinger Skyriss (1)  */
UPDATE `creature_template` SET `DamageModifier` = 7.35531, `HealthModifier` = 20.3, `mingold` = 9588, `maxgold` = 12532 WHERE `entry`=21599;

/*  Harbinger Skyriss (1)  */
UPDATE `creature_template` SET `DamageModifier` = 7.35531, `HealthModifier` = 20.3, `mingold` = 9588, `maxgold` = 12532 WHERE `entry`=21600;

/*  Harbinger Skyriss (1)  */
UPDATE `creature_template` SET `DamageModifier` = 7.35531, `HealthModifier` = 20.3 WHERE `entry`=21601;

/*  Millhouse Manastorm (1)  */
UPDATE `creature_template` SET `DamageModifier` = 6.20339, `HealthModifier` = 3.6 WHERE `entry`=21602;

/*  Negaton Field (1)  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=21603;

/*  Negaton Screamer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 10.1943, `mingold` = 1774, `maxgold` = 2321 WHERE `entry`=21604;

/*  Negaton Warp-Master (1)  */
UPDATE `creature_template` SET `DamageModifier` = 13.6035, `HealthModifier` = 8.0, `ArmorModifier` = 1.20926, `mingold` = 1944, `maxgold` = 2543 WHERE `entry`=21605;

/*  Phase-Hunter (1)  */
UPDATE `creature_template` SET `DamageModifier` = 21.9517, `HealthModifier` = 14.9 WHERE `entry`=21606;

/*  Protean Horror (1)  */
UPDATE `creature_template` SET `DamageModifier` = 6.32495, `HealthModifier` = 1.7 WHERE `entry`=21607;

/*  Protean Nightmare (1)  */
UPDATE `creature_template` SET `DamageModifier` = 2.56861 WHERE `entry`=21608;

/*  Protean Spawn (1)  */
UPDATE `creature_template` SET `DamageModifier` = 3.00385, `HealthModifier` = 0.6 WHERE `entry`=21609;

/*  Sargeron Archer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 13.5859, `mingold` = 1561, `maxgold` = 2043 WHERE `entry`=21610;

/*  Sargeron Hellcaller (1)  */
UPDATE `creature_template` SET `DamageModifier` = 13.5859, `ManaModifier` = 8.0, `mingold` = 1561, `maxgold` = 2043 WHERE `entry`=21611;

/*  Sightless Eye (1)  */
UPDATE `creature_template` SET `HealthModifier` = 0.3, `ArmorModifier` = 0.729275 WHERE `entry`=21612;

/*  Skulking Witch (1)  */
UPDATE `creature_template` SET `DamageModifier` = 20.9057, `HealthModifier` = 8.0, `mingold` = 2071, `maxgold` = 2709 WHERE `entry`=21613;

/*  Soul Devourer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 20.9057 WHERE `entry`=21614;

/*  Spiteful Temptress (1)  */
UPDATE `creature_template` SET `DamageModifier` = 22.4526, `mingold` = 1774, `maxgold` = 2321 WHERE `entry`=21615;

/*  Sulfuron Magma-Thrower (1)  */
UPDATE `creature_template` SET `DamageModifier` = 17.6266, `mingold` = 3179, `maxgold` = 4157 WHERE `entry`=21616;

/*  Akkiris Lightning-Waker (1)  */
UPDATE `creature_template` SET `DamageModifier` = 16.1112 WHERE `entry`=21617;

/*  Twilight Drakonaar (1)  */
UPDATE `creature_template` SET `DamageModifier` = 16.5341, `HealthModifier` = 16.3, `mingold` = 3944, `maxgold` = 5156 WHERE `entry`=21618;

/*  Unbound Devastator (1)  */
UPDATE `creature_template` SET `DamageModifier` = 16.259, `HealthModifier` = 8.0, `mingold` = 2241, `maxgold` = 2931 WHERE `entry`=21619;

/*  Unbound Void Zone (1)  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=21620;

/*  Unchained Doombringer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 8.86387, `HealthModifier` = 9.0, `mingold` = 2880, `maxgold` = 3766 WHERE `entry`=21621;

/*  Warden Mellichar (1)  */
UPDATE `creature_template` SET `DamageModifier` = 2.9392, `HealthModifier` = 12.1 WHERE `entry`=21622;

/*  Wrath-Scryer Soccothrates (1)  */
UPDATE `creature_template` SET `DamageModifier` = 11.5637, `HealthModifier` = 24.1, `mingold` = 5644, `maxgold` = 7376 WHERE `entry`=21624;

/*  Zereketh the Unbound (1)  */
UPDATE `creature_template` SET `DamageModifier` = 10.4276, `mingold` = 5219, `maxgold` = 6821 WHERE `entry`=21626;

/*  Highborne Lamenter  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.4 WHERE `entry`=21628;

/*  Vengeful Draenei  */
UPDATE `creature_template` SET `DamageModifier` = 2.35326 WHERE `entry`=21636;

/*  Vengeful Harbinger  */
UPDATE `creature_template` SET `DamageModifier` = 2.35326 WHERE `entry`=21638;

/*  Illidari Slayer  */
UPDATE `creature_template` SET `DamageModifier` = 9.03177 WHERE `entry`=21639;

/*  Alurmi  */
UPDATE `creature_template` SET `DamageModifier` = 1.72032, `HealthModifier` = 1.9 WHERE `entry`=21643;

/*  Felguard Brute (1)  */
UPDATE `creature_template` SET `DamageModifier` = 63.0763, `HealthModifier` = 4.0, `mingold` = 1291, `maxgold` = 1690 WHERE `entry`=21645;

/*  Hellfire Familiar (1)  */
UPDATE `creature_template` SET `DamageModifier` = 5.57648, `HealthModifier` = 1.3 WHERE `entry`=21646;

/*  Mature Netherwing Drake  */
UPDATE `creature_template` SET `DamageModifier` = 2.96439 WHERE `entry`=21648;

/*  Skettis Followers Spawner  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=21654;

/*  Nakodu  */
UPDATE `creature_template` SET `DamageModifier` = 0.189478 WHERE `entry`=21655;

/*  Neltharaku  */
UPDATE `creature_template` SET `DamageModifier` = 1.57037, `HealthModifier` = 0.9 WHERE `entry`=21657;

/*  Human Charger  */
UPDATE `creature_template` SET `DamageModifier` = 4.01512, `HealthModifier` = 7.2 WHERE `entry`=21664;

/*  Human Cleric  */
UPDATE `creature_template` SET `DamageModifier` = 4.01512, `HealthModifier` = 7.2 WHERE `entry`=21682;

/*  Human Conjurer  */
UPDATE `creature_template` SET `DamageModifier` = 4.01512, `HealthModifier` = 7.2 WHERE `entry`=21683;

/*  King Llane  */
UPDATE `creature_template` SET `DamageModifier` = 4.01512, `HealthModifier` = 21.5 WHERE `entry`=21684;

/*  Oronok Torn-heart  */
UPDATE `creature_template` SET `DamageModifier` = 9.0, `HealthModifier` = 7.0, `ArmorModifier` = 2.85714 WHERE `entry`=21685;

/*  Borak, Son of Oronok  */
UPDATE `creature_template` SET `DamageModifier` = 9.0, `HealthModifier` = 7.0, `ArmorModifier` = 2.5 WHERE `entry`=21686;

/*  Grom'tor, Son of Oronok  */
UPDATE `creature_template` SET `DamageModifier` = 9.0, `HealthModifier` = 7.0, `ArmorModifier` = 2.5 WHERE `entry`=21687;

/*  Toshley  */
UPDATE `creature_template` SET `DamageModifier` = 1.79177, `HealthModifier` = 0.3 WHERE `entry`=21691;

/*  Cansis  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.9 WHERE `entry`=21692;

/*  Bog Overlord  */
UPDATE `creature_template` SET `DamageModifier` = 12.8736 WHERE `entry`=21694;

/*  Tidal Surger  */
UPDATE `creature_template` SET `DamageModifier` = 5.44667 WHERE `entry`=21695;

/*  Steam Surger  */
UPDATE `creature_template` SET `DamageModifier` = 1.47869 WHERE `entry`=21696;

/*  Infinite Chrono-Lord  */
UPDATE `creature_template` SET `DamageModifier` = 5.21378 WHERE `entry`=21697;

/*  Infinite Timereaver  */
UPDATE `creature_template` SET `DamageModifier` = 9.14512 WHERE `entry`=21698;

/*  Maiev Shadowsong  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=21699;

/*  Akama  */
UPDATE `creature_template` SET `DamageModifier` = 50.1407, `HealthModifier` = 284.6, `ManaModifier` = 179.2 WHERE `entry`=21700;

/*  Ashtongue Deathsworn  */
UPDATE `creature_template` SET `DamageModifier` = 4.97828 WHERE `entry`=21701;

/*  Ethereum Life-Binder  */
UPDATE `creature_template` SET `DamageModifier` = 4.8258 WHERE `entry`=21702;

/*  Corrupted Fire Elemental  */
UPDATE `creature_template` SET `DamageModifier` = 0.319141, `HealthModifier` = 0.2 WHERE `entry`=21706;

/*  Corrupted Air Elemental  */
UPDATE `creature_template` SET `DamageModifier` = 0.290711 WHERE `entry`=21707;

/*  Haalum  */
UPDATE `creature_template` SET `ArmorModifier` = 0.63416 WHERE `entry`=21711;

/*  Infinite Chrono-Lord (1)  */
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72, `DamageModifier` = 11.8281 WHERE `entry`=21712;

/*  [DND]Mok'Nathal Wand 1  */
UPDATE `creature_template` SET `HealthModifier` = 2.5 WHERE `entry`=21713;

/*  [DND]Mok'Nathal Wand 2  */
UPDATE `creature_template` SET `HealthModifier` = 2.1 WHERE `entry`=21714;

/*  [DND]Mok'Nathal Wand 3  */
UPDATE `creature_template` SET `HealthModifier` = 1.1 WHERE `entry`=21715;

/*  Enslaved Netherwing Whelp  */
UPDATE `creature_template` SET `DamageModifier` = 0.191662 WHERE `entry`=21721;

/*  Enslaved Netherwing Drake  */
UPDATE `creature_template` SET `DamageModifier` = 0.178239 WHERE `entry`=21722;

/*  Hawkbane  */
UPDATE `creature_template` SET `DamageModifier` = 2.51677 WHERE `entry`=21724;

/*  Kagrosh  */
UPDATE `creature_template` SET `DamageModifier` = 0.197903, `HealthModifier` = 1.3 WHERE `entry`=21725;

/*  Summoned Daemon  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 8.3 WHERE `entry`=21726;

/*  Flanis Swiftwing  */
UPDATE `creature_template` SET `DamageModifier` = 0.197903, `HealthModifier` = 1.3 WHERE `entry`=21727;

/*  Alluvion  */
UPDATE `creature_template` SET `DamageModifier` = 2.78309 WHERE `entry`=21730;

/*  Nandirx  */
UPDATE `creature_template` SET `minlevel` = 66, `maxlevel` = 66, `DamageModifier` = 2.0 WHERE `entry`=21732;

/*  Karzo  */
UPDATE `creature_template` SET `minlevel` = 66, `maxlevel` = 66, `DamageModifier` = 2.0 WHERE `entry`=21733;

/*  Zixxy  */
UPDATE `creature_template` SET `minlevel` = 67, `HealthModifier` = 1.2 WHERE `entry`=21734;

/*  Wildhammer Defender  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.4 WHERE `entry`=21736;

/*  Mini-Electromental Flavor  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.2 WHERE `entry`=21737;

/*  Redeemed Spirit of Air  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21738;

/*  Redeemed Spirit of Fire  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.6 WHERE `entry`=21740;

/*  Redeemed Spirit of Water  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=21741;

/*  Caretaker Aluuro  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=21746;

/*  Orc Necrolyte  */
UPDATE `creature_template` SET `DamageModifier` = 4.01512, `HealthModifier` = 7.2 WHERE `entry`=21747;

/*  Orc Wolf  */
UPDATE `creature_template` SET `DamageModifier` = 4.01512, `HealthModifier` = 7.2 WHERE `entry`=21748;

/*  Shadowmoon Scout  */
UPDATE `creature_template` SET `DamageModifier` = 0.396547 WHERE `entry`=21749;

/*  Orc Warlock  */
UPDATE `creature_template` SET `DamageModifier` = 4.01512, `HealthModifier` = 7.2 WHERE `entry`=21750;

/*  Chubis  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=21751;

/*  Warchief Blackhand  */
UPDATE `creature_template` SET `DamageModifier` = 4.01512, `HealthModifier` = 21.5 WHERE `entry`=21752;

/*  Nickwinkle the Metro-Gnome  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.5 WHERE `entry`=21755;

/*  Big Electromental Flavor  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.2 WHERE `entry`=21757;

/*  Destroyed Sentinel  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=21761;

/*  Illidari Tormentor  */
UPDATE `creature_template` SET `ArmorModifier` = 0.765916 WHERE `entry`=21762;

/*  Time-Lost Skettis Worshipper  */
UPDATE `creature_template` SET `minlevel` = 70 WHERE `entry`=21763;

/*  Alieshor  */
UPDATE `creature_template` SET `DamageModifier` = 2.40845, `HealthModifier` = 1.7 WHERE `entry`=21766;

/*  Harbinger of the Raven  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21767;

/*  Vagath  */
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72, `rank` = 3, `DamageModifier` = 27.5537 WHERE `entry`=21768;

/*  Overlord Or'barokh  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.1 WHERE `entry`=21769;

/*  Researcher Tiorus  */
UPDATE `creature_template` SET `DamageModifier` = 2.25786, `HealthModifier` = 1.4 WHERE `entry`=21770;

/*  Warcaller Sardon Truslice  */
UPDATE `creature_template` SET `DamageModifier` = 2.38892, `HealthModifier` = 1.2 WHERE `entry`=21771;

/*  Chief Apothecary Hildagard  */
UPDATE `creature_template` SET `DamageModifier` = 2.32012, `HealthModifier` = 0.6 WHERE `entry`=21772;

/*  Thane Yoregar  */
UPDATE `creature_template` SET `DamageModifier` = 2.25786, `HealthModifier` = 1.0 WHERE `entry`=21773;

/*  Zorus the Judicator  */
UPDATE `creature_template` SET `DamageModifier` = 2.25786, `HealthModifier` = 1.1 WHERE `entry`=21774;

/*  Warcaller Beersnout  */
UPDATE `creature_template` SET `DamageModifier` = 1.76921, `HealthModifier` = 0.3 WHERE `entry`=21775;

/*  Illidari Temptress  */
UPDATE `creature_template` SET `maxlevel` = 70, `DamageModifier` = 5.8376, `HealthModifier` = 2.3 WHERE `entry`=21776;

/*  Gnomus  */
UPDATE `creature_template` SET `DamageModifier` = 2.58903, `HealthModifier` = 0.9 WHERE `entry`=21777;

/*  Timeon  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=21782;

/*  Shadowmoon Zealot  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21788;

/*  Nakansi  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.7 WHERE `entry`=21789;

/*  Plexi  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.7 WHERE `entry`=21790;

/*  Ancient Shadowmoon Spirit  */
UPDATE `creature_template` SET `DamageModifier` = 3.29814, `ManaModifier` = 6.2 WHERE `entry`=21797;

/*  Vhel'kur  */
UPDATE `creature_template` SET `DamageModifier` = 8.1295 WHERE `entry`=21801;

/*  Skettis Kaliri  */
UPDATE `creature_template` SET `DamageModifier` = 0.406024, `HealthModifier` = 0.5 WHERE `entry`=21804;

/*  Greyheart Spellbinder  */
UPDATE `creature_template` SET `DamageModifier` = 21.2311, `HealthModifier` = 20.0 WHERE `entry`=21806;

/*  Wyrmcult Poacher  */
UPDATE `creature_template` SET `HealthModifier` = 0.7 WHERE `entry`=21809;

/*  Wyrmcult Broodling  */
UPDATE `creature_template` SET `minlevel` = 66, `maxlevel` = 67, `DamageModifier` = 0.251849, `HealthModifier` = 0.2 WHERE `entry`=21811;

/*  Nether Drake Egg Bunny  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=21814;

/*  Infinite Whelp  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.3 WHERE `entry`=21818;

/*  Proto-Nether Drake  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=21821;

/*  Vindicator Aluumen  */
UPDATE `creature_template` SET `DamageModifier` = 1.77301, `HealthModifier` = 0.8 WHERE `entry`=21822;

/*  Nihil the Banished  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `rank` = 3, `DamageModifier` = 1.0 WHERE `entry`=21823;

/*  Dizzy Dina  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21824;

/*  Sanoru  */
UPDATE `creature_template` SET `DamageModifier` = 3.25634, `HealthModifier` = 2.0 WHERE `entry`=21826;

/*  Summoned Wrath Hound  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.2 WHERE `entry`=21837;

/*  Terokk  */
UPDATE `creature_template` SET `DamageModifier` = 8.70004 WHERE `entry`=21838;

/*  Mature Silkwing  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=21839;

/*  Cosmetic Silkwing  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=21840;

/*  Coilfang Ray (1)  */
UPDATE `creature_template` SET `DamageModifier` = 25.9291, `HealthModifier` = 3.9, `ArmorModifier` = 0.717369 WHERE `entry`=21841;

/*  Coilfang Scale-Healer (1)  */
UPDATE `creature_template` SET `maxlevel` = 71, `DamageModifier` = 10.262, `HealthModifier` = 3.7, `ArmorModifier` = 0.565742, `mingold` = 1037, `maxgold` = 1360 WHERE `entry`=21842;

/*  Coilfang Tempest (1)  */
UPDATE `creature_template` SET `DamageModifier` = 9.28294, `HealthModifier` = 3.9, `mingold` = 1294, `maxgold` = 1695 WHERE `entry`=21843;

/*  Mountain Colossus  */
UPDATE `creature_template` SET `DamageModifier` = 3.49156 WHERE `entry`=21844;

/*  Leotheras the Blind  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 23.0553, `HealthModifier` = 500.0 WHERE `entry`=21845;

/*  Slain Auchenai Warrior  */
UPDATE `creature_template` SET `DamageModifier` = 0.180455 WHERE `entry`=21846;

/*  Raven's Wood Ent  */
UPDATE `creature_template` SET `minlevel` = 57, `maxlevel` = 58, `DamageModifier` = 3.97412 WHERE `entry`=21853;

/*  Inner Demon  */
UPDATE `creature_template` SET `DamageModifier` = 4.67379, `HealthModifier` = 1.5 WHERE `entry`=21857;

/*  Sha'tar Vindicator  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21858;

/*  Slain Sha'tar Vindicator  */
UPDATE `creature_template` SET `DamageModifier` = 0.180455 WHERE `entry`=21859;

/*  Exarch Onaala  */
UPDATE `creature_template` SET `maxlevel` = 68 WHERE `entry`=21860;

/*  Serpentshrine Lurker  */
UPDATE `creature_template` SET `DamageModifier` = 27.0953, `HealthModifier` = 15.0 WHERE `entry`=21863;

/*  Coilfang Ambusher  */
UPDATE `creature_template` SET `DamageModifier` = 9.01204, `HealthModifier` = 5.0 WHERE `entry`=21865;

/*  Reanimated Spirit  */
UPDATE `creature_template` SET `HealthModifier` = 0.2 WHERE `entry`=21866;

/*  Teron Gorefiend  */
UPDATE `creature_template` SET `DamageModifier` = 2.33129, `HealthModifier` = 1.9 WHERE `entry`=21867;

/*  Unliving Guardian  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.4 WHERE `entry`=21869;

/*  Unliving Initiate  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.4 WHERE `entry`=21870;

/*  The Voice of Gorefiend  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=21872;

/*  Coilfang Guardian  */
UPDATE `creature_template` SET `DamageModifier` = 27.0953, `HealthModifier` = 10.0 WHERE `entry`=21873;

/*  Water Walker Elemental  */
UPDATE `creature_template` SET `DamageModifier` = 6.20819, `HealthModifier` = 15.0 WHERE `entry`=21874;

/*  Shadow of Leotheras  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 23.0553, `HealthModifier` = 500.0 WHERE `entry`=21875;

/*  Chain of Shadows  */
UPDATE `creature_template` SET `HealthModifier` = 2.3 WHERE `entry`=21876;

/*  Karsius the Ancient Watcher  */
UPDATE `creature_template` SET `DamageModifier` = 1.74395 WHERE `entry`=21877;

/*  Felboar  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21878;

/*  Sethekk Slayer  */
UPDATE `creature_template` SET `DamageModifier` = 4.5247 WHERE `entry`=21889;

/*  Avian Ripper  */
UPDATE `creature_template` SET `DamageModifier` = 1.47039, `HealthModifier` = 0.6 WHERE `entry`=21891;

/*  Azaloth Credit Marker  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=21892;

/*  Taerek  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.6 WHERE `entry`=21895;

/*  Silmara  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.5 WHERE `entry`=21896;

/*  Felspine the Greater  */
UPDATE `creature_template` SET `DamageModifier` = 1.35341 WHERE `entry`=21897;

/*  Avian Warhawk  */
UPDATE `creature_template` SET `DamageModifier` = 4.53856 WHERE `entry`=21904;

/*  Veynna Dawnstar  */
UPDATE `creature_template` SET `HealthModifier` = 1.5 WHERE `entry`=21905;

/*  Kelara  */
UPDATE `creature_template` SET `DamageModifier` = 5.3237, `HealthModifier` = 1.3 WHERE `entry`=21906;

/*  Arcano-Scorp  */
UPDATE `creature_template` SET `HealthModifier` = 0.4 WHERE `entry`=21909;

/*  Ride the Lightning Kill Credit Trigger  */
UPDATE `creature_template` SET `DamageModifier` = 2.76782, `HealthModifier` = 1.3 WHERE `entry`=21910;

/*  Water Globule  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70 WHERE `entry`=21913;

/*  Bog Overlord (1)  */
UPDATE `creature_template` SET `DamageModifier` = 54.7004, `HealthModifier` = 8.8 WHERE `entry`=21914;

/*  Coilfang Leper (1)  */
UPDATE `creature_template` SET `DamageModifier` = 8.3083, `HealthModifier` = 1.0 WHERE `entry`=21915;

/*  Steam Surger (1)  */
UPDATE `creature_template` SET `DamageModifier` = 15.1273, `HealthModifier` = 0.7 WHERE `entry`=21916;

/*  Tidal Surger (1)  */
UPDATE `creature_template` SET `DamageModifier` = 22.4806, `HealthModifier` = 7.6, `ArmorModifier` = 0.74935 WHERE `entry`=21917;

/*  Coilfang Guardian (1)  */
UPDATE `creature_template` SET `DamageModifier` = 27.0953, `HealthModifier` = 10.0 WHERE `entry`=21918;

/*  Coilfang Ambusher (1)  */
UPDATE `creature_template` SET `DamageModifier` = 9.01204, `HealthModifier` = 5.0 WHERE `entry`=21919;

/*  Tidewalker Lurker  */
UPDATE `creature_template` SET `DamageModifier` = 5.32006, `HealthModifier` = 2.5 WHERE `entry`=21920;

/*  Talbuk  */
UPDATE `creature_template` SET `DamageModifier` = 6.36497, `HealthModifier` = 2.9, `ArmorModifier` = 0.18018 WHERE `entry`=21922;

/*  Terrorguard Protector  */
UPDATE `creature_template` SET `ArmorModifier` = 0.79709 WHERE `entry`=21923;

/*  Arcano-Scorp Credit  */
UPDATE `creature_template` SET `DamageModifier` = 0.180455, `HealthModifier` = 1.3 WHERE `entry`=21924;

/*  Trapping the Light Kill Credit Trigger  */
UPDATE `creature_template` SET `DamageModifier` = 2.76782, `HealthModifier` = 1.1 WHERE `entry`=21929;

/*  Avian Flyer  */
UPDATE `creature_template` SET `DamageModifier` = 4.59076 WHERE `entry`=21931;

/*  Hydross the Unstable  */
UPDATE `creature_template` SET `DamageModifier` = 2.21136, `HealthModifier` = 0.2 WHERE `entry`=21932;

/*  Earthmender Sophurus  */
UPDATE `creature_template` SET `HealthModifier` = 1.5 WHERE `entry`=21937;

/*  Earthmender Splinthoof  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.2 WHERE `entry`=21938;

/*  Accursed Apparition  */
UPDATE `creature_template` SET `dmgschool` = 5 WHERE `entry`=21941;

/*  Underbog Frenzy (1)  */
UPDATE `creature_template` SET `DamageModifier` = 5.83284, `HealthModifier` = 6.0 WHERE `entry`=21943;

/*  Gnome Spirit  */
UPDATE `creature_template` SET `maxlevel` = 68, `DamageModifier` = 2.30398, `HealthModifier` = 1.4 WHERE `entry`=21945;

/*  Fel Reaver Sentinel  */
UPDATE `creature_template` SET `DamageModifier` = 4.94758 WHERE `entry`=21949;

/*  Garm Wolfbrother  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21950;

/*  Thunderlord Clan Sub-Chief  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21951;

/*  Lobo  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=21952;

/*  Varen the Reclaimer  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=21953;

/*  Larissa Sunstrike  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=21954;

/*  Arcanist Thelis  */
UPDATE `creature_template` SET `DamageModifier` = 2.21752, `HealthModifier` = 0.9 WHERE `entry`=21955;

/*  Enchanted Elemental  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=21958;

/*  Fel Reaver Sentinel Credit  */
UPDATE `creature_template` SET `DamageModifier` = 2.76782, `HealthModifier` = 1.1 WHERE `entry`=21959;

/*  Cataclysm Overseer  */
UPDATE `creature_template` SET `DamageModifier` = 2.96855 WHERE `entry`=21961;

/*  Udalo  */
UPDATE `creature_template` SET `minlevel` = 62, `maxlevel` = 62, `DamageModifier` = 1.60903, `HealthModifier` = 2.1 WHERE `entry`=21962;

/*  Enslaved Doomguard  */
UPDATE `creature_template` SET `DamageModifier` = 2.34645 WHERE `entry`=21963;

/*  Fathom-Guard Caribdis  */
UPDATE `creature_template` SET `DamageModifier` = 22.1204, `HealthModifier` = 150.0 WHERE `entry`=21964;

/*  Fathom-Guard Tidalvess  */
UPDATE `creature_template` SET `DamageModifier` = 37.1544, `HealthModifier` = 150.0 WHERE `entry`=21965;

/*  Fathom-Guard Sharkkis  */
UPDATE `creature_template` SET `DamageModifier` = 22.1204, `HealthModifier` = 150.0 WHERE `entry`=21966;

/*  Silvermoon City Commendation Officer  */
UPDATE `creature_template` SET `DamageModifier` = 4.03605, `HealthModifier` = 2.2 WHERE `entry`=21968;

/*  Exodar Commendation Officer  */
UPDATE `creature_template` SET `DamageModifier` = 4.03605, `HealthModifier` = 1.6 WHERE `entry`=21969;

/*  Officer Dawning  */
UPDATE `creature_template` SET `DamageModifier` = 0.31601 WHERE `entry`=21970;

/*  Officer Khaluun  */
UPDATE `creature_template` SET `DamageModifier` = 0.337077, `HealthModifier` = 2.2 WHERE `entry`=21971;

/*  Air Force Alarm Bot (Area 52)  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=21974;

/*  Bladespire Sober Defender  */
UPDATE `creature_template` SET `DamageModifier` = 3.20876 WHERE `entry`=21975;

/*  Area 52 Death Machine  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21976;

/*  Gadgetzan Air Strike Caller  */
UPDATE `creature_template` SET `DamageModifier` = 1.78954 WHERE `entry`=21977;

/*  Val'zareq the Conqueror  */
UPDATE `creature_template` SET `DamageModifier` = 2.70683 WHERE `entry`=21979;

/*  Overseer Nuaar  */
UPDATE `creature_template` SET `HealthModifier` = 1.2 WHERE `entry`=21981;

/*  Wyrmcult Ambusher  */
UPDATE `creature_template` SET `DamageModifier` = 0.456877 WHERE `entry`=21982;

/*  Samia Inkling  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=21983;

/*  Rexxar  */
UPDATE `creature_template` SET `rank` = 1, `DamageModifier` = 2.91377, `HealthModifier` = 7.5 WHERE `entry`=21984;

/*  Altar of Sha'tar Vindicator  */
UPDATE `creature_template` SET `DamageModifier` = 2.25786, `HealthModifier` = 2.7 WHERE `entry`=21986;

/*  Avian Flyer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 4.15865, `HealthModifier` = 1.0 WHERE `entry`=21988;

/*  Avian Ripper (1)  */
UPDATE `creature_template` SET `DamageModifier` = 5.04653, `HealthModifier` = 0.9, `ArmorModifier` = 0.573597 WHERE `entry`=21989;

/*  Avian Warhawk (1)  */
UPDATE `creature_template` SET `DamageModifier` = 7.19378, `HealthModifier` = 4.1 WHERE `entry`=21990;

/*  Air Force Guard Post (Horde - Bat Rider)  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=21993;

/*  Air Force Guard Post (Alliance - Gryphon)  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=21996;

/*  Air Force Guard Post (Goblin - Area 52 - Zeppelin)  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=21997;

/*  Kor'kron Wind Rider  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.2 WHERE `entry`=21998;

/*  Air Force Trip Wire - Rooftop (Alliance)  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=21999;

/*  Air Force Trip Wire - Rooftop (Horde)  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=22001;

/*  Air Force Trip Wire - Ground (Horde)  */
UPDATE `creature_template` SET `minlevel` = 10, `maxlevel` = 10, `DamageModifier` = 34.3444, `HealthModifier` = 0.6 WHERE `entry`=22002;

/*  Air Force Trip Wire - Ground (Alliance)  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=22003;

/*  Leoroxx  */
UPDATE `creature_template` SET `DamageModifier` = 16.6333 WHERE `entry`=22004;

/*  Tem  */
UPDATE `creature_template` SET `DamageModifier` = 4.66764, `HealthModifier` = 1.3, `ArmorModifier` = 0.18018 WHERE `entry`=22005;

/*  Shadowlord Deathwail  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 14.9 WHERE `entry`=22006;

/*  Tree Warden Chawn  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.9 WHERE `entry`=22007;

/*  Sky Marker  */
UPDATE `creature_template` SET `DamageModifier` = 2.53717, `HealthModifier` = 1.4 WHERE `entry`=22008;

/*  Tainted Elemental  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=22009;

/*  Corok the Mighty  */
UPDATE `creature_template` SET `DamageModifier` = 2.97751 WHERE `entry`=22011;

/*  Chancellor Bloodleaf  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=22012;

/*  Eye of the Storm Emissary  */
UPDATE `creature_template` SET `DamageModifier` = 3.1601, `HealthModifier` = 2.5, `ArmorModifier` = 1.68522 WHERE `entry`=22013;

/*  Silvermoon Citizen  */
UPDATE `creature_template` SET `HealthModifier` = 0.8, `ArmorModifier` = 0.121212 WHERE `entry`=22014;

/*  Eye of the Storm Envoy  */
UPDATE `creature_template` SET `DamageModifier` = 3.1601, `HealthModifier` = 2.6, `ArmorModifier` = 1.68522 WHERE `entry`=22015;

/*  O'Mally Zapnabber  */
UPDATE `creature_template` SET `minlevel` = 68, `DamageModifier` = 2.0, `HealthModifier` = 0.7 WHERE `entry`=22020;

/*  O'Mally's Instrument Bunny  */
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55, `DamageModifier` = 0.31601, `HealthModifier` = 0.4 WHERE `entry`=22021;

/*  [DND]Spirit 1  */
UPDATE `creature_template` SET `HealthModifier` = 4.7 WHERE `entry`=22023;

/*  Parshah  */
UPDATE `creature_template` SET `HealthModifier` = 0.9 WHERE `entry`=22024;

/*  Bahat  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=22026;

/*  Pure Spawn of Hydross  */
UPDATE `creature_template` SET `DamageModifier` = 10.6401, `HealthModifier` = 6.0 WHERE `entry`=22035;

/*  Tainted Spawn of Hydross  */
UPDATE `creature_template` SET `DamageModifier` = 10.6401, `HealthModifier` = 6.0 WHERE `entry`=22036;

/*  Hai'shulud  */
UPDATE `creature_template` SET `DamageModifier` = 4.25066 WHERE `entry`=22038;

/*  [PH] bat target  */
UPDATE `creature_template` SET `HealthModifier` = 0.2 WHERE `entry`=22039;

/*  [PH] Cave Bat JZB  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=22040;

/*  Sergeant Kargrul  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=22043;

/*  Vengeful Husk  */
UPDATE `creature_template` SET `DamageModifier` = 0.210878 WHERE `entry`=22045;

/*  [PH] Cave Bat  */
UPDATE `creature_template` SET `HealthModifier` = 0.2 WHERE `entry`=22046;

/*  Cave Beetle  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=22047;

/*  Crazed Colossus Kill Credit  */
UPDATE `creature_template` SET `DamageModifier` = 0.158573, `HealthModifier` = 1.1 WHERE `entry`=22051;

/*  Behemothon, King of the Colossi  */
UPDATE `creature_template` SET `DamageModifier` = 1.70734, `HealthModifier` = 13.3 WHERE `entry`=22054;

/*  Coilfang Elite  */
UPDATE `creature_template` SET `DamageModifier` = 28.2322, `HealthModifier` = 25.0 WHERE `entry`=22055;

/*  Coilfang Strider  */
UPDATE `creature_template` SET `DamageModifier` = 54.1997, `HealthModifier` = 25.0 WHERE `entry`=22056;

/*  Heart of Fury Visual Trigger  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=22058;

/*  Wildhammer Gryphon Rider  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=22059;

/*  Shadowmoon Soulstealer  */
UPDATE `creature_template` SET `DamageModifier` = 2.70361 WHERE `entry`=22061;

/*  Air Force Trip Wire - Rooftop (Goblin - Area 52)  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=22063;

/*  Stormspire Drake  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.6 WHERE `entry`=22064;

/*  Air Force Guard Post (Ethereal - Stormspire)  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=22065;

/*  Air Force Guard Post (Scryer - Dragonhawk)  */
UPDATE `creature_template` SET `DamageModifier` = 0.180455, `HealthModifier` = 1.3 WHERE `entry`=22066;

/*  Scryer Dragonhawk  */
UPDATE `creature_template` SET `DamageModifier` = 1.67823, `HealthModifier` = 1.6 WHERE `entry`=22067;

/*  Air Force Trip Wire - Rooftop (Ethereal - Stormspire)  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=22068;

/*  Air Force Alarm Bot (Stormspire)  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=22069;

/*  Air Force Trip Wire - Rooftop (Scryer)  */
UPDATE `creature_template` SET `DamageModifier` = 0.180455, `HealthModifier` = 1.3 WHERE `entry`=22070;

/*  Air Force Alarm Bot (Scryer)  */
UPDATE `creature_template` SET `DamageModifier` = 0.180455, `HealthModifier` = 1.3 WHERE `entry`=22071;

/*  Shadowsworn Drakonid  */
UPDATE `creature_template` SET `DamageModifier` = 3.0136 WHERE `entry`=22072;

/*  Marcus Auralion  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 1.33807, `HealthModifier` = 1.7 WHERE `entry`=22073;

/*  Illidari Mind Breaker  */
UPDATE `creature_template` SET `DamageModifier` = 4.85113 WHERE `entry`=22074;

/*  Illidari Soldier  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 1.2 WHERE `entry`=22075;

/*  Torloth the Magnificent  */
UPDATE `creature_template` SET `DamageModifier` = 11.4182 WHERE `entry`=22076;

/*  Aldor Gryphon Guard  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.9 WHERE `entry`=22077;

/*  Air Force Alarm Bot (Aldor)  */
UPDATE `creature_template` SET `DamageModifier` = 0.180455, `HealthModifier` = 1.3 WHERE `entry`=22078;

/*  Air Force Guard Post (Aldor - Gryphon)  */
UPDATE `creature_template` SET `DamageModifier` = 0.180455, `HealthModifier` = 1.3 WHERE `entry`=22079;

/*  Air Force Trip Wire - Rooftop (Aldor)  */
UPDATE `creature_template` SET `DamageModifier` = 0.180455, `HealthModifier` = 1.3 WHERE `entry`=22080;

/*  Lord Illidan Stormrage  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 1.6 WHERE `entry`=22083;

/*  Air Force Alarm Bot (Sporeggar)  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=22086;

/*  Air Force Trip Wire - Rooftop (Sporeggar)  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=22088;

/*  Toshley Flying Machine  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=22089;

/*  Air Force Guard Post (Toshley's Station - Flying Machine)  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=22090;

/*  Illidari Watcher  */
UPDATE `creature_template` SET `DamageModifier` = 5.40723 WHERE `entry`=22093;

/*  Remnant of Hate  */
UPDATE `creature_template` SET `DamageModifier` = 0.191662 WHERE `entry`=22094;

/*  Shadowlord Deathwail Visual Trigger  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=22096;

/*  Veteran Gladiator  */
UPDATE `creature_template` SET `DamageModifier` = 0.189478, `HealthModifier` = 0.7 WHERE `entry`=22097;

/*  Grizzled Gladiator  */
UPDATE `creature_template` SET `DamageModifier` = 0.189478, `HealthModifier` = 0.7 WHERE `entry`=22098;

/*  Arena Promoter  */
UPDATE `creature_template` SET `DamageModifier` = 0.189478, `HealthModifier` = 0.5 WHERE `entry`=22101;

/*  Baron Sablemane  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 3.0 WHERE `entry`=22103;

/*  Decrepit Clefthoof  */
UPDATE `creature_template` SET `DamageModifier` = 1.72244 WHERE `entry`=22105;

/*  Ruul's Netherdrake  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=22106;

/*  Captain Darkhowl  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.5 WHERE `entry`=22107;

/*  Blackwhelp  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.2 WHERE `entry`=22108;

/*  Karynaku  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.0 WHERE `entry`=22112;

/*  Mordenai  */
UPDATE `creature_template` SET `DamageModifier` = 2.21859, `HealthModifier` = 1.3 WHERE `entry`=22113;

/*  Enraged Earth Shard  */
UPDATE `creature_template` SET `DamageModifier` = 0.517746 WHERE `entry`=22115;

/*  Fathom Lurker  */
UPDATE `creature_template` SET `DamageModifier` = 23.3961, `HealthModifier` = 25.0 WHERE `entry`=22119;

/*  Fathom Sporebat  */
UPDATE `creature_template` SET `DamageModifier` = 7.08761, `HealthModifier` = 25.0 WHERE `entry`=22120;

/*  Cenarion Storm Crow  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 1.2 WHERE `entry`=22122;

/*  Air Force Alarm Bot (Cenarion)  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=22124;

/*  Air Force Guard Post (Cenarion - Stormcrow)  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=22125;

/*  Air Force Trip Wire - Rooftop (Cenarion Expedition)  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=22126;

/*  Wildlord Antelarion  */
UPDATE `creature_template` SET `DamageModifier` = 3.95903, `HealthModifier` = 1.3 WHERE `entry`=22127;

/*  Durnholde Lookout  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 3.9 WHERE `entry`=22128;

/*  Durnholde Lookout (1)  */
UPDATE `creature_template` SET `DamageModifier` = 9.28788, `HealthModifier` = 3.9, `mingold` = 1661, `maxgold` = 8408 WHERE `entry`=22129;

/*  Baron Sablemane's Blackwhelp  */
UPDATE `creature_template` SET `ManaModifier` = 1.7 WHERE `entry`=22130;

/*  Netherwing Event Pinger  */
UPDATE `creature_template` SET `DamageModifier` = 2.76782, `HealthModifier` = 1.1 WHERE `entry`=22131;

/*  Faradrella  */
UPDATE `creature_template` SET `DamageModifier` = 3.74449, `HealthModifier` = 1.3 WHERE `entry`=22133;

/*  Shadowmoon Eye of Kilrogg  */
UPDATE `creature_template` SET `HealthModifier` = 0.2 WHERE `entry`=22134;

/*  Tame Clefthoof  */
UPDATE `creature_template` SET `DamageModifier` = 0.245068, `HealthModifier` = 0.2 WHERE `entry`=22135;

/*  Dubu  */
UPDATE `creature_template` SET `DamageModifier` = 0.245068, `HealthModifier` = 0.2 WHERE `entry`=22136;

/*  Summoned Old God  */
UPDATE `creature_template` SET `DamageModifier` = 1.64214, `HealthModifier` = 12.9 WHERE `entry`=22137;

/*  Dark Conclave Ritualist  */
UPDATE `creature_template` SET `DamageModifier` = 0.306887 WHERE `entry`=22138;

/*  Summoning Voidstorm  */
UPDATE `creature_template` SET `DamageModifier` = 0.180455, `HealthModifier` = 1.3 WHERE `entry`=22146;

/*  Commander Haephus Stonewall  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=22149;

/*  Lieutenant Fairweather  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.7 WHERE `entry`=22150;

/*  Ruuan Weald Sister  */
UPDATE `creature_template` SET `DamageModifier` = 2.25786, `HealthModifier` = 1.0 WHERE `entry`=22151;

/*  Blackfang Tarantula (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `maxlevel` = 70, `DamageModifier` = 4.28425, `HealthModifier` = 1.4, `ArmorModifier` = 0.53324 WHERE `entry`=22162;

/*  Darkwater Crocolisk (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `maxlevel` = 70, `DamageModifier` = 7.65821, `HealthModifier` = 1.4, `ArmorModifier` = 0.711817 WHERE `entry`=22163;

/*  Infinite Assassin (1)  */
UPDATE `creature_template` SET `DamageModifier` = 5.90565 WHERE `entry`=22164;

/*  Infinite Chronomancer (1)  */
UPDATE `creature_template` SET `DamageModifier` = 6.30238, `ArmorModifier` = 0.478235 WHERE `entry`=22165;

/*  Infinite Executioner (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `rank` = 1, `DamageModifier` = 3.99332, `ManaModifier` = 3.1 WHERE `entry`=22166;

/*  Infinite Timereaver (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 11.3326, `HealthModifier` = 21.1 WHERE `entry`=22167;

/*  Infinite Whelp (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 1.71144, `HealthModifier` = 0.5, `ArmorModifier` = 0.447454 WHERE `entry`=22169;

/*  Rift Keeper (1)  */
UPDATE `creature_template` SET `DamageModifier` = 35.7302, `mingold` = 2285, `maxgold` = 2989 WHERE `entry`=22170;

/*  Sable Jaguar (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `maxlevel` = 70, `DamageModifier` = 2.36401, `ArmorModifier` = 0.704188 WHERE `entry`=22173;

/*  Trigul  */
UPDATE `creature_template` SET `DamageModifier` = 2.32846 WHERE `entry`=22174;

/*  Apexis Flayer  */
UPDATE `creature_template` SET `DamageModifier` = 0.508397 WHERE `entry`=22175;

/*  Aether Ray  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=22181;

/*  Marmot  */
UPDATE `creature_template` SET `HealthModifier` = 0.4, `ArmorModifier` = 0.631847 WHERE `entry`=22189;

/*  Wrath Reaver  */
UPDATE `creature_template` SET `DamageModifier` = 4.36228 WHERE `entry`=22196;

/*  Slaag  */
UPDATE `creature_template` SET `DamageModifier` = 9.93405 WHERE `entry`=22199;

/*  Fear Fiend  */
UPDATE `creature_template` SET `maxlevel` = 72, `DamageModifier` = 2.0 WHERE `entry`=22204;

/*  Lord Corruptor  */
UPDATE `creature_template` SET `HealthModifier` = 0.6 WHERE `entry`=22205;

/*  Expedition Druid  */
UPDATE `creature_template` SET `DamageModifier` = 2.43891, `HealthModifier` = 1.7 WHERE `entry`=22206;

/*  Nasmara Moonsong  */
UPDATE `creature_template` SET `DamageModifier` = 0.210477, `HealthModifier` = 1.3 WHERE `entry`=22208;

/*  Battlemage Vyara  */
UPDATE `creature_template` SET `DamageModifier` = 1.68858, `HealthModifier` = 0.8 WHERE `entry`=22211;

/*  Andrion Darkspinner  */
UPDATE `creature_template` SET `DamageModifier` = 0.210477, `HealthModifier` = 1.4 WHERE `entry`=22212;

/*  Gidge Spellweaver  */
UPDATE `creature_template` SET `DamageModifier` = 0.195376, `HealthModifier` = 1.3 WHERE `entry`=22213;

/*  Treebole  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=22215;

/*  Fhyn Leafshadow  */
UPDATE `creature_template` SET `DamageModifier` = 3.0457, `HealthModifier` = 3.2, `ManaModifier` = 0.9 WHERE `entry`=22216;

/*  Felstorm Corruptor  */
UPDATE `creature_template` SET `HealthModifier` = 0.5, `ManaModifier` = 1.0 WHERE `entry`=22217;

/*  Insidious Familiar  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=22218;

/*  Felstorm Overseer  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=22221;

/*  Reagan Mancuso  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 1.9 WHERE `entry`=22225;

/*  Koi-Koi Spirit  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=22226;

/*  Markus Scylan  */
UPDATE `creature_template` SET `DamageModifier` = 3.13916, `HealthModifier` = 2.0 WHERE `entry`=22227;

/*  Druman Shadowgrove  */
UPDATE `creature_template` SET `DamageModifier` = 0.348703, `HealthModifier` = 0.5 WHERE `entry`=22229;

/*  Shadowmoon Fel Orc Attack Trigger  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=22230;

/*  Zezzak  */
UPDATE `creature_template` SET `DamageModifier` = 2.90037, `HealthModifier` = 0.8 WHERE `entry`=22231;

/*  Sinnea Starsong  */
UPDATE `creature_template` SET `DamageModifier` = 0.392291, `HealthModifier` = 6.5 WHERE `entry`=22234;

/*  Loirea Galerunner  */
UPDATE `creature_template` SET `DamageModifier` = 3.83574, `HealthModifier` = 3.1 WHERE `entry`=22237;

/*  Serpentshrine Tidecaller  */
UPDATE `creature_template` SET `DamageModifier` = 15.9233, `HealthModifier` = 15.0 WHERE `entry`=22238;

/*  Unbound Ethereal  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=22244;

/*  Dragonmaw Archer  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=22251;

/*  Dragonmaw Peon  */
UPDATE `creature_template` SET `DamageModifier` = 0.429827 WHERE `entry`=22252;

/*  Dragonmaw Ascendant  */
UPDATE `creature_template` SET `DamageModifier` = 6.96171 WHERE `entry`=22253;

/*  Demoniac Scryer  */
UPDATE `creature_template` SET `DamageModifier` = 2.8726 WHERE `entry`=22258;

/*  Hellfire Wardling  */
UPDATE `creature_template` SET `maxlevel` = 60, `DamageModifier` = 2.8726 WHERE `entry`=22259;

/*  Ogri'la Steelshaper  */
UPDATE `creature_template` SET `DamageModifier` = 1.63694, `HealthModifier` = 0.7 WHERE `entry`=22264;

/*  Ogri'la Grubgiver  */
UPDATE `creature_template` SET `HealthModifier` = 0.7 WHERE `entry`=22266;

/*  Leokk  */
UPDATE `creature_template` SET `DamageModifier` = 6.32495 WHERE `entry`=22268;

/*  Ogri'la Merchant  */
UPDATE `creature_template` SET `HealthModifier` = 0.7 WHERE `entry`=22270;

/*  Ogri'la Trader  */
UPDATE `creature_template` SET `HealthModifier` = 0.7 WHERE `entry`=22271;

/*  Kirrik the Awakened  */
UPDATE `creature_template` SET `DamageModifier` = 0.221271 WHERE `entry`=22272;

/*  Dragonmaw Skybreaker  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=22274;

/*  Apexis Guardian  */
UPDATE `creature_template` SET `DamageModifier` = 7.83508 WHERE `entry`=22275;

/*  High Priest Orglum  */
UPDATE `creature_template` SET `DamageModifier` = 0.344542, `HealthModifier` = 1.4 WHERE `entry`=22278;

/*  Galvanoth  */
UPDATE `creature_template` SET `DamageModifier` = 5.21378 WHERE `entry`=22281;

/*  Witness of Doom  */
UPDATE `creature_template` SET `DamageModifier` = 0.207369 WHERE `entry`=22282;

/*  Eredar Stormbringer  */
UPDATE `creature_template` SET `DamageModifier` = 4.43819 WHERE `entry`=22283;

/*  Fel Rager  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=22286;

/*  Rilak the Redeemed  */
UPDATE `creature_template` SET `DamageModifier` = 0.219914, `HealthModifier` = 0.9 WHERE `entry`=22292;

/*  Inactive Fel Reaver  */
UPDATE `creature_template` SET `DamageModifier` = 3.06952, `HealthModifier` = 2.0 WHERE `entry`=22293;

/*  Deathforge Automaton  */
UPDATE `creature_template` SET `DamageModifier` = 5.66835, `ArmorModifier` = 1.4668 WHERE `entry`=22295;

/*  Throne-Guard Highlord  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22297;

/*  Vile Fire-Soul  */
UPDATE `creature_template` SET `minlevel` = 70 WHERE `entry`=22298;

/*  Spore Strider  */
UPDATE `creature_template` SET `ManaModifier` = 15.0 WHERE `entry`=22299;

/*  Throne-Guard Sentinel  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22301;

/*  Throne-Guard Champion  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 10.7 WHERE `entry`=22302;

/*  Throne Hound  */
UPDATE `creature_template` SET `HealthModifier` = 8.9 WHERE `entry`=22303;

/*  Rotting Forest-Rager  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=22307;

/*  Wyrmcult Hunter  */
UPDATE `creature_template` SET `HealthModifier` = 0.7 WHERE `entry`=22308;

/*  Storming Wind-Ripper  */
UPDATE `creature_template` SET `DamageModifier` = 1.33727 WHERE `entry`=22310;

/*  Raging Fire-Soul  */
UPDATE `creature_template` SET `dmgschool` = 2 WHERE `entry`=22311;

/*  Spiritcaller Dohgar  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=22312;

/*  Deathforge Mine  */
UPDATE `creature_template` SET `minlevel` = 65, `maxlevel` = 65 WHERE `entry`=22315;

/*  Enslaved Netherwing Drake Kill Credit  */
UPDATE `creature_template` SET `DamageModifier` = 2.76782, `HealthModifier` = 1.1 WHERE `entry`=22316;

/*  Netherwing Drake Escape Dummy  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=22317;

/*  Kil'Jaeden Target  */
UPDATE `creature_template` SET `DamageModifier` = 2.53717, `HealthModifier` = 0.2 WHERE `entry`=22320;

/*  Incandescent Fel Spark  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=22323;

/*  Nightmare Weaver  */
UPDATE `creature_template` SET `DamageModifier` = 2.67073 WHERE `entry`=22325;

/*  Redeemed Avian  */
UPDATE `creature_template` SET `DamageModifier` = 0.219021, `HealthModifier` = 0.7 WHERE `entry`=22326;

/*  Zuluhed Transform  */
UPDATE `creature_template` SET `DamageModifier` = 4.98825, `HealthModifier` = 11.6 WHERE `entry`=22330;

/*  Dragonmaw Elite  */
UPDATE `creature_template` SET `DamageModifier` = 0.255313 WHERE `entry`=22331;

/*  Brood of Neltharaku  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=22332;

/*  Malevolent Hatchling  */
UPDATE `creature_template` SET `DamageModifier` = 2.292 WHERE `entry`=22337;

/*  Arcubus Destroyer  */
UPDATE `creature_template` SET `DamageModifier` = 6.57123 WHERE `entry`=22338;

/*  Redeemed Hatchling  */
UPDATE `creature_template` SET `DamageModifier` = 0.245676, `HealthModifier` = 1.4 WHERE `entry`=22339;

/*  Morcrush Shardling  */
UPDATE `creature_template` SET `DamageModifier` = 0.234451 WHERE `entry`=22344;

/*  Ethereum Life-Binder (1)  */
UPDATE `creature_template` SET `DamageModifier` = 4.8258, `HealthModifier` = 3.0, `ManaModifier` = 4.0, `mingold` = 881, `maxgold` = 1155 WHERE `entry`=22346;

/*  Colossus Lurker  */
UPDATE `creature_template` SET `DamageModifier` = 22.151, `HealthModifier` = 20.0, `ArmorModifier` = 0.582645 WHERE `entry`=22347;

/*  Western Gehenna Teleporter Credit  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=22348;

/*  Central Gehenna Teleporter Credit  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=22350;

/*  Eastern Gehenna Teleporter Credit  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=22351;

/*  Colossus Rager  */
UPDATE `creature_template` SET `DamageModifier` = 2.70683, `HealthModifier` = 4.0 WHERE `entry`=22352;

/*  Netherweb Victim  */
UPDATE `creature_template` SET `DamageModifier` = 0.498855 WHERE `entry`=22355;

/*  Reth'hedron the Subduer  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 11.1923 WHERE `entry`=22357;

/*  Nether Gas Visual Trigger  */
UPDATE `creature_template` SET `HealthModifier` = 2.3 WHERE `entry`=22358;

/*  Wyrmcult Aspirant  */
UPDATE `creature_template` SET `HealthModifier` = 0.7 WHERE `entry`=22359;

/*  Blacklord Hamarahk  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 2.3 WHERE `entry`=22361;

/*  Deathshadow Imp  */
UPDATE `creature_template` SET `DamageModifier` = 0.319782, `HealthModifier` = 0.3 WHERE `entry`=22362;

/*  Scout Navrin  */
UPDATE `creature_template` SET `DamageModifier` = 2.36418, `HealthModifier` = 0.2 WHERE `entry`=22364;

/*  Dread Relic Thrall  */
UPDATE `creature_template` SET `HealthModifier` = 0.1, `ArmorModifier` = 0.666667 WHERE `entry`=22369;

/*  Mekeda  */
UPDATE `creature_template` SET `DamageModifier` = 0.358027, `HealthModifier` = 1.7 WHERE `entry`=22370;

/*  Mok'Nathal Spirit  */
UPDATE `creature_template` SET `DamageModifier` = 2.30398, `HealthModifier` = 1.4 WHERE `entry`=22372;

/*  Defender Grashna  */
UPDATE `creature_template` SET `DamageModifier` = 0.219914 WHERE `entry`=22373;

/*  Hand of Kargath  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=22374;

/*  Avatar of Terokk  */
UPDATE `creature_template` SET `DamageModifier` = 4.45063, `ArmorModifier` = 1.58407 WHERE `entry`=22375;

/*  Minion of Terokk  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.3 WHERE `entry`=22376;

/*  Akuno  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 7.12645, `HealthModifier` = 22.4, `ManaModifier` = 6.0 WHERE `entry`=22377;

/*  Ambient Minion of Terokk  */
UPDATE `creature_template` SET `DamageModifier` = 0.210878, `HealthModifier` = 1.3 WHERE `entry`=22380;

/*  [DND]Bloodmaul Chatter Credit  */
UPDATE `creature_template` SET `DamageModifier` = 2.76782, `HealthModifier` = 1.3 WHERE `entry`=22383;

/*  Bloodmaul Soothsayer  */
UPDATE `creature_template` SET `HealthModifier` = 0.9, `ArmorModifier` = 0.667265 WHERE `entry`=22384;

/*  Terrordar the Tormentor  */
UPDATE `creature_template` SET `DamageModifier` = 2.69392 WHERE `entry`=22385;

/*  Watcher Moonshade  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.7 WHERE `entry`=22386;

/*  Lithic Oracle  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=22387;

/*  Kil'Jaeden Reaver (non-interactable)  */
UPDATE `creature_template` SET `HealthModifier` = 0.2 WHERE `entry`=22389;

/*  Mountain Shardling  */
UPDATE `creature_template` SET `DamageModifier` = 0.180455 WHERE `entry`=22390;

/*  Vortex Shardling  */
UPDATE `creature_template` SET `DamageModifier` = 0.180455 WHERE `entry`=22391;

/*  Deathshadow Overlord  */
UPDATE `creature_template` SET `DamageModifier` = 5.03861 WHERE `entry`=22393;

/*  Deathshadow Hound  */
UPDATE `creature_template` SET `DamageModifier` = 0.46016 WHERE `entry`=22394;

/*  Durnholde Reinforcement  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 8.0 WHERE `entry`=22398;

/*  Durnholde Reinforcement (1)  */
UPDATE `creature_template` SET `DamageModifier` = 5.93697, `ArmorModifier` = 0.799524 WHERE `entry`=22399;

/*  Twilight Ridge Target  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=22400;

/*  Honor Hold Gryphon Brigadier, North  */
UPDATE `creature_template` SET `DamageModifier` = 3.98702, `HealthModifier` = 2.0 WHERE `entry`=22404;

/*  Honor Hold Gryphon Brigadier, Forge  */
UPDATE `creature_template` SET `DamageModifier` = 3.98702, `HealthModifier` = 2.3 WHERE `entry`=22405;

/*  Honor Hold Gryphon Brigadier, Foothill  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 2.3 WHERE `entry`=22406;

/*  Caravan Defender  */
UPDATE `creature_template` SET `DamageModifier` = 0.221271, `HealthModifier` = 1.0 WHERE `entry`=22407;

/*  Furious Nether-wraith  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=22408;

/*  Expedition Outrider  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.7 WHERE `entry`=22410;

/*  Lakotae  */
UPDATE `creature_template` SET `DamageModifier` = 0.244788, `HealthModifier` = 0.8 WHERE `entry`=22420;

/*  Skar'this the Heretic  */
UPDATE `creature_template` SET `DamageModifier` = 8.28225 WHERE `entry`=22421;

/*  Evergrove Druid  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.4 WHERE `entry`=22423;

/*  Skywing  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=22424;

/*  Zarevhi  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 4.4 WHERE `entry`=22427;

/*  Vekax  */
UPDATE `creature_template` SET `DamageModifier` = 0.210878, `HealthModifier` = 0.8 WHERE `entry`=22429;

/*  Assistant Klatu  */
UPDATE `creature_template` SET `DamageModifier` = 3.1114, `HealthModifier` = 1.1 WHERE `entry`=22430;

/*  Anchorite Barada  */
UPDATE `creature_template` SET `DamageModifier` = 0.325612, `HealthModifier` = 10.2 WHERE `entry`=22431;

/*  Colonel Jules  */
UPDATE `creature_template` SET `DamageModifier` = 3.04447, `HealthModifier` = 1.2 WHERE `entry`=22432;

/*  Ja'y Nosliw  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 2.0 WHERE `entry`=22433;

/*  [DND]Ogre Pike Planted Credit  */
UPDATE `creature_template` SET `DamageModifier` = 0.158573, `HealthModifier` = 1.1 WHERE `entry`=22434;

/*  [DND]Rexxar's Wyvern Freed Credit  */
UPDATE `creature_template` SET `DamageModifier` = 0.158573, `HealthModifier` = 1.1 WHERE `entry`=22435;

/*  Blade's Legion Target  */
UPDATE `creature_template` SET `DamageModifier` = 2.53717, `HealthModifier` = 0.2 WHERE `entry`=22436;

/*  Remnant of Malice  */
UPDATE `creature_template` SET `DamageModifier` = 0.191662 WHERE `entry`=22437;

/*  Remnant of Greed  */
UPDATE `creature_template` SET `DamageModifier` = 0.21095 WHERE `entry`=22438;

/*  Remnant of Corruption  */
UPDATE `creature_template` SET `DamageModifier` = 0.21095 WHERE `entry`=22439;

/*  Remnant of Pride  */
UPDATE `creature_template` SET `DamageModifier` = 0.191662, `HealthModifier` = 0.6 WHERE `entry`=22440;

/*  Teribus the Cursed  */
UPDATE `creature_template` SET `DamageModifier` = 2.66372 WHERE `entry`=22441;

/*  Lonika Stillblade  */
UPDATE `creature_template` SET `DamageModifier` = 0.195376, `HealthModifier` = 0.3 WHERE `entry`=22442;

/*  Death's Door Fel Cannon  */
UPDATE `creature_template` SET `DamageModifier` = 1.53188, `HealthModifier` = 2.0 WHERE `entry`=22443;

/*  Anchorite Relic Bunny  */
UPDATE `creature_template` SET `DamageModifier` = 1.33333, `HealthModifier` = 380.0, `ArmorModifier` = 2.5 WHERE `entry`=22444;

/*  Commander Ra'vaj  */
UPDATE `creature_template` SET `DamageModifier` = 2.33751, `HealthModifier` = 0.6 WHERE `entry`=22446;

/*  Rexxar  */
UPDATE `creature_template` SET `rank` = 1, `DamageModifier` = 15.0, `HealthModifier` = 20.0, `ManaModifier` = 2.0 WHERE `entry`=22448;

/*  Reanimated Exarch  */
UPDATE `creature_template` SET `DamageModifier` = 0.25201 WHERE `entry`=22452;

/*  Injured Sha'tar Vindicator  */
UPDATE `creature_template` SET `DamageModifier` = 1.76365, `HealthModifier` = 0.2 WHERE `entry`=22453;

/*  Fel Spirit  */
UPDATE `creature_template` SET `DamageModifier` = 0.290108 WHERE `entry`=22454;

/*  Sky-Master Maxxor  */
UPDATE `creature_template` SET `DamageModifier` = 2.40845, `HealthModifier` = 1.3 WHERE `entry`=22455;

/*  Oakun  */
UPDATE `creature_template` SET `DamageModifier` = 2.25786, `HealthModifier` = 1.1 WHERE `entry`=22456;

/*  Sand Gnome Trigger  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=22457;

/*  Chief Archaeologist Letoll  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=22458;

/*  Freed Sha'tar Warrior  */
UPDATE `creature_template` SET `DamageModifier` = 2.35326, `HealthModifier` = 0.5 WHERE `entry`=22459;

/*  Spirit  */
UPDATE `creature_template` SET `HealthModifier` = 5.0 WHERE `entry`=22460;

/*  Vindicator Haylen  */
UPDATE `creature_template` SET `HealthModifier` = 1.5 WHERE `entry`=22462;

/*  Wounded Sha'tar Vindicator  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=22463;

/*  Explorers' League Researcher  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=22464;

/*  Natasha  */
UPDATE `creature_template` SET `HealthModifier` = 48.8, `ArmorModifier` = 0.294118 WHERE `entry`=22465;

/*  Bone Sifter  */
UPDATE `creature_template` SET `DamageModifier` = 2.292 WHERE `entry`=22466;

/*  Ogrin  */
UPDATE `creature_template` SET `DamageModifier` = 0.325401, `HealthModifier` = 0.3 WHERE `entry`=22468;

/*  Fiskal Shadowsong  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.5 WHERE `entry`=22469;

/*  Death's Door North Warp-Gate  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.4 WHERE `entry`=22471;

/*  Death's Door South Warp-Gate  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.4 WHERE `entry`=22472;

/*  Baron Sablemane  */
UPDATE `creature_template` SET `DamageModifier` = 6.0, `HealthModifier` = 8.0, `ManaModifier` = 2.0 WHERE `entry`=22473;

/*  Unstable Fel-Imp  */
UPDATE `creature_template` SET `HealthModifier` = 0.1 WHERE `entry`=22474;

/*  Aundro  */
UPDATE `creature_template` SET `maxlevel` = 64, `DamageModifier` = 3.11664, `HealthModifier` = 1.4 WHERE `entry`=22476;

/*  Anchorite Ensham  */
UPDATE `creature_template` SET `maxlevel` = 64, `DamageModifier` = 3.31714, `HealthModifier` = 1.0 WHERE `entry`=22477;

/*  Sab'aoth  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.7 WHERE `entry`=22479;

/*  Dwarfowitz  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.7 WHERE `entry`=22481;

/*  Halu  */
UPDATE `creature_template` SET `DamageModifier` = 3.9487, `HealthModifier` = 1.0 WHERE `entry`=22485;

/*  Sentinel Moonwhisper  */
UPDATE `creature_template` SET `HealthModifier` = 0.2 WHERE `entry`=22488;

/*  Grunt Grahk  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=22489;

/*  Huffer  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 5.0, `HealthModifier` = 1.5 WHERE `entry`=22490;

/*  Kerpow Blastwrench  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.4 WHERE `entry`=22491;

/*  Spirit  */
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60 WHERE `entry`=22492;

/*  Cosmowrench Bruiser  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 2.0, `HealthModifier` = 1.0 WHERE `entry`=22494;

/*  Death's Door Fel Cannon Target Bunny  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.4 WHERE `entry`=22495;

/*  Sabellian  */
UPDATE `creature_template` SET `DamageModifier` = 6.54608, `HealthModifier` = 10.0 WHERE `entry`=22496;

/*  V'eru  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.2 WHERE `entry`=22497;

/*  Lesser Wrath Hound  */
UPDATE `creature_template` SET `minlevel` = 67, `maxlevel` = 67, `DamageModifier` = 0.447386 WHERE `entry`=22499;

/*  Void Hound  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=22500;

/*  Death's Door Warp-Gate Explosion Bunny  */
UPDATE `creature_template` SET `DamageModifier` = 0.245068, `HealthModifier` = 0.2 WHERE `entry`=22502;

/*  Warp-Gate North Kill Bunny  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=22503;

/*  Warp-Gate South Kill Bunny  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=22504;

/*  Foul Purge  */
UPDATE `creature_template` SET `DamageModifier` = 3.98702 WHERE `entry`=22506;

/*  Darkness Released  */
UPDATE `creature_template` SET `DamageModifier` = 3.55245 WHERE `entry`=22507;

/*  World Trigger  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 0.3 WHERE `entry`=22515;

/*  World Trigger (Large AOI)  */
UPDATE `creature_template` SET `HealthModifier` = 1.6 WHERE `entry`=22517;

/*  Drakan (1)  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.7 WHERE `entry`=22540;

/*  Duros (1)  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.7 WHERE `entry`=22546;

/*  Stormpike Emissary (1)  */
UPDATE `creature_template` SET `HealthModifier` = 1.1 WHERE `entry`=22656;

/*  Rescued Cenarion Expedition Druid  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.9 WHERE `entry`=22810;

/*  Rescued Sha'tar Vindicator  */
UPDATE `creature_template` SET `HealthModifier` = 1.1 WHERE `entry`=22812;

/*  Rescued Sporeggar Scout  */
UPDATE `creature_template` SET `HealthModifier` = 0.7 WHERE `entry`=22814;

/*  Rescued Keepers of Time Custodian  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=22815;

/*  Orphan Matron Mercy  */
UPDATE `creature_template` SET `DamageModifier` = 2.34481, `HealthModifier` = 1.4 WHERE `entry`=22819;

/*  Seer Olum  */
UPDATE `creature_template` SET `DamageModifier` = 2.86422, `HealthModifier` = 5.6, `ArmorModifier` = 0.357782 WHERE `entry`=22820;

/*  Matron Li-sahar  */
UPDATE `creature_template` SET `DamageModifier` = 9.05408 WHERE `entry`=22825;

/*  King Dorfbruiser  */
UPDATE `creature_template` SET `DamageModifier` = 12.1805, `HealthModifier` = 11.3 WHERE `entry`=22826;

/*  Gorgolon the All-seeing  */
UPDATE `creature_template` SET `DamageModifier` = 11.3041 WHERE `entry`=22827;

/*  Trelopades  */
UPDATE `creature_template` SET `DamageModifier` = 14.6203, `HealthModifier` = 15.0 WHERE `entry`=22828;

/*  Outland Children's Week Auchindoun Trigger  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=22831;

/*  Morthis Whisperwing  */
UPDATE `creature_template` SET `DamageModifier` = 1.69628, `HealthModifier` = 0.8 WHERE `entry`=22832;

/*  Outland Children's Week Dark Portal Trigger  */
UPDATE `creature_template` SET `HealthModifier` = 0.2 WHERE `entry`=22833;

/*  Cenarion Dreamwarden  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=22835;

/*  Dreamwarden Lurosa  */
UPDATE `creature_template` SET `DamageModifier` = 0.513721 WHERE `entry`=22837;

/*  Ashtongue Illusion  */
UPDATE `creature_template` SET `DamageModifier` = 0.442115, `HealthModifier` = 0.6 WHERE `entry`=22840;

/*  Shade of Akama  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 149.5, `HealthModifier` = 132.0 WHERE `entry`=22841;

/*  Corvax  */
UPDATE `creature_template` SET `DamageModifier` = 6.86653, `HealthModifier` = 77.8 WHERE `entry`=22842;

/*  Rook  */
UPDATE `creature_template` SET `DamageModifier` = 6.86653, `HealthModifier` = 166.7 WHERE `entry`=22843;

/*  Ashtongue Battlelord  */
UPDATE `creature_template` SET `DamageModifier` = 26.1085, `HealthModifier` = 45.0 WHERE `entry`=22844;

/*  Ashtongue Mystic  */
UPDATE `creature_template` SET `DamageModifier` = 15.9233, `HealthModifier` = 30.0 WHERE `entry`=22845;

/*  Ashtongue Stormcaller  */
UPDATE `creature_template` SET `DamageModifier` = 14.1634, `HealthModifier` = 30.0 WHERE `entry`=22846;

/*  Ashtongue Primalist  */
UPDATE `creature_template` SET `DamageModifier` = 22.6081, `HealthModifier` = 30.0 WHERE `entry`=22847;

/*  Storm Fury  */
UPDATE `creature_template` SET `DamageModifier` = 2.25569, `HealthModifier` = 14.5 WHERE `entry`=22848;

/*  Ashtongue Feral Spirit  */
UPDATE `creature_template` SET `DamageModifier` = 13.7606, `HealthModifier` = 15.0 WHERE `entry`=22849;

/*  Outland Children's Week Exodar 01 Trigger  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=22851;

/*  Illidari Defiler  */
UPDATE `creature_template` SET `DamageModifier` = 15.9233, `HealthModifier` = 30.0 WHERE `entry`=22853;

/*  Illidari Nightlord  */
UPDATE `creature_template` SET `DamageModifier` = 30.4586, `HealthModifier` = 60.0 WHERE `entry`=22855;

/*  Reliquary of the Lost  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 494.2 WHERE `entry`=22856;

/*  Illidari Ravager  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=22857;

/*  Illidari Succubus  */
UPDATE `creature_template` SET `ArmorModifier` = 0.63416 WHERE `entry`=22860;

/*  Lightsworn Vindicator  */
UPDATE `creature_template` SET `ArmorModifier` = 0.780411 WHERE `entry`=22861;

/*  Anchorite Caalen  */
UPDATE `creature_template` SET `ArmorModifier` = 0.510883 WHERE `entry`=22862;

/*  Seasoned Magister  */
UPDATE `creature_template` SET `ArmorModifier` = 0.63416 WHERE `entry`=22863;

/*  Fyra Dawnstar  */
UPDATE `creature_template` SET `HealthModifier` = 1.3, `ArmorModifier` = 0.767168 WHERE `entry`=22864;

/*  Illidari Boneslicer  */
UPDATE `creature_template` SET `DamageModifier` = 14.1752, `HealthModifier` = 30.0 WHERE `entry`=22869;

/*  Teron Gorefiend  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 129.025, `HealthModifier` = 815.0 WHERE `entry`=22871;

/*  Outland Children's Week Caverns of Time Trigger  */
UPDATE `creature_template` SET `HealthModifier` = 0.2 WHERE `entry`=22872;

/*  Coilskar General  */
UPDATE `creature_template` SET `DamageModifier` = 32.5395, `HealthModifier` = 40.0 WHERE `entry`=22873;

/*  Coilskar Harpooner  */
UPDATE `creature_template` SET `DamageModifier` = 17.6926, `HealthModifier` = 30.0 WHERE `entry`=22874;

/*  Coilskar Sea-Caller  */
UPDATE `creature_template` SET `DamageModifier` = 14.1634, `HealthModifier` = 30.0 WHERE `entry`=22875;

/*  Coilskar Soothsayer  */
UPDATE `creature_template` SET `DamageModifier` = 14.1634, `HealthModifier` = 30.0 WHERE `entry`=22876;

/*  Coilskar Wrangler  */
UPDATE `creature_template` SET `DamageModifier` = 29.9557, `HealthModifier` = 30.0 WHERE `entry`=22877;

/*  Aqueous Lord  */
UPDATE `creature_template` SET `DamageModifier` = 24.7946, `HealthModifier` = 60.0 WHERE `entry`=22878;

/*  Shadowmoon Reaver  */
UPDATE `creature_template` SET `DamageModifier` = 22.6235, `HealthModifier` = 30.0 WHERE `entry`=22879;

/*  Shadowmoon Champion  */
UPDATE `creature_template` SET `DamageModifier` = 26.1085, `HealthModifier` = 45.0 WHERE `entry`=22880;

/*  Aqueous Surger  */
UPDATE `creature_template` SET `DamageModifier` = 20.4997, `HealthModifier` = 15.0 WHERE `entry`=22881;

/*  Shadowmoon Deathshaper  */
UPDATE `creature_template` SET `DamageModifier` = 15.6504, `HealthModifier` = 30.0 WHERE `entry`=22882;

/*  Aqueous Spawn  */
UPDATE `creature_template` SET `maxlevel` = 70, `DamageModifier` = 11.3867, `HealthModifier` = 9.0 WHERE `entry`=22883;

/*  Leviathan  */
UPDATE `creature_template` SET `DamageModifier` = 33.1205, `HealthModifier` = 75.0 WHERE `entry`=22884;

/*  Dragon Turtle  */
UPDATE `creature_template` SET `DamageModifier` = 22.5839, `HealthModifier` = 15.0, `ArmorModifier` = 2.00283 WHERE `entry`=22885;

/*  Black Temple Captive  */
UPDATE `creature_template` SET `DamageModifier` = 4.96251, `HealthModifier` = 1.2 WHERE `entry`=22886;

/*  High Warlord Naj'entus  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 67.83, `HealthModifier` = 500.0 WHERE `entry`=22887;

/*  Manifest Nightmare  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=22889;

/*  First Fragment Guardian  */
UPDATE `creature_template` SET `DamageModifier` = 2.92147 WHERE `entry`=22890;

/*  Second Fragment Guardian  */
UPDATE `creature_template` SET `DamageModifier` = 2.70683 WHERE `entry`=22891;

/*  Third Fragment Guardian  */
UPDATE `creature_template` SET `DamageModifier` = 2.70683 WHERE `entry`=22892;

/*  Wodin the Troll-Servant  */
UPDATE `creature_template` SET `HealthModifier` = 0.9 WHERE `entry`=22893;

/*  Supremus  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 97.63, `HealthModifier` = 600.0 WHERE `entry`=22898;

/*  Protectorate Advisor Rahim  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=22899;

/*  Phantasmal Lash  */
UPDATE `creature_template` SET `DamageModifier` = 0.193807, `HealthModifier` = 0.7 WHERE `entry`=22902;

/*  Outland Children's Week Exodar 02 Trigger  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=22905;

/*  Skulloc Soulgrinder  */
UPDATE `creature_template` SET `DamageModifier` = 9.91325 WHERE `entry`=22910;

/*  Vim'gol the Vile  */
UPDATE `creature_template` SET `DamageModifier` = 10.4262, `ArmorModifier` = 0.63416 WHERE `entry`=22911;

/*  Clintar Dreamwalker's Spirit  */
UPDATE `creature_template` SET `HealthModifier` = 1.2 WHERE `entry`=22916;

/*  Illidan Stormrage  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 130.0, `HealthModifier` = 800.0, `unit_class` = 1 WHERE `entry`=22917;

/*  Thuk the Defiant  */
UPDATE `creature_template` SET `DamageModifier` = 5.22339 WHERE `entry`=22920;

/*  Innkeeper Aelerya  */
UPDATE `creature_template` SET `DamageModifier` = 3.31058, `HealthModifier` = 2.3 WHERE `entry`=22922;

/*  Arthorn Windsong  */
UPDATE `creature_template` SET `DamageModifier` = 0.326577 WHERE `entry`=22924;

/*  Greater Shadowfiend  */
UPDATE `creature_template` SET `DamageModifier` = 0.162648, `HealthModifier` = 0.5, `ArmorModifier` = 0.711841 WHERE `entry`=22929;

/*  Yor  */
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72, `DamageModifier` = 13.5721, `HealthModifier` = 41.4 WHERE `entry`=22930;

/*  Gorrim  */
UPDATE `creature_template` SET `DamageModifier` = 13.9777, `HealthModifier` = 0.7 WHERE `entry`=22931;

/*  Sai'kkal the Elder  */
UPDATE `creature_template` SET `HealthModifier` = 0.9 WHERE `entry`=22932;

/*  Suralais Farwind  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=22935;

/*  Auhula  */
UPDATE `creature_template` SET `DamageModifier` = 1.65634, `HealthModifier` = 0.4 WHERE `entry`=22936;

/*  Naturalist Bite (1)  */
UPDATE `creature_template` SET `DamageModifier` = 2.5, `HealthModifier` = 2.1 WHERE `entry`=22938;

/*  Temple Concubine  */
UPDATE `creature_template` SET `DamageModifier` = 15.2755, `HealthModifier` = 4.2 WHERE `entry`=22939;

/*  Grok  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.4 WHERE `entry`=22940;

/*  Mog'dorg the Wizened  */
UPDATE `creature_template` SET `DamageModifier` = 1.70954, `HealthModifier` = 1.3, `ArmorModifier` = 0.359125 WHERE `entry`=22941;

/*  Shadowmoon Blood Mage  */
UPDATE `creature_template` SET `DamageModifier` = 15.6504, `HealthModifier` = 25.0 WHERE `entry`=22945;

/*  Shadowmoon War Hound  */
UPDATE `creature_template` SET `DamageModifier` = 6.44476, `HealthModifier` = 10.0 WHERE `entry`=22946;

/*  Mother Shahraz  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 145.17, `HealthModifier` = 750.0 WHERE `entry`=22947;

/*  Gurtogg Bloodboil  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 72.67, `HealthModifier` = 750.0 WHERE `entry`=22948;

/*  Gathios the Shatterer  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 120.97, `HealthModifier` = 287.7 WHERE `entry`=22949;

/*  High Nethermancer Zerevor  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 25.805, `HealthModifier` = 287.7 WHERE `entry`=22950;

/*  Lady Malande  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 40.32, `HealthModifier` = 287.7 WHERE `entry`=22951;

/*  Veras Darkshadow  */
UPDATE `creature_template` SET `DamageModifier` = 64.6, `HealthModifier` = 230.2 WHERE `entry`=22952;

/*  Wrathbone Flayer  */
UPDATE `creature_template` SET `DamageModifier` = 31.0148, `HealthModifier` = 50.0 WHERE `entry`=22953;

/*  Illidari Fearbringer  */
UPDATE `creature_template` SET `DamageModifier` = 26.1085, `HealthModifier` = 75.0 WHERE `entry`=22954;

/*  Charming Courtesan  */
UPDATE `creature_template` SET `DamageModifier` = 3.60482, `HealthModifier` = 4.5 WHERE `entry`=22955;

/*  Sister of Pain  */
UPDATE `creature_template` SET `DamageModifier` = 26.087, `HealthModifier` = 50.0 WHERE `entry`=22956;

/*  Priestess of Dementia  */
UPDATE `creature_template` SET `DamageModifier` = 22.6081, `HealthModifier` = 90.0 WHERE `entry`=22957;

/*  Spellbound Attendant  */
UPDATE `creature_template` SET `DamageModifier` = 23.4313, `HealthModifier` = 30.0 WHERE `entry`=22959;

/*  Dragonmaw Wyrmcaller  */
UPDATE `creature_template` SET `DamageModifier` = 24.7696, `HealthModifier` = 35.0 WHERE `entry`=22960;

/*  Priestess of Delight  */
UPDATE `creature_template` SET `DamageModifier` = 32.2429, `HealthModifier` = 90.0 WHERE `entry`=22962;

/*  Bonechewer Worker  */
UPDATE `creature_template` SET `DamageModifier` = 3.60482, `HealthModifier` = 4.5 WHERE `entry`=22963;

/*  Sister of Pleasure  */
UPDATE `creature_template` SET `DamageModifier` = 26.087, `HealthModifier` = 50.0 WHERE `entry`=22964;

/*  Enslaved Servant  */
UPDATE `creature_template` SET `DamageModifier` = 23.457, `HealthModifier` = 25.0 WHERE `entry`=22965;

/*  Lightsworn Elekk Rider  */
UPDATE `creature_template` SET `HealthModifier` = 0.2 WHERE `entry`=22966;

/*  Cenarion Sparrowhawk  */
UPDATE `creature_template` SET `DamageModifier` = 208.285, `HealthModifier` = 103.7 WHERE `entry`=22972;

/*  Wild Sparrowhawk  */
UPDATE `creature_template` SET `DamageModifier` = 1.76365 WHERE `entry`=22979;

/*  Skyguard Scout  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=22980;

/*  Watcher Elaira  */
UPDATE `creature_template` SET `DamageModifier` = 0.326577 WHERE `entry`=22981;

/*  Skyguard Navigator  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=22982;

/*  Illidari Shadowlord  */
UPDATE `creature_template` SET `DamageModifier` = 8.84629 WHERE `entry`=22988;

/*  Akama  */
UPDATE `creature_template` SET `rank` = 3, `DamageModifier` = 50.1407, `HealthModifier` = 355.8, `ManaModifier` = 100.0 WHERE `entry`=22990;

/*  Monstrous Kaliri Egg Trigger  */
UPDATE `creature_template` SET `DamageModifier` = 3.36885, `HealthModifier` = 2.3 WHERE `entry`=22991;

/*  Guardian of the Hawk  */
UPDATE `creature_template` SET `DamageModifier` = 3.8781, `ArmorModifier` = 2.99359 WHERE `entry`=22992;

/*  Guardian of the Eagle  */
UPDATE `creature_template` SET `DamageModifier` = 1.45637, `ArmorModifier` = 0.415584 WHERE `entry`=22993;

/*  Guardian of the Falcon  */
UPDATE `creature_template` SET `ArmorModifier` = 0.633658 WHERE `entry`=22994;

/*  Chort  */
UPDATE `creature_template` SET `DamageModifier` = 2.70567, `ArmorModifier` = 0.746339 WHERE `entry`=22995;

/*  Flame of Azzinoth  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `rank` = 1, `DamageModifier` = 27.0467, `HealthModifier` = 150.0 WHERE `entry`=22997;

/*  Rizzle Sprysprocket  */
UPDATE `creature_template` SET `DamageModifier` = 4.25521, `HealthModifier` = 1.6 WHERE `entry`=23002;

/*  Paulsta'ats  */
UPDATE `creature_template` SET `DamageModifier` = 2.92033, `HealthModifier` = 1.6 WHERE `entry`=23007;

/*  Ethereum Jailor  */
UPDATE `creature_template` SET `DamageModifier` = 1.76755, `HealthModifier` = 1.9 WHERE `entry`=23008;

/*  Skyguard Handler  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=23016;

/*  Shadowmoon Houndmaster  */
UPDATE `creature_template` SET `DamageModifier` = 26.5482, `HealthModifier` = 35.0 WHERE `entry`=23018;

/*  Gordunni Soulreaper  */
UPDATE `creature_template` SET `DamageModifier` = 3.50791 WHERE `entry`=23022;

/*  Bonechewer Taskmaster  */
UPDATE `creature_template` SET `DamageModifier` = 21.2311, `HealthModifier` = 30.0 WHERE `entry`=23028;

/*  Talonsworn Forest-Rager  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=23029;

/*  Dragonmaw Sky Stalker  */
UPDATE `creature_template` SET `DamageModifier` = 14.1634, `HealthModifier` = 35.0 WHERE `entry`=23030;

/*  Armored Nether Drake  */
UPDATE `creature_template` SET `HealthModifier` = 10.0 WHERE `entry`=23031;

/*  Anzu  */
UPDATE `creature_template` SET `DamageModifier` = 19.0304 WHERE `entry`=23035;

/*  Captive Sparrowhawk  */
UPDATE `creature_template` SET `DamageModifier` = 1.76365 WHERE `entry`=23036;

/*  Sky Commander Adaris  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=23038;

/*  Severin  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=23042;

/*  Shadowmoon Soldier  */
UPDATE `creature_template` SET `DamageModifier` = 4.35002, `HealthModifier` = 5.0 WHERE `entry`=23047;

/*  Sky Sergeant Doryn  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.6 WHERE `entry`=23048;

/*  Shadowmoon Weapon Master  */
UPDATE `creature_template` SET `DamageModifier` = 34.817, `HealthModifier` = 50.0 WHERE `entry`=23049;

/*  Little Noah  */
UPDATE `creature_template` SET `DamageModifier` = 5.16693, `HealthModifier` = 0.5 WHERE `entry`=23050;

/*  Bladespire Supplicant  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=23053;

/*  Felguard Degrader  */
UPDATE `creature_template` SET `DamageModifier` = 5.87381 WHERE `entry`=23055;

/*  Rivendark  */
UPDATE `creature_template` SET `DamageModifier` = 5.22339 WHERE `entry`=23061;

/*  Eebee Jinglepocket  */
UPDATE `creature_template` SET `HealthModifier` = 11.5 WHERE `entry`=23064;

/*  Olnayvi Copperpinch  */
UPDATE `creature_template` SET `HealthModifier` = 8.0 WHERE `entry`=23065;

/*  Talonpriest Ishaal  */
UPDATE `creature_template` SET `DamageModifier` = 5.09181, `HealthModifier` = 1.0 WHERE `entry`=23066;

/*  Talonpriest Skizzik  */
UPDATE `creature_template` SET `DamageModifier` = 5.09181, `ArmorModifier` = 1.20461 WHERE `entry`=23067;

/*  Talonpriest Zellek  */
UPDATE `creature_template` SET `DamageModifier` = 5.09181, `ArmorModifier` = 1.24004 WHERE `entry`=23068;

/*  Demon Fire  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70 WHERE `entry`=23069;

/*  Legion Flak Cannon  */
UPDATE `creature_template` SET `DamageModifier` = 2.61214 WHERE `entry`=23076;

/*  Peacekeeper Jadaar  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=23079;

/*  Coilskar Geyser  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70 WHERE `entry`=23080;

/*  Legion Flak Cannon  */
UPDATE `creature_template` SET `minlevel` = 71, `maxlevel` = 72, `DamageModifier` = 2.61214, `HealthModifier` = 3.0 WHERE `entry`=23082;

/*  Supremus Volcano  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70 WHERE `entry`=23085;

/*  Akama  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 28.4146, `HealthModifier` = 62.5 WHERE `entry`=23089;

/*  Troll Roof Stalker  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.6 WHERE `entry`=23090;

/*  Sar'this  */
UPDATE `creature_template` SET `HealthModifier` = 1.7 WHERE `entry`=23093;

/*  Terokkar Trigger  */
UPDATE `creature_template` SET `HealthModifier` = 0.3 WHERE `entry`=23102;

/*  Vengeful Spirit  */
UPDATE `creature_template` SET `HealthModifier` = 2862.9 WHERE `entry`=23109;

/*  Ogri'la Keg King  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=23110;

/*  Shadowy Construct  */
UPDATE `creature_template` SET `DamageModifier` = 1.53387, `HealthModifier` = 8.6 WHERE `entry`=23111;

/*  Mingo  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.1 WHERE `entry`=23112;

/*  Doomguard Punisher  */
UPDATE `creature_template` SET `DamageModifier` = 5.74775 WHERE `entry`=23113;

/*  Ogri'la Peacekeeper  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.0 WHERE `entry`=23115;

/*  Sky Sergeant Vanderlip  */
UPDATE `creature_template` SET `DamageModifier` = 1.44364, `HealthModifier` = 0.9 WHERE `entry`=23120;

/*  Doom Blossom  */
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72 WHERE `entry`=23123;

/*  Farseer Javad  */
UPDATE `creature_template` SET `DamageModifier` = 3.68181, `HealthModifier` = 2.6 WHERE `entry`=23127;

/*  Master Pyreanor  */
UPDATE `creature_template` SET `DamageModifier` = 1.51582, `HealthModifier` = 0.7 WHERE `entry`=23128;

/*  Brood of Anzu  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=23132;

/*  Hawk Spirit  */
UPDATE `creature_template` SET `DamageModifier` = 4.15047 WHERE `entry`=23134;

/*  Eagle Spirit  */
UPDATE `creature_template` SET `DamageModifier` = 4.15047 WHERE `entry`=23136;

/*  Overlord Mor'ghor  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 21.255, `HealthModifier` = 1.5 WHERE `entry`=23139;

/*  Taskmaster Varkule Dragonbreath  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 2.20019, `HealthModifier` = 1.0 WHERE `entry`=23140;

/*  Yarzill the Merc  */
UPDATE `creature_template` SET `DamageModifier` = 3.83467, `HealthModifier` = 0.8 WHERE `entry`=23141;

/*  Rumpus  */
UPDATE `creature_template` SET `minlevel` = 68, `maxlevel` = 68, `DamageModifier` = 0.429827, `HealthModifier` = 0.8 WHERE `entry`=23145;

/*  Dragonmaw Enforcer  */
UPDATE `creature_template` SET `DamageModifier` = 6.97442 WHERE `entry`=23146;

/*  Shadowmoon Grunt  */
UPDATE `creature_template` SET `DamageModifier` = 3.48506, `HealthModifier` = 4.5 WHERE `entry`=23147;

/*  Mistress of the Mines  */
UPDATE `creature_template` SET `DamageModifier` = 2.45992, `HealthModifier` = 0.8 WHERE `entry`=23149;

/*  The Rulkster  */
UPDATE `creature_template` SET `DamageModifier` = 2.8151, `HealthModifier` = 14.3 WHERE `entry`=23151;

/*  Seer Kanai  */
UPDATE `creature_template` SET `DamageModifier` = 3.10383, `HealthModifier` = 2.2 WHERE `entry`=23158;

/*  Okuno  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 2.2 WHERE `entry`=23159;

/*  Darkscreecher Akkarai  */
UPDATE `creature_template` SET `DamageModifier` = 3.47886 WHERE `entry`=23161;

/*  Vakkiz the Windrager  */
UPDATE `creature_template` SET `DamageModifier` = 4.68593 WHERE `entry`=23162;

/*  Gezzarak the Huntress  */
UPDATE `creature_template` SET `DamageModifier` = 4.35002 WHERE `entry`=23163;

/*  Toranaku  */
UPDATE `creature_template` SET `DamageModifier` = 3.79513, `HealthModifier` = 1.5 WHERE `entry`=23164;

/*  Karrog  */
UPDATE `creature_template` SET `DamageModifier` = 6.96171 WHERE `entry`=23165;

/*  Ronag the Slave Driver  */
UPDATE `creature_template` SET `DamageModifier` = 1.24512 WHERE `entry`=23166;

/*  Or'kaos the Insane  */
UPDATE `creature_template` SET `DamageModifier` = 6.96171 WHERE `entry`=23168;

/*  Hand of Gorefiend  */
UPDATE `creature_template` SET `DamageModifier` = 26.1001, `HealthModifier` = 35.4 WHERE `entry`=23172;

/*  Felhound Defender  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=23173;

/*  Tarren Mill Guardsman  */
UPDATE `creature_template` SET `DamageModifier` = 1.74139, `HealthModifier` = 0.7 WHERE `entry`=23175;

/*  Tarren Mill Guardsman  */
UPDATE `creature_template` SET `DamageModifier` = 1.74139, `HealthModifier` = 0.7 WHERE `entry`=23176;

/*  Tarren Mill Lookout  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 2.0, `HealthModifier` = 0.9 WHERE `entry`=23177;

/*  Tarren Mill Lookout  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 2.0, `HealthModifier` = 0.9 WHERE `entry`=23178;

/*  Tarren Mill Protector  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 2.0, `HealthModifier` = 0.9, `ManaModifier` = 0.9 WHERE `entry`=23179;

/*  Tarren Mill Protector  */
UPDATE `creature_template` SET `minlevel` = 68, `maxlevel` = 68, `HealthModifier` = 0.2 WHERE `entry`=23180;

/*  Tarren Mill Lookout (1)  */
UPDATE `creature_template` SET `DamageModifier` = 2.26755, `HealthModifier` = 2.6 WHERE `entry`=23184;

/*  Akama  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `rank` = 1, `DamageModifier` = 66.3937, `ManaModifier` = 179.2 WHERE `entry`=23191;

/*  Ember of Azzinoth  */
UPDATE `creature_template` SET `DamageModifier` = 0.379791 WHERE `entry`=23192;

/*  Bonechewer Behemoth  */
UPDATE `creature_template` SET `DamageModifier` = 26.1085, `HealthModifier` = 90.0 WHERE `entry`=23196;

/*  Maiev Shadowsong  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 48.6136, `HealthModifier` = 142.1 WHERE `entry`=23197;

/*  Vakkiz the Windrager  */
UPDATE `creature_template` SET `DamageModifier` = 1.78032, `HealthModifier` = 1.3 WHERE `entry`=23204;

/*  Akkarai Hatchling  */
UPDATE `creature_template` SET `DamageModifier` = 0.16241 WHERE `entry`=23206;

/*  Skyguard Pyrotechnician  */
UPDATE `creature_template` SET `DamageModifier` = 2.25569 WHERE `entry`=23208;

/*  Ashtongue Sorcerer  */
UPDATE `creature_template` SET `DamageModifier` = 27.1636, `HealthModifier` = 20.0, `ArmorModifier` = 0.633658 WHERE `entry`=23215;

/*  Ashtongue Defender  */
UPDATE `creature_template` SET `DamageModifier` = 34.817, `HealthModifier` = 10.7 WHERE `entry`=23216;

/*  Shivan Assassin  */
UPDATE `creature_template` SET `DamageModifier` = 6.95773 WHERE `entry`=23220;

/*  Bonechewer Brawler  */
UPDATE `creature_template` SET `DamageModifier` = 35.4468, `HealthModifier` = 55.0 WHERE `entry`=23222;

/*  Bonechewer Spectator  */
UPDATE `creature_template` SET `DamageModifier` = 3.54381, `HealthModifier` = 4.5 WHERE `entry`=23223;

/*  Illidari Elite  */
UPDATE `creature_template` SET `DamageModifier` = 4.51138, `HealthModifier` = 3.1 WHERE `entry`=23226;

/*  Shartuul  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `rank` = 3, `DamageModifier` = 42.6857 WHERE `entry`=23230;

/*  Mutant War Hound  */
UPDATE `creature_template` SET `DamageModifier` = 10.0189, `HealthModifier` = 20.0 WHERE `entry`=23232;

/*  Chu'a'lor  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=23233;

/*  Bonechewer Blade Fury  */
UPDATE `creature_template` SET `DamageModifier` = 20.8851, `HealthModifier` = 30.0 WHERE `entry`=23235;

/*  Bonechewer Shield Disciple  */
UPDATE `creature_template` SET `DamageModifier` = 21.9507, `HealthModifier` = 30.0 WHERE `entry`=23236;

/*  Bonechewer Blood Prophet  */
UPDATE `creature_template` SET `DamageModifier` = 15.9233, `HealthModifier` = 30.0 WHERE `entry`=23237;

/*  Bonechewer Combatant  */
UPDATE `creature_template` SET `DamageModifier` = 35.4468, `HealthModifier` = 55.0 WHERE `entry`=23239;

/*  Aether-tech Assistant  */
UPDATE `creature_template` SET `DamageModifier` = 3.16187, `HealthModifier` = 2.3 WHERE `entry`=23243;

/*  Aether-tech Adept  */
UPDATE `creature_template` SET `DamageModifier` = 3.16187, `HealthModifier` = 1.8 WHERE `entry`=23244;

/*  Aether-tech Master  */
UPDATE `creature_template` SET `DamageModifier` = 3.16187, `HealthModifier` = 2.0 WHERE `entry`=23245;

/*  Bash'ir Subprimal  */
UPDATE `creature_template` SET `DamageModifier` = 3.32454 WHERE `entry`=23247;

/*  Bash'ir Flesh Fiend  */
UPDATE `creature_template` SET `DamageModifier` = 5.04845 WHERE `entry`=23249;

/*  Kronk  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.9 WHERE `entry`=23253;

/*  Ogri'la Storyteller  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.9 WHERE `entry`=23256;

/*  Skyguard Windcharger  */
UPDATE `creature_template` SET `DamageModifier` = 1.79367, `HealthModifier` = 1.3 WHERE `entry`=23257;

/*  Blaze  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70 WHERE `entry`=23259;

/*  Furywing  */
UPDATE `creature_template` SET `DamageModifier` = 5.22339 WHERE `entry`=23261;

/*  Brendan Turner  */
UPDATE `creature_template` SET `DamageModifier` = 3.42754, `HealthModifier` = 2.1 WHERE `entry`=23263;

/*  Arvoar the Rapacious  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=23267;

/*  Seer Jovar  */
UPDATE `creature_template` SET `DamageModifier` = 2.68756, `HealthModifier` = 1.4 WHERE `entry`=23268;

/*  Barash the Den Mother  */
UPDATE `creature_template` SET `DamageModifier` = 1.74673 WHERE `entry`=23269;

/*  Vindicator Aeus  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.7 WHERE `entry`=23270;

/*  Vindicator Kaan  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.7 WHERE `entry`=23271;

/*  Arcanist Savan  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.7 WHERE `entry`=23272;

/*  Arcanist Raestan  */
UPDATE `creature_template` SET `DamageModifier` = 2.6497, `HealthModifier` = 1.7 WHERE `entry`=23273;

/*  Portable Fel Cannon  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=23278;

/*  Agadai  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.7, `ArmorModifier` = 0.720535 WHERE `entry`=23280;

/*  Insidion  */
UPDATE `creature_template` SET `DamageModifier` = 5.22339 WHERE `entry`=23281;

/*  Obsidia  */
UPDATE `creature_template` SET `minlevel` = 72, `DamageModifier` = 6.58382 WHERE `entry`=23282;

/*  Lady Sinestra  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 5.9767 WHERE `entry`=23283;

/*  Black Blood of Draenor  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=23286;

/*  Chief Overseer Mudlump  */
UPDATE `creature_template` SET `HealthModifier` = 0.9 WHERE `entry`=23291;

/*  Gahk  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 4.7 WHERE `entry`=23300;

/*  Crazed Murkblood Foreman  */
UPDATE `creature_template` SET `DamageModifier` = 2.438 WHERE `entry`=23305;

/*  Hazzik  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=23306;

/*  Disobedient Dragonmaw Peon  */
UPDATE `creature_template` SET `DamageModifier` = 0.429827, `HealthModifier` = 0.5 WHERE `entry`=23311;

/*  Torkus  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=23316;

/*  Ashtongue Rogue  */
UPDATE `creature_template` SET `DamageModifier` = 25.5293, `HealthModifier` = 3.9 WHERE `entry`=23318;

/*  Ashtongue Broken  */
UPDATE `creature_template` SET `DamageModifier` = 5.30778, `HealthModifier` = 7.0 WHERE `entry`=23319;

/*  Netherwing Ally  */
UPDATE `creature_template` SET `DamageModifier` = 1.6241, `HealthModifier` = 0.9 WHERE `entry`=23320;

/*  Nethermine Ravager  */
UPDATE `creature_template` SET `DamageModifier` = 1.23331, `HealthModifier` = 0.8 WHERE `entry`=23326;

/*  Dragonmaw Wind Reaver  */
UPDATE `creature_template` SET `DamageModifier` = 12.3848, `HealthModifier` = 35.0 WHERE `entry`=23330;

/*  Bash'ir Reckoner  */
UPDATE `creature_template` SET `DamageModifier` = 6.52503, `HealthModifier` = 5.0 WHERE `entry`=23332;

/*  The Grand Collector  */
UPDATE `creature_template` SET `DamageModifier` = 10.4276 WHERE `entry`=23333;

/*  Sky Commander Keller  */
UPDATE `creature_template` SET `DamageModifier` = 2.0 WHERE `entry`=23334;

/*  Skyguard Khatie  */
UPDATE `creature_template` SET `HealthModifier` = 1.6 WHERE `entry`=23335;

/*  Flame Crash  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70 WHERE `entry`=23336;

/*  Illidari Centurion  */
UPDATE `creature_template` SET `DamageModifier` = 25.6978, `HealthModifier` = 40.0 WHERE `entry`=23337;

/*  Arthorn's Sparrowhawk  */
UPDATE `creature_template` SET `HealthModifier` = 107.4 WHERE `entry`=23338;

/*  Illidari Heartseeker  */
UPDATE `creature_template` SET `DamageModifier` = 15.9515, `HealthModifier` = 30.0 WHERE `entry`=23339;

/*  Murg "Oldie" Muckjaw  */
UPDATE `creature_template` SET `HealthModifier` = 1.2 WHERE `entry`=23340;

/*  Trope the Filth-Belcher  */
UPDATE `creature_template` SET `DamageModifier` = 1.42559 WHERE `entry`=23342;

/*  Wrangled Aether Ray  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=23343;

/*  Tork  */
UPDATE `creature_template` SET `DamageModifier` = 2.41975, `HealthModifier` = 1.3 WHERE `entry`=23347;

/*  Braxxus  */
UPDATE `creature_template` SET `DamageModifier` = 5.21378 WHERE `entry`=23353;

/*  Mo'arg Incinerator  */
UPDATE `creature_template` SET `DamageModifier` = 5.21378 WHERE `entry`=23354;

/*  Zarcsin  */
UPDATE `creature_template` SET `DamageModifier` = 5.22282 WHERE `entry`=23355;

/*  Torki  */
UPDATE `creature_template` SET `DamageModifier` = 2.41975, `HealthModifier` = 1.5 WHERE `entry`=23362;

/*  Sahaak  */
UPDATE `creature_template` SET `DamageModifier` = 1.24514, `HealthModifier` = 1.3 WHERE `entry`=23363;

/*  Torkus Jr.  */
UPDATE `creature_template` SET `DamageModifier` = 2.60425, `HealthModifier` = 1.3 WHERE `entry`=23365;

/*  Grella  */
UPDATE `creature_template` SET `DamageModifier` = 1.24514, `HealthModifier` = 0.9 WHERE `entry`=23367;

/*  Bash'ir Controller  */
UPDATE `creature_template` SET `DamageModifier` = 4.14289, `HealthModifier` = 5.0 WHERE `entry`=23368;

/*  Whirling Blade  */
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72, `DamageModifier` = 24.7122 WHERE `entry`=23369;

/*  Dragonmaw Tower Controller  */
UPDATE `creature_template` SET `DamageModifier` = 7.71376 WHERE `entry`=23370;

/*  Shadowmoon Fallen  */
UPDATE `creature_template` SET `minlevel` = 71, `maxlevel` = 71, `DamageModifier` = 13.2958, `HealthModifier` = 15.0 WHERE `entry`=23371;

/*  Mortog Steamhead  */
UPDATE `creature_template` SET `DamageModifier` = 2.70683, `HealthModifier` = 1.4 WHERE `entry`=23373;

/*  Ashtongue Stalker  */
UPDATE `creature_template` SET `DamageModifier` = 23.0391, `HealthModifier` = 30.0 WHERE `entry`=23374;

/*  Shadow Demon  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 3.1 WHERE `entry`=23375;

/*  Simon Game Bunny Large  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=23378;

/*  Bronco  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.8 WHERE `entry`=23380;

/*  Tydormu  */
UPDATE `creature_template` SET `DamageModifier` = 2.24764, `HealthModifier` = 2.3 WHERE `entry`=23381;

/*  Skyguard Prisoner  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=23383;

/*  Gan'arg Analyzer  */
UPDATE `creature_template` SET `DamageModifier` = 1.52672, `HealthModifier` = 1.7 WHERE `entry`=23386;

/*  Fallen Ally  */
UPDATE `creature_template` SET `DamageModifier` = 26.6204, `HealthModifier` = 19.5 WHERE `entry`=23389;

/*  Bash'ir's Harbinger  */
UPDATE `creature_template` SET `DamageModifier` = 4.84549, `HealthModifier` = 16.0 WHERE `entry`=23390;

/*  Bash'ir  */
UPDATE `creature_template` SET `DamageModifier` = 4.84549, `HealthModifier` = 16.0 WHERE `entry`=23391;

/*  Skyguard Stable Master  */
UPDATE `creature_template` SET `DamageModifier` = 3.37487, `HealthModifier` = 1.6 WHERE `entry`=23392;

/*  Deathshadow Agent  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=23393;

/*  Promenade Sentinel  */
UPDATE `creature_template` SET `DamageModifier` = 27.8469, `HealthModifier` = 90.0 WHERE `entry`=23394;

/*  Krixel Pinchwhistle  */
UPDATE `creature_template` SET `subname` = 'Arena Vendor', `DamageModifier` = 2.70683, `HealthModifier` = 1.6 WHERE `entry`=23396;

/*  Illidari Blood Lord  */
UPDATE `creature_template` SET `DamageModifier` = 25.2105, `HealthModifier` = 40.0 WHERE `entry`=23397;

/*  Angered Soul Fragment  */
UPDATE `creature_template` SET `DamageModifier` = 2.28693, `HealthModifier` = 10.8 WHERE `entry`=23398;

/*  Suffering Soul Fragment  */
UPDATE `creature_template` SET `DamageModifier` = 14.051, `HealthModifier` = 11.9 WHERE `entry`=23399;

/*  Illidari Archon  */
UPDATE `creature_template` SET `DamageModifier` = 17.3943, `HealthModifier` = 30.0 WHERE `entry`=23400;

/*  Hungering Soul Fragment  */
UPDATE `creature_template` SET `DamageModifier` = 8.19618, `HealthModifier` = 5.7 WHERE `entry`=23401;

/*  Illidari Battle-mage  */
UPDATE `creature_template` SET `DamageModifier` = 17.3943, `HealthModifier` = 30.0 WHERE `entry`=23402;

/*  Illidari Assassin  */
UPDATE `creature_template` SET `DamageModifier` = 21.7585, `HealthModifier` = 25.0 WHERE `entry`=23403;

/*  Imp Retainer  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=23404;

/*  Jimmy McWeaksauce  */
UPDATE `creature_template` SET `DamageModifier` = 17.2563, `HealthModifier` = 1.5 WHERE `entry`=23406;

/*  Johnny McWeaksauce  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.9 WHERE `entry`=23407;

/*  Spirit of Udalo  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 1.3 WHERE `entry`=23410;

/*  Spirit of Olum  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 1.3 WHERE `entry`=23411;

/*  Skyguard Handler Irena  */
UPDATE `creature_template` SET `DamageModifier` = 1.6241, `HealthModifier` = 1.4 WHERE `entry`=23413;

/*  Bash'ir Inquisitor  */
UPDATE `creature_template` SET `DamageModifier` = 6.08124, `HealthModifier` = 15.0 WHERE `entry`=23414;

/*  Skyguard Handler Deesak  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=23415;

/*  Essence of Suffering  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 6.46, `HealthModifier` = 300.0 WHERE `entry`=23418;

/*  Essence of Desire  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 72.67, `HealthModifier` = 400.0 WHERE `entry`=23419;

/*  Essence of Anger  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 88.825, `HealthModifier` = 400.0 WHERE `entry`=23420;

/*  Ashtongue Channeler  */
UPDATE `creature_template` SET `DamageModifier` = 12.121, `HealthModifier` = 25.0, `ArmorModifier` = 0.633658 WHERE `entry`=23421;

/*  The Illidari Council  */
UPDATE `creature_template` SET `rank` = 3 WHERE `entry`=23426;

/*  Jho'nass  */
UPDATE `creature_template` SET `DamageModifier` = 2.55656, `HealthModifier` = 0.2 WHERE `entry`=23428;

/*  Arcane Charge  */
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72, `HealthModifier` = 135.5 WHERE `entry`=23429;

/*  Barthamus  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 1.74354, `HealthModifier` = 1.3 WHERE `entry`=23433;

/*  Commander Hobb  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 9.9 WHERE `entry`=23434;

/*  Sanctum Defender  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=23435;

/*  Image of Dementia  */
UPDATE `creature_template` SET `DamageModifier` = 26.5701, `HealthModifier` = 6.1 WHERE `entry`=23436;

/*  Indormi  */
UPDATE `creature_template` SET `DamageModifier` = 1.74139, `HealthModifier` = 1.4 WHERE `entry`=23437;

/*  Dragonmaw Skybreaker  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.7 WHERE `entry`=23440;

/*  Dragonmaw Raid Credit Marker (Scryers)  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.7 WHERE `entry`=23443;

/*  Lieutenant Tristia  */
UPDATE `creature_template` SET `DamageModifier` = 1.53164, `HealthModifier` = 1.4 WHERE `entry`=23446;

/*  Sergeant Kien  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.4 WHERE `entry`=23447;

/*  Yuula  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=23449;

/*  Commander Arcus  */
UPDATE `creature_template` SET `DamageModifier` = 2.34029 WHERE `entry`=23452;

/*  Altar Defender  */
UPDATE `creature_template` SET `maxlevel` = 69, `DamageModifier` = 2.0, `HealthModifier` = 1.4 WHERE `entry`=23453;

/*  Dragonmaw Raid Credit Marker (Aldor)  */
UPDATE `creature_template` SET `HealthModifier` = 0.2 WHERE `entry`=23454;

/*  Purple Netherwing Drake  */
UPDATE `creature_template` SET `DamageModifier` = 1.74139, `HealthModifier` = 0.7 WHERE `entry`=23458;

/*  Cobalt Netherwing Drake  */
UPDATE `creature_template` SET `DamageModifier` = 1.74139, `HealthModifier` = 0.7 WHERE `entry`=23460;

/*  Suraku  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=23461;

/*  Jorus  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=23462;

/*  Onyxien  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=23463;

/*  Malfas  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=23464;

/*  Zoya  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=23465;

/*  Voranaku  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.3 WHERE `entry`=23466;

/*  Enslaved Soul  */
UPDATE `creature_template` SET `DamageModifier` = 0.102262, `HealthModifier` = 4.9 WHERE `entry`=23469;

/*  Aether-tech Apprentice  */
UPDATE `creature_template` SET `DamageModifier` = 2.41062, `HealthModifier` = 1.6 WHERE `entry`=23473;

/*  Shivan Assassin (Red)  */
UPDATE `creature_template` SET `DamageModifier` = 6.46625, `HealthModifier` = 72.0 WHERE `entry`=23474;

/*  Shivan Assassin (Blue)  */
UPDATE `creature_template` SET `DamageModifier` = 6.46625, `HealthModifier` = 72.0 WHERE `entry`=23475;

/*  Shivan Assassin (Black)  */
UPDATE `creature_template` SET `DamageModifier` = 6.46625, `HealthModifier` = 72.0 WHERE `entry`=23476;

/*  Keiran Donoghue  */
UPDATE `creature_template` SET `HealthModifier` = 5.8 WHERE `entry`=23481;

/*  Barleybrew Apprentice  */
UPDATE `creature_template` SET `HealthModifier` = 2.2 WHERE `entry`=23482;

/*  Arcanist Xorith  */
UPDATE `creature_template` SET `DamageModifier` = 0.189478 WHERE `entry`=23483;

/*  Haldor the Compulsive  */
UPDATE `creature_template` SET `DamageModifier` = 0.171432, `HealthModifier` = 1.3 WHERE `entry`=23484;

/*  Drake Dealer Hurlunk  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.2 WHERE `entry`=23489;

/*  Parasitic Shadowfiend  */
UPDATE `creature_template` SET `DamageModifier` = 1.53387, `HealthModifier` = 0.5 WHERE `entry`=23498;

/*  Broken Illusion  */
UPDATE `creature_template` SET `DamageModifier` = 0.442115, `HealthModifier` = 0.5 WHERE `entry`=23506;

/*  Gordok Brew Apprentice  */
UPDATE `creature_template` SET `HealthModifier` = 2.3 WHERE `entry`=23511;

/*  Anne Summers  */
UPDATE `creature_template` SET `HealthModifier` = 2.5 WHERE `entry`=23521;

/*  Arlen Lochlan  */
UPDATE `creature_template` SET `HealthModifier` = 5.1 WHERE `entry`=23522;

/*  Ashtongue Elementalist  */
UPDATE `creature_template` SET `DamageModifier` = 14.1634, `HealthModifier` = 4.0 WHERE `entry`=23523;

/*  Ashtongue Spiritbinder  */
UPDATE `creature_template` SET `DamageModifier` = 14.1634, `HealthModifier` = 4.0 WHERE `entry`=23524;

/*  Brother Cartwright  */
UPDATE `creature_template` SET `HealthModifier` = 6.4 WHERE `entry`=23525;

/*  T'chali's Voodoo Brewery Apprentice  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=23533;

/*  Babagaya Shadowcleft  */
UPDATE `creature_template` SET `HealthModifier` = 0.4 WHERE `entry`=23534;

/*  Matero Zeshuwal  */
UPDATE `creature_template` SET `subname` = 'Demon Trainer', `DamageModifier` = 8.92891, `HealthModifier` = 0.6 WHERE `entry`=23535;

/*  Nagulon  */
UPDATE `creature_template` SET `ManaModifier` = 0.8 WHERE `entry`=23536;

/*  Headless Horseman - Fire (DND)  */
UPDATE `creature_template` SET `minlevel` = 70 WHERE `entry`=23537;

/*  Amani'shi Axe Thrower  */
UPDATE `creature_template` SET `DamageModifier` = 5.00661, `HealthModifier` = 12.0, `ArmorModifier` = 0.45597 WHERE `entry`=23542;

/*  Shade of the Horseman  */
UPDATE `creature_template` SET `HealthModifier` = 55.0 WHERE `entry`=23543;

/*  Pumpkin Fiend  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 2.25569, `HealthModifier` = 0.7 WHERE `entry`=23545;

/*  Risen Spirit  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=23554;

/*  Risen Husk  */
UPDATE `creature_template` SET `HealthModifier` = 1.1 WHERE `entry`=23555;

/*  Neill Ramstein  */
UPDATE `creature_template` SET `HealthModifier` = 8.5 WHERE `entry`=23558;

/*  Budd Nedreck  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=23559;

/*  Provisioner Ameenah  */
UPDATE `creature_template` SET `DamageModifier` = 1.6241, `HealthModifier` = 1.4 WHERE `entry`=23560;

/*  Calia Hastings  */
UPDATE `creature_template` SET `minlevel` = 37, `HealthModifier` = 0.6, `ArmorModifier` = 0.140306 WHERE `entry`=23566;

/*  Inspector Tarem  */
UPDATE `creature_template` SET `HealthModifier` = 0.9 WHERE `entry`=23567;

/*  Renn McGill  */
UPDATE `creature_template` SET `HealthModifier` = 1.2 WHERE `entry`=23569;

/*  Krixil Slogswitch  */
UPDATE `creature_template` SET `HealthModifier` = 1.1 WHERE `entry`=23573;

/*  Akil'zon  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 13.6493, `HealthModifier` = 214.2 WHERE `entry`=23574;

/*  Nalorakk  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 23.8744, `HealthModifier` = 224.0 WHERE `entry`=23576;

/*  Halazzi  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 8.1095, `HealthModifier` = 79.1 WHERE `entry`=23577;

/*  Jan'alai  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 21.2874, `HealthModifier` = 131.8 WHERE `entry`=23578;

/*  Amani'shi Warbringer  */
UPDATE `creature_template` SET `DamageModifier` = 27.8629, `HealthModifier` = 15.3, `ArmorModifier` = 0.69108 WHERE `entry`=23580;

/*  Amani'shi Medicine Man  */
UPDATE `creature_template` SET `DamageModifier` = 2.34029, `HealthModifier` = 11.5, `ArmorModifier` = 0.554731, `ManaModifier` = 9.8 WHERE `entry`=23581;

/*  Amani'shi Tribesman  */
UPDATE `creature_template` SET `DamageModifier` = 7.61875, `HealthModifier` = 12.0, `ArmorModifier` = 0.600171 WHERE `entry`=23582;

/*  Amani Bear  */
UPDATE `creature_template` SET `DamageModifier` = 16.25, `HealthModifier` = 12.0 WHERE `entry`=23584;

/*  Amani'shi Scout  */
UPDATE `creature_template` SET `DamageModifier` = 1.43793, `HealthModifier` = 1.7, `ArmorModifier` = 0.261944 WHERE `entry`=23586;

/*  Amani'shi Reinforcement  */
UPDATE `creature_template` SET `DamageModifier` = 16.259, `HealthModifier` = 11.9 WHERE `entry`=23587;

/*  Defias Rummager  */
UPDATE `creature_template` SET `HealthModifier` = 1.2 WHERE `entry`=23589;

/*  Defias Conjuror  */
UPDATE `creature_template` SET `HealthModifier` = 1.1 WHERE `entry`=23590;

/*  Defias Diver  */
UPDATE `creature_template` SET `maxlevel` = 37, `HealthModifier` = 1.1 WHERE `entry`=23591;

/*  Grimtotem Breaker  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=23592;

/*  Grimtotem Spirit-Shifter  */
UPDATE `creature_template` SET `HealthModifier` = 1.1 WHERE `entry`=23593;

/*  Grimtotem Destroyer  */
UPDATE `creature_template` SET `HealthModifier` = 1.1 WHERE `entry`=23594;

/*  Grimtotem Earthbinder  */
UPDATE `creature_template` SET `HealthModifier` = 1.1 WHERE `entry`=23595;

/*  Amani'shi Flame Caster  */
UPDATE `creature_template` SET `DamageModifier` = 3.51043, `HealthModifier` = 12.0, `ArmorModifier` = 0.554731 WHERE `entry`=23596;

/*  Amani'shi Guardian  */
UPDATE `creature_template` SET `DamageModifier` = 24.5977, `HealthModifier` = 12.0 WHERE `entry`=23597;

/*  Amani Dragonhawk Hatchling  */
UPDATE `creature_template` SET `DamageModifier` = 4.06024, `HealthModifier` = 1.1 WHERE `entry`=23598;

/*  Apprentice Morlann  */
UPDATE `creature_template` SET `minlevel` = 36, `HealthModifier` = 1.1, `ArmorModifier` = 0.247423 WHERE `entry`=23600;

/*  Apprentice Garion  */
UPDATE `creature_template` SET `minlevel` = 37, `DamageModifier` = 0.414684, `HealthModifier` = 1.3, `ArmorModifier` = 0.229738 WHERE `entry`=23601;

/*  Uta Roughdough  */
UPDATE `creature_template` SET `HealthModifier` = 9.1 WHERE `entry`=23603;

/*  Agnes Farwithers  */
UPDATE `creature_template` SET `HealthModifier` = 5.0 WHERE `entry`=23604;

/*  Bron  */
UPDATE `creature_template` SET `HealthModifier` = 3.5 WHERE `entry`=23605;

/*  Suntouched Apprentice  */
UPDATE `creature_template` SET `HealthModifier` = 5.3 WHERE `entry`=23606;

/*  Dyslix Silvergrub  */
UPDATE `creature_template` SET `HealthModifier` = 0.4 WHERE `entry`=23612;

/*  Ahab Wheathoof  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `ArmorModifier` = 0.575506 WHERE `entry`=23618;

/*  Bergrisst  */
UPDATE `creature_template` SET `HealthModifier` = 2.1 WHERE `entry`=23619;

/*  Privateer  */
UPDATE `creature_template` SET `ArmorModifier` = 0.259451 WHERE `entry`=23620;

/*  Kyle the Friendly  */
UPDATE `creature_template` SET `HealthModifier` = 2.1 WHERE `entry`=23622;

/*  Chief Thunder-Skins  */
UPDATE `creature_template` SET `HealthModifier` = 3.4 WHERE `entry`=23623;

/*  Mai'Kyl  */
UPDATE `creature_template` SET `HealthModifier` = 2.2 WHERE `entry`=23624;

/*  Samuro  */
UPDATE `creature_template` SET `HealthModifier` = 1.5 WHERE `entry`=23625;

/*  Sig Nicious  */
UPDATE `creature_template` SET `HealthModifier` = 2.0 WHERE `entry`=23626;

/*  Becan Barleybrew  */
UPDATE `creature_template` SET `HealthModifier` = 2.1 WHERE `entry`=23627;

/*  Daran Thunderbrew  */
UPDATE `creature_template` SET `HealthModifier` = 2.0 WHERE `entry`=23628;

/*  Krixx  */
UPDATE `creature_template` SET `HealthModifier` = 3.1 WHERE `entry`=23635;

/*  Mudsprocket Bruiser  */
UPDATE `creature_template` SET `HealthModifier` = 1.2 WHERE `entry`=23636;

/*  Deserter Lieutenant  */
UPDATE `creature_template` SET `HealthModifier` = 1.1 WHERE `entry`=23637;

/*  Garn Mathers  */
UPDATE `creature_template` SET `HealthModifier` = 1.1 WHERE `entry`=23679;

/*  Headless Horseman  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 15.3513, `HealthModifier` = 7.5, `ArmorModifier` = 0.521765 WHERE `entry`=23682;

/*  Maeve Barleybrew  */
UPDATE `creature_template` SET `HealthModifier` = 3.0 WHERE `entry`=23683;

/*  Ita Thunderbrew  */
UPDATE `creature_template` SET `HealthModifier` = 1.7 WHERE `entry`=23684;

/*  Gordok Brew Barker  */
UPDATE `creature_template` SET `HealthModifier` = 1.1 WHERE `entry`=23685;

/*  Pulsing Pumpkin  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.4 WHERE `entry`=23694;

/*  Gordok Brew Chief  */
UPDATE `creature_template` SET `HealthModifier` = 0.6 WHERE `entry`=23696;

/*  Drunken Brewfest Reveler  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=23698;

/*  Kevin Browning  */
UPDATE `creature_template` SET `DamageModifier` = 1.63042, `HealthModifier` = 1.5 WHERE `entry`=23699;

/*  Thunderbrew Festive Keg  */
UPDATE `creature_template` SET `minlevel` = 25, `maxlevel` = 25 WHERE `entry`=23702;

/*  Cassa Crimsonwing  */
UPDATE `creature_template` SET `DamageModifier` = 1.5145, `ArmorModifier` = 0.41301 WHERE `entry`=23704;

/*  Gordok Festive Keg  */
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry`=23706;

/*  Touring Orphan  */
UPDATE `creature_template` SET `minlevel` = 3 WHERE `entry`=23712;

/*  Kraxx  */
UPDATE `creature_template` SET `HealthModifier` = 4.3 WHERE `entry`=23713;

/*  Grimtotem Elder  */
UPDATE `creature_template` SET `HealthModifier` = 1.1 WHERE `entry`=23714;

/*  Mack  */
UPDATE `creature_template` SET `HealthModifier` = 1.7 WHERE `entry`=23718;

/*  Investigator Asric  */
UPDATE `creature_template` SET `HealthModifier` = 0.9 WHERE `entry`=23719;

/*  Theramore Prisoner  */
UPDATE `creature_template` SET `HealthModifier` = 1.6 WHERE `entry`=23720;

/*  Concert Bruiser  */
UPDATE `creature_template` SET `DamageModifier` = 2.86924, `HealthModifier` = 2.8 WHERE `entry`=23721;

/*  Sergeant Lukas  */
UPDATE `creature_template` SET `maxlevel` = 34 WHERE `entry`=23723;

/*  Samir  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.6 WHERE `entry`=23724;

/*  Garg  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=23745;

/*  Kurzel  */
UPDATE `creature_template` SET `HealthModifier` = 1.2 WHERE `entry`=23748;

/*  Amani Healing Ward  */
UPDATE `creature_template` SET `HealthModifier` = 0.6 WHERE `entry`=23757;

/*  Prigmon  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.9 WHERE `entry`=23761;

/*  Brend  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=23762;

/*  Marge  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=23764;

/*  Morgom  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=23766;

/*  Amani'shi Trainer  */
UPDATE `creature_template` SET `DamageModifier` = 5.07981, `HealthModifier` = 14.3 WHERE `entry`=23774;

/*  Head of the Horseman  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.7 WHERE `entry`=23775;

/*  Stonemaul Spirit  */
UPDATE `creature_template` SET `ArmorModifier` = 0.412797 WHERE `entry`=23786;

/*  Tanzar  */
UPDATE `creature_template` SET `HealthModifier` = 1.7 WHERE `entry`=23790;

/*  Moxie Steelgrille  */
UPDATE `creature_template` SET `minlevel` = 40, `HealthModifier` = 0.8, `ArmorModifier` = 0.361197 WHERE `entry`=23797;

/*  Amani'shi Hatcher  */
UPDATE `creature_template` SET `HealthModifier` = 1.1 WHERE `entry`=23818;

/*  Amani Protective Ward  */
UPDATE `creature_template` SET `HealthModifier` = 0.2 WHERE `entry`=23822;

/*  Amani Dragonhawk  */
UPDATE `creature_template` SET `DamageModifier` = 9.02275, `HealthModifier` = 3.0, `ArmorModifier` = 0.275934 WHERE `entry`=23834;

/*  Sergeant Amelyn  */
UPDATE `creature_template` SET `minlevel` = 54, `maxlevel` = 56, `HealthModifier` = 1.8 WHERE `entry`=23835;

/*  Mordant Grimsby  */
UPDATE `creature_template` SET `HealthModifier` = 0.8, `ArmorModifier` = 0.203069 WHERE `entry`=23843;

/*  Donna Brascoe  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=23858;

/*  Restless Apparition  */
UPDATE `creature_template` SET `maxlevel` = 36 WHERE `entry`=23861;

/*  Zul'jin  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 16.219, `HealthModifier` = 210.9 WHERE `entry`=23863;

/*  Zelfrax  */
UPDATE `creature_template` SET `HealthModifier` = 1.0, `ArmorModifier` = 0.261168 WHERE `entry`=23864;

/*  Goreclaw the Ravenous  */
UPDATE `creature_template` SET `ArmorModifier` = 0.331858 WHERE `entry`=23873;

/*  Amani Dragonhawk Spirit  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 0.225569, `HealthModifier` = 1.9 WHERE `entry`=23879;

/*  Amani'shi Savage  */
UPDATE `creature_template` SET `DamageModifier` = 1.44364, `HealthModifier` = 0.4, `ArmorModifier` = 0.632535 WHERE `entry`=23889;

/*  Babs Fizzletorque  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=23892;

/*  Zungam  */
UPDATE `creature_template` SET `HealthModifier` = 2.4 WHERE `entry`=23897;

/*  Sir Thomas  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 4.4 WHERE `entry`=23904;

/*  Major Mills  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=23905;

/*  Fire Bomb (Zul'Aman)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70 WHERE `entry`=23920;

/*  Gavis Greyshield  */
UPDATE `creature_template` SET `minlevel` = 37, `HealthModifier` = 1.0 WHERE `entry`=23941;

/*  Andello Porter  */
UPDATE `creature_template` SET `HealthModifier` = 1.1, `ArmorModifier` = 0.356295 WHERE `entry`=23942;

/*  Apprentice Tasserel  */
UPDATE `creature_template` SET `DamageModifier` = 3.11501, `HealthModifier` = 2.2 WHERE `entry`=23948;

/*  Lieutenant Khand  */
UPDATE `creature_template` SET `ArmorModifier` = 0.392157 WHERE `entry`=23950;

/*  Axle  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=23995;

/*  Harkor  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.6 WHERE `entry`=23999;

/*  Mill Worker  */
UPDATE `creature_template` SET `maxlevel` = 32, `ArmorModifier` = 0.195081 WHERE `entry`=24005;

/*  Foreman Tionn  */
UPDATE `creature_template` SET `ArmorModifier` = 0.266864 WHERE `entry`=24006;

/*  Mill Courier  */
UPDATE `creature_template` SET `maxlevel` = 32, `ArmorModifier` = 0.195081 WHERE `entry`=24007;

/*  Invis Firework Helper  */
UPDATE `creature_template` SET `HealthModifier` = 2.0 WHERE `entry`=24025;

/*  Sundered Ghost  */
UPDATE `creature_template` SET `DamageModifier` = 2.68011, `HealthModifier` = 2.1 WHERE `entry`=24039;

/*  Amani Lynx  */
UPDATE `creature_template` SET `minlevel` = 69, `maxlevel` = 71, `DamageModifier` = 2.81429, `HealthModifier` = 7.8, `ArmorModifier` = 0.642223 WHERE `entry`=24043;

/*  Amani Crocolisk  */
UPDATE `creature_template` SET `DamageModifier` = 10.1506, `HealthModifier` = 1.4 WHERE `entry`=24047;

/*  Amani'shi Beast Tamer  */
UPDATE `creature_template` SET `DamageModifier` = 4.35357, `HealthModifier` = 12.0 WHERE `entry`=24059;

/*  Amani Lynx Cub  */
UPDATE `creature_template` SET `DamageModifier` = 5.16959, `HealthModifier` = 7.2, `ArmorModifier` = 0.275339 WHERE `entry`=24064;

/*  Amani'shi Handler  */
UPDATE `creature_template` SET `DamageModifier` = 4.35357, `HealthModifier` = 12.0, `ArmorModifier` = 0.69108 WHERE `entry`=24065;

/*  Self-Turning and Oscillating Utility Target  */
UPDATE `creature_template` SET `HealthModifier` = 2.3 WHERE `entry`=24108;

/*  Ancient Grimtotem Spirit Guide  */
UPDATE `creature_template` SET `HealthModifier` = 0.4, `ArmorModifier` = 0.137363 WHERE `entry`=24133;

/*  Feather Vortex  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70 WHERE `entry`=24136;

/*  Tamed Amani Crocolisk  */
UPDATE `creature_template` SET `DamageModifier` = 27.0683, `HealthModifier` = 1.4 WHERE `entry`=24138;

/*  Spirit of the Lynx  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `rank` = 3, `DamageModifier` = 12.5121, `HealthModifier` = 30.3 WHERE `entry`=24143;

/*  Halazzi  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 8.1095, `HealthModifier` = 31.6 WHERE `entry`=24144;

/*  Amani Eagle  */
UPDATE `creature_template` SET `DamageModifier` = 0.213047 WHERE `entry`=24159;

/*  Amani'shi Lookout  */
UPDATE `creature_template` SET `DamageModifier` = 3.38353, `HealthModifier` = 2.0 WHERE `entry`=24175;

/*  Amani'shi Wind Walker  */
UPDATE `creature_template` SET `DamageModifier` = 7.02087, `HealthModifier` = 9.9, `ArmorModifier` = 0.353932 WHERE `entry`=24179;

/*  Amani'shi Protector  */
UPDATE `creature_template` SET `DamageModifier` = 4.46676, `HealthModifier` = 9.9, `ArmorModifier` = 0.564976 WHERE `entry`=24180;

/*  Column of Fire  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70 WHERE `entry`=24187;

/*  Amani Bear Mount  */
UPDATE `creature_template` SET `DamageModifier` = 4.51138, `HealthModifier` = 6.0 WHERE `entry`=24217;

/*  Amani'shi Warrior  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 3.4 WHERE `entry`=24225;

/*  Hex Lord Malacrass  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 20.3037, `HealthModifier` = 313.0 WHERE `entry`=24239;

/*  Alyson Antille  */
UPDATE `creature_template` SET `DamageModifier` = 2.42259, `HealthModifier` = 17.4 WHERE `entry`=24240;

/*  Thurg  */
UPDATE `creature_template` SET `rank` = 1, `DamageModifier` = 4.51138, `HealthModifier` = 13.9 WHERE `entry`=24241;

/*  Slither  */
UPDATE `creature_template` SET `HealthModifier` = 13.9 WHERE `entry`=24242;

/*  Lord Raadan  */
UPDATE `creature_template` SET `DamageModifier` = 6.76706, `HealthModifier` = 13.9 WHERE `entry`=24243;

/*  Gazakroth  */
UPDATE `creature_template` SET `DamageModifier` = 0.436067, `HealthModifier` = 12.0 WHERE `entry`=24244;

/*  Fenstalker  */
UPDATE `creature_template` SET `DamageModifier` = 6.76706, `HealthModifier` = 13.9 WHERE `entry`=24245;

/*  Darkheart  */
UPDATE `creature_template` SET `DamageModifier` = 12.298, `HealthModifier` = 13.9 WHERE `entry`=24246;

/*  Koragg  */
UPDATE `creature_template` SET `DamageModifier` = 10.8273, `HealthModifier` = 13.9 WHERE `entry`=24247;

/*  Harrison Jones  */
UPDATE `creature_template` SET `DamageModifier` = 2.25569 WHERE `entry`=24358;

/*  Wind Trader Zhareem  */
UPDATE `creature_template` SET `DamageModifier` = 2.34184, `HealthModifier` = 1.5 WHERE `entry`=24369;

/*  Nether-Stalker Mah'duun  */
UPDATE `creature_template` SET `DamageModifier` = 1.69628, `HealthModifier` = 1.6 WHERE `entry`=24370;

/*  T'chali's Voodoo Brew Festive Keg  */
UPDATE `creature_template` SET `minlevel` = 25, `maxlevel` = 25 WHERE `entry`=24373;

/*  Amani'shi Berserker  */
UPDATE `creature_template` SET `HealthModifier` = 20.0 WHERE `entry`=24374;

/*  Harrison Jones  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 2.9 WHERE `entry`=24375;

/*  Leeni "Smiley" Smalls  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.6 WHERE `entry`=24392;

/*  The Rokk  */
UPDATE `creature_template` SET `HealthModifier` = 1.2 WHERE `entry`=24393;

/*  Gunter  */
UPDATE `creature_template` SET `DamageModifier` = 2.70683, `HealthModifier` = 1.6 WHERE `entry`=24408;

/*  Kyren  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.6 WHERE `entry`=24409;

/*  Warchief Kargath Bladefist Image  */
UPDATE `creature_template` SET `HealthModifier` = 20.8 WHERE `entry`=24414;

/*  Grisy Spicecrackle  */
UPDATE `creature_template` SET `DamageModifier` = 10.4833, `HealthModifier` = 1.6 WHERE `entry`=24416;

/*  Rift Lord Image  */
UPDATE `creature_template` SET `HealthModifier` = 8.1 WHERE `entry`=24429;

/*  Gargoth  */
UPDATE `creature_template` SET `DamageModifier` = 11.2695, `HealthModifier` = 1.9 WHERE `entry`=24436;

/*  Consortium Assistant  */
UPDATE `creature_template` SET `DamageModifier` = 2.29688 WHERE `entry`=24437;

/*  Harkor's Corpse  */
UPDATE `creature_template` SET `HealthModifier` = 1.2 WHERE `entry`=24443;

/*  Captain Taldar Windsinger  */
UPDATE `creature_template` SET `HealthModifier` = 2.5 WHERE `entry`=24456;

/*  Pol Amberstill  */
UPDATE `creature_template` SET `HealthModifier` = 4.1 WHERE `entry`=24468;

/*  Minor Voidwalker  */
UPDATE `creature_template` SET `DamageModifier` = 0.18614, `ArmorModifier` = 0.4596 WHERE `entry`=24476;

/*  Syndicate Thief  */
UPDATE `creature_template` SET `minlevel` = 35, `maxlevel` = 36, `DamageModifier` = 1.33711, `HealthModifier` = 1.0 WHERE `entry`=24477;

/*  Brewfest Reveler  */
UPDATE `creature_template` SET `HealthModifier` = 3.3 WHERE `entry`=24484;

/*  Drohn's Distillery Barker  */
UPDATE `creature_template` SET `HealthModifier` = 1.8 WHERE `entry`=24492;

/*  T'chali's Voodoo Brewery Barker  */
UPDATE `creature_template` SET `HealthModifier` = 3.1 WHERE `entry`=24493;

/*  Blix Fixwidget  */
UPDATE `creature_template` SET `subname` = 'Ticket Redeemer', `HealthModifier` = 2.2 WHERE `entry`=24495;

/*  Ram Master Ray  */
UPDATE `creature_template` SET `HealthModifier` = 8.9 WHERE `entry`=24497;

/*  Cort Gorestein  */
UPDATE `creature_template` SET `HealthModifier` = 2.1 WHERE `entry`=24498;

/*  Ja'ron  */
UPDATE `creature_template` SET `HealthModifier` = 3.7 WHERE `entry`=24499;

/*  Drohn's Distillery Apprentice  */
UPDATE `creature_template` SET `HealthModifier` = 1.7 WHERE `entry`=24501;

/*  Amani'shi Hatcher  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=24504;

/*  Driz Tumblequick  */
UPDATE `creature_template` SET `HealthModifier` = 0.2 WHERE `entry`=24510;

/*  Doris Volanthius  */
UPDATE `creature_template` SET `DamageModifier` = 1.59918, `HealthModifier` = 0.9, `ArmorModifier` = 0.223248 WHERE `entry`=24520;

/*  Voodoo Servant  */
UPDATE `creature_template` SET `DamageModifier` = 0.114, `HealthModifier` = 0.1 WHERE `entry`=24529;

/*  Amani Elder Lynx  */
UPDATE `creature_template` SET `DamageModifier` = 3.14203, `HealthModifier` = 7.9, `ArmorModifier` = 0.532817 WHERE `entry`=24530;

/*  Amani'shi Tempest  */
UPDATE `creature_template` SET `DamageModifier` = 4.35357, `HealthModifier` = 19.5, `ArmorModifier` = 0.370476 WHERE `entry`=24549;

/*  Sliver  */
UPDATE `creature_template` SET `DamageModifier` = 0.117296, `HealthModifier` = 1.7 WHERE `entry`=24552;

/*  Apoko  */
UPDATE `creature_template` SET `HealthModifier` = 5.2, `ManaModifier` = 3.2 WHERE `entry`=24553;

/*  Eramas Brightblaze  */
UPDATE `creature_template` SET `dmgschool` = 6, `HealthModifier` = 4.0, `ArmorModifier` = 0.766483 WHERE `entry`=24554;

/*  Garaxxas  */
UPDATE `creature_template` SET `DamageModifier` = 6.02741, `HealthModifier` = 5.2, `ArmorModifier` = 0.745379, `ManaModifier` = 4.0 WHERE `entry`=24555;

/*  Zelfan  */
UPDATE `creature_template` SET `DamageModifier` = 1.45356, `HealthModifier` = 3.9, `ArmorModifier` = 0.745379, `ManaModifier` = 4.0 WHERE `entry`=24556;

/*  Kagani Nightstrike  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 4.0, `ArmorModifier` = 0.744158 WHERE `entry`=24557;

/*  Ellrys Duskhallow  */
UPDATE `creature_template` SET `HealthModifier` = 3.9, `ArmorModifier` = 0.715564, `ManaModifier` = 6.0 WHERE `entry`=24558;

/*  Warlord Salaris  */
UPDATE `creature_template` SET `HealthModifier` = 5.2, `ArmorModifier` = 0.773925 WHERE `entry`=24559;

/*  Priestess Delrissa  */
UPDATE `creature_template` SET `DamageModifier` = 0.484518, `HealthModifier` = 5.4, `ArmorModifier` = 0.730471, `ManaModifier` = 6.0 WHERE `entry`=24560;

/*  Yazzai  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 5.2, `ArmorModifier` = 0.70811, `ManaModifier` = 6.0 WHERE `entry`=24561;

/*  Fizzle  */
UPDATE `creature_template` SET `DamageModifier` = 1.54996 WHERE `entry`=24656;

/*  Glodrak Huntsniper  */
UPDATE `creature_template` SET `HealthModifier` = 2.2 WHERE `entry`=24657;

/*  Kael'thas Sunstrider  */
UPDATE `creature_template` SET `DamageModifier` = 0.117468, `HealthModifier` = 28.8, `ArmorModifier` = 0.698152 WHERE `entry`=24664;

/*  Phoenix  */
UPDATE `creature_template` SET `HealthModifier` = 4.3 WHERE `entry`=24674;

/*  Sunblade Mage Guard  */
UPDATE `creature_template` SET `DamageModifier` = 3.63389, `HealthModifier` = 4.8, `ArmorModifier` = 0.730471 WHERE `entry`=24683;

/*  Sunblade Blood Knight  */
UPDATE `creature_template` SET `HealthModifier` = 4.8, `ArmorModifier` = 0.730471 WHERE `entry`=24684;

/*  Sunblade Magister  */
UPDATE `creature_template` SET `DamageModifier` = 0.125975, `HealthModifier` = 3.9, `ArmorModifier` = 0.730471 WHERE `entry`=24685;

/*  Sunblade Warlock  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 3.9, `ArmorModifier` = 0.730471 WHERE `entry`=24686;

/*  Sunblade Physician  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 3.9, `ArmorModifier` = 0.730471 WHERE `entry`=24687;

/*  Wretched Skulker  */
UPDATE `creature_template` SET `HealthModifier` = 3.4, `ArmorModifier` = 0.762883 WHERE `entry`=24688;

/*  Wretched Bruiser  */
UPDATE `creature_template` SET `HealthModifier` = 3.4, `ArmorModifier` = 0.755099 WHERE `entry`=24689;

/*  Wretched Husk  */
UPDATE `creature_template` SET `HealthModifier` = 3.5, `ArmorModifier` = 0.740798 WHERE `entry`=24690;

/*  Coilskar Witch  */
UPDATE `creature_template` SET `HealthModifier` = 4.0, `ArmorModifier` = 0.713572, `ManaModifier` = 8.0 WHERE `entry`=24696;

/*  Sister of Torment  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 4.0, `ArmorModifier` = 0.713572 WHERE `entry`=24697;

/*  Ethereum Smuggler  */
UPDATE `creature_template` SET `DamageModifier` = 4.35357, `HealthModifier` = 4.0, `ArmorModifier` = 0.712454 WHERE `entry`=24698;

/*  Ipfelkofer Ironkeg  */
UPDATE `creature_template` SET `HealthModifier` = 3.3 WHERE `entry`=24710;

/*  Tapper Swindlekeg  */
UPDATE `creature_template` SET `HealthModifier` = 2.2 WHERE `entry`=24711;

/*  High Explosive Sheep  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=24715;

/*  Fel Crystal  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=24722;

/*  Selin Fireheart  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 28.6, `ArmorModifier` = 0.784929 WHERE `entry`=24723;

/*  Caylee Dak  */
UPDATE `creature_template` SET `DamageModifier` = 3.39163, `HealthModifier` = 2.3 WHERE `entry`=24727;

/*  Aleanna Edune  */
UPDATE `creature_template` SET `minlevel` = 18, `maxlevel` = 18 WHERE `entry`=24734;

/*  Becanna Edune  */
UPDATE `creature_template` SET `minlevel` = 18, `maxlevel` = 18 WHERE `entry`=24735;

/*  Sulan Dunadaire  */
UPDATE `creature_template` SET `minlevel` = 20 WHERE `entry`=24736;

/*  William Dunadaire  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=24737;

/*  Goodie  */
UPDATE `creature_template` SET `maxlevel` = 6 WHERE `entry`=24740;

/*  Vexallus  */
UPDATE `creature_template` SET `HealthModifier` = 33.1, `ArmorModifier` = 0.677894 WHERE `entry`=24744;

/*  Brightscale Wyrm  */
UPDATE `creature_template` SET `DamageModifier` = 0.40687, `HealthModifier` = 1.0, `ArmorModifier` = 0.730471 WHERE `entry`=24761;

/*  Sunblade Keeper  */
UPDATE `creature_template` SET `minlevel` = 70, `HealthModifier` = 3.9, `ArmorModifier` = 0.723017 WHERE `entry`=24762;

/*  Sunblade Sentinel  */
UPDATE `creature_template` SET `DamageModifier` = 6.095, `HealthModifier` = 12.0, `ArmorModifier` = 0.726703 WHERE `entry`=24777;

/*  Field Repair Bot 110G  */
UPDATE `creature_template` SET `HealthModifier` = 3.7 WHERE `entry`=24780;

/*  Nether Energy  */
UPDATE `creature_template` SET `HealthModifier` = 1.8 WHERE `entry`=24781;

/*  Weakened Morbent Fel  */
UPDATE `creature_template` SET `DamageModifier` = 0.386103, `HealthModifier` = 0.8, `ArmorModifier` = 0.363491 WHERE `entry`=24782;

/*  Exarch Larethor  */
UPDATE `creature_template` SET `DamageModifier` = 2.5332 WHERE `entry`=24813;

/*  Sunblade Imp  */
UPDATE `creature_template` SET `HealthModifier` = 0.6 WHERE `entry`=24815;

/*  Anvilrage Taskmaster  */
UPDATE `creature_template` SET `HealthModifier` = 1.2 WHERE `entry`=24818;

/*  Anvilrage Enforcer  */
UPDATE `creature_template` SET `HealthModifier` = 1.2 WHERE `entry`=24819;

/*  Tyrith  */
UPDATE `creature_template` SET `HealthModifier` = 2.5 WHERE `entry`=24822;

/*  Kalecgos  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 1.7 WHERE `entry`=24844;

/*  Kalecgos  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 3.0 WHERE `entry`=24848;

/*  Kalecgos  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 100.0, `HealthModifier` = 475.0, `ManaModifier` = 50.0 WHERE `entry`=24850;

/*  Kael'thas Sunstrider (1)  */
UPDATE `creature_template` SET `DamageModifier` = 11.295, `mingold` = 6078, `maxgold` = 7429 WHERE `entry`=24857;

/*  Soaring Eagle  */
UPDATE `creature_template` SET `HealthModifier` = 0.2 WHERE `entry`=24858;

/*  Defias Pirate, Female  */
UPDATE `creature_template` SET `DamageModifier` = 1.0 WHERE `entry`=24860;

/*  Lakoor  */
UPDATE `creature_template` SET `HealthModifier` = 2.0 WHERE `entry`=24866;

/*  Niobe Whizzlespark  */
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry`=24868;

/*  Karrtog  */
UPDATE `creature_template` SET `HealthModifier` = 2.3 WHERE `entry`=24881;

/*  Brutallus  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 92.6925, `HealthModifier` = 1383.8 WHERE `entry`=24882;

/*  Exorcist Sullivan  */
UPDATE `creature_template` SET `DamageModifier` = 1.3975, `HealthModifier` = 0.8 WHERE `entry`=24885;

/*  Exorcist Vaisha  */
UPDATE `creature_template` SET `DamageModifier` = 1.75838, `HealthModifier` = 1.7 WHERE `entry`=24886;

/*  Kalecgos  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 8.26564, `ArmorModifier` = 0.657549 WHERE `entry`=24891;

/*  Sathrovarr the Corruptor  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 45.847, `HealthModifier` = 475.0 WHERE `entry`=24892;

/*  Madrigosa  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 78.5235 WHERE `entry`=24895;

/*  Leassian  */
UPDATE `creature_template` SET `minlevel` = 66, `HealthModifier` = 1.3 WHERE `entry`=24905;

/*  Felblood Initiate  */
UPDATE `creature_template` SET `DamageModifier` = 1.4051, `HealthModifier` = 1.9 WHERE `entry`=24918;

/*  Sky-Captain Bomblast  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=24924;

/*  Chief Officer Brassbolt  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=24926;

/*  Navigator Sparksizzle  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=24927;

/*  Crewman Crosswire  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=24929;

/*  Crewman Gazzlegear  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=24930;

/*  Crewman Fastwrench  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=24931;

/*  Snack-O-Matic IV  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=24934;

/*  Magistrix Seyla  */
UPDATE `creature_template` SET `DamageModifier` = 2.25569, `HealthModifier` = 1.6 WHERE `entry`=24937;

/*  Shattered Sun Marksman  */
UPDATE `creature_template` SET `DamageModifier` = 1.23612, `ArmorModifier` = 0.744158 WHERE `entry`=24938;

/*  Emaciated Felblood  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=24955;

/*  Wretched Devourer  */
UPDATE `creature_template` SET `HealthModifier` = 1.3, `ArmorModifier` = 0.756394 WHERE `entry`=24960;

/*  Vindicator Xayann  */
UPDATE `creature_template` SET `DamageModifier` = 1.23612, `HealthModifier` = 1.4, `ArmorModifier` = 0.744158 WHERE `entry`=24965;

/*  Wretched Fiend  */
UPDATE `creature_template` SET `HealthModifier` = 1.3, `ArmorModifier` = 0.748596 WHERE `entry`=24966;

/*  Captain Theris Dawnhearth  */
UPDATE `creature_template` SET `DamageModifier` = 1.23612, `HealthModifier` = 1.4, `ArmorModifier` = 0.744158 WHERE `entry`=24967;

/*  Erratic Sentry  */
UPDATE `creature_template` SET `HealthModifier` = 1.2, `ArmorModifier` = 0.745379 WHERE `entry`=24972;

/*  Liza Cutlerflix  */
UPDATE `creature_template` SET `minlevel` = 66, `HealthModifier` = 1.4 WHERE `entry`=24974;

/*  Mar'nah  */
UPDATE `creature_template` SET `DamageModifier` = 2.7754, `HealthModifier` = 1.6 WHERE `entry`=24975;

/*  Dawnblade Blood Knight  */
UPDATE `creature_template` SET `HealthModifier` = 1.2, `ArmorModifier` = 0.730471 WHERE `entry`=24976;

/*  Dawnblade Summoner  */
UPDATE `creature_template` SET `HealthModifier` = 1.2, `ArmorModifier` = 0.730471 WHERE `entry`=24978;

/*  Dawnblade Marksman  */
UPDATE `creature_template` SET `DamageModifier` = 0.484518, `HealthModifier` = 1.2, `ArmorModifier` = 0.730471 WHERE `entry`=24979;

/*  Converted Sentry  */
UPDATE `creature_template` SET `HealthModifier` = 0.8, `ArmorModifier` = 0.744158 WHERE `entry`=24981;

/*  Galley Chief Mariss  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=24993;

/*  Shattered Sun Sentry  */
UPDATE `creature_template` SET `DamageModifier` = 11.9551, `ArmorModifier` = 0.744158 WHERE `entry`=24994;

/*  Merchant Fallel Stargazer  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=24995;

/*  Mariner Bladewhisper  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 1.1 WHERE `entry`=24996;

/*  Mariner Swiftstar  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 1.1 WHERE `entry`=24997;

/*  Irespeaker  */
UPDATE `creature_template` SET `HealthModifier` = 1.2, `ArmorModifier` = 0.730471 WHERE `entry`=24999;

/*  Abyssal Flamewalker  */
UPDATE `creature_template` SET `ArmorModifier` = 0.744158 WHERE `entry`=25001;

/*  Unleashed Hellion  */
UPDATE `creature_template` SET `HealthModifier` = 1.2, `ArmorModifier` = 0.745379 WHERE `entry`=25002;

/*  Emissary of Hate  */
UPDATE `creature_template` SET `HealthModifier` = 1.5, `ArmorModifier` = 0.698152 WHERE `entry`=25003;

/*  Mariner Evenmist  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 1.1 WHERE `entry`=25007;

/*  Captain Angelina Soluna  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=25009;

/*  Engineer Brightbuckle  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=25010;

/*  First Mate Wavesinger  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=25011;

/*  Galley Chief Gathers  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=25012;

/*  Sentinel Brightgrass  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=25013;

/*  Sentinel Winterdew  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=25014;

/*  Navigator Landerson  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=25015;

/*  Sailor Wills  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=25016;

/*  Sailor Fairfolk  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=25017;

/*  Sailor Stoneheel  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=25018;

/*  Merchant Felagunne  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=25019;

/*  Galley Chief Alunwea  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=25020;

/*  Mariner Moonblade  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 1.1 WHERE `entry`=25021;

/*  Mariner Stillwake  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 1.1 WHERE `entry`=25022;

/*  Mariner Everwatch  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 1.1 WHERE `entry`=25023;

/*  Mariner Softsong  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 1.1 WHERE `entry`=25024;

/*  Captain Idrilae  */
UPDATE `creature_template` SET `HealthModifier` = 2.5 WHERE `entry`=25025;

/*  Frenzied Ghoul  */
UPDATE `creature_template` SET `DamageModifier` = 0.300191, `ArmorModifier` = 0.762883 WHERE `entry`=25027;

/*  Skeletal Ravager  */
UPDATE `creature_template` SET `DamageModifier` = 0.300191, `ArmorModifier` = 0.755099 WHERE `entry`=25028;

/*  Wrath Enforcer  */
UPDATE `creature_template` SET `ArmorModifier` = 0.764192 WHERE `entry`=25030;

/*  Pit Overlord  */
UPDATE `creature_template` SET `DamageModifier` = 5.61669, `ArmorModifier` = 0.713572 WHERE `entry`=25031;

/*  Eldara Dawnrunner  */
UPDATE `creature_template` SET `DamageModifier` = 2.25569, `HealthModifier` = 1.6 WHERE `entry`=25032;

/*  Eredar Sorcerer  */
UPDATE `creature_template` SET `DamageModifier` = 9.02275, `HealthModifier` = 3.0, `ArmorModifier` = 0.729275 WHERE `entry`=25033;

/*  Tradesman Portanuus  */
UPDATE `creature_template` SET `DamageModifier` = 1.23612, `ArmorModifier` = 0.744158 WHERE `entry`=25034;

/*  Tyrael Flamekissed  */
UPDATE `creature_template` SET `DamageModifier` = 1.23612, `ArmorModifier` = 0.744158 WHERE `entry`=25035;

/*  Caregiver Inaara  */
UPDATE `creature_template` SET `HealthModifier` = 0.6 WHERE `entry`=25036;

/*  Seraphina Bloodheart  */
UPDATE `creature_template` SET `DamageModifier` = 1.53501 WHERE `entry`=25037;

/*  Felmyst  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 87.3276, `HealthModifier` = 1153.2 WHERE `entry`=25038;

/*  Kaalif  */
UPDATE `creature_template` SET `DamageModifier` = 1.49479, `ArmorModifier` = 1.25833 WHERE `entry`=25039;

/*  Sereth Duskbringer  */
UPDATE `creature_template` SET `DamageModifier` = 1.53501 WHERE `entry`=25043;

/*  Sentinel  */
UPDATE `creature_template` SET `DamageModifier` = 1.4279 WHERE `entry`=25045;

/*  Smith Hauthaa  */
UPDATE `creature_template` SET `DamageModifier` = 1.23612, `HealthModifier` = 1.6, `ArmorModifier` = 0.744158 WHERE `entry`=25046;

/*  Dawnstar Charger  */
UPDATE `creature_template` SET `DamageModifier` = 0.469049, `ArmorModifier` = 0.762883 WHERE `entry`=25049;

/*  Captain Galind Windsword  */
UPDATE `creature_template` SET `HealthModifier` = 2.5 WHERE `entry`=25050;

/*  Merchant Frostwalker  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=25051;

/*  Galley Chief Halumvorea  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=25052;

/*  Mariner Keenstar  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 1.1 WHERE `entry`=25054;

/*  Mariner Frostnight  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 1.1 WHERE `entry`=25055;

/*  Mariner Stillglider  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 1.1 WHERE `entry`=25056;

/*  Battlemage Arynna  */
UPDATE `creature_template` SET `DamageModifier` = 1.23612, `ArmorModifier` = 0.744158 WHERE `entry`=25057;

/*  Ayren Cloudbreaker  */
UPDATE `creature_template` SET `DamageModifier` = 1.23612, `ArmorModifier` = 0.744158 WHERE `entry`=25059;

/*  Darkspine Myrmidon  */
UPDATE `creature_template` SET `ArmorModifier` = 0.744158 WHERE `entry`=25060;

/*  Harbinger Inuuro  */
UPDATE `creature_template` SET `DamageModifier` = 2.68659 WHERE `entry`=25061;

/*  Dawnblade Hawkrider  */
UPDATE `creature_template` SET `DamageModifier` = 0.333842, `ArmorModifier` = 0.729275 WHERE `entry`=25063;

/*  Magister Ilastar  */
UPDATE `creature_template` SET `DamageModifier` = 2.7754 WHERE `entry`=25069;

/*  Chief Officer Coppernut  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=25070;

/*  Crewman Rusthammer  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=25071;

/*  Crewman Quickfix  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=25072;

/*  Crewman Sparkfly  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=25074;

/*  Zeppelin Controls  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=25075;

/*  Navigator Fairweather  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=25076;

/*  Sky-Captain Cloudkicker  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=25077;

/*  Captain Krick Wrenchnozzle  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=25078;

/*  Deathguard Fowles  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 1.1 WHERE `entry`=25079;

/*  Grunt Umgor  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 1.1 WHERE `entry`=25080;

/*  Grunt Ounda  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 1.1 WHERE `entry`=25081;

/*  Engineer Torquespindle  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=25082;

/*  Deathguard Lawson  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 1.1 WHERE `entry`=25083;

/*  Greengill Slave  */
UPDATE `creature_template` SET `maxlevel` = 60, `HealthModifier` = 0.3, `ArmorModifier` = 0.533333 WHERE `entry`=25084;

/*  Freed Greengill Slave  */
UPDATE `creature_template` SET `HealthModifier` = 0.3, `ArmorModifier` = 0.533333 WHERE `entry`=25085;

/*  Dawnblade Reservist  */
UPDATE `creature_template` SET `HealthModifier` = 1.2, `ArmorModifier` = 0.730471 WHERE `entry`=25087;

/*  Captain Valindria  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.6 WHERE `entry`=25088;

/*  Galley Chief Steelbelly  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=25089;

/*  First Mate Masker  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=25093;

/*  Navigator Tah're  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=25094;

/*  Crewman Springwidget  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=25095;

/*  Crewman Hammertink  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=25097;

/*  Jonathan Garrett  */
UPDATE `creature_template` SET `DamageModifier` = 2.26598, `HealthModifier` = 0.8 WHERE `entry`=25099;

/*  Chief Officer Hammerflange  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=25100;

/*  Crewman Cutpipe  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=25101;

/*  Crewman Spinshaft  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=25102;

/*  Crewman Boltshine  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=25103;

/*  Navigator Hatch  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=25104;

/*  Sky-Captain Cableclamp  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=25105;

/*  Watcher Du'una  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 2.0, `HealthModifier` = 1.1 WHERE `entry`=25106;

/*  Watcher Umjin  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 2.0, `HealthModifier` = 1.1 WHERE `entry`=25107;

/*  Vindicator Kaalan  */
UPDATE `creature_template` SET `DamageModifier` = 2.3357, `HealthModifier` = 1.9 WHERE `entry`=25108;

/*  Treasure  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=25111;

/*  Anchorite Ayuri  */
UPDATE `creature_template` SET `DamageModifier` = 2.7754 WHERE `entry`=25112;

/*  Shattered Sun Warrior  */
UPDATE `creature_template` SET `DamageModifier` = 1.23612, `ArmorModifier` = 0.744158 WHERE `entry`=25115;

/*  Sunblade Lookout  */
UPDATE `creature_template` SET `DamageModifier` = 0.484518, `HealthModifier` = 0.2, `ArmorModifier` = 0.447227 WHERE `entry`=25132;

/*  Astromancer Darnarian  */
UPDATE `creature_template` SET `DamageModifier` = 1.23612, `ArmorModifier` = 0.744158 WHERE `entry`=25133;

/*  Shattered Sun Trainee  */
UPDATE `creature_template` SET `DamageModifier` = 2.4422, `HealthModifier` = 1.5 WHERE `entry`=25134;

/*  Shattered Sun Trainee  */
UPDATE `creature_template` SET `DamageModifier` = 2.4422, `HealthModifier` = 1.5 WHERE `entry`=25135;

/*  Shattered Sun Trainee  */
UPDATE `creature_template` SET `DamageModifier` = 2.4422, `HealthModifier` = 1.5 WHERE `entry`=25136;

/*  Shattered Sun Trainee  */
UPDATE `creature_template` SET `DamageModifier` = 2.4422, `HealthModifier` = 1.5 WHERE `entry`=25137;

/*  Captain Dranarus  */
UPDATE `creature_template` SET `HealthModifier` = 0.9 WHERE `entry`=25138;

/*  Lord Torvos  */
UPDATE `creature_template` SET `DamageModifier` = 2.70683, `HealthModifier` = 1.2 WHERE `entry`=25140;

/*  Commander Steele  */
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry`=25141;

/*  Shattered Sun Marksman  */
UPDATE `creature_template` SET `minlevel` = 70 WHERE `entry`=25142;

/*  Shattered Sun Veteran  */
UPDATE `creature_template` SET `DamageModifier` = 2.70683 WHERE `entry`=25143;

/*  Shattered Sun Bombardier  */
UPDATE `creature_template` SET `DamageModifier` = 1.78873, `HealthModifier` = 0.1 WHERE `entry`=25144;

/*  Shattered Sun Cleric  */
UPDATE `creature_template` SET `HealthModifier` = 2.3 WHERE `entry`=25155;

/*  Brutallus  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 355.8 WHERE `entry`=25158;

/*  Madrigosa  */
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72, `HealthModifier` = 83.0 WHERE `entry`=25160;

/*  Dawnblade Dragonhawk  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 4.82124, `HealthModifier` = 1.4 WHERE `entry`=25161;

/*  Drill Sergeant Bahduum  */
UPDATE `creature_template` SET `DamageModifier` = 1.23612, `HealthModifier` = 1.4, `ArmorModifier` = 0.744158 WHERE `entry`=25162;

/*  Anchorite Kairthos  */
UPDATE `creature_template` SET `DamageModifier` = 2.98321 WHERE `entry`=25163;

/*  Shattered Sun Recruit  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=25164;

/*  Lady Sacrolash  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 100.0, `HealthModifier` = 476.1 WHERE `entry`=25165;

/*  Grand Warlock Alythess  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 87.3276, `HealthModifier` = 469.5 WHERE `entry`=25166;

/*  Archmage Ne'thul  */
UPDATE `creature_template` SET `DamageModifier` = 1.64156 WHERE `entry`=25169;

/*  Invisible Stalker (Scale x0.5)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 2.5 WHERE `entry`=25171;

/*  Shattered Sun Dragonhawk  */
UPDATE `creature_template` SET `DamageModifier` = 1.32758, `HealthModifier` = 3.7, `ArmorModifier` = 0.745379 WHERE `entry`=25175;

/*  Grikkin Copperspring  */
UPDATE `creature_template` SET `DamageModifier` = 1.75909, `HealthModifier` = 1.2 WHERE `entry`=25176;

/*  Evee Copperspring  */
UPDATE `creature_template` SET `HealthModifier` = 0.8 WHERE `entry`=25177;

/*  Ecton Brasstumbler  */
UPDATE `creature_template` SET `DamageModifier` = 1.75909, `HealthModifier` = 1.2 WHERE `entry`=25178;

/*  Frixee Brasstumbler  */
UPDATE `creature_template` SET `DamageModifier` = 1.75909 WHERE `entry`=25179;

/*  Marksman Bova  */
UPDATE `creature_template` SET `HealthModifier` = 1.2 WHERE `entry`=25195;

/*  Archer Delvinar  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.5 WHERE `entry`=25196;

/*  Arcanist Myndimendez  */
UPDATE `creature_template` SET `HealthModifier` = 5.3 WHERE `entry`=25202;

/*  Shadow Image  */
UPDATE `creature_template` SET `rank` = 3 WHERE `entry`=25214;

/*  Practice Dummy  */
UPDATE `creature_template` SET `HealthModifier` = 6.0 WHERE `entry`=25225;

/*  Unrestrained Dragonhawk  */
UPDATE `creature_template` SET `HealthModifier` = 2.5 WHERE `entry`=25236;

/*  Demonic Vapor  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70 WHERE `entry`=25265;

/*  Demonic Vapor (Trail)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70 WHERE `entry`=25267;

/*  Unyielding Dead  */
UPDATE `creature_template` SET `DamageModifier` = 13.5341, `HealthModifier` = 4.9 WHERE `entry`=25268;

/*  Kil'jaeden  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 100.0, `HealthModifier` = 2075.8 WHERE `entry`=25315;

/*  Kalecgos  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 331.0, `ManaModifier` = 536.6 WHERE `entry`=25319;

/*  Mutate Fleshlasher  */
UPDATE `creature_template` SET `DamageModifier` = 4.21363 WHERE `entry`=25354;

/*  Sunblade Cabalist  */
UPDATE `creature_template` SET `HealthModifier` = 34.0, `ArmorModifier` = 0.730471 WHERE `entry`=25363;

/*  Sunblade Arch Mage  */
UPDATE `creature_template` SET `DamageModifier` = 2.76176, `HealthModifier` = 34.0, `ArmorModifier` = 0.730471 WHERE `entry`=25367;

/*  Sunblade Slayer  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 34.4, `ArmorModifier` = 0.729275 WHERE `entry`=25368;

/*  Sunblade Vindicator  */
UPDATE `creature_template` SET `DamageModifier` = 101.506, `HealthModifier` = 34.4, `ArmorModifier` = 0.773925 WHERE `entry`=25369;

/*  Sunblade Dusk Priest  */
UPDATE `creature_template` SET `DamageModifier` = 36.3389, `HealthModifier` = 34.0, `ArmorModifier` = 0.745379 WHERE `entry`=25370;

/*  Sunblade Dawn Priest  */
UPDATE `creature_template` SET `HealthModifier` = 34.0, `ArmorModifier` = 0.730471 WHERE `entry`=25371;

/*  Sunblade Scout  */
UPDATE `creature_template` SET `DamageModifier` = 4.51138, `HealthModifier` = 4.2, `ArmorModifier` = 0.744158 WHERE `entry`=25372;

/*  Shadowsword Soulbinder  */
UPDATE `creature_template` SET `HealthModifier` = 33.1, `ArmorModifier` = 0.699301, `ManaModifier` = 9.5 WHERE `entry`=25373;

/*  Shadowsword Manafiend  */
UPDATE `creature_template` SET `DamageModifier` = 9.36115, `HealthModifier` = 33.1, `ArmorModifier` = 0.720708 WHERE `entry`=25483;

/*  Shadowsword Assassin  */
UPDATE `creature_template` SET `DamageModifier` = 17.4143, `HealthModifier` = 26.5, `ArmorModifier` = 0.726703 WHERE `entry`=25484;

/*  Shadowsword Deathbringer  */
UPDATE `creature_template` SET `DamageModifier` = 11.9723, `HealthModifier` = 32.0, `ArmorModifier` = 0.712454 WHERE `entry`=25485;

/*  Shadowsword Vanquisher  */
UPDATE `creature_template` SET `DamageModifier` = 26.1214, `HealthModifier` = 34.8, `ArmorModifier` = 0.733827 WHERE `entry`=25486;

/*  Shield Orb  */
UPDATE `creature_template` SET `HealthModifier` = 2.6 WHERE `entry`=25502;

/*  Shadowsword Lifeshaper  */
UPDATE `creature_template` SET `HealthModifier` = 33.1, `ArmorModifier` = 0.713572, `ManaModifier` = 9.5 WHERE `entry`=25506;

/*  Sunblade Protector  */
UPDATE `creature_template` SET `DamageModifier` = 101.654, `HealthModifier` = 74.5, `ArmorModifier` = 0.731074 WHERE `entry`=25507;

/*  Shadowsword Guardian  */
UPDATE `creature_template` SET `minlevel` = 71, `maxlevel` = 71, `DamageModifier` = 3.26518, `HealthModifier` = 33.4, `ArmorModifier` = 0.740952 WHERE `entry`=25508;

/*  Priestess of Torment  */
UPDATE `creature_template` SET `DamageModifier` = 8.70967, `HealthModifier` = 25.1, `ArmorModifier` = 0.698205 WHERE `entry`=25509;

/*  Apoko (1)  */
UPDATE `creature_template` SET `DamageModifier` = 6.20184, `HealthModifier` = 5.2, `ArmorModifier` = 1.25969, `ManaModifier` = 3.2 WHERE `entry`=25541;

/*  Brightscale Wyrm (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.23161, `HealthModifier` = 1.0, `ArmorModifier` = 0.614341 WHERE `entry`=25545;

/*  Coilskar Witch (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 5.77546, `HealthModifier` = 3.9, `ManaModifier` = 8.2, `mingold` = 4110, `maxgold` = 5023 WHERE `entry`=25547;

/*  Ellrys Duskhallow (1)  */
UPDATE `creature_template` SET `DamageModifier` = 4.71921, `ArmorModifier` = 0.715564 WHERE `entry`=25549;

/*  Eramas Brightblaze (1)  */
UPDATE `creature_template` SET `dmgschool` = 6, `DamageModifier` = 8.92996 WHERE `entry`=25550;

/*  Ethereum Smuggler (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `DamageModifier` = 10.8634, `ArmorModifier` = 1.21223, `mingold` = 4151, `maxgold` = 5074 WHERE `entry`=25551;

/*  Fizzle (1)  */
UPDATE `creature_template` SET `DamageModifier` = 1.24566, `HealthModifier` = 0.4, `ArmorModifier` = 0.396928 WHERE `entry`=25553;

/*  Garaxxas (1)  */
UPDATE `creature_template` SET `DamageModifier` = 8.94421, `HealthModifier` = 5.2 WHERE `entry`=25555;

/*  Kagani Nightstrike (1)  */
UPDATE `creature_template` SET `DamageModifier` = 9.79871 WHERE `entry`=25556;

/*  Priestess Delrissa (1)  */
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72, `DamageModifier` = 7.15652, `HealthModifier` = 5.7, `ManaModifier` = 5.7, `mingold` = 5516, `maxgold` = 6741 WHERE `entry`=25560;

/*  Selin Fireheart (1)  */
UPDATE `creature_template` SET `DamageModifier` = 14.4305, `HealthModifier` = 36.5, `ManaModifier` = 9.8, `mingold` = 5519, `maxgold` = 6746 WHERE `entry`=25562;

/*  Sister of Torment (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 72, `DamageModifier` = 7.65539, `ArmorModifier` = 0.639088, `ManaModifier` = 5.1, `mingold` = 4099, `maxgold` = 5010 WHERE `entry`=25563;

/*  Sliver (1)  */
UPDATE `creature_template` SET `DamageModifier` = 3.04067, `HealthModifier` = 2.2 WHERE `entry`=25564;

/*  Sunblade Blood Knight (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 11.1366, `HealthModifier` = 5.0, `ArmorModifier` = 1.26684, `ManaModifier` = 5.1, `mingold` = 4153, `maxgold` = 5076 WHERE `entry`=25565;

/*  Sunblade Imp (1)  */
UPDATE `creature_template` SET `DamageModifier` = 5.75265 WHERE `entry`=25566;

/*  Sunblade Keeper (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 5.11525, `ArmorModifier` = 0.616656 WHERE `entry`=25567;

/*  Sunblade Mage Guard (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 10.269, `HealthModifier` = 5.0, `ManaModifier` = 5.1, `mingold` = 4131, `maxgold` = 5050 WHERE `entry`=25568;

/*  Sunblade Magister (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 5.85073, `HealthModifier` = 4.1, `ArmorModifier` = 0.742982, `ManaModifier` = 5.1, `mingold` = 4177, `maxgold` = 5106 WHERE `entry`=25569;

/*  Sunblade Physician (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 4.9126, `HealthModifier` = 4.1, `ArmorModifier` = 0.75733, `ManaModifier` = 5.1, `mingold` = 4190, `maxgold` = 5121 WHERE `entry`=25570;

/*  Sunblade Sentinel (1)  */
UPDATE `creature_template` SET `DamageModifier` = 11.7459, `ArmorModifier` = 1.29325 WHERE `entry`=25571;

/*  Sunblade Warlock (1)  */
UPDATE `creature_template` SET `minlevel` = 69, `DamageModifier` = 6.45598, `HealthModifier` = 4.1, `ArmorModifier` = 0.465689, `ManaModifier` = 5.1, `mingold` = 4167, `maxgold` = 5094 WHERE `entry`=25572;

/*  Vexallus (1)  */
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72, `DamageModifier` = 16.0208, `HealthModifier` = 33.1, `ManaModifier` = 19.5, `mingold` = 5573, `maxgold` = 6812 WHERE `entry`=25573;

/*  Warlord Salaris (1)  */
UPDATE `creature_template` SET `DamageModifier` = 9.45448, `HealthModifier` = 5.2, `ArmorModifier` = 1.55946 WHERE `entry`=25574;

/*  Wretched Bruiser (1)  */
UPDATE `creature_template` SET `DamageModifier` = 2.81429, `ArmorModifier` = 0.703877, `mingold` = 4159, `maxgold` = 5084 WHERE `entry`=25575;

/*  Wretched Husk (1)  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `ArmorModifier` = 0.595602, `mingold` = 4142, `maxgold` = 5063 WHERE `entry`=25576;

/*  Wretched Skulker (1)  */
UPDATE `creature_template` SET `DamageModifier` = 2.70172, `ArmorModifier` = 0.733146, `mingold` = 4163, `maxgold` = 5084 WHERE `entry`=25577;

/*  Yazzai (1)  */
UPDATE `creature_template` SET `DamageModifier` = 3.54668, `HealthModifier` = 5.2, `ArmorModifier` = 0.612105 WHERE `entry`=25578;

/*  Zelfan (1)  */
UPDATE `creature_template` SET `DamageModifier` = 6.59914 WHERE `entry`=25579;

/*  Old Man Barlo  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 0.8 WHERE `entry`=25580;

/*  Hand of the Deceiver  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 50.8744, `HealthModifier` = 36.9, `ArmorModifier` = 0.715564, `ManaModifier` = 52.4 WHERE `entry`=25588;

/*  Painbringer  */
UPDATE `creature_template` SET `DamageModifier` = 20.0264, `HealthModifier` = 33.4, `ArmorModifier` = 0.712454, `mingold` = 9000, `maxgold` = 11000 WHERE `entry`=25591;

/*  Doomfire Destroyer  */
UPDATE `creature_template` SET `DamageModifier` = 34.8286, `HealthModifier` = 39.0, `ArmorModifier` = 0.740952, `mingold` = 9000, `maxgold` = 11000 WHERE `entry`=25592;

/*  Apocalypse Guard  */
UPDATE `creature_template` SET `DamageModifier` = 3.26518, `HealthModifier` = 39.0, `ArmorModifier` = 0.733827, `mingold` = 9000, `maxgold` = 11000 WHERE `entry`=25593;

/*  Chaos Gazer  */
UPDATE `creature_template` SET `DamageModifier` = 21.7679, `HealthModifier` = 58.5, `ArmorModifier` = 0.683956 WHERE `entry`=25595;

/*  Oblivion Mage  */
UPDATE `creature_template` SET `HealthModifier` = 34.8, `ArmorModifier` = 0.699301 WHERE `entry`=25597;

/*  Volatile Felfire Fiend  */
UPDATE `creature_template` SET `DamageModifier` = 4.68058, `HealthModifier` = 0.2, `ArmorModifier` = 0.713572 WHERE `entry`=25598;

/*  Cataclysm Hound  */
UPDATE `creature_template` SET `DamageModifier` = 57.9025, `ArmorModifier` = 0.712454 WHERE `entry`=25599;

/*  Vindicator Moorba  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 1.54289, `HealthModifier` = 1.2 WHERE `entry`=25632;

/*  Captain Selana  */
UPDATE `creature_template` SET `DamageModifier` = 1.478, `HealthModifier` = 0.6 WHERE `entry`=25638;

/*  Anchorite Elbadon  */
UPDATE `creature_template` SET `DamageModifier` = 1.54289 WHERE `entry`=25639;

/*  Neophyte Narama  */
UPDATE `creature_template` SET `DamageModifier` = 1.54289 WHERE `entry`=25644;

/*  Shattered Sun Soldier  */
UPDATE `creature_template` SET `DamageModifier` = 1.54289, `HealthModifier` = 1.0 WHERE `entry`=25661;

/*  Luma Skymother  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 1.2 WHERE `entry`=25697;

/*  Sinister Reflection  */
UPDATE `creature_template` SET `DamageModifier` = 25.1546, `HealthModifier` = 19.7 WHERE `entry`=25708;

/*  Numa Cloudsister  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 1.2 WHERE `entry`=25710;

/*  Armageddon Target  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70 WHERE `entry`=25735;

/*  Ahune  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 3.90754, `HealthModifier` = 15.1 WHERE `entry`=25740;

/*  M'uru  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 394.7 WHERE `entry`=25741;

/*  Dark Fiend  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=25744;

/*  Ahunite Hailstone  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 2.90956, `HealthModifier` = 13.6 WHERE `entry`=25755;

/*  Ahunite Coldwave  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 2.90956, `HealthModifier` = 0.4 WHERE `entry`=25756;

/*  Ahunite Frostwind  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 1.52, `HealthModifier` = 0.2 WHERE `entry`=25757;

/*  Void Sentinel  */
UPDATE `creature_template` SET `minlevel` = 71, `maxlevel` = 71, `DamageModifier` = 189.38, `HealthModifier` = 16.7, `ArmorModifier` = 0.712454 WHERE `entry`=25772;

/*  Shadowsword Berserker  */
UPDATE `creature_template` SET `DamageModifier` = 55.508, `HealthModifier` = 18.7, `ArmorModifier` = 0.733827 WHERE `entry`=25798;

/*  Shadowsword Fury Mage  */
UPDATE `creature_template` SET `DamageModifier` = 59.6774, `HealthModifier` = 19.8, `ArmorModifier` = 0.692165, `ManaModifier` = 6.0 WHERE `entry`=25799;

/*  Void Spawn  */
UPDATE `creature_template` SET `minlevel` = 71, `maxlevel` = 71, `DamageModifier` = 5.94349, `HealthModifier` = 5.8 WHERE `entry`=25824;

/*  Shadowsword Commander  */
UPDATE `creature_template` SET `DamageModifier` = 11.9723, `HealthModifier` = 34.8, `ArmorModifier` = 0.726703 WHERE `entry`=25837;

/*  Entropius  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 140.0, `HealthModifier` = 291.2 WHERE `entry`=25840;

/*  Volatile Fiend  */
UPDATE `creature_template` SET `DamageModifier` = 4.2085, `HealthModifier` = 1.5, `ArmorModifier` = 0.699301 WHERE `entry`=25851;

/*  Singularity  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70 WHERE `entry`=25855;

/*  Blazing Infernal  */
UPDATE `creature_template` SET `DamageModifier` = 9.02275, `HealthModifier` = 7.2, `ArmorModifier` = 0.744158 WHERE `entry`=25860;

/*  Felguard Slayer  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 71, `HealthModifier` = 9.9 WHERE `entry`=25864;

/*  Frozen Core  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 34.1 WHERE `entry`=25865;

/*  Sunblade Dragonhawk  */
UPDATE `creature_template` SET `DamageModifier` = 10.8273, `HealthModifier` = 20.0, `ArmorModifier` = 0.729275 WHERE `entry`=25867;

/*  Whirligig Wafflefry  */
UPDATE `creature_template` SET `HealthModifier` = 1.5 WHERE `entry`=25885;

/*  Doomfire Shard  */
UPDATE `creature_template` SET `DamageModifier` = 17.4143, `HealthModifier` = 7.5, `ArmorModifier` = 0.726703 WHERE `entry`=25948;

/*  Shaani  */
UPDATE `creature_template` SET `DamageModifier` = 1.37309, `HealthModifier` = 0.4 WHERE `entry`=25950;

/*  Fire Eater  */
UPDATE `creature_template` SET `minlevel` = 43, `maxlevel` = 43 WHERE `entry`=25962;

/*  Zephyr  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.4 WHERE `entry`=25967;

/*  Theremis  */
UPDATE `creature_template` SET `HealthModifier` = 2.2 WHERE `entry`=25976;

/*  Kixi the Shiv  */
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry`=25991;

/*  Big Bruiser  */
UPDATE `creature_template` SET `HealthModifier` = 1.6 WHERE `entry`=25992;

/*  Flame Eater  */
UPDATE `creature_template` SET `minlevel` = 46, `maxlevel` = 46 WHERE `entry`=25994;

/*  Anveena  */
UPDATE `creature_template` SET `maxlevel` = 73, `rank` = 3, `HealthModifier` = 894.6 WHERE `entry`=26046;

/*  Kayri  */
UPDATE `creature_template` SET `DamageModifier` = 2.0, `HealthModifier` = 1.2 WHERE `entry`=26089;

/*  Karynna  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 1.3, `ManaModifier` = 1.2 WHERE `entry`=26090;

/*  Olus  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 1.7, `ArmorModifier` = 1.25833 WHERE `entry`=26091;

/*  Soryn  */
UPDATE `creature_template` SET `DamageModifier` = 1.0, `HealthModifier` = 0.5, `ArmorModifier` = 1.25833 WHERE `entry`=26092;

/*  Fire Fiend  */
UPDATE `creature_template` SET `HealthModifier` = 2.0 WHERE `entry`=26101;

/*  Glacial Templar  */
UPDATE `creature_template` SET `minlevel` = 67, `maxlevel` = 67 WHERE `entry`=26216;

/*  Shattered Sun Peacekeeper  */
UPDATE `creature_template` SET `DamageModifier` = 45.2361, `ArmorModifier` = 0.744158 WHERE `entry`=26253;

/*  Shattered Sun Soldier  */
UPDATE `creature_template` SET `HealthModifier` = 1.0 WHERE `entry`=26259;

/*  Accessories Vendor  */
UPDATE `creature_template` SET `subname` = 'Valoren' WHERE `entry`=26300;

/*  Ahune (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 4.31227, `HealthModifier` = 23.1 WHERE `entry`=26338;

/*  Frozen Core (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 52.3 WHERE `entry`=26339;

/*  Ahunite Coldwave (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 0.5 WHERE `entry`=26340;

/*  Ahunite Frostwind (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `DamageModifier` = 3.20721, `HealthModifier` = 0.2 WHERE `entry`=26341;

/*  Ahunite Hailstone (1)  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `HealthModifier` = 17.3 WHERE `entry`=26342;

/*  Big Zokk Torquewrench  */
UPDATE `creature_template` SET `DamageModifier` = 2.88728 WHERE `entry`=26352;

/*  Captain Dirgehammer  */
UPDATE `creature_template` SET `HealthModifier` = 3.4 WHERE `entry`=26393;

/*  Captain O'Neal  */
UPDATE `creature_template` SET `HealthModifier` = 3.4 WHERE `entry`=26394;

/*  Sergeant Thunderhorn  */
UPDATE `creature_template` SET `HealthModifier` = 3.4 WHERE `entry`=26396;

/*  Lady Palanseer  */
UPDATE `creature_template` SET `HealthModifier` = 3.4 WHERE `entry`=26397;

/*  Doris Volanthius  */
UPDATE `creature_template` SET `HealthModifier` = 3.6 WHERE `entry`=26398;

/*  Ontuvo  */
UPDATE `creature_template` SET `DamageModifier` = 1.27221 WHERE `entry`=27666;

/*  Anwehu  */
UPDATE `creature_template` SET `DamageModifier` = 1.23612, `HealthModifier` = 0.6 WHERE `entry`=27667;

/*  Ysuria  */
UPDATE `creature_template` SET `DamageModifier` = 1.28026, `HealthModifier` = 1.5 WHERE `entry`=27703;

/*  Lorrin Foxfire  */
UPDATE `creature_template` SET `HealthModifier` = 0.9 WHERE `entry`=27705;

/*  Don Carlos  */
UPDATE `creature_template` SET `HealthModifier` = 18.6 WHERE `entry`=28126;

/*  Don Carlos  */
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72, `DamageModifier` = 8.47331, `HealthModifier` = 14.9 WHERE `entry`=28132;

/*  Construction Worker  */
UPDATE `creature_template` SET `HealthModifier` = 0.4 WHERE `entry`=28569;

/*  Foreman Wick  */
UPDATE `creature_template` SET `HealthModifier` = 0.9 WHERE `entry`=28571;

/*  Mason Goldgild  */
UPDATE `creature_template` SET `HealthModifier` = 0.4 WHERE `entry`=28572;

/*  Underwater Construction Worker  */
UPDATE `creature_template` SET `HealthModifier` = 0.4 WHERE `entry`=28573;

/*  Dwarven Construction Worker  */
UPDATE `creature_template` SET `HealthModifier` = 0.4 WHERE `entry`=28596;

/*  Spike Target  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70 WHERE `entry`=30598;

/*  Spike Target 2  */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70 WHERE `entry`=30614;
