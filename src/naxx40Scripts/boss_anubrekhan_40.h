#ifndef BOSS_ANUBREKHAN_40_H_
#define BOSS_ANUBREKHAN_40_H_

#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellInfo.h"
#include "naxxramas.h"
#include "../../../../src/server/scripts/Northrend/Naxxramas/boss_anubrekhan.h"

namespace Anubrekhan_40 {

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
            me->SummonCreature(NPC_CRYPT_GUARD, 3299.732f, -3502.489f, 287.077f, 2.378f, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 60000);
            me->SummonCreature(NPC_CRYPT_GUARD, 3299.086f, -3450.929f, 287.077f, 3.999f, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 60000);
        }

        void Reset() override
        {
            BossAI::Reset();
            SummonCryptGuards_40();
            me->m_Events.KillAllEvents(false);
        }

    private:
        bool sayGreet;
    };
};

}

#endif
