#include "IndividualProgression.h"
#include "ScriptMgr.h"
#include "Player.h"
#include "GameObjectAI.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"

class go_cavernsoftimedoor : public GameObjectScript
{
public:
    go_cavernsoftimedoor() : GameObjectScript("go_cavernsoftimedoor") { }

    struct go_cavernsoftimedoorAI : GameObjectAI
    {

        explicit go_cavernsoftimedoorAI(GameObject *object) : GameObjectAI(object)
        {
            object->SetGoState(GO_STATE_READY);
            object->SetGameObjectFlag(GO_FLAG_INTERACT_COND | GO_FLAG_NOT_SELECTABLE);
            object->EnableCollision(true);
        };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster())
            {
                return true;
            }
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            return sIndividualProgression->isBeforeProgression(target, PROGRESSION_NAXX40);
        }

    };

    GameObjectAI *GetAI(GameObject *object) const override
    {
        return new go_cavernsoftimedoorAI(object);
    }
};

void AddSC_cot_scripts()
{
    new go_cavernsoftimedoor();
}

