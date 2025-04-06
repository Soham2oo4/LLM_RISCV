	.text
	.file	"putchar.c"
	.globl	_putchar_r              //  -- Begin function _putchar_r
	.type	_putchar_r,@function
_putchar_r:                             //  @_putchar_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lw x12, 8 ( x10 )
	j _putc_r
.Lfunc_end0:
	.size	_putchar_r, .Lfunc_end0-_putchar_r
	.cfi_endproc
                                        //  -- End function
	.globl	putchar                 //  -- Begin function putchar
	.type	putchar,@function
putchar:                                //  @putchar
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	lw x12, 8 ( x10 )
	j _putc_r
.Lfunc_end1:
	.size	putchar, .Lfunc_end1-putchar
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
