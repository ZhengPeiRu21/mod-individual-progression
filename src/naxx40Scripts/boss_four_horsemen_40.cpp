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
#include "SpellAuraEffects.h"
#include "SpellScript.h"
#include "naxxramas.h"

enum Spells
{
    SPELL_BERSERK                       = 26662,
    // Marks
    SPELL_MARK_OF_KORTHAZZ              = 28832,
    SPELL_MARK_OF_BLAUMEUX              = 28833,
    SPELL_MARK_OF_MOGRAINE              = 28834, // TODO: Requires Spell DBC Edit
    SPELL_MARK_OF_ZELIEK                = 28835,
    SPELL_MARK_DAMAGE                   = 28836,
    // Korth'azz
    SPELL_KORTHAZZ_METEOR_10            = 28884,
    SPELL_KORTHAZZ_METEOR_25            = 57467,
    // Blaumeux
    SPELL_BLAUMEUX_SHADOW_BOLT_10       = 57374,
    SPELL_BLAUMEUX_SHADOW_BOLT_25       = 57464,
    SPELL_BLAUMEUX_VOID_ZONE_10         = 28863,
    SPELL_BLAUMEUX_VOID_ZONE_25         = 57463,
    // Zeliek
    SPELL_ZELIEK_HOLY_WRATH_10          = 28883,
    SPELL_ZELIEK_HOLY_WRATH_25          = 57466,
    SPELL_ZELIEK_HOLY_BOLT_10           = 57376,
    SPELL_ZELIEK_HOLY_BOLT_25           = 57465,
    // Mograine
    SPELL_RIVENDARE_UNHOLY_SHADOW_10    = 28882,
    SPELL_RIVENDARE_UNHOLY_SHADOW_25    = 57369
};

enum Events
{
    EVENT_MARK_CAST                     = 1,
    EVENT_PRIMARY_SPELL                 = 2,
    EVENT_SECONDARY_SPELL               = 3,
    EVENT_BERSERK                       = 4
};

enum Misc
{
    // Movement
    MOVE_PHASE_NONE                     = 0,
    MOVE_PHASE_STARTED                  = 1,
    MOVE_PHASE_FINISHED                 = 2,
    // Horseman
    HORSEMAN_ZELIEK                     = 0,
    HORSEMAN_BLAUMEUX                   = 1,
    HORSEMAN_MOGRAINE                   = 2,
    HORSEMAN_KORTHAZZ                   = 3
};

enum FourHorsemen
{
    SAY_AGGRO       = 0,
    SAY_TAUNT       = 1,
    SAY_SPECIAL     = 2,
    SAY_SLAY        = 3,
    SAY_DEATH       = 4,
    EMOTE_RAGECAST  = 7
};

// MARKS
const uint32 TABLE_SPELL_MARK[4] = {SPELL_MARK_OF_ZELIEK, SPELL_MARK_OF_BLAUMEUX, SPELL_MARK_OF_MOGRAINE, SPELL_MARK_OF_KORTHAZZ};

const Position WaypointPositions[12] =
{
    // Thane waypoints
    {2542.3f, -2984.1f, 241.49f, 5.362f},
    {2547.6f, -2999.4f, 241.34f, 5.049f},
    {2542.9f, -3015.0f, 241.35f, 4.654f},
    // Lady waypoints
    {2498.3f, -2961.8f, 241.28f, 3.267f},
    {2487.7f, -2959.2f, 241.28f, 2.890f},
    {2469.4f, -2947.6f, 241.28f, 2.576f},
    // Mograine waypoints
    {2553.8f, -2968.4f, 241.33f, 5.757f},
    {2564.3f, -2972.5f, 241.33f, 5.890f},
    {2583.9f, -2971.6f, 241.35f, 0.008f},
    // Sir waypoints
    {2534.5f, -2921.7f, 241.53f, 1.363f},
    {2523.5f, -2902.8f, 241.28f, 2.095f},
    {2517.8f, -2896.6f, 241.28f, 2.315f}
};

class boss_four_horsemen_40 : public CreatureScript
{
public:
    boss_four_horsemen_40() : CreatureScript("boss_four_horsemen_40") { }

    CreatureAI* GetAI(Creature* pCreature) const override
    {
        return GetNaxxramasAI<boss_four_horsemen_40AI>(pCreature);
    }

