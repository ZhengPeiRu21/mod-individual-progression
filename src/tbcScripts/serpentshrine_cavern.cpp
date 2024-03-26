
/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "Config.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "SpellInfo.h"

enum SSCMisc
{
    GO_LADY_VASHJ_BRIDGE_CONSOLE = 184568,
    MAP_SSC                      = 548,
    DATA_LURKER                  = 1,
    DATA_VASHJ                   = 6
};

class GlobalSerpentshrineScript : public GlobalScript
{
public:
    GlobalSerpentshrineScript() : GlobalScript("GlobalSerpentshrineScript") { }

    bool IsAnyBossAlive(Map* map, uint32 bossId = 0, uint32 newState = 0)
    {
        if (InstanceMap* instanceMap = map->ToInstanceMap())
        {
            if (InstanceScript* instance = instanceMap->GetInstanceScript())
            {
                uint32 bossCount = instance->GetEncounterCount() - 3;
                for (uint8 id = 0; id <= bossCount; ++id)
                {
                    if (id == bossId && newState == DONE)
                    {
                        continue;
                    }

                    if (id == DATA_LURKER)
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
        if (sConfigMgr->GetOption<int>("IndividualProgression.SerpentshrineCavern.RequireAllBosses", 1))
        {
            if (go->GetEntry() == GO_LADY_VASHJ_BRIDGE_CONSOLE)
            {
                if (IsAnyBossAlive(map))
                {
                    go->SetGameObjectFlag(GO_FLAG_NOT_SELECTABLE);
                }
            }
        }
    }

    void OnLoadSpellCustomAttr(SpellInfo* spellInfo) override
    {
        switch (spellInfo->Id)
        {
            case 38236: // Caribdis - Spawn Spitfire Totem
                spellInfo->Effects[EFFECT_0].BasePoints = 70000;
                break;
        }
    }

    void OnBeforeSetBossState(uint32 bossId, EncounterState newState, EncounterState /*oldState*/, Map* map) override
    {
        if (sConfigMgr->GetOption<int>("IndividualProgression.SerpentshrineCavern.RequireAllBosses", 1))
        {
            if (map->GetEntry()->MapID == MAP_SSC)
            {
                if (InstanceMap* instanceMap = map->ToInstanceMap())
                {
                    if (InstanceScript* instance = instanceMap->GetInstanceScript())
                    {
                        if (!IsAnyBossAlive(map, bossId, newState))
                        {
                            if (Creature* vashj = instance->GetCreature(DATA_VASHJ))
                            {
                                if (GameObject* console = vashj->FindNearestGameObject(GO_LADY_VASHJ_BRIDGE_CONSOLE, 600.0f))
                                {
                                    console->RemoveGameObjectFlag(GO_FLAG_NOT_SELECTABLE);
                                }
                            }
                        }
                    }
                }
            }
        }
    }
};

void AddSC_serpentshrine_cavern_70()
{
    new GlobalSerpentshrineScript();
}
