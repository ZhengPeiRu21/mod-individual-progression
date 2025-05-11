/* This will change item stack sizes for Vanilla items to Vanilla stack sizes,
   and TBC items to TBC stack sizes. Higher stack sizes are mostly just QoL,
   so some players may wish to exclude this optional file.
   Note that ammo is not included as it is already adjusted in ammo_stacks.sql */

/*  Minor Healing Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=118;

/*  Goretusk Liver  */
UPDATE item_template SET stackable = 10 WHERE entry=723;

/*  Stringy Vulture Meat  */
UPDATE item_template SET stackable = 10 WHERE entry=729;

/*  Murloc Eye  */
UPDATE item_template SET stackable = 10 WHERE entry=730;

/*  Goretusk Snout  */
UPDATE item_template SET stackable = 10 WHERE entry=731;

/*  Chunk of Boar Meat  */
UPDATE item_template SET stackable = 10 WHERE entry=769;

/*  Light Hide  */
UPDATE item_template SET stackable = 5 WHERE entry=783;

/*  Lesser Healing Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=858;

/*  Healing Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=929;

/*  Scroll of Strength  */
UPDATE item_template SET stackable = 5 WHERE entry=954;

/*  Scroll of Intellect  */
UPDATE item_template SET stackable = 5 WHERE entry=955;

/*  Lean Wolf Flank  */
UPDATE item_template SET stackable = 10 WHERE entry=1015;

/*  Tough Condor Meat  */
UPDATE item_template SET stackable = 10 WHERE entry=1080;

/*  Crisp Spider Meat  */
UPDATE item_template SET stackable = 10 WHERE entry=1081;

/*  Glyph of Azora  */
UPDATE item_template SET stackable = 1 WHERE entry=1083;

/*  Scroll of Stamina  */
UPDATE item_template SET stackable = 5 WHERE entry=1180;

/*  Scroll of Spirit  */
UPDATE item_template SET stackable = 5 WHERE entry=1181;

/*  Potion of Fervor  */
UPDATE item_template SET stackable = 10 WHERE entry=1450;

/*  Murloc Fin  */
UPDATE item_template SET stackable = 10 WHERE entry=1468;

/*  Scroll of Agility II  */
UPDATE item_template SET stackable = 5 WHERE entry=1477;

/*  Scroll of Protection II  */
UPDATE item_template SET stackable = 5 WHERE entry=1478;

/*  Greater Healing Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=1710;

/*  Scroll of Stamina II  */
UPDATE item_template SET stackable = 5 WHERE entry=1711;

/*  Scroll of Spirit II  */
UPDATE item_template SET stackable = 5 WHERE entry=1712;

/*  Gooey Spider Leg  */
UPDATE item_template SET stackable = 10 WHERE entry=2251;

/*  Scroll of Strength II  */
UPDATE item_template SET stackable = 5 WHERE entry=2289;

/*  Scroll of Intellect II  */
UPDATE item_template SET stackable = 5 WHERE entry=2290;

/*  Great Goretusk Snout  */
UPDATE item_template SET stackable = 10 WHERE entry=2296;

/*  Light Leather  */
UPDATE item_template SET stackable = 10 WHERE entry=2318;

/*  Medium Leather  */
UPDATE item_template SET stackable = 10 WHERE entry=2319;

/*  Elixir of Lion's Strength  */
UPDATE item_template SET stackable = 5 WHERE entry=2454;

/*  Minor Mana Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=2455;

/*  Minor Rejuvenation Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=2456;

/*  Elixir of Minor Agility  */
UPDATE item_template SET stackable = 5 WHERE entry=2457;

/*  Elixir of Minor Fortitude  */
UPDATE item_template SET stackable = 5 WHERE entry=2458;

/*  Swiftness Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=2459;

/*  Elixir of Tongues (NYI)  */
UPDATE item_template SET stackable = 5 WHERE entry=2460;

/*  Jungle Remedy  */
UPDATE item_template SET stackable = 10 WHERE entry=2633;

/*  Stringy Wolf Meat  */
UPDATE item_template SET stackable = 10 WHERE entry=2672;

/*  Coyote Meat  */
UPDATE item_template SET stackable = 10 WHERE entry=2673;

/*  Crawler Meat  */
UPDATE item_template SET stackable = 10 WHERE entry=2674;

/*  Crawler Claw  */
UPDATE item_template SET stackable = 10 WHERE entry=2675;

/*  Boar Ribs  */
UPDATE item_template SET stackable = 10 WHERE entry=2677;

/*  Copper Ore  */
UPDATE item_template SET stackable = 10 WHERE entry=2770;

/*  Tin Ore  */
UPDATE item_template SET stackable = 10 WHERE entry=2771;

/*  Iron Ore  */
UPDATE item_template SET stackable = 10 WHERE entry=2772;

/*  Silver Ore  */
UPDATE item_template SET stackable = 10 WHERE entry=2775;

/*  Gold Ore  */
UPDATE item_template SET stackable = 10 WHERE entry=2776;

/*  Weak Flux  */
UPDATE item_template SET stackable = 10 WHERE entry=2880;

/*  Crag Boar Rib  */
UPDATE item_template SET stackable = 10 WHERE entry=2886;

/*  Deadly Poison  */
UPDATE item_template SET stackable = 10 WHERE entry=2892;

/*  Deadly Poison II  */
UPDATE item_template SET stackable = 10 WHERE entry=2893;

/*  Crocolisk Meat  */
UPDATE item_template SET stackable = 10 WHERE entry=2924;

/*  Essence of Pain  */
UPDATE item_template SET stackable = 10 WHERE entry=2930;

/*  Maiden's Anguish  */
UPDATE item_template SET stackable = 10 WHERE entry=2931;

/*  Ruined Leather Scraps  */
UPDATE item_template SET stackable = 10 WHERE entry=2934;

/*  Bolt of Linen Cloth  */
UPDATE item_template SET stackable = 10 WHERE entry=2996;

/*  Bolt of Woolen Cloth  */
UPDATE item_template SET stackable = 10 WHERE entry=2997;

