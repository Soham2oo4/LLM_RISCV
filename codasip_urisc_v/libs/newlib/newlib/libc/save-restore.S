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
 *
 */

 /**
 * This file implements routines for saving and restoring registers.
 * Used when the application is compiled with -msave-restore to improve code size.
 */

#define FUNC_TYPE(X)  .type X,@function
#define FUNC_SIZE(X)  .size X,.-X

#define FUNC_BEGIN(X)   \
  .globl X;             \
  FUNC_TYPE (X);        \
X:

#define FUNC_END(X)     \
  FUNC_SIZE(X)

#define FUNC_ALIAS(X,Y)   \
  .globl X;               \
  X = Y

#if OPTION_XLEN == 32
#define LD lw
#define ST sw
#define OFF 4
#elif OPTION_XLEN == 64
#define LD ld
#define ST sd
#define OFF 8
#else
#error Unsupported architecture (only XLEN with 32 and 64 is supported)
#endif

#define RETURN jr x5
#define ADDSP(off) add sp, sp, off
#define ANDSP(val) and sp, sp, val
#define ADDSP_REG(reg) add sp, sp, reg
#define STORE_INT_REG(reg, off) ST reg, off(sp)
#define LOAD_INT_REG(reg, off) LD reg, off(sp)
#define JUMP(label) j label
#define LI(reg, val) add reg, x0, val

.text

FUNC_BEGIN(__codasip_libcs_save_rf_gpr_27)
  ADDSP(-OFF)
  STORE_INT_REG(x27, 0)
FUNC_BEGIN(__codasip_libcs_save_rf_gpr_26)
  ADDSP(-OFF)
  STORE_INT_REG(x26, 0)
FUNC_BEGIN(__codasip_libcs_save_rf_gpr_25)
  ADDSP(-OFF)
  STORE_INT_REG(x25, 0)
FUNC_BEGIN(__codasip_libcs_save_rf_gpr_24)
  ADDSP(-OFF)
  STORE_INT_REG(x24, 0)
FUNC_BEGIN(__codasip_libcs_save_rf_gpr_23)
  ADDSP(-OFF)
  STORE_INT_REG(x23, 0)
FUNC_BEGIN(__codasip_libcs_save_rf_gpr_22)
  ADDSP(-OFF)
  STORE_INT_REG(x22, 0)
FUNC_BEGIN(__codasip_libcs_save_rf_gpr_21)
  ADDSP(-OFF)
  STORE_INT_REG(x21, 0)
FUNC_BEGIN(__codasip_libcs_save_rf_gpr_20)
  ADDSP(-OFF)
  STORE_INT_REG(x20, 0)
FUNC_BEGIN(__codasip_libcs_save_rf_gpr_19)
  ADDSP(-OFF)
  STORE_INT_REG(x19, 0)
FUNC_BEGIN(__codasip_libcs_save_rf_gpr_18)
  ADDSP(-OFF)
  STORE_INT_REG(x18, 0)
FUNC_BEGIN(__codasip_libcs_save_rf_gpr_9)
  ADDSP(-OFF)
  STORE_INT_REG(x9,  0)
FUNC_BEGIN(__codasip_libcs_save_BPs)
  ADDSP(2*-OFF)
  STORE_INT_REG(x8,  OFF)
  STORE_INT_REG(ra,  0)
  RETURN
FUNC_END(__codasip_libcs_save_BPs)
FUNC_END(__codasip_libcs_save_rf_gpr_9)
FUNC_END(__codasip_libcs_save_rf_gpr_18)
FUNC_END(__codasip_libcs_save_rf_gpr_19)
FUNC_END(__codasip_libcs_save_rf_gpr_20)
FUNC_END(__codasip_libcs_save_rf_gpr_21)
FUNC_END(__codasip_libcs_save_rf_gpr_22)
FUNC_END(__codasip_libcs_save_rf_gpr_23)
FUNC_END(__codasip_libcs_save_rf_gpr_24)
FUNC_END(__codasip_libcs_save_rf_gpr_25)
FUNC_END(__codasip_libcs_save_rf_gpr_26)
FUNC_END(__codasip_libcs_save_rf_gpr_27)

