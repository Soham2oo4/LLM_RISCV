	.text
	.file	"malloc.c"
	.globl	malloc                  //  -- Begin function malloc
	.type	malloc,@function
malloc:                                 //  @malloc
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	j _malloc_r
.Lfunc_end0:
	.size	malloc, .Lfunc_end0-malloc
	.cfi_endproc
                                        //  -- End function
	.globl	free                    //  -- Begin function free
	.type	free,@function
free:                                   //  @free
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	j _free_r
.Lfunc_end1:
	.size	free, .Lfunc_end1-free
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
