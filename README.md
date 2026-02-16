# ~~Individual Player~~ Phase Progression 

https://github.com/ZhengPeiRu21/mod-individual-progression Original Source

## Assumption
You want to experience Vanilla -> TBC -> WOTLK content in a phase-like progression (what blizzard did with the classic releases), where content access is realm-wide and every player is locked to the same progression level.

## Goal
Achieve a controlled progression "feeling" with minimal tweaks. Updates will feel like wow patches.
- ⚠ `IndividualProgression.ProgressionLimit` and `IndividualProgression.StartingProgression` in config are always to be incremented together, e.g. - start at the phase/progresson_level you want and then to introduce a new patch, just increase their values by 1.

## Changes
- **Improve UX for "Progression Level Required" messages in `OnPlayerBeforeTeleport`.**
- **`MAP_BLACKWING_LAIR` now becomes available after Onyxia kill, a.k.a. `PROGRESSION_ONYXIA = 2`** (⚠ Because *progresson_level = 1* is the earliest you can start with this approach (Rag killed and Ony available), the existing logic required Rag kill to unlock BWL and you couldnt start off with a limited phase and still have T2 locked)
