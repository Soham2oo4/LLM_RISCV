	.text
	.file	"e_fmod.c"
	.globl	__ieee754_fmod          //  -- Begin function __ieee754_fmod
	.type	__ieee754_fmod,@function
__ieee754_fmod:                         //  @__ieee754_fmod
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	lui x14, %hi( 2147483647 )
	add x15, x14, %lo( 2147483647 )
	and x17, x15, x11
	srl x14, x17, 20&31
	add x16, x0, 2046
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	bltu x16, x14, .LBB0_3
.LBB0_1:                                //  %entry
	and x15, x15, x13
	or x16, x12, x15
	beq x0, x16, .LBB0_3
.LBB0_2:                                //  %lor.lhs.false13
	sub x16, x0, x12
	or x16, x16, x12
	slt x16, x16, x0
	lui x5, %hi( 2146435073 )
	or x16, x16, x15
	add x5, x5, %lo( 2146435073 )
	bltu x16, x5, .LBB0_4
.LBB0_3:                                //  %if.then
	jal __muldf3
	mv x12, x10
	mv x13, x11
	jal __divdf3
.LBB0_57:                               //  %cleanup
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_4:                                //  %if.end
	bltu x15, x17, .LBB0_9
.LBB0_5:                                //  %if.then19
	bltu x10, x12, .LBB0_57
.LBB0_6:                                //  %if.then19
	bltu x17, x15, .LBB0_57
.LBB0_7:                                //  %if.end24
	beq x10, x12, .LBB0_8
.LBB0_9:                                //  %if.end29
	bltu x0, x14, .LBB0_16
.LBB0_10:                               //  %if.then31
	beq x0, x17, .LBB0_11
.LBB0_14:                               //  %if.else
	add x16, x0, -1022
	sll x14, x11, 11&31
	bge x0, x14, .LBB0_17
.LBB0_15:                               //  %for.body39
                                        //  =>This Inner Loop Header: Depth=1
	add x16, x16, -1
	sll x14, x14, 1&31
	blt x0, x14, .LBB0_15
	jal x0, .LBB0_17
.LBB0_16:                               //  %if.else45
	add x16, x14, -1023
.LBB0_17:                               //  %if.end48
	srl x14, x15, 20&31
	bltu x0, x14, .LBB0_24
.LBB0_18:                               //  %if.then50
	beq x0, x15, .LBB0_19
.LBB0_22:                               //  %if.else60
	add x14, x0, -1022
	sll x5, x13, 11&31
	bge x0, x5, .LBB0_25
.LBB0_23:                               //  %for.body64
                                        //  =>This Inner Loop Header: Depth=1
	add x14, x14, -1
	sll x5, x5, 1&31
	blt x0, x5, .LBB0_23
	jal x0, .LBB0_25
.LBB0_24:                               //  %if.else70
	add x14, x14, -1023
.LBB0_25:                               //  %if.end73
	slti x5, x16, -1022
	bltu x0, x5, .LBB0_27
.LBB0_26:                               //  %if.then75
	lui x17, %hi( 1048575 )
	add x17, x17, %lo( 1048575 )
	and x17, x17, x11
	lui x5, (1048576>>12)&1048575
	or x17, x5, x17
	slti x5, x14, -1022
	bltu x0, x5, .LBB0_32
.LBB0_31:                               //  %if.then93
	lui x15, %hi( 1048575 )
	add x15, x15, %lo( 1048575 )
	and x13, x15, x13
	lui x15, (1048576>>12)&1048575
	or x5, x15, x13
	jal x0, .LBB0_35
.LBB0_27:                               //  %if.else78
	slti x5, x16, -1053
	bltu x0, x5, .LBB0_29
.LBB0_28:                               //  %if.then81
	add x5, x0, -1022
	add x6, x16, 1054
	sub x5, x5, x16
	srl x6, x10, x6
	sll x17, x17, x5
	or x17, x6, x17
	sll x10, x10, x5
	slti x5, x14, -1022
	beq x0, x5, .LBB0_31
	jal x0, .LBB0_32
.LBB0_29:                               //  %if.else87
	add x17, x0, -1054
	sub x17, x17, x16
	sll x17, x10, x17
	mv x10, x0
	slti x5, x14, -1022
	beq x0, x5, .LBB0_31
.LBB0_32:                               //  %if.else96
	slti x13, x14, -1053
	bltu x0, x13, .LBB0_34
.LBB0_33:                               //  %if.then99
	add x13, x0, -1022
	add x5, x14, 1054
	sub x13, x13, x14
	srl x5, x12, x5
	sll x15, x15, x13
	or x5, x5, x15
	sll x12, x12, x13
	jal x0, .LBB0_35
.LBB0_34:                               //  %if.else105
	add x13, x0, -1054
	sub x13, x13, x14
	sll x5, x12, x13
	mv x12, x0
