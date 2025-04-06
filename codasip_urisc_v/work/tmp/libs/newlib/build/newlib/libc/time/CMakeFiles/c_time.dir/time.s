	.text
	.file	"time.c"
	.globl	time                    //  -- Begin function time
	.type	time,@function
time:                                   //  @time
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -8
	mv fp, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	add x11, sp, 12
	mv x12, x0
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal _gettimeofday_r
	blt x10, x0, .LBB0_1
.LBB0_2:                                //  %if.end
	lw x11, 16 ( sp )
	lw x10, 12 ( sp )
	beq x0, fp, .LBB0_4
.LBB0_3:                                //  %if.then1
	sw x10, 0 ( fp )
	sw x11, 4 ( fp )
.LBB0_4:                                //  %if.end3
	lw fp, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_1:                                //  %if.then
	add x10, x0, -1
	sw x10, 16 ( sp )
	sw x10, 12 ( sp )
	lw x11, 16 ( sp )
	lw x10, 12 ( sp )
	bltu x0, fp, .LBB0_3
	jal x0, .LBB0_4
.Lfunc_end0:
	.size	time, .Lfunc_end0-time
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
