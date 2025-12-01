-- In Patch 3.0.2, all creatures in TBC raid instances and TBC world bosses had their max health reduced (generally by 30%).
-- This script restores such creatures' max health to the values from the end of TBC (Patch 2.4.3).


/* KARAZHAN BOSSES AND BOSS ADDS */

UPDATE `creature_template` SET `HealthModifier` = 1.9 WHERE `entry` = 17096; -- Astral Flare
UPDATE `creature_template` SET `HealthModifier` = 1.9 WHERE `entry` = 19781; -- Astral Flare
UPDATE `creature_template` SET `HealthModifier` = 1.9 WHERE `entry` = 19782; -- Astral Flare
UPDATE `creature_template` SET `HealthModifier` = 1.9 WHERE `entry` = 19783; -- Astral Flare
UPDATE `creature_template` SET `HealthModifier` = 50  WHERE `entry` = 16151; -- Attumen the Huntsman (Mounted)
UPDATE `creature_template` SET `HealthModifier` = 50  WHERE `entry` = 15550; -- Attumen the Huntsman (Unmounted)
UPDATE `creature_template` SET `HealthModifier` = 12  WHERE `entry` = 19874; -- Baron Rafe Dreuger
UPDATE `creature_template` SET `HealthModifier` = 12  WHERE `entry` = 19875; -- Baroness Dorothea Millstipe
UPDATE `creature_template` SET `HealthModifier` = 2   WHERE `entry` = 17167; -- Conjured Elemental
UPDATE `creature_template` SET `HealthModifier` = 1.4 WHERE `entry` = 17248; -- Demon Chains
UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 17535; -- Dorothee
UPDATE `creature_template` SET `HealthModifier` = 0.9 WHERE `entry` = 17267; -- Fiendish Imp
UPDATE `creature_template` SET `HealthModifier` = 35  WHERE `entry` = 16179; -- Hyakiss the Lurker
UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 17534; -- Julianne
UPDATE `creature_template` SET `HealthModifier` = 12  WHERE `entry` = 17229; -- Kil'rek
UPDATE `creature_template` SET `HealthModifier` = 12  WHERE `entry` = 19872; -- Lady Catriona Von'Indi
UPDATE `creature_template` SET `HealthModifier` = 12  WHERE `entry` = 17007; -- Lady Keira Berrybuck
UPDATE `creature_template` SET `HealthModifier` = 12  WHERE `entry` = 19873; -- Lord Crispin Ference
UPDATE `creature_template` SET `HealthModifier` = 12  WHERE `entry` = 19876; -- Lord Robin Daris
UPDATE `creature_template` SET `HealthModifier` = 70  WHERE `entry` = 16457; -- Maiden of Virtue
UPDATE `creature_template` SET `HealthModifier` = 50  WHERE `entry` = 16152; -- Midnight
UPDATE `creature_template` SET `HealthModifier` = 50  WHERE `entry` = 15687; -- Moroes <Tower Steward>
UPDATE `creature_template` SET `HealthModifier` = 200 WHERE `entry` = 15689; -- Netherspite
UPDATE `creature_template` SET `HealthModifier` = 175 WHERE `entry` = 17225; -- Nightbane
UPDATE `creature_template` SET `HealthModifier` = 150 WHERE `entry` = 15690; -- Prince Malchezaar
UPDATE `creature_template` SET `HealthModifier` = 15  WHERE `entry` = 17546; -- Roar
UPDATE `creature_template` SET `HealthModifier` = 30  WHERE `entry` = 16181; -- Rokad the Ravager
UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 17533; -- Romulo
UPDATE `creature_template` SET `HealthModifier` = 160 WHERE `entry` = 16524; -- Shade of Aran
UPDATE `creature_template` SET `HealthModifier` = 35  WHERE `entry` = 16180; -- Shadikith the Glider
UPDATE `creature_template` SET `HealthModifier` = 15  WHERE `entry` = 17543; -- Strawman
UPDATE `creature_template` SET `HealthModifier` = 100 WHERE `entry` = 15688; -- Terestian Illhoof
UPDATE `creature_template` SET `HealthModifier` = 50  WHERE `entry` = 17521; -- The Big Bad Wolf
UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 18168; -- The Crone
UPDATE `creature_template` SET `HealthModifier` = 115 WHERE `entry` = 15691; -- The Curator
UPDATE `creature_template` SET `HealthModifier` = 15  WHERE `entry` = 17547; -- Tinhead
UPDATE `creature_template` SET `HealthModifier` = 5   WHERE `entry` = 17548; -- Tito


/* KARAZHAN TRASH */

