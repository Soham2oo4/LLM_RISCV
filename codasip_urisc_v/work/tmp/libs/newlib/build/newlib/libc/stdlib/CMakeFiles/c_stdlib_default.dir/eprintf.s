	.text
	.file	"eprintf.c"
	.globl	__eprintf               //  -- Begin function __eprintf
	.type	__eprintf,@function
__eprintf:                              //  @__eprintf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	lui x14, %hi( _impure_ptr )
	add x14, x14, %lo( _impure_ptr )
	lw x14, 0 ( x14 )
	lw x14, 12 ( x14 )
	sw x12, 12 ( sp )
	sw x13, 16 ( sp )
	sw x11, 8 ( sp )
	sw x10, 4 ( sp )
	sw x14, 0 ( sp )
	jal fiprintf
	jal abort
.Lfunc_end0:
	.size	__eprintf, .Lfunc_end0-__eprintf
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
