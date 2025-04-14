	.text
	.file	"bsearch.c"
	.globl	bsearch                 //  -- Begin function bsearch
	.type	bsearch,@function
bsearch:                                //  @bsearch
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
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -40
	mv fp, x14
	mv x9, x13
	mv x19, x12
	mv x18, x11
	mv x20, x10
	mv x21, x0
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	beq x0, x9, .LBB0_9
.LBB0_1:                                //  %entry
	beq x0, x19, .LBB0_9
.LBB0_2:                                //  %while.body.preheader
	mv x22, x0
	mv x23, x22
	jal x0, .LBB0_3
.LBB0_4:                                //    in Loop: Header=BB0_3 Depth=1
	mv x19, x24
	bgeu x23, x19, .LBB0_8
.LBB0_3:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x10, x19, x23
	srl x24, x10, 1&31
	hackaton_custom_instr_c x10, x9, x24
	add x21, x10, x18
	mv x10, x20
	mv x11, x21
	call.reg fp
	blt x10, x0, .LBB0_4
.LBB0_5:                                //  %if.else
                                        //    in Loop: Header=BB0_3 Depth=1
	beq x0, x10, .LBB0_9
.LBB0_6:                                //  %if.then6
                                        //    in Loop: Header=BB0_3 Depth=1
	add x23, x24, 1
	bltu x23, x19, .LBB0_3
.LBB0_8:
	mv x21, x22
.LBB0_9:                                //  %cleanup
	mv x10, x21
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
	.size	bsearch, .Lfunc_end0-bsearch
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
