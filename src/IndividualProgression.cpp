/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "IndividualProgression.h"
#include "naxxramas_40.h"

IndividualProgression* IndividualProgression::instance()
{
    static IndividualProgression instance;
    return &instance;
}


bool IndividualProgression::hasPassedProgression(Player* player, ProgressionState state) const
{
    if (progressionLimit && state >= progressionLimit)
	{
        return false;
	}

    return player->GetPlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE).value >= state;
}

bool IndividualProgression::isBeforeProgression(Player* player, ProgressionState state)
{
    return player->GetPlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE).value < state;
}

void IndividualProgression::UpdateProgressionState(Player* player, ProgressionState newState) const
{
    if (progressionLimit && newState > progressionLimit)
	{
        return;
	}

    uint8 currentState = player->GetPlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE).value;
    if (newState > currentState)
    {
        player->UpdatePlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE, newState);
    }
}

void IndividualProgression::ForceUpdateProgressionState(Player* player, ProgressionState newState)
{
    player->UpdatePlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE, newState);
}

void IndividualProgression::CheckAdjustments(Player* player) const
{
    if (!enabled)
	{
        return;
	}

    if (!hasPassedProgression(player, PROGRESSION_PRE_TBC) || (!hasPassedProgression(player, PROGRESSION_PRE_TBC) && (player->GetLevel() <= IP_LEVEL_VANILLA)))
    {
        float adjustmentApplyPercent = (player->GetLevel() - 10.0f) / 50.0f;

        float PowerAdjustmentValue = -100.0f * (1.0f - vanillaPowerAdjustment);
        float computedPowerAdjustment = player->GetLevel() > 10 ? (PowerAdjustmentValue * adjustmentApplyPercent) : 0;

        float HealthAdjustmentAmount = -100.0f * (1.0f - vanillaHealthAdjustment);
        float computedHealthAdjustment = player->GetLevel() > 10 ? (HealthAdjustmentAmount * adjustmentApplyPercent) : 0;

	    AdjustStats(player, computedPowerAdjustment, computedHealthAdjustment);
    }
    else if (!hasPassedProgression(player, PROGRESSION_TBC_TIER_5) || (!hasPassedProgression(player, PROGRESSION_TBC_TIER_5) && (player->GetLevel() <= IP_LEVEL_TBC)))
    {
        float computedPowerAdjustment = -100.0f * (1.0f - tbcPowerAdjustment);

	    AdjustStats(player, computedPowerAdjustment, tbcHealthAdjustment);
    }

    if (player->getClass() == CLASS_HUNTER)
    {
        // Remove the 15% built-in ranged haste that was added to hunters in WotLK - This lets us add haste spells back to quivers
        player->RemoveAura(RANGED_HASTE_SPELL);
        player->CastSpell(player, RANGED_HASTE_SPELL, false);
    }
}

void IndividualProgression::AdjustStats(Player* player, float computedPowerAdjustment, float computedHealthAdjustment)
{
    auto bp1 = static_cast<int32>(computedPowerAdjustment);
	auto bp2 = static_cast<int32>(computedHealthAdjustment);

    player->RemoveAura(ABSORB_SPELL);
    player->CastCustomSpell(player, ABSORB_SPELL, &bp1, nullptr, nullptr, false);

	player->RemoveAura(HP_AURA_SPELL);
    player->CastCustomSpell(player, HP_AURA_SPELL, &bp2, nullptr, nullptr, false);
}

float IndividualProgression::ComputeVanillaAdjustment(uint8 playerLevel, float configAdjustmentValue)
{
    float adjustmentApplyPercent = (float(playerLevel) - 10.0f) / 50.0f;
    return playerLevel > 10 ? 1.0f - ((1.0f - configAdjustmentValue) * adjustmentApplyPercent) : 1;
}

/**
 * Gets the highest progression level achieved by an account
 * Note that this method makes a direct, non-sync DB call and should be used sparingly
 *
 * @return progression level
 */
