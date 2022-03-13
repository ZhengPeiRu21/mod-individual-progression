-- Restore rep requirement to Mantle of the Dawn
UPDATE item_template SET RequiredReputationFaction=529, RequiredReputationRank=6 WHERE entry IN (18169, 18170, 18171, 18172, 18173);
UPDATE item_template SET RequiredReputationFaction=529, RequiredReputationRank=7 WHERE entry=18182;

/*  Rockslicer  */
UPDATE item_template SET Quality = 2, dmg_min1 = 36.0, dmg_max1 = 55.0, stat_value1 = 7 WHERE entry=872;

/*  Worn Wooden Buckler  */
UPDATE item_template SET Quality = 0 WHERE entry=876;

/*  Naga Battle Gloves  */
UPDATE item_template SET stat_type1 = 6 WHERE entry=888;

/*  Lavishly Jeweled Ring  */
UPDATE item_template SET stat_type1 = 3, stat_value1 = 2, stat_type2 = 5, stat_value2 = 6 WHERE entry=1156;

/*  JYoo test item  */
UPDATE item_template SET dmg_min1 = 1.0, dmg_max1 = 1.0, dmg_min2 = 3000.0, dmg_max2 = 3000.0 WHERE entry=1259;

/*  Sparkmetal Coif  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=1282;

/*  Riding Gloves  */
UPDATE item_template SET stat_type1 = 3, stat_type2 = 5, stat_value2 = 3 WHERE entry=1304;

/*  Thistlewood Axe  */
UPDATE item_template SET dmg_min1 = 7.0, dmg_max1 = 11.0 WHERE entry=1386;

/*  Minor Channeling Ring  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=1449;

/*  Gloomshroud Armor  */
UPDATE item_template SET stat_type1 = 6, stat_type2 = 4 WHERE entry=1489;

/*  Engineering Gloves  */
UPDATE item_template SET stat_type1 = 4, stat_type2 = 5, stat_value2 = 8 WHERE entry=1659;

/*  Polished Jazeraint Armor  */
UPDATE item_template SET stat_type1 = 6, stat_type3 = 4, stat_value3 = 9 WHERE entry=1715;

/*  Basilisk Hide Pants  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=1718;

/*  Lucky Trousers  */
UPDATE item_template SET stat_type2 = 3, stat_value2 = 2, stat_type3 = 6, stat_value3 = 3 WHERE entry=1832;

/*  Silk-threaded Trousers  */
UPDATE item_template SET stat_type1 = 3, stat_type2 = 6, stat_value2 = 3 WHERE entry=1929;

/*  Buzz Saw  */
UPDATE item_template SET Quality = 2, dmg_min1 = 17.0, dmg_max1 = 33.0, stat_value1 = 2, stat_value2 = 2 WHERE entry=1937;

/*  Ring of Forlorn Spirits  */
UPDATE item_template SET Quality = 2, stat_value1 = 2, stat_type2 = 6, stat_value2 = 7 WHERE entry=2043;

/*  Crescent of Forlorn Spirits  */
UPDATE item_template SET Quality = 2, dmg_min1 = 20.0, dmg_max1 = 38.0, stat_type1 = 6, stat_value1 = 6 WHERE entry=2044;

/*  Double-barreled Shotgun  */
UPDATE item_template SET dmg_min1 = 21.0, dmg_max1 = 40.0 WHERE entry=2098;

/*  Dwarven Hand Cannon  */
UPDATE item_template SET dmg_min1 = 66.0, dmg_max1 = 124.0 WHERE entry=2099;

/*  Precisely Calibrated Boomstick  */
UPDATE item_template SET dmg_min1 = 38.0, dmg_max1 = 45.0 WHERE entry=2100;

/*  Scratched Claymore  */
UPDATE item_template SET dmg_max1 = 7.0 WHERE entry=2128;

/*  Foreman's Leggings  */
UPDATE item_template SET stat_type3 = 6 WHERE entry=2166;

/*  Foreman's Gloves  */
UPDATE item_template SET stat_type1 = 4, stat_value1 = 5 WHERE entry=2167;

/*  Buzzer Blade  */
UPDATE item_template SET Quality = 1, dmg_min1 = 10.0, dmg_max1 = 19.0, bonding = 0, stat_type1 = 0, stat_value1 = 0 WHERE entry=2169;

/*  Nightwalker Armor  */
UPDATE item_template SET stat_type1 = 4, stat_value1 = 9, stat_type2 = 7, stat_value2 = 4 WHERE entry=2234;

/*  Mantle of Thieves  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=2264;

/*  Kam's Walking Stick  */
UPDATE item_template SET Quality = 2, dmg_min1 = 41.0, dmg_max1 = 62.0, bonding = 2, stat_type1 = 3, stat_value1 = 3, stat_type2 = 5, stat_value2 = 8 WHERE entry=2280;

/*  Fine Leather Boots  */
UPDATE item_template SET Quality = 1, bonding = 0, stat_type1 = 0, stat_value1 = 0 WHERE entry=2307;

/*  Embossed Leather Boots  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=2309;

/*  Embossed Leather Cloak  */
UPDATE item_template SET Quality = 1, bonding = 0, stat_type1 = 0, stat_value1 = 0 WHERE entry=2310;

/*  White Leather Jerkin  */
UPDATE item_template SET Quality = 1, bonding = 0, stat_type1 = 0, stat_value1 = 0 WHERE entry=2311;

/*  Fine Leather Gloves  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=2312;

/*  Toughened Leather Armor  */
UPDATE item_template SET Quality = 1, bonding = 0, stat_type1 = 0, stat_value1 = 0 WHERE entry=2314;

/*  Dark Leather Boots  */
UPDATE item_template SET Quality = 1, bonding = 0, stat_type1 = 0, stat_value1 = 0 WHERE entry=2315;

/*  Dark Leather Cloak  */
UPDATE item_template SET Quality = 1, bonding = 0, stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0 WHERE entry=2316;

/*  Peon Sword  */
UPDATE item_template SET dmg_min1 = 2.0, dmg_max1 = 5.0 WHERE entry=2481;

/*  Rough Broad Axe  */
UPDATE item_template SET dmg_max1 = 6.0 WHERE entry=2483;

/*  Splintered Board  */
UPDATE item_template SET dmg_max1 = 3.0 WHERE entry=2485;

/*  Large Stone Mace  */
UPDATE item_template SET dmg_min1 = 4.0 WHERE entry=2486;

/*  Acolyte Staff  */
UPDATE item_template SET dmg_min1 = 4.0, dmg_max1 = 6.0 WHERE entry=2487;

/*  Raider Shortsword  */
UPDATE item_template SET dmg_min1 = 5.0, dmg_max1 = 11.0 WHERE entry=2496;

/*  Rusted Claymore  */
UPDATE item_template SET dmg_min1 = 12.0, dmg_max1 = 19.0 WHERE entry=2497;

/*  Worn Shortbow  */
UPDATE item_template SET dmg_min1 = 2.0, dmg_max1 = 5.0 WHERE entry=2504;

/*  Polished Shortbow  */
UPDATE item_template SET dmg_min1 = 2.0, dmg_max1 = 5.0 WHERE entry=2505;

/*  Hornwood Recurve Bow  */
UPDATE item_template SET dmg_min1 = 3.0, dmg_max1 = 7.0 WHERE entry=2506;

/*  Laminated Recurve Bow  */
UPDATE item_template SET dmg_min1 = 10.0, dmg_max1 = 20.0 WHERE entry=2507;

/*  Old Blunderbuss  */
UPDATE item_template SET dmg_min1 = 2.0, dmg_max1 = 5.0 WHERE entry=2508;

/*  Ornate Blunderbuss  */
UPDATE item_template SET dmg_min1 = 4.0, dmg_max1 = 9.0 WHERE entry=2509;

/*  Solid Blunderbuss  */
UPDATE item_template SET dmg_min1 = 3.0, dmg_max1 = 6.0 WHERE entry=2510;

/*  Hunter's Boomstick  */
UPDATE item_template SET dmg_min1 = 7.0, dmg_max1 = 14.0 WHERE entry=2511;

/*  Linen Boots  */
UPDATE item_template SET Quality = 1, bonding = 0, stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0 WHERE entry=2569;

/*  Reinforced Linen Cape  */
UPDATE item_template SET Quality = 1, bonding = 0, stat_type1 = 0, stat_value1 = 0 WHERE entry=2580;

/*  Green Woolen Vest  */
UPDATE item_template SET Quality = 1, bonding = 0, stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0 WHERE entry=2582;

/*  Woolen Boots  */
UPDATE item_template SET stat_type3 = 3, stat_value3 = 2 WHERE entry=2583;

/*  Spinner Fang  */
UPDATE item_template SET dmg_min1 = 9.0, dmg_max1 = 18.0 WHERE entry=2664;

/*  Cracked Shortbow  */
UPDATE item_template SET dmg_min1 = 3.0, dmg_max1 = 6.0 WHERE entry=2773;

/*  Rust-covered Blunderbuss  */
UPDATE item_template SET dmg_min1 = 3.0, dmg_max1 = 6.0 WHERE entry=2774;

/*  Feeble Shortbow  */
UPDATE item_template SET dmg_min1 = 4.0, dmg_max1 = 8.0 WHERE entry=2777;

/*  Cheap Blunderbuss  */
UPDATE item_template SET dmg_min1 = 5.0, dmg_max1 = 9.0 WHERE entry=2778;

/*  Light Hunting Bow  */
UPDATE item_template SET dmg_min1 = 5.0, dmg_max1 = 10.0 WHERE entry=2780;

/*  Dirty Blunderbuss  */
UPDATE item_template SET dmg_min1 = 6.0, dmg_max1 = 12.0 WHERE entry=2781;

/*  Mishandled Recurve Bow  */
UPDATE item_template SET dmg_min1 = 9.0, dmg_max1 = 18.0 WHERE entry=2782;

/*  Shoddy Blunderbuss  */
UPDATE item_template SET dmg_min1 = 7.0, dmg_max1 = 14.0 WHERE entry=2783;

/*  Stiff Recurve Bow  */
UPDATE item_template SET dmg_min1 = 13.0, dmg_max1 = 25.0 WHERE entry=2785;

/*  Oiled Blunderbuss  */
UPDATE item_template SET dmg_min1 = 9.0, dmg_max1 = 19.0 WHERE entry=2786;

/*  Death Speaker Scepter  */
UPDATE item_template SET dmg_min1 = 33.0, dmg_max1 = 63.0, RequiredLevel = 28 WHERE entry=2816;

/*  Hurricane  */
UPDATE item_template SET dmg_min1 = 34.0, dmg_max1 = 63.0 WHERE entry=2824;

/*  Bow of Searing Arrows  */
UPDATE item_template SET dmg_min1 = 47.0, dmg_max1 = 88.0 WHERE entry=2825;

/*  Bronze Mace  */
UPDATE item_template SET Quality = 1, dmg_min1 = 18.0, dmg_max1 = 34.0, bonding = 0, stat_type1 = 0, stat_value1 = 0 WHERE entry=2848;

/*  Bronze Axe  */
UPDATE item_template SET Quality = 1, dmg_min1 = 15.0, dmg_max1 = 29.0, bonding = 0, stat_type1 = 0, stat_value1 = 0 WHERE entry=2849;

/*  Bronze Shortsword  */
UPDATE item_template SET Quality = 1, dmg_min1 = 16.0, dmg_max1 = 31.0, bonding = 0, stat_type1 = 0, stat_value1 = 0 WHERE entry=2850;

/*  Runed Copper Bracers  */
UPDATE item_template SET Quality = 1, bonding = 0, stat_type1 = 0, stat_value1 = 0 WHERE entry=2854;

/*  Runed Copper Belt  */
UPDATE item_template SET Quality = 1, bonding = 0, stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0 WHERE entry=2857;

/*  Rough Bronze Leggings  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=2865;

/*  Rough Bronze Cuirass  */
UPDATE item_template SET Quality = 1, bonding = 0, stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0 WHERE entry=2866;

/*  Silvered Bronze Breastplate  */
UPDATE item_template SET stat_type3 = 6 WHERE entry=2869;

/*  Daryl's Hunting Bow  */
UPDATE item_template SET dmg_min1 = 9.0, dmg_max1 = 18.0 WHERE entry=2903;

/*  Daryl's Hunting Rifle  */
UPDATE item_template SET dmg_min1 = 11.0, dmg_max1 = 21.0 WHERE entry=2904;

/*  Dwarven Tree Chopper  */
UPDATE item_template SET stat_type1 = 0, stat_value1 = 0 WHERE entry=2907;

/*  Sacred Relic  */
UPDATE item_template SET bonding = 0, RequiredLevel = 5 WHERE entry=2920;

/*  Blessed Relic  */
UPDATE item_template SET bonding = 0, RequiredLevel = 10 WHERE entry=2921;

/*  Spirit Relic  */
UPDATE item_template SET bonding = 0, RequiredLevel = 15 WHERE entry=2922;

/*  Watch Master's Cloak  */
UPDATE item_template SET stat_type1 = 7 WHERE entry=2953;

/*  Night Watch Pantaloons  */
UPDATE item_template SET stat_type1 = 7, stat_value1 = 9, stat_type2 = 5, stat_value2 = 8 WHERE entry=2954;

/*  Relic of the Eye  */
UPDATE item_template SET bonding = 0, RequiredLevel = 5 WHERE entry=3003;

/*  Relic of the Dead  */
UPDATE item_template SET bonding = 0, RequiredLevel = 10 WHERE entry=3004;

/*  Relic of Truth  */
UPDATE item_template SET bonding = 0, RequiredLevel = 15 WHERE entry=3005;

/*  Noble's Robe  */
UPDATE item_template SET stat_type1 = 4, stat_value1 = 1, stat_type3 = 6, stat_value3 = 3 WHERE entry=3019;

/*  Enduring Cap  */
UPDATE item_template SET stat_type1 = 6, stat_value1 = 7 WHERE entry=3020;

/*  Ranger Bow  */
UPDATE item_template SET dmg_min1 = 23.0, dmg_max1 = 45.0 WHERE entry=3021;

/*  Large Bore Blunderbuss  */
UPDATE item_template SET dmg_min1 = 13.0, dmg_max1 = 24.0 WHERE entry=3023;

/*  BKP 2700 "Enforcer"  */
UPDATE item_template SET dmg_min1 = 18.0, dmg_max1 = 34.0 WHERE entry=3024;

/*  BKP 42 "Ultra"  */
UPDATE item_template SET dmg_min1 = 20.0, dmg_max1 = 38.0 WHERE entry=3025;

/*  Reinforced Bow  */
UPDATE item_template SET dmg_min1 = 11.0, dmg_max1 = 22.0 WHERE entry=3026;

/*  Heavy Recurve Bow  */
UPDATE item_template SET dmg_min1 = 15.0, dmg_max1 = 29.0 WHERE entry=3027;

/*  Heavy Shortbow  */
UPDATE item_template SET dmg_min1 = 10.0, dmg_max1 = 20.0 WHERE entry=3036;

/*  Whipwood Recurve Bow  */
UPDATE item_template SET dmg_min1 = 17.0, dmg_max1 = 32.0 WHERE entry=3037;

/*  Short Ash Bow  */
UPDATE item_template SET dmg_min1 = 12.0, dmg_max1 = 23.0 WHERE entry=3039;

/*  Hunter's Muzzle Loader  */
UPDATE item_template SET dmg_min1 = 9.0, dmg_max1 = 18.0 WHERE entry=3040;

/*  "Mage-Eye" Blunderbuss  */
UPDATE item_template SET dmg_min1 = 24.0, dmg_max1 = 46.0 WHERE entry=3041;

/*  BKP "Sparrow" Smallbore  */
UPDATE item_template SET dmg_min1 = 15.0, dmg_max1 = 30.0 WHERE entry=3042;

/*  Naga Heartpiercer  */
UPDATE item_template SET Quality = 2, dmg_min1 = 13.0, dmg_max1 = 25.0, stat_type1 = 0, stat_value1 = 0 WHERE entry=3078;

/*  Skorn's Rifle  */
UPDATE item_template SET dmg_min1 = 6.0, dmg_max1 = 13.0 WHERE entry=3079;

/*  Arced War Axe  */
UPDATE item_template SET Quality = 2, dmg_min1 = 46.0, dmg_max1 = 70.0, stat_value1 = 6, stat_value2 = 6, RequiredLevel = 21 WHERE entry=3191;

/*  Wicked Dagger  */
UPDATE item_template SET dmg_min1 = 10.0, dmg_max1 = 20.0, bonding = 2, stat_type1 = 4, stat_value1 = 1, stat_type2 = 3, stat_value2 = 1 WHERE entry=3222;

/*  Tarantula Silk Sash  */
UPDATE item_template SET stat_type1 = 4, stat_value1 = 2, stat_type2 = 5, stat_value2 = 5 WHERE entry=3229;

/*  Black Wolf Bracers  */
UPDATE item_template SET Quality = 2, stat_value1 = 5, RequiredLevel = 21 WHERE entry=3230;

/*  Barbaric Cloth Gloves  */
UPDATE item_template SET stat_type3 = 4, stat_value3 = 1 WHERE entry=3308;

/*  Barbaric Loincloth  */
UPDATE item_template SET stat_type1 = 4, stat_value1 = 3, stat_type2 = 5, stat_value2 = 2 WHERE entry=3309;

/*  Martyr's Chain  */
UPDATE item_template SET stat_type1 = 6 WHERE entry=3416;

/*  Sniper Rifle  */
UPDATE item_template SET dmg_min1 = 56.0, dmg_max1 = 65.0 WHERE entry=3430;

/*  Runed Copper Gauntlets  */
UPDATE item_template SET Quality = 1, bonding = 0, stat_type1 = 0, stat_value1 = 0 WHERE entry=3472;

/*  Gemmed Copper Gauntlets  */
UPDATE item_template SET stat_type1 = 0, stat_value1 = 0 WHERE entry=3474;

/*  Rough Bronze Shoulders  */
UPDATE item_template SET Quality = 1, bonding = 0, stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0 WHERE entry=3480;

/*  Silvered Bronze Shoulders  */
UPDATE item_template SET stat_type3 = 6 WHERE entry=3481;

/*  Silvered Bronze Boots  */
UPDATE item_template SET stat_type3 = 6 WHERE entry=3482;

/*  Silvered Bronze Gauntlets  */
UPDATE item_template SET stat_type3 = 6 WHERE entry=3483;

/*  Raptor's End  */
UPDATE item_template SET dmg_min1 = 24.0, dmg_max1 = 46.0 WHERE entry=3493;

/*  Beerstained Gloves  */
UPDATE item_template SET stat_type1 = 4, stat_type2 = 7, stat_value2 = 3 WHERE entry=3565;

/*  Dwarven Fishing Pole  */
UPDATE item_template SET dmg_min1 = 9.0, dmg_max1 = 19.0 WHERE entry=3567;

/*  Warrior's Buckler  */
UPDATE item_template SET ItemLevel = 9, RequiredLevel = 4 WHERE entry=3648;

/*  Hillman's Cloak  */
UPDATE item_template SET Quality = 1, bonding = 0, stat_type1 = 0, stat_value1 = 0 WHERE entry=3719;

/*  Brewing Rod  */
UPDATE item_template SET dmg_min1 = 39.0, dmg_max1 = 59.0 WHERE entry=3738;

/*  Bow of Plunder  */
UPDATE item_template SET dmg_min1 = 20.0, dmg_max1 = 39.0 WHERE entry=3742;

/*  Feline Mantle  */
UPDATE item_template SET ItemLevel = 28, stat_value1 = 10, stat_value2 = 3, stat_type3 = 3, stat_value3 = 2, RequiredLevel = 23 WHERE entry=3748;

/*  Grunt Vest  */
UPDATE item_template SET stat_type1 = 4, stat_value1 = 5, stat_type2 = 6, stat_value2 = 4 WHERE entry=3752;

/*  Mantis Boots  */
UPDATE item_template SET stat_type1 = 4, stat_value1 = 3, stat_type2 = 6, stat_value2 = 7, stat_type3 = 3, stat_value3 = 2 WHERE entry=3764;

/*  Taut Compound Bow  */
UPDATE item_template SET dmg_min1 = 13.0, dmg_max1 = 25.0 WHERE entry=3778;

/*  Long-barreled Musket  */
UPDATE item_template SET dmg_min1 = 14.0, dmg_max1 = 27.0 WHERE entry=3780;

/*  Green Iron Bracers  */
UPDATE item_template SET Quality = 1, bonding = 0, stat_type1 = 0, stat_value1 = 0 WHERE entry=3835;

/*  Golden Scale Coif  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=3837;

/*  Golden Scale Shoulders  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=3841;

/*  Golden Scale Leggings  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=3843;

/*  Golden Scale Cuirass  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=3845;

/*  Golden Scale Boots  */
UPDATE item_template SET stat_value1 = 8, stat_type2 = 6, stat_value2 = 8, stat_type3 = 0, stat_value3 = 0 WHERE entry=3847;

/*  Hardened Iron Shortsword  */
UPDATE item_template SET dmg_min1 = 21.0, dmg_max1 = 39.0, stat_type1 = 7, stat_value1 = 5 WHERE entry=3849;

/*  Golden Iron Destroyer  */
UPDATE item_template SET dmg_min1 = 50.0, dmg_max1 = 76.0 WHERE entry=3852;

/*  Moonsteel Broadsword  */
UPDATE item_template SET stat_type1 = 7, stat_value1 = 4, stat_type2 = 6, stat_value2 = 12, stat_type3 = 0, stat_value3 = 0 WHERE entry=3853;

/*  TEST Legendary  */
UPDATE item_template SET dmg_min1 = 16.0, dmg_max1 = 31.0 WHERE entry=3895;

/*  Balanced Long Bow  */
UPDATE item_template SET dmg_min1 = 15.0, dmg_max1 = 29.0 WHERE entry=4025;

/*  Sentinel Musket  */
UPDATE item_template SET dmg_min1 = 22.0, dmg_max1 = 43.0 WHERE entry=4026;

/*  Aurora Gloves  */
UPDATE item_template SET stat_type1 = 3, stat_type2 = 5, stat_value2 = 8 WHERE entry=4042;

/*  Flash Rifle  */
UPDATE item_template SET dmg_min1 = 19.0, dmg_max1 = 36.0 WHERE entry=4086;

/*  Trueshot Bow  */
UPDATE item_template SET dmg_min1 = 24.0, dmg_max1 = 45.0 WHERE entry=4087;

/*  Ricochet Blunderbuss  */
UPDATE item_template SET dmg_min1 = 36.0, dmg_max1 = 67.0 WHERE entry=4089;

/*  Robe of Crystal Waters  */
UPDATE item_template SET Quality = 2, stat_value1 = 8, stat_type2 = 6, stat_value2 = 9, stat_value3 = 10 WHERE entry=4120;

/*  Gemmed Gloves  */
UPDATE item_template SET stat_type2 = 3, stat_value2 = 5, stat_type3 = 5, stat_value3 = 6 WHERE entry=4121;

/*  Shrapnel Blaster  */
UPDATE item_template SET dmg_min1 = 23.0, dmg_max1 = 43.0 WHERE entry=4127;

/*  Nimboya's Mystical Staff  */
UPDATE item_template SET Quality = 2, dmg_min1 = 65.0, dmg_max1 = 99.0 WHERE entry=4134;

/*  Feathered Mantle  */
UPDATE item_template SET RequiredLevel = 25 WHERE entry=4196;

/*  Embossed Leather Gloves  */
UPDATE item_template SET Quality = 1, bonding = 0, stat_type1 = 0, stat_value1 = 0 WHERE entry=4239;

