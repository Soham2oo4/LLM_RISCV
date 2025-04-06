/**
* This startup code extends crt1.S and is used when when using the gprof tool for profiling.
* The simulator in such case needs to generate gmon.out (gprof's input).
* The compiler instruments every function with a call to `mcount`.
* This file then defines `mcount`.
*/

#define PROFILE_SUPPORT 1

#include "crt1.S"

    .section .text
    .global mcount
    .type	mcount, @function
mcount:

#if OPTION_XLEN == 64
    add sp, sp, -16 // make space on stack (keep it aligned)
    sd ra, 0(sp)    // save return address

    ld x10, -8(x8)  // get the previous return address to x10
    add x11, ra, 0  // get the current return address to x11

    call _mcount_internal // call _mcount_internal from newlib

    ld ra, 0(sp)    // restore return address
    add sp, sp, 16  // cleanup space on stack
#else
    // same as above but for RV32
    add sp, sp, -8
    sw ra, 0(sp)

    lw x10, -4(x8)
    add x11, ra, 0

    call _mcount_internal

    lw ra, 0(sp)
    add sp, sp, 8
#endif

    jr ra // return from the function to the caller

    .size	mcount, . - mcount
