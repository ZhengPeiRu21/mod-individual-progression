#include "IndividualProgression.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellAuraEffects.h"
#include "SpellScript.h"
#include "GameObjectAI.h"
#include "Player.h"
#include "naxxramas.h"

class gobject_naxx40_tele : public GameObjectScript
{
public:
    gobject_naxx40_tele() : GameObjectScript("gobject_naxx40_tele") { }

    struct gobject_naxx40_teleAI: GameObjectAI
    {
        explicit gobject_naxx40_teleAI(GameObject* object) : GameObjectAI(object) { };

    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_naxx40_teleAI(object);
    }

    bool OnGossipHello(Player* player, GameObject* /*go*/) override
    {
        if (!sIndividualProgression->groupHaveLevelDisparity(player)
            && player->GetLevel() <= IP_LEVEL_TBC
            && (sIndividualProgression->isExcludedFromProgression(player)
                || (sIndividualProgression->hasPassedProgression(player, PROGRESSION_NAXX40))
                || ((!sIndividualProgression->requireNaxxStrath || player->GetQuestStatus(NAXX40_ENTRANCE_FLAG) == QUEST_STATUS_REWARDED))
                || player->IsGameMaster()))
        {
            //player->SetRaidDifficulty(RAID_DIFFICULTY_25MAN_HEROIC); // quick hack #ZhengPeiRu21/mod-individual-progression/issues/359
            player->SetRaidDifficulty(RAID_DIFFICULTY_10MAN_HEROIC);
            player->SendRaidDifficulty(true);

            if (!sIndividualProgression->groupHaveLevelDisparity(player) 
                && (sIndividualProgression->isAttunedNaxx(player) || (sIndividualProgression->isExcludedFromProgression(player) && player->GetLevel() <= IP_LEVEL_TBC)))
            {
                player->TeleportTo(MAP_NAXXRAMAS, 3006.05f, -3466.81f, 298.219f, 4.6824f);
            }
        }
        return true;
    }
};

void AddSC_custom_gameobjects_40()
{
    new gobject_naxx40_tele();
}