/*  Embossed Leather Pants  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=4242;

/*  Hillman's Leather Vest  */
UPDATE item_template SET stat_type2 = 6, stat_value2 = 4 WHERE entry=4244;

/*  Fine Leather Belt  */
UPDATE item_template SET Quality = 1, bonding = 0, stat_type1 = 0, stat_value1 = 0 WHERE entry=4246;

/*  Hillman's Leather Gloves  */
UPDATE item_template SET stat_type2 = 6, stat_value2 = 5 WHERE entry=4247;

/*  Hillman's Belt  */
UPDATE item_template SET stat_type2 = 6, stat_value2 = 4 WHERE entry=4250;

/*  Hillman's Shoulders  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=4251;

/*  Toughened Leather Gloves  */
UPDATE item_template SET stat_type2 = 6, stat_type3 = 7 WHERE entry=4253;

/*  Barbaric Gloves  */
UPDATE item_template SET stat_value1 = 5, stat_type2 = 6, stat_value2 = 4, stat_type3 = 3, stat_value3 = 4 WHERE entry=4254;

/*  Green Leather Armor  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=4255;

/*  Guardian Armor  */
UPDATE item_template SET stat_type2 = 6, stat_value2 = 9 WHERE entry=4256;

/*  Green Leather Belt  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=4257;

/*  Guardian Belt  */
UPDATE item_template SET stat_type2 = 6, stat_value2 = 6 WHERE entry=4258;

/*  Green Leather Bracers  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=4259;

/*  Guardian Leather Bracers  */
UPDATE item_template SET stat_type1 = 5, stat_value1 = 6 WHERE entry=4260;

/*  Gem-studded Leather Belt  */
UPDATE item_template SET stat_type2 = 6, stat_value2 = 6 WHERE entry=4262;

/*  Barbaric Belt  */
UPDATE item_template SET stat_type1 = 4, stat_value1 = 11 WHERE entry=4264;

/*  Heavy Linen Gloves  */
UPDATE item_template SET Quality = 1, bonding = 0, stat_type1 = 0, stat_value1 = 0 WHERE entry=4307;

/*  Green Linen Bracers  */
UPDATE item_template SET Quality = 1, bonding = 0, stat_type1 = 0, stat_value1 = 0 WHERE entry=4308;

/*  Double-stitched Woolen Shoulders  */
UPDATE item_template SET Quality = 1, bonding = 0, stat_type1 = 0, stat_value1 = 0 WHERE entry=4314;

/*  Reinforced Woolen Shoulders  */
UPDATE item_template SET Quality = 1, bonding = 0, stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0 WHERE entry=4315;

/*  Spidersilk Boots  */
UPDATE item_template SET ItemLevel = 25, stat_type1 = 6, stat_value1 = 7, RequiredLevel = 20 WHERE entry=4320;

/*  Spider Silk Slippers  */
UPDATE item_template SET stat_type2 = 3, stat_value2 = 3 WHERE entry=4321;

/*  Icy Cloak  */
UPDATE item_template SET frost_res = 11, stat_type1 = 6, stat_value1 = 6, stat_type2 = 0, stat_value2 = 0 WHERE entry=4327;

/*  Brown Linen Pants  */
UPDATE item_template SET Quality = 1, bonding = 0, stat_type1 = 0, stat_value1 = 0 WHERE entry=4343;

/*  Rough Boomstick  */
UPDATE item_template SET dmg_min1 = 6.0, dmg_max1 = 13.0 WHERE entry=4362;

/*  Deadly Blunderbuss  */
UPDATE item_template SET dmg_min1 = 15.0, dmg_max1 = 28.0 WHERE entry=4369;

/*  Lovingly Crafted Boomstick  */
UPDATE item_template SET dmg_min1 = 12.0, dmg_max1 = 23.0 WHERE entry=4372;

/*  Silver-plated Shotgun  */
UPDATE item_template SET dmg_min1 = 19.0, dmg_max1 = 37.0 WHERE entry=4379;

/*  Moonsight Rifle  */
UPDATE item_template SET dmg_min1 = 14.0, dmg_max1 = 26.0 WHERE entry=4383;

/*  Craftsman's Monocle  */
UPDATE item_template SET RequiredLevel = 32 WHERE entry=4393;

/*  Raptor Hide Harness  */
UPDATE item_template SET stat_value1 = 13, stat_type2 = 0, stat_value2 = 0 WHERE entry=4455;

/*  Raptor Hide Belt  */
UPDATE item_template SET stat_type1 = 4, stat_value1 = 6 WHERE entry=4456;

/*  Beaded Raptor Collar  */
UPDATE item_template SET stat_type1 = 4, stat_type2 = 7, stat_value2 = 6 WHERE entry=4463;

/*  Ravenwood Bow  */
UPDATE item_template SET dmg_min1 = 17.0, dmg_max1 = 32.0 WHERE entry=4474;

/*  Beastwalker Robe  */
UPDATE item_template SET stat_type2 = 3, stat_value2 = 3, stat_type3 = 6, stat_value3 = 6 WHERE entry=4476;

/*  Pit Fighter's Shield  */
UPDATE item_template SET Quality = 2, stat_value2 = 3 WHERE entry=4507;

/*  Blood-tinged Armor  */
UPDATE item_template SET Quality = 2, stat_value1 = 5, stat_value2 = 15 WHERE entry=4508;

/*  Servomechanic Sledgehammer  */
UPDATE item_template SET stat_type1 = 0, stat_value1 = 0 WHERE entry=4548;

/*  Light Bow  */
UPDATE item_template SET dmg_min1 = 9.0, dmg_max1 = 18.0 WHERE entry=4576;

/*  Compact Shotgun  */
UPDATE item_template SET dmg_min1 = 7.0, dmg_max1 = 14.0 WHERE entry=4577;

/*  Walking Boots  */
UPDATE item_template SET stat_type2 = 3 WHERE entry=4660;

/*  Pulsating Crystalline Shard  */
UPDATE item_template SET Quality = 2 WHERE entry=4743;

/*  Blackwood Recurve Bow  */
UPDATE item_template SET dmg_min1 = 7.0, dmg_max1 = 14.0 WHERE entry=4763;

/*  Coppercloth Gloves  */
UPDATE item_template SET stat_type1 = 4, stat_value1 = 3 WHERE entry=4767;

/*  Test Wand JChow  */
UPDATE item_template SET dmg_min1 = 11.0, dmg_max1 = 21.0 WHERE entry=4912;

/*  Hickory Shortbow  */
UPDATE item_template SET dmg_min1 = 5.0, dmg_max1 = 10.0 WHERE entry=4931;

/*  Bloodhoof Hand Axe  */
UPDATE item_template SET dmg_min1 = 8.0, dmg_max1 = 16.0 WHERE entry=4965;

/*  Vigilant Buckler  */
UPDATE item_template SET Quality = 2, stat_value1 = 7 WHERE entry=4975;

/*  Mage Dragon Robe  */
UPDATE item_template SET stat_type1 = 4, stat_value1 = 7, stat_type2 = 6, stat_value2 = 18 WHERE entry=4989;

/*  Coral Band  */
UPDATE item_template SET stat_type1 = 7, stat_value1 = 4, stat_type2 = 5, stat_value2 = 3 WHERE entry=5000;

/*  Artisan's Trousers  */
UPDATE item_template SET stat_type1 = 3, stat_type2 = 6, stat_value2 = 9 WHERE entry=5016;

/*  Rhahk'Zor's Hammer  */
UPDATE item_template SET Quality = 1, dmg_min1 = 30.0, dmg_max1 = 46.0, bonding = 0, stat_type1 = 0, stat_value1 = 0 WHERE entry=5187;

/*  Thief's Blade  */
UPDATE item_template SET Quality = 2, dmg_min1 = 13.0, dmg_max1 = 25.0, stat_value1 = 3 WHERE entry=5192;

/*  Gold-flecked Gloves  */
UPDATE item_template SET Quality = 2, stat_type1 = 4, stat_value1 = 4, stat_type2 = 5, stat_value2 = 3 WHERE entry=5195;

/*  Smite's Reaver  */
UPDATE item_template SET Quality = 2, dmg_min1 = 14.0, dmg_max1 = 28.0, stat_type2 = 6, stat_value2 = 1, stat_value3 = 1 WHERE entry=5196;

/*  Cookie's Tenderizer  */
UPDATE item_template SET Quality = 2, dmg_min1 = 20.0, dmg_max1 = 39.0, stat_value1 = 3 WHERE entry=5197;

/*  Smelting Pants  */
UPDATE item_template SET Quality = 2, stat_value1 = 5, stat_type2 = 6, stat_value2 = 4 WHERE entry=5199;

/*  Impaling Harpoon  */
UPDATE item_template SET Quality = 2, dmg_min1 = 27.0, dmg_max1 = 42.0, stat_value1 = 7 WHERE entry=5200;

/*  Alchemist's Wand  */
UPDATE item_template SET dmg_min1 = 5.0, dmg_max1 = 11.0, bonding = 1, RequiredLevel = 0 WHERE entry=5235;

/*  Rugged Spaulders  */
UPDATE item_template SET Quality = 1, bonding = 0, stat_type1 = 0, stat_value1 = 0 WHERE entry=5254;

/*  Quilboar Tomahawk  */
UPDATE item_template SET dmg_min1 = 13.0, dmg_max1 = 26.0 WHERE entry=5255;

/*  Privateer Musket  */
UPDATE item_template SET dmg_min1 = 12.0, dmg_max1 = 24.0 WHERE entry=5309;

/*  Sea Dog Britches  */
UPDATE item_template SET stat_type1 = 4, stat_type2 = 6, stat_value2 = 4 WHERE entry=5310;

/*  Orcish Battle Bow  */
UPDATE item_template SET dmg_min1 = 7.0, dmg_max1 = 14.0 WHERE entry=5346;

/*  Serpent's Shoulders  */
UPDATE item_template SET Quality = 1, bonding = 0, stat_type1 = 0, stat_value1 = 0 WHERE entry=5404;

/*  Boahn's Fang  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=5423;

/*  Runescale Girdle  */
UPDATE item_template SET Quality = 2, stat_value1 = 5 WHERE entry=5425;

/*  Miner's Cape  */
UPDATE item_template SET Quality = 2, stat_value1 = 3 WHERE entry=5444;

/*  Mana Agate  */
UPDATE item_template SET RequiredLevel = 23 WHERE entry=5514;

/*  Iridescent Hammer  */
UPDATE item_template SET dmg_min1 = 18.0, dmg_max1 = 34.0, stat_type1 = 4, stat_type2 = 7, stat_value2 = 3 WHERE entry=5541;

/*  Fast Test Dagger  */
UPDATE item_template SET dmg_min1 = 10.0, dmg_max1 = 11.0 WHERE entry=5549;

/*  Fast Test Gun  */
UPDATE item_template SET dmg_min1 = 9.0, dmg_max1 = 10.0 WHERE entry=5550;

/*  Fast Test 1H Sword  */
UPDATE item_template SET dmg_min1 = 10.0, dmg_max1 = 11.0 WHERE entry=5555;

/*  Fast Test Wand  */
UPDATE item_template SET dmg_min1 = 10.0, dmg_max1 = 10.0 WHERE entry=5560;

/*  Ashwood Bow  */
UPDATE item_template SET dmg_min1 = 5.0, dmg_max1 = 11.0 WHERE entry=5596;

/*  Barbaric Harness  */
UPDATE item_template SET Quality = 1, bonding = 0, stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0 WHERE entry=5739;

/*  Centaur Longbow  */
UPDATE item_template SET dmg_min1 = 9.0, dmg_max1 = 18.0 WHERE entry=5748;

/*  Murloc Scale Belt  */
UPDATE item_template SET stat_type2 = 4, stat_value2 = 2 WHERE entry=5780;

/*  Murloc Scale Breastplate  */
UPDATE item_template SET stat_type1 = 4, stat_value1 = 5 WHERE entry=5781;

/*  Thick Murloc Armor  */
UPDATE item_template SET stat_type1 = 4, stat_value1 = 9 WHERE entry=5782;

/*  Murloc Scale Bracers  */
UPDATE item_template SET stat_type2 = 4, stat_value2 = 5 WHERE entry=5783;

/*  Lunaris Bow  */
UPDATE item_template SET dmg_min1 = 23.0, dmg_max1 = 43.0 WHERE entry=5817;

/*  Sunblaze Coif  */
UPDATE item_template SET stat_type1 = 6 WHERE entry=5819;

/*  Ring of Uber Resists (TEST)  */
UPDATE item_template SET fire_res = 315, nature_res = 315, frost_res = 315, shadow_res = 315, arcane_res = 315, stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0, stat_type3 = 0, stat_value3 = 0, stat_type4 = 0, stat_value4 = 0, stat_type5 = 0, stat_value5 = 0 WHERE entry=5828;

/*  Rift Bracers  */
UPDATE item_template SET Quality = 2, stat_value1 = 5 WHERE entry=5943;

/*  Blacksmith Hammer  */
UPDATE item_template SET dmg_min1 = 2.0, dmg_max1 = 3.0 WHERE entry=5956;

/*  Fine Leather Pants  */
UPDATE item_template SET stat_type2 = 6, stat_value2 = 4 WHERE entry=5958;

/*  Guardian Pants  */
UPDATE item_template SET stat_type2 = 6, stat_value2 = 8 WHERE entry=5962;

/*  Barbaric Leggings  */
UPDATE item_template SET stat_value1 = 7, stat_type2 = 6, stat_value2 = 7, stat_value3 = 7 WHERE entry=5963;

/*  Barbaric Shoulders  */
UPDATE item_template SET stat_value1 = 6, stat_type2 = 6, stat_type3 = 3, stat_value3 = 5 WHERE entry=5964;

/*  Guardian Cloak  */
UPDATE item_template SET stat_type2 = 5, stat_value2 = 5 WHERE entry=5965;

/*  Guardian Gloves  */
UPDATE item_template SET Quality = 1, bonding = 0, stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0 WHERE entry=5966;

/*  Serpent Gloves  */
UPDATE item_template SET Quality = 2, stat_type1 = 3, stat_value1 = 4, stat_type2 = 5, stat_value2 = 4 WHERE entry=5970;

/*  Golden Scale Bracers  */
UPDATE item_template SET Quality = 1, bonding = 0, stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0, stat_type3 = 0, stat_value3 = 0 WHERE entry=6040;

/*  Twain Random Sword  */
UPDATE item_template SET dmg_min1 = 50.0, dmg_max1 = 100.0 WHERE entry=6174;

/*  Kimbra Boots  */
UPDATE item_template SET stat_type1 = 3, stat_value1 = 4, stat_type2 = 6, stat_value2 = 3 WHERE entry=6191;

/*  Heavy Copper Maul  */
UPDATE item_template SET Quality = 1, dmg_min1 = 21.0, dmg_max1 = 32.0, bonding = 0, stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0, stat_type3 = 0, stat_value3 = 0 WHERE entry=6214;

/*  Arclight Spanner  */
UPDATE item_template SET dmg_min1 = 5.0, dmg_max1 = 8.0 WHERE entry=6219;

/*  Meteor Shard  */
UPDATE item_template SET RequiredLevel = 24 WHERE entry=6220;

/*  Bloody Apron  */
UPDATE item_template SET Quality = 2, stat_value1 = 8 WHERE entry=6226;

/*  Blue Overalls  */
UPDATE item_template SET stat_type1 = 4, stat_type2 = 7, stat_value2 = 4 WHERE entry=6263;

/*  Sacred Burial Trousers  */
UPDATE item_template SET stat_type1 = 4, stat_value1 = 3, stat_type3 = 6, stat_value3 = 9 WHERE entry=6282;

/*  Wolfmaster Cape  */
UPDATE item_template SET Quality = 2, stat_type1 = 7, stat_value1 = 2, stat_value2 = 4, RequiredLevel = 22 WHERE entry=6314;

/*  Steelarrow Crossbow  */
UPDATE item_template SET dmg_min1 = 29.0, dmg_max1 = 45.0 WHERE entry=6315;

/*  Girdle of the Blindwatcher  */
UPDATE item_template SET Quality = 2, stat_value1 = 3, stat_value2 = 5, RequiredLevel = 21 WHERE entry=6319;

/*  Commander's Crest  */
UPDATE item_template SET stat_type1 = 6, RequiredLevel = 23 WHERE entry=6320;

/*  Baron's Scepter  */
UPDATE item_template SET Quality = 2, dmg_min1 = 21.0, dmg_max1 = 40.0, stat_value1 = 4 WHERE entry=6323;

/*  Robes of Arugal  */
UPDATE item_template SET stat_value1 = 10, stat_type4 = 3, stat_value4 = 3, RequiredLevel = 24 WHERE entry=6324;

/*  Fenrus' Hide  */
UPDATE item_template SET Quality = 2, stat_value1 = 4, stat_value2 = 2, RequiredLevel = 21 WHERE entry=6340;

/*  Eerie Stable Lantern  */
UPDATE item_template SET Quality = 2, stat_value1 = 3 WHERE entry=6341;

/*  Rough Bronze Boots  */
UPDATE item_template SET Quality = 1, bonding = 0, stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0 WHERE entry=6350;

/*  Belt of Arugal  */
UPDATE item_template SET stat_type3 = 3, stat_value3 = 2, RequiredLevel = 24 WHERE entry=6392;

/*  Nightsky Trousers  */
UPDATE item_template SET stat_type2 = 3, stat_value2 = 5, stat_type3 = 6, stat_value3 = 10 WHERE entry=6405;

/*  Mistscape Gloves  */
UPDATE item_template SET stat_type2 = 3, stat_value2 = 4, stat_type3 = 5, stat_value3 = 9 WHERE entry=6428;

/*  Worn Turtle Shell Shield  */
UPDATE item_template SET Quality = 1, bonding = 0 WHERE entry=6447;

/*  Tail Spike  */
UPDATE item_template SET Quality = 2, dmg_min1 = 14.0, dmg_max1 = 26.0, stat_value1 = 2, stat_value2 = 2 WHERE entry=6448;

/*  Glowing Lizardscale Cloak  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=6449;

/*  Savage Trodders  */
UPDATE item_template SET Quality = 2, stat_value1 = 6 WHERE entry=6459;

/*  Slime-encrusted Pads  */
UPDATE item_template SET RequiredLevel = 22 WHERE entry=6461;

/*  Deep Fathom Ring  */
UPDATE item_template SET RequiredLevel = 21 WHERE entry=6463;

/*  Robe of the Moccasin  */
UPDATE item_template SET Quality = 2, stat_type1 = 4, stat_value1 = 2, stat_value2 = 2, stat_type3 = 6, stat_value3 = 6 WHERE entry=6465;

/*  Deviate Scale Belt  */
UPDATE item_template SET stat_type3 = 6 WHERE entry=6468;

/*  Venomstrike  */
UPDATE item_template SET dmg_min1 = 16.0, dmg_max1 = 30.0 WHERE entry=6469;

/*  Armor of the Fang  */
UPDATE item_template SET Quality = 2, stat_value1 = 2, stat_type2 = 6, stat_value2 = 7 WHERE entry=6473;

/*  Firewalker Boots  */
UPDATE item_template SET stat_type1 = 4, stat_value1 = 2, stat_type3 = 5, stat_value3 = 1 WHERE entry=6482;

/*  Mutant Scale Breastplate  */
UPDATE item_template SET RequiredLevel = 23 WHERE entry=6627;

/*  Sporid Cape  */
UPDATE item_template SET Quality = 2, stat_value1 = 3, stat_value2 = 2 WHERE entry=6629;

/*  Living Root  */
UPDATE item_template SET nature_res = 5 WHERE entry=6631;

/*  Feyscale Cloak  */
UPDATE item_template SET Quality = 2, stat_value1 = 3, stat_type2 = 6, stat_value2 = 2 WHERE entry=6632;

/*  Butcher's Slicer  */
UPDATE item_template SET Quality = 2, dmg_min1 = 23.0, dmg_max1 = 44.0, stat_value1 = 2, stat_value2 = 2 WHERE entry=6633;

/*  Haunting Blade  */
UPDATE item_template SET Quality = 2, dmg_min1 = 53.0, dmg_max1 = 80.0, stat_type1 = 6, stat_value1 = 9, RequiredLevel = 21 WHERE entry=6641;

/*  Phantom Armor  */
UPDATE item_template SET stat_type1 = 6 WHERE entry=6642;

/*  Band of Elven Grace  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=6678;

/*  Armor Piercer  */
UPDATE item_template SET Quality = 2, dmg_min1 = 41.0, dmg_max1 = 62.0, stat_value1 = 11 WHERE entry=6679;

/*  Thornspike  */
UPDATE item_template SET Quality = 1, dmg_min1 = 18.0, dmg_max1 = 35.0, bonding = 0, stat_type1 = 0, stat_value1 = 0 WHERE entry=6681;

/*  Death Speaker Robes  */
UPDATE item_template SET Quality = 2, stat_type4 = 0, stat_value4 = 0 WHERE entry=6682;

/*  Death Speaker Mantle  */
UPDATE item_template SET Quality = 2 WHERE entry=6685;

/*  Tusken Helm  */
UPDATE item_template SET Quality = 2, stat_value1 = 9, stat_value2 = 8, RequiredLevel = 28 WHERE entry=6686;

/*  Corpsemaker  */
UPDATE item_template SET RequiredLevel = 29 WHERE entry=6687;

/*  Whisperwind Headdress  */
UPDATE item_template SET Quality = 2 WHERE entry=6688;

/*  Ferine Leggings  */
UPDATE item_template SET Quality = 2, stat_value1 = 9, stat_value2 = 8 WHERE entry=6690;

/*  Pronged Reaver  */
UPDATE item_template SET RequiredLevel = 31 WHERE entry=6692;

/*  Agamaggan's Clutch  */
UPDATE item_template SET RequiredLevel = 31 WHERE entry=6693;

/*  Heart of Agamaggan  */
UPDATE item_template SET RequiredLevel = 31 WHERE entry=6694;

/*  Nightstalker Bow  */
UPDATE item_template SET dmg_min1 = 19.0, dmg_max1 = 36.0 WHERE entry=6696;

/*  Batwing Mantle  */
UPDATE item_template SET stat_type3 = 3, stat_value3 = 3 WHERE entry=6697;

/*  Moonglow Vest  */
UPDATE item_template SET stat_type1 = 6, stat_value1 = 4 WHERE entry=6709;

/*  Medal of Courage  */
UPDATE item_template SET Quality = 2, stat_type1 = 6, stat_value1 = 3, stat_type2 = 7, stat_value2 = 9 WHERE entry=6723;

/*  Cliffrunner's Aim  */
UPDATE item_template SET dmg_min1 = 19.0, dmg_max1 = 36.0 WHERE entry=6739;

/*  Gloves of Kapelan  */
UPDATE item_template SET stat_type1 = 4, stat_value1 = 7, stat_type2 = 5, stat_value2 = 6 WHERE entry=6744;

/*  White Woolen Dress  */
UPDATE item_template SET ItemLevel = 22, RequiredLevel = 17 WHERE entry=6787;

/*  Hellion Boots  */
UPDATE item_template SET stat_type1 = 3, stat_value1 = 3, stat_type3 = 5, stat_value3 = 5 WHERE entry=6791;

/*  Blasting Hackbut  */
UPDATE item_template SET dmg_min1 = 30.0, dmg_max1 = 56.0 WHERE entry=6798;

/*  Baroque Apron  */
UPDATE item_template SET stat_type1 = 4, stat_value1 = 6, stat_type3 = 6, stat_value3 = 7 WHERE entry=6801;

