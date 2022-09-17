/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "IndividualProgression.h"

IndividualProgression* IndividualProgression::instance()
{
    static IndividualProgression instance;
    return &instance;
}


bool IndividualProgression::hasPassedProgression(Player* player, ProgressionState state) const
{
    if (progressionLimit && state >= progressionLimit)
        return false;
    return player->GetPlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE).value >= state;
}

bool IndividualProgression::isBeforeProgression(Player* player, ProgressionState state)
{
    return player->GetPlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE).value < state;
}

void IndividualProgression::UpdateProgressionState(Player* player, ProgressionState newState) const
{
    if (progressionLimit && newState >= progressionLimit)
        return;
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
    if (player->getClass() == CLASS_DEATH_KNIGHT)
    {
        // Apply a custom aura to fix Rune Tap if healing rate is modified
        float computedHealingAdjustment;
        if (!hasPassedProgression(player, PROGRESSION_NAXX40))
        {
            float adjustmentAmount = 1.0f - vanillaHealingAdjustment;
            float applyPercent = ((player->getLevel() - 10.0f) / 50.0f);
            computedHealingAdjustment = player->getLevel() > 10 ? 1.0f - applyPercent * adjustmentAmount : 1.0f;
        }
            // Player is in TBC content - give TBC health adjustment
        else if (!hasPassedProgression(player, PROGRESSION_TBC_TIER_5))
        {
            computedHealingAdjustment = tbcHealingAdjustment;
        }
        else {
            computedHealingAdjustment = 1.0;
        }
        if (computedHealingAdjustment < 1.0)
        {
            auto bp0 = int(((1.0f/computedHealingAdjustment) * 100.0f) - 101.0f);
            int32 bp1 = 0; // Don't change the cooldown
            player->RemoveAura(RUNE_TAP_FIX_SPELL);
            player->CastCustomSpell(player, RUNE_TAP_FIX_SPELL, &bp0, &bp1, nullptr, false);
        }
    }

}

void IndividualProgression::ApplyGearStatsTuning(Player* player, float& computedAdjustment, ItemTemplate const* item) const
{
    if (item->Quality != ITEM_QUALITY_EPIC) // Non-endgame gear is okay
        return;
    if ((hasPassedProgression(player, PROGRESSION_NAXX40) && (item->RequiredLevel <= 60)) ||
        hasPassedProgression(player, PROGRESSION_TBC_TIER_5) && (item->RequiredLevel <=70))
    {
        computedAdjustment -= (100.0f * previousGearTuning);
    }
}

void IndividualProgression::ApplyGearHealthTuning(Player* player, float& computedAdjustment, ItemTemplate const* item) const
{
    if (item->Quality != ITEM_QUALITY_EPIC) // Non-endgame gear is okay
        return;
    if ((hasPassedProgression(player, PROGRESSION_NAXX40) && (item->RequiredLevel <= 60)) ||
        hasPassedProgression(player, PROGRESSION_TBC_TIER_5) && (item->RequiredLevel <=70))
    {
        computedAdjustment += previousGearTuning;
    }
}

void IndividualProgression::AdjustVanillaStats(Player* player) const
{
    float adjustmentValue = -100.0f * (1.0f - vanillaPowerAdjustment);
    float adjustmentApplyPercent = (player->getLevel() - 10.0f) / 50.0f;
    float computedAdjustment = player->getLevel() > 10 ? (adjustmentValue * adjustmentApplyPercent) : 0;

    float adjustmentHealingValue = -100.0f * (1.0f - vanillaHealingAdjustment);
    float adjustmentHealingApplyPercent = (player->getLevel() - 10.0f) / 50.0f;
    float computedHealingAdjustment = player->getLevel() > 10 ? (adjustmentHealingValue * adjustmentHealingApplyPercent) : 0;

    AdjustStats(player, computedAdjustment, computedHealingAdjustment);
}

