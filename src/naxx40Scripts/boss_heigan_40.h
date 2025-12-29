#ifndef BOSS_HEIGAN_40_H_
#define BOSS_HEIGAN_40_H_

#include "Player.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"
#include "SpellAuraEffects.h"
#include "SpellInfo.h"
#include "SpellScript.h"
#include "SpellScriptLoader.h"
#include "naxxramas.h"
#include "boss_heigan.h"

namespace Heigan_40 {

enum Says
{
    SAY_AGGRO                       = 0,
    SAY_SLAY                        = 1,
    SAY_TAUNT                       = 2,
    EMOTE_DEATH                     = 3,
    EMOTE_DANCE                     = 4,
    EMOTE_DANCE_END                 = 5,
    SAY_DANCE                       = 6
};

enum Spells
{
    // SPELL_DISRUPTION             = 29310,
    SPELL_DECREPIT_FEVER_10         = 29998,
    SPELL_PLAGUE_CLOUD              = 29350,
    SPELL_TELEPORT_SELF             = 30211,

    SPELL_TELEPORT_PLAYERS          = 29273, // updated target in db
    SPELL_SUMMON_PLAYER             = 25104,
};

enum Events
{
    EVENT_DISRUPTION                = 1,
    EVENT_DECEPIT_FEVER             = 2,
    EVENT_ERUPT_SECTION             = 3,
    EVENT_SWITCH_PHASE              = 4,
    EVENT_SAFETY_DANCE              = 5,
    EVENT_PLAGUE_CLOUD              = 6,
    EVENT_TELEPORT_PLAYER           = 7
};

enum Misc
{
    PHASE_SLOW_DANCE                = 0,
    PHASE_FAST_DANCE                = 1
};

const Position EyeStalkPositions[20] =
{
    { 2761.28f, -3765.37f, 275.08f, 1.24f },
    { 2770.17f, -3782.11f, 275.08f, 1.33f },
    { 2798.11f, -3788.94f, 275.08f, 2.35f },
    { 2797.91f, -3776.86f, 275.08f, 2.25f },
    { 2792.06f, -3762.52f, 275.08f, 2.9f, },
    { 2789.87f, -3752.15f, 275.08f, 2.74f },
    { 2804.21f, -3757.96f, 275.08f, 3.9f },
    { 2821.16f, -3759.75f, 275.08f, 4.47f },
    { 2834.64f, -3751.23f, 275.08f, 4.27f },
    { 2843.54f, -3768.08f, 275.08f, 3.06f },
    { 2862.4f,  -3758.3f,  275.08f, 4.8f },
    { 2877.8f,  -3762.46f, 275.08f, 4.8f },
    { 2894.11f, -3757.89f, 275.08f, 4.56f },
    { 2895.25f, -3779.5f,  275.08f, 2.4f },
    { 2881.59f, -3782.22f, 275.08f, 2.79f },
    { 2867.2f,  -3778.21f, 275.08f, 3.01f },
    { 2851.39f, -3776.54f, 275.08f, 2.69f },
    { 2846.16f, -3789.13f, 275.08f, 1.79f },
    { 2830.09f, -3776.49f, 275.08f, 0.94f },
    { 2813.34f, -3780.97f, 275.08f, 1.84f },
};

class boss_heigan_40 : public CreatureScript
{
public:
    boss_heigan_40() : CreatureScript("boss_heigan_40") { }

    CreatureAI* GetAI(Creature* creature) const override
    {
        return GetNaxxramasAI<boss_heigan_40AI>(creature);
    }

    struct boss_heigan_40AI : public Heigan::boss_heigan::boss_heiganAI
    {
        explicit boss_heigan_40AI(Creature* c) : Heigan::boss_heigan::boss_heiganAI(c) {}

        GuidList portedPlayersThisPhase;

        void Reset() override
        {
            BossAI::Reset();
            events.Reset();
            currentPhase = 0;
            currentSection = 3;
            portedPlayersThisPhase.clear();
            KillPlayersInTheTunnel();
            moveRight = true;
        }

        void JustEngagedWith(Unit* who) override
        {
            BossAI::JustEngagedWith(who);
            me->SetInCombatWithZone();
            Talk(SAY_AGGRO);
            StartFightPhase_40(PHASE_SLOW_DANCE);
        }

        void StartFightPhase_40(uint8 phase)
        {
            currentSection = 3;
            currentPhase = phase;
            events.Reset();
            if (phase == PHASE_SLOW_DANCE)
            {
                me->CastStop();
                me->SetReactState(REACT_AGGRESSIVE);
                DoZoneInCombat();
                events.ScheduleEvent(EVENT_DISRUPTION, 12s, 15s);
                events.ScheduleEvent(EVENT_DECEPIT_FEVER, 17s);
                events.ScheduleEvent(EVENT_ERUPT_SECTION, 15s);
                events.ScheduleEvent(EVENT_SWITCH_PHASE, 90s);
                events.ScheduleEvent(EVENT_TELEPORT_PLAYER, 40s);
                portedPlayersThisPhase.clear();
            }
            else // if (phase == PHASE_FAST_DANCE)
            {
                Talk(EMOTE_DANCE);
                Talk(SAY_DANCE);
                me->AttackStop();
                me->StopMoving();
                me->SetReactState(REACT_PASSIVE);
                me->CastSpell(me, SPELL_TELEPORT_SELF, false);
                me->SetFacingTo(2.40f);
                events.ScheduleEvent(EVENT_PLAGUE_CLOUD, 1s);
                events.ScheduleEvent(EVENT_ERUPT_SECTION, 7s);
                events.ScheduleEvent(EVENT_SWITCH_PHASE, 45s);
            }
            events.ScheduleEvent(EVENT_SAFETY_DANCE, 5s);
        }

