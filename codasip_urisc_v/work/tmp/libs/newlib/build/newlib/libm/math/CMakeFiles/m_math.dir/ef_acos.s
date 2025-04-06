	.text
	.file	"ef_acos.c"
	.globl	__ieee754_acosf         //  -- Begin function __ieee754_acosf
	.type	__ieee754_acosf,@function
__ieee754_acosf:                        //  @__ieee754_acosf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -28
	mv fp, x10
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	and x10, x10, fp
	lui x11, (1065353216>>12)&1048575
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
	bne x10, x11, .LBB0_3
.LBB0_1:                                //  %if.then
	mv x10, x0
	blt x10, fp, .LBB0_13
.LBB0_2:                                //  %if.then
	lui x10, %hi( 1078530011 )
	add x10, x10, %lo( 1078530011 )
	jal x0, .LBB0_13
.LBB0_3:                                //  %if.else3
	lui x11, %hi( 1065353217 )
	add x11, x11, %lo( 1065353217 )
	bltu x10, x11, .LBB0_5
.LBB0_4:                                //  %if.then5
	mv x10, fp
	mv x11, fp
	jal __subsf3
	mv x11, x10
	jal __divsf3
	jal x0, .LBB0_13
.LBB0_5:                                //  %if.end7
	srl x11, x10, 24&31
	add x12, x0, 62
	bltu x12, x11, .LBB0_9
.LBB0_6:                                //  %if.then9
	lui x11, %hi( 587202561 )
	add x11, x11, %lo( 587202561 )
	bgeu x10, x11, .LBB0_8
.LBB0_7:
	lui x10, %hi( 1070141403 )
	add x10, x10, %lo( 1070141403 )
	jal x0, .LBB0_13
.LBB0_9:                                //  %if.else36
	lui x9, (1065353216>>12)&1048575
	blt fp, x0, .LBB0_10
.LBB0_11:                               //  %if.else66
	mv x10, x9
	mv x11, fp
	jal __subsf3
	lui x11, (1056964608>>12)&1048575
	jal __mulsf3
	mv x19, x10
	jal __ieee754_sqrtf
	mv x18, x10
	lui x10, %hi( -4096 )
	add x10, x10, %lo( -4096 )
	and fp, x10, x18
	mv x10, fp
	mv x11, fp
	jal __mulsf3
	mv x11, x10
	mv x10, x19
	jal __subsf3
	mv x20, x10
	mv x10, x18
	mv x11, fp
	jal __addsf3
	mv x11, x10
	mv x10, x20
	jal __divsf3
	mv x20, x10
	lui x10, %hi( 940699400 )
	add x11, x10, %lo( 940699400 )
	mv x10, x19
	jal __mulsf3
	lui x11, %hi( 978288388 )
	add x11, x11, %lo( 978288388 )
	jal __addsf3
	mv x11, x10
	mv x10, x19
	jal __mulsf3
	lui x11, %hi( -1121709754 )
	add x11, x11, %lo( -1121709754 )
	jal __addsf3
	mv x11, x10
	mv x10, x19
	jal __mulsf3
	lui x11, %hi( 1045301928 )
	add x11, x11, %lo( 1045301928 )
	jal __addsf3
	mv x11, x10
	mv x10, x19
	jal __mulsf3
	lui x11, %hi( -1096372080 )
	add x11, x11, %lo( -1096372080 )
	jal __addsf3
	mv x11, x10
	mv x10, x19
	jal __mulsf3
	lui x11, %hi( 1042983595 )
	add x11, x11, %lo( 1042983595 )
	jal __addsf3
	mv x11, x10
	mv x10, x19
	jal __mulsf3
	mv x21, x10
	lui x10, %hi( 1033750062 )
	add x11, x10, %lo( 1033750062 )
	mv x10, x19
	jal __mulsf3
	lui x11, %hi( -1087360159 )
	add x11, x11, %lo( -1087360159 )
	jal __addsf3
	mv x11, x10
	mv x10, x19
	jal __mulsf3
	lui x11, %hi( 1073829677 )
	add x11, x11, %lo( 1073829677 )
	jal __addsf3
	mv x11, x10
	mv x10, x19
	jal __mulsf3
	lui x11, %hi( -1072049863 )
	add x11, x11, %lo( -1072049863 )
	jal __addsf3
	mv x11, x10
	mv x10, x19
	jal __mulsf3
	mv x11, x9
	jal __addsf3
	mv x11, x10
	mv x10, x21
	jal __divsf3
	mv x11, x18
	jal __mulsf3
	mv x11, x20
	jal __addsf3
	mv x11, fp
	jal __addsf3
	mv x11, x10
	jal x0, .LBB0_12
