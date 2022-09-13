/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "IndividualProgression.h"

static float vanillaPowerAdjustment, vanillaHealthAdjustment, tbcPowerAdjustment, tbcHealthAdjustment, vanillaHealingAdjustment, tbcHealingAdjustment, previousGearTuning;
static bool enabled, questXpFix, hunterPetLevelFix, requirePreAQQuests, enforceGroupRules, fishingFix, simpleConfigOverride;
static int progressionLimit;
static questXpMapType questXpMap;

class gobject_ipp_wotlk : public GameObjectScript
{
public:
    gobject_ipp_wotlk() : GameObjectScript("gobject_ipp_wotlk") { }

    struct gobject_ipp_wotlkAI: GameObjectAI
    {
        gobject_ipp_wotlkAI(GameObject* object) : GameObjectAI(object) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster() || !enabled)
            {
                return true;
            }
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            return target->GetPlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE).value >= PROGRESSION_TBC_TIER_5;
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ipp_wotlkAI(object);
    }
};

class gobject_ipp_tbc : public GameObjectScript
{
public:
    gobject_ipp_tbc() : GameObjectScript("gobject_ipp_tbc") { }

    struct gobject_ipp_tbcAI: GameObjectAI
    {
        gobject_ipp_tbcAI(GameObject* object) : GameObjectAI(object) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster() || !enabled)
            {
                return true;
            }
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            return target->GetPlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE).value >= PROGRESSION_NAXX40;
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ipp_tbcAI(object);
    }
};

class npc_ipp_tbc : public CreatureScript
{
public:
    npc_ipp_tbc() : CreatureScript("npc_ipp_tbc") { }

    struct npc_ipp_tbcAI: ScriptedAI
    {
        npc_ipp_tbcAI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster() || !enabled)
            {
                return true;
            }
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            return target->GetPlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE).value >= PROGRESSION_NAXX40;
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_tbcAI(creature);
    }
};

class npc_ipp_wotlk : public CreatureScript
{
public:
    npc_ipp_wotlk() : CreatureScript("npc_ipp_wotlk") { }

    struct npc_ipp_wotlkAI: ScriptedAI
    {
        npc_ipp_wotlkAI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster() || !enabled)
            {
                return true;
            }
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            return target->GetPlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE).value >= PROGRESSION_TBC_TIER_5;
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_wotlkAI(creature);
    }
};

class npc_ipp_aq : public CreatureScript
{
public:
    npc_ipp_aq() : CreatureScript("npc_ipp_aq") { }

    struct npc_ipp_aqAI: ScriptedAI
    {
        npc_ipp_aqAI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster() || !enabled)
            {
                return true;
            }
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            return target->GetPlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE).value >= PROGRESSION_BLACKWING_LAIR;
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_aqAI(creature);
    }
};

class npc_ipp_naxx40 : public CreatureScript
{
public:
    npc_ipp_naxx40() : CreatureScript("npc_ipp_naxx40") { }

    struct npc_ipp_naxx40AI: ScriptedAI
    {
        npc_ipp_naxx40AI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster() || !enabled)
            {
                return true;
            }
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            return target->GetPlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE).value >= PROGRESSION_AQ;
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_naxx40AI(creature);
    }
};


