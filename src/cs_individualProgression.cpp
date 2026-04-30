#include "Player.h"
#include "ScriptMgr.h"
#include "Tokenize.h"
#include "IndividualProgression.h"
#include "naxxramas_40.h"

using namespace Acore::ChatCommands;

class individualProgression_commandscript : public CommandScript
{
public:
    individualProgression_commandscript() : CommandScript("individualProgression_commandscript") {}

    ChatCommandTable GetCommands() const override
    {
        static ChatCommandTable ipTable =
        {
            { "get",    HandleGetIndividualProgressionCommand,    SEC_GAMEMASTER,    Console::Yes },
            { "set",    HandleSetIndividualProgressionCommand,    SEC_GAMEMASTER,    Console::Yes },
            { "tele",   HandleTeleIndividualProgressionCommand,   SEC_GAMEMASTER,    Console::Yes },
            { "setbot", HandleSetBotIndividualProgressionCommand, SEC_GAMEMASTER,    Console::Yes },
            { "setrep", HandleSetRepIndividualProgressionCommand, SEC_GAMEMASTER,    Console::Yes },
        };

        static ChatCommandTable commandTable =
        {
            { "ip", ipTable },
        };

        return commandTable;
    }

    static void CheckProgressionAchievements(Player* target, uint8 currentState, uint32 progressionLevel)
    {
        if (!currentState || (!progressionLevel && progressionLevel != 0) || !target || !target->IsInWorld())
            return;

        uint16 playerGUID = target->GetGUID().GetCounter();

        for (uint8 i = progressionLevel; i < currentState; ++i)
        {
            if (i == 0 && target->HasAchieved(RAGNAROS_KILL)) // 686
            {
                sIndividualProgression->RemovePlayerAchievement(playerGUID, RAGNAROS_KILL);
            }
            else if (i == 1 && target->HasAchieved(ONYXIA_KILL)) // 684
            {
                sIndividualProgression->RemovePlayerAchievement(playerGUID, ONYXIA_KILL);
            }
            else if (i == 2 && target->HasAchieved(NEFARIAN_KILL)) // 685
            {
                sIndividualProgression->RemovePlayerAchievement(playerGUID, NEFARIAN_KILL);
            }
            else if (i == 5 && target->HasAchieved(C_THUN_KILL)) // 687
            {
                sIndividualProgression->RemovePlayerAchievement(playerGUID, C_THUN_KILL);
            }
            else if (i == 8 && target->HasAchieved(MALCHEZAAR_KILL)) //  690
            {
                sIndividualProgression->RemovePlayerAchievement(playerGUID, MALCHEZAAR_KILL);
            }
            else if (i == 9 && target->HasAchieved(KAEL_THAS_KILL)) // 696
            {
                sIndividualProgression->RemovePlayerAchievement(playerGUID, KAEL_THAS_KILL);
            }
            else if (i == 10 && target->HasAchieved(ILLIDAN_KILL)) // 697
            {
                sIndividualProgression->RemovePlayerAchievement(playerGUID, ILLIDAN_KILL);
            }
            else if (i == 11 && target->HasAchieved(ZUL_JIN_KILL)) // 691
            {
                sIndividualProgression->RemovePlayerAchievement(playerGUID, ZUL_JIN_KILL);
            }
            else if (i == 12 && target->HasAchieved(KIL_JAEDEN_KILL)) // 698
            {
                sIndividualProgression->RemovePlayerAchievement(playerGUID, KIL_JAEDEN_KILL);
            }
            else if (i == 13 && target->HasAchieved(KEL_THUZAD_KILL)) // 575
            {
                sIndividualProgression->RemovePlayerAchievement(playerGUID, KEL_THUZAD_KILL);
            }
            else if (i == 15 && target->HasAchieved(ANUB_ARAK_KILL)) // 3916
            {
                sIndividualProgression->RemovePlayerAchievement(playerGUID, ANUB_ARAK_KILL);
            }
            else if (i == 16 && target->HasAchieved(LICH_KING_KILL)) // 4597
            {
                sIndividualProgression->RemovePlayerAchievement(playerGUID, LICH_KING_KILL);
            }
            else if (i == 17 && target->HasAchieved(HALION_KILL)) // 4815
            {
                sIndividualProgression->RemovePlayerAchievement(playerGUID, HALION_KILL);
            }
        }
    }

    static bool HandleGetIndividualProgressionCommand(ChatHandler* handler, Optional<PlayerIdentifier> player)
    {
        player = PlayerIdentifier::FromTargetOrSelf(handler);

        if (!player)
        {
            handler->SendSysMessage("Player not found.");
            return false;
        }

        Player* target = player->GetConnectedPlayer();
        uint32 progressionLevel = sIndividualProgression->GetPlayerProgressionFromQuests(target);
        std::string playername = target->GetName();

        handler->PSendSysMessage("Progression Level for |cff00ffff{}|r = |cff00ffff{}|r", playername, progressionLevel);
        return true;
    }

