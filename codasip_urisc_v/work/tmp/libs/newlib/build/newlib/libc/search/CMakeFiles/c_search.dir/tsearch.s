	.text
	.file	"tsearch.c"
	.globl	tsearch                 //  -- Begin function tsearch
	.type	tsearch,@function
tsearch:                                //  @tsearch
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -32
	mv x19, x12
	mv x18, x11
	mv x9, x10
	mv fp, x0
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 22, -28
	beq x0, x18, .LBB0_11
.LBB0_1:                                //  %while.cond.preheader
	lw x10, 0 ( x18 )
	beq x0, x10, .LBB0_9
.LBB0_2:                                //  %while.body.preheader
	mv x20, x0
	add x21, x0, 8
	add x22, x0, 4
	lw x11, 0 ( x10 )
	mv x10, x9
	call.reg x19
	bltu x0, x10, .LBB0_5
	jal x0, .LBB0_4
.LBB0_7:                                //  %cleanup
                                        //    in Loop: Header=BB0_5 Depth=1
	add x18, x11, 8
	mv x10, x21
	add x10, x10, x11
	lw x10, 0 ( x10 )
	beq x0, x10, .LBB0_9
.LBB0_3:                                //  %while.body
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x11, 0 ( x10 )
	mv x10, x9
	call.reg x19
	beq x0, x10, .LBB0_4
.LBB0_5:                                //  %cleanup
                                        //  =>This Inner Loop Header: Depth=1
	lw x11, 0 ( x18 )
	bge x10, x20, .LBB0_7
.LBB0_6:                                //    in Loop: Header=BB0_5 Depth=1
	add x18, x11, 4
	mv x10, x22
	add x10, x10, x11
	lw x10, 0 ( x10 )
	bltu x0, x10, .LBB0_3
.LBB0_9:                                //  %while.end
	add x10, x0, 12
	jal malloc
	beq x0, x10, .LBB0_11
.LBB0_10:                               //  %if.then8
	mv fp, x10
	sw x10, 0 ( x18 )
	sw x9, 0 ( x10 )
	sw x0, 8 ( x10 )
	sw x0, 4 ( x10 )
	jal x0, .LBB0_11
.LBB0_4:                                //  %cleanup.thread
	lw fp, 0 ( x18 )
.LBB0_11:                               //  %cleanup13
	mv x10, fp
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x22, 4 ( sp )                //  4-byte Folded Reload
	lw x21, 8 ( sp )                //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	tsearch, .Lfunc_end0-tsearch
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
