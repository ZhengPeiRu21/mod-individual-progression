#include "Chat.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "Tokenize.h"
#include "IndividualProgression.h"
#include "naxxramas_40.h"

using namespace Acore::ChatCommands;

class individualProgression_commandscript : public CommandScript
{
public:
    individualProgression_commandscript() : CommandScript("individualProgression_commandscript") { }

    ChatCommandTable GetCommands() const override
    {
        static ChatCommandTable individualProgressionTable =
        {
            { "set",    HandleSetIndividualProgressionCommand,  SEC_GAMEMASTER,    Console::Yes },
            { "tele",   HandleTeleIndividualProgressionCommand, SEC_GAMEMASTER,    Console::Yes },
            { "view",   HandleViewIndividualProgressionCommand, SEC_GAMEMASTER,    Console::Yes },
            { "get",    HandleViewIndividualProgressionCommand, SEC_GAMEMASTER,    Console::Yes },
        };

        static ChatCommandTable commandTable =
        {
            { "individualprogression", individualProgressionTable },
            { "ip", individualProgressionTable },
        };

        return commandTable;
    }

    static bool HandleSetIndividualProgressionCommand(ChatHandler* handler, Optional<PlayerIdentifier> player, uint32 progressionLevel)
    {
        if (progressionLevel > PROGRESSION_WOTLK_TIER_5)
        {
            handler->SendSysMessage("Invalid Progression Level.");
            return false;
        }

        player = PlayerIdentifier::FromTargetOrSelf(handler);
        Player* target = player->GetConnectedPlayer();
        std::string playername = target->GetName();

        sIndividualProgression->ForceUpdateProgressionState(target, static_cast<ProgressionState>(progressionLevel));
        sIndividualProgression->UpdateProgressionQuests(target);

        handler->PSendSysMessage("Updated Progression Level for |cff00ffff{}|r = |cff00ffff{}|r", playername, progressionLevel);
        return true;
    }

    static bool HandleViewIndividualProgressionCommand(ChatHandler* handler, Optional<PlayerIdentifier> player)
    {
        player = PlayerIdentifier::FromTargetOrSelf(handler);
        Player* target = player->GetConnectedPlayer();
        uint32 progressionLevel = target->GetPlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE).value;
        std::string playername = target->GetName();

        handler->PSendSysMessage("Progression Level for |cff00ffff{}|r = |cff00ffff{}|r", playername, progressionLevel);
        return true;
    }

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

    static bool HandleTeleIndividualProgressionCommand(ChatHandler* handler, Optional<PlayerIdentifier> player, std::string location)
    {	 
        if (location != "naxx40" && location != "onyxia40")
        {
            handler->PSendSysMessage("|cff00ffff{}|r is not a valid teleport location.", location);
            return false;
        }

        player = PlayerIdentifier::FromTargetOrSelf(handler);
        Player* target = player->GetConnectedPlayer();
        uint32 progressionLevel = target->GetPlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE).value;
        std::string playername = target->GetName();

        if (location == "naxx40" && ((progressionLevel < PROGRESSION_TBC_TIER_5 && isAttuned(target)) || target->IsGameMaster()))
        {
            target->SetRaidDifficulty(RAID_DIFFICULTY_10MAN_HEROIC);
            target->TeleportTo(533, 3005.51f, -3434.64f, 304.195f, 6.2831f);
            return true;
        }
        else if (location == "onyxia40" && ((progressionLevel < PROGRESSION_TBC_TIER_5 && target->HasItemCount(ITEM_DRAKEFIRE_AMULET)) || target->IsGameMaster()))
        {
            target->SetRaidDifficulty(RAID_DIFFICULTY_10MAN_HEROIC);
            target->TeleportTo(249, 29.1607f, -71.3372f, -8.18032f, 4.58f);
            return true;
        }
        else
        {
            handler->PSendSysMessage("|cff00ffff{}|r is not allowed to teleport to |cff00ffff{}|r.", playername, location);
            return false;
        }
    }

};

void AddSC_individualProgression_commandscript()
{
    new individualProgression_commandscript();
}
