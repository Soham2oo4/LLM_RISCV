	.text
	.file	"iswctype.c"
	.globl	iswctype                //  -- Begin function iswctype
	.type	iswctype,@function
iswctype:                               //  @iswctype
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	add x11, x11, -1
	add x12, x0, 11
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	bltu x12, x11, .LBB0_1
.LBB0_2:                                //  %entry
	lui x12, %hi( JTI0_0 )
	sll x11, x11, 2&31
	add x12, x12, %lo( JTI0_0 )
	add x11, x12, x11
	lw x11, 0 ( x11 )
	jr x11
.LBB0_3:                                //  %sw.bb
	jal iswalnum
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_4:                                //  %sw.bb1
	jal iswalpha
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_5:                                //  %sw.bb3
	jal iswblank
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_6:                                //  %sw.bb5
	jal iswcntrl
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_7:                                //  %sw.bb7
	jal iswdigit
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_8:                                //  %sw.bb9
	jal iswgraph
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_9:                                //  %sw.bb11
	jal iswlower
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_10:                               //  %sw.bb13
	jal iswprint
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_11:                               //  %sw.bb15
	jal iswpunct
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_12:                               //  %sw.bb17
	jal iswspace
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_13:                               //  %sw.bb19
	jal iswupper
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_14:                               //  %sw.bb21
	jal iswxdigit
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
	.size	iswctype, .Lfunc_end0-iswctype
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
