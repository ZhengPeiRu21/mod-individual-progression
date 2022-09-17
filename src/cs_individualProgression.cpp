#include "Chat.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "Tokenize.h"
#include "IndividualProgression.h"

using namespace Acore::ChatCommands;

class individualProgression_commandscript : public CommandScript
{
public:
    individualProgression_commandscript() : CommandScript("individualProgression_commandscript") { }

    ChatCommandTable GetCommands() const override
    {
        static ChatCommandTable individualProgressionTable =
        {
            { "set",    HandleSetIndividualProgressionCommand, SEC_GAMEMASTER,    Console::Yes },
        };

        static ChatCommandTable commandTable =
        {
            { "individualProgression", individualProgressionTable },
        };

        return commandTable;
    }

    static bool HandleSetIndividualProgressionCommand(ChatHandler* handler, Optional<PlayerIdentifier> player, uint32 progressionLevel)
    {
        if (progressionLevel > PROGRESSION_WOTLK_TIER_5)
        {
            handler->SendSysMessage("Invalid progression level.");
            return false;
        }
        player = PlayerIdentifier::FromTargetOrSelf(handler);
        if (player && player->GetConnectedPlayer())
        {
            sIndividualProgression->ForceUpdateProgressionState(player->GetConnectedPlayer(), static_cast<ProgressionState>(progressionLevel));
            handler->SendSysMessage("Progression state updated successfully");
        }
        return true;
    }


};

void AddSC_individualProgression_commandscript()
{
    new individualProgression_commandscript();
}
