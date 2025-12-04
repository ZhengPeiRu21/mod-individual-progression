#ifndef BOSSGOTHIK_40_H_
#define BOSSGOTHIK_40_H_

#include "CombatAI.h"
#include "CreatureScript.h"
#include "GridNotifiers.h"
#include "ScriptedCreature.h"
#include "SpellScript.h"
#include "SpellScriptLoader.h"
#include "naxxramas.h"
#include "../../../../src/server/scripts/Northrend/Naxxramas/boss_gothik.h"

namespace Gothik_40 {

enum Yells
{
    SAY_INTRO_1                     = 0,
    SAY_INTRO_2                     = 1,
    SAY_INTRO_3                     = 2,
    SAY_INTRO_4                     = 3,
    SAY_PHASE_TWO                   = 4,
    SAY_DEATH                       = 5,
    SAY_KILL                        = 6,

    EMOTE_PHASE_TWO                 = 7,
    EMOTE_GATE_OPENED               = 8
};

enum Spells
{
    // Gothik
    SPELL_HARVEST_SOUL              = 28679,
    SPELL_SHADOW_BOLT               = 29317,
    // Teleport spells
    SPELL_TELEPORT_DEAD             = 28025,
    SPELL_TELEPORT_LIVE             = 28026,
    //  Visual spells
    SPELL_ANCHOR_1_TRAINEE          = 27892,
    SPELL_ANCHOR_1_DK               = 27928,
    SPELL_ANCHOR_1_RIDER            = 27935,
    SPELL_ANCHOR_2_TRAINEE          = 27893,
    SPELL_ANCHOR_2_DK               = 27929,
    SPELL_ANCHOR_2_RIDER            = 27936,
    SPELL_SKULLS_TRAINEE            = 27915,
    SPELL_SKULLS_DK                 = 27931,
    SPELL_SKULLS_RIDER              = 27937,
    // Living trainee
    SPELL_DEATH_PLAGUE              = 55604,
    // Dead trainee
    SPELL_ARCANE_EXPLOSION          = 27989,
    // Living knight
    SPELL_SHADOW_MARK               = 27825,
    // Dead knight
    SPELL_WHIRLWIND                 = 56408,
    // Living rider
    SPELL_SHADOW_BOLT_VOLLEY        = 27831,
    // Dead rider
    SPELL_DRAIN_LIFE                = 27994,
    SPELL_UNHOLY_FRENZY             = 55648,
    // Horse
    SPELL_STOMP                     = 27993
};

enum Events
{
    // Gothik
    // EVENT_SUMMON_ADDS               = 1,
    // EVENT_HARVEST_SOUL              = 2,
    // EVENT_SHADOW_BOLT               = 3,
    // EVENT_TELEPORT                  = 4,
    // EVENT_CHECK_HEALTH              = 5,
    // EVENT_CHECK_PLAYERS             = 6,

