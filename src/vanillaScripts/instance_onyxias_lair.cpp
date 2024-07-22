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
#include "SpellInfo.h"
#include "onyxias_lair.h"

ObjectData const creatureData[] =
        {
                { NPC_ONYXIA, DATA_ONYXIA },
                { NPC_ONYXIA_40, DATA_ONYXIA }
        };

class instance_onyxias_lair_40 : public InstanceMapScript
{
public:
    instance_onyxias_lair_40() : InstanceMapScript("instance_onyxias_lair", 249) {}

    InstanceScript* GetInstanceScript(InstanceMap* pMap) const override
    {
        return new instance_onyxias_lair_InstanceMapScript(pMap);
    }

    struct instance_onyxias_lair_InstanceMapScript : public InstanceScript
    {
        instance_onyxias_lair_InstanceMapScript(Map* pMap) : InstanceScript(pMap) {Initialize();};

        std::string str_data;
        uint16 ManyWhelpsCounter;
        bool bDeepBreath;

        void Initialize() override
        {
            SetBossNumber(MAX_ENCOUNTER);
            ManyWhelpsCounter = 0;
            bDeepBreath = true;
            LoadObjectData(creatureData, nullptr);
        }

        void OnGameObjectCreate(GameObject* go) override
        {
            switch (go->GetEntry())
            {
                case GO_WHELP_SPAWNER:
                    if (instance->GetDifficulty() == RAID_DIFFICULTY_10MAN_HEROIC)
                    {
                        go->CastSpell((Unit*)nullptr, 91003);
                    }
                    else
                    {
                        go->CastSpell((Unit*)nullptr, 17646);
                    }
                    if (Creature* onyxia = GetCreature(DATA_ONYXIA))
                    {
                        onyxia->AI()->DoAction(-1);
                    }
                    break;
            }
        }

        bool SetBossState(uint32 type, EncounterState state) override
        {
            if (!InstanceScript::SetBossState(type, state))
            {
                return false;
            }

            if (type == DATA_ONYXIA && state == NOT_STARTED)
            {
                ManyWhelpsCounter = 0;
                bDeepBreath = true;
            }
            else if (type == DATA_ONYXIA && state == DONE)
            {
                DoUpdateAchievementCriteria(ACHIEVEMENT_CRITERIA_TYPE_COMPLETE_QUEST, 7495, 1);
            }

            return true;
        }

        void SetData(uint32 uiType, uint32 /*uiData*/) override
        {
            switch (uiType)
            {
                case DATA_WHELP_SUMMONED:
                    ++ManyWhelpsCounter;
                    break;
                case DATA_DEEP_BREATH_FAILED:
                    bDeepBreath = false;
                    break;
            }
        }


        bool CheckAchievementCriteriaMeet(uint32 criteria_id, Player const*  /*source*/, Unit const*  /*target*/, uint32  /*miscvalue1*/) override
        {
            if (instance->GetDifficulty() == RAID_DIFFICULTY_10MAN_HEROIC)
            {
                return false; // No achievements in Onyxia 40man
            }
            switch(criteria_id)
            {
                case ACHIEV_CRITERIA_MANY_WHELPS_10_PLAYER:
                case ACHIEV_CRITERIA_MANY_WHELPS_25_PLAYER:
                    return ManyWhelpsCounter >= 50;
                case ACHIEV_CRITERIA_DEEP_BREATH_10_PLAYER:
                case ACHIEV_CRITERIA_DEEP_BREATH_25_PLAYER:
                    return bDeepBreath;
            }
            return false;
        }
    };
};

class onyxia_entrance_trigger : public AreaTriggerScript
{
public:
    onyxia_entrance_trigger() : AreaTriggerScript("onyxia_entrance_trigger") { }

    bool OnTrigger(Player* player, AreaTrigger const* /*areaTrigger*/) override
    {
        if (player->GetLevel() < 80)
        {
            player->SetRaidDifficulty(RAID_DIFFICULTY_10MAN_HEROIC);
        }
        if (!sMapMgr->PlayerCannotEnter(249, player, true))
        {
            player->TeleportTo(249, 29.1607f, -71.3372f, -8.18032f, 4.58f);
        }
        return true;
    }
};

