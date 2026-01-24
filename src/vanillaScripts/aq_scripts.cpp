#include "IndividualProgression.h"
#include "ScriptMgr.h"
#include "Player.h"
#include "GameObjectAI.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"
#include "WorldSessionMgr.h"

#define EVENT_AREA_RADIUS 65

enum
{
    QUEST_BANG_A_GONG = 8743,

    GO_GATE_OF_AHN_QIRAJ = 176146,
    GO_GLYPH_OF_AHN_QIRAJ = 176148,
    GO_ROOTS_OF_AHN_QIRAJ = 176147,
    GO_AQ_GHOST_GATE = 180322,

    GLOBAL_TEXT_CHAMPION = 41100,

    SOUND_ROOTS_OPEN = 7114,
    SOUND_DOOR_OPEN = 7115,
    SOUND_RUNES_OPEN = 7116,

    STAGE_OPEN_GATES = 0,
    STAGE_WAR = 1,
    STAGE_RESET = 2
};

//Cordinates for Spawns
Position const SpawnLocation[] =
{
    {-8085.0f, 1528.0f, 2.61f, 3.141592f}, //Kaldorei Infantry
    {-8080.0f, 1526.0f, 2.61f, 3.141592f}, //Kaldorei Infantry
    {-8085.0f, 1524.0f, 2.61f, 3.141592f}, //Kaldorei Infantry
    {-8080.0f, 1522.0f, 2.61f, 3.141592f}, //Kaldorei Infantry
    {-8085.0f, 1520.0f, 2.61f, 3.141592f}, //Kaldorei Infantry

    {-8085.0f, 1524.0f, 2.61f, 3.141592f}, //Kaldorei Infantry
    {-8080.0f, 1522.0f, 2.61f, 3.141592f}, //Kaldorei Infantry
    {-8085.0f, 1520.0f, 2.61f, 3.141592f}, //Kaldorei Infantry
    {-8080.0f, 1518.0f, 2.61f, 3.141592f}, //Kaldorei Infantry
    {-8085.0f, 1516.0f, 2.61f, 3.141592f}, //Kaldorei Infantry

    {-8085.0f, 1518.0f, 2.61f, 3.141592f}, //Kaldorei Infantry
    {-8080.0f, 1516.0f, 2.61f, 3.141592f}, //Kaldorei Infantry
    {-8080.0f, 1520.0f, 2.61f, 3.141592f}, //Kaldorei Infantry
    {-8080.0f, 1424.0f, 2.61f, 3.141592f}, //Kaldorei Infantry
    {-8085.0f, 1422.0f, 2.61f, 3.141592f}, //Kaldorei Infantry
    // 2 waves of warriors
    {-8082.0f, 1528.0f, 2.61f, 3.141592f}, //Kaldorei Infantry
    {-8078.0f, 1525.0f, 2.61f, 3.141592f}, //Kaldorei Infantry
    {-8082.0f, 1524.0f, 2.61f, 3.141592f}, //Kaldorei Infantry
    {-8078.0f, 1526.0f, 2.61f, 3.141592f}, //Kaldorei Infantry
    {-8082.0f, 1527.0f, 2.61f, 3.141592f}, //Kaldorei Infantry

    {-8082.0f, 1524.0f, 2.61f, 3.141592f}, //Kaldorei Infantry
    {-8078.0f, 1522.0f, 2.61f, 3.141592f}, //Kaldorei Infantry
    {-8082.0f, 1520.0f, 2.61f, 3.141592f}, //Kaldorei Infantry
    {-8078.0f, 1518.0f, 2.61f, 3.141592f}, //Kaldorei Infantry
    {-8082.0f, 1516.0f, 2.61f, 3.141592f}, //Kaldorei Infantry

    {-8082.0f, 1523.0f, 2.61f, 3.141592f}, //Kaldorei Infantry
    {-8078.0f, 1521.0f, 2.61f, 3.141592f}, //Kaldorei Infantry
    {-8082.0f, 1528.0f, 2.61f, 3.141592f}, //Kaldorei Infantry
    {-8078.0f, 1519.0f, 2.61f, 3.141592f}, //Kaldorei Infantry
    {-8082.0f, 1526.0f, 2.61f, 3.141592f}, //Kaldorei Infantry

    {-8082.0f, 1524.0f, 2.61f, 3.141592f}, //Kaldorei Infantry
    {-8078.0f, 1522.0f, 2.61f, 3.141592f}, //Kaldorei Infantry
    {-8082.0f, 1520.0f, 2.61f, 3.141592f}, //Kaldorei Infantry
    {-8078.0f, 1518.0f, 2.61f, 3.141592f}, //Kaldorei Infantry
    {-8082.0f, 1516.0f, 2.61f, 3.141592f}, //Kaldorei Infantry

    {-8088.0f, 1510.0f, 2.61f, 0.0f}, //Anubisath Conqueror
    {-8084.0f, 1520.0f, 2.61f, 0.0f}, //Anubisath Conqueror
    {-8088.0f, 1530.0f, 2.61f, 0.0f}, //Anubisath Conqueror

    {-8080.0f, 1513.0f, 2.61f, 0.0f}, //Qiraj Wasp
    {-8082.0f, 1523.0f, 2.61f, 0.0f}, //Qiraj Wasp
    {-8085.0f, 1518.0f, 2.61f, 0.0f}, //Qiraj Wasp
    {-8082.0f, 1516.0f, 2.61f, 0.0f}, //Qiraj Wasp
    {-8085.0f, 1520.0f, 2.61f, 0.0f}, //Qiraj Wasp
    {-8080.0f, 1528.0f, 2.61f, 0.0f}, //Qiraj Wasp

    {-8082.0f, 1513.0f, 2.61f, 0.0f}, //Qiraj Wasp
    {-8079.0f, 1523.0f, 2.61f, 0.0f}, //Qiraj Wasp
    {-8080.0f, 1531.0f, 2.61f, 0.0f}, //Qiraj Wasp
    {-8079.0f, 1516.0f, 2.61f, 0.0f}, //Qiraj Wasp
    {-8082.0f, 1520.0f, 2.61f, 0.0f}, //Qiraj Wasp
    {-8080.0f, 1518.0f, 2.61f, 0.0f}, //Qiraj Wasp

    {-8081.0f, 1514.0f, 2.61f, 0.0f}, //Qiraj Tank
    {-8081.0f, 1520.0f, 2.61f, 0.0f}, //Qiraj Tank
    {-8081.0f, 1526.0f, 2.61f, 0.0f}, //Qiraj Tank
    {-8081.0f, 1512.0f, 2.61f, 0.0f}, //Qiraj Tank
    {-8082.0f, 1520.0f, 2.61f, 0.0f}, //Qiraj Tank
    {-8081.0f, 1528.0f, 2.61f, 0.0f}, //Qiraj Tank

    {-8082.0f, 1513.0f, 2.61f, 3.141592f}, //Anubisath Conqueror
    {-8082.0f, 1520.0f, 2.61f, 3.141592f}, //Anubisath Conqueror
    {-8082.0f, 1527.0f, 2.61f, 3.141592f}, //Anubisath Conqueror
};

