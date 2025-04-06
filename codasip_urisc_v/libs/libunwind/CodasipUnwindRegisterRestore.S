#define INPUT_ARG   x10
#define STORAGE(i, w) x##i, (i*w) (INPUT_ARG)

#if OPTION_XLEN == 32
#   define LD(i) lw STORAGE(i, 4)
#elif OPTION_XLEN == 64
#   define LD(i) ld STORAGE(i, 8)
#else
#   error Unsupported architecture (only XLEN with 32 and 64 is supported)
#endif

    .text
unw_setcontext:
__unw_setcontext:
    .global unw_setcontext
    .global __unw_setcontext
    LD(31)
    LD(30)
    LD(29)
    LD(28)
    LD(27)
    LD(26)
    LD(25)
    LD(24)
    LD(23)
    LD(22)
    LD(21)
    LD(20)
    LD(19)
    LD(18)
    LD(17)
    LD(16)
    LD(14)
    LD(15)
    LD(13)
    LD(12)
    LD(11)
    LD(9)
    LD(8)
    LD(7)
    LD(6)
    LD(5)
    LD(4)
    LD(3)
    LD(2)
    LD(1)
    LD(10)
    ret
