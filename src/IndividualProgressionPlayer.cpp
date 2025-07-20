#include "IndividualProgression.h"
#include "naxxramas_40.h"

class IndividualPlayerProgression : public PlayerScript
{

private:
    static bool IsTBCRaceStartingZone(uint32 mapid, float x, float y, float z)
    {
        Map const *map = sMapMgr->FindMap(mapid, 0);
        uint32 zoneId = map->GetZoneId(0, x, y, z);
        return (zoneId == ZONE_AZUREMYST || zoneId == ZONE_BLOODMYST || zoneId == ZONE_GHOSTLANDS ||
                zoneId == ZONE_EVERSONG || zoneId == ZONE_EXODAR || zoneId == ZONE_SILVERMOON ||
                zoneId == ZONE_VEILED_SEA);
    }

public:
    IndividualPlayerProgression() : PlayerScript("IndividualProgression") { }

    void OnPlayerLogin(Player* player) override
    {
        if (!sIndividualProgression->enabled || isExcludedFromProgression(player))
        {
            return;
        }
        
        if (player->getClass() == CLASS_DEATH_KNIGHT && sIndividualProgression->deathKnightStartingProgression && !sIndividualProgression->hasPassedProgression(player, static_cast<ProgressionState>(sIndividualProgression->deathKnightStartingProgression)))
        {
            sIndividualProgression->UpdateProgressionState(player, static_cast<ProgressionState>(sIndividualProgression->deathKnightStartingProgression));
        }
        if (sIndividualProgression->startingProgression && !sIndividualProgression->hasPassedProgression(player, static_cast<ProgressionState>(sIndividualProgression->startingProgression)))
        {
            sIndividualProgression->UpdateProgressionState(player, static_cast<ProgressionState>(sIndividualProgression->startingProgression));
        }
        sIndividualProgression->CheckAdjustments(player);

        if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_MOLTEN_CORE)) && (player->GetQuestStatus(PROGRESSION_FLAG_MC) != QUEST_STATUS_REWARDED))
        {
            Quest const* quest = sObjectMgr->GetQuestTemplate(PROGRESSION_FLAG_MC);

            player->AddQuest(quest, nullptr);
            player->CompleteQuest(PROGRESSION_FLAG_MC);
            player->RewardQuest(quest, 0, player, false, false);
        }

        if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_ONYXIA)) && (player->GetQuestStatus(PROGRESSION_FLAG_ONYXIA) != QUEST_STATUS_REWARDED))
        {
            Quest const* quest = sObjectMgr->GetQuestTemplate(PROGRESSION_FLAG_ONYXIA);

            player->AddQuest(quest, nullptr);
            player->CompleteQuest(PROGRESSION_FLAG_ONYXIA);
            player->RewardQuest(quest, 0, player, false, false);
        }

        if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_BLACKWING_LAIR)) && (player->GetQuestStatus(PROGRESSION_FLAG_BWL) != QUEST_STATUS_REWARDED))
        {
            Quest const* quest = sObjectMgr->GetQuestTemplate(PROGRESSION_FLAG_BWL);

            player->AddQuest(quest, nullptr);
            player->CompleteQuest(PROGRESSION_FLAG_BWL);
            player->RewardQuest(quest, 0, player, false, false);
        }

        if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_AQ)) && (player->GetQuestStatus(PROGRESSION_FLAG_PRE_AQ) != QUEST_STATUS_REWARDED))
        {
            Quest const* quest = sObjectMgr->GetQuestTemplate(PROGRESSION_FLAG_PRE_AQ);

            player->AddQuest(quest, nullptr);
            player->CompleteQuest(PROGRESSION_FLAG_PRE_AQ);
            player->RewardQuest(quest, 0, player, false, false);
        }

        if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ_WAR)) && (player->GetQuestStatus(PROGRESSION_FLAG_AQ_WAR) != QUEST_STATUS_REWARDED))
        {
            Quest const* quest = sObjectMgr->GetQuestTemplate(PROGRESSION_FLAG_AQ_WAR);

            player->AddQuest(quest, nullptr);
            player->CompleteQuest(PROGRESSION_FLAG_AQ_WAR);
            player->RewardQuest(quest, 0, player, false, false);
        }

        if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (player->GetQuestStatus(PROGRESSION_FLAG_AQ) != QUEST_STATUS_REWARDED))
        {
            Quest const* quest = sObjectMgr->GetQuestTemplate(PROGRESSION_FLAG_AQ);

            player->AddQuest(quest, nullptr);
            player->CompleteQuest(PROGRESSION_FLAG_AQ);
            player->RewardQuest(quest, 0, player, false, false);
        }

        if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_NAXX40)) && (player->GetQuestStatus(PROGRESSION_FLAG_NAXX40) != QUEST_STATUS_REWARDED))
        {
            Quest const* quest = sObjectMgr->GetQuestTemplate(PROGRESSION_FLAG_NAXX40);

            player->AddQuest(quest, nullptr);
            player->CompleteQuest(PROGRESSION_FLAG_NAXX40);
            player->RewardQuest(quest, 0, player, false, false);
        }

        if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC)) && (player->GetQuestStatus(PROGRESSION_FLAG_PRE_TBC) != QUEST_STATUS_REWARDED))
        {
            Quest const* quest = sObjectMgr->GetQuestTemplate(PROGRESSION_FLAG_PRE_TBC);

            player->AddQuest(quest, nullptr);
            player->CompleteQuest(PROGRESSION_FLAG_PRE_TBC);
            player->RewardQuest(quest, 0, player, false, false);
        }

        if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_1)) && (player->GetQuestStatus(PROGRESSION_FLAG_TBC_T1) != QUEST_STATUS_REWARDED))
        {
            Quest const* quest = sObjectMgr->GetQuestTemplate(PROGRESSION_FLAG_TBC_T1);

            player->AddQuest(quest, nullptr);
            player->CompleteQuest(PROGRESSION_FLAG_TBC_T1);
            player->RewardQuest(quest, 0, player, false, false);
        }

        if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_2)) && (player->GetQuestStatus(PROGRESSION_FLAG_TBC_T2) != QUEST_STATUS_REWARDED))
        {
            Quest const* quest = sObjectMgr->GetQuestTemplate(PROGRESSION_FLAG_TBC_T2);

            player->AddQuest(quest, nullptr);
            player->CompleteQuest(PROGRESSION_FLAG_TBC_T2);
            player->RewardQuest(quest, 0, player, false, false);
        }

        if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_3)) && (player->GetQuestStatus(PROGRESSION_FLAG_TBC_T3) != QUEST_STATUS_REWARDED))
        {
            Quest const* quest = sObjectMgr->GetQuestTemplate(PROGRESSION_FLAG_TBC_T3);

            player->AddQuest(quest, nullptr);
            player->CompleteQuest(PROGRESSION_FLAG_TBC_T3);
            player->RewardQuest(quest, 0, player, false, false);
        }

        if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_4)) && (player->GetQuestStatus(PROGRESSION_FLAG_TBC_T4) != QUEST_STATUS_REWARDED))
        {
            Quest const* quest = sObjectMgr->GetQuestTemplate(PROGRESSION_FLAG_TBC_T4);

            player->AddQuest(quest, nullptr);
            player->CompleteQuest(PROGRESSION_FLAG_TBC_T4);
            player->RewardQuest(quest, 0, player, false, false);
        }

        if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5)) && (player->GetQuestStatus(PROGRESSION_FLAG_TBC_T5) != QUEST_STATUS_REWARDED))
        {
            Quest const* quest = sObjectMgr->GetQuestTemplate(PROGRESSION_FLAG_TBC_T5);

            player->AddQuest(quest, nullptr);
            player->CompleteQuest(PROGRESSION_FLAG_TBC_T5);
            player->RewardQuest(quest, 0, player, false, false);
        }

        if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_WOTLK_TIER_1)) && (player->GetQuestStatus(PROGRESSION_FLAG_WOTLK_T1) != QUEST_STATUS_REWARDED))
        {
            Quest const* quest = sObjectMgr->GetQuestTemplate(PROGRESSION_FLAG_WOTLK_T1);

            player->AddQuest(quest, nullptr);
            player->CompleteQuest(PROGRESSION_FLAG_WOTLK_T1);
            player->RewardQuest(quest, 0, player, false, false);
        }

        if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_WOTLK_TIER_2)) && (player->GetQuestStatus(PROGRESSION_FLAG_WOTLK_T2) != QUEST_STATUS_REWARDED))
        {
            Quest const* quest = sObjectMgr->GetQuestTemplate(PROGRESSION_FLAG_WOTLK_T2);

            player->AddQuest(quest, nullptr);
            player->CompleteQuest(PROGRESSION_FLAG_WOTLK_T2);
            player->RewardQuest(quest, 0, player, false, false);
        }

        if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_WOTLK_TIER_3)) && (player->GetQuestStatus(PROGRESSION_FLAG_WOTLK_T3) != QUEST_STATUS_REWARDED))
        {
            Quest const* quest = sObjectMgr->GetQuestTemplate(PROGRESSION_FLAG_WOTLK_T3);

            player->AddQuest(quest, nullptr);
            player->CompleteQuest(PROGRESSION_FLAG_WOTLK_T3);
            player->RewardQuest(quest, 0, player, false, false);
        }

        if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_WOTLK_TIER_4)) && (player->GetQuestStatus(PROGRESSION_FLAG_WOTLK_T4) != QUEST_STATUS_REWARDED))
        {
            Quest const* quest = sObjectMgr->GetQuestTemplate(PROGRESSION_FLAG_WOTLK_T4);

            player->AddQuest(quest, nullptr);
            player->CompleteQuest(PROGRESSION_FLAG_WOTLK_T4);
            player->RewardQuest(quest, 0, player, false, false);
        }

        if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_WOTLK_TIER_5)) && (player->GetQuestStatus(PROGRESSION_FLAG_WOTLK_T5) != QUEST_STATUS_REWARDED))
        {
            Quest const* quest = sObjectMgr->GetQuestTemplate(PROGRESSION_FLAG_WOTLK_T5);

            player->AddQuest(quest, nullptr);
            player->CompleteQuest(PROGRESSION_FLAG_WOTLK_T5);
            player->RewardQuest(quest, 0, player, false, false);
        }
    }

    void OnPlayerSetMaxLevel(Player* player, uint32& maxPlayerLevel) override
    {
        if (!sIndividualProgression->enabled || isExcludedFromProgression(player))
        {
            return;
        }

        if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC))
        {
            if (sWorld->getIntConfig(CONFIG_MAX_PLAYER_LEVEL) > IP_LEVEL_VANILLA)
            {
                maxPlayerLevel = IP_LEVEL_VANILLA;
            }
        }
        else if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5))
        {
            if (sWorld->getIntConfig(CONFIG_MAX_PLAYER_LEVEL) > IP_LEVEL_TBC)
            {
                maxPlayerLevel = IP_LEVEL_TBC;
            }
        }
    }

    void OnPlayerMapChanged(Player* player) override
    {
        sIndividualProgression->CheckAdjustments(player);
    }

    void OnPlayerLevelChanged(Player* player, uint8 /*oldLevel*/) override
    {
        sIndividualProgression->CheckAdjustments(player);
    }

    void OnPlayerEquip(Player* player, Item* /*it*/, uint8 /*bag*/, uint8 /*slot*/, bool /*update*/) override
    {
        sIndividualProgression->CheckAdjustments(player);
    }

    void OnPlayerResurrect(Player* player, float /*restore_percent*/, bool /*applySickness*/) override
    {
        sIndividualProgression->CheckAdjustments(player);
    }

    bool OnPlayerShouldBeRewardedWithMoneyInsteadOfExp(Player* player) override
    {
        if (!sIndividualProgression->questMoneyAtLevelCap)
        {
            return false;
        }
        // Player is still in Vanilla content - give money at 60 level cap
        return ((!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC) && player->GetLevel() == IP_LEVEL_VANILLA) ||
                // Player is in TBC content - give money at 70 level cap
                (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5) && player->GetLevel() == IP_LEVEL_TBC));
    }

    void OnPlayerAfterUpdateMaxHealth(Player* player, float& value) override
    {
        // TODO: This should be adjust to use an aura like damage adjustment. This is more robust to update when changing equipment, etc.
        if (!sIndividualProgression->enabled)
        {
            return;
        }
        float gearAdjustment = 0.0;
        for (uint8 i = EQUIPMENT_SLOT_START; i < EQUIPMENT_SLOT_END; ++i)
        {
            if (Item* item = player->GetItemByPos(INVENTORY_SLOT_BAG_0, i))
                sIndividualProgression->ComputeGearTuning(player, gearAdjustment, item->GetTemplate());
        }
        // Player is still in Vanilla content - give Vanilla health adjustment
        if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC) || (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC) && (player->GetLevel() <= IP_LEVEL_VANILLA)))
        {
            float adjustmentAmount = 1.0f - sIndividualProgression->vanillaHealthAdjustment;
            float applyPercent = ((player->GetLevel() - 10.0f) / 50.0f);
            float computedAdjustment = player->GetLevel() > 10 ? 1.0f - applyPercent * adjustmentAmount : 1.0f;
            value *= computedAdjustment;
        }
            // Player is in TBC content - give TBC health adjustment
        else if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5) || (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5) && (player->GetLevel() <= IP_LEVEL_TBC)))
        {
            value *= (sIndividualProgression->tbcHealthAdjustment - gearAdjustment);
        }
            // Player is in WotLK content - only need to check gear adjustment
        else
        {
            value *= 1 - gearAdjustment;
        }
    }

    void OnPlayerQuestComputeXP(Player* player, Quest const* quest, uint32& xpValue) override
    {
        if (!sIndividualProgression->enabled || !sIndividualProgression->questXpFix || isExcludedFromProgression(player))
        {
            return;
        }
        if (sIndividualProgression->questXpMap.count(quest->GetQuestId()))
        {
            uint32 vanillaXpValue = sIndividualProgression->questXpMap[quest->GetQuestId()];
            if (player)
            {
                uint32 originalXpValue = quest->XPValue(quest->GetQuestLevel() == -1 ? player->GetLevel() : quest->GetQuestLevel());
                xpValue *= vanillaXpValue * 1.0 / originalXpValue;
            }
        }
    }

    void OnPlayerGiveXP(Player* player, uint32& amount, Unit* /*victim*/, uint8 xpSource) override
    {
        if (!sIndividualProgression->enabled || isExcludedFromProgression(player))
        {
            return;
        }
        // Player is still in Vanilla content - do not give XP past level 60
        if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC) && player->GetLevel() >= IP_LEVEL_VANILLA)
        {
            // Still award XP to pets - they won't be able to pass the player's level
            Pet* pet = player->GetPet();
            if (pet && xpSource == XPSOURCE_KILL)
                pet->GivePetXP(player->GetGroup() ? amount / 2 : amount);
            amount = 0;
        }
            // Player is in TBC content - do not give XP past level 70
        else if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5) && player->GetLevel() >= IP_LEVEL_TBC)
        {
            // Still award XP to pets - they won't be able to pass the player's level
            Pet* pet = player->GetPet();
            if (pet && xpSource == XPSOURCE_KILL)
                pet->GivePetXP(player->GetGroup() ? amount / 2 : amount);
            amount = 0;
        }
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

    bool OnPlayerBeforeTeleport(Player* player, uint32 mapid, float x, float y, float z, float /*orientation*/, uint32 /*options*/, Unit* /*target*/) override
    {
        if (!sIndividualProgression->enabled || player->IsGameMaster() || isExcludedFromProgression(player))
        {
            return true;
        }
        if (mapid == MAP_BLACKWING_LAIR && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_MOLTEN_CORE))
        {
            return false;
        }
        if (mapid == MAP_ZUL_GURUB && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_BLACKWING_LAIR))
        {
            return false;
        }
        if (mapid == MAP_AHN_QIRAJ_TEMPLE && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_AQ))
        {
            return false;
        }
        if (mapid == MAP_RUINS_OF_AHN_QIRAJ && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_AQ))
        {
            return false;
        }
        if (mapid == MAP_OUTLAND)
        {
            if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC))
            {
                // The player may be in the Azuremyst area which is on the outlands map - check the area ID
                return IsTBCRaceStartingZone(mapid, x, y, z);
            }
            Map const *map = sMapMgr->FindMap(mapid, 0);
            uint32 zoneId = map->GetZoneId(0, x, y, z);
            if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_4) && zoneId == ZONE_QUELDANAS)
            {
                return false;
            }
        }
        if (mapid == MAP_ZUL_AMAN && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_3))
        {
            return false;
        }
        if (mapid == MAP_NORTHREND && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5))
        {
            return false;
        }
        if (mapid == MAP_ULDUAR && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_WOTLK_TIER_1))
        {
            return false;
        }
        if ((mapid == MAP_TRIAL_OF_THE_CHAMPION || mapid == MAP_TRIAL_OF_THE_CRUSADER) && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_WOTLK_TIER_2)){
            return false;
        }
        // This will also restrict other Frozen Halls dungeons, because Forge of Souls must be completed first to access them
        if ((mapid == MAP_ICECROWN_CITADEL || mapid == MAP_THE_FORGE_OF_SOULS) && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_WOTLK_TIER_3))
        {
            return false;
        }
        if (mapid == MAP_THE_RUBY_SANCTUM && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_WOTLK_TIER_4))
        {
            return false;
        }

        InstanceTemplate const* instanceTemplate = sObjectMgr->GetInstanceTemplate(mapid);
        if (instanceTemplate)
        {
            if (instanceTemplate->Parent == MAP_OUTLAND && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC))
            {
                return false;
            }
            if (instanceTemplate->Parent == MAP_NORTHREND && mapid != MAP_NAXXRAMAS && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5))
            {
                return false;
            }
            if (instanceTemplate->Parent == MAP_NORTHREND && mapid == MAP_NAXXRAMAS && player->GetLevel() <= IP_LEVEL_TBC && !isAttuned(player))  
            {
                return false;
            }
        }
        return true;
    }

    void OnPlayerCompleteQuest(Player* player, Quest const* quest) override
    {
        if (!sIndividualProgression->enabled || isExcludedFromProgression(player))
        {
            return;
        }
        switch (quest->GetQuestId())
        {
            case MIGHT_OF_KALIMDOR:
                if (!sIndividualProgression->disableDefaultProgression)
                {
                    sIndividualProgression->UpdateProgressionState(player, PROGRESSION_PRE_AQ);
                }
                break;
            case BANG_A_GONG:
                if (!sIndividualProgression->disableDefaultProgression)
                {
                    sIndividualProgression->UpdateProgressionState(player, PROGRESSION_PRE_AQ);
                }
                break;
            case CHAOS_AND_DESTRUCTION:
                if (!sIndividualProgression->disableDefaultProgression)
                {
                    sIndividualProgression->UpdateProgressionState(player, PROGRESSION_AQ_WAR);
                }
                break;
            case INTO_THE_BREACH:
                if (!sIndividualProgression->disableDefaultProgression)
                {
                    sIndividualProgression->UpdateProgressionState(player, PROGRESSION_PRE_TBC);
                }
                break;
            case QUEST_MORROWGRAIN:
            case QUEST_TROLL_NECKLACE:
            case QUEST_DEADWOOD:
            case QUEST_WINTERFALL:
                if (sIndividualProgression->repeatableVanillaQuestsXp)
                {
                    // Reset the quest status so the player can take it and receive rewards again
                    player->RemoveRewardedQuest(quest->GetQuestId());
                }
                break;
        }
    }

    bool OnPlayerCanGroupInvite(Player* player, std::string& membername) override
    {
        if (!sIndividualProgression->enabled || !sIndividualProgression->enforceGroupRules || isExcludedFromProgression(player))
        {
            return true;
        }
        Player* otherPlayer = ObjectAccessor::FindPlayerByName(membername, false);
        uint8 currentState = player->GetPlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE).value;
        uint8 otherPlayerState = otherPlayer->GetPlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE).value;
        return (currentState == otherPlayerState);
    }

    bool OnPlayerCanGroupAccept(Player* player, Group* group) override
    {
        if (!sIndividualProgression->enabled || !sIndividualProgression->enforceGroupRules || isExcludedFromProgression(player))
        {
            return true;
        }
        Player* groupLeader = ObjectAccessor::FindPlayerByLowGUID(group->GetLeaderGUID().GetCounter());
        uint8 currentState = player->GetPlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE).value;
        uint8 otherPlayerState = groupLeader->GetPlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE).value;
        return (currentState == otherPlayerState);
    }



    void OnPlayerCreatureKill(Player* killer, Creature* killed) override
    {
        sIndividualProgression->checkKillProgression(killer, killed);
        Group* group = killer->GetGroup();
        if (!group)
        {
            return;
        }
        for (GroupReference* itr = group->GetFirstMember(); itr != nullptr; itr = itr->next())
        {
            Player* member = itr->GetSource();
            if (!member)
                continue;

            if (killer->IsAtLootRewardDistance(member))
                sIndividualProgression->checkKillProgression(member, killed);
        }
    }

    bool OnPlayerUpdateFishingSkill(Player* player, int32 /*skill*/, int32 /*zone_skill*/, int32 chance, int32 roll) override
    {
        if (!sIndividualProgression->enabled || !sIndividualProgression->fishingFix || isExcludedFromProgression(player))
            return true;
        if (chance < roll)
            return false;
        return true;
    }

    void OnPlayerUpdateArea(Player* player, uint32 /*oldArea*/, uint32 newArea) override
    {
        switch (newArea) {
            case AREA_DARKSHORE:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_AQ_WAR)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;
            case AREA_GROVE_OF_THE_ANCIENTS:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_AQ_WAR)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;	
            case AREA_WILDBEND_RIVER:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_AQ_WAR)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;
            case AREA_TWILIGHT_VALE:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_AQ_WAR)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;
            case AREA_SILITHUS:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_AQ_WAR)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                else if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ_WAR)) 
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE_II, false);
                }
                break;	
            case AREA_HIVE_ASHI:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_AQ_WAR)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                else if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ_WAR)) 
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE_II, false);
                }
                break;	
            case AREA_HIVE_ZORA:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_AQ_WAR)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                else if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ_WAR)) 
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE_II, false);
                }
                break;	
            case AREA_HIVE_REGAL:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_AQ_WAR)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                else if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ_WAR)) 
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE_II, false);
                }
                break;
            case AREA_BOUGH_SHADOW:
                if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_ONYXIA))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;
            case AREA_SERADANE:
                if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_ONYXIA))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;
            case AREA_DREAM_BOUGH:
                if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_ONYXIA))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;
            case AREA_JADEMIR_LAKE:
                if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_ONYXIA))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;
            case AREA_TWILIGHT_GROVE:
                if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_ONYXIA))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;
            case AREA_DUROTAR:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;	
            case AREA_ROCKTUSK_FARM:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;	
            case AREA_TIRISFAL_GLADES:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;	
            case AREA_RUINS_OF_LORDAERON:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;	
            case AREA_MULGORE:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;	
            case AREA_VALLEY_OF_HEROES:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;	
            case AREA_ELWYNN_FOREST:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;	
            case AREA_DUN_MOROGH:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;	
            case AREA_TELDRASSIL:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;
            case AREA_EASTERN_PLAGUELANDS:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;
            case AREA_PESTILENT_SCAR:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;
            case AREA_THE_MARRIS_STEAD:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;
            case AREA_BLASTED_LANDS:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;
            case AREA_RISE_OF_THE_DEFILER:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;
            case AREA_DREADMAUL_HOLD:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;
            case AREA_DREADMAUL_POST:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;
            case AREA_THE_DARK_PORTAL:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                else if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_NAXX40)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_PRE_TBC)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE_II, false);
                }					
                break;
            case AREA_SERPENTS_COIL:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;
            case AREA_TANARIS:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;
            case AREA_GADGETZAN:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;
            case AREA_ABYSSAL_SANDS:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;
            case AREA_BROKEN_PILLAR:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;
            case AREA_WINTERSPRING:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;
            case AREA_TIMBERMAW_POST:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;
            case AREA_FROSTSABER_ROCK:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;
            case AREA_ICE_THISTLE_HILLS:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;
            case AREA_MAZTHORIL:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;
            case AREA_AZSHARA:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;
            case AREA_HALDARR_ENCAMPMENT:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;
            case AREA_THE_SHATTERED_STRAND:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;
            case AREA_SOUTHRIDGE_BEACH:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;
            case AREA_BURNING_STEPPES:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;
            case AREA_DRACO_DAR:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;
            case AREA_BLACKROCK_MOUNTAIN:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;
            case AREA_DREADMAUL_ROCK:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;
            case AREA_RUINS_OF_THAURISSAN:
                if ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40)))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;
            case AREA_LIGHTS_HOPE:
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
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                }
                break;
            default:
                
                uint32 mapid = player->GetMapId();

                if (mapid == MAP_SHADOWFANG_KEEP && ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40))))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                    break;
                }
                if (mapid == MAP_RAZORFEN_DOWNS && ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40))))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                    break;
                }    
                if (mapid == MAP_SCARLET_MONASTERY && ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40))))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                    break;
                }
                if (mapid == MAP_STRATHOLME && ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40))))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                    break;
                }
                if (mapid == MAP_DIRE_MAUL && ((sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ)) && (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40))))
                {
                    player->RemoveAura(IPP_PHASE);
                    player->RemoveAura(IPP_PHASE_II);
                    player->CastSpell(player, IPP_PHASE, false);
                    break;
                }

                player->RemoveAura(IPP_PHASE);
                player->RemoveAura(IPP_PHASE_II);
        }
    }

    bool OnPlayerCanEquipItem(Player* player, uint8 /*slot*/, uint16& /*dest*/, Item* pItem, bool /*swap*/, bool /*not_loading*/) override
    {
        if (sIndividualProgression->pvpGearRequirements)
        {
            switch (pItem->GetTemplate()->RequiredHonorRank)
            {
                case 5:
                    if (!(player->HasTitle(PRIVATE) || player->HasTitle(SCOUT) || 
                        player->HasTitle(CORPORAL) || player->HasTitle(GRUNT) || 
                        player->HasTitle(SERGEANT) || player->HasTitle(SERGEANT_H) || 
                        player->HasTitle(MASTER_SERGEANT) || player->HasTitle(SENIOR_SERGEANT) || 
                        player->HasTitle(SERGEANT_MAJOR) || player->HasTitle(FIRST_SERGEANT) || 
                        player->HasTitle(KNIGHT) || player->HasTitle(STONE_GUARD) || 
                        player->HasTitle(KNIGHT_LIEUTENANT) || player->HasTitle(BLOOD_GUARD) || 
                        player->HasTitle(KNIGHT_CAPTAIN) || player->HasTitle(LEGIONNAIRE) || 
                        player->HasTitle(KNIGHT_CHAMPION) || player->HasTitle(CENTURION) || 
                        player->HasTitle(LIEUTENANT_COMMANDER) || player->HasTitle(CHAMPION) || 
                        player->HasTitle(COMMANDER) || player->HasTitle(LIEUTENANT_GENERAL) || 
                        player->HasTitle(MARSHAL) || player->HasTitle(GENERAL) || 
                        player->HasTitle(FIELD_MARSHAL) || player->HasTitle(WARLORD) || 
                        player->HasTitle(GRAND_MARSHAL) || player->HasTitle(HIGH_WARLORD)))
                        return false;
                    break;
                case 6:
                    if (!(player->HasTitle(CORPORAL) || player->HasTitle(GRUNT) ||
                        player->HasTitle(SERGEANT) || player->HasTitle(SERGEANT_H) || 
                        player->HasTitle(MASTER_SERGEANT) || player->HasTitle(SENIOR_SERGEANT) || 
                        player->HasTitle(SERGEANT_MAJOR) || player->HasTitle(FIRST_SERGEANT) || 
                        player->HasTitle(KNIGHT) || player->HasTitle(STONE_GUARD) || 
                        player->HasTitle(KNIGHT_LIEUTENANT) || player->HasTitle(BLOOD_GUARD) || 
                        player->HasTitle(KNIGHT_CAPTAIN) || player->HasTitle(LEGIONNAIRE) || 
                        player->HasTitle(KNIGHT_CHAMPION) || player->HasTitle(CENTURION) || 
                        player->HasTitle(LIEUTENANT_COMMANDER) || player->HasTitle(CHAMPION) || 
                        player->HasTitle(COMMANDER) || player->HasTitle(LIEUTENANT_GENERAL) || 
                        player->HasTitle(MARSHAL) || player->HasTitle(GENERAL) || 
                        player->HasTitle(FIELD_MARSHAL) || player->HasTitle(WARLORD) || 
                        player->HasTitle(GRAND_MARSHAL) || player->HasTitle(HIGH_WARLORD)))
                        return false;
                    break;
                case 7:
                    if (!(player->HasTitle(SERGEANT) || player->HasTitle(SERGEANT_H) ||
                        player->HasTitle(MASTER_SERGEANT) || player->HasTitle(SENIOR_SERGEANT) || 
                        player->HasTitle(SERGEANT_MAJOR) || player->HasTitle(FIRST_SERGEANT) || 
                        player->HasTitle(KNIGHT) || player->HasTitle(STONE_GUARD) || 
                        player->HasTitle(KNIGHT_LIEUTENANT) || player->HasTitle(BLOOD_GUARD) || 
                        player->HasTitle(KNIGHT_CAPTAIN) || player->HasTitle(LEGIONNAIRE) || 
                        player->HasTitle(KNIGHT_CHAMPION) || player->HasTitle(CENTURION) || 
                        player->HasTitle(LIEUTENANT_COMMANDER) || player->HasTitle(CHAMPION) || 
                        player->HasTitle(COMMANDER) || player->HasTitle(LIEUTENANT_GENERAL) || 
                        player->HasTitle(MARSHAL) || player->HasTitle(GENERAL) || 
                        player->HasTitle(FIELD_MARSHAL) || player->HasTitle(WARLORD) || 
                        player->HasTitle(GRAND_MARSHAL) || player->HasTitle(HIGH_WARLORD)))
                        return false;
                    break;
                case 8:
                    if (!(player->HasTitle(MASTER_SERGEANT) || player->HasTitle(SENIOR_SERGEANT) ||
                        player->HasTitle(SERGEANT_MAJOR) || player->HasTitle(FIRST_SERGEANT) || 
                        player->HasTitle(KNIGHT) || player->HasTitle(STONE_GUARD) || 
                        player->HasTitle(KNIGHT_LIEUTENANT) || player->HasTitle(BLOOD_GUARD) || 
                        player->HasTitle(KNIGHT_CAPTAIN) || player->HasTitle(LEGIONNAIRE) || 
                        player->HasTitle(KNIGHT_CHAMPION) || player->HasTitle(CENTURION) || 
                        player->HasTitle(LIEUTENANT_COMMANDER) || player->HasTitle(CHAMPION) || 
                        player->HasTitle(COMMANDER) || player->HasTitle(LIEUTENANT_GENERAL) || 
                        player->HasTitle(MARSHAL) || player->HasTitle(GENERAL) || 
                        player->HasTitle(FIELD_MARSHAL) || player->HasTitle(WARLORD) || 
                        player->HasTitle(GRAND_MARSHAL) || player->HasTitle(HIGH_WARLORD)))
                        return false;
                    break;
                case 9:
                    if (!(player->HasTitle(SERGEANT_MAJOR) || player->HasTitle(FIRST_SERGEANT) ||
                        player->HasTitle(KNIGHT) || player->HasTitle(STONE_GUARD) || 
                        player->HasTitle(KNIGHT_LIEUTENANT) || player->HasTitle(BLOOD_GUARD) || 
                        player->HasTitle(KNIGHT_CAPTAIN) || player->HasTitle(LEGIONNAIRE) || 
                        player->HasTitle(KNIGHT_CHAMPION) || player->HasTitle(CENTURION) || 
                        player->HasTitle(LIEUTENANT_COMMANDER) || player->HasTitle(CHAMPION) || 
                        player->HasTitle(COMMANDER) || player->HasTitle(LIEUTENANT_GENERAL) || 
                        player->HasTitle(MARSHAL) || player->HasTitle(GENERAL) || 
                        player->HasTitle(FIELD_MARSHAL) || player->HasTitle(WARLORD) || 
                        player->HasTitle(GRAND_MARSHAL) || player->HasTitle(HIGH_WARLORD)))
                        return false;
                    break;
                case 10:
                    if (!(player->HasTitle(KNIGHT) || player->HasTitle(STONE_GUARD) ||
                        player->HasTitle(KNIGHT_LIEUTENANT) || player->HasTitle(BLOOD_GUARD) || 
                        player->HasTitle(KNIGHT_CAPTAIN) || player->HasTitle(LEGIONNAIRE) || 
                        player->HasTitle(KNIGHT_CHAMPION) || player->HasTitle(CENTURION) || 
                        player->HasTitle(LIEUTENANT_COMMANDER) || player->HasTitle(CHAMPION) || 
                        player->HasTitle(COMMANDER) || player->HasTitle(LIEUTENANT_GENERAL) || 
                        player->HasTitle(MARSHAL) || player->HasTitle(GENERAL) || 
                        player->HasTitle(FIELD_MARSHAL) || player->HasTitle(WARLORD) || 
                        player->HasTitle(GRAND_MARSHAL) || player->HasTitle(HIGH_WARLORD)))
                        return false;
                    break;
                case 11:
                    if (!(player->HasTitle(KNIGHT_LIEUTENANT) || player->HasTitle(BLOOD_GUARD) ||
                        player->HasTitle(KNIGHT_CAPTAIN) || player->HasTitle(LEGIONNAIRE) || 
                        player->HasTitle(KNIGHT_CHAMPION) || player->HasTitle(CENTURION) || 
                        player->HasTitle(LIEUTENANT_COMMANDER) || player->HasTitle(CHAMPION) || 
                        player->HasTitle(COMMANDER) || player->HasTitle(LIEUTENANT_GENERAL) || 
                        player->HasTitle(MARSHAL) || player->HasTitle(GENERAL) || 
                        player->HasTitle(FIELD_MARSHAL) || player->HasTitle(WARLORD) || 
                        player->HasTitle(GRAND_MARSHAL) || player->HasTitle(HIGH_WARLORD)))
                        return false;
                    break;
                case 12:
                    if (!(player->HasTitle(KNIGHT_CAPTAIN) || player->HasTitle(LEGIONNAIRE) ||
                        player->HasTitle(KNIGHT_CHAMPION) || player->HasTitle(CENTURION) || 
                        player->HasTitle(LIEUTENANT_COMMANDER) || player->HasTitle(CHAMPION) || 
                        player->HasTitle(COMMANDER) || player->HasTitle(LIEUTENANT_GENERAL) || 
                        player->HasTitle(MARSHAL) || player->HasTitle(GENERAL) || 
                        player->HasTitle(FIELD_MARSHAL) || player->HasTitle(WARLORD) || 
                        player->HasTitle(GRAND_MARSHAL) || player->HasTitle(HIGH_WARLORD)))
                        return false;
                    break;
                case 13:
                    if (!(player->HasTitle(KNIGHT_CHAMPION) || player->HasTitle(CENTURION) ||
                        player->HasTitle(LIEUTENANT_COMMANDER) || player->HasTitle(CHAMPION) || 
                        player->HasTitle(COMMANDER) || player->HasTitle(LIEUTENANT_GENERAL) || 
                        player->HasTitle(MARSHAL) || player->HasTitle(GENERAL) || 
                        player->HasTitle(FIELD_MARSHAL) || player->HasTitle(WARLORD) || 
                        player->HasTitle(GRAND_MARSHAL) || player->HasTitle(HIGH_WARLORD)))
                        return false;
                    break;
                case 14:
                    if (!(player->HasTitle(LIEUTENANT_COMMANDER) || player->HasTitle(CHAMPION) ||
                        player->HasTitle(COMMANDER) || player->HasTitle(LIEUTENANT_GENERAL) || 
                        player->HasTitle(MARSHAL) || player->HasTitle(GENERAL) || 
                        player->HasTitle(FIELD_MARSHAL) || player->HasTitle(WARLORD) || 
                        player->HasTitle(GRAND_MARSHAL) || player->HasTitle(HIGH_WARLORD)))
                        return false;
                    break;
                case 15:
                    if (!(player->HasTitle(COMMANDER) || player->HasTitle(LIEUTENANT_GENERAL) ||
                        player->HasTitle(MARSHAL) || player->HasTitle(GENERAL) || 
                        player->HasTitle(FIELD_MARSHAL) || player->HasTitle(WARLORD) || 
                        player->HasTitle(GRAND_MARSHAL) || player->HasTitle(HIGH_WARLORD)))
                        return false;
                    break;
                case 16:
                    if (!(player->HasTitle(MARSHAL) || player->HasTitle(GENERAL) ||
                        player->HasTitle(FIELD_MARSHAL) || player->HasTitle(WARLORD) || 
                        player->HasTitle(GRAND_MARSHAL) || player->HasTitle(HIGH_WARLORD)))
                        return false;
                    break;
                case 17:
                    if (!(player->HasTitle(FIELD_MARSHAL) || player->HasTitle(WARLORD) ||
                        player->HasTitle(GRAND_MARSHAL) || player->HasTitle(HIGH_WARLORD)))
                        return false;
                    break;
                case 18:
                    if (!(player->HasTitle(GRAND_MARSHAL) || player->HasTitle(HIGH_WARLORD)))
                        return false;
                    break;
                default:
                    break;
            }
        }
        return true;
    }
};

