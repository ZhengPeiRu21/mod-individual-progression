#include "IndividualProgression.h"

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

class npc_ipp_tbc_t5 : public CreatureScript
{
public:
    npc_ipp_tbc_t5() : CreatureScript("npc_ipp_tbc_t5") { }

    struct npc_ipp_tbc_t5AI: ScriptedAI
    {
        explicit npc_ipp_tbc_t5AI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster() || !sIndividualProgression->enabled)
            {
                return true;
            }
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            return sIndividualProgression->hasPassedProgression(target, PROGRESSION_TBC_TIER_4);
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_tbc_t5AI(creature);
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

class npc_ipp_wotlk_ulduar : public CreatureScript
{
public:
    npc_ipp_wotlk_ulduar() : CreatureScript("npc_ipp_wotlk_ulduar") { }

    struct npc_ipp_wotlk_ulduarAI: ScriptedAI
    {
        explicit npc_ipp_wotlk_ulduarAI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster() || !sIndividualProgression->enabled)
            {
                return true;
            }
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            return sIndividualProgression->hasPassedProgression(target, PROGRESSION_WOTLK_TIER_1);
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_wotlk_ulduarAI(creature);
    }
};

class npc_ipp_wotlk_totc : public CreatureScript
{
public:
    npc_ipp_wotlk_totc() : CreatureScript("npc_ipp_wotlk_totc") { }

    struct npc_ipp_wotlk_totcAI: ScriptedAI
    {
        explicit npc_ipp_wotlk_totcAI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster() || !sIndividualProgression->enabled)
            {
                return true;
            }
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            return sIndividualProgression->hasPassedProgression(target, PROGRESSION_WOTLK_TIER_2);
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_wotlk_totcAI(creature);
    }
};

class npc_ipp_wotlk_icc : public CreatureScript
{
public:
    npc_ipp_wotlk_icc() : CreatureScript("npc_ipp_wotlk_icc") { }

    struct npc_ipp_wotlk_iccAI: ScriptedAI
    {
        explicit npc_ipp_wotlk_iccAI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster() || !sIndividualProgression->enabled)
            {
                return true;
            }
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            return sIndividualProgression->hasPassedProgression(target, PROGRESSION_WOTLK_TIER_3);
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_wotlk_iccAI(creature);
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

class npc_ipp_ds2 : public CreatureScript
{
public:
    npc_ipp_ds2() : CreatureScript("npc_ipp_ds2") { }

    struct npc_ipp_ds2AI: ScriptedAI
    {
        explicit npc_ipp_ds2AI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster() || !sIndividualProgression->enabled)
            {
                return true;
            }
            if (sIndividualProgression->earlyDungeonSet2)
            {
                return true;
            }
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            return sIndividualProgression->hasPassedProgression(target, PROGRESSION_BLACKWING_LAIR);
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_ds2AI(creature);
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
// Add all scripts in one
void AddSC_mod_individual_progression_awareness()
{
    new npc_ipp_aq();
//    new npc_ipp_naxx40(); // Not used yet
    new npc_ipp_ds2();
    new npc_ipp_tbc();
    new npc_ipp_tbc_t4();
    new npc_ipp_tbc_t5();
    new npc_ipp_tbc_pre_t4();
    new npc_ipp_wotlk();
    new npc_ipp_wotlk_ulduar();
    new npc_ipp_wotlk_totc();
    new npc_ipp_wotlk_icc();
    new gobject_ipp_tbc();
//    new gobject_ipp_wotlk(); // Not used yet
}
