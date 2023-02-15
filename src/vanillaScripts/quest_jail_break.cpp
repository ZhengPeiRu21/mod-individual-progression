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

#include "GossipDef.h"
#include "Player.h"
#include "ScriptedEscortAI.h"
#include "ScriptedGossip.h"
#include "SpellAuras.h"
#include "TaskScheduler.h"

#include "ProgressionSystem.h"

enum WindsorEnum
{
    QUEST_JAIL_BREAK = 4322,

    // Texts
    SAY_AGGRO = 0,
    SAY_START_ESCORT = 1,
    SAY_DUGHAL_CELL_1 = 2,
    SAY_DUGHAL_CELL_2 = 3,
    SAY_EQUIPMENT_1 = 4,
    SAY_EQUIPMENT_2 = 5,
    SAY_EQUIPMENT_3 = 6,
    SAY_EQUIPMENT_4 = 7,
    SAY_JAZ_CELL_1 = 8,
    SAY_JAZ_CELL_2 = 9,
    SAY_SHILL_CELL_1 = 10,
    SAY_SHILL_CELL_2 = 11,
    SAY_SHILL_CELL_3 = 12,
    SAY_CREST_CELL_1 = 13,
    SAY_CREST_CELL_2 = 14,
    SAY_TOBIAS_CELL_1 = 15,
    SAY_TOBIAS_CELL_2 = 16,
    SAY_FREE_1 = 17,
    SAY_FREE_2 = 18,

    //
    SAY_PRISONER_AGGRO = 0,

    SAY_TOBIAS_FREED = 0,
    SAY_TOBIAS_FREED_2 = 1,

    // Creatures
    NPC_MARSHAL_REGINALD_WINDSOR = 9682,
    NPC_SHILL_DINGER = 9678,
    NPC_CREST_KILLER = 9680,
    NPC_OGRABISI = 9677,
    NPC_DUGHAL_STORMWING = 9022,
    NPC_JAZ = 9681,
    NPC_TOBIAS_SEECHER = 9679,

    // Objects
    GO_SUPPLY_ROOM_DOOR = 170561,
    GO_SUPPLY_CRATE = 166872,

    EVENT_RESUME_ESCORT = 1,

    SPELL_WINDSOR_DEVOTION = 10293,
    SPELL_WINDSOR_FRENZY = 15167
};

class ActivePrisonerEvent : public BasicEvent
{
public:
    ActivePrisonerEvent(Creature* target) : _target(target) { }

    bool Execute(uint64 /*time*/, uint32 /*diff*/)
    {
        _target->SetFaction(16);
        return true;
    }

private:
    Creature* _target;
};

class npc_marshal_windsor : public CreatureScript
{
public:
    npc_marshal_windsor() : CreatureScript("npc_marshal_windsor") { }

    struct npc_marshal_windsorAI : public npc_escortAI
    {
        npc_marshal_windsorAI(Creature* creature) : npc_escortAI(creature)
        {
            _instance = creature->GetInstanceScript();
        }

        void SetGUID(ObjectGuid playerGUID, int32 /*id*/) override
        {
            _playerGUID = playerGUID;
            Start(true, false, playerGUID, 0, false, false);
            me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_NPC | UNIT_FLAG_IMMUNE_TO_PC);
        }

        void UpdateAI(uint32 diff) override
        {
            npc_escortAI::UpdateAI(diff);

            _events.Update(diff);
            _scheduler.Update(diff);

            while (uint32 eventId = _events.ExecuteEvent())
            {
                if (eventId == EVENT_RESUME_ESCORT)
                    SetEscortPaused(false);
            }

            DoMeleeAttackIfReady();
        }

