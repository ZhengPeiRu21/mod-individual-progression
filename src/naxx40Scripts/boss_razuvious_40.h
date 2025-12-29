#ifndef BOSS_RAZUVIOUS_40_H_
#define BOSS_RAZUVIOUS_40_H_

#include "CreatureScript.h"
#include "ScriptedCreature.h"
#include "naxxramas.h"
#include "SpellInfo.h"
#include "boss_razuvious.h"
#include "IndividualProgression.h"

namespace Razuvious_40 {

enum Says
{
    SAY_AGGRO                       = 0,
    SAY_SLAY                        = 1,
    SAY_TAUNTED                     = 2,
    SAY_DEATH                       = 3,
    SAY_PATHETIC                    = 4,
    SAY_TARGET_DUMMY                = 5,
    SAY_DEATH_KNIGHT_UNDERSTUDY     = 0,
};

enum Spells
{
    SPELL_UNBALANCING_STRIKE        = 26613,
    SPELL_DISRUPTING_SHOUT          = 55543, // 29107
    SPELL_MANA_BURN                 = 26046, // Alternative for Disrupting shout.
    SPELL_JAGGED_KNIFE              = 55550,
    // SPELL_HOPELESS               = 29125,
    // SPELL_TAUNT                  = 29060
};

enum Events
{
    EVENT_UNBALANCING_STRIKE        = 1,
    EVENT_DISRUPTING_SHOUT          = 2,
    EVENT_JAGGED_KNIFE              = 3
};

enum NPCs
{
    // NPC_DEATH_KNIGHT_UNDERSTUDY  = 351084,
    NPC_TARGET_DUMMY                = 16211,
};

enum Actions
{
    ACTION_FACE_ME                 = 0,
    ACTION_TALK                    = 1,
    ACTION_EMOTE                   = 2,
    ACTION_SALUTE                  = 3,
    ACTION_BACK_TO_TRAINING        = 4,
};

enum Misc
{
    GROUP_OOC_RP                    = 0,
    POINT_DEATH_KNIGHT              = 0,
};

class boss_razuvious_40 : public CreatureScript
{
public:
    boss_razuvious_40() : CreatureScript("boss_razuvious_40") { }

    CreatureAI* GetAI(Creature* pCreature) const override
    {
        return GetNaxxramasAI<boss_razuvious_40AI>(pCreature);
    }

    struct boss_razuvious_40AI : public Razuvious::boss_razuvious::boss_razuviousAI
    {
        explicit boss_razuvious_40AI(Creature* c) : Razuvious::boss_razuvious::boss_razuviousAI(c) {}

        void SpawnHelpers_40()
        {
            me->SummonCreature(NPC_DEATH_KNIGHT_UNDERSTUDY, 2762.23f, -3085.07f, 267.685f, 1.95f);
            me->SummonCreature(NPC_DEATH_KNIGHT_UNDERSTUDY, 2758.24f, -3110.97f, 267.685f, 3.94f);
            me->SummonCreature(NPC_DEATH_KNIGHT_UNDERSTUDY, 2782.45f, -3088.03f, 267.685f, 0.75f);
            me->SummonCreature(NPC_DEATH_KNIGHT_UNDERSTUDY, 2778.56f, -3113.74f, 267.685f, 5.28f);
        }

        void Reset() override
        {
            BossAI::Reset();
            summons.DespawnAll();
            events.Reset();
            SpawnHelpers_40();
            ScheduleRP();
        }

        void JustEngagedWith(Unit* who) override
        {
            BossAI::JustEngagedWith(who);
            scheduler.CancelGroup(GROUP_OOC_RP);
            Talk(SAY_AGGRO);
            events.ScheduleEvent(EVENT_UNBALANCING_STRIKE, 20s); //  TODO: This can be 30 seconds to match vanilla
            events.ScheduleEvent(EVENT_DISRUPTING_SHOUT, 15s);
            // events.ScheduleEvent(EVENT_JAGGED_KNIFE, 10s); // wrath only
            summons.DoZoneInCombat();
        }

