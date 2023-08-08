/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "Player.h"
#include "ScriptMgr.h"

enum BlackUrn
{
    DATA_NIGHTBANE     = 11,
    NPC_NIGHTBANE      = 17225,
    ITEM_BLACKENED_URN = 24140
};

class go_blackened_urn_70 : public GameObjectScript
{
public:
    go_blackened_urn_70() : GameObjectScript("go_blackened_urn") { }

    //if we summon an entity instead of using a sort of invisible entity, we could unsummon boss on reset
    //right now that doesn't work because of how the urn works
    bool OnGossipHello(Player* player, GameObject* go) override
    {
        float IntroWay[8][3] =
        {
            {-11053.37f, -1794.48f, 149.00f},
            {-11141.07f, -1841.40f, 125.00f},
            {-11187.28f, -1890.23f, 125.00f},
            {-11189.20f, -1931.25f, 125.00f},
            {-11153.76f, -1948.93f, 125.00f},
            {-11128.73f, -1929.75f, 125.00f},
            {-11140.00f, -1915.00f, 122.00f},
            {-11163.00f, -1903.00f, 91.473f}
        }; //TODO: move to table

        if (player->HasItemCount(ITEM_BLACKENED_URN, 1))
        {
            if (InstanceScript* pInstance = go->GetInstanceScript())
            {
                if (pInstance->GetData(DATA_NIGHTBANE) != DONE && !go->FindNearestCreature(NPC_NIGHTBANE, 40.0f))
                    if (Creature* cr = ObjectAccessor::GetCreature(*player, pInstance->GetGuidData(DATA_NIGHTBANE)))
                        cr->GetMotionMaster()->MovePoint(0, IntroWay[0][0], IntroWay[0][1], IntroWay[0][2]);
            }
        }
        return false;
    }
};

void AddSC_karazhan_70()
{
    new go_blackened_urn_70();
}