void IndividualProgression::AdjustTBCStats(Player* player) const
{
    float adjustmentValue = -100.0f * (1.0f - tbcPowerAdjustment);
    float adjustmentApplyPercent = 1;
    float computedAdjustment = player->getLevel() > 10 ? (adjustmentValue * adjustmentApplyPercent) : 0;

    float adjustmentHealingValue = -100.0f * (1.0f - tbcHealingAdjustment);
    float adjustmentHealingApplyPercent = 1;
    float computedHealingAdjustment = player->getLevel() > 10 ? (adjustmentHealingValue * adjustmentHealingApplyPercent) : 0;

    for (uint8 i = EQUIPMENT_SLOT_START; i < EQUIPMENT_SLOT_END; ++i)
    {
        if (Item *item = player->GetItemByPos(INVENTORY_SLOT_BAG_0, i))
        {
            ApplyGearStatsTuning(player, computedAdjustment, item->GetTemplate());
            ApplyGearStatsTuning(player, computedHealingAdjustment, item->GetTemplate());
        }
    }
    AdjustStats(player, computedAdjustment, computedHealingAdjustment);
}

void IndividualProgression::AdjustWotLKStats(Player* player) const
{
    float computedAdjustment = 0;
    for (uint8 i = EQUIPMENT_SLOT_START; i < EQUIPMENT_SLOT_END; ++i)
    {
        if (Item* item = player->GetItemByPos(INVENTORY_SLOT_BAG_0, i))
            ApplyGearStatsTuning(player, computedAdjustment, item->GetTemplate());
    }
    AdjustStats(player, computedAdjustment, computedAdjustment);
}

void IndividualProgression::AdjustStats(Player* player, float computedAdjustment, float computedHealingAdjustment)
{
    int32 bp0 = 0; // This would be the damage taken adjustment value, but we are already adjusting health
    auto bp1 = static_cast<int32>(computedAdjustment);
    auto bp1Healing = static_cast<int32>(computedHealingAdjustment);

    player->RemoveAura(DAMAGE_DONE_TAKEN_SPELL);
    player->CastCustomSpell(player, DAMAGE_DONE_TAKEN_SPELL, &bp0, &bp1, nullptr, false);

    player->RemoveAura(ABSORB_SPELL);
    player->CastCustomSpell(player, ABSORB_SPELL, &bp1, nullptr, nullptr, false);

    player->RemoveAura(HEALING_DONE_SPELL);
    player->CastCustomSpell(player, HEALING_DONE_SPELL, &bp1Healing, nullptr, nullptr, false);
}

class gobject_ipp_wotlk : public GameObjectScript
{
public:
    gobject_ipp_wotlk() : GameObjectScript("gobject_ipp_wotlk") { }

    struct gobject_ipp_wotlkAI: GameObjectAI
    {
        explicit gobject_ipp_wotlkAI(GameObject* object) : GameObjectAI(object) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster() || !sIndividualProgression->enabled)
            {
                return true;
            }
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            return sIndividualProgression->hasPassedProgression(target, PROGRESSION_TBC_TIER_5);
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
        explicit gobject_ipp_tbcAI(GameObject* object) : GameObjectAI(object) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster() || !sIndividualProgression->enabled)
            {
                return true;
            }
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            return sIndividualProgression->hasPassedProgression(target, PROGRESSION_NAXX40);
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
        explicit npc_ipp_tbcAI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster() || !sIndividualProgression->enabled)
            {
                return true;
            }
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            return sIndividualProgression->hasPassedProgression(target, PROGRESSION_NAXX40);
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_tbcAI(creature);
    }
};

class npc_ipp_tbc_t4 : public CreatureScript
{
public:
    npc_ipp_tbc_t4() : CreatureScript("npc_ipp_tbc_t4") { }

    struct npc_ipp_tbc_t4AI: ScriptedAI
    {
        explicit npc_ipp_tbc_t4AI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster() || !sIndividualProgression->enabled)
            {
                return true;
            }
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            return sIndividualProgression->hasPassedProgression(target, PROGRESSION_TBC_TIER_3);
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_tbc_t4AI(creature);
    }
};

