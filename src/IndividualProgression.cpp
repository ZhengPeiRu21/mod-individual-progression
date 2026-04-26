/*
    Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
*/

#include "IndividualProgression.h"
#include "naxxramas_40.h"
#include "ReputationMgr.h"

IndividualProgression* IndividualProgression::instance()
{
    static IndividualProgression instance;
    return &instance;
}

uint8 IndividualProgression::GetPlayerProgressionFromQuests(Player* player) const
{
    if (!player || !player->IsInWorld())
        return 0;

    uint8 progressionLevel = 0;
    for (uint8 i = PROGRESSION_MOLTEN_CORE; i <= PROGRESSION_WOTLK_TIER_5; ++i)
    {
        uint32 PROGRESSION_QUEST = 66000 + i;
        if (player->GetQuestStatus(PROGRESSION_QUEST) == QUEST_STATUS_REWARDED)
            progressionLevel = i;
    }
    return progressionLevel;
}

bool IndividualProgression::hasPassedProgression(Player* player, ProgressionState state) const
{
    if (!enabled || !state || !player || !player->IsInWorld())
        return false;

    if (progressionLimit && (state > progressionLimit))
        return false;

    return sIndividualProgression->GetPlayerProgressionFromQuests(player) >= state;
}

bool IndividualProgression::isBeforeProgression(Player* player, ProgressionState state)
{
    if (!state || !player || !player->IsInWorld())
        return false;

    return sIndividualProgression->GetPlayerProgressionFromQuests(player) < state;
}

void IndividualProgression::UpdateProgressionState(Player* player, ProgressionState newState) const
{
    if (!enabled || !newState || !player || !player->IsInWorld())
        return;

    if (progressionLimit && newState > progressionLimit)
        return;

    uint8 currentState = GetPlayerProgressionFromQuests(player);
    if (newState > currentState)
    {
        uint32 PROGRESSION_QUEST = 66000 + newState;
        if (player->GetQuestStatus(PROGRESSION_QUEST) != QUEST_STATUS_REWARDED)
        {
            Quest const* quest = sObjectMgr->GetQuestTemplate(PROGRESSION_QUEST);
            if (quest)
            {
                player->AddQuest(quest, nullptr);
                player->CompleteQuest(PROGRESSION_QUEST);
                player->RewardQuest(quest, 0, player, false, false);
            }
        }
    }
}

void IndividualProgression::ForceUpdateProgressionState(Player* player, ProgressionState newState)
{
    if (!player || !player->IsInWorld())
        return;

    // remove all hidden progression quests first
    for (uint8 i = PROGRESSION_MOLTEN_CORE; i <= PROGRESSION_WOTLK_TIER_5; ++i)
    {
        uint32 PROGRESSION_QUEST = 66000 + i;
        if (player->GetQuestStatus(PROGRESSION_QUEST) == QUEST_STATUS_REWARDED)
            player->RemoveRewardedQuest(PROGRESSION_QUEST);
    }

    // if newState is non-zero, add the corresponding progression quest
    if (newState)
    {
        uint32 PROGRESSION_QUEST = 66000 + newState;
        Quest const* quest = sObjectMgr->GetQuestTemplate(PROGRESSION_QUEST);
        if (quest)
        {
            player->AddQuest(quest, nullptr);
            player->CompleteQuest(PROGRESSION_QUEST);
            player->RewardQuest(quest, 0, player, false, false);
        }
    }
}

void IndividualProgression::CheckAdjustments(Player* player) const
{
    if (!enabled || !player || !player->IsInWorld())
        return;

    if (player->getClass() == CLASS_HUNTER)
    {
        // Remove the 15% built-in ranged haste that was added to hunters in WotLK - This lets us add haste spells back to quivers
        player->RemoveAura(RANGED_HASTE_SPELL);
        player->CastSpell(player, RANGED_HASTE_SPELL, false);
    }

    player->RemoveAura(HP_AURA_SPELL);
    player->RemoveAura(ABSORB_SPELL);
}

float IndividualProgression::ComputeVanillaAdjustment(uint8 playerLevel, float configAdjustmentValue)
{
    float adjustmentApplyPercent = (float(playerLevel) - 10.0f) / 50.0f;
    return playerLevel > 10 ? 1.0f - ((1.0f - configAdjustmentValue) * adjustmentApplyPercent) : 1;
}

// Return the highest progression level achieved by an account
uint8 IndividualProgression::GetAccountProgression(uint32 accountId)
{
    uint8 progressionLevel = 0;

    uint32 minQuest = 66000 + PROGRESSION_MOLTEN_CORE;
    uint32 maxQuest = 66000 + PROGRESSION_WOTLK_TIER_5;

    // Query rewarded hidden progression quests for all characters on the account
    QueryResult result = CharacterDatabase.Query(
        "SELECT cc.quest FROM character_queststatus_rewarded cc JOIN characters c ON cc.guid = c.guid WHERE c.account = {} AND cc.quest BETWEEN {} AND {};",
        accountId, minQuest, maxQuest);

    if (result)
    {
        do
        {
            uint32 questId = (*result)[0].Get<uint32>();
            uint8 level = uint8(questId - 66000);
            if (level > progressionLevel)
                progressionLevel = level;
        } while (result->NextRow());
    }
    return progressionLevel;
}

