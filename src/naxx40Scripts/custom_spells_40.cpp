#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellAuraDefines.h"
#include "SpellAuraEffects.h"
#include "SpellScript.h"
#include "naxxramas.h"
#include "Player.h"

// 28785 - Locust Swarm
// Locust Swarm: Reduce damage ~1500 to ~1000, increase radius 25yd to 30yd
enum LocustSwarm
{
    SPELL_LOCUST_SWARM              = 28785,
    SPELL_LOCUST_SWARM_TRIGGER      = 28786, // periodic effect
};

class spell_anub_locust_swarm_aura_40 : public AuraScript
{
    PrepareAuraScript(spell_anub_locust_swarm_aura_40);

    bool Validate(SpellInfo const* /*spellInfo*/) override
    {
        return ValidateSpellInfo({ SPELL_LOCUST_SWARM_TRIGGER });
    }

    void HandleTriggerSpell(AuraEffect const* /*aurEff*/)
    {
        Unit* caster = GetCaster();
        if (!caster || (caster->GetMap()->GetDifficulty() != RAID_DIFFICULTY_10MAN_HEROIC))
        {
            return;
        }
        PreventDefaultAction();
        int32 modifiedLocustSwarmDamage = 812;
        CustomSpellValues values;
        values.AddSpellMod(SPELLVALUE_BASE_POINT0, modifiedLocustSwarmDamage);
        values.AddSpellMod(SPELLVALUE_RADIUS_MOD, 3000); // 30yd
        caster->CastCustomSpell(SPELL_LOCUST_SWARM_TRIGGER, values, caster, TRIGGERED_FULL_MASK, nullptr, nullptr, GetCasterGUID());
    }

    void Register() override
    {
        OnEffectPeriodic += AuraEffectPeriodicFn(spell_anub_locust_swarm_aura_40::HandleTriggerSpell, EFFECT_0, SPELL_AURA_PERIODIC_TRIGGER_SPELL);
    }
};

// 28865 - Consumption
// add Naxx10HC damage
class spell_gen_consumption : public SpellScript
{
    PrepareSpellScript(spell_gen_consumption);

    void CalculateDamage(SpellEffIndex /*effIndex*/)
    {
        Map* map = GetCaster()->GetMap();
        if (!map)
        {
            return;
        }
        int32 value = 0;
        if (map->GetDifficulty() == RAID_DIFFICULTY_25MAN_NORMAL) // NAXX25 N
        {
            value = urand(4500, 4700);
        }
        else if (map->GetId() == 533) // NAXX10 N
        {
            if (map->GetDifficulty() == RAID_DIFFICULTY_10MAN_NORMAL)
            {
                value = urand(3000, 3200);
            }
            else
            {
                value = urand(3960, 4840); // NAXX40
            }
        }
        else if (map->GetId() == 532) // Karazhan
        {
            value = urand(1110, 1310);
        }
        if (value)
        {
            SetEffectValue(value);
        }
    }

    void Register() override
    {
        OnEffectLaunchTarget += SpellEffectFn(spell_gen_consumption::CalculateDamage, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
    }
};

// 28241 - Poison Cloud
// poison damage by Poison Cloud ~3k to ~1k
class spell_grobbulus_poison_cloud_poison_damage_40 : public SpellScript
{
    PrepareSpellScript(spell_grobbulus_poison_cloud_poison_damage_40);

    void HandleDamageCalc(SpellEffIndex /*effIndex*/)
    {
        Unit* caster = GetCaster();
        if (!caster || (caster->GetMap()->GetDifficulty() != RAID_DIFFICULTY_10MAN_HEROIC))
        {
            return;
        }
        SetEffectValue(urand(1110, 1290));
    }

    void Register() override
    {
        OnEffectLaunchTarget += SpellEffectFn(spell_grobbulus_poison_cloud_poison_damage_40::HandleDamageCalc, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
    }
};

// 29350 - Plague Cloud
enum PlagueCloud
{
    SPELL_PLAGUE_CLOUD_TRIGGER      = 30122,
};

class spell_heigan_plague_cloud_aura_40 : public AuraScript
{
    PrepareAuraScript(spell_heigan_plague_cloud_aura_40);

    bool Validate(SpellInfo const* /*spellInfo*/) override
    {
        return ValidateSpellInfo({ SPELL_PLAGUE_CLOUD_TRIGGER });
    }

    void HandleTriggerSpell(AuraEffect const* /*aurEff*/)
    {
        Unit* caster = GetCaster();
        if (!caster || (caster->GetMap()->GetDifficulty() != RAID_DIFFICULTY_10MAN_HEROIC))
        {
            return;
        }
        PreventDefaultAction();
        int32 bp0 = 4000;
        caster->CastCustomSpell(caster, SPELL_PLAGUE_CLOUD_TRIGGER, &bp0, 0, 0, true);
    }

