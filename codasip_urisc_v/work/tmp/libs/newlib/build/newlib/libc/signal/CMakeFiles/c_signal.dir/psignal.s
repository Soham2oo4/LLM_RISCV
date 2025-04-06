	.text
	.file	"psignal.c"
	.globl	psignal                 //  -- Begin function psignal
	.type	psignal,@function
psignal:                                //  @psignal
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -24
	mv fp, x10
	lui x10, %hi( _impure_ptr )
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x19, x10, %lo( _impure_ptr )
	lw x10, 0 ( x19 )
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x10, 12 ( x10 )
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	mv x9, x11
	jal fflush
	beq x0, x9, .LBB0_12
.LBB0_1:                                //  %land.lhs.true
	lbu x10, 0 ( x9 )
	beq x0, x10, .LBB0_12
.LBB0_2:                                //  %if.then
	mv x10, x9
	mv x20, x0
	jal strlen
	mv x18, x10
	bltu x0, x18, .LBB0_4
	jal x0, .LBB0_7
.LBB0_6:                                //  %while.body
                                        //    in Loop: Header=BB0_4 Depth=1
	sub x18, x18, x11
	add x9, x10, x9
	blt x10, x0, .LBB0_7
.LBB0_3:                                //  %while.cond
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x0, x18, .LBB0_7
.LBB0_4:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 0 ( x19 )
	lw x10, 12 ( x10 )
	jal fileno
	mv x11, x9
	mv x12, x18
	jal write
	mv x11, x20
	blt x10, x20, .LBB0_6
.LBB0_5:                                //  %while.body
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x11, x10
	jal x0, .LBB0_6
.LBB0_7:                                //  %while.end
	lui x10, %hi( .str )
	add x9, x10, %lo( .str )
	mv x10, x9
	jal strlen
	mv x18, x10
	mv x20, x0
	bltu x0, x18, .LBB0_9
	jal x0, .LBB0_12
.LBB0_11:                               //  %while.body15
                                        //    in Loop: Header=BB0_9 Depth=1
	sub x18, x18, x11
	add x9, x10, x9
	blt x10, x0, .LBB0_12
.LBB0_8:                                //  %while.cond13
                                        //    in Loop: Header=BB0_9 Depth=1
	beq x0, x18, .LBB0_12
.LBB0_9:                                //  %while.body15
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 0 ( x19 )
	lw x10, 12 ( x10 )
	jal fileno
	mv x11, x9
	mv x12, x18
	jal write
	mv x11, x20
	blt x10, x20, .LBB0_11
.LBB0_10:                               //  %while.body15
                                        //    in Loop: Header=BB0_9 Depth=1
	mv x11, x10
	jal x0, .LBB0_11
.LBB0_12:                               //  %if.end30
	mv x10, fp
	jal strsignal
	mv fp, x10
	jal strlen
	mv x9, x10
	mv x18, x0
	bltu x0, x9, .LBB0_14
	jal x0, .LBB0_17
.LBB0_16:                               //  %while.body37
                                        //    in Loop: Header=BB0_14 Depth=1
	sub x9, x9, x11
	add fp, x10, fp
	blt x10, x0, .LBB0_17
.LBB0_13:                               //  %while.cond35
                                        //    in Loop: Header=BB0_14 Depth=1
	beq x0, x9, .LBB0_17
.LBB0_14:                               //  %while.body37
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 0 ( x19 )
	lw x10, 12 ( x10 )
	jal fileno
	mv x11, fp
	mv x12, x9
	jal write
	mv x11, x18
	blt x10, x18, .LBB0_16
.LBB0_15:                               //  %while.body37
                                        //    in Loop: Header=BB0_14 Depth=1
	mv x11, x10
	jal x0, .LBB0_16
.LBB0_17:                               //  %while.end51
	lui x10, %hi( .str.1 )
	add fp, x10, %lo( .str.1 )
	mv x10, fp
	jal strlen
	mv x9, x10
	mv x18, x0
	bltu x0, x9, .LBB0_19
	jal x0, .LBB0_22
.LBB0_21:                               //  %while.body57
                                        //    in Loop: Header=BB0_19 Depth=1
	sub x9, x9, x11
	add fp, x10, fp
	blt x10, x0, .LBB0_22
.LBB0_18:                               //  %while.cond55
                                        //    in Loop: Header=BB0_19 Depth=1
	beq x0, x9, .LBB0_22
.LBB0_19:                               //  %while.body57
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 0 ( x19 )
	lw x10, 12 ( x10 )
	jal fileno
	mv x11, fp
	mv x12, x9
	jal write
	mv x11, x18
	blt x10, x18, .LBB0_21
.LBB0_20:                               //  %while.body57
                                        //    in Loop: Header=BB0_19 Depth=1
	mv x11, x10
	jal x0, .LBB0_21
.LBB0_22:                               //  %while.end71
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
	.size	psignal, .Lfunc_end0-psignal
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	": "
	.size	.str, 3

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"\n"
	.size	.str.1, 2


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
