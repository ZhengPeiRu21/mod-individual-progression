#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellAuraDefines.h"
#include "SpellAuraEffects.h"
#include "SpellScript.h"
#include "Player.h"

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

void AddSC_custom_spells_40()
{
    RegisterSpellScript(spell_orc_warlock_poison_cloud);
}
