#include "IndividualProgression.h"
#include "WorldState.h"

class npc_ipp_bwl : public CreatureScript
{
public:
    npc_ipp_bwl() : CreatureScript("npc_ipp_bwl") { }

    struct npc_ipp_bwlAI: ScriptedAI
    {
        explicit npc_ipp_bwlAI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster() || !sIndividualProgression->enabled)
            {
                return true;
            }
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            return sIndividualProgression->hasPassedProgression(target, PROGRESSION_ONYXIA);
        }

        protected:
            void MoveInLineOfSight(Unit* who) override
            {
                if (!who)
                    return;

                if (sIndividualProgression->enabled
                    && who->IsPlayer()
                    && !sIndividualProgression->hasPassedProgression(who->ToPlayer(), PROGRESSION_ONYXIA))
                {
                    return;
                }

                ScriptedAI::MoveInLineOfSight(who);
            }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_bwlAI(creature);
    }
};

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

class gobject_ipp_we : public GameObjectScript
{
public:
    gobject_ipp_we() : GameObjectScript("gobject_ipp_we") { }

    struct gobject_ipp_weAI: GameObjectAI
    {
        explicit gobject_ipp_weAI(GameObject* object) : GameObjectAI(object) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster() || !sIndividualProgression->enabled)
            {
                return true;
            }
            
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            
            if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_PRE_AQ))
            {
                return sIndividualProgression->isBeforeProgression(target, PROGRESSION_AQ);
            }
            else
            {
                return sIndividualProgression->hasPassedProgression(target, PROGRESSION_BLACKWING_LAIR);
            }
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ipp_weAI(object);
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
            
            if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_PRE_AQ))
            {
                return sIndividualProgression->isBeforeProgression(target, PROGRESSION_AQ);
            }
            else
            {
                return sIndividualProgression->hasPassedProgression(target, PROGRESSION_BLACKWING_LAIR);
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
            
            if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_TBC_TIER_5))
            {
                return target->GetLevel() == IP_LEVEL_TBC;
            } 
            else if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_AQ))
            {
                return sIndividualProgression->isBeforeProgression(target, PROGRESSION_NAXX40);
            }
            else
            {
                return false;
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

class gobject_ipp_naxx40_pre_wotlk : public GameObjectScript
{
public:
    gobject_ipp_naxx40_pre_wotlk() : GameObjectScript("gobject_ipp_naxx40_pre_wotlk") { }

    struct gobject_ipp_naxx40_pre_wotlkAI: GameObjectAI
    {
        explicit gobject_ipp_naxx40_pre_wotlkAI(GameObject* object) : GameObjectAI(object) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster() || !sIndividualProgression->enabled)
            {
                return true;
            }
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            return (sIndividualProgression->hasPassedProgression(target, PROGRESSION_AQ) && sIndividualProgression->isBeforeProgression(target, PROGRESSION_TBC_TIER_5));
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ipp_naxx40_pre_wotlkAI(object);
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
            return sIndividualProgression->isBeforeProgression(target, PROGRESSION_NAXX40);
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
            return sIndividualProgression->hasPassedProgression(target, PROGRESSION_NAXX40);
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
            return sIndividualProgression->hasPassedProgression(target, PROGRESSION_TBC_TIER_3);
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ipp_tbc_t4AI(object);
    }
};

class gobject_ipp_tbc_t5 : public GameObjectScript
{
public:
    gobject_ipp_tbc_t5() : GameObjectScript("gobject_ipp_tbc_t5") { }

    struct gobject_ipp_tbc_t5AI: GameObjectAI
    {
        explicit gobject_ipp_tbc_t5AI(GameObject* object) : GameObjectAI(object) { };

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
        return new gobject_ipp_tbc_t5AI(object);
    }
};

class gobject_ipp_pre_wotlk : public GameObjectScript
{
public:
    gobject_ipp_pre_wotlk() : GameObjectScript("gobject_ipp_pre_wotlk") { }