class IndividualPlayerProgression_AccountScript: public AccountScript
{
public:
    IndividualPlayerProgression_AccountScript() : AccountScript("IndividualProgression_AccountScript")
    {}

    bool CanAccountCreateCharacter(uint32 accountId, uint8 charRace, uint8 charClass) override
    {
        if ((!sIndividualProgression->enabled) ||
            (charRace != RACE_DRAENEI && charRace != RACE_BLOODELF && charClass != CLASS_DEATH_KNIGHT) ||
            (!sIndividualProgression->tbcRacesProgressionLevel && !sIndividualProgression->deathKnightProgressionLevel))
        {
            return true;
        }
        uint8 highestProgression = sIndividualProgression->GetAccountProgression(accountId);
        if (charRace == RACE_DRAENEI || charRace == RACE_BLOODELF)
        {
            if (sIndividualProgression->tbcRacesProgressionLevel)
            {
                if (highestProgression < sIndividualProgression->tbcRacesProgressionLevel)
                {
                    return false;
                }
            }
        }
        if (charClass == CLASS_DEATH_KNIGHT && sIndividualProgression->deathKnightProgressionLevel)
        {
            if (highestProgression < sIndividualProgression->deathKnightProgressionLevel)
            {
                return false;
            }
        }
        return true;
    }
};