    struct boss_four_horsemen_40AI : public BossAI
    {
        explicit boss_four_horsemen_40AI(Creature* c) : BossAI(c, BOSS_HORSEMAN)
        {
            pInstance = me->GetInstanceScript();
            switch (me->GetEntry())
            {
                case NPC_SIR_ZELIEK_40:
                    horsemanId = HORSEMAN_ZELIEK;
                    break;
                case NPC_LADY_BLAUMEUX_40:
                    horsemanId = HORSEMAN_BLAUMEUX;
                    break;
                case NPC_HIGHLORD_MOGRAINE_40:
                    horsemanId = HORSEMAN_MOGRAINE;
                    break;
                case NPC_THANE_KORTHAZZ_40:
                    horsemanId = HORSEMAN_KORTHAZZ;
                    break;
            }
        }

        EventMap events;
        InstanceScript* pInstance;
        uint8 currentWaypoint{};
        uint8 movementPhase{};
        uint8 horsemanId;

        void MoveToCorner()
        {
            switch(me->GetEntry())
            {
                case NPC_THANE_KORTHAZZ_40:
                    currentWaypoint = 0;
                    break;
                case NPC_LADY_BLAUMEUX_40:
                    currentWaypoint = 3;
                    break;
                case NPC_HIGHLORD_MOGRAINE_40:
                    currentWaypoint = 6;
                    break;
                case NPC_SIR_ZELIEK_40:
                    currentWaypoint = 9;
                    break;
            }
            me->GetMotionMaster()->MovePoint(currentWaypoint, WaypointPositions[currentWaypoint]);
        }

        bool IsInRoom()
        {
            if (me->GetExactDist(2535.1f, -2968.7f, 241.3f) > 100.0f)
            {
                EnterEvadeMode();
                return false;
            }
            return true;
        }

        void Reset() override
        {
            BossAI::Reset();
            me->SetPosition(me->GetHomePosition());
            movementPhase = MOVE_PHASE_NONE;
            currentWaypoint = 0;
            me->SetReactState(REACT_AGGRESSIVE);
            events.Reset();
            events.RescheduleEvent(EVENT_MARK_CAST, 24000);
            events.RescheduleEvent(EVENT_BERSERK, 600000);
            if ((me->GetEntry() != NPC_LADY_BLAUMEUX_40 && me->GetEntry() != NPC_SIR_ZELIEK_40))
            {
                events.RescheduleEvent(EVENT_PRIMARY_SPELL, 10000 + rand() % 5000);
            }
            else
            {
                events.RescheduleEvent(EVENT_SECONDARY_SPELL, 15000);
            }
            if (pInstance)
            {
                if (GameObject* go = me->GetMap()->GetGameObject(pInstance->GetGuidData(DATA_HORSEMEN_GATE)))
                {
                    if (pInstance->GetBossState(BOSS_GOTHIK) == DONE)
                    {
                        go->SetGoState(GO_STATE_ACTIVE);
                    }
                }
            }
        }

        void MovementInform(uint32 type, uint32 id) override
        {
            if (type != POINT_MOTION_TYPE)
                return;

            // final waypoint
            if (id % 3 == 2)
            {
                movementPhase = MOVE_PHASE_FINISHED;
                me->SetReactState(REACT_AGGRESSIVE);
                me->SetInCombatWithZone();
                if (!UpdateVictim())
                {
                    EnterEvadeMode();
                    return;
                }
                if (me->GetEntry() == NPC_LADY_BLAUMEUX_40 || me->GetEntry() == NPC_SIR_ZELIEK_40)
                {
                    me->GetMotionMaster()->Clear(false);
                    me->GetMotionMaster()->MoveIdle();
                }
                return;
            }
            currentWaypoint = id + 1;
        }

        void AttackStart(Unit* who) override
        {
            if (movementPhase == MOVE_PHASE_FINISHED)
            {
                if (me->GetEntry() == NPC_LADY_BLAUMEUX_40 || me->GetEntry() == NPC_SIR_ZELIEK_40)
                {
                    me->Attack(who, false);
                }
                else
                {
                    ScriptedAI::AttackStart(who);
                }
            }
        }

        void KilledUnit(Unit* who) override
        {
            if (who->GetTypeId() != TYPEID_PLAYER)
                return;

            Talk(SAY_SLAY);
            if (pInstance)
            {
                pInstance->SetData(DATA_IMMORTAL_FAIL, 0);
            }
        }

