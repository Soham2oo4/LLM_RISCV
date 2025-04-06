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

#pragma once

#include "common.h"

#ifdef __cplusplus
extern "C" {
#endif

#if defined(OPTION_ENABLE_CACHES)

/// Types of L1 cache
typedef enum {
  HAL_L1_NONE = 0,
  HAL_L1_D = 1,
  HAL_L1_I = 2,
  HAL_L1_ID = 3
} hal_l1_type_t;

/// Non-cacheable regions
typedef enum {
  HAL_L1_SEGMENT_0 = 1,
  HAL_L1_SEGMENT_1 = 2,
  HAL_L1_SEGMENT_2 = 4,
  HAL_L1_SEGMENT_3 = 8,
  HAL_L1_SEGMENT_4 = 16,
  HAL_L1_SEGMENT_5 = 32,
  HAL_L1_SEGMENT_6 = 64,
  HAL_L1_SEGMENT_7 = 128
} hal_l1_segment_mask;

/**
 * \brief Sets the base address, the call is optional, because the hal library has pre-compiled base
 * \param base The base address to be set
 */
void hal_l1_set_base_address(const xlen_t base);

/**
 * \brief Get the base address of the cache
 * \return Base address of the cache
 */
xlen_t hal_l1_get_base_address();

/**
 * \brief Get the type of cache
 * \return Cache type
 */
hal_l1_type_t hal_l1_get_type();

/**
 * \brief Get version of cache
 * \return Cache version
 */
xlen_t hal_l1_get_version();

/**
 * \brief Enable/disable noncacheable segments of memory
 * \param mask The segments to set as noncacheable
 */
void hal_l1_set_non_cacheable_mask(const hal_l1_segment_mask mask);

/**
 * \brief Set noncacheable regions of memory
 * \param start Start address of the noncacheable region
 * \param end End address of the noncacheable region
 */
void hal_l1_set_non_cacheable_0(const xlen_t start, const xlen_t end);
void hal_l1_set_non_cacheable_1(const xlen_t start, const xlen_t end);
void hal_l1_set_non_cacheable_2(const xlen_t start, const xlen_t end);
void hal_l1_set_non_cacheable_3(const xlen_t start, const xlen_t end);
void hal_l1_set_non_cacheable_4(const xlen_t start, const xlen_t end);
void hal_l1_set_non_cacheable_5(const xlen_t start, const xlen_t end);
void hal_l1_set_non_cacheable_6(const xlen_t start, const xlen_t end);
void hal_l1_set_non_cacheable_7(const xlen_t start, const xlen_t end);

/**
 * \brief Clear counters
 */
void hal_l1_clear_counters();

/// internal functions and macros

/**
 * \brief Get address of info registers
 * \return Address of info registers
 */
xlen_t hal_l1_get_info_address();

/**
 * \brief Get address of counters
 * \return Address of counters
 */
xlen_t hal_l1_get_counters_address();

/**
 * \brief Get address of settings registers
 * \return Address of settings registers
 */
xlen_t hal_l1_get_settings_address();

/**
 * \brief Get address of operations registers
 * \return Address of operations registers
 */
xlen_t hal_l1_get_operations_address();

/**
 * \brief Get address of clearing registers
 * \return Address of clearing registers
 */
xlen_t hal_l1_get_clearing_address();

/// Compute register address given its base address and offset
#define HAL_COMPUTE_REGISTER_ADDRESS(base, offset) ((xlen_t *)((base) + ((offset) * HAL_WORD_SIZE)))

#endif // OPTION_ENABLE_CACHES

#ifdef __cplusplus
}
#endif
