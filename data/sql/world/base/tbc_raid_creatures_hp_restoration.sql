-- In Patch 3.0.2, all creatures in TBC raid instances and TBC world bosses had their max health reduced (generally by 30%).
-- This script restores such creatures' max health to the values from the end of TBC (Patch 2.4.3).

/* KARAZHAN BOSSES AND BOSS ADDS */

-- Astral Flare
UPDATE `creature_template` SET `HealthModifier` = 1.9 WHERE `entry` = 17096;
UPDATE `creature_template` SET `HealthModifier` = 1.9 WHERE `entry` = 19781;
UPDATE `creature_template` SET `HealthModifier` = 1.9 WHERE `entry` = 19782;
UPDATE `creature_template` SET `HealthModifier` = 1.9 WHERE `entry` = 19783;

-- Attumen the Huntsman (Mounted)
UPDATE `creature_template` SET `HealthModifier` = 50 WHERE `entry` = 16151;

-- Attumen the Huntsman (Unmounted)
UPDATE `creature_template` SET `HealthModifier` = 50 WHERE `entry` = 15550;

-- Baron Rafe Dreuger
UPDATE `creature_template` SET `HealthModifier` = 12 WHERE `entry` = 19874;

-- Baroness Dorothea Millstipe
UPDATE `creature_template` SET `HealthModifier` = 12 WHERE `entry` = 19875;

-- Conjured Elemental
UPDATE `creature_template` SET `HealthModifier` = 2 WHERE `entry` = 17167;

