#ifndef BOSS_FAERLINA_40_H_
#define BOSS_FAERLINA_40_H_

#include "CreatureScript.h"
#include "ScriptedCreature.h"
#include "SpellInfo.h"
#include "naxxramas.h"
#include "boss_faerlina.h"

namespace Faerlina_40 {

enum Yells
{
    SAY_GREET                           = 0,
    SAY_AGGRO                           = 1,
    SAY_SLAY                            = 2,
    SAY_DEATH                           = 3,
    EMOTE_WIDOWS_EMBRACE                = 4,
    EMOTE_FRENZY                        = 5,
    SAY_FRENZY                          = 6
};

enum Spells
{
    SPELL_POISON_BOLT_VOLLEY            = 28796,
    SPELL_RAIN_OF_FIRE                  = 28794,
    SPELL_FRENZY                        = 28798,
    SPELL_WIDOWS_EMBRACE                = 28732,
    SPELL_MINION_WIDOWS_EMBRACE         = 54097
};

enum SpellValues : int32
{
    POISON_BOLT_VOLLEY_BP0              = 1224,
    POISON_BOLT_VOLLEY_BP1              = 416,
    RAIN_OF_FIRE_BP0                    = 1849,
    FRENZY_BP0                          = 149,
    FRENZY_BP1                          = 74,
    FRENZY_BP2                          = 49
};

enum Groups
{
    GROUP_FRENZY                        = 1
};

class boss_faerlina_40 : public CreatureScript
{
public:
    boss_faerlina_40() : CreatureScript("boss_faerlina_40") {}

    CreatureAI* GetAI(Creature* pCreature) const override
    {
        return GetNaxxramasAI<boss_faerlina_40AI>(pCreature);
    }

    struct boss_faerlina_40AI : public Faerlina::boss_faerlina::boss_faerlinaAI
    {
        boss_faerlina_40AI(Creature* c) : boss_faerlinaAI(c), _introDone(false) {}

        void SummonHelpers_40()
        {
            me->SummonCreature(NPC_NAXXRAMAS_WORSHIPPER, 3362.66f, -3620.97f, 261.08f, 4.57276f);
            me->SummonCreature(NPC_NAXXRAMAS_WORSHIPPER, 3344.3f, -3618.31f, 261.08f, 4.69494f);
            me->SummonCreature(NPC_NAXXRAMAS_WORSHIPPER, 3356.71f, -3620.05f, 261.08f, 4.57276f);
            me->SummonCreature(NPC_NAXXRAMAS_WORSHIPPER, 3350.26f, -3619.11f, 261.08f, 4.67748f);
            me->SummonCreature(NPC_NAXXRAMAS_FOLLOWER, 3347.49f, -3617.59f, 261.0f, 4.49f);
            me->SummonCreature(NPC_NAXXRAMAS_FOLLOWER, 3359.64f, -3619.16f, 261.0f, 4.56f);
        }

        void Reset() override
        {
            BossAI::Reset();
            summons.DespawnAll();
            SummonHelpers_40();
        }

        void JustEngagedWith(Unit* who) override
        {
            BossAI::JustEngagedWith(who);
            me->CallForHelp(VISIBLE_RANGE);
            summons.DoZoneInCombat();
            Talk(SAY_AGGRO);

            ScheduleTimedEvent(7s, 15s, [&]{
                if (!me->HasAura(SPELL_WIDOWS_EMBRACE))
                {
                    CustomSpellValues values;
                    int32 bp0 = POISON_BOLT_VOLLEY_BP0;
                    int32 bp1 = POISON_BOLT_VOLLEY_BP1;
                    values.AddSpellMod(SPELLVALUE_MAX_TARGETS, 10);
                    values.AddSpellMod(SPELLVALUE_BASE_POINT0, bp0);
                    values.AddSpellMod(SPELLVALUE_BASE_POINT1, bp1);
                    me->CastCustomSpell(SPELL_POISON_BOLT_VOLLEY, values, me, TRIGGERED_NONE, nullptr, nullptr, ObjectGuid::Empty);
                }
            }, 7s, 15s);

            ScheduleTimedEvent(8s, 18s, [&] {              
                if (Unit* target = SelectTarget(SelectTargetMethod::Random, 0))
                {
                    int32 bp0 = RAIN_OF_FIRE_BP0;
                    me->CastCustomSpell(target, SPELL_RAIN_OF_FIRE, &bp0, 0, 0, false, nullptr, nullptr, ObjectGuid::Empty);
                }
            }, 8s, 18s);

            scheduler.Schedule(60s, 80s, GROUP_FRENZY, [this](TaskContext context) {
                if (!me->HasAura(SPELL_WIDOWS_EMBRACE))
                {
                    Talk(SAY_FRENZY);
                    Talk(EMOTE_FRENZY);
                    int32 bp0 = FRENZY_BP0;
                    int32 bp1 = FRENZY_BP1;
                    int32 bp2 = FRENZY_BP2;
                    me->CastCustomSpell(me, SPELL_FRENZY, &bp0, &bp1, &bp2, true, nullptr, nullptr, ObjectGuid::Empty);
                    context.Repeat(1min);
                }
                else
                    context.Repeat(30s);
            });
        }

        void SpellHit(Unit* caster, SpellInfo const* spell) override
        {
            if (spell->Id == SPELL_WIDOWS_EMBRACE)
            {
                Talk(EMOTE_WIDOWS_EMBRACE); // %s is affected by Widow's Embrace!
                if (me->HasAura(SPELL_FRENZY))
                {
                    scheduler.RescheduleGroup(GROUP_FRENZY, 1min); // You must sacrifice the worshiper AFTER she enrages if you want to stop her for the full 60 seconds.
                    me->RemoveAurasDueToSpell(SPELL_FRENZY);
                    instance->SetData(DATA_FRENZY_REMOVED, 0); // achievement
                }
                else
                    scheduler.RescheduleGroup(GROUP_FRENZY, 30s); //  If you sacrifice the Worshiper before the enrage, it will merely delay the enrage for 30 seconds.
                caster->KillSelf();
            }
        }

        private:
            bool _introDone;
    };
};

}

#endif
