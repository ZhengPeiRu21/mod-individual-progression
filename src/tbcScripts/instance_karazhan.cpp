/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellAuraDefines.h"
#include "SpellAuraEffects.h"
#include "Player.h"
#include "SpellScript.h"

enum BlackUrn
{
    DATA_NIGHTBANE     = 11,
    NPC_NIGHTBANE      = 17225,
    ITEM_BLACKENED_URN = 24140
};

class go_blackened_urn_70 : public GameObjectScript
{
public:
    go_blackened_urn_70() : GameObjectScript("go_blackened_urn") { }

    //if we summon an entity instead of using a sort of invisible entity, we could unsummon boss on reset
    //right now that doesn't work because of how the urn works
    bool OnGossipHello(Player* player, GameObject* go) override
    {

        if (player->HasItemCount(ITEM_BLACKENED_URN, 1))
        {
            if (InstanceScript* pInstance = go->GetInstanceScript())
            {
                if (pInstance->GetData(DATA_NIGHTBANE) != DONE && !go->FindNearestCreature(NPC_NIGHTBANE, 40.0f))
                    if (Creature* cr = ObjectAccessor::GetCreature(*player, pInstance->GetGuidData(DATA_NIGHTBANE)))
                        cr->AI()->DoAction(0 /*ACTION_START_INTRO */);
            }
        }
        else
        {
            player->SendSystemMessage("You must possess a Blackened Urn in order to summon Nightbane!");
        }
        return false;
    }
};

enum OrcWarlockPoisonCloud
{
    SPELL_WARLOCK_POISON_CLOUD = 37469,
};

// 37469 - Poison Cloud
class spell_orc_warlock_poison_cloud : public AuraScript
{
    PrepareAuraScript(spell_orc_warlock_poison_cloud);

        bool Validate(SpellInfo const* /*spellInfo*/) override
        {
            return ValidateSpellInfo({ SPELL_WARLOCK_POISON_CLOUD }); 
        }

        void HandleTriggerSpell(AuraEffect const* /*aurEff*/)
        {
            PreventDefaultAction();
            CustomSpellValues values;
            values.AddSpellMod(SPELLVALUE_RADIUS_MOD, 600); // 6yd
            GetTarget()->CastCustomSpell(SPELL_WARLOCK_POISON_CLOUD, values, GetTarget(), TRIGGERED_NONE, nullptr, nullptr, GetCasterGUID());
        }

    void Register() override
    {
        OnEffectPeriodic += AuraEffectPeriodicFn(spell_orc_warlock_poison_cloud::HandleTriggerSpell, EFFECT_0, SPELL_AURA_PERIODIC_TRIGGER_SPELL);
    }
};

void AddSC_karazhan_70()
{
    new go_blackened_urn_70();
    RegisterSpellScript(spell_orc_warlock_poison_cloud);
}
