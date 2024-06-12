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
    SPELL_BERSERK                    = 26662,
    SPELL_SHIELDWALL                 = 29061, // Shield Wall - All 4 horsemen will shield wall at 50% hp and 20% hp for 20 seconds
    SPELL_SUMMON_PLAYER              = 25104,
    // Marks
    SPELL_MARK_OF_KORTHAZZ           = 28832,
    SPELL_MARK_OF_BLAUMEUX           = 28833,
    SPELL_MARK_OF_MOGRAINE           = 28834, // TODO: Requires Spell DBC Edit
    SPELL_MARK_OF_ZELIEK             = 28835,
    SPELL_MARK_DAMAGE                = 28836,
    // Korth'azz
    SPELL_KORTHAZZ_METEOR            = 28884,
    // Blaumeux
    SPELL_BLAUMEUX_SHADOW_BOLT       = 57374,
    SPELL_BLAUMEUX_VOID_ZONE         = 28863,
    // Zeliek
    SPELL_ZELIEK_HOLY_WRATH          = 28883,
    SPELL_ZELIEK_HOLY_BOLT           = 57376,
    // Mograine
    SPELL_RIVENDARE_UNHOLY_SHADOW    = 28882,
};

enum Events
{
    EVENT_MARK_CAST                     = 1,
    EVENT_PRIMARY_SPELL                 = 2,
    EVENT_SECONDARY_SPELL               = 3,
    EVENT_BERSERK                       = 4,
    EVENT_HEALTH_CHECK                  = 5
};

enum Misc
{
    // Horseman
    HORSEMAN_ZELIEK                     = 0,
    HORSEMAN_BLAUMEUX                   = 1,
    HORSEMAN_MOGRAINE                   = 2,
    HORSEMAN_KORTHAZZ                   = 3
};

enum Spirits
{
    // Spells
    SPELL_SUMMON_SPIRIT_ZELIEK    = 28934,
    SPELL_SUMMON_SPIRIT_BLAUMEUX  = 28931,
    SPELL_SUMMON_SPIRIT_MOGRAINE  = 28928,
    SPELL_SUMMON_SPIRIT_KORTHAZZ  = 28932,
    // NPCs
    NPC_SPIRIT_ZELIEK             = 16777,
    NPC_SPIRIT_BLAUMEUX           = 16776,
    NPC_SPIRIT_MOGRAINE           = 16775,
    NPC_SPIRIT_KORTHAZZ           = 16778
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
// SPIRITS
const uint32 TABLE_SPELL_SUMMON_SPIRIT[4] = {SPELL_SUMMON_SPIRIT_ZELIEK, SPELL_SUMMON_SPIRIT_BLAUMEUX, SPELL_SUMMON_SPIRIT_MOGRAINE, SPELL_SUMMON_SPIRIT_KORTHAZZ};

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
        uint8 horsemanId;
        bool doneFirstShieldWall;

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

            me->SetReactState(REACT_AGGRESSIVE);
            doneFirstShieldWall = false;
            events.Reset();
            events.RescheduleEvent(EVENT_MARK_CAST, 20000);
            events.RescheduleEvent(EVENT_BERSERK, 600000);
            summons.DespawnAll(); // despawn spirits
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

        void SpellHitTarget(Unit* target, SpellInfo const* spellInfo) override
        {
            if (spellInfo->Id == TABLE_SPELL_MARK[horsemanId])
            {
                DoModifyThreatByPercent(target, -50);
            }
        }

