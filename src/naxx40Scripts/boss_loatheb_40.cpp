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

#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "naxxramas.h"

enum Spells
{
    SPELL_NECROTIC_AURA                         = 55593,
    SPELL_DEATHBLOOM                            = 29865,
    SPELL_INEVITABLE_DOOM                       = 29204,
    SPELL_BERSERK                               = 26662
};

enum Events
{
    EVENT_NECROTIC_AURA                         = 1,
    EVENT_DEATHBLOOM                            = 2,
    EVENT_INEVITABLE_DOOM                       = 3,
    EVENT_BERSERK                               = 4,
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
            pInstance = me->GetInstanceScript();
            me->SetHomePosition(me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), me->GetOrientation());
        }

        InstanceScript* pInstance;
        uint8 doomCounter;
        EventMap events;
        SummonList summons;

        void Reset() override
        {
            BossAI::Reset();
            events.Reset();
            summons.DespawnAll();
            doomCounter = 0;
            if (pInstance)
            {
                pInstance->SetData(BOSS_LOATHEB, NOT_STARTED);
                if (GameObject* go = me->GetMap()->GetGameObject(pInstance->GetGuidData(DATA_LOATHEB_GATE)))
                {
                    go->SetGoState(GO_STATE_ACTIVE);
                }
            }
        }

        void JustSummoned(Creature* cr) override
        {
            cr->SetInCombatWithZone();
            summons.Summon(cr);
        }

        void SummonedCreatureDies(Creature*  /*cr*/, Unit*) override
        {
            if (pInstance)
            {
                pInstance->SetData(DATA_SPORE_KILLED, 0);
            }
        }

        void KilledUnit(Unit* who) override
        {
            if (who->GetTypeId() == TYPEID_PLAYER && pInstance)
            {
                pInstance->SetData(DATA_IMMORTAL_FAIL, 0);
            }
        }

        void JustEngagedWith(Unit* who) override
        {
            BossAI::JustEngagedWith(who);
            me->SetInCombatWithZone();
            events.ScheduleEvent(EVENT_NECROTIC_AURA, 10000);
            events.ScheduleEvent(EVENT_DEATHBLOOM, 5000);
            events.ScheduleEvent(EVENT_INEVITABLE_DOOM, 120000);
            events.ScheduleEvent(EVENT_SUMMON_SPORE, 15000);
            events.ScheduleEvent(EVENT_BERSERK, 720000);
            if (pInstance)
            {
                pInstance->SetData(BOSS_LOATHEB, IN_PROGRESS);
                if (GameObject* go = me->GetMap()->GetGameObject(pInstance->GetGuidData(DATA_LOATHEB_GATE)))
                {
                    go->SetGoState(GO_STATE_READY);
                }
            }
        }

        void JustDied(Unit* killer) override
        {
            BossAI::JustDied(killer);
            summons.DespawnAll();
            if (pInstance)
            {
                pInstance->SetData(BOSS_LOATHEB, DONE);
            }
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
                    events.RepeatEvent(35000);
                    break;
                case EVENT_NECROTIC_AURA:
                    me->CastSpell(me, SPELL_NECROTIC_AURA, true);
                    Talk(SAY_NECROTIC_AURA_APPLIED);
                    events.ScheduleEvent(EVENT_NECROTIC_AURA_FADING, 14000);
                    events.ScheduleEvent(EVENT_NECROTIC_AURA_REMOVED, 17000);
                    events.RepeatEvent(20000);
                    break;
                case EVENT_DEATHBLOOM:
                {
                    //me->CastSpell(me, SPELL_DEATHBLOOM, false);
                    int32 bp0 = 33; // TODO: Amplitude should be 6k, but is 1k. 200 dmg after 6 seconds
                    me->CastCustomSpell(me, SPELL_DEATHBLOOM, &bp0, 0, 0, false);
                    events.RepeatEvent(30000);
                    break;
                }
                case EVENT_INEVITABLE_DOOM:
                {
                    int32 bp0 = 2549;
                    me->CastCustomSpell(me, SPELL_INEVITABLE_DOOM, &bp0, 0, 0, false);
                    doomCounter++;
                    events.RepeatEvent(doomCounter < 6 ? 30000 : 15000);
                    break;
                }
                case EVENT_BERSERK:
                    me->CastSpell(me, SPELL_BERSERK, true);
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
