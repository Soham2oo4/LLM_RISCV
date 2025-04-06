	.text
	.file	"quick_exit.c"
	.globl	at_quick_exit           //  -- Begin function at_quick_exit
	.type	at_quick_exit,@function
at_quick_exit:                          //  @at_quick_exit
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -8
	mv fp, x10
	add x10, x0, 8
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal malloc
	beq x0, x10, .LBB0_1
.LBB0_2:                                //  %if.end
	lui x11, %hi( handlers )
	add x11, x11, %lo( handlers )
	lw x12, 0 ( x11 )
	sw fp, 4 ( x10 )
	sw x10, 0 ( x11 )
	sw x12, 0 ( x10 )
	mv x10, x0
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_1:
	seqz x10, x0
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	at_quick_exit, .Lfunc_end0-at_quick_exit
	.cfi_endproc
                                        //  -- End function
	.globl	quick_exit              //  -- Begin function quick_exit
	.type	quick_exit,@function
quick_exit:                             //  @quick_exit
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv fp, x10
	lui x10, %hi( handlers )
	add x10, x10, %lo( handlers )
	lw x9, 0 ( x10 )
	beq x0, x9, .LBB1_2
.LBB1_1:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 4 ( x9 )
	call.reg x10
	lw x9, 0 ( x9 )
	bltu x0, x9, .LBB1_1
.LBB1_2:                                //  %for.end
	mv x10, fp
	jal _exit
.Lfunc_end1:
	.size	quick_exit, .Lfunc_end1-quick_exit
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	handlers,@object        //  @handlers
	.local	handlers
	.comm	handlers,4,4

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
