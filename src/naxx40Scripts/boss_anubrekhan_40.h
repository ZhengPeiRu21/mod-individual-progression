#ifndef BOSS_ANUBREKHAN_40_H_
#define BOSS_ANUBREKHAN_40_H_

#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellInfo.h"
#include "naxxramas.h"
#include "boss_anubrekhan.h"

namespace Anubrekhan_40 {

enum Says
{
    SAY_AGGRO                       = 0,
    // SAY_GREET                    = 1,
    // SAY_SLAY                     = 2,
    EMOTE_LOCUST                    = 3
};

enum Spells
{
    SPELL_IMPALE_10                 = 28783,
    SPELL_LOCUST_SWARM_10           = 28785,
    SPELL_LOCUST_SWARM_25           = 54021,
    SPELL_BERSERK                   = 26662
};

class boss_anubrekhan_40 : public CreatureScript
{
public:
    boss_anubrekhan_40() : CreatureScript("boss_anubrekhan_40") { }

    CreatureAI* GetAI(Creature* pCreature) const override
    {
        return GetNaxxramasAI<boss_anubrekhan_40AI>(pCreature);
    }

    struct boss_anubrekhan_40AI : public Anubrekhan::boss_anubrekhan::boss_anubrekhanAI
    {
        boss_anubrekhan_40AI(Creature* c) : boss_anubrekhanAI(c)
        {
            sayGreet = false;
        }

        void SummonCryptGuards_40()
        {
            me->SummonCreature(NPC_CRYPT_GUARD_40, 3299.732f, -3502.489f, 287.077f, 2.378f, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 60000);
            me->SummonCreature(NPC_CRYPT_GUARD_40, 3299.086f, -3450.929f, 287.077f, 3.999f, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 60000);
        }

        void Reset() override
        {
            BossAI::Reset();
            SummonCryptGuards_40();
            me->m_Events.KillAllEvents(false);
        }

        void JustEngagedWith(Unit* who) override
        {
            BossAI::JustEngagedWith(who);
            me->CallForHelp(30.0f);
            Talk(SAY_AGGRO);

            if (!summons.HasEntry(NPC_CRYPT_GUARD_40))
                SummonCryptGuards_40();
            if (!Is25ManRaid())
            {
                me->m_Events.AddEventAtOffset([&]
                {
                    me->SummonCreature(NPC_CRYPT_GUARD_40, 3331.217f, -3476.607f, 287.074f, 3.269f, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 60000);
                }, Milliseconds(urand(15000, 20000)));
            }

            ScheduleTimedEvent(15s, [&] {
                int32 bp1 = IMPALE_BP1;
                int32 bp2 = IMPALE_BP2;
                if (Unit* target = SelectTarget(SelectTargetMethod::Random, 0, 0.0f, true, true))
                    me->CastCustomSpell(target, SPELL_IMPALE_10, 0, &bp1, &bp2, false, nullptr, nullptr, ObjectGuid::Empty);
            }, 20s);

            ScheduleTimedEvent(70s, 2min, [&] {
                Talk(EMOTE_LOCUST);
                DoCastSelf(RAID_MODE(SPELL_LOCUST_SWARM_10, SPELL_LOCUST_SWARM_25, SPELL_LOCUST_SWARM_10, SPELL_LOCUST_SWARM_25));

                me->m_Events.AddEventAtOffset([&]
                {
                    me->SummonCreature(NPC_CRYPT_GUARD_40, 3331.217f, -3476.607f, 287.074f, 3.269f, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 60000);
                }, 3s);

            }, 90s);

            me->m_Events.AddEventAtOffset([&]
            {
                DoCastSelf(SPELL_BERSERK, true);
            }, 10min);
        }

    private:
        bool sayGreet;
    };
};

}

#endif
