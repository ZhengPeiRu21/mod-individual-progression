#ifndef BOSS_LOATHEB_40_H_
#define BOSS_LOATHEB_40_H_

#include "CreatureScript.h"
#include "ScriptedCreature.h"
#include "naxxramas.h"
#include "boss_loatheb.h"

namespace Loatheb_40 {

enum Spells
{
    // SPELL_DEATHBLOOM_10                      = 29865, // does 200 dmg every second for 6 seconds with 1200 extra damage at the end. should do 196 dmg every 6 seconds. no extra damage at the end.
    SPELL_POISON_SHOCK                          = 22595, // does 180-220 aoe poison damage. if Loatheb recasts this every 6 seconds it's a fix for poison aura.
    SPELL_CORRUPTED_MIND                        = 29201, // this triggers the following spells on targets (based on class): 29185, 29194, 29196, 29198
    SPELL_INEVITABLE_DOOM                       = 29204,
    SPELL_REMOVE_CURSE                          = 30281  // He periodically removes all curses on himself
    // SPELL_SUMMON_SPORE                       = 90006, // already defined in naxxramas_40.h
    // SPELL_BERSERK                            = 26662, // he doesn't cast berserk in Naxx40
};

enum Events
{
    EVENT_CORRUPTED_MIND                        = 1, // Loatheb should cast Corrupted Mind instead of Necrotic Aura
    EVENT_POISON_SHOCK                          = 2,
    EVENT_INEVITABLE_DOOM                       = 3,
    EVENT_REMOVE_CURSE                          = 4,
    EVENT_SUMMON_SPORE                          = 5,
    EVENT_NECROTIC_AURA_FADING                  = 6,
    EVENT_NECROTIC_AURA_REMOVED                 = 7
};

enum Texts
{
    SAY_NECROTIC_AURA_APPLIED                   = 0,
    SAY_NECROTIC_AURA_REMOVED                   = 1,
    SAY_NECROTIC_AURA_FADING                    = 2
};

class boss_loatheb_40 : public CreatureScript
{
public:
    boss_loatheb_40() : CreatureScript("boss_loatheb_40") { }

    CreatureAI* GetAI(Creature* pCreature) const override
    {
        return GetNaxxramasAI<boss_loatheb_40AI>(pCreature);
    }

    struct boss_loatheb_40AI : public Loatheb::boss_loatheb::boss_loathebAI
    {
        explicit boss_loatheb_40AI(Creature* c) : Loatheb::boss_loatheb::boss_loathebAI(c)
        {
            me->SetHomePosition(me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), me->GetOrientation());
        }

        void JustEngagedWith(Unit* who) override
        {
            BossAI::JustEngagedWith(who);
            me->SetInCombatWithZone();
            events.ScheduleEvent(EVENT_CORRUPTED_MIND, 5s);
            events.ScheduleEvent(EVENT_POISON_SHOCK, 5s);
            events.ScheduleEvent(EVENT_INEVITABLE_DOOM, 2min);
            events.ScheduleEvent(EVENT_SUMMON_SPORE, 15s);
            events.ScheduleEvent(EVENT_REMOVE_CURSE, 5s);
        }

        void UpdateAI(uint32 diff) override
        {
            if (!UpdateVictim() || !IsInRoom())
                return;

            events.Update(diff);
            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            switch (events.ExecuteEvent())
            {
                case EVENT_SUMMON_SPORE:
                    me->CastSpell(me, SPELL_SUMMON_SPORE, true);
                    events.Repeat(13s);
                    break;
                case EVENT_CORRUPTED_MIND:
                {
 			        if (me->CastSpell(me, SPELL_CORRUPTED_MIND, true) == SPELL_CAST_OK)
				 	{
                        events.Repeat(10s);
					}
					else 
					{
	                    events.Repeat(100ms);						
                    }
                    break;
                }
                case EVENT_POISON_SHOCK:
                    if (me->CastSpell(me, SPELL_POISON_SHOCK, true) == SPELL_CAST_OK)
                        events.Repeat(6s);
                    else
                        events.Repeat(100ms);
                    break;
                case EVENT_INEVITABLE_DOOM:
                {
                    int32 bp0 = 2549;

                    if (me->CastCustomSpell(me, SPELL_INEVITABLE_DOOM, &bp0, 0, 0, false) == SPELL_CAST_OK)
                    {
                        doomCounter++;
                        events.Repeat(doomCounter < 6 ? 30s : 15s);
                    }
                    else
                        events.Repeat(100ms);
                    break;
                }
                case EVENT_REMOVE_CURSE:
                    me->CastSpell(me, SPELL_REMOVE_CURSE, true);
                    events.Repeat(30s);
                    break;
                case EVENT_NECROTIC_AURA_FADING:
                    Talk(SAY_NECROTIC_AURA_FADING);
                    break;
                case EVENT_NECROTIC_AURA_REMOVED:
                    Talk(SAY_NECROTIC_AURA_REMOVED);
                    break;
            }
            DoMeleeAttackIfReady();
        }

    };
};

}

#endif