class global_onyxia_tuning_script : public GlobalScript
{
public:
    global_onyxia_tuning_script() : GlobalScript("global_onyxia_tuning_script") { }

    void OnLoadSpellCustomAttr(SpellInfo* spellInfo) override
    {
        // TODO: This is currently overriding 10 man spells
        switch (spellInfo->Id)
        {
            case 18435: // Flame Breath
                spellInfo->Effects[EFFECT_0].DieSides = 875;
                spellInfo->Effects[EFFECT_0].BasePoints = 3062;
                break;
            case 18500: // Wing Buffet
                spellInfo->Effects[EFFECT_1].DieSides = 375;
                spellInfo->Effects[EFFECT_1].BasePoints = 562;
                break;
            case 18392: // Fireball
                spellInfo->Effects[EFFECT_0].DieSides = 601;
                spellInfo->Effects[EFFECT_0].BasePoints = 1699;
                break;
            case 17731: // Eruption
                spellInfo->Effects[EFFECT_0].DieSides = 375;
                spellInfo->Effects[EFFECT_0].BasePoints = 656;
                break;
            case 17086: // Breath
            case 17087:
            case 17088:
            case 17089:
            case 17090:
            case 17091:
            case 17092:
            case 17093:
            case 17094:
            case 17095:
            case 17097:
            case 18351:
            case 18352:
            case 18353:
            case 18354:
            case 18355:
            case 18356:
            case 18357:
            case 18358:
            case 18359:
            case 18360:
            case 18361:
            case 18564:
            case 18565:
            case 18566:
            case 18567:
            case 18568:
            case 18569:
            case 18570:
            case 18571:
            case 18572:
            case 18573:
            case 18574:
            case 18575:
            case 18576:
            case 18578:
            case 18579:
            case 18580:
            case 18581:
            case 18582:
            case 18583:
            case 18584:
            case 18585:
            case 18586:
            case 18587:
            case 18588:
            case 18589:
            case 18590:
            case 18591:
            case 18592:
            case 18593:
            case 18594:
            case 18595:
            case 18596:
            case 18597:
            case 18598:
            case 18599:
            case 18600:
            case 18601:
            case 18602:
            case 18603:
            case 18604:
            case 18605:
            case 18606:
            case 18607:
            case 18617:
            case 18618:
            case 18619:
            case 18620:
            case 18621:
            case 18622:
            case 18623:
            case 18624:
            case 18625:
            case 18626:
            case 18627:
            case 18628:
            case 18609:
            case 18611:
            case 18612:
            case 18613:
            case 18614:
            case 18615:
            case 18616:
            case 22267:
            case 22268:
                spellInfo->Effects[EFFECT_0].DieSides = 451;
                //spellInfo->Effects[EFFECT_0].BasePoints = 1274;
                break;
                // Onyxian Warder
            case 18958:
                spellInfo->Effects[EFFECT_0].DieSides = 9;
                spellInfo->Effects[EFFECT_1].DieSides = 1;
                spellInfo->Effects[EFFECT_0].RealPointsPerLevel = 1.4f;
                spellInfo->Effects[EFFECT_1].RealPointsPerLevel = -1.2f;
                spellInfo->Effects[EFFECT_0].BasePoints = 55;
                spellInfo->Effects[EFFECT_1].BasePoints = -21;
                break;
            case 20203:
                spellInfo->Effects[EFFECT_0].DieSides = 133;
                spellInfo->Effects[EFFECT_0].BasePoints = 463;
                break;
            case 20228:
                spellInfo->Effects[EFFECT_0].DieSides = 225;
                spellInfo->Effects[EFFECT_0].BasePoints = 1387;
                break;
            case 91003:
                spellInfo->Targets |= TARGET_FLAG_DEST_LOCATION;
                spellInfo->Effects[EFFECT_0].TargetA = SpellImplicitTargetInfo(TARGET_DEST_DEST);
                spellInfo->RangeEntry = sSpellRangeStore.LookupEntry(13); // 50000yd
                spellInfo->DurationEntry = sSpellDurationStore.LookupEntry(5);
                break;
        }
    }
};

void AddSC_instance_onyxias_lair_40()
{
    new instance_onyxias_lair_40();
    new global_onyxia_tuning_script();
    new onyxia_entrance_trigger();
}
