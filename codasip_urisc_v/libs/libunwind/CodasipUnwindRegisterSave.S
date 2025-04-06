#define INPUT_ARG   x10
#define STORAGE(i, w) x##i, (i*w) (INPUT_ARG)

#if OPTION_XLEN == 32
#   define ST(i) sw STORAGE(i, 4)
#elif OPTION_XLEN == 64
#   define ST(i) sd STORAGE(i, 8)
#else
#   error Unsupported architecture (only XLEN with 32 and 64 is supported)
#endif

    .text
unw_getcontext:
__unw_getcontext:
    .global unw_getcontext
    .global __unw_getcontext
    ST(1)
    ST(2)
    ST(3)
    ST(4)
    ST(5)
    ST(6)
    ST(7)
    ST(8)
    ST(9)
    ST(11)
    ST(12)
    ST(13)
    ST(15)
    ST(14)
    ST(16)
    ST(17)
    ST(18)
    ST(19)
    ST(20)
    ST(21)
    ST(22)
    ST(23)
    ST(24)
    ST(25)
    ST(26)
    ST(27)
    ST(28)
    ST(29)
    ST(30)
    ST(31)
    ret
