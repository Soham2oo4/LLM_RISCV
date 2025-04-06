# 1 "/home/project/codasip_urisc_v/libs/newlib/newlib/libc/save-restore.S"
# 1 "<built-in>" 1
# 336 "<built-in>"
# 1 "/home/project/codasip_urisc_v/work/codasip_urisc_v_options.hcodal" 1
# 337 "<built-in>" 2
# 1 "/home/project/codasip_urisc_v/libs/newlib/newlib/libc/save-restore.S" 2
# 64 "/home/project/codasip_urisc_v/libs/newlib/newlib/libc/save-restore.S"
.text

.globl __codasip_libcs_save_rf_gpr_27; .type __codasip_libcs_save_rf_gpr_27,@function; __codasip_libcs_save_rf_gpr_27:
  add sp, sp, -4
  sw x27, 0(sp)
.globl __codasip_libcs_save_rf_gpr_26; .type __codasip_libcs_save_rf_gpr_26,@function; __codasip_libcs_save_rf_gpr_26:
  add sp, sp, -4
  sw x26, 0(sp)
.globl __codasip_libcs_save_rf_gpr_25; .type __codasip_libcs_save_rf_gpr_25,@function; __codasip_libcs_save_rf_gpr_25:
  add sp, sp, -4
  sw x25, 0(sp)
.globl __codasip_libcs_save_rf_gpr_24; .type __codasip_libcs_save_rf_gpr_24,@function; __codasip_libcs_save_rf_gpr_24:
  add sp, sp, -4
  sw x24, 0(sp)
.globl __codasip_libcs_save_rf_gpr_23; .type __codasip_libcs_save_rf_gpr_23,@function; __codasip_libcs_save_rf_gpr_23:
  add sp, sp, -4
  sw x23, 0(sp)
.globl __codasip_libcs_save_rf_gpr_22; .type __codasip_libcs_save_rf_gpr_22,@function; __codasip_libcs_save_rf_gpr_22:
  add sp, sp, -4
  sw x22, 0(sp)
.globl __codasip_libcs_save_rf_gpr_21; .type __codasip_libcs_save_rf_gpr_21,@function; __codasip_libcs_save_rf_gpr_21:
  add sp, sp, -4
  sw x21, 0(sp)
.globl __codasip_libcs_save_rf_gpr_20; .type __codasip_libcs_save_rf_gpr_20,@function; __codasip_libcs_save_rf_gpr_20:
  add sp, sp, -4
  sw x20, 0(sp)
.globl __codasip_libcs_save_rf_gpr_19; .type __codasip_libcs_save_rf_gpr_19,@function; __codasip_libcs_save_rf_gpr_19:
  add sp, sp, -4
  sw x19, 0(sp)
.globl __codasip_libcs_save_rf_gpr_18; .type __codasip_libcs_save_rf_gpr_18,@function; __codasip_libcs_save_rf_gpr_18:
  add sp, sp, -4
  sw x18, 0(sp)
.globl __codasip_libcs_save_rf_gpr_9; .type __codasip_libcs_save_rf_gpr_9,@function; __codasip_libcs_save_rf_gpr_9:
  add sp, sp, -4
  sw x9, 0(sp)
.globl __codasip_libcs_save_BPs; .type __codasip_libcs_save_BPs,@function; __codasip_libcs_save_BPs:
  add sp, sp, 2*-4
  sw x8, 4(sp)
  sw ra, 0(sp)
  jr x5
.size __codasip_libcs_save_BPs,.-__codasip_libcs_save_BPs
.size __codasip_libcs_save_rf_gpr_9,.-__codasip_libcs_save_rf_gpr_9
.size __codasip_libcs_save_rf_gpr_18,.-__codasip_libcs_save_rf_gpr_18
.size __codasip_libcs_save_rf_gpr_19,.-__codasip_libcs_save_rf_gpr_19
.size __codasip_libcs_save_rf_gpr_20,.-__codasip_libcs_save_rf_gpr_20
.size __codasip_libcs_save_rf_gpr_21,.-__codasip_libcs_save_rf_gpr_21
.size __codasip_libcs_save_rf_gpr_22,.-__codasip_libcs_save_rf_gpr_22
.size __codasip_libcs_save_rf_gpr_23,.-__codasip_libcs_save_rf_gpr_23
.size __codasip_libcs_save_rf_gpr_24,.-__codasip_libcs_save_rf_gpr_24
.size __codasip_libcs_save_rf_gpr_25,.-__codasip_libcs_save_rf_gpr_25
.size __codasip_libcs_save_rf_gpr_26,.-__codasip_libcs_save_rf_gpr_26
.size __codasip_libcs_save_rf_gpr_27,.-__codasip_libcs_save_rf_gpr_27





