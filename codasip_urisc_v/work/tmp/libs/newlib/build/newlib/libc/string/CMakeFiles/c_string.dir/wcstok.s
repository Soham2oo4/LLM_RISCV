	.text
	.file	"wcstok.c"
	.globl	wcstok                  //  -- Begin function wcstok
	.type	wcstok,@function
wcstok:                                 //  @wcstok
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	bltu x0, x10, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x10, 0 ( x12 )
	beq x0, x10, .LBB0_2
.LBB0_3:                                //  %cont
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_4 Depth 2
	lw x14, 0 ( x10 )
	add x13, x10, 4
	mv x15, x11
.LBB0_4:                                //  %for.cond
                                        //    Parent Loop BB0_3 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x16, 0 ( x15 )
	beq x0, x16, .LBB0_7
.LBB0_5:                                //  %for.body
                                        //    in Loop: Header=BB0_4 Depth=2
	add x15, x15, 4
	bne x14, x16, .LBB0_4
.LBB0_6:                                //    in Loop: Header=BB0_3 Depth=1
	mv x10, x13
	jal x0, .LBB0_3
.LBB0_7:                                //  %for.end
	beq x0, x14, .LBB0_8
.LBB0_9:                                //  %for.cond10
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_10 Depth 2
	lw x15, 0 ( x13 )
	add x14, x13, 4
	mv x16, x11
.LBB0_10:                               //  %do.body
                                        //    Parent Loop BB0_9 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x17, 0 ( x16 )
	beq x17, x15, .LBB0_11
.LBB0_16:                               //  %do.cond
                                        //    in Loop: Header=BB0_10 Depth=2
	add x16, x16, 4
	bltu x0, x17, .LBB0_10
.LBB0_17:                               //    in Loop: Header=BB0_9 Depth=1
	mv x13, x14
	jal x0, .LBB0_9
.LBB0_11:                               //  %if.then14
	beq x0, x15, .LBB0_12
.LBB0_13:                               //  %if.else
	sw x0, 0 ( x13 )
	sw x14, 0 ( x12 )
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_8:                                //  %if.then8
	sw x0, 0 ( x12 )
	mv x10, x0
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_12:
	mv x14, x0
	sw x14, 0 ( x12 )
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_2:                                //  %if.then
	jal __errno
	add x11, x0, 22
	sw x11, 0 ( x10 )
	mv x10, x0
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	wcstok, .Lfunc_end0-wcstok
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
