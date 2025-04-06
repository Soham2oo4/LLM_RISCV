	.text
	.file	"gettimeofday.c"
	.globl	gettimeofday            //  -- Begin function gettimeofday
	.type	gettimeofday,@function
gettimeofday:                           //  @gettimeofday
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw fp, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -8
	mv fp, x10
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x11, .LBB0_2
.LBB0_1:                                //  %if.then
	jal abort
.LBB0_2:                                //  %if.end
	add x10, x0, 11
	sw x10, 12 ( sp )
	// APP
	.option push 
	.option norvc 
	nop 
	.option pop
	// NO_APP
	lui x10, %hi( 4112 )
	add x11, x10, %lo( 4112 )
	add x10, sp, 12
	sw x10, 0 ( x11 )
	// APP
	.option push 
	.option norvc 
	nop 
	.option pop
	// NO_APP
	lw x11, 24 ( sp )
	beq x0, x11, .LBB0_4
.LBB0_3:                                //  %if.then1
	lw x11, 28 ( sp )
	lui x12, %hi( errno )
	add x12, x12, %lo( errno )
	sw x11, 0 ( x12 )
.LBB0_4:                                //  %do.end
	lw x11, 20 ( x10 )
	lw x10, 24 ( x10 )
	sw x0, 4 ( fp )
	lw ra, 44 ( sp )                //  4-byte Folded Reload
	sw x11, 0 ( fp )
	sw x10, 8 ( fp )
	lw x10, 20 ( sp )
	lw fp, 40 ( sp )                //  4-byte Folded Reload
	add sp, sp, 48
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	gettimeofday, .Lfunc_end0-gettimeofday
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
