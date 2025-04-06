	.text
	.file	"ef_log.c"
	.globl	__ieee754_logf          //  -- Begin function __ieee754_logf
	.type	__ieee754_logf,@function
__ieee754_logf:                         //  @__ieee754_logf
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
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	and x10, x10, fp
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
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
	beq x0, x10, .LBB0_1
.LBB0_2:                                //  %if.end
	blt fp, x0, .LBB0_3
.LBB0_4:                                //  %if.end3
	lui x10, (2139095040>>12)&1048575
	bge fp, x10, .LBB0_5
.LBB0_7:                                //  %if.end6
	lui x9, (8388608>>12)&1048575
	blt fp, x9, .LBB0_8
.LBB0_9:                                //  %if.end6
	add x19, x0, -127
	jal x0, .LBB0_10
.LBB0_1:
	lui x10, %hi( -8388608 )
	add x18, x10, %lo( -8388608 )
	jal x0, .LBB0_30
.LBB0_3:                                //  %if.then2
	mv x10, fp
	mv x11, fp
	jal __subsf3
	mv x11, x0
	jal __divsf3
	jal x0, .LBB0_29
.LBB0_5:                                //  %if.then5
	mv x10, fp
	mv x11, fp
	jal __addsf3
	jal x0, .LBB0_29
.LBB0_8:
	add x19, x0, -152
.LBB0_10:                               //  %if.end6
	lui x11, (1275068416>>12)&1048575
	mv x10, fp
	jal __mulsf3
	mv x18, x10
	blt fp, x9, .LBB0_12
.LBB0_11:                               //  %if.end6
	mv x18, fp
.LBB0_12:                               //  %if.end6
	lui x11, %hi( 8388607 )
	add x11, x11, %lo( 8388607 )
	and x22, x11, x18
	lui x11, %hi( 4913952 )
	add x11, x11, %lo( 4913952 )
	sra x10, x18, 23&31
	add x11, x11, x22
	and x12, x9, x11
	add x10, x10, x19
	srl x11, x11, 23&31
	add x9, x11, x10
	or x10, x22, x12
	lui x11, (1065353216>>12)&1048575
	xor x10, x11, x10
	lui x11, %hi( -1082130432 )
	add x11, x11, %lo( -1082130432 )
	jal __addsf3
	lui x11, %hi( 8388592 )
	mv fp, x10
	add x10, x18, 15
	add x11, x11, %lo( 8388592 )
	and x10, x11, x10
	beq x0, x10, .LBB0_13
.LBB0_19:                               //  %if.end57
	lui x11, (1073741824>>12)&1048575
	mv x10, fp
	jal __addsf3
	mv x11, x10
	mv x10, fp
	jal __divsf3
	mv x18, x10
	mv x11, x18
	jal __mulsf3
	mv x19, x10
	mv x11, x19
	jal __mulsf3
	mv x20, x10
	lui x10, %hi( 1042075727 )
	add x11, x10, %lo( 1042075727 )
	mv x10, x20
	jal __mulsf3
	lui x11, %hi( 1046711849 )
	add x11, x11, %lo( 1046711849 )
	jal __addsf3
	mv x11, x10
	mv x10, x20
	jal __mulsf3
	lui x11, %hi( 1053609165 )
	add x11, x11, %lo( 1053609165 )
	jal __addsf3
	mv x11, x10
	mv x10, x20
	jal __mulsf3
	mv x21, x10
	lui x10, %hi( 1041729687 )
	add x11, x10, %lo( 1041729687 )
	mv x10, x20
	jal __mulsf3
	lui x11, %hi( 1044001573 )
	add x11, x11, %lo( 1044001573 )
	jal __addsf3
	mv x11, x10
	mv x10, x20
	jal __mulsf3
	lui x11, %hi( 1049774373 )
	add x11, x11, %lo( 1049774373 )
	jal __addsf3
	mv x11, x10
	mv x10, x20
	jal __mulsf3
	lui x11, %hi( 1059760811 )
	add x11, x11, %lo( 1059760811 )
	jal __addsf3
	mv x11, x10
	mv x10, x19
	jal __mulsf3
	mv x11, x10
	mv x10, x21
	jal __addsf3
	lui x11, %hi( -3187664 )
	mv x20, x10
	lui x10, %hi( 3523208 )
	add x10, x10, %lo( 3523208 )
	add x11, x11, %lo( -3187664 )
	sub x10, x10, x22
	add x11, x11, x22
	or x21, x10, x11
	mv x10, x9
	jal __floatsisf
	mv x19, x10
	bge x0, x21, .LBB0_23