class IndividualPlayerProgression_WorldScript : public WorldScript
{
private:
    void LoadConfig()
    {
        enabled = sConfigMgr->GetOption<bool>("IndividualProgression.Enable", true);
        vanillaPowerAdjustment = sConfigMgr->GetOption<float>("IndividualProgression.VanillaPowerAdjustment", 1);
        vanillaHealingAdjustment = sConfigMgr->GetOption<float>("IndividualProgression.VanillaHealingAdjustment", 1);
        vanillaHealthAdjustment = sConfigMgr->GetOption<float>("IndividualProgression.VanillaHealthAdjustment", 1);
        tbcPowerAdjustment = sConfigMgr->GetOption<float>("IndividualProgression.TBCPowerAdjustment", 1);
        tbcHealingAdjustment = sConfigMgr->GetOption<float>("IndividualProgression.TBCHealingAdjustment", 1);
        tbcHealthAdjustment = sConfigMgr->GetOption<float>("IndividualProgression.TBCHealthAdjustment", 1);
        questXpFix = sConfigMgr->GetOption<bool>("IndividualProgression.QuestXPFix", true);
        hunterPetLevelFix = sConfigMgr->GetOption<bool>("IndividualProgression.HunterPetLevelFix", true);
        requirePreAQQuests = sConfigMgr->GetOption<bool>("IndividualProgression.RequirePreAQQuests", true);
        enforceGroupRules = sConfigMgr->GetOption<bool>("IndividualProgression.EnforceGroupRules", true);
        fishingFix = sConfigMgr->GetOption<bool>("IndividualProgression.FishingFix", true);
        simpleConfigOverride = sConfigMgr->GetOption<bool>("IndividualProgression.SimpleConfigOverride", true);
        previousGearTuning = sConfigMgr->GetOption<float>("IndividualProgression.PreviousGearTuning", 0.03);
        progressionLimit = sConfigMgr->GetOption<uint8>("IndividualProgression.ProgressionLimit", 0);
    }

    void LoadXpValues()
    {
        if (enabled && questXpFix)
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
                    questXpMap.insert({questId, xpValue});
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
        if (simpleConfigOverride)
        {
            sWorld->setIntConfig(CONFIG_WATER_BREATH_TIMER, 60000);
//            sWorld->setBoolConfig(CONFIG_OBJECT_QUEST_MARKERS, false); Waiting for PR merge: https://github.com/azerothcore/azerothcore-wotlk/pull/13013
//            sWorld->setBoolConfig(CONFIG_OBJECT_SPARKLES, false); Waiting for PR merge: https://github.com/azerothcore/azerothcore-wotlk/pull/13005
        }
    }
};

