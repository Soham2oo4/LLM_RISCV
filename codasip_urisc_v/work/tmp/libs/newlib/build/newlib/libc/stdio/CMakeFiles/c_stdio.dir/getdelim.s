	.text
	.file	"getdelim.c"
	.globl	__getdelim              //  -- Begin function __getdelim
	.type	__getdelim,@function
__getdelim:                             //  @__getdelim
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
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	mv x9, x13
	mv x18, x12
	mv x19, x11
	mv x20, x10
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -40
	beq x0, x19, .LBB0_3
.LBB0_1:                                //  %entry
	beq x0, x20, .LBB0_3
.LBB0_2:                                //  %entry
	beq x0, x9, .LBB0_3
.LBB0_4:                                //  %if.end
	lw x21, 0 ( x20 )
	add fp, x0, -1
	beq x0, x21, .LBB0_6
.LBB0_5:                                //  %lor.lhs.false5
	lw x22, 0 ( x19 )
	add x10, x0, 3
	bltu x10, x22, .LBB0_8
.LBB0_6:                                //  %if.then7
	add x22, x0, 128
	mv x10, x21
	mv x11, x22
	jal realloc
	mv x21, x10
	beq x0, x21, .LBB0_20
.LBB0_7:                                //  %if.end11
	sw x21, 0 ( x20 )
	sw x22, 0 ( x19 )
.LBB0_8:                                //  %do.body
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	beq x0, x10, .LBB0_11
.LBB0_9:                                //  %land.lhs.true
	lw x11, 56 ( x10 )
	bltu x0, x11, .LBB0_11
.LBB0_10:                               //  %if.then14
	jal __sinit
	lw x22, 0 ( x19 )
.LBB0_11:                               //  %while.cond22.preheader.preheader
	mv x24, x0
	mv x23, x21
.LBB0_12:                               //  %while.cond22.preheader
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_13 Depth 2
	add x22, x22, -1
.LBB0_13:                               //  %while.cond22
                                        //    Parent Loop BB0_12 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	beq x0, x22, .LBB0_16
.LBB0_14:                               //  %while.body25
                                        //    in Loop: Header=BB0_13 Depth=2
	mv x10, x9
	jal getc_unlocked
	xor x11, x10, -1
	beq x0, x11, .LBB0_18
.LBB0_15:                               //  %if.else
                                        //    in Loop: Header=BB0_13 Depth=2
	sb x10, 0 ( x23 )
	add x22, x22, -1
	add x23, x23, 1
	bne x10, x18, .LBB0_13
	jal x0, .LBB0_18
.LBB0_16:                               //  %if.then37
                                        //    in Loop: Header=BB0_12 Depth=1
	lw x10, 0 ( x19 )
	sll x22, x10, 1&31
	mv x10, x21
	mv x11, x22
	jal realloc
	beq x0, x10, .LBB0_17
.LBB0_21:                               //  %if.end43
                                        //    in Loop: Header=BB0_12 Depth=1
	sub x11, x23, x21
	sw x22, 0 ( x19 )
	sw x10, 0 ( x20 )
	sub x22, x22, x11
	add x23, x11, x10
	mv x21, x10
	jal x0, .LBB0_12
.LBB0_3:                                //  %if.then
	jal __errno
	add x11, x0, 22
	sw x11, 0 ( x10 )
	add fp, x0, -1
	jal x0, .LBB0_20
.LBB0_17:
	mv x21, x24
.LBB0_18:                               //  %while.end44
	beq x23, x21, .LBB0_20
.LBB0_19:                               //  %if.end60
	sub fp, x23, x21
	sb x0, 0 ( x23 )
.LBB0_20:                               //  %cleanup
	mv x10, fp
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
	.size	__getdelim, .Lfunc_end0-__getdelim
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
