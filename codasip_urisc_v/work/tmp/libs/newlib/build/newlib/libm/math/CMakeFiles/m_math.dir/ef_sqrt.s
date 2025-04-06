	.text
	.file	"ef_sqrt.c"
	.globl	__ieee754_sqrtf         //  -- Begin function __ieee754_sqrtf
	.type	__ieee754_sqrtf,@function
__ieee754_sqrtf:                        //  @__ieee754_sqrtf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -8
	mv fp, x10
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	and x10, x10, fp
	srl x11, x10, 23&31
	sltiu x12, x11, 255
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x12, .LBB0_1
.LBB0_4:                                //  %if.end
	beq x0, x10, .LBB0_3
.LBB0_5:                                //  %if.end3
	blt fp, x0, .LBB0_6
.LBB0_7:                                //  %if.end7
	srl x10, fp, 23&31
	lui x14, (8388608>>12)&1048575
	lui x13, (4194304>>12)&1048575
	bltu x0, x11, .LBB0_13
.LBB0_8:                                //  %for.cond.preheader
	and x11, x14, fp
	bltu x0, x11, .LBB0_9
.LBB0_10:                               //  %for.body.preheader
	mv x11, x0
.LBB0_11:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	and x12, x13, fp
	add x11, x11, 1
	sll fp, fp, 1&31
	beq x0, x12, .LBB0_11
	jal x0, .LBB0_12
.LBB0_1:                                //  %if.then
	mv x10, fp
	mv x11, fp
	jal __mulsf3
	mv x11, fp
	jal __addsf3
.LBB0_2:                                //  %cleanup
	mv fp, x10
	jal x0, .LBB0_3
.LBB0_6:                                //  %if.then5
	mv x10, fp
	mv x11, fp
	jal __subsf3
	mv x11, x10
	jal __divsf3
	jal x0, .LBB0_2
.LBB0_9:
	mv x11, x0
.LBB0_12:                               //  %for.end
	sub x10, x10, x11
	add x10, x10, 1
.LBB0_13:                               //  %if.end14
	lui x11, %hi( 8388607 )
	add x11, x11, %lo( 8388607 )
	and x12, x11, fp
	add x10, x10, -127
	or x12, x14, x12
	and x15, x10, 1
	sll x12, x12, x15
	sll x15, x12, 2&31
	blt x12, x14, .LBB0_15
.LBB0_14:                               //  %if.end14
	lui x16, %hi( -33554432 )
	add x16, x16, %lo( -33554432 )
	add x15, x16, x15
.LBB0_15:                               //  %if.end14
	slt x12, x11, x12
	sll x11, x12, 24&31
	sll x12, x12, 25&31
	or x16, x14, x12
	bge x15, x16, .LBB0_16
.LBB0_17:                               //  %if.end30.1
	add x16, x13, x12
	sll x15, x15, 1&31
	bge x15, x16, .LBB0_18
.LBB0_19:                               //  %if.end30.2
	lui x14, (2097152>>12)&1048575
	add x16, x14, x12
	sll x15, x15, 1&31
	bge x15, x16, .LBB0_20
.LBB0_21:                               //  %if.end30.3
	lui x13, (1048576>>12)&1048575
	add x16, x13, x12
	sll x15, x15, 1&31
	bge x15, x16, .LBB0_22
.LBB0_23:                               //  %if.end30.4
	lui x14, (524288>>12)&1048575
	add x16, x14, x12
	sll x15, x15, 1&31
	bge x15, x16, .LBB0_24
.LBB0_25:                               //  %if.end30.5
	lui x13, (262144>>12)&1048575
	add x16, x13, x12
	sll x15, x15, 1&31
	bge x15, x16, .LBB0_26
.LBB0_27:                               //  %if.end30.6
	lui x14, (131072>>12)&1048575
	add x16, x14, x12
	sll x15, x15, 1&31
	bge x15, x16, .LBB0_28
.LBB0_29:                               //  %if.end30.7
	lui x13, (65536>>12)&1048575
	add x16, x13, x12
	sll x15, x15, 1&31
	bge x15, x16, .LBB0_30
.LBB0_31:                               //  %if.end30.8
	lui x14, (32768>>12)&1048575
	add x16, x14, x12
	sll x15, x15, 1&31
	bge x15, x16, .LBB0_32
.LBB0_33:                               //  %if.end30.9
	lui x13, (16384>>12)&1048575
	add x16, x13, x12
	sll x15, x15, 1&31
	bge x15, x16, .LBB0_34
