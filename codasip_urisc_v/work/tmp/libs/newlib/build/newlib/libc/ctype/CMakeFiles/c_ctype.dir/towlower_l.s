	.text
	.file	"towlower_l.c"
	.globl	towlower_l              //  -- Begin function towlower_l
	.type	towlower_l,@function
towlower_l:                             //  @towlower_l
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	j towlower
.Lfunc_end0:
	.size	towlower_l, .Lfunc_end0-towlower_l
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