        void KillPlayersInTheTunnel()
        {
            // hackfix: kill everyone in the tunnel
            Map::PlayerList const& PlayerList = me->GetMap()->GetPlayers();
            for (auto const& itr : PlayerList)
                if (Player* player = itr.GetSource())
                    if (player->IsAlive() && !player->IsGameMaster())
                        if (player->GetPositionY() <= -3735.0f)
                            player->KillSelf();
        }

        void DoEventTeleportPlayer()
        {
            std::list<Unit*> candidates;
            SelectTargetList(candidates, 3, SelectTargetMethod::Random, 0, [&](Unit* target)
            {
                if (!target->IsPlayer()) // never target nonplayers (pets, guardians, etc.)
                    return false;
                if (!target->IsAlive())
                    return false;
                if (me->GetVictim() == target) // never target tank
                    return false;
                // skip players who already have been teleported this phase
                if (std::find(portedPlayersThisPhase.begin(), portedPlayersThisPhase.end(), target->GetGUID()) != portedPlayersThisPhase.end())
                    return false;
                return true;
            });

            if (candidates.empty())
                return;

            for (int i = 0; i < 3 ; i++)
            {
                if (candidates.empty())
                    break;
                auto itr = candidates.begin();
                if (candidates.size() > 1)
                    std::advance(itr, urand(0, candidates.size() - 1));
                Unit *target = *itr;
                candidates.erase(itr);
                portedPlayersThisPhase.push_back(target->GetGUID());
                DoModifyThreatByPercent(target, -99); // prevent heigan chasing and resetting
                target->CastSpell(target, SPELL_TELEPORT_PLAYERS, true);
            }
        }

        void UpdateAI(uint32 diff) override
        {
            if (!IsInRoom(me))
                return;

            if (!UpdateVictim())
                return;

            if (Unit* victim = me->GetVictim())
            {
                if (!me->IsWithinDistInMap(victim, VISIBILITY_DISTANCE_NORMAL))
                    me->CastSpell(victim, SPELL_SUMMON_PLAYER, true);
            }

            events.Update(diff);

            switch (events.ExecuteEvent())
            {
                case EVENT_DISRUPTION:
                    me->CastCustomSpell(SPELL_DISRUPTION, SPELLVALUE_RADIUS_MOD, 2500, me, false); // 25yd
                    events.Repeat(10s);
                    break;
                case EVENT_DECEPIT_FEVER:
                {
                    int32 bp1 = 499;
                    me->CastCustomSpell(me, SPELL_DECREPIT_FEVER_10, 0, &bp1, 0, false, nullptr, nullptr, ObjectGuid::Empty);
                    events.Repeat(22s, 25s);
                    break;
                }
                case EVENT_PLAGUE_CLOUD:
                    me->CastSpell(me, SPELL_PLAGUE_CLOUD, false);
                    break;
                case EVENT_SWITCH_PHASE:
                    if (currentPhase == PHASE_SLOW_DANCE)
                    {
                        StartFightPhase(PHASE_FAST_DANCE);
                    }
                    else
                    {
                        StartFightPhase(PHASE_SLOW_DANCE);
                        Talk(EMOTE_DANCE_END); // avoid play the emote on aggro
                    }
                    break;
                case EVENT_ERUPT_SECTION:
                {
                    instance->SetData(DATA_HEIGAN_ERUPTION, currentSection);
                    if (currentSection == 3)
                        moveRight = false;
                    else if (currentSection == 0)
                        moveRight = true;

                    moveRight ? currentSection++ : currentSection--;

                    if (currentPhase == PHASE_SLOW_DANCE)
                        Talk(SAY_TAUNT);

                    events.Repeat(currentPhase == PHASE_SLOW_DANCE ? 10s : 4s);
                    break;
                }
                break;
                case EVENT_SAFETY_DANCE:
                {
                    Map::PlayerList const& pList = me->GetMap()->GetPlayers();
                    for (auto const& itr : pList)
                    {
                        if (IsInRoom(itr.GetSource()) && !itr.GetSource()->IsAlive())
                        {
                            instance->SetData(DATA_DANCE_FAIL, 0);
                            instance->StorePersistentData(PERSISTENT_DATA_IMMORTAL_FAIL, 1);
                            return;
                        }
                    }
                    events.Repeat(5s);
                    return;
                }
                case EVENT_TELEPORT_PLAYER:
                    DoEventTeleportPlayer();
                    break;
            }
            DoMeleeAttackIfReady();
        }
    };
};

}

#endif
