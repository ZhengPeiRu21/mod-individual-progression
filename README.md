# Individual Player Progression

## Azerothcore Module

This module simulates progress through expansions and expansion tiers for individual players.

Each tier is designed to simulate the experience of being within that tier and expansion, within the limitations of the WotLK client. This means Vanilla content is like Vanilla WoW, and so on.

The goal of the module is to focus on the journey of the player. All catch-up mechanics have been removed. There is no goal to rush to end-game or find a "fresh" server, because each new character is a fresh experience.

Note that this module either requires many players working together on a server for each tier, or adjustments for smaller raid size to allow individual groups to progress. Please see the [auto-balance module](https://github.com/azerothcore/mod-autobalance) and some of the built-in config options for some adjustments that improve this process on a lower populated server. This module also works well together with Playerbots and NPCbots.

Lower-level content added in later expansions that is not "catch-up" content has not been removed. This includes Draenei and Blood Elf starting zones, Inscription and Jewelcrafting skills, new quests and hubs added to the Vanilla world in TBC, and so on. I feel this content does not negatively impact the player journey like "catch-up" content. Some of this content can optionally be phased until the appropriate patch in which it was introduced for those who prefer an even more authentic Vanilla world - see the optional SQL files for more details.

## Some Included Features
* Power level and health adjustment in Vanilla and TBC content to simulate Vanilla world difficulty
* NPCs and Game Objects are aware of individual player progress, visible based on player progression to each player
* Restoration of content that was removed, nerfed or released in a later patch, such as original Naxxramas, Onyxia quests, TBC Attunements and riding skills and quests.

For a complete list of changes, please see [here](https://github.com/ZhengPeiRu21/mod-individual-progression/wiki/List-of-Changes).

Options are provided that allow changes to the player experience, based on preference. Please see the config file.

## How to Install
Please see [How to Install](https://github.com/ZhengPeiRu21/mod-individual-progression/wiki/How-to-Install)

## Please Note!
This module uses Player Settings to save individual character progress. *Please ensure that EnablePlayerSettings is set to 1 in worldserver.conf or progress will not be saved!* Also, for item changes to take effect, please ensure *DBC.EnforceItemAttributes is set to 0*! This will allow the module to override item stats with their correct Vanilla stats.

### Optional Data Files
Some changes for Vanilla and TBC content require DBC modification. The .mpq file for the client and .dbc files for the server can be found in the "optional" directory. These changes include requiring Vanilla reagents such as Flint and Steel for campfires, changing Level 60 enchanting to use Vanilla and not TBC reagents, profession leveling adjustments, etc. These files are all optional and the module will work without the patch, but these recipes will remain their WotLK versions.

Please note that if optional files are not used, please avoid running `optional_restore_rogue_poisons.sql`, as it will remove Rogue poisons from vendors due to them now being created through the Poisons skill, which requires the optional files.

### Optional Recommended Addon
For a more authentic experience, some players may prefer to have pre-3.2 behavior of item prices only being displayed in tooltips when at a vendor. 
This is handled by the client, so I have created an addon that will restore this behavior. The addon can be found here: https://github.com/ZhengPeiRu21/hide-vendor-price

## Thank You
Special thanks to all contributors of the following projects who made this module possible:
* AzerothCore and TrinityCore, along with ancestors Mangos, etc.
* AzerothCore Progression Module for Vanilla content and scripts
* AzerothCore War Effort Module
* Wrath of the Vanilla Module for more Vanilla world adjustments
* Vmangos for Vanilla game and patch progression data
* SoglaHash for many Naxx 40 scripts and data
* 55Honey for Acore_ZoneDebuff module, used as basis for damage and HP scaling
