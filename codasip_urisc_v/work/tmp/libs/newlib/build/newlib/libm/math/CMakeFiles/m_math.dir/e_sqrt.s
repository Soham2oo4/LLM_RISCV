	.text
	.file	"e_sqrt.c"
	.globl	__ieee754_sqrt          //  -- Begin function __ieee754_sqrt
	.type	__ieee754_sqrt,@function
__ieee754_sqrt:                         //  @__ieee754_sqrt
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv fp, x10
	mv x9, x11
	lui x10, (2146435072>>12)&1048575
	and x11, x10, x9
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	bne x11, x10, .LBB0_3
.LBB0_1:                                //  %if.then
	mv x10, fp
	mv x13, x9
	mv x11, x9
	mv x12, fp
	jal __muldf3
	mv x12, fp
	mv x13, x9
	jal __adddf3
.LBB0_2:                                //  %cleanup
	mv fp, x10
	mv x9, x11
	jal x0, .LBB0_75
.LBB0_3:                                //  %if.end
	bge x0, x9, .LBB0_7
.LBB0_4:                                //  %if.end12
	srl x10, x9, 20&31
	lui x14, (1048576>>12)&1048575
	lui x13, (524288>>12)&1048575
	bltu x0, x10, .LBB0_16
.LBB0_5:                                //  %while.cond.preheader
	mv x10, x0
	beq x0, x9, .LBB0_10
.LBB0_6:
	mv x12, fp
	mv x11, x10
	and x15, x14, x9
	beq x0, x15, .LBB0_13
	jal x0, .LBB0_15
.LBB0_7:                                //  %if.then3
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	and x10, x10, x9
	or x10, fp, x10
	beq x0, x10, .LBB0_75
.LBB0_8:                                //  %if.else
	bge x9, x0, .LBB0_4
.LBB0_9:                                //  %if.then8
	mv x10, fp
	mv x11, x9
	mv x12, fp
	mv x13, x9
	jal __subdf3
	mv x12, x10
	mv x13, x11
	jal __divdf3
	jal x0, .LBB0_2
.LBB0_10:                               //  %while.body.preheader
	mv x11, x0
.LBB0_11:                               //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	sll x12, fp, 21&31
	add x11, x11, -21
	srl x9, fp, 11&31
	mv fp, x12
	beq x0, x9, .LBB0_11
.LBB0_12:                               //  %for.cond.preheader
	and x15, x14, x9
	bltu x0, x15, .LBB0_15
.LBB0_13:                               //  %for.body.preheader
	mv x10, x0
.LBB0_14:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	and x15, x13, x9
	add x10, x10, 1
	sll x9, x9, 1&31
	beq x0, x15, .LBB0_14
.LBB0_15:                               //  %for.end
	add x15, x0, 32
	sub x15, x15, x10
	srl x15, x12, x15
	sll fp, x12, x10
	sub x10, x11, x10
	or x9, x9, x15
	add x10, x10, 1
.LBB0_16:                               //  %if.end28
	lui x11, %hi( 1048575 )
	add x11, x11, %lo( 1048575 )
	and x11, x11, x9
	add x12, x10, -1023
	or x11, x14, x11
	and x10, x12, 1
	beq x0, x10, .LBB0_18
.LBB0_17:                               //  %if.then33
	sll x10, x11, 1&31
	slt x11, fp, x0
	or x11, x11, x10
	sll fp, fp, 1&31
.LBB0_18:                               //  %if.end39
	sll x10, x11, 1&31
	slt x11, fp, x0
	or x11, x11, x10
	sll x10, x11, 1&31
	lui x15, (2097152>>12)&1048575
	blt x11, x15, .LBB0_20
.LBB0_19:                               //  %if.end39
	lui x15, %hi( -4194304 )
	add x15, x15, %lo( -4194304 )
	add x10, x15, x10
.LBB0_20:                               //  %if.end39
	lui x15, %hi( 2097151 )
	add x15, x15, %lo( 2097151 )
	slt x11, x15, x11
	srl x15, fp, 30&31
	and x15, x15, 1
	or x15, x15, x10
	sll x10, x11, 21&31
	sll x11, x11, 22&31
	or x16, x14, x11
	blt x15, x16, .LBB0_22
.LBB0_21:                               //  %if.then51.1
	or x10, x14, x10
	sub x15, x15, x16
	add x11, x14, x16
.LBB0_22:                               //  %if.end55.1
	srl x17, fp, 29&31
	and x17, x17, 1
	sll x15, x15, 1&31
	add x16, x13, x11
	or x15, x17, x15
	blt x15, x16, .LBB0_24
.LBB0_23:                               //  %if.then51.2
	add x10, x13, x10
	sub x15, x15, x16
	add x11, x14, x11
.LBB0_24:                               //  %if.end55.2
	srl x17, fp, 28&31
	lui x14, (262144>>12)&1048575
	and x17, x17, 1
	sll x15, x15, 1&31
	add x16, x14, x11
	or x15, x17, x15
	blt x15, x16, .LBB0_26