        void AttackStart(Unit* who) override
        {
            if (who && !who->HasFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PC))
                npc_escortAI::AttackStart(who);
        }

        void DamageTaken(Unit* /*attacker*/, uint32& damage, DamageEffectType /*dmgEff*/, SpellSchoolMask /*mask*/) override
        {
            if (me->HealthBelowPctDamaged(40, damage) && !me->HasAura(SPELL_WINDSOR_FRENZY))
            {
                DoCastAOE(SPELL_WINDSOR_FRENZY);
            }
        }

        void DoAction(int32 actionId) override
        {
            if (actionId == 0)
            {
                SetEscortPaused(false);
            }
        }

        void JustEngagedWith(Unit* who) override
        {
            Talk(SAY_AGGRO, who);
        }

        void WaypointReached(uint32 id) override
        {
            switch (id)
            {
                case 1:
                    Talk(SAY_START_ESCORT);
                    me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PC);
                    break;
                case 7:
                    me->HandleEmoteCommand(EMOTE_ONESHOT_POINT);
                    if (Player* player = ObjectAccessor::FindPlayer(_playerGUID))
                    {
                        Talk(SAY_DUGHAL_CELL_1, player);
                    }

                    if (Creature* dughal = me->FindNearestCreature(NPC_DUGHAL_STORMWING, 100.0f))
                    {
                        if (!dughal->IsAlive())
                            dughal->Respawn(true);

                        dughal->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
                    }
                    SetEscortPaused(true);
                    break;
                case 9:
                    Talk(SAY_DUGHAL_CELL_2);
                    break;
                case 14:
                    if (Player* player = ObjectAccessor::FindPlayer(_playerGUID))
                        Talk(SAY_EQUIPMENT_1, player);
                    break;
                case 15:
                    me->HandleEmoteCommand(EMOTE_ONESHOT_USE_STANDING);
                    break;
                case 16:
                    if (GameObject* door = me->FindNearestGameObject(GO_SUPPLY_ROOM_DOOR, 50.0f))
                        _instance->DoUseDoorOrButton(door->GetGUID());
                    break;
                case 18:
                    Talk(SAY_EQUIPMENT_2);
                    break;
                case 19:
                    me->HandleEmoteCommand(EMOTE_ONESHOT_USE_STANDING);
                    break;
                case 20:
                    if (GameObject* crate = me->FindNearestGameObject(GO_SUPPLY_CRATE, 15.0f))
                        crate->SetGoState(GO_STATE_ACTIVE);
                    break;
                case 21:
                    me->UpdateEntry(NPC_MARSHAL_REGINALD_WINDSOR);
                    break;
                case 22:
                    SetEscortPaused(true);
                    _events.ScheduleEvent(EVENT_RESUME_ESCORT, 8000);
                    if (Player* player = ObjectAccessor::FindPlayer(_playerGUID))
                    {
                        me->GetMotionMaster()->Clear();
                        me->SetFacingToObject(player);
                        Talk(SAY_EQUIPMENT_3, player);
                        me->SetFaction(player->GetFaction());
                    }
                    DoCast(me, SPELL_WINDSOR_DEVOTION);
                    HandleDevotionAura();
                    break;
                case 23:
                    Talk(SAY_EQUIPMENT_4);
                    me->GetMotionMaster()->Clear();
                    if (Player* player = ObjectAccessor::FindPlayer(_playerGUID))
                        me->SetFacingToObject(player);
                    break;
                case 30:
                    me->HandleEmoteCommand(EMOTE_ONESHOT_POINT);
                    Talk(SAY_JAZ_CELL_1);
                    SchedulePrisonerActivation(NPC_OGRABISI);
                    SchedulePrisonerActivation(NPC_JAZ);
                    SetEscortPaused(true);

                    _scheduler.Schedule(5s, [this](TaskContext task)
                    {
                        Creature* ograbisi = me->FindNearestCreature(NPC_OGRABISI, 100.0f);
                        Creature* jaz = me->FindNearestCreature(NPC_JAZ, 100.0f);

                        if (jaz || ograbisi)
                        {
                            task.Repeat();
                        }
                        else
                        {
                            SetEscortPaused(false);
                        }
                    });

                    break;
                case 32:
                    Talk(SAY_JAZ_CELL_2);
                    break;
                case 35:
                    me->HandleEmoteCommand(EMOTE_ONESHOT_POINT);
                    Talk(SAY_SHILL_CELL_1);
                    SchedulePrisonerActivation(NPC_SHILL_DINGER);
                    SetEscortPaused(true);

                    _scheduler.Schedule(5s, [this](TaskContext task)
                    {
                        if (Creature* shill = me->FindNearestCreature(NPC_SHILL_DINGER, 50.0f))
                        {
                            task.Repeat();
                        }
                        else
                        {
                            SetEscortPaused(false);
                        }
                    });
                    break;
                case 37:
                    Talk(SAY_SHILL_CELL_2);
                    break;
                case 38:
                    Talk(SAY_SHILL_CELL_3);
                    break;
                case 45:
                    me->HandleEmoteCommand(EMOTE_ONESHOT_POINT);
                    Talk(SAY_CREST_CELL_1);
                    SchedulePrisonerActivation(NPC_CREST_KILLER);
                    SetEscortPaused(true);

                    _scheduler.Schedule(5s, [this](TaskContext task)
                    {
                        if (Creature* prisioner = me->FindNearestCreature(NPC_CREST_KILLER, 50.0f))
                        {
                            task.Repeat();
                        }
                        else
                        {
                            SetEscortPaused(false);
                        }
                    });
                    break;
                case 47:
                    Talk(SAY_CREST_CELL_2);
                    break;
                case 49:
                    if (Creature* tobias = me->FindNearestCreature(NPC_TOBIAS_SEECHER, 200.0f))
                    {
                        if (!tobias->IsAlive())
                        {
                            tobias->Respawn(true);
                        }

                        tobias->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
                    }
                    Talk(SAY_TOBIAS_CELL_1);
                    SetEscortPaused(true);
                    break;
                case 51:
                    if (Player* player = ObjectAccessor::FindPlayer(_playerGUID))
                    {
                        Talk(SAY_TOBIAS_CELL_2, player);
                    }
                    break;
                case 57:
                    Talk(SAY_FREE_1);
                    me->GetMotionMaster()->Clear();
                    if (Player* player = ObjectAccessor::FindPlayer(_playerGUID))
                    {
                        me->SetFacingToObject(player);
                    }
                    break;
                case 58:
                    Talk(SAY_FREE_2);

                    if (Player* player = ObjectAccessor::FindPlayer(_playerGUID))
                    {
                        player->GroupEventHappens(QUEST_JAIL_BREAK, me);
                        me->SetFacingTo(5.196206f);
                    }
                    break;
            }
        }

        void JustDied(Unit* /*killer*/) override
        {
            Map::PlayerList const& PlayerList = me->GetMap()->GetPlayers();

            for (auto const& itr : PlayerList)
            {
                if (Player* player = itr.GetSource())
                {
                    if (player->GetQuestStatus(QUEST_JAIL_BREAK) == QUEST_STATUS_INCOMPLETE)
                    {
                        player->FailQuest(QUEST_JAIL_BREAK);
                    }
                }
            }
        }

        void HandleDevotionAura()
        {
            Map::PlayerList const& PlayerList = me->GetMap()->GetPlayers();

            for (auto const& itr : PlayerList)
            {
                if (Player* player = itr.GetSource())
                {
                    if (Aura* aura = player->AddAura(SPELL_WINDSOR_DEVOTION, player))
                    {
                        aura->SetDuration(10 * MINUTE);
                    }
                }
            }
        }

        void SchedulePrisonerActivation(uint32 entry)
        {
            if (Creature* prisoner = me->FindNearestCreature(entry, 250.0f))
            {
                if (!prisoner->IsAlive())
                {
                    prisoner->Respawn(true);
                }

                prisoner->m_Events.AddEvent(new ActivePrisonerEvent(prisoner), prisoner->m_Events.CalculateTime(5000));
            }
        }

    private:
        EventMap _events;
        ObjectGuid _playerGUID;
        InstanceScript* _instance;
        TaskScheduler _scheduler;
    };

    bool OnQuestAccept(Player* player, Creature* me, Quest const* quest) override
    {
        if (!me->GetInstanceScript())
        {
            return true;
        }

        if (quest->GetQuestId() == QUEST_JAIL_BREAK)
        {
            me->AI()->SetGUID(player->GetGUID());
        }
        else
        {
            return true;
        }

        me->SetFaction(player->GetFaction());
        me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PC);
        return false;
    }

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_marshal_windsorAI(creature);
    }
};