-- Demon Chains
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry` = 17248;

-- Dorothee
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 17535;

-- Fiendish Imp
UPDATE `creature_template` SET `HealthModifier` = 0.9 WHERE `entry` = 17267;

-- Hyakiss the Lurker
UPDATE `creature_template` SET `HealthModifier` = 35 WHERE `entry` = 16179;

-- Julianne
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 17534;

-- Kil'rek
UPDATE `creature_template` SET `HealthModifier` = 12 WHERE `entry` = 17229;

-- Lady Catriona Von'Indi
UPDATE `creature_template` SET `HealthModifier` = 12 WHERE `entry` = 19872;

-- Lady Keira Berrybuck
UPDATE `creature_template` SET `HealthModifier` = 12 WHERE `entry` = 17007;

-- Lord Crispin Ference
UPDATE `creature_template` SET `HealthModifier` = 12 WHERE `entry` = 19873;

-- Lord Robin Daris
UPDATE `creature_template` SET `HealthModifier` = 12 WHERE `entry` = 19876;

-- Maiden of Virtue
UPDATE `creature_template` SET `HealthModifier` = 70 WHERE `entry` = 16457;

-- Midnight
UPDATE `creature_template` SET `HealthModifier` = 50 WHERE `entry` = 16152;

-- Moroes <Tower Steward>
UPDATE `creature_template` SET `HealthModifier` = 50 WHERE `entry` = 15687;

-- Netherspite
UPDATE `creature_template` SET `HealthModifier` = 200 WHERE `entry` = 15689;

-- Nightbane
UPDATE `creature_template` SET `HealthModifier` = 175 WHERE `entry` = 17225;

-- Prince Malchezaar
UPDATE `creature_template` SET `HealthModifier` = 150 WHERE `entry` = 15690;

-- Roar
UPDATE `creature_template` SET `HealthModifier` = 15 WHERE `entry` = 17546;

-- Rokad the Ravager
UPDATE `creature_template` SET `HealthModifier` = 30 WHERE `entry` = 16181;

-- Romulo
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 17533;

-- Shade of Aran
UPDATE `creature_template` SET `HealthModifier` = 160 WHERE `entry` = 16524;

-- Shadikith the Glider
UPDATE `creature_template` SET `HealthModifier` = 35 WHERE `entry` = 16180;

-- Strawman
UPDATE `creature_template` SET `HealthModifier` = 15 WHERE `entry` = 17543;

-- Terestian Illhoof
UPDATE `creature_template` SET `HealthModifier` = 100 WHERE `entry` = 15688;

-- The Big Bad Wolf
UPDATE `creature_template` SET `HealthModifier` = 50 WHERE `entry` = 17521;

-- The Crone
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 18168;

-- The Curator
UPDATE `creature_template` SET `HealthModifier` = 115 WHERE `entry` = 15691;

-- Tinhead
UPDATE `creature_template` SET `HealthModifier` = 15 WHERE `entry` = 17547;

-- Tito
UPDATE `creature_template` SET `HealthModifier` = 5 WHERE `entry` = 17548;


/* KARAZHAN TRASH */

-- Arcane Anomaly
UPDATE `creature_template` SET `HealthModifier` = 0.2 WHERE `entry` = 16488;

-- Arcane Protector
UPDATE `creature_template` SET `HealthModifier` = 16 WHERE `entry` = 16504;

-- Arcane Watchman
UPDATE `creature_template` SET `HealthModifier` = 12 WHERE `entry` = 16485;

-- Astral Spark
UPDATE `creature_template` SET `HealthModifier` = 0.175 WHERE `entry` = 17283;

-- Chaotic Sentience
UPDATE `creature_template` SET `HealthModifier` = 8 WHERE `entry` = 16489;

-- Coldmist Stalker
UPDATE `creature_template` SET `HealthModifier` = 3 WHERE `entry` = 16170;

-- Coldmist Widow
UPDATE `creature_template` SET `HealthModifier` = 7 WHERE `entry` = 16171;

-- Concubine
UPDATE `creature_template` SET `HealthModifier` = 8 WHERE `entry` = 16461;

-- Dreadbeast
UPDATE `creature_template` SET `HealthModifier` = 7 WHERE `entry` = 16177;

-- Ethereal Spellfilcher
UPDATE `creature_template` SET `HealthModifier` = 10 WHERE `entry` = 16545;

-- Ethereal Thief
UPDATE `creature_template` SET `HealthModifier` = 8 WHERE `entry` = 16544;

-- Fleshbeast
UPDATE `creature_template` SET `HealthModifier` = 10 WHERE `entry` = 16595;

-- Ghastly Haunt
UPDATE `creature_template` SET `HealthModifier` = 10 WHERE `entry` = 16481;

-- Ghostly Baker
UPDATE `creature_template` SET `HealthModifier` = 6 WHERE `entry` = 16412;

-- Ghostly Philanthropist
UPDATE `creature_template` SET `HealthModifier` = 8 WHERE `entry` = 16470;

-- Ghostly Steward
UPDATE `creature_template` SET `HealthModifier` = 8 WHERE `entry` = 16414;

-- Greater Fleshbeast
UPDATE `creature_template` SET `HealthModifier` = 16 WHERE `entry` = 16596;

-- Greater Shadowbat
UPDATE `creature_template` SET `HealthModifier` = 8 WHERE `entry` = 16174;

-- Homunculus
UPDATE `creature_template` SET `HealthModifier` = 3 WHERE `entry` = 16539;

-- Magical Horror
UPDATE `creature_template` SET `HealthModifier` = 8 WHERE `entry` = 16529;

-- Mana Feeder
UPDATE `creature_template` SET `HealthModifier` = 2 WHERE `entry` = 16491;

-- Mana Warp
UPDATE `creature_template` SET `HealthModifier` = 6 WHERE `entry` = 16530;

-- Night Mistress
UPDATE `creature_template` SET `HealthModifier` = 8 WHERE `entry` = 16460;

-- Phantom Attendant
UPDATE `creature_template` SET `HealthModifier` = 6 WHERE `entry` = 16406;

-- Phantom Guardsman
UPDATE `creature_template` SET `HealthModifier` = 6 WHERE `entry` = 16425;

-- Phantom Guest
UPDATE `creature_template` SET `HealthModifier` = 2 WHERE `entry` = 16409;

-- Phantom Hound
UPDATE `creature_template` SET `HealthModifier` = 2 WHERE `entry` = 17067;

-- Phantom Stagehand
UPDATE `creature_template` SET `HealthModifier` = 9 WHERE `entry` = 16472;

-- Phantom Valet
UPDATE `creature_template` SET `HealthModifier` = 9 WHERE `entry` = 16408;

-- Phase Hound
UPDATE `creature_template` SET `HealthModifier` = 3.5 WHERE `entry` = 16178;

-- Restless Skeleton
UPDATE `creature_template` SET `HealthModifier` = 2.5 WHERE `entry` = 17261;

-- Shadow Pillager
UPDATE `creature_template` SET `HealthModifier` = 6 WHERE `entry` = 16540;

-- Shadowbat
UPDATE `creature_template` SET `HealthModifier` = 3 WHERE `entry` = 16173;

-- Shadowbeast
UPDATE `creature_template` SET `HealthModifier` = 6 WHERE `entry` = 16176;

-- Skeletal Usher
UPDATE `creature_template` SET `HealthModifier` = 12 WHERE `entry` = 16471;

-- Skeletal Waiter
UPDATE `creature_template` SET `HealthModifier` = 6 WHERE `entry` = 16415;

-- Sorcerous Shade
UPDATE `creature_template` SET `HealthModifier` = 8 WHERE `entry` = 16526;

-- Spectral Apprentice
UPDATE `creature_template` SET `HealthModifier` = 6 WHERE `entry` = 16389;

-- Spectral Charger
UPDATE `creature_template` SET `HealthModifier` = 9 WHERE `entry` = 15547;

-- Spectral Chef
UPDATE `creature_template` SET `HealthModifier` = 6 WHERE `entry` = 16411;

-- Spectral Patron
UPDATE `creature_template` SET `HealthModifier` = 2 WHERE `entry` = 16468;

-- Spectral Performer
UPDATE `creature_template` SET `HealthModifier` = 8 WHERE `entry` = 16473;

-- Spectral Retainer
UPDATE `creature_template` SET `HealthModifier` = 8 WHERE `entry` = 16410;

-- Spectral Sentry
UPDATE `creature_template` SET `HealthModifier` = 6 WHERE `entry` = 16424;

-- Spectral Servant
UPDATE `creature_template` SET `HealthModifier` = 6 WHERE `entry` = 16407;

-- Spectral Stable Hand
UPDATE `creature_template` SET `HealthModifier` = 6 WHERE `entry` = 15551;

-- Spectral Stallion
UPDATE `creature_template` SET `HealthModifier` = 9 WHERE `entry` = 15548;

-- Spell Shade
UPDATE `creature_template` SET `HealthModifier` = 6 WHERE `entry` = 16525;

-- Syphoner
UPDATE `creature_template` SET `HealthModifier` = 2 WHERE `entry` = 16492;

-- Trapped Soul
UPDATE `creature_template` SET `HealthModifier` = 10 WHERE `entry` = 16482;

-- Vampiric Shadowbat
UPDATE `creature_template` SET `HealthModifier` = 6 WHERE `entry` = 16175;

-- Wanton Hostess
UPDATE `creature_template` SET `HealthModifier` = 8 WHERE `entry` = 16459;


/* KARAZHAN NPCS */

-- Barnes <The Stage Manager>
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 16812;

-- Bennett <The Sergeant at Arms>
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 16426;

-- Berthold <The Doorman>
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 16153;

-- Calliard <The Nightman>
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 16159;

-- Ebonlocke <The Noble>
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 16806;

-- Echo of Medivh
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 16816;

-- Gradav <The Warlock>
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 16814;

-- Grandmother
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 17603;

-- Hastings <The Caretaker>
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 16169;

-- Image of Arcanagos
UPDATE `creature_template` SET `HealthModifier` = 70 WHERE `entry` = 17652;

-- Image of Medivh
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 17651;

-- Kamsis <The Conjurer>
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 16815;

-- Koren <The Blacksmith>
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 16388;

-- Sebastian <The Organist>
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 16811;

-- Wravien <The Mage>
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 16813;

-- Ythyar
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 17518;


/* GRUUL'S LAIR BOSSES AND BOSS ADDS */

-- Blindeye the Seer
UPDATE `creature_template` SET `HealthModifier` = 50 WHERE `entry` = 18836;

-- Gruul the Dragonkiller
UPDATE `creature_template` SET `HealthModifier` = 450 WHERE `entry` = 19044;

-- High King Maulgar
UPDATE `creature_template` SET `HealthModifier` = 100 WHERE `entry` = 18831;

-- Kiggler the Crazed
UPDATE `creature_template` SET `HealthModifier` = 50 WHERE `entry` = 18835;

-- Krosh Firehand
UPDATE `creature_template` SET `HealthModifier` = 50 WHERE `entry` = 18832;

-- Olm the Summoner
UPDATE `creature_template` SET `HealthModifier` = 50 WHERE `entry` = 18834;


/* GRUUL'S LAIR TRASH */

-- Gronn-Priest
UPDATE `creature_template` SET `HealthModifier` = 40 WHERE `entry` = 21350;

-- Lair Brute
UPDATE `creature_template` SET `HealthModifier` = 40 WHERE `entry` = 19389;


/* MAGTHERIDON'S LAIR BOSS AND BOSS ADDS */

-- Burning Abyssal
UPDATE `creature_template` SET `HealthModifier` = 300 WHERE `entry` = 17454;

-- Hellfire Channeler
UPDATE `creature_template` SET `HealthModifier` = 40 WHERE `entry` = 17256;

-- Magtheridon
UPDATE `creature_template` SET `HealthModifier` = 635 WHERE `entry` = 17257;


/* MAGTHERIDON'S LAIR TRASH */

-- Hellfire Warder
UPDATE `creature_template` SET `HealthModifier` = 32 WHERE `entry` = 18829;


/* SERPENTSHRINE CAVERN BOSSES AND BOSS ADDS */

-- Coilfang Ambusher
UPDATE `creature_template` SET `HealthModifier` = 5 WHERE `entry` = 21865;

-- Coilfang Beast Tamer
UPDATE `creature_template` SET `HealthModifier` = 35 WHERE `entry` = 21221;

-- Coilfang Elite
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 22055;

-- Coilfang Guardian
UPDATE `creature_template` SET `HealthModifier` = 10 WHERE `entry` = 21873;

-- Coilfang Strider
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 22056;

-- Enchanted Elemental
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 21958;

-- Fathom Lurker
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 22119;

-- Fathom Sporebat
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 22120;

-- Fathom-Guard Caribdis
UPDATE `creature_template` SET `HealthModifier` = 150 WHERE `entry` = 21964;

-- Fathom-Guard Sharkkis
UPDATE `creature_template` SET `HealthModifier` = 150 WHERE `entry` = 21966;

-- Fathom-Guard Tidalvess
UPDATE `creature_template` SET `HealthModifier` = 150 WHERE `entry` = 21965;

-- Fathom-Lord Karathress
UPDATE `creature_template` SET `HealthModifier` = 300 WHERE `entry` = 21214;

-- Greyheart Spellbinder
UPDATE `creature_template` SET `HealthModifier` = 20 WHERE `entry` = 21806;

-- Inner Demon
UPDATE `creature_template` SET `HealthModifier` = 1.4875 WHERE `entry` = 21857;

-- Lady Vashj <Coilfang Matron>
UPDATE `creature_template` SET `HealthModifier` = 800 WHERE `entry` = 21212;

-- Leotheras the Blind
UPDATE `creature_template` SET `HealthModifier` = 500 WHERE `entry` = 21215;

-- Morogrim Tidewalker
UPDATE `creature_template` SET `HealthModifier` = 750 WHERE `entry` = 21213;

-- Pure Spawn of Hydross
UPDATE `creature_template` SET `HealthModifier` = 6 WHERE `entry` = 22035;

-- Purified Water Elemental
UPDATE `creature_template` SET `HealthModifier` = 1.5 WHERE `entry` = 21260;

-- Shadow of Leotheras
UPDATE `creature_template` SET `HealthModifier` = 500 WHERE `entry` = 21875;

-- Spitfire Totem
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 22091;

-- Tainted Elemental
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 22009;

-- Tainted Spawn of Hydross
UPDATE `creature_template` SET `HealthModifier` = 6 WHERE `entry` = 22036;

-- Tainted Water Elemental
UPDATE `creature_template` SET `HealthModifier` = 1.5 WHERE `entry` = 21253;

-- The Lurker Below
UPDATE `creature_template` SET `HealthModifier` = 500 WHERE `entry` = 21217;

-- Tidewalker Lurker
UPDATE `creature_template` SET `HealthModifier` = 2.5 WHERE `entry` = 21920;

-- Toxic Sporebat
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 22140;


/* SERPENTSHRINE CAVERN TRASH */

-- Coilfang Fathom-Witch
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 21299;

-- Coilfang Hate Screamer
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 21339;

-- Coilfang Priestess
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 21220;

-- Coilfang Serpentguard
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 21298;

-- Coilfang Shatterer
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 21301;

-- Colossus Lurker
UPDATE `creature_template` SET `HealthModifier` = 20 WHERE `entry` = 22347;

-- Colossus Rager
UPDATE `creature_template` SET `HealthModifier` = 4 WHERE `entry` = 22352;

-- Greyheart Nether-Mage
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 21230;

-- Greyheart Shield-Bearer
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 21231;

-- Greyheart Skulker
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 21232;

-- Greyheart Technician
UPDATE `creature_template` SET `HealthModifier` = 2 WHERE `entry` = 21263;

-- Greyheart Tidecaller
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 21229;

-- Rancid Mushroom
UPDATE `creature_template` SET `HealthModifier` = 6 WHERE `entry` = 22250;

-- Serpentshrine Lurker
UPDATE `creature_template` SET `HealthModifier` = 15 WHERE `entry` = 21863;

-- Serpentshrine Sporebat
UPDATE `creature_template` SET `HealthModifier` = 15 WHERE `entry` = 21246;

-- Serpentshrine Tidecaller
UPDATE `creature_template` SET `HealthModifier` = 15 WHERE `entry` = 22238;

-- Tidewalker Depth Seer
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 21224;

-- Tidewalker Harpooner
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 21227;

-- Tidewalker Hydromancer
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 21228;

-- Tidewalker Shaman
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 21226;

-- Tidewalker Warrior
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 21225;

-- Underbog Colossus
UPDATE `creature_template` SET `HealthModifier` = 75 WHERE `entry` = 21251;

-- Vash'jir Honor Guard
UPDATE `creature_template` SET `HealthModifier` = 35 WHERE `entry` = 21218;


/* TEMPEST KEEP BOSSES AND BOSS ADDS */

-- Al'ar <Phoenix God>
UPDATE `creature_template` SET `HealthModifier` = 400 WHERE `entry` = 19514;

-- Cosmic Infuser
UPDATE `creature_template` SET `HealthModifier` = 36 WHERE `entry` = 21270;

-- Devastation
UPDATE `creature_template` SET `HealthModifier` = 31.5 WHERE `entry` = 21269;

-- Ember of Al'ar
UPDATE `creature_template` SET `HealthModifier` = 10 WHERE `entry` = 19551;

-- Grand Astromancer Capernian <Advisor to Kael'thas>
UPDATE `creature_template` SET `HealthModifier` = 36 WHERE `entry` = 20062;

-- High Astromancer Solarian
UPDATE `creature_template` SET `HealthModifier` = 500 WHERE `entry` = 18805;

-- Infinity Blades
UPDATE `creature_template` SET `HealthModifier` = 27 WHERE `entry` = 21271;

-- Kael'thas Sunstrider <Lord of the Blood Elves>
UPDATE `creature_template` SET `HealthModifier` = 600 WHERE `entry` = 19622;

-- Lord Sanguinar <The Blood Hammer>
UPDATE `creature_template` SET `HealthModifier` = 36 WHERE `entry` = 20060;

-- Master Engineer Telonicus <Advisor to Kael'thas>
UPDATE `creature_template` SET `HealthModifier` = 36 WHERE `entry` = 20063;

-- Netherstrand Longbow
UPDATE `creature_template` SET `HealthModifier` = 27 WHERE `entry` = 21268;

-- Phaseshift Bulwark
UPDATE `creature_template` SET `HealthModifier` = 40.5 WHERE `entry` = 21273;

-- Phoenix
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 21362;

-- Phoenix Egg
UPDATE `creature_template` SET `HealthModifier` = 10 WHERE `entry` = 21364;

-- Solarium Agent
UPDATE `creature_template` SET `HealthModifier` = 4 WHERE `entry` = 18925;

-- Solarium Priest
UPDATE `creature_template` SET `HealthModifier` = 15 WHERE `entry` = 18806;

-- Staff of Disintegration
UPDATE `creature_template` SET `HealthModifier` = 22.5 WHERE `entry` = 21274;

-- Thaladred the Darkener <Advisor to Kael'thas>
UPDATE `creature_template` SET `HealthModifier` = 36 WHERE `entry` = 20064;

-- Void Reaver
UPDATE `creature_template` SET `HealthModifier` = 750 WHERE `entry` = 19516;

-- Warp Slicer
UPDATE `creature_template` SET `HealthModifier` = 36 WHERE `entry` = 21272;


/* TEMPEST KEEP TRASH */

-- Apprentice Star Scryer
UPDATE `creature_template` SET `HealthModifier` = 4 WHERE `entry` = 20043;

-- Astromancer
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 20033;

-- Astromancer Lord
UPDATE `creature_template` SET `HealthModifier` = 40 WHERE `entry` = 20046;

-- Bloodwarder Legionnaire
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 20031;

-- Bloodwarder Marshal
UPDATE `creature_template` SET `HealthModifier` = 40 WHERE `entry` = 20035;

-- Bloodwarder Squire
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 20036;

-- Bloodwarder Vindicator
UPDATE `creature_template` SET `HealthModifier` = 40 WHERE `entry` = 20032;

-- Crimson Hand Battle Mage
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 20047;

-- Crimson Hand Blood Knight
UPDATE `creature_template` SET `HealthModifier` = 40 WHERE `entry` = 20049;

-- Crimson Hand Centurion
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 20048;

-- Crimson Hand Inquisitor
UPDATE `creature_template` SET `HealthModifier` = 40 WHERE `entry` = 20050;

-- Crystalcore Devastator
UPDATE `creature_template` SET `HealthModifier` = 75 WHERE `entry` = 20040;

-- Crystalcore Mechanic
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 20052;

-- Crystalcore Sentinel
UPDATE `creature_template` SET `HealthModifier` = 40 WHERE `entry` = 20041;

-- Nether Scryer
UPDATE `creature_template` SET `HealthModifier` = 40 WHERE `entry` = 20045;

-- Novice Astromancer
UPDATE `creature_template` SET `HealthModifier` = 4 WHERE `entry` = 20044;

-- Phoenix Hawk
UPDATE `creature_template` SET `HealthModifier` = 75 WHERE `entry` = 20039;

-- Phoenix-Hawk Hatchling
UPDATE `creature_template` SET `HealthModifier` = 10 WHERE `entry` = 20038;

-- Star Scryer
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 20034;

-- Tempest Falconer
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 20037;

-- Tempest Smith
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 20042;


/* HYJAL SUMMIT BOSSES AND BOSS ADDS */

-- Anetheron
UPDATE `creature_template` SET `HealthModifier` = 700 WHERE `entry` = 17808;

-- Archimonde
UPDATE `creature_template` SET `HealthModifier` = 750 WHERE `entry` = 17968;

-- Azgalor
UPDATE `creature_template` SET `HealthModifier` = 700 WHERE `entry` = 17842;

-- Kaz'rogal
UPDATE `creature_template` SET `HealthModifier` = 700 WHERE `entry` = 17888;

-- Lesser Doomguard
UPDATE `creature_template` SET `HealthModifier` = 35 WHERE `entry` = 17864;

-- Rage Winterchill
UPDATE `creature_template` SET `HealthModifier` = 700 WHERE `entry` = 17767;

-- Towering Infernal
UPDATE `creature_template` SET `HealthModifier` = 30 WHERE `entry` = 17818;


/* HYJAL SUMMIT TRASH */

-- Abomination
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 17898;

-- Banshee
UPDATE `creature_template` SET `HealthModifier` = 15 WHERE `entry` = 17905;

-- Crypt Fiend
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 17897;

-- Fel Stalker
UPDATE `creature_template` SET `HealthModifier` = 15 WHERE `entry` = 17916;

-- Frost Wyrm
UPDATE `creature_template` SET `HealthModifier` = 45 WHERE `entry` = 17907;

-- Gargoyle
UPDATE `creature_template` SET `HealthModifier` = 18 WHERE `entry` = 17906;

-- Giant Infernal
UPDATE `creature_template` SET `HealthModifier` = 18 WHERE `entry` = 17908;

-- Ghoul
UPDATE `creature_template` SET `HealthModifier` = 20 WHERE `entry` = 17895;

-- Shadowy Necromancer
UPDATE `creature_template` SET `HealthModifier` = 22 WHERE `entry` = 17899;

-- Skeleton Invader
UPDATE `creature_template` SET `HealthModifier` = 5 WHERE `entry` = 17902;

-- Skeleton Mage
UPDATE `creature_template` SET `HealthModifier` = 5 WHERE `entry` = 17903;


/* BLACK TEMPLE BOSSES AND BOSS ADDS */

-- Ashtongue Channeler
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 23421;

-- Ashtongue Defender
UPDATE `creature_template` SET `HealthModifier` = 12 WHERE `entry` = 23216;

-- Ashtongue Elementalist
UPDATE `creature_template` SET `HealthModifier` = 4 WHERE `entry` = 23523;

-- Ashtongue Rogue
UPDATE `creature_template` SET `HealthModifier` = 4 WHERE `entry` = 23318;

-- Ashtongue Spiritbinder
UPDATE `creature_template` SET `HealthModifier` = 4 WHERE `entry` = 23524;

-- Enslaved Soul
UPDATE `creature_template` SET `HealthModifier` = 2 WHERE `entry` = 23469;

-- Essence of Anger
UPDATE `creature_template` SET `HealthModifier` = 400 WHERE `entry` = 23420;

-- Essence of Desire
UPDATE `creature_template` SET `HealthModifier` = 400 WHERE `entry` = 23419;

-- Essence of Suffering
UPDATE `creature_template` SET `HealthModifier` = 300 WHERE `entry` = 23418;

-- Flame of Azzinoth
UPDATE `creature_template` SET `HealthModifier` = 150 WHERE `entry` = 22997;

-- Gathios the Shatterer
UPDATE `creature_template` SET `HealthModifier` = 250 WHERE `entry` = 22949;

-- Gurtogg Bloodboil
UPDATE `creature_template` SET `HealthModifier` = 750 WHERE `entry` = 22948;

-- High Nethermancer Zerevor
UPDATE `creature_template` SET `HealthModifier` = 250 WHERE `entry` = 22950;

-- High Warlord Naj'entus
UPDATE `creature_template` SET `HealthModifier` = 500 WHERE `entry` = 22887;

-- Illidan Stormrage <The Betrayer>
UPDATE `creature_template` SET `HealthModifier` = 800 WHERE `entry` = 22917;

-- Illidari Elite
UPDATE `creature_template` SET `HealthModifier` = 3 WHERE `entry` = 23226;

-- Lady Malande
UPDATE `creature_template` SET `HealthModifier` = 250 WHERE `entry` = 22951;

-- Mother Shahraz
UPDATE `creature_template` SET `HealthModifier` = 750 WHERE `entry` = 22947;

-- Parasitic Shadowfiend
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry` = 23498;

