#ifdef MOD_PLAYERBOTS
#ifndef MOD_INDIVIDUAL_PROGRESSION_ACTIONCONTEXT_H
#define MOD_INDIVIDUAL_PROGRESSION_ACTIONCONTEXT_H

#include "ActionContext.h"
#include "IndividualProgressionOnyxiaActions.h"
#include "RaidOnyxiaActionContext.h"

#include "IndividualProgressionNaxxActions.h"
#include "RaidNaxxActionContext.h"

class IPOnyxiaActionContext : public RaidOnyxiaActionContext
{
public:
    IPOnyxiaActionContext : public RaidOnyxiaActionContext ()
    {
        creators["ony kill whelps"] = &IPOnyxiaActionContext::kill_whelps;
    }
private:
    static Action* kill_playerbots::ActionRegistry::RegisterAction("ony kill whelps", []() { return new IPOnyxiaKillWhelpsAction(ai); }

};

class IPNaxxActionContext : public RaidNaxxActionContext
{
public:
    IPNaxxActionContext : public RaidNaxxActionContext()
    {
        creators["grobbulus go behind"] = &IPNaxxActionContext::go_behind_the_boss;
        creators["rotate grobbulus"] = &IPNaxxActionContext::rotate_grobbulus;
    }

private:
    static Action* go_behind_the_boss(PlayerbotAI* ai) { return new IPGrobbulusGoBehindAction(ai); }
    static Action* rotate_grobbulus(PlayerbotAI* ai) { return new IPGrobbulusRotateAction(ai); }
};


#endif
#endif