/*  Windstorm Hammer  */
UPDATE item_template SET Quality = 2, ItemLevel = 40, dmg_min1 = 32.0, dmg_max1 = 61.0, stat_value1 = 4, stat_value2 = 5 WHERE entry=6804;

/*  Dancing Flame  */
UPDATE item_template SET Quality = 2, dmg_min1 = 32.0, dmg_max1 = 60.0 WHERE entry=6806;

/*  Black Tuxedo  */
UPDATE item_template SET RequiredLevel = 0 WHERE entry=6834;

/*  Glowing Thresher Cape  */
UPDATE item_template SET stat_type2 = 4 WHERE entry=6901;

/*  Bands of Serra'kis  */
UPDATE item_template SET Quality = 2, stat_type3 = 0, stat_value3 = 0 WHERE entry=6902;

/*  Gaze Dreamer Pants  */
UPDATE item_template SET Quality = 2 WHERE entry=6903;

/*  Reef Axe  */
UPDATE item_template SET Quality = 2, dmg_min1 = 48.0, dmg_max1 = 73.0, stat_value1 = 5, stat_type2 = 6, stat_value2 = 7 WHERE entry=6905;

/*  Tortoise Armor  */
UPDATE item_template SET stat_type1 = 0, stat_value1 = 0 WHERE entry=6907;

/*  Ghamoo-ra's Bind  */
UPDATE item_template SET Quality = 2 WHERE entry=6908;

/*  Strike of the Hydra  */
UPDATE item_template SET RequiredLevel = 26 WHERE entry=6909;

/*  Leech Pants  */
UPDATE item_template SET RequiredLevel = 26 WHERE entry=6910;

/*  Moss Cinch  */
UPDATE item_template SET RequiredLevel = 26 WHERE entry=6911;

/*  Nimbus Boots  */
UPDATE item_template SET stat_type1 = 3, stat_value1 = 3, stat_type2 = 6, stat_value2 = 5 WHERE entry=6998;

/*  Skinning Knife  */
UPDATE item_template SET dmg_min1 = 2.0, dmg_max1 = 5.0 WHERE entry=7005;

/*  Azure Silk Hood  */
UPDATE item_template SET Quality = 1, bonding = 0, stat_type1 = 0, stat_value1 = 0 WHERE entry=7048;

/*  Silk Headband  */
UPDATE item_template SET Quality = 1, bonding = 0, stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0, stat_type3 = 0, stat_value3 = 0 WHERE entry=7050;

/*  Robe of Power  */
UPDATE item_template SET stat_value1 = 12, stat_type2 = 6, stat_value2 = 8, stat_type3 = 0, stat_value3 = 0 WHERE entry=7054;

/*  Crimson Silk Vest  */
UPDATE item_template SET Quality = 1, ItemLevel = 37, bonding = 0, stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0, RequiredLevel = 32 WHERE entry=7058;

/*  Crimson Silk Pantaloons  */
UPDATE item_template SET Quality = 1, bonding = 0, stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0 WHERE entry=7062;

/*  Twain Random Sword FOO  */
UPDATE item_template SET dmg_min1 = 50.0, dmg_max1 = 100.0 WHERE entry=7170;

/*  VanCleef's Boots  */
UPDATE item_template SET Quality = 2, ItemLevel = 25, stat_value1 = 6, RequiredLevel = 20 WHERE entry=7187;

/*  Stormwind Guard Shield  */
UPDATE item_template SET bonding = 2, shadow_res = 0, stat_type1 = 4, stat_value1 = 2, stat_type2 = 7, stat_value2 = 4 WHERE entry=7188;

/*  Light Leather Bracers  */
UPDATE item_template SET Quality = 1, bonding = 0, stat_type1 = 0, stat_value1 = 0 WHERE entry=7281;

/*  Light Leather Pants  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=7282;

/*  Nimble Leather Gloves  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=7285;

/*  Efflorescent Robe  */
UPDATE item_template SET stat_type1 = 7, stat_value1 = 9, stat_type2 = 5, stat_value2 = 2 WHERE entry=7334;

/*  Fletcher's Gloves  */
UPDATE item_template SET Quality = 2, stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0 WHERE entry=7348;

/*  Green Whelp Bracers  */
UPDATE item_template SET stat_type1 = 6, stat_value1 = 8, stat_type2 = 0, stat_value2 = 0, stat_type3 = 0, stat_value3 = 0 WHERE entry=7386;

/*  Swift Boots  */
UPDATE item_template SET stat_type1 = 6 WHERE entry=7391;

/*  Ley Orb  */
UPDATE item_template SET ItemLevel = 10 WHERE entry=7508;

/*  Torturing Poker  */
UPDATE item_template SET dmg_min1 = 21.0, dmg_max1 = 39.0 WHERE entry=7682;

/*  Bloody Brass Knuckles  */
UPDATE item_template SET Quality = 1, dmg_min1 = 18.0, dmg_max1 = 35.0, bonding = 0, stat_type1 = 0, stat_value1 = 0 WHERE entry=7683;

/*  Bloodmage Mantle  */
UPDATE item_template SET Quality = 2, stat_type3 = 0, stat_value3 = 0 WHERE entry=7684;

/*  Embalmed Shroud  */
UPDATE item_template SET stat_type1 = 6, stat_value1 = 12, stat_type3 = 5, stat_value3 = 11 WHERE entry=7691;

/*  Blighted Leggings  */
UPDATE item_template SET stat_type1 = 6, stat_value1 = 17 WHERE entry=7709;

/*  Robe of Doan  */
UPDATE item_template SET Quality = 2 WHERE entry=7711;

/*  Mantle of Doan  */
UPDATE item_template SET Quality = 2, stat_value1 = 8, stat_type3 = 0, stat_value3 = 0 WHERE entry=7712;

/*  Illusionary Rod  */
UPDATE item_template SET stat_type2 = 6, stat_value2 = 10, stat_type3 = 7, stat_value3 = 7 WHERE entry=7713;

/*  Mograine's Might  */
UPDATE item_template SET stat_type1 = 6 WHERE entry=7723;

/*  Aegis of the Scarlet Commander  */
UPDATE item_template SET stat_type1 = 6 WHERE entry=7726;

/*  Watchman Pauldrons  */
UPDATE item_template SET stat_type3 = 6 WHERE entry=7727;

/*  Chesterfall Musket  */
UPDATE item_template SET dmg_min1 = 26.0, dmg_max1 = 50.0 WHERE entry=7729;

/*  Ghostshard Talisman  */
UPDATE item_template SET stat_type2 = 6, stat_value2 = 4 WHERE entry=7731;

/*  Harbinger Boots  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=7754;

/*  Dog Training Gloves  */
UPDATE item_template SET Quality = 2, stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0 WHERE entry=7756;

/*  Archon Chestpiece  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=7759;

/*  Warchief Kilt  */
UPDATE item_template SET stat_type3 = 4, stat_value3 = 5 WHERE entry=7760;

/*  Barbaric Iron Shoulders  */
UPDATE item_template SET stat_type2 = 3 WHERE entry=7913;

/*  Barbaric Iron Helm  */
UPDATE item_template SET stat_type1 = 3, stat_type2 = 4 WHERE entry=7915;

/*  Barbaric Iron Boots  */
UPDATE item_template SET stat_type2 = 3 WHERE entry=7916;

/*  Heavy Mithril Shoulder  */
UPDATE item_template SET ItemLevel = 41, stat_type2 = 0, stat_value2 = 0 WHERE entry=7918;

/*  Heavy Mithril Gauntlet  */
UPDATE item_template SET ItemLevel = 41, stat_value1 = 8 WHERE entry=7919;

/*  Mithril Scale Pants  */
UPDATE item_template SET stat_type1 = 6, stat_value1 = 11, stat_type2 = 0, stat_value2 = 0 WHERE entry=7920;

/*  Heavy Mithril Pants  */
UPDATE item_template SET ItemLevel = 42, stat_value1 = 11 WHERE entry=7921;

/*  Steel Plate Helm  */
UPDATE item_template SET Quality = 1, bonding = 0, stat_type1 = 0, stat_value1 = 0 WHERE entry=7922;

/*  Mithril Scale Bracers  */
UPDATE item_template SET stat_type1 = 6 WHERE entry=7924;

/*  Ornate Mithril Pants  */
UPDATE item_template SET ItemLevel = 44, stat_value1 = 12 WHERE entry=7926;

/*  Ornate Mithril Gloves  */
UPDATE item_template SET ItemLevel = 44, stat_type1 = 0, stat_value1 = 0 WHERE entry=7927;

/*  Heavy Mithril Breastplate  */
UPDATE item_template SET stat_value1 = 15, stat_type2 = 0, stat_value2 = 0 WHERE entry=7930;

/*  Mithril Coif  */
UPDATE item_template SET stat_type1 = 6, stat_value1 = 13, stat_value2 = 12 WHERE entry=7931;

/*  Mithril Scale Shoulders  */
UPDATE item_template SET stat_type1 = 6, stat_value1 = 10, stat_value2 = 10 WHERE entry=7932;

/*  Heavy Mithril Boots  */
UPDATE item_template SET stat_value1 = 12, stat_type2 = 0, stat_value2 = 0 WHERE entry=7933;

/*  Heavy Mithril Helm  */
UPDATE item_template SET stat_value1 = 15, stat_type2 = 0, stat_value2 = 0 WHERE entry=7934;

/*  Heavy Mithril Axe  */
UPDATE item_template SET stat_type1 = 7, stat_value1 = 7 WHERE entry=7941;

/*  Wicked Mithril Blade  */
UPDATE item_template SET dmg_min1 = 43.0, dmg_max1 = 80.0, stat_type1 = 4, stat_value1 = 6, stat_type2 = 3 WHERE entry=7943;

/*  Bronze Warhammer  */
UPDATE item_template SET Quality = 1, dmg_min1 = 37.0, dmg_max1 = 57.0, bonding = 0, stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0 WHERE entry=7956;

/*  Bronze Greatsword  */
UPDATE item_template SET Quality = 1, dmg_min1 = 38.0, dmg_max1 = 58.0, bonding = 0, stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0, stat_type3 = 0, stat_value3 = 0 WHERE entry=7957;

/*  Bronze Battle Axe  */
UPDATE item_template SET Quality = 1, dmg_min1 = 39.0, dmg_max1 = 59.0, bonding = 0, stat_type1 = 0, stat_value1 = 0 WHERE entry=7958;

/*  Blight  */
UPDATE item_template SET dmg_min1 = 93.0, dmg_max1 = 141.0 WHERE entry=7959;

/*  Steel Breastplate  */
UPDATE item_template SET stat_type1 = 0, stat_value1 = 0 WHERE entry=7963;

/*  Hibernal Gloves  */
UPDATE item_template SET stat_type1 = 3, stat_type2 = 5, stat_value2 = 10 WHERE entry=8110;

/*  Hibernal Pants  */
UPDATE item_template SET stat_type2 = 3, stat_type3 = 6, stat_value3 = 11 WHERE entry=8112;

/*  Comfortable Leather Hat  */
UPDATE item_template SET Quality = 2, stat_type1 = 7, stat_value1 = 11, stat_type2 = 6, stat_value2 = 10 WHERE entry=8174;

/*  Cadet's Bow  */
UPDATE item_template SET dmg_min1 = 3.0, dmg_max1 = 6.0 WHERE entry=8179;

/*  Hunting Bow  */
UPDATE item_template SET dmg_min1 = 8.0, dmg_max1 = 16.0 WHERE entry=8180;

/*  Hunting Rifle  */
UPDATE item_template SET dmg_min1 = 5.0, dmg_max1 = 11.0 WHERE entry=8181;

/*  Pellet Rifle  */
UPDATE item_template SET dmg_min1 = 4.0, dmg_max1 = 9.0 WHERE entry=8182;

/*  Precision Bow  */
UPDATE item_template SET dmg_min1 = 20.0, dmg_max1 = 37.0 WHERE entry=8183;

/*  Turtle Scale Gloves  */
UPDATE item_template SET stat_type2 = 6, stat_value2 = 6 WHERE entry=8187;

/*  Explosive Shotgun  */
UPDATE item_template SET dmg_min1 = 22.0, dmg_max1 = 42.0 WHERE entry=8188;

/*  Turtle Scale Breastplate  */
UPDATE item_template SET stat_type2 = 6, stat_value2 = 9 WHERE entry=8189;

/*  Turtle Scale Bracers  */
UPDATE item_template SET stat_type1 = 0, stat_value1 = 0 WHERE entry=8198;

/*  Big Voodoo Robe  */
UPDATE item_template SET stat_type2 = 6, stat_value2 = 9 WHERE entry=8200;

/*  Big Voodoo Mask  */
UPDATE item_template SET stat_type2 = 6, stat_value2 = 9 WHERE entry=8201;

/*  Big Voodoo Pants  */
UPDATE item_template SET stat_type2 = 5, stat_value2 = 10 WHERE entry=8202;

/*  Tough Scorpid Breastplate  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=8203;

/*  Tough Scorpid Gloves  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=8204;

/*  Tough Scorpid Bracers  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=8205;

/*  Tough Scorpid Leggings  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=8206;

/*  Tough Scorpid Shoulders  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=8207;

/*  Tough Scorpid Helm  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=8208;

/*  Tough Scorpid Boots  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=8209;

/*  Big Voodoo Cloak  */
UPDATE item_template SET stat_value1 = 9, stat_value2 = 5, stat_type3 = 0, stat_value3 = 0 WHERE entry=8216;

/*  Imperial Red Boots  */
UPDATE item_template SET stat_type2 = 3, stat_value2 = 4 WHERE entry=8246;

/*  Imperial Red Mantle  */
UPDATE item_template SET stat_type1 = 3, stat_value1 = 4, stat_type2 = 5, stat_value2 = 15 WHERE entry=8250;

/*  Imperial Red Pants  */
UPDATE item_template SET stat_type1 = 3, stat_type2 = 5, stat_value2 = 15 WHERE entry=8251;

/*  Imperial Red Sash  */
UPDATE item_template SET stat_type1 = 4, stat_value1 = 4, stat_type2 = 5, stat_value2 = 15 WHERE entry=8253;

/*  Wolfshead Helm  */
UPDATE item_template SET stat_type1 = 6 WHERE entry=8345;

/*  Gauntlets of the Sea  */
UPDATE item_template SET stat_value1 = 7, stat_type2 = 0, stat_value2 = 0 WHERE entry=8346;

/*  Dragonscale Gauntlets  */
UPDATE item_template SET stat_type1 = 6, stat_value1 = 6 WHERE entry=8347;

/*  Helm of Fire  */
UPDATE item_template SET stat_value1 = 17, stat_value2 = 10 WHERE entry=8348;

/*  Feathered Breastplate  */
UPDATE item_template SET stat_type1 = 6, stat_type2 = 5, stat_value2 = 10, stat_type3 = 0, stat_value3 = 0 WHERE entry=8349;

/*  Dragonscale Breastplate  */
UPDATE item_template SET fire_res = 13, frost_res = 13, shadow_res = 12, stat_value1 = 10, stat_type2 = 0, stat_value2 = 0, stat_type3 = 0, stat_value3 = 0 WHERE entry=8367;

/*  Golden Scale Gauntlets  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=9366;

/*  Expert Goldminer's Helmet  */
UPDATE item_template SET stat_type3 = 0, stat_value3 = 0 WHERE entry=9375;

/*  Sang'thraze the Deflector  */
UPDATE item_template SET dmg_min1 = 34.0, dmg_max1 = 65.0 WHERE entry=9379;

/*  Revelosh's Boots  */
UPDATE item_template SET Quality = 2, stat_type1 = 0, stat_value1 = 0 WHERE entry=9387;

/*  Revelosh's Armguards  */
UPDATE item_template SET Quality = 2, stat_type1 = 0, stat_value1 = 0 WHERE entry=9388;

/*  Revelosh's Spaulders  */
UPDATE item_template SET Quality = 2, stat_type1 = 0, stat_value1 = 0 WHERE entry=9389;

/*  Revelosh's Gloves  */
UPDATE item_template SET Quality = 2, stat_type1 = 0, stat_value1 = 0 WHERE entry=9390;

/*  Legguards of the Vault  */
UPDATE item_template SET stat_type2 = 4, stat_value2 = 13, stat_type4 = 6, stat_value4 = 5 WHERE entry=9396;

/*  Worn Running Boots  */
UPDATE item_template SET Quality = 2, stat_value1 = 11, stat_value2 = 3 WHERE entry=9398;

/*  Baelog's Shortbow  */
UPDATE item_template SET Quality = 1, dmg_min1 = 26.0, dmg_max1 = 50.0, bonding = 0, stat_type1 = 0, stat_value1 = 0 WHERE entry=9400;

/*  Battered Viking Shield  */
UPDATE item_template SET Quality = 1, bonding = 0, stat_value1 = 8, stat_type2 = 6, stat_value2 = 4 WHERE entry=9403;

/*  Stoneweaver Leggings  */
UPDATE item_template SET stat_type3 = 5, stat_value3 = 8 WHERE entry=9407;

/*  Ironshod Bludgeon  */
UPDATE item_template SET stat_type1 = 7, stat_type2 = 4 WHERE entry=9408;

/*  Rockshard Pauldrons  */
UPDATE item_template SET Quality = 2, stat_type1 = 4, stat_value1 = 2, stat_value2 = 9, stat_type3 = 6, stat_value3 = 9 WHERE entry=9411;

/*  Galgann's Fireblaster  */
UPDATE item_template SET dmg_min1 = 44.0, dmg_max1 = 84.0, RequiredLevel = 42 WHERE entry=9412;

/*  The Rockpounder  */
UPDATE item_template SET RequiredLevel = 44 WHERE entry=9413;

/*  Oilskin Leggings  */
UPDATE item_template SET Quality = 2, stat_value1 = 13, stat_type2 = 6, stat_value2 = 12, RequiredLevel = 41 WHERE entry=9414;

/*  Grimlok's Tribal Vestments  */
UPDATE item_template SET stat_value2 = 20, RequiredLevel = 42 WHERE entry=9415;

/*  Grimlok's Charge  */
UPDATE item_template SET stat_type2 = 4, stat_value2 = 10, stat_type3 = 7, stat_value3 = 15, RequiredLevel = 42 WHERE entry=9416;

/*  Stoneslayer  */
UPDATE item_template SET RequiredLevel = 44 WHERE entry=9418;

/*  Galgann's Firehammer  */
UPDATE item_template SET Quality = 2, dmg_min1 = 42.0, dmg_max1 = 79.0, stat_type1 = 0, stat_value1 = 0, RequiredLevel = 41 WHERE entry=9419;

/*  Adventurer's Pith Helmet  */
UPDATE item_template SET stat_type1 = 6 WHERE entry=9420;

/*  Shadowforge Bushmaster  */
UPDATE item_template SET dmg_min1 = 46.0, dmg_max1 = 86.0, shadow_res = 7, stat_type1 = 0, stat_value1 = 0 WHERE entry=9422;

/*  Monolithic Bow  */
UPDATE item_template SET dmg_min1 = 41.0, dmg_max1 = 77.0, stat_type1 = 4, stat_value1 = 6, stat_type2 = 3, stat_value2 = 3 WHERE entry=9426;

/*  Miner's Hat of the Deep  */
UPDATE item_template SET stat_value1 = 10, stat_value2 = 17, stat_type4 = 3, stat_value4 = 4 WHERE entry=9429;

/*  Spaulders of a Lost Age  */
UPDATE item_template SET stat_value1 = 16, stat_type2 = 6, stat_value2 = 7 WHERE entry=9430;

/*  Skullplate Bracers  */
UPDATE item_template SET stat_type3 = 6 WHERE entry=9432;

/*  Forgotten Wraps  */
UPDATE item_template SET stat_type3 = 3, stat_value3 = 3 WHERE entry=9433;

/*  Grubbis Paws  */
UPDATE item_template SET stat_type3 = 6 WHERE entry=9445;

/*  Electrocutioner Leg  */
UPDATE item_template SET RequiredLevel = 29 WHERE entry=9446;

/*  Electrocutioner Lagnut  */
UPDATE item_template SET RequiredLevel = 29 WHERE entry=9447;

/*  Spidertank Oilrag  */
UPDATE item_template SET Quality = 2, stat_type1 = 0, stat_value1 = 0 WHERE entry=9448;

/*  Manual Crowd Pummeler  */
UPDATE item_template SET RequiredLevel = 29 WHERE entry=9449;

/*  Gnomebot Operating Boots  */
UPDATE item_template SET Quality = 2, stat_type2 = 6 WHERE entry=9450;

/*  Hydrocane  */
UPDATE item_template SET dmg_min1 = 48.0, dmg_max1 = 73.0 WHERE entry=9452;

/*  Glass Shooter  */
UPDATE item_template SET dmg_min1 = 36.0, dmg_max1 = 68.0 WHERE entry=9456;

/*  Thermaplugg's Central Core  */
UPDATE item_template SET RequiredLevel = 32 WHERE entry=9458;

/*  Thermaplugg's Left Arm  */
UPDATE item_template SET RequiredLevel = 32 WHERE entry=9459;

/*  Charged Gear  */
UPDATE item_template SET RequiredLevel = 32 WHERE entry=9461;

/*  Gahz'rilla Fang  */
UPDATE item_template SET Quality = 2, dmg_min1 = 35.0, dmg_max1 = 66.0 WHERE entry=9467;

/*  Gahz'rilla Scale Armor  */
UPDATE item_template SET stat_type2 = 6, stat_value2 = 23 WHERE entry=9469;

/*  Bad Mojo Mask  */
UPDATE item_template SET stat_value1 = 24 WHERE entry=9470;

/*  Jinxed Hoodoo Skin  */
UPDATE item_template SET stat_type1 = 6, stat_value1 = 20, stat_type2 = 4 WHERE entry=9473;

/*  Jinxed Hoodoo Kilt  */
UPDATE item_template SET stat_type1 = 6, stat_type2 = 5, stat_value2 = 10 WHERE entry=9474;

/*  Big Bad Pauldrons  */
UPDATE item_template SET stat_type3 = 6 WHERE entry=9476;

/*  Embrace of the Lycan  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=9479;

/*  Hi-tech Supergun  */
UPDATE item_template SET dmg_min1 = 23.0, dmg_max1 = 43.0 WHERE entry=9487;

/*  Hotshot Pilot's Gloves  */
UPDATE item_template SET stat_type4 = 3, stat_value4 = 3 WHERE entry=9491;

/*  Electromagnetic Gigaflux Reactivator  */
UPDATE item_template SET RequiredLevel = 32 WHERE entry=9492;

/*  Petrolspill Leggings  */
UPDATE item_template SET fire_res = -10 WHERE entry=9509;

/*  Ley Staff  */
UPDATE item_template SET ItemLevel = 10, dmg_min1 = 16.0, dmg_max1 = 25.0, stat_value1 = 1, stat_value2 = 1 WHERE entry=9513;

/*  Durtfeet Stompers  */
UPDATE item_template SET stat_type1 = 4 WHERE entry=9519;

/*  Skilled Handling Gloves  */
UPDATE item_template SET stat_type2 = 3, stat_value2 = 6, stat_type3 = 5, stat_value3 = 10 WHERE entry=9634;

/*  Swashbuckler Sash  */
UPDATE item_template SET stat_type1 = 4, stat_value1 = 10, stat_type2 = 7, stat_value2 = 9 WHERE entry=9636;

/*  Lifeblood Amulet  */
UPDATE item_template SET stat_type1 = 6, stat_value1 = 5, stat_type2 = 7, stat_value2 = 13 WHERE entry=9641;

/*  Royal Highmark Vestments  */
UPDATE item_template SET Quality = 2 WHERE entry=9649;

