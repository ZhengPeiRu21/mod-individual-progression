#ifdef MOD_PLAYERBOTS
#include "IndividualProgressionNaxxTriggers.h"

#include "EventMap.h"
#include "Playerbots.h"
#include "ScriptedCreature.h"
#include "Trigger.h"


template <class T>
bool BossEventTrigger<T>::IsActive()
{
    Unit* boss = AI_VALUE(Unit*, "boss target");
    if (!boss 
        || (boss->GetEntry() != boss_entry // Default Azerothcore from BossEventTrigger instanciation
            && (boss_entry_secondary == 0 || boss->GetEntry() != boss_entry_secondary))) // If an other boss version exists from an external module
    {
        return false;
    }
    T* ai = dynamic_cast<T*>(boss->GetAI());
    if(!ai)
    {
        return false;
    }
    EventMap* eventMap = &ai->events;
    if (!eventMap)
    {
        return false;
    }
    const uint32 event_time = eventMap->GetNextEventTime(event_id);
    if (event_time != last_event_time)
    {
        last_event_time = event_time;
        return true;
    }
    return false;
}

bool IPGrobbulusCloudTrigger::IsActive()
{
    Unit* boss = AI_VALUE(Unit*, "boss target");
    if (!boss 
        || (boss->GetEntry() != boss_entry // Default Azerothcore Grobbulus (15931)
            && boss->GetEntry() != boss_entry_secondary)) // mod-individual-progression Grobbulus (351003)
    {
        return false;
    }
    if (!botAI->IsMainTank(bot))
    {
        return false;
    }
    // bot->Yell("has aggro on " + boss->GetName() + " : " + to_string(AI_VALUE2(bool, "has aggro", "boss target")),
    // LANG_UNIVERSAL);
    return AI_VALUE2(bool, "has aggro", "boss target");
}

bool IPHeiganMeleeTrigger::IsActive()
{
    Unit* heigan = AI_VALUE2(Unit*, "find target", "heigan the unclean");
    if (!heigan || heigan->isDead())
    {
        return false;
    }
    return !botAI->IsRanged(bot);
}

bool IPHeiganRangedTrigger::IsActive()
{
    Unit* heigan = AI_VALUE2(Unit*, "find target", "heigan the unclean");
    if (!heigan || heigan->isDead())
    {
        return false;
    }
    return botAI->IsRanged(bot);
}

bool IPRazuviousTankTrigger::IsActive()
{
    Difficulty diff = bot->GetRaidDifficulty();
    if (diff == RAID_DIFFICULTY_10MAN_NORMAL)
    {
        return helper.UpdateBossAI() && botAI->IsTank(bot);
    }
    return helper.UpdateBossAI() && bot->getClass() == CLASS_PRIEST;
}

bool IPRazuviousNontankTrigger::IsActive()
{
    Difficulty diff = bot->GetRaidDifficulty();
    if (diff == RAID_DIFFICULTY_10MAN_NORMAL)
    {
        return helper.UpdateBossAI() && !(botAI->IsTank(bot));
    }
    return helper.UpdateBossAI() && !(bot->getClass() == CLASS_PRIEST);
}


bool IPGluthTrigger::IsActive() { return helper.UpdateBossAI(); }

bool IPGluthMainTankMortalWoundTrigger::IsActive()
{
    if (!helper.UpdateBossAI())
    {
        return false;
    }
    if (!botAI->IsAssistTankOfIndex(bot, 0))
    {
        return false;
    }
    Unit* mt = AI_VALUE(Unit*, "main tank");
    if (!mt)
    {
        return false;
    }
    Aura* aura = botAI->GetAura("mortal wound", mt, false, true);
    if (!aura || aura->GetStackAmount() < 5)
    {
        return false;
    }
    return true;
}

bool IPKelthuzadTrigger::IsActive() { return helper.UpdateBossAI(); }

bool IPLoathebTrigger::IsActive() { return helper.UpdateBossAI(); }

bool IPThaddiusPhasePetTrigger::IsActive()
{
    if (!helper.UpdateBossAI())
    {
        return false;
    }
    return helper.IsPhasePet();
}

bool IPThaddiusPhaseTransitionTrigger::IsActive()
{
    if (!helper.UpdateBossAI())
    {
        return false;
    }
    return helper.IsPhaseTransition();
}

bool IPThaddiusPhaseThaddiusTrigger::IsActive()
{
    if (!helper.UpdateBossAI())
    {
        return false;
    }
    return helper.IsPhaseThaddius();
}

template bool BossEventTrigger<Grobbulus::boss_grobbulus::boss_grobbulusAI>::IsActive();

#endif
