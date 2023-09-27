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

#include "PassiveAI.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellAuras.h"
#include "naxxramas.h"


enum Spells
{
    SPELL_WEB_WRAP = 28622,
    SPELL_WEB_SPRAY = 29484,
    SPELL_POISON_SHOCK = 28741,
    SPELL_NECROTIC_POISON = 54121,
    SPELL_FRENZY = 54123,
};

enum Events
{
    EVENT_WEB_SPRAY = 1,
    EVENT_POISON_SHOCK = 2,
    EVENT_NECROTIC_POISON = 3,
    EVENT_WEB_WRAP = 4,
    EVENT_HEALTH_CHECK = 5,
    EVENT_SUMMON_SPIDERLINGS = 6,
    EVENT_MODIFY_WEB_SPRAY_AURA = 7
};

enum Emotes
{
    EMOTE_SPIDERS = 0,
    EMOTE_WEB_WRAP = 1,
    EMOTE_WEB_SPRAY = 2
};

enum Misc
{
    NPC_WEB_WRAP = 351079,
    NPC_MAEXXNA_SPIDERLING = 351088
};

const Position PosWrap[3] =
{
    {3546.796f, -3869.082f, 296.450f, 0.0f},
    {3531.271f, -3847.424f, 299.450f, 0.0f},
    {3497.067f, -3843.384f, 302.384f, 0.0f}
};



class boss_maexxna_40 : public CreatureScript
{
public:
    boss_maexxna_40() : CreatureScript("boss_maexxna_40") { }

    CreatureAI* GetAI(Creature* pCreature) const override
    {
        return GetNaxxramasAI<boss_maexxna_40AI>(pCreature);
    }

    struct boss_maexxna_40AI : public BossAI
    {
        explicit boss_maexxna_40AI(Creature* c) : BossAI(c, BOSS_MAEXXNA), summons(me)
        {
            pInstance = me->GetInstanceScript();
        }

        InstanceScript* pInstance;
        EventMap events;
        SummonList summons;

        bool IsInRoom()
        {
            if (me->GetExactDist(3486.6f, -3890.6f, 291.8f) > 100.0f)
            {
                EnterEvadeMode();
                return false;
            }
            return true;
        }

        void Reset() override
        {
            BossAI::Reset();
            events.Reset();
            summons.DespawnAll();
            if (pInstance)
            {
                if (GameObject* go = me->GetMap()->GetGameObject(pInstance->GetGuidData(DATA_MAEXXNA_GATE)))
                {
                    go->SetGoState(GO_STATE_ACTIVE);
                }
            }
        }

        void JustEngagedWith(Unit* who) override
        {
            BossAI::JustEngagedWith(who);
            me->SetInCombatWithZone();
            events.ScheduleEvent(EVENT_WEB_WRAP, 20000);
            events.ScheduleEvent(EVENT_WEB_SPRAY, 40000);
            events.ScheduleEvent(EVENT_POISON_SHOCK, 10000);
            events.ScheduleEvent(EVENT_NECROTIC_POISON, 5000);
            events.ScheduleEvent(EVENT_HEALTH_CHECK, 1000);
            events.ScheduleEvent(EVENT_SUMMON_SPIDERLINGS, 30000);
            if (pInstance)
            {
                if (GameObject* go = me->GetMap()->GetGameObject(pInstance->GetGuidData(DATA_MAEXXNA_GATE)))
                {
                    go->SetGoState(GO_STATE_READY);
                }
            }
        }

        void JustSummoned(Creature* cr) override
        {
            if (cr->GetEntry() == NPC_MAEXXNA_SPIDERLING)
            {
                cr->SetInCombatWithZone();
                if (Unit* target = SelectTarget(SelectTargetMethod::Random, 0))
                {
                    cr->AI()->AttackStart(target);
                }
            }
            summons.Summon(cr);
        }

        void KilledUnit(Unit* who) override
        {
            if (who->GetTypeId() == TYPEID_PLAYER && pInstance)
            {
                pInstance->SetData(DATA_IMMORTAL_FAIL, 0);
            }
        }

        void JustDied(Unit* killer) override
        {
            BossAI::JustDied(killer);
            summons.DespawnAll();
        }

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
            case EVENT_WEB_SPRAY:
                Talk(EMOTE_WEB_SPRAY);
                me->CastSpell(me, SPELL_WEB_SPRAY, true);
                events.ScheduleEvent(EVENT_MODIFY_WEB_SPRAY_AURA, 500);  // Schedule the modify aura event with a 500ms delay
                events.RepeatEvent(40000);
                break;