enum EternalBoard
{
    QUEST_A_PAWN_ON_THE_ETERNAL_BOARD = 8519,

    C_FANDRAL_STAGHELM = 15382,
    C_ARYGOS = 15380,
    C_MERITHRA = 15378,
    C_CAELESTRASZ = 15379,

    ANACHRONOS_SAY_1 = 0,
    ANACHRONOS_SAY_2 = 1,
    ANACHRONOS_SAY_3 = 2,
    ANACHRONOS_SAY_4 = 3,
    ANACHRONOS_SAY_5 = 4,
    ANACHRONOS_SAY_6 = 5,
    ANACHRONOS_SAY_7 = 6,
    ANACHRONOS_SAY_8 = 7,
    ANACHRONOS_SAY_9 = 8,
    ANACHRONOS_SAY_10 = 9,
    ANACHRONOS_EMOTE_1 = 10,
    ANACHRONOS_EMOTE_2 = 11,
    ANACHRONOS_EMOTE_3 = 12,

    FANDRAL_SAY_1 = 0,
    FANDRAL_SAY_2 = 1,
    FANDRAL_SAY_3 = 2,
    FANDRAL_SAY_4 = 3,
    FANDRAL_SAY_5 = 4,
    FANDRAL_SAY_6 = 5,
    FANDRAL_EMOTE_1 = 6,
    FANDRAL_EMOTE_2 = 7,

    CAELESTRASZ_SAY_1 = 0,
    CAELESTRASZ_SAY_2 = 1,
    CAELESTRASZ_YELL_1 = 2,

    ARYGOS_SAY_1 = 0,
    ARYGOS_YELL_1 = 1,
    ARYGOS_EMOTE_1 = 2,

    MERITHRA_SAY_1 = 0,
    MERITHRA_SAY_2 = 1,
    MERITHRA_YELL_1 = 2,
    MERITHRA_EMOTE_1 = 3,
};

struct QuestCinematic
{
    int32 TextId;
    uint32 Creature, Timer;
};

