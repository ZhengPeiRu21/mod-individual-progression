/*
 * This file is part of the AzerothCore Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Affero General Public License as published by the
 * Free Software Foundation; either version 3 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "ScriptMgr.h"
#include "SpellScript.h"

// 23310 - Time lapse, threat mechanic was removed in 2.01
class spell_bwl_chromaggus_time_lapse_60_2_A : public SpellScriptLoader
{
public:
    spell_bwl_chromaggus_time_lapse_60_2_A() : SpellScriptLoader("spell_bwl_chromaggus_time_lapse") { }

    class spell_bwl_chromaggus_time_lapse_60_2_A_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_bwl_chromaggus_time_lapse_60_2_A_SpellScript);

        void HandleEffectScriptEffect(SpellEffIndex /*effIndex*/)
        {
            if (GetCaster() && GetCaster()->ToCreature())
            {
                if (GetHitUnit() == GetCaster()->GetVictim())
                {
                    GetCaster()->ToCreature()->ModifyThreatPercentTemp(GetHitUnit(), -100, 8000ms);
                }
            }
        }

        void Register() override
        {
            OnEffectHitTarget += SpellEffectFn(spell_bwl_chromaggus_time_lapse_60_2_A_SpellScript::HandleEffectScriptEffect, EFFECT_0, SPELL_EFFECT_APPLY_AURA);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_bwl_chromaggus_time_lapse_60_2_A_SpellScript;
    }
};

void AddSC_boss_chromaggus_60_2_A()
{
    new spell_bwl_chromaggus_time_lapse_60_2_A();
}
