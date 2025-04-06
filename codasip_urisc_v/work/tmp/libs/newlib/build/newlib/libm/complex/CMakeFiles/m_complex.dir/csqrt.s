	.text
	.file	"csqrt.c"
	.globl	csqrt                   //  -- Begin function csqrt
	.type	csqrt,@function
csqrt:                                  //  @csqrt
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -160
	.cfi_adjust_cfa_offset 160
	sw x9, 152 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 148 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x9, 4 ( x11 )
	lw x18, 8 ( x11 )
	sw x19, 144 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 140 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	lw x19, 12 ( x11 )
	lw x20, 0 ( x11 )
	sw fp, 108 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv fp, x10
	add x10, sp, 92
	sw x9, 4 ( x10 )
	sw x18, 8 ( x10 )
	add x10, sp, 44
	sw ra, 156 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x21, 136 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 132 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 128 ( sp )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 124 ( sp )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 120 ( sp )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 116 ( sp )              //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 112 ( sp )              //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x18, 8 ( x10 )
	sw x9, 4 ( x10 )
	sw x20, 92 ( sp )
	sw x19, 104 ( sp )
	sw x19, 56 ( sp )
	sw x20, 44 ( sp )
	jal creal
	mv x22, x10
	add x10, sp, 76
	sw x9, 4 ( x10 )
	sw x18, 8 ( x10 )
	add x10, sp, 28
	mv x21, x11
	sw x9, 4 ( x10 )
	sw x18, 8 ( x10 )
	sw x20, 76 ( sp )
	sw x20, 28 ( sp )
	sw x19, 88 ( sp )
	sw x19, 40 ( sp )
	jal cimag
	mv x19, x0
	mv x12, x19
	mv x13, x19
	mv x9, x10
	mv x18, x11
	jal __nedf2
	bltu x0, x10, .LBB0_7
.LBB0_1:                                //  %if.then
	mv x10, x22
	mv x13, x19
	mv x11, x21
	mv x12, x19
	jal __eqdf2
	bltu x0, x10, .LBB0_3
.LBB0_2:
	mv x20, x19
	jal x0, .LBB0_6
.LBB0_7:                                //  %if.end27
	mv x19, x0
	mv x13, x19
	mv x10, x22
	mv x11, x21
	mv x12, x19
	jal __nedf2
	bltu x0, x10, .LBB0_13
.LBB0_8:                                //  %if.then29
	mv x19, x0
	mv x13, x19
	mv x10, x9
	mv x11, x18
	mv x12, x19
	jal __gtdf2
	mv x20, x10
	mv x10, x9
	mv x11, x18
	jal fabs
	lui x13, (1071644672>>12)&1048575
	mv x12, x19
	jal __muldf3
	jal sqrt
	mv x9, x10
	mv x21, x11
	lui x10, %hi( -2147483648 )
	add x22, x10, %lo( -2147483648 )
	mv x18, x21
	blt x19, x20, .LBB0_10
.LBB0_9:                                //  %if.then29
	xor x18, x22, x21
.LBB0_10:                               //  %if.then29
	mv x13, x19
	mv x10, x9
	mv x11, x21
	mv x12, x19
	jal __muldf3
	mv x12, x10
	mv x13, x11
	blt x19, x20, .LBB0_12
.LBB0_11:                               //  %if.then29
	xor x13, x22, x13
.LBB0_12:                               //  %if.then29
	mv x10, x9
	mv x11, x21
	jal x0, .LBB0_25
.LBB0_3:                                //  %if.else
	mv x19, x0
	mv x13, x19
	mv x10, x22
	mv x11, x21
	mv x12, x19
	jal __ltdf2
	mv x20, x10
	mv x10, x22
	mv x11, x21
	jal fabs
	jal sqrt
	blt x20, x19, .LBB0_4
.LBB0_5:                                //  %if.else
	mv x19, x10
	mv x20, x11
	jal x0, .LBB0_6
.LBB0_13:                               //  %if.end51
	mv x10, x22
	mv x11, x21
	jal fabs
	lui x13, (1074790400>>12)&1048575
	mv x12, x19
	jal __gtdf2
	lui x20, (1073741824>>12)&1048575
	lui x23, (1070596096>>12)&1048575
	blt x0, x10, .LBB0_16
.LBB0_14:                               //  %lor.lhs.false
	mv x10, x9
	mv x11, x18
	jal fabs
	mv x19, x0
	lui x13, (1074790400>>12)&1048575
	mv x12, x19
	jal __gtdf2
	blt x0, x10, .LBB0_16
.LBB0_15:                               //  %if.else59
	lui x20, (1044381696>>12)&1048575
	lui x23, (1129316352>>12)&1048575
	mv x19, x0
