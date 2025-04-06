	.text
	.file	"tfind.c"
	.globl	tfind                   //  -- Begin function tfind
	.type	tfind,@function
tfind:                                  //  @tfind
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
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -28
	mv x9, x12
	mv x19, x11
	mv x18, x10
	mv fp, x0
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	beq x0, x19, .LBB0_9
.LBB0_1:                                //  %while.cond.preheader
	lw x10, 0 ( x19 )
	beq x0, x10, .LBB0_9
.LBB0_2:                                //  %while.body.preheader
	mv fp, x0
	add x20, x0, 8
	add x21, x0, 4
	lw x11, 0 ( x10 )
	mv x10, x18
	call.reg x9
	bltu x0, x10, .LBB0_5
	jal x0, .LBB0_4
.LBB0_7:                                //  %cleanup
                                        //    in Loop: Header=BB0_5 Depth=1
	add x19, x11, 8
	mv x10, x20
	add x10, x10, x11
	lw x10, 0 ( x10 )
	beq x0, x10, .LBB0_9
.LBB0_3:                                //  %while.body
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x11, 0 ( x10 )
	mv x10, x18
	call.reg x9
	beq x0, x10, .LBB0_4
.LBB0_5:                                //  %cleanup
                                        //  =>This Inner Loop Header: Depth=1
	lw x11, 0 ( x19 )
	bge x10, fp, .LBB0_7
.LBB0_6:                                //    in Loop: Header=BB0_5 Depth=1
	add x19, x11, 4
	mv x10, x21
	add x10, x10, x11
	lw x10, 0 ( x10 )
	bltu x0, x10, .LBB0_3
	jal x0, .LBB0_9
.LBB0_4:                                //  %cleanup.thread
	lw fp, 0 ( x19 )
.LBB0_9:                                //  %cleanup6
	mv x10, fp
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
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
	.size	tfind, .Lfunc_end0-tfind
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
