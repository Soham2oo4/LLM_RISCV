# 1 "/home/project/codasip_urisc_v/libs/startup/crt0.S"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 337 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/project/codasip_urisc_v/work/codasip_urisc_v_options.hcodal" 1
# 2 "<built-in>" 2
# 1 "/home/project/codasip_urisc_v/libs/startup/crt0.S" 2
# 24 "/home/project/codasip_urisc_v/libs/startup/crt0.S"
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

_reset_handler:
    .global _reset_handler


    la t0, _trap_handler
    csrw mtvec, t0


    lui x15, %hi(_code_start)
    jalr x0, x15, %lo(_code_start)

_nmi_handler:
    .global _nmi_handler
    addi x10, x0, 135
    fence.i; add t1, x0, 1; la t0, codasip_syscall; sw t1, 0 (t0); 1: jal x0, 1b

_code_start:
    .global _code_start






    lui sp, %hi(_stack)
    add sp, sp, %lo(_stack)




    addi x10, x0, 1


    lui x15, %hi(main)
    jalr ra, x15, %lo(main)






    fence.i; add t1, x0, 1; la t0, codasip_syscall; sw t1, 0 (t0); 1: jal x0, 1b

abort:
    .global abort


    addi x10, x0, 134
    fence.i; add t1, x0, 1; la t0, codasip_syscall; sw t1, 0 (t0); 1: jal x0, 1b

exit:
    .global exit
    fence.i; add t1, x0, 1; la t0, codasip_syscall; sw t1, 0 (t0); 1: jal x0, 1b



    .section .text_jump_padding, "ax"
    nop
    nop
    nop