.globl __codasip_libcs_restore_rf_gpr_27; .type __codasip_libcs_restore_rf_gpr_27,@function; __codasip_libcs_restore_rf_gpr_27:
  add x7, x0, 13*4
.L17:
  lw x27, 12*4(sp)
  j .L18
.globl __codasip_libcs_restore_rf_gpr_26; .type __codasip_libcs_restore_rf_gpr_26,@function; __codasip_libcs_restore_rf_gpr_26:
  add x7, x0, 12*4
.L18:
  lw x26, 11*4(sp)
  j .L19
.globl __codasip_libcs_restore_rf_gpr_25; .type __codasip_libcs_restore_rf_gpr_25,@function; __codasip_libcs_restore_rf_gpr_25:
  add x7, x0, 11*4
.L19:
  lw x25, 10*4(sp)
  j .L20
.globl __codasip_libcs_restore_rf_gpr_24; .type __codasip_libcs_restore_rf_gpr_24,@function; __codasip_libcs_restore_rf_gpr_24:
  add x7, x0, 10*4
.L20:
  lw x24, 9*4(sp)
  j .L21
.globl __codasip_libcs_restore_rf_gpr_23; .type __codasip_libcs_restore_rf_gpr_23,@function; __codasip_libcs_restore_rf_gpr_23:
  add x7, x0, 9*4
.L21:
  lw x23, 8*4(sp)
  j .L22
.globl __codasip_libcs_restore_rf_gpr_22; .type __codasip_libcs_restore_rf_gpr_22,@function; __codasip_libcs_restore_rf_gpr_22:
  add x7, x0, 8*4
.L22:
  lw x22, 7*4(sp)
  j .L23
.globl __codasip_libcs_restore_rf_gpr_21; .type __codasip_libcs_restore_rf_gpr_21,@function; __codasip_libcs_restore_rf_gpr_21:
  add x7, x0, 7*4
.L23:
  lw x21, 6*4(sp)
  j .L24
.globl __codasip_libcs_restore_rf_gpr_20; .type __codasip_libcs_restore_rf_gpr_20,@function; __codasip_libcs_restore_rf_gpr_20:
  add x7, x0, 6*4
.L24:
  lw x20, 5*4(sp)
  j .L25
.globl __codasip_libcs_restore_rf_gpr_19; .type __codasip_libcs_restore_rf_gpr_19,@function; __codasip_libcs_restore_rf_gpr_19:
  add x7, x0, 5*4
.L25:
  lw x19, 4*4(sp)
  j .L26
.globl __codasip_libcs_restore_rf_gpr_18; .type __codasip_libcs_restore_rf_gpr_18,@function; __codasip_libcs_restore_rf_gpr_18:
  add x7, x0, 4*4
.L26:
  lw x18, 3*4(sp)
  j .L27
.globl __codasip_libcs_restore_rf_gpr_9; .type __codasip_libcs_restore_rf_gpr_9,@function; __codasip_libcs_restore_rf_gpr_9:
  add x7, x0, 3*4
.L27:
  lw x9, 2*4(sp)
  j .LBP
.globl __codasip_libcs_restore_BPs; .type __codasip_libcs_restore_BPs,@function; __codasip_libcs_restore_BPs:
  add x7, x0, 2*4
.LBP:
  lw x8, 1*4(sp)
  lw ra, 0*4(sp)
  add sp, sp, x7
  jr x5
.size __codasip_libcs_restore_BPs,.-__codasip_libcs_restore_BPs
.size __codasip_libcs_restore_rf_gpr_9,.-__codasip_libcs_restore_rf_gpr_9
.size __codasip_libcs_restore_rf_gpr_18,.-__codasip_libcs_restore_rf_gpr_18
.size __codasip_libcs_restore_rf_gpr_19,.-__codasip_libcs_restore_rf_gpr_19
.size __codasip_libcs_restore_rf_gpr_20,.-__codasip_libcs_restore_rf_gpr_20
.size __codasip_libcs_restore_rf_gpr_21,.-__codasip_libcs_restore_rf_gpr_21
.size __codasip_libcs_restore_rf_gpr_22,.-__codasip_libcs_restore_rf_gpr_22
.size __codasip_libcs_restore_rf_gpr_23,.-__codasip_libcs_restore_rf_gpr_23
.size __codasip_libcs_restore_rf_gpr_24,.-__codasip_libcs_restore_rf_gpr_24
.size __codasip_libcs_restore_rf_gpr_25,.-__codasip_libcs_restore_rf_gpr_25
.size __codasip_libcs_restore_rf_gpr_26,.-__codasip_libcs_restore_rf_gpr_26
.size __codasip_libcs_restore_rf_gpr_27,.-__codasip_libcs_restore_rf_gpr_27
