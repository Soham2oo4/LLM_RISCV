	.text
	.file	"s_scalbln.c"
	.globl	scalbln                 //  -- Begin function scalbln
	.type	scalbln,@function
scalbln:                                //  @scalbln
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	mv x15, x11
	mv x14, x10
	srl x10, x15, 20&31
	and x10, x10, 2047
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv fp, x12
	xor x11, x10, 2047
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	beq x0, x11, .LBB0_17
.LBB0_1:                                //  %entry
	bltu x0, x10, .LBB0_4
.LBB0_2:                                //  %if.then
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	and x10, x10, x15
	or x10, x14, x10
	beq x0, x10, .LBB0_16
.LBB0_3:                                //  %if.end13.thread
	mv x12, x0
	lui x13, (1129316352>>12)&1048575
	mv x10, x14
	mv x11, x15
	jal __muldf3
	mv x15, x11
	mv x14, x10
	srl x10, x15, 20&31
	and x10, x10, 2047
	add x10, x10, -54
.LBB0_4:                                //  %if.end16
	lui x11, %hi( 50000 )
	add x11, x11, %lo( 50000 )
	blt x11, fp, .LBB0_6
.LBB0_5:                                //  %if.end16
	add x10, fp, x10
	slti x11, x10, 2047
	beq x0, x11, .LBB0_6
.LBB0_8:                                //  %if.end22
	lui x11, %hi( -50001 )
	add x11, x11, %lo( -50001 )
	blt x11, fp, .LBB0_10
.LBB0_9:                                //  %if.then24
	lui x10, %hi( -1023872167 )
	add fp, x10, %lo( -1023872167 )
	lui x10, %hi( 27618847 )
	add x9, x10, %lo( 27618847 )
	jal x0, .LBB0_7
.LBB0_17:                               //  %if.then15
	mv x10, x14
	mv x11, x15
	mv x12, x14
	mv x13, x15
	jal __adddf3
	jal x0, .LBB0_15
.LBB0_6:                                //  %if.then20
	lui x10, %hi( -2013235812 )
	add fp, x10, %lo( -2013235812 )
	lui x10, %hi( 2117592124 )
	add x9, x10, %lo( 2117592124 )
.LBB0_7:                                //  %cleanup
	mv x10, fp
	mv x11, x9
	mv x12, x14
	mv x13, x15
	jal copysign
	mv x12, fp
	mv x13, x9
.LBB0_14:                               //  %cleanup
	jal __muldf3
.LBB0_15:                               //  %cleanup
	mv x14, x10
	mv x15, x11
.LBB0_16:                               //  %cleanup
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	mv x10, x14
	mv x11, x15
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_10:                               //  %if.end27
	bge x0, x10, .LBB0_12
.LBB0_11:                               //  %do.body30
	lui x11, %hi( -2146435073 )
	add x11, x11, %lo( -2146435073 )
	and x11, x11, x15
	sll x10, x10, 20&31
	or x15, x10, x11
	jal x0, .LBB0_16
.LBB0_12:                               //  %if.end39
	add x11, x0, -54
	bge x11, x10, .LBB0_9
.LBB0_13:                               //  %if.end44
	lui x11, %hi( -2146435073 )
	add x11, x11, %lo( -2146435073 )
	sll x10, x10, 20&31
	lui x12, (56623104>>12)&1048575
	add x10, x12, x10
	and x11, x11, x15
	or x11, x11, x10
	mv x12, x0
	lui x13, (1016070144>>12)&1048575
	mv x10, x14
	jal x0, .LBB0_14
.Lfunc_end0:
	.size	scalbln, .Lfunc_end0-scalbln
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