    static bool HandleSetIndividualProgressionCommand(ChatHandler* handler, Optional<PlayerIdentifier> player, uint32 progressionLevel)
    {
	    if (!progressionLevel && progressionLevel != 0)
            return false;

        if (progressionLevel > PROGRESSION_WOTLK_TIER_5)
        {
            handler->SendSysMessage("Invalid Progression Level.");
            return false;
        }

        player = PlayerIdentifier::FromTargetOrSelf(handler);
        Player* target = player->GetConnectedPlayer();
        std::string playername = target->GetName();
        uint8 currentState = sIndividualProgression->GetPlayerProgressionFromQuests(target);
        uint32 currentArea = target->GetAreaId();

        if (progressionLevel < currentState)
        {
            CheckProgressionAchievements(target, currentState, progressionLevel);
        }

        sIndividualProgression->ForceUpdateProgressionState(target, static_cast<ProgressionState>(progressionLevel));
        sIndividualProgression->checkIPPhasing(target, currentArea);

        handler->PSendSysMessage("Updated Progression Level for |cff00ffff{}|r = |cff00ffff{}|r", playername, progressionLevel);
        return true;
    }

    static bool HandleSetBotIndividualProgressionCommand(ChatHandler* handler)
    {
        Player* player = handler->GetSession()->GetPlayer();

        if (!player)
        {
            handler->SendSysMessage("Player not found.");
            return false;
        }

        Group* group = player->GetGroup();

        std::string playername = player->GetName();
        uint32 currentState = sIndividualProgression->GetPlayerProgressionFromQuests(player);
        uint32 currentArea = player->GetAreaId();

        if (!group)
        {
            handler->SendSysMessage("You need to be in a group to use this command.");
            return false;
        }

        for (GroupReference* itr = group->GetFirstMember(); itr; itr = itr->next())
        {
            Player* member = itr->GetSource();
            if (!member || !sIndividualProgression->isExcludedFromProgression(member))
                continue;

            sIndividualProgression->ForceUpdateProgressionState(member, static_cast<ProgressionState>(currentState));
            sIndividualProgression->CheckAdjustments(member);
            sIndividualProgression->checkIPPhasing(member, currentArea);
        }

        handler->PSendSysMessage("Updated Progression Level for all RND bots = |cff00ffff{}|r", currentState);
        return true;
    }

