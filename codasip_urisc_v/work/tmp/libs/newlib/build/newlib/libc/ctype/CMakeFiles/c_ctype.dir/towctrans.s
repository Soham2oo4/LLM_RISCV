	.text
	.file	"towctrans.c"
	.globl	_towctrans_r            //  -- Begin function _towctrans_r
	.type	_towctrans_r,@function
_towctrans_r:                           //  @_towctrans_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	mv x10, x11
	add x11, x12, -1
	seqz x13, x0
	bltu x13, x11, .LBB0_2
.LBB0_1:                                //  %if.then
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	mv x13, x0
	mv x11, x12
	mv x12, x13
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal towctrans_l
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
.LBB0_2:                                //  %return
	jr ra
.Lfunc_end0:
	.size	_towctrans_r, .Lfunc_end0-_towctrans_r
	.cfi_endproc
                                        //  -- End function
	.globl	towctrans               //  -- Begin function towctrans
	.type	towctrans,@function
towctrans:                              //  @towctrans
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	add x12, x11, -1
	seqz x13, x0
	bltu x13, x12, .LBB1_2
.LBB1_1:                                //  %if.then.i
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	mv x12, x0
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal towctrans_l
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
.LBB1_2:                                //  %_towctrans_r.exit
	jr ra
.Lfunc_end1:
	.size	towctrans, .Lfunc_end1-towctrans
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