class IndividualPlayerProgression_PetScript : public PetScript
{
private:
    bool hasPassedProgression(Player* player, ProgressionState state)
    {
        if (progressionLimit && state >= progressionLimit)
            return false;
        return player->GetPlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE).value >= state;
    }

    void CheckAdjustments(Pet* pet)
    {
        if (!enabled)
        {
            return;
        }
        if (!pet || !pet->GetOwner())
        {
            return;
        }
        if (!hasPassedProgression(pet->GetOwner(), PROGRESSION_NAXX40))
        {
            AdjustVanillaStats(pet);
        }
        else if (!hasPassedProgression(pet->GetOwner(), PROGRESSION_TBC_TIER_5))
        {
            AdjustTBCStats(pet);
        }

    }

    void AdjustVanillaStats(Pet* pet)
    {
        float adjustmentValue = -100.0 * (1.0 - vanillaPowerAdjustment);
        float adjustmentApplyPercent = (pet->getLevel() - 10.0) / 50.0;
        float computedAdjustment = pet->getLevel() > 10 ? (adjustmentValue * adjustmentApplyPercent) : 0;
        float hpAdjustmentValue = -100.0 * (1.0 - vanillaHealthAdjustment);
        float hpAdjustment = pet->getLevel() > 10 ? (hpAdjustmentValue * adjustmentApplyPercent) : 0;
        AdjustStats(pet, computedAdjustment, hpAdjustment);
    }

    void AdjustTBCStats(Pet* pet)
    {
        float adjustmentValue = -100.0 * (1.0 - tbcPowerAdjustment);
        float adjustmentApplyPercent = 1;
        float computedAdjustment = pet->getLevel() > 10 ? (adjustmentValue * adjustmentApplyPercent) : 0;
        float hpAdjustmentValue = -100.0 * (1.0 - tbcHealthAdjustment);
        float hpAdjustment = pet->getLevel() > 10 ? (hpAdjustmentValue * adjustmentApplyPercent) : 0;
        AdjustStats(pet, computedAdjustment, hpAdjustment);
    }

    void AdjustStats(Pet* pet, float computedAdjustment, float hpAdjustment)
    {
        int32 bp0 = 0; // This would be the damage taken adjustment value, but we are already adjusting health
        int32 bp1 = static_cast<int32>(computedAdjustment);
        int32 bp2 = static_cast<int32>(hpAdjustment);

        pet->RemoveAura(DAMAGE_DONE_TAKEN_SPELL);
        pet->CastCustomSpell(pet, DAMAGE_DONE_TAKEN_SPELL, &bp0, &bp1, nullptr, false);

        pet->RemoveAura(ABSORB_SPELL);
        pet->CastCustomSpell(pet, ABSORB_SPELL, &bp1, nullptr, nullptr, false);

        pet->RemoveAura(HEALING_DONE_SPELL);
        pet->CastCustomSpell(pet, HEALING_DONE_SPELL, &bp1, nullptr, nullptr, false);

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
// Add player scripts
class IndividualPlayerProgression : public PlayerScript
{
private:
    static bool hasPassedProgression(Player* player, ProgressionState state)
    {
        if (progressionLimit && state >= progressionLimit)
            return false;
        return player->GetPlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE).value >= state;
    }
    static void UpdateProgressionState(Player* player, ProgressionState newState)
    {
        if (progressionLimit && newState >= progressionLimit)
            return;
        uint8 currentState = player->GetPlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE).value;
        if (newState > currentState)
        {
            player->UpdatePlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE, newState);
        }
    }

    void CheckAdjustments(Player* player)
    {
        if (!enabled)
        {
            return;
        }
        if (!hasPassedProgression(player, PROGRESSION_NAXX40))
        {
            AdjustVanillaStats(player);
        }
        else if (!hasPassedProgression(player, PROGRESSION_TBC_TIER_5))
        {
            AdjustTBCStats(player);
        }
        else
        {
            AdjustWotLKStats(player);
        }
        if (player->getClass() == CLASS_HUNTER)
        {
            // Remove the 15% built-in ranged haste that was added to hunters in WotLK
            // This lets us add haste spells back to quivers
            player->RemoveAura(RANGED_HASTE_SPELL);
            player->CastSpell(player, RANGED_HASTE_SPELL, false);
        }

    }

    void ApplyGearStatsTuning(Player* player, float& computedAdjustment, ItemTemplate const* item)
    {
        if (item->Quality != ITEM_QUALITY_EPIC) // Non-endgame gear is okay
            return;
        if ((hasPassedProgression(player, PROGRESSION_NAXX40) && item->RequiredLevel <= 60) ||
            hasPassedProgression(player, PROGRESSION_TBC_TIER_5) && item->RequiredLevel <=70)
        {
            computedAdjustment -= (100.0 * previousGearTuning);
        }
    }

    void ApplyGearHealthTuning(Player* player, float& computedAdjustment, ItemTemplate const* item)
    {
        if (item->Quality != ITEM_QUALITY_EPIC) // Non-endgame gear is okay
            return;
        if ((hasPassedProgression(player, PROGRESSION_NAXX40) && item->RequiredLevel <= 60) ||
            hasPassedProgression(player, PROGRESSION_TBC_TIER_5) && item->RequiredLevel <=70)
        {
            computedAdjustment += previousGearTuning;
        }
    }

    void AdjustVanillaStats(Player* player)
    {
        float adjustmentValue = -100.0 * (1.0 - vanillaPowerAdjustment);
        float adjustmentApplyPercent = (player->getLevel() - 10.0) / 50.0;
        float computedAdjustment = player->getLevel() > 10 ? (adjustmentValue * adjustmentApplyPercent) : 0;
        AdjustStats(player, computedAdjustment);
    }

    void AdjustTBCStats(Player* player)
    {
        float adjustmentValue = -100.0 * (1.0 - tbcPowerAdjustment);
        float adjustmentApplyPercent = 1;
        float computedAdjustment = player->getLevel() > 10 ? (adjustmentValue * adjustmentApplyPercent) : 0;
        for (uint8 i = EQUIPMENT_SLOT_START; i < EQUIPMENT_SLOT_END; ++i)
        {
            if (Item* item = player->GetItemByPos(INVENTORY_SLOT_BAG_0, i))
                ApplyGearStatsTuning(player, computedAdjustment, item->GetTemplate());
        }
        AdjustStats(player, computedAdjustment);
    }

    void AdjustWotLKStats(Player* player)
    {
        float computedAdjustment = 0;
        for (uint8 i = EQUIPMENT_SLOT_START; i < EQUIPMENT_SLOT_END; ++i)
        {
            if (Item* item = player->GetItemByPos(INVENTORY_SLOT_BAG_0, i))
                ApplyGearStatsTuning(player, computedAdjustment, item->GetTemplate());
        }
        AdjustStats(player, computedAdjustment);
    }

    void AdjustStats(Player* player, float computedAdjustment)
    {
        int32 bp0 = 0; // This would be the damage taken adjustment value, but we are already adjusting health
        int32 bp1 = static_cast<int32>(computedAdjustment);

        player->RemoveAura(DAMAGE_DONE_TAKEN_SPELL);
        player->CastCustomSpell(player, DAMAGE_DONE_TAKEN_SPELL, &bp0, &bp1, nullptr, false);

        player->RemoveAura(ABSORB_SPELL);
        player->CastCustomSpell(player, ABSORB_SPELL, &bp1, nullptr, nullptr, false);

        player->RemoveAura(HEALING_DONE_SPELL);
        player->CastCustomSpell(player, HEALING_DONE_SPELL, &bp1, nullptr, nullptr, false);
    }