.LBB0_35:                               //  %if.end30.10
	lui x14, (8192>>12)&1048575
	add x16, x14, x12
	sll x15, x15, 1&31
	bge x15, x16, .LBB0_36
.LBB0_37:                               //  %if.end30.11
	lui x13, (4096>>12)&1048575
	add x16, x13, x12
	sll x15, x15, 1&31
	blt x15, x16, .LBB0_39
.LBB0_38:                               //  %if.then26.12
	add x11, x13, x11
	sub x15, x15, x16
	add x12, x14, x12
.LBB0_39:                               //  %if.end30.12
	lui x14, %hi( 2048 )
	add x14, x14, %lo( 2048 )
	add x16, x14, x12
	sll x15, x15, 1&31
	bge x15, x16, .LBB0_40
.LBB0_41:                               //  %if.end30.13
	add x16, x12, 1024
	sll x13, x15, 1&31
	bge x13, x16, .LBB0_42
.LBB0_43:                               //  %if.end30.14
	add x14, x12, 512
	sll x13, x13, 1&31
	bge x13, x14, .LBB0_44
.LBB0_45:                               //  %if.end30.15
	add x14, x12, 256
	sll x13, x13, 1&31
	bge x13, x14, .LBB0_46
.LBB0_47:                               //  %if.end30.16
	add x14, x12, 128
	sll x13, x13, 1&31
	bge x13, x14, .LBB0_48
.LBB0_49:                               //  %if.end30.17
	add x14, x12, 64
	sll x13, x13, 1&31
	bge x13, x14, .LBB0_50
.LBB0_51:                               //  %if.end30.18
	add x14, x12, 32
	sll x13, x13, 1&31
	bge x13, x14, .LBB0_52
.LBB0_53:                               //  %if.end30.19
	add x14, x12, 16
	sll x13, x13, 1&31
	bge x13, x14, .LBB0_54
.LBB0_55:                               //  %if.end30.20
	add x14, x12, 8
	sll x13, x13, 1&31
	bge x13, x14, .LBB0_56
.LBB0_57:                               //  %if.end30.21
	add x14, x12, 4
	sll x13, x13, 1&31
	bge x13, x14, .LBB0_58
.LBB0_59:                               //  %if.end30.22
	add x14, x12, 2
	sll x13, x13, 1&31
	blt x13, x14, .LBB0_61
.LBB0_60:                               //  %if.then26.23
	sub x13, x13, x14
	add x11, x11, 2
	add x12, x12, 4
.LBB0_61:                               //  %if.end30.23
	add x15, x12, 1
	sll x12, x13, 1&31
	slt x13, x12, x15
	mv x14, x0
	seqz x13, x13
	mv x16, x14
	blt x12, x15, .LBB0_63
.LBB0_62:                               //  %if.end30.23
	mv x16, x15
.LBB0_63:                               //  %if.end30.23
	add x11, x13, x11
	beq x12, x16, .LBB0_65
.LBB0_64:                               //  %if.end30.23
	and x14, x11, 1
.LBB0_65:                               //  %if.end30.23
	lui x12, %hi( -8388608 )
	add x11, x11, x14
	sll x10, x10, 22&31
	add x12, x12, %lo( -8388608 )
	and x10, x12, x10
	sra x11, x11, 1&31
	add x10, x11, x10
	lui x11, (1056964608>>12)&1048575
	add fp, x11, x10
.LBB0_3:                                //  %cleanup
	mv x10, fp
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_16:                               //  %if.then26.1
	or x11, x14, x11
	sub x15, x15, x16
	add x12, x14, x16
	add x16, x13, x12
	sll x15, x15, 1&31
	blt x15, x16, .LBB0_19
.LBB0_18:                               //  %if.then26.2
	add x11, x13, x11
	sub x15, x15, x16
	add x12, x14, x12
	lui x14, (2097152>>12)&1048575
	add x16, x14, x12
	sll x15, x15, 1&31
	blt x15, x16, .LBB0_21
.LBB0_20:                               //  %if.then26.3
	add x11, x14, x11
	sub x15, x15, x16
	add x12, x13, x12
	lui x13, (1048576>>12)&1048575
	add x16, x13, x12
	sll x15, x15, 1&31
	blt x15, x16, .LBB0_23
.LBB0_22:                               //  %if.then26.4
	add x11, x13, x11
	sub x15, x15, x16
	add x12, x14, x12
	lui x14, (524288>>12)&1048575
	add x16, x14, x12
	sll x15, x15, 1&31
	blt x15, x16, .LBB0_25