class IndividualPlayerProgression_PetScript : public PetScript
{
private:
    static void CheckAdjustments(Pet* pet)
    {
        if (!sIndividualProgression->enabled)
        {
            return;
        }
        if (!pet || !pet->GetOwner())
        {
            return;
        }

        if (!sIndividualProgression->hasPassedProgression(pet->GetOwner(), PROGRESSION_PRE_TBC) || ((!sIndividualProgression->hasPassedProgression(pet->GetOwner(), PROGRESSION_PRE_TBC)) && (pet->GetLevel() <= IP_LEVEL_VANILLA)))
        {
            AdjustVanillaStats(pet);
        }
        else if (!sIndividualProgression->hasPassedProgression(pet->GetOwner(), PROGRESSION_TBC_TIER_5) || ((!sIndividualProgression->hasPassedProgression(pet->GetOwner(), PROGRESSION_TBC_TIER_5)) && (pet->GetLevel() <= IP_LEVEL_TBC)))
        {
            AdjustTBCStats(pet);
        }
    }

    static void AdjustVanillaStats(Pet* pet)
    {
        float adjustmentValue = -100.0f * (1.0f - sIndividualProgression->vanillaPowerAdjustment);
        float adjustmentApplyPercent = (pet->GetLevel() - 10.0f) / 50.0f;
        float computedAdjustment = pet->GetLevel() > 10 ? (adjustmentValue * adjustmentApplyPercent) : 0;
        float hpAdjustmentValue = -100.0f * (1.0f - sIndividualProgression->vanillaHealthAdjustment);
        float hpAdjustment = pet->GetLevel() > 10 ? (hpAdjustmentValue * adjustmentApplyPercent) : 0;
        AdjustStats(pet, computedAdjustment, hpAdjustment);
    }

