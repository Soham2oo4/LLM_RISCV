	.text
	.file	"ef_asin.c"
	.globl	__ieee754_asinf         //  -- Begin function __ieee754_asinf
	.type	__ieee754_asinf,@function
__ieee754_asinf:                        //  @__ieee754_asinf
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
	sw x22, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 22, -28
	and x22, x10, fp
	lui x10, (1065353216>>12)&1048575
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
	bne x22, x10, .LBB0_2
.LBB0_1:                                //  %if.then
	lui x10, %hi( 1070141403 )
	add x11, x10, %lo( 1070141403 )
	mv x10, fp
	jal __mulsf3
	mv x9, x10
	lui x10, %hi( -1287930578 )
	add x11, x10, %lo( -1287930578 )
	mv x10, fp
	jal __mulsf3
	mv x11, x10
	mv x10, x9
.LBB0_12:                               //  %cleanup
	jal __addsf3
	jal x0, .LBB0_13
.LBB0_2:                                //  %if.else
	lui x10, %hi( 1065353217 )
	add x10, x10, %lo( 1065353217 )
	bltu x22, x10, .LBB0_4
.LBB0_3:                                //  %if.then3
	mv x10, fp
	mv x11, fp
	jal __subsf3
	mv x11, x10
	jal __divsf3
.LBB0_13:                               //  %cleanup
	mv fp, x10
.LBB0_14:                               //  %cleanup
	mv x10, fp
.LBB0_15:                               //  %if.end98
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
.LBB0_4:                                //  %if.else5
	srl x10, x22, 24&31
	add x11, x0, 62
	bltu x11, x10, .LBB0_7
.LBB0_5:                                //  %if.then7
	srl x10, x22, 25&31
	add x11, x0, 24
	bltu x11, x10, .LBB0_11
.LBB0_6:                                //  %if.then9
	lui x10, %hi( 1900671690 )
	add x11, x10, %lo( 1900671690 )
	mv x10, fp
	jal __addsf3
	lui x11, (1065353216>>12)&1048575
	jal __gtsf2
	blt x0, x10, .LBB0_14
.LBB0_7:                                //  %if.end40
	mv x10, fp
	jal fabsf
	lui x18, (1065353216>>12)&1048575
	mv x11, x10
	mv x10, x18
	jal __subsf3
	lui x11, (1056964608>>12)&1048575
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
	mv x19, x10
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
	mv x11, x18
	jal __addsf3
	mv x21, x10
	mv x10, x9
	jal __ieee754_sqrtf
	mv x20, x10
	lui x10, %hi( 1064933786 )
	add x10, x10, %lo( 1064933786 )
	bltu x22, x10, .LBB0_9
.LBB0_8:                                //  %if.then64
	mv x10, x19
	mv x11, x21
	jal __divsf3
	mv x11, x10
	mv x10, x20
	jal __mulsf3
	mv x11, x10
	mv x10, x20
	jal __addsf3
	mv x11, x10
	jal __addsf3
	lui x11, %hi( 859553070 )
	add x11, x11, %lo( 859553070 )
	jal __addsf3
	mv x11, x10
	lui x10, %hi( 1070141403 )
	add x10, x10, %lo( 1070141403 )
	jal __subsf3
	mv x11, x0
	bge x11, fp, .LBB0_10
	jal x0, .LBB0_15
.LBB0_9:                                //  %if.else71
	lui x10, %hi( -4096 )
	add x10, x10, %lo( -4096 )
	and x18, x10, x20
	mv x10, x18
	mv x11, x18
	jal __mulsf3
	mv x11, x10
	mv x10, x9
	jal __subsf3
	mv x9, x10
	mv x10, x20
	mv x11, x18
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __divsf3
	mv x9, x10
	mv x10, x19
	mv x11, x21
	jal __divsf3
	mv x19, x10
	mv x10, x20
	mv x11, x20
	jal __addsf3
	mv x11, x19
	jal __mulsf3
	mv x19, x10
	mv x10, x9
	mv x11, x9
	jal __addsf3
	mv x11, x10
	lui x10, %hi( -1287930578 )
	add x10, x10, %lo( -1287930578 )
	jal __subsf3
	mv x11, x10
	mv x10, x19
	jal __subsf3
	mv x9, x10
	mv x10, x18
	mv x11, x18
	jal __addsf3
	mv x11, x10
	lui x10, %hi( 1061752795 )
	add x18, x10, %lo( 1061752795 )
	mv x10, x18
	jal __subsf3
	mv x11, x9
	jal __subsf3
	mv x11, x18
	jal __addsf3
	mv x11, x0
	blt x11, fp, .LBB0_15
.LBB0_10:                               //  %if.end98
	lui x11, %hi( -2147483648 )
	add x11, x11, %lo( -2147483648 )
	xor x10, x11, x10
	jal x0, .LBB0_15
.LBB0_11:                               //  %if.else13
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
	mv x11, fp
	jal x0, .LBB0_12
.Lfunc_end0:
	.size	__ieee754_asinf, .Lfunc_end0-__ieee754_asinf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
