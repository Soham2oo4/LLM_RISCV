	.text
	.file	"wf_jn.c"
	.globl	jnf                     //  -- Begin function jnf
	.type	jnf,@function
jnf:                                    //  @jnf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv x9, x11
	jal __ieee754_jnf
	mv fp, x10
	mv x10, x9
	mv x11, x9
	jal __unordsf2
	bltu x0, x10, .LBB0_3
.LBB0_1:                                //  %if.end
	mv x10, x9
	jal fabsf
	lui x11, %hi( 1514737627 )
	add x11, x11, %lo( 1514737627 )
	jal __gtsf2
	bge x0, x10, .LBB0_3
.LBB0_2:                                //  %if.then3
	jal __errno
	add x11, x0, 34
	sw x11, 0 ( x10 )
.LBB0_3:                                //  %cleanup
	mv x10, fp
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	jnf, .Lfunc_end0-jnf
	.cfi_endproc
                                        //  -- End function
	.globl	ynf                     //  -- Begin function ynf
	.type	ynf,@function
ynf:                                    //  @ynf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv x9, x11
	jal __ieee754_ynf
	mv fp, x10
	mv x10, x9
	mv x11, x9
	jal __unordsf2
	bltu x0, x10, .LBB1_7
.LBB1_1:                                //  %if.end
	mv x11, x0
	mv x10, x9
	jal __ltsf2
	bge x10, x0, .LBB1_3
.LBB1_2:                                //  %if.then2
	jal __errno
	add x11, x0, 33
	sw x11, 0 ( x10 )
.LBB1_3:                                //  %if.end4
	mv x11, x0
	mv x10, x9
	jal __nesf2
	add x18, x0, 34
	bltu x0, x10, .LBB1_5
.LBB1_4:                                //  %if.then6
	jal __errno
	sw x18, 0 ( x10 )
.LBB1_5:                                //  %if.end8
	lui x10, %hi( 1514737627 )
	add x11, x10, %lo( 1514737627 )
	mv x10, x9
	jal __gtsf2
	bge x0, x10, .LBB1_7
.LBB1_6:                                //  %if.then10
	jal __errno
	sw x18, 0 ( x10 )
.LBB1_7:                                //  %cleanup
	mv x10, fp
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	ynf, .Lfunc_end1-ynf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