    void Register() override
    {
        OnEffectPeriodic += AuraEffectPeriodicFn(spell_heigan_plague_cloud_aura_40::HandleTriggerSpell, EFFECT_0, SPELL_AURA_PERIODIC_TRIGGER_SPELL);
    }
};

// 29371 - Eruption
class spell_heigan_eruption_40 : public SpellScript
{
    PrepareSpellScript(spell_heigan_eruption_40);

    void HandleDamageCalc(SpellEffIndex /*effIndex*/)
    {
        Unit* caster = GetCaster();
        if (!caster || (caster->GetMap()->GetDifficulty() != RAID_DIFFICULTY_10MAN_HEROIC))
        {
            return;
        }
        SetEffectValue(urand(3500, 4500));
    }

    void Register() override
    {
        OnEffectLaunchTarget += SpellEffectFn(spell_heigan_eruption_40::HandleDamageCalc, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
    }
};

// 28819 - Submerge Visual
class spell_submerge_visual_aura : public AuraScript
{
    PrepareAuraScript(spell_submerge_visual_aura);

    void OnApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
    {
        GetTarget()->SetStandState(UNIT_STAND_STATE_SUBMERGED);
    }

    void OnRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
    {
        GetTarget()->SetStandState(UNIT_STAND_STATE_STAND);
    }

