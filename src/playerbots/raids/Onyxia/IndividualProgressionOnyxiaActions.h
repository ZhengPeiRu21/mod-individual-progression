#ifdef MOD_PLAYERBOTS
#ifndef MOD_INDIVIDUAL_PROGRESSION_ONYXIAACTIONS_H
#define MOD_INDIVIDUAL_PROGRESSION_ONYXIAACTIONS_H
#include "RaidOnyxiaActions.h"

class IPOnyxiaKillWhelpsAction : public RaidOnyxiaKillWhelpsAction
{
public:
    using RaidOnyxiaKillWhelpsAction::RaidOnyxiaKillWhelpsAction;
    bool Execute(Event event) override;
};

#endif
#endif
