#ifndef BOSS_PATCHWERK_40_H_
#define BOSS_PATCHWERK_40_H_

#include "CreatureScript.h"
#include "ScriptedCreature.h"
#include "naxxramas.h"
#include "boss_patchwerk.h"

namespace PatchWerk_40 {

enum Yells
{
    SAY_AGGRO                       = 0,
    SAY_SLAY                        = 1,
    SAY_DEATH                       = 2,
    EMOTE_BERSERK                   = 3,
    EMOTE_ENRAGE                    = 4
};

enum Spells
{
    SPELL_HATEFUL_STRIKE_10         = 41926,
    // SPELL_HATEFUL_STRIKE_25      = 59192,
    SPELL_FRENZY                    = 28131,
    SPELL_BERSERK                   = 26662,
    SPELL_SLIME_BOLT                = 32309
};

enum Events
{
    EVENT_HEALTH_CHECK              = 1,
    EVENT_HATEFUL_STRIKE            = 2,
    EVENT_SLIME_BOLT                = 3,
    EVENT_BERSERK                   = 4
};

enum Misc
{
    ACHIEV_TIMED_START_EVENT        = 10286
};

class boss_patchwerk_40 : public CreatureScript
{
public:
    boss_patchwerk_40() : CreatureScript("boss_patchwerk_40") { }

    CreatureAI* GetAI(Creature* pCreature) const override
    {
        return GetNaxxramasAI<boss_patchwerk_40AI>(pCreature);
    }

    struct boss_patchwerk_40AI : public PatchWerk::boss_patchwerk::boss_patchwerkAI
    {
        explicit boss_patchwerk_40AI(Creature* c) : PatchWerk::boss_patchwerk::boss_patchwerkAI(c) {}

        void JustEngagedWith(Unit* who) override
        {
            BossAI::JustEngagedWith(who);
            Talk(SAY_AGGRO);
            me->SetInCombatWithZone();
            events.ScheduleEvent(EVENT_HATEFUL_STRIKE, 1200ms);
            events.ScheduleEvent(EVENT_BERSERK, 7min); // 7 minutes enrange
            events.ScheduleEvent(EVENT_HEALTH_CHECK, 1s);
            // instance->DoStartTimedAchievement(ACHIEVEMENT_TIMED_TYPE_EVENT, ACHIEV_TIMED_START_EVENT);
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
                case EVENT_HATEFUL_STRIKE:
                   {
                        // Cast Hateful strike on the player with the highest amount of HP within melee distance, and second threat amount
                        std::list<Unit*> meleeRangeTargets;
                        Unit* finalTarget = nullptr;
                        uint8 counter = 0;
                        auto i = me->GetThreatMgr().GetThreatList().begin();
                        for (; i != me->GetThreatMgr().GetThreatList().end(); ++i, ++counter)
                        {
                            // Gather all units with melee range
                            Unit* target = (*i)->getTarget();
                            if (me->IsWithinMeleeRange(target))
                            {
                                meleeRangeTargets.push_back(target);
                            }
                            // and add threat to most hated
                            if (counter < 3)
                            {
                                me->AddThreat(target, 500.0f);
                            }
                        }
                        counter = 0;
                        std::list<Unit*, std::allocator<Unit*>>::iterator itr;
                        for (itr = meleeRangeTargets.begin(); itr != meleeRangeTargets.end(); ++itr, ++counter)
                        {
                            // if there is only one target available
                            if (meleeRangeTargets.size() == 1)
                            {
                                finalTarget = (*itr);
                            }
                            else if (counter > 0) // skip first target
                            {
                                if (!finalTarget || (*itr)->GetHealth() > finalTarget->GetHealth())
                                {
                                    finalTarget = (*itr);
                                }
                                // third loop
                                if (counter >= 2)
                                    break;
                            }
                        }
                        if (finalTarget)
                        {
                            int32 dmg = urand(22100,22850);
                            me->CastCustomSpell(finalTarget, SPELL_HATEFUL_STRIKE_10, &dmg, 0, 0, false);
                        }
                        events.Repeat(1200ms);
                        break;
                    }
                case EVENT_BERSERK:
                    Talk(EMOTE_BERSERK);
                    me->CastSpell(me, SPELL_BERSERK, true);
                    events.ScheduleEvent(EVENT_SLIME_BOLT, 3s);
                    break;
                case EVENT_SLIME_BOLT:
                    me->CastSpell(me, SPELL_SLIME_BOLT, false);
                    events.Repeat(3s);
                    break;
                case EVENT_HEALTH_CHECK:
                    if (me->GetHealthPct() <= 5)
                    {
                        Talk(EMOTE_ENRAGE);
                        me->CastSpell(me, SPELL_FRENZY, true);
                        break;
                    }
                    events.Repeat(1s);
                    break;
            }
            DoMeleeAttackIfReady();
        }
    };
};

}

#endif
