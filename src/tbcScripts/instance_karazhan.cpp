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

void AddSC_karazhan_70()
{
    new go_blackened_urn_70();
}