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
        sIndividualProgression->LoadCustomProgressionEntries(sConfigMgr->GetOption<std::string>("IndividualProgression.CustomProgression", ""));
        sIndividualProgression->earlyDungeonSet2 = sConfigMgr->GetOption<bool>("IndividualProgression.AllowEarlyDungeonSet2", false);
        sIndividualProgression->pvpGearRequirements = sConfigMgr->GetOption<bool>("IndividualProgression.PvPGearRequirements", true);
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
