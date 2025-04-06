	.text
	.file	"fstat.c"
	.globl	fstat                   //  -- Begin function fstat
	.type	fstat,@function
fstat:                                  //  @fstat
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	add x12, sp, 8
	sw x10, 16 ( x12 )
	add x10, x0, 6
	sw x11, 20 ( x12 )
	sw x10, 8 ( sp )
	// APP
	.option push 
	.option norvc 
	nop 
	.option pop
	// NO_APP
	lui x10, %hi( 4112 )
	add x10, x10, %lo( 4112 )
	sw x12, 0 ( x10 )
	// APP
	.option push 
	.option norvc 
	nop 
	.option pop
	// NO_APP
	lw x10, 16 ( sp )
	beq x0, x10, .LBB0_2
.LBB0_1:                                //  %if.then
	lw x10, 20 ( sp )
	lui x11, %hi( errno )
	add x11, x11, %lo( errno )
	sw x10, 0 ( x11 )
.LBB0_2:                                //  %do.end
	lw x10, 12 ( sp )
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	fstat, .Lfunc_end0-fstat
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