static QuestCinematic EventAnim[] =
{
    {ANACHRONOS_SAY_1, 0, 2000},
    {FANDRAL_SAY_1, 1, 4000},
    {MERITHRA_EMOTE_1, 3, 500},
    {MERITHRA_SAY_1, 3, 500},
    {ARYGOS_EMOTE_1, 2, 2000},
    {CAELESTRASZ_SAY_1, 4, 8000},
    {MERITHRA_SAY_2, 3, 6000},
    {0, 3, 2000},
    {MERITHRA_YELL_1, 3, 2500},
    {0, 3, 3000}, //Morph
    {0, 3, 4000}, //EmoteLiftoff
    {0, 3, 4000}, // spell
    {0, 3, 1250}, //fly
    {0, 3, 250}, //remove flags
    {ARYGOS_SAY_1, 2, 3000},
    {0, 3, 2000},
    {ARYGOS_YELL_1, 2, 3000},
    {0, 3, 3000}, //Morph
    {0, 3, 4000}, //EmoteLiftoff
    {0, 3, 4000}, // spell
    {0, 3, 1000}, //fly
    {0, 3, 1000}, //remove flags
    {CAELESTRASZ_SAY_2, 4, 5000},
    {0, 3, 3000},
    {CAELESTRASZ_YELL_1, 4, 3000},
    {0, 3, 3000}, //Morph
    {0, 3, 4000}, //EmoteLiftoff
    {0, 3, 2500}, // spell
    {ANACHRONOS_SAY_2, 0, 2000},
    {0, 3, 250}, //fly
    {0, 3, 25}, //remove flags
    {FANDRAL_SAY_2, 1, 3000},
    {ANACHRONOS_SAY_3, 0, 10000}, //Both run through the armies
    {0, 3, 2000}, // Sands will stop
    {0, 3, 8000}, // Summon Gate
    {ANACHRONOS_SAY_4, 0, 4000},
    {0, 0, 2000}, //spell 1-> Arcane cosmetic (Mobs freeze)
    {0, 0, 5000}, //Spell 2-> Arcane long cosmetic (barrier appears) (Barrier -> Glyphs)
    {0, 0, 7000}, //BarrieR
    {0, 0, 4000}, //Glyphs
    {ANACHRONOS_SAY_5, 0, 2000},
    {0, 0, 4000}, // Roots
    {FANDRAL_SAY_3, 1, 3000}, //Root Text
    {FANDRAL_EMOTE_1, 1, 3000}, //falls knee
    {ANACHRONOS_SAY_6, 0, 3000},
    {ANACHRONOS_SAY_7, 0, 3000},
    {ANACHRONOS_SAY_8, 0, 8000},
    {ANACHRONOS_EMOTE_1, 0, 1000}, //Give Scepter
    {FANDRAL_SAY_4, 1, 3000},
    {FANDRAL_SAY_5, 1, 3000}, //->Equip hammer~Scepter, throw it at door
    {FANDRAL_EMOTE_2, 1, 3000}, //Throw hammer at door.
    {ANACHRONOS_SAY_9, 0, 3000},
    {FANDRAL_SAY_6, 1, 3000}, //fandral goes away
    {ANACHRONOS_EMOTE_2, 0, 3000},
    {ANACHRONOS_EMOTE_3, 0, 3000},
    {0, 0, 2000},
    {0, 0, 2000},
    {0, 0, 4000},
    {ANACHRONOS_SAY_10, 0, 3000},
    {0, 0, 2000},
    {0, 0, 3000},
    {0, 0, 15000},
    {0, 0, 5000},
    {0, 0, 3500},
    {0, 0, 5000},
    {0, 0, 3500},
    {0, 0, 5000},
    {0, 0, 0}
};

struct WaveData
{
    uint8 SpawnCount, UsedSpawnPoint;
    uint32 CreatureId, SpawnTimer, YellTimer, DespTimer;
    int32 WaveTextId;
};

static WaveData WavesInfo[5] =
{
    {30,  0, 15423, 0, 0, 24000, 0},    // Kaldorei Soldier
    { 3, 35, 15424, 0, 0, 24000, 0},    // Anubisath Conqueror
    {12, 38, 15414, 0, 0, 24000, 0},    // Qiraji Wasps
    { 6, 50, 15422, 0, 0, 24000, 0},    // Qiraji Tanks
    {15, 15, 15423, 0, 0, 24000, 0}     // Kaldorei Soldier
};

struct SpawnSpells
{
    uint32 Timer1, Timer2, SpellId;
};

static SpawnSpells SpawnCast[4] =
{
    {100000, 2000, 33652},   // Stop Time
    {38500, 300000, 28528},  // Poison Cloud
    {58000, 300000, 35871},  // Frost Debuff (need correct spell)
    {80950, 300000, 42075},  // Fire Explosion (need correct spell however this one looks cool)
};

class gobject_scarab_gong : public GameObjectScript
{
private:

public:
    gobject_scarab_gong() : GameObjectScript("gobject_scarab_gong") { }

    struct gobject_scarab_gongAI : GameObjectAI
    {
        uint32 eventTimer;
        uint32 eventStep;
        uint32 eventStage;

        GameObject* go_aq_barrier;
        GameObject* go_aq_gate_runes;
        GameObject* go_aq_gate_roots;
        // Invisible AQ barrier - removed by server during event, but we are allow event to repeat, so we do not place it
//        GameObject *go_aq_ghost_gate;

        explicit gobject_scarab_gongAI(GameObject* object) : GameObjectAI(object)
        {
            eventTimer = 0;
            eventStep = 0;
            eventStage = STAGE_OPEN_GATES;
            // The Gong normally needs the quest active to interact, but we need to make it available for players to re-use
            me->RemoveGameObjectFlag(GO_FLAG_INTERACT_COND);
        };

        void UpdateAI(uint32 diff) override
        {
            if (eventTimer)
            {
                if (eventTimer <= diff)
                {
                    switch (eventStage)
                    {
                    case STAGE_OPEN_GATES:
                        HandleOpeningStage();
                        break;
                    case STAGE_WAR:
                        HandleWarStage();
                        break;
                    case STAGE_RESET:
                        ResetAQGates();
                        break;
                    }
                }
                else
                    eventTimer -= diff;
            }
        }

        bool CanBeSeen(Player const* player) override
        {
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            if (!target)
            {
                return false;
            }

            /* The Scarab Gong can still be seen during the outdoor AQ war.  */
            if (sIndividualProgression->hasPassedProgression(target, PROGRESSION_AQ_WAR))
            {
                return sIndividualProgression->isBeforeProgression(target, PROGRESSION_PRE_AQ);
            }
            else
            {
                return sIndividualProgression->hasPassedProgression(target, PROGRESSION_BLACKWING_LAIR);
            }

        }

        void NextStage(uint32 timeUntil = 100)
        {
            eventStage++;
            eventStep = 0;
            eventTimer = timeUntil;
        }

