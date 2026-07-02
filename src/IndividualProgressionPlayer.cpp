#include "IndividualProgression.h"
#include "naxxramas_40.h"
// #include "Spell.h"

class IndividualPlayerProgression : public PlayerScript
{

private:
    static bool IsTBCRaceStartingZone(uint32 mapid, float x, float y, float z)
    {
        Map const *map = sMapMgr->FindMap(mapid, 0);
        uint32 zoneId = map->GetZoneId(0, x, y, z);
        return (zoneId == AREA_AZUREMYST_ISLE || zoneId == AREA_BLOODMYST_ISLE || zoneId == AREA_GHOSTLANDS || zoneId == AREA_EVERSONG_WOODS ||
                zoneId == AREA_THE_EXODAR || zoneId == AREA_SILVERMOON_CITY || zoneId == AREA_AMMEN_VALE || zoneId == AREA_VEILED_SEA);
    }

public:
    IndividualPlayerProgression() : PlayerScript("IndividualProgression") { }

    void OnPlayerLogin(Player* player) override
    {
        if (!sIndividualProgression->enabled)
            return;

        if (!player || !player->IsInWorld())
            return;

        if (!sIndividualProgression->isNormalAccount(player)) // bot or exluded account
        {
            if (sIndividualProgression->isBotAccount(player))
                sIndividualProgression->UpdateRNDbotSpells(player); // give class spells to RNDbots that have been removed from trainers by IP.
            
            if (player->GetLevel() <= 60)
                sIndividualProgression->ForceUpdateProgressionState(player, static_cast<ProgressionState>(0));
            else if ((player->GetLevel() > 60) && (player->GetLevel() <= 70))
                sIndividualProgression->ForceUpdateProgressionState(player, static_cast<ProgressionState>(8));
            else
                sIndividualProgression->ForceUpdateProgressionState(player, static_cast<ProgressionState>(13));
        }
        else // normal account
        {
            if ((player->getRace() == RACE_DRAENEI || player->getRace() == RACE_BLOODELF) && sIndividualProgression->tbcRacesStartingProgression && !sIndividualProgression->hasPassedProgression(player, static_cast<ProgressionState>(sIndividualProgression->tbcRacesStartingProgression)))
            {
                sIndividualProgression->UpdateProgressionState(player, static_cast<ProgressionState>(sIndividualProgression->tbcRacesStartingProgression));
            }

            if (player->getClass() == CLASS_DEATH_KNIGHT && sIndividualProgression->deathKnightStartingProgression && !sIndividualProgression->hasPassedProgression(player, static_cast<ProgressionState>(sIndividualProgression->deathKnightStartingProgression)))
            {
                sIndividualProgression->UpdateProgressionState(player, static_cast<ProgressionState>(sIndividualProgression->deathKnightStartingProgression));
            }

            if (sIndividualProgression->startingProgression && !sIndividualProgression->hasPassedProgression(player, static_cast<ProgressionState>(sIndividualProgression->startingProgression)))
            {
                sIndividualProgression->UpdateProgressionState(player, static_cast<ProgressionState>(sIndividualProgression->startingProgression));
            }

            sIndividualProgression->checkIPProgression(player);
        }

        sIndividualProgression->CheckAdjustments(player);

        if (sIndividualProgression->enabled)
        {
            if (!player->GetSession())
                return;

            ChatHandler(player->GetSession()).SendSysMessage("|cff00ff00Individual Progression: |cffccccccenabled|r");
        }
    }

    void OnPlayerEquip(Player* player, Item* /*it*/, uint8 /*bag*/, uint8 /*slot*/, bool /*update*/) override
    {
        if (!player || !player->IsInWorld())
            return;

        // exluded accounts should be effected by server nerfs as well
        sIndividualProgression->CheckAdjustments(player);
    }

    void OnPlayerLevelChanged(Player* player, uint8 /*oldLevel*/) override
    {
        if (!player || !player->IsInWorld())
            return;

        if (sIndividualProgression->isBotAccount(player))
            sIndividualProgression->UpdateRNDbotSpells(player);
    }

    void OnPlayerResurrect(Player* player, float /*restore_percent*/, bool& /*applySickness*/) override
    {
        if (!player || !player->IsInWorld())
            return;

        sIndividualProgression->CheckAdjustments(player);
    }

