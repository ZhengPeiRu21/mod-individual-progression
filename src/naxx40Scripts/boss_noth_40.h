#ifndef BOSS_NOTH_40_H_
#define BOSS_NOTH_40_H_

#include "CreatureScript.h"
#include "ScriptedCreature.h"
#include "naxxramas.h"
#include "boss_noth.h"

namespace Noth_40 {

enum Says
{
    // SAY_AGGRO                            = 0,
    SAY_SUMMON                              = 1,
    // SAY_SLAY                             = 2,
    // SAY_DEATH                            = 3,
    EMOTE_SUMMON                            = 4,
    EMOTE_SUMMON_WAVE                       = 5,
    EMOTE_TELEPORT_BALCONY                  = 6,
    EMOTE_TELEPORT_BACK                     = 7,
    EMOTE_BLINK                             = 8
};

enum Spells
{
    SPELL_CURSE_OF_THE_PLAGUEBRINGER_10     = 29213,
    SPELL_CURSE_OF_THE_PLAGUEBRINGER_25     = 54835,
    SPELL_CRIPPLE_10                        = 29212,
    SPELL_CRIPPLE_25                        = 54814,
    SPELL_SUMMON_PLAGUED_WARRIORS           = 29237,
    SPELL_TELEPORT                          = 29216,
    SPELL_TELEPORT_BACK                     = 29231,
    SPELL_BERSERK                           = 68378,
    SPELL_BLINK                             = 29208
};

enum Events
{
    EVENT_CURSE                             = 1,
    EVENT_CRIPPLE                           = 2,
    EVENT_SUMMON_PLAGUED_WARRIOR_ANNOUNCE   = 3,
    EVENT_MOVE_TO_BALCONY                   = 4,
    EVENT_BLINK                             = 5,
    EVENT_MOVE_TO_GROUND                    = 6,
    EVENT_SUMMON_PLAGUED_WARRIOR_REAL       = 7,
    EVENT_BALCONY_SUMMON_ANNOUNCE           = 8,
    EVENT_BALCONY_SUMMON_REAL               = 9
};

const Position summoningPosition[5] =
{
    {2728.06f, -3535.38f, 263.21f, 2.75f},
    {2725.71f, -3514.80f, 263.23f, 2.86f},
    {2728.24f, -3465.08f, 264.20f, 3.56f},
    {2704.79f, -3459.17f, 263.74f, 4.25f},
    {2652.02f, -3459.13f, 262.50f, 5.39f}
};

const Position nothPosition = {2684.94f, -3502.53f, 261.31f, 4.7f};

class boss_noth_40 : public CreatureScript
{
public:
    boss_noth_40() : CreatureScript("boss_noth_40") { }

    CreatureAI* GetAI(Creature* pCreature) const override
    {
        return GetNaxxramasAI<boss_noth_40AI>(pCreature);
    }

    struct boss_noth_40AI : public Noth::boss_noth::boss_nothAI
    {
        explicit boss_noth_40AI(Creature* c) : Noth::boss_noth::boss_nothAI(c) {}

        void UpdateAI(uint32 diff) override
        {
            if (!IsInRoom())
                return;

            if (!UpdateVictim())
                return;

            events.Update(diff);
            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            switch (events.ExecuteEvent())
            {
                // GROUND
                case EVENT_CURSE:
                    if (events.GetPhaseMask() == 0)
                    {
                        me->CastCustomSpell(SPELL_CURSE_OF_THE_PLAGUEBRINGER_10, SPELLVALUE_MAX_TARGETS, 10, me, false); // TODO: Increase to 20 on 40man
                    }
                    events.Repeat(25s); // 50-60 seconds in 40man
                    break;
                case EVENT_SUMMON_PLAGUED_WARRIOR_ANNOUNCE:
                    Talk(SAY_SUMMON);
                    Talk(EMOTE_SUMMON);
                    events.Repeat(30s);
                    events.ScheduleEvent(EVENT_SUMMON_PLAGUED_WARRIOR_REAL, 4s);
                    break;
                case EVENT_SUMMON_PLAGUED_WARRIOR_REAL:
                    me->CastSpell(me, SPELL_SUMMON_PLAGUED_WARRIORS, true);
                    SummonHelper(NPC_PLAGUED_WARRIOR, RAID_MODE(2, 3, 3, 3));
                    break;
                case EVENT_MOVE_TO_BALCONY:
                    Talk(EMOTE_TELEPORT_BALCONY);
                    me->CastSpell(me, SPELL_TELEPORT, true);
                    StartBalconyPhase();
                    break;
                case EVENT_BLINK:
                    DoResetThreatList();
                    me->CastSpell(me, RAID_MODE(SPELL_CRIPPLE_10, SPELL_CRIPPLE_25, SPELL_CRIPPLE_10, SPELL_CRIPPLE_25), false);
                    me->CastSpell(me, SPELL_BLINK, true);
                    Talk(EMOTE_BLINK);
                    events.Repeat(30s);
                    break;
                // BALCONY
                case EVENT_BALCONY_SUMMON_ANNOUNCE:
                    Talk(EMOTE_SUMMON_WAVE);
                    events.Repeat(30s);
                    events.ScheduleEvent(EVENT_BALCONY_SUMMON_REAL, 4s);
                    break;
                case EVENT_BALCONY_SUMMON_REAL:
                    me->CastSpell(me, SPELL_SUMMON_PLAGUED_WARRIORS, true); // visual
                    switch (timesInBalcony)
                    {
                         case 0:
                             SummonHelper(NPC_PLAGUED_CHAMPION, RAID_MODE(2, 4, 4, 4));
                             break;
                         case 1:
                             SummonHelper(NPC_PLAGUED_CHAMPION, RAID_MODE(1, 2, 2, 2));
                             SummonHelper(NPC_PLAGUED_GUARDIAN, RAID_MODE(1, 2, 2, 2));
                             break;
                         default:
                             SummonHelper(NPC_PLAGUED_GUARDIAN, RAID_MODE(2, 4, 4, 4));
                             break;
                    }
                    break;
                case EVENT_MOVE_TO_GROUND:
                    Talk(EMOTE_TELEPORT_BACK);
                    me->CastSpell(me, SPELL_TELEPORT_BACK, true);
                    timesInBalcony++;
                    if (timesInBalcony == 3)
                    {
                        DoCastSelf(SPELL_BERSERK);
                    }
                    StartGroundPhase();
                    break;
            }
            if (me->HasReactState(REACT_AGGRESSIVE))
                DoMeleeAttackIfReady();
        }
    };
};

}

#endif
