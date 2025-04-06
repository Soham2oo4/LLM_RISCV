	.text
	.file	"wf_pow.c"
	.globl	powf                    //  -- Begin function powf
	.type	powf,@function
powf:                                   //  @powf
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
	mv x9, x11
	mv x18, x10
	jal __ieee754_powf
	mv fp, x10
	mv x10, x9
	mv x11, x9
	jal __unordsf2
	bltu x0, x10, .LBB0_17
.LBB0_1:                                //  %if.end
	mv x19, x0
	mv x10, x18
	mv x11, x19
	jal __nesf2
	bltu x0, x10, .LBB0_6
.LBB0_2:                                //  %if.then2
	mv x11, x0
	mv x10, x9
	jal __eqsf2
	bltu x0, x10, .LBB0_4
.LBB0_3:
	lui fp, (1065353216>>12)&1048575
	jal x0, .LBB0_17
.LBB0_6:                                //  %if.end11
	mv x10, fp
	jal finitef
	beq x0, x10, .LBB0_7
.LBB0_13:                               //  %if.end27
	mv x11, x0
	mv x10, fp
	jal __nesf2
	bltu x0, x10, .LBB0_17
.LBB0_14:                               //  %land.lhs.true29
	mv x10, x18
	jal finitef
	beq x0, x10, .LBB0_17
.LBB0_15:                               //  %land.lhs.true32
	mv x10, x9
	jal finitef
	bltu x0, x10, .LBB0_16
	jal x0, .LBB0_17
.LBB0_4:                                //  %if.end5
	mv x11, x0
	mv x10, x9
	jal __ltsf2
	mv x18, x10
	mv x10, x9
	jal finitef
	bge x18, x0, .LBB0_17
.LBB0_5:                                //  %if.end5
	beq x0, x10, .LBB0_17
.LBB0_16:                               //  %if.then35
	jal __errno
	add x11, x0, 34
	sw x11, 0 ( x10 )
	jal x0, .LBB0_17
.LBB0_7:                                //  %if.then14
	mv x10, x18
	jal finitef
	beq x0, x10, .LBB0_13
.LBB0_8:                                //  %land.lhs.true17
	mv x10, x9
	jal finitef
	beq x0, x10, .LBB0_13
.LBB0_9:                                //  %if.then20
	mv x10, fp
	mv x11, fp
	jal __unordsf2
	bne x10, x19, .LBB0_10
.LBB0_11:                               //  %if.then20
	add x9, x0, 34
	jal x0, .LBB0_12
.LBB0_10:
	add x9, x0, 33
.LBB0_12:                               //  %if.then20
	jal __errno
	sw x9, 0 ( x10 )
.LBB0_17:                               //  %cleanup
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
	.size	powf, .Lfunc_end0-powf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