void IndividualProgression::UpdateAccountReputation(uint32 factionId, uint32 accountId, Player* player)
{
    if (!factionId || !accountId || !player || !player->IsInWorld())
        return;

    uint32 curRep = player->GetReputationMgr().GetReputation(factionId);
    uint32 newRep = 0;

    if (!curRep)
        curRep = 0;

    // Query reputation value for all characters on the account
    QueryResult result = CharacterDatabase.Query(
        "SELECT standing FROM character_reputation WHERE faction = {} AND guid IN(SELECT guid FROM characters WHERE ACCOUNT = {});",
        factionId, accountId);

    // set current reputation to the highest reputation value found on the account for the given faction
    if (result)
    {
        do
        {
            uint32 repAmount = (*result)[0].Get<uint32>();

            if (repAmount > newRep)
                newRep = repAmount;
        } while (result->NextRow());
    }

    if (newRep > curRep)
    {
        std::string factionName = sFactionStore.LookupEntry(factionId)->name[0];
        FactionEntry const* factionEntry = sFactionStore.LookupEntry(factionId);

        player->GetReputationMgr().SetReputation(factionEntry, static_cast<float>(newRep));
        ChatHandler(player->GetSession()).PSendSysMessage("New {} Reputation = {}", factionName, newRep);
    }
}

void IndividualProgression::RemovePlayerAchievement(uint16 playerGUID, uint16 achievementId)
{
	if (!playerGUID || !achievementId)
        return;

    CharacterDatabase.Query("DELETE FROM `character_achievement` WHERE `guid` = {} AND `achievement` = {}", playerGUID, achievementId);
}

void IndividualProgression::LoadCustomProgressionEntries(std::string const& customProgressionString)
{
    std::string delimitedValue;
    std::stringstream customProgressionStream;

    customProgressionStream.str(customProgressionString);
    while (std::getline(customProgressionStream, delimitedValue, ','))
    {
        std::string pairOne, pairTwo;
        std::stringstream progressionPairStream(delimitedValue);
        progressionPairStream>>pairOne>>pairTwo;
        uint32 creatureEntryId = atoi(pairOne.c_str());
        uint8 progressionValue = atoi(pairTwo.c_str());
        sIndividualProgression->customProgressionMap[creatureEntryId] = progressionValue;
    }
}

bool IndividualProgression::hasCustomProgressionValue(uint32 creatureEntry)
{
    if (!creatureEntry)
        return false;

    if (customProgressionMap.empty())
        return false;

    return (customProgressionMap.find(creatureEntry) != customProgressionMap.end());
}

bool IndividualProgression::isAttuned(Player* player)
{
    if (!player || !player->IsInWorld())
        return false;

    if ((player->GetQuestStatus(NAXX40_ATTUNEMENT_1) == QUEST_STATUS_REWARDED) || (player->GetQuestStatus(NAXX40_ATTUNEMENT_2) == QUEST_STATUS_REWARDED) || (player->GetQuestStatus(NAXX40_ATTUNEMENT_3) == QUEST_STATUS_REWARDED))
        return true;
    else
        return false;
}

bool IndividualProgression::isExcludedFromProgression(Player* player)
{
    if (!player || !sIndividualProgression->excludeAccounts)
        return false;

    std::string accountName;
    bool accountNameFound = AccountMgr::GetName(player->GetSession()->GetAccountId(), accountName);
    std::regex excludedAccountsRegex(sIndividualProgression->excludedAccountsRegex);
    return (accountNameFound && std::regex_match(accountName, excludedAccountsRegex));
}

void IndividualProgression::SyncBotsProgressionToLeader(Group* group)
{
    if (!group)
        return;

    ObjectGuid leaderGuid = group->GetLeaderGUID();
    if (!leaderGuid)
        return;

    Player* leader = ObjectAccessor::FindPlayer(leaderGuid);
    if (!leader || isExcludedFromProgression(leader))
        return;

    uint8 refProgress = GetPlayerProgressionFromQuests(leader);

    if (!refProgress)
        return;

    for (GroupReference* itr = group->GetFirstMember(); itr; itr = itr->next())
    {
        Player* member = itr->GetSource();
        if (!member || !isExcludedFromProgression(member))
            continue;

        ForceUpdateProgressionState(member, static_cast<ProgressionState>(refProgress));
    }
}