.LBB0_35:                               //  %if.end109
	sub x13, x17, x5
	sltu x15, x10, x12
	sub x15, x13, x15
	sub x13, x10, x12
	sub x6, x16, x14
	beq x0, x6, .LBB0_42
.LBB0_36:                               //  %while.body.preheader
	sub x6, x14, x16
	mv x16, x6
	bge x15, x0, .LBB0_39
.LBB0_38:                               //  %if.then118
	slt x15, x10, x0
	sll x17, x17, 1&31
.LBB0_41:                               //  %if.end133
	or x17, x17, x15
	sll x10, x10, 1&31
	sub x13, x17, x5
	sltu x15, x10, x12
	sub x15, x13, x15
	sub x13, x10, x12
	add x6, x16, 1
	bltu x6, x16, .LBB0_42
.LBB0_37:                               //  %while.body
	mv x16, x6
	blt x15, x0, .LBB0_38
.LBB0_39:                               //  %if.else122
	or x10, x13, x15
	beq x0, x10, .LBB0_8
.LBB0_40:                               //  %if.end128
	slt x17, x13, x0
	sll x15, x15, 1&31
	mv x10, x13
	jal x0, .LBB0_41
.LBB0_42:                               //  %while.end
	add x12, x0, -1
	blt x12, x15, .LBB0_44
.LBB0_43:                               //  %while.end
	mv x15, x17
	mv x13, x10
.LBB0_44:                               //  %while.end
	or x10, x13, x15
	beq x0, x10, .LBB0_8
.LBB0_45:                               //  %while.cond149.preheader
	lui x10, %hi( -2147483648 )
	lui x12, %hi( 1048575 )
	add x10, x10, %lo( -2147483648 )
	add x12, x12, %lo( 1048575 )
	blt x12, x15, .LBB0_48
.LBB0_46:
	lui x12, (1048576>>12)&1048575
.LBB0_47:                               //  %while.body151
                                        //  =>This Inner Loop Header: Depth=1
	slt x16, x13, x0
	sll x15, x15, 1&31
	or x15, x15, x16
	add x14, x14, -1
	sll x13, x13, 1&31
	blt x15, x12, .LBB0_47
.LBB0_48:                               //  %while.end157
	and x11, x10, x11
	slti x10, x14, -1022
	bltu x0, x10, .LBB0_50
.LBB0_49:                               //  %if.then159
	lui x10, %hi( -1048576 )
	sll x12, x14, 20&31
	lui x14, (1072693248>>12)&1048575
	add x10, x10, %lo( -1048576 )
	add x12, x14, x12
	add x10, x10, x15
	or x11, x11, x12
	or x11, x10, x11
	mv x10, x13
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_8:                                //  %if.then26
	srl x10, x11, 28&31
	lui x11, %hi( Zero )
	and x10, x10, 8
	add x11, x11, %lo( Zero )
	add x10, x10, x11
	lw x11, 4 ( x10 )
	lw x10, 0 ( x10 )
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_50:                               //  %if.else173
	add x10, x0, -1022
	sub x12, x10, x14
	slti x10, x14, -1042
	bltu x0, x10, .LBB0_52
.LBB0_51:                               //  %if.then176
	add x10, x14, 1054
	srl x13, x13, x12
	sll x10, x15, x10
	or x10, x10, x13
	srl x12, x15, x12
	or x11, x11, x12
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_11:                               //  %for.cond.preheader
	add x16, x0, -1043
	bge x0, x10, .LBB0_17
.LBB0_12:                               //  %for.body.preheader
	mv x14, x10
.LBB0_13:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x16, x16, -1
	sll x14, x14, 1&31
	blt x0, x14, .LBB0_13
	jal x0, .LBB0_17
.LBB0_19:                               //  %for.cond53.preheader
	add x14, x0, -1043
	bge x0, x12, .LBB0_25
.LBB0_20:                               //  %for.body55.preheader
	mv x5, x12
.LBB0_21:                               //  %for.body55
                                        //  =>This Inner Loop Header: Depth=1
	add x14, x14, -1
	sll x5, x5, 1&31
	blt x0, x5, .LBB0_21
	jal x0, .LBB0_25
.LBB0_52:                               //  %if.else182
	slti x10, x14, -1053
	bltu x0, x10, .LBB0_54
.LBB0_53:                               //  %if.then184
	add x10, x14, 1054
	sll x10, x15, x10
	srl x12, x13, x12
	or x10, x10, x12
	jal x0, .LBB0_55
.LBB0_54:                               //  %if.else189
	add x10, x0, -1054
	sub x10, x10, x14
	srl x10, x15, x10
.LBB0_55:                               //  %do.body194
	mv x12, x11
	or x11, x11, x12
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__ieee754_fmod, .Lfunc_end0-__ieee754_fmod
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	Zero,@object            //  @Zero
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3
Zero:
	.quad	0                       //  double 0
	.quad	-9223372036854775808    //  double -0
	.size	Zero, 16


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
