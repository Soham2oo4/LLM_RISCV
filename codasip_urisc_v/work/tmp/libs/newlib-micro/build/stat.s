	.text
	.file	"stat.c"
	.globl	stat                    //  -- Begin function stat
	.type	stat,@function
stat:                                   //  @stat
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 36 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv fp, x11
	add x11, x0, 16
	add x9, sp, 8
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x11, 8 ( sp )
	sw x10, 16 ( x9 )
	jal strlen
	sw fp, 24 ( x9 )
	sw x10, 20 ( x9 )
	// APP
	.option push 
	.option norvc 
	nop 
	.option pop
	// NO_APP
	lui x10, %hi( 4112 )
	add x10, x10, %lo( 4112 )
	sw x9, 0 ( x10 )
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
	lw fp, 36 ( sp )                //  4-byte Folded Reload
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	lw ra, 44 ( sp )                //  4-byte Folded Reload
	add sp, sp, 48
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	stat, .Lfunc_end0-stat
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
