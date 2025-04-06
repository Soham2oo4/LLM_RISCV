	.text
	.file	"w_pow.c"
	.globl	pow                     //  -- Begin function pow
	.type	pow,@function
pow:                                    //  @pow
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x22, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -32
	mv x18, x13
	mv x19, x12
	mv x20, x11
	mv x21, x10
	jal __ieee754_pow
	mv x9, x10
	mv fp, x11
	mv x10, x19
	mv x11, x18
	mv x12, x19
	mv x13, x18
	jal __unorddf2
	bltu x0, x10, .LBB0_17
.LBB0_1:                                //  %if.end
	mv x22, x0
	mv x13, x22
	mv x10, x21
	mv x11, x20
	mv x12, x22
	jal __nedf2
	bltu x0, x10, .LBB0_6
.LBB0_2:                                //  %if.then2
	mv x10, x19
	mv x13, x22
	mv x11, x18
	mv x12, x22
	jal __eqdf2
	bltu x0, x10, .LBB0_4
.LBB0_3:
	lui fp, (1072693248>>12)&1048575
	mv x9, x22
	jal x0, .LBB0_17
.LBB0_6:                                //  %if.end11
	mv x10, x9
	mv x11, fp
	jal finite
	beq x0, x10, .LBB0_7
.LBB0_13:                               //  %if.end27
	mv x12, x0
	mv x10, x9
	mv x11, fp
	mv x13, x12
	jal __nedf2
	bltu x0, x10, .LBB0_17
.LBB0_14:                               //  %land.lhs.true29
	mv x10, x21
	mv x11, x20
	jal finite
	beq x0, x10, .LBB0_17
.LBB0_15:                               //  %land.lhs.true32
	mv x10, x19
	mv x11, x18
	jal finite
	bltu x0, x10, .LBB0_16
	jal x0, .LBB0_17
.LBB0_4:                                //  %if.end5
	mv x12, x0
	mv x10, x19
	mv x11, x18
	mv x13, x12
	jal __ltdf2
	mv x20, x10
	mv x10, x19
	mv x11, x18
	jal finite
	bge x20, x0, .LBB0_17
.LBB0_5:                                //  %if.end5
	beq x0, x10, .LBB0_17
.LBB0_16:                               //  %if.then35
	jal __errno
	add x11, x0, 34
	sw x11, 0 ( x10 )
	jal x0, .LBB0_17
.LBB0_7:                                //  %if.then14
	mv x10, x21
	mv x11, x20
	jal finite
	beq x0, x10, .LBB0_13
.LBB0_8:                                //  %land.lhs.true17
	mv x10, x19
	mv x11, x18
	jal finite
	beq x0, x10, .LBB0_13
.LBB0_9:                                //  %if.then20
	mv x10, x9
	mv x13, fp
	mv x11, fp
	mv x12, x9
	jal __unorddf2
	bne x10, x22, .LBB0_10
.LBB0_11:                               //  %if.then20
	add x18, x0, 34
	jal x0, .LBB0_12
.LBB0_10:
	add x18, x0, 33
.LBB0_12:                               //  %if.then20
	jal __errno
	sw x18, 0 ( x10 )
.LBB0_17:                               //  %cleanup
	mv x10, x9
	mv x11, fp
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x22, 4 ( sp )                //  4-byte Folded Reload
	lw x21, 8 ( sp )                //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	pow, .Lfunc_end0-pow
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
