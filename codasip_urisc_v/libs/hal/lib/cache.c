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
#include "cache.h"

#if defined(OPTION_ENABLE_CACHES)

static xlen_t g_l1_base_address = OPTION_CACHE_REGS_BASE;

enum info_item {
    CACHE_TYPE    = 0,
    CACHE_VERSION = 1
};

enum settings_item {
    NONCACHEABLE_MASK   = 2,
    NONCACHEABLE0_START = 3,
    NONCACHEABLE0_END   = 4,
    NONCACHEABLE1_START = 5,
    NONCACHEABLE1_END   = 6,
    NONCACHEABLE2_START = 7,
    NONCACHEABLE2_END   = 8,
    NONCACHEABLE3_START = 9,
    NONCACHEABLE3_END   = 10,
    NONCACHEABLE4_START = 11,
    NONCACHEABLE4_END   = 12,
    NONCACHEABLE5_START = 13,
    NONCACHEABLE5_END   = 14,
    NONCACHEABLE6_START = 15,
    NONCACHEABLE6_END   = 16,
    NONCACHEABLE7_START = 17,
    NONCACHEABLE7_END   = 18
};

enum clearing_item {
    CLEAR_COUNTERS = 0
};

void hal_l1_set_base_address(const xlen_t base)
{
}

xlen_t hal_l1_get_base_address()
{
    return g_l1_base_address;
}

hal_l1_type_t hal_l1_get_type()
{
    volatile xlen_t *addr = HAL_COMPUTE_REGISTER_ADDRESS(hal_l1_get_info_address(), CACHE_TYPE);
    return (hal_l1_type_t)*addr;
}

xlen_t hal_l1_get_version()
{
    volatile xlen_t *addr = HAL_COMPUTE_REGISTER_ADDRESS(hal_l1_get_info_address(), CACHE_VERSION);
    return *addr;
}

static xlen_t hal_l1_get_info_offset()
{
    return 0x0;
}

xlen_t hal_l1_get_info_address()
{
    return hal_l1_get_base_address() + hal_l1_get_info_offset();
}

static xlen_t hal_l1_get_counters_offset()
{
    return 0x20 * HAL_WORD_SIZE;
}

xlen_t hal_l1_get_counters_address()
{
    return hal_l1_get_base_address() + hal_l1_get_counters_offset();
}

static xlen_t hal_l1_get_settings_offset()
{
    return 0x30 * HAL_WORD_SIZE;
}

xlen_t hal_l1_get_settings_address()
{
    return hal_l1_get_base_address() + hal_l1_get_settings_offset();
}

static xlen_t hal_l1_get_operations_offset()
{
    return 0x50 * HAL_WORD_SIZE;
}

xlen_t hal_l1_get_operations_address()
{
    return hal_l1_get_base_address() + hal_l1_get_operations_offset();
}

static xlen_t hal_l1_get_clearing_offset()
{
    return 0x70 * HAL_WORD_SIZE;
}

xlen_t hal_l1_get_clearing_address()
{
    return hal_l1_get_base_address() + hal_l1_get_clearing_offset();
}

void hal_l1_set_non_cacheable_mask(const hal_l1_segment_mask mask)
{
    volatile xlen_t *addr = HAL_COMPUTE_REGISTER_ADDRESS(hal_l1_get_settings_address(), NONCACHEABLE_MASK);
    *addr = (unsigned char)mask;
}

void hal_l1_set_non_cacheable_0(const xlen_t start, const xlen_t end)
{
    volatile xlen_t *start_addr = HAL_COMPUTE_REGISTER_ADDRESS(hal_l1_get_settings_address(), NONCACHEABLE0_START);
    volatile xlen_t *end_addr = HAL_COMPUTE_REGISTER_ADDRESS(hal_l1_get_settings_address(), NONCACHEABLE0_END);
    *start_addr = start;
    *end_addr = end;
}

void hal_l1_set_non_cacheable_1(const xlen_t start, const xlen_t end)
{
    volatile xlen_t *start_addr = HAL_COMPUTE_REGISTER_ADDRESS(hal_l1_get_settings_address(), NONCACHEABLE1_START);
    volatile xlen_t *end_addr = HAL_COMPUTE_REGISTER_ADDRESS(hal_l1_get_settings_address(), NONCACHEABLE1_END);
    *start_addr = start;
    *end_addr = end;
}

void hal_l1_set_non_cacheable_2(const xlen_t start, const xlen_t end)
{
    volatile xlen_t *start_addr = HAL_COMPUTE_REGISTER_ADDRESS(hal_l1_get_settings_address(), NONCACHEABLE2_START);
    volatile xlen_t *end_addr = HAL_COMPUTE_REGISTER_ADDRESS(hal_l1_get_settings_address(), NONCACHEABLE2_END);
    *start_addr = start;
    *end_addr = end;
}

void hal_l1_set_non_cacheable_3(const xlen_t start, const xlen_t end)
{
    volatile xlen_t *start_addr = HAL_COMPUTE_REGISTER_ADDRESS(hal_l1_get_settings_address(), NONCACHEABLE3_START);
    volatile xlen_t *end_addr = HAL_COMPUTE_REGISTER_ADDRESS(hal_l1_get_settings_address(), NONCACHEABLE3_END);
    *start_addr = start;
    *end_addr = end;
}

void hal_l1_set_non_cacheable_4(const xlen_t start, const xlen_t end)
{
    volatile xlen_t *start_addr = HAL_COMPUTE_REGISTER_ADDRESS(hal_l1_get_settings_address(), NONCACHEABLE4_START);
    volatile xlen_t *end_addr = HAL_COMPUTE_REGISTER_ADDRESS(hal_l1_get_settings_address(), NONCACHEABLE4_END);
    *start_addr = start;
    *end_addr = end;
}

void hal_l1_set_non_cacheable_5(const xlen_t start, const xlen_t end)
{
    volatile xlen_t *start_addr = HAL_COMPUTE_REGISTER_ADDRESS(hal_l1_get_settings_address(), NONCACHEABLE5_START);
    volatile xlen_t *end_addr = HAL_COMPUTE_REGISTER_ADDRESS(hal_l1_get_settings_address(), NONCACHEABLE5_END);
    *start_addr = start;
    *end_addr = end;
}

void hal_l1_set_non_cacheable_6(const xlen_t start, const xlen_t end)
{
    volatile xlen_t *start_addr = HAL_COMPUTE_REGISTER_ADDRESS(hal_l1_get_settings_address(), NONCACHEABLE6_START);
    volatile xlen_t *end_addr = HAL_COMPUTE_REGISTER_ADDRESS(hal_l1_get_settings_address(), NONCACHEABLE6_END);
    *start_addr = start;
    *end_addr = end;
}

void hal_l1_set_non_cacheable_7(const xlen_t start, const xlen_t end)
{
    volatile xlen_t *start_addr = HAL_COMPUTE_REGISTER_ADDRESS(hal_l1_get_settings_address(), NONCACHEABLE7_START);
    volatile xlen_t *end_addr = HAL_COMPUTE_REGISTER_ADDRESS(hal_l1_get_settings_address(), NONCACHEABLE7_END);
    *start_addr = start;
    *end_addr = end;
}

void hal_l1_clear_counters()
{
    volatile xlen_t *addr = HAL_COMPUTE_REGISTER_ADDRESS(hal_l1_get_clearing_address(), CLEAR_COUNTERS);
    *addr = 0;
}

#endif // OPTION_ENABLE_CACHES
