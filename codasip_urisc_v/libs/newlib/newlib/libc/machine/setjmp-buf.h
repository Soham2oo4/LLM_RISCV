#ifndef SETJMP_BUF_H_
#define SETJMP_BUF_H_

// Jump buffer to store 32 registers
#if OPTION_XLEN == 32
#define SETJMP_BUF int jmp_buf[32];
#else
#define SETJMP_BUF long long jmp_buf[32];
#endif

#endif // SETJMP_BUF_H_
