/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "Player.h"
#include "ScriptMgr.h"
// #include "CreatureScript.h"
#include "ScriptedCreature.h"

enum BlackUrn
{
    ITEM_BLACKENED_URN = 24140
};

enum Texts
{
    SAY_KILL = 0,
    SAY_RANDOM = 1,
    SAY_DISARMED = 2,
    SAY_MIDNIGHT_KILL = 3,
    SAY_APPEAR = 4,
    SAY_MOUNT = 5,

    SAY_DEATH = 3,

    // Midnight
    EMOTE_CALL_ATTUMEN = 0,
    EMOTE_MOUNT_UP = 1
};

enum Spells
{
    // Attumen
    SPELL_SHADOWCLEAVE = 29832,
    SPELL_INTANGIBLE_PRESENCE = 29833,
    SPELL_SPAWN_SMOKE = 10389,
    SPELL_CHARGE = 29847,
    // Midnight
    SPELL_KNOCKDOWN = 29711,
    SPELL_SUMMON_ATTUMEN = 29714,
    SPELL_MOUNT = 29770,
    SPELL_SUMMON_ATTUMEN_MOUNTED = 29799
};

enum Phases
{
    PHASE_NONE,
    PHASE_ATTUMEN_ENGAGES,
    PHASE_MOUNTED
};

enum KZDataTypes
{
    DATA_ATTUMEN = 0,
    DATA_NIGHTBANE = 11,
    DATA_MIDNIGHT = 32,

    NPC_MIDNIGHT = 16151,
    NPC_NIGHTBANE = 17225,
    NPC_ATTUMEN_THE_HUNTSMAN = 15550,
    NPC_ATTUMEN_THE_HUNTSMAN_MOUNTED = 16152,
};

enum Actions
{
    ACTION_SET_MIDNIGHT_PHASE
};

class go_blackened_urn_70 : public GameObjectScript
{
public:
    go_blackened_urn_70() : GameObjectScript("go_blackened_urn") { }

    //if we summon an entity instead of using a sort of invisible entity, we could unsummon boss on reset
    //right now that doesn't work because of how the urn works
    bool OnGossipHello(Player* player, GameObject* go) override
    {

        if (player->HasItemCount(ITEM_BLACKENED_URN, 1))
        {
            if (InstanceScript* pInstance = go->GetInstanceScript())
            {
                if (pInstance->GetData(DATA_NIGHTBANE) != DONE && !go->FindNearestCreature(NPC_NIGHTBANE, 40.0f))
                    if (Creature* cr = ObjectAccessor::GetCreature(*player, pInstance->GetGuidData(DATA_NIGHTBANE)))
                        cr->AI()->DoAction(0 /*ACTION_START_INTRO */);
            }
        }
        else
        {
            player->SendSystemMessage("You must possess a Blackened Urn in order to summon Nightbane!");
        }
        return false;
    }
};


class boss_attumen_ipp : public CreatureScript
{
public:
    boss_attumen_ipp() : CreatureScript("boss_attumen") {}

    struct boss_attumen : public BossAI
    {
        boss_attumen(Creature* creature) : BossAI(creature, DATA_ATTUMEN)
        {
            Initialize();
        }

        void Initialize()
        {
            _phase = PHASE_NONE;
        }

        void Reset() override
        {
            Initialize();
        }

        void EnterEvadeMode(EvadeReason why) override
        {
            if (Creature* midnight = instance->GetCreature(DATA_MIDNIGHT))
            {
                midnight->AI()->EnterEvadeMode(why);
            }
            me->DespawnOrUnsummon();
        }

        void ScheduleTasks() override
        {
            scheduler.Schedule(15s, 25s, [this](TaskContext task)
                {
                    DoCastVictim(SPELL_SHADOWCLEAVE);
                    task.Repeat(15s, 25s);
                });
            scheduler.Schedule(25s, 45s, [this](TaskContext task)
                {
                    if (Unit* target = SelectTarget(SelectTargetMethod::Random, 0))
                    {
                        DoCast(target, SPELL_INTANGIBLE_PRESENCE);
                    }

                    task.Repeat(25s, 45s);
                });
            scheduler.Schedule(30s, 1min, [this](TaskContext task)
                {
                    Talk(SAY_RANDOM);
                    task.Repeat(30s, 1min);
                });
        }

