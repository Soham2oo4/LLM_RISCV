	.text
	.file	"mlock.c"
	.globl	__malloc_lock           //  -- Begin function __malloc_lock
	.type	__malloc_lock,@function
__malloc_lock:                          //  @__malloc_lock
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__malloc_lock, .Lfunc_end0-__malloc_lock
	.cfi_endproc
                                        //  -- End function
	.globl	__malloc_unlock         //  -- Begin function __malloc_unlock
	.type	__malloc_unlock,@function
__malloc_unlock:                        //  @__malloc_unlock
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	__malloc_unlock, .Lfunc_end1-__malloc_unlock
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
