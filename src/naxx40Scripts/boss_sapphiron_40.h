#ifndef BOSS_SAPPHIRON_40_H_
#define BOSS_SAPPHIRON_40_H_

#include "Player.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellScript.h"
#include "naxxramas.h"
#include "boss_sapphiron.h"

namespace Sapphiron_40 {

enum Yells
{
    EMOTE_AIR_PHASE         = 0,
    EMOTE_GROUND_PHASE      = 1,
    EMOTE_BREATH            = 2,
    EMOTE_ENRAGE            = 3
};

enum Spells
{
    // Fight
    SPELL_CLEAVE                    = 19983,
    SPELL_TAIL_SWEEP                = 15847,
    SPELL_LIFE_DRAIN                = 28542,
    SPELL_BERSERK                   = 26662,

    // Ice block
    SPELL_ICEBOLT_CAST              = 28526,
    SPELL_ICEBOLT_TRIGGER           = 28522,
    SPELL_FROST_MISSILE             = 30101,
    SPELL_FROST_EXPLOSION           = 28524,

    // 10 and 25 Man Spells
    SPELL_TAIL_SWEEP_10             = 55697,
    SPELL_TAIL_SWEEP_25             = 55696,
    SPELL_LIFE_DRAIN_10             = 28542,
    SPELL_LIFE_DRAIN_25             = 55665,
};

enum Misc
{
    GO_ICE_BLOCK                    = 181247,
    NPC_BLIZZARD                    = 16474,

    POINT_CENTER                    = 1
};

enum Events
{
    EVENT_BERSERK                   = 1,
    EVENT_CLEAVE                    = 2,
    EVENT_TAIL_SWEEP                = 3,
    EVENT_LIFE_DRAIN                = 4,
    EVENT_BLIZZARD                  = 5,
    EVENT_FLIGHT_START              = 6,
    EVENT_FLIGHT_LIFTOFF            = 7,
    EVENT_FLIGHT_ICEBOLT            = 8,
    EVENT_FLIGHT_BREATH             = 9,
    EVENT_FLIGHT_SPELL_EXPLOSION    = 10,
    EVENT_FLIGHT_START_LAND         = 11,
    EVENT_LAND                      = 12,
    EVENT_GROUND                    = 13,
    EVENT_HUNDRED_CLUB              = 14
};

// Unlike other Naxx 40 scripts, this overwrites all versions of the UI
// This is due to AI casting used in the spell script

class boss_sapphiron_40 : public CreatureScript
{
private:
    static bool isNaxx40Sapp(uint32 entry)
    {
        return (entry == NPC_SAPPHIRON_40);
    }
public:
    boss_sapphiron_40() : CreatureScript("boss_sapphiron_40") { }

    CreatureAI* GetAI(Creature* pCreature) const override
    {
        return GetNaxxramasAI<boss_sapphiron_40AI>(pCreature);
    }

    struct boss_sapphiron_40AI : public Sapphiron::boss_sapphiron::boss_sapphironAI
    {
        explicit boss_sapphiron_40AI(Creature* c) : Sapphiron::boss_sapphiron::boss_sapphironAI(c) {}

        void InitializeAI() override
        {
            if (instance->GetBossState(BOSS_SAPPHIRON) != DONE)
            {
                me->SummonGameObject(GO_SAPPHIRON_BIRTH, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), 0, 0, 0, 0, 0, 0);
                me->SetVisible(false);
                me->SetUnitFlag(UNIT_FLAG_NON_ATTACKABLE);
                me->SetReactState(REACT_PASSIVE);
                ScriptedAI::InitializeAI();
            }
        }

