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
#include "ScriptedCreature.h"
#include "naxxramas.h"

enum Spells
{
    SPELL_NECROTIC_AURA                         = 55593,
	// SPELL_CORRUPTED_MIND                     = 29201, // this triggers the following spells on targets (based on class): 29185, 29194, 29196, 29198
    // SPELL_POISON_AURA                        = 29865, // does 200 dmg every second for 6 seconds with 1200 extra damage at the end. should do 196 dmg every 6 seconds. no extra damage at the end.
    SPELL_POISON_SHOCK                          = 22595, // does 180-220 aoe poison damage. if we let loatheb recast this every 6 seconds it's a possible fix for poison aura.
    SPELL_INEVITABLE_DOOM                       = 29204,
    SPELL_REMOVE_CURSE                          = 30281  // He periodically removes all curses on himself
};

enum Events
{
    // EVENT_CORRUPTED_MIND                     = 1,
	EVENT_NECROTIC_AURA                         = 1,
	EVENT_POISON_SHOCK                          = 2, 
    EVENT_INEVITABLE_DOOM                       = 3,
    EVENT_SUMMON_SPORE                          = 4,
    EVENT_REMOVE_CURSE                          = 5,
	EVENT_NECROTIC_AURA_FADING                  = 6,
    EVENT_NECROTIC_AURA_REMOVED                 = 7
};

enum Texts
{
    SAY_NECROTIC_AURA_APPLIED                   = 0,
    SAY_NECROTIC_AURA_REMOVED                   = 1,
    SAY_NECROTIC_AURA_FADING                    = 2
};

class boss_loatheb_40 : public CreatureScript
{
public:
    boss_loatheb_40() : CreatureScript("boss_loatheb_40") { }

    CreatureAI* GetAI(Creature* pCreature) const override
    {
        return GetNaxxramasAI<boss_loatheb_40AI>(pCreature);
    }

    struct boss_loatheb_40AI : public BossAI
    {
        explicit boss_loatheb_40AI(Creature* c) : BossAI(c, BOSS_LOATHEB), summons(me)
        {
            pInstance = me->GetInstanceScript();
            me->SetHomePosition(me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), me->GetOrientation());
        }

        InstanceScript* pInstance;
        uint8 doomCounter;
        EventMap events;
        SummonList summons;

        void Reset() override
        {
            BossAI::Reset();
            events.Reset();
            summons.DespawnAll();
            doomCounter = 0;
            if (pInstance)
            {
                pInstance->SetData(BOSS_LOATHEB, NOT_STARTED);
                if (GameObject* go = me->GetMap()->GetGameObject(pInstance->GetGuidData(DATA_LOATHEB_GATE)))
                {
                    go->SetGoState(GO_STATE_ACTIVE);
                }
            }
        }

        void JustSummoned(Creature* cr) override
        {
            cr->SetInCombatWithZone();
            summons.Summon(cr);
        }

        void SummonedCreatureDies(Creature*  /*cr*/, Unit*) override
        {
            if (pInstance)
            {
                pInstance->SetData(DATA_SPORE_KILLED, 0);
            }
        }

        void KilledUnit(Unit* who) override
        {
            if (who->GetTypeId() == TYPEID_PLAYER && pInstance)
            {
                pInstance->SetData(DATA_IMMORTAL_FAIL, 0);
            }
        }

        void JustEngagedWith(Unit* who) override
        {
            BossAI::JustEngagedWith(who);
            me->SetInCombatWithZone();
            // events.ScheduleEvent(EVENT_CORRUPTED_MIND, 5000);
		    events.ScheduleEvent(EVENT_NECROTIC_AURA, 10000);
			events.ScheduleEvent(EVENT_POISON_SHOCK, 6000);
            events.ScheduleEvent(EVENT_INEVITABLE_DOOM, 120000);
            events.ScheduleEvent(EVENT_SUMMON_SPORE, 13000);
            events.ScheduleEvent(EVENT_REMOVE_CURSE, 5000);
            if (pInstance)
            {
                pInstance->SetData(BOSS_LOATHEB, IN_PROGRESS);
                if (GameObject* go = me->GetMap()->GetGameObject(pInstance->GetGuidData(DATA_LOATHEB_GATE)))
                {
                    go->SetGoState(GO_STATE_READY);
                }
            }
        }

        void JustDied(Unit* killer) override
        {
            BossAI::JustDied(killer);
            summons.DespawnAll();
            if (pInstance)
            {
                pInstance->SetData(BOSS_LOATHEB, DONE);
            }
        }