.LBB0_24:                               //  %if.then26.5
	add x11, x14, x11
	sub x15, x15, x16
	add x12, x13, x12
	lui x13, (262144>>12)&1048575
	add x16, x13, x12
	sll x15, x15, 1&31
	blt x15, x16, .LBB0_27
.LBB0_26:                               //  %if.then26.6
	add x11, x13, x11
	sub x15, x15, x16
	add x12, x14, x12
	lui x14, (131072>>12)&1048575
	add x16, x14, x12
	sll x15, x15, 1&31
	blt x15, x16, .LBB0_29
.LBB0_28:                               //  %if.then26.7
	add x11, x14, x11
	sub x15, x15, x16
	add x12, x13, x12
	lui x13, (65536>>12)&1048575
	add x16, x13, x12
	sll x15, x15, 1&31
	blt x15, x16, .LBB0_31
.LBB0_30:                               //  %if.then26.8
	add x11, x13, x11
	sub x15, x15, x16
	add x12, x14, x12
	lui x14, (32768>>12)&1048575
	add x16, x14, x12
	sll x15, x15, 1&31
	blt x15, x16, .LBB0_33
.LBB0_32:                               //  %if.then26.9
	add x11, x14, x11
	sub x15, x15, x16
	add x12, x13, x12
	lui x13, (16384>>12)&1048575
	add x16, x13, x12
	sll x15, x15, 1&31
	blt x15, x16, .LBB0_35
.LBB0_34:                               //  %if.then26.10
	add x11, x13, x11
	sub x15, x15, x16
	add x12, x14, x12
	lui x14, (8192>>12)&1048575
	add x16, x14, x12
	sll x15, x15, 1&31
	blt x15, x16, .LBB0_37
.LBB0_36:                               //  %if.then26.11
	add x11, x14, x11
	sub x15, x15, x16
	add x12, x13, x12
	lui x13, (4096>>12)&1048575
	add x16, x13, x12
	sll x15, x15, 1&31
	bge x15, x16, .LBB0_38
	jal x0, .LBB0_39
.LBB0_40:                               //  %if.then26.13
	add x11, x14, x11
	sub x15, x15, x16
	add x12, x13, x12
	add x16, x12, 1024
	sll x13, x15, 1&31
	blt x13, x16, .LBB0_43
.LBB0_42:                               //  %if.then26.14
	sub x13, x13, x16
	add x12, x14, x12
	add x11, x11, 1024
	add x14, x12, 512
	sll x13, x13, 1&31
	blt x13, x14, .LBB0_45
.LBB0_44:                               //  %if.then26.15
	sub x13, x13, x14
	add x11, x11, 512
	add x12, x12, 1024
	add x14, x12, 256
	sll x13, x13, 1&31
	blt x13, x14, .LBB0_47
.LBB0_46:                               //  %if.then26.16
	sub x13, x13, x14
	add x11, x11, 256
	add x12, x12, 512
	add x14, x12, 128
	sll x13, x13, 1&31
	blt x13, x14, .LBB0_49
.LBB0_48:                               //  %if.then26.17
	sub x13, x13, x14
	add x11, x11, 128
	add x12, x12, 256
	add x14, x12, 64
	sll x13, x13, 1&31
	blt x13, x14, .LBB0_51
.LBB0_50:                               //  %if.then26.18
	sub x13, x13, x14
	add x11, x11, 64
	add x12, x12, 128
	add x14, x12, 32
	sll x13, x13, 1&31
	blt x13, x14, .LBB0_53
.LBB0_52:                               //  %if.then26.19
	sub x13, x13, x14
	add x11, x11, 32
	add x12, x12, 64
	add x14, x12, 16
	sll x13, x13, 1&31
	blt x13, x14, .LBB0_55
.LBB0_54:                               //  %if.then26.20
	sub x13, x13, x14
	add x11, x11, 16
	add x12, x12, 32
	add x14, x12, 8
	sll x13, x13, 1&31
	blt x13, x14, .LBB0_57
.LBB0_56:                               //  %if.then26.21
	sub x13, x13, x14
	add x11, x11, 8
	add x12, x12, 16
	add x14, x12, 4
	sll x13, x13, 1&31
	blt x13, x14, .LBB0_59
.LBB0_58:                               //  %if.then26.22
	sub x13, x13, x14
	add x11, x11, 4
	add x12, x12, 8
	add x14, x12, 2
	sll x13, x13, 1&31
	bge x13, x14, .LBB0_60
	jal x0, .LBB0_61
.Lfunc_end0:
	.size	__ieee754_sqrtf, .Lfunc_end0-__ieee754_sqrtf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
