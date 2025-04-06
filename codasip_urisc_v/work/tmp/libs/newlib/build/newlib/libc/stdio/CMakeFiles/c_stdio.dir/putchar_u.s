	.text
	.file	"putchar_u.c"
	.globl	_putchar_unlocked_r     //  -- Begin function _putchar_unlocked_r
	.type	_putchar_unlocked_r,@function
_putchar_unlocked_r:                    //  @_putchar_unlocked_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x12, x11
	lw x11, 8 ( x10 )
	mv x10, x12
	j putc_unlocked
.Lfunc_end0:
	.size	_putchar_unlocked_r, .Lfunc_end0-_putchar_unlocked_r
	.cfi_endproc
                                        //  -- End function
	.globl	putchar_unlocked        //  -- Begin function putchar_unlocked
	.type	putchar_unlocked,@function
putchar_unlocked:                       //  @putchar_unlocked
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x11, %hi( _impure_ptr )
	add x11, x11, %lo( _impure_ptr )
	lw x11, 0 ( x11 )
	lw x11, 8 ( x11 )
	j putc_unlocked
.Lfunc_end1:
	.size	putchar_unlocked, .Lfunc_end1-putchar_unlocked
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
