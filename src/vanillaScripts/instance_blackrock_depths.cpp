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

#include "InstanceScript.h"
#include "IndividualProgression.h"

enum
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

class gobject_dark_keeper_portrait : public GameObjectScript
{
public:
    gobject_dark_keeper_portrait() : GameObjectScript("gobject_dark_keeper_portrait") { }

    uint8_t DATA_TYPE_VAULT = 0;

    bool OnGossipHello(Player* player, GameObject* go) override
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

void AddSC_instance_blackrock_depths_50_59_B()
{
    new gobject_dark_keeper_portrait();
}
