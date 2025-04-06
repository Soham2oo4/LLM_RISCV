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
#include "dcache.h"

#ifdef OPTION_ENABLE_CACHES

enum info_item {
    CACHE_SIZE = 5,
    NUM_WAYS   = 6,
    LINE_SIZE  = 7
};

enum counter_item {
    CACHE_HITS   = 2,
    CACHE_MISS   = 3,
    CACHE_ERRORS = 5
};

enum settings_item {
    CACHE_POLICY = 0
};

enum operation_item {
    INVALIDATE_ADDRESS = 3,
    INVALIDATE_LINE    = 4,
    INVALIDATE_ALL     = 5,
    FLUSH_ADDRESS      = 6,
    FLUSH_LINE         = 7,
    FLUSH_ALL          = 8
};

xlen_t hal_l1_d_get_size()
{
    volatile xlen_t *addr = HAL_COMPUTE_REGISTER_ADDRESS(hal_l1_get_info_address(), CACHE_SIZE);
    return *addr;
}

xlen_t hal_l1_d_get_way()
{
    volatile xlen_t *addr = HAL_COMPUTE_REGISTER_ADDRESS(hal_l1_get_info_address(), NUM_WAYS);
    return *addr;
}

xlen_t hal_l1_d_get_line()
{
    volatile xlen_t *addr = HAL_COMPUTE_REGISTER_ADDRESS(hal_l1_get_info_address(), LINE_SIZE);
    return *addr;
}

xlen_t hal_l1_d_get_hits()
{
    volatile xlen_t *addr = HAL_COMPUTE_REGISTER_ADDRESS(hal_l1_get_counters_address(), CACHE_HITS);
    return *addr;
}

xlen_t hal_l1_d_get_miss()
{
    volatile xlen_t *addr = HAL_COMPUTE_REGISTER_ADDRESS(hal_l1_get_counters_address(), CACHE_MISS);
    return *addr;
}

xlen_t hal_l1_d_get_errors()
{
    volatile xlen_t *addr = HAL_COMPUTE_REGISTER_ADDRESS(hal_l1_get_counters_address(), CACHE_ERRORS);
    return *addr;
}

void hal_l1_d_set_policy(const hal_l1_d_policy policy)
{
    volatile xlen_t *addr = HAL_COMPUTE_REGISTER_ADDRESS(hal_l1_get_settings_address(), CACHE_POLICY);
    *addr = policy;
}

void hal_l1_d_invalidate_address(const xlen_t address)
{
    volatile xlen_t *addr = HAL_COMPUTE_REGISTER_ADDRESS(hal_l1_get_operations_address(), INVALIDATE_ADDRESS);
    *addr = address;
}

void hal_l1_d_invalidate_line(const xlen_t index)
{
    volatile xlen_t *addr = HAL_COMPUTE_REGISTER_ADDRESS(hal_l1_get_operations_address(), INVALIDATE_LINE);
    *addr = index;
}

void hal_l1_d_invalidate_all()
{
    volatile xlen_t *addr = HAL_COMPUTE_REGISTER_ADDRESS(hal_l1_get_operations_address(), INVALIDATE_ALL);
    *addr = 0;
}

void hal_l1_d_flush_address(const xlen_t address)
{
    volatile xlen_t *addr = HAL_COMPUTE_REGISTER_ADDRESS(hal_l1_get_operations_address(), FLUSH_ADDRESS);
    *addr = address;
}

void hal_l1_d_flush_line(const xlen_t index)
{
    volatile xlen_t *addr = HAL_COMPUTE_REGISTER_ADDRESS(hal_l1_get_operations_address(), FLUSH_LINE);
    *addr = index;
}

void hal_l1_d_flush_all()
{
    volatile xlen_t *addr = HAL_COMPUTE_REGISTER_ADDRESS(hal_l1_get_operations_address(), FLUSH_ALL);
    *addr = 0;
}

#endif // OPTION_ENABLE_CACHES