uint8 IndividualProgression::GetAccountProgression(uint32 accountId)
{
    uint8 progressionLevel = 0;
    if (!sWorld->getBoolConfig(CONFIG_PLAYER_SETTINGS_ENABLED))
    {
        return 0; // Prevent crash if player settings are not enabled
    }
    QueryResult result = CharacterDatabase.Query("SELECT `data` FROM `character_settings` WHERE `source` = 'mod-individual-progression' AND `guid` IN (SELECT `guid` FROM `characters` WHERE `account` = {});", accountId);
    if (result)
    {
        do
        {
            std::string dataOne;
            std::stringstream dataString((*result)[0].Get<std::string>());
            dataString>>dataOne;
            uint8 resultValue = atoi(dataOne.c_str());
            if (resultValue > progressionLevel)
            {
                progressionLevel = resultValue;
            }
        } while (result->NextRow());
    }
    return progressionLevel;
}

void IndividualProgression::RemovePlayerAchievement(uint16 playerGUID, uint16 achievementId)
{
	if (playerGUID && achievementId)
    {
        CharacterDatabase.Query("DELETE FROM `character_achievement` WHERE `guid` = {} AND `achievement` = {}", playerGUID, achievementId);
    }
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
    if (customProgressionMap.empty())
    {
        return false;
    }
    return (customProgressionMap.find(creatureEntry) != customProgressionMap.end());
}

bool IndividualProgression::isAttuned(Player* player)
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

bool IndividualProgression::isExcludedFromProgression(Player* player)
{
    if(!sIndividualProgression->excludeAccounts) {
        return false;
    }
    std::string accountName;
    bool accountNameFound = AccountMgr::GetName(player->GetSession()->GetAccountId(), accountName);
    std::regex excludedAccountsRegex (sIndividualProgression->excludedAccountsRegex);
    return (accountNameFound && std::regex_match(accountName, excludedAccountsRegex));
}

