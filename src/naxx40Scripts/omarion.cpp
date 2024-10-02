#include "Player.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"

enum CraftsSpellIds : uint32
{
    // Tailoring
    LEARN_GLACIAL_GLOVES        = 28261,
    HAS_GLACIAL_GLOVES          = 28205,
    LEARN_GLACIAL_WRISTS        = 28262,
    HAS_GLACIAL_WRISTS          = 28209,
    LEARN_GLACIAL_VEST          = 28260,
    HAS_GLACIAL_VEST            = 28207,
    LEARN_GLACIAL_CLOAK         = 28263,
    HAS_GLACIAL_CLOAK           = 28208,

    // Leatherworking
    LEARN_POLAR_GLOVES          = 28255,
    HAS_POLAR_GLOVES            = 28220,
    LEARN_POLAR_BRACERS         = 28256,
    HAS_POLAR_BRACERS           = 28221,
    LEARN_POLAR_TUNIC           = 28254,
    HAS_POLAR_TUNIC             = 28219,
    LEARN_ICY_SCALE_GAUNTLETS   = 28258,
    HAS_ICY_SCALE_GAUNTLETS     = 28223,
    LEARN_ICY_SCALE_BRACERS     = 28259,
    HAS_ICY_SCALE_BRACERS       = 28224,
    LEARN_ICY_SCALE_BREASTPLATE = 28257,
    HAS_ICY_SCALE_BREASTPLATE   = 28222,

    // Blacksmithing
    LEARN_ICEBANE_GAUNTLETS     = 28253,
    HAS_ICEBANE_GAUNTLETS       = 28243,
    LEARN_ICEBANE_BRACERS       = 28252,
    HAS_ICEBANE_BRACERS         = 28244,
    LEARN_ICEBANE_BREASTPLATE   = 28251,
    HAS_ICEBANE_BREASTPLATE     = 28242
};

enum Say
{
    BROADCAST_TEXT_SPIT_TARGET = 31673
};

enum Requirements
{
    FACTION_ARGENT_DAWN = 529,
    BOOK_REQ_RANK       = REP_HONORED,
    CRAFT1_REQ_RANK     = REP_REVERED,
    CRAFT2_REQ_RANK     = REP_EXALTED,
    MASTER_REQ_SKILL    = 225,
    LEARN_REQ_SKILL     = 300
};

enum Quests
{
    QUEST_OMARIONS_HANDBOOK = 9233,
    OMARIONS_HANDBOOK       = 22719
};

enum Gossips
{
    // NPC Text IDs
    NPC_TEXT_INTRO                 = 8507,
    NPC_TEXT_NO_CRAFTER            = 8516,
    NPC_TEXT_NEW_ENTRY             = 24400,
    NPC_TEXT_TAILORING             = NPC_TEXT_NEW_ENTRY + 1,
    NPC_TEXT_BLACKSMITHING         = NPC_TEXT_NEW_ENTRY + 2,
    NPC_TEXT_LEATHERWORKING        = NPC_TEXT_NEW_ENTRY + 3,

    // Menu IDs
    MENU_ID_ENTRY                  = 24400,
    MENU_ID_NO_CRAFTER             = MENU_ID_ENTRY,
    MENU_ID_TAILORING              = MENU_ID_ENTRY + 1,
    MENU_ID_BLACKSMITHING          = MENU_ID_ENTRY + 2,
    MENU_ID_LEATHERWORKING         = MENU_ID_ENTRY + 3,
    MENU_ID_INTRO                  = MENU_ID_ENTRY + 4,

    // Intro
    ITEM_ID_LEATHERWORKING         = 1,
    ITEM_ID_BLACKSMITHING          = 2,
    ITEM_ID_TAILORING              = 3,
    ITEM_ID_NO_CRAFTER             = 4,

    // Tailoring
    ITEM_ID_GLACIAL_CLOAK          = 1,
    ITEM_ID_GLACIAL_GLOVES         = 2,
    ITEM_ID_GLACIAL_WRISTS         = 3,
    ITEM_ID_GLACIAL_VEST           = 4,
    ITEM_ID_GOODBYE_TAILORING      = 5,

    // Blacksmithing
    ITEM_ID_ICEBANE_BRACERS        = 1,
    ITEM_ID_ICEBANE_GAUNTLETS      = 2,
    ITEM_ID_ICEBANE_BREASTPLATE    = 3,
    ITEM_ID_GOODBYE_BLACKSMITHING  = 4,

