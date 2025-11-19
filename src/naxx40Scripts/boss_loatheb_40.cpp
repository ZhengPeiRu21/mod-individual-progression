/*
 * This file is part of the AzerothCore Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Affero General Public License as published by the
 * Free Software Foundation; either version 3 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "CreatureScript.h"
#include "ScriptedCreature.h"
#include "naxxramas.h"

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

    struct boss_loatheb_40AI : public BossAI
    {
        explicit boss_loatheb_40AI(Creature* c) : BossAI(c, BOSS_LOATHEB), summons(me)
        {
            me->SetHomePosition(me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), me->GetOrientation());
        }

        uint8 doomCounter;
        EventMap events;
        SummonList summons;

        void Reset() override
        {
            BossAI::Reset();
            events.Reset();
            summons.DespawnAll();
            doomCounter = 0;
        }

        void JustSummoned(Creature* cr) override
        {
            cr->SetInCombatWithZone();
            summons.Summon(cr);
        }

        void SummonedCreatureDies(Creature*  /*cr*/, Unit*) override
        {
            instance->SetData(DATA_SPORE_KILLED, 0);
        }

        void KilledUnit(Unit* who) override
        {
            if (who->IsPlayer())
                instance->StorePersistentData(PERSISTENT_DATA_IMMORTAL_FAIL, 1);
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

        void JustDied(Unit* killer) override
        {
            BossAI::JustDied(killer);
            summons.DespawnAll();
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

        bool IsInRoom()
        {
            // Calculate the distance between his home position to the gate
            if (me->GetExactDist(me->GetHomePosition().GetPositionX(),
                                 me->GetHomePosition().GetPositionY(),
                                 me->GetHomePosition().GetPositionZ()) > 50.0f)
            {
                EnterEvadeMode();
                return false;
            }
            return true;
        }
    };
};

void AddSC_boss_loatheb_40()
{
    new boss_loatheb_40();
}