UPDATE `creature_template` SET `HealthModifier` = 0.2 WHERE `entry` = 16488; -- Arcane Anomaly
UPDATE `creature_template` SET `HealthModifier` = 16  WHERE `entry` = 16504; -- Arcane Protector
UPDATE `creature_template` SET `HealthModifier` = 12  WHERE `entry` = 16485; -- Arcane Watchman
UPDATE `creature_template` SET `HealthModifier` = 0.175 WHERE `entry` = 17283; -- Astral Spark
UPDATE `creature_template` SET `HealthModifier` = 8   WHERE `entry` = 16489; -- Chaotic Sentience
UPDATE `creature_template` SET `HealthModifier` = 3   WHERE `entry` = 16170; -- Coldmist Stalker
UPDATE `creature_template` SET `HealthModifier` = 7   WHERE `entry` = 16171; -- Coldmist Widow
UPDATE `creature_template` SET `HealthModifier` = 8   WHERE `entry` = 16461; -- Concubine
UPDATE `creature_template` SET `HealthModifier` = 7   WHERE `entry` = 16177; -- Dreadbeast
UPDATE `creature_template` SET `HealthModifier` = 10  WHERE `entry` = 16545; -- Ethereal Spellfilcher
UPDATE `creature_template` SET `HealthModifier` = 8   WHERE `entry` = 16544; -- Ethereal Thief
UPDATE `creature_template` SET `HealthModifier` = 10  WHERE `entry` = 16595; -- Fleshbeast
UPDATE `creature_template` SET `HealthModifier` = 10  WHERE `entry` = 16481; -- Ghastly Haunt
UPDATE `creature_template` SET `HealthModifier` = 6   WHERE `entry` = 16412; -- Ghostly Baker
UPDATE `creature_template` SET `HealthModifier` = 8   WHERE `entry` = 16470; -- Ghostly Philanthropist
UPDATE `creature_template` SET `HealthModifier` = 8   WHERE `entry` = 16414; -- Ghostly Steward
UPDATE `creature_template` SET `HealthModifier` = 16  WHERE `entry` = 16596; -- Greater Fleshbeast
UPDATE `creature_template` SET `HealthModifier` = 8   WHERE `entry` = 16174; -- Greater Shadowbat
UPDATE `creature_template` SET `HealthModifier` = 3   WHERE `entry` = 16539; -- Homunculus
UPDATE `creature_template` SET `HealthModifier` = 8   WHERE `entry` = 16529; -- Magical Horror
UPDATE `creature_template` SET `HealthModifier` = 2   WHERE `entry` = 16491; -- Mana Feeder
UPDATE `creature_template` SET `HealthModifier` = 6   WHERE `entry` = 16530; -- Mana Warp
UPDATE `creature_template` SET `HealthModifier` = 8   WHERE `entry` = 16460; -- Night Mistress
UPDATE `creature_template` SET `HealthModifier` = 6   WHERE `entry` = 16406; -- Phantom Attendant
UPDATE `creature_template` SET `HealthModifier` = 6   WHERE `entry` = 16425; -- Phantom Guardsman
UPDATE `creature_template` SET `HealthModifier` = 2   WHERE `entry` = 16409; -- Phantom Guest
UPDATE `creature_template` SET `HealthModifier` = 2   WHERE `entry` = 17067; -- Phantom Hound
UPDATE `creature_template` SET `HealthModifier` = 9   WHERE `entry` = 16472; -- Phantom Stagehand
UPDATE `creature_template` SET `HealthModifier` = 9   WHERE `entry` = 16408; -- Phantom Valet
UPDATE `creature_template` SET `HealthModifier` = 3.5 WHERE `entry` = 16178; -- Phase Hound
UPDATE `creature_template` SET `HealthModifier` = 2.5 WHERE `entry` = 17261; -- Restless Skeleton
UPDATE `creature_template` SET `HealthModifier` = 6   WHERE `entry` = 16540; -- Shadow Pillager
UPDATE `creature_template` SET `HealthModifier` = 3   WHERE `entry` = 16173; -- Shadowbat
UPDATE `creature_template` SET `HealthModifier` = 6   WHERE `entry` = 16176; -- Shadowbeast
UPDATE `creature_template` SET `HealthModifier` = 12  WHERE `entry` = 16471; -- Skeletal Usher
UPDATE `creature_template` SET `HealthModifier` = 6   WHERE `entry` = 16415; -- Skeletal Waiter
UPDATE `creature_template` SET `HealthModifier` = 8   WHERE `entry` = 16526; -- Sorcerous Shade
UPDATE `creature_template` SET `HealthModifier` = 6   WHERE `entry` = 16389; -- Spectral Apprentice
UPDATE `creature_template` SET `HealthModifier` = 9   WHERE `entry` = 15547; -- Spectral Charger
UPDATE `creature_template` SET `HealthModifier` = 6   WHERE `entry` = 16411; -- Spectral Chef
UPDATE `creature_template` SET `HealthModifier` = 2   WHERE `entry` = 16468; -- Spectral Patron
UPDATE `creature_template` SET `HealthModifier` = 8   WHERE `entry` = 16473; -- Spectral Performer
UPDATE `creature_template` SET `HealthModifier` = 8   WHERE `entry` = 16410; -- Spectral Retainer
UPDATE `creature_template` SET `HealthModifier` = 6   WHERE `entry` = 16424; -- Spectral Sentry
UPDATE `creature_template` SET `HealthModifier` = 6   WHERE `entry` = 16407; -- Spectral Servant
UPDATE `creature_template` SET `HealthModifier` = 6   WHERE `entry` = 15551; -- Spectral Stable Hand
UPDATE `creature_template` SET `HealthModifier` = 9   WHERE `entry` = 15548; -- Spectral Stallion
UPDATE `creature_template` SET `HealthModifier` = 6   WHERE `entry` = 16525; -- Spell Shade
UPDATE `creature_template` SET `HealthModifier` = 2   WHERE `entry` = 16492; -- Syphoner
UPDATE `creature_template` SET `HealthModifier` = 10  WHERE `entry` = 16482; -- Trapped Soul
UPDATE `creature_template` SET `HealthModifier` = 6   WHERE `entry` = 16175; -- Vampiric Shadowbat
UPDATE `creature_template` SET `HealthModifier` = 8   WHERE `entry` = 16459; -- Wanton Hostess


/* KARAZHAN NPCS */

UPDATE `creature_template` SET `HealthModifier` = 1   WHERE `entry` = 16812; -- Barnes <The Stage Manager>
UPDATE `creature_template` SET `HealthModifier` = 1   WHERE `entry` = 16426; -- Bennett <The Sergeant at Arms>
UPDATE `creature_template` SET `HealthModifier` = 1   WHERE `entry` = 16153; -- Berthold <The Doorman>
UPDATE `creature_template` SET `HealthModifier` = 1   WHERE `entry` = 16159; -- Calliard <The Nightman>
UPDATE `creature_template` SET `HealthModifier` = 1   WHERE `entry` = 16806; -- Ebonlocke <The Noble>
UPDATE `creature_template` SET `HealthModifier` = 1   WHERE `entry` = 16816; -- Echo of Medivh
UPDATE `creature_template` SET `HealthModifier` = 1   WHERE `entry` = 16814; -- Gradav <The Warlock>
UPDATE `creature_template` SET `HealthModifier` = 1   WHERE `entry` = 17603; -- Grandmother
UPDATE `creature_template` SET `HealthModifier` = 1   WHERE `entry` = 16169; -- Hastings <The Caretaker>
UPDATE `creature_template` SET `HealthModifier` = 70  WHERE `entry` = 17652; -- Image of Arcanagos
UPDATE `creature_template` SET `HealthModifier` = 1   WHERE `entry` = 17651; -- Image of Medivh
UPDATE `creature_template` SET `HealthModifier` = 1   WHERE `entry` = 16815; -- Kamsis <The Conjurer>
UPDATE `creature_template` SET `HealthModifier` = 1   WHERE `entry` = 16388; -- Koren <The Blacksmith>
UPDATE `creature_template` SET `HealthModifier` = 1   WHERE `entry` = 16811; -- Sebastian <The Organist>
UPDATE `creature_template` SET `HealthModifier` = 1   WHERE `entry` = 16813; -- Wravien <The Mage>
UPDATE `creature_template` SET `HealthModifier` = 1   WHERE `entry` = 17518; -- Ythyar


/* GRUUL'S LAIR BOSSES AND BOSS ADDS */

UPDATE `creature_template` SET `HealthModifier` = 50  WHERE `entry` = 18836; -- Blindeye the Seer
UPDATE `creature_template` SET `HealthModifier` = 450 WHERE `entry` = 19044; -- Gruul the Dragonkiller
UPDATE `creature_template` SET `HealthModifier` = 100 WHERE `entry` = 18831; -- High King Maulgar
UPDATE `creature_template` SET `HealthModifier` = 50  WHERE `entry` = 18835; -- Kiggler the Crazed
UPDATE `creature_template` SET `HealthModifier` = 50  WHERE `entry` = 18832; -- Krosh Firehand
UPDATE `creature_template` SET `HealthModifier` = 50  WHERE `entry` = 18834; -- Olm the Summoner