/*  Honorguard Chestpiece  */
UPDATE item_template SET Quality = 2, stat_type1 = 4, stat_value1 = 22, stat_value2 = 3, stat_type3 = 5, stat_value3 = 3 WHERE entry=9650;

/*  Gryphon Rider's Stormhammer  */
UPDATE item_template SET Quality = 2, dmg_min1 = 59.0, dmg_max1 = 111.0, stat_type1 = 0, stat_value1 = 0 WHERE entry=9651;

/*  Gryphon Rider's Leggings  */
UPDATE item_template SET Quality = 2, stat_value1 = 15, stat_value2 = 15 WHERE entry=9652;

/*  Speedy Racer Goggles  */
UPDATE item_template SET stat_type1 = 3, stat_type2 = 5, stat_value2 = 14 WHERE entry=9653;

/*  Boots of the Maharishi  */
UPDATE item_template SET stat_type2 = 3, stat_value2 = 4, stat_type3 = 5, stat_value3 = 9 WHERE entry=9658;

/*  Strength of the Treant  */
UPDATE item_template SET Quality = 2, ItemLevel = 50, dmg_min1 = 115.0, dmg_max1 = 173.0, stat_value1 = 7, stat_value2 = 18 WHERE entry=9683;

/*  Force of the Hippogryph  */
UPDATE item_template SET Quality = 2, dmg_min1 = 51.0, dmg_max1 = 95.0, stat_value1 = 9 WHERE entry=9684;

/*  Will of the Mountain Giant  */
UPDATE item_template SET dmg_min1 = 88.0, dmg_max1 = 133.0, stat_type1 = 4, stat_value1 = 15, stat_type2 = 7, stat_value2 = 14 WHERE entry=9685;

/*  Spirit of the Faerie Dragon  */
UPDATE item_template SET Quality = 2, dmg_min1 = 55.0, dmg_max1 = 103.0, stat_value1 = 9 WHERE entry=9686;

/*  Reforged Blade of Heroes  */
UPDATE item_template SET dmg_min1 = 31.0, dmg_max1 = 59.0 WHERE entry=9718;

/*  White Bandit Mask  */
UPDATE item_template SET stat_type1 = 3, stat_type2 = 4, stat_value2 = 11 WHERE entry=10008;

/*  Dreamweave Vest  */
UPDATE item_template SET stat_type1 = 6 WHERE entry=10021;

/*  Admiral's Hat  */
UPDATE item_template SET stat_type1 = 0, stat_value1 = 0 WHERE entry=10030;

/*  Tuxedo Pants  */
UPDATE item_template SET RequiredLevel = 30 WHERE entry=10035;

/*  Tuxedo Jacket  */
UPDATE item_template SET ItemLevel = 35, RequiredLevel = 30 WHERE entry=10036;

/*  Simple Kilt  */
UPDATE item_template SET Quality = 1, bonding = 0, stat_type1 = 0, stat_value1 = 0 WHERE entry=10047;

/*  Colorful Kilt  */
UPDATE item_template SET stat_type1 = 3, stat_type2 = 6, stat_value2 = 5 WHERE entry=10048;

/*  Blackened Defias Belt  */
UPDATE item_template SET Quality = 2, stat_type1 = 4, stat_value1 = 5 WHERE entry=10403;

/*  Footpads of the Fang  */
UPDATE item_template SET Quality = 2, stat_value1 = 4, stat_value2 = 4 WHERE entry=10411;

/*  Belt of the Fang  */
UPDATE item_template SET Quality = 2, stat_value1 = 3, stat_value2 = 2 WHERE entry=10412;

/*  Gloves of the Fang  */
UPDATE item_template SET Quality = 2, stat_value1 = 3, stat_value2 = 2 WHERE entry=10413;

/*  Silvered Bronze Leggings  */
UPDATE item_template SET stat_type3 = 6 WHERE entry=10423;

/*  Mithril Blunderbuss  */
UPDATE item_template SET dmg_min1 = 36.0, dmg_max1 = 68.0 WHERE entry=10508;

/*  Mithril Heavy-bore Rifle  */
UPDATE item_template SET dmg_min1 = 41.0, dmg_max1 = 76.0 WHERE entry=10510;

/*  Gnomish Goggles  */
UPDATE item_template SET stat_type1 = 3, stat_type3 = 6, stat_value3 = 9 WHERE entry=10545;

/*  Foreman Vest  */
UPDATE item_template SET stat_type1 = 4, stat_value1 = 2 WHERE entry=10553;

/*  Foreman Pants  */
UPDATE item_template SET stat_type1 = 4, stat_type2 = 7, stat_value2 = 1 WHERE entry=10554;

/*  Resist Test Item  */
UPDATE item_template SET holy_res = -50, fire_res = -50, nature_res = -50, frost_res = -50, shadow_res = -50 WHERE entry=10555;

/*  Quillshooter  */
UPDATE item_template SET dmg_min1 = 31.0, dmg_max1 = 58.0 WHERE entry=10567;

/*  Corpseshroud  */
UPDATE item_template SET stat_type3 = 3, stat_value3 = 5 WHERE entry=10574;

/*  Briar Tredders  */
UPDATE item_template SET stat_type2 = 3, stat_value2 = 5 WHERE entry=10582;

/*  Stormgale Fists  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=10584;

/*  Stinging Bow  */
UPDATE item_template SET dmg_min1 = 36.0, dmg_max1 = 67.0, stat_type1 = 4 WHERE entry=10624;

/*  Mistwalker Boots  */
UPDATE item_template SET stat_value2 = 18 WHERE entry=10629;

/*  Soulcatcher Halo  */
UPDATE item_template SET stat_value1 = 25, stat_type2 = 6 WHERE entry=10630;

/*  Murkwater Gauntlets  */
UPDATE item_template SET stat_type1 = 4, stat_value1 = 13, stat_type3 = 7, stat_value3 = 12 WHERE entry=10631;

/*  Slimescale Bracers  */
UPDATE item_template SET stat_type1 = 6, stat_value1 = 13, stat_type3 = 7, stat_value3 = 4 WHERE entry=10632;

/*  Silvershell Leggings  */
UPDATE item_template SET stat_type3 = 6 WHERE entry=10633;

/*  Mindseye Circle  */
UPDATE item_template SET stat_value2 = 12 WHERE entry=10634;

/*  Brewer's Gloves  */
UPDATE item_template SET stat_type2 = 4, stat_value2 = 2 WHERE entry=10637;

/*  Will of the Mountain Giant  */
UPDATE item_template SET Quality = 2, dmg_min1 = 88.0, dmg_max1 = 133.0, stat_value1 = 15, stat_value2 = 14 WHERE entry=10652;

/*  Jutebraid Gloves  */
UPDATE item_template SET stat_type1 = 4, stat_type2 = 5, stat_value2 = 6 WHERE entry=10654;

/*  Aegis of Battle  */
UPDATE item_template SET Quality = 2, stat_value1 = 10, stat_type2 = 3, stat_value2 = 6 WHERE entry=10686;

/*  Encarmine Boots  */
UPDATE item_template SET stat_type1 = 4, stat_value1 = 4, stat_type3 = 5, stat_value3 = 8 WHERE entry=10700;

/*  Firwillow Wristbands  */
UPDATE item_template SET stat_type1 = 3, stat_value1 = 2, stat_type2 = 5, stat_value2 = 10 WHERE entry=10705;

/*  Dragonflight Leggings  */
UPDATE item_template SET stat_type1 = 3, stat_value1 = 13, stat_type2 = 4, stat_type3 = 6, stat_value3 = 14 WHERE entry=10742;

/*  Gemburst Circlet  */
UPDATE item_template SET stat_type1 = 3, stat_value1 = 5, stat_type4 = 7, stat_value4 = 9 WHERE entry=10751;

/*  Swine Fists  */
UPDATE item_template SET Quality = 2, stat_value1 = 8, stat_value2 = 8 WHERE entry=10760;

/*  Coldrage Dagger  */
UPDATE item_template SET RequiredLevel = 39 WHERE entry=10761;

/*  Robes of the Lich  */
UPDATE item_template SET stat_value2 = 20, stat_type3 = 0, stat_value3 = 0, RequiredLevel = 39 WHERE entry=10762;

/*  Icemetal Barbute  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=10763;

/*  Deathchill Armor  */
UPDATE item_template SET stat_type1 = 6, stat_value1 = 20, stat_type3 = 7, stat_value3 = 3, RequiredLevel = 39 WHERE entry=10764;

/*  Bonefingers  */
UPDATE item_template SET Quality = 2, RequiredLevel = 38 WHERE entry=10765;

/*  Plaguerot Sprig  */
UPDATE item_template SET shadow_res = 7 WHERE entry=10766;

/*  Glowing Eye of Mordresh  */
UPDATE item_template SET stat_type1 = 6, stat_type2 = 5, stat_value2 = 5 WHERE entry=10769;

/*  Mordresh's Lifeless Skull  */
UPDATE item_template SET stat_type1 = 6, stat_value1 = 11, stat_type2 = 7, stat_value2 = 5 WHERE entry=10770;

/*  Deathmage Sash  */
UPDATE item_template SET stat_value1 = 15 WHERE entry=10771;

/*  Glutton's Cleaver  */
UPDATE item_template SET Quality = 2, dmg_min1 = 32.0, dmg_max1 = 60.0 WHERE entry=10772;

/*  Mark of Hakkar  */
UPDATE item_template SET RequiredLevel = 0 WHERE entry=10780;

/*  Hakkari Breastplate  */
UPDATE item_template SET RequiredLevel = 0 WHERE entry=10781;

/*  Hakkari Shroud  */
UPDATE item_template SET RequiredLevel = 0 WHERE entry=10782;

/*  Atal'ai Leggings  */
UPDATE item_template SET Quality = 2, stat_type1 = 0, stat_value1 = 0 WHERE entry=10785;

/*  Atal'ai Boots  */
UPDATE item_template SET Quality = 2, stat_type1 = 0, stat_value1 = 0 WHERE entry=10786;

/*  Atal'ai Girdle  */
UPDATE item_template SET Quality = 2, stat_type1 = 0, stat_value1 = 0 WHERE entry=10788;

/*  Darkwater Bracers  */
UPDATE item_template SET shadow_res = 7, stat_type1 = 0, stat_value1 = 0 WHERE entry=10800;

/*  Slitherscale Boots  */
UPDATE item_template SET stat_type1 = 7, stat_value1 = 12, stat_type2 = 4, stat_type3 = 6, stat_value3 = 15 WHERE entry=10801;

/*  Wingveil Cloak  */
UPDATE item_template SET Quality = 2 WHERE entry=10802;

/*  Blade of the Wretched  */
UPDATE item_template SET Quality = 2, dmg_min1 = 47.0, dmg_max1 = 88.0 WHERE entry=10803;

/*  Fist of the Damned  */
UPDATE item_template SET Quality = 2, dmg_min1 = 42.0, dmg_max1 = 80.0, stat_type1 = 0, stat_value1 = 0 WHERE entry=10804;

/*  Eater of the Dead  */
UPDATE item_template SET Quality = 2, dmg_min1 = 49.0, dmg_max1 = 92.0, stat_type1 = 0, stat_value1 = 0 WHERE entry=10805;

/*  Vestments of the Atal'ai Prophet  */
UPDATE item_template SET stat_value2 = 27, stat_type3 = 0, stat_value3 = 0 WHERE entry=10806;

/*  Kilt of the Atal'ai Prophet  */
UPDATE item_template SET stat_value2 = 18, stat_type4 = 4, stat_value4 = 4 WHERE entry=10807;

/*  Gloves of the Atal'ai Prophet  */
UPDATE item_template SET stat_value1 = 20, stat_type2 = 4, stat_value2 = 5, stat_type3 = 7, stat_value3 = 6 WHERE entry=10808;

/*  Dire Nail  */
UPDATE item_template SET shadow_res = 5, stat_type1 = 0, stat_value1 = 0, RequiredLevel = 51 WHERE entry=10828;

/*  Horns of Eranikus  */
UPDATE item_template SET stat_type1 = 6, stat_value1 = 11, stat_value2 = 27, RequiredLevel = 51 WHERE entry=10833;

/*  Crest of Supremacy  */
UPDATE item_template SET stat_type1 = 3, stat_value1 = 6, stat_value2 = 7, stat_type3 = 6, stat_value3 = 7, stat_type4 = 7, stat_value4 = 7, stat_type5 = 4, stat_value5 = 6, RequiredLevel = 51 WHERE entry=10835;

/*  Rod of Corrosion  */
UPDATE item_template SET nature_res = 10, stat_type1 = 0, stat_value1 = 0, RequiredLevel = 51 WHERE entry=10836;

/*  Tooth of Eranikus  */
UPDATE item_template SET stat_type2 = 0, stat_value2 = 0, RequiredLevel = 51 WHERE entry=10837;

/*  Might of Hakkar  */
UPDATE item_template SET stat_type1 = 7, stat_type2 = 6 WHERE entry=10838;

/*  Windscale Sarong  */
UPDATE item_template SET stat_value1 = 20, stat_type4 = 3, stat_value4 = 7 WHERE entry=10842;

/*  Featherskin Cape  */
UPDATE item_template SET stat_type2 = 6, stat_value2 = 15, stat_type3 = 5, stat_value3 = 4 WHERE entry=10843;

/*  Warrior's Embrace  */
UPDATE item_template SET stat_type3 = 0, stat_value3 = 0 WHERE entry=10845;

/*  Bloodshot Greaves  */
UPDATE item_template SET stat_type3 = 4, stat_value3 = 5 WHERE entry=10846;

/*  Archaedic Stone  */
UPDATE item_template SET RequiredLevel = 42 WHERE entry=11118;

/*  Darkwater Talwar  */
UPDATE item_template SET Quality = 2, dmg_min1 = 20.0, dmg_max1 = 39.0, stat_type1 = 0, stat_value1 = 0 WHERE entry=11121;

/*  Rainstrider Leggings  */
UPDATE item_template SET stat_type1 = 3, stat_value1 = 8, stat_type3 = 7, stat_value3 = 7 WHERE entry=11123;

/*  Fine Shortbow  */
UPDATE item_template SET dmg_min1 = 7.0, dmg_max1 = 14.0 WHERE entry=11303;

/*  Fine Longbow  */
UPDATE item_template SET dmg_min1 = 14.0, dmg_max1 = 26.0 WHERE entry=11304;

/*  Dense Shortbow  */
UPDATE item_template SET dmg_min1 = 19.0, dmg_max1 = 35.0 WHERE entry=11305;

/*  Sturdy Recurve  */
UPDATE item_template SET dmg_min1 = 20.0, dmg_max1 = 37.0 WHERE entry=11306;

/*  Massive Longbow  */
UPDATE item_template SET dmg_min1 = 43.0, dmg_max1 = 80.0 WHERE entry=11307;

/*  Sylvan Shortbow  */
UPDATE item_template SET dmg_min1 = 32.0, dmg_max1 = 59.0 WHERE entry=11308;

/*  Flameseer Mantle  */
UPDATE item_template SET RequiredLevel = 42 WHERE entry=11310;

/*  Emberscale Cape  */
UPDATE item_template SET Quality = 2, stat_value1 = 3, stat_value2 = 10, RequiredLevel = 41 WHERE entry=11311;

/*  Enthralled Sphere  */
UPDATE item_template SET stat_value1 = 14, stat_type2 = 6, stat_value2 = 5, stat_type3 = 7, stat_value3 = 3 WHERE entry=11625;

/*  Houndmaster's Bow  */
UPDATE item_template SET dmg_min1 = 34.0, dmg_max1 = 64.0 WHERE entry=11628;

/*  Houndmaster's Rifle  */
UPDATE item_template SET dmg_min1 = 44.0, dmg_max1 = 82.0 WHERE entry=11629;

/*  Earthslag Shoulders  */
UPDATE item_template SET stat_type2 = 5, stat_value2 = 8 WHERE entry=11632;

/*  Spiderfang Carapace  */
UPDATE item_template SET stat_value1 = 14, stat_type3 = 5 WHERE entry=11633;

/*  Graverot Cape  */
UPDATE item_template SET stat_type2 = 6, stat_value2 = 6 WHERE entry=11677;

/*  Rubicund Armguards  */
UPDATE item_template SET stat_type1 = 7, stat_type2 = 3 WHERE entry=11679;

/*  Splinthide Shoulders  */
UPDATE item_template SET stat_type3 = 5, stat_type4 = 0, stat_value4 = 0 WHERE entry=11685;

/*  Stonewall Girdle  */
UPDATE item_template SET stat_type2 = 0, stat_value2 = 0 WHERE entry=11703;

/*  Dregmetal Spaulders  */
UPDATE item_template SET stat_type1 = 6, stat_value1 = 10, stat_type2 = 4, stat_value2 = 6, stat_type3 = 7, stat_value3 = 5, stat_type4 = 5, stat_value4 = 15 WHERE entry=11722;

/*  Savage Gladiator Chain  */
UPDATE item_template SET stat_type3 = 4, stat_value3 = 13 WHERE entry=11726;

/*  Savage Gladiator Leggings  */
UPDATE item_template SET stat_type3 = 4, stat_value3 = 12 WHERE entry=11728;

/*  Savage Gladiator Helm  */
UPDATE item_template SET stat_value1 = 28, stat_value2 = 12 WHERE entry=11729;

/*  Savage Gladiator Grips  */
UPDATE item_template SET stat_type4 = 4, stat_value4 = 5 WHERE entry=11730;

/*  Savage Gladiator Greaves  */
UPDATE item_template SET stat_type2 = 4, stat_value2 = 10, stat_type3 = 7, stat_value3 = 13 WHERE entry=11731;

/*  Rockfist  */
UPDATE item_template SET Quality = 2, dmg_min1 = 32.0, dmg_max1 = 60.0, stat_type1 = 4, stat_value1 = 10 WHERE entry=11743;

/*  Flamestrider Robes  */
UPDATE item_template SET fire_res = 10, stat_type4 = 0, stat_value4 = 0 WHERE entry=11747;

/*  Searingscale Leggings  */
UPDATE item_template SET fire_res = 10, stat_type1 = 6, stat_value1 = 10, stat_type4 = 3, stat_value4 = 13 WHERE entry=11749;

/*  Kindling Stave  */
UPDATE item_template SET fire_res = 10, stat_value1 = 13, stat_type4 = 0, stat_value4 = 0 WHERE entry=11750;

/*  Incendic Bracers  */
UPDATE item_template SET Quality = 2, stat_type1 = 0, stat_value1 = 0 WHERE entry=11768;

/*  Chillsteel Girdle  */
UPDATE item_template SET frost_res = 10, stat_value1 = 20, stat_type2 = 6, stat_value2 = 7 WHERE entry=11783;

/*  Sash of the Burning Heart  */
UPDATE item_template SET stat_type1 = 6, stat_type3 = 5 WHERE entry=11807;

/*  Circle of Flame  */
UPDATE item_template SET fire_res = 15 WHERE entry=11808;

/*  Smoking Heart of the Mountain  */
UPDATE item_template SET fire_res = 7, nature_res = 7, frost_res = 7, shadow_res = 7, stat_type1 = 0, stat_value1 = 0 WHERE entry=11811;

/*  Cape of the Fire Salamander  */
UPDATE item_template SET stat_type1 = 6, stat_value1 = 6, stat_type2 = 7, stat_value2 = 9 WHERE entry=11812;

/*  Molten Fists  */
UPDATE item_template SET fire_res = 10 WHERE entry=11814;

/*  Warstrife Leggings  */
UPDATE item_template SET stat_value1 = 6, stat_value3 = 6 WHERE entry=11821;

/*  Cyclopean Band  */
UPDATE item_template SET stat_type2 = 4 WHERE entry=11824;

/*  Chief Architect's Monocle  */
UPDATE item_template SET stat_value1 = 27, stat_type2 = 6, stat_value2 = 3, stat_type3 = 7, stat_value3 = 10 WHERE entry=11839;

/*  Lead Surveyor's Mantle  */
UPDATE item_template SET stat_type2 = 6, stat_value2 = 8 WHERE entry=11842;

/*  Rancor Boots  */
UPDATE item_template SET stat_type1 = 3, stat_value1 = 12, stat_type2 = 5, stat_value2 = 11 WHERE entry=11865;

/*  Archaeologist's Quarry Boots  */
UPDATE item_template SET stat_type2 = 3, stat_type3 = 5, stat_value3 = 9 WHERE entry=11908;

/*  Treetop Leggings  */
UPDATE item_template SET stat_type1 = 4, stat_value1 = 8, stat_type3 = 6, stat_value3 = 18 WHERE entry=11911;

/*  Emperor's Seal  */
UPDATE item_template SET frost_res = 6, arcane_res = 6, stat_type1 = 0, stat_value1 = 0 WHERE entry=11934;

/*  Magmus Stone  */
UPDATE item_template SET fire_res = 15 WHERE entry=11935;

/*  Relic Hunter Belt  */
UPDATE item_template SET stat_type1 = 4, stat_type3 = 6, stat_value3 = 2 WHERE entry=11936;

/*  Dark Iron Ring  */
UPDATE item_template SET Quality = 2, stat_type1 = 0, stat_value1 = 0 WHERE entry=11945;

/*  Fire Opal Necklace  */
UPDATE item_template SET Quality = 2, stat_type1 = 0, stat_value1 = 0 WHERE entry=11946;

/*  Hazecover Boots  */
UPDATE item_template SET stat_type3 = 3, stat_value3 = 4 WHERE entry=12050;

/*  Skilled Fighting Blade  */
UPDATE item_template SET stat_type1 = 0, stat_value1 = 0 WHERE entry=12062;

/*  Star of Mystaria  */
UPDATE item_template SET stat_type4 = 0, stat_value4 = 0 WHERE entry=12103;

/*  Pridemail Leggings  */
UPDATE item_template SET Quality = 2, ItemLevel = 60, stat_type1 = 6, stat_value1 = 13, stat_type2 = 0, stat_value2 = 0, stat_type3 = 0, stat_value3 = 0 WHERE entry=12105;

/*  Smoldering Claw  */
UPDATE item_template SET fire_res = 10, stat_type1 = 0, stat_value1 = 0 WHERE entry=12243;

/*  Serpent Clasp Belt  */
UPDATE item_template SET stat_type1 = 0, stat_value1 = 0 WHERE entry=12258;

/*  Leggings of the People's Militia  */
UPDATE item_template SET stat_type1 = 4, stat_type2 = 6, stat_value2 = 2 WHERE entry=12295;

/*  Seal of Ascension  */
UPDATE item_template SET fire_res = 10, nature_res = 10, frost_res = 10, stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0, stat_type3 = 0, stat_value3 = 0 WHERE entry=12344;

/*  Thorium Armor  */
UPDATE item_template SET fire_res = 8, nature_res = 8, frost_res = 8, shadow_res = 8, arcane_res = 8, stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0, stat_type3 = 0, stat_value3 = 0 WHERE entry=12405;

/*  Thorium Belt  */
UPDATE item_template SET fire_res = 6, nature_res = 6, frost_res = 6, shadow_res = 6, arcane_res = 6, stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0, stat_type3 = 0, stat_value3 = 0 WHERE entry=12406;

/*  Thorium Bracers  */
UPDATE item_template SET fire_res = 5, nature_res = 5, frost_res = 5, shadow_res = 5, arcane_res = 5, stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0, stat_type3 = 0, stat_value3 = 0 WHERE entry=12408;

/*  Thorium Boots  */
UPDATE item_template SET fire_res = 7, nature_res = 7, frost_res = 7, shadow_res = 7, arcane_res = 7, stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0, stat_type3 = 0, stat_value3 = 0 WHERE entry=12409;

