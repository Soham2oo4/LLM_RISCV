	.text
	.file	"s_logb.c"
	.globl	logb                    //  -- Begin function logb
	.type	logb,@function
logb:                                   //  @logb
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	mv x12, x10
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	and x13, x10, x11
	mv x14, x12
	srl x10, x13, 20&31
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	bltu x0, x10, .LBB0_5
.LBB0_1:                                //  %if.then
	or x10, x12, x13
	beq x0, x10, .LBB0_12
.LBB0_2:                                //  %if.else
	beq x0, x13, .LBB0_13
.LBB0_3:                                //  %if.else15
	add x10, x0, -1022
	sll x11, x11, 11&31
	bge x0, x11, .LBB0_15
.LBB0_4:                                //  %for.body19
                                        //  =>This Inner Loop Header: Depth=1
	add x10, x10, -1
	sll x11, x11, 1&31
	blt x0, x11, .LBB0_4
	jal x0, .LBB0_15
.LBB0_5:                                //  %if.else25
	add x15, x0, 2046
	bltu x15, x10, .LBB0_7
.LBB0_6:                                //  %if.then28
	add x10, x10, -1023
	jal x0, .LBB0_15
.LBB0_7:                                //  %if.else31
	mv x10, x0
	lui x15, (2146435072>>12)&1048575
	mv x16, x12
	bne x13, x15, .LBB0_8
.LBB0_17:                               //  %if.else31
	mv x16, x10
	beq x14, x10, .LBB0_18
.LBB0_9:                                //  %if.else31
	mv x16, x11
	bne x13, x15, .LBB0_10
.LBB0_19:                               //  %if.else31
	mv x16, x15
	beq x14, x10, .LBB0_20
.LBB0_11:                               //  %cleanup
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	mv x10, x12
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_8:                                //  %if.else31
	bne x14, x10, .LBB0_9
.LBB0_18:                               //  %if.else31
	mv x12, x16
	mv x16, x11
	beq x13, x15, .LBB0_19
.LBB0_10:                               //  %if.else31
	bne x14, x10, .LBB0_11
.LBB0_20:                               //  %if.else31
	mv x11, x16
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	mv x10, x12
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_12:                               //  %if.then3
	lui x11, %hi( -1074790400 )
	mv x10, x0
	add x11, x11, %lo( -1074790400 )
	jal __divdf3
	jal x0, .LBB0_16
.LBB0_13:                               //  %for.cond.preheader
	add x10, x0, -1043
	bge x0, x14, .LBB0_15
.LBB0_14:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x10, x10, -1
	sll x14, x14, 1&31
	blt x0, x14, .LBB0_14
.LBB0_15:                               //  %if.end24
	jal __floatsidf
.LBB0_16:                               //  %if.end24
	mv x12, x10
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	mv x10, x12
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	logb, .Lfunc_end0-logb
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
