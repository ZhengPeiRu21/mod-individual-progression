
/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "Config.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "SpellInfo.h"

enum SSCMisc
{
    GO_RIGHT_KAEL_DOOR  = 184327,
    GO_LEFT_KAEL_DOOR   = 184329,
    MAP_TK              = 550,
    DATA_KAEL           = 3
};

class GlobalTheEyeScript : public GlobalScript
{
public:
    GlobalTheEyeScript() : GlobalScript("GlobalTheEyeScript") { }

    bool IsAnyBossAlive(Map* map, uint32 bossId = 0, uint32 newState = 0)
    {
        if (InstanceMap* instanceMap = map->ToInstanceMap())
        {
            if (InstanceScript* instance = instanceMap->GetInstanceScript())
            {
                uint32 bossCount = instance->GetEncounterCount() - 1;
                for (uint8 id = 0; id < bossCount; ++id)
                {
                    if (id == bossId && newState == DONE)
                    {
                        continue;
                    }

                    if (instance->GetBossState(id) != DONE)
                    {
                        return true;
                    }
                }
            }
        }

        return false;
    }

    void AfterInstanceGameObjectCreate(Map* map, GameObject* go) override
    {
        if (sConfigMgr->GetOption<int>("IndividualProgression.TheEye.RequireAllBosses", 1))
        {
            if (go->GetEntry() == GO_RIGHT_KAEL_DOOR || go->GetEntry() == GO_LEFT_KAEL_DOOR)
            {
                if (IsAnyBossAlive(map))
                {
                    go->SetGoState(GO_STATE_READY);
                }
            }
        }
    }

    void OnBeforeSetBossState(uint32 bossId, EncounterState newState, EncounterState /*oldState*/, Map* map) override
    {
        if (sConfigMgr->GetOption<int>("IndividualProgression.TheEye.RequireAllBosses", 1))
        {
            if (map->GetEntry()->MapID == MAP_TK)
            {
                if (InstanceMap* instanceMap = map->ToInstanceMap())
                {
                    if (InstanceScript* instance = instanceMap->GetInstanceScript())
                    {
                        if (!IsAnyBossAlive(map, bossId, newState))
                        {
                            if (Creature* kael = instance->GetCreature(DATA_KAEL))
                            {
                                if (GameObject* rightDoor = kael->FindNearestGameObject(GO_RIGHT_KAEL_DOOR, 600.0f))
                                {
                                    if (GameObject* leftDoor = kael->FindNearestGameObject(GO_LEFT_KAEL_DOOR, 600.0f))
                                    {
                                        rightDoor->SetGoState(GO_STATE_ACTIVE);
                                        leftDoor->SetGoState(GO_STATE_ACTIVE);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
};

void AddSC_the_eye_70()
{
    new GlobalTheEyeScript();
}
