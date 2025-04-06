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

#ifdef OPTION_ENABLE_CACHES

/**
 * \brief Get size of I cache
 * \return Size of D cache
 */
xlen_t hal_l1_d_get_size();

/**
 * \brief Get number of ways of I cache
 * \return Number of ways of D cache
 */
xlen_t hal_l1_d_get_way();

/**
 * \brief Get line size of D cache
 * \return Line size of D cache
 */
xlen_t hal_l1_d_get_line();

/**
 * \brief Return number of hits of D cache
 * \return Number of hits of D cache
 */
xlen_t hal_l1_d_get_hits();

/**
 * \brief Return number of miss of D cache
 * \return Number of miss of D cache
 */
xlen_t hal_l1_d_get_miss();

/**
 * \brief Return number errors of D cache
 * \return Number errors of D cache
 */
xlen_t hal_l1_d_get_errors();

/// Policy settings
typedef enum {
  HAL_L1_D_WRITE_BACK = 0,
  HAL_L1_D_WRITE_THROUGH = 1
} hal_l1_d_policy;

/**
 * \brief Write-through settings
 * \param policy 0 is write-back, 1 is write-through
 */
void hal_l1_d_set_policy(const hal_l1_d_policy policy);

/**
 * \brief Invalidate data in L1 cache based on the address
 * \param address Address to invalidate
 */
void hal_l1_d_invalidate_address(const xlen_t address);

/**
 * \brief Invalidate data in L1 cache based on the line index
 * \param index Index of line to invalidate
 */
void hal_l1_d_invalidate_line(const xlen_t index);

/**
 * \brief Invalidate all data in L1 cache
 */
void hal_l1_d_invalidate_all();

/**
 * \brief Flush data in L1 cache based on the address
 * \param address Address to flush
 */
void hal_l1_d_flush_address(const xlen_t address);

/**
 * \brief Flush data in L1 cache based on the line index
 * \param index Index of line to flush
 */
void hal_l1_d_flush_line(const xlen_t index);

/**
 * \brief Flush all data in L1 cache
 */
void hal_l1_d_flush_all();

#endif // OPTION_ENABLE_CACHES

#ifdef __cplusplus
}
#endif