    // Living trainee
    EVENT_DEATH_PLAGUE              = 7,
    // Dead trainee
    EVENT_ARCANE_EXPLOSION          = 8,
    // Living knight
    EVENT_SHADOW_MARK               = 9,
    // Dead knight
    EVENT_WHIRLWIND                 = 10,
    // Living rider
    EVENT_SHADOW_BOLT_VOLLEY        = 11,
    // Dead rider
    EVENT_DRAIN_LIFE                = 12,
    EVENT_UNHOLY_FRENZY             = 13,
    // HORSE
    EVENT_STOMP                     = 14,
    // Intro
    // EVENT_INTRO_2                   = 15,
    // EVENT_INTRO_3                   = 16,
    // EVENT_INTRO_4                   = 17
};

const uint32 gothikWaves[24][2] =
{
    {NPC_LIVING_TRAINEE,    20000},
    {NPC_LIVING_TRAINEE,    20000},
    {NPC_LIVING_TRAINEE,    10000},
    {NPC_LIVING_KNIGHT,     10000},
    {NPC_LIVING_TRAINEE,    15000},
    {NPC_LIVING_KNIGHT,     10000},
    {NPC_LIVING_TRAINEE,    15000},
    {NPC_LIVING_TRAINEE,    0},
    {NPC_LIVING_KNIGHT,     10000},
    {NPC_LIVING_RIDER,      10000},
    {NPC_LIVING_TRAINEE,    5000},
    {NPC_LIVING_KNIGHT,     15000},
    {NPC_LIVING_RIDER,      0},
    {NPC_LIVING_TRAINEE,    10000},
    {NPC_LIVING_KNIGHT,     10000},
    {NPC_LIVING_TRAINEE,    10000},
    {NPC_LIVING_RIDER,      5000},
    {NPC_LIVING_KNIGHT,     5000},
    {NPC_LIVING_TRAINEE,    20000},
    {NPC_LIVING_RIDER,      0},
    {NPC_LIVING_KNIGHT,     0},
    {NPC_LIVING_TRAINEE,    15000},
    {NPC_LIVING_TRAINEE,    29000},
    {0, 0}
};

const Position PosSummonLiving[6] =
{
    {2669.7f, -3428.76f, 268.56f, 1.6f},
    {2692.1f, -3428.76f, 268.56f, 1.6f},
    {2714.4f, -3428.76f, 268.56f, 1.6f},
    {2669.7f, -3431.67f, 268.56f, 1.6f},
    {2692.1f, -3431.67f, 268.56f, 1.6f},
    {2714.4f, -3431.67f, 268.56f, 1.6f}
};

const Position PosSummonDead[5] =
{
    {2725.1f, -3310.0f, 268.85f, 3.4f},
    {2699.3f, -3322.8f, 268.60f, 3.3f},
    {2733.1f, -3348.5f, 268.84f, 3.1f},
    {2682.8f, -3304.2f, 268.85f, 3.9f},
    {2664.8f, -3340.7f, 268.23f, 3.7f}
};

//const Position PosGroundLivingSide = {2691.2f, -3387.0f, 267.68f, 1.52f};
//const Position PosGroundDeadSide   = {2693.5f, -3334.6f, 267.68f, 4.67f};
//const Position PosPlatform         = {2640.5f, -3360.6f, 285.26f, 0.0f};

#define POS_Y_GATE  -3360.78f
#define POS_Y_WEST  -3285.0f
#define POS_Y_EAST  -3434.0f
#define POS_X_NORTH  2750.49f
#define POS_X_SOUTH  2633.84f
#define IN_LIVE_SIDE(who) (who->GetPositionY() < POS_Y_GATE)

struct NotOnSameSide
{
public:
    explicit NotOnSameSide(Unit* pSource) : m_inLiveSide(IN_LIVE_SIDE(pSource)) { }

    bool operator() (Unit const* pTarget)
    {
        return (m_inLiveSide != IN_LIVE_SIDE(pTarget));
    }

private:
    bool m_inLiveSide;
};

class boss_gothik_40 : public CreatureScript
{
public:
    boss_gothik_40() : CreatureScript("boss_gothik_40") { }

    CreatureAI* GetAI(Creature* pCreature) const override
    {
        return GetNaxxramasAI<boss_gothik_40AI>(pCreature);
    }

    struct boss_gothik_40AI : public Gothik::boss_gothik::boss_gothikAI
    {
        explicit boss_gothik_40AI(Creature* c) : Gothik::boss_gothik::boss_gothikAI(c) {}
    };
};

class npc_boss_gothik_minion_40 : public CreatureScript
{
public:
    npc_boss_gothik_minion_40() : CreatureScript("npc_boss_gothik_minion_40") { }

    CreatureAI* GetAI(Creature* pCreature) const override
    {
        return GetNaxxramasAI<npc_boss_gothik_minion_40AI>(pCreature);
    }

    struct npc_boss_gothik_minion_40AI : public CombatAI
    {
        explicit npc_boss_gothik_minion_40AI(Creature* c) : CombatAI(c)
        {
            livingSide = IN_LIVE_SIDE(me);
        }

        EventMap events;
        bool livingSide;
        bool IsOnSameSide(Unit const* who) const { return livingSide == IN_LIVE_SIDE(who); }

        void Reset() override
        {
            me->SetReactState(REACT_AGGRESSIVE);
            me->SetNoCallAssistance(false);
            events.Reset();
        }

