	.text
	.file	"sf_expm1.c"
	.globl	expm1f                  //  -- Begin function expm1f
	.type	expm1f,@function
expm1f:                                 //  @expm1f
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -32
	mv fp, x10
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	and x9, x10, fp
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	lui x11, %hi( 1100331076 )
	and x10, x10, fp
	add x11, x11, %lo( 1100331076 )
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 22, -28
	bltu x10, x11, .LBB0_3
.LBB0_1:                                //  %if.then3
	lui x11, %hi( 2139095041 )
	add x11, x11, %lo( 2139095041 )
	bltu x10, x11, .LBB0_7
.LBB0_2:                                //  %if.then5
	mv x10, fp
	mv x11, fp
	jal x0, .LBB0_35
.LBB0_3:                                //  %if.end27
	lui x11, %hi( 1051816473 )
	add x11, x11, %lo( 1051816473 )
	bltu x10, x11, .LBB0_9
.LBB0_4:                                //  %if.then30
	lui x11, %hi( 1065686417 )
	add x11, x11, %lo( 1065686417 )
	bltu x11, x10, .LBB0_19
.LBB0_5:                                //  %if.then33
	bltu x0, x9, .LBB0_15
.LBB0_6:                                //  %if.then36
	lui x10, %hi( -1087278720 )
	add x11, x10, %lo( -1087278720 )
	mv x10, fp
	jal __addsf3
	mv x18, x10
	lui x10, %hi( 924317649 )
	add x19, x10, %lo( 924317649 )
	seqz x9, x0
	jal x0, .LBB0_23
.LBB0_7:                                //  %if.end6
	lui x11, (2139095040>>12)&1048575
	bne x10, x11, .LBB0_11
.LBB0_8:                                //  %if.then8
	mv x10, x0
	bne x9, x10, .LBB0_18
	jal x0, .LBB0_37
.LBB0_9:                                //  %if.else55
	srl x10, x10, 24&31
	add x11, x0, 50
	bltu x11, x10, .LBB0_14
.LBB0_10:                               //  %if.then58
	lui x10, %hi( 1900671690 )
	add x11, x10, %lo( 1900671690 )
	mv x10, fp
	jal __addsf3
	mv x11, x10
	jal x0, .LBB0_29
.LBB0_11:                               //  %if.end11
	bltu x0, x9, .LBB0_16
.LBB0_12:                               //  %if.end11
	lui x11, %hi( 1118925336 )
	add x11, x11, %lo( 1118925336 )
	bltu x10, x11, .LBB0_16
.LBB0_13:                               //  %if.then16
	mv x10, x0
	jal __math_oflowf
	jal x0, .LBB0_36
.LBB0_14:
	mv x9, x0
                                        //  implicit-def: $rf_gpr_18
	jal x0, .LBB0_24
.LBB0_15:                               //  %if.else38
	lui x10, %hi( 1060204928 )
	add x11, x10, %lo( 1060204928 )
	mv x10, fp
	jal __addsf3
	mv x18, x10
	lui x10, %hi( -1223165999 )
	add x19, x10, %lo( -1223165999 )
	add x9, x0, -1
	jal x0, .LBB0_23
.LBB0_16:                               //  %if.end17
	lui x10, %hi( 228737632 )
	add x11, x10, %lo( 228737632 )
	mv x10, fp
	jal __addsf3
	mv x11, x0
	jal __ltsf2
	bge x10, x0, .LBB0_19
.LBB0_17:                               //  %if.end17
	beq x0, x9, .LBB0_19
.LBB0_18:                               //  %if.then8
	lui x10, %hi( -1082130432 )
	add fp, x10, %lo( -1082130432 )
	jal x0, .LBB0_37
.LBB0_19:                               //  %if.else41
	mv x10, x0
	beq x9, x10, .LBB0_21
.LBB0_20:                               //  %if.else41
	lui x10, %hi( -1090519040 )
	add x9, x10, %lo( -1090519040 )
	jal x0, .LBB0_22
.LBB0_21:
	lui x9, (1056964608>>12)&1048575
.LBB0_22:                               //  %if.else41
	lui x10, %hi( 1069066811 )
	add x11, x10, %lo( 1069066811 )
	mv x10, fp
	jal __mulsf3
	mv x11, x9
	jal __addsf3
	jal __fixsfsi
	mv x9, x10
	jal __floatsisf
	mv x19, x10
	lui x10, %hi( -1087278720 )
	add x11, x10, %lo( -1087278720 )
	mv x10, x19
	jal __mulsf3
	mv x11, x10
	mv x10, fp
	jal __addsf3
	mv x18, x10
	lui x10, %hi( 924317649 )
	add x11, x10, %lo( 924317649 )
	mv x10, x19
	jal __mulsf3
	mv x19, x10
.LBB0_23:                               //  %if.end51
	mv x10, x18
	mv x11, x19
	jal __subsf3
	mv fp, x10
	mv x10, x18
	mv x11, fp
	jal __subsf3
	mv x11, x19
	jal __subsf3
	mv x18, x10
