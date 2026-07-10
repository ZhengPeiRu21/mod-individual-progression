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

#include "GameObjectScript.h"
#include "InstanceScript.h"
#include "Player.h"
#include "CreatureScript.h"
#include "ScriptedCreature.h"

#define BRDScriptName "instance_blackrock_depths"

template <class AI, class T>
inline AI* GetBlackrockDepthsAI(T* obj)
{
    return GetInstanceAI<AI>(obj, BRDScriptName);
}

enum DarkKeepers
{
    NPC_DARK_KEEPER_VORFALK    = 9437,
    NPC_DARK_KEEPER_BETHEK     = 9438,
    NPC_DARK_KEEPER_UGGEL      = 9439,
    NPC_DARK_KEEPER_ZIMREL     = 9441,
    NPC_DARK_KEEPER_OFGUT      = 9442,
    NPC_DARK_KEEPER_PELVER     = 9443,

    GO_VORFALK                 = 164820,
    GO_BETHEK                  = 164821,
    GO_UGGEL                   = 164822,
    GO_ZIMREL                  = 164823,
    GO_OFGUT                   = 164824,
    GO_PELVER                  = 164825
};

enum Spells
{
    SPELL_FIERYBURST = 13900,
    SPELL_WARSTOMP = 24375
};

enum DataTypes
{
    TYPE_LYCEUM = 5,
    TYPE_IRON_HALL = 6,

    DATA_GOLEM_DOOR_N = 22,
    DATA_GOLEM_DOOR_S = 23
};

class gobject_dark_keeper_portrait : public GameObjectScript
{
public:
    gobject_dark_keeper_portrait() : GameObjectScript("gobject_dark_keeper_portrait") { }

    uint8_t DATA_TYPE_VAULT = 0;

    bool OnGossipHello(Player* player, GameObject*) override
    {
        switch (urand(0, 5))
        {
            case 0:
                if (DATA_TYPE_VAULT == 0)
                {
                    DATA_TYPE_VAULT = 1;
                    player->SummonCreature(NPC_DARK_KEEPER_VORFALK, 815.60f, -168.54f, -49.75f, 5.97f, TEMPSUMMON_DEAD_DESPAWN, 0);
                    player->SummonGameObject(GO_VORFALK, 831.54f, -339.529f, -46.682f, 0.802851f, 0, 0, 0, 0, 0);
                }
                break;
            case 1:
                if (DATA_TYPE_VAULT == 0)
                {
                    DATA_TYPE_VAULT = 1;
                    player->SummonCreature(NPC_DARK_KEEPER_BETHEK, 846.66f, -317.18f, -50.29f, 3.90f, TEMPSUMMON_DEAD_DESPAWN, 0);
                    player->SummonGameObject(GO_BETHEK, 831.54f, -339.529f, -46.682f, 0.802851f, 0, 0, 0, 0, 0);
                }
                break;
            case 2:
                if (DATA_TYPE_VAULT == 0)
                {
                    DATA_TYPE_VAULT = 1;
                    player->SummonCreature(NPC_DARK_KEEPER_UGGEL, 963.27f, -343.73f, -71.74f, 2.22f, TEMPSUMMON_DEAD_DESPAWN, 0);
                    player->SummonGameObject(GO_UGGEL, 831.54f, -339.529f, -46.682f, 0.802851f, 0, 0, 0, 0, 0);
                }
                break;
            case 3:
                if (DATA_TYPE_VAULT == 0)
                {
                    DATA_TYPE_VAULT = 1;
                    player->SummonCreature(NPC_DARK_KEEPER_ZIMREL, 545.49f, -162.49f, -35.46f, 5.86f, TEMPSUMMON_DEAD_DESPAWN, 0);
                    player->SummonGameObject(GO_ZIMREL, 831.54f, -339.529f, -46.682f, 0.802851f, 0, 0, 0, 0, 0);
                }
                break;
            case 4:
                if (DATA_TYPE_VAULT == 0)
                {
                    DATA_TYPE_VAULT = 1;
                    player->SummonCreature(NPC_DARK_KEEPER_OFGUT, 681.52f, -11.55f, -60.06f, 1.98f, TEMPSUMMON_DEAD_DESPAWN, 0);
                    player->SummonGameObject(GO_OFGUT, 831.54f, -339.529f, -46.682f, 0.802851f, 0, 0, 0, 0, 0);
                }
                break;
            case 5:
                if (DATA_TYPE_VAULT == 0)
                {
                    DATA_TYPE_VAULT = 1;
                    player->SummonCreature(NPC_DARK_KEEPER_PELVER, 803.64f, -248.00f, -43.30f, 2.60f, TEMPSUMMON_DEAD_DESPAWN, 0);
                    player->SummonGameObject(GO_PELVER, 831.54f, -339.529f, -46.682f, 0.802851f, 0, 0, 0, 0, 0);
                }
                break;
        }
        return false;
    }
};

class boss_magmus_50_59_B : public CreatureScript
{
public:
    boss_magmus_50_59_B() : CreatureScript("boss_magmus") {}

    struct boss_magmus : public BossAI
    {
        boss_magmus(Creature* creature) : BossAI(creature, TYPE_IRON_HALL) {}

        void JustEngagedWith(Unit* /*who*/) override
        {
            if (instance)
                instance->SetData(TYPE_IRON_HALL, IN_PROGRESS);

            _JustEngagedWith();

            if (instance)
            {
                instance->HandleGameObject(instance->GetGuidData(DATA_GOLEM_DOOR_N), false);
                instance->HandleGameObject(instance->GetGuidData(DATA_GOLEM_DOOR_S), false);
            }

            events.ScheduleEvent(SPELL_WARSTOMP, 8s, 12s);
            events.ScheduleEvent(SPELL_FIERYBURST, 4s, 8s);
        }

        void JustDied(Unit* /*killer*/) override
        {
            if (instance)
            {
                instance->HandleGameObject(instance->GetGuidData(DATA_GOLEM_DOOR_N), true);
                instance->HandleGameObject(instance->GetGuidData(DATA_GOLEM_DOOR_S), true);
            }
        }

        void Reset() override
        {
            if (!instance)
                return;

            // Open or close the bossroom doors depending on the previous event state.
            if (instance->GetData(TYPE_LYCEUM) == DONE)
            {
                // Previous event completed: open the doors so players can leave the boss room.
                instance->HandleGameObject(instance->GetGuidData(DATA_GOLEM_DOOR_N), true);
                instance->HandleGameObject(instance->GetGuidData(DATA_GOLEM_DOOR_S), true);
            }
            else
            {
                // Previous event not completed: keep the doors closed.
                instance->HandleGameObject(instance->GetGuidData(DATA_GOLEM_DOOR_N), false);
                instance->HandleGameObject(instance->GetGuidData(DATA_GOLEM_DOOR_S), false);
            }
        }

        void UpdateAI(uint32 diff) override
        {
            //Return since we have no target
            if (!UpdateVictim())
                return;

            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case SPELL_WARSTOMP:
                    DoCastVictim(SPELL_WARSTOMP);
                    events.ScheduleEvent(SPELL_WARSTOMP, 8s, 12s);
                    break;
                case SPELL_FIERYBURST:
                    DoCastVictim(SPELL_FIERYBURST);
                    events.ScheduleEvent(SPELL_FIERYBURST, 4s, 8s);
                    break;
                default:
                    break;
                }
            }

            DoMeleeAttackIfReady();
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new typename boss_magmus(creature);
    }
};

void AddSC_instance_blackrock_depths_50_59_B()
{
    new gobject_dark_keeper_portrait();
    new boss_magmus_50_59_B();
}