/*  Scroll of Agility  */
UPDATE item_template SET stackable = 5 WHERE entry=3012;

/*  Scroll of Protection  */
UPDATE item_template SET stackable = 5 WHERE entry=3013;

/*  Mug of Shimmer Stout  */
UPDATE item_template SET stackable = 10 WHERE entry=3087;

/*  Boar Intestines  */
UPDATE item_template SET stackable = 10 WHERE entry=3172;

/*  Bear Meat  */
UPDATE item_template SET stackable = 10 WHERE entry=3173;

/*  Spider Ichor  */
UPDATE item_template SET stackable = 10 WHERE entry=3174;

/*  Elixir of Wisdom  */
UPDATE item_template SET stackable = 5 WHERE entry=3383;

/*  Minor Magic Resistance Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=3384;

/*  Lesser Mana Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=3385;

/*  Limited Invulnerability Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=3387;

/*  Elixir of Defense  */
UPDATE item_template SET stackable = 5 WHERE entry=3389;

/*  Elixir of Lesser Agility  */
UPDATE item_template SET stackable = 5 WHERE entry=3390;

/*  Elixir of Ogre's Strength  */
UPDATE item_template SET stackable = 5 WHERE entry=3391;

/*  Buzzard Wing  */
UPDATE item_template SET stackable = 10 WHERE entry=3404;

/*  Strong Flux  */
UPDATE item_template SET stackable = 10 WHERE entry=3466;

/*  Tender Crocolisk Meat  */
UPDATE item_template SET stackable = 10 WHERE entry=3667;

/*  Slimy Ichor  */
UPDATE item_template SET stackable = 5 WHERE entry=3676;

/*  Raptor Egg  */
UPDATE item_template SET stackable = 10 WHERE entry=3685;

/*  Hillsbrad Human Skull  */
UPDATE item_template SET stackable = 20 WHERE entry=3692;

/*  Turtle Meat  */
UPDATE item_template SET stackable = 10 WHERE entry=3712;

/*  Big Bear Meat  */
UPDATE item_template SET stackable = 10 WHERE entry=3730;

/*  Lion Meat  */
UPDATE item_template SET stackable = 10 WHERE entry=3731;

/*  Crippling Poison  */
UPDATE item_template SET stackable = 10 WHERE entry=3775;

/*  Crippling Poison II  */
UPDATE item_template SET stackable = 10 WHERE entry=3776;

/*  Lesser Invisibility Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=3823;

/*  Elixir of Fortitude  */
UPDATE item_template SET stackable = 5 WHERE entry=3825;

/*  Mana Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=3827;

/*  Elixir of Detect Lesser Invisibility  */
UPDATE item_template SET stackable = 5 WHERE entry=3828;

/*  Coal  */
UPDATE item_template SET stackable = 10 WHERE entry=3857;

/*  Mithril Ore  */
UPDATE item_template SET stackable = 10 WHERE entry=3858;

/*  Bloody Bone Necklace  */
UPDATE item_template SET stackable = 20 WHERE entry=3915;

/*  Split Bone Necklace  */
UPDATE item_template SET stackable = 20 WHERE entry=3916;

/*  Superior Healing Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=3928;

/*  Cured Light Hide  */
UPDATE item_template SET stackable = 10 WHERE entry=4231;

/*  Medium Hide  */
UPDATE item_template SET stackable = 5 WHERE entry=4232;

/*  Cured Medium Hide  */
UPDATE item_template SET stackable = 10 WHERE entry=4233;

/*  Heavy Leather  */
UPDATE item_template SET stackable = 10 WHERE entry=4234;

/*  Heavy Hide  */
UPDATE item_template SET stackable = 5 WHERE entry=4235;

/*  Cured Heavy Hide  */
UPDATE item_template SET stackable = 10 WHERE entry=4236;

/*  Thick Leather  */
UPDATE item_template SET stackable = 10 WHERE entry=4304;

/*  Bolt of Silk Cloth  */
UPDATE item_template SET stackable = 10 WHERE entry=4305;

/*  Bolt of Mageweave  */
UPDATE item_template SET stackable = 10 WHERE entry=4339;

/*  Handful of Copper Bolts  */
UPDATE item_template SET stackable = 10 WHERE entry=4359;

/*  Rough Copper Bomb  */
UPDATE item_template SET stackable = 10 WHERE entry=4360;

/*  Copper Tube  */
UPDATE item_template SET stackable = 10 WHERE entry=4361;

/*  Copper Modulator  */
UPDATE item_template SET stackable = 10 WHERE entry=4363;

/*  Large Copper Bomb  */
UPDATE item_template SET stackable = 10 WHERE entry=4370;

/*  Bronze Tube  */
UPDATE item_template SET stackable = 10 WHERE entry=4371;

/*  Small Bronze Bomb  */
UPDATE item_template SET stackable = 10 WHERE entry=4374;

/*  Big Bronze Bomb  */
UPDATE item_template SET stackable = 10 WHERE entry=4380;

/*  Explosive Sheep  */
UPDATE item_template SET stackable = 5 WHERE entry=4384;

/*  Iron Grenade  */
UPDATE item_template SET stackable = 10 WHERE entry=4390;

/*  Big Iron Bomb  */
UPDATE item_template SET stackable = 10 WHERE entry=4394;

/*  Goblin Land Mine  */
UPDATE item_template SET stackable = 10 WHERE entry=4395;

/*  Large Seaforium Charge  */
UPDATE item_template SET stackable = 10 WHERE entry=4398;

/*  Scroll of Intellect III  */
UPDATE item_template SET stackable = 5 WHERE entry=4419;

/*  Scroll of Protection III  */
UPDATE item_template SET stackable = 5 WHERE entry=4421;

/*  Scroll of Stamina III  */
UPDATE item_template SET stackable = 5 WHERE entry=4422;

/*  Scroll of Spirit III  */
UPDATE item_template SET stackable = 5 WHERE entry=4424;

/*  Scroll of Agility III  */
UPDATE item_template SET stackable = 5 WHERE entry=4425;