/*  Thorium Helm  */
UPDATE item_template SET fire_res = 10, nature_res = 10, frost_res = 10, shadow_res = 10, arcane_res = 10, stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0, stat_type3 = 0, stat_value3 = 0 WHERE entry=12410;

/*  Thorium Leggings  */
UPDATE item_template SET fire_res = 10, nature_res = 10, frost_res = 10, shadow_res = 10, arcane_res = 10, stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0, stat_type3 = 0, stat_value3 = 0 WHERE entry=12414;

/*  Radiant Breastplate  */
UPDATE item_template SET frost_res = 16, shadow_res = 16, stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0 WHERE entry=12415;

/*  Radiant Belt  */
UPDATE item_template SET frost_res = 12, shadow_res = 12, stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0 WHERE entry=12416;

/*  Radiant Circlet  */
UPDATE item_template SET frost_res = 18, shadow_res = 18, stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0 WHERE entry=12417;

/*  Radiant Gloves  */
UPDATE item_template SET frost_res = 12, shadow_res = 12, stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0 WHERE entry=12418;

/*  Radiant Boots  */
UPDATE item_template SET frost_res = 15, shadow_res = 15, stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0 WHERE entry=12419;

/*  Radiant Leggings  */
UPDATE item_template SET stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0 WHERE entry=12420;

/*  Anvilmar Musket  */
UPDATE item_template SET dmg_min1 = 4.0, dmg_max1 = 8.0 WHERE entry=12446;

/*  Thistlewood Bow  */
UPDATE item_template SET dmg_min1 = 3.0, dmg_max1 = 7.0 WHERE entry=12447;

/*  Light Hunting Rifle  */
UPDATE item_template SET dmg_min1 = 2.0, dmg_max1 = 6.0 WHERE entry=12448;

/*  Primitive Bow  */
UPDATE item_template SET dmg_min1 = 4.0, dmg_max1 = 8.0 WHERE entry=12449;

/*  Embrace of the Wind Serpent  */
UPDATE item_template SET nature_res = 12, stat_value1 = 30 WHERE entry=12462;

/*  Bloodfire Talons  */
UPDATE item_template SET fire_res = 10, stat_type3 = 0, stat_value3 = 0 WHERE entry=12464;

/*  Nightfall Drape  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=12465;

/*  Dawnspire Cord  */
UPDATE item_template SET stat_value1 = 19, stat_type3 = 0, stat_value3 = 0 WHERE entry=12466;

/*  Chilton Wand  */
UPDATE item_template SET dmg_min1 = 18.0, dmg_max1 = 19.0 WHERE entry=12468;

/*  Mutilator  */
UPDATE item_template SET ItemLevel = 47, dmg_min1 = 82.0, dmg_max1 = 124.0, RequiredLevel = 42 WHERE entry=12469;

/*  Sandstalker Ankleguards  */
UPDATE item_template SET stat_type2 = 6, stat_type3 = 4, stat_value3 = 6 WHERE entry=12470;

/*  Magni's Will  */
UPDATE item_template SET stat_type3 = 0, stat_value3 = 0 WHERE entry=12548;

/*  Braincage  */
UPDATE item_template SET stat_type2 = 6, stat_value2 = 9 WHERE entry=12549;

/*  High Priestess Boots  */
UPDATE item_template SET shadow_res = 10 WHERE entry=12556;

/*  Dustfeather Sash  */
UPDATE item_template SET stat_value1 = 18, stat_value2 = 10 WHERE entry=12589;

/*  Nightbrace Tunic  */
UPDATE item_template SET fire_res = 10, shadow_res = 10, stat_value1 = 5, stat_type3 = 0, stat_value3 = 0 WHERE entry=12603;

/*  Starfire Tiara  */
UPDATE item_template SET fire_res = 10 WHERE entry=12604;

/*  Serpentine Skuller  */
UPDATE item_template SET shadow_res = 10, stat_type1 = 0, stat_value1 = 0 WHERE entry=12605;

/*  Butcher's Apron  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=12608;

/*  Funeral Cuffs  */
UPDATE item_template SET shadow_res = 10 WHERE entry=12626;

/*  Chiselbrand Girdle  */
UPDATE item_template SET stat_type1 = 6 WHERE entry=12634;

/*  Backusarian Gauntlets  */
UPDATE item_template SET stat_value1 = 9, stat_type2 = 5 WHERE entry=12637;

/*  Blackcrow  */
UPDATE item_template SET dmg_min1 = 77.0, dmg_max1 = 117.0 WHERE entry=12651;

/*  Riphook  */
UPDATE item_template SET dmg_min1 = 46.0, dmg_max1 = 87.0 WHERE entry=12653;

/*  Huge Thorium Battleaxe  */
UPDATE item_template SET stat_type1 = 0, stat_value1 = 0 WHERE entry=12775;

/*  Emberfury Talisman  */
UPDATE item_template SET fire_res = 7, stat_type2 = 6, stat_type3 = 0, stat_value3 = 0 WHERE entry=12929;

/*  Warmaster Legguards  */
UPDATE item_template SET stat_type3 = 0, stat_value3 = 0 WHERE entry=12935;

/*  Blademaster Leggings  */
UPDATE item_template SET stat_value1 = 5, stat_type2 = 0, stat_value2 = 0 WHERE entry=12963;

/*  Tristam Legguards  */
UPDATE item_template SET stat_type2 = 0, stat_value2 = 0 WHERE entry=12964;

/*  Blackmist Armguards  */
UPDATE item_template SET shadow_res = 10, stat_type3 = 0, stat_value3 = 0 WHERE entry=12966;

/*  Bloodmoon Cloak  */
UPDATE item_template SET arcane_res = 7, stat_value1 = 17, stat_type2 = 6, stat_type3 = 0, stat_value3 = 0 WHERE entry=12967;

/*  Frostweaver Cape  */
UPDATE item_template SET frost_res = 10, stat_type3 = 0, stat_value3 = 0 WHERE entry=12968;

/*  Drakewing Bands  */
UPDATE item_template SET stat_type1 = 6 WHERE entry=12999;

/*  Dreamsinger Legguards  */
UPDATE item_template SET stat_type1 = 6 WHERE entry=13010;

/*  Silver-lined Belt  */
UPDATE item_template SET stat_type2 = 6, stat_value2 = 4 WHERE entry=13011;

/*  Harpyclaw Short Bow  */
UPDATE item_template SET dmg_min1 = 20.0, dmg_max1 = 38.0 WHERE entry=13019;

/*  Skystriker Bow  */
UPDATE item_template SET dmg_min1 = 30.0, dmg_max1 = 57.0 WHERE entry=13020;

/*  Needle Threader  */
UPDATE item_template SET dmg_min1 = 34.0, dmg_max1 = 64.0 WHERE entry=13021;

/*  Gryphonwing Long Bow  */
UPDATE item_template SET dmg_min1 = 53.0, dmg_max1 = 100.0 WHERE entry=13022;

/*  Eaglehorn Long Bow  */
UPDATE item_template SET dmg_min1 = 40.0, dmg_max1 = 76.0 WHERE entry=13023;

/*  Crystalpine Stinger  */
UPDATE item_template SET dmg_min1 = 35.0, dmg_max1 = 54.0 WHERE entry=13037;

/*  Swiftwind  */
UPDATE item_template SET dmg_min1 = 34.0, dmg_max1 = 51.0 WHERE entry=13038;

/*  Skull Splitting Crossbow  */
UPDATE item_template SET dmg_min1 = 52.0, dmg_max1 = 79.0 WHERE entry=13039;

/*  Heartseeking Crossbow  */
UPDATE item_template SET dmg_min1 = 71.0, dmg_max1 = 108.0 WHERE entry=13040;

/*  Warmonger  */
UPDATE item_template SET stat_type2 = 0, stat_value2 = 0 WHERE entry=13052;

/*  Widow's Clutch  */
UPDATE item_template SET shadow_res = 0, arcane_res = 13 WHERE entry=13080;

/*  Moccasins of the White Hare  */
UPDATE item_template SET stat_type2 = 3, stat_value2 = 3 WHERE entry=13099;

/*  Glowing Magical Bracelets  */
UPDATE item_template SET stat_type2 = 4, stat_value2 = 3 WHERE entry=13106;

/*  Wolffear Harness  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=13110;

/*  Winged Helm  */
UPDATE item_template SET stat_type1 = 6, stat_type2 = 5, stat_value2 = 23 WHERE entry=13112;

/*  Feathermoon Headdress  */
UPDATE item_template SET stat_type1 = 6, stat_value1 = 21 WHERE entry=13113;

/*  Troll's Bane Leggings  */
UPDATE item_template SET stat_type2 = 6, stat_value2 = 4 WHERE entry=13114;

/*  Sheepshear Mantle  */
UPDATE item_template SET stat_type1 = 5, stat_value1 = 16, stat_type3 = 6 WHERE entry=13115;

/*  Ravasaur Scale Boots  */
UPDATE item_template SET stat_type1 = 6 WHERE entry=13124;

/*  Elven Chain Boots  */
UPDATE item_template SET stat_type3 = 6 WHERE entry=13125;

/*  Battlecaller Gauntlets  */
UPDATE item_template SET stat_type1 = 4, stat_type3 = 6, stat_value3 = 15 WHERE entry=13126;

/*  Frostreaver Crown  */
UPDATE item_template SET stat_type3 = 6 WHERE entry=13127;

/*  High Bergg Helm  */
UPDATE item_template SET stat_type1 = 6 WHERE entry=13128;

/*  Windrunner Legguards  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=13130;

/*  Lil Timmy's Peashooter  */
UPDATE item_template SET dmg_min1 = 20.0, dmg_max1 = 37.0 WHERE entry=13136;

/*  Ironweaver  */
UPDATE item_template SET dmg_min1 = 31.0, dmg_max1 = 59.0 WHERE entry=13137;

/*  The Silencer  */
UPDATE item_template SET dmg_min1 = 43.0, dmg_max1 = 82.0 WHERE entry=13138;

/*  Guttbuster  */
UPDATE item_template SET dmg_min1 = 49.0, dmg_max1 = 92.0 WHERE entry=13139;

/*  Brigam Girdle  */
UPDATE item_template SET stat_type3 = 0, stat_value3 = 0 WHERE entry=13142;

/*  Shell Launcher Shotgun  */
UPDATE item_template SET dmg_min1 = 48.0, dmg_max1 = 89.0 WHERE entry=13146;

/*  Voone's Twitchbow  */
UPDATE item_template SET dmg_min1 = 31.0, dmg_max1 = 58.0 WHERE entry=13175;

/*  Demonskin Gloves  */
UPDATE item_template SET stat_type1 = 6, stat_value1 = 17, stat_type3 = 7, stat_value3 = 9 WHERE entry=13181;

/*  Sunderseer Mantle  */
UPDATE item_template SET stat_value1 = 17, stat_value2 = 11 WHERE entry=13185;

/*  Burstshot Harquebus  */
UPDATE item_template SET dmg_min1 = 52.0, dmg_max1 = 98.0 WHERE entry=13248;

/*  Trueaim Gauntlets  */
UPDATE item_template SET stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0 WHERE entry=13255;

/*  Demonic Runed Spaulders  */
UPDATE item_template SET stat_type1 = 5, stat_type3 = 4 WHERE entry=13257;

/*  Globe of D'sak  */
UPDATE item_template SET shadow_res = 7, stat_type1 = 5, stat_type3 = 0, stat_value3 = 0 WHERE entry=13261;

/*  Ogreseer Tower Boots  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=13282;

/*  Magus Ring  */
UPDATE item_template SET stat_value1 = 12, stat_type2 = 6, stat_value2 = 7 WHERE entry=13283;

/*  Willey's Portable Howitzer  */
UPDATE item_template SET dmg_min1 = 63.0, dmg_max1 = 118.0 WHERE entry=13380;

/*  Mask of the Unforgiven  */
UPDATE item_template SET stat_type2 = 0, stat_value2 = 0, stat_type3 = 0, stat_value3 = 0 WHERE entry=13404;

/*  Farmer Dalson's Shotgun  */
UPDATE item_template SET dmg_min1 = 34.0, dmg_max1 = 64.0 WHERE entry=13474;

/*  Recurve Long Bow  */
UPDATE item_template SET dmg_min1 = 26.0, dmg_max1 = 50.0 WHERE entry=13824;

/*  Primed Musket  */
UPDATE item_template SET dmg_min1 = 20.0, dmg_max1 = 37.0 WHERE entry=13825;

/*  Mystic's Belt  */
UPDATE item_template SET stat_type2 = 3, stat_value2 = 2 WHERE entry=14025;

/*  Tyrande's Staff  */
UPDATE item_template SET dmg_min1 = 4.0, dmg_max1 = 6.0 WHERE entry=14083;

/*  Cursed Felblade  */
UPDATE item_template SET Quality = 2, dmg_min1 = 16.0, dmg_max1 = 31.0 WHERE entry=14145;

/*  Cavedweller Bracers  */
UPDATE item_template SET Quality = 2, stat_value1 = 1, stat_value2 = 2 WHERE entry=14147;

/*  Crystalline Cuffs  */
UPDATE item_template SET Quality = 2, stat_value2 = 1 WHERE entry=14148;

/*  Subterranean Cape  */
UPDATE item_template SET Quality = 2, stat_value1 = 2, stat_value2 = 2 WHERE entry=14149;

/*  Robe of Evocation  */
UPDATE item_template SET Quality = 2, stat_value1 = 4, stat_value2 = 3, stat_type3 = 0, stat_value3 = 0 WHERE entry=14150;

/*  Chanting Blade  */
UPDATE item_template SET Quality = 2, dmg_min1 = 9.0, dmg_max1 = 18.0, stat_value1 = 1, stat_value2 = 1 WHERE entry=14151;

/*  Mystic's Wrap  */
UPDATE item_template SET stat_type1 = 3 WHERE entry=14369;

/*  Mystic's Robe  */
UPDATE item_template SET stat_type1 = 3, stat_value1 = 3, stat_type2 = 5, stat_value2 = 7 WHERE entry=14371;

/*  Sanguine Trousers  */
UPDATE item_template SET stat_type2 = 4, stat_value2 = 4 WHERE entry=14379;

/*  Durability Staff  */
UPDATE item_template SET dmg_min1 = 2.0, dmg_max1 = 3.0 WHERE entry=14392;

/*  Resilient Tunic  */
UPDATE item_template SET stat_type1 = 3, stat_value1 = 4, stat_type2 = 5, stat_value2 = 11 WHERE entry=14398;

/*  Resilient Boots  */
UPDATE item_template SET stat_type2 = 3, stat_value2 = 2 WHERE entry=14399;

/*  Resilient Cap  */
UPDATE item_template SET stat_type3 = 3, stat_value3 = 2 WHERE entry=14401;

/*  Resilient Handgrips  */
UPDATE item_template SET stat_type2 = 3, stat_value2 = 3, stat_type3 = 7, stat_value3 = 4 WHERE entry=14403;

/*  Resilient Leggings  */
UPDATE item_template SET stat_type2 = 3, stat_value2 = 5 WHERE entry=14404;

/*  Resilient Robe  */
UPDATE item_template SET stat_type1 = 3, stat_value1 = 4, stat_type2 = 5, stat_value2 = 11 WHERE entry=14405;

/*  Resilient Cord  */
UPDATE item_template SET stat_type3 = 4, stat_value3 = 1 WHERE entry=14406;

/*  Stonecloth Vest  */
UPDATE item_template SET stat_type2 = 4, stat_value2 = 2, stat_type3 = 6, stat_value3 = 15 WHERE entry=14407;

/*  Stonecloth Circlet  */
UPDATE item_template SET stat_type2 = 4, stat_value2 = 3 WHERE entry=14410;

/*  Stonecloth Robe  */
UPDATE item_template SET stat_type2 = 4, stat_value2 = 2, stat_type3 = 6, stat_value3 = 15 WHERE entry=14413;

/*  Stonecloth Belt  */
UPDATE item_template SET stat_type3 = 3, stat_value3 = 3 WHERE entry=14414;

/*  Silksand Shoulder Pads  */
UPDATE item_template SET stat_type3 = 4, stat_value3 = 1 WHERE entry=14423;

/*  Windchaser Footpads  */
UPDATE item_template SET stat_type2 = 3, stat_value2 = 3, stat_type3 = 6, stat_value3 = 12 WHERE entry=14428;

/*  Windchaser Cuffs  */
UPDATE item_template SET stat_type1 = 3, stat_value1 = 2, stat_type2 = 5, stat_value2 = 9 WHERE entry=14429;

/*  Windchaser Handguards  */
UPDATE item_template SET stat_type2 = 3, stat_value2 = 3 WHERE entry=14431;

/*  Windchaser Amice  */
UPDATE item_template SET stat_type2 = 3, stat_value2 = 3 WHERE entry=14432;

/*  Windchaser Woolies  */
UPDATE item_template SET stat_type1 = 4, stat_value1 = 5, stat_type3 = 5, stat_value3 = 12 WHERE entry=14433;

/*  Windchaser Coronet  */
UPDATE item_template SET stat_type1 = 3, stat_value1 = 4, stat_type3 = 6, stat_value3 = 7 WHERE entry=14436;

/*  Highborne Footpads  */
UPDATE item_template SET stat_type2 = 3, stat_value2 = 4, stat_type3 = 7, stat_value3 = 9 WHERE entry=14447;

/*  Highborne Crown  */
UPDATE item_template SET stat_type3 = 4, stat_value3 = 3 WHERE entry=14449;

/*  Highborne Gloves  */
UPDATE item_template SET stat_type3 = 3, stat_value3 = 5, stat_type4 = 4, stat_value4 = 3 WHERE entry=14451;

/*  Highborne Cord  */
UPDATE item_template SET stat_type3 = 3, stat_value3 = 5 WHERE entry=14454;

/*  Elunarian Vest  */
UPDATE item_template SET stat_type3 = 4, stat_value3 = 5 WHERE entry=14456;

/*  Elunarian Silk Robes  */
UPDATE item_template SET stat_type3 = 4, stat_value3 = 5 WHERE entry=14464;

/*  Elunarian Belt  */
UPDATE item_template SET stat_type3 = 4, stat_value3 = 6 WHERE entry=14465;

/*  Bone Ring Helm  */
UPDATE item_template SET stat_type1 = 4, stat_value1 = 6, stat_type3 = 6, stat_type4 = 5 WHERE entry=14539;

/*  Ghostloom Leggings  */
UPDATE item_template SET stat_type2 = 6, stat_value2 = 13 WHERE entry=14545;

/*  Bladebane Armguards  */
UPDATE item_template SET stat_value2 = 10, stat_type3 = 6, stat_type4 = 4, stat_value4 = 6 WHERE entry=14550;

/*  Edgemaster's Handguards  */
UPDATE item_template SET stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0 WHERE entry=14551;

/*  Test Glaive I  */
UPDATE item_template SET dmg_min1 = 2.0, dmg_max1 = 5.0 WHERE entry=14891;

/*  Green Dragonscale Breastplate  */
UPDATE item_template SET stat_type1 = 6, stat_value1 = 21, stat_type2 = 7, stat_value2 = 10, stat_type3 = 0, stat_value3 = 0 WHERE entry=15045;

/*  Green Dragonscale Leggings  */
UPDATE item_template SET stat_type1 = 6, stat_value1 = 22, stat_type2 = 7, stat_value2 = 10, stat_type3 = 0, stat_value3 = 0 WHERE entry=15046;

/*  Blue Dragonscale Breastplate  */
UPDATE item_template SET arcane_res = 8, stat_value1 = 28, stat_type2 = 6, stat_value2 = 8, stat_type3 = 0, stat_value3 = 0 WHERE entry=15048;

/*  Blue Dragonscale Shoulders  */
UPDATE item_template SET arcane_res = 6, stat_value1 = 21, stat_type2 = 6, stat_value2 = 6, stat_type3 = 0, stat_value3 = 0 WHERE entry=15049;

/*  Black Dragonscale Breastplate  */
UPDATE item_template SET fire_res = 12, stat_type1 = 7, stat_value1 = 8, stat_type2 = 0, stat_value2 = 0, stat_type3 = 0, stat_value3 = 0 WHERE entry=15050;

/*  Black Dragonscale Shoulders  */
UPDATE item_template SET fire_res = 6, stat_type1 = 7, stat_value1 = 9, stat_type2 = 0, stat_value2 = 0, stat_type3 = 0, stat_value3 = 0 WHERE entry=15051;

/*  Black Dragonscale Leggings  */
UPDATE item_template SET ItemLevel = 62, fire_res = 13, stat_type1 = 7, stat_value1 = 8, stat_type2 = 0, stat_value2 = 0, stat_type3 = 0, stat_value3 = 0, RequiredLevel = 57 WHERE entry=15052;

/*  Living Shoulders  */
UPDATE item_template SET nature_res = 3, stat_type1 = 6, stat_value1 = 13, stat_type2 = 7, stat_value2 = 8, stat_type3 = 0, stat_value3 = 0 WHERE entry=15061;

/*  Warbear Harness  */
UPDATE item_template SET stat_type1 = 7, stat_value1 = 27, stat_type2 = 4 WHERE entry=15064;

/*  Warbear Woolies  */
UPDATE item_template SET stat_type1 = 4, stat_value1 = 28 WHERE entry=15065;

/*  Ironfeather Breastplate  */
UPDATE item_template SET stat_type1 = 6, stat_value1 = 28, stat_value2 = 12, stat_type3 = 0, stat_value3 = 0 WHERE entry=15066;

/*  Ironfeather Shoulders  */
UPDATE item_template SET stat_type1 = 5, stat_value1 = 20, stat_type2 = 6, stat_value2 = 8, stat_type3 = 0, stat_value3 = 0 WHERE entry=15067;

/*  Heavy Scorpid Vest  */
UPDATE item_template SET stat_type1 = 7, stat_value1 = 16, stat_type2 = 6 WHERE entry=15076;

/*  Heavy Scorpid Bracers  */
UPDATE item_template SET stat_type1 = 7, stat_value1 = 8, stat_type2 = 6, stat_value2 = 8 WHERE entry=15077;

/*  Heavy Scorpid Leggings  */
UPDATE item_template SET stat_type1 = 6, stat_value1 = 20 WHERE entry=15079;

/*  Heavy Scorpid Helm  */
UPDATE item_template SET stat_type1 = 7, stat_value1 = 20, stat_type2 = 6 WHERE entry=15080;

/*  Heavy Scorpid Shoulders  */
UPDATE item_template SET stat_type1 = 7, stat_value1 = 14, stat_type2 = 6, stat_value2 = 13 WHERE entry=15081;

/*  Heavy Scorpid Belt  */
UPDATE item_template SET stat_type1 = 7, stat_value1 = 12, stat_type2 = 6, stat_value2 = 12 WHERE entry=15082;

/*  Runic Leather Armor  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=15090;

/*  Runic Leather Gauntlets  */
UPDATE item_template SET stat_type2 = 5 WHERE entry=15091;

/*  Runic Leather Bracers  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=15092;

/*  Runic Leather Belt  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=15093;

/*  Runic Leather Headband  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=15094;

/*  Runic Leather Pants  */
UPDATE item_template SET stat_type2 = 5 WHERE entry=15095;

/*  Runic Leather Shoulders  */
UPDATE item_template SET stat_type2 = 6 WHERE entry=15096;

/*  Wingborne Boots  */
UPDATE item_template SET Quality = 2 WHERE entry=15104;

/*  Highborne Pants  */
UPDATE item_template SET stat_type3 = 3, stat_value3 = 9 WHERE entry=15119;

/*  Owlsight Rifle  */
UPDATE item_template SET dmg_min1 = 14.0, dmg_max1 = 27.0 WHERE entry=15205;