        void HandleOpeningStage()
        {
            switch (eventStep)
            {
            case 0:
                go_aq_gate_roots->ResetDoorOrButton();
                go_aq_gate_roots->UseDoorOrButton();
                me->PlayDirectSound(SOUND_ROOTS_OPEN);
                eventTimer = 5000;
                break;

            case 1:
                go_aq_gate_runes->ResetDoorOrButton();
                go_aq_gate_runes->UseDoorOrButton();
                me->PlayDirectSound(SOUND_RUNES_OPEN);
                eventTimer = 8000;
                break;

            case 2:
                go_aq_barrier->ResetDoorOrButton();
                go_aq_barrier->UseDoorOrButton();
                me->PlayDirectSound(SOUND_DOOR_OPEN);
                NextStage(10000);
                return;
            }

            eventStep++;
        }

        void HandleWarStage()
        {
            // Not handled in Individual Progression, so we go right to resetting the gate timer
            NextStage(5 * MINUTE * IN_MILLISECONDS);
        }

        void ResetAQGates()
        {
            go_aq_barrier->SetGoState(GO_STATE_READY);
            go_aq_gate_runes->SetGoState(GO_STATE_READY);
            go_aq_gate_roots->ResetDoorOrButton();
            go_aq_gate_roots->SetGoState(GO_STATE_READY);

            EventDone();
        }

        void EventDone()
        {
            NextStage(0);
            eventStage = STAGE_OPEN_GATES; // Reset to the initial stage for potential future events
        }

        void OpenGate(Player* player, bool announce)
        {
            go_aq_barrier = GetClosestGameObjectWithEntry(me, GO_GATE_OF_AHN_QIRAJ, 150);
            go_aq_gate_runes = GetClosestGameObjectWithEntry(me, GO_GLYPH_OF_AHN_QIRAJ, 150);
            go_aq_gate_roots = GetClosestGameObjectWithEntry(me, GO_ROOTS_OF_AHN_QIRAJ, 150);
            //            go_aq_ghost_gate = GetClosestGameObjectWithEntry(me, GO_AQ_GHOST_GATE, 150);

            if (!go_aq_barrier || !go_aq_gate_runes || !go_aq_gate_roots)
                return;

            // The door is already open - don't open it again
            if (go_aq_barrier->GetGoState() == GO_STATE_ACTIVE)
                return;

            if (announce)
                player->GetMap()->SendZoneText(GLOBAL_TEXT_CHAMPION, player->GetName().c_str());

            eventTimer += 1000;
            eventStage = STAGE_OPEN_GATES;
        }
    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_scarab_gongAI(object);
    }

    bool OnQuestReward(Player* player, GameObject* go, Quest const* quest, uint32 /*opt*/) override
    {
        if ((quest->GetQuestId() != QUEST_BANG_A_GONG) && (player->GetQuestStatus(SIMPLY_BANG_A_GONG) != QUEST_STATUS_REWARDED))
            return false;

        if (auto* gongAI = dynamic_cast<gobject_scarab_gongAI*>(go->AI()))
            gongAI->OpenGate(player, true);

        return true;
    }

    bool OnGossipHello(Player* player, GameObject* go) override
    {
        if ((player->GetQuestStatus(QUEST_BANG_A_GONG) == QUEST_STATUS_REWARDED) || (player->GetQuestStatus(SIMPLY_BANG_A_GONG) == QUEST_STATUS_REWARDED))
        {
            if (auto* gongAI = dynamic_cast<gobject_scarab_gongAI*>(go->AI()))
                gongAI->OpenGate(player, false);
        }
        else
        {
            player->PrepareQuestMenu(go->GetGUID());
            player->SendPreparedQuest(go->GetGUID());
        }
        return true;
    }
};

class aq_gate : public GameObjectScript
{
public:
    aq_gate() : GameObjectScript("aq_gate") {}

    struct aq_gateAI : public GameObjectAI
    {
        explicit aq_gateAI(GameObject* go) : GameObjectAI(go) {}

        bool CanBeSeen(Player const* player) override
        {
            Player* target = ObjectAccessor::FindConnectedPlayer(player->GetGUID());
            if (!target)
            {
                return false;
            }

            return sIndividualProgression->isBeforeProgression(target, PROGRESSION_AQ_WAR); // gate can be opened during the AQ WAR by interacting with the Scarab Gong
        }
    };

    GameObjectAI* GetAI(GameObject* go) const override
    {
        return new aq_gateAI(go);
    }
};

