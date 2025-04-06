	.text
	.file	"s_remquo.c"
	.globl	remquo                  //  -- Begin function remquo
	.type	remquo,@function
remquo:                                 //  @remquo
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -64
	.cfi_adjust_cfa_offset 64
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv fp, x14
	lui x14, %hi( 2147483647 )
	sw x24, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	add x24, x14, %lo( 2147483647 )
	sw x18, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	and x18, x24, x11
	srl x14, x18, 20&31
	add x15, x0, 2046
	sw ra, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 56 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 44 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 40 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x25, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	bltu x15, x14, .LBB0_3
.LBB0_1:                                //  %entry
	and x16, x24, x13
	or x15, x12, x16
	beq x0, x15, .LBB0_3
.LBB0_2:                                //  %lor.lhs.false15
	sub x15, x0, x12
	or x15, x15, x12
	slt x15, x15, x0
	lui x17, %hi( 2146435073 )
	or x15, x15, x16
	add x17, x17, %lo( 2146435073 )
	bltu x15, x17, .LBB0_5
.LBB0_3:                                //  %if.then
	sw x0, 0 ( fp )
	jal __muldf3
	mv x12, x10
	mv x13, x11
	jal __divdf3
	mv x9, x10
.LBB0_4:                                //  %cleanup
	mv x10, x9
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x27, 16 ( sp )               //  4-byte Folded Reload
	lw x26, 20 ( sp )               //  4-byte Folded Reload
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
.LBB0_5:                                //  %if.end
	lui x17, %hi( -2147483648 )
	add x17, x17, %lo( -2147483648 )
	xor x15, x11, x13
	and x26, x17, x15
	and x25, x17, x11
	bgeu x16, x18, .LBB0_10
.LBB0_6:                                //  %if.end31
	bltu x0, x14, .LBB0_15
.LBB0_7:                                //  %if.then33
	beq x0, x18, .LBB0_52
.LBB0_8:                                //  %if.else
	add x5, x0, -1022
	sll x14, x11, 11&31
	bge x0, x14, .LBB0_16
.LBB0_9:                                //  %for.body41
                                        //  =>This Inner Loop Header: Depth=1
	add x5, x5, -1
	sll x14, x14, 1&31
	blt x0, x14, .LBB0_9
	jal x0, .LBB0_16
.LBB0_10:                               //  %if.then21
	mv x27, x0
	bltu x10, x12, .LBB0_51
.LBB0_11:                               //  %if.then21
	bltu x18, x16, .LBB0_51
.LBB0_12:                               //  %if.end26
	bne x10, x12, .LBB0_6
.LBB0_13:                               //  %if.then28
	mv x10, x0
	beq x26, x10, .LBB0_60
.LBB0_14:                               //  %if.then28
	add x10, x0, -1
	jal x0, .LBB0_61
.LBB0_15:                               //  %if.else47
	add x5, x14, -1023
.LBB0_16:                               //  %if.end50
	add x14, x0, -1022
	srl x15, x16, 20&31
	bltu x0, x15, .LBB0_21
.LBB0_17:                               //  %if.then52
	beq x0, x16, .LBB0_55
.LBB0_18:                               //  %if.else62
	sll x17, x13, 11&31
	mv x15, x14
	bge x0, x17, .LBB0_22
.LBB0_19:                               //  %for.body66.preheader
	add x15, x0, -1022
.LBB0_20:                               //  %for.body66
                                        //  =>This Inner Loop Header: Depth=1
	add x15, x15, -1
	sll x17, x17, 1&31
	blt x0, x17, .LBB0_20
	jal x0, .LBB0_22
.LBB0_21:                               //  %if.else72
	add x15, x15, -1023
.LBB0_22:                               //  %if.end75
	slti x6, x5, -1022
	lui x17, %hi( 1048575 )
	bltu x0, x6, .LBB0_25
.LBB0_23:                               //  %if.then77
	add x6, x17, %lo( 1048575 )
	and x6, x6, x11
	lui x7, (1048576>>12)&1048575
	or x6, x7, x6
	slti x7, x15, -1022
	bltu x0, x7, .LBB0_28
.LBB0_24:                               //  %if.then95
	add x16, x17, %lo( 1048575 )
	and x16, x16, x13
	lui x7, (1048576>>12)&1048575
	or x7, x7, x16
	mv x28, x12
	jal x0, .LBB0_31