/* GRUUL'S LAIR TRASH */

UPDATE `creature_template` SET `HealthModifier` = 40  WHERE `entry` = 21350; -- Gronn-Priest
UPDATE `creature_template` SET `HealthModifier` = 40  WHERE `entry` = 19389; -- Lair Brute


/* MAGTHERIDON'S LAIR BOSS AND BOSS ADDS */

UPDATE `creature_template` SET `HealthModifier` = 300 WHERE `entry` = 17454; -- Burning Abyssal
UPDATE `creature_template` SET `HealthModifier` = 40  WHERE `entry` = 17256; -- Hellfire Channeler
UPDATE `creature_template` SET `HealthModifier` = 635 WHERE `entry` = 17257; -- Magtheridon


/* MAGTHERIDON'S LAIR TRASH */

UPDATE `creature_template` SET `HealthModifier` = 32  WHERE `entry` = 18829; -- Hellfire Warder


/* SERPENTSHRINE CAVERN BOSSES AND BOSS ADDS */

UPDATE `creature_template` SET `HealthModifier` = 5   WHERE `entry` = 21865; -- Coilfang Ambusher
UPDATE `creature_template` SET `HealthModifier` = 35  WHERE `entry` = 21221; -- Coilfang Beast Tamer
UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 22055; -- Coilfang Elite
UPDATE `creature_template` SET `HealthModifier` = 10  WHERE `entry` = 21873; -- Coilfang Guardian
UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 22056; -- Coilfang Strider
UPDATE `creature_template` SET `HealthModifier` = 1   WHERE `entry` = 21958; -- Enchanted Elemental
UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 22119; -- Fathom Lurker
UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 22120; -- Fathom Sporebat
UPDATE `creature_template` SET `HealthModifier` = 150 WHERE `entry` = 21964; -- Fathom-Guard Caribdis
UPDATE `creature_template` SET `HealthModifier` = 150 WHERE `entry` = 21966; -- Fathom-Guard Sharkkis
UPDATE `creature_template` SET `HealthModifier` = 150 WHERE `entry` = 21965; -- Fathom-Guard Tidalvess
UPDATE `creature_template` SET `HealthModifier` = 300 WHERE `entry` = 21214; -- Fathom-Lord Karathress
UPDATE `creature_template` SET `HealthModifier` = 20  WHERE `entry` = 21806; -- Greyheart Spellbinder
UPDATE `creature_template` SET `HealthModifier` = 1.4875 WHERE `entry` = 21857; -- Inner Demon
UPDATE `creature_template` SET `HealthModifier` = 800 WHERE `entry` = 21212; -- Lady Vashj <Coilfang Matron>
UPDATE `creature_template` SET `HealthModifier` = 500 WHERE `entry` = 21215; -- Leotheras the Blind
UPDATE `creature_template` SET `HealthModifier` = 750 WHERE `entry` = 21213; -- Morogrim Tidewalker
UPDATE `creature_template` SET `HealthModifier` = 6   WHERE `entry` = 22035; -- Pure Spawn of Hydross
UPDATE `creature_template` SET `HealthModifier` = 1.5 WHERE `entry` = 21260; -- Purified Water Elemental
UPDATE `creature_template` SET `HealthModifier` = 500 WHERE `entry` = 21875; -- Shadow of Leotheras
UPDATE `creature_template` SET `HealthModifier` = 1   WHERE `entry` = 22091; -- Spitfire Totem
UPDATE `creature_template` SET `HealthModifier` = 1   WHERE `entry` = 22009; -- Tainted Elemental
UPDATE `creature_template` SET `HealthModifier` = 6   WHERE `entry` = 22036; -- Tainted Spawn of Hydross
UPDATE `creature_template` SET `HealthModifier` = 1.5 WHERE `entry` = 21253; -- Tainted Water Elemental
UPDATE `creature_template` SET `HealthModifier` = 500 WHERE `entry` = 21217; -- The Lurker Below
UPDATE `creature_template` SET `HealthModifier` = 2.5 WHERE `entry` = 21920; -- Tidewalker Lurker
UPDATE `creature_template` SET `HealthModifier` = 1   WHERE `entry` = 22140; -- Toxic Sporebat


/* SERPENTSHRINE CAVERN TRASH */

UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 21299; -- Coilfang Fathom-Witch
UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 21339; -- Coilfang Hate Screamer
UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 21220; -- Coilfang Priestess
UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 21298; -- Coilfang Serpentguard
UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 21301; -- Coilfang Shatterer
UPDATE `creature_template` SET `HealthModifier` = 20  WHERE `entry` = 22347; -- Colossus Lurker
UPDATE `creature_template` SET `HealthModifier` = 4   WHERE `entry` = 22352; -- Colossus Rager
UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 21230; -- Greyheart Nether-Mage
UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 21231; -- Greyheart Shield-Bearer
UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 21232; -- Greyheart Skulker
UPDATE `creature_template` SET `HealthModifier` = 2   WHERE `entry` = 21263; -- Greyheart Technician
UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 21229; -- Greyheart Tidecaller
UPDATE `creature_template` SET `HealthModifier` = 6   WHERE `entry` = 22250; -- Rancid Mushroom
UPDATE `creature_template` SET `HealthModifier` = 15  WHERE `entry` = 21863; -- Serpentshrine Lurker
UPDATE `creature_template` SET `HealthModifier` = 15  WHERE `entry` = 21246; -- Serpentshrine Sporebat
UPDATE `creature_template` SET `HealthModifier` = 15  WHERE `entry` = 22238; -- Serpentshrine Tidecaller
UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 21224; -- Tidewalker Depth Seer
UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 21227; -- Tidewalker Harpooner
UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 21228; -- Tidewalker Hydromancer
UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 21226; -- Tidewalker Shaman
UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 21225; -- Tidewalker Warrior
UPDATE `creature_template` SET `HealthModifier` = 75  WHERE `entry` = 21251; -- Underbog Colossus
UPDATE `creature_template` SET `HealthModifier` = 35  WHERE `entry` = 21218; -- Vash'jir Honor Guard


/* TEMPEST KEEP BOSSES AND BOSS ADDS */

