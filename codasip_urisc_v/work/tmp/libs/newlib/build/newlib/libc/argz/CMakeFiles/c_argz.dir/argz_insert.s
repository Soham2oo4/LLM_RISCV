	.text
	.file	"argz_insert.c"
	.globl	argz_insert             //  -- Begin function argz_insert
	.type	argz_insert,@function
argz_insert:                            //  @argz_insert
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
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -28
	mv x9, x13
	mv fp, x11
	mv x18, x10
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	beq x0, x12, .LBB0_1
.LBB0_2:                                //  %if.end
	lw x20, 0 ( x18 )
	add x10, x0, 22
	bltu x12, x20, .LBB0_11
.LBB0_3:                                //  %lor.lhs.false
	lw x11, 0 ( fp )
	add x11, x11, x20
	bgeu x12, x11, .LBB0_11
.LBB0_4:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	beq x20, x12, .LBB0_5
.LBB0_6:                                //  %land.rhs
                                        //    in Loop: Header=BB0_4 Depth=1
	lbu x10, -1 ( x12 )
	add x12, x12, -1
	bltu x0, x10, .LBB0_4
.LBB0_7:                                //  %land.rhs.while.end_crit_edge
	add x21, x12, 1
	jal x0, .LBB0_8
.LBB0_1:                                //  %if.then
	mv x10, x18
	mv x11, fp
	mv x12, x9
	jal argz_add
	jal x0, .LBB0_11
.LBB0_5:
	mv x21, x20
.LBB0_8:                                //  %while.end
	mv x10, x9
	jal strlen
	lw x11, 0 ( fp )
	add x19, x10, 1
	lw x10, 0 ( x18 )
	add x11, x19, x11
	jal realloc
	sw x10, 0 ( x18 )
	beq x0, x10, .LBB0_9
.LBB0_10:                               //  %if.end12
	lw x11, 0 ( fp )
	sub x20, x21, x20
	sub x12, x11, x20
	add x11, x20, x10
	add x10, x19, x11
	jal memmove
	lw x10, 0 ( x18 )
	mv x11, x9
	mv x12, x19
	add x10, x20, x10
	jal memcpy
	lw x10, 0 ( fp )
	add x10, x19, x10
	sw x10, 0 ( fp )
	mv x10, x0
	jal x0, .LBB0_11
.LBB0_9:
	add x10, x0, 12
.LBB0_11:                               //  %cleanup
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
	.size	argz_insert, .Lfunc_end0-argz_insert
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
