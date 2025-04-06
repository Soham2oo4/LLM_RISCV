	.text
	.file	"nexttowardf.c"
	.globl	nexttowardf             //  -- Begin function nexttowardf
	.type	nexttowardf,@function
nexttowardf:                            //  @nexttowardf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -64
	.cfi_adjust_cfa_offset 64
	sw fp, 20 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -44
	mv fp, x10
	sw x20, 44 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	mv x20, x11
	mv x11, fp
	sw x9, 56 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw ra, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x21, 40 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	mv x9, x14
	mv x18, x13
	mv x19, x12
	jal __unordsf2
	mv x25, x10
	mv x10, fp
	jal __extendsftf2
	mv x24, x10
	mv x23, x11
	mv x22, x12
	mv x21, x13
	bltu x0, x25, .LBB0_4
.LBB0_1:                                //  %entry
	mv x10, x20
	mv x17, x9
	mv x15, x19
	mv x11, x19
	mv x12, x18
	mv x13, x9
	mv x14, x20
	mv x16, x18
	jal __unordtf2
	bltu x0, x10, .LBB0_4
.LBB0_2:                                //  %if.end
	mv x10, x24
	mv x11, x23
	mv x12, x22
	mv x13, x21
	mv x14, x20
	mv x15, x19
	mv x16, x18
	mv x17, x9
	jal __netf2
	bltu x0, x10, .LBB0_7
.LBB0_3:                                //  %if.then6
	mv x10, x20
	mv x11, x19
	mv x12, x18
	mv x13, x9
	jal x0, .LBB0_5
.LBB0_4:                                //  %if.then
	mv x10, x24
	mv x11, x23
	mv x12, x22
	mv x13, x21
	mv x14, x20
	mv x15, x19
	mv x16, x18
	mv x17, x9
	jal __addtf3
.LBB0_5:                                //  %cleanup
	jal __trunctfsf2
	mv x9, x10
.LBB0_6:                                //  %cleanup
	mv x10, x9
	lw fp, 20 ( sp )                //  4-byte Folded Reload
	lw x25, 24 ( sp )               //  4-byte Folded Reload
	lw x24, 28 ( sp )               //  4-byte Folded Reload
	lw x23, 32 ( sp )               //  4-byte Folded Reload
	lw x22, 36 ( sp )               //  4-byte Folded Reload
	lw x21, 40 ( sp )               //  4-byte Folded Reload
	lw x20, 44 ( sp )               //  4-byte Folded Reload
	lw x19, 48 ( sp )               //  4-byte Folded Reload
	lw x18, 52 ( sp )               //  4-byte Folded Reload
	lw x9, 56 ( sp )                //  4-byte Folded Reload
	lw ra, 60 ( sp )                //  4-byte Folded Reload
	add sp, sp, 64
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_7:                                //  %if.end8
	mv x25, x0
	mv x10, fp
	mv x11, x25
	jal __nesf2
	bltu x0, x10, .LBB0_12
.LBB0_8:                                //  %if.then11
	blt x9, x25, .LBB0_15
.LBB0_9:                                //  %if.then11
	seqz x9, x0
	lui x10, (2139095040>>12)&1048575
	and x11, x10, x9
	beq x0, x11, .LBB0_16
.LBB0_10:                               //  %if.end44
	bne x11, x10, .LBB0_6
.LBB0_11:                               //  %if.then48
	mv x10, fp
	mv x11, fp
	jal __addsf3
	sw x10, 16 ( sp )
	jal x0, .LBB0_6
.LBB0_12:                               //  %if.else
	mv x10, x24
	mv x11, x23
	mv x12, x22
	mv x13, x21
	mv x14, x20
	mv x15, x19
	mv x16, x18
	mv x17, x9
	jal __lttf2
	bge x10, x0, .LBB0_17
.LBB0_13:                               //  %cond.true22
	blt fp, x0, .LBB0_18
.LBB0_14:                               //  %if.else28
	add x9, fp, 1
	lui x10, (2139095040>>12)&1048575
	and x11, x10, x9
	bltu x0, x11, .LBB0_10
	jal x0, .LBB0_16
.LBB0_15:
	lui x10, %hi( -2147483647 )
	add x9, x10, %lo( -2147483647 )
	lui x10, (2139095040>>12)&1048575
	and x11, x10, x9
	bltu x0, x11, .LBB0_10
.LBB0_16:                               //  %if.then53
	mv x10, fp
	mv x11, fp
	jal __mulsf3
	mv fp, x10
	mv x10, x9
	mv x11, x9
	jal __mulsf3
	mv x11, x10
	mv x10, fp
	jal __addsf3
	sw x10, 12 ( sp )
	jal x0, .LBB0_6
.LBB0_17:                               //  %cond.true32
	blt fp, x0, .LBB0_14
.LBB0_18:                               //  %if.else39
	add x9, fp, -1
	lui x10, (2139095040>>12)&1048575
	and x11, x10, x9
	bltu x0, x11, .LBB0_10
	jal x0, .LBB0_16
.Lfunc_end0:
	.size	nexttowardf, .Lfunc_end0-nexttowardf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