UPDATE `creature_template` SET `HealthModifier` = 400  WHERE `entry` = 19514; -- Al'ar <Phoenix God>
UPDATE `creature_template` SET `HealthModifier` = 36   WHERE `entry` = 21270; -- Cosmic Infuser
UPDATE `creature_template` SET `HealthModifier` = 31.5 WHERE `entry` = 21269; -- Devastation
UPDATE `creature_template` SET `HealthModifier` = 10   WHERE `entry` = 19551; -- Ember of Al'ar
UPDATE `creature_template` SET `HealthModifier` = 36   WHERE `entry` = 20062; -- Grand Astromancer Capernian <Advisor to Kael'thas>
UPDATE `creature_template` SET `HealthModifier` = 500  WHERE `entry` = 18805; -- High Astromancer Solarian
UPDATE `creature_template` SET `HealthModifier` = 27   WHERE `entry` = 21271; -- Infinity Blades
UPDATE `creature_template` SET `HealthModifier` = 600  WHERE `entry` = 19622; -- Kael'thas Sunstrider <Lord of the Blood Elves>
UPDATE `creature_template` SET `HealthModifier` = 36   WHERE `entry` = 20060; -- Lord Sanguinar <The Blood Hammer>
UPDATE `creature_template` SET `HealthModifier` = 36   WHERE `entry` = 20063; -- Master Engineer Telonicus <Advisor to Kael'thas>
UPDATE `creature_template` SET `HealthModifier` = 27   WHERE `entry` = 21268; -- Netherstrand Longbow
UPDATE `creature_template` SET `HealthModifier` = 40.5 WHERE `entry` = 21273; -- Phaseshift Bulwark
UPDATE `creature_template` SET `HealthModifier` = 25   WHERE `entry` = 21362; -- Phoenix
UPDATE `creature_template` SET `HealthModifier` = 10   WHERE `entry` = 21364; -- Phoenix Egg
UPDATE `creature_template` SET `HealthModifier` = 4    WHERE `entry` = 18925; -- Solarium Agent
UPDATE `creature_template` SET `HealthModifier` = 15   WHERE `entry` = 18806; -- Solarium Priest
UPDATE `creature_template` SET `HealthModifier` = 22.5 WHERE `entry` = 21274; -- Staff of Disintegration
UPDATE `creature_template` SET `HealthModifier` = 36   WHERE `entry` = 20064; -- Thaladred the Darkener <Advisor to Kael'thas>
UPDATE `creature_template` SET `HealthModifier` = 750  WHERE `entry` = 19516; -- Void Reaver
UPDATE `creature_template` SET `HealthModifier` = 36   WHERE `entry` = 21272; -- Warp Slicer


/* TEMPEST KEEP TRASH */

UPDATE `creature_template` SET `HealthModifier` = 4   WHERE `entry` = 20043; -- Apprentice Star Scryer
UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 20033; -- Astromancer
UPDATE `creature_template` SET `HealthModifier` = 40  WHERE `entry` = 20046; -- Astromancer Lord
UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 20031; -- Bloodwarder Legionnaire
UPDATE `creature_template` SET `HealthModifier` = 40  WHERE `entry` = 20035; -- Bloodwarder Marshal
UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 20036; -- Bloodwarder Squire
UPDATE `creature_template` SET `HealthModifier` = 40  WHERE `entry` = 20032; -- Bloodwarder Vindicator
UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 20047; -- Crimson Hand Battle Mage
UPDATE `creature_template` SET `HealthModifier` = 40  WHERE `entry` = 20049; -- Crimson Hand Blood Knight
UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 20048; -- Crimson Hand Centurion
UPDATE `creature_template` SET `HealthModifier` = 40  WHERE `entry` = 20050; -- Crimson Hand Inquisitor
UPDATE `creature_template` SET `HealthModifier` = 75  WHERE `entry` = 20040; -- Crystalcore Devastator
UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 20052; -- Crystalcore Mechanic
UPDATE `creature_template` SET `HealthModifier` = 40  WHERE `entry` = 20041; -- Crystalcore Sentinel
UPDATE `creature_template` SET `HealthModifier` = 40  WHERE `entry` = 20045; -- Nether Scryer
UPDATE `creature_template` SET `HealthModifier` = 4   WHERE `entry` = 20044; -- Novice Astromancer
UPDATE `creature_template` SET `HealthModifier` = 75  WHERE `entry` = 20039; -- Phoenix Hawk
UPDATE `creature_template` SET `HealthModifier` = 10  WHERE `entry` = 20038; -- Phoenix-Hawk Hatchling
UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 20034; -- Star Scryer
UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 20037; -- Tempest Falconer
UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 20042; -- Tempest Smith


/* HYJAL SUMMIT BOSSES AND BOSS ADDS */

UPDATE `creature_template` SET `HealthModifier` = 700 WHERE `entry` = 17808; -- Anetheron
UPDATE `creature_template` SET `HealthModifier` = 750 WHERE `entry` = 17968; -- Archimonde
UPDATE `creature_template` SET `HealthModifier` = 700 WHERE `entry` = 17842; -- Azgalor
UPDATE `creature_template` SET `HealthModifier` = 700 WHERE `entry` = 17888; -- Kaz'rogal
UPDATE `creature_template` SET `HealthModifier` = 35  WHERE `entry` = 17864; -- Lesser Doomguard
UPDATE `creature_template` SET `HealthModifier` = 700 WHERE `entry` = 17767; -- Rage Winterchill
UPDATE `creature_template` SET `HealthModifier` = 30  WHERE `entry` = 17818; -- Towering Infernal


/* HYJAL SUMMIT TRASH */

UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 17898; -- Abomination
UPDATE `creature_template` SET `HealthModifier` = 15  WHERE `entry` = 17905; -- Banshee
UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 17897; -- Crypt Fiend
UPDATE `creature_template` SET `HealthModifier` = 15  WHERE `entry` = 17916; -- Fel Stalker
UPDATE `creature_template` SET `HealthModifier` = 45  WHERE `entry` = 17907; -- Frost Wyrm
UPDATE `creature_template` SET `HealthModifier` = 18  WHERE `entry` = 17906; -- Gargoyle
UPDATE `creature_template` SET `HealthModifier` = 18  WHERE `entry` = 17908; -- Giant Infernal
UPDATE `creature_template` SET `HealthModifier` = 20  WHERE `entry` = 17895; -- Ghoul
UPDATE `creature_template` SET `HealthModifier` = 22  WHERE `entry` = 17899; -- Shadowy Necromancer
UPDATE `creature_template` SET `HealthModifier` = 5   WHERE `entry` = 17902; -- Skeleton Invader
UPDATE `creature_template` SET `HealthModifier` = 5   WHERE `entry` = 17903; -- Skeleton Mage


/* BLACK TEMPLE BOSSES AND BOSS ADDS */

UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 23421; -- Ashtongue Channeler
UPDATE `creature_template` SET `HealthModifier` = 12  WHERE `entry` = 23216; -- Ashtongue Defender
UPDATE `creature_template` SET `HealthModifier` = 4   WHERE `entry` = 23523; -- Ashtongue Elementalist
UPDATE `creature_template` SET `HealthModifier` = 4   WHERE `entry` = 23318; -- Ashtongue Rogue
UPDATE `creature_template` SET `HealthModifier` = 4   WHERE `entry` = 23524; -- Ashtongue Spiritbinder
UPDATE `creature_template` SET `HealthModifier` = 2   WHERE `entry` = 23469; -- Enslaved Soul
UPDATE `creature_template` SET `HealthModifier` = 400 WHERE `entry` = 23420; -- Essence of Anger
UPDATE `creature_template` SET `HealthModifier` = 400 WHERE `entry` = 23419; -- Essence of Desire
UPDATE `creature_template` SET `HealthModifier` = 300 WHERE `entry` = 23418; -- Essence of Suffering
UPDATE `creature_template` SET `HealthModifier` = 150 WHERE `entry` = 22997; -- Flame of Azzinoth
UPDATE `creature_template` SET `HealthModifier` = 250 WHERE `entry` = 22949; -- Gathios the Shatterer
UPDATE `creature_template` SET `HealthModifier` = 750 WHERE `entry` = 22948; -- Gurtogg Bloodboil
UPDATE `creature_template` SET `HealthModifier` = 250 WHERE `entry` = 22950; -- High Nethermancer Zerevor
UPDATE `creature_template` SET `HealthModifier` = 500 WHERE `entry` = 22887; -- High Warlord Naj'entus
UPDATE `creature_template` SET `HealthModifier` = 800 WHERE `entry` = 22917; -- Illidan Stormrage <The Betrayer>
UPDATE `creature_template` SET `HealthModifier` = 3   WHERE `entry` = 23226; -- Illidari Elite
UPDATE `creature_template` SET `HealthModifier` = 250 WHERE `entry` = 22951; -- Lady Malande
UPDATE `creature_template` SET `HealthModifier` = 750 WHERE `entry` = 22947; -- Mother Shahraz
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry` = 23498; -- Parasitic Shadowfiend
UPDATE `creature_template` SET `HealthModifier` = 132 WHERE `entry` = 22841; -- Shade of Akama
UPDATE `creature_template` SET `HealthModifier` = 3   WHERE `entry` = 23375; -- Shadow Demon
UPDATE `creature_template` SET `HealthModifier` = 600 WHERE `entry` = 22898; -- Supremus
UPDATE `creature_template` SET `HealthModifier` = 825 WHERE `entry` = 22871; -- Teron Gorefiend
UPDATE `creature_template` SET `HealthModifier` = 250 WHERE `entry` = 22952; -- Veras Darkshadow


/* BLACK TEMPLE TRASH */

UPDATE `creature_template` SET `HealthModifier` = 1   WHERE `entry` = 23398; -- Angered Soul Fragment
UPDATE `creature_template` SET `HealthModifier` = 60  WHERE `entry` = 22878; -- Aqueous Lord
UPDATE `creature_template` SET `HealthModifier` = 9   WHERE `entry` = 22883; -- Aqueous Spawn
UPDATE `creature_template` SET `HealthModifier` = 15  WHERE `entry` = 22881; -- Aqueous Surger
UPDATE `creature_template` SET `HealthModifier` = 30  WHERE `entry` = 22959; -- Ardent Host
UPDATE `creature_template` SET `HealthModifier` = 45  WHERE `entry` = 22844; -- Ashtongue Battlelord
UPDATE `creature_template` SET `HealthModifier` = 7   WHERE `entry` = 23319; -- Ashtongue Broken
UPDATE `creature_template` SET `HealthModifier` = 15  WHERE `entry` = 22849; -- Ashtongue Feral Spirit
UPDATE `creature_template` SET `HealthModifier` = 30  WHERE `entry` = 22845; -- Ashtongue Mystic
UPDATE `creature_template` SET `HealthModifier` = 30  WHERE `entry` = 22847; -- Ashtongue Primalist
UPDATE `creature_template` SET `HealthModifier` = 20  WHERE `entry` = 23215; -- Ashtongue Sorcerer
UPDATE `creature_template` SET `HealthModifier` = 30  WHERE `entry` = 23374; -- Ashtongue Stalker
UPDATE `creature_template` SET `HealthModifier` = 30  WHERE `entry` = 22846; -- Ashtongue Stormcaller
UPDATE `creature_template` SET `HealthModifier` = 90  WHERE `entry` = 23196; -- Bonechewer Behemoth
UPDATE `creature_template` SET `HealthModifier` = 30  WHERE `entry` = 23235; -- Bonechewer Blade Fury
UPDATE `creature_template` SET `HealthModifier` = 30  WHERE `entry` = 23237; -- Bonechewer Blood Prophet
UPDATE `creature_template` SET `HealthModifier` = 55  WHERE `entry` = 23222; -- Bonechewer Brawler
UPDATE `creature_template` SET `HealthModifier` = 55  WHERE `entry` = 23239; -- Bonechewer Combatant
UPDATE `creature_template` SET `HealthModifier` = 30  WHERE `entry` = 23236; -- Bonechewer Shield Disciple
UPDATE `creature_template` SET `HealthModifier` = 4.5 WHERE `entry` = 23223; -- Bonechewer Spectator
UPDATE `creature_template` SET `HealthModifier` = 30  WHERE `entry` = 23028; -- Bonechewer Taskmaster
UPDATE `creature_template` SET `HealthModifier` = 4.5 WHERE `entry` = 22963; -- Bonechewer Worker
UPDATE `creature_template` SET `HealthModifier` = 4.5 WHERE `entry` = 22955; -- Charming Patron
UPDATE `creature_template` SET `HealthModifier` = 40  WHERE `entry` = 22873; -- Coilskar General
UPDATE `creature_template` SET `HealthModifier` = 30  WHERE `entry` = 22874; -- Coilskar Harpooner
UPDATE `creature_template` SET `HealthModifier` = 30  WHERE `entry` = 22875; -- Coilskar Sea-Caller
UPDATE `creature_template` SET `HealthModifier` = 30  WHERE `entry` = 22876; -- Coilskar Soothsayer
UPDATE `creature_template` SET `HealthModifier` = 30  WHERE `entry` = 22877; -- Coilskar Wrangler
UPDATE `creature_template` SET `HealthModifier` = 15  WHERE `entry` = 22885; -- Dragon Turtle <Coilskar Harpooner's Pet>
UPDATE `creature_template` SET `HealthModifier` = 35  WHERE `entry` = 23030; -- Dragonmaw Sky Stalker
UPDATE `creature_template` SET `HealthModifier` = 35  WHERE `entry` = 23330; -- Dragonmaw Wind Reaver
UPDATE `creature_template` SET `HealthModifier` = 35  WHERE `entry` = 22960; -- Dragonmaw Wyrmcaller
UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 22965; -- Enslaved Servant
UPDATE `creature_template` SET `HealthModifier` = 20  WHERE `entry` = 23389; -- Fallen Ally
UPDATE `creature_template` SET `HealthModifier` = 0.5 WHERE `entry` = 22929; -- Greater Shadowfiend
UPDATE `creature_template` SET `HealthModifier` = 35  WHERE `entry` = 23172; -- Hand of Gorefiend
UPDATE `creature_template` SET `HealthModifier` = 30  WHERE `entry` = 23400; -- Illidari Archon
UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 23403; -- Illidari Assassin
UPDATE `creature_template` SET `HealthModifier` = 30  WHERE `entry` = 23402; -- Illidari Battle-mage
UPDATE `creature_template` SET `HealthModifier` = 30  WHERE `entry` = 22869; -- Illidari Boneslicer
UPDATE `creature_template` SET `HealthModifier` = 40  WHERE `entry` = 23397; -- Illidari Blood Lord
UPDATE `creature_template` SET `HealthModifier` = 40  WHERE `entry` = 23337; -- Illidari Centurion
UPDATE `creature_template` SET `HealthModifier` = 30  WHERE `entry` = 22853; -- Illidari Defiler
UPDATE `creature_template` SET `HealthModifier` = 75  WHERE `entry` = 22954; -- Illidari Fearbringer
UPDATE `creature_template` SET `HealthModifier` = 30  WHERE `entry` = 23339; -- Illidari Heartseeker
UPDATE `creature_template` SET `HealthModifier` = 60  WHERE `entry` = 22855; -- Illidari Nightlord
UPDATE `creature_template` SET `HealthModifier` = 8   WHERE `entry` = 23436; -- Image of Dementia
UPDATE `creature_template` SET `HealthModifier` = 75  WHERE `entry` = 22884; -- Leviathan
UPDATE `creature_template` SET `HealthModifier` = 20  WHERE `entry` = 23232; -- Mutant War Hound
UPDATE `creature_template` SET `HealthModifier` = 90  WHERE `entry` = 23394; -- Promenade Sentinel
UPDATE `creature_template` SET `HealthModifier` = 90  WHERE `entry` = 22962; -- Priestess of Delight
UPDATE `creature_template` SET `HealthModifier` = 90  WHERE `entry` = 22957; -- Priestess of Dementia
UPDATE `creature_template` SET `HealthModifier` = 25  WHERE `entry` = 22945; -- Shadowmoon Blood Mage
UPDATE `creature_template` SET `HealthModifier` = 45  WHERE `entry` = 22880; -- Shadowmoon Champion
UPDATE `creature_template` SET `HealthModifier` = 30  WHERE `entry` = 22882; -- Shadowmoon Deathshaper
UPDATE `creature_template` SET `HealthModifier` = 15  WHERE `entry` = 23371; -- Shadowmoon Fallen
UPDATE `creature_template` SET `HealthModifier` = 4.5 WHERE `entry` = 23147; -- Shadowmoon Grunt
UPDATE `creature_template` SET `HealthModifier` = 35  WHERE `entry` = 23018; -- Shadowmoon Houndmaster
UPDATE `creature_template` SET `HealthModifier` = 30  WHERE `entry` = 22879; -- Shadowmoon Reaver
UPDATE `creature_template` SET `HealthModifier` = 20  WHERE `entry` = 23083; -- Shadowmoon Riding Hound
UPDATE `creature_template` SET `HealthModifier` = 5   WHERE `entry` = 23047; -- Shadowmoon Soldier
UPDATE `creature_template` SET `HealthModifier` = 10  WHERE `entry` = 22946; -- Shadowmoon War Hound
UPDATE `creature_template` SET `HealthModifier` = 50  WHERE `entry` = 23049; -- Shadowmoon Weapon Master
UPDATE `creature_template` SET `HealthModifier` = 8.5 WHERE `entry` = 23111; -- Shadowy Construct
UPDATE `creature_template` SET `HealthModifier` = 50  WHERE `entry` = 22956; -- Sister of Pain
UPDATE `creature_template` SET `HealthModifier` = 50  WHERE `entry` = 22964; -- Sister of Pleasure
UPDATE `creature_template` SET `HealthModifier` = 15  WHERE `entry` = 22848; -- Storm Fury
UPDATE `creature_template` SET `HealthModifier` = 12  WHERE `entry` = 23399; -- Suffering Soul Fragment
UPDATE `creature_template` SET `HealthModifier` = 4.5 WHERE `entry` = 22939; -- Temple Concubine
UPDATE `creature_template` SET `HealthModifier` = 0.7 WHERE `entry` = 23109; -- Vengeful Spirit
UPDATE `creature_template` SET `HealthModifier` = 50  WHERE `entry` = 22953; -- Wrathbone Flayer


/* BLACK TEMPLE NPCS */

UPDATE `creature_template` SET `HealthModifier` = 7   WHERE `entry` = 23157; -- Aluyen <Reagents>
UPDATE `creature_template` SET `HealthModifier` = 1   WHERE `entry` = 22996; -- Blade of Azzinoth
UPDATE `creature_template` SET `HealthModifier` = 15  WHERE `entry` = 23197; -- Maiev Shadowsong
UPDATE `creature_template` SET `HealthModifier` = 7   WHERE `entry` = 23159; -- Okuno <Ashtongue Deathsworn Quartermaster>
UPDATE `creature_template` SET `HealthModifier` = 7   WHERE `entry` = 23158; -- Seer Kanai
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry` = 23411; -- Spirit of Olum
UPDATE `creature_template` SET `HealthModifier` = 1.3 WHERE `entry` = 23410; -- Spirit of Udalo


