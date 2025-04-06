// This is startup code for the uRISC-V processor, intended for C programs.
//
// It can be reused for any RISC-V core which has similar syscall implementation.
// The main responsibility of the startup code for C-language programs
// is to initialize the stack pointer and then call the main() function.
//
// Also bodies of functions used in tests ("abort" and "exit") are present here.
//

#define ABORT_EXIT_CODE     134
#define NMI_EXIT_CODE       135
#define TRAP_EXIT_CODE      136

#define HALT                                                           \
    fence.i;                                                           \
    /* HALT sequence is defined in the model as a store operation */   \
    /* to codasip_syscall address. */                                  \
    add t1, x0, 1;                                                     \
    la t0, codasip_syscall;                                            \
    sw t1, 0 (t0);                                                     \
    1: jal x0, 1b

    // Section .crt0
    .section .crt0, "ax"
    // Symbol "_start" is used to obtain the entry point.
_start:
    .global _start
    // Disable C extension optimization so the syscall address does not move.
    .option push
    .option norvc
    j _reset_handler    // 0x1000 - reset vector
    j _nmi_handler      // 0x1004 - NMI
    unimp               // reserved
    unimp               // reserved
    .option pop

    // Syscall must be present at 0x1010 (BASE + 0x10) for Codasip uRISC-V by default.
codasip_syscall:
    .global codasip_syscall
    .dword 0

.balign 4
_trap_handler:
    .global _trap_handler
    addi x10, x0, TRAP_EXIT_CODE
    HALT

_reset_handler:
    .global _reset_handler

    // Set trap vector.
    la t0, _trap_handler
    csrw mtvec, t0

    // Jump to _code_start. Note: This symbol can be far away, so we're using lui+jalr.
    lui x15, %hi(_code_start)
    jalr x0, x15, %lo(_code_start)

_nmi_handler:
    .global _nmi_handler
    addi x10, x0, NMI_EXIT_CODE
    HALT

_code_start:
    .global _code_start

    // When the C compiler is generated, information about the
    // used ABI (Application Binary Interface) is printed.
    // ABI, among other things, defines which register is used as a stack
    // pointer. To the stack pointer we put initial stack pointer address
    // using a combination of lui and addi instructions.
    lui sp, %hi(_stack)
    add sp, sp, %lo(_stack)

    // Set the exit code (x10) to 1. The main() function can then overwrite it.
    // !!! crt0.S must not be used for functions that use argv and argc main arguments
    // because argc/argv are not set correctly in this startup code
    addi x10, x0, 1

    // Now we can call the main() function.
    lui x15, %hi(main)
    jalr ra, x15, %lo(main)

    // Once the program returns from main(), the simulation can be stopped,
    // or the processor can be halted.
    //
    // At the end, the register for the first integer return value (x10)
    // contains the application's exit code.
    HALT

abort:
    .global abort

    // We put exit code value to the register for first integer return value.
    addi x10, x0, ABORT_EXIT_CODE
    HALT

exit:
    .global exit
    HALT

    // Auxiliary section to handle taken jumps/returns that could have
    // issued invalid instructions from data sections into the instruction decoder.
    .section .text_jump_padding, "ax"
    nop
    nop
    nop