class npc_jail_break_dughal_or_seecher : public CreatureScript
{
public:
    npc_jail_break_dughal_or_seecher() : CreatureScript("npc_jail_break_dughal_or_seecher") { }

    struct npc_jail_break_dughal_or_seecherAI : public npc_escortAI
    {
        npc_jail_break_dughal_or_seecherAI(Creature* creature) : npc_escortAI(creature)
        {

            if (creature->GetEntry() == NPC_DUGHAL_STORMWING)
            {
                AddWaypoint(0, 280.42f, -82.86f, -77.12f, 0);
                AddWaypoint(1, 287.64f, -87.01f, -76.79f, 0);
                AddWaypoint(2, 354.63f, -64.95f, -67.53f, 0);
            }
            else
            {
                AddWaypoint(0, 549.21f, -281.07f, -75.27f);
                AddWaypoint(1, 554.39f, -267.39f, -73.68f);
                AddWaypoint(2, 533.59f, -249.38f, -67.04f);
                AddWaypoint(3, 519.44f, -217.02f, -59.34f);
                AddWaypoint(4, 506.55f, -153.49f, -62.34f);
            }
        }

        void WaypointReached(uint32 id) override
        {
            if (me->GetEntry() == NPC_DUGHAL_STORMWING && id == 2)
            {
                if (Creature* windsor = me->FindNearestCreature(9023, 200.0f))
                {
                    windsor->AI()->DoAction(0);
                }
            }
            else if (me->GetEntry() == NPC_TOBIAS_SEECHER && id == 4)
            {
                if (Creature* windsor = me->FindNearestCreature(NPC_MARSHAL_REGINALD_WINDSOR, 200.0f))
                {
                    windsor->AI()->DoAction(0);
                }
            }
        }

