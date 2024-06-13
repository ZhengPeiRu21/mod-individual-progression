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

#include "Player.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellScript.h"
#include "naxxramas.h"

enum Spells
{
    SPELL_MORTAL_WOUND = 25646,
    SPELL_ENRAGE = 28371,
    SPELL_DECIMATE = 28374,
    SPELL_DECIMATE_DAMAGE = 28375,
    SPELL_BERSERK = 26662,
    SPELL_INFECTED_WOUND = 29306,
    SPELL_CHOW_SEARCHER = 28404
};

enum Events
{
    EVENT_MORTAL_WOUND = 1,
    EVENT_ENRAGE = 2,
    EVENT_DECIMATE = 3,
    EVENT_BERSERK = 4,
    EVENT_SUMMON_ZOMBIE = 5,
    EVENT_CAN_EAT_ZOMBIE = 6
};

enum Misc
{
    NPC_ZOMBIE_CHOW = 351069
};

enum Emotes
{
    EMOTE_SPOTS_ONE = 0,
    EMOTE_DECIMATE = 1,
    EMOTE_ENRAGE = 2,
    EMOTE_DEVOURS_ALL = 3,
    EMOTE_BERSERK = 4
};

const Position zombiePos[3] =
{
    {3267.9f, -3172.1f, 297.42f, 0.94f},
    {3253.2f, -3132.3f, 297.42f, 0},
    {3308.3f, -3185.8f, 297.42f, 1.58f}
};

class boss_gluth_40 : public CreatureScript
{
public:
    boss_gluth_40() : CreatureScript("boss_gluth_40") { }

    CreatureAI* GetAI(Creature* pCreature) const override
    {
        return GetNaxxramasAI<boss_gluth_40AI>(pCreature);
    }

    struct boss_gluth_40AI : public BossAI
    {
        explicit boss_gluth_40AI(Creature* c) : BossAI(c, BOSS_GLUTH), summons(me)
        {
            pInstance = me->GetInstanceScript();
        }

        EventMap events;
        SummonList summons;
        InstanceScript* pInstance;

        void Reset() override
        {
            BossAI::Reset();
            me->ApplySpellImmune(SPELL_INFECTED_WOUND, IMMUNITY_ID, SPELL_INFECTED_WOUND, true);
            events.Reset();
            summons.DespawnAll();
            me->SetReactState(REACT_AGGRESSIVE);
        }

        void MoveInLineOfSight(Unit* who) override
        {
            if (!me->GetVictim() || me->GetVictim()->GetEntry() != NPC_ZOMBIE_CHOW)
            {
                if (who->GetEntry() == NPC_ZOMBIE_CHOW && me->IsWithinDistInMap(who, 6.5f))
                {
                    SetGazeOn(who);
                    Talk(EMOTE_SPOTS_ONE);
                }
                else
                {
                    ScriptedAI::MoveInLineOfSight(who);
                }
            }
        }

        void JustEngagedWith(Unit* who) override
        {
            BossAI::JustEngagedWith(who);
            me->SetInCombatWithZone();
            events.ScheduleEvent(EVENT_MORTAL_WOUND, 10000);
            events.ScheduleEvent(EVENT_ENRAGE, 22000);
            events.ScheduleEvent(EVENT_DECIMATE, 105000);
            events.ScheduleEvent(EVENT_BERSERK, 360000);
            events.ScheduleEvent(EVENT_SUMMON_ZOMBIE, 10000);
            events.ScheduleEvent(EVENT_CAN_EAT_ZOMBIE, 1000);
        }

        void JustSummoned(Creature* summon) override
        {
            if (summon->GetEntry() == NPC_ZOMBIE_CHOW)
            {
                summon->AI()->AttackStart(me);
            }
            summons.Summon(summon);
        }

        void SummonedCreatureDies(Creature* cr, Unit*) override { summons.Despawn(cr); }

