	.text
	.file	"msizer.c"
	.globl	_malloc_usable_size_r   //  -- Begin function _malloc_usable_size_r
	.type	_malloc_usable_size_r,@function
_malloc_usable_size_r:                  //  @_malloc_usable_size_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lw x10, -4 ( x11 )
	blt x10, x0, .LBB0_1
.LBB0_2:                                //  %if.end
	add x10, x10, -4
	jr ra
.LBB0_1:                                //  %if.then
	add x11, x11, -4
	add x11, x10, x11
	lw x11, 0 ( x11 )
	add x10, x11, x10
	add x10, x10, -4
	jr ra
.Lfunc_end0:
	.size	_malloc_usable_size_r, .Lfunc_end0-_malloc_usable_size_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