        void JustEngagedWith(Unit*  /*who*/) override
        {
            switch (me->GetEntry())
            {
                case NPC_LIVING_TRAINEE:
                    events.ScheduleEvent(EVENT_DEATH_PLAGUE, 3s);
                    break;
                case NPC_DEAD_TRAINEE:
                    events.ScheduleEvent(EVENT_ARCANE_EXPLOSION, 2500ms);
                    break;
                case NPC_LIVING_KNIGHT:
                    events.ScheduleEvent(EVENT_SHADOW_MARK, 3s);
                    break;
                case NPC_DEAD_KNIGHT:
                    events.ScheduleEvent(EVENT_WHIRLWIND, 2s);
                    break;
                case NPC_LIVING_RIDER:
                    events.ScheduleEvent(EVENT_SHADOW_BOLT_VOLLEY, 3s);
                    break;
                case NPC_DEAD_RIDER:
                    events.ScheduleEvent(EVENT_DRAIN_LIFE, 2000ms, 3500ms);
                    events.ScheduleEvent(EVENT_UNHOLY_FRENZY, 5s, 9s);
                    break;
                case NPC_DEAD_HORSE:
                    events.ScheduleEvent(EVENT_STOMP, 2s, 5s);
                    break;
            }
        }

        void JustDied(Unit*) override
        {
            switch (me->GetEntry())
            {
                case NPC_LIVING_TRAINEE:
                    DoCastAOE(SPELL_ANCHOR_1_TRAINEE, true);
                    break;
                case NPC_LIVING_KNIGHT:
                    DoCastAOE(SPELL_ANCHOR_1_DK, true);
                    break;
                case NPC_LIVING_RIDER:
                    DoCastAOE(SPELL_ANCHOR_1_RIDER, true);
                    break;
            }
        }

        void KilledUnit(Unit* who) override
        {
            if (who->IsPlayer())
                me->GetInstanceScript()->StorePersistentData(PERSISTENT_DATA_IMMORTAL_FAIL, 1);
        }

        void UpdateAI(uint32 diff) override
        {
            events.Update(diff);
            if (me->GetUnitState() == UNIT_STATE_CASTING)
                return;

            switch (events.ExecuteEvent())
            {
                case EVENT_DEATH_PLAGUE:
                    me->CastSpell(me->GetVictim(), SPELL_DEATH_PLAGUE, false);
                    events.Repeat(4s, 7s);
                    break;
                case EVENT_ARCANE_EXPLOSION:
                    if (Unit* victim = me->GetVictim())
                    {
                        if (victim->IsWithinDist(me, 20))
                        {
                            me->CastSpell(victim, SPELL_ARCANE_EXPLOSION, false);
                        }
                    }
                    events.Repeat(2500ms);
                    break;
                case EVENT_SHADOW_MARK:
                    if (Unit* victim = me->GetVictim())
                    {
                        if (victim->IsWithinDist(me, 10))
                        {
                            me->CastSpell(victim, SPELL_SHADOW_MARK, false);
                        }
                    }
                    events.Repeat(5s, 7s);
                    break;
                case EVENT_WHIRLWIND:
                    if (Unit* victim = me->GetVictim())
                    {
                        if (victim->IsWithinDist(me, 10))
                        {
                            me->CastSpell(victim, SPELL_WHIRLWIND, false);
                        }
                    }
                    events.Repeat(4s, 6s);
                    break;
                case EVENT_SHADOW_BOLT_VOLLEY:
                    me->CastSpell(me->GetVictim(), SPELL_SHADOW_BOLT_VOLLEY, false);
                    events.Repeat(5s);
                    break;
                case EVENT_DRAIN_LIFE:
                    if (Unit* victim = me->GetVictim())
                    {
                        if (victim->IsWithinDist(me, 20))
                        {
                            me->CastSpell(victim, SPELL_DRAIN_LIFE, false);
                        }
                    }
                    events.Repeat(8s, 12s);
                    break;
                case EVENT_UNHOLY_FRENZY:
                    me->AddAura(SPELL_UNHOLY_FRENZY, me);
                    events.Repeat(15s, 17s);
                    break;
                case EVENT_STOMP:
                    if (Unit* victim = me->GetVictim())
                    {
                        if (victim->IsWithinDist(me, 10))
                        {
                            me->CastSpell(victim, SPELL_STOMP, false);
                        }
                    }
                    events.Repeat(4s, 9s);
                    break;
            }
            DoMeleeAttackIfReady();
        }
    };
};

class npc_gothik_trigger_40 : public CreatureScript
{
public:
    npc_gothik_trigger_40() : CreatureScript("npc_gothik_trigger_40") { }

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_gothik_trigger_40AI(creature);
    }

    struct npc_gothik_trigger_40AI : public ScriptedAI
    {
        npc_gothik_trigger_40AI(Creature* creature) : ScriptedAI(creature) { creature->SetDisableGravity(true); }