        void KilledUnit(Unit* who) override
        {
            if (me->IsAlive() && who->GetEntry() == NPC_ZOMBIE_CHOW)
            {
                me->ModifyHealth(int32(me->GetMaxHealth() * 0.05f));
            }
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

        bool SelectPlayerInRoom()
        {
            if (me->IsInCombat())
                return false;

            Map::PlayerList const& pList = me->GetMap()->GetPlayers();
            for (const auto& itr : pList)
            {
                Player* player = itr.GetSource();
                if (!player || !player->IsAlive())
                    continue;

                if (player->GetPositionZ() > 300.0f || me->GetExactDist(player) > 50.0f)
                    continue;

                AttackStart(player);
                return true;
            }
            return false;
        }

        void UpdateAI(uint32 diff) override
        {
            if (!UpdateVictimWithGaze() && !SelectPlayerInRoom())
                return;

            events.Update(diff);
            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            switch (events.ExecuteEvent())
            {
            case EVENT_BERSERK:
                me->CastSpell(me, SPELL_BERSERK, true);
                break;
            case EVENT_ENRAGE:
            {
                Talk(EMOTE_ENRAGE);
                int32 bp1 = 99; // Enrage melee haste
                int32 bp2 = 49; // Enrage damage percent
                me->CastCustomSpell(me, SPELL_ENRAGE, &bp1, &bp2, 0, true);
                events.RepeatEvent(22000);
                break;
            }
            case EVENT_MORTAL_WOUND:
                me->CastSpell(me->GetVictim(), SPELL_MORTAL_WOUND, false);
                events.RepeatEvent(10000);
                break;
            case EVENT_DECIMATE:
                Talk(EMOTE_DECIMATE);
                me->CastSpell(me, SPELL_DECIMATE, false);
                // Apply Decimate effect to zombies
                {
                    std::list<Creature*> zombies;
                    me->GetCreatureListWithEntryInGrid(zombies, NPC_ZOMBIE_CHOW, 150.0f);
                    for (Creature* zombie : zombies)
                    {
                        if (zombie->IsAlive())
                        {
                            uint32 reduceHp = uint32(zombie->GetMaxHealth() * 0.05f);
                            if (zombie->GetHealth() > reduceHp)
                                zombie->SetHealth(reduceHp); // Reduce HP to 5%
                            zombie->SetWalk(true); // Set to walk
                            zombie->GetMotionMaster()->MoveFollow(me, 0.0f, 0.0f, MOTION_SLOT_CONTROLLED); // Move to boss
                            zombie->SetReactState(REACT_PASSIVE); // Set to passive
                        }
                    }
                }
                events.RepeatEvent(105000);
                break;
            case EVENT_SUMMON_ZOMBIE:
            {
                uint8 rand = urand(0, 2);
                for (int32 i = 0; i < 1; ++i)
                {
                    // In 40 man raid, use all gates
                    me->SummonCreature(NPC_ZOMBIE_CHOW, zombiePos[urand(0, 2)]);
                    (rand == 2 ? rand = 0 : rand++);
                }
                events.RepeatEvent(10000);
                break;
            }
            case EVENT_CAN_EAT_ZOMBIE:
                events.RepeatEvent(1000);
                if (me->GetVictim() && me->GetVictim()->GetEntry() == NPC_ZOMBIE_CHOW && me->IsWithinMeleeRange(me->GetVictim()))
                {
                    if (me->GetVictim()->GetHealth() > 0) // Check if the zombie is alive
                    {
                        me->ModifyHealth(int32(me->GetMaxHealth() * 0.05f)); // Heal for 5% of max health
                        Talk(EMOTE_DEVOURS_ALL);
                        Unit::DealDamage(me, me->GetVictim(), me->GetVictim()->GetHealth(), nullptr, DIRECT_DAMAGE, SPELL_SCHOOL_MASK_NORMAL, nullptr, false); // Kill the zombie
                        return; // leave it to skip DoMeleeAttackIfReady
                    }
                }
                break;
            }
            DoMeleeAttackIfReady();
        }
    };
};

class spell_gluth_decimate : public SpellScript
{
    PrepareSpellScript(spell_gluth_decimate);

    bool Validate(SpellInfo const* /*spellInfo*/) override
    {
        return ValidateSpellInfo({ SPELL_DECIMATE_DAMAGE });
    }

    void HandleScriptEffect(SpellEffIndex /*effIndex*/)
    {
        if (Unit* unitTarget = GetHitUnit())
        {
            int32 damage = int32(unitTarget->GetHealth()) - int32(unitTarget->CountPctFromMaxHealth(5));
            if (damage <= 0)
                return;

            if (Creature* cTarget = unitTarget->ToCreature())
            {
                cTarget->SetWalk(true);
                cTarget->GetMotionMaster()->MoveFollow(GetCaster(), 0.0f, 0.0f, MOTION_SLOT_CONTROLLED);
                cTarget->SetReactState(REACT_PASSIVE);
                Unit::DealDamage(GetCaster(), cTarget, damage);
                return;
            }
            GetCaster()->CastCustomSpell(SPELL_DECIMATE_DAMAGE, SPELLVALUE_BASE_POINT0, damage, unitTarget);
        }
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_gluth_decimate::HandleScriptEffect, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
    }
};

void AddSC_boss_gluth_40()
{
    new boss_gluth_40();
    RegisterSpellScript(spell_gluth_decimate);
}