-- Shade of Akama
UPDATE `creature_template` SET `HealthModifier` = 132 WHERE `entry` = 22841;

-- Shadow Demon
UPDATE `creature_template` SET `HealthModifier` = 3 WHERE `entry` = 23375;

-- Supremus
UPDATE `creature_template` SET `HealthModifier` = 600 WHERE `entry` = 22898;

-- Teron Gorefiend
UPDATE `creature_template` SET `HealthModifier` = 825 WHERE `entry` = 22871;

-- Veras Darkshadow
UPDATE `creature_template` SET `HealthModifier` = 250 WHERE `entry` = 22952;


/* BLACK TEMPLE TRASH */

-- Angered Soul Fragment
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 23398;

-- Aqueous Lord
UPDATE `creature_template` SET `HealthModifier` = 60 WHERE `entry` = 22878;

-- Aqueous Spawn
UPDATE `creature_template` SET `HealthModifier` = 9 WHERE `entry` = 22883;

-- Aqueous Surger
UPDATE `creature_template` SET `HealthModifier` = 15 WHERE `entry` = 22881;

-- Ardent Host
UPDATE `creature_template` SET `HealthModifier` = 30 WHERE `entry` = 22959;

-- Ashtongue Battlelord
UPDATE `creature_template` SET `HealthModifier` = 45 WHERE `entry` = 22844;

