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
        if (!sIndividualProgression->enabled)
        {
            return;
        }

        if (!sIndividualProgression->isExcludedFromProgression(player))
        {
            if (player->getClass() == CLASS_DEATH_KNIGHT && sIndividualProgression->deathKnightStartingProgression && !sIndividualProgression->hasPassedProgression(player, static_cast<ProgressionState>(sIndividualProgression->deathKnightStartingProgression)))
            {
                sIndividualProgression->UpdateProgressionState(player, static_cast<ProgressionState>(sIndividualProgression->deathKnightStartingProgression));
            }
            if (sIndividualProgression->startingProgression && !sIndividualProgression->hasPassedProgression(player, static_cast<ProgressionState>(sIndividualProgression->startingProgression)))
            {
                sIndividualProgression->UpdateProgressionState(player, static_cast<ProgressionState>(sIndividualProgression->startingProgression));
            }

            sIndividualProgression->checkIPProgression(player);
            sIndividualProgression->UpdateProgressionQuests(player);
        }

        if (sIndividualProgression->ExcludedAccountsEarnPvPTitles || !sIndividualProgression->isExcludedFromProgression(player))
        {
            sIndividualProgression->AwardEarnedVanillaPvpTitles(player);
            sIndividualProgression->CleanUpVanillaPvpTitles(player);
        }

		if (sIndividualProgression->isExcludedFromProgression(player))
        {
            sIndividualProgression->UpdateProgressionState(player, static_cast<ProgressionState>(0));
        }

        sIndividualProgression->CheckAdjustments(player);

        if (sIndividualProgression->enabled)
        {
            ChatHandler(player->GetSession()).SendSysMessage("|cff00ff00Individual Progression: |cffccccccenabled|r");
        }
    }

    void OnPlayerSetMaxLevel(Player* player, uint32& maxPlayerLevel) override
    {
        if (!sIndividualProgression->enabled || sIndividualProgression->isExcludedFromProgression(player))
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

    void OnPlayerQuestComputeXP(Player* player, Quest const* quest, uint32& xpValue) override
    {
        if (!sIndividualProgression->enabled || !sIndividualProgression->questXpFix || sIndividualProgression->isExcludedFromProgression(player))
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
        if (!sIndividualProgression->enabled || sIndividualProgression->isExcludedFromProgression(player))
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
        if (!sIndividualProgression->enabled || player->IsGameMaster() || sIndividualProgression->isExcludedFromProgression(player))
        {
            return true;
        }
        if (mapid == MAP_BLACKWING_LAIR && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_MOLTEN_CORE))
        {
            ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", PROGRESSION_MOLTEN_CORE);
            return false;
        }
        if (mapid == MAP_ONYXIAS_LAIR) // needed to prevent summoning invalid characters from inside the instance
        {
			if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5) && !player->HasItemCount(ITEM_DRAKEFIRE_AMULET)) // Vanilla
            {
                return false;
            }
			else if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5) && player->GetLevel() != IP_LEVEL_WOTLK) // WotLK
            {
                return false;
            }
        }
        if (mapid == MAP_ZUL_GURUB)
        {
            ProgressionState REQUIRED_ZG_PROGRESSION = static_cast<ProgressionState>(sIndividualProgression->RequiredZulGurubProgression);

            if (!sIndividualProgression->hasPassedProgression(player, REQUIRED_ZG_PROGRESSION))
            {
                ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", REQUIRED_ZG_PROGRESSION);
                return false;
            }
        }
        if (mapid == MAP_AHN_QIRAJ_TEMPLE && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_AQ))
        {
            ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", PROGRESSION_PRE_AQ);
            return false;
        }
        if (mapid == MAP_RUINS_OF_AHN_QIRAJ && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_AQ))
        {
            ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", PROGRESSION_PRE_AQ);
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
                ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", PROGRESSION_TBC_TIER_4);
                return false;
            }
        }
        if (mapid == MAP_ZUL_AMAN && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_3))
        {
            ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", PROGRESSION_TBC_TIER_3);
            return false;
        }
        if (mapid == MAP_NORTHREND && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5))
        {
            ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", PROGRESSION_TBC_TIER_5);
            return false;
        }
        if (mapid == MAP_ULDUAR && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_WOTLK_TIER_1))
        {
            ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", PROGRESSION_WOTLK_TIER_1);
            return false;
        }
        if ((mapid == MAP_TRIAL_OF_THE_CHAMPION || mapid == MAP_TRIAL_OF_THE_CRUSADER) && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_WOTLK_TIER_2))
        {
            ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", PROGRESSION_WOTLK_TIER_2);
            return false;
        }
        // This will also restrict other Frozen Halls dungeons, because Forge of Souls must be completed first to access them
        if ((mapid == MAP_ICECROWN_CITADEL || mapid == MAP_THE_FORGE_OF_SOULS) && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_WOTLK_TIER_3))
        {
            ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", PROGRESSION_WOTLK_TIER_3);
            return false;
        }
        if (mapid == MAP_THE_RUBY_SANCTUM && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_WOTLK_TIER_4))
        {
            ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", PROGRESSION_WOTLK_TIER_4);
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
            if (instanceTemplate->Parent == MAP_NORTHREND && mapid == MAP_NAXXRAMAS && player->GetLevel() <= IP_LEVEL_TBC && (!isAttuned(player) ||  sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5) ))
            {
                return false;
            }
        }
        return true;
    }

    void OnPlayerCompleteQuest(Player* player, Quest const* quest) override
    {
        if (!sIndividualProgression->enabled || sIndividualProgression->isExcludedFromProgression(player))
        {
            return;
        }
        switch (quest->GetQuestId())
        {
            case BANG_A_GONG:
                if (!sIndividualProgression->disableDefaultProgression)
                {
                    sIndividualProgression->UpdateProgressionState(player, PROGRESSION_PRE_AQ);
                    sIndividualProgression->UpdateProgressionQuests(player);
                }
                break;
            case SIMPLY_BANG_A_GONG:
                if (!sIndividualProgression->disableDefaultProgression)
                {
                    sIndividualProgression->UpdateProgressionState(player, PROGRESSION_PRE_AQ);
                    sIndividualProgression->UpdateProgressionQuests(player);
                }
                break;
            case CHAOS_AND_DESTRUCTION:
                if (!sIndividualProgression->disableDefaultProgression)
                {
                    sIndividualProgression->UpdateProgressionState(player, PROGRESSION_AQ_WAR);
                    sIndividualProgression->UpdateProgressionQuests(player);
                }
                break;
            case INTO_THE_BREACH:
                if (!sIndividualProgression->disableDefaultProgression)
                {
                    sIndividualProgression->UpdateProgressionState(player, PROGRESSION_PRE_TBC);
                    sIndividualProgression->UpdateProgressionQuests(player);
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
        Player* otherPlayer = ObjectAccessor::FindPlayerByName(membername, false);
        uint8 currentState = player->GetPlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE).value;
        uint8 otherPlayerState = otherPlayer->GetPlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE).value;

        if (!sIndividualProgression->enabled)
        {
            return true;
        }

        if (sIndividualProgression->enforceGroupRules) // enforceGroupRules enabled
        {
            if (!sIndividualProgression->isExcludedFromProgression(player)) // player has a normal account
            {
                if (sIndividualProgression->isExcludedFromProgression(otherPlayer)) // RNDbot
                {
                    if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC)) // player is in vanilla
                    {
                        if (otherPlayer->GetLevel() <= IP_LEVEL_VANILLA)
                        {
                            return true;
                        }
                        else
                        {
                            ChatHandler(player->GetSession()).SendSysMessage("|cff00ff00Enforce Group Rules is enabled: |cffccccccthis player's level is too high.|r");
                            return false;
                        }
                    }
                    else if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5)) // player is in TBC
                    {
                        if ((otherPlayer->GetLevel() > IP_LEVEL_VANILLA) && (otherPlayer->GetLevel() <= IP_LEVEL_TBC))
                        {
                            return true;
                        }
                        else
                        {
                            ChatHandler(player->GetSession()).SendSysMessage("|cff00ff00Enforce Group Rules is enabled: |cffccccccthis player's level is too low or too high.|r");
                            return false;
                        }
                    }
                    else // player is in WotLK
                    {
                        if (otherPlayer->GetLevel() > IP_LEVEL_TBC)
                        {
                            return true;
                        }
                        else
                        {
                            ChatHandler(player->GetSession()).SendSysMessage("|cff00ff00Enforce Group Rules is enabled: |cffccccccthis player's level is too low.|r");
                            return false;
                        }
                    }
                }
                else // player or ALTbot
                {
                    return (currentState == otherPlayerState);
                }
            }
            else // player has an excluded account
            {
                if (sIndividualProgression->isExcludedFromProgression(otherPlayer)) // RNDbot
                {
                    if (player->GetLevel() <= IP_LEVEL_VANILLA) // player is in vanilla
                    {
                        if (otherPlayer->GetLevel() <= IP_LEVEL_VANILLA)
                        {
                            return true;
                        }
                        else
                        {
                            ChatHandler(player->GetSession()).SendSysMessage("|cff00ff00Enforce Group Rules is enabled: |cffccccccthis player's level is too high.|r");
                            return false;
                        }
                    }
                    else if (player->GetLevel() <= IP_LEVEL_TBC) // player is in TBC
                    {
                        if ((otherPlayer->GetLevel() > IP_LEVEL_VANILLA) && (otherPlayer->GetLevel() <= IP_LEVEL_TBC))
                        {
                            return true;
                        }
                        else
                        {
                            ChatHandler(player->GetSession()).SendSysMessage("|cff00ff00Enforce Group Rules is enabled: |cffccccccthis player's level is too low or too high.|r");
                            return false;
                        }
                    }
                    else // player is in WotLK
                    {
                        if (otherPlayer->GetLevel() > IP_LEVEL_TBC)
                        {
                            return true;
                        }
                        else
                        {
                            ChatHandler(player->GetSession()).SendSysMessage("|cff00ff00Enforce Group Rules is enabled: |cffccccccthis player's level is too low.|r");
                            return false;
                        }
                    }
                }
                else // player or ALTbot
                {
                    ChatHandler(player->GetSession()).SendSysMessage("|cff00ff00Enforce Group Rules is enabled: |cffccccccthis player does not have an excluded account.|r");
                    return false;
                }
            }
        }
        else // enforceGroupRules not enabled
        {
            return true;
        }
    }


    bool OnPlayerCanGroupAccept(Player* player, Group* group) override
    {
        Player* groupLeader = ObjectAccessor::FindPlayerByLowGUID(group->GetLeaderGUID().GetCounter());
        uint8 currentState = player->GetPlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE).value;
        uint8 otherPlayerState = groupLeader->GetPlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE).value;

        if (sIndividualProgression->isExcludedFromProgression(player))
        {
            if (currentState != otherPlayerState)
            {
                sIndividualProgression->UpdateProgressionState(player, static_cast<ProgressionState>(otherPlayerState));
            }
            return true;
        }

        if (!sIndividualProgression->enabled || !sIndividualProgression->enforceGroupRules)
        {
            return true;
        }
        
        return (currentState == otherPlayerState);
    }

    void OnPlayerCreatureKill(Player* killer, Creature* killed) override
    {
        switch (killed->GetEntry())
        {
            case RHAHK_ZOR:
                killer->RemoveAura(IPP_PHASE);
                killer->RemoveAura(IPP_PHASE_II);
                killer->RemoveAura(IPP_PHASE_III);
                killer->CastSpell(killer, IPP_PHASE, false);
                break;
            case SNEED:
                killer->RemoveAura(IPP_PHASE);
                killer->RemoveAura(IPP_PHASE_II);
                killer->RemoveAura(IPP_PHASE_III);
	            killer->CastSpell(killer, IPP_PHASE, false);
                killer->CastSpell(killer, IPP_PHASE_II, false);
                break;
            case GILNID:
                killer->RemoveAura(IPP_PHASE);
                killer->RemoveAura(IPP_PHASE_II);
                killer->RemoveAura(IPP_PHASE_III);
	            killer->CastSpell(killer, IPP_PHASE, false);
                killer->CastSpell(killer, IPP_PHASE_II, false);
                killer->CastSpell(killer, IPP_PHASE_III, false);
                break;
        }

        if (killed->GetCreatureTemplate()->rank > CREATURE_ELITE_NORMAL)
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
    }

    bool OnPlayerUpdateFishingSkill(Player* player, int32 /*skill*/, int32 /*zone_skill*/, int32 chance, int32 roll) override
    {
        if (!sIndividualProgression->enabled || !sIndividualProgression->fishingFix || sIndividualProgression->isExcludedFromProgression(player))
            return true;
        if (chance < roll)
            return false;
        return true;
    }

    void OnPlayerUpdateArea(Player* player, uint32 /*oldArea*/, uint32 newArea) override
    {
        sIndividualProgression->checkIPPhasing(player, newArea);
    }

};

