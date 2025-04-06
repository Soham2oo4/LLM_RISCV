#define STORAGE(i, w) x##i, (i*w) (x10)

#if OPTION_XLEN == 32
#   define LD(i) lw STORAGE(i, 4)
#   define ST(i) sw STORAGE(i, 4)
#elif OPTION_XLEN == 64
#   define LD(i) ld STORAGE(i, 8)
#   define ST(i) sd STORAGE(i, 8)
#else
#   error Unsupported architecture (only XLEN with 32 and 64 is supported)
#endif

    .text
setjmp:
    .global setjmp
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
    // Return 0 to caller.
    li x10, 0
    ret

longjmp:
    .global longjmp
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
    LD(9)
    LD(8)
    LD(7)
    LD(6)
    LD(5)
    LD(4)
    LD(3)
    LD(2)
    LD(1)
    // swap x10 and x11
    xor x10, x10, x11
    xor x11, x11, x10
    xor x10, x10, x11
#if OPTION_XLEN == 32
    lw x11, 44(x11)
#else
    ld x11, 88(x11)
#endif
    // if longjmp() was to return 0, return 1 instead
    bne x10, x0, lab_1
    add x10, x0, 1
lab_1:
    ret