/*  Scroll of Strength III  */
UPDATE item_template SET stackable = 5 WHERE entry=4426;

/*  Discolored Healing Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=4596;

/*  Lesser Stoneshield Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=4623;

/*  Giant Clam Meat  */
UPDATE item_template SET stackable = 10 WHERE entry=4655;

/*  Flash Bomb  */
UPDATE item_template SET stackable = 5 WHERE entry=4852;

/*  Bristleback Quilboar Tusk  */
UPDATE item_template SET stackable = 20 WHERE entry=5085;

/*  Flash Powder  */
UPDATE item_template SET stackable = 10 WHERE entry=5140;

/*  Deathweed  */
UPDATE item_template SET stackable = 10 WHERE entry=5173;

/*  Mind-numbing Poison  */
UPDATE item_template SET stackable = 10 WHERE entry=5237;

/*  Small Spider Leg  */
UPDATE item_template SET stackable = 10 WHERE entry=5465;

/*  Scorpid Stinger  */
UPDATE item_template SET stackable = 10 WHERE entry=5466;

/*  Kodo Meat  */
UPDATE item_template SET stackable = 10 WHERE entry=5467;

/*  Soft Frenzy Flesh  */
UPDATE item_template SET stackable = 10 WHERE entry=5468;

/*  Strider Meat  */
UPDATE item_template SET stackable = 10 WHERE entry=5469;

/*  Thunder Lizard Tail  */
UPDATE item_template SET stackable = 10 WHERE entry=5470;

/*  Stag Meat  */
UPDATE item_template SET stackable = 10 WHERE entry=5471;

/*  Clam Meat  */
UPDATE item_template SET stackable = 10 WHERE entry=5503;

/*  Tangy Clam Meat  */
UPDATE item_template SET stackable = 10 WHERE entry=5504;

/*  Small Barnacled Clam  */
UPDATE item_template SET stackable = 1 WHERE entry=5523;

/*  Thick-shelled Clam  */
UPDATE item_template SET stackable = 1 WHERE entry=5524;

/*  Rage Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=5631;

/*  Great Rage Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=5633;

/*  Free Action Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=5634;

/*  Rocket Car Parts  */
UPDATE item_template SET stackable = 20 WHERE entry=5798;

/*  Elixir of Water Breathing  */
UPDATE item_template SET stackable = 5 WHERE entry=5996;

/*  Elixir of Minor Defense  */
UPDATE item_template SET stackable = 5 WHERE entry=5997;

/*  Shadow Protection Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=6048;

/*  Fire Protection Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=6049;

/*  Frost Protection Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=6050;

/*  Holy Protection Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=6051;

/*  Nature Protection Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=6052;

/*  Greater Mana Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=6149;

/*  Swim Speed Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=6372;

/*  Elixir of Firepower  */
UPDATE item_template SET stackable = 5 WHERE entry=6373;

/*  Elixir of Giant Growth  */
UPDATE item_template SET stackable = 5 WHERE entry=6662;

/*  Small Egg  */
UPDATE item_template SET stackable = 10 WHERE entry=6889;

/*  Instant Poison  */
UPDATE item_template SET stackable = 10 WHERE entry=6947;

/*  Instant Poison II  */
UPDATE item_template SET stackable = 10 WHERE entry=6949;

/*  Instant Poison III  */
UPDATE item_template SET stackable = 10 WHERE entry=6950;

/*  Mind-numbing Poison II  */
UPDATE item_template SET stackable = 10 WHERE entry=6951;

/*  Fused Wiring  */
UPDATE item_template SET stackable = 1 WHERE entry=7191;

/*  Shadowcat Hide  */
UPDATE item_template SET stackable = 5 WHERE entry=7428;

/*  Truesilver Ore  */
UPDATE item_template SET stackable = 10 WHERE entry=7911;

/*  Big-mouth Clam  */
UPDATE item_template SET stackable = 1 WHERE entry=7973;

/*  Zesty Clam Meat  */
UPDATE item_template SET stackable = 10 WHERE entry=7974;

/*  Thick Hide  */
UPDATE item_template SET stackable = 5 WHERE entry=8169;

/*  Rugged Leather  */
UPDATE item_template SET stackable = 10 WHERE entry=8170;

/*  Cured Thick Hide  */
UPDATE item_template SET stackable = 10 WHERE entry=8172;

/*  Thick Wolfhide  */
UPDATE item_template SET stackable = 5 WHERE entry=8368;

/*  Elixir of Water Walking  */
UPDATE item_template SET stackable = 5 WHERE entry=8827;

/*  Essence of Agony  */
UPDATE item_template SET stackable = 10 WHERE entry=8923;

/*  Instant Poison IV  */
UPDATE item_template SET stackable = 10 WHERE entry=8926;

/*  Instant Poison V  */
UPDATE item_template SET stackable = 10 WHERE entry=8927;

/*  Instant Poison VI  */
UPDATE item_template SET stackable = 10 WHERE entry=8928;

/*  Elixir of Agility  */
UPDATE item_template SET stackable = 5 WHERE entry=8949;

/*  Elixir of Greater Defense  */
UPDATE item_template SET stackable = 5 WHERE entry=8951;

/*  Deadly Poison III  */
UPDATE item_template SET stackable = 10 WHERE entry=8984;

/*  Deadly Poison IV  */
UPDATE item_template SET stackable = 10 WHERE entry=8985;

/*  Magic Resistance Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=9036;

/*  Gift of Arthas  */
UPDATE item_template SET stackable = 5 WHERE entry=9088;

/*  Wildvine Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=9144;

/*  Elixir of Detect Undead  */
UPDATE item_template SET stackable = 5 WHERE entry=9154;

/*  Arcane Elixir  */
UPDATE item_template SET stackable = 5 WHERE entry=9155;

/*  Invisibility Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=9172;

/*  Elixir of Greater Intellect  */
UPDATE item_template SET stackable = 5 WHERE entry=9179;

/*  Mind-numbing Poison III  */
UPDATE item_template SET stackable = 10 WHERE entry=9186;

/*  Elixir of Greater Agility  */
UPDATE item_template SET stackable = 5 WHERE entry=9187;

