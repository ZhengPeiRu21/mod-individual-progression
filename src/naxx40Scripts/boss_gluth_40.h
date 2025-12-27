#ifndef BOSSGLUTH_40_H_
#define BOSSGLUTH_40_H_

#include "CreatureScript.h"
#include "Player.h"
#include "ScriptedCreature.h"
#include "SpellScript.h"
#include "SpellScriptLoader.h"
#include "naxxramas.h"
#include "boss_gluth.h"
#include "IndividualProgression.h"

namespace Gluth_40 {

enum Spells
{
    SPELL_MORTAL_WOUND                  = 25646,
    SPELL_ENRAGE_10                     = 28371,
    SPELL_ENRAGE_25                     = 54427,
    SPELL_DECIMATE_10                   = 28374,
    SPELL_DECIMATE_25                   = 54426,
    SPELL_DECIMATE_DAMAGE               = 28375,
    SPELL_BERSERK                       = 26662,
    SPELL_INFECTED_WOUND                = 29306,
    SPELL_TERRIFYING_ROAR               = 29685,
    SPELL_CHOW_SEARCHER                 = 28404
};

enum Events
{
    EVENT_MORTAL_WOUND                  = 1,
    EVENT_ENRAGE                        = 2,
    EVENT_DECIMATE                      = 3,
    EVENT_BERSERK                       = 4,
    EVENT_SUMMON_ZOMBIE                 = 5,
    EVENT_CAN_EAT_ZOMBIE                = 6,
    EVENT_TERRIFYING_ROAR               = 7
};

enum Emotes
{
    EMOTE_SPOTS_ONE                     = 0,
    EMOTE_DECIMATE                      = 1,
    EMOTE_ENRAGE                        = 2,
    EMOTE_DEVOURS_ALL                   = 3,
    EMOTE_BERSERK                       = 4
};

const Position zombiePos[3] =
{
    {3267.9f, -3172.1f, 297.42f, 0.94f},
    {3253.2f, -3132.3f, 297.42f, 0},
    {3308.3f, -3185.8f, 297.42f, 1.58f}
};

class boss_gluth_40 : public CreatureScript
{
public:
    boss_gluth_40() : CreatureScript("boss_gluth_40") { }

    CreatureAI* GetAI(Creature* pCreature) const override
    {
        return GetNaxxramasAI<boss_gluth_40AI>(pCreature);
    }

    struct boss_gluth_40AI : public Gluth::boss_gluth::boss_gluthAI
    {
        explicit boss_gluth_40AI(Creature* c) : Gluth::boss_gluth::boss_gluthAI(c) {}

        void JustEngagedWith(Unit* who) override
        {
            BossAI::JustEngagedWith(who);
            me->SetInCombatWithZone();
            events.ScheduleEvent(EVENT_MORTAL_WOUND, 10s);
            events.ScheduleEvent(EVENT_ENRAGE, 10s); // VMangos value
            events.ScheduleEvent(EVENT_DECIMATE, RAID_MODE(110s, 90s, 110s, 90s));
            events.ScheduleEvent(EVENT_BERSERK, 6min);
            events.ScheduleEvent(EVENT_SUMMON_ZOMBIE, 6s); // VMangos value
            events.ScheduleEvent(EVENT_CAN_EAT_ZOMBIE, 3s);  // VMangos value
            events.ScheduleEvent(EVENT_TERRIFYING_ROAR, 20s); // VMangos value
        }

