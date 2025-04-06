// The syscalls in this file are intended for CA simulation only.
//
// Syscalls for JTAG+OpenOCD (RISC-V semihosting) use a different instruction sequence,
// provided by DO_SYSCALL_RVSYS macro (see librvsys/syscalls_rvsys.h).

#ifndef SYSCALLS_H_
#define SYSCALLS_H_

#define SYSCALL_ADDRESS OPTION_BOOT_START + 0x10
#ifdef OPTION_OCD
#define DO_SYSCALL_NXSSYS(addr)                        \
    __asm__(".option push \n\t"                        \
            ".option norvc \n\t"                       \
            "nop \n\t"                                 \
            ".option pop");                            \
    *(volatile unsigned int*)(SYSCALL_ADDRESS) = addr; \
    __asm__("ebreak");
#else
#define DO_SYSCALL_NXSSYS(addr)                        \
    __asm__(".option push \n\t"                        \
            ".option norvc \n\t"                       \
            "nop \n\t"                                 \
            ".option pop");                            \
    *(volatile unsigned int*)(SYSCALL_ADDRESS) = addr; \
    __asm__(".option push \n\t"                        \
            ".option norvc \n\t"                       \
            "nop \n\t"                                 \
            ".option pop");
#endif

#endif // SYSCALLS_H_