void IndividualProgression::checkIPPhasing(Player* player, uint32 newArea)
{
    player->RemoveAura(IPP_PHASE);
    player->RemoveAura(IPP_PHASE_II);
    player->RemoveAura(IPP_PHASE_III);
		
    switch (newArea) {
        case AREA_DARKSHORE:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_AQ_WAR)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_GROVE_OF_THE_ANCIENTS:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_AQ_WAR)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_WILDBEND_RIVER:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_AQ_WAR)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_TWILIGHT_VALE:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_AQ_WAR)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_SILITHUS:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_AQ_WAR)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            else if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ_WAR)) 
            {
                player->CastSpell(player, IPP_PHASE_II, false);
            }
            break;
        case AREA_SCARAB_WALL:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_AQ_WAR)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_SCARAB_DAIS:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_AQ_WAR)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_HIVE_ASHI:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_AQ_WAR)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            else if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ_WAR)) 
            {
                player->CastSpell(player, IPP_PHASE_II, false);
            }
            break;
        case AREA_HIVE_ZORA:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_AQ_WAR)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            else if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ_WAR)) 
            {
                player->CastSpell(player, IPP_PHASE_II, false);
            }
            break;
        case AREA_HIVE_REGAL:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_AQ_WAR)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            else if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ_WAR)) 
            {
                player->CastSpell(player, IPP_PHASE_II, false);
            }
            break;
        case AREA_BOUGH_SHADOW:
            if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_ONYXIA))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_SERADANE:
            if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_ONYXIA))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_DREAM_BOUGH:
            if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_ONYXIA))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_JADEMIR_LAKE:
            if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_ONYXIA))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_TWILIGHT_GROVE:
            if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_ONYXIA))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_DUROTAR:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;	
        case AREA_ROCKTUSK_FARM:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;	
        case AREA_TIRISFAL_GLADES:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;	
        case AREA_RUINS_OF_LORDAERON:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;	
        case AREA_MULGORE:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;	
        case AREA_VALLEY_OF_HEROES:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;	
        case AREA_ELWYNN_FOREST:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;	
        case AREA_DUN_MOROGH:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;	
        case AREA_TELDRASSIL:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_EASTERN_PLAGUELANDS:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_PESTILENT_SCAR:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_THE_MARRIS_STEAD:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_BLASTED_LANDS:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_RISE_OF_THE_DEFILER:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_DREADMAUL_HOLD:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_DREADMAUL_POST:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_THE_DARK_PORTAL:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            else if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_NAXX40)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_PRE_TBC)))
            {
                player->CastSpell(player, IPP_PHASE_II, false);
            }					
            break;
        case AREA_SERPENTS_COIL:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_TANARIS:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_GADGETZAN:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_ABYSSAL_SANDS:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_BROKEN_PILLAR:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_WINTERSPRING:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_TIMBERMAW_POST:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_FROSTSABER_ROCK:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_ICE_THISTLE_HILLS:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_MAZTHORIL:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_AZSHARA:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_HALDARR_ENCAMPMENT:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_THE_SHATTERED_STRAND:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_SOUTHRIDGE_BEACH:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_BURNING_STEPPES:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_DRACO_DAR:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_BLACKROCK_MOUNTAIN:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_DREADMAUL_ROCK:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_RUINS_OF_THAURISSAN:
            if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_PURGATION_ISLE:
            if (sIndividualProgression->isBeforeProgression(player, PROGRESSION_AQ))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            else if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) 
            {
                player->CastSpell(player, IPP_PHASE_II, false);
            }					
            break;
        case AREA_IRONTREE_WOOD:
            if ((player->getClass() == CLASS_HUNTER) && ((player->GetQuestStatus(QUEST_THE_ANCIENT_LEAF) == QUEST_STATUS_INCOMPLETE) || (player->GetQuestStatus(QUEST_THE_ANCIENT_LEAF) == QUEST_STATUS_REWARDED)))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_TERRACE_OF_LIGHT:
            if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_4))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        case AREA_FOREST_SONG:
            if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC))
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
            if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_WOTLK_TIER_2))
            {
                player->CastSpell(player, IPP_PHASE, false);
            }
            break;
        default:

            uint32 mapid = player->GetMapId();

            if (mapid == MAP_VAULT_OF_ARCHAVON)
            {
                if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_WOTLK_TIER_1) && sIndividualProgression->isBeforeProgression(player, PROGRESSION_WOTLK_TIER_2))
                {
                    player->CastSpell(player, IPP_PHASE, false);
                    break;
                }
                else if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_WOTLK_TIER_2) && sIndividualProgression->isBeforeProgression(player, PROGRESSION_WOTLK_TIER_3))
                {
                    player->CastSpell(player, IPP_PHASE, false);
                    player->CastSpell(player, IPP_PHASE_II, false);
                    break;
                }
                else if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_WOTLK_TIER_3))
                {
                    player->CastSpell(player, IPP_PHASE, false);
                    player->CastSpell(player, IPP_PHASE_II, false);
                    player->CastSpell(player, IPP_PHASE_III, false);
                    break;
                }
            }
            if (mapid == MAP_SHADOWFANG_KEEP)
            {
                if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ) && sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40))
                {
                    player->CastSpell(player, IPP_PHASE, false);
                    break;
                }
            }
            if (mapid == MAP_RAZORFEN_DOWNS)
            {
                if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ) && sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40))
                {
                    player->CastSpell(player, IPP_PHASE, false);
                    break;
                }
            }    
            if (mapid == MAP_SCARLET_MONASTERY)
            {
                if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ) && sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40))
                {
                    player->CastSpell(player, IPP_PHASE, false);
                    break;
                }
            }
            if (mapid == MAP_STRATHOLME)
            {
                if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ) && sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40))
                {
                    player->CastSpell(player, IPP_PHASE, false);
                    break;
                }
            }
            if (mapid == MAP_DIRE_MAUL)
            {
                if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ) && sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40))
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
    {
        return;
    }

    uint8 currentState = killer->GetPlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE).value;

    if (killer->HasAchieved(HALION_KILL)) // 4815
    {
        if (currentState < PROGRESSION_WOTLK_TIER_5)
        {
            UpdateProgressionState(killer, PROGRESSION_WOTLK_TIER_5);
        }
        return;
    }
    else if (killer->HasAchieved(LICH_KING_KILL)) // 4597
    {
        if (currentState < PROGRESSION_WOTLK_TIER_4)
        {
            UpdateProgressionState(killer, PROGRESSION_WOTLK_TIER_4);
        }
        return;
    }
    else if (killer->HasAchieved(ANUB_ARAK_KILL)) // 3916
    {
        if (currentState < PROGRESSION_WOTLK_TIER_3)
        {
            UpdateProgressionState(killer, PROGRESSION_WOTLK_TIER_3);
        }
        return;
    }
    else if (killer->HasAchieved(KEL_THUZAD_KILL)) // 575
    {
        if (currentState < PROGRESSION_WOTLK_TIER_1)
        {
            UpdateProgressionState(killer, PROGRESSION_WOTLK_TIER_1);
        }
        return;
    }
    else if (killer->HasAchieved(KIL_JAEDEN_KILL)) // 698
    {
        if (currentState < PROGRESSION_TBC_TIER_5)
        {
            UpdateProgressionState(killer, PROGRESSION_TBC_TIER_5);
        }
        return;
    }
    else if (killer->HasAchieved(ZUL_JIN_KILL)) // 691
    {
        if (currentState < PROGRESSION_TBC_TIER_4)
        {
            UpdateProgressionState(killer, PROGRESSION_TBC_TIER_4);
        }
        return;
    }
    else if (killer->HasAchieved(ILLIDAN_KILL)) // 697
    {
        if (currentState < PROGRESSION_TBC_TIER_3)
        {
            UpdateProgressionState(killer, PROGRESSION_TBC_TIER_3);
        }
        return;
    }
    else if (killer->HasAchieved(KAEL_THAS_KILL)) // 696
    {
        if (currentState < PROGRESSION_TBC_TIER_2)
        {
            UpdateProgressionState(killer, PROGRESSION_TBC_TIER_2);
        }
        return;
    }
    else if (killer->HasAchieved(MALCHEZAAR_KILL)) //  690
    {
        if (currentState < PROGRESSION_TBC_TIER_1)
        {
            UpdateProgressionState(killer, PROGRESSION_TBC_TIER_1);
        }
        return;
    }
    else if (killer->HasAchieved(KEL_THUZAD_40_KILL)) // 533
    {
        if (currentState < PROGRESSION_NAXX40)
        {
            UpdateProgressionState(killer, PROGRESSION_NAXX40);
        }
        return;
    }
    else if (killer->HasAchieved(C_THUN_KILL)) // 687
    {
        if (currentState < PROGRESSION_AQ)
        {
            UpdateProgressionState(killer, PROGRESSION_AQ);
        }
        return;
    }
    else if (killer->HasAchieved(NEFARIAN_KILL)) // 685
    {
        if (currentState < PROGRESSION_BLACKWING_LAIR)
        {
            UpdateProgressionState(killer, PROGRESSION_BLACKWING_LAIR);
        }
        return;
    }
    else if (killer->HasAchieved(ONYXIAS_KILL)) // 684
    {
        if (currentState < PROGRESSION_ONYXIA)
        {
            UpdateProgressionState(killer, PROGRESSION_ONYXIA);
        }
        return;
    }
    else if (killer->HasAchieved(RAGNAROS_KILL)) // 686
    {
        if (currentState < PROGRESSION_MOLTEN_CORE)
        {
            UpdateProgressionState(killer, PROGRESSION_MOLTEN_CORE);
        }
        return;
    }
}