    static bool HandleSetRepIndividualProgressionCommand(ChatHandler* handler)
    {
        Player* player = handler->GetSession()->GetPlayer();
        uint32 accountId = handler->GetSession()->GetAccountId();
        
        if (!player || !accountId)
            return false;

        Group* group = player->GetGroup();
        
        if (!sIndividualProgression->EnableSetRepCommand)
        {
            handler->SendSysMessage("The .ip setrep command is currently disabled.");
            return false;
        }
        
        if (!group)
        {
            ChatHandler(player->GetSession()).PSendSysMessage("You need to be in a group to use this command.");
            return false;
        }

        static constexpr std::array<uint32, 10> Shared_Honored_Checklist =
        {
            910,  // Brood of Nozdormu
            932,  // The Aldor
            933,  // The Consortium
            934,  // The Scryers
            942,  // Cenarion Expedition
            989,  // Keepers of Time
            1011, // Lower City
            1073, // The Kalu'ak
            1090, // Kirin Tor
            1098  // Knights of the Ebon Blade
        };

        static constexpr std::array<uint32, 10> Shared_Friendly_Checklist =
        {
            59,   // Thorium Brotherhood
            529,  // Argent Dawn
            609,  // Cenarion Circle
            935,  // The Sha'tar
            967,  // The Violet Eye
            990,  // The Scale of the Sands
            1012, // Ashtongue Deathsworn
            1031, // Sha'tari Skyguard
            1091, // The Wyrmrest Accord
            1119  // The Sons of Hodir
        };

        static constexpr std::array<uint32, 10> Shared_Neutral_Checklist =
        {
            270,  // Zandalar Tribe
            349,  // Ravenholdt
            576,  // Timbermaw Hold
            749,  // Hydraxian Waterlords
            909,  // Darkmoon Faire
            970,  // Sporeggar
            1015, // Netherwing
            1038, // Ogri'la
            1077, // Shattered Sun Offensive
            1156  // The Ashen Verdict
        };

        static constexpr std::array<uint32, 4> Alliance_Honored_Checklist =
        {
            946,  // Honor Hold
            978,  // Kurenai
            1037, // Alliance Vanguard
            1094  // The Silver Covenant
        };

        static constexpr std::array<uint32, 4> Alliance_Neutral_Checklist =
        {
            509,  // The League of Arathor
            589,  // Wintersaber Trainers
            730,  // Stormpike Guard
            890   // Silverwing Sentinels
        };

        static constexpr std::array<uint32, 4> Horde_Honored_Checklist =
        {
            941,  // Mag'har
            947,  // Thrallmar
            1052, // Horde Expedition
            1124  // The Sunreavers
        };

        static constexpr std::array<uint32, 4> Horde_Neutral_Checklist =
        {
            510,  // The Defilers
            729,  // Frostwolf Clan
            889,  // Warsong Outriders
            922   // Tranquillien
        };

        std::regex sharedFactionIdsRegex(sIndividualProgression->sharedFactionIdsRegex);
        TeamId teamId = player->GetTeamId(true);

        for (uint32 factionId : Shared_Honored_Checklist)
        {
            if (sIndividualProgression->LimitedSetRepCommand && player->GetReputationRank(factionId) < REP_HONORED)
                continue;

            if ((factionId == 910 || factionId == 932 || factionId == 934) && player->GetReputationRank(factionId) < REP_HONORED) // Skip if not Honored
                continue;

            if (std::regex_match(std::to_string(factionId), sharedFactionIdsRegex))
                sIndividualProgression->UpdateAccountReputation(factionId, accountId, player);
        }

        for (uint32 factionId : Shared_Friendly_Checklist)
        {
            if (sIndividualProgression->LimitedSetRepCommand && player->GetReputationRank(factionId) < REP_FRIENDLY)
                continue;

            if (std::regex_match(std::to_string(factionId), sharedFactionIdsRegex))
                sIndividualProgression->UpdateAccountReputation(factionId, accountId, player);
        }

        for (uint32 factionId : Shared_Neutral_Checklist)
        {
            if (sIndividualProgression->LimitedSetRepCommand && player->GetReputationRank(factionId) < REP_NEUTRAL)
                continue;

            if (std::regex_match(std::to_string(factionId), sharedFactionIdsRegex))
                sIndividualProgression->UpdateAccountReputation(factionId, accountId, player);
        }

        if (teamId == TEAM_ALLIANCE)
        {
            for (uint32 factionId : Alliance_Honored_Checklist)
            {
                if (sIndividualProgression->LimitedSetRepCommand && player->GetReputationRank(factionId) < REP_HONORED)
                    continue;

                if (std::regex_match(std::to_string(factionId), sharedFactionIdsRegex))
                    sIndividualProgression->UpdateAccountReputation(factionId, accountId, player);
            }

            for (uint32 factionId : Alliance_Neutral_Checklist)
            {
                if (sIndividualProgression->LimitedSetRepCommand && player->GetReputationRank(factionId) < REP_NEUTRAL)
                    continue;

                if (std::regex_match(std::to_string(factionId), sharedFactionIdsRegex))
                    sIndividualProgression->UpdateAccountReputation(factionId, accountId, player);
            }
        }

        if (teamId == TEAM_HORDE)
        {
            for (uint32 factionId : Horde_Honored_Checklist)
            {
                if (sIndividualProgression->LimitedSetRepCommand && player->GetReputationRank(factionId) < REP_HONORED)
                    continue;

                if (std::regex_match(std::to_string(factionId), sharedFactionIdsRegex))
                    sIndividualProgression->UpdateAccountReputation(factionId, accountId, player);
            }

            for (uint32 factionId : Horde_Neutral_Checklist)
            {
                if (sIndividualProgression->LimitedSetRepCommand && player->GetReputationRank(factionId) < REP_NEUTRAL)
                    continue;

                if (std::regex_match(std::to_string(factionId), sharedFactionIdsRegex))
                    sIndividualProgression->UpdateAccountReputation(factionId, accountId, player);
            }
        }

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
        uint32 progressionLevel = sIndividualProgression->GetPlayerProgressionFromQuests(target);
        std::string playername = target->GetName();

        if (location == "naxx" || location == "naxx40")
        {
 			if ((progressionLevel < PROGRESSION_TBC_TIER_5) && (target->GetLevel() <= IP_LEVEL_TBC))
            {
                if (sIndividualProgression->isAttuned(target) || sIndividualProgression->isExcludedFromProgression(target))
                {
                    target->SetRaidDifficulty(RAID_DIFFICULTY_10MAN_HEROIC);
                    target->TeleportTo(533, 3005.51f, -3434.64f, 304.195f, 6.2831f);
                    return true;
                }
                else
                {
                    handler->PSendSysMessage("|cff00ffff{}|r has not completed the Naxxramas attunement quest.", playername);
                    return false;
                }
            }
            else
            {
                handler->PSendSysMessage("|cff00ffff{}|r is not allowed to teleport to |cff00ffff{}|r.", playername, location);
                return false;
            }
        }
        else if (location == "onyxia" || location == "onyxia40")
        {
            if ((progressionLevel < PROGRESSION_TBC_TIER_5) && (target->GetLevel() <= IP_LEVEL_TBC))
            {
                if (target->HasItemCount(ITEM_DRAKEFIRE_AMULET) || sIndividualProgression->isExcludedFromProgression(target))
                {
                    target->SetRaidDifficulty(RAID_DIFFICULTY_10MAN_HEROIC);
                    target->TeleportTo(249, 29.1607f, -71.3372f, -8.18032f, 4.58f);
                    return true;
                }
                else
                {
                    handler->PSendSysMessage("|cff00ffff{}|r does not have a Drakefire Amulet.", playername);
                    return false;
                }
            }
            else
            {
                handler->PSendSysMessage("|cff00ffff{}|r is not allowed to teleport to |cff00ffff{}|r.", playername, location);
                return false;
            }
        }

        return false;
    }
};

void AddSC_individualProgression_commandscript()
{
    new individualProgression_commandscript();
}
