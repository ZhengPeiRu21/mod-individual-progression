#pragma once

#include "SharedDefines.h"
#include "Map.h"
#include "Player.h"
#include "AllBattlegroundScript.h"
#include "Battleground.h"
#include "Mail.h"
#include "DatabaseEnv.h"
#include "IndividualProgression.h"

enum class Battlemaster
{
    WARSONG_GULCH_ALLIANCE = 19908, // Su'ura Swiftarrow
    WARSONG_GULCH_HORDE = 19910, // Gargok
    ARATHI_BASIN_ALLIANCE = 19855, // Sir Maximus Adams
    ARATHI_BASIN_HORDE = 19905, // The Black Bride
    ALTERAC_VALLEY_ALLIANCE = 19907, // Grumbol Grimhammer
    ALTERAC_VALLEY_HORDE = 19906, // Usha Eyegouge
    EYE_OF_THE_STORM_ALLIANCE = 20382, // Mitia
    EYE_OF_THE_STORM_HORDE = 20390 // Duyash the Cruel
};

enum class MarkOfHonor
{
    NONE = 0,
    WARSONG_GULCH = 20558,
    ARATHI_BASIN = 20559,
    ALTERAC_VALLEY = 20560,
    EYE_OF_THE_STORM = 29024,
    ISLE_OF_CONQUEST = 47395,
    STRAND_OF_THE_ANCIENTS = 42425
};

enum class BattlegroundTeamId
{
    WARSONG_GULCH_ALLIANCE = (BATTLEGROUND_WS << 1) + TEAM_ALLIANCE,
    WARSONG_GULCH_HORDE = (BATTLEGROUND_WS << 1) + TEAM_HORDE,
    ARATHI_BASIN_ALLIANCE = (BATTLEGROUND_AB << 1) + TEAM_ALLIANCE,
    ARATHI_BASIN_HORDE = (BATTLEGROUND_AB << 1) + TEAM_HORDE,
    ALTERAC_VALLEY_ALLIANCE = (BATTLEGROUND_AV << 1) + TEAM_ALLIANCE,
    ALTERAC_VALLEY_HORDE = (BATTLEGROUND_AV << 1) + TEAM_HORDE,
    EYE_OF_THE_STORM_ALLIANCE = (BATTLEGROUND_EY << 1) + TEAM_ALLIANCE,
    EYE_OF_THE_STORM_HORDE = (BATTLEGROUND_EY << 1) + TEAM_HORDE
};

class IndividualPlayerProgression_BattlegroundRewardScript : public AllBattlegroundScript
{
    using BattlegroundRewardMap = std::unordered_map<BattlegroundTypeId, MarkOfHonor>;
    using BattlegroundBattlemasterMap = std::unordered_map<BattlegroundTeamId, Battlemaster>;

public:

    IndividualPlayerProgression_BattlegroundRewardScript() : AllBattlegroundScript("IndividualPlayerProgression_BattlegroundRewardScript") { }

    void OnBattlegroundEndReward(Battleground* battleground, Player* player, TeamId winner)
    {
        if (player == nullptr)
            return;

        if (battleground == nullptr)
            return;

        if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5))
            return;
        
        const TeamId playerTeamId = player->GetBgTeamId();

        uint8_t rewardQuantity = 1;

        if (playerTeamId == winner)
            rewardQuantity = 3;

        uint32_t rewardItemId = static_cast<uint32_t>(MarkOfHonor::NONE);

        const BattlegroundTypeId battlegroundType = battleground->GetBgTypeID();
        const BattlegroundRewardMap::const_iterator rewardIterator = this->battlegroundRewardMap.find(battlegroundType);

        if (rewardIterator != this->battlegroundRewardMap.end())
            rewardItemId = static_cast<uint32_t>(rewardIterator->second);

        if (rewardItemId == static_cast<uint32_t>(MarkOfHonor::NONE))
            return;

        const bool addedItem = player->AddItem(rewardItemId, rewardQuantity);

        if (!addedItem)
        {
            CharacterDatabaseTransaction transaction = CharacterDatabase.BeginTransaction();

            MailDraft draft("", "");
            Item* item = Item::CreateItem(rewardItemId, rewardQuantity, player);

            uint32_t battlemasterId = static_cast<uint32_t>(Battlemaster::WARSONG_GULCH_ALLIANCE);

            const BattlegroundTeamId battlegroundTeamId = static_cast<BattlegroundTeamId>((battlegroundType << 1) + playerTeamId);
            const BattlegroundBattlemasterMap::const_iterator battlemasterMapIterator = this->battlemasterMap.find(battlegroundTeamId);

            item->SaveToDB(transaction);
            draft.AddItem(item);
            draft.SendMailTo(transaction, MailReceiver(player, player->GetGUID().GetRawValue()), MailSender(MAIL_CREATURE, battlemasterId));
            CharacterDatabase.CommitTransaction(transaction);
        }
    }

private:

    const BattlegroundRewardMap battlegroundRewardMap = {
        {
            BATTLEGROUND_WS,
            MarkOfHonor::WARSONG_GULCH
        },
        {
            BATTLEGROUND_AB,
            MarkOfHonor::ARATHI_BASIN
        },
        {
            BATTLEGROUND_AV,
            MarkOfHonor::ALTERAC_VALLEY
        },
        {
            BATTLEGROUND_EY,
            MarkOfHonor::EYE_OF_THE_STORM
        },
        {
            BATTLEGROUND_IC,
            MarkOfHonor::ISLE_OF_CONQUEST
        },
        {
            BATTLEGROUND_SA,
            MarkOfHonor::STRAND_OF_THE_ANCIENTS
        }
    };

    const BattlegroundBattlemasterMap battlemasterMap = {
        {
            BattlegroundTeamId::WARSONG_GULCH_ALLIANCE,
            Battlemaster::WARSONG_GULCH_ALLIANCE
        },
        {
            BattlegroundTeamId::WARSONG_GULCH_HORDE,
            Battlemaster::WARSONG_GULCH_HORDE
        },
        {
            BattlegroundTeamId::ARATHI_BASIN_ALLIANCE,
            Battlemaster::ARATHI_BASIN_ALLIANCE
        },
        {
            BattlegroundTeamId::ARATHI_BASIN_HORDE,
            Battlemaster::ARATHI_BASIN_HORDE
        },
        {
            BattlegroundTeamId::ALTERAC_VALLEY_ALLIANCE,
            Battlemaster::ALTERAC_VALLEY_ALLIANCE
        },
        {
            BattlegroundTeamId::ALTERAC_VALLEY_HORDE,
            Battlemaster::ALTERAC_VALLEY_HORDE
        },
        {
            BattlegroundTeamId::EYE_OF_THE_STORM_ALLIANCE,
            Battlemaster::EYE_OF_THE_STORM_ALLIANCE
        },
        {
            BattlegroundTeamId::EYE_OF_THE_STORM_HORDE,
            Battlemaster::EYE_OF_THE_STORM_HORDE
        }
    };
};

void AddSC_mod_individual_progression_battleground()
{
    new IndividualPlayerProgression_BattlegroundRewardScript();
}
