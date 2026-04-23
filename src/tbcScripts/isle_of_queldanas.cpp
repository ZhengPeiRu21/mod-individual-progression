#include "IndividualProgression.h"
#include "WorldState.h"

class gobject_ioq_before_P2 : public GameObjectScript
{
public:
    gobject_ioq_before_P2() : GameObjectScript("gobject_ioq_before_P2") { }

    struct gobject_ioq_before_P2AI: GameObjectAI
    {
        explicit gobject_ioq_before_P2AI(GameObject* object) : GameObjectAI(object) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster())
                return true;

            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());

            if (!target)
                return false;

            if (target->GetReputationRank(FACTION_SHATTERED_SUN) < REP_FRIENDLY) 
                return true;
            else
                return false;
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ioq_before_P2AI(object);
    }
};

class gobject_ioq_P2 : public GameObjectScript
{
public:
    gobject_ioq_P2() : GameObjectScript("gobject_ioq_P2") { }

    struct gobject_ioq_P2AI: GameObjectAI
    {
        explicit gobject_ioq_P2AI(GameObject* object) : GameObjectAI(object) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster())
                return true;

            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());

            if (!target)
                return false;

            if (target->GetReputationRank(FACTION_SHATTERED_SUN) >= REP_FRIENDLY)
                return true;
            else
                return false;
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ioq_P2AI(object);
    }
};

class gobject_ioq_before_P3 : public GameObjectScript
{
public:
    gobject_ioq_before_P3() : GameObjectScript("gobject_ioq_before_P3") { }

    struct gobject_ioq_before_P3AI: GameObjectAI
    {
        explicit gobject_ioq_before_P3AI(GameObject* object) : GameObjectAI(object) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster())
                return true;

            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());

            if (!target)
                return false;

            if (target->GetReputationRank(FACTION_SHATTERED_SUN) < REP_HONORED)
                return true;
            else
                return false;
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ioq_before_P3AI(object);
    }
};

class gobject_ioq_P3 : public GameObjectScript
{
public:
    gobject_ioq_P3() : GameObjectScript("gobject_ioq_P3") { }

    struct gobject_ioq_P3AI: GameObjectAI
    {
        explicit gobject_ioq_P3AI(GameObject* object) : GameObjectAI(object) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster())
                return true;

            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());

            if (!target)
                return false;

            if (target->GetReputationRank(FACTION_SHATTERED_SUN) >= REP_HONORED)
                return true;
            else
                return false;
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ioq_P3AI(object);
    }
};

class gobject_ioq_before_P4 : public GameObjectScript
{
public:
    gobject_ioq_before_P4() : GameObjectScript("gobject_ioq_before_P4") { }

    struct gobject_ioq_before_P4AI: GameObjectAI
    {
        explicit gobject_ioq_before_P4AI(GameObject* object) : GameObjectAI(object) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster())
                return true;

            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());

            if (!target)
                return false;

            if (target->GetReputationRank(FACTION_SHATTERED_SUN) < REP_REVERED) 
                return true;
            else
                return false;
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ioq_before_P4AI(object);
    }
};

class gobject_ioq_P4 : public GameObjectScript
{
public:
    gobject_ioq_P4() : GameObjectScript("gobject_ioq_P4") { }

    struct gobject_ioq_P4AI: GameObjectAI
    {
        explicit gobject_ioq_P4AI(GameObject* object) : GameObjectAI(object) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster())
                return true;

            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());

            if (!target)
                return false;

            if (target->GetReputationRank(FACTION_SHATTERED_SUN) >= REP_REVERED) 
                return true;
            else
                return false;
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ioq_P4AI(object);
    }
};

class gobject_ioq_mana_cells : public GameObjectScript
{
public:
    gobject_ioq_mana_cells() : GameObjectScript("gobject_ioq_mana_cells") { }

    struct gobject_ioq_mana_cellsAI: GameObjectAI
    {
        explicit gobject_ioq_mana_cellsAI(GameObject* object) : GameObjectAI(object) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster())
                return true;

            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());

            if (!target)
                return false;

            if (target->GetQuestStatus(QUEST_MANA_CELLS) == QUEST_STATUS_REWARDED)
                return true;
            else
                return false;
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ioq_mana_cellsAI(object);
    }
};

class gobject_ioq_charitable_donation : public GameObjectScript
{
public:
    gobject_ioq_charitable_donation() : GameObjectScript("gobject_ioq_charitable_donation") { }

    struct gobject_ioq_charitable_donationAI: GameObjectAI
    {
        explicit gobject_ioq_charitable_donationAI(GameObject* object) : GameObjectAI(object) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster())
                return true;

            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());

            if (!target)
                return false;

            if (target->GetQuestStatus(QUEST_CHARITABLE_DONATION) == QUEST_STATUS_REWARDED)
                return true;
            else
                return false;
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ioq_charitable_donationAI(object);
    }
};

class gobject_ioq_discovering_roots : public GameObjectScript
{
public:
    gobject_ioq_discovering_roots() : GameObjectScript("gobject_ioq_discovering_roots") { }

    struct gobject_ioq_discovering_rootsAI: GameObjectAI
    {
        explicit gobject_ioq_discovering_rootsAI(GameObject* object) : GameObjectAI(object) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster())
                return true;

            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());

            if (!target)
                return false;

            if (target->GetQuestStatus(QUEST_DISCOVERING_ROOTS) == QUEST_STATUS_REWARDED)
                return true;
            else
                return false;
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ioq_discovering_rootsAI(object);
    }
};

class gobject_ioq_making_ready : public GameObjectScript
{
public:
    gobject_ioq_making_ready() : GameObjectScript("gobject_ioq_making_ready") { }

    struct gobject_ioq_making_readyAI: GameObjectAI
    {
        explicit gobject_ioq_making_readyAI(GameObject* object) : GameObjectAI(object) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster())
                return true;

            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());

            if (!target)
                return false;

            if (target->GetQuestStatus(QUEST_MAKING_READY) == QUEST_STATUS_REWARDED)
                return true;
            else
                return false;
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ioq_making_readyAI(object);
    }
};

class npc_ioq_making_ready : public CreatureScript
{
public:
    npc_ioq_making_ready() : CreatureScript("npc_ioq_making_ready") { }

    struct npc_ioq_making_readyAI: ScriptedAI
    {
        explicit npc_ioq_making_readyAI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster() || !sIndividualProgression->enabled)
                return true;

            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());

            if (!target)
                return false;

            if (target->GetQuestStatus(QUEST_MAKING_READY) == QUEST_STATUS_REWARDED)
                return true;
            else
                return false;
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ioq_making_readyAI(creature);
    }
};

// Add all scripts in one
void AddSC_mod_individual_progression_ioq()
{
    // new gobject_ioq_before_P2();
    new gobject_ioq_before_P3();
    // new gobject_ioq_before_P4();
    new gobject_ioq_P2();
    new gobject_ioq_P3();
    new gobject_ioq_P4();
    new gobject_ioq_mana_cells();
    new gobject_ioq_charitable_donation();
    new gobject_ioq_discovering_roots();
    new gobject_ioq_making_ready();
    new npc_ioq_making_ready();
}