/* ZUL'AMAN BOSSES AND BOSS ADDS */

UPDATE `creature_template` SET `HealthModifier` = 220  WHERE `entry` = 23574; -- Akil'zon <Eagle Avatar>
UPDATE `creature_template` SET `HealthModifier` = 17.5 WHERE `entry` = 24240; -- Alyson Antille
UPDATE `creature_template` SET `HealthModifier` = 1    WHERE `entry` = 23878; -- Amani Bear Spirit
UPDATE `creature_template` SET `HealthModifier` = 1    WHERE `entry` = 23879; -- Amani Dragonhawk Spirit
UPDATE `creature_template` SET `HealthModifier` = 1    WHERE `entry` = 23880; -- Amani Eagle Spirit
UPDATE `creature_template` SET `HealthModifier` = 1    WHERE `entry` = 23877; -- Amani Lynx Spirit
UPDATE `creature_template` SET `HealthModifier` = 1    WHERE `entry` = 23818; -- Amani'shi Hatcher
UPDATE `creature_template` SET `HealthModifier` = 1    WHERE `entry` = 24504; -- Amani'shi Hatcher
UPDATE `creature_template` SET `HealthModifier` = 14   WHERE `entry` = 24246; -- Darkheart
UPDATE `creature_template` SET `HealthModifier` = 14   WHERE `entry` = 24245; -- Fenstalker
UPDATE `creature_template` SET `HealthModifier` = 17.5 WHERE `entry` = 24244; -- Gazakroth
UPDATE `creature_template` SET `HealthModifier` = 80   WHERE `entry` = 23577; -- Halazzi <Lynx Avatar>
UPDATE `creature_template` SET `HealthModifier` = 135  WHERE `entry` = 24239; -- Hex Lord Malacrass
UPDATE `creature_template` SET `HealthModifier` = 135  WHERE `entry` = 23578; -- Jan'alai <Dragonhawk Avatar>
UPDATE `creature_template` SET `HealthModifier` = 14   WHERE `entry` = 24247; -- Koragg
UPDATE `creature_template` SET `HealthModifier` = 14   WHERE `entry` = 24243; -- Lord Raadan
UPDATE `creature_template` SET `HealthModifier` = 180  WHERE `entry` = 23576; -- Nalorakk <Bear Avatar>
UPDATE `creature_template` SET `HealthModifier` = 14   WHERE `entry` = 24242; -- Slither
UPDATE `creature_template` SET `HealthModifier` = 0.5  WHERE `entry` = 24858; -- Soaring Eagle
UPDATE `creature_template` SET `HealthModifier` = 30.5 WHERE `entry` = 24143; -- Spirit of the Lynx
UPDATE `creature_template` SET `HealthModifier` = 225  WHERE `entry` = 23863; -- Zul'jin


