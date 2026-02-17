# ~~Individual Player~~ Phase Progression 

https://github.com/ZhengPeiRu21/mod-individual-progression Original Source

💡**Important** - https://github.com/ZhengPeiRu21/mod-individual-progression/wiki/List-of-Progression-Tiers Description of all progression tiers and their triggers (generally disregarded with this approach, with the exception of the war effort feature - makes the scarab lord quest chain available one phase earlier for players that complete the trigger)

## Assumption
You want to experience Vanilla -> TBC -> WOTLK content in a phase-like progression (what blizzard did with the classic releases), where content access is realm-wide and every player is locked to the same progression level.

## Goal
Achieve a controlled progression "feeling" with minimal tweaks. Updates will feel like wow patches.
- ⚠ `IndividualProgression.ProgressionLimit` and `IndividualProgression.StartingProgression` in config are always to be incremented together, e.g. - start at the phase/progresson_level you want and then to introduce a new patch, just increase their values by 1.

## Changes
- **Improve UX for "Progression Level Required" messages in `OnPlayerBeforeTeleport`.**
- **Changed entry requirement for `MAP_BLACKWING_LAIR` from Rag kill to Onyxia kill, a.k.a. `PROGRESSION_ONYXIA = 2`** (⚠ Because *progresson_level = 1* is the earliest you can start with this approach (Rag killed and Ony available), you couldnt start off with a limited phase and still have T2 locked)
- **`MAP_OUTLAND` now always requires `PROGRESSION_PRE_TBC = 8`** - also the default value for enabling draenei and blood elf races character creations.
- **Increase event trigger range requirement for quest `A Pawn on the Eternal Board` from 20yd to 1000yd** - one of the scarab lord quests
- **Force complete prerequisite for "What tomorrow brings" (scarab lord chain) if Progression Level > `PROGRESSION_PRE_AQ = 4`** - Allows players to start the chain regardless of participating in war effort
