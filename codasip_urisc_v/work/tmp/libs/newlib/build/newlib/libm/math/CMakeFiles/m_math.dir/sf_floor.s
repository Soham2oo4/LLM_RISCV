	.text
	.file	"sf_floor.c"
	.globl	floorf                  //  -- Begin function floorf
	.type	floorf,@function
floorf:                                 //  @floorf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv fp, x10
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	and x19, x10, fp
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	srl x9, x19, 23&31
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18, x9, -127
	add x10, x0, 22
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	blt x10, x18, .LBB0_5
.LBB0_1:                                //  %if.then
	blt x18, x0, .LBB0_8
.LBB0_2:                                //  %if.else11
	lui x10, %hi( 8388607 )
	add x10, x10, %lo( 8388607 )
	srl x10, x10, x18
	and x10, fp, x10
	beq x0, x10, .LBB0_12
.LBB0_3:                                //  %if.end16
	lui x10, %hi( 1900671690 )
	add x11, x10, %lo( 1900671690 )
	mv x10, fp
	jal __addsf3
	mv x11, x0
	jal __gtsf2
	mv x9, fp
	bge x0, x10, .LBB0_13
.LBB0_4:                                //  %if.then19
	lui x11, (8388608>>12)&1048575
	lui x10, %hi( -8388608 )
	srl x11, x11, x18
	sra x12, fp, 31&31
	add x10, x10, %lo( -8388608 )
	and x11, x11, x12
	sra x10, x10, x18
	add x11, fp, x11
	and x9, x10, x11
	jal x0, .LBB0_13
.LBB0_5:                                //  %if.else28
	mv x10, fp
	mv x11, fp
	jal __addsf3
	add x11, x0, 255
	bltu x9, x11, .LBB0_7
.LBB0_6:                                //  %if.else28
	mv fp, x10
.LBB0_7:                                //  %if.else28
	mv x10, fp
	jal x0, .LBB0_14
.LBB0_8:                                //  %if.then2
	lui x10, %hi( 1900671690 )
	add x11, x10, %lo( 1900671690 )
	mv x10, fp
	jal __addsf3
	mv x9, x0
	mv x11, x9
	jal __gtsf2
	bge x0, x10, .LBB0_12
.LBB0_9:                                //  %if.then4
	bge fp, x0, .LBB0_13
.LBB0_10:                               //  %if.else
	mv x10, x0
	beq x19, x10, .LBB0_12
.LBB0_11:                               //  %if.else
	lui x10, %hi( -1082130432 )
	add fp, x10, %lo( -1082130432 )
.LBB0_12:
	mv x9, fp
.LBB0_13:                               //  %cleanup
	mv x10, x9
.LBB0_14:                               //  %if.else28
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	floorf, .Lfunc_end0-floorf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