/*  Elixir of Dream Vision  */
UPDATE item_template SET stackable = 5 WHERE entry=9197;

/*  Elixir of Giants  */
UPDATE item_template SET stackable = 5 WHERE entry=9206;

/*  Elixir of Demonslaying  */
UPDATE item_template SET stackable = 5 WHERE entry=9224;

/*  Elixir of Detect Demon  */
UPDATE item_template SET stackable = 5 WHERE entry=9233;

/*  Black Vitriol  */
UPDATE item_template SET stackable = 10 WHERE entry=9262;

/*  Elixir of Shadow Power  */
UPDATE item_template SET stackable = 5 WHERE entry=9264;

/*  Splintered Log  */
UPDATE item_template SET stackable = 1 WHERE entry=9590;

/*  Scroll of Protection IV  */
UPDATE item_template SET stackable = 5 WHERE entry=10305;

/*  Scroll of Spirit IV  */
UPDATE item_template SET stackable = 5 WHERE entry=10306;

/*  Scroll of Stamina IV  */
UPDATE item_template SET stackable = 5 WHERE entry=10307;

/*  Scroll of Intellect IV  */
UPDATE item_template SET stackable = 5 WHERE entry=10308;

/*  Scroll of Agility IV  */
UPDATE item_template SET stackable = 5 WHERE entry=10309;

/*  Scroll of Strength IV  */
UPDATE item_template SET stackable = 5 WHERE entry=10310;

/*  Mithril Frag Bomb  */
UPDATE item_template SET stackable = 10 WHERE entry=10514;

/*  Mithril Tube  */
UPDATE item_template SET stackable = 10 WHERE entry=10559;

/*  Hi-Explosive Bomb  */
UPDATE item_template SET stackable = 10 WHERE entry=10562;

/*  The Big One  */
UPDATE item_template SET stackable = 10 WHERE entry=10586;

/*  Catseye Elixir  */
UPDATE item_template SET stackable = 5 WHERE entry=10592;

/*  Thorium Ore  */
UPDATE item_template SET stackable = 10 WHERE entry=10620;

/*  Goblin Sapper Charge  */
UPDATE item_template SET stackable = 10 WHERE entry=10646;

/*  Wound Poison  */
UPDATE item_template SET stackable = 10 WHERE entry=10918;

/*  Wound Poison II  */
UPDATE item_template SET stackable = 10 WHERE entry=10920;

/*  Wound Poison III  */
UPDATE item_template SET stackable = 10 WHERE entry=10921;

/*  Wound Poison IV  */
UPDATE item_template SET stackable = 10 WHERE entry=10922;

/*  Strange Dust  */
UPDATE item_template SET stackable = 10 WHERE entry=10940;

/*  Small Glimmering Shard  */
UPDATE item_template SET stackable = 10 WHERE entry=10978;

/*  Un'Goro Soil  */
UPDATE item_template SET stackable = 10 WHERE entry=11018;

/*  Soul Dust  */
UPDATE item_template SET stackable = 10 WHERE entry=11083;

/*  Large Glimmering Shard  */
UPDATE item_template SET stackable = 10 WHERE entry=11084;

/*  Vision Dust  */
UPDATE item_template SET stackable = 10 WHERE entry=11137;

/*  Small Glowing Shard  */
UPDATE item_template SET stackable = 10 WHERE entry=11138;

/*  Large Glowing Shard  */
UPDATE item_template SET stackable = 10 WHERE entry=11139;

/*  Dream Dust  */
UPDATE item_template SET stackable = 10 WHERE entry=11176;

/*  Small Radiant Shard  */
UPDATE item_template SET stackable = 10 WHERE entry=11177;

/*  Large Radiant Shard  */
UPDATE item_template SET stackable = 10 WHERE entry=11178;

/*  Blue Power Crystal  */
UPDATE item_template SET stackable = 10 WHERE entry=11184;

/*  Green Power Crystal  */
UPDATE item_template SET stackable = 10 WHERE entry=11185;

/*  Red Power Crystal  */
UPDATE item_template SET stackable = 10 WHERE entry=11186;

/*  Yellow Power Crystal  */
UPDATE item_template SET stackable = 10 WHERE entry=11188;

/*  Bloodpetal Sprout  */
UPDATE item_template SET stackable = 10 WHERE entry=11315;

/*  Dark Iron Ore  */
UPDATE item_template SET stackable = 10 WHERE entry=11370;

/*  Black Diamond  */
UPDATE item_template SET stackable = 5 WHERE entry=11754;

/*  Mystery Meat  */
UPDATE item_template SET stackable = 10 WHERE entry=12037;

/*  Raptor Flesh  */
UPDATE item_template SET stackable = 10 WHERE entry=12184;

/*  Dreamless Sleep Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=12190;

/*  Tiger Meat  */
UPDATE item_template SET stackable = 10 WHERE entry=12202;

/*  Red Wolf Meat  */
UPDATE item_template SET stackable = 10 WHERE entry=12203;

/*  Heavy Kodo Meat  */
UPDATE item_template SET stackable = 10 WHERE entry=12204;

/*  White Spider Meat  */
UPDATE item_template SET stackable = 10 WHERE entry=12205;

/*  Tender Crab Meat  */
UPDATE item_template SET stackable = 10 WHERE entry=12206;

/*  Giant Egg  */
UPDATE item_template SET stackable = 10 WHERE entry=12207;

/*  Tender Wolf Meat  */
UPDATE item_template SET stackable = 10 WHERE entry=12208;

/*  Meaty Bat Wing  */
UPDATE item_template SET stackable = 10 WHERE entry=12223;

/*  Enchanted Leather  */
UPDATE item_template SET stackable = 10 WHERE entry=12810;

/*  Minion's Scourgestone  */
UPDATE item_template SET stackable = 20 WHERE entry=12840;

/*  Invader's Scourgestone  */
UPDATE item_template SET stackable = 20 WHERE entry=12841;

/*  Corruptor's Scourgestone  */
UPDATE item_template SET stackable = 20 WHERE entry=12843;