void IndividualProgression::checkKillProgression(Player* killer, Creature* killed)
{
    if (!enabled)
    {
        return;
    }

    if (hasCustomProgressionValue(killed->GetEntry()))
    {
        UpdateProgressionState(killer, static_cast<ProgressionState>(customProgressionMap[killed->GetEntry()]));
        return;
    }

    if (disableDefaultProgression)
    {
        return;
    }

    switch (killed->GetEntry())
    {
        case RAGNAROS:
            UpdateProgressionState(killer, PROGRESSION_MOLTEN_CORE);
            UpdateProgressionQuests(killer);
            break;
        case ONYXIA_40:
            UpdateProgressionState(killer, PROGRESSION_ONYXIA);
            UpdateProgressionQuests(killer);
            break;
        case NEFARIAN:
            UpdateProgressionState(killer, PROGRESSION_BLACKWING_LAIR);
            UpdateProgressionQuests(killer);
            break;
        case CTHUN:
            UpdateProgressionState(killer, PROGRESSION_AQ);
            UpdateProgressionQuests(killer);
            break;
        case KELTHUZAD_40:
            UpdateProgressionState(killer, PROGRESSION_NAXX40);
            UpdateProgressionQuests(killer);
            UpdateProgressionAchievements(killer, KEL_THUZAD_40_KILL);
            break;
        case MALCHEZAAR:
            UpdateProgressionState(killer, PROGRESSION_TBC_TIER_1);
            UpdateProgressionQuests(killer);
            break;
        case KAELTHAS:
            UpdateProgressionState(killer, PROGRESSION_TBC_TIER_2);
            UpdateProgressionQuests(killer);
            break;
        case ILLIDAN:
            UpdateProgressionState(killer, PROGRESSION_TBC_TIER_3);
            UpdateProgressionQuests(killer);
            break;
        case ZULJIN:
            UpdateProgressionState(killer, PROGRESSION_TBC_TIER_4);
            UpdateProgressionQuests(killer);
            break;
        case KILJAEDEN:
            UpdateProgressionState(killer, PROGRESSION_TBC_TIER_5);
            UpdateProgressionQuests(killer);
            break;
        case KELTHUZAD:
            UpdateProgressionState(killer, PROGRESSION_WOTLK_TIER_1);
            UpdateProgressionQuests(killer);
            break;
        case YOGGSARON:
            UpdateProgressionState(killer, PROGRESSION_WOTLK_TIER_2);
            UpdateProgressionQuests(killer);
            break;
        case ANUBARAK:
            UpdateProgressionState(killer, PROGRESSION_WOTLK_TIER_3);
            UpdateProgressionQuests(killer);
            break;
        case LICH_KING:
            UpdateProgressionState(killer, PROGRESSION_WOTLK_TIER_4);
            UpdateProgressionQuests(killer);
            break;
        case HALION:
            UpdateProgressionState(killer, PROGRESSION_WOTLK_TIER_5);
            UpdateProgressionQuests(killer);
            break;
    }
}