    void Register() override
    {
        OnEffectApply += AuraEffectApplyFn(spell_submerge_visual_aura::OnApply, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
        OnEffectRemove += AuraEffectRemoveFn(spell_submerge_visual_aura::OnRemove, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
    }
};

// 28457 - Dark Blast
class spell_kelthuzad_dark_blast_40 : public SpellScript
{
    PrepareSpellScript(spell_kelthuzad_dark_blast_40);

    void CalculateDamage(SpellEffIndex /*effIndex*/)
    {
        Unit* caster = GetCaster();
        if (!caster || (caster->GetMap()->GetDifficulty() != RAID_DIFFICULTY_10MAN_HEROIC))
        {
            return;
        }
        SetEffectValue(urand(1750,2250));
    }

    void Register() override
    {
        OnEffectLaunchTarget += SpellEffectFn(spell_kelthuzad_dark_blast_40::CalculateDamage, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
    }
};

// 28479 - Frostbolt
class spell_kelthuzad_frostbolt_40 : public SpellScript
{
    PrepareSpellScript(spell_kelthuzad_frostbolt_40);

    void CalculateDamage(SpellEffIndex /*effIndex*/)
    {
        Unit* caster = GetCaster();
        if (!caster || (caster->GetMap()->GetDifficulty() != RAID_DIFFICULTY_10MAN_HEROIC))
        {
            return;
        }
        SetEffectValue(urand(2550,3450));
    }

    void Register() override
    {
        OnEffectLaunchTarget += SpellEffectFn(spell_kelthuzad_frostbolt_40::CalculateDamage, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
    }
};

// 28522 - Icebolt
class spell_sapphiron_icebolt_40 : public SpellScript
{
    PrepareSpellScript(spell_sapphiron_icebolt_40);

    void CalculateDamage(SpellEffIndex /*effIndex*/)
    {
        Unit* caster = GetCaster();
        if (!caster || (caster->GetMap()->GetDifficulty() != RAID_DIFFICULTY_10MAN_HEROIC))
        {
            return;
        }
        SetEffectValue(urand(2625,3375));
    }

    void Register() override
    {
        OnEffectLaunchTarget += SpellEffectFn(spell_sapphiron_icebolt_40::CalculateDamage, EFFECT_1, SPELL_EFFECT_SCHOOL_DAMAGE);
    }
};

// 28531 - Frost Aura
class spell_sapphiron_frost_aura_40 : public AuraScript
{
    PrepareAuraScript(spell_sapphiron_frost_aura_40);

    void CalculateAmount(AuraEffect const* /*aurEff*/, int32& amount, bool& /*canBeRecalculated*/)
    {
        Unit* caster = GetCaster();
        if (!caster || (caster->GetMap()->GetDifficulty() != RAID_DIFFICULTY_10MAN_HEROIC))
            return;
        if (urand(0, 99) == 0) // 1% chance to receive extra Frost Aura tick
            return;
        amount *= 0.5; // Reduce damage by 50% (1200bp -> 600bp)
    }

    void Register() override
    {
        DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_sapphiron_frost_aura_40::CalculateAmount, EFFECT_0, SPELL_AURA_PERIODIC_DAMAGE);
    }
};

// 60960 - War Stomp - Patchwork Golem
class spell_patchwork_golem_war_stomp_40 : public SpellScript
{
    PrepareSpellScript(spell_patchwork_golem_war_stomp_40);

    void CalculateDamage(SpellEffIndex /*effIndex*/)
    {
        Unit* caster = GetCaster();
        if (!caster || (caster->GetMap()->GetDifficulty() != RAID_DIFFICULTY_10MAN_HEROIC))
        {
            return;
        }
        SetHitDamage(urand(936,1064));
    }

    void Register() override
    {
         OnEffectHitTarget += SpellEffectFn(spell_patchwork_golem_war_stomp_40::CalculateDamage, EFFECT_2, SPELL_EFFECT_WEAPON_DAMAGE);
    }
};

// 29213 - Curse of the Plaguebringer
enum CurseOfThePlaguebringer
{
    SPELL_REVENGE_OF_THE_PLAGUEBRINGER = 29214,
};

class spell_noth_curse_of_the_plaguebringer_aura_40 : public AuraScript
{
    PrepareAuraScript(spell_noth_curse_of_the_plaguebringer_aura_40);

        bool Validate(SpellInfo const* /*spellInfo*/) override
        {
            return ValidateSpellInfo({ SPELL_REVENGE_OF_THE_PLAGUEBRINGER }); // Revenge of the Plaguebringer
        }

        void HandleTriggerSpell(AuraEffect const* /*aurEff*/)
        {
            Unit* caster = GetCaster();
            if (!caster || (caster->GetMap()->GetDifficulty() != RAID_DIFFICULTY_10MAN_HEROIC))
            {
                return;
            }
            PreventDefaultAction();
            CustomSpellValues values;
            int32 bp0 = 1757; // instant damage
            int32 bp1 = 874; // periodic damage
            values.AddSpellMod(SPELLVALUE_BASE_POINT0, bp0);
            values.AddSpellMod(SPELLVALUE_BASE_POINT1, bp1);
            values.AddSpellMod(SPELLVALUE_RADIUS_MOD, 3500); // 35yd
            GetTarget()->CastCustomSpell(SPELL_REVENGE_OF_THE_PLAGUEBRINGER, values, GetTarget(), TRIGGERED_NONE, nullptr, nullptr, GetCasterGUID());
        }

    void Register() override
    {
        OnEffectPeriodic += AuraEffectPeriodicFn(spell_noth_curse_of_the_plaguebringer_aura_40::HandleTriggerSpell, EFFECT_0, SPELL_AURA_PERIODIC_TRIGGER_SPELL);
    }
};

// 26046 - Razuvious - Mana Burn - Alternative for Disrupting Shout
class spell_razuvious_disrupting_shout_40 : public SpellScript
{
    PrepareSpellScript(spell_razuvious_disrupting_shout_40);

    void CalculateDamage(SpellEffIndex effIndex)
    {
        Unit* caster = GetCaster();
        if (!caster || (caster->GetMap()->GetDifficulty() != RAID_DIFFICULTY_10MAN_HEROIC))
        {
            return;
        }
        SetEffectValue(urand(4050,4950));
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_razuvious_disrupting_shout_40::CalculateDamage, EFFECT_0, SPELL_EFFECT_POWER_BURN);
    }
};

// 28450 Unholy Staff
class spell_unholy_staff_arcane_explosion_40 : public SpellScript
{
    PrepareSpellScript(spell_unholy_staff_arcane_explosion_40);

    void PreventLaunchHit(SpellEffIndex effIndex)
    {
        Unit* caster = GetCaster();
        if (!caster || (caster->GetMap()->GetDifficulty() != RAID_DIFFICULTY_10MAN_HEROIC))
        {
            return;
        }
        if (Unit* target = GetHitUnit())
        {
            if (target->IsWithinDist2d(caster, 20.0f))
            {
                SetEffectValue(urand(1838, 2361));
            }
            else
            {
                PreventHitDefaultEffect(effIndex);
            }
        }
    }

    void Register() override
    {
        OnEffectLaunchTarget += SpellEffectFn(spell_unholy_staff_arcane_explosion_40::PreventLaunchHit, EFFECT_1, SPELL_EFFECT_SCHOOL_DAMAGE);
    }
};

// 28153 Disease cloud, Sewage Slime
class spell_disease_cloud_damage_40 : public SpellScript
{
    PrepareSpellScript(spell_disease_cloud_damage_40);

    void HandleDamageCalc(SpellEffIndex /*effIndex*/)
    {
        Unit* caster = GetCaster();
        if (!caster || (caster->GetMap()->GetDifficulty() != RAID_DIFFICULTY_10MAN_HEROIC))
        {
            return;
        }
        SetEffectValue(urand(278,322));
    }

    void Register() override
    {
        OnEffectLaunchTarget += SpellEffectFn(spell_disease_cloud_damage_40::HandleDamageCalc, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
    }
};

// 28135 Static Field
class spell_feugen_static_field_40 : public SpellScript
{
    PrepareSpellScript(spell_feugen_static_field_40);

    void HandleDamageCalc(SpellEffIndex /*effIndex*/)
    {
        Unit* caster = GetCaster();
        if (!caster || (caster->GetMap()->GetDifficulty() != RAID_DIFFICULTY_10MAN_HEROIC))
        {
            return;
        }
        if (Unit* target = GetHitUnit())
        {
            Powers PowerType = POWER_MANA;
            int32 drainedAmount = -target->ModifyPower(PowerType, -500);
            SetEffectValue(drainedAmount);
        }
    }

    void Register() override
    {
        OnEffectLaunchTarget += SpellEffectFn(spell_feugen_static_field_40::HandleDamageCalc, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
    }
};

class spell_loatheb_corrupted_mind_40 : public SpellScript
{
    PrepareSpellScript(spell_loatheb_corrupted_mind_40);

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

                uint32 spell_id = 0;

                switch (playerTarget->getClass())
                {
                    case CLASS_PRIEST:
                        spell_id = 29194; // priests should be getting 29185, but it triggers on dmg effects as well
                        break;
                    case CLASS_DRUID:
                        spell_id = 29194;
                        break;
                    case CLASS_PALADIN:
                        spell_id = 29196;
                        break;
                    case CLASS_SHAMAN:
                        spell_id = 29198;
                        break;
                    default:
                        return; // ignore for non-healing classes
                }

                caster->CastSpell(playerTarget, spell_id, TRIGGERED_FULL_MASK);
            }
        }
    }

    void Register() override
    {
        OnEffectLaunchTarget += SpellEffectFn(spell_loatheb_corrupted_mind_40::HandleEffect, EFFECT_0, SPELL_EFFECT_DUMMY);
    }
};

class isAllowedToCastSpell : public SpellScript
{
    PrepareSpellScript(isAllowedToCastSpell);

