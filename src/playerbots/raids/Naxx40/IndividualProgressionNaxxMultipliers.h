
#ifdef MOD_PLAYERBOTS
#ifndef MOD_INDIVIDUAL_PROGRESSION_NAXXMULTIPLIERS_H
#define MOD_INDIVIDUAL_PROGRESSION_NAXXMULTIPLIERS_H

#include "Multiplier.h"
#include "IndividualProgressionNaxxBossHelper.h"

class IPHeiganDanceMultiplier : public Multiplier
{
public:
    IPHeiganDanceMultiplier(PlayerbotAI* ai) : Multiplier(ai, "helgan dance") {}

    virtual float GetValue(Action* action);
};

class IPThaddiusGenericMultiplier : public Multiplier
{
public:
    IPThaddiusGenericMultiplier(PlayerbotAI* ai) : Multiplier(ai, "thaddius generic"), helper(ai) {}

    virtual float GetValue(Action* action);

private:
    IPThaddiusBossHelper helper;
};

class IPSapphironGenericMultiplier : public Multiplier
{
public:
    IPSapphironGenericMultiplier(PlayerbotAI* ai) : Multiplier(ai, "sapphiron generic"), helper(ai) {}

    virtual float GetValue(Action* action);

private:
    IPSapphironBossHelper helper;
};

class IPInstructorRazuviousGenericMultiplier : public Multiplier
{
public:
    IPInstructorRazuviousGenericMultiplier(PlayerbotAI* ai) : Multiplier(ai, "instructor razuvious generic"), helper(ai) {}
    
    virtual float GetValue(Action* action);

private:
    IPRazuviousBossHelper helper;
};

class IPKelthuzadGenericMultiplier : public Multiplier
{
public:
    IPKelthuzadGenericMultiplier(PlayerbotAI* ai) : Multiplier(ai, "kelthuzad generic"), helper(ai) {}
    virtual float GetValue(Action* action);

private:
    IPKelthuzadBossHelper helper;
};

class IPGluthGenericMultiplier : public Multiplier
{
public:
    IPGluthGenericMultiplier(PlayerbotAI* ai) : Multiplier(ai, "gluth generic"), helper(ai) {}
    float GetValue(Action* action) override;

private:
   IPGluthBossHelper helper;
};

#endif
#endif