        void EnterEvadeMode(EvadeReason /*why*/) override {}
        void UpdateAI(uint32 /*diff*/) override {}
        void JustEngagedWith(Unit* /*who*/) override {}
        void DamageTaken(Unit* /*who*/, uint32& damage, DamageEffectType /*damagetype*/, SpellSchoolMask /*damageSchoolMask*/) override { damage = 0; }

        Creature* SelectRandomSkullPile()
        {
            std::list<Creature*> triggers;
            me->GetCreatureListWithEntryInGrid(triggers, NPC_TRIGGER, 150.0f);
            // Remove triggers that are on live side or soul triggers on the platform
            triggers.remove_if([](Creature* trigger){
                return ((trigger->GetPositionY() < POS_Y_GATE) || (trigger->GetPositionZ() > 280.0f));
                });
            if (!triggers.empty())
            {
                std::list<Creature*>::iterator itr = triggers.begin();
                std::advance(itr, urand(0, triggers.size() - 1));
                return *itr;
            }
            return nullptr;
        }

        void SpellHit(Unit* /*caster*/, SpellInfo const* spell) override
        {
            if (!spell)
            {
                return;
            }

            switch (spell->Id)
            {
                case SPELL_ANCHOR_1_TRAINEE:
                    DoCastAOE(SPELL_ANCHOR_2_TRAINEE, true);
                    break;
                case SPELL_ANCHOR_1_DK:
                    DoCastAOE(SPELL_ANCHOR_2_DK, true);
                    break;
                case SPELL_ANCHOR_1_RIDER:
                    DoCastAOE(SPELL_ANCHOR_2_RIDER, true);
                    break;
                case SPELL_ANCHOR_2_TRAINEE:
                    if (Creature* target = SelectRandomSkullPile())
                    {
                        DoCast(target, SPELL_SKULLS_TRAINEE, true);
                    }
                    break;
                case SPELL_ANCHOR_2_DK:
                    if (Creature* target = SelectRandomSkullPile())
                    {
                        DoCast(target, SPELL_SKULLS_DK, true);
                    }
                    break;
                case SPELL_ANCHOR_2_RIDER:
                    if (Creature* target = SelectRandomSkullPile())
                    {
                        DoCast(target, SPELL_SKULLS_RIDER, true);
                    }
                    break;
                case SPELL_SKULLS_TRAINEE:
                    DoSummon(NPC_DEAD_TRAINEE, me, 0.0f, 15 * IN_MILLISECONDS, TEMPSUMMON_CORPSE_TIMED_DESPAWN);
                    break;
                case SPELL_SKULLS_DK:
                    DoSummon(NPC_DEAD_KNIGHT, me, 0.0f, 15 * IN_MILLISECONDS, TEMPSUMMON_CORPSE_TIMED_DESPAWN);
                    break;
                case SPELL_SKULLS_RIDER:
                    DoSummon(NPC_DEAD_RIDER, me, 0.0f, 15 * IN_MILLISECONDS, TEMPSUMMON_CORPSE_TIMED_DESPAWN);
                    DoSummon(NPC_DEAD_HORSE, me, 0.0f, 15 * IN_MILLISECONDS, TEMPSUMMON_CORPSE_TIMED_DESPAWN);
                    break;
            }
        }

        // dead side summons are "owned" by gothik
        void JustSummoned(Creature* summon) override
        {
            if (Creature* gothik = me->GetInstanceScript()->GetCreature(DATA_GOTHIK_BOSS))
                gothik->AI()->JustSummoned(summon);
        }

        void SummonedCreatureDespawn(Creature* summon) override
        {
            if (Creature* gothik = me->GetInstanceScript()->GetCreature(DATA_GOTHIK_BOSS))
                gothik->AI()->SummonedCreatureDespawn(summon);
        }
    };
};

class spell_gothik_shadow_bolt_volley : public SpellScript
{
    PrepareSpellScript(spell_gothik_shadow_bolt_volley);

    bool Validate(SpellInfo const* /*spellInfo*/) override
    {
        return ValidateSpellInfo({ SPELL_SHADOW_MARK });
    }

    void FilterTargets(std::list<WorldObject*>& targets)
    {
        targets.remove_if(Acore::UnitAuraCheck(false, SPELL_SHADOW_MARK));
    }

    void Register() override
    {
        OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_gothik_shadow_bolt_volley::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENEMY);
    }
};

}

#endif
