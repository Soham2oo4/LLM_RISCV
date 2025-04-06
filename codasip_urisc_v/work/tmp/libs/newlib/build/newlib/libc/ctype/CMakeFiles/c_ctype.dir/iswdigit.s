	.text
	.file	"iswdigit.c"
	.globl	iswdigit                //  -- Begin function iswdigit
	.type	iswdigit,@function
iswdigit:                               //  @iswdigit
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x10, x10, -48
	sltiu x10, x10, 10
	jr ra
.Lfunc_end0:
	.size	iswdigit, .Lfunc_end0-iswdigit
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