class npc_anachronos_the_ancient : public CreatureScript
{
public:
    npc_anachronos_the_ancient() : CreatureScript("npc_anachronos_the_ancient") {}

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_anachronos_the_ancientAI(creature);
    }

    struct npc_anachronos_the_ancientAI : public ScriptedAI
    {
        npc_anachronos_the_ancientAI(Creature* creature) : ScriptedAI(creature) {}

        uint32 AnimationTimer;
        uint8 AnimationCount;

        ObjectGuid AnachronosQuestTriggerGUID;
        ObjectGuid MerithraGUID;
        ObjectGuid ArygosGUID;
        ObjectGuid CaelestraszGUID;
        ObjectGuid FandralGUID;
        ObjectGuid PlayerGUID;
        bool eventEnd;

        void Reset() override
        {
            AnimationTimer = 1500;
            AnimationCount = 0;
            AnachronosQuestTriggerGUID.Clear();
            MerithraGUID.Clear();
            ArygosGUID.Clear();
            CaelestraszGUID.Clear();
            FandralGUID.Clear();
            PlayerGUID.Clear();
            eventEnd = false;

            me->SetUnitFlag(UNIT_FLAG_NON_ATTACKABLE);
        }

        void HandleAnimation()
        {
            Player* player = ObjectAccessor::FindConnectedPlayer(PlayerGUID);

            if (!player)
            {
                return;
            }

            Creature* Fandral = player->FindNearestCreature(C_FANDRAL_STAGHELM, 100.0f);
            Creature* Arygos = player->FindNearestCreature(C_ARYGOS, 100.0f);
            Creature* Caelestrasz = player->FindNearestCreature(C_CAELESTRASZ, 100.0f);
            Creature* Merithra = player->FindNearestCreature(C_MERITHRA, 100.0f);

            if (!Fandral || !Arygos || !Caelestrasz || !Merithra)
                return;

            AnimationTimer = EventAnim[AnimationCount].Timer;
            if (!eventEnd)
            {
                switch (AnimationCount)
                {
                case 0:
                    Talk(ANACHRONOS_SAY_1, Fandral);
                    break;
                case 1:
                    Fandral->SetTarget(me->GetGUID());
                    Fandral->AI()->Talk(FANDRAL_SAY_1, me);
                    break;
                case 2:
                    Fandral->SetTarget();
                    Merithra->AI()->Talk(MERITHRA_EMOTE_1);
                    break;
                case 3:
                    Merithra->AI()->Talk(MERITHRA_SAY_1);
                    break;
                case 4:
                    Arygos->AI()->Talk(ARYGOS_EMOTE_1);
                    break;
                case 5:
                    Caelestrasz->SetTarget(Fandral->GetGUID());
                    Caelestrasz->AI()->Talk(CAELESTRASZ_SAY_1);
                    break;
                case 6:
                    Merithra->AI()->Talk(MERITHRA_SAY_2);
                    break;
                case 7:
                    Caelestrasz->SetTarget();
                    Merithra->GetMotionMaster()->MoveCharge(-8065, 1530, 2.61f, 10);
                    break;
                case 8:
                    Merithra->AI()->Talk(MERITHRA_YELL_1);
                    break;
                case 9:
                    Merithra->CastSpell(Merithra, 25105, true);
                    break;
                case 10:
                    break;
                case 11:
                    Merithra->CastSpell(Merithra, 24818, false);
                    break;
                case 12:
                    Merithra->GetMotionMaster()->MovePoint(1, -8100, 1530, 50);
                    break;
                case 13:
                    break;
                case 14:
                    Arygos->AI()->Talk(ARYGOS_SAY_1);
                    break;
                case 15:
                    Merithra->SetVisible(false);
                    Merithra->GetMotionMaster()->MoveCharge(-8034.535f, 1535.14f, 2.61f, 42);
                    Arygos->GetMotionMaster()->MoveCharge(-8065, 1530, 2.61f, 10);
                    break;
                case 16:
                    Arygos->AI()->Talk(ARYGOS_YELL_1);
                    break;
                case 17:
                    Arygos->CastSpell(Arygos, 25107, true);
                    break;
                case 18:
                    break;
                case 19:
                    Arygos->CastSpell(Arygos, 50505, false);
                    break;
                case 20:
                    Arygos->GetMotionMaster()->MovePoint(1, -8100, 1530, 50);
                    break;
                case 21:
                    break;
                case 22:
                    Caelestrasz->AI()->Talk(CAELESTRASZ_SAY_2, Fandral);
                    break;
                case 23:
                    Arygos->SetVisible(false);
                    Arygos->GetMotionMaster()->MoveCharge(-8034.535f, 1535.14f, 2.61f, 10);
                    Caelestrasz->GetMotionMaster()->MoveCharge(-8065, 1530, 2.61f, 10);
                    break;
                case 24:
                    Caelestrasz->AI()->Talk(CAELESTRASZ_YELL_1);
                    break;
                case 25:
                    Caelestrasz->CastSpell(Caelestrasz, 25106, true);
                    break;
                case 26:
                    break;
                case 27:
                    Caelestrasz->CastSpell(Caelestrasz, 54293, false);
                    break;
                case 28:
                    Caelestrasz->GetMotionMaster()->MovePoint(1, -8100, 1530, 50);
                    Talk(ANACHRONOS_SAY_2, Fandral);
                    break;
                case 29:
                    Fandral->AI()->Talk(FANDRAL_SAY_2);
                    break;
                case 30:
                    break;
                case 31:
                    Caelestrasz->SetVisible(false);
                    Caelestrasz->GetMotionMaster()->MoveCharge(-8034.535f, 1535.14f, 2.61f, 42);
                    Talk(ANACHRONOS_SAY_3, Fandral);
                    break;
                case 32:
                    Fandral->GetMotionMaster()->MoveCharge(-8108, 1529, 2.77f, 8);
                    me->GetMotionMaster()->MoveCharge(-8113, 1525, 2.77f, 8);
                    break;//both run to the gate
                case 33:
                    Talk(ANACHRONOS_SAY_4);
                    Caelestrasz->GetMotionMaster()->MoveCharge(-8050, 1473, 65, 15);
                    break; //Text: sands will stop
                case 34:
                    DoCast(player, 23017, true);//Arcane Channeling
                    break;
                case 35:
                    me->CastSpell(-8088, 1520.43f, 2.67f, 25158, true);
                    break;
                case 36:
                    DoCast(player, 25159, true);
                    break;
                case 37:
                    me->SummonGameObject(GO_GATE_OF_AHN_QIRAJ, -8130, 1525, 17.5f, 0, 0, 0, 0, 0, 0);
                    break;
                case 38:
                    DoCast(player, 25166, true);
                    me->SummonGameObject(GO_GLYPH_OF_AHN_QIRAJ, -8130, 1525, 17.5f, 0, 0, 0, 0, 0, 0);
                    break;
                case 39:
                    Talk(ANACHRONOS_SAY_5, Fandral);
                    break;
                case 40:
                    Fandral->CastSpell(me, 25167, true);
                    break;
                case 41:
                    Fandral->SummonGameObject(GO_ROOTS_OF_AHN_QIRAJ, -8130, 1525, 17.5f, 0, 0, 0, 0, 0, 0);
                    Fandral->AI()->Talk(FANDRAL_SAY_3);
                    break;
                case 42:
                    me->CastStop();
                    Fandral->AI()->Talk(FANDRAL_EMOTE_1);
                    break;
                case 43:
                    Fandral->CastStop();
                    break;
                case 44:
                    Talk(ANACHRONOS_SAY_6);
                    break;
                case 45:
                    Talk(ANACHRONOS_SAY_7);
                    break;
                case 46:
                    Talk(ANACHRONOS_SAY_8);
                    me->GetMotionMaster()->MoveCharge(-8110, 1527, 2.77f, 4);
                    break;
                case 47:
                    Talk(ANACHRONOS_EMOTE_1);
                    break;
                case 48:
                    Fandral->AI()->Talk(FANDRAL_SAY_4, me);
                    break;
                case 49:
                    Fandral->AI()->Talk(FANDRAL_SAY_5, me);
                    break;
                case 50:
                    Fandral->AI()->Talk(FANDRAL_EMOTE_2);
                    Fandral->CastSpell(-8127, 1525, 17.5f, 33806, true);
                    break;
                case 51:
                {
                    std::list<Creature*> constructList;

                    me->GetCreatureListWithEntryInGrid(constructList, 15423, 100.0f);
                    me->GetCreatureListWithEntryInGrid(constructList, 15424, 100.0f);
                    me->GetCreatureListWithEntryInGrid(constructList, 15414, 100.0f);
                    me->GetCreatureListWithEntryInGrid(constructList, 15422, 100.0f);

                    if (!constructList.empty())
                    {
                        for (std::list<Creature*>::const_iterator itr = constructList.begin(); itr != constructList.end(); ++itr)
                        {
                            (*itr)->RemoveFromWorld();
                        }
                    }

                    break;
                }
                case 52:
                    Fandral->GetMotionMaster()->MoveCharge(-8028.75f, 1538.795f, 2.61f, 4);
                    Talk(ANACHRONOS_SAY_9);
                    break;
                case 53:
                    Fandral->AI()->Talk(FANDRAL_SAY_6);
                    break;
                case 54:
                    Talk(ANACHRONOS_EMOTE_2);
                    break;
                case 55:
                    //Fandral should not dispear atm.
                    //Fandral->SetVisible(false);
                    break;
                case 56:
                    Talk(ANACHRONOS_EMOTE_3);
                    me->GetMotionMaster()->MoveCharge(-8116, 1522, 3.65f, 4);
                    break;
                case 57:
                    me->GetMotionMaster()->MoveCharge(-8116.7f, 1527, 3.7f, 4);
                    break;
                case 58:
                    me->GetMotionMaster()->MoveCharge(-8112.67f, 1529.9f, 2.86f, 4);
                    break;
                case 59:
                    me->GetMotionMaster()->MoveCharge(-8117.99f, 1532.24f, 3.94f, 4);
                    break;
                case 60:
                    Talk(ANACHRONOS_SAY_10, player);
                    me->GetMotionMaster()->MoveCharge(-8113.46f, 1524.16f, 2.89f, 4);
                    break;
                case 61:
                    me->GetMotionMaster()->MoveCharge(-8057.1f, 1470.32f, 2.61f, 6);

                    if (player->IsInRange(me, 0, 20))
                        player->GroupEventHappens(QUEST_A_PAWN_ON_THE_ETERNAL_BOARD, me);
                    break;
                case 62:
                    me->SetDisplayId(15500);
                    break;
                case 63:
                    me->HandleEmoteCommand(254);
                    me->SetDisableGravity(true);
                    break;
                case 64:
                    me->GetMotionMaster()->MoveCharge(-8000, 1400, 150, 9);
                    me->SetVisible(false);
                    break;
                case 65:
                    if (Creature* AnachronosQuestTrigger = (ObjectAccessor::GetCreature(*me, AnachronosQuestTriggerGUID)))
                    {
                        Talk(ARYGOS_YELL_1);
                        AnachronosQuestTrigger->AI()->EnterEvadeMode();
                        eventEnd = true;
                    }
                    break;
                }
            }
            ++AnimationCount;
        }
        void UpdateAI(uint32 diff) override
        {
            if (AnimationTimer)
            {
                if (AnimationTimer <= diff)
                    HandleAnimation();
                else AnimationTimer -= diff;
            }
            if (AnimationCount < 65)
                me->CombatStop();
            if (AnimationCount == 65 || eventEnd)
                EnterEvadeMode();
        }
    };
};

