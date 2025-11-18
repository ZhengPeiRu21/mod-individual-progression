#include "IndividualProgression.h"
#include "WorldState.h"


class gobject_ipp_leather_stage_0 : public GameObjectScript
{
public:
    gobject_ipp_leather_stage_0() : GameObjectScript("gobject_ipp_leather_stage_0") { }

    struct gobject_ipp_leather_stage_0AI: GameObjectAI
    {
        explicit gobject_ipp_leather_stage_0AI(GameObject* object) : GameObjectAI(object) { };

        bool CanBeSeen(Player const* player) override
        {           
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            
            if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_PRE_AQ))
            {
                return false;
            }
            else if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_BLACKWING_LAIR))
            {
                return true;
            }

            return false;
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ipp_leather_stage_0AI(object);
    }
};

class gobject_ipp_leather_stage_1 : public GameObjectScript
{
public:
    gobject_ipp_leather_stage_1() : GameObjectScript("gobject_ipp_leather_stage_1") { }

    struct gobject_ipp_leather_stage_1AI: GameObjectAI
    {
        explicit gobject_ipp_leather_stage_1AI(GameObject* object) : GameObjectAI(object) { };

        bool CanBeSeen(Player const* player) override
        {           
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            
            if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_PRE_AQ))
            {
                return false;
            }
            else if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_BLACKWING_LAIR))
            {
                uint8 leatherQuests = 0;

                if (((player->GetQuestStatus(QUEST_LIGHT_LEATHER) == QUEST_STATUS_REWARDED) &&
                     (player->GetQuestStatus(QUEST_MEDIUM_LEATHER) == QUEST_STATUS_REWARDED) &&
                     (player->GetQuestStatus(QUEST_THICK_LEATHER_A) == QUEST_STATUS_REWARDED)) ||
                    ((player->GetQuestStatus(QUEST_THICK_LEATHER_H) == QUEST_STATUS_REWARDED) &&
                     (player->GetQuestStatus(QUEST_RUGGED_LEATHER) == QUEST_STATUS_REWARDED) &&
                     (player->GetQuestStatus(QUEST_HEAVY_LEATHER) == QUEST_STATUS_REWARDED)))
                {
                    leatherQuests = 1;
                }
				
                if (leatherQuests == 1)
                    return true;
            }

            return false;
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ipp_leather_stage_1AI(object);
    }
};


class gobject_ipp_herbs_stage_0 : public GameObjectScript
{
public:
    gobject_ipp_herbs_stage_0() : GameObjectScript("gobject_ipp_herbs_stage_0") { }

    struct gobject_ipp_herbs_stage_0AI: GameObjectAI
    {
        explicit gobject_ipp_herbs_stage_0AI(GameObject* object) : GameObjectAI(object) { };

        bool CanBeSeen(Player const* player) override
        {           
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            
            if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_PRE_AQ))
            {
                return false;
            }
            else if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_BLACKWING_LAIR))
            {
                return true;
            }

            return false;
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ipp_herbs_stage_0AI(object);
    }
};

class gobject_ipp_herbs_stage_1 : public GameObjectScript
{
public:
    gobject_ipp_herbs_stage_1() : GameObjectScript("gobject_ipp_herbs_stage_1") { }

    struct gobject_ipp_herbs_stage_1AI: GameObjectAI
    {
        explicit gobject_ipp_herbs_stage_1AI(GameObject* object) : GameObjectAI(object) { };