    struct gobject_ipp_pre_wotlkAI: GameObjectAI
    {
        explicit gobject_ipp_pre_wotlkAI(GameObject* object) : GameObjectAI(object) { };

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

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ipp_pre_wotlkAI(object);
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

class gobject_ipp_wotlk_ulduar : public GameObjectScript
{
public:
    gobject_ipp_wotlk_ulduar() : GameObjectScript("gobject_ipp_wotlk_ulduar") { }

    struct gobject_ipp_wotlk_ulduarAI: GameObjectAI
    {
        explicit gobject_ipp_wotlk_ulduarAI(GameObject* object) : GameObjectAI(object) { };

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

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ipp_wotlk_ulduarAI(object);
    }
};

class gobject_ipp_wotlk_totc : public GameObjectScript
{
public:
    gobject_ipp_wotlk_totc() : GameObjectScript("gobject_ipp_wotlk_totc") { }

    struct gobject_ipp_wotlk_totcAI: GameObjectAI
    {
        explicit gobject_ipp_wotlk_totcAI(GameObject* object) : GameObjectAI(object) { };

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

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ipp_wotlk_totcAI(object);
    }
};

class gobject_ipp_wotlk_icc : public GameObjectScript
{
public:
    gobject_ipp_wotlk_icc() : GameObjectScript("gobject_ipp_wotlk_icc") { }

    struct gobject_ipp_wotlk_iccAI: GameObjectAI
    {
        explicit gobject_ipp_wotlk_iccAI(GameObject* object) : GameObjectAI(object) { };

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

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ipp_wotlk_iccAI(object);
    }
};

class gobject_ipp_wotlk_rubysanctum : public GameObjectScript
{
public:
    gobject_ipp_wotlk_rubysanctum() : GameObjectScript("gobject_ipp_wotlk_rubysanctum") { }

    struct gobject_ipp_wotlk_rubysanctumAI: GameObjectAI
    {
        explicit gobject_ipp_wotlk_rubysanctumAI(GameObject* object) : GameObjectAI(object) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster() || !sIndividualProgression->enabled)
            {
                return true;
            }
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            return sIndividualProgression->hasPassedProgression(target, PROGRESSION_WOTLK_TIER_4);
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_ipp_wotlk_rubysanctumAI(object);
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

        protected:
            void MoveInLineOfSight(Unit* who) override
            {
                if (!who)
                    return;

                if (sIndividualProgression->enabled
                    && who->IsPlayer()
                    && !sIndividualProgression->hasPassedProgression(who->ToPlayer(), PROGRESSION_BLACKWING_LAIR))
                {
                    return;
                }

                ScriptedAI::MoveInLineOfSight(who);
            }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_preaqAI(creature);
    }
};

class npc_ipp_we_recruiters : public CreatureScript
{
public:
    npc_ipp_we_recruiters() : CreatureScript("npc_ipp_we_recruiters") { }

    struct npc_ipp_we_recruitersAI: ScriptedAI
    {
        explicit npc_ipp_we_recruitersAI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster() || !sIndividualProgression->enabled)
            {
                return true;
            }
			
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
			