/*  Argent Dawn Valor Token  */
UPDATE item_template SET stackable = 20 WHERE entry=12844;

/*  Ectoplasmic Resonator  */
UPDATE item_template SET stackable = 20 WHERE entry=13354;

/*  Somatic Intensifier  */
UPDATE item_template SET stackable = 20 WHERE entry=13356;

/*  Osseous Agitator  */
UPDATE item_template SET stackable = 20 WHERE entry=13357;

/*  Mighty Rage Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=13442;

/*  Superior Mana Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=13443;

/*  Major Mana Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=13444;

/*  Elixir of Superior Defense  */
UPDATE item_template SET stackable = 5 WHERE entry=13445;

/*  Major Healing Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=13446;

/*  Elixir of the Sages  */
UPDATE item_template SET stackable = 5 WHERE entry=13447;

/*  Elixir of the Mongoose  */
UPDATE item_template SET stackable = 5 WHERE entry=13452;

/*  Elixir of Brute Force  */
UPDATE item_template SET stackable = 5 WHERE entry=13453;

/*  Greater Arcane Elixir  */
UPDATE item_template SET stackable = 5 WHERE entry=13454;

/*  Greater Stoneshield Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=13455;

/*  Greater Frost Protection Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=13456;

/*  Greater Fire Protection Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=13457;

/*  Greater Nature Protection Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=13458;

/*  Greater Shadow Protection Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=13459;

/*  Greater Holy Protection Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=13460;

/*  Greater Arcane Protection Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=13461;

/*  Purification Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=13462;

/*  Flask of the Titans  */
UPDATE item_template SET stackable = 5 WHERE entry=13510;

/*  Flask of Distilled Wisdom  */
UPDATE item_template SET stackable = 5 WHERE entry=13511;

/*  Flask of Supreme Power  */
UPDATE item_template SET stackable = 5 WHERE entry=13512;

/*  Flask of Chromatic Resistance  */
UPDATE item_template SET stackable = 5 WHERE entry=13513;

/*  Bolt of Runecloth  */
UPDATE item_template SET stackable = 10 WHERE entry=14048;

/*  Small Brilliant Shard  */
UPDATE item_template SET stackable = 10 WHERE entry=14343;

/*  Large Brilliant Shard  */
UPDATE item_template SET stackable = 10 WHERE entry=14344;

/*  Devilsaur Leather  */
UPDATE item_template SET stackable = 10 WHERE entry=15417;

/*  Warbear Leather  */
UPDATE item_template SET stackable = 10 WHERE entry=15419;

/*  Frostsaber Leather  */
UPDATE item_template SET stackable = 10 WHERE entry=15422;

/*  Chimera Leather  */
UPDATE item_template SET stackable = 10 WHERE entry=15423;

/*  Soft-shelled Clam  */
UPDATE item_template SET stackable = 1 WHERE entry=15874;

/*  Thorium Grenade  */
UPDATE item_template SET stackable = 10 WHERE entry=15993;

/*  Thorium Tube  */
UPDATE item_template SET stackable = 10 WHERE entry=16000;

/*  Dark Iron Bomb  */
UPDATE item_template SET stackable = 10 WHERE entry=16005;

/*  Arcane Bomb  */
UPDATE item_template SET stackable = 10 WHERE entry=16040;

/*  Illusion Dust  */
UPDATE item_template SET stackable = 10 WHERE entry=16204;

/*  Core Leather  */
UPDATE item_template SET stackable = 10 WHERE entry=17012;

/*  Arcane Powder  */
UPDATE item_template SET stackable = 20 WHERE entry=17020;

/*  Ankh  */
UPDATE item_template SET stackable = 5 WHERE entry=17030;

/*  Rune of Teleportation  */
UPDATE item_template SET stackable = 10 WHERE entry=17031;

/*  Rune of Portals  */
UPDATE item_template SET stackable = 10 WHERE entry=17032;

/*  Major Healing Draught  */
UPDATE item_template SET stackable = 10 WHERE entry=17348;

/*  Superior Healing Draught  */
UPDATE item_template SET stackable = 10 WHERE entry=17349;

/*  Major Mana Draught  */
UPDATE item_template SET stackable = 10 WHERE entry=17351;

/*  Superior Mana Draught  */
UPDATE item_template SET stackable = 10 WHERE entry=17352;

/*  Elixir of Frost Power  */
UPDATE item_template SET stackable = 5 WHERE entry=17708;

/*  Elementium Bar  */
UPDATE item_template SET stackable = 10 WHERE entry=17771;

/*  Worn Running Shoes  */
UPDATE item_template SET stackable = 1 WHERE entry=18225;

/*  A Sealed Pact  */
UPDATE item_template SET stackable = 1 WHERE entry=18226;

/*  Nubless Pacifier  */
UPDATE item_template SET stackable = 1 WHERE entry=18227;

/*  Broken I.W.I.N. Button  */
UPDATE item_template SET stackable = 1 WHERE entry=18230;

/*  Field Repair Bot 74A  */
UPDATE item_template SET stackable = 1 WHERE entry=18232;

/*  Tear Stained Handkerchief  */
UPDATE item_template SET stackable = 1 WHERE entry=18233;

/*  Document from Boomstick Imports  */
UPDATE item_template SET stackable = 1 WHERE entry=18234;

/*  Major Rejuvenation Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=18253;

/*  Elixir of Greater Water Breathing  */
UPDATE item_template SET stackable = 5 WHERE entry=18294;

/*  Pristine Black Diamond  */
UPDATE item_template SET stackable = 5 WHERE entry=18335;

/*  Elementium Ore  */
UPDATE item_template SET stackable = 10 WHERE entry=18562;

/*  Elemental Flux  */
UPDATE item_template SET stackable = 10 WHERE entry=18567;

/*  Powerful Seaforium Charge  */
UPDATE item_template SET stackable = 10 WHERE entry=18594;

/*  Happy Fun Rock  */
UPDATE item_template SET stackable = 2 WHERE entry=18640;

/*  Combat Healing Potion  */
UPDATE item_template SET stackable = 5, maxcount = 5 WHERE entry=18839;