    static void AdjustTBCStats(Pet* pet)
    {
        float adjustmentValue = -100.0f * (1.0f - sIndividualProgression->tbcPowerAdjustment);
        float adjustmentApplyPercent = 1;
        float computedAdjustment = pet->GetLevel() > 10 ? (adjustmentValue * adjustmentApplyPercent) : 0;
        float hpAdjustmentValue = -100.0f * (1.0f - sIndividualProgression->tbcHealthAdjustment);
        float hpAdjustment = pet->GetLevel() > 10 ? (hpAdjustmentValue * adjustmentApplyPercent) : 0;
        AdjustStats(pet, computedAdjustment, hpAdjustment);
    }

    static void AdjustStats(Pet* pet, float computedAdjustment, float hpAdjustment)
    {
        // int32 bp0 = 0; // This would be the damage taken adjustment value, but we are already adjusting health
        auto bp1 = static_cast<int32>(computedAdjustment);
        auto bp2 = static_cast<int32>(hpAdjustment);

        pet->RemoveAura(ABSORB_SPELL);
        pet->CastCustomSpell(pet, ABSORB_SPELL, &bp1, nullptr, nullptr, false);

        pet->RemoveAura(HP_AURA_SPELL);
        pet->CastCustomSpell(pet, HP_AURA_SPELL, &bp2, nullptr, nullptr, false);
    }

public:
    IndividualPlayerProgression_PetScript() : PetScript("IndividualProgression_PetScript") { }

