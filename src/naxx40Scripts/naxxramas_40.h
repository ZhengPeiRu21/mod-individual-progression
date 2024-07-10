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

#ifndef DEF_NAXXRAMAS_40_H
#define DEF_NAXXRAMAS_40_H

enum NX40Spells
{
    SPELL_SUMMON_CORPSE_SCRABS_5       = 90001, // Changed from 29105 to Level 60 Mob ID for summon
    SPELL_SUMMON_CORPSE_SCRABS_10      = 90002, // Changed from 29105 to Level 60 Mob ID for summon
    SPELL_BOMBARD_SLIME                = 90003, // update summon entry
    SPELL_SUMMON_SPORE                 = 90006,
    SPELL_WEB_WRAP_SUMMON_40           = 90007  // custom summon entry: 16486 -> 351075
};

enum NX40Data
{
    DATA_HEIGAN_EXIT_GATE_OLD_40       = 4130,
    DATA_HEIGAN_EXIT_GATE_40           = 4131,
    DATA_HEIGAN_ERUPTION_TUNNEL_40     = 4132,
    DATA_RAZUVIOUS_40                  = 4133
};

enum NX40GOs
{
    GO_HEIGAN_ENTRY_GATE_40            = 181202,
    GO_HEIGAN_EXIT_GATE_40             = 181203,
    GO_HEIGAN_EXIT_GATE_OLD_40         = 181496,
    GO_HORSEMEN_CHEST_40               = 361000,
    // Gate to enter Naxx 40 from Strath
    GO_STRATH_GATE_40                  = 176424
};

enum NX40NPCs
{
    // Thaddius
    NPC_THADDIUS_40                    = 351000,
    NPC_STALAGG_40                     = 351001,
    NPC_FEUGEN_40                      = 351002,

    // Razuvious
    NPC_RAZUVIOUS_40                   = 351036,

    // Gothik
    NPC_GOTHIK_40                      = 351035,

    // Four horseman
    NPC_HIGHLORD_MOGRAINE_40           = 351037,
    NPC_SIR_ZELIEK_40                  = 351038,
    NPC_LADY_BLAUMEUX_40               = 351040,
    NPC_THANE_KORTHAZZ_40              = 351039,

    // Sapphiron
    NPC_SAPPHIRON_40                   = 351018,

    // Kel'Thuzad
    NPC_KELTHUZAD_40                   = 351019,
    // NPC_LICH_KING_40                   = 16980,

    // Frogger
    // NPC_LIVING_POISON_40               = 16027,
    // NPC_NAXXRAMAS_TRIGGER_40           = 16082,
    // NPC_MR_BIGGLESWORTH_40             = 16998,

    // Patchwerk
    NPC_PATCHWERK_40                   = 351028,
    NPC_PATCHWORK_GOLEM_40             = 351021,
    NPC_BILE_RETCHER_40                = 351022,
    NPC_MAD_SCIENTIST_40               = 351023,
    NPC_LIVING_MONSTROSITY_40          = 351024,
    NPC_SURGICAL_ASSIST_40             = 351025,
    NPC_SLUDGE_BELCHER_40              = 351029,

    // Heigan
    NPC_ROTTING_MAGGOT_40              = 351034,
    NPC_DISEASED_MAGGOT_40             = 351033,
    NPC_EYE_STALK_40                   = 351090,

    NPC_ARCHMAGE_TARSIS                = 16381,
};

enum NX40Maps
{
    MAP_NAXX = 533,
};

enum NX40Graveyards
{
    NAXX40_GRAVEYARD = 909
};

enum NX40AttunementQuests
{
    NAXX40_ATTUNEMENT_1  = 9121,
    NAXX40_ATTUNEMENT_2  = 9122,
    NAXX40_ATTUNEMENT_3  = 9123,
    NAXX40_ENTRANCE_FLAG = 9378
};

#endif
