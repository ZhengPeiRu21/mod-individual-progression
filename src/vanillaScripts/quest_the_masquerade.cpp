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

#include "ScriptedCreature.h"
#include "ScriptedGossip.h"
#include "Player.h"
#include "SpellInfo.h"

#include "ProgressionSystem.h"

enum TheGreatMasquerade
{
    QUEST_STORMWIND_RENDEZVOUZ = 6402,
    QUEST_THE_GREAT_MASQUERADE = 6403,

    NPC_SQUIRE_ROWE = 17804,
    NPC_REGINALD_WINDSOR = 12580,
    NPC_MERCUTIO = 12581,
    NPC_KATRANA_PRESTOR = 1749,
    NPC_JONATHAN = 466,
    NPC_ROYAL_GUARD = 1756,
    NPC_SW_GUARD = 68,
    NPC_SW_PATROL = 1976,
    NPC_VARIAN = 29611,
    NPC_ONYXIA_GUARD = 12739,
    NPC_BOLVAR = 1748,
    NPC_ANDUINN = 1747,
    NPC_LADY_ONYXIA = 12756,

    ACTION_START_ESCORT = 0,
    ACTION_RESET_MASQUERADE = 2,
    ACTION_START_MASQUERADE = 3,
    ACTION_INCREASE_DEATH_COUNTER = 4,

    EVENT_DISMOUNT = 4,
    EVENT_END_INTRO = 5,
    EVENT_REGINALD_SAY_2 = 6,
    EVENT_KATRANA_SAY_1 = 7,
    EVENT_CHECK_PLAYER = 67,

    // Speech
    SAY_REGINALD_SHOO_HORSE = 0,
    SAY_REGINALD_END_INTRO = 1,
    SAY_REGINALD_MASQUERADE_1 = 2,
    SAY_REGINALD_MASQUERADE_2 = 3,
    SAY_REGINALD_TO_MARCUS_1 = 4,
    SAY_REGINALD_TO_MARCUS_2 = 5,
    SAY_REGINALD_TO_MARCUS_3 = 6,
    SAY_REGINALD_TO_MARCUS_4 = 7,
    SAY_REGINALD_TO_MARCUS_5 = 8,
    SAY_REGINALD_MASQUERADE_3 = 9,
    SAY_REGINALD_BEFORE_KEEP = 10,
    SAY_REGINALD_MOVE_IN_KEEP = 11,
    SAY_REGINALD_TO_ANDUINN = 12,
    SAY_REGINALD_MASQUERADE_OVER = 13,
    SAY_REGINALD_NO_ESCAPE_FATE = 14,
    SAY_REGINALD_TABLETS = 15,
    SAY_REGINALD_LISTEN_DRAGON = 16,
    EMOTE_READ_TABLETS = 17,
    SAY_REGINALD_DONT_LET_ESCAPE = 18,
    SAY_REGINALD_BOLVAR_MEDALION = 19,
    EMOTE_REGINALD_DIES = 20,
    EMOTE_REACH_TABLETS = 21,

    SAY_KATRANA_1 = 0,
    EMOTE_KATRANA_LAUGH = 1,
    SAY_KATRANA_2 = 2,
    SAY_KATRANA_3 = 3,

    SAY_ONYXIA_CURIOUS = 0,
    SAY_ONYXIA_COME_GUARDS = 1,
    SAY_ONYXYA_WAS_THIS_FATED = 2,
    SAY_ONYXIA_FAREWELL = 3,

    SAY_BOLVAR_TO_ANDUINN = 0,
    EMOTE_BOLVAR_GASP = 1,
    SAY_BOLVAR_YELL_GUARDS = 2,
    SAY_BOLVAR_TO_REGINALD = 3,

    SAY_GUARD_GREET = 10,

    SAY_SQUIRE_ROWE = 0,

    SAY_JONATHAN_TO_REGINALD_1 = 1,
    EMOTE_CONTEMPLATION = 2,
    SAY_JONATHAN_TO_REGINALD_2 = 3,
    SAY_JONATHAN_TO_REGINALD_3 = 4,
    SAY_JONATHAN_TO_GUARDS_1 = 5,
    SAY_JONATHAN_TO_GUARDS_2 = 6,
    SAY_JONATHAN_TO_GUARDS_3 = 7,
    SAY_JONATHAN_TO_REGINALD_4 = 8,

    GUID_PRESTOR = 500800,
    GUID_REGINALD = 86900,
    GUID_ROWE = 79862,

    SUMMON_GROUP_ROYAL_GUARDS = 0,

    DATA_GUARD_INDEX = 1,

    SPELL_WINDSOR_READ = 20358,
    SPELL_WINDSOR_DEATH = 20465
};

class DelayedEmoteEvent : public BasicEvent
{
public:
    DelayedEmoteEvent(Creature* invoker, uint32 emoteId) : _invoker(invoker), _emoteId(emoteId) { }

    bool Execute(uint64 /*time*/, uint32 /*diff*/)
    {
        _invoker->HandleEmoteCommand(_emoteId);
        return true;
    }

private:
    Creature* _invoker;
    uint32 _emoteId;

};

class DelayedAttackStartEvent : public BasicEvent
{
public:
    DelayedAttackStartEvent(Creature* invoker) : _invoker(invoker) { }

    bool Execute(uint64 /*time*/, uint32 /*diff*/)
    {
        _invoker->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PC | UNIT_FLAG_IMMUNE_TO_PC | UNIT_FLAG_NON_ATTACKABLE);
        if (Creature* bolvar = _invoker->FindNearestCreature(NPC_BOLVAR, 50.0f))
        {
            _invoker->AI()->AttackStart(bolvar);
            _invoker->AddThreat(bolvar, 500.0f);
        }
        return true;
    }

