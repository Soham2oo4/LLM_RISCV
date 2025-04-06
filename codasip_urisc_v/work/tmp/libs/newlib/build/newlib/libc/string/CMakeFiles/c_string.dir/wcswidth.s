	.text
	.file	"wcswidth.c"
	.globl	wcswidth                //  -- Begin function wcswidth
	.type	wcswidth,@function
wcswidth:                               //  @wcswidth
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
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -24
	mv x9, x11
	mv x18, x10
	mv fp, x0
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	beq x0, x18, .LBB0_9
.LBB0_1:                                //  %entry
	beq x0, x9, .LBB0_9
.LBB0_2:                                //  %do.body.preheader
	mv x20, x0
	add x19, x0, -1
	mv fp, x20
.LBB0_3:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 0 ( x18 )
	jal __wcwidth
	mv x11, x20
	blt x10, x20, .LBB0_5
.LBB0_4:                                //  %do.body
                                        //    in Loop: Header=BB0_3 Depth=1
	mv x11, x10
.LBB0_5:                                //  %do.body
                                        //    in Loop: Header=BB0_3 Depth=1
	blt x10, x0, .LBB0_6
.LBB0_7:                                //  %do.cond
                                        //    in Loop: Header=BB0_3 Depth=1
	lw x10, 0 ( x18 )
	add fp, fp, x11
	beq x0, x10, .LBB0_9
.LBB0_8:                                //  %land.rhs
                                        //    in Loop: Header=BB0_3 Depth=1
	add x18, x18, 4
	add x9, x9, -1
	bltu x0, x9, .LBB0_3
	jal x0, .LBB0_9
.LBB0_6:
	mv fp, x19
.LBB0_9:                                //  %cleanup6
	mv x10, fp
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	wcswidth, .Lfunc_end0-wcswidth
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
