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
            { "set",    HandleSetIndividualProgressionCommand, SEC_GAMEMASTER,    Console::Yes },            
            { "tele",   HandleTeleIndividualProgressionCommand, SEC_GAMEMASTER,    Console::Yes },        
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
            handler->SendSysMessage("Invalid progression level.");
            return false;
        }
        player = PlayerIdentifier::FromTargetOrSelf(handler);
        if (player && player->GetConnectedPlayer())
        {
            sIndividualProgression->ForceUpdateProgressionState(player->GetConnectedPlayer(), static_cast<ProgressionState>(progressionLevel));
            handler->SendSysMessage("Progression state updated successfully");
        }
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
        player = PlayerIdentifier::FromTargetOrSelf(handler);
		 
        if (location != "naxx40" && location != "onyxia40")
        {
            handler->SendSysMessage("Invalid teleport location.");
            return false;
        }

        if (player && player->GetConnectedPlayer())
        {
            Player* target = player->GetConnectedPlayer();

            if ((location == "naxx40") && (target->GetLevel() <= IP_LEVEL_TBC) && (target->getClass() != CLASS_DEATH_KNIGHT) && isAttuned(target))
            {
                target->SetRaidDifficulty(RAID_DIFFICULTY_10MAN_HEROIC);
                target->TeleportTo(533, 3005.51f, -3434.64f, 304.195f, 6.2831f);
                return true;
            }
            else if (location == "onyxia40" && target->GetLevel() < IP_LEVEL_WOTLK)
            {
                target->SetRaidDifficulty(RAID_DIFFICULTY_10MAN_HEROIC);
                target->TeleportTo(249, 29.1607f, -71.3372f, -8.18032f, 4.58f);
                return true;
            }
            else
            {
                handler->SendSysMessage("You are not allowed to teleport to this location.");
                return false;
            }
        }
    }

};

void AddSC_individualProgression_commandscript()
{
    new individualProgression_commandscript();
}
