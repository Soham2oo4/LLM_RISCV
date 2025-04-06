# 1 "/home/project/codasip_urisc_v/libs/newlib/libgloss/gcrt1.S"
# 1 "<built-in>" 1
# 353 "<built-in>"
# 1 "/home/project/codasip_urisc_v/work/codasip_urisc_v_options.hcodal" 1
# 354 "<built-in>" 2
# 1 "/home/project/codasip_urisc_v/libs/newlib/libgloss/gcrt1.S" 2
# 10 "/home/project/codasip_urisc_v/libs/newlib/libgloss/gcrt1.S"
# 1 "/home/project/codasip_urisc_v/libs/newlib/libgloss/crt1.S" 1
# 32 "/home/project/codasip_urisc_v/libs/newlib/libgloss/crt1.S"
    .section .crt0, "ax"

_start:
    .global _start

    .option push
    .option norvc
    j _reset_handler
    j _nmi_handler
    unimp
    unimp
    .option pop


codasip_syscall:
    .global codasip_syscall
    .dword 0

.balign 4
_trap_handler:
    .global _trap_handler
    addi x10, x0, 136
    fence.i; add t1, x0, 1; la t0, codasip_syscall; sw t1, 0 (t0); 1: jal x0, 1b

_nmi_handler:
    .global _nmi_handler
    addi x10, x0, 135
    fence.i; add t1, x0, 1; la t0, codasip_syscall; sw t1, 0 (t0); 1: jal x0, 1b

_reset_handler:
    .global _reset_handler


    la t0, _trap_handler
    csrw mtvec, t0






    lui sp, %hi(_stack)
    add sp, sp, %lo(_stack)


    j ctors_init

ctors_initialized:
    j dtors_init

dtors_initialized:


    lui x10, %hi(_ftext)
    add x10, x10, %lo(_ftext)

    lui x11, %hi(_etext)
    add x11, x11, %lo(_etext)

    call _monstartup


    lui x10, %hi(_codasip_argc_address)
    add x10, x10, %lo(_codasip_argc_address)
    lw x10, 0 (x10)

    lui x11, %hi(_codasip_argv_pointers)
    add x11, x11, %lo(_codasip_argv_pointers)


    call main
    call exit
    fence.i; add t1, x0, 1; la t0, codasip_syscall; sw t1, 0 (t0); 1: jal x0, 1b


ctors_init:

    lui x13, %hi(__CTOR_LIST__)
    add x13, x13, %lo(__CTOR_LIST__)


    add sp, sp, -8

ctors_loop:

    lui x14, %hi(__CTOR_END__)
    add x14, x14, %lo(__CTOR_END__)
    beq x14, x13, ctors_end

    sw x13, 0(sp)

    lw x13, 0(x13)
    call.reg x13

    lw x13, 0(sp)

    add x13, x13, 4
    j ctors_loop
ctors_end:
    li x13, 0
    li x14, 0

    add sp, sp, +8
    j ctors_initialized


dtors_init:

    lui x13, %hi(__DTOR_LIST__)
    add x13, x13, %lo(__DTOR_LIST__)


    add sp, sp, -8

dtors_loop:

    lui x14, %hi(__DTOR_END__)
    add x14, x14, %lo(__DTOR_END__)
    beq x14, x13, dtors_end

    sw x13, 0(sp)

    lw x10, 0(x13)
    call atexit

    lw x13, 0(sp)

    add x13, x13, 4
    j dtors_loop
dtors_end:
    li x13, 0
    li x14, 0

    add sp, sp, +8
    j dtors_initialized

abort:
    .global abort


    addi x10, x0, 134
    fence.i; add t1, x0, 1; la t0, codasip_syscall; sw t1, 0 (t0); 1: jal x0, 1b

_exit:
    .global _exit

    fence.i; add t1, x0, 1; la t0, codasip_syscall; sw t1, 0 (t0); 1: jal x0, 1b




    .section .progargs, "aw"
    .align 8
_codasip_argc_address:
    .global _codasip_argc_address

    .word 0



_codasip_argv_pointers:
    .global _codasip_argv_pointers
    .fill 32, 4, 0
_codasip_argv_strings:
    .global _codasip_argv_strings
    .fill 512, 1, 0




    .section .text_jump_padding, "ax"
    nop
    nop
    nop



    .section .data
    .global __dso_handle
    .weak __dso_handle
__dso_handle:
    .long 0
# 11 "/home/project/codasip_urisc_v/libs/newlib/libgloss/gcrt1.S" 2

    .section .text
    .global mcount
    .type mcount, @function
mcount:
# 30 "/home/project/codasip_urisc_v/libs/newlib/libgloss/gcrt1.S"
    add sp, sp, -8
    sw ra, 0(sp)

    lw x10, -4(x8)
    add x11, ra, 0

    call _mcount_internal

    lw ra, 0(sp)
    add sp, sp, 8


    jr ra

    .size mcount, . - mcount