class npc_qiraj_war_spawn : public CreatureScript
{
public:
    npc_qiraj_war_spawn() : CreatureScript("npc_qiraj_war_spawn") {}

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_qiraj_war_spawnAI(creature);
    }

    struct npc_qiraj_war_spawnAI : public ScriptedAI
    {
        npc_qiraj_war_spawnAI(Creature* creature) : ScriptedAI(creature) {}

        ObjectGuid MobGUID;
        ObjectGuid PlayerGUID;
        uint32 SpellTimer1, SpellTimer2, SpellTimer3, SpellTimer4;
        bool Timers;
        bool hasTarget;

        void Reset() override
        {
            MobGUID.Clear();
            PlayerGUID.Clear();
            Timers = false;
            hasTarget = false;
        }

        void JustEngagedWith(Unit* /*who*/) override {}
        void JustDied(Unit* /*slayer*/) override;

        void UpdateAI(uint32 diff) override
        {
            if (!Timers)
            {
                if (me->GetEntry() == 15424 || me->GetEntry() == 15422 || me->GetEntry() == 15414) //all but Kaldorei Soldiers
                {
                    SpellTimer1 = SpawnCast[1].Timer1;
                    SpellTimer2 = SpawnCast[2].Timer1;
                    SpellTimer3 = SpawnCast[3].Timer1;
                }
                if (me->GetEntry() == 15423 || me->GetEntry() == 15424 || me->GetEntry() == 15422 || me->GetEntry() == 15414)
                    SpellTimer4 = SpawnCast[0].Timer1;
                Timers = true;
            }
            if (me->GetEntry() == 15424 || me->GetEntry() == 15422 || me->GetEntry() == 15414)
            {
                if (SpellTimer1 <= diff)
                {
                    DoCast(me, SpawnCast[1].SpellId);
                    DoCast(me, 24319);
                    SpellTimer1 = SpawnCast[1].Timer2;
                }
                else SpellTimer1 -= diff;
                if (SpellTimer2 <= diff)
                {
                    DoCast(me, SpawnCast[2].SpellId);
                    SpellTimer2 = SpawnCast[2].Timer2;
                }
                else SpellTimer2 -= diff;
                if (SpellTimer3 <= diff)
                {
                    DoCast(me, SpawnCast[3].SpellId);
                    SpellTimer3 = SpawnCast[3].Timer2;
                }
                else SpellTimer3 -= diff;
            }
            if (me->GetEntry() == 15423 || me->GetEntry() == 15424 || me->GetEntry() == 15422 || me->GetEntry() == 15414)
            {
                if (SpellTimer4 <= diff)
                {
                    me->RemoveAllAttackers();
                    me->AttackStop();
                    DoCast(me, 15533);
                    SpellTimer4 = SpawnCast[0].Timer2;
                }
                else SpellTimer4 -= diff;
            }
            if (!hasTarget)
            {
                Unit* target = nullptr;
                if (me->GetEntry() == 15424 || me->GetEntry() == 15422 || me->GetEntry() == 15414)
                    target = me->FindNearestCreature(15423, 20, true);
                if (me->GetEntry() == 15423)
                {
                    uint8 tar = urand(0, 2);

                    if (tar == 0)
                        target = me->FindNearestCreature(15422, 20, true);
                    else if (tar == 1)
                        target = me->FindNearestCreature(15424, 20, true);
                    else if (tar == 2)
                        target = me->FindNearestCreature(15414, 20, true);
                }
                hasTarget = true;
                if (target)
                    AttackStart(target);
            }
            if (!(me->FindNearestCreature(15379, 60)))
                DoCast(me, 33652);

            if (!UpdateVictim())
            {
                hasTarget = false;
                return;
            }

            DoMeleeAttackIfReady();
        }
    };
};