.LBB0_24:                               //  %if.end65
	lui x11, (1056964608>>12)&1048575
	mv x10, fp
	jal __mulsf3
	mv x21, x10
	mv x10, fp
	mv x11, x21
	jal __mulsf3
	mv x19, x10
	lui x10, %hi( -1269305925 )
	add x11, x10, %lo( -1269305925 )
	mv x10, x19
	jal __mulsf3
	lui x11, %hi( 914783828 )
	add x11, x11, %lo( 914783828 )
	jal __addsf3
	mv x11, x10
	mv x10, x19
	jal __mulsf3
	lui x11, %hi( -1197051699 )
	add x11, x11, %lo( -1197051699 )
	jal __addsf3
	mv x11, x10
	mv x10, x19
	jal __mulsf3
	lui x11, %hi( 986713345 )
	add x11, x11, %lo( 986713345 )
	jal __addsf3
	mv x11, x10
	mv x10, x19
	jal __mulsf3
	lui x11, %hi( -1123514231 )
	add x11, x11, %lo( -1123514231 )
	jal __addsf3
	mv x11, x10
	mv x10, x19
	jal __mulsf3
	lui x20, (1065353216>>12)&1048575
	mv x11, x20
	jal __addsf3
	mv x22, x10
	mv x10, x21
	mv x11, x22
	jal __mulsf3
	mv x11, x10
	lui x10, (1077936128>>12)&1048575
	jal __subsf3
	mv x21, x10
	mv x10, x22
	mv x11, x21
	jal __subsf3
	mv x22, x10
	mv x10, fp
	mv x11, x21
	jal __mulsf3
	mv x11, x10
	lui x10, (1086324736>>12)&1048575
	jal __subsf3
	mv x11, x10
	mv x10, x22
	jal __divsf3
	mv x11, x10
	mv x10, x19
	jal __mulsf3
	mv x11, x10
	beq x0, x9, .LBB0_28
.LBB0_25:                               //  %if.else90
	mv x10, x11
	mv x11, x18
	jal __subsf3
	mv x11, x10
	mv x10, fp
	jal __mulsf3
	mv x11, x18
	jal __subsf3
	mv x11, x19
	jal __subsf3
	mv x18, x10
	xor x10, x9, 1
	beq x0, x10, .LBB0_30
.LBB0_26:                               //  %if.else90
	xor x10, x9, -1
	bltu x0, x10, .LBB0_32
.LBB0_27:                               //  %if.then97
	mv x10, fp
	mv x11, x18
	jal __subsf3
	lui x11, (1056964608>>12)&1048575
	jal __mulsf3
	lui x11, %hi( -1090519040 )
	add x11, x11, %lo( -1090519040 )
	jal x0, .LBB0_35
.LBB0_28:                               //  %if.then86
	mv x10, fp
	jal __mulsf3
	mv x11, x19
.LBB0_29:                               //  %cleanup
	jal __subsf3
	mv x11, x10
	mv x10, fp
	jal __subsf3
	jal x0, .LBB0_36
.LBB0_30:                               //  %if.then104
	lui x10, %hi( -1098907648 )
	add x11, x10, %lo( -1098907648 )
	mv x10, fp
	jal __ltsf2
	bge x10, x0, .LBB0_34
.LBB0_31:                               //  %if.then107
	lui x11, (1056964608>>12)&1048575
	mv x10, fp
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __subsf3
	lui x11, %hi( -1073741824 )
	add x11, x11, %lo( -1073741824 )
	jal __mulsf3
	jal x0, .LBB0_36
.LBB0_32:                               //  %if.end115
	sltiu x10, x9, 57
	bltu x0, x10, .LBB0_38
.LBB0_33:                               //  %if.then120
	mv x10, fp
	mv x11, x18
	jal __subsf3
	lui x11, (1065353216>>12)&1048575
	jal __addsf3
	sll x11, x9, 23&31
	add x10, x10, x11
	lui x11, %hi( -1082130432 )
	add x11, x11, %lo( -1082130432 )
	jal x0, .LBB0_35
.LBB0_34:                               //  %if.else111
	mv x10, fp
	mv x11, x18
	jal __subsf3
	mv x11, x10
	jal __addsf3
	lui x11, (1065353216>>12)&1048575
.LBB0_35:                               //  %cleanup
	jal __addsf3
.LBB0_36:                               //  %cleanup
	mv fp, x10
.LBB0_37:                               //  %cleanup
	mv x10, fp
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x22, 4 ( sp )                //  4-byte Folded Reload
	lw x21, 8 ( sp )                //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_38:                               //  %if.end136
	add x10, x0, 22
	blt x10, x9, .LBB0_40
.LBB0_39:                               //  %if.then139
	lui x10, (16777216>>12)&1048575
	srl x19, x10, x9
	mv x10, x18
	mv x11, fp
	jal __subsf3
	mv x11, x10
	sub x10, x20, x19
	jal __subsf3
	sll x11, x9, 23&31
	add fp, x10, x11
	jal x0, .LBB0_37
.LBB0_40:                               //  %if.else164
	sll x9, x9, 23&31
	sub x11, x20, x9
	mv x10, x18
	jal __addsf3
	mv x11, x10
	mv x10, fp
	jal __subsf3
	mv x11, x20
	jal __addsf3
	add fp, x10, x9
	jal x0, .LBB0_37
.Lfunc_end0:
	.size	expm1f, .Lfunc_end0-expm1f
	.cfi_endproc
                                        //  -- End function
	.hidden	__math_oflowf

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
