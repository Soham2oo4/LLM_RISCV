	.text
	.file	"iswctype_l.c"
	.globl	iswctype_l              //  -- Begin function iswctype_l
	.type	iswctype_l,@function
iswctype_l:                             //  @iswctype_l
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	add x11, x11, -1
	add x13, x0, 11
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	bltu x13, x11, .LBB0_1
.LBB0_2:                                //  %entry
	lui x13, %hi( JTI0_0 )
	sll x11, x11, 2&31
	add x13, x13, %lo( JTI0_0 )
	add x11, x13, x11
	lw x11, 0 ( x11 )
	jr x11
.LBB0_3:                                //  %sw.bb
	mv x11, x12
	jal iswalnum_l
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_4:                                //  %sw.bb1
	mv x11, x12
	jal iswalpha_l
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_5:                                //  %sw.bb3
	mv x11, x12
	jal iswblank_l
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_6:                                //  %sw.bb5
	mv x11, x12
	jal iswcntrl_l
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_7:                                //  %sw.bb7
	mv x11, x12
	jal iswdigit_l
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_8:                                //  %sw.bb9
	mv x11, x12
	jal iswgraph_l
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_9:                                //  %sw.bb11
	mv x11, x12
	jal iswlower_l
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_10:                               //  %sw.bb13
	mv x11, x12
	jal iswprint_l
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_11:                               //  %sw.bb15
	mv x11, x12
	jal iswpunct_l
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_12:                               //  %sw.bb17
	mv x11, x12
	jal iswspace_l
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_13:                               //  %sw.bb19
	mv x11, x12
	jal iswupper_l
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_14:                               //  %sw.bb21
	mv x11, x12
	jal iswxdigit_l
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_1:
	mv x10, x0
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	iswctype_l, .Lfunc_end0-iswctype_l
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_3
	.long	.LBB0_4
	.long	.LBB0_5
	.long	.LBB0_6
	.long	.LBB0_7
	.long	.LBB0_8
	.long	.LBB0_9
	.long	.LBB0_10
	.long	.LBB0_11
	.long	.LBB0_12
	.long	.LBB0_13
	.long	.LBB0_14
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
