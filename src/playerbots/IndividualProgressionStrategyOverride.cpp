#ifdef MOD_PLAYERBOTS

#include "IndividualProgressionStrategyOverride.h"
#include "IndividualProgressionNaxxMultipliers.h"
#include "RaidNaxxMultipliers.h"

void IPRaidNaxxStrategy::InitMultipliers(std::vector<Multiplier*>& multipliers)
{
    multipliers.push_back(new GrobbulusMultiplier(botAI));
    multipliers.push_back(new IPHeiganDanceMultiplier(botAI));
    multipliers.push_back(new LoathebGenericMultiplier(botAI));
    multipliers.push_back(new IPThaddiusGenericMultiplier(botAI));
    multipliers.push_back(new IPSapphironGenericMultiplier(botAI));
    multipliers.push_back(new IPInstructorRazuviousGenericMultiplier(botAI));
    multipliers.push_back(new IPKelthuzadGenericMultiplier(botAI));
    multipliers.push_back(new AnubrekhanGenericMultiplier(botAI));
    multipliers.push_back(new FourhorsemanGenericMultiplier(botAI));
    // multipliers.push_back(new GothikGenericMultiplier(botAI));
    multipliers.push_back(new IPGluthGenericMultiplier(botAI));
}

#endif