        void DamageTaken(Unit* /*attacker*/, uint32& damage, DamageEffectType /*damageType*/, SpellSchoolMask /*damageSchoolMask*/) override
        {
            // Attumen does not die until he mounts Midnight, let health fall to 1 and prevent further damage.
            if (damage >= me->GetHealth() && _phase != PHASE_MOUNTED)
            {
                damage = me->GetHealth() - 1;
            }
            if (_phase == PHASE_ATTUMEN_ENGAGES && me->HealthBelowPctDamaged(25, damage))
            {
                _phase = PHASE_NONE;

                if (Creature* midnight = instance->GetCreature(DATA_MIDNIGHT))
                {
                    midnight->AI()->DoCastAOE(SPELL_MOUNT, true);
                }
            }
        }

        void KilledUnit(Unit* victim) override
        {
            if (victim->IsPlayer())
            {
                Talk(SAY_KILL);
            }
        }

        void JustSummoned(Creature* summon) override
        {
            if (summon->GetEntry() == NPC_ATTUMEN_THE_HUNTSMAN_MOUNTED)
            {
                if (Creature* midnight = instance->GetCreature(DATA_MIDNIGHT))
                {
                    if (midnight->GetHealth() > me->GetHealth())
                    {
                        summon->SetHealth(midnight->GetHealth());
                    }
                    else
                    {
                        summon->SetHealth(me->GetHealth());
                    }
                    summon->AI()->DoZoneInCombat();
                }
            }
            BossAI::JustSummoned(summon);
        }

        void IsSummonedBy(WorldObject* summoner) override
        {
            if (summoner->GetEntry() == NPC_MIDNIGHT)
            {
                _phase = PHASE_ATTUMEN_ENGAGES;
            }
            if (summoner->GetEntry() == NPC_ATTUMEN_THE_HUNTSMAN)
            {
                _phase = PHASE_MOUNTED;
                DoCastSelf(SPELL_SPAWN_SMOKE);
                scheduler.Schedule(10s, 25s, [this](TaskContext task)
                    {
                        Unit* target = nullptr;
                        std::vector<Unit*> target_list;
                        for (auto* ref : me->GetThreatMgr().GetUnsortedThreatList())
                        {
                            target = ref->GetVictim();
                            if (target && !target->IsWithinDist(me, 8.00f, false) && target->IsWithinDist(me, 25.0f, false))
                            {
                                target_list.push_back(target);
                            }
                            target = nullptr;
                        }
                        if (!target_list.empty())
                        {
                            target = Acore::Containers::SelectRandomContainerElement(target_list);
                        }
                        DoCast(target, SPELL_CHARGE);
                        task.Repeat(10s, 25s);
                    });
                scheduler.Schedule(25s, 35s, [this](TaskContext task)
                    {
                        DoCastVictim(SPELL_KNOCKDOWN);
                        task.Repeat(25s, 35s);
                    });
            }
        }

        void JustDied(Unit* /*killer*/) override
        {
            Talk(SAY_DEATH);
            if (Creature* midnight = instance->GetCreature(DATA_MIDNIGHT))
            {
                midnight->KillSelf();
            }
            _JustDied();
        }

        void UpdateAI(uint32 diff) override
        {
            if (_phase != PHASE_NONE && !UpdateVictim())
                return;

            scheduler.Update(diff, [this] { DoMeleeAttackIfReady(); });
        }

        void SpellHit(Unit* /*caster*/, SpellInfo const* spellInfo) override
        {
            if (spellInfo->Mechanic == MECHANIC_DISARM)
            {
                Talk(SAY_DISARMED);
            }

            if (spellInfo->Id == SPELL_MOUNT)
            {
                if (Creature* midnight = instance->GetCreature(DATA_MIDNIGHT))
                {
                    _phase = PHASE_NONE;
                    scheduler.CancelAll();
                    midnight->AI()->DoAction(ACTION_SET_MIDNIGHT_PHASE);
                    midnight->AttackStop();
                    midnight->RemoveAllAttackers();
                    midnight->SetReactState(REACT_PASSIVE);
                    midnight->GetMotionMaster()->MoveFollow(me, 2.0f, 0.0f);
                    midnight->AI()->Talk(EMOTE_MOUNT_UP);
                    me->AttackStop();
                    me->RemoveAllAttackers();
                    me->SetReactState(REACT_PASSIVE);
                    me->GetMotionMaster()->MoveFollow(midnight, 2.0f, 0.0f);
                    Talk(SAY_MOUNT);
                    scheduler.Schedule(1s, [this](TaskContext task)
                        {
                            if (Creature* midnight = instance->GetCreature(DATA_MIDNIGHT))
                            {
                                if (me->IsWithinDist2d(midnight, 5.0f))
                                {
                                    DoCastAOE(SPELL_SUMMON_ATTUMEN_MOUNTED);
                                    me->DespawnOrUnsummon(1s, 0s);
                                    midnight->SetVisible(false);
                                }
                                else
                                {
                                    midnight->GetMotionMaster()->MoveFollow(me, 2.0f, 0.0f);
                                    me->GetMotionMaster()->MoveFollow(midnight, 2.0f, 0.0f);
                                    task.Repeat();
                                }
                            }
                        });
                }
            }
        }