    SpellCastResult CheckCorruptedMind()
    {
        Unit* caster = GetCaster();
        if (!caster)
            return SPELL_CAST_OK;

        Player* player = caster->ToPlayer();
        if (!player)
            return SPELL_CAST_OK;

        Map* map = player->GetMap();
        if (!map)
            return SPELL_CAST_OK;

        // Only enforce the check in Naxxramas 10HC (map 533, 10-man heroic).
        if (map->GetId() != 533 || map->GetDifficulty() != RAID_DIFFICULTY_10MAN_HEROIC)
            return SPELL_CAST_OK;

        // Check class override auras (Corrupted Mind) on the player.
        Unit::AuraEffectList const& auraClassScripts =
            player->GetAuraEffectsByType(SPELL_AURA_OVERRIDE_CLASS_SCRIPTS);

        for (AuraEffect const* auraEff : auraClassScripts)
        {
            if (!auraEff)
                continue;

            SpellInfo const* auraInfo = auraEff->GetSpellInfo();
            if (!auraInfo)
                continue;

            // Corrupted Mind override (class script) – block the cast.
            if (auraInfo->Effects[EFFECT_0].MiscValue == 4327)
                return SPELL_FAILED_FIZZLE;
        }

        return SPELL_CAST_OK;
    }

    void Register() override
    {
        OnCheckCast += SpellCheckCastFn(isAllowedToCastSpell::CheckCorruptedMind);
    }
};


void AddSC_custom_spells_40()
{
    RegisterSpellScript(spell_anub_locust_swarm_aura_40);
    RegisterSpellScript(spell_gen_consumption);
    RegisterSpellScript(spell_grobbulus_poison_cloud_poison_damage_40);
    RegisterSpellScript(spell_heigan_plague_cloud_aura_40);
    RegisterSpellScript(spell_heigan_eruption_40);
    RegisterSpellScript(spell_submerge_visual_aura);
    RegisterSpellScript(spell_kelthuzad_dark_blast_40);
    RegisterSpellScript(spell_kelthuzad_frostbolt_40);
    RegisterSpellScript(spell_sapphiron_icebolt_40);
    RegisterSpellScript(spell_sapphiron_frost_aura_40);
    RegisterSpellScript(spell_patchwork_golem_war_stomp_40);
    RegisterSpellScript(spell_noth_curse_of_the_plaguebringer_aura_40);
    RegisterSpellScript(spell_razuvious_disrupting_shout_40);
    RegisterSpellScript(spell_unholy_staff_arcane_explosion_40);
    RegisterSpellScript(spell_disease_cloud_damage_40);
    RegisterSpellScript(spell_feugen_static_field_40);
    RegisterSpellScript(spell_loatheb_corrupted_mind_40);
    RegisterSpellScript(isAllowedToCastSpell);
}