    // Leatherworking
    ITEM_ID_POLAR_BRACERS          = 1,
    ITEM_ID_POLAR_GLOVES           = 2,
    ITEM_ID_POLAR_TUNIC            = 3,
    ITEM_ID_ICY_SCALE_BRACERS      = 4,
    ITEM_ID_ICY_SCALE_GAUNTLETS    = 5,
    ITEM_ID_ICY_SCALE_BREASTPLATE  = 6,
    ITEM_ID_GOODBYE_LEATHERWORKING = 7,

    // No crafter, book
    ITEM_ID_GOODBYE_NO_CRAFTER     = 1,

    GOSSIP_CLOSE                   = 100
};

class npc_omarion : public CreatureScript
{
public:
    npc_omarion() : CreatureScript("npc_omarion_gossip") { }

    bool OnGossipHello(Player* player, Creature* creature) override
    {
        ClearGossipMenuFor(player);
        uint32 tailorSkill      = player->GetSkillValue(SKILL_TAILORING);
        uint32 blacksmithSkill  = player->GetSkillValue(SKILL_BLACKSMITHING);
        uint32 leatherworkSkill = player->GetSkillValue(SKILL_LEATHERWORKING);
        if (tailorSkill >= MASTER_REQ_SKILL)
        {
            AddGossipItemFor(player, MENU_ID_INTRO, ITEM_ID_TAILORING, GOSSIP_SENDER_MAIN, MENU_ID_TAILORING);
        }

        if(blacksmithSkill >= MASTER_REQ_SKILL)
        {
            AddGossipItemFor(player, MENU_ID_INTRO, ITEM_ID_BLACKSMITHING, GOSSIP_SENDER_MAIN, MENU_ID_BLACKSMITHING);
        }

        if(leatherworkSkill >= MASTER_REQ_SKILL)
        {
            AddGossipItemFor(player, MENU_ID_INTRO, ITEM_ID_LEATHERWORKING, GOSSIP_SENDER_MAIN, MENU_ID_LEATHERWORKING);
        }

        AddGossipItemFor(player, MENU_ID_INTRO, ITEM_ID_NO_CRAFTER, GOSSIP_SENDER_MAIN, MENU_ID_NO_CRAFTER);
        SendGossipMenuFor(player, NPC_TEXT_INTRO, creature->GetGUID());
        return true;
    }

    void LearnCraftIfNotAlreadyKnown(uint32 learnId, uint32 knowId, Player *player)
    {
        if (!player->HasSpell(knowId))
        {
            player->CastSpell(player, learnId, false);
        }
    }

