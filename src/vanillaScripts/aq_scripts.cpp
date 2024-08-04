#include "IndividualProgression.h"
#include "ScriptMgr.h"
#include "Player.h"
#include "GameObjectAI.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"

enum
{
    QUEST_BANG_A_GONG = 8743,

    GO_GATE_OF_AHN_QIRAJ = 176146,
    GO_GLYPH_OF_AHN_QIRAJ = 176148,
    GO_ROOTS_OF_AHN_QIRAJ = 176147,
    GO_AQ_GHOST_GATE = 180322,

    GLOBAL_TEXT_CHAMPION = 41100,

    SOUND_ROOTS_OPEN = 7114,
    SOUND_DOOR_OPEN = 7115,
    SOUND_RUNES_OPEN = 7116,

    STAGE_OPEN_GATES = 0,
    STAGE_WAR = 1,
    STAGE_RESET = 2
};

class gobject_scarab_gong : public GameObjectScript
{
private:

public:
    gobject_scarab_gong() : GameObjectScript("gobject_scarab_gong")
    {}

    struct gobject_scarab_gongAI : GameObjectAI
    {
        uint32 eventTimer;
        uint32 eventStep;
        uint32 eventStage;

        GameObject *go_aq_barrier;
        GameObject *go_aq_gate_runes;
        GameObject *go_aq_gate_roots;
        // Invisible AQ barrier - removed by server during event, but we are allow event to repeat, so we do not place it
//        GameObject *go_aq_ghost_gate;

        explicit gobject_scarab_gongAI(GameObject *object) : GameObjectAI(object)
        {
            eventTimer = 0;
            eventStep = 0;
            eventStage = STAGE_OPEN_GATES;
            // The Gong normally needs the quest active to interact, but we need to make it available for players to re-use
            me->RemoveGameObjectFlag(GO_FLAG_INTERACT_COND);
        };

        void UpdateAI(uint32 diff) override
        {
            if (eventTimer)
            {
                if (eventTimer <= diff)
                {
                    switch (eventStage)
                    {
                    case STAGE_OPEN_GATES:
                        HandleOpeningStage();
                        break;
                    case STAGE_WAR:
                        HandleWarStage();
                        break;
                    case STAGE_RESET:
                        ResetAQGates();
                        break;
                    }
                }
                else
                    eventTimer -= diff;
            }
        }

        bool CanBeSeen(Player const* player) override
        {
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            if (!target)
            {
                return false; 
            }

            return sIndividualProgression->isBeforeProgression(target, PROGRESSION_AQ);
        }

        void NextStage(uint32 timeUntil = 100)
        {
            eventStage++;
            eventStep = 0;
            eventTimer = timeUntil;
        }

        void HandleOpeningStage()
        {
            switch (eventStep)
            {
            case 0:
                go_aq_gate_roots->ResetDoorOrButton();
                go_aq_gate_roots->UseDoorOrButton();
                me->PlayDirectSound(SOUND_ROOTS_OPEN);
                eventTimer = 5000;
                break;

            case 1:
                go_aq_gate_runes->ResetDoorOrButton();
                go_aq_gate_runes->UseDoorOrButton();
                me->PlayDirectSound(SOUND_RUNES_OPEN);
                eventTimer = 8000;
                break;

            case 2:
                go_aq_barrier->ResetDoorOrButton();
                go_aq_barrier->UseDoorOrButton();
                me->PlayDirectSound(SOUND_DOOR_OPEN);
                NextStage(10000);
                return;
            }

            eventStep++;
        }

        void HandleWarStage()
        {
            // Not handled in Individual Progression, so we go right to resetting the gate timer
            NextStage(5 * MINUTE * IN_MILLISECONDS);
        }

        void ResetAQGates()
        {
            go_aq_barrier->SetGoState(GO_STATE_READY);
            go_aq_gate_runes->SetGoState(GO_STATE_READY);
            go_aq_gate_roots->ResetDoorOrButton();
            go_aq_gate_roots->SetGoState(GO_STATE_READY);

            EventDone();
        }

        void EventDone()
        {
            NextStage(0);
            eventStage = STAGE_OPEN_GATES; // Reset to the initial stage for potential future events
        }


        void OpenGate(Player *player, bool announce)
        {
            go_aq_barrier = GetClosestGameObjectWithEntry(me, GO_GATE_OF_AHN_QIRAJ, 150);
            go_aq_gate_runes = GetClosestGameObjectWithEntry(me, GO_GLYPH_OF_AHN_QIRAJ, 150);
            go_aq_gate_roots = GetClosestGameObjectWithEntry(me, GO_ROOTS_OF_AHN_QIRAJ, 150);
//            go_aq_ghost_gate = GetClosestGameObjectWithEntry(me, GO_AQ_GHOST_GATE, 150);

            if (!go_aq_barrier || !go_aq_gate_runes || !go_aq_gate_roots)
                return;

            // The door is already open - don't open it again
            if (go_aq_barrier->GetGoState() == GO_STATE_ACTIVE)
                return;

            if (announce)
                sWorld->SendZoneText(GLOBAL_TEXT_CHAMPION, player->GetName().c_str());

            eventTimer += 1000;
            eventStage = STAGE_OPEN_GATES;
        }
    };

    GameObjectAI *GetAI(GameObject *object) const override
    {
        return new gobject_scarab_gongAI(object);
    }

    bool OnQuestReward(Player *player, GameObject *go, Quest const *quest, uint32 /*opt*/) override
    {
        if (quest->GetQuestId() != QUEST_BANG_A_GONG)
            return false;

        if (auto *gongAI = dynamic_cast<gobject_scarab_gongAI *>(go->AI()))
            gongAI->OpenGate(player, true);

        return true;
    }

    bool OnGossipHello(Player* player, GameObject* go) override
    {
        if (player->GetQuestStatus(QUEST_BANG_A_GONG) == QUEST_STATUS_REWARDED)
        {
            if (auto *gongAI = dynamic_cast<gobject_scarab_gongAI *>(go->AI()))
                gongAI->OpenGate(player, false);
        }
        else
        {
            player->PrepareQuestMenu(go->GetGUID());
            player->SendPreparedQuest(go->GetGUID());
        }
        return true;
    }
};

class aq_gate : public GameObjectScript
{
public:
    aq_gate() : GameObjectScript("aq_gate") {}

    struct aq_gateAI : public GameObjectAI
    {
        explicit aq_gateAI(GameObject* go) : GameObjectAI(go) {}

        bool CanBeSeen(Player const* player) override
        {

            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            if (!target)
            {
                return false; 
            }

            return sIndividualProgression->isBeforeProgression(target, PROGRESSION_AQ);
        }
    };

    GameObjectAI* GetAI(GameObject* go) const override
    {
        return new aq_gateAI(go);
    }
};

void AddSC_aq_scripts()
{
    new aq_gate();
    new gobject_scarab_gong();
}