.LBB0_25:                               //  %if.then51.3
	add x10, x14, x10
	sub x15, x15, x16
	add x11, x13, x11
.LBB0_26:                               //  %if.end55.3
	srl x17, fp, 27&31
	lui x13, (131072>>12)&1048575
	and x17, x17, 1
	sll x15, x15, 1&31
	add x16, x13, x11
	or x15, x17, x15
	blt x15, x16, .LBB0_28
.LBB0_27:                               //  %if.then51.4
	add x10, x13, x10
	sub x15, x15, x16
	add x11, x14, x11
.LBB0_28:                               //  %if.end55.4
	srl x17, fp, 26&31
	lui x14, (65536>>12)&1048575
	and x17, x17, 1
	sll x15, x15, 1&31
	add x16, x14, x11
	or x15, x17, x15
	blt x15, x16, .LBB0_30
.LBB0_29:                               //  %if.then51.5
	add x10, x14, x10
	sub x15, x15, x16
	add x11, x13, x11
.LBB0_30:                               //  %if.end55.5
	srl x17, fp, 25&31
	lui x13, (32768>>12)&1048575
	and x17, x17, 1
	sll x15, x15, 1&31
	add x16, x13, x11
	or x15, x17, x15
	blt x15, x16, .LBB0_32
.LBB0_31:                               //  %if.then51.6
	add x10, x13, x10
	sub x15, x15, x16
	add x11, x14, x11
.LBB0_32:                               //  %if.end55.6
	srl x16, fp, 24&31
	lui x14, (16384>>12)&1048575
	and x16, x16, 1
	sll x15, x15, 1&31
	add x17, x14, x11
	or x16, x16, x15
	blt x16, x17, .LBB0_34
.LBB0_33:                               //  %if.then51.7
	add x10, x14, x10
	sub x16, x16, x17
	add x11, x13, x11
.LBB0_34:                               //  %if.end55.7
	srl x17, fp, 23&31
	lui x15, (8192>>12)&1048575
	and x17, x17, 1
	sll x16, x16, 1&31
	add x13, x15, x11
	or x16, x17, x16
	blt x16, x13, .LBB0_36
.LBB0_35:                               //  %if.then51.8
	add x10, x15, x10
	sub x16, x16, x13
	add x11, x14, x11
.LBB0_36:                               //  %if.end55.8
	srl x17, fp, 22&31
	lui x13, (4096>>12)&1048575
	and x17, x17, 1
	sll x16, x16, 1&31
	add x14, x13, x11
	or x16, x17, x16
	blt x16, x14, .LBB0_38
.LBB0_37:                               //  %if.then51.9
	add x10, x13, x10
	sub x16, x16, x14
	add x11, x15, x11
.LBB0_38:                               //  %if.end55.9
	lui x14, %hi( 2048 )
	srl x15, fp, 21&31
	add x14, x14, %lo( 2048 )
	and x15, x15, 1
	sll x16, x16, 1&31
	add x17, x14, x11
	or x15, x15, x16
	blt x15, x17, .LBB0_40
.LBB0_39:                               //  %if.then51.10
	add x10, x14, x10
	sub x15, x15, x17
	add x11, x13, x11
.LBB0_40:                               //  %if.end55.10
	srl x13, fp, 20&31
	and x13, x13, 1
	sll x15, x15, 1&31
	or x13, x13, x15
	add x15, x11, 1024
	blt x13, x15, .LBB0_42
.LBB0_41:                               //  %if.then51.11
	sub x13, x13, x15
	add x11, x14, x11
	add x10, x10, 1024
.LBB0_42:                               //  %if.end55.11
	srl x14, fp, 19&31
	and x14, x14, 1
	sll x13, x13, 1&31
	or x13, x14, x13
	add x14, x11, 512
	blt x13, x14, .LBB0_44
.LBB0_43:                               //  %if.then51.12
	sub x13, x13, x14
	add x10, x10, 512
	add x11, x11, 1024
.LBB0_44:                               //  %if.end55.12
	srl x14, fp, 18&31
	and x14, x14, 1
	sll x13, x13, 1&31
	or x13, x14, x13
	add x14, x11, 256
	blt x13, x14, .LBB0_46
.LBB0_45:                               //  %if.then51.13
	sub x13, x13, x14
	add x10, x10, 256
	add x11, x11, 512
.LBB0_46:                               //  %if.end55.13
	srl x14, fp, 17&31
	and x14, x14, 1
	sll x13, x13, 1&31
	or x13, x14, x13
	add x14, x11, 128
	blt x13, x14, .LBB0_48
.LBB0_47:                               //  %if.then51.14
	sub x13, x13, x14
	add x10, x10, 128
	add x11, x11, 256
.LBB0_48:                               //  %if.end55.14
	srl x14, fp, 16&31
	and x14, x14, 1
	sll x13, x13, 1&31
	or x13, x14, x13
	add x14, x11, 64
	blt x13, x14, .LBB0_50
