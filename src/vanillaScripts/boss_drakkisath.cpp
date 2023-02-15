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

#include "blackrock_spire.h"
#include "ScriptedCreature.h"
#include "ScriptMgr.h"

enum Spells
{
    SPELL_FLAMESTRIKE               = 16419,
    SPELL_CLEAVE                    = 15284,
    SPELL_CONFLAGRATION             = 16805,
    SPELL_THUNDERCLAP               = 15548, //Not sure if right ID. 23931 would be a harder possibility.
    SPELL_RAGE                      = 16789,
    SPELL_PIERCE_ARMOR              = 12097
};

enum Events
{
    EVENT_FLAMESTRIKE               = 1,
    EVENT_CLEAVE,
    EVENT_CONFLAGRATION,
    EVENT_THUNDERCLAP,
    EVENT_PIERCE_ARMOR,
    EVENT_RAGE,
    EVENT_CHECK_CONFLAGRATION_TARGET
};

class boss_drakkisath_50_59_B : public CreatureScript
{
public:
    boss_drakkisath_50_59_B() : CreatureScript("boss_drakkisath") { }

    struct boss_drakkisathAI_50_59_B : public BossAI
    {
        boss_drakkisathAI_50_59_B(Creature* creature) : BossAI(creature, DATA_GENERAL_DRAKKISATH) {}

        void JustEngagedWith(Unit* /*who*/) override
        {
            _JustEngagedWith();
            events.ScheduleEvent(EVENT_FLAMESTRIKE, 6000);
            events.ScheduleEvent(EVENT_CLEAVE,    8000);
            events.ScheduleEvent(EVENT_CONFLAGRATION, 15000);
            events.ScheduleEvent(EVENT_THUNDERCLAP,    17000);
            events.ScheduleEvent(EVENT_PIERCE_ARMOR, 5000);
            events.ScheduleEvent(EVENT_RAGE, 1000);

            // Kill players if the door wasn't opened
            if (!instance->GetData(DATA_UBRS_DOOR_OPEN))
            {
                DoCastSelf(68378 /* Berserk */);
            }
        }

        void UpdateAI(uint32 diff) override
        {
            if (!UpdateVictim())
                return;

            events.Update(diff);

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                    case EVENT_FLAMESTRIKE:
                        DoCastAOE(SPELL_FLAMESTRIKE);
                        events.ScheduleEvent(EVENT_FLAMESTRIKE, 10000);
                        break;
                    case EVENT_CLEAVE:
                        DoCastVictim(SPELL_CLEAVE);
                        events.ScheduleEvent(EVENT_CLEAVE, 8000);
                        break;
                    case EVENT_CONFLAGRATION:
                        DoCastVictim(SPELL_CONFLAGRATION);

                        if (Unit* target = me->GetVictim())
                        {
                            _conflagrateTarget = me->GetVictim()->GetGUID();
                            _conflagrateThreat = me->GetThreatMgr().GetThreat(me->GetVictim());
                            me->GetThreatMgr().ModifyThreatByPercent(target, -100);
                        }
                        events.ScheduleEvent(EVENT_CONFLAGRATION, 18000);
                        events.ScheduleEvent(EVENT_CHECK_CONFLAGRATION_TARGET, 10000);
                        break;
                    case EVENT_THUNDERCLAP:
                        DoCastVictim(SPELL_THUNDERCLAP);
                        events.ScheduleEvent(EVENT_THUNDERCLAP, 20000);
                        break;
                    case EVENT_PIERCE_ARMOR:
                        DoCastVictim(SPELL_PIERCE_ARMOR);
                        events.ScheduleEvent(EVENT_PIERCE_ARMOR, 40000);
                        break;
                    case EVENT_RAGE:
                        DoCastSelf(SPELL_RAGE);
                        events.ScheduleEvent(EVENT_RAGE, 35000);
                        break;
                    case EVENT_CHECK_CONFLAGRATION_TARGET:
                        if (Unit* target = ObjectAccessor::GetUnit(*me, _conflagrateTarget))
                        {
                            me->GetThreatMgr().AddThreat(target, _conflagrateThreat);
                        }
                        break;
                }
            }
            DoMeleeAttackIfReady();
        }

    private:
        float _conflagrateThreat;
        ObjectGuid _conflagrateTarget;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return GetBlackrockSpireAI<boss_drakkisathAI_50_59_B>(creature);
    }
};

void AddSC_boss_drakkisath_50_59_B()
{
    new boss_drakkisath_50_59_B();
}

