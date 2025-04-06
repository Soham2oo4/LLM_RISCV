	.text
	.file	"envz_merge.c"
	.globl	envz_merge              //  -- Begin function envz_merge
	.type	envz_merge,@function
envz_merge:                             //  @envz_merge
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -40
	mv fp, x13
	mv x9, x12
	mv x22, x0
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv x18, x11
	mv x19, x10
	mv x10, x9
	mv x11, fp
	mv x12, x22
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	mv x21, x14
	jal argz_next
	mv x20, x10
	beq x0, x20, .LBB0_14
.LBB0_1:                                //  %while.body.lr.ph
	beq x0, x21, .LBB0_7
.LBB0_2:
	add x21, x0, 61
	mv x24, x0
.LBB0_3:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x20
	jal strdup
	mv x11, x21
	mv x23, x10
	jal strchr
	mv x13, x24
	beq x0, x10, .LBB0_5
.LBB0_4:                                //  %if.then17
                                        //    in Loop: Header=BB0_3 Depth=1
	add x13, x10, 1
	sb x0, 0 ( x10 )
.LBB0_5:                                //  %if.end19
                                        //    in Loop: Header=BB0_3 Depth=1
	mv x10, x19
	mv x11, x18
	mv x12, x23
	jal envz_add
	mv x22, x10
	mv x10, x23
	jal free
	mv x10, x9
	mv x11, fp
	mv x12, x20
	jal argz_next
	mv x20, x10
	bltu x0, x22, .LBB0_14
.LBB0_6:                                //  %if.end19
                                        //    in Loop: Header=BB0_3 Depth=1
	bltu x0, x20, .LBB0_3
	jal x0, .LBB0_14
.LBB0_7:                                //  %while.body.us.preheader
	add x21, x0, 61
	mv x24, x0
.LBB0_8:                                //  %while.body.us
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x20
	jal strdup
	mv x11, x21
	mv x23, x10
	jal strchr
	beq x0, x10, .LBB0_10
.LBB0_9:                                //  %if.then8.us
                                        //    in Loop: Header=BB0_8 Depth=1
	sb x0, 0 ( x10 )
.LBB0_10:                               //  %if.end.us
                                        //    in Loop: Header=BB0_8 Depth=1
	lw x11, 0 ( x18 )
	lw x10, 0 ( x19 )
	mv x12, x23
	jal envz_entry
	mv x22, x24
	bltu x0, x10, .LBB0_12
.LBB0_11:                               //  %if.then11.us
                                        //    in Loop: Header=BB0_8 Depth=1
	mv x10, x19
	mv x11, x18
	mv x12, x20
	jal argz_add
	mv x22, x10
.LBB0_12:                               //  %if.end13.us
                                        //    in Loop: Header=BB0_8 Depth=1
	mv x10, x23
	jal free
	mv x10, x9
	mv x11, fp
	mv x12, x20
	jal argz_next
	mv x20, x10
	bltu x0, x22, .LBB0_14
.LBB0_13:                               //  %if.end13.us
                                        //    in Loop: Header=BB0_8 Depth=1
	bltu x0, x20, .LBB0_8
.LBB0_14:                               //  %while.end
	mv x10, x22
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw x24, 12 ( sp )               //  4-byte Folded Reload
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
	.size	envz_merge, .Lfunc_end0-envz_merge
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
