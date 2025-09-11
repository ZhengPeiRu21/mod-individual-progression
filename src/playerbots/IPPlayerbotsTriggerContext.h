// /*
//  * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU GPL v2 license, you may redistribute it
//  and/or modify it under version 2 of the License, or (at your option), any later version.
//  */
#ifdef MOD_PLAYERBOTS
#ifndef MOD_INDIVIDUAL_PROGRESSION_TRIGGER_CONTEXT_H
#define MOD_INDIVIDUAL_PROGRESSION_TRIGGER_CONTEXT_H

#include "AiObjectContext.h"
#include "NamedObjectContext.h"
#include "RaidNaxxTriggers.h"
#include "IndividualProgressionNaxxTriggers.h"


class IPRaidNaxxTriggerContext : public RaidNaxxTriggerContext
{
public:
    IPRaidNaxxTriggerContext : RaidNaxxTriggerContext()
    {
        creators["grobbulus cloud"] = &IPRaidNaxxTriggerContext::grobbulus_cloud;
        creators["heigan melee"] = &IPRaidNaxxTriggerContext::heigan_melee;
        creators["heigan ranged"] = &IPRaidNaxxTriggerContext::heigan_ranged;

        creators["thaddius phase pet"] = &IPRaidNaxxTriggerContext::thaddius_phase_pet;
        creators["thaddius phase transition"] = &IPRaidNaxxTriggerContext::thaddius_phase_transition;
        creators["thaddius phase thaddius"] = &IPRaidNaxxTriggerContext::thaddius_phase_thaddius;

        creators["razuvious tank"] = &IPRaidNaxxTriggerContext::razuvious_tank;
        creators["razuvious nontank"] = &IPRaidNaxxTriggerContext::razuvious_nontank;

        creators["horseman attractors"] = &IPRaidNaxxTriggerContext::horseman_attractors;
        creators["horseman except attractors"] = &IPRaidNaxxTriggerContext::horseman_except_attractors;

        creators["sapphiron ground"] = &IPRaidNaxxTriggerContext::sapphiron_ground;
        creators["sapphiron flight"] = &IPRaidNaxxTriggerContext::sapphiron_flight;

        creators["kel'thuzad"] = &IPRaidNaxxTriggerContext::kelthuzad;

        creators["gluth"] = &IPRaidNaxxTriggerContext::gluth;
        creators["gluth main tank mortal wound"] = &IPRaidNaxxTriggerContext::gluth_main_tank_mortal_wound;

        creators["loatheb"] = &IPRaidNaxxTriggerContext::loatheb;
    }

private:
    static Trigger* grobbulus_cloud(PlayerbotAI* ai) { return new IPGrobbulusCloudTrigger(ai); }
    static Trigger* heigan_melee(PlayerbotAI* ai) { return new IPHeiganMeleeTrigger(ai); }
    static Trigger* heigan_ranged(PlayerbotAI* ai) { return new IPHeiganRangedTrigger(ai); }

    static Trigger* thaddius_phase_pet(PlayerbotAI* ai) { return new IPThaddiusPhasePetTrigger(ai); }
    static Trigger* thaddius_phase_transition(PlayerbotAI* ai) { return new IPThaddiusPhaseTransitionTrigger(ai); }
    static Trigger* thaddius_phase_thaddius(PlayerbotAI* ai) { return new IPThaddiusPhaseThaddiusTrigger(ai); }
    static Trigger* razuvious_tank(PlayerbotAI* ai) { return new IPRazuviousTankTrigger(ai); }
    static Trigger* razuvious_nontank(PlayerbotAI* ai) { return new IPRazuviousNontankTrigger(ai); }

    static Trigger* horseman_attractors(PlayerbotAI* ai) { return new IPHorsemanAttractorsTrigger(ai); }
    static Trigger* horseman_except_attractors(PlayerbotAI* ai) { return new IPHorsemanExceptAttractorsTrigger(ai); }

    static Trigger* sapphiron_ground(PlayerbotAI* ai) { return new IPSapphironGroundTrigger(ai); }
    static Trigger* sapphiron_flight(PlayerbotAI* ai) { return new IPSapphironFlightTrigger(ai); }
    static Trigger* kelthuzad(PlayerbotAI* ai) { return new IPKelthuzadTrigger(ai); }
    static Trigger* anubrekhan(PlayerbotAI* ai) { return new IPAnubrekhanTrigger(ai); }
    static Trigger* gluth(PlayerbotAI* ai) { return new IPGluthTrigger(ai); }
    static Trigger* gluth_main_tank_mortal_wound(PlayerbotAI* ai) { return new IPGluthMainTankMortalWoundTrigger(ai); }
    static Trigger* loatheb(PlayerbotAI* ai) { return new IPLoathebTrigger(ai); }
};

#endif
#endif