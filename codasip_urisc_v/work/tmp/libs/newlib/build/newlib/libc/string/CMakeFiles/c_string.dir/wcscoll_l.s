	.text
	.file	"wcscoll_l.c"
	.globl	wcscoll_l               //  -- Begin function wcscoll_l
	.type	wcscoll_l,@function
wcscoll_l:                              //  @wcscoll_l
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	j wcscmp
.Lfunc_end0:
	.size	wcscoll_l, .Lfunc_end0-wcscoll_l
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
