	.text
	.file	"mblen_r.c"
	.globl	_mblen_r                //  -- Begin function _mblen_r
	.type	_mblen_r,@function
_mblen_r:                               //  @_mblen_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	mv x10, x0
	beq x0, x11, .LBB0_5
.LBB0_1:                                //  %lor.lhs.false
	.cfi_def_cfa 2, 0
	lbu x11, 0 ( x11 )
	beq x0, x11, .LBB0_5
.LBB0_2:                                //  %if.end
	mv x10, x0
	beq x12, x10, .LBB0_3
.LBB0_4:                                //  %if.end
	seqz x10, x0
.LBB0_5:                                //  %return
	jr ra
.LBB0_3:
	add x10, x0, -1
	jr ra
.Lfunc_end0:
	.size	_mblen_r, .Lfunc_end0-_mblen_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
