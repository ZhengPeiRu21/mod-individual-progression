#include "Player.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellAuraEffects.h"
#include "SpellScript.h"
#include "naxxramas.h"

class NaxxPlayerScript : public PlayerScript
{
public:
    NaxxPlayerScript() : PlayerScript("NaxxPlayerScript") { }

    void OnPlayerBeforeChooseGraveyard(Player* player, TeamId /*teamId*/, bool /*nearCorpse*/, uint32& graveyardOverride) override
    {
        if (player->GetMapId() == MAP_NAXX && player->GetMap()->GetSpawnMode() == RAID_DIFFICULTY_10MAN_HEROIC)
        {
            graveyardOverride = NAXX40_GRAVEYARD;
        }
    }
};

class naxx_northrend_entrance : public AreaTriggerScript
{
public:
    naxx_northrend_entrance() : AreaTriggerScript("naxx_northrend_entrance") { }

    bool OnTrigger(Player* player, AreaTrigger const* areaTrigger) override
    {
        // Do not allow entrance to Naxx 40 from Northrend
        // Change 10 man heroic to regular 10 man, as when 10 man heroic is not available
        Difficulty diff = player->GetGroup() ? player->GetGroup()->GetDifficulty(true) : player->GetDifficulty(true);
        if (diff == RAID_DIFFICULTY_10MAN_HEROIC)
        {
            player->SetRaidDifficulty(RAID_DIFFICULTY_10MAN_NORMAL);
        }
        switch (areaTrigger->entry)
        {
            // Naxx 10 and 25 entrances
            case 5191:
                player->TeleportTo(533, 3005.68f, -3447.77f, 293.93f, 4.65f);
                break;
            case 5192:
                player->TeleportTo(533, 3019.34f, -3434.36f, 293.99f, 6.27f);
                break;
            case 5193:
                player->TeleportTo(533, 3005.9f, -3420.58f, 294.11f, 1.58f);
                break;
            case 5194:
                player->TeleportTo(533, 2992.5f, -3434.42f, 293.94f, 3.13f);
                break;
        }
        return true;
    }
};

class naxx_exit_trigger : public AreaTriggerScript
{
public:
    naxx_exit_trigger() : AreaTriggerScript("naxx_exit_trigger") { }

    bool OnTrigger(Player* player, AreaTrigger const* areaTrigger) override
    {
        if (player->GetMap()->GetSpawnMode() == RAID_DIFFICULTY_10MAN_HEROIC)
        {
            // Naxx 40 cannot be exited via portals, as in Classic
            return false;
        }
        switch (areaTrigger->entry)
        {
            // Naxx 10 and 25 exits
            case 5196:
                player->TeleportTo(571, 3679.25f, -1278.58f, 243.55f, 2.39f);
                break;
            case 5197:
                player->TeleportTo(571, 3679.03f, -1259.68f, 243.55f, 3.98f);
                break;
            case 5198:
                player->TeleportTo(571, 3661.14f, -1279.55f, 243.55f, 0.82f);
                break;
            case 5199:
                player->TeleportTo(571, 3660.01f, -1260.99f, 243.55f, 5.51f);
                break;
        }
        return true;
    }
};

class NaxxEntryFlag_AllMapScript : public AllMapScript
{
public:
    NaxxEntryFlag_AllMapScript() : AllMapScript("NaxxEntryFlag_AllMapScript") { }

    void OnPlayerEnterAll(Map* map, Player* player) override
    {
        if (player->IsGameMaster())
            return;

        // Check if mapId equals to Naxxramas (mapId: 533)
        if (map->GetId() != 533)
            return;

        // Cast on player Naxxramas Entry Flag Trigger DND - Classic (spellID: 29296)
        if (player->GetQuestStatus(NAXX40_ENTRANCE_FLAG) != QUEST_STATUS_REWARDED)
        {
            // Mark player as having entered
            Quest const* quest = sObjectMgr->GetQuestTemplate(NAXX40_ENTRANCE_FLAG);
            player->AddQuest(quest, nullptr);
            player->CompleteQuest(NAXX40_ENTRANCE_FLAG);
            player->RewardQuest(quest, 0, player, false, false);
            // Cast on player Naxxramas Entry Flag Trigger DND - Classic (spellID: 29296)
            player->CastSpell(player, 29296, true); // for visual effect only, possible crash if cast on login
        }
    }
};

void AddSC_custom_scripts_40()
{
    new NaxxPlayerScript();
    new naxx_exit_trigger();
    new naxx_northrend_entrance();
    new NaxxEntryFlag_AllMapScript();
}