        void JustDied(Unit*  killer) override
        {
            BossAI::JustDied(killer);
            if (pInstance)
            {
                if (pInstance->GetBossState(BOSS_HORSEMAN) == DONE)
                {
                    if (Creature* spirit = GetClosestCreatureWithEntry(me, NPC_SPIRIT_ZELIEK, 200.0f))
                        spirit->DespawnOrUnsummon();
                    if (Creature* spirit = GetClosestCreatureWithEntry(me, NPC_SPIRIT_BLAUMEUX, 200.0f))
                        spirit->DespawnOrUnsummon();
                    if (Creature* spirit = GetClosestCreatureWithEntry(me, NPC_SPIRIT_MOGRAINE, 200.0f))
                        spirit->DespawnOrUnsummon();
                    if (Creature* spirit = GetClosestCreatureWithEntry(me, NPC_SPIRIT_KORTHAZZ, 200.0f))
                        spirit->DespawnOrUnsummon();
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
                else
                {
                    // Prevent spawning if last horseman killed
                    DoCastSelf(TABLE_SPELL_SUMMON_SPIRIT[horsemanId], true);
                }
            }
            Talk(SAY_DEATH);
        }

        void JustSummoned(Creature* summon) override
        {
            summons.Summon(summon);
            summons.DoZoneInCombat();
            summon->SetUnitFlag(UNIT_FLAG_DISABLE_MOVE);
        }

        void JustEngagedWith(Unit* who) override
        {
            BossAI::JustEngagedWith(who);
            Talk(SAY_AGGRO);
            me->SetReactState(REACT_AGGRESSIVE);
            me->SetInCombatWithZone();
            if (pInstance)
            events.ScheduleEvent(EVENT_HEALTH_CHECK, 1s);
            {
                if (GameObject* go = me->GetMap()->GetGameObject(pInstance->GetGuidData(DATA_HORSEMEN_GATE)))
                {
                    go->SetGoState(GO_STATE_READY);
                }
            }
        }

        void UpdateAI(uint32 diff) override
        {
            if (!IsInRoom())
                return;

            if (!UpdateVictim())
                return;

            if (Unit* victim = me->GetVictim())
            {
                if (!me->IsWithinDistInMap(victim, VISIBILITY_DISTANCE_NORMAL))
                    me->CastSpell(victim, SPELL_SUMMON_PLAYER, true);
            }

            events.Update(diff);
            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            switch (events.ExecuteEvent())
            {
                case EVENT_MARK_CAST:
                    me->CastSpell(me, TABLE_SPELL_MARK[horsemanId], false);
                    events.RepeatEvent(12000);
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
                        me->CastCustomSpell(me->GetVictim(), SPELL_ZELIEK_HOLY_BOLT, &bp0, 0, 0, false);
                    }
                    else if (horsemanId == HORSEMAN_BLAUMEUX)
                    {
                        int32 bp0 = 1109; // spell not used in vanilla, reduced damage from ~2.5 to ~1.2k
                        me->CastCustomSpell(me->GetVictim(), SPELL_BLAUMEUX_SHADOW_BOLT, &bp0, 0, 0, false);
                    }
                    else if (horsemanId == HORSEMAN_MOGRAINE)
                    {
                        // same dbc as vanilla. Shadow damage instead of fire
                        me->CastSpell(me->GetVictim(), SPELL_RIVENDARE_UNHOLY_SHADOW, false);
                    }
                    else // HORSEMAN_KORTHAZZ
                    {
                        int32 bp0 = 12824; // 14.5k to 13.5k
                        me->CastCustomSpell(me->GetVictim(), SPELL_KORTHAZZ_METEOR, &bp0, 0, 0, false);
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
                        me->CastCustomSpell(SPELL_ZELIEK_HOLY_WRATH, values, me->GetVictim(), TRIGGERED_NONE, nullptr, nullptr, ObjectGuid::Empty);
                    }
                    else // HORSEMAN_BLAUMEUX
                    {
                        me->CastSpell(me->GetVictim(), SPELL_BLAUMEUX_VOID_ZONE, false);
                    }
                    events.RepeatEvent(15000);
                    return;
                case EVENT_HEALTH_CHECK:
                    if (!doneFirstShieldWall && me->GetHealthPct() <= 50.0f)
                    {
                        DoCastSelf(SPELL_SHIELDWALL, true);
                        doneFirstShieldWall = true;
                        events.Repeat(1s);
                        break;
                    }
                    if (doneFirstShieldWall && me->GetHealthPct() <= 20.0f)
                    {
                        if (!me->HasAura(SPELL_SHIELDWALL)) // prevent refresh of first shield wall
                        {
                            DoCastSelf(SPELL_SHIELDWALL, true);
                        }
                        break;
                    }
                    events.Repeat(1s);
                    return;
            }
            DoMeleeAttackIfReady();
        }
    };
};

class spell_four_horsemen_mark_aura : public AuraScript
{
    PrepareAuraScript(spell_four_horsemen_mark_aura);

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
        AfterEffectApply += AuraEffectApplyFn(spell_four_horsemen_mark_aura::OnApply, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL_OR_REAPPLY_MASK);
    }
};

void AddSC_boss_four_horsemen_40()
{
    new boss_four_horsemen_40();
    RegisterSpellScript(spell_four_horsemen_mark_aura);
}