/*  Holy War Sword  */
UPDATE item_template SET dmg_min1 = 59.0, dmg_max1 = 111.0 WHERE entry=15221;

/*  Demon's Claw  */
UPDATE item_template SET dmg_max1 = 115.0 WHERE entry=15240;

/*  Bloodstrike Dagger  */
UPDATE item_template SET dmg_max1 = 85.0 WHERE entry=15247;

/*  Divine Warblade  */
UPDATE item_template SET dmg_min1 = 109.0, dmg_max1 = 164.0 WHERE entry=15258;

/*  Lunar Wand  */
UPDATE item_template SET dmg_max1 = 126.0 WHERE entry=15283;

/*  Long Battle Bow  */
UPDATE item_template SET dmg_min1 = 18.0, dmg_max1 = 34.0 WHERE entry=15284;

/*  Archer's Longbow  */
UPDATE item_template SET dmg_min1 = 23.0, dmg_max1 = 44.0 WHERE entry=15285;

/*  Long Redwood Bow  */
UPDATE item_template SET dmg_min1 = 28.0, dmg_max1 = 52.0 WHERE entry=15286;

/*  Crusader Bow  */
UPDATE item_template SET dmg_min1 = 32.0, dmg_max1 = 60.0 WHERE entry=15287;

/*  Blasthorn Bow  */
UPDATE item_template SET dmg_min1 = 51.0, dmg_max1 = 96.0 WHERE entry=15288;

/*  Archstrike Bow  */
UPDATE item_template SET dmg_min1 = 48.0, dmg_max1 = 91.0 WHERE entry=15289;

/*  Harpy Needler  */
UPDATE item_template SET dmg_min1 = 44.0, dmg_max1 = 84.0 WHERE entry=15291;

/*  Siege Bow  */
UPDATE item_template SET dmg_min1 = 48.0, dmg_max1 = 90.0 WHERE entry=15294;

/*  Quillfire Bow  */
UPDATE item_template SET dmg_min1 = 41.0, dmg_max1 = 77.0 WHERE entry=15295;

/*  Hawkeye Bow  */
UPDATE item_template SET dmg_min1 = 35.0, dmg_max1 = 65.0 WHERE entry=15296;

/*  Smoothbore Gun  */
UPDATE item_template SET dmg_min1 = 29.0, dmg_max1 = 54.0 WHERE entry=15322;

/*  Percussion Shotgun  */
UPDATE item_template SET dmg_min1 = 37.0, dmg_max1 = 70.0 WHERE entry=15323;

/*  Burnside Rifle  */
UPDATE item_template SET dmg_min1 = 45.0, dmg_max1 = 85.0 WHERE entry=15324;

/*  Sharpshooter Harquebus  */
UPDATE item_template SET dmg_min1 = 43.0, dmg_max1 = 80.0 WHERE entry=15325;

/*  Sidegunner Shottie  */
UPDATE item_template SET dmg_min1 = 32.0, dmg_max1 = 61.0 WHERE entry=15691;

/*  Brantwood Sash  */
UPDATE item_template SET stat_type1 = 3, stat_value1 = 9, stat_type3 = 6, stat_value3 = 10 WHERE entry=15707;

/*  Turquoise Sash  */
UPDATE item_template SET stat_type3 = 3, stat_value3 = 6 WHERE entry=15791;

/*  Heroic Commendation Medal  */
UPDATE item_template SET Quality = 2, stat_value1 = 12, stat_type2 = 6, stat_value2 = 5 WHERE entry=15799;

/*  Intrepid Shortsword  */
UPDATE item_template SET Quality = 2, dmg_min1 = 50.0, dmg_max1 = 95.0, stat_type1 = 7, stat_value1 = 11 WHERE entry=15800;

/*  Valiant Shortsword  */
UPDATE item_template SET Quality = 2, dmg_min1 = 50.0, dmg_max1 = 95.0, stat_type1 = 5, stat_value1 = 11 WHERE entry=15801;

/*  Light Crossbow  */
UPDATE item_template SET dmg_min1 = 6.0, dmg_max1 = 7.0 WHERE entry=15807;

/*  Fine Light Crossbow  */
UPDATE item_template SET dmg_min1 = 20.0, dmg_max1 = 20.0 WHERE entry=15808;

/*  Heavy Crossbow  */
UPDATE item_template SET dmg_min1 = 36.0, dmg_max1 = 37.0 WHERE entry=15809;

/*  Orchid Amice  */
UPDATE item_template SET stat_type3 = 4, stat_value3 = 4, stat_type4 = 6, stat_value4 = 3 WHERE entry=15812;

/*  Astoria Robes  */
UPDATE item_template SET stat_type3 = 4, stat_value3 = 5 WHERE entry=15824;

/*  Thorium Rifle  */
UPDATE item_template SET dmg_min1 = 42.0, dmg_max1 = 79.0 WHERE entry=15995;

/*  Dark Iron Rifle  */
UPDATE item_template SET dmg_min1 = 53.0, dmg_max1 = 100.0 WHERE entry=16004;

/*  Flawless Arcanite Rifle  */
UPDATE item_template SET dmg_min1 = 65.0, dmg_max1 = 122.0, stat_type1 = 0, stat_value1 = 0 WHERE entry=16007;

/*  Knight-Lieutenant's Chain Boots  */
UPDATE item_template SET stat_value2 = 10 WHERE entry=16401;

/*  Knight-Lieutenant's Chain Gauntlets  */
UPDATE item_template SET stat_value2 = 11 WHERE entry=16403;

/*  Knight-Captain's Chain Hauberk  */
UPDATE item_template SET stat_value2 = 16 WHERE entry=16425;

/*  Knight-Captain's Chain Leggings  */
UPDATE item_template SET stat_value1 = 18 WHERE entry=16426;

/*  Lieutenant Commander's Chain Pauldrons  */
UPDATE item_template SET stat_value2 = 10 WHERE entry=16427;

/*  Lieutenant Commander's Chain Helmet  */
UPDATE item_template SET stat_value2 = 15 WHERE entry=16428;

/*  Marshal's Chain Boots  */
UPDATE item_template SET stat_value2 = 26 WHERE entry=16462;

/*  Marshal's Chain Grips  */
UPDATE item_template SET stat_value2 = 21 WHERE entry=16463;

/*  Field Marshal's Chain Helm  */
UPDATE item_template SET stat_value2 = 34 WHERE entry=16465;

/*  Field Marshal's Chain Breastplate  */
UPDATE item_template SET stat_value2 = 34 WHERE entry=16466;

/*  Marshal's Chain Legguards  */
UPDATE item_template SET stat_value1 = 34 WHERE entry=16467;

/*  Field Marshal's Chain Spaulders  */
UPDATE item_template SET stat_value2 = 26 WHERE entry=16468;

/*  Legionnaire's Chain Breastplate  */
UPDATE item_template SET stat_value2 = 16 WHERE entry=16525;

/*  Champion's Chain Headguard  */
UPDATE item_template SET stat_value2 = 15 WHERE entry=16526;

/*  Legionnaire's Chain Leggings  */
UPDATE item_template SET stat_value1 = 18 WHERE entry=16527;

/*  Champion's Chain Pauldrons  */
UPDATE item_template SET stat_value2 = 10 WHERE entry=16528;

/*  Blood Guard's Chain Gauntlets  */
UPDATE item_template SET stat_value2 = 11 WHERE entry=16530;

/*  Blood Guard's Chain Boots  */
UPDATE item_template SET stat_value2 = 10 WHERE entry=16531;

/*  Warlord's Chain Chestpiece  */
UPDATE item_template SET stat_value1 = 34 WHERE entry=16565;

/*  Warlord's Chain Helmet  */
UPDATE item_template SET stat_value1 = 34 WHERE entry=16566;

/*  General's Chain Legguards  */
UPDATE item_template SET stat_value1 = 34 WHERE entry=16567;

/*  Warlord's Chain Shoulders  */
UPDATE item_template SET stat_value1 = 26 WHERE entry=16568;

/*  General's Chain Boots  */
UPDATE item_template SET stat_value1 = 26 WHERE entry=16569;

/*  General's Chain Gloves  */
UPDATE item_template SET stat_value1 = 21 WHERE entry=16571;

/*  Warlord's Mail Armor  */
UPDATE item_template SET stat_type4 = 0, stat_value4 = 0 WHERE entry=16577;

/*  Warlord's Mail Helm  */
UPDATE item_template SET stat_type4 = 0, stat_value4 = 0 WHERE entry=16578;

/*  Aquarius Belt  */
UPDATE item_template SET Quality = 2, ItemLevel = 16, stat_type1 = 7, stat_value1 = 2, stat_type2 = 5, stat_value2 = 2 WHERE entry=16608;

/*  Thornflinger  */
UPDATE item_template SET dmg_min1 = 52.0, dmg_max1 = 97.0 WHERE entry=16622;

/*  Beaststalker's Tunic  */
UPDATE item_template SET stat_value1 = 21 WHERE entry=16674;

/*  Beaststalker's Boots  */
UPDATE item_template SET stat_value1 = 21 WHERE entry=16675;

/*  Beaststalker's Gloves  */
UPDATE item_template SET stat_value1 = 14 WHERE entry=16676;

/*  Beaststalker's Cap  */
UPDATE item_template SET stat_value1 = 20 WHERE entry=16677;

/*  Beaststalker's Pants  */
UPDATE item_template SET stat_value1 = 26 WHERE entry=16678;

/*  Beaststalker's Mantle  */
UPDATE item_template SET stat_value2 = 11 WHERE entry=16679;

/*  Beaststalker's Belt  */
UPDATE item_template SET stat_type1 = 6, stat_value2 = 10, stat_type4 = 4, stat_value4 = 9 WHERE entry=16680;

/*  Beaststalker's Bindings  */
UPDATE item_template SET stat_value1 = 15 WHERE entry=16681;

/*  Shadowcraft Cap  */
UPDATE item_template SET stat_type3 = 4, stat_value3 = 13, stat_type4 = 6 WHERE entry=16707;

/*  Shadowcraft Gloves  */
UPDATE item_template SET stat_type2 = 6, stat_value2 = 10, stat_type4 = 4 WHERE entry=16712;

/*  Shadowcraft Belt  */
UPDATE item_template SET stat_type3 = 6, stat_type4 = 4, stat_value4 = 9 WHERE entry=16713;

/*  Wildheart Spaulders  */
UPDATE item_template SET stat_type1 = 5, stat_value1 = 18, stat_type2 = 7, stat_value2 = 9, stat_type3 = 6, stat_value3 = 8 WHERE entry=16718;

/*  Shadowcraft Tunic  */
UPDATE item_template SET stat_type3 = 6 WHERE entry=16721;

/*  Shredder Operating Gloves  */
UPDATE item_template SET stat_type3 = 3, stat_value3 = 2 WHERE entry=16740;

/*  Giant Club  */
UPDATE item_template SET dmg_min1 = 26.0, dmg_max1 = 49.0 WHERE entry=16792;

/*  Giantstalker's Breastplate  */
UPDATE item_template SET stat_value1 = 26 WHERE entry=16845;

/*  Giantstalker's Helmet  */
UPDATE item_template SET stat_value1 = 23 WHERE entry=16846;

/*  Giantstalker's Leggings  */
UPDATE item_template SET stat_value1 = 32 WHERE entry=16847;

/*  Giantstalker's Epaulets  */
UPDATE item_template SET stat_value1 = 24 WHERE entry=16848;

/*  Giantstalker's Boots  */
UPDATE item_template SET stat_value1 = 28 WHERE entry=16849;

/*  Giantstalker's Bracers  */
UPDATE item_template SET stat_value1 = 20 WHERE entry=16850;

/*  Giantstalker's Belt  */
UPDATE item_template SET stat_value1 = 18 WHERE entry=16851;

/*  Giantstalker's Gloves  */
UPDATE item_template SET stat_value1 = 18 WHERE entry=16852;

/*  Dragonstalker's Bracers  */
UPDATE item_template SET stat_value1 = 23 WHERE entry=16935;

/*  Dragonstalker's Belt  */
UPDATE item_template SET stat_value1 = 20 WHERE entry=16936;

/*  Dragonstalker's Spaulders  */
UPDATE item_template SET stat_value1 = 23 WHERE entry=16937;

/*  Dragonstalker's Legguards  */
UPDATE item_template SET stat_value1 = 31 WHERE entry=16938;

/*  Dragonstalker's Helm  */
UPDATE item_template SET stat_value1 = 27 WHERE entry=16939;

/*  Dragonstalker's Gauntlets  */
UPDATE item_template SET stat_value1 = 20 WHERE entry=16940;

/*  Dragonstalker's Greaves  */
UPDATE item_template SET stat_value1 = 30 WHERE entry=16941;

/*  Dragonstalker's Breastplate  */
UPDATE item_template SET stat_value1 = 34 WHERE entry=16942;

/*  Smokey's Explosive Launcher  */
UPDATE item_template SET dmg_min1 = 52.0, dmg_max1 = 98.0 WHERE entry=16992;

/*  Gorewood Bow  */
UPDATE item_template SET dmg_min1 = 55.0, dmg_max1 = 104.0 WHERE entry=16996;

/*  Nail Spitter  */
UPDATE item_template SET dmg_min1 = 19.0, dmg_max1 = 37.0 WHERE entry=17042;

/*  Band of Accuria  */
UPDATE item_template SET stat_value2 = 16 WHERE entry=17063;

/*  Striker's Mark  */
UPDATE item_template SET dmg_min1 = 69.0, dmg_max1 = 129.0 WHERE entry=17069;

/*  Fang of the Mystics  */
UPDATE item_template SET dmg_min1 = 38.0, dmg_max1 = 85.0 WHERE entry=17070;

/*  Blastershot Launcher  */
UPDATE item_template SET dmg_min1 = 73.0, dmg_max1 = 136.0 WHERE entry=17072;

/*  Aurastone Hammer  */
UPDATE item_template SET dmg_min1 = 78.8, dmg_max1 = 161.8 WHERE entry=17105;

/*  Amberseal Keeper  */
UPDATE item_template SET dmg_min1 = 144.9, dmg_max1 = 228.9 WHERE entry=17113;

/*  Master Hunter's Bow  */
UPDATE item_template SET dmg_min1 = 32.0, dmg_max1 = 61.0 WHERE entry=17686;

/*  Master Hunter's Rifle  */
UPDATE item_template SET dmg_min1 = 35.0, dmg_max1 = 66.0 WHERE entry=17687;

/*  Gemshard Heart  */
UPDATE item_template SET RequiredLevel = 49 WHERE entry=17707;

/*  Charstone Dirk  */
UPDATE item_template SET RequiredLevel = 49 WHERE entry=17710;

/*  Elemental Rockridge Leggings  */
UPDATE item_template SET nature_res = 10, stat_type3 = 0, stat_value3 = 0, RequiredLevel = 49 WHERE entry=17711;

/*  Blackstone Ring  */
UPDATE item_template SET RequiredLevel = 49 WHERE entry=17713;

/*  Bracers of the Stone Princess  */
UPDATE item_template SET RequiredLevel = 49 WHERE entry=17714;

/*  Eye of Theradras  */
UPDATE item_template SET RequiredLevel = 49 WHERE entry=17715;

/*  Megashot Rifle  */
UPDATE item_template SET dmg_min1 = 32.0, dmg_max1 = 61.0, arcane_res = 5, stat_type1 = 0, stat_value1 = 0 WHERE entry=17717;

/*  Albino Crocscale Boots  */
UPDATE item_template SET nature_res = 5, stat_type3 = 0, stat_value3 = 0 WHERE entry=17728;

/*  Helm of the Mountain  */
UPDATE item_template SET nature_res = 10, stat_type1 = 0, stat_value1 = 0 WHERE entry=17734;

/*  Cloud Stone  */
UPDATE item_template SET arcane_res = 10 WHERE entry=17737;

/*  Claw of Celebras  */
UPDATE item_template SET RequiredLevel = 47 WHERE entry=17738;

/*  Grovekeeper's Drape  */
UPDATE item_template SET nature_res = 10, stat_type2 = 0, stat_value2 = 0, RequiredLevel = 47 WHERE entry=17739;

/*  Soothsayer's Headdress  */
UPDATE item_template SET stat_type1 = 5, stat_value1 = 25, stat_type2 = 6, stat_type3 = 7, stat_value3 = 7, RequiredLevel = 47 WHERE entry=17740;

/*  Noxious Shooter  */
UPDATE item_template SET nature_res = 5, stat_type2 = 0, stat_value2 = 0 WHERE entry=17745;

/*  Noxxion's Shackles  */
UPDATE item_template SET nature_res = 15, stat_type2 = 0, stat_value2 = 0 WHERE entry=17746;

/*  Vinerot Sandals  */
UPDATE item_template SET nature_res = 12 WHERE entry=17748;

/*  Phytoskin Spaulders  */
UPDATE item_template SET nature_res = 10, stat_type3 = 0, stat_value3 = 0 WHERE entry=17749;

/*  Chloromesh Girdle  */
UPDATE item_template SET Quality = 2, nature_res = 20 WHERE entry=17750;

/*  Brusslehide Leggings  */
UPDATE item_template SET Quality = 2, nature_res = 10, stat_value1 = 15, stat_value2 = 11 WHERE entry=17751;

/*  Satyr's Lash  */
UPDATE item_template SET RequiredLevel = 45 WHERE entry=17752;

/*  Verdant Keeper's Aim  */
UPDATE item_template SET dmg_min1 = 53.0, dmg_max1 = 100.0 WHERE entry=17753;

/*  Infernal Trickster Leggings  */
UPDATE item_template SET stat_type3 = 0, stat_value3 = 0, RequiredLevel = 45 WHERE entry=17754;

/*  Satyrmane Sash  */
UPDATE item_template SET shadow_res = 10, RequiredLevel = 45 WHERE entry=17755;

/*  Mark of Resolution  */
UPDATE item_template SET Quality = 2, stat_type1 = 0, stat_value1 = 0 WHERE entry=17759;

/*  Princess Theradras' Scepter  */
UPDATE item_template SET RequiredLevel = 49 WHERE entry=17766;

/*  Bloomsprout Headpiece  */
UPDATE item_template SET nature_res = 10, stat_type2 = 0, stat_value2 = 0 WHERE entry=17767;

/*  Blade of Eternal Darkness  */
UPDATE item_template SET dmg_min1 = 33.5, dmg_max1 = 69.5 WHERE entry=17780;

/*  Thunderfury, Blessed Blade of the Windseeker DEPRECATED  */
UPDATE item_template SET dmg_min1 = 82.0, dmg_max1 = 153.0, dmg_min2 = 16.0, dmg_max2 = 30.0, fire_res = 8, nature_res = 9, stat_type3 = 0, stat_value3 = 0, stat_type4 = 0, stat_value4 = 0 WHERE entry=17802;

/*  Coal Miner Boots  */
UPDATE item_template SET fire_res = 10, stat_value1 = 17, stat_value2 = 9, stat_type3 = 0, stat_value3 = 0 WHERE entry=18043;

/*  Flame Walkers  */
UPDATE item_template SET fire_res = 18, stat_type2 = 0, stat_value2 = 0 WHERE entry=18047;

/*  Core Marksman Rifle  */
UPDATE item_template SET dmg_min1 = 64.0, dmg_max1 = 120.0 WHERE entry=18282;

/*  Marksman Bands  */
UPDATE item_template SET stat_type3 = 0, stat_value3 = 0 WHERE entry=18296;

/*  Nimble Buckler  */
UPDATE item_template SET Quality = 2, ItemLevel = 58, stat_type1 = 3, stat_value1 = 5, stat_type2 = 0, stat_value2 = 0, stat_type3 = 0, stat_value3 = 0, RequiredLevel = 53 WHERE entry=18303;

/*  Greenroot Mail  */
UPDATE item_template SET Quality = 2, ItemLevel = 58, stat_type2 = 0, stat_value2 = 0, stat_type3 = 0, stat_value3 = 0, RequiredLevel = 53 WHERE entry=18304;

/*  Demonheart Spaulders  */
UPDATE item_template SET ItemLevel = 58, stat_value1 = 14, stat_value2 = 14, stat_type3 = 4, stat_value3 = 9, RequiredLevel = 53 WHERE entry=18320;

/*  Satyr's Bow  */
UPDATE item_template SET dmg_min1 = 50.0, dmg_max1 = 93.0 WHERE entry=18323;

/*  Quel'Serrar  */
UPDATE item_template SET dmg_min1 = 84.0, dmg_max1 = 126.0 WHERE entry=18348;

/*  Brightspark Gloves  */
UPDATE item_template SET stat_type3 = 0, stat_value3 = 0 WHERE entry=18387;

/*  Stoneshatter  */
UPDATE item_template SET dmg_min1 = 73.0, dmg_max1 = 111.0, stat_type1 = 0, stat_value1 = 0 WHERE entry=18388;

/*  Distracting Dagger  */
UPDATE item_template SET stat_type1 = 0, stat_value1 = 0 WHERE entry=18392;

/*  Unsophisticated Hand Cannon  */
UPDATE item_template SET dmg_min1 = 48.0, dmg_max1 = 91.0 WHERE entry=18460;

/*  Jagged Bone Fist  */
UPDATE item_template SET dmg_min1 = 51.0, dmg_max1 = 78.0 WHERE entry=18462;

/*  Ogre Toothpick Shooter  */
UPDATE item_template SET dmg_min1 = 61.0, dmg_max1 = 62.0 WHERE entry=18482;

/*  Lorespinner  */
UPDATE item_template SET dmg_min1 = 45.0, dmg_max1 = 68.0 WHERE entry=18491;

/*  Mugger's Belt  */
UPDATE item_template SET stat_type2 = 0, stat_value2 = 0 WHERE entry=18505;

/*  Treant's Bane  */
UPDATE item_template SET dmg_min1 = 128.0, dmg_max1 = 193.0 WHERE entry=18538;

/*  The Twin Blades of Azzinoth  */
UPDATE item_template SET dmg_min1 = 132.0, dmg_max1 = 139.0 WHERE entry=18582;

/*  Warglaive of Azzinoth (Right)  */
UPDATE item_template SET dmg_min1 = 85.0, dmg_max1 = 95.0 WHERE entry=18583;

/*  Warglaive of Azzinoth (Left)  */
UPDATE item_template SET dmg_min1 = 85.0, dmg_max1 = 95.0 WHERE entry=18584;

/*  Benediction  */
UPDATE item_template SET stat_type4 = 0, stat_value4 = 0 WHERE entry=18608;

/*  Keen Machete  */
UPDATE item_template SET bonding = 2 WHERE entry=18610;

/*  Gnarlpine Leggings  */
UPDATE item_template SET bonding = 2 WHERE entry=18611;

/*  Bloody Chain Boots  */
UPDATE item_template SET bonding = 2 WHERE entry=18612;

/*  Ancient Bone Bow  */
UPDATE item_template SET dmg_min1 = 61.0, dmg_max1 = 114.0 WHERE entry=18680;

/*  Rhok'delar, Longbow of the Ancient Keepers  */
UPDATE item_template SET dmg_min1 = 89.0, dmg_max1 = 166.0 WHERE entry=18713;

/*  Screeching Bow  */
UPDATE item_template SET dmg_min1 = 70.0, dmg_max1 = 71.0 WHERE entry=18729;

/*  Carapace Spine Crossbow  */
UPDATE item_template SET dmg_min1 = 82.0, dmg_max1 = 124.0 WHERE entry=18738;

/*  Xorothian Firestick  */
UPDATE item_template SET dmg_min1 = 57.0, dmg_max1 = 108.0 WHERE entry=18755;

/*  Crown of Destruction  */
UPDATE item_template SET stat_type4 = 0, stat_value4 = 0 WHERE entry=18817;