            case EVENT_MODIFY_WEB_SPRAY_AURA:
            {
                Map::PlayerList const& PlayerList = me->GetMap()->GetPlayers();
                for (Map::PlayerList::const_iterator i = PlayerList.begin(); i != PlayerList.end(); ++i)
                {
                    if (Player* player = i->GetSource())
                    {
                        if (player->IsAlive() && player->HasAura(SPELL_WEB_SPRAY))
                        {
                            if (Aura* aura = player->GetAura(SPELL_WEB_SPRAY))
                            {
                                aura->SetDuration(8000);  // Set the duration to 8 seconds 
                            }
                        }
                    }
                }
            }
            break;
            case EVENT_POISON_SHOCK:
            {
                int32 modifiedPoisonShockDamage = urand(1750, 2250);  // Set damage to a random value between 1750 and 2250
                me->CastCustomSpell(me->GetVictim(), SPELL_POISON_SHOCK, &modifiedPoisonShockDamage, nullptr, nullptr, false, nullptr, nullptr, me->GetGUID());
                events.RepeatEvent(10000);
                break;
            }
            case EVENT_NECROTIC_POISON:
                me->CastSpell(me->GetVictim(), SPELL_NECROTIC_POISON, false);
                events.RepeatEvent(30000);
                break;
            case EVENT_SUMMON_SPIDERLINGS:
                Talk(EMOTE_SPIDERS);
                for (uint8 i = 0; i < 8; ++i)
                {
                    me->SummonCreature(NPC_MAEXXNA_SPIDERLING, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), me->GetOrientation());
                }
                events.RepeatEvent(40000);
                break;
            case EVENT_HEALTH_CHECK:
                if (me->GetHealthPct() < 30)
                {
                    me->CastSpell(me, SPELL_FRENZY, true);
                    break;
                }
                events.RepeatEvent(1000);
                break;
            case EVENT_WEB_WRAP:
                Talk(EMOTE_WEB_WRAP);
                for (uint8 i = 0; i < 2; ++i)
                {
                    if (Unit* target = SelectTarget(SelectTargetMethod::Random, 1, 0, true, true, -SPELL_WEB_WRAP))
                    {
                        target->RemoveAura(SPELL_WEB_SPRAY);
                        float x, y, z;
                        target->GetPosition(x, y, z);  // Get the current position of the target player

                        // Set the destination position for the Web Wrap NPC
                        uint8 pos = urand(0, 2);
                        float destX = PosWrap[pos].GetPositionX();
                        float destY = PosWrap[pos].GetPositionY();
                        float destZ = PosWrap[pos].GetPositionZ();

                        if (Creature* wrap = me->SummonCreature(NPC_WEB_WRAP, x, y, z, 0.0f, TEMPSUMMON_TIMED_DESPAWN, 60000))
                        {
                            wrap->AI()->SetGUID(target->GetGUID());
                            wrap->GetMotionMaster()->MoveJump(destX, destY, destZ, 20, 20);  // Make the Web Wrap NPC fly to the destination

                            // Make the player fly to the same destination as Web Wrap NPC
                            target->GetMotionMaster()->MoveJump(destX, destY, destZ, 20, 20);

                            int32 modifiedBaseDamage = urand(650, 850);  // Set damage to a random value between 650 and 850
                            int32 damageForEffect2 = modifiedBaseDamage;
                            target->CastCustomSpell(target, SPELL_WEB_WRAP, nullptr, &damageForEffect2, nullptr, true, nullptr, nullptr, wrap->GetGUID());
                        }
                    }
                }
                events.RepeatEvent(40000);
                break;
            }
            DoMeleeAttackIfReady();
        }
    };
};


class boss_maexxna_webwrap40 : public CreatureScript
{
public:
    boss_maexxna_webwrap40() : CreatureScript("boss_maexxna_webwrap40") { }

    CreatureAI* GetAI(Creature* pCreature) const override
    {
        return GetNaxxramasAI<boss_maexxna_webwrap40AI>(pCreature);
    }

    struct boss_maexxna_webwrap40AI : public NullCreatureAI
    {
        explicit boss_maexxna_webwrap40AI(Creature* c) : NullCreatureAI(c) {}

        ObjectGuid victimGUID;

        void SetGUID(ObjectGuid guid, int32  /*param*/) override
        {
            victimGUID = guid;

            if (victimGUID)
            {
                if (Unit* victim = ObjectAccessor::GetUnit(*me, victimGUID))
                {
                    if (victim->GetTypeId() == TYPEID_PLAYER && victim->GetEntry() != NPC_WEB_WRAP)
                    {
                        int32 modifiedBaseDamage = urand(650, 850);  // Set damage to a random value between 650 and 850
                        int32 damageForEffect2 = modifiedBaseDamage;
                        victim->CastCustomSpell(victim, SPELL_WEB_WRAP, nullptr, &damageForEffect2, nullptr, true, nullptr, nullptr, me->GetGUID());
                    }
                }
            }
        }

        void JustDied(Unit* /*killer*/) override
        {
            if (victimGUID)
            {
                if (Unit* victim = ObjectAccessor::GetUnit(*me, victimGUID))
                {
                    if (victim->HasAura(SPELL_WEB_WRAP))
                    {
                        victim->RemoveAurasDueToSpell(SPELL_WEB_WRAP, me->GetGUID());
                    }
                }
            }
        }
    };
};

void AddSC_boss_maexxna_40()
{
    new boss_maexxna_40();
    new boss_maexxna_webwrap40();
}
