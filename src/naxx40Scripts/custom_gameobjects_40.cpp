#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellAuraEffects.h"
#include "SpellScript.h"
#include "GameObjectAI.h"
#include "Player.h"
#include "naxxramas.h"
#include "IndividualProgression.h"

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
        if ((sIndividualProgression->isExcludedFromProgression(player) && (player->GetLevel() <= IP_LEVEL_TBC))  || 
            ((!sIndividualProgression->requireNaxxStrath || player->GetQuestStatus(NAXX40_ENTRANCE_FLAG) == QUEST_STATUS_REWARDED) && (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5))))
        {
            player->SetRaidDifficulty(RAID_DIFFICULTY_10MAN_HEROIC);

			if (sIndividualProgression->isAttuned(player) || sIndividualProgression->isExcludedFromProgression(player))
                player->TeleportTo(533, 3005.51f, -3434.64f, 304.195f, 6.2831f);
        }
        return true;
    }
};

void AddSC_custom_gameobjects_40()
{
    new gobject_naxx40_tele();
}
