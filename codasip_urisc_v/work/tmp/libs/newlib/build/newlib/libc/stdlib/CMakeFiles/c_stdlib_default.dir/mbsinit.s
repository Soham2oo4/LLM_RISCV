	.text
	.file	"mbsinit.c"
	.globl	mbsinit                 //  -- Begin function mbsinit
	.type	mbsinit,@function
mbsinit:                                //  @mbsinit
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	beq x0, x10, .LBB0_2
.LBB0_1:                                //  %lor.lhs.false
	.cfi_def_cfa 2, 0
	lw x10, 0 ( x10 )
	seqz x10, x10
	jr ra
.LBB0_2:                                //  %return
	seqz x10, x0
	jr ra
.Lfunc_end0:
	.size	mbsinit, .Lfunc_end0-mbsinit
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