    void OnPetAddToWorld(Pet* pet) override
    {
        CheckAdjustments(pet);
    }
};

class IndividualPlayerProgression_UnitScript : public UnitScript
{
private:
    static float computeTotalGearTuning(Player* player)
    {
        float gearAdjustment = 0.0;
        for (uint8 i = EQUIPMENT_SLOT_START; i < EQUIPMENT_SLOT_END; ++i)
        {
            if (Item* item = player->GetItemByPos(INVENTORY_SLOT_BAG_0, i))
                sIndividualProgression->ComputeGearTuning(player, gearAdjustment, item->GetTemplate());
        }
        return gearAdjustment;
    }

public:
    IndividualPlayerProgression_UnitScript() : UnitScript("IndividualPlayerProgression_UnitScript") { }

    void ModifyHealReceived(Unit* /*target*/, Unit *healer, uint32 &heal, SpellInfo const *spellInfo) override
    {
        // Skip potions, bandages, percentage based heals like Rune Tap, etc.
        if (!sIndividualProgression->enabled || spellInfo->HasAttribute(SPELL_ATTR0_NO_IMMUNITIES) || spellInfo->Mechanic == MECHANIC_BANDAGE)
        {
            return;
        }

        // Skip percentage based heals or spells already nerfed by damage reduction
        for (uint8 i = 0; i < 3; i++)
        {
            if (spellInfo->Effects[i].Effect == SPELL_EFFECT_HEAL_MAX_HEALTH)
            {
                return;
            }
        }
        if (spellInfo->Id == SPELL_RUNE_TAP || spellInfo->Id == SPELL_LIFE_STEAL)
        {
            return;
        }

        if (!healer)
            return;

        bool isPet = healer->GetOwner() && healer->GetOwner()->GetTypeId() == TYPEID_PLAYER;
        if (!isPet && healer->GetTypeId() != TYPEID_PLAYER)
        {
            return;
        }
        Player* player = isPet ? healer->GetOwner()->ToPlayer() : healer->ToPlayer();
        float gearAdjustment = computeTotalGearTuning(player);
        if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC) || (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC) && (player->GetLevel() <= IP_LEVEL_VANILLA)))
        {
            heal *= (sIndividualProgression->ComputeVanillaAdjustment(player->GetLevel(), sIndividualProgression->vanillaHealingAdjustment) - gearAdjustment);
        }
        else if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5) || (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5) && (player->GetLevel() <= IP_LEVEL_TBC)))
        {
            heal *= (sIndividualProgression->tbcHealingAdjustment - gearAdjustment);
        }
        else
        {
            heal *= 1.0f - gearAdjustment;
        }
    }

    void ModifySpellDamageTaken(Unit* /*target*/, Unit* attacker, int32& damage, SpellInfo const* /*spellInfo*/) override
    {
        if (!sIndividualProgression->enabled || !attacker)
            return;
        bool isPet = attacker->GetOwner() && attacker->GetOwner()->GetTypeId() == TYPEID_PLAYER;
        if (!isPet && attacker->GetTypeId() != TYPEID_PLAYER)
        {
            return;
        }
        Player* player = isPet ? attacker->GetOwner()->ToPlayer() : attacker->ToPlayer();
        float gearAdjustment = computeTotalGearTuning(player);
        if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC) || (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC) && (player->GetLevel() <= IP_LEVEL_VANILLA)))
        {
            damage *= (sIndividualProgression->ComputeVanillaAdjustment(player->GetLevel(), sIndividualProgression->vanillaPowerAdjustment) - gearAdjustment);
        }
        else if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5) || (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5) && (player->GetLevel() <= IP_LEVEL_TBC)))
        {
            damage *= (sIndividualProgression->tbcPowerAdjustment - gearAdjustment);
        }
        else
        {
            damage *= 1.0f - gearAdjustment;
        }
    }

    void ModifyMeleeDamage(Unit* /*target*/, Unit* attacker, uint32& damage) override
    {
        if (!sIndividualProgression->enabled || !attacker)
            return;

        bool isPet = attacker->GetOwner() && attacker->GetOwner()->GetTypeId() == TYPEID_PLAYER;
        if (!isPet && attacker->GetTypeId() != TYPEID_PLAYER)
        {
            return;
        }
        Player* player = isPet ? attacker->GetOwner()->ToPlayer() : attacker->ToPlayer();
        float gearAdjustment = computeTotalGearTuning(player);
        if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC) || (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC) && (player->GetLevel() <= IP_LEVEL_VANILLA)))
        {
            damage *= (sIndividualProgression->ComputeVanillaAdjustment(player->GetLevel(), sIndividualProgression->vanillaPowerAdjustment) - gearAdjustment);
        }
        else if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5) || (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5) && (player->GetLevel() <= IP_LEVEL_TBC)))
        {
            damage *= (sIndividualProgression->tbcPowerAdjustment - gearAdjustment);
        }
        else
        {
            damage *= 1.0f - gearAdjustment;
        }
    }

    void ModifyPeriodicDamageAurasTick(Unit* /*target*/, Unit* attacker, uint32& damage, SpellInfo const* spellInfo) override
    {
        if (!sIndividualProgression->enabled || !attacker)
            return;

        // Do not apply reductions to healing auras - these are already modified in the ModifyHeal hook
        for (uint8 j = 0; j < MAX_SPELL_EFFECTS; ++j)
        {
            if (spellInfo->Effects[j].Effect == SPELL_EFFECT_APPLY_AURA && spellInfo->Effects[j].ApplyAuraName == SPELL_AURA_PERIODIC_HEAL)
            {
                return;
            }
        }

        bool isPet = attacker->GetOwner() && attacker->GetOwner()->GetTypeId() == TYPEID_PLAYER;
        if (!isPet && attacker->GetTypeId() != TYPEID_PLAYER)
        {
            return;
        }
        Player* player = isPet ? attacker->GetOwner()->ToPlayer() : attacker->ToPlayer();
        float gearAdjustment = computeTotalGearTuning(player);
        if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC) || (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC) && (player->GetLevel() <= IP_LEVEL_VANILLA)))
        {
            damage *= (sIndividualProgression->ComputeVanillaAdjustment(player->GetLevel(), sIndividualProgression->vanillaPowerAdjustment) - gearAdjustment);
        }
        else if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5) || (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5) && (player->GetLevel() <= IP_LEVEL_TBC)))
        {
            damage *= (sIndividualProgression->tbcPowerAdjustment - gearAdjustment);
        }
        else
        {
            damage *= 1.0f - gearAdjustment;
        }
    }

};

void AddSC_mod_individual_progression_player()
{
    new IndividualPlayerProgression();
    new IndividualPlayerProgression_PetScript();
    new IndividualPlayerProgression_AccountScript();
    new IndividualPlayerProgression_UnitScript();
}
