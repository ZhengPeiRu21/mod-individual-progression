#include "IndividualProgression.h"
#include "WorldState.h"

class gobject_ipp_preaq : public GameObjectScript
{
public:
    gobject_ipp_preaq() : GameObjectScript("gobject_ipp_preaq") { }

    struct gobject_ipp_preaqAI: GameObjectAI
    {
        explicit gobject_ipp_preaqAI(GameObject* object) : GameObjectAI(object) { };

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

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ipp_preaqAI(object);
    }
};

class gobject_ipp_aqwar : public GameObjectScript
{
public:
    gobject_ipp_aqwar() : GameObjectScript("gobject_ipp_aqwar") { }

    struct gobject_ipp_aqwarAI: GameObjectAI
    {
        explicit gobject_ipp_aqwarAI(GameObject* object) : GameObjectAI(object) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster())
            {
                return true;
            }
            
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            
            if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_AQ_WAR))
            {
                return sIndividualProgression->isBeforeProgression(target, PROGRESSION_AQ_WAR);
            }
            else
            {
                return sIndividualProgression->hasPassedProgression(target, PROGRESSION_PRE_AQ);
            }
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ipp_aqwarAI(object);
    }
};

class gobject_ipp_si : public GameObjectScript
{
public:
    gobject_ipp_si() : GameObjectScript("gobject_ipp_si") { }

    struct gobject_ipp_siAI: GameObjectAI
    {
        explicit gobject_ipp_siAI(GameObject* object) : GameObjectAI(object) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster())
            {
                return true;
            }
            
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            
            if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_NAXX40))
            {
                return sIndividualProgression->isBeforeProgression(target, PROGRESSION_NAXX40);
            }
            else
            {
                return sIndividualProgression->hasPassedProgression(target, PROGRESSION_AQ);
            }
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ipp_siAI(object);
    }
};

class gobject_ipp_naxx40 : public GameObjectScript
{
public:
    gobject_ipp_naxx40() : GameObjectScript("gobject_ipp_naxx40") { }

    struct gobject_ipp_naxx40AI: GameObjectAI
    {
        explicit gobject_ipp_naxx40AI(GameObject* object) : GameObjectAI(object) { };

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

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ipp_naxx40AI(object);
    }
};

class gobject_ipp_pre_tbc : public GameObjectScript
{
public:
    gobject_ipp_pre_tbc() : GameObjectScript("gobject_ipp_pre_tbc") { }

    struct gobject_ipp_pre_tbcAI: GameObjectAI
    {
        explicit gobject_ipp_pre_tbcAI(GameObject* object) : GameObjectAI(object) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster() || !sIndividualProgression->enabled)
            {
                return true;
            }
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            return sIndividualProgression->isBeforeProgression(target, PROGRESSION_PRE_TBC);
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ipp_pre_tbcAI(object);
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
            return sIndividualProgression->hasPassedProgression(target, PROGRESSION_PRE_TBC);
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ipp_tbcAI(object);
    }
};

class gobject_ipp_tbc_t4 : public GameObjectScript
{
public:
    gobject_ipp_tbc_t4() : GameObjectScript("gobject_ipp_tbc_t4") { }

    struct gobject_ipp_tbc_t4AI: GameObjectAI
    {
        explicit gobject_ipp_tbc_t4AI(GameObject* object) : GameObjectAI(object) { };

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

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ipp_tbc_t4AI(object);
    }
};

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

class npc_ipp_preaq : public CreatureScript
{
public:
    npc_ipp_preaq() : CreatureScript("npc_ipp_preaq") { }

    struct npc_ipp_preaqAI: ScriptedAI
    {
        explicit npc_ipp_preaqAI(Creature* creature) : ScriptedAI(creature) { };

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
        return new npc_ipp_preaqAI(creature);
    }
};

class npc_ipp_we : public CreatureScript
{
public:
    npc_ipp_we() : CreatureScript("npc_ipp_we") { }

    struct npc_ipp_weAI: ScriptedAI
    {
        explicit npc_ipp_weAI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster() || !sIndividualProgression->enabled)
            {
                return true;
            }
			
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
			
            if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_PRE_AQ))
            {
                return sIndividualProgression->isBeforeProgression(target, PROGRESSION_PRE_AQ);
            }
            else
            {
                return sIndividualProgression->hasPassedProgression(target, PROGRESSION_BLACKWING_LAIR);
            }			
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_weAI(creature);
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
            return sIndividualProgression->hasPassedProgression(target, PROGRESSION_AQ_WAR);
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_aqAI(creature);
    }
};

