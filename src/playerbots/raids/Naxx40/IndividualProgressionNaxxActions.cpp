#ifdef MOD_PLAYERBOTS

#include "IndividualProgressionNaxxActions.h"
#include "RaidNaxxActions.h"
#include "IndividualProgressionNaxxAi40.h"

#include "LastMovementValue.h"
#include "ObjectGuid.h"
#include "PlayerbotAIConfig.h"
#include "Playerbots.h"
#include "RaidNaxxBossHelper.h"
#include "RaidNaxxStrategy.h"
#include "ScriptedCreature.h"
#include "SharedDefines.h"

bool IPGrobbulusGoBehindAction::Execute(Event event)
{
    Unit* boss = AI_VALUE(Unit*, "boss target");
    if (!boss 
        || (boss->GetEntry() != 15931 // Default Azerothcore Grobbulus
            && boss->GetEntry() != 351003)) // mod-individual-progression Grobbulus
    {
        return false;
    }
    // Position* pos = boss->GetPosition();
    float orientation = boss->GetOrientation() + M_PI + delta_angle;
    float x = boss->GetPositionX();
    float y = boss->GetPositionY();
    float z = boss->GetPositionZ();
    float rx = x + cos(orientation) * distance;
    float ry = y + sin(orientation) * distance;
    return MoveTo(bot->GetMapId(), rx, ry, z, false, false, false, false, MovementPriority::MOVEMENT_COMBAT);
}

uint32 IPGrobbulusRotateAction::GetCurrWaypoint()
{
    Unit* boss = AI_VALUE(Unit*, "boss target");
    if (!boss 
        || (boss->GetEntry() != 15931  // Default AzerothCore Grobbulus
            && boss->GetEntry() != 351003)) // mod-individual-progression Grobbulus
    {
        return false;
    }
    auto* ai = boss->GetAI();
    if (!ai)
    {
        return false;
    }
    EventMap* eventMap = nullptr;
    const char* typeName = typeid(*ai).name();
    if (std::string(typeName).find("boss_grobbulus_40") != std::string::npos)
    {
        auto* boss_ai = reinterpret_cast<BossAiGrobbulus40*>(ai);
        if (!boss_ai->events.Empty())
            eventMap = &boss_ai->events;
    }
    else
    {
        auto* boss_ai = dynamic_cast<Grobbulus::boss_grobbulus::boss_grobbulusAI*>(ai);
        if (!boss_ai || boss_ai->events.Empty())
        {
            return false;
        }
        eventMap = &boss_ai->events;
    }
    if (!eventMap || eventMap->Empty())
    {
        return false;
    }
    if (eventMap->GetTimer() > 1000000)
    {
        return false;
    }
    const uint32 event_time = eventMap->GetNextEventTime(2); // EVENT_DECEPIT_FEVER
    return (event_time / 15000) % intervals;
}


bool IPHeiganDanceAction::CalculateSafe()
{
    Unit* boss = AI_VALUE2(Unit*, "find target", "heigan the unclean");
    if (!boss || boss->isDead())
    {
        return false;
    }
    auto* ai = boss->GetAI();
    if (!ai)
    {
        return false;
    }
    EventMap* eventMap = nullptr;
    uint32 curr_phase = 0;
    const char* typeName = typeid(*ai).name();
    if (std::string(typeName).find("boss_heigan_40") != std::string::npos)
    {
        auto* boss_ai = reinterpret_cast<BossAiHeigan40*>(ai);
        if (boss_ai)
        {
            if (!boss_ai->events.Empty())
                eventMap = &boss_ai->events;
            if (boss_ai->currentPhase)
                curr_phase = boss_ai->currentPhase;
        }
        else 
        {
            return false;
        }
    }
    else
    {
        auto* boss_ai = dynamic_cast<Heigan::boss_heigan::boss_heiganAI*>(ai);
        if (!boss_ai || boss_ai->events.Empty())
        {
            return false;
        }
        eventMap = &boss_ai->events;
        curr_phase = boss_ai->currentPhase;
    }
    if (!eventMap || eventMap->Empty())
    {
        return false;
    }
    uint32 curr_timer = eventMap->GetTimer();
    if (curr_timer > 1000000)
    {
        return false;
    }
    uint32 curr_erupt = eventMap->GetNextEventTime(3); // EVENT_ERUPT_SECTION
    uint32 curr_dance = eventMap->GetNextEventTime(4); // EVENT_SWITCH_PHASE
    if ((curr_phase == 0 && curr_dance - curr_timer >= 85000) || (curr_phase == 1 && curr_dance - curr_timer >= 40000))
    {
        ResetSafe();
    }
    else if (curr_erupt != prev_erupt)
    {
        NextSafe();
    }
    prev_phase = curr_phase;
    prev_erupt = curr_erupt;
    return true;
}

#endif