        void UpdateAI(uint32 diff) override
        {
            if (!UpdateVictimWithGaze() && !SelectPlayerInRoom())
                return;

            events.Update(diff);
            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            switch (events.ExecuteEvent())
            {
                case EVENT_BERSERK:
                {
                    me->CastSpell(me, SPELL_BERSERK, true);
                    break;
                }
                case EVENT_ENRAGE:
                {
                    Talk(EMOTE_ENRAGE);
                    int32 bp1 = 99; // Enrage melee haste
                    int32 bp2 = 49; // Enrage damage percent
                    if (me->CastCustomSpell(me, SPELL_ENRAGE_10, &bp1, &bp2, 0, true) == SPELL_CAST_OK)
                        events.Repeat(10s);
                    else
                        events.Repeat(100ms);                   
                    break;
                }
                case EVENT_MORTAL_WOUND:
                {
                    if (Unit* victim = me->GetVictim())
                        me->CastSpell(victim, SPELL_MORTAL_WOUND, false);
                    events.Repeat(10s);
                    break;
                }
                case EVENT_DECIMATE:
                {
                    Talk(EMOTE_DECIMATE);
                    me->CastSpell(me, SPELL_DECIMATE_10, false);

                    // Apply Decimate effect to nearby zombies
                    std::list<Creature*> zombies;
                    me->GetCreatureListWithEntryInGrid(zombies, NPC_ZOMBIE_CHOW_40, 150.0f);
                    for (Creature* zombie : zombies)
                    {
                        if (!zombie || !zombie->IsAlive())
                            continue;

                        uint32 reduceHp = uint32(zombie->GetMaxHealth() * 0.05f);
                        if (zombie->GetHealth() > int32(reduceHp))
                            zombie->SetHealth(int32(reduceHp)); // Reduce HP to ~5%
                        zombie->SetWalk(true);                 // Set to walk
                        zombie->GetMotionMaster()->MoveFollow(me,
                            0.0f,
                            0.0f,
                            MOTION_SLOT_CONTROLLED);          // Move to boss
                        zombie->SetReactState(REACT_PASSIVE); // Set to passive

                        Talk(EMOTE_DEVOURS_ALL);
                    }

                    events.Repeat(105s);
                    break;
                }
                case EVENT_SUMMON_ZOMBIE:
                {
                    // Summon one or more zombies at random positions
                    const int32 count = RAID_MODE(1, 2, 2, 2);
                    for (int32 i = 0; i < count; ++i)
                    {
                        me->SummonCreature(NPC_ZOMBIE_CHOW_40, zombiePos[urand(0, 2)]);
                    }
                    events.Repeat(6s);
                    break;
                }
                case EVENT_CAN_EAT_ZOMBIE:
                {
                    // Search for nearby alive zombie within a radius
                    std::list<Creature*> zombies;
                    me->GetCreatureListWithEntryInGrid(zombies, NPC_ZOMBIE_CHOW_40, 10.0f);
					
                    for (Creature* z : zombies)
                    {
                        if (!z || !z->IsAlive())
                            continue;

                        if (me->GetDistance(z) < 10.0f) // distance used by spell 28404
                        {
                            Talk(EMOTE_SPOTS_ONE);

                            z->SetWalk(true);
                            z->GetMotionMaster()->MoveFollow(me, 0.0f, 0.0f, MOTION_SLOT_CONTROLLED);
                            z->SetReactState(REACT_PASSIVE);

                            int32 damage = int32(z->GetHealth());
                            if (damage > 0)
                                Unit::DealDamage(me, z, damage);

                            // Heal Gluth for 5% of max health
                            uint32 hp = uint32(me->GetMaxHealth() * 0.05f);
                            me->SetHealth(me->GetHealth() + hp);
                            break; // Only eat one zombie
                        }
                    }

                    if (sIndividualProgression->doableNaxx40Bosses)
                        events.Repeat(9s);
					else
                        events.Repeat(3s);
                    break;
                }
                case EVENT_TERRIFYING_ROAR:
                {
                    if (me->CastSpell(me, SPELL_TERRIFYING_ROAR, true) == SPELL_CAST_OK)
                        events.Repeat(20s);
                    else
                        events.Repeat(100ms);
                    break;
                }
                default:
                    break;
            }

            DoMeleeAttackIfReady();
        }
    };
};

class spell_gluth_decimate : public SpellScript
{
    PrepareSpellScript(spell_gluth_decimate);

    bool Validate(SpellInfo const* /*spellInfo*/) override
    {
        return ValidateSpellInfo({ SPELL_DECIMATE_DAMAGE });
    }

    void HandleScriptEffect(SpellEffIndex /*effIndex*/)
    {
        if (Unit* unitTarget = GetHitUnit())
        {
            int32 damage = int32(unitTarget->GetHealth()) - int32(unitTarget->CountPctFromMaxHealth(5));
            if (damage <= 0)
                return;

            if (Creature* cTarget = unitTarget->ToCreature())
            {
                cTarget->SetWalk(true);
                cTarget->GetMotionMaster()->MoveFollow(GetCaster(), 0.0f, 0.0f, MOTION_SLOT_CONTROLLED);
                cTarget->SetReactState(REACT_PASSIVE);
                Unit::DealDamage(GetCaster(), cTarget, damage);
                return;
            }
            GetCaster()->CastCustomSpell(SPELL_DECIMATE_DAMAGE, SPELLVALUE_BASE_POINT0, damage, unitTarget);
        }
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_gluth_decimate::HandleScriptEffect, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
    }
};

}

#endif
