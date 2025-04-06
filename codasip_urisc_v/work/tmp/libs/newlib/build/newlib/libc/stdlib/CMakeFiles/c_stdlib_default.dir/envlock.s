	.text
	.file	"envlock.c"
	.globl	__env_lock              //  -- Begin function __env_lock
	.type	__env_lock,@function
__env_lock:                             //  @__env_lock
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__env_lock, .Lfunc_end0-__env_lock
	.cfi_endproc
                                        //  -- End function
	.globl	__env_unlock            //  -- Begin function __env_unlock
	.type	__env_unlock,@function
__env_unlock:                           //  @__env_unlock
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	__env_unlock, .Lfunc_end1-__env_unlock
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