            if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_BLACKWING_LAIR) && sIndividualProgression->isBeforeProgression(target, PROGRESSION_PRE_AQ))
                return true;

            return false;			
        }

        protected:
            void MoveInLineOfSight(Unit* who) override
            {
                if (!who)
                    return;

                if (!sIndividualProgression->enabled || !who->IsPlayer())
                {
                    ScriptedAI::MoveInLineOfSight(who);
                    return;
                }
                   
                Player* player = who->ToPlayer();
                if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_BLACKWING_LAIR) 
                    && sIndividualProgression->isBeforeProgression(player, PROGRESSION_PRE_AQ))
                    ScriptedAI::MoveInLineOfSight(who);

                return;
            }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_we_recruitersAI(creature);
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
                return sIndividualProgression->isBeforeProgression(target, PROGRESSION_AQ);
            }
            else
            {
                return sIndividualProgression->hasPassedProgression(target, PROGRESSION_BLACKWING_LAIR);
            }			
        }

        protected:
            void MoveInLineOfSight(Unit* who) override
            {
                if (!who)
                    return;

                if (!sIndividualProgression->enabled || !who->IsPlayer())
                {
                    ScriptedAI::MoveInLineOfSight(who);
                    return;
                }
                   
                Player* player = who->ToPlayer();
                if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_AQ))
                {
                    if (sIndividualProgression->isBeforeProgression(player, PROGRESSION_AQ))
                        ScriptedAI::MoveInLineOfSight(who);
                }
                else if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_BLACKWING_LAIR))
                    ScriptedAI::MoveInLineOfSight(who);

                return;
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
            return sIndividualProgression->hasPassedProgression(target, PROGRESSION_PRE_AQ);
        }

        protected:
            void MoveInLineOfSight(Unit* who) override
            {
                if (!who)
                    return;

                if (sIndividualProgression->enabled
                    && who->IsPlayer()
                    && !sIndividualProgression->hasPassedProgression(who->ToPlayer(), PROGRESSION_PRE_AQ))
                {
                    return;
                }

                ScriptedAI::MoveInLineOfSight(who);
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
            
            if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_AQ))
            {
                return false;
            }
            else if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_BLACKWING_LAIR))
            {
                return true;
            }

            return false;
        }

        protected:
            void MoveInLineOfSight(Unit* who) override
            {
                if (!who)
                    return;

                if (sIndividualProgression->enabled
                    && who->IsPlayer()
                    && sIndividualProgression->hasPassedProgression(who->ToPlayer(), PROGRESSION_BLACKWING_LAIR)
                    && !sIndividualProgression->hasPassedProgression(who->ToPlayer(), PROGRESSION_AQ))
                {
                    return;
                }

                ScriptedAI::MoveInLineOfSight(who);
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
            
            if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_AQ))
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
			
            if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_TBC_TIER_5))
            {
                return target->GetLevel() == IP_LEVEL_TBC;
            } 
            else if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_AQ))
            {
                return sIndividualProgression->isBeforeProgression(target, PROGRESSION_NAXX40);
            }  
            else
            {
                return false;
            }			
        }

        protected:
            void MoveInLineOfSight(Unit* who) override
            {
                if (!who)
                    return;

                if (!sIndividualProgression->enabled || !who->IsPlayer())
                {
                    ScriptedAI::MoveInLineOfSight(who);
                    return;
                }
                   
                Player* player = who->ToPlayer();
                if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5))
                {
                    if (player->GetLevel() == IP_LEVEL_TBC)
                        ScriptedAI::MoveInLineOfSight(who);
                }
                else if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_AQ))
                {
                    if (sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40))
                        ScriptedAI::MoveInLineOfSight(who);
                }

                return;
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

        protected:
            void MoveInLineOfSight(Unit* who) override
            {
                if (!who)
                    return;

                if (sIndividualProgression->enabled
                    && who->IsPlayer()
                    && !sIndividualProgression->isBeforeProgression(who->ToPlayer(), PROGRESSION_AQ))
                {
                    return;
                }

                ScriptedAI::MoveInLineOfSight(who);
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

        protected:
            void MoveInLineOfSight(Unit* who) override
            {
                if (!who)
                    return;

                if (sIndividualProgression->enabled
                    && who->IsPlayer()
                    && !sIndividualProgression->hasPassedProgression(who->ToPlayer(), PROGRESSION_AQ))
                {
                    return;
                }

                ScriptedAI::MoveInLineOfSight(who);
            }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_naxx40AI(creature);
    }
};

class npc_ipp_pvp_vendor_pre_tbc : public CreatureScript
{
public:
    npc_ipp_pvp_vendor_pre_tbc() : CreatureScript("npc_ipp_pvp_vendor_pre_tbc") { }

