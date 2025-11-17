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
                uint8 leatherQuests = 0;
                
                if (player->GetQuestStatus(WE_QUEST_THICK_LEATHER) == QUEST_STATUS_REWARDED)
                    leatherQuests = leatherQuests + 1;
                if (player->GetQuestStatus(WE_QUEST_RUGGED_LEATHER) == QUEST_STATUS_REWARDED)
                    leatherQuests = leatherQuests + 1;                    
                if (player->GetQuestStatus(WE_QUEST_HEAVY_LEATHER) == QUEST_STATUS_REWARDED)
                    leatherQuests = leatherQuests + 1;
                if (leatherQuests == 0)
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
                
                if (player->GetQuestStatus(WE_QUEST_THICK_LEATHER) == QUEST_STATUS_REWARDED)
                    leatherQuests = leatherQuests + 1;
                if (player->GetQuestStatus(WE_QUEST_RUGGED_LEATHER) == QUEST_STATUS_REWARDED)
                    leatherQuests = leatherQuests + 1;                    
                if (player->GetQuestStatus(WE_QUEST_HEAVY_LEATHER) == QUEST_STATUS_REWARDED)
                    leatherQuests = leatherQuests + 1;
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

class gobject_ipp_leather_stage_3 : public GameObjectScript
{
public:
    gobject_ipp_leather_stage_3() : GameObjectScript("gobject_ipp_leather_stage_3") { }

    struct gobject_ipp_leather_stage_3AI: GameObjectAI
    {
        explicit gobject_ipp_leather_stage_3AI(GameObject* object) : GameObjectAI(object) { };

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
                
                if (player->GetQuestStatus(WE_QUEST_THICK_LEATHER) == QUEST_STATUS_REWARDED)
                    leatherQuests = leatherQuests + 1;
                if (player->GetQuestStatus(WE_QUEST_RUGGED_LEATHER) == QUEST_STATUS_REWARDED)
                    leatherQuests = leatherQuests + 1;                    
                if (player->GetQuestStatus(WE_QUEST_HEAVY_LEATHER) == QUEST_STATUS_REWARDED)
                    leatherQuests = leatherQuests + 1;
                if (leatherQuests == 2)
                    return true;
            }

            return false;
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ipp_leather_stage_3AI(object);
    }
};

class gobject_ipp_leather_stage_5 : public GameObjectScript
{
public:
    gobject_ipp_leather_stage_5() : GameObjectScript("gobject_ipp_leather_stage_5") { }

    struct gobject_ipp_leather_stage_5AI: GameObjectAI
    {
        explicit gobject_ipp_leather_stage_5AI(GameObject* object) : GameObjectAI(object) { };

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
                
                if (player->GetQuestStatus(WE_QUEST_THICK_LEATHER) == QUEST_STATUS_REWARDED)
                    leatherQuests = leatherQuests + 1;
                if (player->GetQuestStatus(WE_QUEST_RUGGED_LEATHER) == QUEST_STATUS_REWARDED)
                    leatherQuests = leatherQuests + 1;                    
                if (player->GetQuestStatus(WE_QUEST_HEAVY_LEATHER) == QUEST_STATUS_REWARDED)
                    leatherQuests = leatherQuests + 1;
                if (leatherQuests == 3)
                    return true;
            }

            return false;
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ipp_leather_stage_5AI(object);
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
                uint8 herbQuests = 0;
                
                if (player->GetQuestStatus(WE_QUEST_PEACEBLOOM) == QUEST_STATUS_REWARDED)
                    herbQuests = herbQuests + 1;
                if (player->GetQuestStatus(WE_QUEST_FIREBLOOM) == QUEST_STATUS_REWARDED)
                    herbQuests = herbQuests + 1;                    
                if (player->GetQuestStatus(WE_QUEST_PURPLE_LOTUS) == QUEST_STATUS_REWARDED)
                    herbQuests = herbQuests + 1;
                if (herbQuests == 0)
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
                
                if (player->GetQuestStatus(WE_QUEST_PEACEBLOOM) == QUEST_STATUS_REWARDED)
                    herbQuests = herbQuests + 1;
                if (player->GetQuestStatus(WE_QUEST_FIREBLOOM) == QUEST_STATUS_REWARDED)
                    herbQuests = herbQuests + 1;                    
                if (player->GetQuestStatus(WE_QUEST_PURPLE_LOTUS) == QUEST_STATUS_REWARDED)
                    herbQuests = herbQuests + 1;
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

class gobject_ipp_herbs_stage_3 : public GameObjectScript
{
public:
    gobject_ipp_herbs_stage_3() : GameObjectScript("gobject_ipp_herbs_stage_3") { }

    struct gobject_ipp_herbs_stage_3AI: GameObjectAI
    {
        explicit gobject_ipp_herbs_stage_3AI(GameObject* object) : GameObjectAI(object) { };

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
                
                if (player->GetQuestStatus(WE_QUEST_PEACEBLOOM) == QUEST_STATUS_REWARDED)
                    herbQuests = herbQuests + 1;
                if (player->GetQuestStatus(WE_QUEST_FIREBLOOM) == QUEST_STATUS_REWARDED)
                    herbQuests = herbQuests + 1;                    
                if (player->GetQuestStatus(WE_QUEST_PURPLE_LOTUS) == QUEST_STATUS_REWARDED)
                    herbQuests = herbQuests + 1;
                if (herbQuests == 2)
                    return true;
            }

            return false;
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ipp_herbs_stage_3AI(object);
    }
};

class gobject_ipp_herbs_stage_5 : public GameObjectScript
{
public:
    gobject_ipp_herbs_stage_5() : GameObjectScript("gobject_ipp_herbs_stage_5") { }

    struct gobject_ipp_herbs_stage_5AI: GameObjectAI
    {
        explicit gobject_ipp_herbs_stage_5AI(GameObject* object) : GameObjectAI(object) { };

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
                
                if (player->GetQuestStatus(WE_QUEST_PEACEBLOOM) == QUEST_STATUS_REWARDED)
                    herbQuests = herbQuests + 1;
                if (player->GetQuestStatus(WE_QUEST_FIREBLOOM) == QUEST_STATUS_REWARDED)
                    herbQuests = herbQuests + 1;                    
                if (player->GetQuestStatus(WE_QUEST_PURPLE_LOTUS) == QUEST_STATUS_REWARDED)
                    herbQuests = herbQuests + 1;
                if (herbQuests == 3)
                    return true;
            }

            return false;
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ipp_herbs_stage_5AI(object);
    }
};

void AddSC_we_scripts()
{
    new gobject_ipp_leather_stage_0();
    new gobject_ipp_leather_stage_1();
    new gobject_ipp_leather_stage_3();
    new gobject_ipp_leather_stage_5();
    new gobject_ipp_herbs_stage_0();
    new gobject_ipp_herbs_stage_1();
    new gobject_ipp_herbs_stage_3();
    new gobject_ipp_herbs_stage_5();
}
