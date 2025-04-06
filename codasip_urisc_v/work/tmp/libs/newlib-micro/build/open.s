	.text
	.file	"open.c"
	.globl	open                    //  -- Begin function open
	.type	open,@function
open:                                   //  @open
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	add x10, x0, 3
	sw x10, 12 ( sp )
	lw x10, 48 ( sp )
	sw fp, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -8
	add fp, sp, 12
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x10, 16 ( fp )
	jal strlen
	lw x11, 52 ( sp )
	sw x10, 20 ( fp )
	sw x11, 24 ( fp )
	// APP
	.option push 
	.option norvc 
	nop 
	.option pop
	// NO_APP
	lui x10, %hi( 4112 )
	add x10, x10, %lo( 4112 )
	sw fp, 0 ( x10 )
	// APP
	.option push 
	.option norvc 
	nop 
	.option pop
	// NO_APP
	lw x10, 20 ( sp )
	beq x0, x10, .LBB0_2
.LBB0_1:                                //  %if.then
	lw x10, 24 ( sp )
	lui x11, %hi( errno )
	add x11, x11, %lo( errno )
	sw x10, 0 ( x11 )
.LBB0_2:                                //  %do.end
	lw x10, 16 ( sp )
	lw fp, 40 ( sp )                //  4-byte Folded Reload
	lw ra, 44 ( sp )                //  4-byte Folded Reload
	add sp, sp, 48
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	open, .Lfunc_end0-open
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