    struct npc_ipp_pvp_vendor_pre_tbcAI: ScriptedAI
    {
        explicit npc_ipp_pvp_vendor_pre_tbcAI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster() || !sIndividualProgression->enabled)
            {
                return true;
            }
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            return sIndividualProgression->hasPassedProgression(target, PROGRESSION_ONYXIA) && sIndividualProgression->isBeforeProgression(target, PROGRESSION_NAXX40);
        }

        protected:
            void MoveInLineOfSight(Unit* who) override
            {
                if (!who)
                    return;

                if (!sIndividualProgression->enabled || !who->IsPlayer())
                {
                    ScriptedAI::MoveInLineOfSight(who);
                    return;
                }
                
                Player* player = who->ToPlayer();
                if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_ONYXIA)
                    && sIndividualProgression->isBeforeProgression(player, PROGRESSION_NAXX40))
                    ScriptedAI::MoveInLineOfSight(who);

                return;
            }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_pvp_vendor_pre_tbcAI(creature);
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
            return sIndividualProgression->isBeforeProgression(target,PROGRESSION_NAXX40);
        }

        protected:
            void MoveInLineOfSight(Unit* who) override
            {
                if (!who)
                    return;

                if (sIndividualProgression->enabled
                    && who->IsPlayer()
                    && !sIndividualProgression->isBeforeProgression(who->ToPlayer(), PROGRESSION_NAXX40))
                {
                    return;
                }

                ScriptedAI::MoveInLineOfSight(who);
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
            return sIndividualProgression->hasPassedProgression(target, PROGRESSION_NAXX40);
        }

        protected:
            void MoveInLineOfSight(Unit* who) override
            {
                if (!who)
                    return;

                if (sIndividualProgression->enabled
                    && who->IsPlayer()
                    && !sIndividualProgression->hasPassedProgression(who->ToPlayer(), PROGRESSION_NAXX40))
                {
                    return;
                }

                ScriptedAI::MoveInLineOfSight(who);
            }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_tbcAI(creature);
    }
};

class npc_ipp_tbc_class_trainer : public CreatureScript
{
public:
    npc_ipp_tbc_class_trainer() : CreatureScript("npc_ipp_tbc_class_trainer") { }

    struct npc_ipp_tbc_class_trainerAI: ScriptedAI
    {
        explicit npc_ipp_tbc_class_trainerAI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster() || !sIndividualProgression->enabled)
            {
                return true;
            }
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            int playerClass = target->getClass();
            return sIndividualProgression->hasPassedProgression(target, PROGRESSION_NAXX40) || playerClass == 2 || playerClass == 7; // class 2 = Paladin, class 7 = Shaman
        }

        protected:
            void MoveInLineOfSight(Unit* who) override
            {
                if (!who)
                    return;

                if (!sIndividualProgression->enabled || !who->IsPlayer())
                {
                    ScriptedAI::MoveInLineOfSight(who);
                    return;
                }
                   
                Player* player = who->ToPlayer();
                if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_NAXX40)
                    || player->getRace(true) >= 10) // 10 = Blood Elf, 11 = Draenei
                    ScriptedAI::MoveInLineOfSight(who);

                return;
            }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_tbc_class_trainerAI(creature);
    }
};

class npc_ipp_tbc_pre_wotlk : public CreatureScript
{
public:
    npc_ipp_tbc_pre_wotlk() : CreatureScript("npc_ipp_tbc_pre_wotlk") { }