.LBB0_16:                               //  %if.end62
	mv x10, x22
	mv x11, x21
	mv x12, x19
	mv x13, x23
	jal __muldf3
	mv x22, x10
	mv x24, x11
	mv x10, x9
	mv x11, x18
	mv x12, x19
	mv x13, x23
	jal __muldf3
	mv x21, x0
	mv x13, x21
	mv x12, x21
	mv x9, x10
	mv x18, x11
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x22
	mv x11, x24
	jal __adddf3
	add x12, sp, 60
	add x25, sp, 12
	sw x11, 4 ( x12 )
	sw x9, 8 ( x12 )
	sw x11, 4 ( x25 )
	sw x10, 60 ( sp )
	sw x10, 12 ( sp )
	mv x10, x22
	mv x11, x24
	mv x12, x21
	mv x13, x21
	sw x9, 8 ( x25 )
	sw x18, 72 ( sp )
	sw x18, 24 ( sp )
	jal __gtdf2
	lui x27, (1071644672>>12)&1048575
	mv x26, x10
	mv x10, x22
	mv x11, x24
	mv x12, x21
	mv x13, x27
	jal __muldf3
	mv x23, x10
	mv x10, x25
	mv x22, x11
	jal cabs
	mv x12, x21
	mv x13, x27
	jal __muldf3
	mv x12, x10
	mv x13, x11
	bge x0, x26, .LBB0_18
.LBB0_17:                               //  %if.then75
	mv x10, x23
	mv x11, x22
	jal __adddf3
	jal sqrt
	mv x22, x10
	mv x23, x11
	mv x12, x0
	lui x13, (1071644672>>12)&1048575
	mv x10, x9
	mv x11, x18
	jal __muldf3
	mv x12, x22
	mv x13, x23
	jal __divdf3
	jal fabs
	mv x24, x10
	mv x25, x11
	jal x0, .LBB0_19
.LBB0_4:
	mv x20, x19
	mv x9, x10
	mv x18, x11
.LBB0_6:                                //  %if.end24
	mv x12, x0
	mv x10, x9
	mv x11, x18
	mv x13, x12
	jal __muldf3
	mv x12, x19
	mv x13, x20
.LBB0_25:                               //  %cleanup
	jal __adddf3
	sw x9, 8 ( fp )
	sw x18, 12 ( fp )
	sw x10, 0 ( fp )
	sw x11, 4 ( fp )
	lw fp, 108 ( sp )               //  4-byte Folded Reload
	lw x27, 112 ( sp )              //  4-byte Folded Reload
	lw x26, 116 ( sp )              //  4-byte Folded Reload
	lw x25, 120 ( sp )              //  4-byte Folded Reload
	lw x24, 124 ( sp )              //  4-byte Folded Reload
	lw x23, 128 ( sp )              //  4-byte Folded Reload
	lw x22, 132 ( sp )              //  4-byte Folded Reload
	lw x21, 136 ( sp )              //  4-byte Folded Reload
	lw x20, 140 ( sp )              //  4-byte Folded Reload
	lw x19, 144 ( sp )              //  4-byte Folded Reload
	lw x18, 148 ( sp )              //  4-byte Folded Reload
	lw x9, 152 ( sp )               //  4-byte Folded Reload
	lw ra, 156 ( sp )               //  4-byte Folded Reload
	add sp, sp, 160
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_18:                               //  %if.else83
	mv x10, x12
	mv x11, x13
	mv x12, x23
	mv x13, x22
	jal __subdf3
	jal sqrt
	mv x24, x10
	mv x25, x11
	mv x12, x0
	lui x13, (1071644672>>12)&1048575
	mv x10, x9
	mv x11, x18
	jal __muldf3
	mv x12, x24
	mv x13, x25
	jal __divdf3
	jal fabs
	mv x22, x10
	mv x23, x11
.LBB0_19:                               //  %if.end92
	mv x10, x9
	mv x13, x21
	mv x11, x18
	mv x12, x21
	jal __ltdf2
	mv x26, x10
	mv x10, x19
	mv x11, x20
	mv x12, x24
	mv x13, x25
	jal __muldf3
	mv x9, x10
	lui x10, %hi( -2147483648 )
	mv x24, x11
	add x25, x10, %lo( -2147483648 )
	blt x26, x21, .LBB0_20
.LBB0_21:                               //  %if.end92
	mv x18, x24
	jal x0, .LBB0_22
.LBB0_20:
	xor x18, x25, x24
.LBB0_22:                               //  %if.end92
	mv x10, x19
	mv x11, x20
	mv x12, x22
	mv x13, x23
	jal __muldf3
	mv x19, x10
	mv x20, x11
	mv x10, x9
	mv x13, x21
	mv x11, x24
	mv x12, x21
	jal __muldf3
	mv x12, x10
	mv x13, x11
	bge x26, x21, .LBB0_24
.LBB0_23:
	xor x13, x25, x13
.LBB0_24:                               //  %if.end92
	mv x10, x19
	mv x11, x20
	jal x0, .LBB0_25
.Lfunc_end0:
	.size	csqrt, .Lfunc_end0-csqrt
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