/* ZUL'AMAN TRASH */

UPDATE `creature_template` SET `HealthModifier` = 12  WHERE `entry` = 23584; -- Amani Bear
UPDATE `creature_template` SET `HealthModifier` = 6   WHERE `entry` = 24217; -- Amani Bear Mount
UPDATE `creature_template` SET `HealthModifier` = 4   WHERE `entry` = 24047; -- Amani Crocolisk
UPDATE `creature_template` SET `HealthModifier` = 3   WHERE `entry` = 23834; -- Amani Dragonhawk
UPDATE `creature_template` SET `HealthModifier` = 1   WHERE `entry` = 23598; -- Amani Dragonhawk Hatchling
UPDATE `creature_template` SET `HealthModifier` = 1   WHERE `entry` = 24159; -- Amani Eagle
UPDATE `creature_template` SET `HealthModifier` = 8   WHERE `entry` = 24530; -- Amani Elder Lynx
UPDATE `creature_template` SET `HealthModifier` = 8   WHERE `entry` = 24043; -- Amani Lynx
UPDATE `creature_template` SET `HealthModifier` = 3   WHERE `entry` = 24064; -- Amani Lynx Cub
UPDATE `creature_template` SET `HealthModifier` = 12  WHERE `entry` = 23542; -- Amani'shi Axe Thrower
UPDATE `creature_template` SET `HealthModifier` = 12  WHERE `entry` = 24059; -- Amani'shi Beast Tamer
UPDATE `creature_template` SET `HealthModifier` = 20  WHERE `entry` = 24374; -- Amani'shi Berserker
UPDATE `creature_template` SET `HealthModifier` = 12  WHERE `entry` = 23596; -- Amani'shi Flame Caster
UPDATE `creature_template` SET `HealthModifier` = 12  WHERE `entry` = 23597; -- Amani'shi Guardian
UPDATE `creature_template` SET `HealthModifier` = 12  WHERE `entry` = 24065; -- Amani'shi Handler
UPDATE `creature_template` SET `HealthModifier` = 12  WHERE `entry` = 24175; -- Amani'shi Lookout
UPDATE `creature_template` SET `HealthModifier` = 12  WHERE `entry` = 23581; -- Amani'shi Medicine Man
UPDATE `creature_template` SET `HealthModifier` = 10  WHERE `entry` = 24180; -- Amani'shi Protector
UPDATE `creature_template` SET `HealthModifier` = 12  WHERE `entry` = 23587; -- Amani'shi Reinforcement
UPDATE `creature_template` SET `HealthModifier` = 1   WHERE `entry` = 23586; -- Amani'shi Scout
UPDATE `creature_template` SET `HealthModifier` = 20  WHERE `entry` = 24549; -- Amani'shi Tempest
UPDATE `creature_template` SET `HealthModifier` = 15  WHERE `entry` = 23774; -- Amani'shi Trainer
UPDATE `creature_template` SET `HealthModifier` = 12  WHERE `entry` = 23582; -- Amani'shi Tribesman
UPDATE `creature_template` SET `HealthModifier` = 15  WHERE `entry` = 23580; -- Amani'shi Warbringer
UPDATE `creature_template` SET `HealthModifier` = 3.5 WHERE `entry` = 24225; -- Amani'shi Warrior
UPDATE `creature_template` SET `HealthModifier` = 10  WHERE `entry` = 24179; -- Amani'shi Wind Walker
UPDATE `creature_template` SET `HealthModifier` = 4   WHERE `entry` = 24138; -- Tamed Amani Crocolisk


/* ZUL'AMAN NPCS */

UPDATE `creature_template` SET `HealthModifier` = 1.15 WHERE `entry` = 24405; -- Adarrah
UPDATE `creature_template` SET `HealthModifier` = 1.15 WHERE `entry` = 24001; -- Ashli
UPDATE `creature_template` SET `HealthModifier` = 1.15 WHERE `entry` = 24407; -- Darwen
UPDATE `creature_template` SET `HealthModifier` = 1.15 WHERE `entry` = 24403; -- Deez
UPDATE `creature_template` SET `HealthModifier` = 1.15 WHERE `entry` = 24406; -- Fudgerick
UPDATE `creature_template` SET `HealthModifier` = 1.15 WHERE `entry` = 24404; -- Galathryn
UPDATE `creature_template` SET `HealthModifier` = 1.15 WHERE `entry` = 24408; -- Gunter
UPDATE `creature_template` SET `HealthModifier` = 1    WHERE `entry` = 23999; -- Harkor
UPDATE `creature_template` SET `HealthModifier` = 1    WHERE `entry` = 24358; -- Harrison Jones
UPDATE `creature_template` SET `HealthModifier` = 1.15 WHERE `entry` = 24024; -- Kraz
UPDATE `creature_template` SET `HealthModifier` = 1.15 WHERE `entry` = 24409; -- Kyren
UPDATE `creature_template` SET `HealthModifier` = 1.15 WHERE `entry` = 24397; -- Mannuth
UPDATE `creature_template` SET `HealthModifier` = 1    WHERE `entry` = 23790; -- Tanzar
UPDATE `creature_template` SET `HealthModifier` = 1    WHERE `entry` = 23897; -- Zungam


/* SUNWELL PLATEAU BOSSES AND BOSS ADDS */

