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
            { "pvp",    HandlePVPIndividualProgressionCommand,    SEC_GAMEMASTER,    Console::Yes },
            { "attune", HandleAttuneIndividualProgressionCommand, SEC_GAMEMASTER,    Console::Yes },
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

        static const std::unordered_map<uint8, uint32> bossMap =
        {
            { 0,  RAGNAROS_KILL     }, // 686
            { 1,  ONYXIA_KILL       }, // 684
            { 2,  NEFARIAN_KILL     }, // 685
            { 5,  C_THUN_KILL       }, // 687
            { 8,  MALCHEZAAR_KILL   }, // 690
            { 9,  KAEL_THAS_KILL    }, // 696
            { 10, ILLIDAN_KILL      }, // 697
            { 12, KIL_JAEDEN_KILL   }, // 698
            { 13, KEL_THUZAD_KILL   }, // 575
            { 15, ANUB_ARAK_KILL    }, // 3916
            { 16, LICH_KING_KILL    }, // 4597
            { 17, HALION_KILL       }, // 4815
        };

        uint16 playerGUID = target->GetGUID().GetCounter();

        for (auto const& [progressionId, achievementId] : bossMap)
        {
            if (progressionId < progressionLevel || progressionId >= currentState)
                continue;

            if (target->HasAchieved(achievementId))
                sIndividualProgression->RemovePlayerAchievement(playerGUID, achievementId);
        }
    }

    static bool HandleGetIndividualProgressionCommand(ChatHandler* handler, Optional<PlayerIdentifier> player)
    {
        if (!player)
            player = PlayerIdentifier::FromTargetOrSelf(handler);

        if (!player)
        {
            handler->SendSysMessage("Player not found.");
            return false;
        }

        std::string playername = player->GetName();
        Player* target = player->GetConnectedPlayer();
        if (!target)
        {
            handler->PSendSysMessage("Player |cff00ffff{}|r is not online.", playername);
            return false;
        }

        uint32 progressionLevel = sIndividualProgression->GetPlayerProgressionFromQuests(target);

        handler->PSendSysMessage("Progression Level for |cff00ffff{}|r = |cff00ffff{}|r", playername, progressionLevel);
        return true;
    }

    static bool HandleSetIndividualProgressionCommand(ChatHandler* handler, Optional<PlayerIdentifier> player, uint32 progressionLevel)
    {
	    if (!progressionLevel && progressionLevel != 0)
            return false;

        if ((progressionLevel > PROGRESSION_WOTLK_TIER_5) || progressionLevel == 11)
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
            if (!member || sIndividualProgression->isNormalAccount(member))
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

        static constexpr std::array<uint32, 9> Shared_Honored_Checklist =
        {
            910,  // Brood of Nozdormu
            932,  // The Aldor
            933,  // The Consortium
            934,  // The Scryers
            989,  // Keepers of Time
            1011, // Lower City
            1073, // The Kalu'ak
            1090, // Kirin Tor
            1098  // Knights of the Ebon Blade
        };

        static constexpr std::array<uint32, 11> Shared_Friendly_Checklist =
        {
            59,   // Thorium Brotherhood
            529,  // Argent Dawn
            609,  // Cenarion Circle
            935,  // The Sha'tar
            942,  // Cenarion Expedition
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
 			if (target->GetLevel() <= 70 && ((progressionLevel < PROGRESSION_TBC_TIER_5) || sIndividualProgression->isExcludedAccount(target)))
            {
                if (sIndividualProgression->isAttuned(target))
                {
                    Group* group = target->GetGroup();

                    if (group)
                        group->SetRaidDifficulty(RAID_DIFFICULTY_10MAN_HEROIC);
                    else
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
            if (target->GetLevel() <= 70 && ((progressionLevel < PROGRESSION_TBC_TIER_5) || sIndividualProgression->isExcludedAccount(target)))
            {
                if (target->HasItemCount(ITEM_DRAKEFIRE_AMULET))
                {
                    Group* group = target->GetGroup();

                    if (group)
                        group->SetRaidDifficulty(RAID_DIFFICULTY_10MAN_HEROIC);
                    else
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

    static bool HandleAttuneIndividualProgressionCommand(ChatHandler* handler, std::string location)
    {
        Player* player = handler->GetSession()->GetPlayer();

        if (!player)
        {
            handler->SendSysMessage("Player not found.");
            return false;
        }

        if (location.empty())
            return false;
        
        if (location != "onyxia40" && location != "onyxia" && location != "bt" && location != "blacktemple")
        {
            handler->PSendSysMessage("|cff00ffff{}|r is not a valid attunement.", location);
            return false;
        }

        sIndividualProgression->UpdateGroupAttunement(player, location);

        return true;
    }

    static bool HandlePVPIndividualProgressionCommand(ChatHandler* handler, Optional<PlayerIdentifier> player)
    {
        if (!player)
            player = PlayerIdentifier::FromTargetOrSelf(handler);

        if (!player)
        {
            handler->SendSysMessage("Player not found.");
            return false;
        }

        std::string playername = player->GetName();
        Player* target = player->GetConnectedPlayer();
        if (!target)
        {
            handler->PSendSysMessage("Player |cff00ffff{}|r is not online.", playername);
            return false;
        }

        uint32 kills = target->GetUInt32Value(PLAYER_FIELD_LIFETIME_HONORABLE_KILLS);
        TeamId teamId = target->GetTeamId(true);

        IppPvPTitles const pvpTitlesList[14] =
        {
            { sIndividualProgression->VanillaPvpKillRank14, TitleData[RANK_FOURTEEN].TitleId[teamId] },
            { sIndividualProgression->VanillaPvpKillRank13, TitleData[RANK_THIRTEEN].TitleId[teamId] },
            { sIndividualProgression->VanillaPvpKillRank12, TitleData[RANK_TWELVE].TitleId[teamId]   },
            { sIndividualProgression->VanillaPvpKillRank11, TitleData[RANK_ELEVEN].TitleId[teamId]   },
            { sIndividualProgression->VanillaPvpKillRank10, TitleData[RANK_TEN].TitleId[teamId]      },
            { sIndividualProgression->VanillaPvpKillRank9,  TitleData[RANK_NINE].TitleId[teamId]     },
            { sIndividualProgression->VanillaPvpKillRank8,  TitleData[RANK_EIGHT].TitleId[teamId]    },
            { sIndividualProgression->VanillaPvpKillRank7,  TitleData[RANK_SEVEN].TitleId[teamId]    },
            { sIndividualProgression->VanillaPvpKillRank6,  TitleData[RANK_SIX].TitleId[teamId]      },
            { sIndividualProgression->VanillaPvpKillRank5,  TitleData[RANK_FIVE].TitleId[teamId]     },
            { sIndividualProgression->VanillaPvpKillRank4,  TitleData[RANK_FOUR].TitleId[teamId]     },
            { sIndividualProgression->VanillaPvpKillRank3,  TitleData[RANK_THREE].TitleId[teamId]    },
            { sIndividualProgression->VanillaPvpKillRank2,  TitleData[RANK_TWO].TitleId[teamId]      },
            { sIndividualProgression->VanillaPvpKillRank1,  TitleData[RANK_ONE].TitleId[teamId]      },
        };

        int highestTitle = -1;
        int nextPvPRank = -1;
        uint32 killsForNextRank = 0;
        uint32 killsToNextRank = 0;

        constexpr int ALLIANCE_PVP_RANK_OFFSET = 1;
        constexpr int HORDE_PVP_RANK_OFFSET = 14;  // horde titles start at ID 15

        for (IppPvPTitles title : pvpTitlesList)
        {
            if (kills >= title.RequiredKills)
            {
                highestTitle = title.TitleId;
                break;
            }
            else
            {
                killsForNextRank = title.RequiredKills;
                nextPvPRank = title.TitleId;
            }
        }

        if (killsForNextRank > 0)
            killsToNextRank = killsForNextRank - kills;

        if (nextPvPRank == -1)
        {
            handler->PSendSysMessage("|cff00ffff{}|r has achieved the highest PvP rank and currently has {} honorable kills.", playername, kills);
            return true;
        }
        else if (highestTitle == -1)
        {
            handler->PSendSysMessage("|cff00ffff{}|r has not achieved any PvP rank and currently has {} honorable kills.", playername, kills);
            handler->PSendSysMessage("|cff00ffff{}|r needs {} more honorable kills for rank 1.", playername, killsToNextRank);
            return true;
        }
        else
        {
            if (teamId == TEAM_ALLIANCE)
            {
                handler->PSendSysMessage("PvP rank for |cff00ffff{}|r = |cff00ffff{}|r", playername, highestTitle + ALLIANCE_PVP_RANK_OFFSET);
                handler->PSendSysMessage("|cff00ffff{}|r needs {} more honorable kills for rank {}.", playername, killsToNextRank, nextPvPRank + ALLIANCE_PVP_RANK_OFFSET);
                return true;
            }
            else // teamId == TEAM_HORDE
            {
                handler->PSendSysMessage("PvP rank for |cff00ffff{}|r = |cff00ffff{}|r", playername, highestTitle - HORDE_PVP_RANK_OFFSET);
                handler->PSendSysMessage("|cff00ffff{}|r needs {} more honorable kills for rank {}.", playername, killsToNextRank, nextPvPRank - HORDE_PVP_RANK_OFFSET);
                return true;
            }
        }
    }
};

void AddSC_individualProgression_commandscript()
{
    new individualProgression_commandscript();
}