.LBB0_49:                               //  %if.then51.15
	sub x13, x13, x14
	add x10, x10, 64
	add x11, x11, 128
.LBB0_50:                               //  %if.end55.15
	srl x14, fp, 15&31
	and x14, x14, 1
	sll x13, x13, 1&31
	or x13, x14, x13
	add x14, x11, 32
	blt x13, x14, .LBB0_52
.LBB0_51:                               //  %if.then51.16
	sub x13, x13, x14
	add x10, x10, 32
	add x11, x11, 64
.LBB0_52:                               //  %if.end55.16
	srl x14, fp, 14&31
	and x14, x14, 1
	sll x13, x13, 1&31
	or x13, x14, x13
	add x14, x11, 16
	blt x13, x14, .LBB0_54
.LBB0_53:                               //  %if.then51.17
	sub x13, x13, x14
	add x10, x10, 16
	add x11, x11, 32
.LBB0_54:                               //  %if.end55.17
	srl x14, fp, 13&31
	and x14, x14, 1
	sll x13, x13, 1&31
	or x13, x14, x13
	add x14, x11, 8
	blt x13, x14, .LBB0_56
.LBB0_55:                               //  %if.then51.18
	sub x13, x13, x14
	add x10, x10, 8
	add x11, x11, 16
.LBB0_56:                               //  %if.end55.18
	srl x14, fp, 12&31
	and x14, x14, 1
	sll x13, x13, 1&31
	or x13, x14, x13
	add x14, x11, 4
	blt x13, x14, .LBB0_58
.LBB0_57:                               //  %if.then51.19
	sub x13, x13, x14
	add x10, x10, 4
	add x11, x11, 8
.LBB0_58:                               //  %if.end55.19
	srl x14, fp, 11&31
	and x14, x14, 1
	sll x13, x13, 1&31
	or x13, x14, x13
	add x14, x11, 2
	blt x13, x14, .LBB0_60
.LBB0_59:                               //  %if.then51.20
	sub x13, x13, x14
	add x10, x10, 2
	add x11, x11, 4
.LBB0_60:                               //  %if.end55.20
	srl x14, fp, 10&31
	and x14, x14, 1
	sll x13, x13, 1&31
	or x14, x14, x13
	add x13, x11, 1
	blt x14, x13, .LBB0_62
.LBB0_61:                               //  %if.then51.21
	sub x14, x14, x13
	add x10, x10, 1
	add x11, x11, 2
.LBB0_62:                               //  %if.end55.21
	srl x15, fp, 9&31
	and x15, x15, 1
	sll x14, x14, 1&31
	mv x13, x0
	or x14, x15, x14
	lui x15, %hi( -2147483648 )
	sll x5, fp, 23&31
	add x15, x15, %lo( -2147483648 )
	srl x12, x12, 1&31
	add x16, x0, -1
	mv x17, x13
	add x7, x15, x17
	bge x11, x14, .LBB0_66
.LBB0_63:                               //  %if.then70
	add x17, x15, x7
	slt x6, x16, x17
	slti x28, x7, 0
	and x28, x6, x28
	sub x6, x5, x7
	sltu x5, x5, x7
	sub x14, x14, x5
	sub x14, x14, x11
	add x13, x15, x13
	add x11, x28, x11
.LBB0_64:                               //  %if.end87
	sll x14, x14, 1&31
	slt x5, x6, x0
	or x14, x5, x14
	sll x5, x6, 1&31
	srl x15, x15, 1&31
	beq x0, x15, .LBB0_70
.LBB0_65:                               //  %while.body65
	add x7, x15, x17
	blt x11, x14, .LBB0_63
.LBB0_66:                               //  %lor.lhs.false
	bltu x5, x7, .LBB0_69
.LBB0_67:                               //  %lor.lhs.false
	beq x14, x11, .LBB0_63
.LBB0_69:
	mv x6, x5
	jal x0, .LBB0_64
.LBB0_70:                               //  %while.end94
	or x11, x5, x14
	beq x0, x11, .LBB0_74
.LBB0_71:                               //  %if.then99
	xor x11, x13, -1
	beq x0, x11, .LBB0_73
.LBB0_72:                               //  %if.else111
	and x11, x13, 1
	add x13, x13, x11
	jal x0, .LBB0_74
.LBB0_73:                               //  %if.then101
	mv x13, x0
	add x10, x10, 1
.LBB0_74:                               //  %if.end117
	sll x11, x12, 20&31
	sra x12, x10, 1&31
	add x11, x12, x11
	lui x12, (1071644672>>12)&1048575
	add x9, x12, x11
	srl x11, x13, 1&31
	sll x10, x10, 31&31
	or fp, x11, x10
.LBB0_75:                               //  %cleanup
	mv x10, fp
	mv x11, x9
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__ieee754_sqrt, .Lfunc_end0-__ieee754_sqrt
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
