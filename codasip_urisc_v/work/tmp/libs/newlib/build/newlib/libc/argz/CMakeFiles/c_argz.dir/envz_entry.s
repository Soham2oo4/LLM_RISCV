	.text
	.file	"envz_entry.c"
	.globl	envz_entry              //  -- Begin function envz_entry
	.type	envz_entry,@function
envz_entry:                             //  @envz_entry
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
	sw fp, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -24
	mv fp, x10
	mv x18, x12
	mv x9, x0
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw fp, 20 ( sp )
	sw x11, 16 ( sp )
	beq x0, x11, .LBB0_13
.LBB0_1:                                //  %while.body.preheader
	add x19, sp, 20
	add x20, sp, 16
	jal x0, .LBB0_2
.LBB0_12:                               //  %if.end24
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x10, 16 ( sp )
	beq x0, x10, .LBB0_13
.LBB0_2:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x18
	mv x11, x19
	mv x12, x20
	jal _buf_findstr
	beq x0, x10, .LBB0_12
.LBB0_3:                                //  %while.body
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x10, 20 ( sp )
	beq x0, x10, .LBB0_12
.LBB0_4:                                //  %if.then3
                                        //    in Loop: Header=BB0_2 Depth=1
	lbu x11, 0 ( x10 )
	xor x12, x11, 61
	beq x0, x12, .LBB0_6
.LBB0_5:                                //  %if.then3
                                        //    in Loop: Header=BB0_2 Depth=1
	bltu x0, x11, .LBB0_12
.LBB0_6:                                //  %while.cond9.preheader
	add x11, x10, -1
.LBB0_7:                                //  %while.cond9
                                        //  =>This Inner Loop Header: Depth=1
	sw x11, 20 ( sp )
	lbu x12, 0 ( x11 )
	add x10, x11, -1
	beq fp, x11, .LBB0_9
.LBB0_8:                                //  %while.cond9
                                        //    in Loop: Header=BB0_7 Depth=1
	mv x11, x10
	bltu x0, x12, .LBB0_7
.LBB0_9:                                //  %while.end
	beq x0, x12, .LBB0_11
.LBB0_10:
	add x9, x10, 1
	jal x0, .LBB0_13
.LBB0_11:                               //  %if.then20
	add x9, x10, 2
	sw x9, 20 ( sp )
.LBB0_13:                               //  %cleanup
	mv x10, x9
	lw fp, 24 ( sp )                //  4-byte Folded Reload
	lw x20, 28 ( sp )               //  4-byte Folded Reload
	lw x19, 32 ( sp )               //  4-byte Folded Reload
	lw x18, 36 ( sp )               //  4-byte Folded Reload
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	lw ra, 44 ( sp )                //  4-byte Folded Reload
	add sp, sp, 48
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	envz_entry, .Lfunc_end0-envz_entry
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
