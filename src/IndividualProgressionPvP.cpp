#include "IndividualProgression.h"
#include "WorldState.h"

class gobject_ipp_pvp_closed : public GameObjectScript
{
public:
    gobject_ipp_pvp_closed() : GameObjectScript("gobject_ipp_pvp_closed") { }

    struct gobject_ipp_pvp_closedAI: GameObjectAI
    {
        explicit gobject_ipp_pvp_closedAI(GameObject* object) : GameObjectAI(object) { };

        bool CanBeSeen(Player const* player) override
        {
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
			uint32 PVP_RANK6_QUEST = 66106;

            if (player->IsGameMaster() || !sIndividualProgression->enabled || sIndividualProgression->isExcludedFromProgression(target) || sIndividualProgression->hasPassedProgression(target, PROGRESSION_PRE_TBC))
            {
                return false;
            }

            if (target->GetQuestStatus(PVP_RANK6_QUEST) == QUEST_STATUS_REWARDED)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ipp_pvp_closedAI(object);
    }
};

class gobject_ipp_pvp_open : public GameObjectScript
{
public:
    gobject_ipp_pvp_open() : GameObjectScript("gobject_ipp_pvp_open") { }

    struct gobject_ipp_pvp_openAI: GameObjectAI
    {
        explicit gobject_ipp_pvp_openAI(GameObject* object) : GameObjectAI(object) { };

        bool CanBeSeen(Player const* player) override
        {
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
			uint32 PVP_RANK6_QUEST = 66106;

            if (player->IsGameMaster() || !sIndividualProgression->enabled || sIndividualProgression->isExcludedFromProgression(target) || sIndividualProgression->hasPassedProgression(target, PROGRESSION_PRE_TBC))
            {
                return true;
            }

            if (target->GetQuestStatus(PVP_RANK6_QUEST) == QUEST_STATUS_REWARDED)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ipp_pvp_openAI(object);
    }
};

class npc_ipp_tbc_pvp : public CreatureScript
{
public:
    npc_ipp_tbc_pvp() : CreatureScript("npc_ipp_tbc_pvp") { }

    struct npc_ipp_tbc_pvpAI: ScriptedAI
    {
        explicit npc_ipp_tbc_pvpAI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster())
            {
                return true;
            }

            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());

            if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_PRE_TBC) && sIndividualProgression->isBeforeProgression(target, PROGRESSION_TBC_TIER_5))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_tbc_pvpAI(creature);
    }
};


class npc_ipp_tbc_S1 : public CreatureScript
{
public:
    npc_ipp_tbc_S1() : CreatureScript("npc_ipp_tbc_S1") { }

    struct npc_ipp_tbc_S1AI: ScriptedAI
    {
        explicit npc_ipp_tbc_S1AI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster())
                return true;

            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());

            if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_PRE_TBC) && sIndividualProgression->isBeforeProgression(target, PROGRESSION_TBC_TIER_5))
            {
                if (sIndividualProgression->tbcArenaSeason == 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_tbc_S1AI(creature);
    }
};

class npc_ipp_tbc_S2 : public CreatureScript
{
public:
    npc_ipp_tbc_S2() : CreatureScript("npc_ipp_tbc_S2") { }

    struct npc_ipp_tbc_S2AI: ScriptedAI
    {
        explicit npc_ipp_tbc_S2AI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster())
                return true;

            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());

            if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_PRE_TBC) && sIndividualProgression->isBeforeProgression(target, PROGRESSION_TBC_TIER_5))
            {
                if (sIndividualProgression->tbcArenaSeason == 2)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_tbc_S2AI(creature);
    }
};

class npc_ipp_tbc_S3 : public CreatureScript
{
public:
    npc_ipp_tbc_S3() : CreatureScript("npc_ipp_tbc_S3") { }

    struct npc_ipp_tbc_S3AI: ScriptedAI
    {
        explicit npc_ipp_tbc_S3AI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster())
                return true;

            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());

            if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_PRE_TBC) && sIndividualProgression->isBeforeProgression(target, PROGRESSION_TBC_TIER_5))
            {
                if (sIndividualProgression->tbcArenaSeason == 3)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_tbc_S3AI(creature);
    }
};

class npc_ipp_tbc_S4 : public CreatureScript
{
public:
    npc_ipp_tbc_S4() : CreatureScript("npc_ipp_tbc_S4") { }

    struct npc_ipp_tbc_S4AI: ScriptedAI
    {
        explicit npc_ipp_tbc_S4AI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster())
                return true;

            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());

            if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_PRE_TBC) && sIndividualProgression->isBeforeProgression(target, PROGRESSION_TBC_TIER_5))
            {
                if (sIndividualProgression->tbcArenaSeason == 4)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_tbc_S4AI(creature);
    }
};

class npc_ipp_wotlk_S5 : public CreatureScript
{
public:
    npc_ipp_wotlk_S5() : CreatureScript("npc_ipp_wotlk_S5") { }

    struct npc_ipp_wotlk_S5AI: ScriptedAI
    {
        explicit npc_ipp_wotlk_S5AI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster())
                return true;

            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());

            if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_TBC_TIER_5))
            {
                if (sIndividualProgression->wotlkArenaSeason == 5)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_wotlk_S5AI(creature);
    }
};

class npc_ipp_wotlk_S6 : public CreatureScript
{
public:
    npc_ipp_wotlk_S6() : CreatureScript("npc_ipp_wotlk_S6") { }

    struct npc_ipp_wotlk_S6AI: ScriptedAI
    {
        explicit npc_ipp_wotlk_S6AI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster())
                return true;

            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());

            if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_TBC_TIER_5))
            {
                if (sIndividualProgression->wotlkArenaSeason == 6)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_wotlk_S6AI(creature);
    }
};

class npc_ipp_wotlk_S7 : public CreatureScript
{
public:
    npc_ipp_wotlk_S7() : CreatureScript("npc_ipp_wotlk_S7") { }

    struct npc_ipp_wotlk_S7AI: ScriptedAI
    {
        explicit npc_ipp_wotlk_S7AI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster())
                return true;

            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());

            if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_TBC_TIER_5))
            {
                if (sIndividualProgression->wotlkArenaSeason == 7)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_wotlk_S7AI(creature);
    }
};

class npc_ipp_wotlk_S8 : public CreatureScript
{
public:
    npc_ipp_wotlk_S8() : CreatureScript("npc_ipp_wotlk_S8") { }

    struct npc_ipp_wotlk_S8AI: ScriptedAI
    {
        explicit npc_ipp_wotlk_S8AI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster())
                return true;

            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());

            if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_TBC_TIER_5))
            {
                if (sIndividualProgression->wotlkArenaSeason == 8)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_wotlk_S8AI(creature);
    }
};

// Add all scripts in one
void AddSC_mod_individual_progression_pvp()
{
    new gobject_ipp_pvp_closed();     // pvp officer doors
    new gobject_ipp_pvp_open();       // pvp officer doors
    new npc_ipp_tbc_pvp();            // only visible during TBC
    new npc_ipp_tbc_S1();
    new npc_ipp_tbc_S2();
    new npc_ipp_tbc_S3();
    new npc_ipp_tbc_S4();
    new npc_ipp_wotlk_S5();
    new npc_ipp_wotlk_S6();
    new npc_ipp_wotlk_S7();
    new npc_ipp_wotlk_S8();
}
