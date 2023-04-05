#include "IndividualProgression.h"
#include "ScriptMgr.h"
#include "Player.h"
#include "GameObjectAI.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"

class go_mara_portal : public GameObjectScript
{
public:
    go_mara_portal() : GameObjectScript("go_mara_portal") { }

    struct go_mara_portalAI : GameObjectAI
    {

        explicit go_mara_portalAI(GameObject *object) : GameObjectAI(object) { };

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster())
            {
                return true;
            }
            return player->HasItemCount(17191, 1, false);  // Require Sceptre of Celebras
        }

    };

    GameObjectAI *GetAI(GameObject *object) const override
    {
        return new go_mara_portalAI(object);
    }
};

void AddSC_misc_scripts()
{
    new go_mara_portal();
}

