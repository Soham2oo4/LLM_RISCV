	.text
	.file	"times.c"
	.globl	times                   //  -- Begin function times
	.type	times,@function
times:                                  //  @times
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	add x11, x0, 18
	sw x11, 12 ( sp )
	// APP
	.option push 
	.option norvc 
	nop 
	.option pop
	// NO_APP
	lui x11, %hi( 4112 )
	add x12, x11, %lo( 4112 )
	add x11, sp, 12
	sw x11, 0 ( x12 )
	// APP
	.option push 
	.option norvc 
	nop 
	.option pop
	// NO_APP
	lw x12, 24 ( sp )
	beq x0, x12, .LBB0_2
.LBB0_1:                                //  %if.then
	lw x12, 28 ( sp )
	lui x13, %hi( errno )
	add x13, x13, %lo( errno )
	sw x12, 0 ( x13 )
.LBB0_2:                                //  %do.end
	lw x12, 20 ( x11 )
	sw x12, 0 ( x10 )
	lw x12, 24 ( x11 )
	sw x12, 4 ( x10 )
	lw x12, 28 ( x11 )
	lw x11, 32 ( x11 )
	sw x12, 8 ( x10 )
	sw x11, 12 ( x10 )
	lw x10, 20 ( sp )
	add sp, sp, 48
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	times, .Lfunc_end0-times
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
