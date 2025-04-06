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
 * \return Size of I cache
 */
xlen_t hal_l1_i_get_size();

/**
 * \brief Get number of ways of I cache
 * \return Number of ways of I cache
 */
xlen_t hal_l1_i_get_way();

/**
 * \brief Get line size of I cache
 * \return Line size of I cache
 */
xlen_t hal_l1_i_get_line();

/**
 * \brief Return number of hits of I cache
 * \return Number of hits of I cache
 */
xlen_t hal_l1_i_get_hits();

/**
 * \brief Return number of miss of I cache
 * \return Number of miss of I cache
 */
xlen_t hal_l1_i_get_miss();

/**
 * \brief Return number errors of I cache
 * \return Number errors of I cache
 */
xlen_t hal_l1_i_get_errors();

/**
 * \brief Invalidate instructions in L1 cache based on the address
 * \param address Address to invalidate
 */
void hal_l1_i_invalidate_address(const xlen_t address);

/**
 * \brief Invalidate instructions in L1 cache based on the line index
 * \param index Index of line to invalidate
 */
void hal_l1_i_invalidate_line(const xlen_t index);

/**
 * \brief Invalidate all instructions in L1 cache
 */
void hal_l1_i_invalidate_all();

#endif // OPTION_ENABLE_CACHES

#ifdef __cplusplus
}
#endif
