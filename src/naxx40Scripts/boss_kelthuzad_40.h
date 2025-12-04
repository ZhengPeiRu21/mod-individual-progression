#ifndef BOSS_KELTHUZAD_40_H_
#define BOSS_KELTHUZAD_40_H_

#include "CreatureScript.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellScript.h"
#include "naxxramas.h"
#include "../../../../src/server/scripts/Northrend/Naxxramas/boss_kelthuzad.h"

namespace Kelthuzad_40 {

enum Spells
{
    // Kel'Thzuad
    SPELL_MANA_DETONATION_DAMAGE            = 27820,
    SPELL_FROST_BLAST                       = 27808,

    // Minions
    SPELL_FRENZY                            = 28468,
    SPELL_MORTAL_WOUND                      = 28467,
    SPELL_BLOOD_TAP                         = 28470
};

enum Misc
{
    ACTION_CALL_HELP_ON                     = 1,
    ACTION_CALL_HELP_OFF                    = 2,
    ACTION_SECOND_PHASE                     = 3,
    ACTION_GUARDIANS_OFF                    = 4
};

enum Event
{
    // Minions
    EVENT_MINION_FRENZY                     = 17,
    EVENT_MINION_MORTAL_WOUND               = 18,
    EVENT_MINION_BLOOD_TAP                  = 19
};

const Position SummonGroups[12] =
{
    // Portals
    {3783.272705f, -5062.697266f, 143.711203f, 3.617599f}, // LEFT_FAR
    {3730.291260f, -5027.239258f, 143.956909f, 4.461900f}, // LEFT_MIDDLE
    {3683.868652f, -5057.281250f, 143.183884f, 5.237086f}, // LEFT_NEAR
    {3759.355225f, -5174.128418f, 143.802383f, 2.170104f}, // RIGHT_FAR
    {3700.724365f, -5185.123047f, 143.928024f, 1.309310f}, // RIGHT_MIDDLE
    {3665.121094f, -5138.679199f, 143.183212f, 0.604023f}, // RIGHT_NEAR

    // Middle
    {3769.34f, -5071.80f, 143.2082f, 3.658f},
    {3729.78f, -5043.56f, 143.3867f, 4.475f},
    {3682.75f, -5055.26f, 143.1848f, 5.295f},
    {3752.58f, -5161.82f, 143.2944f, 2.126f},
    {3702.83f, -5171.70f, 143.4356f, 1.305f},
    {3665.30f, -5141.55f, 143.1846f, 0.566f}
};

const Position SpawnPool[7] =
{
    // Portals
    {3783.272705f, -5062.697266f, 143.711203f, 3.617599f}, // LEFT_FAR
    {3730.291260f, -5027.239258f, 143.956909f, 4.461900f}, // LEFT_MIDDLE
    {3683.868652f, -5057.281250f, 143.183884f, 5.237086f}, // LEFT_NEAR
    {3759.355225f, -5174.128418f, 143.802383f, 2.170104f}, // RIGHT_FAR
    {3700.724365f, -5185.123047f, 143.928024f, 1.309310f}, // RIGHT_MIDDLE
    {3665.121094f, -5138.679199f, 143.183212f, 0.604023f}, // RIGHT_NEAR
    {3651.729980f, -5092.620117f, 143.380005f, 6.050000f} // GATE
};

class boss_kelthuzad_40 : public CreatureScript
{
public:
    boss_kelthuzad_40() : CreatureScript("boss_kelthuzad_40") { }

    CreatureAI* GetAI(Creature* pCreature) const override
    {
        return GetNaxxramasAI<boss_kelthuzad_40AI>(pCreature);
    }

    struct boss_kelthuzad_40AI : public Kelthuzad::boss_kelthuzad::boss_kelthuzadAI
    {
        explicit boss_kelthuzad_40AI(Creature* c) : Kelthuzad::boss_kelthuzad::boss_kelthuzadAI(c) {}
    };
};

class boss_kelthuzad_minion_40 : public CreatureScript
{
public:
    boss_kelthuzad_minion_40() : CreatureScript("boss_kelthuzad_minion_40") { }

    CreatureAI* GetAI(Creature* pCreature) const override
    {
        return GetNaxxramasAI<boss_kelthuzad_minion_40AI>(pCreature);
    }

    struct boss_kelthuzad_minion_40AI : public ScriptedAI
    {
        explicit boss_kelthuzad_minion_40AI(Creature* c) : ScriptedAI(c) { }

        EventMap events;
        bool callHelp{};

        void Reset() override
        {
            me->SetNoCallAssistance(true);
            callHelp = true;
            events.Reset();
        }

        void DoAction(int32 param) override
        {
            if (param == ACTION_CALL_HELP_ON)
            {
                callHelp = true;
            }
            else if (param == ACTION_CALL_HELP_OFF)
            {
                callHelp = false;
            }
            else if (param == ACTION_SECOND_PHASE)
            {
                if (!me->IsInCombat())
                {
                    me->DespawnOrUnsummon(500ms);
                }
            }
            if (param == ACTION_GUARDIANS_OFF)
            {
                me->SetUnitFlag(UNIT_FLAG_NON_ATTACKABLE);
                me->SetUnitFlag(UNIT_FLAG_NOT_SELECTABLE);
                me->RemoveAllAuras();
                EnterEvadeMode();
                me->SetPosition(me->GetHomePosition());
            }
        }

