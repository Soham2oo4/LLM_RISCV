	.text
	.file	"s_floor.c"
	.globl	floor                   //  -- Begin function floor
	.type	floor,@function
floor:                                  //  @floor
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -24
	mv fp, x11
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	srl x10, fp, 20&31
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	and x19, x10, 2047
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	add x20, x19, -1023
	add x10, x0, 19
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	blt x10, x20, .LBB0_5
.LBB0_1:                                //  %if.then
	blt x20, x0, .LBB0_12
.LBB0_2:                                //  %if.else13
	lui x10, %hi( 1048575 )
	add x10, x10, %lo( 1048575 )
	srl x10, x10, x20
	and x10, fp, x10
	or x10, x9, x10
	beq x0, x10, .LBB0_16
.LBB0_3:                                //  %if.end19
	lui x10, %hi( -2013235812 )
	add x12, x10, %lo( -2013235812 )
	lui x10, %hi( 2117592124 )
	add x13, x10, %lo( 2117592124 )
	mv x10, x9
	mv x11, fp
	jal __adddf3
	mv x19, x0
	mv x13, x19
	mv x12, x19
	jal __gtdf2
	mv x18, x9
	mv x11, fp
	bge x0, x10, .LBB0_21
.LBB0_4:                                //  %if.then22
	lui x11, (1048576>>12)&1048575
	lui x10, %hi( -1048576 )
	srl x11, x11, x20
	sra x12, fp, 31&31
	add x10, x10, %lo( -1048576 )
	and x11, x11, x12
	sra x10, x10, x20
	add x11, fp, x11
	mv x18, x19
	and x11, x10, x11
	jal x0, .LBB0_21
.LBB0_5:                                //  %if.else31
	slti x10, x20, 52
	bltu x0, x10, .LBB0_8
.LBB0_6:                                //  %if.then33
	mv x10, x9
	mv x13, fp
	mv x11, fp
	mv x12, x9
	jal __adddf3
	add x12, x0, 1024
	beq x20, x12, .LBB0_22
.LBB0_7:                                //  %if.then33
	mv x11, fp
	mv x10, x9
	jal x0, .LBB0_22
.LBB0_8:                                //  %if.else38
	add x10, x19, -1043
	add x11, x0, -1
	srl x18, x11, x10
	and x10, x9, x18
	beq x0, x10, .LBB0_16
.LBB0_9:                                //  %if.end44
	lui x10, %hi( -2013235812 )
	add x12, x10, %lo( -2013235812 )
	lui x10, %hi( 2117592124 )
	add x13, x10, %lo( 2117592124 )
	mv x10, x9
	mv x11, fp
	jal __adddf3
	mv x12, x0
	mv x13, x12
	jal __gtdf2
	bge x0, x10, .LBB0_16
.LBB0_10:                               //  %if.then47
	blt fp, x0, .LBB0_17
.LBB0_11:
	mv x11, fp
	jal x0, .LBB0_20
.LBB0_12:                               //  %if.then3
	lui x10, %hi( -2013235812 )
	add x12, x10, %lo( -2013235812 )
	lui x10, %hi( 2117592124 )
	add x13, x10, %lo( 2117592124 )
	mv x10, x9
	mv x11, fp
	jal __adddf3
	mv x18, x0
	mv x13, x18
	mv x12, x18
	jal __gtdf2
	bge x0, x10, .LBB0_16
.LBB0_13:                               //  %if.then5
	mv x11, x18
	bge fp, x0, .LBB0_21
.LBB0_14:                               //  %if.else
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	and x10, x10, fp
	or x11, x9, x10
	mv x10, x0
	beq x11, x10, .LBB0_16
.LBB0_15:                               //  %if.else
	lui x11, %hi( -1074790400 )
	add fp, x11, %lo( -1074790400 )
	mv x9, x10
.LBB0_16:                               //  %if.else
	mv x18, x9
	mv x11, fp
.LBB0_21:                               //  %cleanup
	mv x10, x18
.LBB0_22:                               //  %if.then33
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_17:                               //  %if.then49
	xor x10, x20, 20
	bltu x0, x10, .LBB0_19
.LBB0_18:                               //  %if.then51
	add x11, fp, 1
	jal x0, .LBB0_20
.LBB0_19:                               //  %if.else53
	add x10, x0, 1075
	sub x10, x10, x19
	seqz x11, x0
	sll x10, x11, x10
	add x9, x9, x10
	sltu x10, x9, x10
	add x11, fp, x10
.LBB0_20:                               //  %if.end61
	xor x10, x18, -1
	and x18, x10, x9
	jal x0, .LBB0_21
.Lfunc_end0:
	.size	floor, .Lfunc_end0-floor
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
