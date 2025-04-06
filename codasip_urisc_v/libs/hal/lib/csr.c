/**
 * Codasip s.r.o.
 *
 * CONFIDENTIAL
 *
 * Copyright 2022 Codasip s.r.o.
 *
 * All Rights Reserved.
 *
 * NOTICE: All information contained in this file, is and shall remain the property of
 * Codasip s.r.o. and its suppliers, if any.
 *
 * The intellectual and technical concepts contained herein are confidential and proprietary to
 * Codasip s.r.o. and are protected by trade secret and copyright law.  In addition, elements of the
 * technical concepts may be patent pending.
 *
 * This file is part of the Codasip Studio product. No part of the Studio product, including this
 * file, may be use, copied, modified, or distributed except in accordance with the terms contained
 * in Codasip license agreement under which you obtained this file.
 */

#include "common.h"
#include "csr.h"

#define CSR_SET_BITS(csr, bits)   __asm__("csrs " #csr ", %0" : : "r"(bits))
#define CSR_CLEAR_BITS(csr, bits) __asm__("csrc " #csr ", %0" : : "r"(bits))
#define CSR_SET_VAL(csr, bits)    __asm__("csrw " #csr ", %0" : : "r"(value))
#define CSR_GET_VAL(csr, bits)    __asm__("csrr %0, " #csr : "=r"(value));

static void hal_csr_set_bits(const hal_csr_id csr, xlen_t bits)
{
    switch (csr)
    {
        case HAL_CSR_MISA:
            CSR_SET_BITS(misa, bits);
            break;
        case HAL_CSR_MVENDORID:
            CSR_SET_BITS(mvendorid, bits);
            break;
        case HAL_CSR_MARCHID:
            CSR_SET_BITS(marchid, bits);
            break;
        case HAL_CSR_MSTATUS:
            CSR_SET_BITS(mstatus, bits);
            break;
        case HAL_CSR_MEPC:
            CSR_SET_BITS(mepc, bits);
            break;
        case HAL_CSR_MTVEC:
            CSR_SET_BITS(mtvec, bits);
            break;
        case HAL_CSR_MTVAL:
            CSR_SET_BITS(mtval, bits);
            break;
        case HAL_CSR_NMI:
            CSR_SET_BITS(nmi, bits);
            break;
        case HAL_CSR_NMI_MTVAL:
            CSR_SET_BITS(nmi_mtval, bits);
            break;
        default:
            break;
    }
}

static void hal_csr_clear_bits(const hal_csr_id csr, xlen_t bits)
{
    switch (csr)
    {
        case HAL_CSR_MISA:
            CSR_CLEAR_BITS(misa, bits);
            break;
        case HAL_CSR_MVENDORID:
            CSR_CLEAR_BITS(mvendorid, bits);
            break;
        case HAL_CSR_MARCHID:
            CSR_CLEAR_BITS(marchid, bits);
            break;
        case HAL_CSR_MSTATUS:
            CSR_CLEAR_BITS(mstatus, bits);
            break;
        case HAL_CSR_MEPC:
            CSR_CLEAR_BITS(mepc, bits);
            break;
        case HAL_CSR_MTVEC:
            CSR_CLEAR_BITS(mtvec, bits);
            break;
        case HAL_CSR_MTVAL:
            CSR_CLEAR_BITS(mtval, bits);
            break;
        case HAL_CSR_NMI:
            CSR_CLEAR_BITS(nmi, bits);
            break;
        case HAL_CSR_NMI_MTVAL:
            CSR_CLEAR_BITS(nmi_mtval, bits);
            break;
        default:
            break;
    }
}

xlen_t hal_csr_get(const hal_csr_id csr)
{
    xlen_t value;

    switch (csr)
    {
        case HAL_CSR_MISA:
            CSR_GET_VAL(misa, value);
            break;
        case HAL_CSR_MVENDORID:
            CSR_GET_VAL(mvendorid, value);
            break;
        case HAL_CSR_MARCHID:
            CSR_GET_VAL(marchid, value);
            break;
        case HAL_CSR_MSTATUS:
            CSR_GET_VAL(mstatus, value);
            break;
        case HAL_CSR_MEPC:
            CSR_GET_VAL(mepc, value);
            break;
        case HAL_CSR_MTVEC:
            CSR_GET_VAL(mtvec, value);
            break;
        case HAL_CSR_MTVAL:
            CSR_GET_VAL(mtval, value);
            break;
        case HAL_CSR_NMI:
            CSR_GET_VAL(nmi, value);
            break;
        case HAL_CSR_NMI_MTVAL:
            CSR_GET_VAL(nmi_mtval, value);
            break;
        default:
            value = 0;
            break;
    }

    return value;
}

void hal_csr_set(const hal_csr_id csr, xlen_t value)
{
    switch (csr)
    {
        case HAL_CSR_MISA:
            CSR_SET_VAL(misa, value);
            break;
        case HAL_CSR_MVENDORID:
            CSR_SET_VAL(mvendorid, value);
            break;
        case HAL_CSR_MARCHID:
            CSR_SET_VAL(marchid, value);
            break;
        case HAL_CSR_MSTATUS:
            CSR_SET_VAL(mstatus, value);
            break;
        case HAL_CSR_MEPC:
            CSR_SET_VAL(mepc, value);
            break;
        case HAL_CSR_MTVEC:
            CSR_SET_VAL(mtvec, value);
            break;
        case HAL_CSR_MTVAL:
            CSR_SET_VAL(mtval, value);
            break;
        case HAL_CSR_NMI:
            CSR_SET_VAL(nmi, value);
            break;
        case HAL_CSR_NMI_MTVAL:
            CSR_SET_VAL(nmi_mtval, value);
            break;
        default:
            break;
    }
}

xlen_t hal_csr_get_bit(const hal_csr_id csr, const xlen_t bit)
{
    return (hal_csr_get(csr) >> bit) & 1;
}

void hal_csr_set_bit(const hal_csr_id csr, const xlen_t bit, const xlen_t value)
{
    if (value == 0)
        hal_csr_clear_bits(csr, 1 << bit);
    else if (value == 1)
        hal_csr_set_bits(csr, 1 << bit);
}
