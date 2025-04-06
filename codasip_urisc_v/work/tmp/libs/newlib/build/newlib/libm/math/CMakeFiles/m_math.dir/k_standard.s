	.text
	.file	"k_standard.c"
	.globl	__kernel_standard       //  -- Begin function __kernel_standard
	.type	__kernel_standard,@function
__kernel_standard:                      //  @__kernel_standard
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x0
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv x18, x11
	mv x19, x10
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -28
	mv fp, x9
	add x10, x14, -1
	add x11, x0, 141
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	bltu x11, x10, .LBB0_12
.LBB0_1:                                //  %entry
	lui x11, %hi( JTI0_0 )
	sll x10, x10, 2&31
	add x11, x11, %lo( JTI0_0 )
	add x10, x11, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB0_2:                                //  %sw.bb14
	jal __errno
	add x11, x0, 33
	sw x11, 0 ( x10 )
	lui x10, %hi( -1048576 )
	add x9, x10, %lo( -1048576 )
	jal x0, .LBB0_11
.LBB0_3:                                //  %sw.bb12
	jal __errno
	add x11, x0, 34
	jal x0, .LBB0_7
.LBB0_4:                                //  %sw.bb47
	jal __errno
	add x11, x0, 33
	sw x11, 0 ( x10 )
	lui x9, (2146959360>>12)&1048575
	jal x0, .LBB0_11
.LBB0_5:                                //  %sw.bb6
	jal __errno
	add x11, x0, 34
	jal x0, .LBB0_9
.LBB0_6:                                //  %sw.bb
	jal __errno
	add x11, x0, 33
.LBB0_7:                                //  %sw.epilog
	mv fp, x0
	sw x11, 0 ( x10 )
	mv x9, fp
	jal x0, .LBB0_12
.LBB0_8:                                //  %sw.bb28
	jal __errno
	add x11, x0, 33
.LBB0_9:                                //  %sw.epilog
	sw x11, 0 ( x10 )
	lui x9, (2146435072>>12)&1048575
	jal x0, .LBB0_11
.LBB0_10:                               //  %sw.bb88
	lui x9, (1072693248>>12)&1048575
.LBB0_11:                               //  %sw.epilog
	mv fp, x0
.LBB0_12:                               //  %sw.epilog
	mv x10, fp
	mv x11, x9
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x21, 8 ( sp )                //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_16:                               //  %sw.bb49
	jal __errno
	mv fp, x0
	add x11, x0, 34
	sw x11, 0 ( x10 )
	mv x13, fp
	mv x10, x19
	mv x11, x18
	mv x12, fp
	jal __gtdf2
	blt fp, x10, .LBB0_17
.LBB0_20:                               //  %sw.bb49
	lui x10, %hi( -1048576 )
	add x9, x10, %lo( -1048576 )
	jal x0, .LBB0_12
.LBB0_13:                               //  %sw.bb39
	mv fp, x0
	lui x14, (1071644672>>12)&1048575
	mv x10, x12
	mv x11, x13
	mv x12, fp
	mv x13, x14
	jal __muldf3
	mv x20, x10
	mv x21, x11
	mv x10, x19
	mv x11, x18
	mv x12, fp
	mv x13, fp
	jal __ltdf2
	lui x9, (2146435072>>12)&1048575
	bge x10, x0, .LBB0_24
.LBB0_14:                               //  %land.lhs.true
	mv x10, x20
	mv x11, x21
	jal rint
	mv x12, x20
	mv x13, x21
	jal __eqdf2
	beq x0, x10, .LBB0_24
.LBB0_15:                               //  %if.then
	lui x10, %hi( -1048576 )
	add x9, x10, %lo( -1048576 )
	jal x0, .LBB0_24
.LBB0_18:                               //  %sw.bb62
	jal __errno
	add x11, x0, 33
	mv x12, x0
	sw x11, 0 ( x10 )
	mv x10, x19
	mv x11, x18
	mv x13, x12
	jal __divdf3
	mv fp, x10
	mv x9, x11
	jal x0, .LBB0_12
.LBB0_21:                               //  %sw.bb68
	mv x10, x0
	mv x11, x10
	jal x0, .LBB0_23
.LBB0_22:                               //  %sw.bb83
	mv x10, x0
	lui x11, (2146435072>>12)&1048575
.LBB0_23:                               //  %sw.epilog
	mv x12, x19
	mv x13, x18
	jal copysign
	mv fp, x10
	mv x9, x11
.LBB0_24:                               //  %if.end
	jal __errno
	add x11, x0, 34
	sw x11, 0 ( x10 )
	jal x0, .LBB0_12
.LBB0_17:
	lui x9, (2146435072>>12)&1048575
	jal x0, .LBB0_12
.Lfunc_end0:
	.size	__kernel_standard, .Lfunc_end0-__kernel_standard
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_6
	.long	.LBB0_6
	.long	.LBB0_6
	.long	.LBB0_5
	.long	.LBB0_5
	.long	.LBB0_5
	.long	.LBB0_3
	.long	.LBB0_2
	.long	.LBB0_2
	.long	.LBB0_2
	.long	.LBB0_2
	.long	.LBB0_2
	.long	.LBB0_2
	.long	.LBB0_5
	.long	.LBB0_8
	.long	.LBB0_2
	.long	.LBB0_2
	.long	.LBB0_2
	.long	.LBB0_2
	.long	.LBB0_10
	.long	.LBB0_13
	.long	.LBB0_3
	.long	.LBB0_2
	.long	.LBB0_4
	.long	.LBB0_16
	.long	.LBB0_4
	.long	.LBB0_4
	.long	.LBB0_4
	.long	.LBB0_4
	.long	.LBB0_4
	.long	.LBB0_18
	.long	.LBB0_16
	.long	.LBB0_21
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_22
	.long	.LBB0_8
	.long	.LBB0_10
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_6
	.long	.LBB0_6
	.long	.LBB0_6
	.long	.LBB0_5
	.long	.LBB0_5
	.long	.LBB0_5
	.long	.LBB0_3
	.long	.LBB0_2
	.long	.LBB0_2
	.long	.LBB0_2
	.long	.LBB0_2
	.long	.LBB0_2
	.long	.LBB0_2
	.long	.LBB0_5
	.long	.LBB0_8
	.long	.LBB0_2
	.long	.LBB0_2
	.long	.LBB0_2
	.long	.LBB0_2
	.long	.LBB0_10
	.long	.LBB0_13
	.long	.LBB0_3
	.long	.LBB0_2
	.long	.LBB0_4
	.long	.LBB0_16
	.long	.LBB0_4
	.long	.LBB0_4
	.long	.LBB0_4
	.long	.LBB0_4
	.long	.LBB0_4
	.long	.LBB0_18
	.long	.LBB0_16
	.long	.LBB0_21
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_22
	.long	.LBB0_8
	.long	.LBB0_10
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
