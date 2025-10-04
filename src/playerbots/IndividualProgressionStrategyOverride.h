#ifdef MOD_PLAYERBOTS
#ifndef MOD_INDIVIDUAL_PROGRESSION_STRATEGY_OVERRIDE_H
#define MOD_INDIVIDUAL_PROGRESSION_STRATEGY_OVERRIDE_H

#include "RaidNaxxStrategy.h"
#include "Multiplier.h"

class IPRaidNaxxStrategy : public RaidNaxxStrategy
{
public:
    IPRaidNaxxStrategy(PlayerbotAI* ai) : RaidNaxxStrategy(ai) {}
    virtual void InitMultipliers(std::vector<Multiplier*>& multipliers) override;
};


#endif
#endif