.LBB0_25:                               //  %if.else80
	slti x6, x5, -1053
	bltu x0, x6, .LBB0_27
.LBB0_26:                               //  %if.then83
	add x6, x5, 1054
	sub x7, x14, x5
	srl x6, x10, x6
	sll x28, x18, x7
	or x6, x6, x28
	sll x10, x10, x7
	slti x7, x15, -1022
	beq x0, x7, .LBB0_24
	jal x0, .LBB0_28
.LBB0_51:
	mv x9, x10
	jal x0, .LBB0_64
.LBB0_27:                               //  %if.else89
	add x6, x0, -1054
	sub x6, x6, x5
	sll x6, x10, x6
	mv x10, x0
	slti x7, x15, -1022
	beq x0, x7, .LBB0_24
.LBB0_28:                               //  %if.else98
	slti x7, x15, -1053
	bltu x0, x7, .LBB0_30
.LBB0_29:                               //  %if.then101
	add x7, x15, 1054
	sub x28, x14, x15
	sll x16, x16, x28
	srl x7, x12, x7
	or x7, x7, x16
	sll x28, x12, x28
	jal x0, .LBB0_31
.LBB0_30:                               //  %if.else107
	add x16, x0, -1054
	sub x16, x16, x15
	sll x7, x12, x16
	mv x28, x0
.LBB0_31:                               //  %if.end111
	sub x16, x6, x7
	sltu x29, x10, x28
	sub x29, x16, x29
	sub x9, x10, x28
	sub x16, x5, x15
	beq x0, x16, .LBB0_37
.LBB0_32:                               //  %while.body.preheader
	sub x30, x15, x5
	mv x16, x0
	mv x5, x30
	blt x29, x0, .LBB0_36
.LBB0_33:                               //  %if.else125
	slt x10, x9, x0
	sll x6, x29, 1&31
	or x6, x10, x6
	or x16, x16, 1
	mv x10, x9
.LBB0_34:                               //  %if.end130
	sll x10, x10, 1&31
	sub x29, x6, x7
	sltu x30, x10, x28
	sub x29, x29, x30
	sub x9, x10, x28
	sll x16, x16, 1&31
	add x30, x5, 1
	bltu x30, x5, .LBB0_38
.LBB0_35:                               //  %while.body
	mv x5, x30
	bge x29, x0, .LBB0_33
.LBB0_36:                               //  %if.then121
	slt x29, x10, x0
	sll x6, x6, 1&31
	or x6, x29, x6
	jal x0, .LBB0_34
.LBB0_37:
	mv x16, x0
.LBB0_38:                               //  %while.end
	add x7, x0, -1
	mv x5, x29
	blt x7, x29, .LBB0_40
.LBB0_39:                               //  %while.end
	mv x5, x6
	mv x9, x10
.LBB0_40:                               //  %while.end
	slt x10, x29, x0
	or x10, x16, x10
	xor x27, x10, 1
	or x10, x9, x5
	beq x0, x10, .LBB0_46
.LBB0_41:                               //  %while.cond152.preheader
	add x10, x17, %lo( 1048575 )
	blt x10, x5, .LBB0_44
.LBB0_42:
	lui x10, (1048576>>12)&1048575
.LBB0_43:                               //  %while.body154
                                        //  =>This Inner Loop Header: Depth=1
	slt x16, x9, x0
	sll x11, x5, 1&31
	or x5, x16, x11
	add x15, x15, -1
	sll x9, x9, 1&31
	blt x5, x10, .LBB0_43
.LBB0_44:                               //  %while.end160
	slti x10, x15, -1022
	bltu x0, x10, .LBB0_48
.LBB0_45:                               //  %if.then162
	sll x10, x15, 20&31
	lui x11, (1072693248>>12)&1048575
	add x10, x11, x10
	lui x11, %hi( -1048576 )
	add x11, x11, %lo( -1048576 )
	add x11, x11, x5
	or x18, x10, x11
	jal x0, .LBB0_64
.LBB0_46:                               //  %if.then144
	and x10, x24, x27
	mv x12, x0
	beq x26, x12, .LBB0_61
.LBB0_47:                               //  %if.then144
	sub x10, x0, x10
	jal x0, .LBB0_61
.LBB0_48:                               //  %if.else167
	sub x10, x14, x15
	slti x11, x15, -1042
	bltu x0, x11, .LBB0_58