        bool CanBeSeen(Player const* player) override
        {           
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            
            if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_PRE_AQ))
            {
                return false;
            }
            else if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_BLACKWING_LAIR))
            {
                uint8 herbQuests = 0;

                if (((player->GetQuestStatus(QUEST_STRANGLEKELP) == QUEST_STATUS_REWARDED) &&
                     (player->GetQuestStatus(QUEST_ARTHAS_TEARS) == QUEST_STATUS_REWARDED) &&
                     (player->GetQuestStatus(QUEST_PURPLE_LOTUS_A) == QUEST_STATUS_REWARDED)) ||
                    ((player->GetQuestStatus(QUEST_PEACEBLOOM) == QUEST_STATUS_REWARDED) &&
                     (player->GetQuestStatus(QUEST_FIREBLOOM) == QUEST_STATUS_REWARDED) &&
                     (player->GetQuestStatus(QUEST_PURPLE_LOTUS_H) == QUEST_STATUS_REWARDED)))
                {
                    herbQuests = 1;
                }

                if (herbQuests == 1)
                    return true;
            }

            return false;
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ipp_herbs_stage_1AI(object);
    }
};

class gobject_ipp_bars_stage_0 : public GameObjectScript
{
public:
    gobject_ipp_bars_stage_0() : GameObjectScript("gobject_ipp_bars_stage_0") { }

    struct gobject_ipp_bars_stage_0AI: GameObjectAI
    {
        explicit gobject_ipp_bars_stage_0AI(GameObject* object) : GameObjectAI(object) { };

        bool CanBeSeen(Player const* player) override
        {           
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            
            if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_PRE_AQ))
            {
                return false;
            }
            else if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_BLACKWING_LAIR))
            {
                return true;
            }

            return false;
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ipp_bars_stage_0AI(object);
    }
};

class gobject_ipp_bars_stage_1 : public GameObjectScript
{
public:
    gobject_ipp_bars_stage_1() : GameObjectScript("gobject_ipp_bars_stage_1") { }

    struct gobject_ipp_bars_stage_1AI: GameObjectAI
    {
        explicit gobject_ipp_bars_stage_1AI(GameObject* object) : GameObjectAI(object) { };

        bool CanBeSeen(Player const* player) override
        {           
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            
            if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_PRE_AQ))
            {
                return false;
            }
            else if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_BLACKWING_LAIR))
            {
                uint8 barQuests = 0;

                if (((player->GetQuestStatus(QUEST_COPPER_BARS_A) == QUEST_STATUS_REWARDED) &&
                     (player->GetQuestStatus(QUEST_IRON_BARS) == QUEST_STATUS_REWARDED) &&
                     (player->GetQuestStatus(QUEST_THORIUM_BARS) == QUEST_STATUS_REWARDED)) ||
                    ((player->GetQuestStatus(QUEST_COPPER_BARS_H) == QUEST_STATUS_REWARDED) &&
                     (player->GetQuestStatus(QUEST_TIN_BARS) == QUEST_STATUS_REWARDED) &&
                     (player->GetQuestStatus(QUEST_MITHRIL_BARS) == QUEST_STATUS_REWARDED)))
                {
                    barQuests = 1;
                }

                if (barQuests == 1)
                    return true;
            }

            return false;
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ipp_bars_stage_1AI(object);
    }
};

class gobject_ipp_food_stage_0 : public GameObjectScript
{
public:
    gobject_ipp_food_stage_0() : GameObjectScript("gobject_ipp_food_stage_0") { }

    struct gobject_ipp_food_stage_0AI: GameObjectAI
    {
        explicit gobject_ipp_food_stage_0AI(GameObject* object) : GameObjectAI(object) { };

        bool CanBeSeen(Player const* player) override
        {           
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            
            if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_PRE_AQ))
            {
                return false;
            }
            else if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_BLACKWING_LAIR))
            {
                return true;
            }

            return false;
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ipp_food_stage_0AI(object);
    }
};

class gobject_ipp_food_stage_1 : public GameObjectScript
{
public:
    gobject_ipp_food_stage_1() : GameObjectScript("gobject_ipp_food_stage_1") { }

    struct gobject_ipp_food_stage_1AI: GameObjectAI
    {
        explicit gobject_ipp_food_stage_1AI(GameObject* object) : GameObjectAI(object) { };