    struct npc_ipp_tbc_pre_wotlkAI: ScriptedAI
    {
        explicit npc_ipp_tbc_pre_wotlkAI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster() || !sIndividualProgression->enabled)
            {
                return true;
            }
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            return sIndividualProgression->hasPassedProgression(target, PROGRESSION_NAXX40) && sIndividualProgression->isBeforeProgression(target, PROGRESSION_TBC_TIER_5);
        }

        protected:
            void MoveInLineOfSight(Unit* who) override
            {
                if (!who)
                    return;

                if (sIndividualProgression->enabled
                    && who->IsPlayer()
                    && !sIndividualProgression->hasPassedProgression(who->ToPlayer(), PROGRESSION_NAXX40)
                    && !sIndividualProgression->isBeforeProgression(who->ToPlayer(), PROGRESSION_TBC_TIER_5))
                {
                    return;
                }

                ScriptedAI::MoveInLineOfSight(who);
            }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_tbc_pre_wotlkAI(creature);
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

        protected:
            void MoveInLineOfSight(Unit* who) override
            {
                if (!who)
                    return;

                if (sIndividualProgression->enabled
                    && who->IsPlayer()
                    && !sIndividualProgression->isBeforeProgression(who->ToPlayer(), PROGRESSION_TBC_TIER_3))
                {
                    return;
                }

                ScriptedAI::MoveInLineOfSight(who);
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

        protected:
            void MoveInLineOfSight(Unit* who) override
            {
                if (!who)
                    return;

                if (sIndividualProgression->enabled
                    && who->IsPlayer()
                    && !sIndividualProgression->hasPassedProgression(who->ToPlayer(), PROGRESSION_TBC_TIER_3))
                {
                    return;
                }

                ScriptedAI::MoveInLineOfSight(who);
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

        protected:
            void MoveInLineOfSight(Unit* who) override
            {
                if (!who)
                    return;

                if (sIndividualProgression->enabled
                    && who->IsPlayer()
                    && !sIndividualProgression->hasPassedProgression(who->ToPlayer(), PROGRESSION_TBC_TIER_4))
                {
                    return;
                }

                ScriptedAI::MoveInLineOfSight(who);
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

        protected:
            void MoveInLineOfSight(Unit* who) override
            {
                if (!who)
                    return;

                if (sIndividualProgression->enabled
                    && who->IsPlayer()
                    && !sIndividualProgression->hasPassedProgression(who->ToPlayer(), PROGRESSION_TBC_TIER_5))
                {
                    return;
                }

                ScriptedAI::MoveInLineOfSight(who);
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
        
        protected:
            void MoveInLineOfSight(Unit* who) override
            {
                if (!who)
                    return;

                if (sIndividualProgression->enabled
                    && who->IsPlayer()
                    && !sIndividualProgression->hasPassedProgression(who->ToPlayer(), PROGRESSION_WOTLK_TIER_1))
                {
                    return;
                }

                ScriptedAI::MoveInLineOfSight(who);
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

        protected:
            void MoveInLineOfSight(Unit* who) override
            {
                if (!who)
                    return;

                if (sIndividualProgression->enabled
                    && who->IsPlayer()
                    && !sIndividualProgression->hasPassedProgression(who->ToPlayer(), PROGRESSION_WOTLK_TIER_2))
                {
                    return;
                }

                ScriptedAI::MoveInLineOfSight(who);
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

        protected:
            void MoveInLineOfSight(Unit* who) override
            {
                if (!who)
                    return;

                if (sIndividualProgression->enabled
                    && who->IsPlayer()
                    && !sIndividualProgression->hasPassedProgression(who->ToPlayer(), PROGRESSION_WOTLK_TIER_3))
                {
                    return;
                }

                ScriptedAI::MoveInLineOfSight(who);
            }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_wotlk_iccAI(creature);
    }
};

class npc_ipp_wotlk_rubysanctum : public CreatureScript
{
public:
    npc_ipp_wotlk_rubysanctum() : CreatureScript("npc_ipp_wotlk_rubysanctum") { }

    struct npc_ipp_wotlk_rubysanctumAI: ScriptedAI
    {
        explicit npc_ipp_wotlk_rubysanctumAI(Creature* creature) : ScriptedAI(creature) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster() || !sIndividualProgression->enabled)
            {
                return true;
            }
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            return sIndividualProgression->hasPassedProgression(target, PROGRESSION_WOTLK_TIER_4);
        }

        protected:
            void MoveInLineOfSight(Unit* who) override
            {
                if (!who)
                    return;

                if (sIndividualProgression->enabled
                    && who->IsPlayer()
                    && !sIndividualProgression->hasPassedProgression(who->ToPlayer(), PROGRESSION_WOTLK_TIER_4))
                {
                    return;
                }

                ScriptedAI::MoveInLineOfSight(who);
            }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_wotlk_rubysanctumAI(creature);
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

        protected:
            void MoveInLineOfSight(Unit* who) override
            {
                if (!who)
                    return;

                if (sIndividualProgression->enabled
                    && who->IsPlayer()
                    && !sIndividualProgression->hasPassedProgression(who->ToPlayer(), PROGRESSION_BLACKWING_LAIR))
                {
                    return;
                }

                ScriptedAI::MoveInLineOfSight(who);
            }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_ipp_ds2AI(creature);
    }
};

class npc_training_dummy_ipp_wotlk : public CreatureScript
{
public:
    npc_training_dummy_ipp_wotlk() : CreatureScript("npc_training_dummy_ipp_wotlk") { }

    struct npc_training_dummy_ipp_wotlkAI : ScriptedAI
    {
        /*explicit*/ npc_training_dummy_ipp_wotlkAI(Creature* creature) : ScriptedAI(creature)
        {
            me->SetCombatMovement(false);
            me->ApplySpellImmune(0, 0, 98, true); // ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true)
        }

        uint32 resetTimer;

        void Reset() override
        {
            me->CastSpell(me, 61204, true); // CastSpell(me, SPELL_STUN_PERMANENT, true)
            resetTimer = 5000;
        }

        void EnterEvadeMode(EvadeReason why) override
        {
            if (!_EnterEvadeMode(why))
                return;

            Reset();
        }

        void DamageTaken(Unit*, uint32& damage, DamageEffectType, SpellSchoolMask) override
        {
            resetTimer = 5000;
            damage = 0;
        }

        void UpdateAI(uint32 diff) override
        {
            if (!UpdateVictim())
                return;

            if (resetTimer <= diff)
            {
                EnterEvadeMode(EVADE_REASON_NO_HOSTILES);
                resetTimer = 5000;
            }
            else
                resetTimer -= diff;
        }

        void MoveInLineOfSight(Unit* /*who*/) override { }

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
        return new npc_training_dummy_ipp_wotlkAI(creature);
    }
};

// Add all scripts in one
void AddSC_mod_individual_progression_awareness()
{
    new gobject_ipp_preaq();          // Wanted poster Cenarion Hold
    new gobject_ipp_we();             // War Effort supplies in cities
    new gobject_ipp_aqwar();          // AQ war crystals
    new gobject_ipp_si();             // Scourge Invasion
    new gobject_ipp_naxx40();
    new gobject_ipp_naxx40_pre_wotlk();
    new gobject_ipp_pre_tbc();        // Stormwind pvp room
    new gobject_ipp_tbc();
    new gobject_ipp_tbc_t4();
    new gobject_ipp_tbc_t5();
    new gobject_ipp_pre_wotlk();
    new gobject_ipp_wotlk();
    new gobject_ipp_wotlk_ulduar();
    new gobject_ipp_wotlk_totc();
    new gobject_ipp_wotlk_icc();
    new gobject_ipp_wotlk_rubysanctum();
    new npc_ipp_bwl();
    new npc_ipp_pvp_vendor_pre_tbc(); // Vanilla pvp vendors only visible after Onyxia and before TBC 
    new npc_ipp_preaq();              // Cenarion Hold NPCs
    new npc_ipp_we_recruiters();      // War Effort recruiters
    new npc_ipp_we();                 // War Effort NPCs in cities
	new npc_ipp_aq();
    new npc_ipp_aqwewar();            // only visible during AQ war effort and AQ war
    new npc_ipp_aqwar();              // only visible during AQ war
    new npc_ipp_si();                 // Scourge Invasion
    new npc_ipp_pre_naxx40();         // Scourge Invasion
    new npc_ipp_naxx40();
    new npc_ipp_pre_tbc();            // NPCS only visible before TBC
    new npc_ipp_tbc();
    new npc_ipp_tbc_class_trainer();
    new npc_ipp_tbc_pre_t4();
    new npc_ipp_tbc_t4();
    new npc_ipp_tbc_t5();
    new npc_ipp_tbc_pre_wotlk();
    new npc_ipp_wotlk();
    new npc_ipp_wotlk_ulduar();
    new npc_ipp_wotlk_totc();
    new npc_ipp_wotlk_icc();
    new npc_ipp_wotlk_rubysanctum();
    new npc_ipp_ds2();
    new npc_training_dummy_ipp_wotlk();
}