        void JustDied(Unit*  killer) override
        {
            BossAI::JustDied(killer);
            if (pInstance)
            {
                if (pInstance->GetBossState(BOSS_HORSEMAN) == DONE)
                {
                    if (!me->GetMap()->GetPlayers().IsEmpty())
                    {
                        if (Player* player = me->GetMap()->GetPlayers().getFirst()->GetSource())
                        {
                            if (GameObject* chest = player->SummonGameObject(GO_HORSEMEN_CHEST_40, 2514.8f, -2944.9f, 245.55f, 5.51f, 0, 0, 0, 0, 0))
                            {
                                chest->SetLootRecipient(me);
                            }
                        }
                    }
                    if (GameObject* go = me->GetMap()->GetGameObject(pInstance->GetGuidData(DATA_HORSEMEN_GATE)))
                    {
                        go->SetGoState(GO_STATE_ACTIVE);
                    }
                }
            }
            Talk(SAY_DEATH);
        }

        void JustEngagedWith(Unit* who) override
        {
            BossAI::JustEngagedWith(who);
            if (movementPhase == MOVE_PHASE_NONE)
            {
                Talk(SAY_AGGRO);
                me->SetReactState(REACT_PASSIVE);
                movementPhase = MOVE_PHASE_STARTED;
                me->SetSpeed(MOVE_RUN, me->GetSpeedRate(MOVE_RUN), true);
                MoveToCorner();
            }
            if (pInstance)
            {
                if (GameObject* go = me->GetMap()->GetGameObject(pInstance->GetGuidData(DATA_HORSEMEN_GATE)))
                {
                    go->SetGoState(GO_STATE_READY);
                }
            }
        }

        void UpdateAI(uint32 diff) override
        {
            if (movementPhase == MOVE_PHASE_STARTED && currentWaypoint)
            {
                me->GetMotionMaster()->MovePoint(currentWaypoint, WaypointPositions[currentWaypoint]);
                currentWaypoint = 0;
            }

            if (!IsInRoom())
                return;

            if (movementPhase < MOVE_PHASE_FINISHED || !UpdateVictim())
                return;

            events.Update(diff);
            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            switch (events.ExecuteEvent())
            {
                case EVENT_MARK_CAST:
                    me->CastSpell(me, TABLE_SPELL_MARK[horsemanId], false);
                    events.RepeatEvent((me->GetEntry() == NPC_LADY_BLAUMEUX_40 || me->GetEntry() == NPC_SIR_ZELIEK_40) ? 15000 : 12000);
                    return;
                case EVENT_BERSERK:
                    Talk(SAY_SPECIAL);
                    me->CastSpell(me, SPELL_BERSERK, true);
                    return;
                case EVENT_PRIMARY_SPELL:
                    Talk(SAY_TAUNT);
                    if (horsemanId == HORSEMAN_ZELIEK)
                    {
                        int32 bp0 = 1109; // spell not used in vanilla, reduced damage from ~2.5 to ~1.2k
                        me->CastCustomSpell(me->GetVictim(), SPELL_ZELIEK_HOLY_BOLT_10, &bp0, 0, 0, false);
                    }
                    else if (horsemanId == HORSEMAN_BLAUMEUX)
                    {
                        int32 bp0 = 1109; // spell not used in vanilla, reduced damage from ~2.5 to ~1.2k
                        me->CastCustomSpell(me->GetVictim(), SPELL_BLAUMEUX_SHADOW_BOLT_10, &bp0, 0, 0, false);
                    }
                    else if (horsemanId == HORSEMAN_MOGRAINE)
                    {
                        // same dbc as vanilla. Shadow damage instead of fire
                        me->CastSpell(me->GetVictim(), SPELL_RIVENDARE_UNHOLY_SHADOW_10, false);
                    }
                    else // HORSEMAN_KORTHAZZ
                    {
                        int32 bp0 = 12824; // 14.5k to 13.5k
                        me->CastCustomSpell(me->GetVictim(), SPELL_KORTHAZZ_METEOR_10, &bp0, 0, 0, false);
                    }
                    events.RepeatEvent(15000);
                    return;
                case EVENT_SECONDARY_SPELL:
                    if (horsemanId == HORSEMAN_ZELIEK)
                    {
                        int32 bp0 = 443;
                        CustomSpellValues values;
                        values.AddSpellMod(SPELLVALUE_BASE_POINT0, bp0);
                        values.AddSpellMod(SPELLVALUE_MAX_TARGETS, 50); // 30yd
                        me->CastCustomSpell(SPELL_ZELIEK_HOLY_WRATH_10, values, me->GetVictim(), TRIGGERED_NONE, nullptr, nullptr, ObjectGuid::Empty);
                    }
                    else // HORSEMAN_BLAUMEUX
                    {
                        me->CastSpell(me->GetVictim(), SPELL_BLAUMEUX_VOID_ZONE_10, false);
                    }
                    events.RepeatEvent(15000);
                    return;
            }

            if ((me->GetEntry() == NPC_LADY_BLAUMEUX_40 || me->GetEntry() == NPC_SIR_ZELIEK_40))
            {
                if (Unit* target = SelectTarget(SelectTargetMethod::MaxDistance, 0, 45.0f, true))
                {
                    if (horsemanId == HORSEMAN_ZELIEK)
                    {
                        int32 bp0 = 1109; // spell not used in vanilla, reduced damage from ~2.5 to ~1.2k
                        me->CastCustomSpell(me->GetVictim(), SPELL_ZELIEK_HOLY_BOLT_10, &bp0, 0, 0, false);
                    }
                    else if (horsemanId == HORSEMAN_BLAUMEUX)
                    {
                        int32 bp0 = 1109; // spell not used in vanilla, reduced damage from ~2.5 to ~1.2k
                        me->CastCustomSpell(me->GetVictim(), SPELL_BLAUMEUX_SHADOW_BOLT_10, &bp0, 0, 0, false);
                    }
                }
            }
            else
            {
                DoMeleeAttackIfReady();
            }
        }
    };
};