-- Ashtongue Broken
UPDATE `creature_template` SET `HealthModifier` = 7 WHERE `entry` = 23319;

-- Ashtongue Feral Spirit
UPDATE `creature_template` SET `HealthModifier` = 15 WHERE `entry` = 22849;

-- Ashtongue Mystic
UPDATE `creature_template` SET `HealthModifier` = 30 WHERE `entry` = 22845;

-- Ashtongue Primalist
UPDATE `creature_template` SET `HealthModifier` = 30 WHERE `entry` = 22847;

-- Ashtongue Sorcerer
UPDATE `creature_template` SET `HealthModifier` = 20 WHERE `entry` = 23215;

-- Ashtongue Stalker
UPDATE `creature_template` SET `HealthModifier` = 30 WHERE `entry` = 23374;

-- Ashtongue Stormcaller
UPDATE `creature_template` SET `HealthModifier` = 30 WHERE `entry` = 22846;

-- Bonechewer Behemoth
UPDATE `creature_template` SET `HealthModifier` = 90 WHERE `entry` = 23196;

-- Bonechewer Blade Fury
UPDATE `creature_template` SET `HealthModifier` = 30 WHERE `entry` = 23235;

-- Bonechewer Blood Prophet
UPDATE `creature_template` SET `HealthModifier` = 30 WHERE `entry` = 23237;