private:
    Creature* _invoker;

};

class DelayedResetEvent : public BasicEvent
{
public:
    DelayedResetEvent(Creature* invoker) : _invoker(invoker) { }

    bool Execute(uint64 /*time*/, uint32 /*diff*/)
    {
        _invoker->DespawnOrUnsummon();
        _invoker->SetRespawnTime(5);
        return true;
    }

private:
    Creature* _invoker;

};

class npc_squire_rowe : public CreatureScript
{
public:
    npc_squire_rowe() : CreatureScript("npc_squire_rowe") { }

    struct npc_squire_roweAI : public ScriptedAI
    {
        npc_squire_roweAI(Creature* creature) : ScriptedAI(creature) { }

        void DoAction(int32 actionId) override
        {
            if (actionId == ACTION_RESET_MASQUERADE)
                me->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP | UNIT_NPC_FLAG_QUESTGIVER);
        }

        void SetGUID(ObjectGuid guid, int32 index) override
        {
            if (index == ACTION_START_ESCORT)
            {
                _events.ScheduleEvent(1, 2000);
                _playerGUID = guid;
            }
        }

        void MovementInform(uint32 type, uint32 point) override
        {
            if (type != POINT_MOTION_TYPE)
                return;

            switch (point)
            {
                case 1:
                    _events.ScheduleEvent(point + 1, 1);
                    break;
                case 2:
                    me->HandleEmoteCommand(EMOTE_ONESHOT_KNEEL);
                    if (Creature* reginald = me->SummonCreature(NPC_REGINALD_WINDSOR, -9161.673828f, 351.799713f, 87.906525f, TEMPSUMMON_MANUAL_DESPAWN))
                    {
                        reginald->setActive(true);
                        reginald->AI()->SetGUID(_playerGUID, ACTION_START_ESCORT);
                        reginald->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP | UNIT_NPC_FLAG_QUESTGIVER);
                    }
                    _events.ScheduleEvent(point + 1, 5000);
                    break;
                case 3:
                    _events.ScheduleEvent(point + 1, 1);
                    break;
                case 4:
                    me->GetMotionMaster()->Clear();
                    me->SetFacingTo(me->GetHomePosition().GetOrientation());
                    _events.ScheduleEvent(5, 1000);
                    break;
                default:
                    break;
            }
        }

        void UpdateAI(uint32 diff) override
        {
            _events.Update(diff);

            while (uint32 eventId = _events.ExecuteEvent())
            {
                switch (eventId)
                {
                    case 1:
                        me->GetMotionMaster()->MovePoint(1, -9053.81f, 442.66f, 93.05f, false);
                        break;
                    case 2:
                        me->GetMotionMaster()->MovePoint(2, -9082.63f, 421.29f, 92.55f, false);
                        break;
                    case 3:
                        me->GetMotionMaster()->MovePoint(3, -9057.101563f, 439.136200f, 93.050003f, false);
                        break;
                    case 4:
                        me->GetMotionMaster()->MovePoint(4, -9043.89f, 434.39f, 93.29f, false);
                        break;
                    case 5:
                        Talk(SAY_SQUIRE_ROWE);
                        break;
                    default:
                        break;
                }
            }
        }

    private:
        EventMap _events;
        ObjectGuid _playerGUID;
    };

    bool OnGossipSelect(Player* player, Creature* me, uint32 /*menuId*/, uint32 gossipListId) override
    {
        CloseGossipMenuFor(player);
        uint32 const action = player->PlayerTalkClass->GetGossipOptionAction(gossipListId);
        if (action == 0)
        {
            me->AI()->SetGUID(player->GetGUID(), ACTION_START_ESCORT);
            me->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP | UNIT_NPC_FLAG_QUESTGIVER);
            return true;
        }
        return true;
    }

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_squire_roweAI(creature);
    }
};

Position const GuardsPos[] =
        {
                { -8968.510f, 512.556f, 96.352f, 3.849f },
                { -8969.780f, 515.012f, 96.593f, 3.955f },
                { -8972.410f, 518.228f, 96.594f, 4.281f },
                { -8965.170f, 508.565f, 96.352f, 3.825f },
                { -8962.960f, 506.583f, 96.593f, 3.802f },
                { -8961.080f, 503.828f, 96.593f, 3.465f }
        };

class npc_reginald_windsor : public CreatureScript
{
public:
    npc_reginald_windsor() : CreatureScript("npc_reginald_windsor") { }

    struct npc_reginald_windsorAI : public ScriptedAI
    {
        npc_reginald_windsorAI(Creature* creature) : ScriptedAI(creature), Summons(creature)
        {
            _canGreet = false;
        }

        bool CanBeSeen(Player const* player) override
        {
            // Hide the Reginald patrolling stormwind... he uses the same creature entry... unfortunately.
            if ((player->GetQuestStatus(QUEST_STORMWIND_RENDEZVOUZ) == QUEST_STATUS_COMPLETE) || (player->GetQuestStatus(QUEST_THE_GREAT_MASQUERADE) == QUEST_STATUS_INCOMPLETE))
            {
                if (me->GetSpawnId() == 86900)
                {
                    return false;
                }
            }

            return true;
        }

        void DoAction(int32 actionId) override
        {
            if (actionId == ACTION_RESET_MASQUERADE)
            {
                me->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP | UNIT_NPC_FLAG_QUESTGIVER);

                ObjectGuid::LowType guid = GUID_ROWE;
                if (Creature* rowe = GetCreature(guid))
                {
                    me->GetMap()->LoadGrid(-9042.23f, 434.24f);
                    rowe->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP | UNIT_NPC_FLAG_QUESTGIVER);
                }

