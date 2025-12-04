#ifndef BOSS_MAEXXNA_40_H_
#define BOSS_MAEXXNA_40_H_

#include "CreatureScript.h"
#include "PassiveAI.h"
#include "Player.h"
#include "ScriptedCreature.h"
#include "SpellAuraEffects.h"
#include "SpellScript.h"
#include "SpellScriptLoader.h"
#include "naxxramas.h"
#include "../../../../src/server/scripts/Northrend/Naxxramas/boss_maexxna.h"

namespace Maexxna_40 {

enum Spells
{
    SPELL_WEB_WRAP_STUN                 = 28622,
    SPELL_WEB_WRAP_SUMMON               = 28627,
    SPELL_WEB_WRAP_KILL_WEBS            = 52512,
    SPELL_WEB_WRAP_PACIFY_5             = 28618 // 5 seconds pacify silence
};

enum Events
{
    // EVENT_WEB_SPRAY                  = 1,
    // EVENT_POISON_SHOCK               = 2,
    // EVENT_NECROTIC_POISON            = 3,
    // EVENT_WEB_WRAP                   = 4,
    // EVENT_HEALTH_CHECK               = 5,
    // EVENT_SUMMON_SPIDERLINGS         = 6,
    EVENT_WEB_WRAP_APPLY_STUN           = 7
};

const Position PosWrap[7] =
{
    {3496.615f,  -3834.182f,  320.7863f},
    {3509.108f,  -3833.922f,  320.4750f},
    {3523.644f,  -3838.309f,  320.5775f},
    {3538.152f,  -3846.353f,  320.5188f},
    {3546.219f,  -3856.167f,  320.9324f},
    {3555.135f,  -3869.507f,  320.8307f},
    {3560.282f,  -3886.143f,  321.2827f}
};

struct WebTargetSelector
{
    WebTargetSelector(Unit* maexxna) : _maexxna(maexxna) {}
    bool operator()(Unit const* target) const
    {
        if (!target->IsPlayer()) // never web nonplayers (pets, guardians, etc.)
            return false;
        if (_maexxna->GetVictim() == target) // never target tank
            return false;
        if (target->HasAura(SPELL_WEB_WRAP_STUN)) // never target targets that are already webbed
            return false;
        return true;
    }

    private:
        Unit const* _maexxna;
};

class boss_maexxna_40 : public CreatureScript
{
public:
    boss_maexxna_40() : CreatureScript("boss_maexxna_40") { }

    CreatureAI* GetAI(Creature* pCreature) const override
    {
        return GetNaxxramasAI<boss_maexxna_40AI>(pCreature);
    }

    struct boss_maexxna_40AI : public Maexxna::boss_maexxna::boss_maexxnaAI
    {
        explicit boss_maexxna_40AI(Creature* c) : Maexxna::boss_maexxna::boss_maexxnaAI(c) {}

        GuidList wraps;

        void DoCastWebWrap()
        {
            std::list<Unit*> candidates;
            SelectTargetList(candidates, RAID_MODE(1, 2, 2, 2), SelectTargetMethod::Random, 0, WebTargetSelector(me));

            std::vector<uint32> positions {0, 1, 2, 3, 4, 5, 6};
            Acore::Containers::RandomShuffle(positions);

            if (candidates.empty())
                return;

            for (int i = 0; i < RAID_MODE(1, 2, 2, 2); i++)
            {
                if (candidates.empty())
                    break;
                const Position &randomPos = PosWrap[positions[i]];

                auto itr = candidates.begin();

                if (candidates.size() > 1)
                    std::advance(itr, urand(0, candidates.size() - 1));

                Unit *target = *itr;
                candidates.erase(itr);

                float dx = randomPos.GetPositionX() - target->GetPositionX();
                float dy = randomPos.GetPositionY() - target->GetPositionY();
                float distXY = std::hypotf(dx, dy);

                // smooth knockback arc that avoids the ceiling
                float horizontalSpeed = distXY / 1.5f;
                float verticalSpeed = 28.0f;
                if (distXY <= 10.0f)
                    verticalSpeed = 12.0f;
                else if (distXY <= 20.0f)
                    verticalSpeed = 16.0f;
                else if (distXY <= 30.0f)
                    verticalSpeed = 20.0f;
                else if (distXY <= 40.0f)
                    verticalSpeed = 24.0f;

                target->KnockbackFrom(randomPos.GetPositionX(), randomPos.GetPositionY(), -horizontalSpeed, verticalSpeed);
                me->CastSpell(target, SPELL_WEB_WRAP_PACIFY_5, true); // pacify silence for 5 seconds

                wraps.push_back(target->GetGUID());
            }
            events.ScheduleEvent(EVENT_WEB_WRAP_APPLY_STUN, 2s);
        }

    };
};

class boss_maexxna_webwrap_40 : public CreatureScript
{
public:
    boss_maexxna_webwrap_40() : CreatureScript("boss_maexxna_webwrap_40") { }

    CreatureAI* GetAI(Creature* pCreature) const override
    {
        return GetNaxxramasAI<boss_maexxna_webwrap_40AI>(pCreature);
    }

    struct boss_maexxna_webwrap_40AI : public NullCreatureAI
    {
        explicit boss_maexxna_webwrap_40AI(Creature* c) : NullCreatureAI(c) { }

        ObjectGuid victimGUID;

        void IsSummonedBy(WorldObject* summoner) override
        {
            if (!summoner)
                return;
            victimGUID = summoner->GetGUID();
        }

        void JustDied(Unit* /*killer*/) override
        {
            if (victimGUID)
            {
                if (Unit* victim = ObjectAccessor::GetUnit(*me, victimGUID))
                {
                    if (victim->IsAlive())
                    {
                        victim->RemoveAurasDueToSpell(SPELL_WEB_WRAP_STUN);
                        victim->RemoveAurasDueToSpell(SPELL_WEB_WRAP_SUMMON_40);
                    }
                }
            }
        }

        void UpdateAI(uint32 /*diff*/) override
        {
            if (victimGUID)
            {
                if (Unit* victim = ObjectAccessor::GetUnit(*me, victimGUID))
                {
                    if (!victim->IsAlive())
                    {
                        me->CastSpell(me, SPELL_WEB_WRAP_KILL_WEBS, true);
                    }
                }
            }
        }
    };
};

class spell_web_wrap_damage : public AuraScript
{
public:
    PrepareAuraScript(spell_web_wrap_damage);

    bool Validate(SpellInfo const* /*spellInfo*/) override
    {
        return ValidateSpellInfo({ SPELL_WEB_WRAP_SUMMON_40 });
    }

    void OnPeriodic(AuraEffect const* aurEff)
    {
        if (GetCaster()->GetMap()->GetDifficulty() == RAID_DIFFICULTY_10MAN_HEROIC)
        {
            AuraEffect* eff = const_cast<AuraEffect*>(aurEff);
            eff->SetAmount(static_cast<int32>(urand(657, 843)));
        }
        if (aurEff->GetTickNumber() == 2)
        {
            if (GetCaster()->GetMap()->GetDifficulty() == RAID_DIFFICULTY_10MAN_HEROIC)
                GetTarget()->CastSpell(GetTarget(), SPELL_WEB_WRAP_SUMMON_40, true);
            else
                GetTarget()->CastSpell(GetTarget(), SPELL_WEB_WRAP_SUMMON, true);
        }
    }

    void Register() override
    {
        OnEffectPeriodic += AuraEffectPeriodicFn(spell_web_wrap_damage::OnPeriodic, EFFECT_1, SPELL_AURA_PERIODIC_DAMAGE);
    }
};

}

#endif