class npc_ipp_tbc_pre_t4 : public CreatureScript
{
public:
    npc_ipp_tbc_pre_t4() : CreatureScript("npc_ipp_tbc_pre_t4") { }

    struct npc_ipp_tbc_pre_t4AI: ScriptedAI
    {
        explicit npc_ipp_tbc_pre_t4AI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster() || !sIndividualProgression->enabled)
            {
                return true;
            }
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            return sIndividualProgression->isBeforeProgression(target,PROGRESSION_TBC_TIER_3);
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_tbc_pre_t4AI(creature);
    }
};

class npc_ipp_wotlk : public CreatureScript
{
public:
    npc_ipp_wotlk() : CreatureScript("npc_ipp_wotlk") { }

    struct npc_ipp_wotlkAI: ScriptedAI
    {
        explicit npc_ipp_wotlkAI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster() || !sIndividualProgression->enabled)
            {
                return true;
            }
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            return sIndividualProgression->hasPassedProgression(target, PROGRESSION_TBC_TIER_5);
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
        explicit npc_ipp_aqAI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster() || !sIndividualProgression->enabled)
            {
                return true;
            }
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            return sIndividualProgression->hasPassedProgression(target, PROGRESSION_BLACKWING_LAIR);
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
        explicit npc_ipp_naxx40AI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster() || !sIndividualProgression->enabled)
            {
                return true;
            }
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            return sIndividualProgression->hasPassedProgression(target, PROGRESSION_AQ);
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
    static void LoadConfig()
    {
        sIndividualProgression->enabled = sConfigMgr->GetOption<bool>("IndividualProgression.Enable", true);
        sIndividualProgression->vanillaPowerAdjustment = sConfigMgr->GetOption<float>("IndividualProgression.VanillaPowerAdjustment", 1);
        sIndividualProgression->vanillaHealingAdjustment = sConfigMgr->GetOption<float>("IndividualProgression.VanillaHealingAdjustment", 1);
        sIndividualProgression->vanillaHealthAdjustment = sConfigMgr->GetOption<float>("IndividualProgression.VanillaHealthAdjustment", 1);
        sIndividualProgression->tbcPowerAdjustment = sConfigMgr->GetOption<float>("IndividualProgression.TBCPowerAdjustment", 1);
        sIndividualProgression->tbcHealingAdjustment = sConfigMgr->GetOption<float>("IndividualProgression.TBCHealingAdjustment", 1);
        sIndividualProgression->tbcHealthAdjustment = sConfigMgr->GetOption<float>("IndividualProgression.TBCHealthAdjustment", 1);
        sIndividualProgression->questXpFix = sConfigMgr->GetOption<bool>("IndividualProgression.QuestXPFix", true);
        sIndividualProgression->hunterPetLevelFix = sConfigMgr->GetOption<bool>("IndividualProgression.HunterPetLevelFix", true);
        sIndividualProgression->requirePreAQQuests = sConfigMgr->GetOption<bool>("IndividualProgression.RequirePreAQQuests", true);
        sIndividualProgression->enforceGroupRules = sConfigMgr->GetOption<bool>("IndividualProgression.EnforceGroupRules", true);
        sIndividualProgression->fishingFix = sConfigMgr->GetOption<bool>("IndividualProgression.FishingFix", true);
        sIndividualProgression->simpleConfigOverride = sConfigMgr->GetOption<bool>("IndividualProgression.SimpleConfigOverride", true);
        sIndividualProgression->previousGearTuning = sConfigMgr->GetOption<float>("IndividualProgression.PreviousGearTuning", 0.03);
        sIndividualProgression->progressionLimit = sConfigMgr->GetOption<uint8>("IndividualProgression.ProgressionLimit", 0);
        sIndividualProgression->startingProgression = sConfigMgr->GetOption<uint8>("IndividualProgression.StartingProgression", 0);
        sIndividualProgression->questMoneyAtLevelCap = sConfigMgr->GetOption<bool>("IndividualProgression.QuestMoneyAtLevelCap", true);
        sIndividualProgression->repeatableVanillaQuestsXp = sConfigMgr->GetOption<bool>("IndividualProgression.RepeatableVanillaQuestsXP", true);
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
//            sWorld->setBoolConfig(CONFIG_OBJECT_QUEST_MARKERS, false); Waiting for PR merge: https://github.com/azerothcore/azerothcore-wotlk/pull/13013
            sWorld->setBoolConfig(CONFIG_OBJECT_SPARKLES, false);
            sWorld->setBoolConfig(CONFIG_PLAYER_SETTINGS_ENABLED, true);
        }
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
        if (!sIndividualProgression->hasPassedProgression(pet->GetOwner(), PROGRESSION_NAXX40))
        {
            AdjustVanillaStats(pet);
        }
        else if (!sIndividualProgression->hasPassedProgression(pet->GetOwner(), PROGRESSION_TBC_TIER_5))
        {
            AdjustTBCStats(pet);
        }

    }

    static void AdjustVanillaStats(Pet* pet)
    {
        float adjustmentValue = -100.0f * (1.0f - sIndividualProgression->vanillaPowerAdjustment);
        float adjustmentApplyPercent = (pet->getLevel() - 10.0f) / 50.0f;
        float computedAdjustment = pet->getLevel() > 10 ? (adjustmentValue * adjustmentApplyPercent) : 0;
        float hpAdjustmentValue = -100.0f * (1.0f - sIndividualProgression->vanillaHealthAdjustment);
        float hpAdjustment = pet->getLevel() > 10 ? (hpAdjustmentValue * adjustmentApplyPercent) : 0;
        AdjustStats(pet, computedAdjustment, hpAdjustment);
    }

    static void AdjustTBCStats(Pet* pet)
    {
        float adjustmentValue = -100.0f * (1.0f - sIndividualProgression->tbcPowerAdjustment);
        float adjustmentApplyPercent = 1;
        float computedAdjustment = pet->getLevel() > 10 ? (adjustmentValue * adjustmentApplyPercent) : 0;
        float hpAdjustmentValue = -100.0f * (1.0f - sIndividualProgression->tbcHealthAdjustment);
        float hpAdjustment = pet->getLevel() > 10 ? (hpAdjustmentValue * adjustmentApplyPercent) : 0;
        AdjustStats(pet, computedAdjustment, hpAdjustment);
    }

    static void AdjustStats(Pet* pet, float computedAdjustment, float hpAdjustment)
    {
        int32 bp0 = 0; // This would be the damage taken adjustment value, but we are already adjusting health
        auto bp1 = static_cast<int32>(computedAdjustment);
        auto bp2 = static_cast<int32>(hpAdjustment);

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
public:
    IndividualPlayerProgression() : PlayerScript("IndividualProgression") { }

    void OnLogin(Player* player) override
    {
        if (sIndividualProgression->startingProgression && !sIndividualProgression->hasPassedProgression(player, static_cast<ProgressionState>(sIndividualProgression->startingProgression)))
        {
            sIndividualProgression->UpdateProgressionState(player, static_cast<ProgressionState>(sIndividualProgression->startingProgression));
        }
        sIndividualProgression->CheckAdjustments(player);
    }

    // Waiting for PR: https://github.com/azerothcore/azerothcore-wotlk/pull/13046
//    void OnSetMaxLevel(Player* player, uint32& maxPlayerLevel) override
//    {
//        if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_NAXX40))
//        {
//            if (sWorld->getIntConfig(CONFIG_MAX_PLAYER_LEVEL) > 60)
//            {
//                maxPlayerLevel = 60;
//            }
//        }
//        else if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5))
//        {
//            if (sWorld->getIntConfig(CONFIG_MAX_PLAYER_LEVEL) > 70)
//            {
//                maxPlayerLevel = 70;
//            }
//        }
//    }

    void OnMapChanged(Player* player) override
    {
        sIndividualProgression->CheckAdjustments(player);
    }

    void OnLevelChanged(Player* player, uint8 /*oldLevel*/) override
    {
        sIndividualProgression->CheckAdjustments(player);
    }

    void OnEquip(Player* player, Item* /*it*/, uint8 /*bag*/, uint8 /*slot*/, bool /*update*/) override
    {
        sIndividualProgression->CheckAdjustments(player);
    }

    void OnPlayerResurrect(Player* player, float /*restore_percent*/, bool /*applySickness*/) override
    {
        sIndividualProgression->CheckAdjustments(player);
    }

    bool ShouldBeRewardedWithMoneyInsteadOfExp(Player* player) override
    {
        if (!sIndividualProgression->questMoneyAtLevelCap)
        {
            return false;
        }
                // Player is still in Vanilla content - give money at 60 level cap
        return ((!sIndividualProgression->hasPassedProgression(player, PROGRESSION_NAXX40) && player->getLevel() == 60) ||
                // Player is in TBC content - give money at 70 level cap
                (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5) && player->getLevel() == 70));
    }

    void OnAfterUpdateMaxHealth(Player* player, float& value) override
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
                sIndividualProgression->ApplyGearHealthTuning(player, gearAdjustment, item->GetTemplate());
        }
        // Player is still in Vanilla content - give Vanilla health adjustment
        if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_NAXX40))
        {
            float adjustmentAmount = 1.0f - sIndividualProgression->vanillaHealthAdjustment;
            float applyPercent = ((player->getLevel() - 10.0f) / 50.0f);
            float computedAdjustment = player->getLevel() > 10 ? 1.0f - applyPercent * adjustmentAmount : 1.0f;
            value *= computedAdjustment;
        }
            // Player is in TBC content - give TBC health adjustment
        else if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5))
        {
            value *= (sIndividualProgression->tbcHealthAdjustment - gearAdjustment);
        }
            // Player is in WotLK content - only need to check gear adjustment
        else
        {
            value *= 1 - gearAdjustment;
        }
    }

    void OnQuestComputeXP(Player* player, Quest const* quest, uint32& xpValue) override
    {
        if (!sIndividualProgression->enabled || !sIndividualProgression->questXpFix)
        {
            return;
        }
        if (sIndividualProgression->questXpMap.count(quest->GetQuestId()))
        {
            uint32 vanillaXpValue = sIndividualProgression->questXpMap[quest->GetQuestId()];
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
        if (!sIndividualProgression->enabled)
        {
            return;
        }
        // Player is still in Vanilla content - do not give XP past level 60
        if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_NAXX40) && player->getLevel() >= 60)
        {
            amount = 0;
        }
            // Player is in TBC content - do not give XP past level 70
        else if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5) && player->getLevel() >= 70)
        {
            amount = 0;
        }
    }

    bool OnBeforeTeleport(Player* player, uint32 mapid, float x, float y, float z, float /*orientation*/, uint32 /*options*/, Unit* /*target*/) override
    {
        if (!sIndividualProgression->enabled || player->IsGameMaster())
        {
            return true;
        }
        if (mapid == MAP_ZUL_GURUB && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_BLACKWING_LAIR))
        {
            return false;
        }
        if (mapid == MAP_AQ_40 && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_AQ))
        {
            return false;
        }
        if (mapid == MAP_AQ_20 && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_AQ))
        {
            return false;
        }
        if (mapid == MAP_OUTLANDS)
        {
            Map const* map = sMapMgr->FindMap(mapid, 0);
            uint32 zoneId = map->GetZoneId(0, x, y, z);
            if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_NAXX40))
            {
                // The player may be in the Azuremyst area which is on the outlands map - check the area ID
                return (zoneId == ZONE_AZUREMYST || zoneId == ZONE_BLOODMYST || zoneId == ZONE_GHOSTLANDS || zoneId == ZONE_EVERSONG || zoneId == ZONE_EXODAR || zoneId == ZONE_SILVERMOON);
            }
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
        if ((mapid == MAP_ICC || mapid == MAP_FORGE_OF_SOULS) && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_WOTLK_TIER_3))
        {
            return false;
        }
        if (mapid == MAP_RUBY_SANTCUM && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_WOTLK_TIER_4))
        {
            return false;
        }
        return true;
    }

    void OnPlayerCompleteQuest(Player* player, Quest const* quest) override
    {
        if (!sIndividualProgression->enabled)
        {
            return;
        }
        switch (quest->GetQuestId())
        {
            case MIGHT_OF_KALIMDOR:
                sIndividualProgression->UpdateProgressionState(player, PROGRESSION_PRE_AQ);
                break;
            case QUEST_MORROWGRAIN:
            case QUEST_TROLL_NECKLACE:
                if (sIndividualProgression->repeatableVanillaQuestsXp)
                {
                    // Reset the quest status so the player can take it and receive rewards again
                    player->RemoveRewardedQuest(quest->GetQuestId());
                }
                break;
        }
    }

    bool CanGroupInvite(Player* player, std::string& membername) override
     {
        if (!sIndividualProgression->enabled || !sIndividualProgression->enforceGroupRules)
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
       if (!sIndividualProgression->enabled || !sIndividualProgression->enforceGroupRules)
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
        if (!sIndividualProgression->enabled)
        {
            return;
        }

        switch (killed->GetEntry())
        {
            case RAGNAROS:
                sIndividualProgression->UpdateProgressionState(killer, PROGRESSION_MOLTEN_CORE);
                break;
            case ONYXIA:
                sIndividualProgression->UpdateProgressionState(killer, PROGRESSION_ONYXIA);
                break;
            case NEFARIAN:
                if (sIndividualProgression->requirePreAQQuests)
                {
                    sIndividualProgression->UpdateProgressionState(killer, PROGRESSION_BLACKWING_LAIR);
                }
                else
                {
                    sIndividualProgression->UpdateProgressionState(killer, PROGRESSION_PRE_AQ);
                }
                break;
            case CTHUN:
                sIndividualProgression->UpdateProgressionState(killer, PROGRESSION_AQ);
                break;
            case KELTHUZAD_40:
                sIndividualProgression->UpdateProgressionState(killer, PROGRESSION_NAXX40);
                break;
            case MALCHEZAAR:
                sIndividualProgression->UpdateProgressionState(killer, PROGRESSION_TBC_TIER_1);
                break;
            case KAELTHAS:
                sIndividualProgression->UpdateProgressionState(killer, PROGRESSION_TBC_TIER_2);
                break;
            case ILLIDAN:
                sIndividualProgression->UpdateProgressionState(killer, PROGRESSION_TBC_TIER_3);
                break;
            case ZULJIN:
                sIndividualProgression->UpdateProgressionState(killer, PROGRESSION_TBC_TIER_4);
                break;
            case KILJAEDEN:
                sIndividualProgression->UpdateProgressionState(killer, PROGRESSION_TBC_TIER_5);
                break;
            case KELTHUZAD:
                sIndividualProgression->UpdateProgressionState(killer, PROGRESSION_WOTLK_TIER_1);
                break;
            case YOGGSARON:
                sIndividualProgression->UpdateProgressionState(killer, PROGRESSION_WOTLK_TIER_2);
                break;
            case ANUBARAK:
                sIndividualProgression->UpdateProgressionState(killer, PROGRESSION_WOTLK_TIER_3);
                break;
            case LICH_KING:
                sIndividualProgression->UpdateProgressionState(killer, PROGRESSION_WOTLK_TIER_4);
                break;
            case HALION:
                sIndividualProgression->UpdateProgressionState(killer, PROGRESSION_WOTLK_TIER_5);
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
    new npc_ipp_tbc_t4();
    new npc_ipp_tbc_pre_t4();
    new npc_ipp_wotlk();
    new gobject_ipp_tbc();
//    new gobject_ipp_wotlk(); // Not used yet
}
