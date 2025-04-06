	.text
	.file	"wf_scalb.c"
	.globl	scalbf                  //  -- Begin function scalbf
	.type	scalbf,@function
scalbf:                                 //  @scalbf
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
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv x18, x11
	mv x9, x10
	jal __ieee754_scalbf
	mv fp, x10
	jal finitef
	mv x19, x10
	mv x10, fp
	mv x11, fp
	jal __unordsf2
	bltu x0, x10, .LBB0_6
.LBB0_1:                                //  %entry
	bltu x0, x19, .LBB0_6
.LBB0_2:                                //  %land.lhs.true
	mv x10, x9
	jal finitef
	beq x0, x10, .LBB0_6
.LBB0_3:                                //  %if.then
	mv fp, x0
	mv x10, x9
	mv x11, fp
	jal __gtsf2
	blt fp, x10, .LBB0_4
.LBB0_5:                                //  %if.then
	lui x10, %hi( -8388608 )
	add fp, x10, %lo( -8388608 )
	jal x0, .LBB0_10
.LBB0_6:                                //  %if.end
	mv x11, x0
	mv x10, fp
	jal __nesf2
	bltu x0, x10, .LBB0_9
.LBB0_7:                                //  %if.end
	mv x10, fp
	mv x11, x9
	jal __eqsf2
	beq x0, x10, .LBB0_9
.LBB0_8:                                //  %if.then12
	jal __errno
	add x11, x0, 34
	sw x11, 0 ( x10 )
	mv x10, x9
	jal __extendsfdf2
	mv x12, x10
	mv x10, x0
	mv x13, x11
	mv x11, x10
	jal copysign
	jal __truncdfsf2
	mv fp, x10
	jal x0, .LBB0_11
.LBB0_9:                                //  %if.end17
	mv x10, x18
	jal finitef
	bltu x0, x10, .LBB0_11
	jal x0, .LBB0_10
.LBB0_4:
	lui fp, (2139095040>>12)&1048575
.LBB0_10:                               //  %if.then20
	jal __errno
	add x11, x0, 34
	sw x11, 0 ( x10 )
.LBB0_11:                               //  %cleanup
	mv x10, fp
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	scalbf, .Lfunc_end0-scalbf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