        bool CanBeSeen(Player const* player) override
        {           
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            
            if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_PRE_AQ))
            {
                return false;
            }
            else if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_BLACKWING_LAIR))
            {
                uint8 foodQuests = 0;

                if (((player->GetQuestStatus(QUEST_RAINBOW_FIN) == QUEST_STATUS_REWARDED) &&
                     (player->GetQuestStatus(QUEST_ROAST_RAPTOR) == QUEST_STATUS_REWARDED) &&
                     (player->GetQuestStatus(QUEST_SPOTTED_YELLOWTAIL_A) == QUEST_STATUS_REWARDED)) ||
                    ((player->GetQuestStatus(QUEST_LEAN_WOLF_STEAK) == QUEST_STATUS_REWARDED) &&
                     (player->GetQuestStatus(QUEST_SPOTTED_YELLOWTAIL_H) == QUEST_STATUS_REWARDED) &&
                     (player->GetQuestStatus(QUEST_BAKED_SALMON) == QUEST_STATUS_REWARDED)))
                {
                    foodQuests = 1;
                }

                if (foodQuests == 1)
                    return true;
            }

            return false;
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ipp_food_stage_1AI(object);
    }
};

class gobject_ipp_bandages_stage_0 : public GameObjectScript
{
public:
    gobject_ipp_bandages_stage_0() : GameObjectScript("gobject_ipp_bandages_stage_0") { }

    struct gobject_ipp_bandages_stage_0AI: GameObjectAI
    {
        explicit gobject_ipp_bandages_stage_0AI(GameObject* object) : GameObjectAI(object) { };

        bool CanBeSeen(Player const* player) override
        {           
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            
            if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_PRE_AQ))
            {
                return false;
            }
            else if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_BLACKWING_LAIR))
            {
                return true;
            }

            return false;
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ipp_bandages_stage_0AI(object);
    }
};

class gobject_ipp_bandages_stage_1 : public GameObjectScript
{
public:
    gobject_ipp_bandages_stage_1() : GameObjectScript("gobject_ipp_bandages_stage_1") { }

    struct gobject_ipp_bandages_stage_1AI: GameObjectAI
    {
        explicit gobject_ipp_bandages_stage_1AI(GameObject* object) : GameObjectAI(object) { };

        bool CanBeSeen(Player const* player) override
        {           
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            
            if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_PRE_AQ))
            {
                return false;
            }
            else if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_BLACKWING_LAIR))
            {
                uint8 bandagesQuests = 0;

                if (((player->GetQuestStatus(QUEST_LINEN_BANDAGES) == QUEST_STATUS_REWARDED) &&
                     (player->GetQuestStatus(QUEST_SILK_BANDAGES) == QUEST_STATUS_REWARDED) &&
                     (player->GetQuestStatus(QUEST_RUNECLOTH_BANDAGES_A) == QUEST_STATUS_REWARDED)) ||
                    ((player->GetQuestStatus(QUEST_WOOL_BANDAGES) == QUEST_STATUS_REWARDED) &&
                     (player->GetQuestStatus(QUEST_MAGEWEAVE_BANDAGES) == QUEST_STATUS_REWARDED) &&
                     (player->GetQuestStatus(QUEST_RUNECLOTH_BANDAGES_H) == QUEST_STATUS_REWARDED)))
                {
                    bandagesQuests = 1;
                }

                if (bandagesQuests == 1)
                    return true;
            }

            return false;
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ipp_bandages_stage_1AI(object);
    }
};

void AddSC_aq_we_scripts()
{
    new gobject_ipp_leather_stage_0();
    new gobject_ipp_leather_stage_1();
    new gobject_ipp_herbs_stage_0();
    new gobject_ipp_herbs_stage_1();
    new gobject_ipp_bars_stage_0();
    new gobject_ipp_bars_stage_1();
    new gobject_ipp_food_stage_0();
    new gobject_ipp_food_stage_1();
    new gobject_ipp_bandages_stage_0();
    new gobject_ipp_bandages_stage_1();
}
