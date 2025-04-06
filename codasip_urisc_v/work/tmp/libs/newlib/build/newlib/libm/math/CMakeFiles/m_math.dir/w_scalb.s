	.text
	.file	"w_scalb.c"
	.globl	scalb                   //  -- Begin function scalb
	.type	scalb,@function
scalb:                                  //  @scalb
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
	mv x20, x13
	mv x21, x12
	mv x18, x11
	mv x19, x10
	jal __ieee754_scalb
	mv fp, x10
	mv x9, x11
	jal finite
	mv x22, x10
	mv x10, fp
	mv x11, x9
	mv x12, fp
	mv x13, x9
	jal __unorddf2
	bltu x0, x10, .LBB0_6
.LBB0_1:                                //  %entry
	bltu x0, x22, .LBB0_6
.LBB0_2:                                //  %land.lhs.true
	mv x10, x19
	mv x11, x18
	jal finite
	beq x0, x10, .LBB0_6
.LBB0_3:                                //  %if.then
	jal __errno
	mv fp, x0
	add x11, x0, 34
	sw x11, 0 ( x10 )
	mv x13, fp
	mv x10, x19
	mv x11, x18
	mv x12, fp
	jal __gtdf2
	blt fp, x10, .LBB0_4
.LBB0_5:                                //  %if.then
	lui x10, %hi( -1048576 )
	add x9, x10, %lo( -1048576 )
	jal x0, .LBB0_11
.LBB0_6:                                //  %if.end
	mv x12, x0
	mv x10, fp
	mv x11, x9
	mv x13, x12
	jal __nedf2
	bltu x0, x10, .LBB0_9
.LBB0_7:                                //  %if.end
	mv x10, fp
	mv x11, x9
	mv x12, x19
	mv x13, x18
	jal __eqdf2
	beq x0, x10, .LBB0_9
.LBB0_8:                                //  %if.then9
	jal __errno
	add x11, x0, 34
	sw x11, 0 ( x10 )
	mv x10, x0
	mv x11, x10
	mv x12, x19
	mv x13, x18
	jal copysign
	mv fp, x10
	mv x9, x11
	jal x0, .LBB0_11
.LBB0_9:                                //  %if.end12
	mv x10, x21
	mv x11, x20
	jal finite
	bltu x0, x10, .LBB0_11
.LBB0_10:                               //  %if.then15
	jal __errno
	add x11, x0, 34
	sw x11, 0 ( x10 )
	jal x0, .LBB0_11
.LBB0_4:
	lui x9, (2146435072>>12)&1048575
.LBB0_11:                               //  %cleanup
	mv x10, fp
	mv x11, x9
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
	.size	scalb, .Lfunc_end0-scalb
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