class npc_anachronos_quest_trigger : public CreatureScript
{
public:
    npc_anachronos_quest_trigger() : CreatureScript("npc_anachronos_quest_trigger") {}

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_anachronos_quest_triggerAI(creature);
    }

    struct npc_anachronos_quest_triggerAI : public ScriptedAI
    {
        npc_anachronos_quest_triggerAI(Creature* creature) : ScriptedAI(creature) {}

        ObjectGuid PlayerGUID;

        uint32 WaveTimer;
        uint32 AnnounceTimer;

        int8 LiveCount;
        uint8 WaveCount;

        bool EventStarted;
        bool Announced;
        bool Failed;

        void Reset() override
        {
            PlayerGUID.Clear();

            WaveTimer = 2000;
            AnnounceTimer = 1000;
            LiveCount = 0;
            WaveCount = 0;

            EventStarted = false;
            Announced = false;
            Failed = false;

            me->SetVisible(false);
        }

        void SummonNextWave()
        {
            uint8 locIndex = WavesInfo[WaveCount].UsedSpawnPoint;
            uint8 count = locIndex + WavesInfo[WaveCount].SpawnCount;

            for (uint8 i = locIndex; i <= count; ++i)
            {
                uint32 desptimer = WavesInfo[WaveCount].DespTimer;

                if (Creature* spawn = me->SummonCreature(WavesInfo[WaveCount].CreatureId, SpawnLocation[i], TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, desptimer))
                {
                    if (spawn->GetEntry() == 15423)
                        spawn->SetUInt32Value(UNIT_FIELD_DISPLAYID, 15427 + rand() % 4);
                    if (i >= 30) WaveCount = 1;
                    if (i >= 33) WaveCount = 2;
                    if (i >= 45) WaveCount = 3;
                    if (i >= 51) WaveCount = 4;

                    if (WaveCount < 5) //1-4 Wave
                    {
                        if (npc_qiraj_war_spawn::npc_qiraj_war_spawnAI* spawnAI = CAST_AI(npc_qiraj_war_spawn::npc_qiraj_war_spawnAI, spawn->AI()))
                        {
                            spawnAI->MobGUID = me->GetGUID();
                            spawnAI->PlayerGUID = PlayerGUID;
                        }
                    }
                }
            }

            WaveTimer = WavesInfo[WaveCount].SpawnTimer;
            AnnounceTimer = WavesInfo[WaveCount].YellTimer;
        }

        void CheckEventFail()
        {
            Player* player = ObjectAccessor::GetPlayer(*me, PlayerGUID);
            if (!player)
                return;

            if (Group* EventGroup = player->GetGroup())
            {
                uint8 GroupMemberCount = 0;
                uint8 FailedMemberCount = 0;

                Group::MemberSlotList const& members = EventGroup->GetMemberSlots();

                for (Group::member_citerator itr = members.begin(); itr != members.end(); ++itr)
                {
                    Player* groupMember = ObjectAccessor::GetPlayer(*me, itr->guid);
                    if (!groupMember)
                        continue;
                    if (!groupMember->IsWithinDistInMap(me, EVENT_AREA_RADIUS) && groupMember->GetQuestStatus(QUEST_A_PAWN_ON_THE_ETERNAL_BOARD) == QUEST_STATUS_INCOMPLETE)
                    {
                        groupMember->FailQuest(QUEST_A_PAWN_ON_THE_ETERNAL_BOARD);
                        ++FailedMemberCount;
                    }
                    ++GroupMemberCount;
                }

                if (GroupMemberCount == FailedMemberCount || !player->IsWithinDistInMap(me, EVENT_AREA_RADIUS))
                    Failed = true; //only so event can restart
            }
        }

        void LiveCounter()
        {
            --LiveCount;
            if (!LiveCount)
                Announced = false;
        }

        void UpdateAI(uint32 diff) override
        {
            if (!PlayerGUID || !EventStarted)
                return;

            if (WaveCount < 4)
            {
                if (!Announced && AnnounceTimer <= diff)
                {
                    Talk(WavesInfo[WaveCount].WaveTextId);
                    Announced = true;
                }
                else AnnounceTimer -= diff;

                if (WaveTimer <= diff)
                    SummonNextWave();
                else WaveTimer -= diff;
            }
            CheckEventFail();
            if (WaveCount == 4 || Failed)
                EnterEvadeMode();
        };
    };
};