/*  Combat Mana Potion  */
UPDATE item_template SET stackable = 5, maxcount = 5 WHERE entry=18841;

/*  Ace of Beasts  */
UPDATE item_template SET stackable = 1 WHERE entry=19227;

/*  Two of Beasts  */
UPDATE item_template SET stackable = 1 WHERE entry=19230;

/*  Three of Beasts  */
UPDATE item_template SET stackable = 1 WHERE entry=19231;

/*  Four of Beasts  */
UPDATE item_template SET stackable = 1 WHERE entry=19232;

/*  Five of Beasts  */
UPDATE item_template SET stackable = 1 WHERE entry=19233;

/*  Six of Beasts  */
UPDATE item_template SET stackable = 1 WHERE entry=19234;

/*  Seven of Beasts  */
UPDATE item_template SET stackable = 1 WHERE entry=19235;

/*  Eight of Beasts  */
UPDATE item_template SET stackable = 1 WHERE entry=19236;

/*  Ace of Warlords  */
UPDATE item_template SET stackable = 1 WHERE entry=19258;

/*  Two of Warlords  */
UPDATE item_template SET stackable = 1 WHERE entry=19259;

/*  Three of Warlords  */
UPDATE item_template SET stackable = 1 WHERE entry=19260;

/*  Four of Warlords  */
UPDATE item_template SET stackable = 1 WHERE entry=19261;

/*  Five of Warlords  */
UPDATE item_template SET stackable = 1 WHERE entry=19262;

/*  Six of Warlords  */
UPDATE item_template SET stackable = 1 WHERE entry=19263;

/*  Seven of Warlords  */
UPDATE item_template SET stackable = 1 WHERE entry=19264;

/*  Eight of Warlords  */
UPDATE item_template SET stackable = 1 WHERE entry=19265;

/*  Ace of Elementals  */
UPDATE item_template SET stackable = 1 WHERE entry=19268;

/*  Two of Elementals  */
UPDATE item_template SET stackable = 1 WHERE entry=19269;

/*  Three of Elementals  */
UPDATE item_template SET stackable = 1 WHERE entry=19270;

/*  Four of Elementals  */
UPDATE item_template SET stackable = 1 WHERE entry=19271;

/*  Five of Elementals  */
UPDATE item_template SET stackable = 1 WHERE entry=19272;

/*  Six of Elementals  */
UPDATE item_template SET stackable = 1 WHERE entry=19273;

/*  Seven of Elementals  */
UPDATE item_template SET stackable = 1 WHERE entry=19274;

/*  Eight of Elementals  */
UPDATE item_template SET stackable = 1 WHERE entry=19275;

/*  Ace of Portals  */
UPDATE item_template SET stackable = 1 WHERE entry=19276;

/*  Two of Portals  */
UPDATE item_template SET stackable = 1 WHERE entry=19278;

/*  Three of Portals  */
UPDATE item_template SET stackable = 1 WHERE entry=19279;

/*  Four of Portals  */
UPDATE item_template SET stackable = 1 WHERE entry=19280;

/*  Five of Portals  */
UPDATE item_template SET stackable = 1 WHERE entry=19281;

/*  Six of Portals  */
UPDATE item_template SET stackable = 1 WHERE entry=19282;

/*  Seven of Portals  */
UPDATE item_template SET stackable = 1 WHERE entry=19283;

/*  Eight of Portals  */
UPDATE item_template SET stackable = 1 WHERE entry=19284;

/*  Primal Bat Leather  */
UPDATE item_template SET stackable = 10 WHERE entry=19767;

/*  Primal Tiger Leather  */
UPDATE item_template SET stackable = 10 WHERE entry=19768;

/*  Greater Dreamless Sleep Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=20002;

/*  Living Action Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=20008;

/*  Encrypted Twilight Text  */
UPDATE item_template SET stackable = 20 WHERE entry=20404;

/*  Warsong Gulch Mark of Honor  */
UPDATE item_template SET stackable = 20, maxcount = 20 WHERE entry=20558;

/*  Arathi Basin Mark of Honor  */
UPDATE item_template SET stackable = 20, maxcount = 20 WHERE entry=20559;

/*  Alterac Valley Mark of Honor  */
UPDATE item_template SET stackable = 20, maxcount = 20 WHERE entry=20560;

/*  Nexus Crystal  */
UPDATE item_template SET stackable = 10 WHERE entry=20725;

/*  Deadly Poison V  */
UPDATE item_template SET stackable = 10 WHERE entry=20844;

/*  Elixir of Greater Firepower  */
UPDATE item_template SET stackable = 5 WHERE entry=21546;

/*  Cluster Launcher  */
UPDATE item_template SET stackable = 1 WHERE entry=21570;

/*  Heart Candy  */
UPDATE item_template SET stackable = 1 WHERE entry=21816;

/*  Heart Candy  */
UPDATE item_template SET stackable = 1 WHERE entry=21817;

/*  Heart Candy  */
UPDATE item_template SET stackable = 1 WHERE entry=21818;

/*  Heart Candy  */
UPDATE item_template SET stackable = 1 WHERE entry=21819;

/*  Heart Candy  */
UPDATE item_template SET stackable = 1 WHERE entry=21820;

/*  Heart Candy  */
UPDATE item_template SET stackable = 1 WHERE entry=21821;

/*  Heart Candy  */
UPDATE item_template SET stackable = 1 WHERE entry=21822;

/*  Heart Candy  */
UPDATE item_template SET stackable = 1 WHERE entry=21823;

/*  Empty Wrapper  */
UPDATE item_template SET stackable = 1 WHERE entry=21830;

/*  Bloodkelp Elixir of Dodging  */
UPDATE item_template SET stackable = 5 WHERE entry=22192;

/*  Bloodkelp Elixir of Resistance  */
UPDATE item_template SET stackable = 5 WHERE entry=22193;

/*  Unbestowed Friendship Bracelet  */
UPDATE item_template SET stackable = 10 WHERE entry=22259;