UPDATE `creature_template` SET `HealthModifier` = 1384 WHERE `entry` = 24882; -- Brutallus
UPDATE `creature_template` SET `HealthModifier` = 1    WHERE `entry` = 25744; -- Dark Fiend
UPDATE `creature_template` SET `HealthModifier` = 270  WHERE `entry` = 25840; -- Entropius
UPDATE `creature_template` SET `HealthModifier` = 1154 WHERE `entry` = 25038; -- Felmyst
UPDATE `creature_template` SET `HealthModifier` = 475  WHERE `entry` = 25166; -- Grand Warlock Alythess
UPDATE `creature_template` SET `HealthModifier` = 35   WHERE `entry` = 25588; -- Hand of the Deceiver
UPDATE `creature_template` SET `HealthModifier` = 475  WHERE `entry` = 24850; -- Kalecgos
UPDATE `creature_template` SET `HealthModifier` = 2200 WHERE `entry` = 25315; -- Kil'jaeden <The Deceiver>
UPDATE `creature_template` SET `HealthModifier` = 475  WHERE `entry` = 25165; -- Lady Sacrolash
UPDATE `creature_template` SET `HealthModifier` = 360  WHERE `entry` = 25741; -- M'uru
UPDATE `creature_template` SET `HealthModifier` = 475  WHERE `entry` = 24892; -- Sathrovarr the Corruptor
UPDATE `creature_template` SET `HealthModifier` = 19   WHERE `entry` = 25798; -- Shadowsword Berserker
UPDATE `creature_template` SET `HealthModifier` = 20   WHERE `entry` = 25799;-- Shadowsword Fury Mage
UPDATE `creature_template` SET `HealthModifier` = 2.86 WHERE `entry` = 25502; -- Shield Orb
UPDATE `creature_template` SET `HealthModifier` = 20   WHERE `entry` = 25708; -- Sinister Reflection
UPDATE `creature_template` SET `HealthModifier` = 25   WHERE `entry` = 25772; -- Void Sentinel
UPDATE `creature_template` SET `HealthModifier` = 7.2445 WHERE `entry` = 25824; -- Void Spawn


/* SUNWELL PLATEAU TRASH */

UPDATE `creature_template` SET `HealthModifier` = 68.75 WHERE `entry` = 25593; -- Apocalypse Guard
UPDATE `creature_template` SET `HealthModifier` = 86  WHERE `entry` = 25599; -- Cataclysm Hound
UPDATE `creature_template` SET `HealthModifier` = 76  WHERE `entry` = 25595; -- Chaos Gazer
UPDATE `creature_template` SET `HealthModifier` = 40  WHERE `entry` = 25592; -- Doomfire Destroyer
UPDATE `creature_template` SET `HealthModifier` = 8   WHERE `entry` = 25948; -- Doomfire Shard
UPDATE `creature_template` SET `HealthModifier` = 2   WHERE `entry` = 26101; -- Fire Fiend
UPDATE `creature_template` SET `HealthModifier` = 35  WHERE `entry` = 25597; -- Oblivion Mage
UPDATE `creature_template` SET `HealthModifier` = 35  WHERE `entry` = 25591; -- Painbringer
UPDATE `creature_template` SET `HealthModifier` = 35  WHERE `entry` = 25509; -- Priestess of Torment
UPDATE `creature_template` SET `HealthModifier` = 35  WHERE `entry` = 25484; -- Shadowsword Assassin
UPDATE `creature_template` SET `HealthModifier` = 35  WHERE `entry` = 25837; -- Shadowsword Commander
UPDATE `creature_template` SET `HealthModifier` = 35  WHERE `entry` = 25485; -- Shadowsword Deathbringer
UPDATE `creature_template` SET `HealthModifier` = 100 WHERE `entry` = 25508; -- Shadowsword Guardian
UPDATE `creature_template` SET `HealthModifier` = 35  WHERE `entry` = 25506; -- Shadowsword Lifeshaper
UPDATE `creature_template` SET `HealthModifier` = 35  WHERE `entry` = 25483; -- Shadowsword Manafiend
UPDATE `creature_template` SET `HealthModifier` = 35  WHERE `entry` = 25373; -- Shadowsword Soulbinder
UPDATE `creature_template` SET `HealthModifier` = 35  WHERE `entry` = 25486; -- Shadowsword Vanquisher
UPDATE `creature_template` SET `HealthModifier` = 35  WHERE `entry` = 25367; -- Sunblade Arch Mage
UPDATE `creature_template` SET `HealthModifier` = 35  WHERE `entry` = 25363; -- Sunblade Cabalist
UPDATE `creature_template` SET `HealthModifier` = 35  WHERE `entry` = 25371; -- Sunblade Dawn Priest
UPDATE `creature_template` SET `HealthModifier` = 20  WHERE `entry` = 25867; -- Sunblade Dragonhawk
UPDATE `creature_template` SET `HealthModifier` = 35  WHERE `entry` = 25370; -- Sunblade Dusk Priest
UPDATE `creature_template` SET `HealthModifier` = 3   WHERE `entry` = 25372; -- Sunblade Scout
UPDATE `creature_template` SET `HealthModifier` = 35  WHERE `entry` = 25368; -- Sunblade Slayer
UPDATE `creature_template` SET `HealthModifier` = 35  WHERE `entry` = 25369; -- Sunblade Vindicator
UPDATE `creature_template` SET `HealthModifier` = 5   WHERE `entry` = 25268; -- Unyielding Dead
UPDATE `creature_template` SET `HealthModifier` = 0.26 WHERE `entry` = 25598; -- Volatile Felfire Fiend
UPDATE `creature_template` SET `HealthModifier` = 2   WHERE `entry` = 25851; -- Volatile Fiend


/* SUNWELL PLATEAU NPCS */

UPDATE `creature_template` SET `HealthModifier` = 1   WHERE `entry` = 25639; -- Anchorite Elbadon
UPDATE `creature_template` SET `HealthModifier` = 1   WHERE `entry` = 25638; -- Captain Selana
UPDATE `creature_template` SET `HealthModifier` = 195 WHERE `entry` = 24891; -- Kalecgos
UPDATE `creature_template` SET `HealthModifier` = 425 WHERE `entry` = 25319; -- Kalecgos
UPDATE `creature_template` SET `HealthModifier` = 100 WHERE `entry` = 24895; -- Madrigosa
UPDATE `creature_template` SET `HealthModifier` = 1   WHERE `entry` = 25644; -- Neophyte Narama
UPDATE `creature_template` SET `HealthModifier` = 1   WHERE `entry` = 26289; -- Shattered Sun Riftwaker
UPDATE `creature_template` SET `HealthModifier` = 1.5 WHERE `entry` = 25661; -- Shattered Sun Soldier
UPDATE `creature_template` SET `HealthModifier` = 1.5 WHERE `entry` = 26259; -- Shattered Sun Soldier
UPDATE `creature_template` SET `HealthModifier` = 1   WHERE `entry` = 25632; -- Vindicator Moorba


/* WORLD BOSSES */

UPDATE `creature_template` SET `HealthModifier` = 160 WHERE `entry` = 18728; -- Doom Lord Kazzak
UPDATE `creature_template` SET `HealthModifier` = 300 WHERE `entry` = 17711; -- Doomwalker
