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

enum Says
{
    SAY_AGGRO                       = 0,
    SAY_GREET                       = 1,
    SAY_SLAY                        = 2,
    EMOTE_LOCUST                    = 3
};

enum GuardSays
{
    EMOTE_SPAWN                     = 1,
    EMOTE_SCARAB                    = 2
};

enum Spells
{
    SPELL_IMPALE                    = 28783,
    SPELL_LOCUST_SWARM              = 28785,
    SPELL_LOCUST_SWARM_TRIGGER      = 28786, // periodic effect
    SPELL_BERSERK                   = 26662
};

enum SpellValues : int32
{
    IMPALE_BP1                      = 3937,
    IMPALE_BP2                      = 299
};

enum Events
{
    EVENT_IMPALE                    = 1,
    EVENT_LOCUST_SWARM              = 2,
    EVENT_BERSERK                   = 3,
    EVENT_SPAWN_GUARD               = 4
};

enum Misc
{
    NPC_CORPSE_SCARAB               = 351083,
    NPC_CRYPT_GUARD                 = 351082,

    ACHIEV_TIMED_START_EVENT        = 9891
};

class boss_anubrekhan_40 : public CreatureScript
{
public:
    boss_anubrekhan_40() : CreatureScript("boss_anubrekhan_40") { }

    CreatureAI* GetAI(Creature* pCreature) const override
    {
        return GetNaxxramasAI<boss_anubrekhan_40AI>(pCreature);
    }

    struct boss_anubrekhan_40AI : public BossAI
    {
        explicit boss_anubrekhan_40AI(Creature* c) : BossAI(c, BOSS_ANUB), summons(me)
        {
            pInstance = c->GetInstanceScript();
            sayGreet = false;
        }

        InstanceScript* pInstance;
        EventMap events;
        SummonList summons;
        bool sayGreet;

        void SummonCryptGuards()
        {
            me->SummonCreature(NPC_CRYPT_GUARD, 3299.732f, -3502.489f, 287.077f, 2.378f, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 60000);
            me->SummonCreature(NPC_CRYPT_GUARD, 3299.086f, -3450.929f, 287.077f, 3.999f, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 60000);
        }

        void Reset() override
        {
            BossAI::Reset();
            events.Reset();
            summons.DespawnAll();
            SummonCryptGuards();
            if (pInstance)
            {
                if (GameObject* go = me->GetMap()->GetGameObject(pInstance->GetGuidData(DATA_ANUB_GATE)))
                {
                    go->SetGoState(GO_STATE_ACTIVE);
                }
            }
        }

        void JustSummoned(Creature* cr) override
        {
                if (me->IsInCombat())
                {
                cr->SetInCombatWithZone(); // This line will set the creature in combat with the zone.
                if (cr->GetEntry() == NPC_CRYPT_GUARD)
                {
                     cr->AI()->Talk(EMOTE_SPAWN, me);
                }
                else if (cr->GetEntry() == NPC_CORPSE_SCARAB) // Explicitly check for Corpse Scarabs here.
                {
                     cr->SetInCombatWithZone(); // Set the Corpse Scarabs in combat with the zone too.
                }
             }
             summons.Summon(cr);
        }

        void SummonedCreatureDies(Creature* cr, Unit*) override
        {
            if (cr->GetEntry() == NPC_CRYPT_GUARD)
            {
                cr->CastSpell(cr, SPELL_SUMMON_CORPSE_SCRABS_10, true, nullptr, nullptr, me->GetGUID());
                cr->AI()->Talk(EMOTE_SCARAB);
            }
        }

        void SummonedCreatureDespawn(Creature* cr) override
        {
            summons.Despawn(cr);
        }

        void JustDied(Unit*  killer) override
        {
            BossAI::JustDied(killer);
            summons.DespawnAll();
            if (pInstance)
            {
                pInstance->DoStartTimedAchievement(ACHIEVEMENT_TIMED_TYPE_EVENT, ACHIEV_TIMED_START_EVENT);
            }
        }

        void KilledUnit(Unit* victim) override
        {
            if (victim->GetTypeId() != TYPEID_PLAYER)
                return;

            Talk(SAY_SLAY);
            victim->CastSpell(victim, SPELL_SUMMON_CORPSE_SCRABS_5, true, nullptr, nullptr, me->GetGUID());
            if (pInstance)
            {
                pInstance->SetData(DATA_IMMORTAL_FAIL, 0);
            }
        }

        void JustEngagedWith(Unit* who) override
        {
            BossAI::JustEngagedWith(who);
            me->CallForHelp(60.0f);
            Talk(SAY_AGGRO);
            if (pInstance)
            {
                if (GameObject* go = me->GetMap()->GetGameObject(pInstance->GetGuidData(DATA_ANUB_GATE)))
                {
                    go->SetGoState(GO_STATE_READY);
                }
            }
            events.ScheduleEvent(EVENT_IMPALE, 15000);
            events.ScheduleEvent(EVENT_LOCUST_SWARM, urand(70000, 120000));
            events.ScheduleEvent(EVENT_BERSERK, 600000);
            if (!summons.HasEntry(NPC_CRYPT_GUARD))
            {
                SummonCryptGuards();
            }
            if (!Is25ManRaid())
            {
                events.ScheduleEvent(EVENT_SPAWN_GUARD, urand(15000, 20000));
            }
        }

        void MoveInLineOfSight(Unit* who) override
        {
            if (!sayGreet && who->GetTypeId() == TYPEID_PLAYER)
            {
                Talk(SAY_GREET);
                sayGreet = true;
            }
            ScriptedAI::MoveInLineOfSight(who);
        }

        void UpdateAI(uint32 diff) override
        {
            if (!me->IsInCombat() && sayGreet)
            {
                for (SummonList::iterator itr = summons.begin(); itr != summons.end(); ++itr)
                {
                    if (pInstance)
                    {
                        if (Creature* cr = pInstance->instance->GetCreature(*itr))
                        {
                            if (cr->IsInCombat())
                                DoZoneInCombat();
                        }
                    }
                }
            }

            if (!UpdateVictim())
                return;

            events.Update(diff);
            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            switch (events.ExecuteEvent())
            {
                case EVENT_IMPALE:
                    if (Unit* target = SelectTarget(SelectTargetMethod::Random, 0))
                    {
                        int32 bp1 = IMPALE_BP1;
                        int32 bp2 = IMPALE_BP2;
                        me->CastCustomSpell(target, SPELL_IMPALE, 0, &bp1, &bp2, false, nullptr, nullptr, ObjectGuid::Empty);
                    }
                    events.RepeatEvent(20000);
                    break;
                case EVENT_LOCUST_SWARM:
                {
                    Talk(EMOTE_LOCUST);
                    me->CastSpell(me, SPELL_LOCUST_SWARM, false);
                    events.ScheduleEvent(EVENT_SPAWN_GUARD, 3000);
                    events.RepeatEvent(90000);
                    break;
                }
                case EVENT_SPAWN_GUARD:
                    me->SummonCreature(NPC_CRYPT_GUARD, 3331.217f, -3476.607f, 287.074f, 3.269f, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 60000);
                    break;
                case EVENT_BERSERK:
                    me->CastSpell(me, SPELL_BERSERK, true);
                    break;
            }
            DoMeleeAttackIfReady();
        }
    };
};

void AddSC_boss_anubrekhan_40()
{
    new boss_anubrekhan_40();
}