/*  Necrotic Rune  */
UPDATE item_template SET stackable = 100 WHERE entry=22484;

/*  Bag of Smorc Ingredients  */
UPDATE item_template SET stackable = 20 WHERE entry=23215;

/*  Burning Blossom  */
UPDATE item_template SET stackable = 20 WHERE entry=23247;

/*  Diet McWeaksauce  */
UPDATE item_template SET stackable = 10 WHERE entry=23578;

/*  The McWeaksauce Classic  */
UPDATE item_template SET stackable = 10 WHERE entry=23579;

/*  Bolt of Netherweave  */
UPDATE item_template SET stackable = 10 WHERE entry=21840;

/*  Bolt of Soulcloth  */
UPDATE item_template SET stackable = 10 WHERE entry=21844;

/*  Crunchy Spider Leg  */
UPDATE item_template SET stackable = 10 WHERE entry=22644;

/*  Sneaking Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=22826;

/*  Insane Strength Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=22828;

/*  Super Healing Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=22829;

/*  Super Mana Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=22832;

/*  Major Dreamless Sleep Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=22836;

/*  Heroic Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=22837;

/*  Haste Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=22838;

/*  Destruction Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=22839;

/*  Major Fire Protection Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=22841;

/*  Major Frost Protection Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=22842;

/*  Major Nature Protection Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=22844;

/*  Major Arcane Protection Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=22845;

/*  Major Shadow Protection Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=22846;

/*  Major Holy Protection Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=22847;

/*  Ironshield Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=22849;

/*  Super Rejuvenation Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=22850;

/*  Flask of Fortification  */
UPDATE item_template SET stackable = 5 WHERE entry=22851;

/*  Flask of Mighty Restoration  */
UPDATE item_template SET stackable = 5 WHERE entry=22853;

/*  Flask of Relentless Assault  */
UPDATE item_template SET stackable = 5 WHERE entry=22854;

/*  Flask of Blinding Light  */
UPDATE item_template SET stackable = 5 WHERE entry=22861;

/*  Flask of Pure Death  */
UPDATE item_template SET stackable = 5 WHERE entry=22866;

/*  Shrouding Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=22871;

/*  Fel Iron Bomb  */
UPDATE item_template SET stackable = 10 WHERE entry=23736;

/*  Adamantite Grenade  */
UPDATE item_template SET stackable = 10 WHERE entry=23737;

/*  Handful of Fel Iron Bolts  */
UPDATE item_template SET stackable = 10 WHERE entry=23783;

/*  Hardened Adamantite Tube  */
UPDATE item_template SET stackable = 10 WHERE entry=23785;

/*  The Bigger One  */
UPDATE item_template SET stackable = 10 WHERE entry=23826;

/*  Super Sapper Charge  */
UPDATE item_template SET stackable = 10 WHERE entry=23827;

/*  Jaggal Clam Meat  */
UPDATE item_template SET stackable = 10 WHERE entry=24477;

/*  Scroll of Agility V  */
UPDATE item_template SET stackable = 5 WHERE entry=27498;

/*  Scroll of Intellect V  */
UPDATE item_template SET stackable = 5 WHERE entry=27499;

/*  Scroll of Protection V  */
UPDATE item_template SET stackable = 5 WHERE entry=27500;

/*  Scroll of Spirit V  */
UPDATE item_template SET stackable = 5 WHERE entry=27501;

/*  Scroll of Stamina V  */
UPDATE item_template SET stackable = 5 WHERE entry=27502;

/*  Scroll of Strength V  */
UPDATE item_template SET stackable = 5 WHERE entry=27503;

/*  Lynx Meat  */
UPDATE item_template SET stackable = 10 WHERE entry=27668;

/*  Bat Flesh  */
UPDATE item_template SET stackable = 10 WHERE entry=27669;

/*  Volatile Healing Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=28100;

/*  Unstable Mana Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=28101;

/*  Eye of the Storm Mark of Honor  */
UPDATE item_template SET stackable = 100 WHERE entry=29024;

/*  Badge of Justice  */
UPDATE item_template SET stackable = 200 WHERE entry=29434;

/*  Razor Thorn  */
UPDATE item_template SET stackable = 10 WHERE entry=30475;

/*  Hypnotic Flower  */
UPDATE item_template SET stackable = 10 WHERE entry=30476;

/*  Bloody Spider Fang  */
UPDATE item_template SET stackable = 5 WHERE entry=30513;

/*  Fel Regeneration Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=31676;

/*  Fel Mana Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=31677;

/*  Major Combat Healing Potion  */
UPDATE item_template SET stackable = 10 WHERE entry=31838;

/*  Major Combat Healing Potion  */
UPDATE item_template SET stackable = 10 WHERE entry=31839;

/*  Major Combat Mana Potion  */
UPDATE item_template SET stackable = 10 WHERE entry=31840;

/*  Major Combat Mana Potion  */
UPDATE item_template SET stackable = 10 WHERE entry=31841;

/*  Major Combat Healing Potion  */
UPDATE item_template SET stackable = 10 WHERE entry=31852;

/*  Major Combat Healing Potion  */
UPDATE item_template SET stackable = 10 WHERE entry=31853;

/*  Major Combat Mana Potion  */
UPDATE item_template SET stackable = 10 WHERE entry=31854;

/*  Major Combat Mana Potion  */
UPDATE item_template SET stackable = 10 WHERE entry=31855;

/*  Ace of Blessings  */
UPDATE item_template SET stackable = 1 WHERE entry=31882;

/*  Eight of Blessings  */
UPDATE item_template SET stackable = 1 WHERE entry=31883;

/*  Five of Blessings  */
UPDATE item_template SET stackable = 1 WHERE entry=31884;

/*  Four of Blessings  */
UPDATE item_template SET stackable = 1 WHERE entry=31885;

/*  Seven of Blessings  */
UPDATE item_template SET stackable = 1 WHERE entry=31886;

/*  Six of Blessings  */
UPDATE item_template SET stackable = 1 WHERE entry=31887;

/*  Three of Blessings  */
UPDATE item_template SET stackable = 1 WHERE entry=31888;