/*  Obsidian Edged Blade  */
UPDATE item_template SET stat_type2 = 0, stat_value2 = 0 WHERE entry=18822;

/*  Aged Core Leather Gloves  */
UPDATE item_template SET stat_type3 = 0, stat_value3 = 0 WHERE entry=18823;

/*  Grand Marshal's Bullseye  */
UPDATE item_template SET dmg_min1 = 66.0, dmg_max1 = 100.0 WHERE entry=18833;

/*  Insignia of the Horde  */
UPDATE item_template SET ItemLevel = 0 WHERE entry=18834;

/*  High Warlord's Recurve  */
UPDATE item_template SET dmg_min1 = 66.0, dmg_max1 = 100.0 WHERE entry=18835;

/*  Grand Marshal's Repeater  */
UPDATE item_template SET dmg_min1 = 107.0, dmg_max1 = 162.0 WHERE entry=18836;

/*  High Warlord's Crossbow  */
UPDATE item_template SET dmg_min1 = 107.0, dmg_max1 = 162.0 WHERE entry=18837;

/*  Insignia of the Horde  */
UPDATE item_template SET ItemLevel = 0 WHERE entry=18845;

/*  Insignia of the Horde  */
UPDATE item_template SET ItemLevel = 0 WHERE entry=18846;

/*  Insignia of the Horde  */
UPDATE item_template SET ItemLevel = 0 WHERE entry=18849;

/*  Insignia of the Horde  */
UPDATE item_template SET ItemLevel = 0 WHERE entry=18850;

/*  Insignia of the Horde  */
UPDATE item_template SET ItemLevel = 0 WHERE entry=18851;

/*  Insignia of the Horde  */
UPDATE item_template SET ItemLevel = 0 WHERE entry=18852;

/*  Insignia of the Horde  */
UPDATE item_template SET ItemLevel = 0 WHERE entry=18853;

/*  Insignia of the Alliance  */
UPDATE item_template SET ItemLevel = 0 WHERE entry=18854;

/*  Grand Marshal's Hand Cannon  */
UPDATE item_template SET dmg_min1 = 107.0, dmg_max1 = 162.0 WHERE entry=18855;

/*  Insignia of the Alliance  */
UPDATE item_template SET ItemLevel = 0 WHERE entry=18856;

/*  Insignia of the Alliance  */
UPDATE item_template SET ItemLevel = 0 WHERE entry=18857;

/*  Insignia of the Alliance  */
UPDATE item_template SET ItemLevel = 0 WHERE entry=18858;

/*  Insignia of the Alliance  */
UPDATE item_template SET ItemLevel = 0 WHERE entry=18859;

/*  High Warlord's Street Sweeper  */
UPDATE item_template SET dmg_min1 = 107.0, dmg_max1 = 162.0 WHERE entry=18860;

/*  Insignia of the Alliance  */
UPDATE item_template SET ItemLevel = 0 WHERE entry=18862;

/*  Insignia of the Alliance  */
UPDATE item_template SET ItemLevel = 0 WHERE entry=18863;

/*  Insignia of the Alliance  */
UPDATE item_template SET ItemLevel = 0 WHERE entry=18864;

/*  TEST Ragnaros Hammer  */
UPDATE item_template SET dmg_min1 = 180.0, dmg_max1 = 302.0, fire_res = 30, stat_type3 = 0, stat_value3 = 0 WHERE entry=18881;

/*  Barbaric Bracers  */
UPDATE item_template SET stat_type2 = 6, stat_value2 = 4 WHERE entry=18948;

/*  Arena Grand Master  */
UPDATE item_template SET stat_type1 = 0, stat_value1 = 0 WHERE entry=19024;

/*  Might of the Timbermaw  */
UPDATE item_template SET stat_type1 = 4, stat_value1 = 21 WHERE entry=19044;

/*  Dawn Treaders  */
UPDATE item_template SET stat_type2 = 0, stat_value2 = 0, stat_type3 = 0, stat_value3 = 0 WHERE entry=19052;

/*  Emerald Circle  */
UPDATE item_template SET stat_type3 = 0, stat_value3 = 0 WHERE entry=19065;

/*  Bloodseeker  */
UPDATE item_template SET dmg_min1 = 85.0, dmg_max1 = 128.0 WHERE entry=19107;

/*  Highland Bow  */
UPDATE item_template SET dmg_min1 = 41.0, dmg_max1 = 77.0 WHERE entry=19114;

/*  Robe of Volatile Power  */
UPDATE item_template SET stat_type4 = 0, stat_value4 = 0 WHERE entry=19145;

/*  Chromatic Gauntlets  */
UPDATE item_template SET stat_type1 = 0, stat_value1 = 0 WHERE entry=19157;

/*  TEST Sulfuras, Hand of Ragnaros  */
UPDATE item_template SET dmg_min1 = 180.0, dmg_max1 = 302.0, fire_res = 30, stat_type3 = 0, stat_value3 = 0 WHERE entry=19158;

/*  Darkmoon Card: Heroism  */
UPDATE item_template SET bonding = 1 WHERE entry=19287;

/*  Darkmoon Card: Blue Dragon  */
UPDATE item_template SET bonding = 1 WHERE entry=19288;

/*  Darkmoon Card: Maelstrom  */
UPDATE item_template SET bonding = 1 WHERE entry=19289;

/*  Darkmoon Card: Twisting Nether  */
UPDATE item_template SET bonding = 1 WHERE entry=19290;

/*  Darkmoon Necklace  */
UPDATE item_template SET Quality = 3 WHERE entry=19303;

/*  Therazane's Touch  */
UPDATE item_template SET stat_type1 = 5 WHERE entry=19315;

/*  Heartstriker  */
UPDATE item_template SET dmg_min1 = 80.0, dmg_max1 = 149.0 WHERE entry=19350;

/*  Maladath, Runed Blade of the Black Flight  */
UPDATE item_template SET stat_type1 = 0, stat_value1 = 0 WHERE entry=19351;

/*  Shadow Wing Focus Staff  */
UPDATE item_template SET dmg_min1 = 142.2, dmg_max1 = 237.2 WHERE entry=19355;

/*  Staff of the Shadow Flame  */
UPDATE item_template SET dmg_min1 = 141.8, dmg_max1 = 247.8 WHERE entry=19356;

/*  Lok'amir il Romathis  */
UPDATE item_template SET dmg_min1 = 47.9, dmg_max1 = 127.9 WHERE entry=19360;

/*  Ashjre'thul, Crossbow of Smiting  */
UPDATE item_template SET dmg_min1 = 124.0, dmg_max1 = 186.0 WHERE entry=19361;

/*  Dragonbreath Hand Cannon  */
UPDATE item_template SET dmg_min1 = 86.0, dmg_max1 = 160.0 WHERE entry=19368;

/*  Prestor's Talisman of Connivery  */
UPDATE item_template SET stat_value1 = 30 WHERE entry=19377;

/*  Neltharion's Tear  */
UPDATE item_template SET stat_type1 = 0, stat_value1 = 0 WHERE entry=19379;

/*  Inquisitor's Shawl  */
UPDATE item_template SET Quality = 2, stat_value1 = 8, stat_type2 = 0, stat_value2 = 0 WHERE entry=19507;

/*  Branded Leather Bracers  */
UPDATE item_template SET Quality = 2, stat_value1 = 4, stat_type2 = 0, stat_value2 = 0 WHERE entry=19508;

/*  Dusty Mail Boots  */
UPDATE item_template SET Quality = 2, stat_value1 = 9 WHERE entry=19509;

/*  Outrider's Bow  */
UPDATE item_template SET dmg_min1 = 54.0, dmg_max1 = 101.0 WHERE entry=19558;

/*  Outrider's Bow  */
UPDATE item_template SET dmg_min1 = 46.0, dmg_max1 = 86.0 WHERE entry=19559;

/*  Outrider's Bow  */
UPDATE item_template SET dmg_min1 = 38.0, dmg_max1 = 71.0 WHERE entry=19560;

/*  Outrider's Bow  */
UPDATE item_template SET dmg_min1 = 28.0, dmg_max1 = 52.0 WHERE entry=19561;

/*  Outrunner's Bow  */
UPDATE item_template SET dmg_min1 = 54.0, dmg_max1 = 101.0 WHERE entry=19562;

/*  Outrunner's Bow  */
UPDATE item_template SET dmg_min1 = 46.0, dmg_max1 = 86.0 WHERE entry=19563;

/*  Outrunner's Bow  */
UPDATE item_template SET dmg_min1 = 38.0, dmg_max1 = 71.0 WHERE entry=19564;

/*  Outrunner's Bow  */
UPDATE item_template SET dmg_min1 = 28.0, dmg_max1 = 52.0 WHERE entry=19565;

/*  Rage of Mugamba  */
UPDATE item_template SET stat_type4 = 0, stat_value4 = 0 WHERE entry=19577;

/*  Maelstrom's Wrath  */
UPDATE item_template SET stat_value1 = 15 WHERE entry=19621;

/*  Zandalar Predator's Mantle  */
UPDATE item_template SET stat_value1 = 22 WHERE entry=19831;

/*  Zandalar Predator's Belt  */
UPDATE item_template SET stat_value2 = 20 WHERE entry=19832;

/*  Gurubashi Dwarf Destroyer  */
UPDATE item_template SET dmg_min1 = 76.0, dmg_max1 = 142.0 WHERE entry=19853;

/*  Bloodcaller  */
UPDATE item_template SET dmg_min1 = 52.6, dmg_max1 = 113.6 WHERE entry=19864;

/*  Jin'do's Judgement  */
UPDATE item_template SET dmg_min1 = 143.55, dmg_max1 = 226.55 WHERE entry=19884;

/*  Jin'do's Hexxer  */
UPDATE item_template SET dmg_min1 = 64.4, dmg_max1 = 134.4 WHERE entry=19890;

/*  Fang of Venoxis  */
UPDATE item_template SET dmg_min1 = 35.2, dmg_max1 = 72.2 WHERE entry=19903;

/*  Sceptre of Smiting  */
UPDATE item_template SET stat_type1 = 0, stat_value1 = 0 WHERE entry=19908;

/*  Arlokk's Grasp  */
UPDATE item_template SET dmg_min1 = 41.5, dmg_max1 = 84.5 WHERE entry=19910;

/*  Zulian Hacker  */
UPDATE item_template SET stat_type1 = 0, stat_value1 = 0 WHERE entry=19921;

/*  Renataki's Soul Conduit  */
UPDATE item_template SET dmg_min1 = 57.6, dmg_max1 = 114.6 WHERE entry=19964;

/*  Wushoolay's Poker  */
UPDATE item_template SET dmg_min1 = 43.6, dmg_max1 = 87.6 WHERE entry=19965;

/*  Nat Pagle's Extreme Anglin' Boots  */
UPDATE item_template SET RequiredLevel = 0 WHERE entry=19969;

/*  Duskbat Drape  */
UPDATE item_template SET stat_type2 = 0, stat_value2 = 0 WHERE entry=19982;

/*  Devilsaur Tooth  */
UPDATE item_template SET stat_type1 = 0, stat_value1 = 0 WHERE entry=19992;

/*  Hoodoo Hunting Bow  */
UPDATE item_template SET dmg_min1 = 68.0, dmg_max1 = 128.0 WHERE entry=19993;

/*  Devilsaur Claws  */
UPDATE item_template SET dmg_min1 = 48.0, dmg_max1 = 90.0, stat_type2 = 0, stat_value2 = 0 WHERE entry=20003;

/*  Devilsaur Claws  */
UPDATE item_template SET dmg_min1 = 48.0, dmg_max1 = 90.0, stat_type2 = 0, stat_value2 = 0 WHERE entry=20005;

/*  Circle of Hope  */
UPDATE item_template SET stat_type1 = 0, stat_value1 = 0 WHERE entry=20006;

/*  Mandokir's Sting  */
UPDATE item_template SET dmg_min1 = 68.0, dmg_max1 = 127.0 WHERE entry=20038;

/*  Highlander's Plate Girdle  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 5 WHERE entry=20041;

/*  Highlander's Lamellar Girdle  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 5 WHERE entry=20042;

/*  Highlander's Chain Girdle  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 5 WHERE entry=20043;

/*  Highlander's Mail Girdle  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 5 WHERE entry=20044;

/*  Highlander's Leather Girdle  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 5 WHERE entry=20045;

/*  Highlander's Lizardhide Girdle  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 5 WHERE entry=20046;

/*  Highlander's Cloth Girdle  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 5 WHERE entry=20047;

/*  Highlander's Plate Greaves  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 6 WHERE entry=20048;

/*  Highlander's Lamellar Greaves  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 6 WHERE entry=20049;

/*  Highlander's Chain Greaves  */
UPDATE item_template SET stat_value2 = 15, RequiredReputationFaction = 509, RequiredReputationRank = 6 WHERE entry=20050;

/*  Highlander's Mail Greaves  */
UPDATE item_template SET stat_value2 = 15, RequiredReputationFaction = 509, RequiredReputationRank = 6 WHERE entry=20051;

/*  Highlander's Leather Boots  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 6 WHERE entry=20052;

/*  Highlander's Lizardhide Boots  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 6 WHERE entry=20053;

/*  Highlander's Cloth Boots  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 6 WHERE entry=20054;

/*  Highlander's Chain Pauldrons  */
UPDATE item_template SET stat_value1 = 20, RequiredReputationFaction = 509, RequiredReputationRank = 7 WHERE entry=20055;

/*  Highlander's Mail Pauldrons  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 7 WHERE entry=20056;

/*  Highlander's Plate Spaulders  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 7 WHERE entry=20057;

/*  Highlander's Lamellar Spaulders  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 7 WHERE entry=20058;

/*  Highlander's Leather Shoulders  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 7 WHERE entry=20059;

/*  Highlander's Lizardhide Shoulders  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 7 WHERE entry=20060;

/*  Highlander's Epaulets  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 7 WHERE entry=20061;

/*  Deathguard's Cloak  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 7 WHERE entry=20068;

/*  Ironbark Staff  */
UPDATE item_template SET dmg_min1 = 136.62, dmg_max1 = 242.62, RequiredReputationFaction = 509, RequiredReputationRank = 7 WHERE entry=20069;

/*  Sageclaw  */
UPDATE item_template SET dmg_min1 = 46.31, dmg_max1 = 95.31, RequiredReputationFaction = 509, RequiredReputationRank = 7 WHERE entry=20070;

/*  Talisman of Arathor  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 4 WHERE entry=20071;

/*  Defiler's Talisman  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 4 WHERE entry=20072;

/*  Cloak of the Honor Guard  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 7 WHERE entry=20073;

/*  Highlander's Chain Girdle  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 5 WHERE entry=20088;

/*  Highlander's Chain Girdle  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 5 WHERE entry=20089;

/*  Highlander's Chain Greaves  */
UPDATE item_template SET stat_value2 = 12, RequiredReputationFaction = 509, RequiredReputationRank = 6 WHERE entry=20091;

/*  Highlander's Chain Greaves  */
UPDATE item_template SET stat_value2 = 10, RequiredReputationFaction = 509, RequiredReputationRank = 6 WHERE entry=20092;

/*  Highlander's Cloth Boots  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 6 WHERE entry=20094;

/*  Highlander's Cloth Boots  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 6 WHERE entry=20095;

/*  Highlander's Cloth Boots  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 6 WHERE entry=20096;

/*  Highlander's Cloth Girdle  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 5 WHERE entry=20097;

/*  Highlander's Cloth Girdle  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 5 WHERE entry=20098;

/*  Highlander's Cloth Girdle  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 5 WHERE entry=20099;

/*  Highlander's Lizardhide Boots  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 6 WHERE entry=20100;

/*  Highlander's Lizardhide Boots  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 6 WHERE entry=20101;

/*  Highlander's Lizardhide Boots  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 6 WHERE entry=20102;

/*  Highlander's Lizardhide Girdle  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 5 WHERE entry=20103;

/*  Highlander's Lizardhide Girdle  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 5 WHERE entry=20104;

/*  Highlander's Lizardhide Girdle  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 5 WHERE entry=20105;

/*  Highlander's Lamellar Girdle  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 5 WHERE entry=20106;

/*  Highlander's Lamellar Girdle  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 5 WHERE entry=20107;

/*  Highlander's Lamellar Girdle  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 5 WHERE entry=20108;

/*  Highlander's Lamellar Greaves  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 6 WHERE entry=20109;

/*  Highlander's Lamellar Greaves  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 6 WHERE entry=20110;

/*  Highlander's Lamellar Greaves  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 6 WHERE entry=20111;

/*  Highlander's Leather Boots  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 6 WHERE entry=20112;

/*  Highlander's Leather Boots  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 6 WHERE entry=20113;

/*  Highlander's Leather Boots  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 6 WHERE entry=20114;

/*  Highlander's Leather Girdle  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 5 WHERE entry=20115;

/*  Highlander's Leather Girdle  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 5 WHERE entry=20116;

/*  Highlander's Leather Girdle  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 5 WHERE entry=20117;

/*  Highlander's Mail Girdle  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 5 WHERE entry=20118;

/*  Highlander's Mail Girdle  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 5 WHERE entry=20119;

/*  Highlander's Mail Girdle  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 5 WHERE entry=20120;

/*  Highlander's Mail Greaves  */
UPDATE item_template SET stat_value2 = 12, RequiredReputationFaction = 509, RequiredReputationRank = 6 WHERE entry=20121;

/*  Highlander's Mail Greaves  */
UPDATE item_template SET stat_value2 = 10, RequiredReputationFaction = 509, RequiredReputationRank = 6 WHERE entry=20122;

/*  Highlander's Mail Greaves  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 6 WHERE entry=20123;

/*  Highlander's Plate Girdle  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 5 WHERE entry=20124;

/*  Highlander's Plate Girdle  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 5 WHERE entry=20125;

/*  Highlander's Plate Greaves  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 6 WHERE entry=20127;

/*  Highlander's Plate Greaves  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 6 WHERE entry=20128;

/*  Battle Tabard of the Defilers  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 7 WHERE entry=20131;

/*  Arathor Battle Tabard  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 7 WHERE entry=20132;

/*  Skyfury Helm  */
UPDATE item_template SET stat_type4 = 0, stat_value4 = 0 WHERE entry=20134;

/*  90 Epic Warrior Waistband  */
UPDATE item_template SET fire_res = 5, nature_res = 6, frost_res = 6, shadow_res = 6, arcane_res = 6, stat_type3 = 0, stat_value3 = 0, stat_type4 = 0, stat_value4 = 0, stat_type5 = 0, stat_value5 = 0, stat_type6 = 0, stat_value6 = 0, stat_type7 = 0, stat_value7 = 0, stat_type8 = 0, stat_value8 = 0 WHERE entry=20142;

/*  Defiler's Chain Girdle  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 5 WHERE entry=20150;

/*  Defiler's Chain Girdle  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 5 WHERE entry=20151;

/*  Defiler's Chain Girdle  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 5 WHERE entry=20152;

/*  Defiler's Chain Girdle  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 5 WHERE entry=20153;

/*  Defiler's Chain Greaves  */
UPDATE item_template SET stat_value2 = 15, RequiredReputationFaction = 510, RequiredReputationRank = 6 WHERE entry=20154;

/*  Defiler's Chain Greaves  */
UPDATE item_template SET stat_value2 = 12, RequiredReputationFaction = 510, RequiredReputationRank = 6 WHERE entry=20155;

/*  Defiler's Chain Greaves  */
UPDATE item_template SET stat_value2 = 10, RequiredReputationFaction = 510, RequiredReputationRank = 6 WHERE entry=20156;

/*  Defiler's Chain Greaves  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 6 WHERE entry=20157;

/*  Defiler's Chain Pauldrons  */
UPDATE item_template SET stat_value1 = 20, RequiredReputationFaction = 510, RequiredReputationRank = 7 WHERE entry=20158;

/*  Defiler's Cloth Boots  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 6 WHERE entry=20159;

/*  Defiler's Cloth Boots  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 6 WHERE entry=20160;

/*  Defiler's Cloth Boots  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 6 WHERE entry=20161;

/*  Defiler's Cloth Boots  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 6 WHERE entry=20162;

/*  Defiler's Cloth Girdle  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 5 WHERE entry=20163;

/*  Defiler's Cloth Girdle  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 5 WHERE entry=20164;

/*  Defiler's Cloth Girdle  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 5 WHERE entry=20165;

/*  Defiler's Cloth Girdle  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 5 WHERE entry=20166;

/*  Defiler's Lizardhide Boots  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 6 WHERE entry=20167;

/*  Defiler's Lizardhide Boots  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 6 WHERE entry=20168;

/*  Defiler's Lizardhide Boots  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 6 WHERE entry=20169;

/*  Defiler's Lizardhide Boots  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 6 WHERE entry=20170;

/*  Defiler's Lizardhide Girdle  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 5 WHERE entry=20171;

/*  Defiler's Lizardhide Girdle  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 5 WHERE entry=20172;

/*  Defiler's Lizardhide Girdle  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 5 WHERE entry=20173;

/*  Defiler's Lizardhide Girdle  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 5 WHERE entry=20174;

/*  Defiler's Lizardhide Shoulders  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 7 WHERE entry=20175;

/*  Defiler's Epaulets  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 7 WHERE entry=20176;

/*  Defiler's Lamellar Girdle  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 5 WHERE entry=20177;

/*  Defiler's Lamellar Girdle  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 5 WHERE entry=20178;

/*  Defiler's Lamellar Girdle  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 5 WHERE entry=20179;

/*  Defiler's Lamellar Girdle  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 5 WHERE entry=20180;

/*  Defiler's Lamellar Greaves  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 6 WHERE entry=20181;

/*  Defiler's Lamellar Greaves  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 6 WHERE entry=20182;

/*  Defiler's Lamellar Greaves  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 6 WHERE entry=20183;

/*  Defiler's Lamellar Spaulders  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 7 WHERE entry=20184;

/*  Defiler's Lamellar Greaves  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 6 WHERE entry=20185;

/*  Defiler's Leather Boots  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 6 WHERE entry=20186;

/*  Defiler's Leather Boots  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 6 WHERE entry=20187;

/*  Defiler's Leather Boots  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 6 WHERE entry=20188;

/*  Defiler's Leather Boots  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 6 WHERE entry=20189;

/*  Defiler's Leather Girdle  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 5 WHERE entry=20190;

/*  Defiler's Leather Girdle  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 5 WHERE entry=20191;

/*  Defiler's Leather Girdle  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 5 WHERE entry=20192;

/*  Defiler's Leather Girdle  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 5 WHERE entry=20193;

/*  Defiler's Leather Shoulders  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 7 WHERE entry=20194;

/*  Defiler's Mail Girdle  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 5 WHERE entry=20195;

/*  Defiler's Mail Girdle  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 5 WHERE entry=20196;

/*  Defiler's Mail Girdle  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 5 WHERE entry=20198;

/*  Defiler's Mail Greaves  */
UPDATE item_template SET stat_value2 = 15, RequiredReputationFaction = 510, RequiredReputationRank = 6 WHERE entry=20199;

/*  Defiler's Mail Greaves  */
UPDATE item_template SET stat_value2 = 10, RequiredReputationFaction = 510, RequiredReputationRank = 6 WHERE entry=20200;

/*  Defiler's Mail Greaves  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 6 WHERE entry=20201;

/*  Defiler's Mail Greaves  */
UPDATE item_template SET stat_value2 = 12, RequiredReputationFaction = 510, RequiredReputationRank = 6 WHERE entry=20202;