-- Bonechewer Brawler
UPDATE `creature_template` SET `HealthModifier` = 55 WHERE `entry` = 23222;

-- Bonechewer Combatant
UPDATE `creature_template` SET `HealthModifier` = 55 WHERE `entry` = 23239;

-- Bonechewer Shield Disciple
UPDATE `creature_template` SET `HealthModifier` = 30 WHERE `entry` = 23236;

-- Bonechewer Spectator
UPDATE `creature_template` SET `HealthModifier` = 4.5 WHERE `entry` = 23223;

-- Bonechewer Taskmaster
UPDATE `creature_template` SET `HealthModifier` = 30 WHERE `entry` = 23028;

-- Bonechewer Worker
UPDATE `creature_template` SET `HealthModifier` = 4.5 WHERE `entry` = 22963;

-- Charming Patron
UPDATE `creature_template` SET `HealthModifier` = 4.5 WHERE `entry` = 22955;

-- Coilskar General
UPDATE `creature_template` SET `HealthModifier` = 40 WHERE `entry` = 22873;

-- Coilskar Harpooner
UPDATE `creature_template` SET `HealthModifier` = 30 WHERE `entry` = 22874;

-- Coilskar Sea-Caller
UPDATE `creature_template` SET `HealthModifier` = 30 WHERE `entry` = 22875;

-- Coilskar Soothsayer
UPDATE `creature_template` SET `HealthModifier` = 30 WHERE `entry` = 22876;

-- Coilskar Wrangler
UPDATE `creature_template` SET `HealthModifier` = 30 WHERE `entry` = 22877;

-- Dragon Turtle <Coilskar Harpooner's Pet>
UPDATE `creature_template` SET `HealthModifier` = 15 WHERE `entry` = 22885;

-- Dragonmaw Sky Stalker
UPDATE `creature_template` SET `HealthModifier` = 35 WHERE `entry` = 23030;

-- Dragonmaw Wind Reaver
UPDATE `creature_template` SET `HealthModifier` = 35 WHERE `entry` = 23330;