        void MoveInLineOfSight(Unit* who) override
        {
            if (!who->IsPlayer() && !who->IsPet())
                return;

            ScriptedAI::MoveInLineOfSight(who);
        }

        void JustDied(Unit* /*killer*/) override
        {
            if (me->GetEntry() == NPC_UNSTOPPABLE_ABOMINATION)
                me->GetInstanceScript()->SetData(DATA_ABOMINATION_KILLED, 0);
        }

        void AttackStart(Unit* who) override
        {
            ScriptedAI::AttackStart(who);
            if (callHelp)
            {
                std::list<Creature*> targets;
                me->GetCreaturesWithEntryInRange(targets, 15.0f, me->GetEntry());
                for (std::list<Creature*>::const_iterator itr = targets.begin(); itr != targets.end(); ++itr)
                {
                    if ((*itr)->GetGUID() != me->GetGUID())
                    {
                        (*itr)->ToCreature()->AI()->DoAction(ACTION_CALL_HELP_OFF);
                        (*itr)->ToCreature()->AI()->AttackStart(who);
                    }
                }
            }

            if (me->GetEntry() != NPC_UNSTOPPABLE_ABOMINATION && me->GetEntry() != NPC_GUARDIAN_OF_ICECROWN)
            {
                me->AddThreat(who, 1000000.0f);
            }
        }

        void JustEngagedWith(Unit*  /*who*/) override
        {
            me->SetInCombatWithZone();
            if (me->GetEntry() == NPC_UNSTOPPABLE_ABOMINATION)
            {
                events.ScheduleEvent(EVENT_MINION_FRENZY, 1s);
                events.ScheduleEvent(EVENT_MINION_MORTAL_WOUND, 5s);
            }
            else if (me->GetEntry() == NPC_GUARDIAN_OF_ICECROWN)
            {
                events.ScheduleEvent(EVENT_MINION_BLOOD_TAP, 15s);
            }
        }

        void KilledUnit(Unit* who) override
        {
            if (who->IsPlayer())
                me->GetInstanceScript()->StorePersistentData(PERSISTENT_DATA_IMMORTAL_FAIL, 1);
        }

        void JustReachedHome() override
        {
            if (me->GetEntry() == NPC_GUARDIAN_OF_ICECROWN)
            {
                me->DespawnOrUnsummon();
            }
        }

        void UpdateAI(uint32 diff) override
        {
            if (!UpdateVictim())
                return;

            events.Update(diff);
            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            switch (events.ExecuteEvent())
            {
                case EVENT_MINION_MORTAL_WOUND:
                    me->CastSpell(me->GetVictim(), SPELL_MORTAL_WOUND, false);
                    events.Repeat(15s);
                    break;
                case EVENT_MINION_FRENZY:
                    if (me->HealthBelowPct(35))
                    {
                        me->CastSpell(me, SPELL_FRENZY, true);
                        break;
                    }
                    events.Repeat(1s);
                    break;
                case EVENT_MINION_BLOOD_TAP:
                    me->CastSpell(me->GetVictim(), SPELL_BLOOD_TAP, false);
                    events.Repeat(15s);
                    break;
            }
            DoMeleeAttackIfReady();
        }
    };
};

class spell_kelthuzad_frost_blast : public SpellScript
{
    PrepareSpellScript(spell_kelthuzad_frost_blast);

    bool Validate(SpellInfo const* /*spell*/) override
    {
        return ValidateSpellInfo({ SPELL_FROST_BLAST });
    }

    void FilterTargets(std::list<WorldObject*>& targets)
    {
        Unit* caster = GetCaster();
        if (!caster || !caster->ToCreature())
            return;

        std::list<WorldObject*> tmplist;
        for (auto& target : targets)
        {
            if (!target->ToUnit()->HasAura(SPELL_FROST_BLAST))
            {
                tmplist.push_back(target);
            }
        }
        targets.clear();
        for (auto& itr : tmplist)
        {
            targets.push_back(itr);
        }
    }

    void Register() override
    {
        OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_kelthuzad_frost_blast::FilterTargets, EFFECT_ALL, TARGET_UNIT_DEST_AREA_ENEMY);
    }
};

class spell_kelthuzad_detonate_mana_aura : public AuraScript
{
    PrepareAuraScript(spell_kelthuzad_detonate_mana_aura);

    bool Validate(SpellInfo const* /*spell*/) override
    {
        return ValidateSpellInfo({ SPELL_MANA_DETONATION_DAMAGE });
    }

    void HandleScript(AuraEffect const* aurEff)
    {
        PreventDefaultAction();
        Unit* target = GetTarget();
        if (auto mana = int32(target->GetMaxPower(POWER_MANA) / 10))
        {
            mana = target->ModifyPower(POWER_MANA, -mana);
            target->CastCustomSpell(SPELL_MANA_DETONATION_DAMAGE, SPELLVALUE_BASE_POINT0, -mana * 10, target, true, nullptr, aurEff);
        }
    }

    void Register() override
    {
        OnEffectPeriodic += AuraEffectPeriodicFn(spell_kelthuzad_detonate_mana_aura::HandleScript, EFFECT_0, SPELL_AURA_PERIODIC_TRIGGER_SPELL);
    }
};

}

#endif
