	.text
	.file	"tzlock.c"
	.globl	__tz_lock               //  -- Begin function __tz_lock
	.type	__tz_lock,@function
__tz_lock:                              //  @__tz_lock
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__tz_lock, .Lfunc_end0-__tz_lock
	.cfi_endproc
                                        //  -- End function
	.globl	__tz_unlock             //  -- Begin function __tz_unlock
	.type	__tz_unlock,@function
__tz_unlock:                            //  @__tz_unlock
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	__tz_unlock, .Lfunc_end1-__tz_unlock
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