    void CloseGossipEmoteAndSpitOnPlayer(Player* player, Creature* creature)
    {
        CloseGossipMenuFor(player);
        creature->TextEmote(BROADCAST_TEXT_SPIT_TARGET, player);
        creature->HandleEmoteCommand(EMOTE_ONESHOT_NONE); // skip animation
        creature->HandleEmoteCommand(EMOTE_ONESHOT_RUDE);
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*sender*/, uint32 action) override
    {
        uint32 argentDawnRep    = player->GetReputationRank(FACTION_ARGENT_DAWN);
        uint32 tailorSkill      = player->GetSkillValue(SKILL_TAILORING);
        uint32 blacksmithSkill  = player->GetSkillValue(SKILL_BLACKSMITHING);
        uint32 leatherworkSkill = player->GetSkillValue(SKILL_LEATHERWORKING);

        switch(action)
        {
            case GOSSIP_CLOSE:
                CloseGossipMenuFor(player);
                break;
            case MENU_ID_TAILORING:
                ClearGossipMenuFor(player);
                if (argentDawnRep < CRAFT1_REQ_RANK || tailorSkill < LEARN_REQ_SKILL)
                {
                    CloseGossipEmoteAndSpitOnPlayer(player, creature);
                    break;
                }
                if (argentDawnRep >= CRAFT1_REQ_RANK)
                {
                    AddGossipItemFor(player, MENU_ID_TAILORING, ITEM_ID_GLACIAL_WRISTS, GOSSIP_SENDER_MAIN, LEARN_GLACIAL_WRISTS);
                    AddGossipItemFor(player, MENU_ID_TAILORING, ITEM_ID_GLACIAL_GLOVES, GOSSIP_SENDER_MAIN, LEARN_GLACIAL_GLOVES);
                }
                if (argentDawnRep >= CRAFT2_REQ_RANK)
                {
                    AddGossipItemFor(player, MENU_ID_TAILORING, ITEM_ID_GLACIAL_VEST, GOSSIP_SENDER_MAIN, LEARN_GLACIAL_VEST);
                    AddGossipItemFor(player, MENU_ID_TAILORING, ITEM_ID_GLACIAL_CLOAK, GOSSIP_SENDER_MAIN, LEARN_GLACIAL_CLOAK);
                }
                AddGossipItemFor(player, MENU_ID_TAILORING, ITEM_ID_GOODBYE_TAILORING, GOSSIP_SENDER_MAIN, GOSSIP_CLOSE);
                SendGossipMenuFor(player, NPC_TEXT_TAILORING, creature->GetGUID());
                break;
            case MENU_ID_BLACKSMITHING:
                ClearGossipMenuFor(player);
                if (argentDawnRep < CRAFT1_REQ_RANK || blacksmithSkill < LEARN_REQ_SKILL)
                {
                    CloseGossipEmoteAndSpitOnPlayer(player, creature);
                    break;
                }
                if (argentDawnRep >= CRAFT1_REQ_RANK)
                {
                    AddGossipItemFor(player, MENU_ID_BLACKSMITHING, ITEM_ID_ICEBANE_BRACERS, GOSSIP_SENDER_MAIN, LEARN_ICEBANE_BRACERS);
                    AddGossipItemFor(player, MENU_ID_BLACKSMITHING, ITEM_ID_ICEBANE_GAUNTLETS, GOSSIP_SENDER_MAIN, LEARN_ICEBANE_GAUNTLETS);
                }
                if (argentDawnRep >= CRAFT2_REQ_RANK)
                {
                    AddGossipItemFor(player, MENU_ID_BLACKSMITHING, ITEM_ID_ICEBANE_BREASTPLATE, GOSSIP_SENDER_MAIN, LEARN_ICEBANE_BREASTPLATE);
                }
                AddGossipItemFor(player, MENU_ID_BLACKSMITHING, ITEM_ID_GOODBYE_BLACKSMITHING, GOSSIP_SENDER_MAIN, GOSSIP_CLOSE);
                SendGossipMenuFor(player, NPC_TEXT_BLACKSMITHING, creature->GetGUID());
                break;
            case MENU_ID_LEATHERWORKING:
                ClearGossipMenuFor(player);
                if (argentDawnRep < CRAFT1_REQ_RANK || leatherworkSkill < LEARN_REQ_SKILL)
                {
                    CloseGossipEmoteAndSpitOnPlayer(player, creature);
                    break;
                }
                if (argentDawnRep >= CRAFT1_REQ_RANK)
                {
                    AddGossipItemFor(player, MENU_ID_LEATHERWORKING, ITEM_ID_POLAR_BRACERS, GOSSIP_SENDER_MAIN, LEARN_POLAR_BRACERS);
                    AddGossipItemFor(player, MENU_ID_LEATHERWORKING, ITEM_ID_POLAR_GLOVES, GOSSIP_SENDER_MAIN, LEARN_POLAR_GLOVES);
                }
                if (argentDawnRep >= CRAFT2_REQ_RANK)
                {
                    AddGossipItemFor(player, MENU_ID_LEATHERWORKING, ITEM_ID_POLAR_TUNIC, GOSSIP_SENDER_MAIN, LEARN_POLAR_TUNIC);
                }
                if (argentDawnRep >= CRAFT1_REQ_RANK)
                {
                    AddGossipItemFor(player, MENU_ID_LEATHERWORKING, ITEM_ID_ICY_SCALE_BRACERS, GOSSIP_SENDER_MAIN, LEARN_ICY_SCALE_BRACERS);
                    AddGossipItemFor(player, MENU_ID_LEATHERWORKING, ITEM_ID_ICY_SCALE_GAUNTLETS, GOSSIP_SENDER_MAIN, LEARN_ICY_SCALE_GAUNTLETS);
                }
                if (argentDawnRep >= CRAFT2_REQ_RANK)
                {
                    AddGossipItemFor(player, MENU_ID_LEATHERWORKING, ITEM_ID_ICY_SCALE_BREASTPLATE, GOSSIP_SENDER_MAIN, LEARN_ICY_SCALE_BREASTPLATE);
                }
                AddGossipItemFor(player, MENU_ID_LEATHERWORKING, ITEM_ID_GOODBYE_LEATHERWORKING, GOSSIP_SENDER_MAIN, GOSSIP_CLOSE);
                SendGossipMenuFor(player, NPC_TEXT_LEATHERWORKING, creature->GetGUID());
                break;
            case MENU_ID_NO_CRAFTER:
                ClearGossipMenuFor(player);
                if (argentDawnRep < BOOK_REQ_RANK)
                {
                    CloseGossipEmoteAndSpitOnPlayer(player, creature);
                    break;
                }
                if (player->GetQuestStatus(QUEST_OMARIONS_HANDBOOK) == QUEST_STATUS_NONE && !player->HasItemCount(OMARIONS_HANDBOOK, 1, true))
                {
                    player->AddItem(OMARIONS_HANDBOOK, 1);
                }
                AddGossipItemFor(player, MENU_ID_NO_CRAFTER, ITEM_ID_GOODBYE_NO_CRAFTER, GOSSIP_SENDER_MAIN, GOSSIP_CLOSE);
                SendGossipMenuFor(player, NPC_TEXT_NO_CRAFTER, creature->GetGUID());
                break;
            case LEARN_GLACIAL_CLOAK:
                LearnCraftIfNotAlreadyKnown(LEARN_GLACIAL_CLOAK, HAS_GLACIAL_CLOAK, player);
                SendGossipMenuFor(player, NPC_TEXT_TAILORING, creature->GetGUID());
                break;
            case LEARN_GLACIAL_GLOVES:
                LearnCraftIfNotAlreadyKnown(LEARN_GLACIAL_GLOVES, HAS_GLACIAL_GLOVES, player);
                SendGossipMenuFor(player, NPC_TEXT_TAILORING, creature->GetGUID());
                break;
            case LEARN_GLACIAL_WRISTS:
                LearnCraftIfNotAlreadyKnown(LEARN_GLACIAL_WRISTS, HAS_GLACIAL_WRISTS, player);
                SendGossipMenuFor(player, NPC_TEXT_TAILORING, creature->GetGUID());
                break;
            case LEARN_GLACIAL_VEST:
                LearnCraftIfNotAlreadyKnown(LEARN_GLACIAL_VEST, HAS_GLACIAL_VEST, player);
                SendGossipMenuFor(player, NPC_TEXT_TAILORING, creature->GetGUID());
                break;
            case LEARN_ICEBANE_BRACERS:
                LearnCraftIfNotAlreadyKnown(LEARN_ICEBANE_BRACERS, HAS_ICEBANE_BRACERS, player);
                SendGossipMenuFor(player, NPC_TEXT_BLACKSMITHING, creature->GetGUID());
                break;
            case LEARN_ICEBANE_GAUNTLETS:
                LearnCraftIfNotAlreadyKnown(LEARN_ICEBANE_GAUNTLETS, HAS_ICEBANE_GAUNTLETS, player);
                SendGossipMenuFor(player, NPC_TEXT_BLACKSMITHING, creature->GetGUID());
                break;
            case LEARN_ICEBANE_BREASTPLATE:
                LearnCraftIfNotAlreadyKnown(LEARN_ICEBANE_BREASTPLATE, HAS_ICEBANE_BREASTPLATE, player);
                SendGossipMenuFor(player, NPC_TEXT_BLACKSMITHING, creature->GetGUID());
                break;
            case LEARN_POLAR_BRACERS:
                LearnCraftIfNotAlreadyKnown(LEARN_POLAR_BRACERS, HAS_POLAR_BRACERS, player);
                SendGossipMenuFor(player, NPC_TEXT_LEATHERWORKING, creature->GetGUID());
                break;
            case LEARN_POLAR_GLOVES:
                LearnCraftIfNotAlreadyKnown(LEARN_POLAR_GLOVES, HAS_POLAR_GLOVES, player);
                SendGossipMenuFor(player, NPC_TEXT_LEATHERWORKING, creature->GetGUID());
                break;
            case LEARN_POLAR_TUNIC:
                LearnCraftIfNotAlreadyKnown(LEARN_POLAR_TUNIC, HAS_POLAR_TUNIC, player);
                SendGossipMenuFor(player, NPC_TEXT_LEATHERWORKING, creature->GetGUID());
                break;
            case LEARN_ICY_SCALE_BRACERS:
                LearnCraftIfNotAlreadyKnown(LEARN_ICY_SCALE_BRACERS, HAS_ICY_SCALE_BRACERS, player);
                SendGossipMenuFor(player, NPC_TEXT_LEATHERWORKING, creature->GetGUID());
                break;
            case LEARN_ICY_SCALE_GAUNTLETS:
                LearnCraftIfNotAlreadyKnown(LEARN_ICY_SCALE_GAUNTLETS, HAS_ICY_SCALE_GAUNTLETS, player);
                SendGossipMenuFor(player, NPC_TEXT_LEATHERWORKING, creature->GetGUID());
                break;
            case LEARN_ICY_SCALE_BREASTPLATE:
                LearnCraftIfNotAlreadyKnown(LEARN_ICY_SCALE_BREASTPLATE, HAS_ICY_SCALE_BREASTPLATE, player);
                SendGossipMenuFor(player, NPC_TEXT_LEATHERWORKING, creature->GetGUID());
                break;
        }

        return true;
    }
};

void AddSC_npc_omarion_40()
{
    new npc_omarion();
}
