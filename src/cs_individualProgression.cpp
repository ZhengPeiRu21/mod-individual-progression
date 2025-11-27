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
            { "get",    HandleGetIndividualProgressionCommand,  SEC_GAMEMASTER,    Console::Yes },
            { "set",    HandleSetIndividualProgressionCommand,  SEC_GAMEMASTER,    Console::Yes },
            { "tele",   HandleTeleIndividualProgressionCommand, SEC_GAMEMASTER,    Console::Yes },
            { "view",   HandleGetIndividualProgressionCommand,  SEC_GAMEMASTER,    Console::Yes },
        };

        static ChatCommandTable commandTable =
        {
            { "individualprogression", individualProgressionTable },
            { "ip", individualProgressionTable },
        };

        return commandTable;
    }

    static bool HandleGetIndividualProgressionCommand(ChatHandler* handler, Optional<PlayerIdentifier> player)
    {
        player = PlayerIdentifier::FromTargetOrSelf(handler);
        Player* target = player->GetConnectedPlayer();
        uint32 progressionLevel = target->GetPlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE).value;
        std::string playername = target->GetName();

        handler->PSendSysMessage("Progression Level for |cff00ffff{}|r = |cff00ffff{}|r", playername, progressionLevel);
        return true;
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
        uint16 playerGUID = target->GetGUID().GetCounter();
        uint8 currentState = target->GetPlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE).value;
		uint32 currentArea = target->GetAreaId();
		
		if (progressionLevel < currentState)
        {
            for (uint8 i = progressionLevel; i < currentState; ++i)
            {
                if  (i == 0 && target->HasAchieved(RAGNAROS_KILL)) // 686
                {
                    sIndividualProgression->RemovePlayerAchievement(playerGUID, RAGNAROS_KILL);
                }
                else if  (i == 1 && target->HasAchieved(ONYXIAS_KILL)) // 684
                {
                    sIndividualProgression->RemovePlayerAchievement(playerGUID, ONYXIAS_KILL);
                }
                else if  (i == 2 && target->HasAchieved(NEFARIAN_KILL)) // 685
                {
                    sIndividualProgression->RemovePlayerAchievement(playerGUID, NEFARIAN_KILL);
                }
                else if  (i == 5 && target->HasAchieved(C_THUN_KILL)) // 687
                {
                    sIndividualProgression->RemovePlayerAchievement(playerGUID, C_THUN_KILL);
                }
                else if  (i == 8 && target->HasAchieved(MALCHEZAAR_KILL)) //  690
                {
                    sIndividualProgression->RemovePlayerAchievement(playerGUID, MALCHEZAAR_KILL);
                }
                else if  (i == 9 && target->HasAchieved(KAEL_THAS_KILL)) // 696
                {
                    sIndividualProgression->RemovePlayerAchievement(playerGUID, KAEL_THAS_KILL);
                }
                else if  (i == 10 && target->HasAchieved(ILLIDAN_KILL)) // 697
                {
                    sIndividualProgression->RemovePlayerAchievement(playerGUID, ILLIDAN_KILL);
                }
                else if  (i == 11 && target->HasAchieved(ZUL_JIN_KILL)) // 691
                {
                    sIndividualProgression->RemovePlayerAchievement(playerGUID, ZUL_JIN_KILL);
                }
                else if  (i == 12 && target->HasAchieved(KIL_JAEDEN_KILL)) // 698
                {
                    sIndividualProgression->RemovePlayerAchievement(playerGUID, KIL_JAEDEN_KILL);
                }
                else if  (i == 13 && target->HasAchieved(KEL_THUZAD_KILL)) // 575
                {
                    sIndividualProgression->RemovePlayerAchievement(playerGUID, KEL_THUZAD_KILL);
                }
                else if  (i == 15 && target->HasAchieved(ANUB_ARAK_KILL)) // 3916
                {
                    sIndividualProgression->RemovePlayerAchievement(playerGUID, ANUB_ARAK_KILL);
                }
                else if  (i == 16 && target->HasAchieved(LICH_KING_KILL)) // 4597
                {
                    sIndividualProgression->RemovePlayerAchievement(playerGUID, LICH_KING_KILL);
                }
                else if  (i == 17 && target->HasAchieved(HALION_KILL)) // 4815
                {
                    sIndividualProgression->RemovePlayerAchievement(playerGUID, HALION_KILL);
                }
            }
        }

        sIndividualProgression->ForceUpdateProgressionState(target, static_cast<ProgressionState>(progressionLevel));
        sIndividualProgression->UpdateProgressionQuests(target);
        sIndividualProgression->checkIPPhasing(target, currentArea);

        handler->PSendSysMessage("Updated Progression Level for |cff00ffff{}|r = |cff00ffff{}|r", playername, progressionLevel);
        return true;
    }

    static bool HandleTeleIndividualProgressionCommand(ChatHandler* handler, Optional<PlayerIdentifier> player, std::string location)
    {
        if (location != "naxx40" && location != "onyxia40" && location != "naxx" && location != "onyxia")
        {
            handler->PSendSysMessage("|cff00ffff{}|r is not a valid teleport location.", location);
            return false;
        }

        player = PlayerIdentifier::FromTargetOrSelf(handler);
        Player* target = player->GetConnectedPlayer();
        uint32 progressionLevel = target->GetPlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE).value;
        std::string playername = target->GetName();

        if ((location == "naxx" || location == "naxx40" ) && ((progressionLevel < PROGRESSION_TBC_TIER_5 && sIndividualProgression->isAttuned(target)) || target->IsGameMaster()))
        {
            target->SetRaidDifficulty(RAID_DIFFICULTY_10MAN_HEROIC);
            target->TeleportTo(533, 3005.51f, -3434.64f, 304.195f, 6.2831f);
            return true;
        }
        else if ((location == "onyxia" || location == "onyxia40") && ((progressionLevel < PROGRESSION_TBC_TIER_5 && target->HasItemCount(ITEM_DRAKEFIRE_AMULET)) || target->IsGameMaster()))
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