                guid = GUID_PRESTOR;
                if (Creature* prestor = GetCreature(guid))
                {
                    prestor->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP | UNIT_NPC_FLAG_QUESTGIVER);
                }
            }

            if (actionId == ACTION_START_ESCORT)
                _events.ScheduleEvent(46, 3000);

            if (actionId == ACTION_INCREASE_DEATH_COUNTER)
            {
                if (!me->FindNearestCreature(NPC_ONYXIA_GUARD, 20.0f))
                    _events.ScheduleEvent(68, 3000);
            }
        }

        void SetGUID(ObjectGuid guid, int32 index) override
        {
            if (index == ACTION_START_ESCORT)
            {
                if (ObjectAccessor::FindConnectedPlayer(_playerGUID))
                {
                    // Prevent starting the escort script multiple times.
                    return;
                }

                _events.ScheduleEvent(1, 2000);
                _playerGUID = guid;
            }
            else if (index == ACTION_START_MASQUERADE)
            {
                _events.ScheduleEvent(EVENT_REGINALD_SAY_2, 5000);
            }
        }

        void MoveInLineOfSight(Unit* who) override
        {
            if (who->IsWithinDistInMap(me, 10.0f) && !who->IsInCombat())
            {
                if ((who->GetEntry() == NPC_SW_GUARD || who->GetEntry() == NPC_SW_PATROL || who->GetEntry() == NPC_ROYAL_GUARD) && _canGreet)
                {
                    if (_swGuardsSaluted.find(who->GetGUID()) == _swGuardsSaluted.end())
                    {
                        who->GetMotionMaster()->Clear();
                        who->GetMotionMaster()->MoveIdle();
                        who->SetFacingToObject(me);
                        who->m_Events.AddEvent(new DelayedEmoteEvent(who->ToCreature(), EMOTE_ONESHOT_SALUTE), who->m_Events.CalculateTime(1000));
                        who->m_Events.AddEvent(new DelayedResetEvent(who->ToCreature()), who->m_Events.CalculateTime(30000));
                        who->ToCreature()->AI()->Talk(SAY_GUARD_GREET);
                        _swGuardsSaluted.insert(who->GetGUID());
                    }
                }
            }
        }

        void MovementInform(uint32 type, uint32 point) override
        {
            if (type != POINT_MOTION_TYPE)
                return;

            switch (point)
            {
                case 1:
                    _events.ScheduleEvent(2, 1);
                    break;
                case 2:
                    _events.ScheduleEvent(3, 1);
                    break;
                case 3:
                    me->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP | UNIT_NPC_FLAG_QUESTGIVER);
                    _events.ScheduleEvent(EVENT_DISMOUNT, 3000);
                    break;
                case 4:
                    _events.ScheduleEvent(9, 1);
                    break;
                case 5:
                    if (Creature* jonathan = me->FindNearestCreature(NPC_JONATHAN, 20.0f))
                        jonathan->AI()->Talk(SAY_JONATHAN_TO_REGINALD_1);
                    _events.ScheduleEvent(10, 3000);
                    break;
                case 6:
                    _events.ScheduleEvent(26, 1);
                    break;
                case 7:
                    _events.ScheduleEvent(27, 1);
                    break;
                case 8:
                    _events.ScheduleEvent(28, 1);
                    break;
                case 9:
                    _events.ScheduleEvent(29, 1);
                    break;
                case 10:
                    _events.ScheduleEvent(30, 1);
                    break;
                case 11:
                    _events.ScheduleEvent(31, 1);
                    break;
                case 12:
                    _events.ScheduleEvent(32, 1);
                    break;
                case 13:
                    _events.ScheduleEvent(33, 1);
                    break;
                case 14:
                    _events.ScheduleEvent(34, 1);
                    break;
                case 15:
                    _events.ScheduleEvent(35, 1);
                    break;
                case 16:
                    _events.ScheduleEvent(36, 1);
                    break;
                case 17:
                    _events.ScheduleEvent(37, 1);
                    break;
                case 18:
                    _events.ScheduleEvent(38, 1);
                    break;
                case 19:
                    _events.ScheduleEvent(39, 1);
                    break;
                case 20:
                    _events.ScheduleEvent(40, 1);
                    break;
                case 21:
                    _events.ScheduleEvent(41, 1);
                    break;
                case 22:
                    _events.ScheduleEvent(42, 1);
                    break;
                case 23:
                    _events.ScheduleEvent(43, 1);
                    break;
                case 24:
                    _events.ScheduleEvent(44, 1);
                    break;
                case 25:
                    _events.ScheduleEvent(45, 1);
                    break;
                case 26: // Keep gossip
                    _events.ScheduleEvent(EVENT_CHECK_PLAYER, 5 * MINUTE * IN_MILLISECONDS);
                    Talk(SAY_REGINALD_BEFORE_KEEP);
                    me->GetMotionMaster()->Clear();
                    me->SetFacingTo(5.41f);
                    me->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
                    break;
                case 27:
                    _events.ScheduleEvent(47, 1);
                    break;
                case 28:
                    _events.ScheduleEvent(48, 1);
                    break;
                case 29:
                    if (Creature* katrana = me->FindNearestCreature(NPC_KATRANA_PRESTOR, 50.0f))
                    {
                        katrana->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP | UNIT_NPC_FLAG_QUESTGIVER);
                        me->GetMotionMaster()->Clear();
                        me->SetFacingToObject(katrana);
                    }
                    _canGreet = false;
                    Talk(SAY_REGINALD_TO_ANDUINN);
                    _events.ScheduleEvent(49, 1);
                    break;
                default:
                    break;
            }
        }

        void JustSummoned(Creature* creature) override
        {
            Summons.Summon(creature);
        }

        void SpellHit(Unit*, const SpellInfo* spell) override
        {
            if (spell->Id == SPELL_WINDSOR_DEATH)
            {
                Talk(SAY_REGINALD_DONT_LET_ESCAPE);
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                me->SetStandState(UNIT_STAND_STATE_DEAD);
            }
        }

        Creature* GetCreature(uint64 guid)
        {
            auto bounds = me->GetMap()->GetCreatureBySpawnIdStore().equal_range(guid);

            if (bounds.first == bounds.second)
                return nullptr;

            if (Creature* creature = bounds.first->second)
                return creature;

            return nullptr;
        };

        void UpdateAI(uint32 diff) override
        {
            _events.Update(diff);

            while (uint32 eventId = _events.ExecuteEvent())
            {
                switch (eventId)
                {
                    case 1:
                        // Along the road
                        me->GetMotionMaster()->MovePoint(1, -9141.894531f, 376.348145f, 90.683403f);
                        break;
                    case 2:
                        // Along the road, straight up his path
                        me->GetMotionMaster()->MovePoint(2, -9110.274414f, 395.779083f, 92.516273f);
                        break;
                    case 3:
                        // End point by the Stormwind Bridge
                        me->GetMotionMaster()->MovePoint(3, -9049.892578f, 445.026917f, 93.056046f);
                        break;
                    case EVENT_DISMOUNT:
                        me->Dismount();
                        if (Creature* mercutio = me->SummonCreature(NPC_MERCUTIO, -9049.408203f, 446.522705f, 93.056198f))
                        {
                            me->HandleEmoteCommand(EMOTE_ONESHOT_ATTACK_UNARMED);
                            Talk(SAY_REGINALD_SHOO_HORSE);
                            mercutio->GetMotionMaster()->MovePoint(1, -9150.777344f, 370.672607f, 90.537186f, false);
                            mercutio->DespawnOrUnsummon(10000);
                        }
                        _events.ScheduleEvent(EVENT_END_INTRO, 3000);
                        break;
                    case EVENT_END_INTRO:
                        _events.ScheduleEvent(EVENT_CHECK_PLAYER, 5 * MINUTE * IN_MILLISECONDS);
                        me->SetFacingTo(3.760818f);
                        me->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_QUESTGIVER);
                        if (Player* player = ObjectAccessor::FindConnectedPlayer(_playerGUID))
                            Talk(SAY_REGINALD_END_INTRO, player);
                        break;
                    case EVENT_REGINALD_SAY_2:
                        me->SetFacingTo(0.717398f);
                        me->HandleEmoteCommand(EMOTE_ONESHOT_SHOUT);
                        Talk(SAY_REGINALD_MASQUERADE_2);
                        _events.ScheduleEvent(EVENT_KATRANA_SAY_1, 5000);
                        break;
                    case EVENT_KATRANA_SAY_1:
                    {
                        ObjectGuid::LowType guid = GUID_PRESTOR;
                        if (Creature* katrana = GetCreature(guid))
                        {
                            if (!katrana->IsAlive())
                                katrana->Respawn(true);

                            me->GetMap()->LoadGrid(8435.00f, 335.55f);
                            katrana->AI()->Talk(SAY_KATRANA_1);
                        }

                        guid = GUID_REGINALD;

                        if (Creature* reginald = GetCreature(guid))
                        {
                            reginald->DespawnOrUnsummon();
                            reginald->SetRespawnTime(30 * 60);
                        }

                        if (Creature* jonathan = me->FindNearestCreature(NPC_JONATHAN, 200.0f))
                        {
                            _marcusGUID = jonathan->GetGUID();
                            jonathan->Dismount();
                            jonathan->setActive(true);
                            jonathan->GetMotionMaster()->MovePoint(0, -8967.960f, 510.008f, 96.351f);

                            for (uint8 counter = 0; counter <= 5; ++counter)
                            {
                                if (Creature* guard = me->SummonCreature(NPC_ROYAL_GUARD, GuardsPos[counter]))
                                {
                                    _guardsGUID[counter] = guard->GetGUID();
                                    guard->AI()->SetData(DATA_GUARD_INDEX, 1);
                                    _swGuardsSaluted.insert(guard->GetGUID());
                                }
                            }
                        }

                        _events.ScheduleEvent(8, 3000);
                        break;
                    }
                    case 8:
                        me->GetMotionMaster()->MovePoint(4, -8997.63f, 486.402f, 96.622f);
                        break;
                    case 9:
                        me->GetMotionMaster()->MovePoint(5, -8971.08f, 507.541f, 96.349f);
                        break;
                    case 10:
                        Talk(SAY_REGINALD_TO_MARCUS_1);
                        _events.ScheduleEvent(11, 10000);
                        break;
                    case 11:
                        Talk(SAY_REGINALD_TO_MARCUS_2);
                        _events.ScheduleEvent(12, 4000);
                        break;
                    case 12:
                        if (Creature* jonathan = me->FindNearestCreature(NPC_JONATHAN, 20.0f))
                            jonathan->AI()->Talk(EMOTE_CONTEMPLATION);
                        _events.ScheduleEvent(13, 6000);
                        break;
                    case 13:
                        if (Creature* jonathan = me->FindNearestCreature(NPC_JONATHAN, 20.0f))
                            jonathan->AI()->Talk(SAY_JONATHAN_TO_REGINALD_2);
                        _events.ScheduleEvent(14, 10000);
                        break;
                    case 14:
                        if (Creature* jonathan = me->FindNearestCreature(NPC_JONATHAN, 20.0f))
                            jonathan->AI()->Talk(SAY_JONATHAN_TO_REGINALD_3);
                        _events.ScheduleEvent(15, 6000);
                        break;
                    case 15:
                        Talk(SAY_REGINALD_TO_MARCUS_3);
                        _events.ScheduleEvent(16, 10000);
                        break;
                    case 16:
                        Talk(SAY_REGINALD_TO_MARCUS_4);
                        _events.ScheduleEvent(17, 10000);
                        break;
                    case 17:
                        if (Creature* jonathan = me->FindNearestCreature(NPC_JONATHAN, 20.0f))
                        {
                            jonathan->SetFacingTo(5.830352f);
                            jonathan->HandleEmoteCommand(EMOTE_ONESHOT_EXCLAMATION);
                            jonathan->AI()->Talk(SAY_JONATHAN_TO_GUARDS_1);
                        }

                        if (Creature* guard = ObjectAccessor::GetCreature(*me, _guardsGUID[5]))
                        {
                            guard->SetFacingTo(2.234f);
                            guard->SetStandState(UNIT_STAND_STATE_KNEEL);
                        }

                        if (Creature* guard = ObjectAccessor::GetCreature(*me, _guardsGUID[4]))
                            guard->GetMotionMaster()->MovePoint(1, -8959.440f, 505.424f, 96.595f);
                        if (Creature* guard = ObjectAccessor::GetCreature(*me, _guardsGUID[3]))
                            guard->GetMotionMaster()->MovePoint(1, -8957.670f, 507.056f, 96.595f);

                        _events.ScheduleEvent(18, 5000);
                        break;
                    case 18:
                        if (Creature* jonathan = me->FindNearestCreature(NPC_JONATHAN, 20.0f))
                        {
                            jonathan->SetFacingTo(2.234f);
                            jonathan->HandleEmoteCommand(EMOTE_ONESHOT_EXCLAMATION);
                            jonathan->AI()->Talk(SAY_JONATHAN_TO_GUARDS_2);
                        }

                        if (Creature* guard = ObjectAccessor::GetCreature(*me, _guardsGUID[2]))
                        {
                            guard->SetFacingTo(5.375f);
                            guard->SetStandState(UNIT_STAND_STATE_KNEEL);
                        }

                        if (Creature* guard = ObjectAccessor::GetCreature(*me, _guardsGUID[1]))
                            guard->GetMotionMaster()->MovePoint(2, -8970.680f, 519.252f, 96.595f);
                        if (Creature* guard = ObjectAccessor::GetCreature(*me, _guardsGUID[0]))
                            guard->GetMotionMaster()->MovePoint(2, -8969.100f, 520.395f, 96.595f);

                        _events.ScheduleEvent(19, 5000);
                        break;
                    case 19:
                        if (Creature* jonathan = me->FindNearestCreature(NPC_JONATHAN, 20.0f))
                        {
                            jonathan->HandleEmoteCommand(EMOTE_ONESHOT_SHOUT);
                            jonathan->AI()->Talk(SAY_JONATHAN_TO_GUARDS_3);
                        }
                        _events.ScheduleEvent(20, 3000);
                        break;
                    case 20:
                        if (Creature* jonathan = me->FindNearestCreature(NPC_JONATHAN, 20.0f))
                        {
                            jonathan->SetFacingToObject(me);
                            jonathan->AI()->Talk(SAY_JONATHAN_TO_REGINALD_4);
                            jonathan->m_Events.AddEvent(new DelayedEmoteEvent(jonathan, EMOTE_ONESHOT_SALUTE), jonathan->m_Events.CalculateTime(1000));
                        }
                        _events.ScheduleEvent(21, 5000);
                        break;
                    case 21:
                        if (Creature* jonathan = me->FindNearestCreature(NPC_JONATHAN, 20.0f))
                        {
                            jonathan->SetWalk(true);
                            jonathan->GetMotionMaster()->MovePoint(1, -8974.590f, 516.213f, 96.590f);
                        }
                        _events.ScheduleEvent(22, 5000);
                        break;
                    case 22:
                        if (Creature* jonathan = me->FindNearestCreature(NPC_JONATHAN, 20.0f))
                        {
                            jonathan->GetMotionMaster()->Clear();
                            jonathan->SetFacingToObject(me);
                            jonathan->SetStandState(UNIT_STAND_STATE_KNEEL);
                        }
                        _events.ScheduleEvent(23, 3000);
                        break;
                    case 23:
                        if (Creature* jonathan = me->FindNearestCreature(NPC_JONATHAN, 20.0f))
                        {
                            me->GetMotionMaster()->Clear();
                            me->SetFacingToObject(jonathan);
                            Talk(SAY_REGINALD_TO_MARCUS_5);
                            jonathan->m_Events.AddEvent(new DelayedResetEvent(jonathan), jonathan->m_Events.CalculateTime(60000));
                        }
                        _events.ScheduleEvent(24, 4000);
                        break;
                    case 24:
                        me->GetMotionMaster()->Clear();
                        me->SetFacingTo(0.06f);
                        Talk(SAY_REGINALD_MASQUERADE_3);
                        me->m_Events.AddEvent(new DelayedEmoteEvent(me, EMOTE_ONESHOT_POINT), me->m_Events.CalculateTime(1000));
                        _events.ScheduleEvent(25, 5000);
                        break;
                    case 25:
                        _canGreet = true;
                        me->GetMotionMaster()->MovePoint(6, -8953.17f, 518.537f, 96.355f, false);
                        break;
                    case 26:
                        me->GetMotionMaster()->MovePoint(7, -8936.33f, 501.777f, 94.066f, false);
                        break;
                    case 27:
                        me->GetMotionMaster()->MovePoint(8, -8922.52f, 498.45f, 93.869f, false);
                        break;
                    case 28:
                        me->GetMotionMaster()->MovePoint(9, -8907.64f, 509.941f, 93.840f, false);
                        break;
                    case 29:
                        me->GetMotionMaster()->MovePoint(10, -8925.26f, 542.51f, 94.274f, false);
                        break;
                    case 30:
                        me->GetMotionMaster()->MovePoint(11, -8832.28f, 622.285f, 93.686f, false);
                        break;
                    case 31:
                        me->GetMotionMaster()->MovePoint(12, -8824.8f, 621.713f, 94.084f, false);
                        break;
                    case 32:
                        me->GetMotionMaster()->MovePoint(13, -8796.46f, 590.922f, 97.466f, false);
                        break;
                    case 33:
                        me->GetMotionMaster()->MovePoint(14, -8769.85f, 607.883f, 97.118f, false);
                        break;
                    case 34:
                        me->GetMotionMaster()->MovePoint(15, -8737.14f, 574.741f, 97.398f, false);
                        break;
                    case 35:
                        me->GetMotionMaster()->MovePoint(16, -8746.27f, 563.446f, 97.399f, false);
                        break;
                    case 36:
                        me->GetMotionMaster()->MovePoint(17, -8745.5f, 557.877f, 97.704f, false);
                        break;
                    case 37:
                        me->GetMotionMaster()->MovePoint(18, -8730.95f, 541.477f, 101.12f, false);
                        break;
                    case 38:
                        me->GetMotionMaster()->MovePoint(19, -8713.16f, 520.692f, 97.227f, false);
                        break;
                    case 39:
                        me->GetMotionMaster()->MovePoint(20, -8677.09f, 549.614f, 97.438f, false);
                        break;
                    case 40:
                        me->GetMotionMaster()->MovePoint(21, -8655.72f, 552.732f, 96.941f, false);
                        break;
                    case 41:
                        me->GetMotionMaster()->MovePoint(22, -8641.68f, 540.516f, 98.972f, false);
                        break;
                    case 42:
                        me->GetMotionMaster()->MovePoint(23, -8620.08f, 520.120f, 102.812f, false);
                        break;
                    case 43:
                        me->GetMotionMaster()->MovePoint(24, -8591.09f, 492.553f, 104.032f, false);
                        break;
                    case 44:
                        me->GetMotionMaster()->MovePoint(25, -8562.45f, 463.583f, 104.517f, false);
                        break;
                    case 45: // Break here, before keep.
                        Summons.DespawnAll();
                        me->GetMotionMaster()->MovePoint(26, -8548.63f, 467.38f, 104.517f);
                        break;
                    case 46:
                        me->GetMotionMaster()->MovePoint(27, -8487.77f, 391.44f, 108.386f);
                        break;
                    case 47:
                        me->GetMotionMaster()->MovePoint(28, -8455.95f, 351.225f, 120.88f);
                        break;
                    case 48: // Say something
                        me->GetMotionMaster()->MovePoint(29, -8446.87f, 339.904f, 121.33f, false);
                        break;
                    case 49:
                        _events.ScheduleEvent(50, 9000);
                        _events.ScheduleEvent(64, 4000);
                        _events.ScheduleEvent(59, 2000);
                        break;
                    case 50:
                        if (Creature* katrana = me->FindNearestCreature(NPC_KATRANA_PRESTOR, 20.0f))
                        {
                            katrana->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP | UNIT_NPC_FLAG_QUESTGIVER);
                            katrana->AI()->Talk(EMOTE_KATRANA_LAUGH);
                            katrana->m_Events.AddEvent(new DelayedEmoteEvent(katrana, EMOTE_ONESHOT_LAUGH), katrana->m_Events.CalculateTime(1000));
                        }
                        _events.ScheduleEvent(51, 4000);
                        break;
                    case 51:
                        if (Creature* katrana = me->FindNearestCreature(NPC_KATRANA_PRESTOR, 20.0f))
                            katrana->AI()->Talk(SAY_KATRANA_2);
                        _events.ScheduleEvent(52, 8000);
                        break;
                    case 52:
                        if (Creature* katrana = me->FindNearestCreature(NPC_KATRANA_PRESTOR, 20.0f))
                            katrana->AI()->Talk(SAY_KATRANA_3);
                        _events.ScheduleEvent(53, 15000);
                        _events.ScheduleEvent(65, 10000);
                        break;
                    case 53:
                        Talk(EMOTE_REACH_TABLETS);
                        _events.ScheduleEvent(54, 6000);
                        break;
                    case 54:
                        Talk(SAY_REGINALD_TABLETS);
                        _events.ScheduleEvent(55, 5000);
                        break;
                    case 55:
                        Talk(SAY_REGINALD_LISTEN_DRAGON);
                        _events.ScheduleEvent(56, 5000);
                        break;
                    case 56:
                        DoCastAOE(SPELL_WINDSOR_READ);
                        Talk(EMOTE_READ_TABLETS);
                        _events.ScheduleEvent(57, 11000);
                        break;
                    case 57:
                        if (Creature* katrana = me->FindNearestCreature(NPC_KATRANA_PRESTOR, 20.0f))
                        {
                            katrana->UpdateEntry(NPC_LADY_ONYXIA, nullptr);
                            katrana->AI()->Talk(SAY_ONYXIA_CURIOUS);
                        }

                        if (Creature* bolvar = me->FindNearestCreature(NPC_BOLVAR, 20.0f))
                        {
                            bolvar->SetWalk(true);
                            bolvar->AI()->Talk(EMOTE_BOLVAR_GASP);
                            bolvar->GetMotionMaster()->MovePoint(1, -8448.690f, 337.074f, 121.330f, false);
                        }
                        _events.ScheduleEvent(58, 2000);
                        _events.ScheduleEvent(60, 6000);
                        break;
                    case 58:
                        if (Creature* onyxia = me->FindNearestCreature(NPC_LADY_ONYXIA, 20.0f))
                            if (Creature* bolvar = me->FindNearestCreature(NPC_BOLVAR, 20.0f))
                            {
                                bolvar->GetMotionMaster()->Clear();
                                bolvar->SetFacingToObject(onyxia);
                                bolvar->AI()->Talk(SAY_BOLVAR_YELL_GUARDS);
                                bolvar->SetUInt32Value(UNIT_NPC_EMOTESTATE, 45);
                            }
                        break;
                    case 59:
                        if (Creature* bolvar = me->FindNearestCreature(NPC_BOLVAR, 20.0f))
                        {
                            bolvar->SetFaction(11);
                            bolvar->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP | UNIT_NPC_FLAG_QUESTGIVER);
                            bolvar->AI()->Talk(SAY_BOLVAR_TO_ANDUINN);
                        }
                        if (Creature* anduinn = me->FindNearestCreature(NPC_ANDUINN, 20.0f))
                        {
                            anduinn->SetWalk(true);
                            anduinn->GetMotionMaster()->MovePoint(1, -8505.770f, 338.312f, 120.886f, true);
                            anduinn->DespawnOrUnsummon(5000);
                        }
                        break;
                    case 60:
                    {
                        if (Creature* onyxia = me->FindNearestCreature(NPC_LADY_ONYXIA, 20.0f))
                            onyxia->AI()->Talk(SAY_ONYXIA_COME_GUARDS);

                        std::list<Creature*> guardList;

                        me->GetCreatureListWithEntryInGrid(guardList, NPC_ROYAL_GUARD, 25.0f);

                        if (!guardList.empty())
                        {
                            int8 counter = 0;
                            for (auto itr : guardList)
                            {
                                if (counter >= 8)
                                    continue;

                                if (!itr->IsAlive())
                                    itr->Respawn(true);

                                itr->UpdateEntry(NPC_ONYXIA_GUARD, nullptr);
                                itr->AI()->SetGUID(me->GetGUID());
                                itr->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PC | UNIT_FLAG_IMMUNE_TO_PC | UNIT_FLAG_NON_ATTACKABLE);
                                itr->m_Events.AddEvent(new DelayedAttackStartEvent(itr), itr->m_Events.CalculateTime(8000));
                                counter++;
                            }
                        }

                        _events.ScheduleEvent(61, 5000);
                        _events.ScheduleEvent(66, 6000);
                        break;
                    }
                    case 61:
                        if (Creature* onyxia = me->FindNearestCreature(NPC_LADY_ONYXIA, 20.0f))
                            onyxia->AI()->Talk(SAY_ONYXYA_WAS_THIS_FATED);
                        _events.ScheduleEvent(62, 10000);
                        break;
                    case 62:
                        if (Creature* onyxia = me->FindNearestCreature(NPC_LADY_ONYXIA, 20.0f))
                            onyxia->AI()->Talk(SAY_ONYXIA_FAREWELL);
                        _events.ScheduleEvent(63, 8000);
                        break;
                    case 63:
                        if (Creature* onyxia = me->FindNearestCreature(NPC_LADY_ONYXIA, 20.0f))
                        {
                            onyxia->CastSpell(onyxia, 20466, true);
                            onyxia->DespawnOrUnsummon(2000);
                        }
                        break;
                    case 64:
                        Talk(SAY_REGINALD_MASQUERADE_OVER);
                        if (Creature* katrana = me->FindNearestCreature(NPC_KATRANA_PRESTOR, 20.0f))
                        {
                            me->GetMotionMaster()->Clear();
                            me->SetFacingToObject(katrana);
                            me->m_Events.AddEvent(new DelayedEmoteEvent(me, EMOTE_ONESHOT_POINT), me->m_Events.CalculateTime(1000));
                        }
                        break;
                    case 65:
                        Talk(SAY_REGINALD_NO_ESCAPE_FATE);
                        break;
                    case 66:
                        if (Creature* onyxia = me->FindNearestCreature(NPC_LADY_ONYXIA, 20.0f))
                            onyxia->AI()->DoCastAOE(SPELL_WINDSOR_DEATH, true);
                        break;
                    case EVENT_CHECK_PLAYER:
                        if (!ObjectAccessor::FindPlayer(_playerGUID))
                        {
                            DoAction(ACTION_RESET_MASQUERADE);
                            me->DespawnOrUnsummon(10000);
                        }
                        break;
                    case 68:
                        if (Creature* bolvar = me->FindNearestCreature(NPC_BOLVAR, 20.0f))
                        {
                            bolvar->SetUInt32Value(UNIT_NPC_EMOTESTATE, 0);
                            bolvar->GetMotionMaster()->Clear();
                            bolvar->GetMotionMaster()->MovePoint(1, -8448.279f, 338.398f, 121.329f, false);
                            bolvar->SetFacingToObject(me);
                            bolvar->SetStandState(UNIT_STAND_STATE_KNEEL);
                        }
                        _events.ScheduleEvent(69, 3000);
                        break;
                    case 69:
                        if (Creature* bolvar = me->FindNearestCreature(NPC_BOLVAR, 20.0f))
                            bolvar->AI()->Talk(SAY_BOLVAR_TO_REGINALD);
                        _events.ScheduleEvent(70, 3000);
                        break;
                    case 70:
                        Talk(SAY_REGINALD_BOLVAR_MEDALION);
                        _events.ScheduleEvent(71, 3000);
                        break;
                    case 71:
                        Talk(EMOTE_REGINALD_DIES);
                        _events.ScheduleEvent(72, 5000);
                        break;
                    case 72:
                        if (Creature* bolvar = me->FindNearestCreature(NPC_BOLVAR, 20.0f))
                        {
                            bolvar->SetStandState(UNIT_STAND_STATE_STAND);
                            bolvar->SetSpeed(MOVE_WALK, 1.0f);
                            bolvar->SetWalk(true);
                            bolvar->GetMotionMaster()->MoveTargetedHome();
                            bolvar->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP | UNIT_NPC_FLAG_QUESTGIVER);

                            if (Player* player = ObjectAccessor::FindConnectedPlayer(_playerGUID))
                                player->GroupEventHappens(QUEST_THE_GREAT_MASQUERADE, me);

                            DoAction(ACTION_RESET_MASQUERADE);
                            me->DespawnOrUnsummon(10000);
                        }
                        break;
                    default:
                        break;
                }
            }
        }

    private:
        EventMap _events;
        ObjectGuid _playerGUID;
        SummonList Summons;
        ObjectGuid _guardsGUID[6];
        ObjectGuid _marcusGUID;
        GuidSet _swGuardsSaluted;
        bool _canGreet;
    };

    bool OnGossipSelect(Player* player, Creature* me, uint32 /*menuId*/, uint32 gossipListId) override
    {
        CloseGossipMenuFor(player);
        uint32 const action = player->PlayerTalkClass->GetGossipOptionAction(gossipListId);

        if (action == 0)
        {
            me->m_Events.AddEvent(new DelayedEmoteEvent(me, EMOTE_ONESHOT_POINT), me->m_Events.CalculateTime(1000));
            me->AI()->Talk(SAY_REGINALD_MOVE_IN_KEEP);
            me->AI()->DoAction(ACTION_START_ESCORT);
            me->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
            return true;
        }
        return true;
    }

    bool OnQuestAccept(Player* player, Creature* me, Quest const* quest) override
    {
        if (quest->GetQuestId() == QUEST_THE_GREAT_MASQUERADE)
        {
            me->AI()->SetGUID(player->GetGUID(), ACTION_START_MASQUERADE);
            me->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP | UNIT_NPC_FLAG_QUESTGIVER);
            me->AI()->Talk(SAY_REGINALD_MASQUERADE_1);
            me->SetWalk(true);

            if (Creature* rowe = me->FindNearestCreature(NPC_SQUIRE_ROWE, 20.0f))
                rowe->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP | UNIT_NPC_FLAG_QUESTGIVER);
        }
        return false;
    }

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_reginald_windsorAI(creature);
    }
};

