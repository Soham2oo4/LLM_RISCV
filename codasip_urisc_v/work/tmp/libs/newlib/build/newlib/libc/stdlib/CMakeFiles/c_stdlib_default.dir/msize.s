	.text
	.file	"msize.c"
	.globl	malloc_usable_size      //  -- Begin function malloc_usable_size
	.type	malloc_usable_size,@function
malloc_usable_size:                     //  @malloc_usable_size
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	j _malloc_usable_size_r
.Lfunc_end0:
	.size	malloc_usable_size, .Lfunc_end0-malloc_usable_size
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