.LBB0_20:                               //  %if.then81
	lui x11, (1056964608>>12)&1048575
	mv x10, fp
	jal __mulsf3
	mv x11, x10
	mv x10, fp
	jal __mulsf3
	mv x21, x10
	beq x0, x9, .LBB0_21
.LBB0_22:                               //  %if.else91
	lui x10, %hi( 1060204928 )
	add x11, x10, %lo( 1060204928 )
	mv x10, x19
	jal __mulsf3
	mv x9, x10
	mv x10, x21
	mv x11, x20
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	mv x18, x10
	lui x10, %hi( 924317649 )
	add x11, x10, %lo( 924317649 )
	mv x10, x19
	jal __mulsf3
	mv x11, x18
	jal __addsf3
	mv x11, x10
	mv x10, x21
	jal __subsf3
	jal x0, .LBB0_27
.LBB0_13:                               //  %if.then33
	mv x18, x0
	mv x10, fp
	mv x11, x18
	jal __nesf2
	bltu x0, x10, .LBB0_16
.LBB0_14:                               //  %if.then35
	beq x0, x9, .LBB0_30
.LBB0_15:                               //  %if.else
	mv x10, x9
	jal __floatsisf
	mv fp, x10
	lui x10, %hi( 1060204928 )
	add x11, x10, %lo( 1060204928 )
	mv x10, fp
	jal __mulsf3
	mv x9, x10
	lui x10, %hi( 924317649 )
	add x11, x10, %lo( 924317649 )
	mv x10, fp
	jal __mulsf3
	mv x11, x10
	mv x10, x9
	jal __addsf3
	jal x0, .LBB0_29
.LBB0_23:                               //  %if.else100
	beq x0, x9, .LBB0_24
.LBB0_26:                               //  %if.else107
	lui x10, %hi( 1060204928 )
	add x11, x10, %lo( 1060204928 )
	mv x10, x19
	jal __mulsf3
	mv x9, x10
	mv x10, fp
	mv x11, x20
	jal __subsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	mv x18, x10
	lui x10, %hi( -1223165999 )
	add x11, x10, %lo( -1223165999 )
	mv x10, x19
	jal __mulsf3
	mv x11, x10
	mv x10, x18
	jal __addsf3
.LBB0_27:                               //  %cleanup
	mv x11, fp
	jal __subsf3
	mv x11, x10
	mv x10, x9
	jal x0, .LBB0_28
.LBB0_21:                               //  %if.then86
	mv x10, x21
	mv x11, x20
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	mv x11, x10
	mv x10, x21
	jal __subsf3
	jal x0, .LBB0_25
.LBB0_16:                               //  %if.end41
	mv x10, fp
	mv x11, fp
	jal __mulsf3
	mv x18, x10
	lui x10, %hi( -1096111445 )
	add x11, x10, %lo( -1096111445 )
	mv x10, fp
	jal __mulsf3
	lui x11, (1056964608>>12)&1048575
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	mv x18, x10
	beq x0, x9, .LBB0_17
.LBB0_18:                               //  %if.else50
	mv x10, x9
	jal __floatsisf
	mv x9, x10
	lui x10, %hi( 1060204928 )
	add x11, x10, %lo( 1060204928 )
	mv x10, x9
	jal __mulsf3
	mv x19, x10
	lui x10, %hi( -1223165999 )
	add x11, x10, %lo( -1223165999 )
	mv x10, x9
	jal __mulsf3
	mv x11, x10
	mv x10, x18
	jal __addsf3
	mv x11, fp
	jal __subsf3
	mv x11, x10
	mv x10, x19
	jal x0, .LBB0_28
.LBB0_24:                               //  %if.then103
	mv x10, fp
	mv x11, x20
	jal __subsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
.LBB0_25:                               //  %cleanup
	mv x11, x10
	mv x10, fp
.LBB0_28:                               //  %cleanup
	jal __subsf3
.LBB0_29:                               //  %cleanup
	mv x18, x10
.LBB0_30:                               //  %cleanup
	mv x10, x18
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
.LBB0_17:                               //  %if.then48
	mv x10, fp
	mv x11, x18
	jal x0, .LBB0_28
.Lfunc_end0:
	.size	__ieee754_logf, .Lfunc_end0-__ieee754_logf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
