	.text
	.file	"s_ceil.c"
	.globl	ceil                    //  -- Begin function ceil
	.type	ceil,@function
ceil:                                   //  @ceil
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
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	and x20, x10, 2047
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x19, x20, -1023
	add x10, x0, 19
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	blt x10, x19, .LBB0_13
.LBB0_1:                                //  %if.then
	blt x19, x0, .LBB0_2
.LBB0_7:                                //  %if.else12
	lui x10, %hi( 1048575 )
	add x10, x10, %lo( 1048575 )
	srl x10, x10, x19
	and x10, fp, x10
	or x10, x9, x10
	beq x0, x10, .LBB0_24
.LBB0_8:                                //  %if.end18
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
	bge x0, x10, .LBB0_24
.LBB0_9:                                //  %if.then21
	lui x10, %hi( -1048576 )
	add x10, x10, %lo( -1048576 )
	sra x10, x10, x19
	blt x18, fp, .LBB0_10
.LBB0_11:                               //  %if.then21
	mv x11, x18
	jal x0, .LBB0_12
.LBB0_13:                               //  %if.else30
	slti x10, x19, 52
	bltu x0, x10, .LBB0_17
.LBB0_14:                               //  %if.then32
	mv x10, x9
	mv x13, fp
	mv x11, fp
	mv x12, x9
	jal __adddf3
	add x12, x0, 1024
	beq x19, x12, .LBB0_16
.LBB0_15:                               //  %if.then32
	mv x11, fp
	mv x10, x9
	jal x0, .LBB0_16
.LBB0_17:                               //  %if.else37
	add x10, x20, -1043
	add x11, x0, -1
	srl x18, x11, x10
	and x10, x9, x18
	beq x0, x10, .LBB0_24
.LBB0_18:                               //  %if.end43
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
	bge x0, x10, .LBB0_24
.LBB0_19:                               //  %if.then46
	bge x0, fp, .LBB0_23
.LBB0_20:                               //  %if.then48
	xor x10, x19, 20
	bltu x0, x10, .LBB0_22
.LBB0_21:                               //  %if.then50
	add fp, fp, 1
	jal x0, .LBB0_23
.LBB0_2:                                //  %if.then3
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
	bge x0, x10, .LBB0_24
.LBB0_3:                                //  %if.then5
	blt fp, x0, .LBB0_4
.LBB0_5:                                //  %if.else
	or x11, x9, fp
	mv x10, x0
	beq x11, x10, .LBB0_24
.LBB0_6:                                //  %if.else
	lui fp, (1072693248>>12)&1048575
	mv x9, x10
	jal x0, .LBB0_24
.LBB0_10:
	lui x11, (1048576>>12)&1048575
	srl x11, x11, x19
.LBB0_12:                               //  %if.then21
	add x11, fp, x11
	and fp, x10, x11
	mv x9, x18
	jal x0, .LBB0_24
.LBB0_4:
	lui x10, %hi( -2147483648 )
	add fp, x10, %lo( -2147483648 )
	mv x9, x18
	jal x0, .LBB0_24
.LBB0_22:                               //  %if.else52
	add x10, x0, 1075
	sub x10, x10, x20
	seqz x11, x0
	sll x10, x11, x10
	add x9, x9, x10
	sltu x10, x9, x10
	add fp, fp, x10
.LBB0_23:                               //  %if.end60
	xor x10, x18, -1
	and x9, x10, x9
.LBB0_24:                               //  %cleanup
	mv x10, x9
	mv x11, fp
.LBB0_16:                               //  %if.then32
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	ceil, .Lfunc_end0-ceil
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
