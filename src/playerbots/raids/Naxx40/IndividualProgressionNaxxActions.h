#ifdef MOD_PLAYERBOTS
#ifndef MOD_INDIVIDUAL_PROGRESSION_NAXXACTIONS_H
#define MOD_INDIVIDUAL_PROGRESSION_NAXXACTIONS_H

#include "RaidNaxxActions.h"

class PlayerbotAI;

class IPGrobbulusGoBehindAction : public GrobbulusGoBehindAction
{
public:
    IPGrobbulusGoBehindAction(PlayerbotAI* ai, float distance = 24.0f, float delta_angle = M_PI / 8)
        : GrobbulusGoBehindAction(ai,distance, delta_angle) {}
    virtual bool Execute(Event event) override;
};


class IPGrobbulusRotateAction : public GrobbulusRotateAction
{
public:
    IPGrobbulusRotateAction(PlayerbotAI* botAI)
        : GrobbulusRotateAction(botAI)
    {}

    uint32 GetCurrWaypoint() override;
};

class IPHeiganDanceAction : public HeiganDanceAction
{
public:
    IPHeiganDanceAction(PlayerbotAI* ai) : HeiganDanceAction(ai)
    {}

protected:
    bool CalculateSafe();
};


#endif
#endif
