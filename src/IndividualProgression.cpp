/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "IndividualProgression.h"

static float vanillaPowerAdjustment, vanillaHealthAdjustment, tbcPowerAdjustment, tbcHealthAdjustment;
static bool enabled;

class IndividualPlayerProgression_WorldScript : public WorldScript
{
private:
    void LoadConfig()
    {
        enabled = sConfigMgr->GetOption<bool>("IndividualProgression.Enabled", true);
        vanillaPowerAdjustment = sConfigMgr->GetOption<float>("IndividualProgression.VanillaPowerAdjustment", 1);
        vanillaHealthAdjustment = sConfigMgr->GetOption<float>("IndividualProgression.VanillaHealthAdjustment", 1);
        tbcPowerAdjustment = sConfigMgr->GetOption<float>("IndividualProgression.TBCPowerAdjustment", 1);
        tbcHealthAdjustment = sConfigMgr->GetOption<float>("IndividualProgression.TBCHealthAdjustment", 1);
    }

public:
    IndividualPlayerProgression_WorldScript() : WorldScript("IndividualPowerProgression_WorldScript") { }

    void OnBeforeConfigLoad(bool /*reload*/) override
    {
        LoadConfig();
    }
};
// Add player scripts
class IndividualPlayerProgression : public PlayerScript
{
private:
    void hasPassedProgression(Player* player, ProgressionState state)
    {
        return player->GetPlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE) >= state;
    }
    void UpdateProgressionState(Player* player, ProgressionState newState)
    {
        uint8 currentState = player->GetPlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE);
        if (newState > currentState)
        {
            player->UpdatePlayerSetting("mod-individual-progression", SETTING_PROGRESSION_STATE, newState);
        }
    }

public:
    IndividualPlayerProgression() : PlayerScript("IndividualProgression") { }

    void OnAfterUpdateAttackPowerAndDamage(Player* player, float& /*level*/, float& base_attPower, float& attPowerMod, float& attPowerMultiplier, bool /*ranged*/) override
    {
        if (!enabled)
        {
            return;
        }
        // Player is still in Vanilla content - give Vanilla damage adjustment
        if (!hasPassedProgression(player, PROGRESSION_NAXX40))
        {
            base_attPower *= vanillaPowerAdjustment;
        }
        // Player is in TBC content - give TBC damage adjustment
        else if (!hasPassedProgression(player, PROGRESSION_TBC_TIER_5))
        {
            base_attPower *= tbcPowerAdjustment;
        }
    }

    void OnAfterUpdateMaxHealth(Player* player, float& value) override
    {
        if (!enabled)
        {
            return;
        }
        // Player is still in Vanilla content - give Vanilla damage adjustment
        if (!hasPassedProgression(player, PROGRESSION_NAXX40))
        {
            value *= vanillaHealthAdjustment;
        }
            // Player is in TBC content - give TBC damage adjustment
        else if (!hasPassedProgression(player, PROGRESSION_TBC_TIER_5))
        {
            value *= tbcHealthAdjustment;
        }
    }


};

// Add all scripts in one
void AddSC_mod_individual_progression()
{
    new IndividualPlayerProgression();
}
