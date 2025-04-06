# 1 "/home/project/codasip_urisc_v/libs/newlib/newlib/libc/setjmp.S"
# 1 "<built-in>" 1
# 353 "<built-in>"
# 1 "/home/project/codasip_urisc_v/work/codasip_urisc_v_options.hcodal" 1
# 354 "<built-in>" 2
# 1 "/home/project/codasip_urisc_v/libs/newlib/newlib/libc/setjmp.S" 2
# 13 "/home/project/codasip_urisc_v/libs/newlib/newlib/libc/setjmp.S"
    .text
setjmp:
    .global setjmp
    sw x1, (1*4) (x10)
    sw x2, (2*4) (x10)
    sw x3, (3*4) (x10)
    sw x4, (4*4) (x10)
    sw x5, (5*4) (x10)
    sw x6, (6*4) (x10)
    sw x7, (7*4) (x10)
    sw x8, (8*4) (x10)
    sw x9, (9*4) (x10)
    sw x11, (11*4) (x10)
    sw x12, (12*4) (x10)
    sw x13, (13*4) (x10)
    sw x15, (15*4) (x10)
    sw x14, (14*4) (x10)
    sw x16, (16*4) (x10)
    sw x17, (17*4) (x10)
    sw x18, (18*4) (x10)
    sw x19, (19*4) (x10)
    sw x20, (20*4) (x10)
    sw x21, (21*4) (x10)
    sw x22, (22*4) (x10)
    sw x23, (23*4) (x10)
    sw x24, (24*4) (x10)
    sw x25, (25*4) (x10)
    sw x26, (26*4) (x10)
    sw x27, (27*4) (x10)
    sw x28, (28*4) (x10)
    sw x29, (29*4) (x10)
    sw x30, (30*4) (x10)
    sw x31, (31*4) (x10)

    li x10, 0
    ret

longjmp:
    .global longjmp
    lw x31, (31*4) (x10)
    lw x30, (30*4) (x10)
    lw x29, (29*4) (x10)
    lw x28, (28*4) (x10)
    lw x27, (27*4) (x10)
    lw x26, (26*4) (x10)
    lw x25, (25*4) (x10)
    lw x24, (24*4) (x10)
    lw x23, (23*4) (x10)
    lw x22, (22*4) (x10)
    lw x21, (21*4) (x10)
    lw x20, (20*4) (x10)
    lw x19, (19*4) (x10)
    lw x18, (18*4) (x10)
    lw x17, (17*4) (x10)
    lw x16, (16*4) (x10)
    lw x14, (14*4) (x10)
    lw x15, (15*4) (x10)
    lw x13, (13*4) (x10)
    lw x12, (12*4) (x10)
    lw x9, (9*4) (x10)
    lw x8, (8*4) (x10)
    lw x7, (7*4) (x10)
    lw x6, (6*4) (x10)
    lw x5, (5*4) (x10)
    lw x4, (4*4) (x10)
    lw x3, (3*4) (x10)
    lw x2, (2*4) (x10)
    lw x1, (1*4) (x10)

    xor x10, x10, x11
    xor x11, x11, x10
    xor x10, x10, x11

    lw x11, 44(x11)




    bne x10, x0, lab_1
    add x10, x0, 1
lab_1:
    ret
