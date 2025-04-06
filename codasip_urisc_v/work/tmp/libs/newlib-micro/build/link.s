	.text
	.file	"link.c"
	.globl	link                    //  -- Begin function link
	.type	link,@function
link:                                   //  @link
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	add x10, x0, 14
	sw x10, 12 ( sp )
	// APP
	.option push 
	.option norvc 
	nop 
	.option pop
	// NO_APP
	lui x10, %hi( 4112 )
	add x10, x10, %lo( 4112 )
	add x11, sp, 12
	sw x11, 0 ( x10 )
	// APP
	.option push 
	.option norvc 
	nop 
	.option pop
	// NO_APP
	lui x10, %hi( errno )
	add x10, x10, %lo( errno )
	add x11, x0, 88
	sw x11, 0 ( x10 )
	add x10, x0, -1
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	link, .Lfunc_end0-link
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