-- Dragonmaw Wyrmcaller
UPDATE `creature_template` SET `HealthModifier` = 35 WHERE `entry` = 22960;

-- Enslaved Servant
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 22965;

-- Fallen Ally
UPDATE `creature_template` SET `HealthModifier` = 20 WHERE `entry` = 23389;

-- Greater Shadowfiend
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry` = 22929;

-- Hand of Gorefiend
UPDATE `creature_template` SET `HealthModifier` = 35 WHERE `entry` = 23172;

-- Illidari Archon
UPDATE `creature_template` SET `HealthModifier` = 30 WHERE `entry` = 23400;

-- Illidari Assassin
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 23403;

-- Illidari Battle-mage
UPDATE `creature_template` SET `HealthModifier` = 30 WHERE `entry` = 23402;

-- Illidari Boneslicer
UPDATE `creature_template` SET `HealthModifier` = 30 WHERE `entry` = 22869;

-- Illidari Blood Lord
UPDATE `creature_template` SET `HealthModifier` = 40 WHERE `entry` = 23397;

-- Illidari Centurion
UPDATE `creature_template` SET `HealthModifier` = 40 WHERE `entry` = 23337;

-- Illidari Defiler
UPDATE `creature_template` SET `HealthModifier` = 30 WHERE `entry` = 22853;

-- Illidari Fearbringer
UPDATE `creature_template` SET `HealthModifier` = 75 WHERE `entry` = 22954;

-- Illidari Heartseeker
UPDATE `creature_template` SET `HealthModifier` = 30 WHERE `entry` = 23339;

-- Illidari Nightlord
UPDATE `creature_template` SET `HealthModifier` = 60 WHERE `entry` = 22855;

-- Image of Dementia
UPDATE `creature_template` SET `HealthModifier` = 8 WHERE `entry` = 23436;

-- Leviathan
UPDATE `creature_template` SET `HealthModifier` = 75 WHERE `entry` = 22884;

-- Mutant War Hound
UPDATE `creature_template` SET `HealthModifier` = 20 WHERE `entry` = 23232;

-- Promenade Sentinel
UPDATE `creature_template` SET `HealthModifier` = 90 WHERE `entry` = 23394;

-- Priestess of Delight
UPDATE `creature_template` SET `HealthModifier` = 90 WHERE `entry` = 22962;

-- Priestess of Dementia
UPDATE `creature_template` SET `HealthModifier` = 90 WHERE `entry` = 22957;

-- Shadowmoon Blood Mage
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 22945;

-- Shadowmoon Champion
UPDATE `creature_template` SET `HealthModifier` = 45 WHERE `entry` = 22880;

-- Shadowmoon Deathshaper
UPDATE `creature_template` SET `HealthModifier` = 30 WHERE `entry` = 22882;

-- Shadowmoon Fallen
UPDATE `creature_template` SET `HealthModifier` = 15 WHERE `entry` = 23371;

-- Shadowmoon Grunt
UPDATE `creature_template` SET `HealthModifier` = 4.5 WHERE `entry` = 23147;

-- Shadowmoon Houndmaster
UPDATE `creature_template` SET `HealthModifier` = 35 WHERE `entry` = 23018;

-- Shadowmoon Reaver
UPDATE `creature_template` SET `HealthModifier` = 30 WHERE `entry` = 22879;

-- Shadowmoon Riding Hound
UPDATE `creature_template` SET `HealthModifier` = 20 WHERE `entry` = 23083;

-- Shadowmoon Soldier
UPDATE `creature_template` SET `HealthModifier` = 5 WHERE `entry` = 23047;

-- Shadowmoon War Hound
UPDATE `creature_template` SET `HealthModifier` = 10 WHERE `entry` = 22946;

-- Shadowmoon Weapon Master
UPDATE `creature_template` SET `HealthModifier` = 50 WHERE `entry` = 23049;

-- Shadowy Construct
UPDATE `creature_template` SET `HealthModifier` = 8.5 WHERE `entry` = 23111;

-- Sister of Pain
UPDATE `creature_template` SET `HealthModifier` = 50 WHERE `entry` = 22956;

-- Sister of Pleasure
UPDATE `creature_template` SET `HealthModifier` = 50 WHERE `entry` = 22964;

-- Storm Fury
UPDATE `creature_template` SET `HealthModifier` = 15 WHERE `entry` = 22848;

-- Suffering Soul Fragment
UPDATE `creature_template` SET `HealthModifier` = 12 WHERE `entry` = 23399;

-- Temple Concubine
UPDATE `creature_template` SET `HealthModifier` = 4.5 WHERE `entry` = 22939;

-- Vengeful Spirit
UPDATE `creature_template` SET `HealthModifier` = 0.7 WHERE `entry` = 23109;

-- Wrathbone Flayer
UPDATE `creature_template` SET `HealthModifier` = 50 WHERE `entry` = 22953;


/* BLACK TEMPLE NPCS */

-- Aluyen <Reagents>
UPDATE `creature_template` SET `HealthModifier` = 7 WHERE `entry` = 23157;

-- Blade of Azzinoth
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 22996;

-- Maiev Shadowsong
UPDATE `creature_template` SET `HealthModifier` = 15 WHERE `entry` = 23197;

-- Okuno <Ashtongue Deathsworn Quartermaster>
UPDATE `creature_template` SET `HealthModifier` = 7 WHERE `entry` = 23159;

-- Seer Kanai
UPDATE `creature_template` SET `HealthModifier` = 7 WHERE `entry` = 23158;

-- Spirit of Olum
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry` = 23411;

-- Spirit of Udalo
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry` = 23410;


/* ZUL'AMAN BOSSES AND BOSS ADDS */

-- Akil'zon <Eagle Avatar>
UPDATE `creature_template` SET `HealthModifier` = 220 WHERE `entry` = 23574;

-- Alyson Antille
UPDATE `creature_template` SET `HealthModifier` = 17.5 WHERE `entry` = 24240;

-- Amani Bear Spirit
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 23878;

-- Amani Dragonhawk Spirit
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 23879;

-- Amani Eagle Spirit
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 23880;

-- Amani Lynx Spirit
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 23877;

-- Amani'shi Hatcher
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 23818;

-- Amani'shi Hatcher
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 24504;

-- Darkheart
UPDATE `creature_template` SET `HealthModifier` = 14 WHERE `entry` = 24246;

-- Fenstalker
UPDATE `creature_template` SET `HealthModifier` = 14 WHERE `entry` = 24245;

-- Gazakroth
UPDATE `creature_template` SET `HealthModifier` = 17.5 WHERE `entry` = 24244;

-- Halazzi <Lynx Avatar>
UPDATE `creature_template` SET `HealthModifier` = 80 WHERE `entry` = 23577;

-- Hex Lord Malacrass
UPDATE `creature_template` SET `HealthModifier` = 135 WHERE `entry` = 24239;

-- Jan'alai <Dragonhawk Avatar>
UPDATE `creature_template` SET `HealthModifier` = 135 WHERE `entry` = 23578;

-- Koragg
UPDATE `creature_template` SET `HealthModifier` = 14 WHERE `entry` = 24247;

-- Lord Raadan
UPDATE `creature_template` SET `HealthModifier` = 14 WHERE `entry` = 24243;

-- Nalorakk <Bear Avatar>
UPDATE `creature_template` SET `HealthModifier` = 180 WHERE `entry` = 23576;

-- Slither
UPDATE `creature_template` SET `HealthModifier` = 14 WHERE `entry` = 24242;

-- Soaring Eagle
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry` = 24858;