        void UpdateAI(uint32 diff) override
        {
            if (!UpdateVictim() || !IsInRoom())
                return;

            events.Update(diff);
            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            switch (events.ExecuteEvent())
            {
                case EVENT_SUMMON_SPORE:
                {
                    me->CastSpell(me, SPELL_SUMMON_SPORE, true);
                    events.RepeatEvent(13000);
                    break;
                }
                case EVENT_NECROTIC_AURA:
				{
                    me->CastSpell(me, SPELL_NECROTIC_AURA, true);
                    Talk(SAY_NECROTIC_AURA_APPLIED);
                    events.ScheduleEvent(EVENT_NECROTIC_AURA_FADING, 14000);
                    events.ScheduleEvent(EVENT_NECROTIC_AURA_REMOVED, 17000);
                    events.RepeatEvent(20000);
                    break;
				}
				/*
                case EVENT_CORRUPTED_MIND:
                {
 			        if (me->CastSpell(me, SPELL_CORRUPTED_MIND, true) == SPELL_CAST_OK)
				 	{
                        events.RepeatEvent(10000);
					}
					else 
					{
	                    events.RepeatEvent(100);						
                    }
                    break;
                }
				*/
				case EVENT_POISON_SHOCK:
				{
	                if (me->CastSpell(me, SPELL_POISON_SHOCK, true) == SPELL_CAST_OK)
                    {
                        events.RepeatEvent(6000);
					}
					else
					{
						events.RepeatEvent(100);	
					}
                    break;			
				}
                case EVENT_INEVITABLE_DOOM:
                {
                    int32 bp0 = 2549;
					
                    if (me->CastCustomSpell(me, SPELL_INEVITABLE_DOOM, &bp0, 0, 0, false) == SPELL_CAST_OK)
                    {
						doomCounter++;
                        events.RepeatEvent(doomCounter < 6 ? 30000 : 15000);
					}
					else
					{
						events.RepeatEvent(100);	
					}
                    break;
                }
                case EVENT_REMOVE_CURSE:
                {
                    me->CastSpell(me, SPELL_REMOVE_CURSE, true);
                    events.RepeatEvent(30000);
                    break;
                }
                case EVENT_NECROTIC_AURA_FADING:
				{
                    Talk(SAY_NECROTIC_AURA_FADING);
                    break;
				}
                case EVENT_NECROTIC_AURA_REMOVED:
				{
                    Talk(SAY_NECROTIC_AURA_REMOVED);
                    break;
				}
            }
            DoMeleeAttackIfReady();
        }

        bool IsInRoom()
        {
            // Calculate the distance between his home position to the gate
            if (me->GetExactDist(me->GetHomePosition().GetPositionX(),
                                 me->GetHomePosition().GetPositionY(),
                                 me->GetHomePosition().GetPositionZ()) > 50.0f)
            {
                EnterEvadeMode();
                return false;
            }
            return true;
        }		
    };
};


/*
// 29201 - Corrupted Mind (Loatheb)
class spell_loatheb_corrupted_mind_aoe_40 : public SpellScript
{
    PrepareSpellScript(spell_loatheb_corrupted_mind_aoe_40);
    
    void HandleEffect(Spell* spell, SpellEffIndex effIndex)
    {
        // Loatheb Corrupted Mind triggered sub spells
        uint32 spellid;
        switch (spell->GetTarget()->GetClass())
        {
            // priests should be getting 29185, but it triggers on dmg effects as well, don't know why.
            case CLASS_PRIEST:  spellid = 29194; break;//29185; break;
            case CLASS_DRUID:   spellid = 29194; break;
            case CLASS_PALADIN: spellid = 29196; break;
            case CLASS_SHAMAN:  spellid = 29198; break;
            default: return false;
        }
        spell->me->CastSpell(spell->GetTarget(), spellid, true);
    }
    
    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_loatheb_corrupted_mind_aoe_40::HandleEffect, SPELL_CORRUPTED_MIND, EFFECT_0, SPELL_AURA_PROC_TRIGGER_SPELL);
    }
};

class spell_loatheb_corrupted_mind_loader : public SpellScriptLoader
{
public:
    spell_loatheb_corrupted_mind_loader() : SpellScriptLoader("spell_loatheb_corrupted_mind_aoe_40") { }
    
    SpellScript* GetSpellScript() const override
    {
        return new spell_loatheb_corrupted_mind_aoe_40();
    }
};
*/

void AddSC_boss_loatheb_40()
{
    new boss_loatheb_40();
	// new spell_loatheb_corrupted_mind_loader();

}