class npc_royal_stormwind_guard : public CreatureScript
{
public:
    npc_royal_stormwind_guard() : CreatureScript("npc_royal_stormwind_guard") { }

    struct npc_royal_stormwind_guardAI : public ScriptedAI
    {
        npc_royal_stormwind_guardAI(Creature* creature) : ScriptedAI(creature)
        {
            _inEvent = false;
        }

        void SetData(uint32 type, uint32 data) override
        {
            if (type == DATA_GUARD_INDEX)
                _inEvent = data == 1 ? true : false;
        }

        void SetGUID(ObjectGuid guid, int32 /*data*/) override
        {
            _invokerGUID = guid;
        }

        void JustDied(Unit* /*killer*/) override
        {
            if (me->GetEntry() == NPC_ONYXIA_GUARD)
            {
                if (Creature* windsor = ObjectAccessor::GetCreature(*me, _invokerGUID))
                    windsor->AI()->DoAction(ACTION_INCREASE_DEATH_COUNTER);
            }
        }

        void JustEngagedWith(Unit* /*victim*/) override
        {
            if (me->GetEntry() == NPC_ONYXIA_GUARD)
            {
                _events.ScheduleEvent(5, 3000);
                _events.ScheduleEvent(6, 4000);
            }
        }

        void UpdateAI(uint32 diff) override
        {
            if (!UpdateVictim())
                return;

            _events.Update(diff);

            while (uint32 eventId = _events.ExecuteEvent())
            {
                switch (eventId)
                {
                    case 5:
                        DoCastVictim(15284); // Cleave
                        _events.ScheduleEvent(5, urand(5000, 8000));
                        break;
                }
            }

            DoMeleeAttackIfReady();
        }

        void MovementInform(uint32 type, uint32 point) override
        {
            if (type != POINT_MOTION_TYPE || !_inEvent)
                return;

            me->GetMotionMaster()->Clear();

            if (point == 1)
                me->SetFacingTo(2.234f);
            else if (point == 2)
                me->SetFacingTo(5.375f);

            me->SetStandState(UNIT_STAND_STATE_KNEEL);
        }

    private:
        bool _inEvent;
        ObjectGuid _invokerGUID;
        EventMap _events;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_royal_stormwind_guardAI(creature);
    }
};

void AddSC_quest_the_masquerade_60_2()
{
    new npc_reginald_windsor();
    new npc_squire_rowe();
    new npc_royal_stormwind_guard();
}
