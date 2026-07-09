/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "Player.h"
#include "ScriptMgr.h"
// #include "CreatureScript.h"
#include "ScriptedCreature.h"
#include "karazhan.h"

enum BlackUrn
{
    DATA_NIGHTBANE     = 11,
    NPC_NIGHTBANE      = 17225,
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

struct boss_midnight_ipp : public BossAI
{
    boss_midnight_ipp(Creature* creature) : BossAI(creature, DATA_ATTUMEN), _phase(PHASE_NONE) { }

    void Reset() override
    {
        BossAI::Reset();
        me->SetVisible(true);
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
        me->SetVisible(false);
        me->SetReactState(REACT_DEFENSIVE);

        // Stop combat and movement to ensure a clean teleport
        me->AttackStop();
        me->RemoveAllAttackers();
        me->GetMotionMaster()->MoveIdle();

        Position home = me->GetHomePosition();
        me->NearTeleportTo(home.GetPositionX(), home.GetPositionY(), home.GetPositionZ(), home.GetOrientation());
        me->SendTeleportPacket(home);

        _phase = PHASE_NONE;
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

void AddSC_karazhan_70()
{
    RegisterKarazhanCreatureAI(boss_midnight_ipp);
    new go_blackened_urn_70();
}