public:
    IndividualPlayerProgression() : PlayerScript("IndividualProgression") { }

    void OnLogin(Player* player) override
    {
        CheckAdjustments(player);
    }

    void OnMapChanged(Player* player) override
    {
        CheckAdjustments(player);
    }

    void OnLevelChanged(Player* player, uint8 /*oldLevel*/) override
    {
        CheckAdjustments(player);
    }

    void OnEquip(Player* player, Item* /*it*/, uint8 /*bag*/, uint8 /*slot*/, bool /*update*/) override
    {
        CheckAdjustments(player);
    }

    void OnPlayerResurrect(Player* player, float /*restore_percent*/, bool /*applySickness*/) override
    {
        CheckAdjustments(player);
    }

    void OnAfterUpdateMaxHealth(Player* player, float& value) override
    {
        // TODO: This should be adjust to use an aura like damage adjustment. This is more robust to update when changing equipment, etc.
        if (!enabled)
        {
            return;
        }
        float gearAdjustment = 0.0;
        for (uint8 i = EQUIPMENT_SLOT_START; i < EQUIPMENT_SLOT_END; ++i)
        {
            if (Item* item = player->GetItemByPos(INVENTORY_SLOT_BAG_0, i))
                ApplyGearHealthTuning(player, gearAdjustment, item->GetTemplate());
        }
        // Player is still in Vanilla content - give Vanilla health adjustment
        if (!hasPassedProgression(player, PROGRESSION_NAXX40))
        {
            float adjustmentAmount = 1.0 - vanillaHealthAdjustment;
            float applyPercent = ((player->getLevel() - 10.0) / 50.0);
            float computedAdjustment = player->getLevel() > 10 ? 1.0 - applyPercent * adjustmentAmount : 1.0;
            value *= computedAdjustment;
        }
            // Player is in TBC content - give TBC health adjustment
        else if (!hasPassedProgression(player, PROGRESSION_TBC_TIER_5))
        {
            value *= (tbcHealthAdjustment - gearAdjustment);
        }
            // Player is in WotLK content - only need to check gear adjustment
        else
        {
            value *= 1 - gearAdjustment;
        }
    }

    void OnQuestComputeXP(Player* player, Quest const* quest, uint32& xpValue) override
    {
        if (!enabled || !questXpFix)
        {
            return;
        }
        if (questXpMap.count(quest->GetQuestId()))
        {
            uint32 vanillaXpValue = questXpMap[quest->GetQuestId()];
            if (player)
            {
                vanillaXpValue *= player->GetQuestRate();
            }
            // If XP was already reduced due to out-leveling the quest or other reasons, use the reduced value
            if (vanillaXpValue < xpValue)
            {
                // Otherwise, return the correct Vanilla/TBC Quest XP
                xpValue = vanillaXpValue;
            }
        }
    }

    void OnGiveXP(Player* player, uint32& amount, Unit* /*victim*/) override
    {
        if (!enabled)
        {
            return;
        }
        // Player is still in Vanilla content - do not give XP past level 60
        if (!hasPassedProgression(player, PROGRESSION_NAXX40) && player->getLevel() >= 60)
        {
            amount = 0;
        }
            // Player is in TBC content - do not give XP past level 70
        else if (!hasPassedProgression(player, PROGRESSION_TBC_TIER_5) && player->getLevel() >= 70)
        {
            amount = 0;
        }
    }

    bool OnBeforeTeleport(Player* player, uint32 mapid, float x, float y, float z, float /*orientation*/, uint32 /*options*/, Unit* /*target*/) override
    {
        if (!enabled || player->IsGameMaster())
        {
            return true;
        }
        if (mapid == MAP_ZUL_GURUB && !hasPassedProgression(player, PROGRESSION_BLACKWING_LAIR))
        {
            return false;
        }
        if (mapid == MAP_AQ_40 && !hasPassedProgression(player, PROGRESSION_PRE_AQ))
        {
            return false;
        }
        if (mapid == MAP_AQ_20 && !hasPassedProgression(player, PROGRESSION_PRE_AQ))
        {
            return false;
        }
        if (mapid == MAP_OUTLANDS)
        {
            Map const* map = sMapMgr->FindMap(mapid, 0);
            uint32 zoneId = map->GetZoneId(0, x, y, z);
            if (!hasPassedProgression(player, PROGRESSION_NAXX40))
            {
                // The player may be in the Azuremyst area which is on the outlands map - check the area ID
                return (zoneId == ZONE_AZUREMYST || zoneId == ZONE_BLOODMYST || zoneId == ZONE_GHOSTLANDS || zoneId == ZONE_EVERSONG || zoneId == ZONE_EXODAR || zoneId == ZONE_SILVERMOON);
            }
            if (!hasPassedProgression(player, PROGRESSION_TBC_TIER_4) && zoneId == ZONE_QUELDANAS)
            {
                return false;
            }
        }
        if (mapid == MAP_ZUL_AMAN && !hasPassedProgression(player, PROGRESSION_TBC_TIER_3))
        {
            return false;
        }
        if (mapid == MAP_NORTHREND && !hasPassedProgression(player, PROGRESSION_TBC_TIER_5))
        {
            return false;
        }
        if (mapid == MAP_ULDUAR && !hasPassedProgression(player, PROGRESSION_WOTLK_TIER_1))
        {
            return false;
        }
        if ((mapid == MAP_TRIAL_OF_THE_CHAMPION || mapid == MAP_TRIAL_OF_THE_CRUSADER) && !hasPassedProgression(player, PROGRESSION_WOTLK_TIER_2)){
            return false;
        }
        if ((mapid == MAP_ICC || mapid == MAP_FORGE_OF_SOULS) && !hasPassedProgression(player, PROGRESSION_WOTLK_TIER_3))
        {
            return false;
        }
        if (mapid == MAP_RUBY_SANTCUM && !hasPassedProgression(player, PROGRESSION_WOTLK_TIER_4))
        {
            return false;
        }
        return true;
    }

    void OnPlayerCompleteQuest(Player* player, Quest const* quest) override
    {
        if (!enabled)
        {
            return;
        }
        switch (quest->GetQuestId())
        {
            case MIGHT_OF_KALIMDOR:
                UpdateProgressionState(player, PROGRESSION_PRE_AQ);
                break;
        }
    }

    bool CanGroupInvite(Player* player, std::string& membername) override
     {
        if (!enabled || !enforceGroupRules)
        {
            return true;
        }
         Player* otherPlayer = ObjectAccessor::FindPlayerByName(membername, false);
         uint8 currentState = player->GetPlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE).value;
         uint8 otherPlayerState = otherPlayer->GetPlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE).value;
         return (currentState == otherPlayerState);
    }

   bool CanGroupAccept(Player* player, Group* group) override
   {
       if (!enabled || !enforceGroupRules)
       {
           return true;
       }
       Player* groupLeader = ObjectAccessor::FindPlayerByLowGUID(group->GetLeaderGUID().GetCounter());
       uint8 currentState = player->GetPlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE).value;
       uint8 otherPlayerState = groupLeader->GetPlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE).value;
       return (currentState == otherPlayerState);
   }



    void OnCreatureKill(Player* killer, Creature* killed) override
    {
        if (!enabled)
        {
            return;
        }

        switch (killed->GetEntry())
        {
            case RAGNAROS:
                UpdateProgressionState(killer, PROGRESSION_MOLTEN_CORE);
                break;
            case ONYXIA:
                UpdateProgressionState(killer, PROGRESSION_ONYXIA);
                break;
            case NEFARIAN:
                if (requirePreAQQuests)
                {
                    UpdateProgressionState(killer, PROGRESSION_BLACKWING_LAIR);
                }
                else
                {
                    UpdateProgressionState(killer, PROGRESSION_PRE_AQ);
                }
                break;
            case CTHUN:
//                UpdateProgressionState(killer, PROGRESSION_AQ);
                // NOTE: Because NAXX40 is not currently implemented, defeating C'Thun ends Vanilla content
                UpdateProgressionState(killer, PROGRESSION_NAXX40);
                break;
            case KELTHUZAD_40:
                UpdateProgressionState(killer, PROGRESSION_NAXX40);
                break;
            case MALCHEZAAR:
                UpdateProgressionState(killer, PROGRESSION_TBC_TIER_1);
                break;
            case KAELTHAS:
                UpdateProgressionState(killer, PROGRESSION_TBC_TIER_2);
                break;
            case ILLIDAN:
                UpdateProgressionState(killer, PROGRESSION_TBC_TIER_3);
                break;
            case ZULJIN:
                UpdateProgressionState(killer, PROGRESSION_TBC_TIER_4);
                break;
            case KILJAEDEN:
                UpdateProgressionState(killer, PROGRESSION_TBC_TIER_5);
                break;
            case KELTHUZAD:
                UpdateProgressionState(killer, PROGRESSION_WOTLK_TIER_1);
                break;
            case YOGGSARON:
                UpdateProgressionState(killer, PROGRESSION_WOTLK_TIER_2);
                break;
            case ANUBARAK:
                UpdateProgressionState(killer, PROGRESSION_WOTLK_TIER_3);
                break;
            case LICH_KING:
                UpdateProgressionState(killer, PROGRESSION_WOTLK_TIER_4);
                break;
            case HALION:
                UpdateProgressionState(killer, PROGRESSION_WOTLK_TIER_5);
                break;
        }
    }

    // Once this PR is merged, this will be required: https://github.com/azerothcore/azerothcore-wotlk/pull/12996
    // Currently, due to AC bug, the "enabled" behavior is actually the current behavior anyway
//    bool OnUpdateFishingSkill(Player* player, int32 /*skill*/, int32 /*zone_skill*/, int32 chance, int32 roll) override
//    {
//        if (!enabled || !fishingFix)
//            return true;
//        if (chance < roll)
//            return false;
//        return true;
//    }
};

// Add all scripts in one
void AddSC_mod_individual_progression()
{
    new IndividualPlayerProgression();
    new IndividualPlayerProgression_WorldScript();
    new IndividualPlayerProgression_PetScript();
    new npc_ipp_aq();
    new npc_ipp_naxx40();
    new npc_ipp_tbc();
    new npc_ipp_wotlk();
    new gobject_ipp_tbc();
//    new gobject_ipp_wotlk(); // Not used yet
}