class IndividualPlayerProgression_AccountScript: public AccountScript
{
public:
    IndividualPlayerProgression_AccountScript() : AccountScript("IndividualProgression_AccountScript") { }

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

        if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC) || (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC) && (player->GetLevel() <= IP_LEVEL_VANILLA)))
        {
            heal *= sIndividualProgression->ComputeVanillaAdjustment(player->GetLevel(), sIndividualProgression->vanillaHealingAdjustment);
        }
        else if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5) || (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5) && (player->GetLevel() <= IP_LEVEL_TBC)))
        {
            heal *= sIndividualProgression->tbcHealingAdjustment;
        }
        else
        {
            return;
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

        if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC) || (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC) && (player->GetLevel() <= IP_LEVEL_VANILLA)))
        {
            damage *= sIndividualProgression->ComputeVanillaAdjustment(player->GetLevel(), sIndividualProgression->vanillaPowerAdjustment);
        }
        else if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5) || (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5) && (player->GetLevel() <= IP_LEVEL_TBC)))
        {
            damage *= sIndividualProgression->tbcPowerAdjustment;
        }
        else
        {
            return;
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

        if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC) || (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC) && (player->GetLevel() <= IP_LEVEL_VANILLA)))
        {
            damage *= sIndividualProgression->ComputeVanillaAdjustment(player->GetLevel(), sIndividualProgression->vanillaPowerAdjustment);
        }
        else if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5) || (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5) && (player->GetLevel() <= IP_LEVEL_TBC)))
        {
            damage *= sIndividualProgression->tbcPowerAdjustment;
        }
        else
        {
            return;
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

        if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC) || (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC) && (player->GetLevel() <= IP_LEVEL_VANILLA)))
        {
            damage *= sIndividualProgression->ComputeVanillaAdjustment(player->GetLevel(), sIndividualProgression->vanillaPowerAdjustment);
        }
        else if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5) || (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5) && (player->GetLevel() <= IP_LEVEL_TBC)))
        {
            damage *= sIndividualProgression->tbcPowerAdjustment;
        }
        else
        {
            return;
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
