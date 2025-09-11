#ifdef MOD_PLAYERBOTS
#ifndef _PLAYERBOT_RAIDNAXXTRIGGERS_H
#define _PLAYERBOT_RAIDNAXXTRIGGERS_H

#include "EventMap.h"
#include "GenericTriggers.h"
#include "PlayerbotAIConfig.h"
#include "IndividualProgressionNaxxBossHelper.h"
#include "RaidNaxxScripts.h"
#include "Trigger.h"

template <class T>
class BossEventTrigger : public Trigger
{
public:
    BossEventTrigger(PlayerbotAI* ai, uint32 event_id, uint32 boss_entry, uint32 boss_entry_secondary = 0, std::string name = "boss event")
        : Trigger(ai, name, 1)
    {
        this->event_id = event_id;
        this->boss_entry = boss_entry;
        this->boss_entry_secondary = boss_entry_secondary;
        this->last_event_time = -1;
    }
    virtual bool IsActive();

protected:
    uint32 event_id, boss_entry, boss_entry_secondary, last_event_time;
};

class IPGrobbulusCloudTrigger : public BossEventTrigger<Grobbulus::boss_grobbulus::boss_grobbulusAI>
{
public:
    IPGrobbulusCloudTrigger(PlayerbotAI* ai) : BossEventTrigger(ai, 2, 15931, 351003, "grobbulus cloud event") {}
    virtual bool IsActive();
};

class IPHeiganMeleeTrigger : public Trigger
{
public:
    IPHeiganMeleeTrigger(PlayerbotAI* ai) : Trigger(ai, "heigan melee") {}
    virtual bool IsActive();
};

class IPHeiganRangedTrigger : public Trigger
{
public:
    IPHeiganRangedTrigger(PlayerbotAI* ai) : Trigger(ai, "heigan ranged") {}
    bool IsActive() override;
};

class IPRazuviousTankTrigger : public Trigger
{
public:
    IPRazuviousTankTrigger(PlayerbotAI* ai) : Trigger(ai, "instructor razuvious tank"), helper(ai) {}
    bool IsActive() override;

private:
    IPRazuviousBossHelper helper;
};

class IPRazuviousNontankTrigger : public Trigger
{
public:
    IPRazuviousNontankTrigger(PlayerbotAI* ai) : Trigger(ai, "instructor razuvious non-tank"), helper(ai) {}
    bool IsActive() override;

private:
    IPRazuviousBossHelper helper;
};

class IPKelthuzadTrigger : public Trigger
{
public:
    IPKelthuzadTrigger(PlayerbotAI* ai) : Trigger(ai, "kel'thuzad trigger"), helper(ai) {}
    bool IsActive() override;

private:
    IPKelthuzadBossHelper helper;
};

class IPThaddiusPhasePetTrigger : public Trigger
{
public:
    IPThaddiusPhasePetTrigger(PlayerbotAI* ai) : Trigger(ai, "thaddius phase pet"), helper(ai) {}
    bool IsActive() override;

private:
    IPThaddiusBossHelper helper;
};

class IPThaddiusPhaseTransitionTrigger : public Trigger
{
public:
    IPThaddiusPhaseTransitionTrigger(PlayerbotAI* ai) : Trigger(ai, "thaddius phase transition"), helper(ai) {}
    bool IsActive() override;

private:
    IPThaddiusBossHelper helper;
};

class IPThaddiusPhaseThaddiusTrigger : public Trigger
{
public:
    IPThaddiusPhaseThaddiusTrigger(PlayerbotAI* ai) : Trigger(ai, "thaddius phase thaddius"), helper(ai) {}
    bool IsActive() override;

private:
    IPThaddiusBossHelper helper;
};

class IPHorsemanAttractorsTrigger : public Trigger
{
public:
    IPHorsemanAttractorsTrigger(PlayerbotAI* ai) : Trigger(ai, "fourhorsemen attractors"), helper(ai) {}
    bool IsActive() override;

private:
    IPFourhorsemanBossHelper helper;
};

class IPHorsemanExceptAttractorsTrigger : public Trigger
{
public:
    IPHorsemanExceptAttractorsTrigger(PlayerbotAI* ai) : Trigger(ai, "fourhorsemen except attractors"), helper(ai) {}
    bool IsActive() override;

private:
    IPFourhorsemanBossHelper helper;
};

class IPSapphironGroundTrigger : public Trigger
{
public:
    IPSapphironGroundTrigger(PlayerbotAI* ai) : Trigger(ai, "sapphiron ground"), helper(ai) {}
    bool IsActive() override;

private:
    IPSapphironBossHelper helper;
};


class IPSapphironFlightTrigger : public Trigger
{
public:
    IPSapphironFlightTrigger(PlayerbotAI* ai) : Trigger(ai, "sapphiron flight"), helper(ai) {}
    bool IsActive() override;

private:
    IPSapphironBossHelper helper;
};

class IPGluthTrigger : public Trigger
{
public:
    IPGluthTrigger(PlayerbotAI* ai) : Trigger(ai, "gluth trigger"), helper(ai) {}
    bool IsActive() override;

private:
    IPGluthBossHelper helper;
};

class IPGluthMainTankMortalWoundTrigger : public Trigger
{
public:
    IPGluthMainTankMortalWoundTrigger(PlayerbotAI* ai) : Trigger(ai, "gluth main tank mortal wound trigger"), helper(ai) {}
    bool IsActive() override;

private:
    IPGluthBossHelper helper;
};

class IPLoathebTrigger : public Trigger
{
public:
    IPLoathebTrigger(PlayerbotAI* ai) : Trigger(ai, "loatheb"), helper(ai) {}
    bool IsActive() override;

private:
    IPLoathebBossHelper helper;
};

#endif
#endif
