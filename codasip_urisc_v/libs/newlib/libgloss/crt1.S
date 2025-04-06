// This is startup code for the uRISC-V processor, intended for C or C++ programs.
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

#if OPTION_XLEN == 32
#define ADDR_SIZE 4
#define STACK_ALIGN_VAL 8
#else
#define ADDR_SIZE 8
#define STACK_ALIGN_VAL 16
#endif

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

_nmi_handler:
    .global _nmi_handler
    addi x10, x0, NMI_EXIT_CODE
    HALT

_reset_handler:
    .global _reset_handler

    // Set trap vector.
    la t0, _trap_handler
    csrw mtvec, t0

    // When the C compiler is generated, information about the
    // used ABI (Application Binary Interface) is printed.
    // ABI, among other things, defines which register is used as a stack
    // pointer. To the stack pointer we put initial stack pointer address
    // using a combination of lui and addi instructions.
    lui sp, %hi(_stack)
    add sp, sp, %lo(_stack)

    // run global constructors
    j ctors_init

ctors_initialized:
    j dtors_init

dtors_initialized:

#ifdef PROFILE_SUPPORT
    lui x10, %hi(_ftext)
    add x10, x10, %lo(_ftext)

    lui x11, %hi(_etext)
    add x11, x11, %lo(_etext)

    call _monstartup
#endif

    lui x10, %hi(_codasip_argc_address)
    add x10, x10, %lo(_codasip_argc_address)
    lw x10, 0 (x10)

    lui x11, %hi(_codasip_argv_pointers)
    add x11, x11, %lo(_codasip_argv_pointers)

    // Now we can call the main function.
    call main
    call exit
    HALT

    // Any register except for sp can be used below.
ctors_init:
    // The following symbols are provided by linker:
    lui x13, %hi(__CTOR_LIST__)
    add x13, x13, %lo(__CTOR_LIST__)

    // Reserve space on stack (keep stack aligned).
    add sp, sp, -STACK_ALIGN_VAL

ctors_loop:
    // x14 is restored each call.
    lui x14, %hi(__CTOR_END__)
    add x14, x14, %lo(__CTOR_END__)
    beq x14, x13, ctors_end
    // Store x13 to stack because it can be overwritten.
    sw x13, 0(sp)
    // Load the address of the called function.
    lw x13, 0(x13)
    call.reg x13
    // Restore R13
    lw x13, 0(sp)
    // Next initializer
    add x13, x13, ADDR_SIZE
    j ctors_loop
ctors_end:
    li x13, 0
    li x14, 0
    // Move the stack pointer back.
    add sp, sp, +STACK_ALIGN_VAL
    j ctors_initialized

    // Any register except for sp can be used below
dtors_init:
    // The following symbols are provided by linker:
    lui x13, %hi(__DTOR_LIST__)
    add x13, x13, %lo(__DTOR_LIST__)

    // Reserve space on stack (keep stack aligned)
    add sp, sp, -STACK_ALIGN_VAL

dtors_loop:
    // x14 is restored each call.
    lui x14, %hi(__DTOR_END__)
    add x14, x14, %lo(__DTOR_END__)
    beq x14, x13, dtors_end
    // Store x13 to stack because it can be overwritten.
    sw x13, 0(sp)
    // Load address of the called function.
    lw x10, 0(x13)
    call atexit
    // Restore R13
    lw x13, 0(sp)
    // next initializer
    add x13, x13, ADDR_SIZE
    j dtors_loop
dtors_end:
    li x13, 0
    li x14, 0
    // Move the stack pointer back
    add sp, sp, +STACK_ALIGN_VAL
    j dtors_initialized

abort:
    .global abort

    // We put exit code value to the register for first integer return value.
    addi x10, x0, ABORT_EXIT_CODE
    HALT

_exit:
    .global _exit
    // Move the parameter register to return
    HALT

    // The following section holds program arguments.
    // Maximum count of the arguments is 32.
    // Strings in the arguments may have up to 512 bytes.
    .section .progargs, "aw"
    .align STACK_ALIGN_VAL
_codasip_argc_address:
    .global _codasip_argc_address
#if OPTION_XLEN == 32
    .word 0 // Contains argv value
#else
    .dword 0 // Contains argv value
#endif
_codasip_argv_pointers: // This address represents argv pointer value.
    .global _codasip_argv_pointers
    .fill 32, 4, 0  // Each word contains a pointer to the _codasip_argv_strings field, last pointer has value NULL.
_codasip_argv_strings: // This field contains zero-terminated argv[x] strings.
    .global _codasip_argv_strings
    .fill 512, 1, 0


    // Auxiliary section to handle taken jumps/returns that could have
    // issued invalid instructions from data sections into the instruction decoder.
    .section .text_jump_padding, "ax"
    nop
    nop
    nop


    // Needed for C++, see http://wiki.osdev.org/C%2B%2B
    .section .data
    .global __dso_handle
    .weak   __dso_handle
__dso_handle:
    .long    0

