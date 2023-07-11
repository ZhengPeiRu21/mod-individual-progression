# Individual Player Progression

## Azerothcore Module

This module is meant to simulate "progress through expansions and expansion tiers" for individual players. Players must complete each tier in order to access content for the next tier.

Each tier is designed to simulate the experience of being within that tier and expansion, within the limitations of the WotLK client. This means Vanilla content is like Vanilla WoW, and so on.

The goal of the module is to focus on journey of the player. All catch-up mechanisms have been removed. There is no goal to rush to end-game or find a "fresh" server, because each new character is a fresh experience.

Note that this module either requires many players working together on a server for each tier, or adjustments for smaller raid size to allow individual groups to progress. Please see the auto-balance module and some of the built-in config options for some adjustments that improve this process on a less popular server.

Lower-level content added in later expansions that is not "catch-up" content is not removed. This includes Draenei and Blood Elf starting zones, Inscription and Jewelcrafting skills, new quests and hubs added to the Vanilla world in TBC, and so on. I feel this content does not negatively impact the player journey like "catch-up" content.

## Some Included Features
* Power level adjustment and health in Vanilla and TBC content to simulate Vanilla world difficulty
* NPCs and Game Objects aware of individual player progress, visible based on player progression to each player
* Restore of content removed or nerfed or later patch is released, such as original Naxxramas, Onyxia quests, TBC Attunements, and riding skills and quests.

For a complete list of changes, please see [here](https://github.com/ZhengPeiRu21/mod-individual-progression/wiki/List-of-Changes).

Options are provided to allow changes to experience based on preference. Please see config file.

## How to Install
Please see [How to Install](https://github.com/ZhengPeiRu21/mod-individual-progression/wiki/How-to-Install)

## Please Note!
This module uses Player Settings to save individual character progress. *Please ensure that EnablePlayerSettings is set to 1 in worldserver.conf or progress will not be saved!* Also, for item changes to take effect, please ensure *DBC.EnforceItemAttributes is set to 0*! This will allow the module to override item stats with their correct Vanilla stats.

### Optional Data Files
Some changes for Vanilla and TBC content require DBC modification. The .mpq file for the client and .dbc files for server can be found in the "optional" directory. These changes include Vanilla reagents such as Flint and Steel for campfires, Level 60 enchanting using Vanilla and not TBC ingredient, professional leveling adjustments, etc. These is all optional and the module will work without the patch, but these recipes will remain WotLK version.

Please note that if optional files are not used, please avoid run `optional_restore_rogue_poisons.sql`, as it will remove Rogue poisons from vendors due to them now being created through the skill, which requires the optional files.

### Optional Recommended Addon
For a more authentic experience, some player may prefer to have pre-3.2 behavior of item tooltip prices, where it is only display when at a vendor. This is handled by the client, so I have create an addon that will restore this behavior. The addon can be found here: https://github.com/ZhengPeiRu21/hide-vendor-price

## Thank You
Special thanks to all contributors of the following projects which are make this module possible:
* AzerothCore and TrinityCore, along with ancestors Mangos, etc.
* AzerothCore Progression Module for Vanilla content and scripts
* Wrath of the Vanilla Module for more Vanilla world adjustments
* Vmangos for Vanilla game and patch progression data
* SoglaHash for many Naxx 40 scripts and data
* 55Honey for Acore_ZoneDebuff module, used as basis for damage and HP scaling