    void OnPlayerQuestComputeXP(Player* player, Quest const* quest, uint32& xpValue) override
    {
        if (!sIndividualProgression->enabled || !quest || !xpValue || !player || !player->IsInWorld())
            return;

        if (!sIndividualProgression->questXpFix)
            return;

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
        if (!sIndividualProgression->enabled || !player || !player->IsInWorld() || !amount)
            return;

        if (sIndividualProgression->isExcludedAccount(player))
            return;

        if (sIndividualProgression->isBotAccount(player))
        {
            if (player->GetLevel() >= sIndividualProgression->BotAccountsMaxLevel)
            {
                // Still award XP to pets - they won't be able to pass the player's level
                Pet* pet = player->GetPet();
                if (pet && xpSource == XPSOURCE_KILL)
                    pet->GivePetXP(player->GetGroup() ? amount / 2 : amount);

                amount = 0;
            }
        }
        else // normal account
        {
            // Player is still in Vanilla content - do not give XP past level 60
            if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC) && player->GetLevel() >= 60)
            {
                // Still award XP to pets - they won't be able to pass the player's level
                Pet* pet = player->GetPet();
                if (pet && xpSource == XPSOURCE_KILL)
                    pet->GivePetXP(player->GetGroup() ? amount / 2 : amount);

                amount = 0;
            }
            // Player is in TBC content - do not give XP past level 70
            else if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5) && player->GetLevel() >= 70)
            {
                // Still award XP to pets - they won't be able to pass the player's level
                Pet* pet = player->GetPet();
                if (pet && xpSource == XPSOURCE_KILL)
                    pet->GivePetXP(player->GetGroup() ? amount / 2 : amount);

                amount = 0;
            }
        }
    }

    bool OnPlayerBeforeTeleport(Player* player, uint32 mapid, float x, float y, float z, float /*orientation*/, uint32 /*options*/, Unit* /*target*/) override
    {
        if (!player || !player->IsInWorld())
            return false;

        if (!sIndividualProgression->enabled || player->IsGameMaster() || !sIndividualProgression->isNormalAccount(player))
            return true;

        if (mapid == MAP_BLACKWING_LAIR && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_MOLTEN_CORE))
        {
            ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", PROGRESSION_MOLTEN_CORE);
            return false;
        }
        if (mapid == MAP_ONYXIAS_LAIR)
        {
            if (player->GetLevel() <= 70) // vanilla version
            {
                if (player->GetLevel() < 50)
                    return false;
                if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5)) // death knights
                    return false;
                if (!player->HasItemCount(ITEM_DRAKEFIRE_AMULET))
                    return false;
            }
 			else // WotLK
            {
                if (player->GetLevel() != 80)
                    return false;
            }
        }
        if (mapid == MAP_ZUL_GURUB)
        {
            uint32 PLAYER_PROGRESSION = sIndividualProgression->GetPlayerProgressionFromQuests(player);
            ProgressionState REQUIRED_ZG_PROGRESSION = static_cast<ProgressionState>(sIndividualProgression->RequiredZulGurubProgression);

            if (PLAYER_PROGRESSION < REQUIRED_ZG_PROGRESSION)
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
                uint32 accountId = player->GetSession()->GetAccountId();
                uint8 highestProgression = sIndividualProgression->GetAccountProgression(accountId);

                if ((highestProgression < sIndividualProgression->tbcRacesProgressionLevel) && (player->getRace() != RACE_DRAENEI && player->getRace() != RACE_BLOODELF))
                {
                    ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", sIndividualProgression->tbcRacesProgressionLevel);
                    return false;
                }
                else
                    return IsTBCRaceStartingZone(mapid, x, y, z);
            }

            Map const *map = sMapMgr->FindMap(mapid, 0);
            uint32 zoneId = map->GetZoneId(0, x, y, z);

            if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_4) && zoneId == AREA_ISLE_OF_QUEL_DANAS)
            {
                ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", PROGRESSION_TBC_TIER_4);
                return false;
            }
        }
        if (mapid == MAP_ZUL_AMAN)
        {
            uint32 PLAYER_PROGRESSION = sIndividualProgression->GetPlayerProgressionFromQuests(player);
            ProgressionState REQUIRED_ZA_PROGRESSION = static_cast<ProgressionState>(sIndividualProgression->RequiredZulAmanProgression);

            if (PLAYER_PROGRESSION < REQUIRED_ZA_PROGRESSION)
            {
                ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", REQUIRED_ZA_PROGRESSION);
                return false;
            }
        }
        if (mapid == MAP_NORTHREND && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5))
        {
            const uint16 AREA_COLD_HEARTH_MANOR = 166;
            const uint16 AREA_DRYGULCH_RAVINE = 370;
            const uint16 AREA_STORMWIND_GREAT_SEA = 2364;
            const uint16 AREA_WETLANDS_GREAT_SEA = 2365;
            const uint16 AREA_STORMWIND_HARBOR = 4411;

            uint16 NPC_DEATHGUARD_BARTH = 31708; // Zeppelin Crewman in Tirisfal Glades
            uint16 NPC_GRUNT_GRITCH = 31726; // Zeppelin Crewman in Durotar
            uint16 NPC_SAILOR_JANSEN = 31759;
            uint16 NPC_SAILOR_DAVIES = 31761;
            uint16 NPC_SAILOR_PICARDO = 31792;

            switch (player->GetAreaId())
            {
            case AREA_STORMWIND_GREAT_SEA:
                if (player->FindNearestCreature(NPC_SAILOR_PICARDO, 80.0f))
                    player->TeleportTo(0, -8290.685f, 1395.097f, 4.851f, 0); // Stormwind Harbor
                break;
            case AREA_STORMWIND_HARBOR:
                if (player->FindNearestCreature(NPC_SAILOR_JANSEN, 60.0f) || player->FindNearestCreature(NPC_SAILOR_DAVIES, 40.0f))
                    player->TeleportTo(0, -8641.461f, 1322.536f, 5.537f, 0); // Stormwind Harbor
                break;
            case AREA_WETLANDS_GREAT_SEA:
                if (player->FindNearestCreature(NPC_SAILOR_JANSEN, 60.0f) || player->FindNearestCreature(NPC_SAILOR_DAVIES, 40.0f))
                    player->TeleportTo(0, -3730.277f, -584.316f, 4.7365f, 0); // Menethil Harbor
                break;
            case AREA_DUROTAR:
            case AREA_DRYGULCH_RAVINE:
                if (player->FindNearestCreature(NPC_GRUNT_GRITCH, 40.0f))
                    player->TeleportTo(1, 1174.13f, -4152.37f, 51.746f, 0); // Durotar Zeppelin Master
                break;
            case AREA_TIRISFAL_GLADES:
            case AREA_COLD_HEARTH_MANOR:
                if (player->FindNearestCreature(NPC_DEATHGUARD_BARTH, 40.0f))
                    player->TeleportTo(0, 2060.0942f, 361.5912f, 82.5f, 0); // Tirisfal Glades Zeppelin Master
                break;
            }

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
        if (mapid == MAP_MAGISTERS_TERRACE && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_4))
        {
            ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", PROGRESSION_TBC_TIER_4);
            return false;
        }
        if (mapid == MAP_THE_SUNWELL && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_4))
        {
            ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", PROGRESSION_TBC_TIER_4);
            return false;
        }
        if (mapid == MAP_TEMPEST_KEEP)
        {
            if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_1))
            {
                ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", PROGRESSION_TBC_TIER_1);
                return false;
            }
 			else if (!player->HasItemCount(ITEM_TEMPEST_KEY))
            {
                ChatHandler(player->GetSession()).PSendSysMessage("You must possess the Tempest Key to enter The Eye.");
                return false;
            }
 			else if (player->GetQuestStatus(TRIAL_MAGTHERIDON) != QUEST_STATUS_REWARDED)
            {
                ChatHandler(player->GetSession()).PSendSysMessage("You must complete the quest Trial of the Naaru: Magtheridon to enter The Eye.");
                return false;
            }
        }
        if (mapid == MAP_COILFANG_SERPENTSHRINE_CAVERN)
        {
            if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_1))
            {
                ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", PROGRESSION_TBC_TIER_1);
                return false;
            }
 			else if (player->GetQuestStatus(CUDGEL_OF_KARDESH) != QUEST_STATUS_REWARDED)
            {
                ChatHandler(player->GetSession()).PSendSysMessage("You must complete the quest The Cudgel of Kar\'desh to enter Serpentshrine Reservoir.");
                return false;
            }
        }
        if (mapid == MAP_THE_BATTLE_FOR_MOUNT_HYJAL)
        {
            if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_2))
            {
                ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", PROGRESSION_TBC_TIER_2);
                return false;
            }
 			else if (player->GetQuestStatus(VIALS_OF_ETERNITY) != QUEST_STATUS_REWARDED)
            {
                ChatHandler(player->GetSession()).PSendSysMessage("You must complete the quest The Vials of Eternity to enter the Battle of Mount Hyjal.");
                return false;
            }
        }
        if (mapid == MAP_BLACK_TEMPLE)
        {
            if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_2))
            {
                ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", PROGRESSION_TBC_TIER_2);
                return false;
            }
 			else if (!player->HasItemCount(ITEM_MEDALLION_OF_KARABOR) && !player->HasItemCount(ITEM_BLESSED_MEDALLION_OF_KARABOR))
            {
                ChatHandler(player->GetSession()).PSendSysMessage("You must possess the Medallion of Karabor to enter the Black Temple.");
                return false;
            }
        }

        InstanceTemplate const* instanceTemplate = sObjectMgr->GetInstanceTemplate(mapid);
        if (instanceTemplate)
        {
            if (instanceTemplate->Parent == MAP_OUTLAND && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC))
                return false;

            if (instanceTemplate->Parent == MAP_NORTHREND && mapid != MAP_NAXXRAMAS && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5))
                return false;

            if (instanceTemplate->Parent == MAP_NORTHREND && mapid == MAP_NAXXRAMAS && player->GetLevel() <= 70 && (!sIndividualProgression->isAttuned(player) ||  sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5) ))
                return false;
        }

        return true;
    }

    void OnPlayerCompleteQuest(Player* player, Quest const* quest) override
    {
        if (!player || !player->IsInWorld() || !quest || !sIndividualProgression->enabled)
            return;

        if (!sIndividualProgression->isNormalAccount(player))
            return;

        if (sIndividualProgression->questMoneyAtLevelCap)
        {
            int32 moneyRew = 0;
            int32 XPValue = 0;

            if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC) && player->GetLevel() == 60)
                XPValue = quest->XPValue(quest->GetQuestLevel() == -1 ? 60 : quest->GetQuestLevel());
            else if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5) && player->GetLevel() == 70)
                XPValue = quest->XPValue(quest->GetQuestLevel() == -1 ? 70 : quest->GetQuestLevel());

            moneyRew = (XPValue * (6 * COPPER)) * sWorld->getRate(RATE_REWARD_BONUS_MONEY);

            if (moneyRew > 0)
            {
                player->ModifyMoney(moneyRew);
                uint32 gold = moneyRew / GOLD;
                uint32 silv = (moneyRew % GOLD) / SILVER;
                // uint32 copp = (moneyRew % GOLD) % SILVER;

                if (gold > 0)
                    ChatHandler(player->GetSession()).PSendSysMessage("Received {} Gold, {} Silver.", gold, silv);
                else
                    ChatHandler(player->GetSession()).PSendSysMessage("Received {} Silver.", silv);
            }
        }

        switch (quest->GetQuestId())
        {
        case BANG_A_GONG:
        case SIMPLY_BANG_A_GONG:
            if (!sIndividualProgression->disableDefaultProgression)
                 sIndividualProgression->UpdateProgressionState(player, PROGRESSION_PRE_AQ);
            break;
        case CHAOS_AND_DESTRUCTION:
            if (!sIndividualProgression->disableDefaultProgression)
                 sIndividualProgression->UpdateProgressionState(player, PROGRESSION_AQ_WAR);
            break;
        case INTO_THE_BREACH:
            if (!sIndividualProgression->disableDefaultProgression)
                 sIndividualProgression->UpdateProgressionState(player, PROGRESSION_PRE_TBC);
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
        if (!player || !player->IsInWorld())
            return false;

        if (!sIndividualProgression->enabled || sIndividualProgression->isBotAccount(player))
            return true;

        Player* otherPlayer = ObjectAccessor::FindPlayerByName(membername, false);
        uint8 currentState = sIndividualProgression->GetPlayerProgressionFromQuests(player);
        uint8 otherPlayerState = sIndividualProgression->GetPlayerProgressionFromQuests(otherPlayer);

        if (sIndividualProgression->enforceGroupRules) // enforceGroupRules enabled
        {
            if (sIndividualProgression->isNormalAccount(player))
            {
                if (sIndividualProgression->isBotAccount(otherPlayer))
                {
                    if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC)) // player is in vanilla
                    {
                        if (otherPlayer->GetLevel() <= 60)
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
                        if ((otherPlayer->GetLevel() > 60) && (otherPlayer->GetLevel() <= 70))
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
                        if (otherPlayer->GetLevel() > 70)
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
            else // if (sIndividualProgression->isExcludedAccount(player))
            {
                if (!sIndividualProgression->isNormalAccount(otherPlayer)) // other player is either excluded or a RNDbot
                {
                    if (player->GetLevel() <= 60) // player is in vanilla
                    {
                        if (otherPlayer->GetLevel() <= 60)
                        {
                            return true;
                        }
                        else // excluded accounts in vanilla cannot group with TBC or WotLK accounts when enforceGroupRules is enabled, to avoid bypassing progression requirements
                        {
                            ChatHandler(player->GetSession()).SendSysMessage("|cff00ff00Enforce Group Rules is enabled: |cffccccccthis player's level is too high.|r");
                            return false;
                        }
                    }
                    else if (player->GetLevel() <= 70) // player is in TBC
                    {
                        if ((otherPlayer->GetLevel() > 60) && (otherPlayer->GetLevel() <= 70))
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
                        if (otherPlayer->GetLevel() > 70)
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
                    ChatHandler(player->GetSession()).SendSysMessage("|cff00ff00Enforce Group Rules is enabled: |cffccccccthis player is not a bot or does not have an excluded account.|r");
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
        if (!player || !player->IsInWorld() || !group)
            return false;

        Player* groupLeader = ObjectAccessor::FindPlayerByLowGUID(group->GetLeaderGUID().GetCounter());
        uint8 currentState = sIndividualProgression->GetPlayerProgressionFromQuests(player);
        uint8 groupLeaderState = sIndividualProgression->GetPlayerProgressionFromQuests(groupLeader);

        if (!sIndividualProgression->enabled)
            return true;

        if (!sIndividualProgression->isNormalAccount(player)) // player is either a RNDbot or has an excluded account
        {
            if (sIndividualProgression->enforceGroupRules)
            {
                if (groupLeaderState < PROGRESSION_PRE_TBC) // Group leader is in Vanilla
                {
                    if (player->GetLevel() <= 60) // invited player is in Vanilla
                    {
                        sIndividualProgression->ForceUpdateProgressionState(player, static_cast<ProgressionState>(groupLeaderState));
                        return true;
                    }
                    else
                        return false;
                }
                else if (groupLeaderState >= PROGRESSION_PRE_TBC && groupLeaderState < PROGRESSION_TBC_TIER_5) // Group leader is in TBC
                {
                    if (player->GetLevel() > 60 && player->GetLevel() <= 70) // invited excluded player is in TBC
                    {
                        sIndividualProgression->ForceUpdateProgressionState(player, static_cast<ProgressionState>(groupLeaderState));
                        return true;
                    }
                    else
                        return false;
                }
                else // Group leader is in WotLK
                {
                    if (player->GetLevel() > 70) // invited excluded player is in WotLK
                    {
                        sIndividualProgression->ForceUpdateProgressionState(player, static_cast<ProgressionState>(groupLeaderState));
                        return true;
                    }
                    else
                        return false;
                }
            }
            else // not enforcing Group Rules
            {
                if (currentState != groupLeaderState)
                    sIndividualProgression->ForceUpdateProgressionState(player, static_cast<ProgressionState>(groupLeaderState));

                return true;
            }
        }
        else // normal account
        {
            if (sIndividualProgression->enforceGroupRules)
                return (currentState == groupLeaderState);
            else
                return true;
        }
    }

    void OnPlayerCreatureKill(Player* killer, Creature* killed) override
    {
        if (!sIndividualProgression->enabled || !killed || !killer || !killer->IsInWorld())
            return;

        if (killer->GetMap()->GetId() == MAP_DEADMINES)
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
        }

        if (killer->GetMap()->GetId() == MAP_ALTERAC_VALLEY)
        {
            static constexpr std::array<uint32, 20> AV_commanders =
            {
                13137, // Lieutenant Rugba
                13138, // Lieutenant Spencer
                13139, // Commander Randolph
                13140, // Commander Dardosh
                13143, // Lieutenant Stronghoof
                13144, // Lieutenant Vol'talar
                13145, // Lieutenant Grummus
                13146, // Lieutenant Murp
                13147, // Lieutenant Lewis
                13152, // Commander Malgor
                13153, // Commander Mulfort
                13154, // Commander Louis Philips
                13296, // Lieutenant Largent
                13297, // Lieutenant Stouthandle
                13298, // Lieutenant Greywand
                13299, // Lieutenant Lonadin
                13300, // Lieutenant Mancuso
                13318, // Commander Mortimer
                13319, // Commander Duffy
                13320  // Commander Karl Philips
            };

            for (uint32 commanderId : AV_commanders)
            {
                if (killed->GetEntry() == commanderId)
                {
                    TeamId teamId = killer->GetTeamId(true);

                    if (Battleground* bg = killer->GetBattleground())
                        bg->RewardHonorToTeam(198, teamId);
                }
            }
        }

        Group* group = killer->GetGroup();
        
        if (killed->GetCreatureTemplate()->rank > CREATURE_ELITE_NORMAL)
        {       
            if (sIndividualProgression->disableDefaultProgression)
            {
                bool CustomCreatureKilled = false;
                
                if (group)
                {
                    for (GroupReference* itr = group->GetFirstMember(); itr != nullptr; itr = itr->next())
                    {
                        Player* member = itr->GetSource();
                        if (!member || !sIndividualProgression->isNormalAccount(member))
                            continue;

                        if (sIndividualProgression->checkCustomKillProgression(killer, killed))
                            CustomCreatureKilled = true;
                    }
                }
                else // no group
                {
                    if (sIndividualProgression->checkCustomKillProgression(killer, killed)) 
                        CustomCreatureKilled = true;
                }

                if (CustomCreatureKilled)
                    return;
            }
   
            if (killed->GetEntry() == COLOSSUS_ZORA || killed->GetEntry() == COLOSSUS_REGAL || killed->GetEntry() == COLOSSUS_ASHI)
            {
                // no group
                if (killed->GetEntry() == COLOSSUS_ZORA)
                    killer->CompleteQuest(QUEST_COLOSSUS_ZORA);
                else if (killed->GetEntry() == COLOSSUS_REGAL)
                    killer->CompleteQuest(QUEST_COLOSSUS_REGAL);
                else if (killed->GetEntry() == COLOSSUS_ASHI)
                    killer->CompleteQuest(QUEST_COLOSSUS_ASHI);    
               
                if (group)
                {
                    for (GroupReference* itr = group->GetFirstMember(); itr != nullptr; itr = itr->next())
                    {
                        Player* member = itr->GetSource();
                        if (!member || !sIndividualProgression->isNormalAccount(member))
                            continue;

                        if (killed->GetEntry() == COLOSSUS_ZORA)
                            member->CompleteQuest(QUEST_COLOSSUS_ZORA);
                        else if (killed->GetEntry() == COLOSSUS_REGAL)
                            member->CompleteQuest(QUEST_COLOSSUS_REGAL);
                        else if (killed->GetEntry() == COLOSSUS_ASHI)
                            member->CompleteQuest(QUEST_COLOSSUS_ASHI);
                    }
                }
                return;
            }

            uint32 ENTRY_KILLED = killed->GetEntry();

            if (group)
            {
                for (GroupReference* itr = group->GetFirstMember(); itr != nullptr; itr = itr->next())
                {
                    Player* member = itr->GetSource();
                    if (!member || !sIndividualProgression->isNormalAccount(member))
                        continue;

                    if (killer->IsAtLootRewardDistance(member))
                    {
                        if (!sIndividualProgression->hasCustomProgressionValue(ENTRY_KILLED))
                            sIndividualProgression->checkKillProgression(member, killed);
                    }
                }
            }
            else // no group
            {
                if (!sIndividualProgression->hasCustomProgressionValue(ENTRY_KILLED))
                    sIndividualProgression->checkKillProgression(killer, killed);
            }
        }
    }

    bool OnPlayerUpdateFishingSkill(Player* player, int32 /*skill*/, int32 /*zone_skill*/, int32 chance, int32 roll) override
    {
        if (!player || !player->IsInWorld() || !chance || !roll)
            return false;

        if (!sIndividualProgression->enabled || !sIndividualProgression->fishingFix)
            return true;

        if (chance < roll)
            return false;

        return true;
    }

    void OnPlayerMapChanged(Player* player) override
    {
        if (!sIndividualProgression->enabled || !player || !player->IsInWorld())
            return;

        if (sIndividualProgression->isNormalAccount(player))
            sIndividualProgression->checkIPProgression(player);

        if (!sIndividualProgression->isBotAccount(player) || sIndividualProgression->BotAccountsEarnPvPTitles)
        {
            sIndividualProgression->AwardEarnedVanillaPvpTitles(player);
            sIndividualProgression->CleanUpVanillaPvpTitles(player);
        }

        sIndividualProgression->CheckAdjustments(player);
    }

    void OnPlayerUpdateZone(Player* player, uint32 /*newZone*/, uint32 newArea) override
    {
        if (!sIndividualProgression->enabled || !player || !player->IsInWorld() || !newArea)
            return;

        sIndividualProgression->checkIPPhasing(player, newArea);
    }

    void OnPlayerUpdateArea(Player* player, uint32 oldArea, uint32 newArea) override
    {
        if (!player || !player->IsInWorld() || !newArea || !oldArea)
            return;

        if (!sIndividualProgression->enabled || player->IsGameMaster())
            return;

        if (newArea == oldArea)
            return;

        uint32 mapid = player->GetMap()->GetId();

        if (mapid && mapid == MAP_OUTLAND) // prevent entering Sun's Reach Harbor in Quel'Danas without proper progression
        {
            if (sIndividualProgression->isNormalAccount(player))
            {
                if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_4) && newArea == 4087) // Sun's Reach Harbor
                {
                    ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", PROGRESSION_TBC_TIER_4);

                    TeamId teamId = player->GetTeamId(true);
                    if (teamId == TEAM_ALLIANCE)
                        player->TeleportTo(0, 2270.32f, -5341.56f, 87, 1.34946f); // Light's Hope Chapel
                    else // Horde
                        player->TeleportTo(530, 9373.69f, -7168.46f, 9.17572f, 1.04876f); // Eversong Woods
                }
            }
        }

        sIndividualProgression->checkIPPhasing(player, newArea);
    }

    bool OnPlayerCanEquipItem(Player* player, uint8 /*slot*/, uint16& /*dest*/, Item* pItem, bool /*swap*/, bool /*not_loading*/) override
    {
        if (!player || !pItem)
            return false;

        if (pItem->GetTemplate()->RequiredHonorRank == 0)
            return true;

        if (player->GetByteValue(PLAYER_FIELD_BYTES, PLAYER_FIELD_BYTES_OFFSET_LIFETIME_MAX_PVP_RANK) == 0) // value is 0 player login
            return true;

        switch (pItem->GetTemplate()->RequiredHonorRank)
        {
        case 5:
            return (player->GetByteValue(PLAYER_FIELD_BYTES, PLAYER_FIELD_BYTES_OFFSET_LIFETIME_MAX_PVP_RANK) >= 5);
            break;
        case 6:
            return (player->GetByteValue(PLAYER_FIELD_BYTES, PLAYER_FIELD_BYTES_OFFSET_LIFETIME_MAX_PVP_RANK) >= 6);
            break;
        case 7:
            return (player->GetByteValue(PLAYER_FIELD_BYTES, PLAYER_FIELD_BYTES_OFFSET_LIFETIME_MAX_PVP_RANK) >= 7);
            break;
        case 8:
            return (player->GetByteValue(PLAYER_FIELD_BYTES, PLAYER_FIELD_BYTES_OFFSET_LIFETIME_MAX_PVP_RANK) >= 8);
            break;
        case 9:
            return (player->GetByteValue(PLAYER_FIELD_BYTES, PLAYER_FIELD_BYTES_OFFSET_LIFETIME_MAX_PVP_RANK) >= 9);
            break;
        case 10:
            return (player->GetByteValue(PLAYER_FIELD_BYTES, PLAYER_FIELD_BYTES_OFFSET_LIFETIME_MAX_PVP_RANK) >= 10);
            break;
        case 11:
            return (player->GetByteValue(PLAYER_FIELD_BYTES, PLAYER_FIELD_BYTES_OFFSET_LIFETIME_MAX_PVP_RANK) >= 11);
            break;
        case 12:
            return (player->GetByteValue(PLAYER_FIELD_BYTES, PLAYER_FIELD_BYTES_OFFSET_LIFETIME_MAX_PVP_RANK) >= 12);
            break;
        case 13:
            return (player->GetByteValue(PLAYER_FIELD_BYTES, PLAYER_FIELD_BYTES_OFFSET_LIFETIME_MAX_PVP_RANK) >= 13);
            break;
        case 14:
            return (player->GetByteValue(PLAYER_FIELD_BYTES, PLAYER_FIELD_BYTES_OFFSET_LIFETIME_MAX_PVP_RANK) >= 14);
            break;
        case 15:
            return (player->GetByteValue(PLAYER_FIELD_BYTES, PLAYER_FIELD_BYTES_OFFSET_LIFETIME_MAX_PVP_RANK) >= 15);
            break;
        case 16:
            return (player->GetByteValue(PLAYER_FIELD_BYTES, PLAYER_FIELD_BYTES_OFFSET_LIFETIME_MAX_PVP_RANK) >= 16);
            break;
        case 17:
            return (player->GetByteValue(PLAYER_FIELD_BYTES, PLAYER_FIELD_BYTES_OFFSET_LIFETIME_MAX_PVP_RANK) >= 17);
            break;
        case 18:
            return (player->GetByteValue(PLAYER_FIELD_BYTES, PLAYER_FIELD_BYTES_OFFSET_LIFETIME_MAX_PVP_RANK) >= 18);
            break;
        default:
            break;
        }
        return true;
    }
};

class IndividualPlayerProgression_AccountScript : public AccountScript
{
public:
    IndividualPlayerProgression_AccountScript() : AccountScript("IndividualProgression_AccountScript") { }

    bool CanAccountCreateCharacter(uint32 accountId, uint8 charRace, uint8 charClass) override
    {
        if (!accountId || !charRace || !charClass)
            return false;

        if ((!sIndividualProgression->enabled) ||
            (charRace != RACE_DRAENEI && charRace != RACE_BLOODELF && charClass != CLASS_DEATH_KNIGHT) ||
            (!sIndividualProgression->tbcRacesProgressionLevel && !sIndividualProgression->deathKnightProgressionLevel))
        {
            return true;
        }

        // Check if the account is a bot or excluded from progression
        std::string accountName;
        bool accountNameFound = AccountMgr::GetName(accountId, accountName);
        std::regex botAccountsRegex(sIndividualProgression->botAccountsRegex);
        std::regex excludedAccountsRegex(sIndividualProgression->excludedAccountsRegex);
  
        if (accountNameFound && (std::regex_match(accountName, botAccountsRegex) || std::regex_match(accountName, excludedAccountsRegex)))
            return true;

        uint8 highestProgression = sIndividualProgression->GetAccountProgression(accountId);
        bool allowed = true;
        
        if ((charRace == RACE_DRAENEI || charRace == RACE_BLOODELF) && sIndividualProgression->tbcRacesProgressionLevel != 0)
        {
            if (highestProgression < sIndividualProgression->tbcRacesProgressionLevel)
                allowed = false;
        }
        if (charClass == CLASS_DEATH_KNIGHT && sIndividualProgression->deathKnightProgressionLevel != 0)
        {
            if (highestProgression < sIndividualProgression->deathKnightProgressionLevel)
                allowed = false;
        }
        return allowed;
    }
};

class IndividualPlayerProgression_GroupScript : public GroupScript
{
public:
    IndividualPlayerProgression_GroupScript() : GroupScript("IndividualPlayerProgression_GroupScript") { }

    void OnAddMember(Group* group, ObjectGuid guid) override
    {
        if (!group || !guid)
            return;

        Player* added = ObjectAccessor::FindPlayer(guid);
        if (!added)
            return;

        sIndividualProgression->SyncBotsProgressionToLeader(group);
    }
};

void AddSC_mod_individual_progression_player()
{
    new IndividualPlayerProgression();
    new IndividualPlayerProgression_GroupScript();
    new IndividualPlayerProgression_AccountScript();
}
