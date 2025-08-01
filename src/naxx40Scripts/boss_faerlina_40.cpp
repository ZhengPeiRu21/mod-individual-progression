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

#include "CreatureScript.h"
#include "ScriptedCreature.h"
#include "SpellInfo.h"
#include "naxxramas.h"

enum Yells
{
    SAY_GREET                           = 0,
    SAY_AGGRO                           = 1,
    SAY_SLAY                            = 2,
    SAY_DEATH                           = 3,
    EMOTE_WIDOWS_EMBRACE                = 4,
    EMOTE_FRENZY                        = 5,
    SAY_FRENZY                          = 6
};

enum Spells
{
    SPELL_POISON_BOLT_VOLLEY            = 28796,
    SPELL_RAIN_OF_FIRE                  = 28794,
    SPELL_FRENZY                        = 28798,
    SPELL_WIDOWS_EMBRACE                = 28732,
    SPELL_MINION_WIDOWS_EMBRACE         = 54097
};

enum SpellValues : int32
{
    POISON_BOLT_VOLLEY_BP0              = 1224,
    POISON_BOLT_VOLLEY_BP1              = 416,
    RAIN_OF_FIRE_BP0                    = 1849,
    FRENZY_BP0                          = 149,
    FRENZY_BP1                          = 74,
    FRENZY_BP2                          = 49
};

enum Groups
{
    GROUP_FRENZY                        = 1
};

enum Misc
{
    // NPC_NAXXRAMAS_WORSHIPPER            = 16506,
    // NPC_NAXXRAMAS_FOLLOWER              = 16505
};

class boss_faerlina_40 : public CreatureScript
{
public:
    boss_faerlina_40() : CreatureScript("boss_faerlina_40") { }

    CreatureAI* GetAI(Creature* pCreature) const override
    {
        return GetNaxxramasAI<boss_faerlina_40AI>(pCreature);
    }

    struct boss_faerlina_40AI : public BossAI
    {
        boss_faerlina_40AI(Creature* c) : BossAI(c, BOSS_FAERLINA), _introDone(false) { }

        void SummonHelpers()
        {
            me->SummonCreature(NPC_NAXXRAMAS_WORSHIPPER, 3362.66f, -3620.97f, 261.08f, 4.57276f);
            me->SummonCreature(NPC_NAXXRAMAS_WORSHIPPER, 3344.3f, -3618.31f, 261.08f, 4.69494f);
            me->SummonCreature(NPC_NAXXRAMAS_WORSHIPPER, 3356.71f, -3620.05f, 261.08f, 4.57276f);
            me->SummonCreature(NPC_NAXXRAMAS_WORSHIPPER, 3350.26f, -3619.11f, 261.08f, 4.67748f);
            // if (Is25ManRaid())
            {
                me->SummonCreature(NPC_NAXXRAMAS_FOLLOWER, 3347.49f, -3617.59f, 261.0f, 4.49f);
                me->SummonCreature(NPC_NAXXRAMAS_FOLLOWER, 3359.64f, -3619.16f, 261.0f, 4.56f);
            }
        }

        void Reset() override
        {
            BossAI::Reset();
            summons.DespawnAll();
            SummonHelpers();
        }

        void JustEngagedWith(Unit* who) override
        {
            BossAI::JustEngagedWith(who);
            me->CallForHelp(VISIBLE_RANGE);
            summons.DoZoneInCombat();
            Talk(SAY_AGGRO);

            ScheduleTimedEvent(7s, 15s, [&]{
                if (!me->HasAura(SPELL_WIDOWS_EMBRACE))
                {
                    CustomSpellValues values;
                    int32 bp0 = POISON_BOLT_VOLLEY_BP0;
                    int32 bp1 = POISON_BOLT_VOLLEY_BP1;
                    values.AddSpellMod(SPELLVALUE_MAX_TARGETS, 10);
                    values.AddSpellMod(SPELLVALUE_BASE_POINT0, bp0);
                    values.AddSpellMod(SPELLVALUE_BASE_POINT1, bp1);
                    me->CastCustomSpell(SPELL_POISON_BOLT_VOLLEY, values, me, TRIGGERED_NONE, nullptr, nullptr, ObjectGuid::Empty);
                }
            }, 7s, 15s);

            ScheduleTimedEvent(8s, 18s, [&] {              
                if (Unit* target = SelectTarget(SelectTargetMethod::Random, 0))
                {
                    int32 bp0 = RAIN_OF_FIRE_BP0;
                    me->CastCustomSpell(target, SPELL_RAIN_OF_FIRE, &bp0, 0, 0, false, nullptr, nullptr, ObjectGuid::Empty);
                }
            }, 8s, 18s);

            scheduler.Schedule(60s, 80s, GROUP_FRENZY, [this](TaskContext context) {
                if (!me->HasAura(SPELL_WIDOWS_EMBRACE))
                {
                    Talk(SAY_FRENZY);
                    Talk(EMOTE_FRENZY);
                    int32 bp0 = FRENZY_BP0;
                    int32 bp1 = FRENZY_BP1;
                    int32 bp2 = FRENZY_BP2;
                    me->CastCustomSpell(me, SPELL_FRENZY, &bp0, &bp1, &bp2, true, nullptr, nullptr, ObjectGuid::Empty);
                    context.Repeat(1min);
                }
                else
                    context.Repeat(30s);
            });
        }

        void MoveInLineOfSight(Unit* who) override
        {
            if (!_introDone && who->IsPlayer())
            {
                Talk(SAY_GREET);
                _introDone = true;
            }
            ScriptedAI::MoveInLineOfSight(who);
        }

        void KilledUnit(Unit* who) override
        {
            if (!who->IsPlayer())
                return;

            if (!urand(0, 3))
                Talk(SAY_SLAY);

            instance->StorePersistentData(PERSISTENT_DATA_IMMORTAL_FAIL, 1);
        }

        void JustDied(Unit*  killer) override
        {
            BossAI::JustDied(killer);
            Talk(SAY_DEATH);
        }

        void SpellHit(Unit* caster, SpellInfo const* spell) override
        {
            if (spell->Id == SPELL_WIDOWS_EMBRACE)
            {
                Talk(EMOTE_WIDOWS_EMBRACE); // %s is affected by Widow's Embrace!
                if (me->HasAura(SPELL_FRENZY))
                {
                    scheduler.RescheduleGroup(GROUP_FRENZY, 1min); // You must sacrifice the worshiper AFTER she enrages if you want to stop her for the full 60 seconds.
                    me->RemoveAurasDueToSpell(SPELL_FRENZY);
                    instance->SetData(DATA_FRENZY_REMOVED, 0); // achievement
                }
                else
                    scheduler.RescheduleGroup(GROUP_FRENZY, 30s); //  If you sacrifice the Worshiper before the enrage, it will merely delay the enrage for 30 seconds.
                caster->KillSelf();
            }
        }

        private:
            bool _introDone;
    };
};

void AddSC_boss_faerlina_40()
{
    new boss_faerlina_40();
}
