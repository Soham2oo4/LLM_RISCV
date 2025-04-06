	.text
	.file	"w_tgamma.c"
	.globl	tgamma                  //  -- Begin function tgamma
	.type	tgamma,@function
tgamma:                                 //  @tgamma
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
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv x18, x11
	mv x19, x10
	jal __ieee754_tgamma
	mv fp, x10
	mv x9, x11
	jal finite
	bltu x0, x10, .LBB0_7
.LBB0_1:                                //  %if.then
	mv x12, x0
	mv x10, x19
	mv x11, x18
	mv x13, x12
	jal __ltdf2
	bge x10, x0, .LBB0_4
.LBB0_2:                                //  %land.lhs.true
	mv x10, x19
	mv x11, x18
	jal floor
	mv x12, x19
	mv x13, x18
	jal __nedf2
	bltu x0, x10, .LBB0_4
.LBB0_3:                                //  %if.then4
	jal __errno
	add x11, x0, 33
	jal x0, .LBB0_6
.LBB0_4:                                //  %if.else
	mv x10, x19
	mv x11, x18
	jal finite
	beq x0, x10, .LBB0_7
.LBB0_5:                                //  %if.then8
	jal __errno
	add x11, x0, 34
.LBB0_6:                                //  %if.end11
	sw x11, 0 ( x10 )
.LBB0_7:                                //  %if.end11
	mv x10, fp
	mv x11, x9
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	tgamma, .Lfunc_end0-tgamma
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