.LBB0_8:                                //  %if.end12
	mv x10, fp
	mv x11, fp
	jal __mulsf3
	mv x9, x10
	lui x10, %hi( 940699400 )
	add x11, x10, %lo( 940699400 )
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 978288388 )
	add x11, x11, %lo( 978288388 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( -1121709754 )
	add x11, x11, %lo( -1121709754 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 1045301928 )
	add x11, x11, %lo( 1045301928 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( -1096372080 )
	add x11, x11, %lo( -1096372080 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 1042983595 )
	add x11, x11, %lo( 1042983595 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	mv x18, x10
	lui x10, %hi( 1033750062 )
	add x11, x10, %lo( 1033750062 )
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( -1087360159 )
	add x11, x11, %lo( -1087360159 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 1073829677 )
	add x11, x11, %lo( 1073829677 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( -1072049863 )
	add x11, x11, %lo( -1072049863 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, (1065353216>>12)&1048575
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __divsf3
	mv x11, fp
	jal __mulsf3
	mv x11, x10
	lui x10, %hi( 866263400 )
	add x10, x10, %lo( 866263400 )
	jal __subsf3
	mv x11, fp
	jal __subsf3
	lui x11, %hi( 1070141402 )
	add x11, x11, %lo( 1070141402 )
.LBB0_12:                               //  %cleanup
	jal __addsf3
	jal x0, .LBB0_13
.LBB0_10:                               //  %if.then38
	mv x10, fp
	mv x11, x9
	jal __addsf3
	lui x11, (1056964608>>12)&1048575
	jal __mulsf3
	mv fp, x10
	lui x10, %hi( 940699400 )
	add x11, x10, %lo( 940699400 )
	mv x10, fp
	jal __mulsf3
	lui x11, %hi( 978288388 )
	add x11, x11, %lo( 978288388 )
	jal __addsf3
	mv x11, x10
	mv x10, fp
	jal __mulsf3
	lui x11, %hi( -1121709754 )
	add x11, x11, %lo( -1121709754 )
	jal __addsf3
	mv x11, x10
	mv x10, fp
	jal __mulsf3
	lui x11, %hi( 1045301928 )
	add x11, x11, %lo( 1045301928 )
	jal __addsf3
	mv x11, x10
	mv x10, fp
	jal __mulsf3
	lui x11, %hi( -1096372080 )
	add x11, x11, %lo( -1096372080 )
	jal __addsf3
	mv x11, x10
	mv x10, fp
	jal __mulsf3
	lui x11, %hi( 1042983595 )
	add x11, x11, %lo( 1042983595 )
	jal __addsf3
	mv x11, x10
	mv x10, fp
	jal __mulsf3
	mv x18, x10
	lui x10, %hi( 1033750062 )
	add x11, x10, %lo( 1033750062 )
	mv x10, fp
	jal __mulsf3
	lui x11, %hi( -1087360159 )
	add x11, x11, %lo( -1087360159 )
	jal __addsf3
	mv x11, x10
	mv x10, fp
	jal __mulsf3
	lui x11, %hi( 1073829677 )
	add x11, x11, %lo( 1073829677 )
	jal __addsf3
	mv x11, x10
	mv x10, fp
	jal __mulsf3
	lui x11, %hi( -1072049863 )
	add x11, x11, %lo( -1072049863 )
	jal __addsf3
	mv x11, x10
	mv x10, fp
	jal __mulsf3
	mv x11, x9
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __divsf3
	mv x9, x10
	mv x10, fp
	jal __ieee754_sqrtf
	mv fp, x10
	mv x10, x9
	mv x11, fp
	jal __mulsf3
	lui x11, %hi( -1281220248 )
	add x11, x11, %lo( -1281220248 )
	jal __addsf3
	mv x11, x10
	mv x10, fp
	jal __addsf3
	mv x11, x10
	jal __addsf3
	mv x11, x10
	lui x10, %hi( 1078530010 )
	add x10, x10, %lo( 1078530010 )
	jal __subsf3
.LBB0_13:                               //  %cleanup
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x21, 8 ( sp )                //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__ieee754_acosf, .Lfunc_end0-__ieee754_acosf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
