	.text
	.file	"getline.c"
	.globl	__getline               //  -- Begin function __getline
	.type	__getline,@function
__getline:                              //  @__getline
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x13, x12
	add x12, x0, 10
	j __getdelim
.Lfunc_end0:
	.size	__getline, .Lfunc_end0-__getline
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