void IndividualProgression::UpdateProgressionQuests(Player* player)
{
	// remove all hidden progression quests
    for (uint8 i = PROGRESSION_MOLTEN_CORE; i <= PROGRESSION_WOTLK_TIER_5; ++i)
    {
        uint32 PROGRESSION_QUEST = 66000;
        PROGRESSION_QUEST = PROGRESSION_QUEST + i;

        if (player->GetQuestStatus(PROGRESSION_QUEST) == QUEST_STATUS_REWARDED)
            player->RemoveRewardedQuest(PROGRESSION_QUEST);
    }

    // add hidden progression quests
    for (uint8 i = PROGRESSION_MOLTEN_CORE; i <= PROGRESSION_WOTLK_TIER_5; ++i)
    {
		ProgressionState PROGRESSION_STATE = static_cast<ProgressionState>(i);
        uint32 PROGRESSION_QUEST = 66000;
        PROGRESSION_QUEST = PROGRESSION_QUEST + i;

        if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_STATE)) && (player->GetQuestStatus(PROGRESSION_QUEST) != QUEST_STATUS_REWARDED))
        {
            Quest const* quest = sObjectMgr->GetQuestTemplate(PROGRESSION_QUEST);

            player->AddQuest(quest, nullptr);
            player->CompleteQuest(PROGRESSION_QUEST);
            player->RewardQuest(quest, 0, player, false, false);
        }
    }
}

void IndividualProgression::UpdateProgressionAchievements(Player* player, uint16 achievementID)
{
    AchievementEntry const* entry = sAchievementStore.LookupEntry(achievementID);

    if (entry)
    {
        player->CompletedAchievement(entry);
    }
}

