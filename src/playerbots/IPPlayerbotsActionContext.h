#ifdef MOD_PLAYERBOTS
#ifndef MOD_INDIVIDUAL_PROGRESSION_ACTIONCONTEXT_H
#define MOD_INDIVIDUAL_PROGRESSION_ACTIONCONTEXT_H

#include "ActionContext.h"
#include "OnyxiaActions.h"
#include "RaidOnyxiaActions.h"

class IPOnyxiaActionContext : public RaidOnyxiaActionContext
{
public:
{
    IPOnyxiaActionContext() : public RaidOnyxiaActionContext()
    {
        creators["ony kill whelps"] = &MyCustomOnyxiaActionContext::kill_whelps;
    }
private
    static Action* kill_playerbots::ActionRegistry::RegisterAction("ony kill whelps", []() { return new IPOnyxiaKillWhelpsAction(ai); }

};
#endif
#endif