/*  Two of Blessings  */
UPDATE item_template SET stackable = 1 WHERE entry=31889;

/*  Ace of Storms  */
UPDATE item_template SET stackable = 1 WHERE entry=31892;

/*  Eight of Storms  */
UPDATE item_template SET stackable = 1 WHERE entry=31893;

/*  Five of Storms  */
UPDATE item_template SET stackable = 1 WHERE entry=31894;

/*  Four of Storms  */
UPDATE item_template SET stackable = 1 WHERE entry=31895;

/*  Seven of Storms  */
UPDATE item_template SET stackable = 1 WHERE entry=31896;

/*  Six of Storms  */
UPDATE item_template SET stackable = 1 WHERE entry=31898;

/*  Three of Storms  */
UPDATE item_template SET stackable = 1 WHERE entry=31899;

/*  Two of Storms  */
UPDATE item_template SET stackable = 1 WHERE entry=31900;

/*  Ace of Furies  */
UPDATE item_template SET stackable = 1 WHERE entry=31901;

/*  Eight of Furies  */
UPDATE item_template SET stackable = 1 WHERE entry=31902;

/*  Five of Furies  */
UPDATE item_template SET stackable = 1 WHERE entry=31903;

/*  Four of Furies  */
UPDATE item_template SET stackable = 1 WHERE entry=31904;

/*  Seven of Furies  */
UPDATE item_template SET stackable = 1 WHERE entry=31905;

/*  Six of Furies  */
UPDATE item_template SET stackable = 1 WHERE entry=31906;

/*  Three of Furies  */
UPDATE item_template SET stackable = 1 WHERE entry=31908;

/*  Two of Furies  */
UPDATE item_template SET stackable = 1 WHERE entry=31909;

/*  Ace of Lunacy  */
UPDATE item_template SET stackable = 1 WHERE entry=31910;

/*  Eight of Lunacy  */
UPDATE item_template SET stackable = 1 WHERE entry=31911;

/*  Five of Lunacy  */
UPDATE item_template SET stackable = 1 WHERE entry=31912;

/*  Four of Lunacy  */
UPDATE item_template SET stackable = 1 WHERE entry=31913;

/*  Seven of Lunacy  */
UPDATE item_template SET stackable = 1 WHERE entry=31915;

/*  Six of Lunacy  */
UPDATE item_template SET stackable = 1 WHERE entry=31916;

/*  Three of Lunacy  */
UPDATE item_template SET stackable = 1 WHERE entry=31917;

/*  Two of Lunacy  */
UPDATE item_template SET stackable = 1 WHERE entry=31918;

/*  Frost Grenade  */
UPDATE item_template SET stackable = 10 WHERE entry=32413;

/*  Unstable Flask of the Elder  */
UPDATE item_template SET stackable = 5 WHERE entry=32596;

/*  Unstable Flask of the Soldier  */
UPDATE item_template SET stackable = 5 WHERE entry=32597;

/*  Unstable Flask of the Beast  */
UPDATE item_template SET stackable = 5 WHERE entry=32598;

/*  Unstable Flask of the Bandit  */
UPDATE item_template SET stackable = 5 WHERE entry=32599;

/*  Unstable Flask of the Physician  */
UPDATE item_template SET stackable = 5 WHERE entry=32600;

/*  Unstable Flask of the Sorcerer  */
UPDATE item_template SET stackable = 5 WHERE entry=32601;

/*  Vial of Tears  */
UPDATE item_template SET stackable = 1 WHERE entry=32727;

/*  Blue Ogre Brew  */
UPDATE item_template SET stackable = 5 WHERE entry=32783;

/*  Red Ogre Brew  */
UPDATE item_template SET stackable = 5 WHERE entry=32784;

/*  Major Arcane Protection Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=32840;

/*  Major Nature Protection Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=32844;

/*  Major Shadow Protection Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=32845;

/*  Major Fire Protection Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=32846;

/*  Major Frost Protection Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=32847;

/*  Shattrath Flask of Fortification  */
UPDATE item_template SET stackable = 5 WHERE entry=32898;

/*  Shattrath Flask of Mighty Restoration  */
UPDATE item_template SET stackable = 5 WHERE entry=32899;

/*  Shattrath Flask of Supreme Power  */
UPDATE item_template SET stackable = 5 WHERE entry=32900;

/*  Shattrath Flask of Relentless Assault  */
UPDATE item_template SET stackable = 5 WHERE entry=32901;

/*  Bottled Nethergon Energy  */
UPDATE item_template SET stackable = 15 WHERE entry=32902;

/*  Cenarion Mana Salve  */
UPDATE item_template SET stackable = 15 WHERE entry=32903;

/*  Cenarion Healing Salve  */
UPDATE item_template SET stackable = 15 WHERE entry=32904;

/*  Bottled Nethergon Vapor  */
UPDATE item_template SET stackable = 15 WHERE entry=32905;

/*  Blue Ogre Brew Special  */
UPDATE item_template SET stackable = 5 WHERE entry=32909;

/*  Red Ogre Brew Special  */
UPDATE item_template SET stackable = 5 WHERE entry=32910;

/*  Auchenai Healing Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=32947;

/*  Auchenai Mana Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=32948;

/*  Flask of Chromatic Wonder  */
UPDATE item_template SET stackable = 5 WHERE entry=33208;

/*  Crystal Healing Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=33934;

/*  Crystal Mana Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=33935;

/*  Love Rocket  */
UPDATE item_template SET stackable = 5 WHERE entry=34258;

/*  Mad Alchemist's Potion  */
UPDATE item_template SET stackable = 5 WHERE entry=34440;

/*  Darnarian's Scroll of Teleportation  */
UPDATE item_template SET stackable = 1 WHERE entry=35230;

/*  Shattrath Flask of Pure Death  */
UPDATE item_template SET stackable = 5 WHERE entry=35716;

/*  Shattrath Flask of Blinding Light  */
UPDATE item_template SET stackable = 5 WHERE entry=35717;

/*  Party G.R.E.N.A.D.E.  */
UPDATE item_template SET stackable = 20 WHERE entry=38577;
