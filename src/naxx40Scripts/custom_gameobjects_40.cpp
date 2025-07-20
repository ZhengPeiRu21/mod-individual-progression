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
private:
    static bool isAttuned(Player* player)
    {
        if ((player->GetQuestStatus(NAXX40_ATTUNEMENT_1) == QUEST_STATUS_REWARDED) ||
		    (player->GetQuestStatus(NAXX40_ATTUNEMENT_2) == QUEST_STATUS_REWARDED) ||
		    (player->GetQuestStatus(NAXX40_ATTUNEMENT_3) == QUEST_STATUS_REWARDED))
		{
            return true;
		}
        else
		{
            return false;
	    }
    }

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

    bool isExcludedFromProgression(Player* player)
    {
        if(!sIndividualProgression->excludeAccounts) {
            return false;
        }
        std::string accountName;
        bool accountNameFound = AccountMgr::GetName(player->GetSession()->GetAccountId(), accountName);
        std::regex excludedAccountsRegex (sIndividualProgression->excludedAccountsRegex);
        return (accountNameFound && std::regex_match(accountName, excludedAccountsRegex));
    }

    bool OnGossipHello(Player* player, GameObject* /*go*/) override
    {
        if ((isExcludedFromProgression(player) && (player->GetLevel() <= IP_LEVEL_TBC) && (player->getClass() != CLASS_DEATH_KNIGHT))  || 
            ((!sIndividualProgression->requireNaxxStrath || player->GetQuestStatus(NAXX40_ENTRANCE_FLAG) == QUEST_STATUS_REWARDED) && (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5))))
        {
            player->SetRaidDifficulty(RAID_DIFFICULTY_10MAN_HEROIC);

			if (isAttuned(player) || isExcludedFromProgression(player))
                player->TeleportTo(533, 3005.51f, -3434.64f, 304.195f, 6.2831f);
        }
        return true;
    }
};

void AddSC_custom_gameobjects_40()
{
    new gobject_naxx40_tele();
}
