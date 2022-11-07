#include "IndividualProgression.h"
#include "Battlefield.h"
#include "BattlefieldMgr.h"
#include "ScriptedGossip.h"
#include "GameTime.h"

enum eWGqueuenpctext
{
    WG_NPCQUEUE_TEXT_H_NOWAR            = 14775,
    WG_NPCQUEUE_TEXT_H_QUEUE            = 14790,
    WG_NPCQUEUE_TEXT_H_WAR              = 14777,
    WG_NPCQUEUE_TEXT_A_NOWAR            = 14782,
    WG_NPCQUEUE_TEXT_A_QUEUE            = 14791,
    WG_NPCQUEUE_TEXT_A_WAR              = 14781,
    WG_NPCQUEUE_TEXTOPTION_JOIN         = -1850507,

    WG_GOSSIP_MENU_QUEUE                = 10662,
};

enum eWgQueue
{
    EVENT_ARCANIST_BRAEDIN_YELL     = 1,
    EVENT_MAGISTER_SURDIEL_YELL     = 2,
    EVENT_SPELL_FROST_ARMOR         = 3,

    SAY_ARCANIST_BRAEDIN            = 0,
    SAY_MAGISTER_SURDIEL            = 0,

    NPC_ARCANIST_BRAEDIN            = 32169,
    NPC_MAGISTER_SURDIEL            = 32170,

    SPELL_FROST_ARMOR               = 31256
};

class npc_wg_queue_ipp : public CreatureScript
{
public:
    npc_wg_queue_ipp() : CreatureScript("npc_wg_queue") { }

    bool OnGossipHello(Player* player, Creature* creature) override
    {
        if (!sWorld->getBoolConfig(CONFIG_MINIGOB_MANABONK))
            return false;

        if (creature->IsQuestGiver())
            player->PrepareQuestMenu(creature->GetGUID());

        Battlefield* wintergrasp = sBattlefieldMgr->GetBattlefieldByBattleId(BATTLEFIELD_BATTLEID_WG);
        if (!wintergrasp)
            return true;

        if (wintergrasp->IsWarTime())
        {
            AddGossipItemFor(player, WG_GOSSIP_MENU_QUEUE, 0, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
            SendGossipMenuFor(player, wintergrasp->GetDefenderTeam() ? WG_NPCQUEUE_TEXT_H_WAR : WG_NPCQUEUE_TEXT_A_WAR, creature->GetGUID());
        }
        else
        {
            uint32 timer = wintergrasp->GetTimer() / 1000;
            player->SendUpdateWorldState(4354, GameTime::GetGameTime().count() + timer);
            if (timer < 15 * MINUTE)
            {
                AddGossipItemFor(player, WG_GOSSIP_MENU_QUEUE, 0, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
                SendGossipMenuFor(player, wintergrasp->GetDefenderTeam() ? WG_NPCQUEUE_TEXT_H_QUEUE : WG_NPCQUEUE_TEXT_A_QUEUE, creature->GetGUID());
            }
            else
                SendGossipMenuFor(player, wintergrasp->GetDefenderTeam() ? WG_NPCQUEUE_TEXT_H_NOWAR : WG_NPCQUEUE_TEXT_A_NOWAR, creature->GetGUID());
        }
        return true;
    }

    bool OnGossipSelect(Player* player, Creature* /*creature */, uint32 /*sender */, uint32 /*action*/) override
    {
        CloseGossipMenuFor(player);

        Battlefield* wintergrasp = sBattlefieldMgr->GetBattlefieldByBattleId(BATTLEFIELD_BATTLEID_WG);
        if (!wintergrasp)
            return true;

        if (wintergrasp->IsWarTime())
            wintergrasp->InvitePlayerToWar(player);
        else
        {
            uint32 timer = wintergrasp->GetTimer() / 1000;
            if (timer < 15 * MINUTE)
                wintergrasp->InvitePlayerToQueue(player);
        }
        return true;
    }

    struct npc_wg_queue_ippAI : public ScriptedAI
    {
        npc_wg_queue_ippAI(Creature* creature) : ScriptedAI(creature)
        {
            if (creature->GetEntry() == NPC_ARCANIST_BRAEDIN)
                events.ScheduleEvent(EVENT_ARCANIST_BRAEDIN_YELL, 0);
            else if (creature->GetEntry() == NPC_MAGISTER_SURDIEL)
                events.ScheduleEvent(EVENT_MAGISTER_SURDIEL_YELL, 0);

            events.ScheduleEvent(EVENT_SPELL_FROST_ARMOR, 0);
        }

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster())
            {
                return true;
            }
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            return sIndividualProgression->hasPassedProgression(target, PROGRESSION_TBC_TIER_5);
        }

        EventMap events;

        void UpdateAI(uint32 diff) override
        {
            if (sWorld->getIntConfig(CONFIG_WINTERGRASP_ENABLE) == 2)
                return;

            ScriptedAI::UpdateAI(diff);

            events.Update(diff);
            switch (events.ExecuteEvent())
            {
                case EVENT_ARCANIST_BRAEDIN_YELL:
                    if (Battlefield* wintergrasp = sBattlefieldMgr->GetBattlefieldByBattleId(BATTLEFIELD_BATTLEID_WG))
                    {
                        if (wintergrasp->IsWarTime())
                        {
                            Talk(SAY_ARCANIST_BRAEDIN);
                            events.ScheduleEvent(EVENT_ARCANIST_BRAEDIN_YELL, 240000);
                            break;
                        }
                    }
                    events.ScheduleEvent(EVENT_ARCANIST_BRAEDIN_YELL, 5000);
                    break;
                case EVENT_MAGISTER_SURDIEL_YELL:
                    if (Battlefield* wintergrasp = sBattlefieldMgr->GetBattlefieldByBattleId(BATTLEFIELD_BATTLEID_WG))
                    {
                        uint32 timer = wintergrasp->GetTimer() / 1000;
                        if (!wintergrasp->IsWarTime() && timer < 5 * MINUTE && timer > 4 * MINUTE)
                        {
                            Talk(SAY_MAGISTER_SURDIEL);
                            events.ScheduleEvent(EVENT_MAGISTER_SURDIEL_YELL, 300000);
                            break;
                        }
                    }
                    events.ScheduleEvent(EVENT_MAGISTER_SURDIEL_YELL, 5000);
                    break;
                case EVENT_SPELL_FROST_ARMOR:
                    me->CastSpell(me, SPELL_FROST_ARMOR, true);
                    events.ScheduleEvent(EVENT_SPELL_FROST_ARMOR, 900000);
                    break;
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_wg_queue_ippAI(creature);
    }
};

void AddSC_Ipp_Wotlk_Modded_Scripts()
{
    new npc_wg_queue_ipp();
}