-- Spirit of the Lynx
UPDATE `creature_template` SET `HealthModifier` = 30.5 WHERE `entry` = 24143;

-- Zul'jin
UPDATE `creature_template` SET `HealthModifier` = 225 WHERE `entry` = 23863;


/* ZUL'AMAN TRASH */

-- Amani Bear
UPDATE `creature_template` SET `HealthModifier` = 12 WHERE `entry` = 23584;

-- Amani Bear Mount
UPDATE `creature_template` SET `HealthModifier` = 6 WHERE `entry` = 24217;

-- Amani Crocolisk
UPDATE `creature_template` SET `HealthModifier` = 4 WHERE `entry` = 24047;

-- Amani Dragonhawk
UPDATE `creature_template` SET `HealthModifier` = 3 WHERE `entry` = 23834;

-- Amani Dragonhawk Hatchling
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 23598;

-- Amani Eagle
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 24159;

-- Amani Elder Lynx
UPDATE `creature_template` SET `HealthModifier` = 8 WHERE `entry` = 24530;

-- Amani Lynx
UPDATE `creature_template` SET `HealthModifier` = 8 WHERE `entry` = 24043;

-- Amani Lynx Cub
UPDATE `creature_template` SET `HealthModifier` = 3 WHERE `entry` = 24064;

-- Amani'shi Axe Thrower
UPDATE `creature_template` SET `HealthModifier` = 12 WHERE `entry` = 23542;

-- Amani'shi Beast Tamer
UPDATE `creature_template` SET `HealthModifier` = 12 WHERE `entry` = 24059;

-- Amani'shi Berserker
UPDATE `creature_template` SET `HealthModifier` = 20 WHERE `entry` = 24374;

-- Amani'shi Flame Caster
UPDATE `creature_template` SET `HealthModifier` = 12 WHERE `entry` = 23596;

-- Amani'shi Guardian
UPDATE `creature_template` SET `HealthModifier` = 12 WHERE `entry` = 23597;

-- Amani'shi Handler
UPDATE `creature_template` SET `HealthModifier` = 12 WHERE `entry` = 24065;

-- Amani'shi Lookout
UPDATE `creature_template` SET `HealthModifier` = 12 WHERE `entry` = 24175;

-- Amani'shi Medicine Man
UPDATE `creature_template` SET `HealthModifier` = 12 WHERE `entry` = 23581;

-- Amani'shi Protector
UPDATE `creature_template` SET `HealthModifier` = 10 WHERE `entry` = 24180;

-- Amani'shi Reinforcement
UPDATE `creature_template` SET `HealthModifier` = 12 WHERE `entry` = 23587;

-- Amani'shi Scout
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 23586;

-- Amani'shi Tempest
UPDATE `creature_template` SET `HealthModifier` = 20 WHERE `entry` = 24549;

-- Amani'shi Trainer
UPDATE `creature_template` SET `HealthModifier` = 15 WHERE `entry` = 23774;

-- Amani'shi Tribesman
UPDATE `creature_template` SET `HealthModifier` = 12 WHERE `entry` = 23582;

-- Amani'shi Warbringer
UPDATE `creature_template` SET `HealthModifier` = 15 WHERE `entry` = 23580;

-- Amani'shi Warrior
UPDATE `creature_template` SET `HealthModifier` = 3.5 WHERE `entry` = 24225;

-- Amani'shi Wind Walker
UPDATE `creature_template` SET `HealthModifier` = 10 WHERE `entry` = 24179;

-- Tamed Amani Crocolisk
UPDATE `creature_template` SET `HealthModifier` = 4 WHERE `entry` = 24138;


/* ZUL'AMAN NPCS */

-- Adarrah
UPDATE `creature_template` SET `HealthModifier` = 1.15 WHERE `entry` = 24405;

-- Ashli
UPDATE `creature_template` SET `HealthModifier` = 1.15 WHERE `entry` = 24001;

-- Darwen
UPDATE `creature_template` SET `HealthModifier` = 1.15 WHERE `entry` = 24407;

-- Deez
UPDATE `creature_template` SET `HealthModifier` = 1.15 WHERE `entry` = 24403;

-- Fudgerick
UPDATE `creature_template` SET `HealthModifier` = 1.15 WHERE `entry` = 24406;

-- Galathryn
UPDATE `creature_template` SET `HealthModifier` = 1.15 WHERE `entry` = 24404;

-- Gunter
UPDATE `creature_template` SET `HealthModifier` = 1.15 WHERE `entry` = 24408;

-- Harkor
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 23999;

-- Harrison Jones
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 24358;

-- Kraz
UPDATE `creature_template` SET `HealthModifier` = 1.15 WHERE `entry` = 24024;

-- Kyren
UPDATE `creature_template` SET `HealthModifier` = 1.15 WHERE `entry` = 24409;

-- Mannuth
UPDATE `creature_template` SET `HealthModifier` = 1.15 WHERE `entry` = 24397;

-- Tanzar
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 23790;

-- Zungam
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 23897;


/* SUNWELL PLATEAU BOSSES AND BOSS ADDS */

-- Brutallus
UPDATE `creature_template` SET `HealthModifier` = 1384 WHERE `entry` = 24882;

-- Dark Fiend
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 25744;

-- Entropius
UPDATE `creature_template` SET `HealthModifier` = 270 WHERE `entry` = 25840;

-- Felmyst
UPDATE `creature_template` SET `HealthModifier` = 1154 WHERE `entry` = 25038;

