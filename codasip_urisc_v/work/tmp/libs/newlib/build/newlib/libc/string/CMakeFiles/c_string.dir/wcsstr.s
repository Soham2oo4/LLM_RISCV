	.text
	.file	"wcsstr.c"
	.globl	wcsstr                  //  -- Begin function wcsstr
	.type	wcsstr,@function
wcsstr:                                 //  @wcsstr
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv fp, x10
	lw x10, 0 ( x9 )
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	beq x0, x10, .LBB0_11
.LBB0_1:                                //  %if.end
	mv x10, fp
	jal wcslen
	mv x18, x10
	mv x10, x9
	jal wcslen
	mv x11, x0
	bltu x18, x10, .LBB0_10
.LBB0_2:                                //  %while.cond.preheader
	lw x13, 0 ( fp )
	beq x0, x13, .LBB0_10
.LBB0_3:                                //  %while.cond5.preheader.lr.ph
	lw x10, 0 ( x9 )
	beq x0, x10, .LBB0_11
.LBB0_4:                                //  %while.cond5.preheader.preheader
	add x12, x0, 4
	beq x13, x10, .LBB0_6
.LBB0_9:                                //  %if.end14
                                        //  =>This Inner Loop Header: Depth=1
	lw x13, 4 ( fp )
	add x14, fp, 4
	mv fp, x14
	beq x0, x13, .LBB0_10
.LBB0_5:                                //  %while.cond5.preheader
                                        //    in Loop: Header=BB0_9 Depth=1
	bne x13, x10, .LBB0_9
.LBB0_6:                                //  %if.end10.preheader
	mv x13, x12
.LBB0_7:                                //  %if.end10
                                        //  =>This Inner Loop Header: Depth=1
	add x14, x13, x9
	lw x14, 0 ( x14 )
	beq x0, x14, .LBB0_11
.LBB0_8:                                //  %if.end10.while.body7_crit_edge
                                        //    in Loop: Header=BB0_7 Depth=1
	add x15, x13, fp
	lw x15, 0 ( x15 )
	add x13, x13, 4
	beq x15, x14, .LBB0_7
	jal x0, .LBB0_9
.LBB0_10:
	mv fp, x11
.LBB0_11:                               //  %cleanup
	mv x10, fp
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	wcsstr, .Lfunc_end0-wcsstr
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
