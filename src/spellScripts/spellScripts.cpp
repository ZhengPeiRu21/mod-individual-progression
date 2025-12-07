#include "SpellMgr.h"
#include "SpellScript.h"
#include "Player.h"
#include "Chat.h"
#include "ScriptMgr.h"

class spell_detect_magic : public SpellScript
{
    PrepareSpellScript(spell_detect_magic);

    void HandleDummy(SpellEffIndex /*effIndex*/)
    {
        if (GetCaster()->GetTypeId() != TYPEID_PLAYER)
            return;
        Player* caster = GetCaster()->ToPlayer();
        if (Unit* target = GetHitUnit())
        {
            // Don't affect players
            if (target->GetTypeId() == TYPEID_PLAYER)
                return;
            float holyResist = target->GetFlatModifierValue(UNIT_MOD_RESISTANCE_HOLY, BASE_VALUE);
            float fireResist = target->GetFlatModifierValue(UNIT_MOD_RESISTANCE_FIRE, BASE_VALUE);
            float natureResist = target->GetFlatModifierValue(UNIT_MOD_RESISTANCE_NATURE, BASE_VALUE);
            float frostResist = target->GetFlatModifierValue(UNIT_MOD_RESISTANCE_FROST, BASE_VALUE);
            float shadowResist = target->GetFlatModifierValue(UNIT_MOD_RESISTANCE_SHADOW, BASE_VALUE);
            float arcaneResist = target->GetFlatModifierValue(UNIT_MOD_RESISTANCE_ARCANE, BASE_VALUE);
            if (holyResist < 0.1 && fireResist < 0.01 && natureResist < 0.01 && frostResist < 0.01 && shadowResist < 0.01 && arcaneResist < 0.01)
            {
                // Send message - you detect no magical resistances
                ChatHandler(caster->GetSession()).PSendSysMessage("You detect no magical resistances.");
            }
            else
            {
                if (holyResist > 0.01)
                    ChatHandler(caster->GetSession()).PSendSysMessage("You detect a holy resistance of: {}", holyResist);

                if (fireResist > 0.01)
                    ChatHandler(caster->GetSession()).PSendSysMessage("You detect a fire resistance of: {}", fireResist);

                if (natureResist > 0.01)
                    ChatHandler(caster->GetSession()).PSendSysMessage("You detect a nature resistance of: {}", natureResist);

                if (frostResist > 0.01)
                    ChatHandler(caster->GetSession()).PSendSysMessage("You detect a frost resistance of: {}", frostResist);

                if (shadowResist > 0.01)
                    ChatHandler(caster->GetSession()).PSendSysMessage("You detect a shadow resistance of: {}", shadowResist);

                if (arcaneResist > 0.01)
                    ChatHandler(caster->GetSession()).PSendSysMessage("You detect a arcane resistance of: {}", arcaneResist);
            }
        }
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_detect_magic::HandleDummy, EFFECT_0, SPELL_EFFECT_APPLY_AURA);
    }
};

void AddSC_ipp_spell_scripts()
{
    RegisterSpellScript(spell_detect_magic);
}
