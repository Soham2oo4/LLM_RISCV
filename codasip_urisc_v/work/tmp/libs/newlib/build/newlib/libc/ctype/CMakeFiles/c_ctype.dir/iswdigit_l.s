	.text
	.file	"iswdigit_l.c"
	.globl	iswdigit_l              //  -- Begin function iswdigit_l
	.type	iswdigit_l,@function
iswdigit_l:                             //  @iswdigit_l
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x10, x10, -48
	sltiu x10, x10, 10
	jr ra
.Lfunc_end0:
	.size	iswdigit_l, .Lfunc_end0-iswdigit_l
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
