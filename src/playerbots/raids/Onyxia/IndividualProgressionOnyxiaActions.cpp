#ifdef MOD_PLAYERBOTS
#include "Playerbots.h"
#include "IndividualProgressionOnyxiaActions.h"

bool IPOnyxiaKillWhelpsAction::Execute(Event event)
{
    Unit* currentTarget = AI_VALUE(Unit*, "current target");
    // If already attacking a whelp, don't swap targets
    if (currentTarget
        && (currentTarget->GetEntry() == 11262 // Default AzerothCore Onyxian Whelp
            || currentTarget->GetEntry() == 301001)) // mod-individual-progression Onyxian Whelp
    {
        return false;
    }
    GuidVector targets = AI_VALUE(GuidVector, "possible targets");
    for (ObjectGuid guid : targets)
    {
        Creature* unit = botAI->GetCreature(guid);
        if (!unit || !unit->IsAlive() || !unit->IsInWorld())
            continue;

        if (unit->GetEntry() == 11262 // Default AzerothCore Onyxian Whelp
            || unit->GetEntry() == 301001) // mod-individual-progression Onyxian Whelp
        {
            // bot->Yell("Attacking Whelps!", LANG_UNIVERSAL);
            return Attack(unit);
        }
    }
    return false;
}
#endif