        void DoAction(int32 actionId) override
        {
            if (actionId == 0)
            {
                Start(false, true, ObjectGuid::Empty, 0, false, false);
            }
        }
    };

    bool OnGossipHello(Player* player, Creature* me) override
    {
        if (player->GetQuestStatus(QUEST_JAIL_BREAK) == QUEST_STATUS_INCOMPLETE)
        {
            std::string message = "You're free, Dughal! Get out of here!";

            if (me->GetEntry() == NPC_TOBIAS_SEECHER)
                message = "Get out of here, Tobias, you're free!";

            AddGossipItemFor(player, GOSSIP_ICON_CHAT, message, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            SendGossipMenuFor(player, me->GetEntry() == NPC_DUGHAL_STORMWING ? 2846 : 2847, me->GetGUID());
        }

        return true;
    }

    bool OnGossipSelect(Player* player, Creature* me, uint32 /*menuId*/, uint32 gossipListId) override
    {
        CloseGossipMenuFor(player);
        uint32 const action = player->PlayerTalkClass->GetGossipOptionAction(gossipListId);

        if (action == 0)
        {
            me->AI()->Talk(0, player);
            me->AI()->DoAction(0);
            me->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
            return true;
        }

        return true;
    }

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_jail_break_dughal_or_seecherAI(creature);
    }
};

void AddSC_quest_jail_break_60_2()
{
    new npc_marshal_windsor();
    new npc_jail_break_dughal_or_seecher();
}
