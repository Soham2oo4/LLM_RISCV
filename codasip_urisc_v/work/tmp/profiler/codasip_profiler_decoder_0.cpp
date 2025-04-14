/**
 * Codasip s.r.o.
 *
 * CONFIDENTIAL
 *
 * Copyright 2025 Codasip s.r.o.
 *
 * All Rights Reserved.
 * This file is part of the Codasip Studio product. No part of the Studio product, including this
 * file, may be use, copied, modified, or distributed except in accordance with the terms contained
 * in Codasip license agreement under which you obtained this file.
 *
 * \file
 * \date    2025-04-14
 * \author  Codasip (c) source generator
 * \version 9.4.2
 */
#include "codasip_profiler_decoder_0.h"

namespace codasip {
namespace profiler {
namespace MI15codasip_urisc_v {

/**
 *  \brief  Parser_MI10opc_storesIH5_3isa3isa13_10opc_stores3opc_bc__14_13_12_6_5_4_3_2_1_0_bs_32
 */
int MI3isaIH5_3isa3isa::Parser_MI10opc_storesIH5_3isa3isa13_10opc_stores3opc_bc__14_13_12_6_5_4_3_2_1_0_bs_32(const uint32_t input)
{
        switch (((input & 0x707f) )) {
        case ( 0x23 /*XXXXXXXXXXXXXXXXX000XXXXX0100011*/ ):
        {
            codasip_switch_MI10opc_storesIH5_3isa3isa13_10opc_stores3opc = CODASIP_SWITCH_VALUE_MI10opc_storebIH5_3isa3isa13_10opc_stores3opc;
            break;
        }
        case ( 0x1023 /*XXXXXXXXXXXXXXXXX001XXXXX0100011*/ ):
        {
            codasip_switch_MI10opc_storesIH5_3isa3isa13_10opc_stores3opc = CODASIP_SWITCH_VALUE_MI10opc_storehIH5_3isa3isa13_10opc_stores3opc;
            break;
        }
        case ( 0x2023 /*XXXXXXXXXXXXXXXXX010XXXXX0100011*/ ):
        {
            codasip_switch_MI10opc_storesIH5_3isa3isa13_10opc_stores3opc = CODASIP_SWITCH_VALUE_MI10opc_storewIH5_3isa3isa13_10opc_stores3opc;
            break;
        }
        default: 
            return INSTPARSER_INVALIDCODE;
        }
        return INSTPARSER_OK;
}
/**
 *  \brief  Parser_MI4regsIH5_3isa3isa9_7reg_any3dst_bc__11_10_9_8_7_bs_32
 */
int MI3isaIH5_3isa3isa::Parser_MI4regsIH5_3isa3isa9_7reg_any3dst_bc__11_10_9_8_7_bs_32(const uint32_t input)
{
        switch (((input & 0xf80) )) {
        case ( 0x80 /*XXXXXXXXXXXXXXXXXXXX00001*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3dst = CODASIP_SWITCH_VALUE_MI4reg1IH5_3isa3isa9_7reg_any3dst;
            break;
        }
        case ( 0x180 /*XXXXXXXXXXXXXXXXXXXX00011*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3dst = CODASIP_SWITCH_VALUE_MI4reg3IH5_3isa3isa9_7reg_any3dst;
            break;
        }
        case ( 0x100 /*XXXXXXXXXXXXXXXXXXXX00010*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3dst = CODASIP_SWITCH_VALUE_MI4reg2IH5_3isa3isa9_7reg_any3dst;
            break;
        }
        case ( 0x380 /*XXXXXXXXXXXXXXXXXXXX00111*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3dst = CODASIP_SWITCH_VALUE_MI4reg7IH5_3isa3isa9_7reg_any3dst;
            break;
        }
        case ( 0x300 /*XXXXXXXXXXXXXXXXXXXX00110*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3dst = CODASIP_SWITCH_VALUE_MI4reg6IH5_3isa3isa9_7reg_any3dst;
            break;
        }
        case ( 0x280 /*XXXXXXXXXXXXXXXXXXXX00101*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3dst = CODASIP_SWITCH_VALUE_MI4reg5IH5_3isa3isa9_7reg_any3dst;
            break;
        }
        case ( 0x200 /*XXXXXXXXXXXXXXXXXXXX00100*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3dst = CODASIP_SWITCH_VALUE_MI4reg4IH5_3isa3isa9_7reg_any3dst;
            break;
        }
        case ( 0x780 /*XXXXXXXXXXXXXXXXXXXX01111*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3dst = CODASIP_SWITCH_VALUE_MI5reg15IH5_3isa3isa9_7reg_any3dst;
            break;
        }
        case ( 0x700 /*XXXXXXXXXXXXXXXXXXXX01110*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3dst = CODASIP_SWITCH_VALUE_MI5reg14IH5_3isa3isa9_7reg_any3dst;
            break;
        }
        case ( 0x680 /*XXXXXXXXXXXXXXXXXXXX01101*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3dst = CODASIP_SWITCH_VALUE_MI5reg13IH5_3isa3isa9_7reg_any3dst;
            break;
        }
        case ( 0x600 /*XXXXXXXXXXXXXXXXXXXX01100*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3dst = CODASIP_SWITCH_VALUE_MI5reg12IH5_3isa3isa9_7reg_any3dst;
            break;
        }
        case ( 0x580 /*XXXXXXXXXXXXXXXXXXXX01011*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3dst = CODASIP_SWITCH_VALUE_MI5reg11IH5_3isa3isa9_7reg_any3dst;
            break;
        }
        case ( 0x500 /*XXXXXXXXXXXXXXXXXXXX01010*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3dst = CODASIP_SWITCH_VALUE_MI5reg10IH5_3isa3isa9_7reg_any3dst;
            break;
        }
        case ( 0x480 /*XXXXXXXXXXXXXXXXXXXX01001*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3dst = CODASIP_SWITCH_VALUE_MI4reg9IH5_3isa3isa9_7reg_any3dst;
            break;
        }
        case ( 0x400 /*XXXXXXXXXXXXXXXXXXXX01000*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3dst = CODASIP_SWITCH_VALUE_MI4reg8IH5_3isa3isa9_7reg_any3dst;
            break;
        }
        case ( 0xf80 /*XXXXXXXXXXXXXXXXXXXX11111*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3dst = CODASIP_SWITCH_VALUE_MI5reg31IH5_3isa3isa9_7reg_any3dst;
            break;
        }
        case ( 0xf00 /*XXXXXXXXXXXXXXXXXXXX11110*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3dst = CODASIP_SWITCH_VALUE_MI5reg30IH5_3isa3isa9_7reg_any3dst;
            break;
        }
        case ( 0xe80 /*XXXXXXXXXXXXXXXXXXXX11101*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3dst = CODASIP_SWITCH_VALUE_MI5reg29IH5_3isa3isa9_7reg_any3dst;
            break;
        }
        case ( 0xe00 /*XXXXXXXXXXXXXXXXXXXX11100*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3dst = CODASIP_SWITCH_VALUE_MI5reg28IH5_3isa3isa9_7reg_any3dst;
            break;
        }
        case ( 0xd80 /*XXXXXXXXXXXXXXXXXXXX11011*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3dst = CODASIP_SWITCH_VALUE_MI5reg27IH5_3isa3isa9_7reg_any3dst;
            break;
        }
        case ( 0xd00 /*XXXXXXXXXXXXXXXXXXXX11010*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3dst = CODASIP_SWITCH_VALUE_MI5reg26IH5_3isa3isa9_7reg_any3dst;
            break;
        }
        case ( 0xc80 /*XXXXXXXXXXXXXXXXXXXX11001*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3dst = CODASIP_SWITCH_VALUE_MI5reg25IH5_3isa3isa9_7reg_any3dst;
            break;
        }
        case ( 0xc00 /*XXXXXXXXXXXXXXXXXXXX11000*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3dst = CODASIP_SWITCH_VALUE_MI5reg24IH5_3isa3isa9_7reg_any3dst;
            break;
        }
        case ( 0xb80 /*XXXXXXXXXXXXXXXXXXXX10111*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3dst = CODASIP_SWITCH_VALUE_MI5reg23IH5_3isa3isa9_7reg_any3dst;
            break;
        }
        case ( 0xb00 /*XXXXXXXXXXXXXXXXXXXX10110*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3dst = CODASIP_SWITCH_VALUE_MI5reg22IH5_3isa3isa9_7reg_any3dst;
            break;
        }
        case ( 0xa80 /*XXXXXXXXXXXXXXXXXXXX10101*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3dst = CODASIP_SWITCH_VALUE_MI5reg21IH5_3isa3isa9_7reg_any3dst;
            break;
        }
        case ( 0xa00 /*XXXXXXXXXXXXXXXXXXXX10100*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3dst = CODASIP_SWITCH_VALUE_MI5reg20IH5_3isa3isa9_7reg_any3dst;
            break;
        }
        case ( 0x980 /*XXXXXXXXXXXXXXXXXXXX10011*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3dst = CODASIP_SWITCH_VALUE_MI5reg19IH5_3isa3isa9_7reg_any3dst;
            break;
        }
        case ( 0x900 /*XXXXXXXXXXXXXXXXXXXX10010*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3dst = CODASIP_SWITCH_VALUE_MI5reg18IH5_3isa3isa9_7reg_any3dst;
            break;
        }
        case ( 0x880 /*XXXXXXXXXXXXXXXXXXXX10001*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3dst = CODASIP_SWITCH_VALUE_MI5reg17IH5_3isa3isa9_7reg_any3dst;
            break;
        }
        case ( 0x800 /*XXXXXXXXXXXXXXXXXXXX10000*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3dst = CODASIP_SWITCH_VALUE_MI5reg16IH5_3isa3isa9_7reg_any3dst;
            break;
        }
        default: 
            return INSTPARSER_INVALIDCODE;
        }
        return INSTPARSER_OK;
}
/**
 *  \brief  Parser_MI4regsIH5_3isa3isa9_7reg_any3src_bc__19_18_17_16_15_bs_32
 */
int MI3isaIH5_3isa3isa::Parser_MI4regsIH5_3isa3isa9_7reg_any3src_bc__19_18_17_16_15_bs_32(const uint32_t input)
{
        switch (((input & 0xf8000) )) {
        case ( 0x8000 /*XXXXXXXXXXXX00001*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3src = CODASIP_SWITCH_VALUE_MI4reg1IH5_3isa3isa9_7reg_any3src;
            break;
        }
        case ( 0x18000 /*XXXXXXXXXXXX00011*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3src = CODASIP_SWITCH_VALUE_MI4reg3IH5_3isa3isa9_7reg_any3src;
            break;
        }
        case ( 0x10000 /*XXXXXXXXXXXX00010*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3src = CODASIP_SWITCH_VALUE_MI4reg2IH5_3isa3isa9_7reg_any3src;
            break;
        }
        case ( 0x38000 /*XXXXXXXXXXXX00111*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3src = CODASIP_SWITCH_VALUE_MI4reg7IH5_3isa3isa9_7reg_any3src;
            break;
        }
        case ( 0x30000 /*XXXXXXXXXXXX00110*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3src = CODASIP_SWITCH_VALUE_MI4reg6IH5_3isa3isa9_7reg_any3src;
            break;
        }
        case ( 0x28000 /*XXXXXXXXXXXX00101*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3src = CODASIP_SWITCH_VALUE_MI4reg5IH5_3isa3isa9_7reg_any3src;
            break;
        }
        case ( 0x20000 /*XXXXXXXXXXXX00100*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3src = CODASIP_SWITCH_VALUE_MI4reg4IH5_3isa3isa9_7reg_any3src;
            break;
        }
        case ( 0x78000 /*XXXXXXXXXXXX01111*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3src = CODASIP_SWITCH_VALUE_MI5reg15IH5_3isa3isa9_7reg_any3src;
            break;
        }
        case ( 0x70000 /*XXXXXXXXXXXX01110*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3src = CODASIP_SWITCH_VALUE_MI5reg14IH5_3isa3isa9_7reg_any3src;
            break;
        }
        case ( 0x68000 /*XXXXXXXXXXXX01101*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3src = CODASIP_SWITCH_VALUE_MI5reg13IH5_3isa3isa9_7reg_any3src;
            break;
        }
        case ( 0x60000 /*XXXXXXXXXXXX01100*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3src = CODASIP_SWITCH_VALUE_MI5reg12IH5_3isa3isa9_7reg_any3src;
            break;
        }
        case ( 0x58000 /*XXXXXXXXXXXX01011*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3src = CODASIP_SWITCH_VALUE_MI5reg11IH5_3isa3isa9_7reg_any3src;
            break;
        }
        case ( 0x50000 /*XXXXXXXXXXXX01010*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3src = CODASIP_SWITCH_VALUE_MI5reg10IH5_3isa3isa9_7reg_any3src;
            break;
        }
        case ( 0x48000 /*XXXXXXXXXXXX01001*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3src = CODASIP_SWITCH_VALUE_MI4reg9IH5_3isa3isa9_7reg_any3src;
            break;
        }
        case ( 0x40000 /*XXXXXXXXXXXX01000*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3src = CODASIP_SWITCH_VALUE_MI4reg8IH5_3isa3isa9_7reg_any3src;
            break;
        }
        case ( 0xf8000 /*XXXXXXXXXXXX11111*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3src = CODASIP_SWITCH_VALUE_MI5reg31IH5_3isa3isa9_7reg_any3src;
            break;
        }
        case ( 0xf0000 /*XXXXXXXXXXXX11110*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3src = CODASIP_SWITCH_VALUE_MI5reg30IH5_3isa3isa9_7reg_any3src;
            break;
        }
        case ( 0xe8000 /*XXXXXXXXXXXX11101*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3src = CODASIP_SWITCH_VALUE_MI5reg29IH5_3isa3isa9_7reg_any3src;
            break;
        }
        case ( 0xe0000 /*XXXXXXXXXXXX11100*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3src = CODASIP_SWITCH_VALUE_MI5reg28IH5_3isa3isa9_7reg_any3src;
            break;
        }
        case ( 0xd8000 /*XXXXXXXXXXXX11011*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3src = CODASIP_SWITCH_VALUE_MI5reg27IH5_3isa3isa9_7reg_any3src;
            break;
        }
        case ( 0xd0000 /*XXXXXXXXXXXX11010*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3src = CODASIP_SWITCH_VALUE_MI5reg26IH5_3isa3isa9_7reg_any3src;
            break;
        }
        case ( 0xc8000 /*XXXXXXXXXXXX11001*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3src = CODASIP_SWITCH_VALUE_MI5reg25IH5_3isa3isa9_7reg_any3src;
            break;
        }
        case ( 0xc0000 /*XXXXXXXXXXXX11000*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3src = CODASIP_SWITCH_VALUE_MI5reg24IH5_3isa3isa9_7reg_any3src;
            break;
        }
        case ( 0xb8000 /*XXXXXXXXXXXX10111*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3src = CODASIP_SWITCH_VALUE_MI5reg23IH5_3isa3isa9_7reg_any3src;
            break;
        }
        case ( 0xb0000 /*XXXXXXXXXXXX10110*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3src = CODASIP_SWITCH_VALUE_MI5reg22IH5_3isa3isa9_7reg_any3src;
            break;
        }
        case ( 0xa8000 /*XXXXXXXXXXXX10101*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3src = CODASIP_SWITCH_VALUE_MI5reg21IH5_3isa3isa9_7reg_any3src;
            break;
        }
        case ( 0xa0000 /*XXXXXXXXXXXX10100*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3src = CODASIP_SWITCH_VALUE_MI5reg20IH5_3isa3isa9_7reg_any3src;
            break;
        }
        case ( 0x98000 /*XXXXXXXXXXXX10011*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3src = CODASIP_SWITCH_VALUE_MI5reg19IH5_3isa3isa9_7reg_any3src;
            break;
        }
        case ( 0x90000 /*XXXXXXXXXXXX10010*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3src = CODASIP_SWITCH_VALUE_MI5reg18IH5_3isa3isa9_7reg_any3src;
            break;
        }
        case ( 0x88000 /*XXXXXXXXXXXX10001*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3src = CODASIP_SWITCH_VALUE_MI5reg17IH5_3isa3isa9_7reg_any3src;
            break;
        }
        case ( 0x80000 /*XXXXXXXXXXXX10000*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3src = CODASIP_SWITCH_VALUE_MI5reg16IH5_3isa3isa9_7reg_any3src;
            break;
        }
        default: 
            return INSTPARSER_INVALIDCODE;
        }
        return INSTPARSER_OK;
}
/**
 *  \brief  Parser_MI4regsIH5_3isa3isa9_7reg_any4rs_1_bc__19_18_17_16_15_bs_32
 */
int MI3isaIH5_3isa3isa::Parser_MI4regsIH5_3isa3isa9_7reg_any4rs_1_bc__19_18_17_16_15_bs_32(const uint32_t input)
{
        switch (((input & 0xf8000) )) {
        case ( 0x8000 /*XXXXXXXXXXXX00001*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_1 = CODASIP_SWITCH_VALUE_MI4reg1IH5_3isa3isa9_7reg_any4rs_1;
            break;
        }
        case ( 0x18000 /*XXXXXXXXXXXX00011*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_1 = CODASIP_SWITCH_VALUE_MI4reg3IH5_3isa3isa9_7reg_any4rs_1;
            break;
        }
        case ( 0x10000 /*XXXXXXXXXXXX00010*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_1 = CODASIP_SWITCH_VALUE_MI4reg2IH5_3isa3isa9_7reg_any4rs_1;
            break;
        }
        case ( 0x38000 /*XXXXXXXXXXXX00111*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_1 = CODASIP_SWITCH_VALUE_MI4reg7IH5_3isa3isa9_7reg_any4rs_1;
            break;
        }
        case ( 0x30000 /*XXXXXXXXXXXX00110*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_1 = CODASIP_SWITCH_VALUE_MI4reg6IH5_3isa3isa9_7reg_any4rs_1;
            break;
        }
        case ( 0x28000 /*XXXXXXXXXXXX00101*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_1 = CODASIP_SWITCH_VALUE_MI4reg5IH5_3isa3isa9_7reg_any4rs_1;
            break;
        }
        case ( 0x20000 /*XXXXXXXXXXXX00100*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_1 = CODASIP_SWITCH_VALUE_MI4reg4IH5_3isa3isa9_7reg_any4rs_1;
            break;
        }
        case ( 0x78000 /*XXXXXXXXXXXX01111*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_1 = CODASIP_SWITCH_VALUE_MI5reg15IH5_3isa3isa9_7reg_any4rs_1;
            break;
        }
        case ( 0x70000 /*XXXXXXXXXXXX01110*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_1 = CODASIP_SWITCH_VALUE_MI5reg14IH5_3isa3isa9_7reg_any4rs_1;
            break;
        }
        case ( 0x68000 /*XXXXXXXXXXXX01101*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_1 = CODASIP_SWITCH_VALUE_MI5reg13IH5_3isa3isa9_7reg_any4rs_1;
            break;
        }
        case ( 0x60000 /*XXXXXXXXXXXX01100*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_1 = CODASIP_SWITCH_VALUE_MI5reg12IH5_3isa3isa9_7reg_any4rs_1;
            break;
        }
        case ( 0x58000 /*XXXXXXXXXXXX01011*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_1 = CODASIP_SWITCH_VALUE_MI5reg11IH5_3isa3isa9_7reg_any4rs_1;
            break;
        }
        case ( 0x50000 /*XXXXXXXXXXXX01010*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_1 = CODASIP_SWITCH_VALUE_MI5reg10IH5_3isa3isa9_7reg_any4rs_1;
            break;
        }
        case ( 0x48000 /*XXXXXXXXXXXX01001*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_1 = CODASIP_SWITCH_VALUE_MI4reg9IH5_3isa3isa9_7reg_any4rs_1;
            break;
        }
        case ( 0x40000 /*XXXXXXXXXXXX01000*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_1 = CODASIP_SWITCH_VALUE_MI4reg8IH5_3isa3isa9_7reg_any4rs_1;
            break;
        }
        case ( 0xf8000 /*XXXXXXXXXXXX11111*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_1 = CODASIP_SWITCH_VALUE_MI5reg31IH5_3isa3isa9_7reg_any4rs_1;
            break;
        }
        case ( 0xf0000 /*XXXXXXXXXXXX11110*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_1 = CODASIP_SWITCH_VALUE_MI5reg30IH5_3isa3isa9_7reg_any4rs_1;
            break;
        }
        case ( 0xe8000 /*XXXXXXXXXXXX11101*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_1 = CODASIP_SWITCH_VALUE_MI5reg29IH5_3isa3isa9_7reg_any4rs_1;
            break;
        }
        case ( 0xe0000 /*XXXXXXXXXXXX11100*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_1 = CODASIP_SWITCH_VALUE_MI5reg28IH5_3isa3isa9_7reg_any4rs_1;
            break;
        }
        case ( 0xd8000 /*XXXXXXXXXXXX11011*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_1 = CODASIP_SWITCH_VALUE_MI5reg27IH5_3isa3isa9_7reg_any4rs_1;
            break;
        }
        case ( 0xd0000 /*XXXXXXXXXXXX11010*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_1 = CODASIP_SWITCH_VALUE_MI5reg26IH5_3isa3isa9_7reg_any4rs_1;
            break;
        }
        case ( 0xc8000 /*XXXXXXXXXXXX11001*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_1 = CODASIP_SWITCH_VALUE_MI5reg25IH5_3isa3isa9_7reg_any4rs_1;
            break;
        }
        case ( 0xc0000 /*XXXXXXXXXXXX11000*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_1 = CODASIP_SWITCH_VALUE_MI5reg24IH5_3isa3isa9_7reg_any4rs_1;
            break;
        }
        case ( 0xb8000 /*XXXXXXXXXXXX10111*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_1 = CODASIP_SWITCH_VALUE_MI5reg23IH5_3isa3isa9_7reg_any4rs_1;
            break;
        }
        case ( 0xb0000 /*XXXXXXXXXXXX10110*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_1 = CODASIP_SWITCH_VALUE_MI5reg22IH5_3isa3isa9_7reg_any4rs_1;
            break;
        }
        case ( 0xa8000 /*XXXXXXXXXXXX10101*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_1 = CODASIP_SWITCH_VALUE_MI5reg21IH5_3isa3isa9_7reg_any4rs_1;
            break;
        }
        case ( 0xa0000 /*XXXXXXXXXXXX10100*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_1 = CODASIP_SWITCH_VALUE_MI5reg20IH5_3isa3isa9_7reg_any4rs_1;
            break;
        }
        case ( 0x98000 /*XXXXXXXXXXXX10011*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_1 = CODASIP_SWITCH_VALUE_MI5reg19IH5_3isa3isa9_7reg_any4rs_1;
            break;
        }
        case ( 0x90000 /*XXXXXXXXXXXX10010*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_1 = CODASIP_SWITCH_VALUE_MI5reg18IH5_3isa3isa9_7reg_any4rs_1;
            break;
        }
        case ( 0x88000 /*XXXXXXXXXXXX10001*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_1 = CODASIP_SWITCH_VALUE_MI5reg17IH5_3isa3isa9_7reg_any4rs_1;
            break;
        }
        case ( 0x80000 /*XXXXXXXXXXXX10000*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_1 = CODASIP_SWITCH_VALUE_MI5reg16IH5_3isa3isa9_7reg_any4rs_1;
            break;
        }
        default: 
            return INSTPARSER_INVALIDCODE;
        }
        return INSTPARSER_OK;
}
/**
 *  \brief  Parser_MI4regsIH5_3isa3isa9_7reg_any4rs_2_bc__24_23_22_21_20_bs_32
 */
int MI3isaIH5_3isa3isa::Parser_MI4regsIH5_3isa3isa9_7reg_any4rs_2_bc__24_23_22_21_20_bs_32(const uint32_t input)
{
        switch (((input & 0x1f00000) )) {
        case ( 0x100000 /*XXXXXXX00001*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_2 = CODASIP_SWITCH_VALUE_MI4reg1IH5_3isa3isa9_7reg_any4rs_2;
            break;
        }
        case ( 0x300000 /*XXXXXXX00011*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_2 = CODASIP_SWITCH_VALUE_MI4reg3IH5_3isa3isa9_7reg_any4rs_2;
            break;
        }
        case ( 0x200000 /*XXXXXXX00010*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_2 = CODASIP_SWITCH_VALUE_MI4reg2IH5_3isa3isa9_7reg_any4rs_2;
            break;
        }
        case ( 0x700000 /*XXXXXXX00111*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_2 = CODASIP_SWITCH_VALUE_MI4reg7IH5_3isa3isa9_7reg_any4rs_2;
            break;
        }
        case ( 0x600000 /*XXXXXXX00110*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_2 = CODASIP_SWITCH_VALUE_MI4reg6IH5_3isa3isa9_7reg_any4rs_2;
            break;
        }
        case ( 0x500000 /*XXXXXXX00101*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_2 = CODASIP_SWITCH_VALUE_MI4reg5IH5_3isa3isa9_7reg_any4rs_2;
            break;
        }
        case ( 0x400000 /*XXXXXXX00100*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_2 = CODASIP_SWITCH_VALUE_MI4reg4IH5_3isa3isa9_7reg_any4rs_2;
            break;
        }
        case ( 0xf00000 /*XXXXXXX01111*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_2 = CODASIP_SWITCH_VALUE_MI5reg15IH5_3isa3isa9_7reg_any4rs_2;
            break;
        }
        case ( 0xe00000 /*XXXXXXX01110*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_2 = CODASIP_SWITCH_VALUE_MI5reg14IH5_3isa3isa9_7reg_any4rs_2;
            break;
        }
        case ( 0xd00000 /*XXXXXXX01101*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_2 = CODASIP_SWITCH_VALUE_MI5reg13IH5_3isa3isa9_7reg_any4rs_2;
            break;
        }
        case ( 0xc00000 /*XXXXXXX01100*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_2 = CODASIP_SWITCH_VALUE_MI5reg12IH5_3isa3isa9_7reg_any4rs_2;
            break;
        }
        case ( 0xb00000 /*XXXXXXX01011*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_2 = CODASIP_SWITCH_VALUE_MI5reg11IH5_3isa3isa9_7reg_any4rs_2;
            break;
        }
        case ( 0xa00000 /*XXXXXXX01010*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_2 = CODASIP_SWITCH_VALUE_MI5reg10IH5_3isa3isa9_7reg_any4rs_2;
            break;
        }
        case ( 0x900000 /*XXXXXXX01001*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_2 = CODASIP_SWITCH_VALUE_MI4reg9IH5_3isa3isa9_7reg_any4rs_2;
            break;
        }
        case ( 0x800000 /*XXXXXXX01000*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_2 = CODASIP_SWITCH_VALUE_MI4reg8IH5_3isa3isa9_7reg_any4rs_2;
            break;
        }
        case ( 0x1f00000 /*XXXXXXX11111*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_2 = CODASIP_SWITCH_VALUE_MI5reg31IH5_3isa3isa9_7reg_any4rs_2;
            break;
        }
        case ( 0x1e00000 /*XXXXXXX11110*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_2 = CODASIP_SWITCH_VALUE_MI5reg30IH5_3isa3isa9_7reg_any4rs_2;
            break;
        }
        case ( 0x1d00000 /*XXXXXXX11101*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_2 = CODASIP_SWITCH_VALUE_MI5reg29IH5_3isa3isa9_7reg_any4rs_2;
            break;
        }
        case ( 0x1c00000 /*XXXXXXX11100*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_2 = CODASIP_SWITCH_VALUE_MI5reg28IH5_3isa3isa9_7reg_any4rs_2;
            break;
        }
        case ( 0x1b00000 /*XXXXXXX11011*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_2 = CODASIP_SWITCH_VALUE_MI5reg27IH5_3isa3isa9_7reg_any4rs_2;
            break;
        }
        case ( 0x1a00000 /*XXXXXXX11010*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_2 = CODASIP_SWITCH_VALUE_MI5reg26IH5_3isa3isa9_7reg_any4rs_2;
            break;
        }
        case ( 0x1900000 /*XXXXXXX11001*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_2 = CODASIP_SWITCH_VALUE_MI5reg25IH5_3isa3isa9_7reg_any4rs_2;
            break;
        }
        case ( 0x1800000 /*XXXXXXX11000*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_2 = CODASIP_SWITCH_VALUE_MI5reg24IH5_3isa3isa9_7reg_any4rs_2;
            break;
        }
        case ( 0x1700000 /*XXXXXXX10111*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_2 = CODASIP_SWITCH_VALUE_MI5reg23IH5_3isa3isa9_7reg_any4rs_2;
            break;
        }
        case ( 0x1600000 /*XXXXXXX10110*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_2 = CODASIP_SWITCH_VALUE_MI5reg22IH5_3isa3isa9_7reg_any4rs_2;
            break;
        }
        case ( 0x1500000 /*XXXXXXX10101*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_2 = CODASIP_SWITCH_VALUE_MI5reg21IH5_3isa3isa9_7reg_any4rs_2;
            break;
        }
        case ( 0x1400000 /*XXXXXXX10100*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_2 = CODASIP_SWITCH_VALUE_MI5reg20IH5_3isa3isa9_7reg_any4rs_2;
            break;
        }
        case ( 0x1300000 /*XXXXXXX10011*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_2 = CODASIP_SWITCH_VALUE_MI5reg19IH5_3isa3isa9_7reg_any4rs_2;
            break;
        }
        case ( 0x1200000 /*XXXXXXX10010*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_2 = CODASIP_SWITCH_VALUE_MI5reg18IH5_3isa3isa9_7reg_any4rs_2;
            break;
        }
        case ( 0x1100000 /*XXXXXXX10001*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_2 = CODASIP_SWITCH_VALUE_MI5reg17IH5_3isa3isa9_7reg_any4rs_2;
            break;
        }
        case ( 0x1000000 /*XXXXXXX10000*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_2 = CODASIP_SWITCH_VALUE_MI5reg16IH5_3isa3isa9_7reg_any4rs_2;
            break;
        }
        default: 
            return INSTPARSER_INVALIDCODE;
        }
        return INSTPARSER_OK;
}
/**
 *  \brief  Parser_MI4regsIH5_3isa3isa9_7reg_any4src1_bc__19_18_17_16_15_bs_32
 */
int MI3isaIH5_3isa3isa::Parser_MI4regsIH5_3isa3isa9_7reg_any4src1_bc__19_18_17_16_15_bs_32(const uint32_t input)
{
        switch (((input & 0xf8000) )) {
        case ( 0x8000 /*XXXXXXXXXXXX00001*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src1 = CODASIP_SWITCH_VALUE_MI4reg1IH5_3isa3isa9_7reg_any4src1;
            break;
        }
        case ( 0x18000 /*XXXXXXXXXXXX00011*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src1 = CODASIP_SWITCH_VALUE_MI4reg3IH5_3isa3isa9_7reg_any4src1;
            break;
        }
        case ( 0x10000 /*XXXXXXXXXXXX00010*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src1 = CODASIP_SWITCH_VALUE_MI4reg2IH5_3isa3isa9_7reg_any4src1;
            break;
        }
        case ( 0x38000 /*XXXXXXXXXXXX00111*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src1 = CODASIP_SWITCH_VALUE_MI4reg7IH5_3isa3isa9_7reg_any4src1;
            break;
        }
        case ( 0x30000 /*XXXXXXXXXXXX00110*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src1 = CODASIP_SWITCH_VALUE_MI4reg6IH5_3isa3isa9_7reg_any4src1;
            break;
        }
        case ( 0x28000 /*XXXXXXXXXXXX00101*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src1 = CODASIP_SWITCH_VALUE_MI4reg5IH5_3isa3isa9_7reg_any4src1;
            break;
        }
        case ( 0x20000 /*XXXXXXXXXXXX00100*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src1 = CODASIP_SWITCH_VALUE_MI4reg4IH5_3isa3isa9_7reg_any4src1;
            break;
        }
        case ( 0x78000 /*XXXXXXXXXXXX01111*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src1 = CODASIP_SWITCH_VALUE_MI5reg15IH5_3isa3isa9_7reg_any4src1;
            break;
        }
        case ( 0x70000 /*XXXXXXXXXXXX01110*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src1 = CODASIP_SWITCH_VALUE_MI5reg14IH5_3isa3isa9_7reg_any4src1;
            break;
        }
        case ( 0x68000 /*XXXXXXXXXXXX01101*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src1 = CODASIP_SWITCH_VALUE_MI5reg13IH5_3isa3isa9_7reg_any4src1;
            break;
        }
        case ( 0x60000 /*XXXXXXXXXXXX01100*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src1 = CODASIP_SWITCH_VALUE_MI5reg12IH5_3isa3isa9_7reg_any4src1;
            break;
        }
        case ( 0x58000 /*XXXXXXXXXXXX01011*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src1 = CODASIP_SWITCH_VALUE_MI5reg11IH5_3isa3isa9_7reg_any4src1;
            break;
        }
        case ( 0x50000 /*XXXXXXXXXXXX01010*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src1 = CODASIP_SWITCH_VALUE_MI5reg10IH5_3isa3isa9_7reg_any4src1;
            break;
        }
        case ( 0x48000 /*XXXXXXXXXXXX01001*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src1 = CODASIP_SWITCH_VALUE_MI4reg9IH5_3isa3isa9_7reg_any4src1;
            break;
        }
        case ( 0x40000 /*XXXXXXXXXXXX01000*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src1 = CODASIP_SWITCH_VALUE_MI4reg8IH5_3isa3isa9_7reg_any4src1;
            break;
        }
        case ( 0xf8000 /*XXXXXXXXXXXX11111*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src1 = CODASIP_SWITCH_VALUE_MI5reg31IH5_3isa3isa9_7reg_any4src1;
            break;
        }
        case ( 0xf0000 /*XXXXXXXXXXXX11110*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src1 = CODASIP_SWITCH_VALUE_MI5reg30IH5_3isa3isa9_7reg_any4src1;
            break;
        }
        case ( 0xe8000 /*XXXXXXXXXXXX11101*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src1 = CODASIP_SWITCH_VALUE_MI5reg29IH5_3isa3isa9_7reg_any4src1;
            break;
        }
        case ( 0xe0000 /*XXXXXXXXXXXX11100*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src1 = CODASIP_SWITCH_VALUE_MI5reg28IH5_3isa3isa9_7reg_any4src1;
            break;
        }
        case ( 0xd8000 /*XXXXXXXXXXXX11011*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src1 = CODASIP_SWITCH_VALUE_MI5reg27IH5_3isa3isa9_7reg_any4src1;
            break;
        }
        case ( 0xd0000 /*XXXXXXXXXXXX11010*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src1 = CODASIP_SWITCH_VALUE_MI5reg26IH5_3isa3isa9_7reg_any4src1;
            break;
        }
        case ( 0xc8000 /*XXXXXXXXXXXX11001*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src1 = CODASIP_SWITCH_VALUE_MI5reg25IH5_3isa3isa9_7reg_any4src1;
            break;
        }
        case ( 0xc0000 /*XXXXXXXXXXXX11000*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src1 = CODASIP_SWITCH_VALUE_MI5reg24IH5_3isa3isa9_7reg_any4src1;
            break;
        }
        case ( 0xb8000 /*XXXXXXXXXXXX10111*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src1 = CODASIP_SWITCH_VALUE_MI5reg23IH5_3isa3isa9_7reg_any4src1;
            break;
        }
        case ( 0xb0000 /*XXXXXXXXXXXX10110*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src1 = CODASIP_SWITCH_VALUE_MI5reg22IH5_3isa3isa9_7reg_any4src1;
            break;
        }
        case ( 0xa8000 /*XXXXXXXXXXXX10101*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src1 = CODASIP_SWITCH_VALUE_MI5reg21IH5_3isa3isa9_7reg_any4src1;
            break;
        }
        case ( 0xa0000 /*XXXXXXXXXXXX10100*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src1 = CODASIP_SWITCH_VALUE_MI5reg20IH5_3isa3isa9_7reg_any4src1;
            break;
        }
        case ( 0x98000 /*XXXXXXXXXXXX10011*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src1 = CODASIP_SWITCH_VALUE_MI5reg19IH5_3isa3isa9_7reg_any4src1;
            break;
        }
        case ( 0x90000 /*XXXXXXXXXXXX10010*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src1 = CODASIP_SWITCH_VALUE_MI5reg18IH5_3isa3isa9_7reg_any4src1;
            break;
        }
        case ( 0x88000 /*XXXXXXXXXXXX10001*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src1 = CODASIP_SWITCH_VALUE_MI5reg17IH5_3isa3isa9_7reg_any4src1;
            break;
        }
        case ( 0x80000 /*XXXXXXXXXXXX10000*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src1 = CODASIP_SWITCH_VALUE_MI5reg16IH5_3isa3isa9_7reg_any4src1;
            break;
        }
        default: 
            return INSTPARSER_INVALIDCODE;
        }
        return INSTPARSER_OK;
}
/**
 *  \brief  Parser_MI4regsIH5_3isa3isa9_7reg_any4src2_bc__24_23_22_21_20_bs_32
 */
int MI3isaIH5_3isa3isa::Parser_MI4regsIH5_3isa3isa9_7reg_any4src2_bc__24_23_22_21_20_bs_32(const uint32_t input)
{
        switch (((input & 0x1f00000) )) {
        case ( 0x100000 /*XXXXXXX00001*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src2 = CODASIP_SWITCH_VALUE_MI4reg1IH5_3isa3isa9_7reg_any4src2;
            break;
        }
        case ( 0x300000 /*XXXXXXX00011*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src2 = CODASIP_SWITCH_VALUE_MI4reg3IH5_3isa3isa9_7reg_any4src2;
            break;
        }
        case ( 0x200000 /*XXXXXXX00010*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src2 = CODASIP_SWITCH_VALUE_MI4reg2IH5_3isa3isa9_7reg_any4src2;
            break;
        }
        case ( 0x700000 /*XXXXXXX00111*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src2 = CODASIP_SWITCH_VALUE_MI4reg7IH5_3isa3isa9_7reg_any4src2;
            break;
        }
        case ( 0x600000 /*XXXXXXX00110*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src2 = CODASIP_SWITCH_VALUE_MI4reg6IH5_3isa3isa9_7reg_any4src2;
            break;
        }
        case ( 0x500000 /*XXXXXXX00101*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src2 = CODASIP_SWITCH_VALUE_MI4reg5IH5_3isa3isa9_7reg_any4src2;
            break;
        }
        case ( 0x400000 /*XXXXXXX00100*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src2 = CODASIP_SWITCH_VALUE_MI4reg4IH5_3isa3isa9_7reg_any4src2;
            break;
        }
        case ( 0xf00000 /*XXXXXXX01111*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src2 = CODASIP_SWITCH_VALUE_MI5reg15IH5_3isa3isa9_7reg_any4src2;
            break;
        }
        case ( 0xe00000 /*XXXXXXX01110*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src2 = CODASIP_SWITCH_VALUE_MI5reg14IH5_3isa3isa9_7reg_any4src2;
            break;
        }
        case ( 0xd00000 /*XXXXXXX01101*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src2 = CODASIP_SWITCH_VALUE_MI5reg13IH5_3isa3isa9_7reg_any4src2;
            break;
        }
        case ( 0xc00000 /*XXXXXXX01100*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src2 = CODASIP_SWITCH_VALUE_MI5reg12IH5_3isa3isa9_7reg_any4src2;
            break;
        }
        case ( 0xb00000 /*XXXXXXX01011*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src2 = CODASIP_SWITCH_VALUE_MI5reg11IH5_3isa3isa9_7reg_any4src2;
            break;
        }
        case ( 0xa00000 /*XXXXXXX01010*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src2 = CODASIP_SWITCH_VALUE_MI5reg10IH5_3isa3isa9_7reg_any4src2;
            break;
        }
        case ( 0x900000 /*XXXXXXX01001*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src2 = CODASIP_SWITCH_VALUE_MI4reg9IH5_3isa3isa9_7reg_any4src2;
            break;
        }
        case ( 0x800000 /*XXXXXXX01000*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src2 = CODASIP_SWITCH_VALUE_MI4reg8IH5_3isa3isa9_7reg_any4src2;
            break;
        }
        case ( 0x1f00000 /*XXXXXXX11111*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src2 = CODASIP_SWITCH_VALUE_MI5reg31IH5_3isa3isa9_7reg_any4src2;
            break;
        }
        case ( 0x1e00000 /*XXXXXXX11110*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src2 = CODASIP_SWITCH_VALUE_MI5reg30IH5_3isa3isa9_7reg_any4src2;
            break;
        }
        case ( 0x1d00000 /*XXXXXXX11101*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src2 = CODASIP_SWITCH_VALUE_MI5reg29IH5_3isa3isa9_7reg_any4src2;
            break;
        }
        case ( 0x1c00000 /*XXXXXXX11100*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src2 = CODASIP_SWITCH_VALUE_MI5reg28IH5_3isa3isa9_7reg_any4src2;
            break;
        }
        case ( 0x1b00000 /*XXXXXXX11011*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src2 = CODASIP_SWITCH_VALUE_MI5reg27IH5_3isa3isa9_7reg_any4src2;
            break;
        }
        case ( 0x1a00000 /*XXXXXXX11010*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src2 = CODASIP_SWITCH_VALUE_MI5reg26IH5_3isa3isa9_7reg_any4src2;
            break;
        }
        case ( 0x1900000 /*XXXXXXX11001*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src2 = CODASIP_SWITCH_VALUE_MI5reg25IH5_3isa3isa9_7reg_any4src2;
            break;
        }
        case ( 0x1800000 /*XXXXXXX11000*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src2 = CODASIP_SWITCH_VALUE_MI5reg24IH5_3isa3isa9_7reg_any4src2;
            break;
        }
        case ( 0x1700000 /*XXXXXXX10111*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src2 = CODASIP_SWITCH_VALUE_MI5reg23IH5_3isa3isa9_7reg_any4src2;
            break;
        }
        case ( 0x1600000 /*XXXXXXX10110*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src2 = CODASIP_SWITCH_VALUE_MI5reg22IH5_3isa3isa9_7reg_any4src2;
            break;
        }
        case ( 0x1500000 /*XXXXXXX10101*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src2 = CODASIP_SWITCH_VALUE_MI5reg21IH5_3isa3isa9_7reg_any4src2;
            break;
        }
        case ( 0x1400000 /*XXXXXXX10100*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src2 = CODASIP_SWITCH_VALUE_MI5reg20IH5_3isa3isa9_7reg_any4src2;
            break;
        }
        case ( 0x1300000 /*XXXXXXX10011*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src2 = CODASIP_SWITCH_VALUE_MI5reg19IH5_3isa3isa9_7reg_any4src2;
            break;
        }
        case ( 0x1200000 /*XXXXXXX10010*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src2 = CODASIP_SWITCH_VALUE_MI5reg18IH5_3isa3isa9_7reg_any4src2;
            break;
        }
        case ( 0x1100000 /*XXXXXXX10001*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src2 = CODASIP_SWITCH_VALUE_MI5reg17IH5_3isa3isa9_7reg_any4src2;
            break;
        }
        case ( 0x1000000 /*XXXXXXX10000*/ ):
        {
            codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src2 = CODASIP_SWITCH_VALUE_MI5reg16IH5_3isa3isa9_7reg_any4src2;
            break;
        }
        default: 
            return INSTPARSER_INVALIDCODE;
        }
        return INSTPARSER_OK;
}
/**
 *  \brief  Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3dst_bc__11_10_9_8_7_bs_32
 */
int MI3isaIH5_3isa3isa::Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3dst_bc__11_10_9_8_7_bs_32(const uint32_t input)
{
        if (((input & 0xf80) == 0x0 /*XXXXXXXXXXXXXXXXXXXX00000*/ )) {
            codasip_switch_MI7reg_anyIH5_3isa3isa9_7reg_any3dst = CODASIP_SWITCH_VALUE_MI4reg0IH5_3isa3isa9_7reg_any3dst;
            goto END_OF_MI7reg_anyIH5_3isa3isa9_7reg_any3dst;
        }
        if (((input & 0xf80) == 0x80 /*XXXXXXXXXXXXXXXXXXXX00001*/ ) || 
                ((input & 0xf00) == 0x100 /*XXXXXXXXXXXXXXXXXXXX0001X*/ ) || 
                ((input & 0xe00) == 0x200 /*XXXXXXXXXXXXXXXXXXXX001XX*/ ) || 
                ((input & 0xc00) == 0x400 /*XXXXXXXXXXXXXXXXXXXX01XXX*/ ) || 
                ((input & 0x800) == 0x800 /*XXXXXXXXXXXXXXXXXXXX1XXXX*/ )) {
            codasip_switch_MI7reg_anyIH5_3isa3isa9_7reg_any3dst = CODASIP_SWITCH_VALUE_MI4regsIH5_3isa3isa9_7reg_any3dst;
            if (Parser_MI4regsIH5_3isa3isa9_7reg_any3dst_bc__11_10_9_8_7_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
            goto END_OF_MI7reg_anyIH5_3isa3isa9_7reg_any3dst;
        }
        return INSTPARSER_INVALIDCODE;
        // Collecting label
        END_OF_MI7reg_anyIH5_3isa3isa9_7reg_any3dst:
        return INSTPARSER_OK;
}
/**
 *  \brief  Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3src_bc__19_18_17_16_15_bs_32
 */
int MI3isaIH5_3isa3isa::Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3src_bc__19_18_17_16_15_bs_32(const uint32_t input)
{
        if (((input & 0xf8000) == 0x0 /*XXXXXXXXXXXX00000*/ )) {
            codasip_switch_MI7reg_anyIH5_3isa3isa9_7reg_any3src = CODASIP_SWITCH_VALUE_MI4reg0IH5_3isa3isa9_7reg_any3src;
            goto END_OF_MI7reg_anyIH5_3isa3isa9_7reg_any3src;
        }
        if (((input & 0xf8000) == 0x8000 /*XXXXXXXXXXXX00001*/ ) || 
                ((input & 0xf0000) == 0x10000 /*XXXXXXXXXXXX0001X*/ ) || 
                ((input & 0xe0000) == 0x20000 /*XXXXXXXXXXXX001XX*/ ) || 
                ((input & 0xc0000) == 0x40000 /*XXXXXXXXXXXX01XXX*/ ) || 
                ((input & 0x80000) == 0x80000 /*XXXXXXXXXXXX1XXXX*/ )) {
            codasip_switch_MI7reg_anyIH5_3isa3isa9_7reg_any3src = CODASIP_SWITCH_VALUE_MI4regsIH5_3isa3isa9_7reg_any3src;
            if (Parser_MI4regsIH5_3isa3isa9_7reg_any3src_bc__19_18_17_16_15_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
            goto END_OF_MI7reg_anyIH5_3isa3isa9_7reg_any3src;
        }
        return INSTPARSER_INVALIDCODE;
        // Collecting label
        END_OF_MI7reg_anyIH5_3isa3isa9_7reg_any3src:
        return INSTPARSER_OK;
}
/**
 *  \brief  Parser_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1_bc__19_18_17_16_15_bs_32
 */
int MI3isaIH5_3isa3isa::Parser_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1_bc__19_18_17_16_15_bs_32(const uint32_t input)
{
        if (((input & 0xf8000) == 0x0 /*XXXXXXXXXXXX00000*/ )) {
            codasip_switch_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1 = CODASIP_SWITCH_VALUE_MI4reg0IH5_3isa3isa9_7reg_any4rs_1;
            goto END_OF_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1;
        }
        if (((input & 0xf8000) == 0x8000 /*XXXXXXXXXXXX00001*/ ) || 
                ((input & 0xf0000) == 0x10000 /*XXXXXXXXXXXX0001X*/ ) || 
                ((input & 0xe0000) == 0x20000 /*XXXXXXXXXXXX001XX*/ ) || 
                ((input & 0xc0000) == 0x40000 /*XXXXXXXXXXXX01XXX*/ ) || 
                ((input & 0x80000) == 0x80000 /*XXXXXXXXXXXX1XXXX*/ )) {
            codasip_switch_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1 = CODASIP_SWITCH_VALUE_MI4regsIH5_3isa3isa9_7reg_any4rs_1;
            if (Parser_MI4regsIH5_3isa3isa9_7reg_any4rs_1_bc__19_18_17_16_15_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
            goto END_OF_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1;
        }
        return INSTPARSER_INVALIDCODE;
        // Collecting label
        END_OF_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1:
        return INSTPARSER_OK;
}
/**
 *  \brief  Parser_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2_bc__24_23_22_21_20_bs_32
 */
int MI3isaIH5_3isa3isa::Parser_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2_bc__24_23_22_21_20_bs_32(const uint32_t input)
{
        if (((input & 0x1f00000) == 0x0 /*XXXXXXX00000*/ )) {
            codasip_switch_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2 = CODASIP_SWITCH_VALUE_MI4reg0IH5_3isa3isa9_7reg_any4rs_2;
            goto END_OF_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2;
        }
        if (((input & 0x1f00000) == 0x100000 /*XXXXXXX00001*/ ) || 
                ((input & 0x1e00000) == 0x200000 /*XXXXXXX0001X*/ ) || 
                ((input & 0x1c00000) == 0x400000 /*XXXXXXX001XX*/ ) || 
                ((input & 0x1800000) == 0x800000 /*XXXXXXX01XXX*/ ) || 
                ((input & 0x1000000) == 0x1000000 /*XXXXXXX1XXXX*/ )) {
            codasip_switch_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2 = CODASIP_SWITCH_VALUE_MI4regsIH5_3isa3isa9_7reg_any4rs_2;
            if (Parser_MI4regsIH5_3isa3isa9_7reg_any4rs_2_bc__24_23_22_21_20_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
            goto END_OF_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2;
        }
        return INSTPARSER_INVALIDCODE;
        // Collecting label
        END_OF_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2:
        return INSTPARSER_OK;
}
/**
 *  \brief  Parser_MI7reg_anyIH5_3isa3isa9_7reg_any4src1_bc__19_18_17_16_15_bs_32
 */
int MI3isaIH5_3isa3isa::Parser_MI7reg_anyIH5_3isa3isa9_7reg_any4src1_bc__19_18_17_16_15_bs_32(const uint32_t input)
{
        if (((input & 0xf8000) == 0x0 /*XXXXXXXXXXXX00000*/ )) {
            codasip_switch_MI7reg_anyIH5_3isa3isa9_7reg_any4src1 = CODASIP_SWITCH_VALUE_MI4reg0IH5_3isa3isa9_7reg_any4src1;
            goto END_OF_MI7reg_anyIH5_3isa3isa9_7reg_any4src1;
        }
        if (((input & 0xf8000) == 0x8000 /*XXXXXXXXXXXX00001*/ ) || 
                ((input & 0xf0000) == 0x10000 /*XXXXXXXXXXXX0001X*/ ) || 
                ((input & 0xe0000) == 0x20000 /*XXXXXXXXXXXX001XX*/ ) || 
                ((input & 0xc0000) == 0x40000 /*XXXXXXXXXXXX01XXX*/ ) || 
                ((input & 0x80000) == 0x80000 /*XXXXXXXXXXXX1XXXX*/ )) {
            codasip_switch_MI7reg_anyIH5_3isa3isa9_7reg_any4src1 = CODASIP_SWITCH_VALUE_MI4regsIH5_3isa3isa9_7reg_any4src1;
            if (Parser_MI4regsIH5_3isa3isa9_7reg_any4src1_bc__19_18_17_16_15_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
            goto END_OF_MI7reg_anyIH5_3isa3isa9_7reg_any4src1;
        }
        return INSTPARSER_INVALIDCODE;
        // Collecting label
        END_OF_MI7reg_anyIH5_3isa3isa9_7reg_any4src1:
        return INSTPARSER_OK;
}
/**
 *  \brief  Parser_MI7reg_anyIH5_3isa3isa9_7reg_any4src2_bc__24_23_22_21_20_bs_32
 */
int MI3isaIH5_3isa3isa::Parser_MI7reg_anyIH5_3isa3isa9_7reg_any4src2_bc__24_23_22_21_20_bs_32(const uint32_t input)
{
        if (((input & 0x1f00000) == 0x0 /*XXXXXXX00000*/ )) {
            codasip_switch_MI7reg_anyIH5_3isa3isa9_7reg_any4src2 = CODASIP_SWITCH_VALUE_MI4reg0IH5_3isa3isa9_7reg_any4src2;
            goto END_OF_MI7reg_anyIH5_3isa3isa9_7reg_any4src2;
        }
        if (((input & 0x1f00000) == 0x100000 /*XXXXXXX00001*/ ) || 
                ((input & 0x1e00000) == 0x200000 /*XXXXXXX0001X*/ ) || 
                ((input & 0x1c00000) == 0x400000 /*XXXXXXX001XX*/ ) || 
                ((input & 0x1800000) == 0x800000 /*XXXXXXX01XXX*/ ) || 
                ((input & 0x1000000) == 0x1000000 /*XXXXXXX1XXXX*/ )) {
            codasip_switch_MI7reg_anyIH5_3isa3isa9_7reg_any4src2 = CODASIP_SWITCH_VALUE_MI4regsIH5_3isa3isa9_7reg_any4src2;
            if (Parser_MI4regsIH5_3isa3isa9_7reg_any4src2_bc__24_23_22_21_20_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
            goto END_OF_MI7reg_anyIH5_3isa3isa9_7reg_any4src2;
        }
        return INSTPARSER_INVALIDCODE;
        // Collecting label
        END_OF_MI7reg_anyIH5_3isa3isa9_7reg_any4src2:
        return INSTPARSER_OK;
}
/**
 *  \brief  Parser_MI8regs_csrIH5_3isa3isa8_6op_csr3csr_bc__31_30_29_28_27_26_25_24_23_22_21_20_bs_32
 */
int MI3isaIH5_3isa3isa::Parser_MI8regs_csrIH5_3isa3isa8_6op_csr3csr_bc__31_30_29_28_27_26_25_24_23_22_21_20_bs_32(const uint32_t input)
{
        switch (((input & 0xfff00000) )) {
        case ( 0x30000000 /*001100000000*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI11csr_mstatusIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x30100000 /*001100000001*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI8csr_misaIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x30400000 /*001100000100*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI7csr_mieIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x30500000 /*001100000101*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI9csr_mtvecIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x32000000 /*001100100000*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI17csr_mcountinhibitIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x32400000 /*001100100100*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI14csr_mhpmevent4IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x32300000 /*001100100011*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI14csr_mhpmevent3IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x32700000 /*001100100111*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI14csr_mhpmevent7IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x32500000 /*001100100101*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI14csr_mhpmevent5IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x32d00000 /*001100101101*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI15csr_mhpmevent13IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x32600000 /*001100100110*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI14csr_mhpmevent6IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x32e00000 /*001100101110*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI15csr_mhpmevent14IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x33000000 /*001100110000*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI15csr_mhpmevent16IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x33100000 /*001100110001*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI15csr_mhpmevent17IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x33200000 /*001100110010*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI15csr_mhpmevent18IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x33300000 /*001100110011*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI15csr_mhpmevent19IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x33400000 /*001100110100*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI15csr_mhpmevent20IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x33500000 /*001100110101*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI15csr_mhpmevent21IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x33600000 /*001100110110*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI15csr_mhpmevent22IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x33700000 /*001100110111*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI15csr_mhpmevent23IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x33d00000 /*001100111101*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI15csr_mhpmevent29IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x33e00000 /*001100111110*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI15csr_mhpmevent30IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x32800000 /*001100101000*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI14csr_mhpmevent8IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x32900000 /*001100101001*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI14csr_mhpmevent9IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x32a00000 /*001100101010*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI15csr_mhpmevent10IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x32b00000 /*001100101011*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI15csr_mhpmevent11IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x33800000 /*001100111000*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI15csr_mhpmevent24IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x33900000 /*001100111001*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI15csr_mhpmevent25IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x33a00000 /*001100111010*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI15csr_mhpmevent26IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x33b00000 /*001100111011*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI15csr_mhpmevent27IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x32c00000 /*001100101100*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI15csr_mhpmevent12IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x33c00000 /*001100111100*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI15csr_mhpmevent28IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x32f00000 /*001100101111*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI15csr_mhpmevent15IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x33f00000 /*001100111111*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI15csr_mhpmevent31IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x34000000 /*001101000000*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI12csr_mscratchIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x34100000 /*001101000001*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI8csr_mepcIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x34200000 /*001101000010*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI10csr_mcauseIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x34300000 /*001101000011*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI9csr_mtvalIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0x34400000 /*001101000100*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI7csr_mipIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb0000000 /*101100000000*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI10csr_mcycleIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb0200000 /*101100000010*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI12csr_minstretIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb8000000 /*101110000000*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI11csr_mcyclehIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb8200000 /*101110000010*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI13csr_minstrethIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb0300000 /*101100000011*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI16csr_mhpmcounter3IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb0700000 /*101100000111*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI16csr_mhpmcounter7IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb8300000 /*101110000011*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter3hIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb8700000 /*101110000111*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter7hIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb0400000 /*101100000100*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI16csr_mhpmcounter4IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb0500000 /*101100000101*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI16csr_mhpmcounter5IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb0c00000 /*101100001100*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter12IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb0d00000 /*101100001101*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter13IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb8400000 /*101110000100*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter4hIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb8500000 /*101110000101*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter5hIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb8c00000 /*101110001100*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter12hIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb8d00000 /*101110001101*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter13hIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb0600000 /*101100000110*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI16csr_mhpmcounter6IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb0e00000 /*101100001110*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter14IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb8600000 /*101110000110*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter6hIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb8e00000 /*101110001110*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter14hIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb1000000 /*101100010000*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter16IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb1100000 /*101100010001*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter17IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb1200000 /*101100010010*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter18IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb1300000 /*101100010011*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter19IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb1400000 /*101100010100*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter20IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb1500000 /*101100010101*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter21IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb1600000 /*101100010110*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter22IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb1700000 /*101100010111*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter23IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb9000000 /*101110010000*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter16hIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb9100000 /*101110010001*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter17hIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb9200000 /*101110010010*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter18hIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb9300000 /*101110010011*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter19hIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb9400000 /*101110010100*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter20hIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb9500000 /*101110010101*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter21hIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb9600000 /*101110010110*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter22hIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb9700000 /*101110010111*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter23hIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb1c00000 /*101100011100*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter28IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb1d00000 /*101100011101*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter29IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb9c00000 /*101110011100*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter28hIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb9d00000 /*101110011101*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter29hIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb1e00000 /*101100011110*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter30IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb9e00000 /*101110011110*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter30hIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb0800000 /*101100001000*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI16csr_mhpmcounter8IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb0900000 /*101100001001*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI16csr_mhpmcounter9IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb0a00000 /*101100001010*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter10IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb0b00000 /*101100001011*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter11IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb1800000 /*101100011000*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter24IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb1900000 /*101100011001*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter25IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb1a00000 /*101100011010*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter26IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb1b00000 /*101100011011*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter27IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb8800000 /*101110001000*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter8hIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb8900000 /*101110001001*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter9hIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb8a00000 /*101110001010*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter10hIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb8b00000 /*101110001011*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter11hIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb9800000 /*101110011000*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter24hIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb9900000 /*101110011001*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter25hIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb9a00000 /*101110011010*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter26hIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb9b00000 /*101110011011*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter27hIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb0f00000 /*101100001111*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter15IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb1f00000 /*101100011111*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter31IH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb8f00000 /*101110001111*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter15hIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xb9f00000 /*101110011111*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter31hIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xf1200000 /*111100010010*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI11csr_marchidIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xf1100000 /*111100010001*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI13csr_mvendoridIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xf1300000 /*111100010011*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI10csr_mimpidIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xf1400000 /*111100010100*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI11csr_mhartidIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xfc100000 /*111111000001*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI7csr_nmiIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        case ( 0xfc600000 /*111111000110*/ ):
        {
            codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI13csr_nmi_mtvalIH5_3isa3isa8_6op_csr3csr;
            break;
        }
        default: 
            return INSTPARSER_INVALIDCODE;
        }
        return INSTPARSER_OK;
}
/**
 *  \brief  Parser_MI9opc_loadsIH5_3isa3isa11_9opc_loads3opc_bc__14_13_12_6_5_4_3_2_1_0_bs_32
 */
int MI3isaIH5_3isa3isa::Parser_MI9opc_loadsIH5_3isa3isa11_9opc_loads3opc_bc__14_13_12_6_5_4_3_2_1_0_bs_32(const uint32_t input)
{
        switch (((input & 0x707f) )) {
        case ( 0x2003 /*XXXXXXXXXXXXXXXXX010XXXXX0000011*/ ):
        {
            codasip_switch_MI9opc_loadsIH5_3isa3isa11_9opc_loads3opc = CODASIP_SWITCH_VALUE_MI9opc_loadwIH5_3isa3isa11_9opc_loads3opc;
            break;
        }
        case ( 0x3 /*XXXXXXXXXXXXXXXXX000XXXXX0000011*/ ):
        {
            codasip_switch_MI9opc_loadsIH5_3isa3isa11_9opc_loads3opc = CODASIP_SWITCH_VALUE_MI9opc_loadbIH5_3isa3isa11_9opc_loads3opc;
            break;
        }
        case ( 0x1003 /*XXXXXXXXXXXXXXXXX001XXXXX0000011*/ ):
        {
            codasip_switch_MI9opc_loadsIH5_3isa3isa11_9opc_loads3opc = CODASIP_SWITCH_VALUE_MI9opc_loadhIH5_3isa3isa11_9opc_loads3opc;
            break;
        }
        case ( 0x4003 /*XXXXXXXXXXXXXXXXX100XXXXX0000011*/ ):
        {
            codasip_switch_MI9opc_loadsIH5_3isa3isa11_9opc_loads3opc = CODASIP_SWITCH_VALUE_MI10opc_loadbuIH5_3isa3isa11_9opc_loads3opc;
            break;
        }
        case ( 0x5003 /*XXXXXXXXXXXXXXXXX101XXXXX0000011*/ ):
        {
            codasip_switch_MI9opc_loadsIH5_3isa3isa11_9opc_loads3opc = CODASIP_SWITCH_VALUE_MI10opc_loadhuIH5_3isa3isa11_9opc_loads3opc;
            break;
        }
        default: 
            return INSTPARSER_INVALIDCODE;
        }
        return INSTPARSER_OK;
}
/**
 *  \brief  Generator_MI3isaIH5_3isa3isa
 */
int MI3isaIH5_3isa3isa::Generator_MI3isaIH5_3isa3isa(InstructionWithOperands& output, const bool decodeOperands)
{
    output.Clear();
    m_Streams = std::stack<disassembler::DsmText>();
    m_Streams.push(disassembler::DsmText());
    switch (codasip_switch_MI3isaIH5_3isa3isa) {
        case CODASIP_SWITCH_VALUE_MI14i_control_regsIH5_3isa3isa:
        switch (codasip_switch_MI14i_control_regsIH5_3isa3isa) {
            case CODASIP_SWITCH_VALUE_MI23i_control_registers_regIH5_3isa3isa:
            switch (codasip_switch_MI25opc_control_registers_regIH5_3isa3isa28_25opc_control_registers_reg3opc) {
                case CODASIP_SWITCH_VALUE_MI9opc_csrrwIH5_3isa3isa28_25opc_control_registers_reg3opc:
                m_Streams.top() += "csrrw";
                break;
                case CODASIP_SWITCH_VALUE_MI9opc_csrrsIH5_3isa3isa28_25opc_control_registers_reg3opc:
                m_Streams.top() += "csrrs";
                break;
                case CODASIP_SWITCH_VALUE_MI9opc_csrrcIH5_3isa3isa28_25opc_control_registers_reg3opc:
                m_Streams.top() += "csrrc";
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
            Generator_MI7reg_anyIH5_3isa3isa9_7reg_any3dst(output, decodeOperands);
            m_Streams.top() += ",";
            Generator_MI6op_csrIH5_3isa3isa8_6op_csr3csr(output, decodeOperands);
            m_Streams.top() += ",";
            Generator_MI7reg_anyIH5_3isa3isa9_7reg_any3src(output, decodeOperands);
            break;
            case CODASIP_SWITCH_VALUE_MI23i_control_registers_immIH5_3isa3isa:
            switch (codasip_switch_MI25opc_control_registers_immIH5_3isa3isa28_25opc_control_registers_imm3opc) {
                case CODASIP_SWITCH_VALUE_MI10opc_csrrwiIH5_3isa3isa28_25opc_control_registers_imm3opc:
                m_Streams.top() += "csrrwi";
                break;
                case CODASIP_SWITCH_VALUE_MI10opc_csrrsiIH5_3isa3isa28_25opc_control_registers_imm3opc:
                m_Streams.top() += "csrrsi";
                break;
                case CODASIP_SWITCH_VALUE_MI10opc_csrrciIH5_3isa3isa28_25opc_control_registers_imm3opc:
                m_Streams.top() += "csrrci";
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
            Generator_MI7reg_anyIH5_3isa3isa9_7reg_any3dst(output, decodeOperands);
            m_Streams.top() += ",";
            Generator_MI6op_csrIH5_3isa3isa8_6op_csr3csr(output, decodeOperands);
            m_Streams.top() += ",";
            if (decodeOperands)
            {
                std::stringstream out;
                out << (int)MI3immIH5_3isa3isa6_4imm53imm1_4imm5;
                m_Streams.top() += out.str();
            }
            else
            {
                m_Streams.top() += "<imm>";
            }
            break;
            default:
                return INSTGENERATOR_FAIL;
            }
        break;
        case CODASIP_SWITCH_VALUE_MI6i_compIH5_3isa3isa:
        switch (codasip_switch_MI6i_compIH5_3isa3isa) {
            case CODASIP_SWITCH_VALUE_MI15i_comp_2reg_immIH5_3isa3isa:
            switch (codasip_switch_MI17opc_comp_2reg_immIH5_3isa3isa20_17opc_comp_2reg_imm3opc) {
                case CODASIP_SWITCH_VALUE_MI8opc_addiIH5_3isa3isa20_17opc_comp_2reg_imm3opc:
                m_Streams.top() += "add";
                break;
                case CODASIP_SWITCH_VALUE_MI8opc_sltiIH5_3isa3isa20_17opc_comp_2reg_imm3opc:
                m_Streams.top() += "slti";
                break;
                case CODASIP_SWITCH_VALUE_MI9opc_sltiuIH5_3isa3isa20_17opc_comp_2reg_imm3opc:
                m_Streams.top() += "sltiu";
                break;
                case CODASIP_SWITCH_VALUE_MI8opc_andiIH5_3isa3isa20_17opc_comp_2reg_imm3opc:
                m_Streams.top() += "and";
                break;
                case CODASIP_SWITCH_VALUE_MI7opc_oriIH5_3isa3isa20_17opc_comp_2reg_imm3opc:
                m_Streams.top() += "or";
                break;
                case CODASIP_SWITCH_VALUE_MI8opc_xoriIH5_3isa3isa20_17opc_comp_2reg_imm3opc:
                m_Streams.top() += "xor";
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
            Generator_MI7reg_anyIH5_3isa3isa9_7reg_any3dst(output, decodeOperands);
            m_Streams.top() += ",";
            Generator_MI7reg_anyIH5_3isa3isa9_7reg_any3src(output, decodeOperands);
            m_Streams.top() += ",";
            Generator_MI6simm12IH5_3isa3isa8_6simm126simm12(output, decodeOperands);
            break;
            case CODASIP_SWITCH_VALUE_MI21i_comp_2reg_imm_shiftIH5_3isa3isa:
            switch (codasip_switch_MI23opc_comp_2reg_imm_shiftIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc) {
                case CODASIP_SWITCH_VALUE_MI8opc_slliIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc:
                m_Streams.top() += "sll";
                break;
                case CODASIP_SWITCH_VALUE_MI8opc_srliIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc:
                m_Streams.top() += "srl";
                break;
                case CODASIP_SWITCH_VALUE_MI8opc_sraiIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc:
                m_Streams.top() += "sra";
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
            Generator_MI7reg_anyIH5_3isa3isa9_7reg_any3dst(output, decodeOperands);
            m_Streams.top() += ",";
            Generator_MI7reg_anyIH5_3isa3isa9_7reg_any3src(output, decodeOperands);
            m_Streams.top() += ",";
            if (decodeOperands)
            {
                std::stringstream out;
                out << (int)MI5shiftIH5_3isa3isa11_9shift_imm3imm1_9shift_imm;
                m_Streams.top() += out.str();
            }
            else
            {
                m_Streams.top() += "<imm>";
            }
            break;
            case CODASIP_SWITCH_VALUE_MI5i_luiIH5_3isa3isa:
            m_Streams.top() += "lui";
            Generator_MI7reg_anyIH5_3isa3isa9_7reg_any3dst(output, decodeOperands);
            m_Streams.top() += ",";
            if (decodeOperands)
            {
                std::stringstream out;
                out << MI3immIH5_3isa3isa11_9imm20_s123imm1_9imm20_s12;
                m_Streams.top() += out.str();
            }
            else
            {
                m_Streams.top() += "<imm>";
            }
            break;
            case CODASIP_SWITCH_VALUE_MI7i_auipcIH5_3isa3isa:
            m_Streams.top() += "auipc";
            Generator_MI7reg_anyIH5_3isa3isa9_7reg_any3dst(output, decodeOperands);
            m_Streams.top() += ",";
            if (decodeOperands)
            {
                std::stringstream out;
                out << MI3immIH5_3isa3isa11_9imm20_s123imm1_9imm20_s12;
                m_Streams.top() += out.str();
            }
            else
            {
                m_Streams.top() += "<imm>";
            }
            break;
            case CODASIP_SWITCH_VALUE_MI11i_comp_3regIH5_3isa3isa:
            switch (codasip_switch_MI13opc_comp_3regIH5_3isa3isa16_13opc_comp_3reg3opc) {
                case CODASIP_SWITCH_VALUE_MI7opc_addIH5_3isa3isa16_13opc_comp_3reg3opc:
                m_Streams.top() += "add";
                break;
                case CODASIP_SWITCH_VALUE_MI7opc_sltIH5_3isa3isa16_13opc_comp_3reg3opc:
                m_Streams.top() += "slt";
                break;
                case CODASIP_SWITCH_VALUE_MI8opc_sltuIH5_3isa3isa16_13opc_comp_3reg3opc:
                m_Streams.top() += "sltu";
                break;
                case CODASIP_SWITCH_VALUE_MI7opc_andIH5_3isa3isa16_13opc_comp_3reg3opc:
                m_Streams.top() += "and";
                break;
                case CODASIP_SWITCH_VALUE_MI6opc_orIH5_3isa3isa16_13opc_comp_3reg3opc:
                m_Streams.top() += "or";
                break;
                case CODASIP_SWITCH_VALUE_MI7opc_xorIH5_3isa3isa16_13opc_comp_3reg3opc:
                m_Streams.top() += "xor";
                break;
                case CODASIP_SWITCH_VALUE_MI7opc_sllIH5_3isa3isa16_13opc_comp_3reg3opc:
                m_Streams.top() += "sll";
                break;
                case CODASIP_SWITCH_VALUE_MI7opc_srlIH5_3isa3isa16_13opc_comp_3reg3opc:
                m_Streams.top() += "srl";
                break;
                case CODASIP_SWITCH_VALUE_MI7opc_subIH5_3isa3isa16_13opc_comp_3reg3opc:
                m_Streams.top() += "sub";
                break;
                case CODASIP_SWITCH_VALUE_MI7opc_sraIH5_3isa3isa16_13opc_comp_3reg3opc:
                m_Streams.top() += "sra";
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
            Generator_MI7reg_anyIH5_3isa3isa9_7reg_any3dst(output, decodeOperands);
            m_Streams.top() += ",";
            Generator_MI7reg_anyIH5_3isa3isa9_7reg_any4src1(output, decodeOperands);
            m_Streams.top() += ",";
            Generator_MI7reg_anyIH5_3isa3isa9_7reg_any4src2(output, decodeOperands);
            break;
            default:
                return INSTGENERATOR_FAIL;
            }
        break;
        case CODASIP_SWITCH_VALUE_MI9i_controlIH5_3isa3isa:
        switch (codasip_switch_MI9i_controlIH5_3isa3isa) {
            case CODASIP_SWITCH_VALUE_MI5i_jalIH5_3isa3isa:
            m_Streams.top() += "jal";
            Generator_MI7reg_anyIH5_3isa3isa9_7reg_any3dst(output, decodeOperands);
            m_Streams.top() += ",";
            if (decodeOperands)
            {
                int64_t print_MI4addrIH5_3isa3isa13_10rel_addr204addr1_10rel_addr20 = MI4addrIH5_3isa3isa13_10rel_addr204addr1_10rel_addr20;
                print_MI4addrIH5_3isa3isa13_10rel_addr204addr1_10rel_addr20 =  (  (  ( (codasip::Integer<21, true>)((const codasip::Integer<20, true>)MI4addrIH5_3isa3isa13_10rel_addr204addr1_10rel_addr20) << (codasip::Integer<32, true>)(0x1) )  )  + (codasip::Integer<64, true>)((codasip::Integer<64, true>)(m_Address)) ) ;
                std::stringstream out;
                out << "0x" << std::hex << print_MI4addrIH5_3isa3isa13_10rel_addr204addr1_10rel_addr20;
                m_Streams.top() += out.str();
            }
            else
            {
                m_Streams.top() += "<imm>";
            }
            break;
            case CODASIP_SWITCH_VALUE_MI6i_jalrIH5_3isa3isa:
            m_Streams.top() += "jalr";
            Generator_MI7reg_anyIH5_3isa3isa9_7reg_any3dst(output, decodeOperands);
            m_Streams.top() += ",";
            Generator_MI7reg_anyIH5_3isa3isa9_7reg_any3src(output, decodeOperands);
            m_Streams.top() += ",";
            Generator_MI6simm12IH5_3isa3isa8_6simm126simm12(output, decodeOperands);
            break;
            case CODASIP_SWITCH_VALUE_MI21i_control_conditionalIH5_3isa3isa:
            switch (codasip_switch_MI23opc_control_conditionalIH5_3isa3isa26_23opc_control_conditional3opc) {
                case CODASIP_SWITCH_VALUE_MI7opc_beqIH5_3isa3isa26_23opc_control_conditional3opc:
                m_Streams.top() += "beq";
                break;
                case CODASIP_SWITCH_VALUE_MI7opc_bneIH5_3isa3isa26_23opc_control_conditional3opc:
                m_Streams.top() += "bne";
                break;
                case CODASIP_SWITCH_VALUE_MI7opc_bltIH5_3isa3isa26_23opc_control_conditional3opc:
                m_Streams.top() += "blt";
                break;
                case CODASIP_SWITCH_VALUE_MI8opc_bltuIH5_3isa3isa26_23opc_control_conditional3opc:
                m_Streams.top() += "bltu";
                break;
                case CODASIP_SWITCH_VALUE_MI7opc_bgeIH5_3isa3isa26_23opc_control_conditional3opc:
                m_Streams.top() += "bge";
                break;
                case CODASIP_SWITCH_VALUE_MI8opc_bgeuIH5_3isa3isa26_23opc_control_conditional3opc:
                m_Streams.top() += "bgeu";
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
            Generator_MI7reg_anyIH5_3isa3isa9_7reg_any4src1(output, decodeOperands);
            m_Streams.top() += ",";
            Generator_MI7reg_anyIH5_3isa3isa9_7reg_any4src2(output, decodeOperands);
            m_Streams.top() += ",";
            if (decodeOperands)
            {
                int64_t print_MI4addrIH5_3isa3isa13_10rel_addr124addr1_10rel_addr12 = MI4addrIH5_3isa3isa13_10rel_addr124addr1_10rel_addr12;
                print_MI4addrIH5_3isa3isa13_10rel_addr124addr1_10rel_addr12 =  (  (  ( (codasip::Integer<13, true>)((const codasip::Integer<12, true>)MI4addrIH5_3isa3isa13_10rel_addr124addr1_10rel_addr12) << (codasip::Integer<32, true>)(0x1) )  )  + (codasip::Integer<64, true>)((codasip::Integer<64, true>)(m_Address)) ) ;
                std::stringstream out;
                out << "0x" << std::hex << print_MI4addrIH5_3isa3isa13_10rel_addr124addr1_10rel_addr12;
                m_Streams.top() += out.str();
            }
            else
            {
                m_Streams.top() += "<imm>";
            }
            break;
            default:
                return INSTGENERATOR_FAIL;
            }
        break;
        case CODASIP_SWITCH_VALUE_MI12i_load_storeIH5_3isa3isa:
        switch (codasip_switch_MI12i_load_storeIH5_3isa3isa) {
            case CODASIP_SWITCH_VALUE_MI6i_loadIH5_3isa3isa:
            Generator_MI9opc_loadsIH5_3isa3isa11_9opc_loads3opc(output, decodeOperands);
            Generator_MI7reg_anyIH5_3isa3isa9_7reg_any3dst(output, decodeOperands);
            m_Streams.top() += ",";
            Generator_MI6simm12IH5_3isa3isa8_6simm126simm12(output, decodeOperands);
            m_Streams.top() += "(";
            Generator_MI7reg_anyIH5_3isa3isa9_7reg_any3src(output, decodeOperands);
            m_Streams.top() += ")";
            break;
            case CODASIP_SWITCH_VALUE_MI7i_storeIH5_3isa3isa:
            Generator_MI10opc_storesIH5_3isa3isa13_10opc_stores3opc(output, decodeOperands);
            Generator_MI7reg_anyIH5_3isa3isa9_7reg_any4src2(output, decodeOperands);
            m_Streams.top() += ",";
            switch (codasip_switch_MI8simm12_sIH5_3isa3isa10_8simm12_s8simm12_s) {
                case CODASIP_SWITCH_VALUE_MI13simm12_simpleIH5_3isa3isa10_8simm12_s8simm12_s:
                if (decodeOperands)
                {
                    std::stringstream out;
                    out << MI4simmIH5_3isa3isa10_8simm12_s8simm12_s1_13simm12_simple;
                    m_Streams.top() += out.str();
                }
                else
                {
                    m_Streams.top() += "<imm>";
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
            m_Streams.top() += "(";
            Generator_MI7reg_anyIH5_3isa3isa9_7reg_any4src1(output, decodeOperands);
            m_Streams.top() += ")";
            break;
            default:
                return INSTGENERATOR_FAIL;
            }
        break;
        case CODASIP_SWITCH_VALUE_MI8i_systemIH5_3isa3isa:
        switch (codasip_switch_MI8i_systemIH5_3isa3isa) {
            case CODASIP_SWITCH_VALUE_MI7i_ecallIH5_3isa3isa:
            m_Streams.top() += "ecall";
            break;
            case CODASIP_SWITCH_VALUE_MI8i_ebreakIH5_3isa3isa:
            m_Streams.top() += "ebreak";
            break;
            case CODASIP_SWITCH_VALUE_MI6i_xretIH5_3isa3isa:
            m_Streams.top() += "mret";
            break;
            case CODASIP_SWITCH_VALUE_MI5i_wfiIH5_3isa3isa:
            m_Streams.top() += "wfi";
            break;
            default:
                return INSTGENERATOR_FAIL;
            }
        break;
        case CODASIP_SWITCH_VALUE_MI11i_mem_modelIH5_3isa3isa:
        switch (codasip_switch_MI11i_mem_modelIH5_3isa3isa) {
            case CODASIP_SWITCH_VALUE_MI7i_fenceIH5_3isa3isa:
            m_Streams.top() += "fence";
            if (!decodeOperands)
            {
                m_Streams.top() += "opc_fence_param";
                m_Streams.push(disassembler::DsmText());
        }
        switch (codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1) {
            case CODASIP_SWITCH_VALUE_MI14opc_iorw_fenceIH5_3isa3isa18_15opc_fence_param6param1:
            m_Streams.top() += "iorw";
            break;
            case CODASIP_SWITCH_VALUE_MI13opc_ior_fenceIH5_3isa3isa18_15opc_fence_param6param1:
            m_Streams.top() += "ior";
            break;
            case CODASIP_SWITCH_VALUE_MI13opc_iow_fenceIH5_3isa3isa18_15opc_fence_param6param1:
            m_Streams.top() += "iow";
            break;
            case CODASIP_SWITCH_VALUE_MI12opc_io_fenceIH5_3isa3isa18_15opc_fence_param6param1:
            m_Streams.top() += "io";
            break;
            case CODASIP_SWITCH_VALUE_MI13opc_irw_fenceIH5_3isa3isa18_15opc_fence_param6param1:
            m_Streams.top() += "irw";
            break;
            case CODASIP_SWITCH_VALUE_MI12opc_ir_fenceIH5_3isa3isa18_15opc_fence_param6param1:
            m_Streams.top() += "ir";
            break;
            case CODASIP_SWITCH_VALUE_MI12opc_iw_fenceIH5_3isa3isa18_15opc_fence_param6param1:
            m_Streams.top() += "iw";
            break;
            case CODASIP_SWITCH_VALUE_MI11opc_i_fenceIH5_3isa3isa18_15opc_fence_param6param1:
            m_Streams.top() += "i";
            break;
            case CODASIP_SWITCH_VALUE_MI13opc_orw_fenceIH5_3isa3isa18_15opc_fence_param6param1:
            m_Streams.top() += "orw";
            break;
            case CODASIP_SWITCH_VALUE_MI12opc_or_fenceIH5_3isa3isa18_15opc_fence_param6param1:
            m_Streams.top() += "or";
            break;
            case CODASIP_SWITCH_VALUE_MI12opc_ow_fenceIH5_3isa3isa18_15opc_fence_param6param1:
            m_Streams.top() += "ow";
            break;
            case CODASIP_SWITCH_VALUE_MI11opc_o_fenceIH5_3isa3isa18_15opc_fence_param6param1:
            m_Streams.top() += "o";
            break;
            case CODASIP_SWITCH_VALUE_MI12opc_rw_fenceIH5_3isa3isa18_15opc_fence_param6param1:
            m_Streams.top() += "rw";
            break;
            case CODASIP_SWITCH_VALUE_MI11opc_r_fenceIH5_3isa3isa18_15opc_fence_param6param1:
            m_Streams.top() += "r";
            break;
            case CODASIP_SWITCH_VALUE_MI11opc_w_fenceIH5_3isa3isa18_15opc_fence_param6param1:
            m_Streams.top() += "w";
            break;
            case CODASIP_SWITCH_VALUE_MI14opc_hint_fenceIH5_3isa3isa18_15opc_fence_param6param1:
            m_Streams.top() += "hint";
            break;
            default:
                return INSTGENERATOR_FAIL;
            }
        if (!decodeOperands)
        {
            output.AddOperand("opc_fence_param", m_Streams.top().ToString());
            m_Streams.pop();
        }
        m_Streams.top() += ",";
        if (!decodeOperands)
        {
            m_Streams.top() += "opc_fence_param";
            m_Streams.push(disassembler::DsmText());
    }
    switch (codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2) {
        case CODASIP_SWITCH_VALUE_MI14opc_iorw_fenceIH5_3isa3isa18_15opc_fence_param6param2:
        m_Streams.top() += "iorw";
        break;
        case CODASIP_SWITCH_VALUE_MI13opc_ior_fenceIH5_3isa3isa18_15opc_fence_param6param2:
        m_Streams.top() += "ior";
        break;
        case CODASIP_SWITCH_VALUE_MI13opc_iow_fenceIH5_3isa3isa18_15opc_fence_param6param2:
        m_Streams.top() += "iow";
        break;
        case CODASIP_SWITCH_VALUE_MI12opc_io_fenceIH5_3isa3isa18_15opc_fence_param6param2:
        m_Streams.top() += "io";
        break;
        case CODASIP_SWITCH_VALUE_MI13opc_irw_fenceIH5_3isa3isa18_15opc_fence_param6param2:
        m_Streams.top() += "irw";
        break;
        case CODASIP_SWITCH_VALUE_MI12opc_ir_fenceIH5_3isa3isa18_15opc_fence_param6param2:
        m_Streams.top() += "ir";
        break;
        case CODASIP_SWITCH_VALUE_MI12opc_iw_fenceIH5_3isa3isa18_15opc_fence_param6param2:
        m_Streams.top() += "iw";
        break;
        case CODASIP_SWITCH_VALUE_MI11opc_i_fenceIH5_3isa3isa18_15opc_fence_param6param2:
        m_Streams.top() += "i";
        break;
        case CODASIP_SWITCH_VALUE_MI13opc_orw_fenceIH5_3isa3isa18_15opc_fence_param6param2:
        m_Streams.top() += "orw";
        break;
        case CODASIP_SWITCH_VALUE_MI12opc_or_fenceIH5_3isa3isa18_15opc_fence_param6param2:
        m_Streams.top() += "or";
        break;
        case CODASIP_SWITCH_VALUE_MI12opc_ow_fenceIH5_3isa3isa18_15opc_fence_param6param2:
        m_Streams.top() += "ow";
        break;
        case CODASIP_SWITCH_VALUE_MI11opc_o_fenceIH5_3isa3isa18_15opc_fence_param6param2:
        m_Streams.top() += "o";
        break;
        case CODASIP_SWITCH_VALUE_MI12opc_rw_fenceIH5_3isa3isa18_15opc_fence_param6param2:
        m_Streams.top() += "rw";
        break;
        case CODASIP_SWITCH_VALUE_MI11opc_r_fenceIH5_3isa3isa18_15opc_fence_param6param2:
        m_Streams.top() += "r";
        break;
        case CODASIP_SWITCH_VALUE_MI11opc_w_fenceIH5_3isa3isa18_15opc_fence_param6param2:
        m_Streams.top() += "w";
        break;
        case CODASIP_SWITCH_VALUE_MI14opc_hint_fenceIH5_3isa3isa18_15opc_fence_param6param2:
        m_Streams.top() += "hint";
        break;
        default:
            return INSTGENERATOR_FAIL;
        }
    if (!decodeOperands)
    {
        output.AddOperand("opc_fence_param", m_Streams.top().ToString());
        m_Streams.pop();
    }
    break;
    case CODASIP_SWITCH_VALUE_MI8i_fenceiIH5_3isa3isa:
    m_Streams.top() += "fence.i";
    break;
    default:
        return INSTGENERATOR_FAIL;
    }
    break;
    case CODASIP_SWITCH_VALUE_MI7i_unimpIH5_3isa3isa:
    m_Streams.top() += "unimp";
    break;
    case CODASIP_SWITCH_VALUE_MI14i_ext_hackatonIH5_3isa3isa:
    switch (codasip_switch_MI21opc_hackaton_custom_iIH5_3isa3isa24_21opc_hackaton_custom_i3opc) {
        case CODASIP_SWITCH_VALUE_MI21opc_hackaton_custom_aIH5_3isa3isa24_21opc_hackaton_custom_i3opc:
        m_Streams.top() += "hackaton_custom_instr_a";
        break;
        case CODASIP_SWITCH_VALUE_MI21opc_hackaton_custom_bIH5_3isa3isa24_21opc_hackaton_custom_i3opc:
        m_Streams.top() += "hackaton_custom_instr_b";
        break;
        case CODASIP_SWITCH_VALUE_MI21opc_hackaton_custom_cIH5_3isa3isa24_21opc_hackaton_custom_i3opc:
        m_Streams.top() += "hackaton_custom_instr_c";
        break;
        case CODASIP_SWITCH_VALUE_MI21opc_hackaton_custom_dIH5_3isa3isa24_21opc_hackaton_custom_i3opc:
        m_Streams.top() += "hackaton_custom_instr_d";
        break;
        case CODASIP_SWITCH_VALUE_MI21opc_hackaton_custom_eIH5_3isa3isa24_21opc_hackaton_custom_i3opc:
        m_Streams.top() += "hackaton_custom_instr_e";
        break;
        case CODASIP_SWITCH_VALUE_MI21opc_hackaton_custom_fIH5_3isa3isa24_21opc_hackaton_custom_i3opc:
        m_Streams.top() += "hackaton_custom_instr_f";
        break;
        case CODASIP_SWITCH_VALUE_MI21opc_hackaton_custom_gIH5_3isa3isa24_21opc_hackaton_custom_i3opc:
        m_Streams.top() += "hackaton_custom_instr_g";
        break;
        default:
            return INSTGENERATOR_FAIL;
        }
    Generator_MI7reg_anyIH5_3isa3isa9_7reg_any3dst(output, decodeOperands);
    m_Streams.top() += ",";
    Generator_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1(output, decodeOperands);
    m_Streams.top() += ",";
    Generator_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2(output, decodeOperands);
    break;
    default:
        return INSTGENERATOR_FAIL;
    }
    output.SetInstruction(m_Streams.top().ToString());
    return INSTGENERATOR_OK;
}
/**
 *  \brief  Generator_MI7reg_anyIH5_3isa3isa9_7reg_any3dst
 */
int MI3isaIH5_3isa3isa::Generator_MI7reg_anyIH5_3isa3isa9_7reg_any3dst(InstructionWithOperands& output, const bool decodeOperands)
{
    if (!decodeOperands)
    {
        m_Streams.top() += "reg_any";
        m_Streams.push(disassembler::DsmText());
    }
    switch (codasip_switch_MI7reg_anyIH5_3isa3isa9_7reg_any3dst) {
        case CODASIP_SWITCH_VALUE_MI4regsIH5_3isa3isa9_7reg_any3dst:
        Generator_MI4regsIH5_3isa3isa9_7reg_any3dst(output, decodeOperands);
        break;
        case CODASIP_SWITCH_VALUE_MI4reg0IH5_3isa3isa9_7reg_any3dst:
        m_Streams.top() += "x0";
        break;
        default:
            return INSTGENERATOR_FAIL;
        }
    if (!decodeOperands)
    {
        output.AddOperand("reg_any", m_Streams.top().ToString());
        m_Streams.pop();
    }
    return INSTGENERATOR_OK;
}
/**
 *  \brief  Generator_MI4regsIH5_3isa3isa9_7reg_any3dst
 */
int MI3isaIH5_3isa3isa::Generator_MI4regsIH5_3isa3isa9_7reg_any3dst(InstructionWithOperands& output, const bool decodeOperands)
{
    if (!decodeOperands)
    {
        m_Streams.top() += "regs";
        m_Streams.push(disassembler::DsmText());
    }
    switch (codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3dst) {
        case CODASIP_SWITCH_VALUE_MI4reg1IH5_3isa3isa9_7reg_any3dst:
        m_Streams.top() += "ra";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg2IH5_3isa3isa9_7reg_any3dst:
        m_Streams.top() += "sp";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg3IH5_3isa3isa9_7reg_any3dst:
        m_Streams.top() += "x3";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg4IH5_3isa3isa9_7reg_any3dst:
        m_Streams.top() += "x4";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg5IH5_3isa3isa9_7reg_any3dst:
        m_Streams.top() += "x5";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg6IH5_3isa3isa9_7reg_any3dst:
        m_Streams.top() += "x6";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg7IH5_3isa3isa9_7reg_any3dst:
        m_Streams.top() += "x7";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg8IH5_3isa3isa9_7reg_any3dst:
        m_Streams.top() += "fp";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg9IH5_3isa3isa9_7reg_any3dst:
        m_Streams.top() += "x9";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg10IH5_3isa3isa9_7reg_any3dst:
        m_Streams.top() += "x10";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg11IH5_3isa3isa9_7reg_any3dst:
        m_Streams.top() += "x11";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg12IH5_3isa3isa9_7reg_any3dst:
        m_Streams.top() += "x12";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg13IH5_3isa3isa9_7reg_any3dst:
        m_Streams.top() += "x13";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg14IH5_3isa3isa9_7reg_any3dst:
        m_Streams.top() += "x14";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg15IH5_3isa3isa9_7reg_any3dst:
        m_Streams.top() += "x15";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg16IH5_3isa3isa9_7reg_any3dst:
        m_Streams.top() += "x16";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg17IH5_3isa3isa9_7reg_any3dst:
        m_Streams.top() += "x17";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg18IH5_3isa3isa9_7reg_any3dst:
        m_Streams.top() += "x18";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg19IH5_3isa3isa9_7reg_any3dst:
        m_Streams.top() += "x19";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg20IH5_3isa3isa9_7reg_any3dst:
        m_Streams.top() += "x20";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg21IH5_3isa3isa9_7reg_any3dst:
        m_Streams.top() += "x21";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg22IH5_3isa3isa9_7reg_any3dst:
        m_Streams.top() += "x22";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg23IH5_3isa3isa9_7reg_any3dst:
        m_Streams.top() += "x23";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg24IH5_3isa3isa9_7reg_any3dst:
        m_Streams.top() += "x24";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg25IH5_3isa3isa9_7reg_any3dst:
        m_Streams.top() += "x25";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg26IH5_3isa3isa9_7reg_any3dst:
        m_Streams.top() += "x26";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg27IH5_3isa3isa9_7reg_any3dst:
        m_Streams.top() += "x27";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg28IH5_3isa3isa9_7reg_any3dst:
        m_Streams.top() += "x28";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg29IH5_3isa3isa9_7reg_any3dst:
        m_Streams.top() += "x29";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg30IH5_3isa3isa9_7reg_any3dst:
        m_Streams.top() += "x30";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg31IH5_3isa3isa9_7reg_any3dst:
        m_Streams.top() += "x31";
        break;
        default:
            return INSTGENERATOR_FAIL;
        }
    if (!decodeOperands)
    {
        output.AddOperand("regs", m_Streams.top().ToString());
        m_Streams.pop();
    }
    return INSTGENERATOR_OK;
}
/**
 *  \brief  Generator_MI8regs_csrIH5_3isa3isa8_6op_csr3csr
 */
int MI3isaIH5_3isa3isa::Generator_MI8regs_csrIH5_3isa3isa8_6op_csr3csr(InstructionWithOperands& output, const bool decodeOperands)
{
    switch (codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr) {
        case CODASIP_SWITCH_VALUE_MI11csr_mstatusIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mstatus";
        break;
        case CODASIP_SWITCH_VALUE_MI7csr_mieIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mie";
        break;
        case CODASIP_SWITCH_VALUE_MI9csr_mtvecIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mtvec";
        break;
        case CODASIP_SWITCH_VALUE_MI17csr_mcountinhibitIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mcountinhibit";
        break;
        case CODASIP_SWITCH_VALUE_MI14csr_mhpmevent3IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmevent3";
        break;
        case CODASIP_SWITCH_VALUE_MI14csr_mhpmevent4IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmevent4";
        break;
        case CODASIP_SWITCH_VALUE_MI14csr_mhpmevent5IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmevent5";
        break;
        case CODASIP_SWITCH_VALUE_MI14csr_mhpmevent6IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmevent6";
        break;
        case CODASIP_SWITCH_VALUE_MI14csr_mhpmevent7IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmevent7";
        break;
        case CODASIP_SWITCH_VALUE_MI14csr_mhpmevent8IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmevent8";
        break;
        case CODASIP_SWITCH_VALUE_MI14csr_mhpmevent9IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmevent9";
        break;
        case CODASIP_SWITCH_VALUE_MI15csr_mhpmevent10IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmevent10";
        break;
        case CODASIP_SWITCH_VALUE_MI15csr_mhpmevent11IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmevent11";
        break;
        case CODASIP_SWITCH_VALUE_MI15csr_mhpmevent12IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmevent12";
        break;
        case CODASIP_SWITCH_VALUE_MI15csr_mhpmevent13IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmevent13";
        break;
        case CODASIP_SWITCH_VALUE_MI15csr_mhpmevent14IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmevent14";
        break;
        case CODASIP_SWITCH_VALUE_MI15csr_mhpmevent15IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmevent15";
        break;
        case CODASIP_SWITCH_VALUE_MI15csr_mhpmevent16IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmevent16";
        break;
        case CODASIP_SWITCH_VALUE_MI15csr_mhpmevent17IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmevent17";
        break;
        case CODASIP_SWITCH_VALUE_MI15csr_mhpmevent18IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmevent18";
        break;
        case CODASIP_SWITCH_VALUE_MI15csr_mhpmevent19IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmevent19";
        break;
        case CODASIP_SWITCH_VALUE_MI15csr_mhpmevent20IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmevent20";
        break;
        case CODASIP_SWITCH_VALUE_MI15csr_mhpmevent21IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmevent21";
        break;
        case CODASIP_SWITCH_VALUE_MI15csr_mhpmevent22IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmevent22";
        break;
        case CODASIP_SWITCH_VALUE_MI15csr_mhpmevent23IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmevent23";
        break;
        case CODASIP_SWITCH_VALUE_MI15csr_mhpmevent24IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmevent24";
        break;
        case CODASIP_SWITCH_VALUE_MI15csr_mhpmevent25IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmevent25";
        break;
        case CODASIP_SWITCH_VALUE_MI15csr_mhpmevent26IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmevent26";
        break;
        case CODASIP_SWITCH_VALUE_MI15csr_mhpmevent27IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmevent27";
        break;
        case CODASIP_SWITCH_VALUE_MI15csr_mhpmevent28IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmevent28";
        break;
        case CODASIP_SWITCH_VALUE_MI15csr_mhpmevent29IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmevent29";
        break;
        case CODASIP_SWITCH_VALUE_MI15csr_mhpmevent30IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmevent30";
        break;
        case CODASIP_SWITCH_VALUE_MI15csr_mhpmevent31IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmevent31";
        break;
        case CODASIP_SWITCH_VALUE_MI12csr_mscratchIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mscratch";
        break;
        case CODASIP_SWITCH_VALUE_MI8csr_mepcIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mepc";
        break;
        case CODASIP_SWITCH_VALUE_MI10csr_mcauseIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mcause";
        break;
        case CODASIP_SWITCH_VALUE_MI9csr_mtvalIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mtval";
        break;
        case CODASIP_SWITCH_VALUE_MI7csr_mipIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mip";
        break;
        case CODASIP_SWITCH_VALUE_MI7csr_nmiIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "nmi";
        break;
        case CODASIP_SWITCH_VALUE_MI13csr_nmi_mtvalIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "nmi_mtval";
        break;
        case CODASIP_SWITCH_VALUE_MI10csr_mcycleIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mcycle";
        break;
        case CODASIP_SWITCH_VALUE_MI12csr_minstretIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "minstret";
        break;
        case CODASIP_SWITCH_VALUE_MI16csr_mhpmcounter3IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter3";
        break;
        case CODASIP_SWITCH_VALUE_MI16csr_mhpmcounter4IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter4";
        break;
        case CODASIP_SWITCH_VALUE_MI16csr_mhpmcounter5IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter5";
        break;
        case CODASIP_SWITCH_VALUE_MI16csr_mhpmcounter6IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter6";
        break;
        case CODASIP_SWITCH_VALUE_MI16csr_mhpmcounter7IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter7";
        break;
        case CODASIP_SWITCH_VALUE_MI16csr_mhpmcounter8IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter8";
        break;
        case CODASIP_SWITCH_VALUE_MI16csr_mhpmcounter9IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter9";
        break;
        case CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter10IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter10";
        break;
        case CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter11IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter11";
        break;
        case CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter12IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter12";
        break;
        case CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter13IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter13";
        break;
        case CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter14IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter14";
        break;
        case CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter15IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter15";
        break;
        case CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter16IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter16";
        break;
        case CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter17IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter17";
        break;
        case CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter18IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter18";
        break;
        case CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter19IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter19";
        break;
        case CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter20IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter20";
        break;
        case CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter21IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter21";
        break;
        case CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter22IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter22";
        break;
        case CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter23IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter23";
        break;
        case CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter24IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter24";
        break;
        case CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter25IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter25";
        break;
        case CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter26IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter26";
        break;
        case CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter27IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter27";
        break;
        case CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter28IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter28";
        break;
        case CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter29IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter29";
        break;
        case CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter30IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter30";
        break;
        case CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter31IH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter31";
        break;
        case CODASIP_SWITCH_VALUE_MI8csr_misaIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "misa";
        break;
        case CODASIP_SWITCH_VALUE_MI13csr_mvendoridIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mvendorid";
        break;
        case CODASIP_SWITCH_VALUE_MI11csr_marchidIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "marchid";
        break;
        case CODASIP_SWITCH_VALUE_MI10csr_mimpidIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mimpid";
        break;
        case CODASIP_SWITCH_VALUE_MI11csr_mhartidIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhartid";
        break;
        case CODASIP_SWITCH_VALUE_MI11csr_mcyclehIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mcycleh";
        break;
        case CODASIP_SWITCH_VALUE_MI13csr_minstrethIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "minstreth";
        break;
        case CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter3hIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter3h";
        break;
        case CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter4hIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter4h";
        break;
        case CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter5hIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter5h";
        break;
        case CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter6hIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter6h";
        break;
        case CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter7hIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter7h";
        break;
        case CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter8hIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter8h";
        break;
        case CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter9hIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter9h";
        break;
        case CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter10hIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter10h";
        break;
        case CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter11hIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter11h";
        break;
        case CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter12hIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter12h";
        break;
        case CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter13hIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter13h";
        break;
        case CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter14hIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter14h";
        break;
        case CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter15hIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter15h";
        break;
        case CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter16hIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter16h";
        break;
        case CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter17hIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter17h";
        break;
        case CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter18hIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter18h";
        break;
        case CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter19hIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter19h";
        break;
        case CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter20hIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter20h";
        break;
        case CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter21hIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter21h";
        break;
        case CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter22hIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter22h";
        break;
        case CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter23hIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter23h";
        break;
        case CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter24hIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter24h";
        break;
        case CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter25hIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter25h";
        break;
        case CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter26hIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter26h";
        break;
        case CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter27hIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter27h";
        break;
        case CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter28hIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter28h";
        break;
        case CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter29hIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter29h";
        break;
        case CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter30hIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter30h";
        break;
        case CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter31hIH5_3isa3isa8_6op_csr3csr:
        m_Streams.top() += "mhpmcounter31h";
        break;
        default:
            return INSTGENERATOR_FAIL;
        }
    return INSTGENERATOR_OK;
}
/**
 *  \brief  Generator_MI7reg_anyIH5_3isa3isa9_7reg_any3src
 */
int MI3isaIH5_3isa3isa::Generator_MI7reg_anyIH5_3isa3isa9_7reg_any3src(InstructionWithOperands& output, const bool decodeOperands)
{
    if (!decodeOperands)
    {
        m_Streams.top() += "reg_any";
        m_Streams.push(disassembler::DsmText());
    }
    switch (codasip_switch_MI7reg_anyIH5_3isa3isa9_7reg_any3src) {
        case CODASIP_SWITCH_VALUE_MI4regsIH5_3isa3isa9_7reg_any3src:
        Generator_MI4regsIH5_3isa3isa9_7reg_any3src(output, decodeOperands);
        break;
        case CODASIP_SWITCH_VALUE_MI4reg0IH5_3isa3isa9_7reg_any3src:
        m_Streams.top() += "x0";
        break;
        default:
            return INSTGENERATOR_FAIL;
        }
    if (!decodeOperands)
    {
        output.AddOperand("reg_any", m_Streams.top().ToString());
        m_Streams.pop();
    }
    return INSTGENERATOR_OK;
}
/**
 *  \brief  Generator_MI4regsIH5_3isa3isa9_7reg_any3src
 */
int MI3isaIH5_3isa3isa::Generator_MI4regsIH5_3isa3isa9_7reg_any3src(InstructionWithOperands& output, const bool decodeOperands)
{
    if (!decodeOperands)
    {
        m_Streams.top() += "regs";
        m_Streams.push(disassembler::DsmText());
    }
    switch (codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3src) {
        case CODASIP_SWITCH_VALUE_MI4reg1IH5_3isa3isa9_7reg_any3src:
        m_Streams.top() += "ra";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg2IH5_3isa3isa9_7reg_any3src:
        m_Streams.top() += "sp";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg3IH5_3isa3isa9_7reg_any3src:
        m_Streams.top() += "x3";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg4IH5_3isa3isa9_7reg_any3src:
        m_Streams.top() += "x4";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg5IH5_3isa3isa9_7reg_any3src:
        m_Streams.top() += "x5";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg6IH5_3isa3isa9_7reg_any3src:
        m_Streams.top() += "x6";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg7IH5_3isa3isa9_7reg_any3src:
        m_Streams.top() += "x7";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg8IH5_3isa3isa9_7reg_any3src:
        m_Streams.top() += "fp";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg9IH5_3isa3isa9_7reg_any3src:
        m_Streams.top() += "x9";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg10IH5_3isa3isa9_7reg_any3src:
        m_Streams.top() += "x10";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg11IH5_3isa3isa9_7reg_any3src:
        m_Streams.top() += "x11";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg12IH5_3isa3isa9_7reg_any3src:
        m_Streams.top() += "x12";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg13IH5_3isa3isa9_7reg_any3src:
        m_Streams.top() += "x13";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg14IH5_3isa3isa9_7reg_any3src:
        m_Streams.top() += "x14";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg15IH5_3isa3isa9_7reg_any3src:
        m_Streams.top() += "x15";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg16IH5_3isa3isa9_7reg_any3src:
        m_Streams.top() += "x16";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg17IH5_3isa3isa9_7reg_any3src:
        m_Streams.top() += "x17";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg18IH5_3isa3isa9_7reg_any3src:
        m_Streams.top() += "x18";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg19IH5_3isa3isa9_7reg_any3src:
        m_Streams.top() += "x19";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg20IH5_3isa3isa9_7reg_any3src:
        m_Streams.top() += "x20";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg21IH5_3isa3isa9_7reg_any3src:
        m_Streams.top() += "x21";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg22IH5_3isa3isa9_7reg_any3src:
        m_Streams.top() += "x22";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg23IH5_3isa3isa9_7reg_any3src:
        m_Streams.top() += "x23";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg24IH5_3isa3isa9_7reg_any3src:
        m_Streams.top() += "x24";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg25IH5_3isa3isa9_7reg_any3src:
        m_Streams.top() += "x25";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg26IH5_3isa3isa9_7reg_any3src:
        m_Streams.top() += "x26";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg27IH5_3isa3isa9_7reg_any3src:
        m_Streams.top() += "x27";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg28IH5_3isa3isa9_7reg_any3src:
        m_Streams.top() += "x28";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg29IH5_3isa3isa9_7reg_any3src:
        m_Streams.top() += "x29";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg30IH5_3isa3isa9_7reg_any3src:
        m_Streams.top() += "x30";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg31IH5_3isa3isa9_7reg_any3src:
        m_Streams.top() += "x31";
        break;
        default:
            return INSTGENERATOR_FAIL;
        }
    if (!decodeOperands)
    {
        output.AddOperand("regs", m_Streams.top().ToString());
        m_Streams.pop();
    }
    return INSTGENERATOR_OK;
}
/**
 *  \brief  Generator_MI7reg_anyIH5_3isa3isa9_7reg_any4src1
 */
int MI3isaIH5_3isa3isa::Generator_MI7reg_anyIH5_3isa3isa9_7reg_any4src1(InstructionWithOperands& output, const bool decodeOperands)
{
    if (!decodeOperands)
    {
        m_Streams.top() += "reg_any";
        m_Streams.push(disassembler::DsmText());
    }
    switch (codasip_switch_MI7reg_anyIH5_3isa3isa9_7reg_any4src1) {
        case CODASIP_SWITCH_VALUE_MI4regsIH5_3isa3isa9_7reg_any4src1:
        Generator_MI4regsIH5_3isa3isa9_7reg_any4src1(output, decodeOperands);
        break;
        case CODASIP_SWITCH_VALUE_MI4reg0IH5_3isa3isa9_7reg_any4src1:
        m_Streams.top() += "x0";
        break;
        default:
            return INSTGENERATOR_FAIL;
        }
    if (!decodeOperands)
    {
        output.AddOperand("reg_any", m_Streams.top().ToString());
        m_Streams.pop();
    }
    return INSTGENERATOR_OK;
}
/**
 *  \brief  Generator_MI4regsIH5_3isa3isa9_7reg_any4src1
 */
int MI3isaIH5_3isa3isa::Generator_MI4regsIH5_3isa3isa9_7reg_any4src1(InstructionWithOperands& output, const bool decodeOperands)
{
    if (!decodeOperands)
    {
        m_Streams.top() += "regs";
        m_Streams.push(disassembler::DsmText());
    }
    switch (codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src1) {
        case CODASIP_SWITCH_VALUE_MI4reg1IH5_3isa3isa9_7reg_any4src1:
        m_Streams.top() += "ra";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg2IH5_3isa3isa9_7reg_any4src1:
        m_Streams.top() += "sp";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg3IH5_3isa3isa9_7reg_any4src1:
        m_Streams.top() += "x3";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg4IH5_3isa3isa9_7reg_any4src1:
        m_Streams.top() += "x4";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg5IH5_3isa3isa9_7reg_any4src1:
        m_Streams.top() += "x5";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg6IH5_3isa3isa9_7reg_any4src1:
        m_Streams.top() += "x6";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg7IH5_3isa3isa9_7reg_any4src1:
        m_Streams.top() += "x7";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg8IH5_3isa3isa9_7reg_any4src1:
        m_Streams.top() += "fp";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg9IH5_3isa3isa9_7reg_any4src1:
        m_Streams.top() += "x9";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg10IH5_3isa3isa9_7reg_any4src1:
        m_Streams.top() += "x10";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg11IH5_3isa3isa9_7reg_any4src1:
        m_Streams.top() += "x11";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg12IH5_3isa3isa9_7reg_any4src1:
        m_Streams.top() += "x12";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg13IH5_3isa3isa9_7reg_any4src1:
        m_Streams.top() += "x13";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg14IH5_3isa3isa9_7reg_any4src1:
        m_Streams.top() += "x14";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg15IH5_3isa3isa9_7reg_any4src1:
        m_Streams.top() += "x15";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg16IH5_3isa3isa9_7reg_any4src1:
        m_Streams.top() += "x16";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg17IH5_3isa3isa9_7reg_any4src1:
        m_Streams.top() += "x17";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg18IH5_3isa3isa9_7reg_any4src1:
        m_Streams.top() += "x18";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg19IH5_3isa3isa9_7reg_any4src1:
        m_Streams.top() += "x19";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg20IH5_3isa3isa9_7reg_any4src1:
        m_Streams.top() += "x20";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg21IH5_3isa3isa9_7reg_any4src1:
        m_Streams.top() += "x21";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg22IH5_3isa3isa9_7reg_any4src1:
        m_Streams.top() += "x22";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg23IH5_3isa3isa9_7reg_any4src1:
        m_Streams.top() += "x23";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg24IH5_3isa3isa9_7reg_any4src1:
        m_Streams.top() += "x24";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg25IH5_3isa3isa9_7reg_any4src1:
        m_Streams.top() += "x25";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg26IH5_3isa3isa9_7reg_any4src1:
        m_Streams.top() += "x26";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg27IH5_3isa3isa9_7reg_any4src1:
        m_Streams.top() += "x27";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg28IH5_3isa3isa9_7reg_any4src1:
        m_Streams.top() += "x28";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg29IH5_3isa3isa9_7reg_any4src1:
        m_Streams.top() += "x29";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg30IH5_3isa3isa9_7reg_any4src1:
        m_Streams.top() += "x30";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg31IH5_3isa3isa9_7reg_any4src1:
        m_Streams.top() += "x31";
        break;
        default:
            return INSTGENERATOR_FAIL;
        }
    if (!decodeOperands)
    {
        output.AddOperand("regs", m_Streams.top().ToString());
        m_Streams.pop();
    }
    return INSTGENERATOR_OK;
}
/**
 *  \brief  Generator_MI7reg_anyIH5_3isa3isa9_7reg_any4src2
 */
int MI3isaIH5_3isa3isa::Generator_MI7reg_anyIH5_3isa3isa9_7reg_any4src2(InstructionWithOperands& output, const bool decodeOperands)
{
    if (!decodeOperands)
    {
        m_Streams.top() += "reg_any";
        m_Streams.push(disassembler::DsmText());
    }
    switch (codasip_switch_MI7reg_anyIH5_3isa3isa9_7reg_any4src2) {
        case CODASIP_SWITCH_VALUE_MI4regsIH5_3isa3isa9_7reg_any4src2:
        Generator_MI4regsIH5_3isa3isa9_7reg_any4src2(output, decodeOperands);
        break;
        case CODASIP_SWITCH_VALUE_MI4reg0IH5_3isa3isa9_7reg_any4src2:
        m_Streams.top() += "x0";
        break;
        default:
            return INSTGENERATOR_FAIL;
        }
    if (!decodeOperands)
    {
        output.AddOperand("reg_any", m_Streams.top().ToString());
        m_Streams.pop();
    }
    return INSTGENERATOR_OK;
}
/**
 *  \brief  Generator_MI4regsIH5_3isa3isa9_7reg_any4src2
 */
int MI3isaIH5_3isa3isa::Generator_MI4regsIH5_3isa3isa9_7reg_any4src2(InstructionWithOperands& output, const bool decodeOperands)
{
    if (!decodeOperands)
    {
        m_Streams.top() += "regs";
        m_Streams.push(disassembler::DsmText());
    }
    switch (codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src2) {
        case CODASIP_SWITCH_VALUE_MI4reg1IH5_3isa3isa9_7reg_any4src2:
        m_Streams.top() += "ra";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg2IH5_3isa3isa9_7reg_any4src2:
        m_Streams.top() += "sp";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg3IH5_3isa3isa9_7reg_any4src2:
        m_Streams.top() += "x3";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg4IH5_3isa3isa9_7reg_any4src2:
        m_Streams.top() += "x4";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg5IH5_3isa3isa9_7reg_any4src2:
        m_Streams.top() += "x5";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg6IH5_3isa3isa9_7reg_any4src2:
        m_Streams.top() += "x6";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg7IH5_3isa3isa9_7reg_any4src2:
        m_Streams.top() += "x7";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg8IH5_3isa3isa9_7reg_any4src2:
        m_Streams.top() += "fp";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg9IH5_3isa3isa9_7reg_any4src2:
        m_Streams.top() += "x9";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg10IH5_3isa3isa9_7reg_any4src2:
        m_Streams.top() += "x10";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg11IH5_3isa3isa9_7reg_any4src2:
        m_Streams.top() += "x11";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg12IH5_3isa3isa9_7reg_any4src2:
        m_Streams.top() += "x12";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg13IH5_3isa3isa9_7reg_any4src2:
        m_Streams.top() += "x13";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg14IH5_3isa3isa9_7reg_any4src2:
        m_Streams.top() += "x14";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg15IH5_3isa3isa9_7reg_any4src2:
        m_Streams.top() += "x15";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg16IH5_3isa3isa9_7reg_any4src2:
        m_Streams.top() += "x16";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg17IH5_3isa3isa9_7reg_any4src2:
        m_Streams.top() += "x17";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg18IH5_3isa3isa9_7reg_any4src2:
        m_Streams.top() += "x18";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg19IH5_3isa3isa9_7reg_any4src2:
        m_Streams.top() += "x19";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg20IH5_3isa3isa9_7reg_any4src2:
        m_Streams.top() += "x20";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg21IH5_3isa3isa9_7reg_any4src2:
        m_Streams.top() += "x21";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg22IH5_3isa3isa9_7reg_any4src2:
        m_Streams.top() += "x22";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg23IH5_3isa3isa9_7reg_any4src2:
        m_Streams.top() += "x23";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg24IH5_3isa3isa9_7reg_any4src2:
        m_Streams.top() += "x24";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg25IH5_3isa3isa9_7reg_any4src2:
        m_Streams.top() += "x25";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg26IH5_3isa3isa9_7reg_any4src2:
        m_Streams.top() += "x26";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg27IH5_3isa3isa9_7reg_any4src2:
        m_Streams.top() += "x27";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg28IH5_3isa3isa9_7reg_any4src2:
        m_Streams.top() += "x28";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg29IH5_3isa3isa9_7reg_any4src2:
        m_Streams.top() += "x29";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg30IH5_3isa3isa9_7reg_any4src2:
        m_Streams.top() += "x30";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg31IH5_3isa3isa9_7reg_any4src2:
        m_Streams.top() += "x31";
        break;
        default:
            return INSTGENERATOR_FAIL;
        }
    if (!decodeOperands)
    {
        output.AddOperand("regs", m_Streams.top().ToString());
        m_Streams.pop();
    }
    return INSTGENERATOR_OK;
}
/**
 *  \brief  Generator_MI9opc_loadsIH5_3isa3isa11_9opc_loads3opc
 */
int MI3isaIH5_3isa3isa::Generator_MI9opc_loadsIH5_3isa3isa11_9opc_loads3opc(InstructionWithOperands& output, const bool decodeOperands)
{
    switch (codasip_switch_MI9opc_loadsIH5_3isa3isa11_9opc_loads3opc) {
        case CODASIP_SWITCH_VALUE_MI9opc_loadwIH5_3isa3isa11_9opc_loads3opc:
        m_Streams.top() += "lw";
        break;
        case CODASIP_SWITCH_VALUE_MI9opc_loadhIH5_3isa3isa11_9opc_loads3opc:
        m_Streams.top() += "lh";
        break;
        case CODASIP_SWITCH_VALUE_MI10opc_loadhuIH5_3isa3isa11_9opc_loads3opc:
        m_Streams.top() += "lhu";
        break;
        case CODASIP_SWITCH_VALUE_MI9opc_loadbIH5_3isa3isa11_9opc_loads3opc:
        m_Streams.top() += "lb";
        break;
        case CODASIP_SWITCH_VALUE_MI10opc_loadbuIH5_3isa3isa11_9opc_loads3opc:
        m_Streams.top() += "lbu";
        break;
        default:
            return INSTGENERATOR_FAIL;
        }
    return INSTGENERATOR_OK;
}
/**
 *  \brief  Generator_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1
 */
int MI3isaIH5_3isa3isa::Generator_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1(InstructionWithOperands& output, const bool decodeOperands)
{
    if (!decodeOperands)
    {
        m_Streams.top() += "reg_any";
        m_Streams.push(disassembler::DsmText());
    }
    switch (codasip_switch_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1) {
        case CODASIP_SWITCH_VALUE_MI4regsIH5_3isa3isa9_7reg_any4rs_1:
        Generator_MI4regsIH5_3isa3isa9_7reg_any4rs_1(output, decodeOperands);
        break;
        case CODASIP_SWITCH_VALUE_MI4reg0IH5_3isa3isa9_7reg_any4rs_1:
        m_Streams.top() += "x0";
        break;
        default:
            return INSTGENERATOR_FAIL;
        }
    if (!decodeOperands)
    {
        output.AddOperand("reg_any", m_Streams.top().ToString());
        m_Streams.pop();
    }
    return INSTGENERATOR_OK;
}
/**
 *  \brief  Generator_MI4regsIH5_3isa3isa9_7reg_any4rs_1
 */
int MI3isaIH5_3isa3isa::Generator_MI4regsIH5_3isa3isa9_7reg_any4rs_1(InstructionWithOperands& output, const bool decodeOperands)
{
    if (!decodeOperands)
    {
        m_Streams.top() += "regs";
        m_Streams.push(disassembler::DsmText());
    }
    switch (codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_1) {
        case CODASIP_SWITCH_VALUE_MI4reg1IH5_3isa3isa9_7reg_any4rs_1:
        m_Streams.top() += "ra";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg2IH5_3isa3isa9_7reg_any4rs_1:
        m_Streams.top() += "sp";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg3IH5_3isa3isa9_7reg_any4rs_1:
        m_Streams.top() += "x3";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg4IH5_3isa3isa9_7reg_any4rs_1:
        m_Streams.top() += "x4";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg5IH5_3isa3isa9_7reg_any4rs_1:
        m_Streams.top() += "x5";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg6IH5_3isa3isa9_7reg_any4rs_1:
        m_Streams.top() += "x6";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg7IH5_3isa3isa9_7reg_any4rs_1:
        m_Streams.top() += "x7";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg8IH5_3isa3isa9_7reg_any4rs_1:
        m_Streams.top() += "fp";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg9IH5_3isa3isa9_7reg_any4rs_1:
        m_Streams.top() += "x9";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg10IH5_3isa3isa9_7reg_any4rs_1:
        m_Streams.top() += "x10";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg11IH5_3isa3isa9_7reg_any4rs_1:
        m_Streams.top() += "x11";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg12IH5_3isa3isa9_7reg_any4rs_1:
        m_Streams.top() += "x12";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg13IH5_3isa3isa9_7reg_any4rs_1:
        m_Streams.top() += "x13";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg14IH5_3isa3isa9_7reg_any4rs_1:
        m_Streams.top() += "x14";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg15IH5_3isa3isa9_7reg_any4rs_1:
        m_Streams.top() += "x15";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg16IH5_3isa3isa9_7reg_any4rs_1:
        m_Streams.top() += "x16";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg17IH5_3isa3isa9_7reg_any4rs_1:
        m_Streams.top() += "x17";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg18IH5_3isa3isa9_7reg_any4rs_1:
        m_Streams.top() += "x18";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg19IH5_3isa3isa9_7reg_any4rs_1:
        m_Streams.top() += "x19";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg20IH5_3isa3isa9_7reg_any4rs_1:
        m_Streams.top() += "x20";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg21IH5_3isa3isa9_7reg_any4rs_1:
        m_Streams.top() += "x21";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg22IH5_3isa3isa9_7reg_any4rs_1:
        m_Streams.top() += "x22";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg23IH5_3isa3isa9_7reg_any4rs_1:
        m_Streams.top() += "x23";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg24IH5_3isa3isa9_7reg_any4rs_1:
        m_Streams.top() += "x24";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg25IH5_3isa3isa9_7reg_any4rs_1:
        m_Streams.top() += "x25";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg26IH5_3isa3isa9_7reg_any4rs_1:
        m_Streams.top() += "x26";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg27IH5_3isa3isa9_7reg_any4rs_1:
        m_Streams.top() += "x27";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg28IH5_3isa3isa9_7reg_any4rs_1:
        m_Streams.top() += "x28";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg29IH5_3isa3isa9_7reg_any4rs_1:
        m_Streams.top() += "x29";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg30IH5_3isa3isa9_7reg_any4rs_1:
        m_Streams.top() += "x30";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg31IH5_3isa3isa9_7reg_any4rs_1:
        m_Streams.top() += "x31";
        break;
        default:
            return INSTGENERATOR_FAIL;
        }
    if (!decodeOperands)
    {
        output.AddOperand("regs", m_Streams.top().ToString());
        m_Streams.pop();
    }
    return INSTGENERATOR_OK;
}
/**
 *  \brief  Generator_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2
 */
int MI3isaIH5_3isa3isa::Generator_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2(InstructionWithOperands& output, const bool decodeOperands)
{
    if (!decodeOperands)
    {
        m_Streams.top() += "reg_any";
        m_Streams.push(disassembler::DsmText());
    }
    switch (codasip_switch_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2) {
        case CODASIP_SWITCH_VALUE_MI4regsIH5_3isa3isa9_7reg_any4rs_2:
        Generator_MI4regsIH5_3isa3isa9_7reg_any4rs_2(output, decodeOperands);
        break;
        case CODASIP_SWITCH_VALUE_MI4reg0IH5_3isa3isa9_7reg_any4rs_2:
        m_Streams.top() += "x0";
        break;
        default:
            return INSTGENERATOR_FAIL;
        }
    if (!decodeOperands)
    {
        output.AddOperand("reg_any", m_Streams.top().ToString());
        m_Streams.pop();
    }
    return INSTGENERATOR_OK;
}
/**
 *  \brief  Generator_MI4regsIH5_3isa3isa9_7reg_any4rs_2
 */
int MI3isaIH5_3isa3isa::Generator_MI4regsIH5_3isa3isa9_7reg_any4rs_2(InstructionWithOperands& output, const bool decodeOperands)
{
    if (!decodeOperands)
    {
        m_Streams.top() += "regs";
        m_Streams.push(disassembler::DsmText());
    }
    switch (codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_2) {
        case CODASIP_SWITCH_VALUE_MI4reg1IH5_3isa3isa9_7reg_any4rs_2:
        m_Streams.top() += "ra";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg2IH5_3isa3isa9_7reg_any4rs_2:
        m_Streams.top() += "sp";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg3IH5_3isa3isa9_7reg_any4rs_2:
        m_Streams.top() += "x3";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg4IH5_3isa3isa9_7reg_any4rs_2:
        m_Streams.top() += "x4";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg5IH5_3isa3isa9_7reg_any4rs_2:
        m_Streams.top() += "x5";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg6IH5_3isa3isa9_7reg_any4rs_2:
        m_Streams.top() += "x6";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg7IH5_3isa3isa9_7reg_any4rs_2:
        m_Streams.top() += "x7";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg8IH5_3isa3isa9_7reg_any4rs_2:
        m_Streams.top() += "fp";
        break;
        case CODASIP_SWITCH_VALUE_MI4reg9IH5_3isa3isa9_7reg_any4rs_2:
        m_Streams.top() += "x9";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg10IH5_3isa3isa9_7reg_any4rs_2:
        m_Streams.top() += "x10";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg11IH5_3isa3isa9_7reg_any4rs_2:
        m_Streams.top() += "x11";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg12IH5_3isa3isa9_7reg_any4rs_2:
        m_Streams.top() += "x12";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg13IH5_3isa3isa9_7reg_any4rs_2:
        m_Streams.top() += "x13";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg14IH5_3isa3isa9_7reg_any4rs_2:
        m_Streams.top() += "x14";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg15IH5_3isa3isa9_7reg_any4rs_2:
        m_Streams.top() += "x15";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg16IH5_3isa3isa9_7reg_any4rs_2:
        m_Streams.top() += "x16";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg17IH5_3isa3isa9_7reg_any4rs_2:
        m_Streams.top() += "x17";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg18IH5_3isa3isa9_7reg_any4rs_2:
        m_Streams.top() += "x18";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg19IH5_3isa3isa9_7reg_any4rs_2:
        m_Streams.top() += "x19";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg20IH5_3isa3isa9_7reg_any4rs_2:
        m_Streams.top() += "x20";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg21IH5_3isa3isa9_7reg_any4rs_2:
        m_Streams.top() += "x21";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg22IH5_3isa3isa9_7reg_any4rs_2:
        m_Streams.top() += "x22";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg23IH5_3isa3isa9_7reg_any4rs_2:
        m_Streams.top() += "x23";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg24IH5_3isa3isa9_7reg_any4rs_2:
        m_Streams.top() += "x24";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg25IH5_3isa3isa9_7reg_any4rs_2:
        m_Streams.top() += "x25";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg26IH5_3isa3isa9_7reg_any4rs_2:
        m_Streams.top() += "x26";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg27IH5_3isa3isa9_7reg_any4rs_2:
        m_Streams.top() += "x27";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg28IH5_3isa3isa9_7reg_any4rs_2:
        m_Streams.top() += "x28";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg29IH5_3isa3isa9_7reg_any4rs_2:
        m_Streams.top() += "x29";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg30IH5_3isa3isa9_7reg_any4rs_2:
        m_Streams.top() += "x30";
        break;
        case CODASIP_SWITCH_VALUE_MI5reg31IH5_3isa3isa9_7reg_any4rs_2:
        m_Streams.top() += "x31";
        break;
        default:
            return INSTGENERATOR_FAIL;
        }
    if (!decodeOperands)
    {
        output.AddOperand("regs", m_Streams.top().ToString());
        m_Streams.pop();
    }
    return INSTGENERATOR_OK;
}
MI3isaIH5_3isa3isa::MI3isaIH5_3isa3isa()
 :  MI5shiftIH5_3isa3isa11_9shift_imm3imm1_9shift_imm(0),
    MI3immIH5_3isa3isa11_9imm20_s123imm1_9imm20_s12(0),
    MI3immIH5_3isa3isa6_4imm53imm1_4imm5(0),
    MI4addrIH5_3isa3isa13_10rel_addr204addr1_10rel_addr20(0),
    MI4addrIH5_3isa3isa13_10rel_addr124addr1_10rel_addr12(0),
    MI4simmIH5_3isa3isa10_8simm12_s8simm12_s1_13simm12_simple(0),
    MI4simmIH5_3isa3isa8_6simm126simm121_13simm12_simple(0),
    codasip_switch_MI10opc_storesIH5_3isa3isa13_10opc_stores3opc(CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa),
    codasip_switch_MI11i_mem_modelIH5_3isa3isa(CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa),
    codasip_switch_MI12i_load_storeIH5_3isa3isa(CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa),
    codasip_switch_MI13opc_comp_3regIH5_3isa3isa16_13opc_comp_3reg3opc(CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa),
    codasip_switch_MI14i_control_regsIH5_3isa3isa(CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa),
    codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1(CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa),
    codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2(CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa),
    codasip_switch_MI17opc_comp_2reg_immIH5_3isa3isa20_17opc_comp_2reg_imm3opc(CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa),
    codasip_switch_MI21opc_hackaton_custom_iIH5_3isa3isa24_21opc_hackaton_custom_i3opc(CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa),
    codasip_switch_MI23opc_comp_2reg_imm_shiftIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc(CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa),
    codasip_switch_MI23opc_control_conditionalIH5_3isa3isa26_23opc_control_conditional3opc(CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa),
    codasip_switch_MI25opc_control_registers_immIH5_3isa3isa28_25opc_control_registers_imm3opc(CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa),
    codasip_switch_MI25opc_control_registers_regIH5_3isa3isa28_25opc_control_registers_reg3opc(CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa),
    codasip_switch_MI3isaIH5_3isa3isa(CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa),
    codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3dst(CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa),
    codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3src(CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa),
    codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_1(CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa),
    codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_2(CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa),
    codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src1(CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa),
    codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src2(CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa),
    codasip_switch_MI6i_compIH5_3isa3isa(CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa),
    codasip_switch_MI6op_csrIH5_3isa3isa8_6op_csr3csr(CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa),
    codasip_switch_MI6simm12IH5_3isa3isa8_6simm126simm12(CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa),
    codasip_switch_MI7reg_anyIH5_3isa3isa9_7reg_any3dst(CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa),
    codasip_switch_MI7reg_anyIH5_3isa3isa9_7reg_any3src(CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa),
    codasip_switch_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1(CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa),
    codasip_switch_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2(CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa),
    codasip_switch_MI7reg_anyIH5_3isa3isa9_7reg_any4src1(CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa),
    codasip_switch_MI7reg_anyIH5_3isa3isa9_7reg_any4src2(CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa),
    codasip_switch_MI8i_systemIH5_3isa3isa(CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa),
    codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr(CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa),
    codasip_switch_MI8simm12_sIH5_3isa3isa10_8simm12_s8simm12_s(CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa),
    codasip_switch_MI9i_controlIH5_3isa3isa(CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa),
    codasip_switch_MI9opc_loadsIH5_3isa3isa11_9opc_loads3opc(CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa),
    m_Address(0),
    idecstate(0)
{
    m_Instructions.insert("csrrw reg_any , op_csr , reg_any");
    m_Instructions.insert("csrrs reg_any , op_csr , reg_any");
    m_Instructions.insert("csrrc reg_any , op_csr , reg_any");
    m_Instructions.insert("csrrwi reg_any , op_csr , <imm>");
    m_Instructions.insert("csrrsi reg_any , op_csr , <imm>");
    m_Instructions.insert("csrrci reg_any , op_csr , <imm>");
    m_Instructions.insert("add reg_any , reg_any , <imm>");
    m_Instructions.insert("slti reg_any , reg_any , <imm>");
    m_Instructions.insert("sltiu reg_any , reg_any , <imm>");
    m_Instructions.insert("and reg_any , reg_any , <imm>");
    m_Instructions.insert("or reg_any , reg_any , <imm>");
    m_Instructions.insert("xor reg_any , reg_any , <imm>");
    m_Instructions.insert("sll reg_any , reg_any , <imm>");
    m_Instructions.insert("srl reg_any , reg_any , <imm>");
    m_Instructions.insert("sra reg_any , reg_any , <imm>");
    m_Instructions.insert("lui reg_any , <imm>");
    m_Instructions.insert("auipc reg_any , <imm>");
    m_Instructions.insert("add reg_any , reg_any , reg_any");
    m_Instructions.insert("slt reg_any , reg_any , reg_any");
    m_Instructions.insert("sltu reg_any , reg_any , reg_any");
    m_Instructions.insert("and reg_any , reg_any , reg_any");
    m_Instructions.insert("or reg_any , reg_any , reg_any");
    m_Instructions.insert("xor reg_any , reg_any , reg_any");
    m_Instructions.insert("sll reg_any , reg_any , reg_any");
    m_Instructions.insert("srl reg_any , reg_any , reg_any");
    m_Instructions.insert("sub reg_any , reg_any , reg_any");
    m_Instructions.insert("sra reg_any , reg_any , reg_any");
    m_Instructions.insert("jal reg_any , <imm>");
    m_Instructions.insert("jalr reg_any , reg_any , <imm>");
    m_Instructions.insert("beq reg_any , reg_any , <imm>");
    m_Instructions.insert("bne reg_any , reg_any , <imm>");
    m_Instructions.insert("blt reg_any , reg_any , <imm>");
    m_Instructions.insert("bltu reg_any , reg_any , <imm>");
    m_Instructions.insert("bge reg_any , reg_any , <imm>");
    m_Instructions.insert("bgeu reg_any , reg_any , <imm>");
    m_Instructions.insert("lw reg_any , <imm> ( reg_any )");
    m_Instructions.insert("lh reg_any , <imm> ( reg_any )");
    m_Instructions.insert("lhu reg_any , <imm> ( reg_any )");
    m_Instructions.insert("lb reg_any , <imm> ( reg_any )");
    m_Instructions.insert("lbu reg_any , <imm> ( reg_any )");
    m_Instructions.insert("sw reg_any , <imm> ( reg_any )");
    m_Instructions.insert("sh reg_any , <imm> ( reg_any )");
    m_Instructions.insert("sb reg_any , <imm> ( reg_any )");
    m_Instructions.insert("ecall");
    m_Instructions.insert("ebreak");
    m_Instructions.insert("mret");
    m_Instructions.insert("wfi");
    m_Instructions.insert("fence opc_fence_param , opc_fence_param");
    m_Instructions.insert("fence.i");
    m_Instructions.insert("unimp");
    m_Instructions.insert("hackaton_custom_instr_a reg_any , reg_any , reg_any");
    m_Instructions.insert("hackaton_custom_instr_b reg_any , reg_any , reg_any");
    m_Instructions.insert("hackaton_custom_instr_c reg_any , reg_any , reg_any");
    m_Instructions.insert("hackaton_custom_instr_d reg_any , reg_any , reg_any");
    m_Instructions.insert("hackaton_custom_instr_e reg_any , reg_any , reg_any");
    m_Instructions.insert("hackaton_custom_instr_f reg_any , reg_any , reg_any");
    m_Instructions.insert("hackaton_custom_instr_g reg_any , reg_any , reg_any");
    m_Operands["op_csr"].insert("mstatus");
    m_Operands["op_csr"].insert("mie");
    m_Operands["op_csr"].insert("mtvec");
    m_Operands["op_csr"].insert("mcountinhibit");
    m_Operands["op_csr"].insert("mhpmevent3");
    m_Operands["op_csr"].insert("mhpmevent4");
    m_Operands["op_csr"].insert("mhpmevent5");
    m_Operands["op_csr"].insert("mhpmevent6");
    m_Operands["op_csr"].insert("mhpmevent7");
    m_Operands["op_csr"].insert("mhpmevent8");
    m_Operands["op_csr"].insert("mhpmevent9");
    m_Operands["op_csr"].insert("mhpmevent10");
    m_Operands["op_csr"].insert("mhpmevent11");
    m_Operands["op_csr"].insert("mhpmevent12");
    m_Operands["op_csr"].insert("mhpmevent13");
    m_Operands["op_csr"].insert("mhpmevent14");
    m_Operands["op_csr"].insert("mhpmevent15");
    m_Operands["op_csr"].insert("mhpmevent16");
    m_Operands["op_csr"].insert("mhpmevent17");
    m_Operands["op_csr"].insert("mhpmevent18");
    m_Operands["op_csr"].insert("mhpmevent19");
    m_Operands["op_csr"].insert("mhpmevent20");
    m_Operands["op_csr"].insert("mhpmevent21");
    m_Operands["op_csr"].insert("mhpmevent22");
    m_Operands["op_csr"].insert("mhpmevent23");
    m_Operands["op_csr"].insert("mhpmevent24");
    m_Operands["op_csr"].insert("mhpmevent25");
    m_Operands["op_csr"].insert("mhpmevent26");
    m_Operands["op_csr"].insert("mhpmevent27");
    m_Operands["op_csr"].insert("mhpmevent28");
    m_Operands["op_csr"].insert("mhpmevent29");
    m_Operands["op_csr"].insert("mhpmevent30");
    m_Operands["op_csr"].insert("mhpmevent31");
    m_Operands["op_csr"].insert("mscratch");
    m_Operands["op_csr"].insert("mepc");
    m_Operands["op_csr"].insert("mcause");
    m_Operands["op_csr"].insert("mtval");
    m_Operands["op_csr"].insert("mip");
    m_Operands["op_csr"].insert("nmi");
    m_Operands["op_csr"].insert("nmi_mtval");
    m_Operands["op_csr"].insert("mcycle");
    m_Operands["op_csr"].insert("minstret");
    m_Operands["op_csr"].insert("mhpmcounter3");
    m_Operands["op_csr"].insert("mhpmcounter4");
    m_Operands["op_csr"].insert("mhpmcounter5");
    m_Operands["op_csr"].insert("mhpmcounter6");
    m_Operands["op_csr"].insert("mhpmcounter7");
    m_Operands["op_csr"].insert("mhpmcounter8");
    m_Operands["op_csr"].insert("mhpmcounter9");
    m_Operands["op_csr"].insert("mhpmcounter10");
    m_Operands["op_csr"].insert("mhpmcounter11");
    m_Operands["op_csr"].insert("mhpmcounter12");
    m_Operands["op_csr"].insert("mhpmcounter13");
    m_Operands["op_csr"].insert("mhpmcounter14");
    m_Operands["op_csr"].insert("mhpmcounter15");
    m_Operands["op_csr"].insert("mhpmcounter16");
    m_Operands["op_csr"].insert("mhpmcounter17");
    m_Operands["op_csr"].insert("mhpmcounter18");
    m_Operands["op_csr"].insert("mhpmcounter19");
    m_Operands["op_csr"].insert("mhpmcounter20");
    m_Operands["op_csr"].insert("mhpmcounter21");
    m_Operands["op_csr"].insert("mhpmcounter22");
    m_Operands["op_csr"].insert("mhpmcounter23");
    m_Operands["op_csr"].insert("mhpmcounter24");
    m_Operands["op_csr"].insert("mhpmcounter25");
    m_Operands["op_csr"].insert("mhpmcounter26");
    m_Operands["op_csr"].insert("mhpmcounter27");
    m_Operands["op_csr"].insert("mhpmcounter28");
    m_Operands["op_csr"].insert("mhpmcounter29");
    m_Operands["op_csr"].insert("mhpmcounter30");
    m_Operands["op_csr"].insert("mhpmcounter31");
    m_Operands["op_csr"].insert("misa");
    m_Operands["op_csr"].insert("mvendorid");
    m_Operands["op_csr"].insert("marchid");
    m_Operands["op_csr"].insert("mimpid");
    m_Operands["op_csr"].insert("mhartid");
    m_Operands["op_csr"].insert("mcycleh");
    m_Operands["op_csr"].insert("minstreth");
    m_Operands["op_csr"].insert("mhpmcounter3h");
    m_Operands["op_csr"].insert("mhpmcounter4h");
    m_Operands["op_csr"].insert("mhpmcounter5h");
    m_Operands["op_csr"].insert("mhpmcounter6h");
    m_Operands["op_csr"].insert("mhpmcounter7h");
    m_Operands["op_csr"].insert("mhpmcounter8h");
    m_Operands["op_csr"].insert("mhpmcounter9h");
    m_Operands["op_csr"].insert("mhpmcounter10h");
    m_Operands["op_csr"].insert("mhpmcounter11h");
    m_Operands["op_csr"].insert("mhpmcounter12h");
    m_Operands["op_csr"].insert("mhpmcounter13h");
    m_Operands["op_csr"].insert("mhpmcounter14h");
    m_Operands["op_csr"].insert("mhpmcounter15h");
    m_Operands["op_csr"].insert("mhpmcounter16h");
    m_Operands["op_csr"].insert("mhpmcounter17h");
    m_Operands["op_csr"].insert("mhpmcounter18h");
    m_Operands["op_csr"].insert("mhpmcounter19h");
    m_Operands["op_csr"].insert("mhpmcounter20h");
    m_Operands["op_csr"].insert("mhpmcounter21h");
    m_Operands["op_csr"].insert("mhpmcounter22h");
    m_Operands["op_csr"].insert("mhpmcounter23h");
    m_Operands["op_csr"].insert("mhpmcounter24h");
    m_Operands["op_csr"].insert("mhpmcounter25h");
    m_Operands["op_csr"].insert("mhpmcounter26h");
    m_Operands["op_csr"].insert("mhpmcounter27h");
    m_Operands["op_csr"].insert("mhpmcounter28h");
    m_Operands["op_csr"].insert("mhpmcounter29h");
    m_Operands["op_csr"].insert("mhpmcounter30h");
    m_Operands["op_csr"].insert("mhpmcounter31h");
    m_Operands["opc_fence_param"].insert("iorw");
    m_Operands["opc_fence_param"].insert("ior");
    m_Operands["opc_fence_param"].insert("iow");
    m_Operands["opc_fence_param"].insert("io");
    m_Operands["opc_fence_param"].insert("irw");
    m_Operands["opc_fence_param"].insert("ir");
    m_Operands["opc_fence_param"].insert("iw");
    m_Operands["opc_fence_param"].insert("i");
    m_Operands["opc_fence_param"].insert("orw");
    m_Operands["opc_fence_param"].insert("or");
    m_Operands["opc_fence_param"].insert("ow");
    m_Operands["opc_fence_param"].insert("o");
    m_Operands["opc_fence_param"].insert("rw");
    m_Operands["opc_fence_param"].insert("r");
    m_Operands["opc_fence_param"].insert("w");
    m_Operands["opc_fence_param"].insert("hint");
    m_Operands["reg_any"].insert("regs");
    m_Operands["reg_any"].insert("x0");
    m_Operands["regs"].insert("ra");
    m_Operands["regs"].insert("sp");
    m_Operands["regs"].insert("x3");
    m_Operands["regs"].insert("x4");
    m_Operands["regs"].insert("x5");
    m_Operands["regs"].insert("x6");
    m_Operands["regs"].insert("x7");
    m_Operands["regs"].insert("fp");
    m_Operands["regs"].insert("x9");
    m_Operands["regs"].insert("x10");
    m_Operands["regs"].insert("x11");
    m_Operands["regs"].insert("x12");
    m_Operands["regs"].insert("x13");
    m_Operands["regs"].insert("x14");
    m_Operands["regs"].insert("x15");
    m_Operands["regs"].insert("x16");
    m_Operands["regs"].insert("x17");
    m_Operands["regs"].insert("x18");
    m_Operands["regs"].insert("x19");
    m_Operands["regs"].insert("x20");
    m_Operands["regs"].insert("x21");
    m_Operands["regs"].insert("x22");
    m_Operands["regs"].insert("x23");
    m_Operands["regs"].insert("x24");
    m_Operands["regs"].insert("x25");
    m_Operands["regs"].insert("x26");
    m_Operands["regs"].insert("x27");
    m_Operands["regs"].insert("x28");
    m_Operands["regs"].insert("x29");
    m_Operands["regs"].insert("x30");
    m_Operands["regs"].insert("x31");
}
} // namespace MI15codasip_urisc_v
} // namespace profiler
} // namespace codasip