void IndividualProgression::CleanUpVanillaPvpTitles(Player* player)
{
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
            {
                player->SetTitle(sCharTitlesStore.LookupEntry(title.TitleId), true);
            }
        }
    }
    else
    {
        for (IppPvPTitles title : pvpTitlesList)
        {
            if (kills < title.RequiredKills && player->HasTitle(title.TitleId))
            {
                player->SetTitle(sCharTitlesStore.LookupEntry(title.TitleId), true);
            }
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
		{
			continue;
		}

		RemovePlayerAchievement(playerGUID, achievementId);
    }

	// remove all hidden pvp quests
    for (uint8 i = 1; i <= 14; ++i)
    {
        uint32 questId = PVP_QUEST + i;

        if (player->GetQuestStatus(questId) == QUEST_STATUS_REWARDED)
		{
            player->RemoveRewardedQuest(questId);
        }
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
    if (sIndividualProgression->isBeforeProgression(player, PROGRESSION_PRE_TBC) || sIndividualProgression->VanillaPvpTitlesKeepPostVanilla)
    {
        TeamId teamId = player->GetTeamId(true);
        uint32 kills = player->GetUInt32Value(PLAYER_FIELD_LIFETIME_HONORABLE_KILLS);

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

	    if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC) || VanillaPvpTitlesEarnPostVanilla)
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

            // remove all titles except highest
            for (IppPvPTitles title : pvpTitlesList)
            {
                if (highestTitle != title.TitleId)
				{
                    player->SetTitle(sCharTitlesStore.LookupEntry(title.TitleId), true);
				}
            }

			if (highestTitle != -1)
			{
				player->SetCurrentTitle(sCharTitlesStore.LookupEntry(highestTitle));
			}
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
        sIndividualProgression->vanillaHealthAdjustment = sConfigMgr->GetOption<float>("IndividualProgression.VanillaHealthAdjustment", 1);
        sIndividualProgression->tbcPowerAdjustment = sConfigMgr->GetOption<float>("IndividualProgression.TBCPowerAdjustment", 1);
        sIndividualProgression->tbcHealingAdjustment = sConfigMgr->GetOption<float>("IndividualProgression.TBCHealingAdjustment", 1);
        sIndividualProgression->tbcHealthAdjustment = sConfigMgr->GetOption<float>("IndividualProgression.TBCHealthAdjustment", 1);
        sIndividualProgression->questXpFix = sConfigMgr->GetOption<bool>("IndividualProgression.QuestXPFix", true);
        sIndividualProgression->requireNaxxStrath = sConfigMgr->GetOption<bool>("IndividualProgression.RequireNaxxStrathEntrance", false);
        sIndividualProgression->enforceGroupRules = sConfigMgr->GetOption<bool>("IndividualProgression.EnforceGroupRules", true);
        sIndividualProgression->fishingFix = sConfigMgr->GetOption<bool>("IndividualProgression.FishingFix", true);
        sIndividualProgression->simpleConfigOverride = sConfigMgr->GetOption<bool>("IndividualProgression.SimpleConfigOverride", true);
        sIndividualProgression->progressionLimit = sConfigMgr->GetOption<uint8>("IndividualProgression.ProgressionLimit", 0);
        sIndividualProgression->startingProgression = sConfigMgr->GetOption<uint8>("IndividualProgression.StartingProgression", 0);
        sIndividualProgression->questMoneyAtLevelCap = sConfigMgr->GetOption<bool>("IndividualProgression.QuestMoneyAtLevelCap", true);
        sIndividualProgression->repeatableVanillaQuestsXp = sConfigMgr->GetOption<bool>("IndividualProgression.RepeatableVanillaQuestsXP", true);
        sIndividualProgression->disableDefaultProgression = sConfigMgr->GetOption<bool>("IndividualProgression.DisableDefaultProgression", true);
        sIndividualProgression->tbcRacesProgressionLevel = sConfigMgr->GetOption<uint8>("IndividualProgression.TbcRacesUnlockProgression", 0);
        sIndividualProgression->deathKnightProgressionLevel = sConfigMgr->GetOption<uint8>("IndividualProgression.DeathKnightUnlockProgression", 13);
        sIndividualProgression->deathKnightStartingProgression = sConfigMgr->GetOption<uint8>("IndividualProgression.DeathKnightStartingProgression", 13);
        sIndividualProgression->RequiredZulGurubProgression = sConfigMgr->GetOption<uint8>("IndividualProgression.RequiredZulGurubProgression", 3);
        sIndividualProgression->LoadCustomProgressionEntries(sConfigMgr->GetOption<std::string>("IndividualProgression.CustomProgression", ""));
        sIndividualProgression->earlyDungeonSet2 = sConfigMgr->GetOption<bool>("IndividualProgression.AllowEarlyDungeonSet2", false);
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
        sIndividualProgression->excludeAccounts = sConfigMgr->GetOption<bool>("IndividualProgression.ExcludeAccounts", true);
        sIndividualProgression->excludedAccountsRegex = sConfigMgr->GetOption<std::string>("IndividualProgression.ExcludedAccountsRegex", "^RNDBOT.*");
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
            sWorld->setBoolConfig(CONFIG_OBJECT_QUEST_MARKERS, false);
            sWorld->setBoolConfig(CONFIG_OBJECT_SPARKLES, false);
            sWorld->setBoolConfig(CONFIG_PLAYER_SETTINGS_ENABLED, true);
            sWorld->setBoolConfig(CONFIG_LOW_LEVEL_REGEN_BOOST, false);
            sWorld->setBoolConfig(CONFIG_DBC_ENFORCE_ITEM_ATTRIBUTES, false);
        }

        if (sIndividualProgression->DisableRDF)
        {
            sWorld->setIntConfig(CONFIG_LFG_OPTIONSMASK, 4);
        }
    }
};

// Add all scripts in one
void AddSC_mod_individual_progression()
{
    new IndividualPlayerProgression_WorldScript();
}