class spell_four_horsemen_mark : public SpellScriptLoader
{
public:
    spell_four_horsemen_mark() : SpellScriptLoader("spell_four_horsemen_mark") { }

    class spell_four_horsemen_mark_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_four_horsemen_mark_AuraScript);

        void OnApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            if (Unit* caster = GetCaster())
            {
                int32 damage;

                switch (GetStackAmount())
                {
                    case 1:
                        damage = 0;
                        break;
                    case 2:
                        damage = 500;
                        break;
                    case 3:
                        damage = 1500;
                        break;
                    case 4:
                        damage = 4000;
                        break;
                    case 5:
                        damage = 12000;
                        break;
                    case 6:
                        damage = 20000;
                        break;
                    default:
                        damage = 20000 + 1000 * (GetStackAmount() - 7);
                        break;
                }

                if (caster->GetMap()->GetDifficulty() == RAID_DIFFICULTY_10MAN_HEROIC)
                {
                    switch (GetStackAmount())
                    {
                        case 1: damage =     0; break;
                        case 2: damage =   250; break;
                        case 3: damage =  1000; break;
                        case 4: damage =  3000; break;
                        default:
                            damage = 1000 * GetStackAmount();
                            break;
                    }
                }

                if (damage)
                {
                    caster->CastCustomSpell(SPELL_MARK_DAMAGE, SPELLVALUE_BASE_POINT0, damage, GetTarget());
                }
            }
        }

        void Register() override
        {
            AfterEffectApply += AuraEffectApplyFn(spell_four_horsemen_mark_AuraScript::OnApply, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL_OR_REAPPLY_MASK);
        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_four_horsemen_mark_AuraScript();
    }
};

class spell_four_horsemen_consumption : public SpellScript
{
    PrepareSpellScript(spell_four_horsemen_consumption);

    void CalculateDamage(SpellEffIndex /*effIndex*/)
    {
        Map* map = GetCaster()->GetMap();
        if (!map)
        {
            return;
        }
        int32 value = 0;
        if (map->GetDifficulty() == RAID_DIFFICULTY_25MAN_NORMAL) // NAXX25 N
        {
            value = urand(4500, 4700);
        }
        else if (map->GetId() == 533) // NAXX10 N
        {
            if (map->GetDifficulty() == RAID_DIFFICULTY_10MAN_NORMAL)
            {
                value = urand(3000, 3200);
            }
            else
            {
                value = urand(3960, 4840); // NAXX40
            }
        }
        else if (map->GetId() == 532) // Karazhan
        {
            value = urand(1110, 1310);
        }
        if (value)
        {
            SetEffectValue(value);
        }
    }

    void Register() override
    {
        OnEffectLaunchTarget += SpellEffectFn(spell_four_horsemen_consumption::CalculateDamage, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
    }
};

void AddSC_boss_four_horsemen_40()
{
    new boss_four_horsemen_40();
    new spell_four_horsemen_mark();
    RegisterSpellScript(spell_four_horsemen_consumption);
}
