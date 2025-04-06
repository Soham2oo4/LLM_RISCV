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

/// Sources of the interrupts
typedef enum
{
  // NMI
  HAL_INTERRUPT_NMI  = 0x0,
  // Software interrupt
  HAL_INTERRUPT_MSIP = 0x8,
  // Timer interrupt
  HAL_INTERRUPT_MTIP = 0x80,
  // External interrupt
  HAL_INTERRUPT_MEIP = 0x800
} hal_interrupt_source;

/// Mode of the mtvec address handling
typedef enum
{
  // direct mode
  HAL_INTERRUPT_MTVEC_DIRECT,
  // vector mode
  HAL_INTERRUPT_MTVEC_VECTOR
} hal_interrupt_mtvec_mode;

/// Interrupt handler address stored in the mtvec
typedef void (*hal_interrupt_mtvec_address)(void);

/**
 * \brief Enable all interrupts
 */
void hal_interrupt_enable();

/**
 * \brief Disable all interrupts
 */
void hal_interrupt_disable();

/**
 * \brief Enable one source of the interrupt
 * \param source Source of the interrupt
 */
void hal_interrupt_enable_source(const hal_interrupt_source source);

/**
 * \brief Disable one source of the interrupt
 * \param source Source of the interrupt
 */
void hal_interrupt_disable_source(const hal_interrupt_source index);

/**
 * \brief Returns non-zero if the interrupt source is pending
 * \param source Source of the interrupt
 */
int hal_interrupt_pending(const hal_interrupt_source index);

/**
 * \brief Return source of the asserted interrupt
 * \return Interrupt source
 */
hal_interrupt_source hal_interrupt_get_source();

/**
 * \brief Get mode of mtvec address handling
 * \return mode
 */
hal_interrupt_mtvec_mode hal_interrupt_mtvec_get_mode();

/**
 * \brief Set mode of mtvec address handling
 * \param mode Mode
 */
void hal_interrupt_mtvec_set_mode(const hal_interrupt_mtvec_mode);

/**
 * \brief Return the address of the trap handler
 * \return Address of the trap handler
 */
hal_interrupt_mtvec_address hal_interrupt_mtvec_get_address();

/**
 * \brief Set the address of the trap handler
 * \param address Address of the trap handler
 */
void hal_interrupt_mtvec_set_address(hal_interrupt_mtvec_address adddress);
