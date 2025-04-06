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
#include "interrupt.h"
#include "csr.h"

// interrupt sources
typedef enum {
#if OPTION_XLEN == 32
  HAL_PIC_M_SOFTWARE = 0x80000003,
  HAL_PIC_M_TIMER    = 0x80000007,
  HAL_PIC_M_EXTERNAL = 0x8000000b,
  HAL_PIC_NMI        = 0x80000010
#else
  HAL_PIC_M_SOFTWARE = 0x8000000000000003,
  HAL_PIC_M_TIMER    = 0x8000000000000007,
  HAL_PIC_M_EXTERNAL = 0x800000000000000b,
  HAL_PIC_NMI        = 0x8000000000000010
#endif
} hal_pic_source;

void hal_interrupt_enable()
{
    __asm__("csrsi mstatus, 8");
}

void hal_interrupt_disable()
{
    __asm__("csrci mstatus, 8");
}

void hal_interrupt_enable_source(const hal_interrupt_source index)
{
    __asm__("csrs mie, %0" : : "r"(index));
}

void hal_interrupt_disable_source(const hal_interrupt_source index)
{
    __asm__("csrc mie, %0" : : "r"(index));
}

int hal_interrupt_pending(const hal_interrupt_source index)
{
    xlen_t pending;
    if (index == HAL_INTERRUPT_NMI)
    {
        __asm__("csrr %0, nmi" : "=r"(pending));
        return pending != 0;
    }
    else
    {
        __asm__("csrr %0, mip" : "=r"(pending));
        return (pending & index) != 0;
    }
}

hal_interrupt_source hal_interrupt_get_source()
{
    xlen_t cause;

    __asm__("csrr %0, mcause" : "=r"(cause));

    switch (cause)
    {
        case HAL_PIC_M_SOFTWARE:
            return HAL_INTERRUPT_MSIP;
        case HAL_PIC_M_TIMER:
            return HAL_INTERRUPT_MTIP;
        case HAL_PIC_M_EXTERNAL:
            return HAL_INTERRUPT_MEIP;
        case HAL_PIC_NMI:
            return HAL_INTERRUPT_NMI;
        default:
            return 0;
    }
}

hal_interrupt_mtvec_mode hal_interrupt_mtvec_get_mode()
{
    return (hal_csr_get(HAL_CSR_MTVEC) & (xlen_t)0x1) == 0
        ? HAL_INTERRUPT_MTVEC_DIRECT : HAL_INTERRUPT_MTVEC_VECTOR;
}

void hal_interrupt_mtvec_set_mode(const hal_interrupt_mtvec_mode mode)
{
    if (mode == HAL_INTERRUPT_MTVEC_DIRECT)
    {
        hal_csr_set_bit(HAL_CSR_MTVEC, 0, 0);
    }
    else if (mode == HAL_INTERRUPT_MTVEC_VECTOR)
    {
        hal_csr_set_bit(HAL_CSR_MTVEC, 0, 1);
    }
}

hal_interrupt_mtvec_address hal_interrupt_mtvec_get_address()
{
    return (hal_interrupt_mtvec_address)(hal_csr_get(HAL_CSR_MTVEC) & ~(xlen_t)0x3);
}

void hal_interrupt_mtvec_set_address(hal_interrupt_mtvec_address address)
{
    const xlen_t mode = hal_csr_get_bit(HAL_CSR_MTVEC, 0);
    hal_csr_set(HAL_CSR_MTVEC, ((xlen_t)address & ~(xlen_t)0x3) | mode);
}