class npc_ipp_aqwewar : public CreatureScript
{
public:
    npc_ipp_aqwewar() : CreatureScript("npc_ipp_aqwewar") { }

    struct npc_ipp_aqwewarAI: ScriptedAI
    {
        explicit npc_ipp_aqwewarAI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster())
            {
                return true;
            }
            
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            
            if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_AQ_WAR))
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

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_aqwewarAI(creature);
    }
};

class npc_ipp_aqwar : public CreatureScript
{
public:
    npc_ipp_aqwar() : CreatureScript("npc_ipp_aqwar") { }

    struct npc_ipp_aqwarAI: ScriptedAI
    {
        explicit npc_ipp_aqwarAI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster())
            {
                return true;
            }
            
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            
            if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_AQ_WAR))
            {
                return false;
            }
            else if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_PRE_AQ))
            {
                return true;
            }

            return false;
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_aqwarAI(creature);
    }
};

class npc_ipp_si : public CreatureScript
{
public:
    npc_ipp_si() : CreatureScript("npc_ipp_si") { }

    struct npc_ipp_siAI: ScriptedAI
    {
        explicit npc_ipp_siAI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster())
            {
                return true;
            }
			
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
			
            if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_NAXX40))
            {
                return sIndividualProgression->isBeforeProgression(target, PROGRESSION_NAXX40);
            }
            else
            {
                return sIndividualProgression->hasPassedProgression(target, PROGRESSION_AQ);
            }			
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_siAI(creature);
    }
};

class npc_ipp_pre_naxx40 : public CreatureScript
{
public:
    npc_ipp_pre_naxx40() : CreatureScript("npc_ipp_pre_naxx40") { }

    struct npc_ipp_pre_naxx40AI: ScriptedAI
    {
        explicit npc_ipp_pre_naxx40AI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster() || !sIndividualProgression->enabled)
            {
                return true;
            }
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            return sIndividualProgression->isBeforeProgression(target, PROGRESSION_AQ);
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_pre_naxx40AI(creature);
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

class npc_ipp_pre_tbc : public CreatureScript
{
public:
    npc_ipp_pre_tbc() : CreatureScript("npc_ipp_pre_tbc") { }

    struct npc_ipp_pre_tbcAI: ScriptedAI
    {
        explicit npc_ipp_pre_tbcAI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster() || !sIndividualProgression->enabled)
            {
                return true;
            }
            
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());            
            return sIndividualProgression->isBeforeProgression(target,PROGRESSION_PRE_TBC);
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_pre_tbcAI(creature);
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
            return sIndividualProgression->hasPassedProgression(target, PROGRESSION_PRE_TBC);
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_tbcAI(creature);
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

class npc_ipp_pre_wotlk : public CreatureScript
{
public:
    npc_ipp_pre_wotlk() : CreatureScript("npc_ipp_pre_wotlk") { }

    struct npc_ipp_pre_wotlkAI: ScriptedAI
    {
        explicit npc_ipp_pre_wotlkAI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster() || !sIndividualProgression->enabled)
            {
                return true;
            }
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            return sIndividualProgression->isBeforeProgression(target, PROGRESSION_TBC_TIER_5);
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_pre_wotlkAI(creature);
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

// Add all scripts in one
void AddSC_mod_individual_progression_awareness()
{
    new gobject_ipp_preaq();          // Wanted poster Cenarion Hold
    new gobject_ipp_aqwar();          // AQ war crystals
    new gobject_ipp_si();             // Scourge Invasion
    new gobject_ipp_naxx40();
    new gobject_ipp_pre_tbc();        // Stormwind pvp room
    new gobject_ipp_tbc();
    new gobject_ipp_tbc_t4();         // Shattered Sun
    new gobject_ipp_wotlk();
    new npc_ipp_preaq();              // Cenarion Hold NPCs
    new npc_ipp_we();                 // War Effort NPCs in cities
	new npc_ipp_aq();
    new npc_ipp_aqwewar();            // only visible during AQ war effort and AQ war
    new npc_ipp_aqwar();              // only visible during AQ war
    new npc_ipp_si();                 // Scourge Invasion
    new npc_ipp_pre_naxx40();         // Scourge Invasion
    new npc_ipp_naxx40();
    new npc_ipp_pre_tbc();            // Vanilla pvp vendors
    new npc_ipp_tbc();
    new npc_ipp_tbc_pre_t4();
    new npc_ipp_tbc_t4();
    new npc_ipp_pre_wotlk();
    new npc_ipp_wotlk();
    new npc_ipp_wotlk_ulduar();
    new npc_ipp_wotlk_totc();
    new npc_ipp_wotlk_icc();
    new npc_ipp_ds2();
}