/*  Defiler's Mail Pauldrons  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 7 WHERE entry=20203;

/*  Defiler's Plate Girdle  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 5 WHERE entry=20204;

/*  Defiler's Plate Girdle  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 5 WHERE entry=20205;

/*  Defiler's Plate Girdle  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 5 WHERE entry=20206;

/*  Defiler's Plate Greaves  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 6 WHERE entry=20208;

/*  Defiler's Plate Greaves  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 6 WHERE entry=20209;

/*  Defiler's Plate Greaves  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 6 WHERE entry=20211;

/*  Defiler's Plate Spaulders  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 7 WHERE entry=20212;

/*  Mindfang  */
UPDATE item_template SET dmg_min1 = 46.31, dmg_max1 = 95.31, RequiredReputationFaction = 510, RequiredReputationRank = 7 WHERE entry=20214;

/*  Ironbark Staff  */
UPDATE item_template SET dmg_min1 = 136.62, dmg_max1 = 242.62, RequiredReputationFaction = 510, RequiredReputationRank = 7 WHERE entry=20220;

/*  Seafury Gauntlets  */
UPDATE item_template SET stat_type4 = 0, stat_value4 = 0 WHERE entry=20257;

/*  Zulian Ceremonial Staff  */
UPDATE item_template SET dmg_min1 = 112.4, dmg_max1 = 171.4 WHERE entry=20258;

/*  Blue Dragonscale Leggings  */
UPDATE item_template SET arcane_res = 12, stat_value1 = 20, stat_type2 = 6, stat_value2 = 19, stat_type3 = 0, stat_value3 = 0 WHERE entry=20295;

/*  Green Dragonscale Gauntlets  */
UPDATE item_template SET ItemLevel = 56, stat_type1 = 6, stat_value1 = 18, stat_type2 = 7, stat_value2 = 5, stat_type3 = 0, stat_value3 = 0, RequiredLevel = 51 WHERE entry=20296;

/*  90 Epic Frost Leggings  */
UPDATE item_template SET stat_value1 = 15, stat_type2 = 5, stat_value2 = 37, stat_type3 = 7, stat_value3 = 16 WHERE entry=20329;

/*  Bland Bow of Steadiness  */
UPDATE item_template SET dmg_min1 = 46.0, dmg_max1 = 46.0 WHERE entry=20368;

/*  Outrider's Bow  */
UPDATE item_template SET dmg_min1 = 19.0, dmg_max1 = 37.0 WHERE entry=20437;

/*  Outrunner's Bow  */
UPDATE item_template SET dmg_min1 = 19.0, dmg_max1 = 37.0 WHERE entry=20438;

/*  Ironbark Shield  */
UPDATE item_template SET stat_type2 = 0, stat_value2 = 0 WHERE entry=20502;

/*  Feral Staff  */
UPDATE item_template SET dmg_min1 = 108.0, dmg_max1 = 162.0, stat_type3 = 0, stat_value3 = 0 WHERE entry=20522;

/*  Shadowhide Leggings  */
UPDATE item_template SET shadow_res = 6, stat_type3 = 0, stat_value3 = 0, stat_type4 = 0, stat_value4 = 0 WHERE entry=20524;

/*  Abyss Shard  */
UPDATE item_template SET stat_type1 = 0, stat_value1 = 0 WHERE entry=20534;

/*  Black Whelp Tunic  */
UPDATE item_template SET stat_type1 = 4 WHERE entry=20575;

/*  Hammer of Bestial Fury  */
UPDATE item_template SET stat_type1 = 4, stat_value1 = 13 WHERE entry=20580;

/*  Staff of Rampant Growth  */
UPDATE item_template SET dmg_min1 = 113.4, dmg_max1 = 184.4 WHERE entry=20581;

/*  Polished Ironwood Crossbow  */
UPDATE item_template SET dmg_min1 = 101.0, dmg_max1 = 153.0 WHERE entry=20599;

/*  Circlet of Restless Dreams  */
UPDATE item_template SET stat_type3 = 0, stat_value3 = 0 WHERE entry=20623;

/*  Sandstrider's Mark  */
UPDATE item_template SET Quality = 2, dmg_min1 = 44.0, dmg_max1 = 82.0, stat_value1 = 8 WHERE entry=20646;

/*  Black Crystal Dagger  */
UPDATE item_template SET Quality = 2, dmg_min1 = 44.0, dmg_max1 = 83.0 WHERE entry=20647;

/*  Deep Strike Bow  */
UPDATE item_template SET dmg_min1 = 58.0, dmg_max1 = 108.0 WHERE entry=20663;

/*  Elemental Attuned Blade  */
UPDATE item_template SET dmg_min1 = 58.6, dmg_max1 = 116.6 WHERE entry=20698;

/*  Dark Whisper Blade  */
UPDATE item_template SET dmg_min1 = 39.6, dmg_max1 = 76.6 WHERE entry=20720;

/*  Crystal Slugthrower  */
UPDATE item_template SET dmg_min1 = 65.0, dmg_max1 = 122.0 WHERE entry=20722;

/*  Defiler's Talisman  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 4 WHERE entry=21115;

/*  Defiler's Talisman  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 4 WHERE entry=21116;

/*  Talisman of Arathor  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 4 WHERE entry=21117;

/*  Talisman of Arathor  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 4 WHERE entry=21118;

/*  Talisman of Arathor  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 4 WHERE entry=21119;

/*  Defiler's Talisman  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 4 WHERE entry=21120;

/*  Death's Sting  */
UPDATE item_template SET stat_type2 = 0, stat_value2 = 0 WHERE entry=21126;

/*  Staff of the Qiraji Prophets  */
UPDATE item_template SET dmg_min1 = 129.4, dmg_max1 = 214.4 WHERE entry=21128;

/*  Signet Ring of the Bronze Dragonflight  */
UPDATE item_template SET stat_value1 = 18 WHERE entry=21201;

/*  Signet Ring of the Bronze Dragonflight  */
UPDATE item_template SET stat_value1 = 19 WHERE entry=21202;

/*  Signet Ring of the Bronze Dragonflight  */
UPDATE item_template SET stat_value1 = 21 WHERE entry=21203;

/*  Signet Ring of the Bronze Dragonflight  */
UPDATE item_template SET stat_value1 = 22 WHERE entry=21204;

/*  Signet Ring of the Bronze Dragonflight  */
UPDATE item_template SET stat_value1 = 24 WHERE entry=21205;

/*  Blessed Qiraji War Hammer  */
UPDATE item_template SET stat_type2 = 4, stat_value2 = 10 WHERE entry=21268;

/*  Blessed Qiraji Musket  */
UPDATE item_template SET dmg_min1 = 86.0, dmg_max1 = 160.0 WHERE entry=21272;

/*  Stormshroud Gloves  */
UPDATE item_template SET ItemLevel = 62, stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0, RequiredLevel = 57 WHERE entry=21278;

/*  Striker's Footguards  */
UPDATE item_template SET stat_value1 = 31 WHERE entry=21365;

/*  Striker's Diadem  */
UPDATE item_template SET stat_value1 = 29 WHERE entry=21366;

/*  Striker's Pauldrons  */
UPDATE item_template SET stat_value1 = 26 WHERE entry=21367;

/*  Striker's Leggings  */
UPDATE item_template SET stat_value1 = 36 WHERE entry=21368;

/*  Striker's Hauberk  */
UPDATE item_template SET stat_value1 = 39 WHERE entry=21370;

/*  Scythe of the Unseen Path  */
UPDATE item_template SET stat_value1 = 16 WHERE entry=21401;

/*  Signet of the Unseen Path  */
UPDATE item_template SET stat_value1 = 19 WHERE entry=21402;

/*  Cloak of the Unseen Path  */
UPDATE item_template SET stat_value1 = 17 WHERE entry=21403;

/*  Mace of Unending Life  */
UPDATE item_template SET dmg_min1 = 67.0, dmg_max1 = 149.0, stat_type1 = 4, stat_value1 = 9, stat_value2 = 7, stat_value3 = 11, stat_value4 = 10, stat_type5 = 0, stat_value5 = 0 WHERE entry=21407;

/*  Staff of the Ruins  */
UPDATE item_template SET dmg_min1 = 151.6, dmg_max1 = 246.6 WHERE entry=21452;

/*  Crossbow of Imminent Doom  */
UPDATE item_template SET dmg_min1 = 103.0, dmg_max1 = 155.0 WHERE entry=21459;

/*  Stinger of Ayamiss  */
UPDATE item_template SET dmg_min1 = 63.4, dmg_max1 = 136.4 WHERE entry=21466;

/*  Bow of Taut Sinew  */
UPDATE item_template SET dmg_min1 = 59.0, dmg_max1 = 111.0 WHERE entry=21478;

/*  Runesword of the Red  */
UPDATE item_template SET dmg_min1 = 52.8, dmg_max1 = 128.8 WHERE entry=21521;

/*  Fang of Korialstrasz  */
UPDATE item_template SET dmg_min1 = 43.2, dmg_max1 = 106.2 WHERE entry=21523;

/*  Bracers of the Fallen Son  */
UPDATE item_template SET stat_type1 = 5, stat_value1 = 15, stat_type2 = 7, stat_value2 = 10, stat_type3 = 0, stat_value3 = 0 WHERE entry=21594;

/*  Ring of the Godslayer  */
UPDATE item_template SET stat_value1 = 27 WHERE entry=21596;

/*  Wormscale Stompers  */
UPDATE item_template SET stat_value2 = 12, stat_value3 = 12, stat_type4 = 0, stat_value4 = 0 WHERE entry=21612;

/*  Wormhide Boots  */
UPDATE item_template SET stat_type2 = 4, stat_value2 = 18, stat_type3 = 7, stat_value3 = 13 WHERE entry=21613;

/*  Wormhide Protector  */
UPDATE item_template SET nature_res = 30, stat_value1 = 26, stat_type3 = 4, stat_value3 = 18 WHERE entry=21614;

/*  Huhuran's Stinger  */
UPDATE item_template SET dmg_min1 = 87.0, dmg_max1 = 163.0 WHERE entry=21616;

/*  Sharpened Silithid Femur  */
UPDATE item_template SET dmg_min1 = 53.6, dmg_max1 = 136.6 WHERE entry=21622;

/*  Barb of the Sand Reaver  */
UPDATE item_template SET stat_value1 = 41 WHERE entry=21635;

/*  Silithid Husked Launcher  */
UPDATE item_template SET dmg_min1 = 68.0, dmg_max1 = 128.0 WHERE entry=21800;

/*  The Lost Kris of Zedd  */
UPDATE item_template SET dmg_min1 = 41.75, dmg_max1 = 82.75 WHERE entry=21802;

/*  Anubisath Warhammer  */
UPDATE item_template SET stat_type2 = 0, stat_value2 = 0 WHERE entry=21837;

/*  Scepter of the False Prophet  */
UPDATE item_template SET dmg_min1 = 38.36, dmg_max1 = 111.36 WHERE entry=21839;

/*  Gauntlets of Heroism  */
UPDATE item_template SET ItemLevel = 55, stat_value1 = 18, stat_value2 = 12, stat_type3 = 0, stat_value3 = 0 WHERE entry=21998;

/*  Darkmantle Gloves  */
UPDATE item_template SET ItemLevel = 55, stat_value1 = 22, stat_value2 = 12, stat_value3 = 9 WHERE entry=22006;

/*  Beastmaster's Belt  */
UPDATE item_template SET stat_value1 = 16 WHERE entry=22010;

/*  Beastmaster's Bindings  */
UPDATE item_template SET stat_value1 = 16 WHERE entry=22011;

/*  Beastmaster's Cap  */
UPDATE item_template SET stat_value1 = 22 WHERE entry=22013;

/*  Beastmaster's Gloves  */
UPDATE item_template SET ItemLevel = 55, stat_value1 = 14, stat_value2 = 12, stat_value3 = 10, stat_type4 = 0, stat_value4 = 0 WHERE entry=22015;

/*  Beastmaster's Mantle  */
UPDATE item_template SET stat_value2 = 12 WHERE entry=22016;

/*  Beastmaster's Pants  */
UPDATE item_template SET stat_value1 = 28 WHERE entry=22017;

/*  Beastmaster's Tunic  */
UPDATE item_template SET stat_value1 = 25 WHERE entry=22060;

/*  Beastmaster's Boots  */
UPDATE item_template SET stat_value1 = 24 WHERE entry=22061;

/*  Sorcerer's Gloves  */
UPDATE item_template SET ItemLevel = 55, stat_value1 = 10, stat_value2 = 14, stat_value3 = 12, stat_type4 = 0, stat_value4 = 0, stat_type5 = 0, stat_value5 = 0 WHERE entry=22066;

/*  Deathmist Wraps  */
UPDATE item_template SET ItemLevel = 55, stat_value1 = 16, stat_value2 = 13, stat_type3 = 0, stat_value3 = 0, stat_type4 = 0, stat_value4 = 0 WHERE entry=22077;

/*  Virtuous Gloves  */
UPDATE item_template SET ItemLevel = 55, stat_value1 = 12, stat_value2 = 15, stat_value3 = 14, stat_type4 = 0, stat_value4 = 0 WHERE entry=22081;

/*  Soulforge Gauntlets  */
UPDATE item_template SET ItemLevel = 55, stat_value1 = 10, stat_value2 = 9, stat_value3 = 10, stat_type4 = 0, stat_value4 = 0, stat_type5 = 0, stat_value5 = 0 WHERE entry=22090;

/*  Gauntlets of The Five Thunders  */
UPDATE item_template SET ItemLevel = 55, stat_value1 = 9, stat_value2 = 14, stat_value3 = 12, stat_type4 = 0, stat_value4 = 0, stat_type5 = 0, stat_value5 = 0 WHERE entry=22099;

/*  Feralheart Gloves  */
UPDATE item_template SET ItemLevel = 55, stat_value1 = 10, stat_value2 = 12, stat_value3 = 9, stat_value4 = 10, stat_value5 = 10, stat_type6 = 0, stat_value6 = 0 WHERE entry=22110;

/*  Sash of the Grand Hunt  */
UPDATE item_template SET stat_type4 = 0, stat_value4 = 0 WHERE entry=22207;

/*  Lavastone Hammer  */
UPDATE item_template SET stat_type2 = 5, stat_value2 = 12, stat_value3 = 10 WHERE entry=22208;

/*  Foreman's Head Protector  */
UPDATE item_template SET stat_type3 = 5, stat_value3 = 11 WHERE entry=22223;

/*  Frightmaw Hide  */
UPDATE item_template SET stat_type2 = 0, stat_value2 = 0 WHERE entry=22230;

/*  Verek's Leash  */
UPDATE item_template SET stat_type1 = 4, stat_type4 = 3, stat_value4 = 8, stat_type5 = 6, stat_value5 = 7 WHERE entry=22242;

/*  Entrenching Boots  */
UPDATE item_template SET stat_type2 = 3, stat_value2 = 5, stat_type3 = 5 WHERE entry=22270;

/*  Moonshadow Hood  */
UPDATE item_template SET stat_type1 = 5, stat_value1 = 15, stat_type2 = 0, stat_value2 = 0, stat_type3 = 0, stat_value3 = 0 WHERE entry=22273;

/*  Lovely Red Dress  */
UPDATE item_template SET bonding = 1 WHERE entry=22276;

/*  Red Dinner Suit  */
UPDATE item_template SET bonding = 1 WHERE entry=22277;

/*  Lovely Blue Dress  */
UPDATE item_template SET bonding = 1 WHERE entry=22278;

/*  Lovely Purple Dress  */
UPDATE item_template SET bonding = 1 WHERE entry=22280;

/*  Blue Dinner Suit  */
UPDATE item_template SET bonding = 1 WHERE entry=22281;

/*  Purple Dinner Suit  */
UPDATE item_template SET bonding = 1 WHERE entry=22282;

/*  Malgen's Long Bow  */
UPDATE item_template SET dmg_min1 = 63.0, dmg_max1 = 118.0 WHERE entry=22318;

/*  Totem of Rebirth  */
UPDATE item_template SET  WHERE entry=22345;

/*  Fahrad's Reloading Repeater  */
UPDATE item_template SET dmg_min1 = 85.0, dmg_max1 = 128.0 WHERE entry=22347;

/*  Shivsprocket's Shiv  */
UPDATE item_template SET dmg_min1 = 42.05, dmg_max1 = 82.05 WHERE entry=22379;

/*  Simone's Cultivating Hammer  */
UPDATE item_template SET dmg_min1 = 50.66, dmg_max1 = 97.66 WHERE entry=22380;

/*  Totem of Rage  */
UPDATE item_template SET  WHERE entry=22395;

/*  Totem of Life  */
UPDATE item_template SET  WHERE entry=22396;

/*  Cryptstalker Tunic  */
UPDATE item_template SET stat_value1 = 45 WHERE entry=22436;

/*  Cryptstalker Legguards  */
UPDATE item_template SET stat_value1 = 42 WHERE entry=22437;

/*  Cryptstalker Headpiece  */
UPDATE item_template SET stat_value1 = 31 WHERE entry=22438;

/*  Cryptstalker Spaulders  */
UPDATE item_template SET stat_value1 = 29 WHERE entry=22439;

/*  Cryptstalker Boots  */
UPDATE item_template SET stat_value1 = 33 WHERE entry=22440;

/*  Cryptstalker Handguards  */
UPDATE item_template SET stat_value1 = 24 WHERE entry=22441;

/*  Cryptstalker Girdle  */
UPDATE item_template SET stat_value1 = 23 WHERE entry=22442;

/*  Cryptstalker Wristguards  */
UPDATE item_template SET stat_value1 = 26 WHERE entry=22443;

/*  Atiesh, Greatstaff of the Guardian  */
UPDATE item_template SET dmg_min1 = 130.0, dmg_max1 = 243.0 WHERE entry=22632;

/*  The Purifier  */
UPDATE item_template SET dmg_min1 = 71.0, dmg_max1 = 132.0 WHERE entry=22656;

/*  Outrider's Mail Leggings  */
UPDATE item_template SET stat_type4 = 0, stat_value4 = 0 WHERE entry=22676;

/*  Verimonde's Last Resort  */
UPDATE item_template SET dmg_min1 = 39.48, dmg_max1 = 76.48 WHERE entry=22688;

/*  Zulian Scepter of Rites  */
UPDATE item_template SET dmg_min1 = 71.9, dmg_max1 = 142.9 WHERE entry=22713;

/*  Brimstone Staff  */
UPDATE item_template SET dmg_min1 = 140.0, dmg_max1 = 250.0 WHERE entry=22800;

/*  Spire of Twilight  */
UPDATE item_template SET dmg_min1 = 140.0, dmg_max1 = 250.0 WHERE entry=22801;

/*  Midnight Haze  */
UPDATE item_template SET dmg_min1 = 51.0, dmg_max1 = 97.0 WHERE entry=22803;

/*  Wraith Blade  */
UPDATE item_template SET dmg_min1 = 38.0, dmg_max1 = 109.0 WHERE entry=22807;

/*  Toxin Injector  */
UPDATE item_template SET dmg_min1 = 68.0, dmg_max1 = 128.0 WHERE entry=22810;

/*  Soulstring  */
UPDATE item_template SET dmg_min1 = 103.0, dmg_max1 = 192.0 WHERE entry=22811;

/*  Nerubian Slavemaker  */
UPDATE item_template SET dmg_min1 = 128.0, dmg_max1 = 238.0 WHERE entry=22812;

/*  Blood Guard's Chain Greaves  */
UPDATE item_template SET stat_value2 = 20 WHERE entry=22843;

/*  Blood Guard's Chain Vices  */
UPDATE item_template SET stat_value2 = 18 WHERE entry=22862;

/*  Legionnaire's Chain Hauberk  */
UPDATE item_template SET stat_value1 = 16 WHERE entry=22874;

/*  Legionnaire's Chain Legguards  */
UPDATE item_template SET stat_value1 = 16 WHERE entry=22875;

/*  The Widow's Embrace  */
UPDATE item_template SET dmg_min1 = 42.53, dmg_max1 = 115.53 WHERE entry=22942;

/*  Kiss of the Spider  */
UPDATE item_template SET stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0 WHERE entry=22954;

/*  Band of Reanimation  */
UPDATE item_template SET stat_value1 = 34 WHERE entry=22961;

/*  The End of Dreams  */
UPDATE item_template SET dmg_min1 = 44.0, dmg_max1 = 120.0 WHERE entry=22988;

/*  The Eye of Nerub  */
UPDATE item_template SET stat_value1 = 45, stat_type3 = 0, stat_value3 = 0 WHERE entry=23039;

/*  Hammer of the Twisting Nether  */
UPDATE item_template SET dmg_min1 = 36.0, dmg_max1 = 120.0 WHERE entry=23056;

/*  Life Channeling Necklace  */
UPDATE item_template SET stat_type1 = 0, stat_value1 = 0, stat_type2 = 0, stat_value2 = 0 WHERE entry=23058;

/*  Ring of the Cryptstalker  */
UPDATE item_template SET stat_value1 = 30 WHERE entry=23067;

/*  Tabard of the Scarlet Crusade  */
UPDATE item_template SET Quality = 1 WHERE entry=23192;

/*  Champion's Chain Helm  */
UPDATE item_template SET stat_value1 = 18 WHERE entry=23251;

/*  Champion's Chain Shoulders  */
UPDATE item_template SET stat_value1 = 18 WHERE entry=23252;

/*  Champion's Mail Headguard  */
UPDATE item_template SET stat_type4 = 0, stat_value4 = 0 WHERE entry=23259;

/*  Knight-Lieutenant's Chain Greaves  */
UPDATE item_template SET stat_value2 = 20 WHERE entry=23278;

/*  Knight-Lieutenant's Chain Vices  */
UPDATE item_template SET stat_value2 = 18 WHERE entry=23279;

/*  Knight-Captain's Chain Hauberk  */
UPDATE item_template SET stat_value1 = 16 WHERE entry=23292;

/*  Knight-Captain's Chain Legguards  */
UPDATE item_template SET stat_value1 = 16 WHERE entry=23293;

/*  Lieutenant Commander's Chain Helm  */
UPDATE item_template SET stat_value1 = 18 WHERE entry=23306;

/*  Lieutenant Commander's Chain Shoulders  */
UPDATE item_template SET stat_value1 = 18 WHERE entry=23307;

/*  Grand Marshal's Mageblade  */
UPDATE item_template SET dmg_min1 = 59.0, dmg_max1 = 107.0 WHERE entry=23451;

/*  Grand Marshal's Warhammer  */
UPDATE item_template SET dmg_min1 = 85.8, dmg_max1 = 154.8 WHERE entry=23454;

/*  High Warlord's Battle Mace  */
UPDATE item_template SET dmg_min1 = 85.8, dmg_max1 = 154.8 WHERE entry=23464;

/*  High Warlord's Spellblade  */
UPDATE item_template SET dmg_min1 = 59.0, dmg_max1 = 107.0 WHERE entry=23466;

/*  Larvae of the Great Worm  */
UPDATE item_template SET dmg_min1 = 103.0, dmg_max1 = 192.0 WHERE entry=23557;

/*  The Hungering Cold  */
UPDATE item_template SET stat_type2 = 0, stat_value2 = 0 WHERE entry=23577;

/*  Tabard of Flame  */
UPDATE item_template SET Quality = 1 WHERE entry=23705;

/*  Tabard of Frost  */
UPDATE item_template SET Quality = 1 WHERE entry=23709;

/*  Perpetual Purple Firework  */
UPDATE item_template SET Quality = 1 WHERE entry=23714;

/*  Carved Ogre Idol  */
UPDATE item_template SET Quality = 1 WHERE entry=23716;

/*  Bland Dagger  */
UPDATE item_template SET dmg_min1 = 82.0, dmg_max1 = 82.0 WHERE entry=24071;
