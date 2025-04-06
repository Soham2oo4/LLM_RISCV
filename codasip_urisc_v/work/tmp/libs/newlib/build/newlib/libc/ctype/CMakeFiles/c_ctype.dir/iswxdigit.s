	.text
	.file	"iswxdigit.c"
	.globl	iswxdigit               //  -- Begin function iswxdigit
	.type	iswxdigit,@function
iswxdigit:                              //  @iswxdigit
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x11, x10
	add x12, x11, -48
	seqz x10, x0
	sltiu x12, x12, 10
	bltu x0, x12, .LBB0_3
.LBB0_1:                                //  %entry
	add x12, x11, -97
	sltiu x12, x12, 6
	bltu x0, x12, .LBB0_3
.LBB0_2:                                //  %lor.rhs
	add x10, x11, -65
	sltiu x10, x10, 6
.LBB0_3:                                //  %lor.end
	jr ra
.Lfunc_end0:
	.size	iswxdigit, .Lfunc_end0-iswxdigit
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