    private:
        uint8 _phase;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new typename boss_attumen(creature);
    }
};


class boss_midnight_ipp : public CreatureScript
{
public:
    boss_midnight_ipp() : CreatureScript("boss_midnight") {}

    struct boss_midnight : public BossAI
    {
        boss_midnight(Creature* creature) : BossAI(creature, DATA_ATTUMEN), _phase(PHASE_NONE) {}

        void Reset() override
        {
            BossAI::Reset();
            // me->SetVisible(true);
            me->SetReactState(REACT_DEFENSIVE);
        }

        bool CanMeleeHit()
        {
            return me->GetVictim() && (me->GetVictim()->GetPositionZ() < 53.0f || me->GetVictim()->GetDistance(me->GetHomePosition()) < 50.0f);
        }

        void DamageTaken(Unit* /*attacker*/, uint32& damage, DamageEffectType /*damageType*/, SpellSchoolMask /*damageSchoolMask*/) override
        {
            // Midnight never dies, let health fall to 1 and prevent further damage.
            if (damage >= me->GetHealth())
            {
                damage = me->GetHealth() - 1;
            }

            if (_phase == PHASE_NONE && me->HealthBelowPctDamaged(95, damage))
            {
                _phase = PHASE_ATTUMEN_ENGAGES;
                Talk(EMOTE_CALL_ATTUMEN);
                DoCastAOE(SPELL_SUMMON_ATTUMEN);
            }
            else if (_phase == PHASE_ATTUMEN_ENGAGES && me->HealthBelowPctDamaged(25, damage))
            {
                _phase = PHASE_MOUNTED;
                DoCastAOE(SPELL_MOUNT, true);
            }
        }

        void JustSummoned(Creature* summon) override
        {
            if (summon->GetEntry() == NPC_ATTUMEN_THE_HUNTSMAN)
            {
                summon->AI()->AttackStart(me->GetVictim());
                summon->AI()->Talk(SAY_APPEAR);
            }
            BossAI::JustSummoned(summon);
        }

        void DoAction(int32 actionId) override
        {
            if (actionId == ACTION_SET_MIDNIGHT_PHASE)
            {
                _phase = PHASE_MOUNTED;
            }
        }

        void JustEngagedWith(Unit* who) override
        {
            BossAI::JustEngagedWith(who);
            scheduler.Schedule(15s, 25s, [this](TaskContext task)
                {
                    DoCastVictim(SPELL_KNOCKDOWN);
                    task.Repeat(15s, 25s);
                });
        }

        void EnterEvadeMode(EvadeReason /*why*/) override
        {
            me->SetReactState(REACT_DEFENSIVE);
            me->SetFullHealth();

            // Stop combat and movement to ensure a clean teleport
            me->AttackStop();
            me->RemoveAllAttackers();
            me->GetMotionMaster()->MoveIdle();

            Position home = me->GetHomePosition();
            me->NearTeleportTo(home.GetPositionX(), home.GetPositionY(), home.GetPositionZ(), home.GetOrientation());
            me->SendTeleportPacket(home);

            _phase = PHASE_NONE;
            me->SetVisible(true);
        }

        void KilledUnit(Unit* /*victim*/) override
        {
            if (_phase == PHASE_ATTUMEN_ENGAGES)
            {
                if (Creature* attumen = instance->GetCreature(DATA_ATTUMEN))
                {
                    Talk(SAY_MIDNIGHT_KILL, attumen);
                }
            }
        }

        void UpdateAI(uint32 diff) override
        {
            if (_phase != PHASE_MOUNTED)
            {
                if (!UpdateVictim())
                {
                    return;
                }
                if (!CanMeleeHit())
                {
                    BossAI::EnterEvadeMode(EvadeReason::EVADE_REASON_BOUNDARY);
                }
            }
            scheduler.Update(diff, std::bind(&BossAI::DoMeleeAttackIfReady, this));
        }

    private:
        uint8 _phase;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new typename boss_midnight(creature);
    }
};

void AddSC_karazhan_70()
{
    new boss_attumen_ipp();
    new boss_midnight_ipp();
    new go_blackened_urn_70();
}