        void UpdateAI(uint32 diff) override
        {
            if (!me->IsInCombat())
                scheduler.Update(diff);

            if (!UpdateVictim())
                return;

            events.Update(diff);
            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            switch (events.ExecuteEvent())
            {
                case EVENT_UNBALANCING_STRIKE:
                    me->CastSpell(me->GetVictim(), SPELL_UNBALANCING_STRIKE, false);
                    events.Repeat(20s);
                    break;
                case EVENT_DISRUPTING_SHOUT:
                    if (sIndividualProgression->doableNaxx40Bosses)
                    {
                        me->CastSpell(me, SPELL_DISRUPTING_SHOUT, false);
                    }
                    else
                    {
                        me->CastSpell(me, SPELL_MANA_BURN, false);
                    }
                    events.Repeat(25s);
                    break;
                case EVENT_JAGGED_KNIFE:
                    if (Unit* target = SelectTarget(SelectTargetMethod::Random, 0, 45.0f))
                    {
                        me->CastSpell(target, SPELL_JAGGED_KNIFE, false);
                    }
                    events.Repeat(10s);
                    break;
            }
            DoMeleeAttackIfReady();
        }

    private:
        ObjectGuid _rpBuddyGUID;
    };
};

class boss_razuvious_minion_40 : public CreatureScript
{
public:
    boss_razuvious_minion_40() : CreatureScript("boss_razuvious_minion_40") { }

    CreatureAI* GetAI(Creature* creature) const override
    {
        return GetNaxxramasAI<boss_razuvious_minion_40AI>(creature);
    }

    struct boss_razuvious_minion_40AI : public ScriptedAI
    {
        explicit boss_razuvious_minion_40AI(Creature* creature) : ScriptedAI(creature) { }

        void Reset() override
        {
            scheduler.CancelAll();
            ScheduleAttackDummy();
        }

        void ScheduleAttackDummy()
        {
            me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_READY1H);
            if (Creature* targetDummy = me->FindNearestCreature(NPC_TARGET_DUMMY, 10.0f))
            {
                me->SetFacingToObject(targetDummy);
            }
            scheduler.Schedule(6s, 9s, GROUP_OOC_RP, [this](TaskContext context)
            {
                me->HandleEmoteCommand(EMOTE_ONESHOT_ATTACK1H);
                context.Repeat(6s, 9s);
            });
        }

        void DoAction(int32 action) override
        {
            switch (action)
            {
                case ACTION_FACE_ME:
                    scheduler.CancelGroup(GROUP_OOC_RP);
                    me->SetSheath(SHEATH_STATE_UNARMED);
                    me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_NONE);
                    if (Creature* creature = me->GetInstanceScript()->GetCreature(DATA_RAZUVIOUS_BOSS))
                        me->SetFacingToObject(creature);
                    break;
                case ACTION_TALK:
                    Talk(SAY_DEATH_KNIGHT_UNDERSTUDY);
                    break;
                case ACTION_EMOTE:
                    me->HandleEmoteCommand(EMOTE_ONESHOT_TALK);
                    break;
                case ACTION_SALUTE:
                    me->HandleEmoteCommand(EMOTE_ONESHOT_SALUTE);
                    break;
                case ACTION_BACK_TO_TRAINING:
                    me->SetSheath(SHEATH_STATE_MELEE);
                    ScheduleAttackDummy();
                    break;
            }
        }

        void KilledUnit(Unit* who) override
        {
            if (who->IsPlayer())
                me->GetInstanceScript()->StorePersistentData(PERSISTENT_DATA_IMMORTAL_FAIL, 1);
        }

        void JustEngagedWith(Unit* who) override
        {
            scheduler.CancelGroup(GROUP_OOC_RP);

            if (Creature* creature = me->GetInstanceScript()->GetCreature(DATA_RAZUVIOUS_BOSS))
            {
                creature->SetInCombatWithZone();
                creature->AI()->AttackStart(who);
            }
        }

        void UpdateAI(uint32 diff) override
        {
            scheduler.Update(diff);

            if (UpdateVictim())
            {
                if (!me->HasUnitState(UNIT_STATE_CASTING) || !me->IsCharmed())
                {
                    DoMeleeAttackIfReady();
                }
            }
        }
    };
};

}

#endif