//---------------------------------------------------------

// note: store (in x7) the same (aligned) number which was used to load the top register

FUNC_BEGIN(__codasip_libcs_restore_rf_gpr_27)
  LI(x7, 13*OFF)
.L17:
  LOAD_INT_REG(x27, 12*OFF)
  JUMP(.L18)
FUNC_BEGIN(__codasip_libcs_restore_rf_gpr_26)
  LI(x7, 12*OFF)
.L18:
  LOAD_INT_REG(x26, 11*OFF)
  JUMP(.L19)
FUNC_BEGIN(__codasip_libcs_restore_rf_gpr_25)
  LI(x7, 11*OFF)
.L19:
  LOAD_INT_REG(x25, 10*OFF)
  JUMP(.L20)
FUNC_BEGIN(__codasip_libcs_restore_rf_gpr_24)
  LI(x7, 10*OFF)
.L20:
  LOAD_INT_REG(x24, 9*OFF)
  JUMP(.L21)
FUNC_BEGIN(__codasip_libcs_restore_rf_gpr_23)
  LI(x7, 9*OFF)
.L21:
  LOAD_INT_REG(x23, 8*OFF)
  JUMP(.L22)
FUNC_BEGIN(__codasip_libcs_restore_rf_gpr_22)
  LI(x7, 8*OFF)
.L22:
  LOAD_INT_REG(x22, 7*OFF)
  JUMP(.L23)
FUNC_BEGIN(__codasip_libcs_restore_rf_gpr_21)
  LI(x7, 7*OFF)
.L23:
  LOAD_INT_REG(x21, 6*OFF)
  JUMP(.L24)
FUNC_BEGIN(__codasip_libcs_restore_rf_gpr_20)
  LI(x7, 6*OFF)
.L24:
  LOAD_INT_REG(x20, 5*OFF)
  JUMP(.L25)
FUNC_BEGIN(__codasip_libcs_restore_rf_gpr_19)
  LI(x7, 5*OFF)
.L25:
  LOAD_INT_REG(x19, 4*OFF)
  JUMP(.L26)
FUNC_BEGIN(__codasip_libcs_restore_rf_gpr_18)
  LI(x7, 4*OFF)
.L26:
  LOAD_INT_REG(x18, 3*OFF)
  JUMP(.L27)
FUNC_BEGIN(__codasip_libcs_restore_rf_gpr_9)
  LI(x7, 3*OFF)
.L27:
  LOAD_INT_REG(x9, 2*OFF)
  JUMP(.LBP)
FUNC_BEGIN(__codasip_libcs_restore_BPs)
  LI(x7, 2*OFF)
.LBP:
  LOAD_INT_REG(x8, 1*OFF)
  LOAD_INT_REG(ra, 0*OFF)
  ADDSP_REG(x7)
  RETURN
FUNC_END(__codasip_libcs_restore_BPs)
FUNC_END(__codasip_libcs_restore_rf_gpr_9)
FUNC_END(__codasip_libcs_restore_rf_gpr_18)
FUNC_END(__codasip_libcs_restore_rf_gpr_19)
FUNC_END(__codasip_libcs_restore_rf_gpr_20)
FUNC_END(__codasip_libcs_restore_rf_gpr_21)
FUNC_END(__codasip_libcs_restore_rf_gpr_22)
FUNC_END(__codasip_libcs_restore_rf_gpr_23)
FUNC_END(__codasip_libcs_restore_rf_gpr_24)
FUNC_END(__codasip_libcs_restore_rf_gpr_25)
FUNC_END(__codasip_libcs_restore_rf_gpr_26)
FUNC_END(__codasip_libcs_restore_rf_gpr_27)
