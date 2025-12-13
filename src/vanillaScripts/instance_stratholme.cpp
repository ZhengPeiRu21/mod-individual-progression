#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellAuraDefines.h"
#include "SpellAuraEffects.h"
#include "SpellScript.h"
#include "Player.h"

class spell_atiesh_breath_of_sargeras : public SpellScript
{
    PrepareSpellScript(spell_atiesh_breath_of_sargeras);

    void HandleEffect(SpellEffIndex effIndex)
    {
        if (Unit* caster = GetCaster())
        {
            if (Unit* unitTarget = GetHitUnit())
            {
                if (!unitTarget->IsPlayer())
                    return;

                Player* playerTarget = unitTarget->ToPlayer();
                if (!playerTarget)
                    return;

                uint32 spell_id = 28342; // Breath of Sargeras

                caster->CastSpell(playerTarget, spell_id, TRIGGERED_FULL_MASK);
            }
        }
    }

    void Register() override
    {
        OnEffectLaunchTarget += SpellEffectFn(spell_atiesh_breath_of_sargeras::HandleEffect, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
    }
};

void AddSC_instance_stratholme_50_59_B()
{
    RegisterSpellScript(spell_atiesh_breath_of_sargeras);
}
