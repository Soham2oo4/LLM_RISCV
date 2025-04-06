	.text
	.file	"stat.c"
	.globl	stat                    //  -- Begin function stat
	.type	stat,@function
stat:                                   //  @stat
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x10, %hi( errno )
	add x10, x10, %lo( errno )
	add x11, x0, 88
	sw x11, 0 ( x10 )
	add x10, x0, -1
	jr ra
.Lfunc_end0:
	.size	stat, .Lfunc_end0-stat
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