class gobject_crystalline_tear : public GameObjectScript
{
public:
    gobject_crystalline_tear() : GameObjectScript("gobject_crystalline_tear") {}

    bool OnQuestAccept(Player* player, GameObject* go, Quest const* quest) override
    {
        if (quest->GetQuestId() == QUEST_A_PAWN_ON_THE_ETERNAL_BOARD)
        {
            if (Creature* trigger = go->FindNearestCreature(15454, 100, player))
            {
                Unit* Merithra = trigger->SummonCreature(15378, -8034.535f, 1535.14f, 2.61f, 0, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 220000);
                Unit* Caelestrasz = trigger->SummonCreature(15379, -8032.767f, 1533.148f, 2.61f, 1.5f, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 220000);
                Unit* Arygos = trigger->SummonCreature(15380, -8034.52f, 1537.843f, 2.61f, 5.7f, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 220000);
                /* Unit* Fandral = */ trigger->SummonCreature(15382, -8028.462f, 1535.843f, 2.61f, 3.141592f, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 220000);
                Creature* Anachronos = trigger->SummonCreature(15381, -8028.75f, 1538.795f, 2.61f, 4, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 220000);

                if (Merithra)
                {
                    Merithra->ReplaceAllNpcFlags(UNIT_NPC_FLAG_NONE);
                    Merithra->SetUInt32Value(UNIT_FIELD_BYTES_1, 0);
                    Merithra->SetUInt32Value(UNIT_FIELD_DISPLAYID, 15420);
                    Merithra->SetFaction(FACTION_FRIENDLY);
                }

                if (Caelestrasz)
                {
                    Caelestrasz->ReplaceAllNpcFlags(UNIT_NPC_FLAG_NONE);
                    Caelestrasz->SetUInt32Value(UNIT_FIELD_BYTES_1, 0);
                    Caelestrasz->SetUInt32Value(UNIT_FIELD_DISPLAYID, 15419);
                    Caelestrasz->SetFaction(FACTION_FRIENDLY);
                }

                if (Arygos)
                {
                    Arygos->ReplaceAllNpcFlags(UNIT_NPC_FLAG_NONE);
                    Arygos->SetUInt32Value(UNIT_FIELD_BYTES_1, 0);
                    Arygos->SetUInt32Value(UNIT_FIELD_DISPLAYID, 15418);
                    Arygos->SetFaction(FACTION_FRIENDLY);
                }

                if (Anachronos)
                {
                    if (npc_anachronos_the_ancient::npc_anachronos_the_ancientAI* anachronosAI = CAST_AI(npc_anachronos_the_ancient::npc_anachronos_the_ancientAI, Anachronos->AI()))
                        anachronosAI->PlayerGUID = player->GetGUID();

                    if (npc_anachronos_quest_trigger::npc_anachronos_quest_triggerAI* triggerAI = CAST_AI(npc_anachronos_quest_trigger::npc_anachronos_quest_triggerAI, trigger->AI()))
                    {
                        triggerAI->Failed = false;
                        triggerAI->PlayerGUID = player->GetGUID();
                        triggerAI->EventStarted = true;
                        triggerAI->Announced = true;
                    }
                }
            }
        }
        return true;
    }
};

void AddSC_aq_scripts()
{
    new aq_gate();
    new gobject_scarab_gong();
    new gobject_crystalline_tear();
    new npc_anachronos_quest_trigger();
    new npc_anachronos_the_ancient();
    new npc_qiraj_war_spawn();
}