.LBB0_49:                               //  %if.then170
	add x14, x15, 1054
	srl x11, x9, x10
	sll x14, x5, x14
	or x9, x11, x14
	srl x18, x5, x10
	jal x0, .LBB0_64
.LBB0_52:                               //  %for.cond.preheader
	add x5, x0, -1043
	bge x0, x10, .LBB0_16
.LBB0_53:                               //  %for.body.preheader
	mv x14, x10
.LBB0_54:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x5, x5, -1
	sll x14, x14, 1&31
	blt x0, x14, .LBB0_54
	jal x0, .LBB0_16
.LBB0_55:                               //  %for.cond55.preheader
	add x15, x0, -1043
	bge x0, x12, .LBB0_22
.LBB0_56:                               //  %for.body57.preheader
	mv x17, x12
.LBB0_57:                               //  %for.body57
                                        //  =>This Inner Loop Header: Depth=1
	add x15, x15, -1
	sll x17, x17, 1&31
	blt x0, x17, .LBB0_57
	jal x0, .LBB0_22
.LBB0_58:                               //  %if.else176
	slti x11, x15, -1053
	bltu x0, x11, .LBB0_62
.LBB0_59:                               //  %if.then178
	add x11, x15, 1054
	srl x10, x9, x10
	sll x11, x5, x11
	or x9, x10, x11
	jal x0, .LBB0_63
.LBB0_60:
	seqz x10, x0
.LBB0_61:                               //  %if.then28
	sw x10, 0 ( fp )
	srl x10, x11, 28&31
	lui x11, %hi( Zero )
	and x10, x10, 8
	add x11, x11, %lo( Zero )
	add x10, x10, x11
	lw x11, 4 ( x10 )
	lw x9, 0 ( x10 )
	jal x0, .LBB0_4
.LBB0_62:                               //  %if.else183
	add x10, x0, -1054
	sub x10, x10, x15
	srl x9, x5, x10
.LBB0_63:                               //  %do.body189
	mv x18, x25
.LBB0_64:                               //  %do.body189
	mv x10, x12
	mv x11, x13
	jal fabs
	mv x19, x0
	lui x13, (2097152>>12)&1048575
	mv x12, x19
	mv x21, x10
	mv x20, x11
	jal __ltdf2
	bge x10, x0, .LBB0_68
.LBB0_65:                               //  %if.then198
	mv x10, x9
	mv x13, x18
	mv x11, x18
	mv x12, x9
	jal __adddf3
	mv x12, x21
	mv x13, x20
	mv x22, x10
	mv x23, x11
	jal __gtdf2
	blt x0, x10, .LBB0_71
.LBB0_66:                               //  %lor.lhs.false201
	and x10, x27, 1
	beq x0, x10, .LBB0_72
.LBB0_67:                               //  %lor.lhs.false201
	mv x10, x22
	mv x11, x23
	mv x12, x21
	mv x13, x20
	jal __nedf2
	beq x0, x10, .LBB0_71
	jal x0, .LBB0_72
.LBB0_68:                               //  %if.else210
	mv x12, x0
	lui x13, (1071644672>>12)&1048575
	mv x10, x21
	mv x11, x20
	jal __muldf3
	mv x12, x9
	mv x13, x18
	mv x22, x10
	mv x23, x11
	jal __ltdf2
	blt x10, x0, .LBB0_71
.LBB0_69:                               //  %lor.lhs.false213
	and x10, x27, 1
	beq x0, x10, .LBB0_72
.LBB0_70:                               //  %lor.lhs.false213
	mv x10, x22
	mv x11, x23
	mv x12, x9
	mv x13, x18
	jal __nedf2
	bltu x0, x10, .LBB0_72
.LBB0_71:                               //  %if.then219
	mv x10, x9
	mv x11, x18
	mv x12, x21
	mv x13, x20
	jal __subdf3
	mv x9, x10
	mv x18, x11
	add x27, x27, 1
.LBB0_72:                               //  %do.body224
	and x10, x24, x27
	beq x26, x19, .LBB0_74
.LBB0_73:                               //  %do.body224
	sub x10, x0, x10
.LBB0_74:                               //  %do.body224
	xor x11, x18, x25
	sw x10, 0 ( fp )
	jal x0, .LBB0_4
.Lfunc_end0:
	.size	remquo, .Lfunc_end0-remquo
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
