	.text
	.file	"tdelete.c"
	.globl	tdelete                 //  -- Begin function tdelete
	.type	tdelete,@function
tdelete:                                //  @tdelete
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -36
	mv x18, x12
	mv fp, x11
	mv x19, x10
	mv x9, x0
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	beq x0, fp, .LBB0_19
.LBB0_1:                                //  %lor.lhs.false
	lw x20, 0 ( fp )
	beq x0, x20, .LBB0_19
.LBB0_2:                                //  %while.cond.preheader
	lw x11, 0 ( x20 )
	mv x10, x19
	call.reg x18
	lw x11, 0 ( fp )
	beq x0, x10, .LBB0_3
.LBB0_7:
	mv x20, x0
	add x21, x0, 8
	add x22, x0, 4
.LBB0_9:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	mv x9, x11
	blt x10, x20, .LBB0_10
.LBB0_11:                               //  %while.body
                                        //    in Loop: Header=BB0_9 Depth=1
	add fp, x9, 8
	mv x10, x21
	add x23, x10, x9
	lw x10, 0 ( x23 )
	bltu x0, x10, .LBB0_8
	jal x0, .LBB0_13
.LBB0_10:                               //    in Loop: Header=BB0_9 Depth=1
	add fp, x9, 4
	mv x10, x22
	add x23, x10, x9
	lw x10, 0 ( x23 )
	beq x0, x10, .LBB0_13
.LBB0_8:                                //  %while.cond
                                        //    in Loop: Header=BB0_9 Depth=1
	lw x11, 0 ( x10 )
	mv x10, x19
	call.reg x18
	lw x11, 0 ( x23 )
	bltu x0, x10, .LBB0_9
.LBB0_4:                                //  %while.end
	lw x18, 8 ( x11 )
	lw x11, 4 ( x11 )
	beq x0, x11, .LBB0_18
.LBB0_5:                                //  %if.else
	beq x0, x18, .LBB0_6
.LBB0_14:                               //  %if.then13
	lw x10, 4 ( x18 )
	beq x0, x10, .LBB0_15
.LBB0_16:                               //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	mv x11, x18
	mv x18, x10
	lw x10, 4 ( x18 )
	bltu x0, x10, .LBB0_16
.LBB0_17:                               //  %for.end
	lw x10, 8 ( x18 )
	sw x10, 4 ( x11 )
	lw x10, 0 ( fp )
	lw x10, 4 ( x10 )
	sw x10, 4 ( x18 )
	lw x10, 0 ( fp )
	lw x10, 8 ( x10 )
	sw x10, 8 ( x18 )
	jal x0, .LBB0_18
.LBB0_3:
	mv x9, x20
	lw x18, 8 ( x11 )
	lw x11, 4 ( x11 )
	bltu x0, x11, .LBB0_5
	jal x0, .LBB0_18
.LBB0_13:
	mv x9, x20
	jal x0, .LBB0_19
.LBB0_6:
	mv x18, x11
	jal x0, .LBB0_18
.LBB0_15:                               //  %if.then16
	sw x11, 4 ( x18 )
.LBB0_18:                               //  %if.end31
	lw x10, 0 ( fp )
	jal free
	sw x18, 0 ( fp )
.LBB0_19:                               //  %cleanup
	mv x10, x9
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x23, 16 ( sp )               //  4-byte Folded Reload
	lw x22, 20 ( sp )               //  4-byte Folded Reload
	lw x21, 24 ( sp )               //  4-byte Folded Reload
	lw x20, 28 ( sp )               //  4-byte Folded Reload
	lw x19, 32 ( sp )               //  4-byte Folded Reload
	lw x18, 36 ( sp )               //  4-byte Folded Reload
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	lw ra, 44 ( sp )                //  4-byte Folded Reload
	add sp, sp, 48
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	tdelete, .Lfunc_end0-tdelete
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