-- Grand Warlock Alythess
UPDATE `creature_template` SET `HealthModifier` = 475 WHERE `entry` = 25166;

-- Hand of the Deceiver
UPDATE `creature_template` SET `HealthModifier` = 35 WHERE `entry` = 25588;

-- Kalecgos
UPDATE `creature_template` SET `HealthModifier` = 475 WHERE `entry` = 24850;

-- Kil'jaeden <The Deceiver>
UPDATE `creature_template` SET `HealthModifier` = 2200 WHERE `entry` = 25315;

-- Lady Sacrolash
UPDATE `creature_template` SET `HealthModifier` = 475 WHERE `entry` = 25165;

-- M'uru
UPDATE `creature_template` SET `HealthModifier` = 360 WHERE `entry` = 25741;

-- Sathrovarr the Corruptor
UPDATE `creature_template` SET `HealthModifier` = 475 WHERE `entry` = 24892;

-- Shadowsword Berserker
UPDATE `creature_template` SET `HealthModifier` = 19 WHERE `entry` = 25798;

-- Shadowsword Fury Mage
UPDATE `creature_template` SET `HealthModifier` = 20 WHERE `entry` = 25799;

-- Shield Orb
UPDATE `creature_template` SET `HealthModifier` = 2.86 WHERE `entry` = 25502;

-- Sinister Reflection
UPDATE `creature_template` SET `HealthModifier` = 20 WHERE `entry` = 25708;

-- Void Sentinel
UPDATE `creature_template` SET `HealthModifier` = 25 WHERE `entry` = 25772;

-- Void Spawn
UPDATE `creature_template` SET `HealthModifier` = 7.2445 WHERE `entry` = 25824;


/* SUNWELL PLATEAU TRASH */

-- Apocalypse Guard
UPDATE `creature_template` SET `HealthModifier` = 68.75 WHERE `entry` = 25593;

-- Cataclysm Hound
UPDATE `creature_template` SET `HealthModifier` = 86 WHERE `entry` = 25599;

-- Chaos Gazer
UPDATE `creature_template` SET `HealthModifier` = 76 WHERE `entry` = 25595;

-- Doomfire Destroyer
UPDATE `creature_template` SET `HealthModifier` = 40 WHERE `entry` = 25592;

-- Doomfire Shard
UPDATE `creature_template` SET `HealthModifier` = 8 WHERE `entry` = 25948;

-- Fire Fiend
UPDATE `creature_template` SET `HealthModifier` = 2 WHERE `entry` = 26101;

-- Oblivion Mage
UPDATE `creature_template` SET `HealthModifier` = 35 WHERE `entry` = 25597;

-- Painbringer
UPDATE `creature_template` SET `HealthModifier` = 35 WHERE `entry` = 25591;

-- Priestess of Torment
UPDATE `creature_template` SET `HealthModifier` = 35 WHERE `entry` = 25509;

-- Shadowsword Assassin
UPDATE `creature_template` SET `HealthModifier` = 35 WHERE `entry` = 25484;

-- Shadowsword Commander
UPDATE `creature_template` SET `HealthModifier` = 35 WHERE `entry` = 25837;

-- Shadowsword Deathbringer
UPDATE `creature_template` SET `HealthModifier` = 35 WHERE `entry` = 25485;

-- Shadowsword Guardian
UPDATE `creature_template` SET `HealthModifier` = 100 WHERE `entry` = 25508;

-- Shadowsword Lifeshaper
UPDATE `creature_template` SET `HealthModifier` = 35 WHERE `entry` = 25506;

-- Shadowsword Manafiend
UPDATE `creature_template` SET `HealthModifier` = 35 WHERE `entry` = 25483;

-- Shadowsword Soulbinder
UPDATE `creature_template` SET `HealthModifier` = 35 WHERE `entry` = 25373;

-- Shadowsword Vanquisher
UPDATE `creature_template` SET `HealthModifier` = 35 WHERE `entry` = 25486;

-- Sunblade Arch Mage
UPDATE `creature_template` SET `HealthModifier` = 35 WHERE `entry` = 25367;

-- Sunblade Cabalist
UPDATE `creature_template` SET `HealthModifier` = 35 WHERE `entry` = 25363;

-- Sunblade Dawn Priest
UPDATE `creature_template` SET `HealthModifier` = 35 WHERE `entry` = 25371;

-- Sunblade Dragonhawk
UPDATE `creature_template` SET `HealthModifier` = 20 WHERE `entry` = 25867;

-- Sunblade Dusk Priest
UPDATE `creature_template` SET `HealthModifier` = 35 WHERE `entry` = 25370;

-- Sunblade Scout
UPDATE `creature_template` SET `HealthModifier` = 3 WHERE `entry` = 25372;

-- Sunblade Slayer
UPDATE `creature_template` SET `HealthModifier` = 35 WHERE `entry` = 25368;

-- Sunblade Vindicator
UPDATE `creature_template` SET `HealthModifier` = 35 WHERE `entry` = 25369;

-- Unyielding Dead
UPDATE `creature_template` SET `HealthModifier` = 5 WHERE `entry` = 25268;

-- Volatile Felfire Fiend
UPDATE `creature_template` SET `HealthModifier` = 0.26 WHERE `entry` = 25598;

-- Volatile Fiend
UPDATE `creature_template` SET `HealthModifier` = 2 WHERE `entry` = 25851;


/* SUNWELL PLATEAU NPCS */

-- Anchorite Elbadon
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 25639;

-- Captain Selana
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 25638;

-- Kalecgos
UPDATE `creature_template` SET `HealthModifier` = 195 WHERE `entry` = 24891;
UPDATE `creature_template` SET `HealthModifier` = 425 WHERE `entry` = 25319;

-- Madrigosa
UPDATE `creature_template` SET `HealthModifier` = 100 WHERE `entry` = 24895;

-- Neophyte Narama
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 25644;

-- Shattered Sun Riftwaker
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 26289;

-- Shattered Sun Soldier
UPDATE `creature_template` SET `HealthModifier` = 1.5 WHERE `entry` = 25661;
UPDATE `creature_template` SET `HealthModifier` = 1.5 WHERE `entry` = 26259;

-- Vindicator Moorba
UPDATE `creature_template` SET `HealthModifier` = 1 WHERE `entry` = 25632;


/* WORLD BOSSES */

-- Doom Lord Kazzak
UPDATE `creature_template` SET `HealthModifier` = 160 WHERE `entry` = 18728;

-- Doomwalker
UPDATE `creature_template` SET `HealthModifier` = 300 WHERE `entry` = 17711;