        void UpdateAI(uint32 diff) override
        {
            if (spawnTimer)
            {
                spawnTimer += diff;
                if (spawnTimer >= 21500)
                {
                    me->SetVisible(true);
                    me->RemoveUnitFlag(UNIT_FLAG_NON_ATTACKABLE);
                    me->SetReactState(REACT_AGGRESSIVE);
                    spawnTimer = 0;
                }
                return;
            }

            if (!IsInRoom())
                return;

            if (!UpdateVictim())
                return;

            events.Update(diff);
            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            switch (events.ExecuteEvent())
            {
                case EVENT_BERSERK:
                    Talk(EMOTE_ENRAGE);
                    me->CastSpell(me, SPELL_BERSERK, true);
                    return;
                case EVENT_CLEAVE:
                    me->CastSpell(me->GetVictim(), SPELL_CLEAVE, false);
                    events.Repeat(10s);
                    return;
                case EVENT_TAIL_SWEEP:
                    me->CastSpell(me, RAID_MODE(SPELL_TAIL_SWEEP_10, SPELL_TAIL_SWEEP_25, SPELL_TAIL_SWEEP, SPELL_TAIL_SWEEP_25), false);
                    events.Repeat(10s);
                    return;
                case EVENT_LIFE_DRAIN:
                    if (isNaxx40Sapp(me->GetEntry()))
                    {
                        CustomSpellValues values;
                        int32 bp0 = 1700;
                        values.AddSpellMod(SPELLVALUE_BASE_POINT0, bp0);
                        values.AddSpellMod(SPELLVALUE_MAX_TARGETS, 5);
                        me->CastCustomSpell(SPELL_LIFE_DRAIN, values, me, TRIGGERED_NONE, nullptr, nullptr, ObjectGuid::Empty);
                    }
                    else
                    {
                        me->CastCustomSpell(RAID_MODE(SPELL_LIFE_DRAIN_10, SPELL_LIFE_DRAIN_25), SPELLVALUE_MAX_TARGETS, RAID_MODE(2, 5), me, false);
                    }
                    events.Repeat(24s);
                    return;
                case EVENT_BLIZZARD:
                    {
                        Creature* cr;
                        if (Unit* target = SelectTarget(SelectTargetMethod::Random, 0, 40.0f, true))
                        {
                            cr = me->SummonCreature(NPC_BLIZZARD, *target, TEMPSUMMON_TIMED_DESPAWN, 16000);
                        }
                        else
                        {
                            cr = me->SummonCreature(NPC_BLIZZARD, *me, TEMPSUMMON_TIMED_DESPAWN, 16000);
                        }
                        if (cr)
                        {
                            cr->GetMotionMaster()->MoveRandom(40);
                        }
                        events.Repeat(RAID_MODE(8000ms, 6500ms, 6500ms, 6500ms));
                        return;
                    }
                case EVENT_FLIGHT_START:
                    if (me->HealthBelowPct(11))
                    {
                        return;
                    }
                    events.Repeat(45s);
                    events.DelayEvents(35s);
                    me->SetReactState(REACT_PASSIVE);
                    me->AttackStop();
                    float x, y, z, o;
                    me->GetHomePosition(x, y, z, o);
                    me->GetMotionMaster()->MovePoint(POINT_CENTER, x, y, z);
                    return;
                case EVENT_FLIGHT_LIFTOFF:
                    Talk(EMOTE_AIR_PHASE);
                    me->GetMotionMaster()->MoveIdle();
                    me->SendMeleeAttackStop(me->GetVictim());
                    me->HandleEmoteCommand(EMOTE_ONESHOT_LIFTOFF);
                    me->SetDisableGravity(true);
                    currentTarget.Clear();
                    events.ScheduleEvent(EVENT_FLIGHT_ICEBOLT, 3s);
                    iceboltCount = RAID_MODE(2, 3, 3, 3);
                    return;
                case EVENT_FLIGHT_ICEBOLT:
                    {
                        if (currentTarget)
                        {
                            if (Unit* target = ObjectAccessor::GetUnit(*me, currentTarget))
                            {
                                me->SummonGameObject(GO_ICE_BLOCK, target->GetPositionX(), target->GetPositionY(), target->GetPositionZ(), target->GetOrientation(), 0.0f, 0.0f, 0.0f, 0.0f, 0);
                            }
                        }

                        std::vector<Unit*> targets;
                        auto i = me->GetThreatMgr().GetThreatList().begin();
                        for (; i != me->GetThreatMgr().GetThreatList().end(); ++i)
                        {
                            if ((*i)->getTarget()->IsPlayer())
                            {
                                bool inList = false;
                                if (!blockList.empty())
                                {
                                    for (GuidList::const_iterator itr = blockList.begin(); itr != blockList.end(); ++itr)
                                    {
                                        if ((*i)->getTarget()->GetGUID() == *itr)
                                        {
                                            inList = true;
                                            break;
                                        }
                                    }
                                }
                                if (!inList)
                                {
                                    targets.push_back((*i)->getTarget());
                                }
                            }
                        }

                        if (!targets.empty() && iceboltCount)
                        {
                            auto itr = targets.begin();
                            advance(itr, urand(0, targets.size() - 1));
                            me->CastSpell(*itr, SPELL_ICEBOLT_CAST, false);
                            blockList.push_back((*itr)->GetGUID());
                            currentTarget = (*itr)->GetGUID();
                            --iceboltCount;
                            events.ScheduleEvent(EVENT_FLIGHT_ICEBOLT, Seconds(uint32(me->GetExactDist(*itr) / 13.0f)));
                        }
                        else
                        {
                            events.ScheduleEvent(EVENT_FLIGHT_BREATH, 1s);
                        }
                        return;
                    }
                case EVENT_FLIGHT_BREATH:
                    currentTarget.Clear();
                    Talk(EMOTE_BREATH);
                    me->CastSpell(me, SPELL_FROST_MISSILE, false);
                    events.ScheduleEvent(EVENT_FLIGHT_SPELL_EXPLOSION, 8500ms);
                    return;
                case EVENT_FLIGHT_SPELL_EXPLOSION:
                    me->CastSpell(me, SPELL_FROST_EXPLOSION, true);
                    events.ScheduleEvent(EVENT_FLIGHT_START_LAND, 3s);
                    return;
                case EVENT_FLIGHT_START_LAND:
                    if (!blockList.empty())
                    {
                        for (GuidList::const_iterator itr = blockList.begin(); itr != blockList.end(); ++itr)
                        {
                            if (Unit* block = ObjectAccessor::GetUnit(*me, *itr))
                            {
                                block->RemoveAurasDueToSpell(SPELL_ICEBOLT_TRIGGER);
                            }
                        }
                    }
                    blockList.clear();
                    me->RemoveAllGameObjects();
                    events.ScheduleEvent(EVENT_LAND, 1s);
                    return;
                case EVENT_LAND:
                    me->HandleEmoteCommand(EMOTE_ONESHOT_LAND);
                    me->SetDisableGravity(false);
                    events.ScheduleEvent(EVENT_GROUND, 1500ms);
                    return;
                case EVENT_GROUND:
                    Talk(EMOTE_GROUND_PHASE);
                    me->SetReactState(REACT_AGGRESSIVE);
                    me->SetInCombatWithZone();
                    return;
                case EVENT_HUNDRED_CLUB:
                    {
                        Map::PlayerList const& pList = me->GetMap()->GetPlayers();
                        for (auto const& itr : pList)
                        {
                            if (itr.GetSource()->GetResistance(SPELL_SCHOOL_FROST) > 100)
                            {
                                instance->SetData(DATA_HUNDRED_CLUB, 0);
                                return;
                            }
                        }
                        events.Repeat(5s);
                        return;
                    }
            }
            DoMeleeAttackIfReady();
        }
    };
};

// This will overwrite the declared 10 and 25 man frost explosion to handle all versions of the spell script
class spell_sapphiron_frost_explosion : public SpellScript
{
    PrepareSpellScript(spell_sapphiron_frost_explosion);

    void FilterTargets(std::list<WorldObject*>& targets)
    {
        Unit* caster = GetCaster();
        auto* creature = caster ? caster->ToCreature() : nullptr;
        if (!creature)
            return;

        auto* ai = CAST_AI(boss_sapphiron_40::boss_sapphiron_40AI, creature->AI());
        if (!ai)
            return;

        std::list<WorldObject*> tmplist;
        for (WorldObject* target : targets)
        {
            if (target && ai->IsValidExplosionTarget(target))
                tmplist.push_back(target);
        }

        targets.swap(tmplist);
    }

    void Register() override
    {
        OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_sapphiron_frost_explosion::FilterTargets, EFFECT_0, TARGET_UNIT_DEST_AREA_ENEMY);
    }
};

}

#endif