void IndividualProgression::checkIPPhasing(Player* player, uint32 newArea)
{
    if (!player || !player->IsInWorld())
        return;

    player->RemoveAura(IPP_PHASE);
    player->RemoveAura(IPP_PHASE_II);
    player->RemoveAura(IPP_PHASE_III);
    player->RemoveAura(IPP_PHASE_IV);
    player->RemoveAura(IPP_PHASE_V);
    player->RemoveAura(IPP_PHASE_VI);

    switch (newArea) {
        case AREA_DARKSHORE:
        case AREA_GROVE_OF_THE_ANCIENTS:
        case AREA_WILDBEND_RIVER:
        case AREA_TWILIGHT_VALE:
        case AREA_SCARAB_WALL:
        case AREA_SCARAB_DAIS:
            if (hasPassedProgression(player, PROGRESSION_PRE_AQ) && isBeforeProgression(player, PROGRESSION_AQ_WAR))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_SILITHUS:
            if (hasPassedProgression(player, PROGRESSION_PRE_AQ) && isBeforeProgression(player, PROGRESSION_AQ_WAR))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            else if (hasPassedProgression(player, PROGRESSION_AQ_WAR))
            {
                player->CastSpell(player, IPP_PHASE_II, false);
            }
            break;
        case AREA_HIVE_ASHI:
        case AREA_HIVE_ZORA:
        case AREA_HIVE_REGAL:
            if (hasPassedProgression(player, PROGRESSION_PRE_AQ) && isBeforeProgression(player, PROGRESSION_AQ_WAR))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            else if (hasPassedProgression(player, PROGRESSION_AQ_WAR))
            {
                player->CastSpell(player, IPP_PHASE_II, false);
            }
            break;
        case AREA_BOUGH_SHADOW:
        case AREA_SERADANE:
        case AREA_DREAM_BOUGH:
        case AREA_JADEMIR_LAKE:
        case AREA_TWILIGHT_GROVE:
            if (hasPassedProgression(player, PROGRESSION_ONYXIA))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_SILVERMOON_CITY:
            if (isBeforeProgression(player, PROGRESSION_TBC_TIER_4))
            {
                player->CastSpell(player, IPP_PHASE_II, false);
            }
            break;
        case AREA_DUROTAR:
        case AREA_ROCKTUSK_FARM:
        case AREA_TIRISFAL_GLADES:
        case AREA_RUINS_OF_LORDAERON_B:
        case AREA_MULGORE:
        case AREA_VALLEY_OF_HEROES:
        case AREA_ELWYNN_FOREST:
        case AREA_DUN_MOROGH:
        case AREA_TELDRASSIL:
        case AREA_EASTERN_PLAGUELANDS:
        case AREA_PESTILENT_SCAR:
        case AREA_THE_MARRIS_STEAD:
        case AREA_CORINS_CROSSING:
        case AREA_BLASTED_LANDS:
        case AREA_RISE_OF_THE_DEFILER:
        case AREA_DREADMAUL_HOLD:
        case AREA_DREADMAUL_POST:
        case AREA_SERPENTS_COIL:
        case AREA_TANARIS:
        case AREA_GADGETZAN:
        case AREA_ABYSSAL_SANDS:
        case AREA_BROKEN_PILLAR:
        case AREA_WINTERSPRING:
        case AREA_TIMBERMAW_POST:
        case AREA_FROSTSABER_ROCK:
        case AREA_ICE_THISTLE_HILLS:
        case AREA_MAZTHORIL:
        case AREA_AZSHARA:
        case AREA_HALDARR_ENCAMPMENT:
        case AREA_THE_SHATTERED_STRAND:
        case AREA_SOUTHRIDGE_BEACH:
        case AREA_BURNING_STEPPES:
        case AREA_DRACO_DAR:
        case AREA_BLACKROCK_MOUNTAIN:
        case AREA_DREADMAUL_ROCK:
        case AREA_RUINS_OF_THAURISSAN:
            if (hasPassedProgression(player, PROGRESSION_AQ) && isBeforeProgression(player, PROGRESSION_NAXX40))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_ARGENT_TOURNAMENT_GROUNDS:
        case AREA_ARGENT_SUNREAVER_PAVILION:
        case AREA_ARGENT_SILVER_COVENANT_PAVILION:
        case AREA_THE_RING_OF_CHAMPIONS:
        case AREA_THE_ASPIRANTS_RING:
        case AREA_THE_ARGENT_VALIANTS_RING:
        case AREA_THE_ALLIANCE_VALIANTS_RING:
        case AREA_THE_HORDE_VALIANTS_RING:
        case AREA_ARGENT_PAVILION:
            if (hasPassedProgression(player, PROGRESSION_WOTLK_TIER_2))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_SUNWELL_PLATEAU:
        case AREA_SUNWELL_PLATEAU_B:
        case AREA_ISLE_OF_QUEL_DANAS:
        case AREA_MAGISTERS_TERRACE:
        case AREA_SHATTERED_SUN_STAGING:
        case AREA_SUNS_REACH_SANCTUM:
        case AREA_SUNS_REACH_HARBOR:
        case AREA_SUNS_REACH_ARMORY:
        case AREA_DAWNSTAR_VILLAGE:
        case AREA_THE_DAWNING_SQUARE:
            player->RemoveAura(SONG_OF_VICTORY);

            if (isExcludedFromProgression(player) || player->GetReputationRank(FACTION_SHATTERED_SUN) >= REP_REVERED)
            {
                player->CastSpell(player, IPP_PHASE_II, false);
                player->CastSpell(player, IPP_PHASE_III, false);
                player->CastSpell(player, IPP_PHASE_IV, false);

                if (isExcludedFromProgression(player) ||
                    (player->GetQuestStatus(QUEST_CRUSH_DAWNBLADE) == QUEST_STATUS_REWARDED &&
                     player->GetQuestStatus(QUEST_GREENGILL_COAST) == QUEST_STATUS_REWARDED &&
                     player->GetQuestStatus(QUEST_ENEMY_AT_BAY) == QUEST_STATUS_REWARDED))
                {
                    player->CastSpell(player, SONG_OF_VICTORY, false);
                }
            }
            else if (player->GetReputationRank(FACTION_SHATTERED_SUN) >= REP_HONORED)
            {
                player->CastSpell(player, IPP_PHASE_II, false);
                player->CastSpell(player, IPP_PHASE_III, false);
                player->CastSpell(player, IPP_PHASE_VI, false);
            }
            else if (player->GetReputationRank(FACTION_SHATTERED_SUN) >= REP_FRIENDLY)
            {
                player->CastSpell(player, IPP_PHASE_II, false);
                player->CastSpell(player, IPP_PHASE_V, false);
                player->CastSpell(player, IPP_PHASE_VI, false);
            }
            else // if (player->GetReputationRank(FACTION_SHATTERED_SUN) < REP_FRIENDLY)
            {
                player->CastSpell(player, IPP_PHASE, false);
                player->CastSpell(player, IPP_PHASE_V, false);
                player->CastSpell(player, IPP_PHASE_VI, false);
            }
            break;		
        case AREA_THE_DARK_PORTAL:
            if (hasPassedProgression(player, PROGRESSION_AQ) && isBeforeProgression(player, PROGRESSION_NAXX40))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            else if (hasPassedProgression(player, PROGRESSION_NAXX40) && isBeforeProgression(player, PROGRESSION_PRE_TBC))
            {
                player->CastSpell(player, IPP_PHASE_II, false);
            }
            break;
        case AREA_PURGATION_ISLE:
            if (isBeforeProgression(player, PROGRESSION_AQ))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            else if (hasPassedProgression(player, PROGRESSION_AQ))
            {
                player->CastSpell(player, IPP_PHASE_II, false);
            }
            break;
        case AREA_IRONTREE_WOOD:
            if (player->getClass() == CLASS_HUNTER && ((player->GetQuestStatus(QUEST_THE_ANCIENT_LEAF) == QUEST_STATUS_INCOMPLETE) || (player->GetQuestStatus(QUEST_THE_ANCIENT_LEAF) == QUEST_STATUS_REWARDED)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_SHATTRATH_CITY:
            if (hasPassedProgression(player, PROGRESSION_TBC_TIER_4))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            if (player->GetQuestStatus(QUEST_MANA_CELLS) == QUEST_STATUS_REWARDED)
            {
                player->CastSpell(player, IPP_PHASE_III, false);
            }
            break;
        case AREA_FOREST_SONG:
            if (hasPassedProgression(player, PROGRESSION_PRE_TBC))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_STORMWIND_CITY:
            if (!hasPassedProgression(player, PROGRESSION_PRE_TBC))
            {
                player->CastSpell(player, IPP_PHASE_II, false);
            }
            else if (hasPassedProgression(player, PROGRESSION_TBC_TIER_5))
            {
                player->CastSpell(player, IPP_PHASE_III, false);
            }
            break;
        case AREA_ORGRIMMAR:
            if (hasPassedProgression(player, PROGRESSION_TBC_TIER_5))
            {
                player->CastSpell(player, IPP_PHASE_III, false);
            }
            break;
        case AREA_UNDERCITY:
            if ((player->GetQuestStatus(BATTLE_UNDERCITY_HORDE) == QUEST_STATUS_REWARDED) || (player->GetQuestStatus(BATTLE_UNDERCITY_ALLIANCE) == QUEST_STATUS_REWARDED))
            {
                player->CastSpell(player, IPP_PHASE_III, false);
            }
            else
            {
                player->CastSpell(player, IPP_PHASE_II, false);
            }
            break;
        default:

            uint32 mapid = player->GetMapId();

            if (mapid == MAP_VAULT_OF_ARCHAVON)
            {
                if (hasPassedProgression(player, PROGRESSION_WOTLK_TIER_1) && isBeforeProgression(player, PROGRESSION_WOTLK_TIER_2))
                {
                    player->CastSpell(player, IPP_PHASE, false);
                    break;
                }
                else if (hasPassedProgression(player, PROGRESSION_WOTLK_TIER_2) && isBeforeProgression(player, PROGRESSION_WOTLK_TIER_3))
                {
                    player->CastSpell(player, IPP_PHASE, false);
                    player->CastSpell(player, IPP_PHASE_II, false);
                    break;
                }
                else if (hasPassedProgression(player, PROGRESSION_WOTLK_TIER_3))
                {
                    player->CastSpell(player, IPP_PHASE, false);
                    player->CastSpell(player, IPP_PHASE_II, false);
                    player->CastSpell(player, IPP_PHASE_III, false);
                    break;
                }
            }
            if (mapid == MAP_MAGISTERS_TERRACE || mapid == MAP_THE_SUNWELL)
            {
                player->RemoveAura(SONG_OF_VICTORY);

                if (isExcludedFromProgression(player) ||
                    (player->GetQuestStatus(QUEST_CRUSH_DAWNBLADE) == QUEST_STATUS_REWARDED &&
                     player->GetQuestStatus(QUEST_GREENGILL_COAST) == QUEST_STATUS_REWARDED &&
                     player->GetQuestStatus(QUEST_ENEMY_AT_BAY) == QUEST_STATUS_REWARDED))
                {
                    player->CastSpell(player, SONG_OF_VICTORY, false);
                }
            }
            if ((mapid == MAP_SHADOWFANG_KEEP) ||
                (mapid == MAP_RAZORFEN_DOWNS)  ||
                (mapid == MAP_SCARLET_MONASTERY) ||
                (mapid == MAP_SCHOLOMANCE) ||
                (mapid == MAP_STRATHOLME) ||
                (mapid == MAP_DIRE_MAUL))
            {
                if (earlyScourgeBosses || (hasPassedProgression(player, PROGRESSION_AQ) && isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->CastSpell(player, IPP_PHASE, false);
                    break;
                }
            }
    }
}

void IndividualProgression::checkIPProgression(Player* killer)
{
    if (!enabled || disableDefaultProgression)
        return;

    if (!killer || !killer->IsInWorld())
        return;

    uint8 currentState = GetPlayerProgressionFromQuests(killer);

    static const std::vector<std::pair<uint16, ProgressionState>> achievementMap =
    {
        { HALION_KILL,        PROGRESSION_WOTLK_TIER_5   },
        { LICH_KING_KILL,     PROGRESSION_WOTLK_TIER_4   },
        { ANUB_ARAK_KILL,     PROGRESSION_WOTLK_TIER_3   },
        { KEL_THUZAD_KILL,    PROGRESSION_WOTLK_TIER_1   },
        { KIL_JAEDEN_KILL,    PROGRESSION_TBC_TIER_5     },
        { ZUL_JIN_KILL,       PROGRESSION_TBC_TIER_4     },
        { ILLIDAN_KILL,       PROGRESSION_TBC_TIER_3     },
        { KAEL_THAS_KILL,     PROGRESSION_TBC_TIER_2     },
        { MALCHEZAAR_KILL,    PROGRESSION_TBC_TIER_1     },
        { KEL_THUZAD_40_KILL, PROGRESSION_NAXX40         },
        { C_THUN_KILL,        PROGRESSION_AQ             },
        { NEFARIAN_KILL,      PROGRESSION_BLACKWING_LAIR },
        { ONYXIA_KILL,        PROGRESSION_ONYXIA         },
        { RAGNAROS_KILL,      PROGRESSION_MOLTEN_CORE    }
    };

    for (auto const& [achievementId, progState] : achievementMap)
    {
        if (killer->HasAchieved(achievementId))
        {
            if (currentState < progState)
                UpdateProgressionState(killer, progState);
            return;
        }
    }
}

void IndividualProgression::checkKillProgression(Player* killer, Creature* killed)
{
    if (!enabled)
        return;

    if (!killed || !killer || !killer->IsInWorld())
        return;

    uint32 entry = killed->GetEntry();

    if (hasCustomProgressionValue(entry))
    {
        UpdateProgressionState(killer, static_cast<ProgressionState>(customProgressionMap[entry]));
        return;
    }

    if (disableDefaultProgression)
        return;

    static const std::unordered_map<uint32, ProgressionState> bossMap =
    {
        { RAGNAROS,     PROGRESSION_MOLTEN_CORE    },
        { ONYXIA_40,    PROGRESSION_ONYXIA         },
        { NEFARIAN,     PROGRESSION_BLACKWING_LAIR },
        { CTHUN,        PROGRESSION_AQ             },
        { KELTHUZAD_40, PROGRESSION_NAXX40         },
        { MALCHEZAAR,   PROGRESSION_TBC_TIER_1     },
        { KAELTHAS,     PROGRESSION_TBC_TIER_2     },
        { ILLIDAN,      PROGRESSION_TBC_TIER_3     },
        { ZULJIN,       PROGRESSION_TBC_TIER_4     },
        { KILJAEDEN,    PROGRESSION_TBC_TIER_5     },
        { KELTHUZAD,    PROGRESSION_WOTLK_TIER_1   },
        { YOGGSARON,    PROGRESSION_WOTLK_TIER_2   },
        { ANUBARAK,     PROGRESSION_WOTLK_TIER_3   },
        { LICH_KING,    PROGRESSION_WOTLK_TIER_4   },
        { HALION,       PROGRESSION_WOTLK_TIER_5   }
    };

    auto bossKill = bossMap.find(entry);
    if (bossKill != bossMap.end())
    {
        ProgressionState prog = bossKill->second;
        if (!progressionLimit || (progressionLimit >= prog))
            UpdateProgressionState(killer, prog);

        if (entry == KELTHUZAD_40)
            UpdateProgressionAchievements(killer, KEL_THUZAD_40_KILL);
    }
}

void IndividualProgression::UpdateProgressionAchievements(Player* player, uint16 achievementID)
{
    if (!achievementID || !player || !player->IsInWorld())
        return;

    AchievementEntry const* entry = sAchievementStore.LookupEntry(achievementID);
    if (!entry)
        return;

    player->CompletedAchievement(entry);
}

void IndividualProgression::CleanUpVanillaPvpTitles(Player* player)
{
    if (!player || !player->IsInWorld())
        return;

    TeamId teamId = player->GetTeamId(true);
    uint32 kills = player->GetUInt32Value(PLAYER_FIELD_LIFETIME_HONORABLE_KILLS);
    uint16 playerGUID = player->GetGUID().GetCounter();
    const uint32 PVP_QUEST = 66100;

    IppPvPTitles const pvpTitlesList[14] =
    {
        { sIndividualProgression->VanillaPvpKillRank1,  TitleData[RANK_ONE].TitleId[teamId]      },
        { sIndividualProgression->VanillaPvpKillRank2,  TitleData[RANK_TWO].TitleId[teamId]      },
        { sIndividualProgression->VanillaPvpKillRank3,  TitleData[RANK_THREE].TitleId[teamId]    },
        { sIndividualProgression->VanillaPvpKillRank4,  TitleData[RANK_FOUR].TitleId[teamId]     },
        { sIndividualProgression->VanillaPvpKillRank5,  TitleData[RANK_FIVE].TitleId[teamId]     },
        { sIndividualProgression->VanillaPvpKillRank6,  TitleData[RANK_SIX].TitleId[teamId]      },
        { sIndividualProgression->VanillaPvpKillRank7,  TitleData[RANK_SEVEN].TitleId[teamId]    },
        { sIndividualProgression->VanillaPvpKillRank8,  TitleData[RANK_EIGHT].TitleId[teamId]    },
        { sIndividualProgression->VanillaPvpKillRank9,  TitleData[RANK_NINE].TitleId[teamId]     },
        { sIndividualProgression->VanillaPvpKillRank10, TitleData[RANK_TEN].TitleId[teamId]      },
        { sIndividualProgression->VanillaPvpKillRank11, TitleData[RANK_ELEVEN].TitleId[teamId]   },
        { sIndividualProgression->VanillaPvpKillRank12, TitleData[RANK_TWELVE].TitleId[teamId]   },
        { sIndividualProgression->VanillaPvpKillRank13, TitleData[RANK_THIRTEEN].TitleId[teamId] },
        { sIndividualProgression->VanillaPvpKillRank14, TitleData[RANK_FOURTEEN].TitleId[teamId] },
    };

    if (!sIndividualProgression->VanillaPvpTitlesKeepPostVanilla && sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC))
    {
        for (IppPvPTitles title : pvpTitlesList)
        {
            if (player->HasTitle(title.TitleId))
                player->SetTitle(sCharTitlesStore.LookupEntry(title.TitleId), true);
        }
    }
    else
    {
        for (IppPvPTitles title : pvpTitlesList)
        {
            if (kills < title.RequiredKills && player->HasTitle(title.TitleId))
                player->SetTitle(sCharTitlesStore.LookupEntry(title.TitleId), true);
        }
    }

	int8_t highestRank = -1;

	for (int8_t i = 13; i > -1; --i)
	{
		if (kills >= pvpTitlesList[i].RequiredKills)
		{
			highestRank = i;
			break;
		}
	}

	for (int8_t i = 13; i > -1; --i)
    {
		uint32_t achievementId = AchievementData[i].TitleId[teamId];

		if (highestRank == i || !player->HasAchieved(achievementId))
			continue;

		RemovePlayerAchievement(playerGUID, achievementId);
    }

	// remove all hidden pvp quests
    for (uint8 i = 1; i <= 14; ++i)
    {
        uint32 questId = PVP_QUEST + i;

        if (player->GetQuestStatus(questId) == QUEST_STATUS_REWARDED)
            player->RemoveRewardedQuest(questId);
    }

    uint8 i = 1;

    // add hidden pvp quests
    for (IppPvPTitles title : pvpTitlesList)
    {
        if (player->HasTitle(title.TitleId))
        {
		    for (uint8 j = 1; j <= i; ++j)
            {
                uint32 questId = PVP_QUEST + j;
                Quest const* quest = sObjectMgr->GetQuestTemplate(questId);

                if (quest)
                {
                    player->AddQuest(quest, nullptr);
                    player->CompleteQuest(questId);
                    player->RewardQuest(quest, 0, player, false, false);
                }
            }
        }
		++i;
    }
}

void IndividualProgression::AwardEarnedVanillaPvpTitles(Player* player)
{
    if (!player || !player->IsInWorld())
        return;

    if (isBeforeProgression(player, PROGRESSION_PRE_TBC) || VanillaPvpTitlesKeepPostVanilla)
    {
        TeamId teamId = player->GetTeamId(true);
        uint32 kills = player->GetUInt32Value(PLAYER_FIELD_LIFETIME_HONORABLE_KILLS);

        IppPvPTitles const pvpTitlesList[14] =
        {
            { VanillaPvpKillRank14, TitleData[RANK_FOURTEEN].TitleId[teamId] },
            { VanillaPvpKillRank13, TitleData[RANK_THIRTEEN].TitleId[teamId] },
            { VanillaPvpKillRank12, TitleData[RANK_TWELVE].TitleId[teamId]   },
            { VanillaPvpKillRank11, TitleData[RANK_ELEVEN].TitleId[teamId]   },
            { VanillaPvpKillRank10, TitleData[RANK_TEN].TitleId[teamId]      },
            { VanillaPvpKillRank9,  TitleData[RANK_NINE].TitleId[teamId]     },
            { VanillaPvpKillRank8,  TitleData[RANK_EIGHT].TitleId[teamId]    },
            { VanillaPvpKillRank7,  TitleData[RANK_SEVEN].TitleId[teamId]    },
            { VanillaPvpKillRank6,  TitleData[RANK_SIX].TitleId[teamId]      },
            { VanillaPvpKillRank5,  TitleData[RANK_FIVE].TitleId[teamId]     },
            { VanillaPvpKillRank4,  TitleData[RANK_FOUR].TitleId[teamId]     },
            { VanillaPvpKillRank3,  TitleData[RANK_THREE].TitleId[teamId]    },
            { VanillaPvpKillRank2,  TitleData[RANK_TWO].TitleId[teamId]      },
            { VanillaPvpKillRank1,  TitleData[RANK_ONE].TitleId[teamId]      },
		};

	    if (!hasPassedProgression(player, PROGRESSION_PRE_TBC) || VanillaPvpTitlesEarnPostVanilla)
        {
            int highestTitle = -1;

            // add highest title
            for (IppPvPTitles title : pvpTitlesList)
            {
                if (kills >= title.RequiredKills)
                {
                    player->SetTitle(sCharTitlesStore.LookupEntry(title.TitleId));
                    highestTitle = title.TitleId;
                    break;
                }
            }

			const uint32_t chosenTitleId = player->GetUInt32Value(PLAYER_CHOSEN_TITLE);
			// PvP Titles go from 1 to 28.
			const bool usesPvPTitle = chosenTitleId != 0 && chosenTitleId < 29;

            // remove all titles except highest
            for (IppPvPTitles title : pvpTitlesList)
            {
                const int titleId = title.TitleId;

                if (highestTitle != titleId)
                    player->SetTitle(sCharTitlesStore.LookupEntry(titleId), true);
            }

			if (highestTitle != -1 && usesPvPTitle)
				player->SetCurrentTitle(sCharTitlesStore.LookupEntry(highestTitle));
        }
    }
}

class IndividualPlayerProgression_WorldScript : public WorldScript
{
private:
    static void LoadConfig()
    {
        sIndividualProgression->customProgressionMap.clear();
        sIndividualProgression->enabled = sConfigMgr->GetOption<bool>("IndividualProgression.Enable", true);
        sIndividualProgression->vanillaPowerAdjustment = sConfigMgr->GetOption<float>("IndividualProgression.VanillaPowerAdjustment", 1);
        sIndividualProgression->vanillaHealingAdjustment = sConfigMgr->GetOption<float>("IndividualProgression.VanillaHealingAdjustment", 1);
        sIndividualProgression->tbcPowerAdjustment = sConfigMgr->GetOption<float>("IndividualProgression.TBCPowerAdjustment", 1);
        sIndividualProgression->tbcHealingAdjustment = sConfigMgr->GetOption<float>("IndividualProgression.TBCHealingAdjustment", 1);
        sIndividualProgression->questXpFix = sConfigMgr->GetOption<bool>("IndividualProgression.QuestXPFix", true);
        sIndividualProgression->requireNaxxStrath = sConfigMgr->GetOption<bool>("IndividualProgression.RequireNaxxStrathEntrance", false);
        sIndividualProgression->doableNaxx40Bosses = sConfigMgr->GetOption<bool>("IndividualProgression.doableNaxx40Bosses", false);
        sIndividualProgression->enforceGroupRules = sConfigMgr->GetOption<bool>("IndividualProgression.EnforceGroupRules", true);
        sIndividualProgression->fishingFix = sConfigMgr->GetOption<bool>("IndividualProgression.FishingFix", true);
        sIndividualProgression->simpleConfigOverride = sConfigMgr->GetOption<bool>("IndividualProgression.SimpleConfigOverride", true);
        sIndividualProgression->progressionLimit = sConfigMgr->GetOption<uint8>("IndividualProgression.ProgressionLimit", 0);
        sIndividualProgression->startingProgression = sConfigMgr->GetOption<uint8>("IndividualProgression.StartingProgression", 0);
        sIndividualProgression->questMoneyAtLevelCap = sConfigMgr->GetOption<bool>("IndividualProgression.QuestMoneyAtLevelCap", true);
        sIndividualProgression->repeatableVanillaQuestsXp = sConfigMgr->GetOption<bool>("IndividualProgression.RepeatableVanillaQuestsXP", true);
        sIndividualProgression->disableDefaultProgression = sConfigMgr->GetOption<bool>("IndividualProgression.DisableDefaultProgression", false);
        sIndividualProgression->tbcRacesProgressionLevel = sConfigMgr->GetOption<uint8>("IndividualProgression.TbcRacesUnlockProgression", 0);
        sIndividualProgression->tbcRacesStartingProgression = sConfigMgr->GetOption<uint8>("IndividualProgression.tbcRacesStartingProgression", 0);
        sIndividualProgression->deathKnightProgressionLevel = sConfigMgr->GetOption<uint8>("IndividualProgression.DeathKnightUnlockProgression", 13);
        sIndividualProgression->deathKnightStartingProgression = sConfigMgr->GetOption<uint8>("IndividualProgression.DeathKnightStartingProgression", 13);
        sIndividualProgression->RequiredZulGurubProgression = sConfigMgr->GetOption<uint8>("IndividualProgression.RequiredZulGurubProgression", 3);
        sIndividualProgression->LoadCustomProgressionEntries(sConfigMgr->GetOption<std::string>("IndividualProgression.CustomProgression", ""));
        sIndividualProgression->earlyDungeonSet2 = sConfigMgr->GetOption<bool>("IndividualProgression.AllowEarlyDungeonSet2", false);
        sIndividualProgression->earlyScourgeBosses = sConfigMgr->GetOption<bool>("IndividualProgression.AllowEarlyScourgeBosses", false);
        sIndividualProgression->tbcArenaSeason = sConfigMgr->GetOption<uint8>("IndividualProgression.TBC.ArenaSeason", 1);
        sIndividualProgression->wotlkArenaSeason = sConfigMgr->GetOption<uint8>("IndividualProgression.WotLK.ArenaSeason", 5);
        sIndividualProgression->VanillaPvpKillRank1 = sConfigMgr->GetOption<uint32>("IndividualProgression.VanillaPvpKillRequirement.Rank1", 100);
        sIndividualProgression->VanillaPvpKillRank2 = sConfigMgr->GetOption<uint32>("IndividualProgression.VanillaPvpKillRequirement.Rank2", 200);
        sIndividualProgression->VanillaPvpKillRank3 = sConfigMgr->GetOption<uint32>("IndividualProgression.VanillaPvpKillRequirement.Rank3", 400);
        sIndividualProgression->VanillaPvpKillRank4 = sConfigMgr->GetOption<uint32>("IndividualProgression.VanillaPvpKillRequirement.Rank4", 800);
        sIndividualProgression->VanillaPvpKillRank5 = sConfigMgr->GetOption<uint32>("IndividualProgression.VanillaPvpKillRequirement.Rank5", 1400);
        sIndividualProgression->VanillaPvpKillRank6 = sConfigMgr->GetOption<uint32>("IndividualProgression.VanillaPvpKillRequirement.Rank6", 2000);
        sIndividualProgression->VanillaPvpKillRank7 = sConfigMgr->GetOption<uint32>("IndividualProgression.VanillaPvpKillRequirement.Rank7", 3000);
        sIndividualProgression->VanillaPvpKillRank8 = sConfigMgr->GetOption<uint32>("IndividualProgression.VanillaPvpKillRequirement.Rank8", 4500);
        sIndividualProgression->VanillaPvpKillRank9 = sConfigMgr->GetOption<uint32>("IndividualProgression.VanillaPvpKillRequirement.Rank9", 6000);
        sIndividualProgression->VanillaPvpKillRank10 = sConfigMgr->GetOption<uint32>("IndividualProgression.VanillaPvpKillRequirement.Rank10", 8000);
        sIndividualProgression->VanillaPvpKillRank11 = sConfigMgr->GetOption<uint32>("IndividualProgression.VanillaPvpKillRequirement.Rank11", 10000);
        sIndividualProgression->VanillaPvpKillRank12 = sConfigMgr->GetOption<uint32>("IndividualProgression.VanillaPvpKillRequirement.Rank12", 13000);
        sIndividualProgression->VanillaPvpKillRank13 = sConfigMgr->GetOption<uint32>("IndividualProgression.VanillaPvpKillRequirement.Rank13", 18000);
        sIndividualProgression->VanillaPvpKillRank14 = sConfigMgr->GetOption<uint32>("IndividualProgression.VanillaPvpKillRequirement.Rank14", 24000);
        sIndividualProgression->VanillaPvpTitlesKeepPostVanilla = sConfigMgr->GetOption<bool>("IndividualProgression.VanillaPvpTitlesPersistAfterVanilla", true);
        sIndividualProgression->VanillaPvpTitlesEarnPostVanilla = sConfigMgr->GetOption<bool>("IndividualProgression.VanillaPvpEarnTitlesAfterVanilla", false);
        sIndividualProgression->ExcludedAccountsEarnPvPTitles = sConfigMgr->GetOption<bool>("IndividualProgression.ExcludedAccountsEarnPvPTitles", false);
        sIndividualProgression->DisableRDF = sConfigMgr->GetOption<bool>("IndividualProgression.DisableRDF", false);
        sIndividualProgression->DisableQuestMarkers = sConfigMgr->GetOption<bool>("IndividualProgression.DisableQuestMarkers", true);
        sIndividualProgression->excludeAccounts = sConfigMgr->GetOption<bool>("IndividualProgression.ExcludeAccounts", true);
        sIndividualProgression->excludedAccountsRegex = sConfigMgr->GetOption<std::string>("IndividualProgression.ExcludedAccountsRegex", "^RNDBOT.*");
        sIndividualProgression->sharedFactionIdsRegex = sConfigMgr->GetOption<std::string>("IndividualProgression.sharedFactionIdsRegex", "270|529|576|970|1077");
        sIndividualProgression->ExcludedAccountsMaxLevel = sConfigMgr->GetOption<uint8>("IndividualProgression.ExcludedAccountsMaxLevel", 80);
    }

    static void LoadXpValues()
    {
        if (sIndividualProgression->enabled && sIndividualProgression->questXpFix)
        {
            LOG_INFO("module", "Loading Quest XP cache....");
            uint32 questXpAmount = 0;
            QueryResult result = WorldDatabase.Query("SELECT entry, xpValue FROM custom_quest_xp");
            if (result)
            {
                do
                {
                    uint32 questId = (*result)[0].Get<uint32>();
                    uint32 xpValue = (*result)[1].Get<uint32>();
                    sIndividualProgression->questXpMap.insert({questId, xpValue});
                    questXpAmount++;
                } while (result->NextRow());
            }
            LOG_INFO("module", "Loaded {} quest XP values into cache", questXpAmount);
        }
    }

public:
    IndividualPlayerProgression_WorldScript() : WorldScript("IndividualProgression_WorldScript") { }

    void OnBeforeConfigLoad(bool /*reload*/) override
    {
        LoadConfig();
        LoadXpValues();
    }

    void OnAfterConfigLoad(bool /*reload*/) override
    {
        if (sIndividualProgression->simpleConfigOverride)
        {
            sWorld->setIntConfig(CONFIG_WATER_BREATH_TIMER, 60000);
            sWorld->setBoolConfig(CONFIG_PLAYER_SETTINGS_ENABLED, true);
            sWorld->setBoolConfig(CONFIG_LOW_LEVEL_REGEN_BOOST, false);
            sWorld->setBoolConfig(CONFIG_DBC_ENFORCE_ITEM_ATTRIBUTES, false);
        }

        if (sIndividualProgression->DisableRDF)
            sWorld->setIntConfig(CONFIG_LFG_OPTIONSMASK, 4);

        if (sIndividualProgression->DisableQuestMarkers)
        {
            sWorld->setBoolConfig(CONFIG_OBJECT_QUEST_MARKERS, false);
            sWorld->setBoolConfig(CONFIG_OBJECT_SPARKLES, false);
        }
    }
};

// Add all scripts in one
void AddSC_mod_individual_progression()
{
    new IndividualPlayerProgression_WorldScript();
}
