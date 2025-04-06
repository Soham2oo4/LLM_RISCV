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

/// Accessible CSRs
typedef enum {
  HAL_CSR_MISA,
  HAL_CSR_MVENDORID,
  HAL_CSR_MARCHID,
  HAL_CSR_MSTATUS,
  HAL_CSR_MEPC,
  HAL_CSR_MTVEC,
  HAL_CSR_MTVAL,
  HAL_CSR_NMI,
  HAL_CSR_NMI_MTVAL,
} hal_csr_id;

/**
 * \brief Return value of a selected CSR
 * \param csr CSR index
 * \return Value of CSR
 */
xlen_t hal_csr_get(const hal_csr_id csr);

/**
 * \brief Set value of a selected CSR
 * \param csr CSR index
 * \param value Value
 */
void hal_csr_set(const hal_csr_id csr, const xlen_t value);

/**
 * \brief Get a bit in CSR
 * \param csr CSR index
 * \param bit Bit index
 * \return Bit value
 */
xlen_t hal_csr_get_bit(const hal_csr_id csr, const xlen_t bit);

/**
 * \brief Set a bit in CSR
 * \param csr CSR index
 * \param bit Bit index
 * \param value Value
 */
void hal_csr_set_bit(const hal_csr_id csr, const xlen_t bit, const xlen_t value);
