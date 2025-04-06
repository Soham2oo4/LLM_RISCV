	.text
	.file	"kf_cos.c"
	.globl	__kernel_cosf           //  -- Begin function __kernel_cosf
	.type	__kernel_cosf,@function
__kernel_cosf:                          //  @__kernel_cosf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -28
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
	mv fp, x11
	mv x9, x10
	jal __fixsfsi
	lui x11, %hi( 2147483647 )
	add x11, x11, %lo( 2147483647 )
	and x20, x11, x9
	bltu x0, x10, .LBB0_3
.LBB0_1:                                //  %entry
	srl x10, x20, 25&31
	sltiu x10, x10, 25
	beq x0, x10, .LBB0_3
.LBB0_2:
	lui x10, (1065353216>>12)&1048575
	jal x0, .LBB0_9
.LBB0_3:                                //  %if.end4
	mv x10, x9
	mv x11, x9
	jal __mulsf3
	mv x18, x10
	lui x10, %hi( -1387800754 )
	add x11, x10, %lo( -1387800754 )
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( 823096566 )
	add x11, x11, %lo( 823096566 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( -1265372548 )
	add x11, x11, %lo( -1265372548 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( 936381697 )
	add x11, x11, %lo( 936381697 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( -1162474655 )
	add x11, x11, %lo( -1162474655 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( 1026206379 )
	add x11, x11, %lo( 1026206379 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	mv x19, x10
	lui x10, %hi( 1050253721 )
	add x10, x10, %lo( 1050253721 )
	bltu x10, x20, .LBB0_5
.LBB0_4:                                //  %if.then17
	lui x10, %hi( -1090519040 )
	add x11, x10, %lo( -1090519040 )
	mv x10, x18
	jal __mulsf3
	mv x20, x10
	mv x10, x18
	mv x11, x19
	jal __mulsf3
	mv x18, x10
	mv x10, x9
	mv x11, fp
	jal __mulsf3
	mv x11, x10
	mv x10, x18
	jal __subsf3
	mv x11, x20
	jal __addsf3
	lui x11, (1065353216>>12)&1048575
	jal __addsf3
	jal x0, .LBB0_9
.LBB0_5:                                //  %if.else
	lui x11, (1056964608>>12)&1048575
	mv x10, x18
	jal __mulsf3
	lui x11, (1061683200>>12)&1048575
	bltu x11, x20, .LBB0_6
.LBB0_7:                                //  %if.else
	lui x11, %hi( -16777216 )
	add x11, x11, %lo( -16777216 )
	add x20, x11, x20
	jal x0, .LBB0_8
.LBB0_6:
	lui x20, (1049624576>>12)&1048575
.LBB0_8:                                //  %if.else
	mv x11, x20
	jal __subsf3
	mv x21, x10
	mv x10, x18
	mv x11, x19
	jal __mulsf3
	mv x18, x10
	mv x10, x9
	mv x11, fp
	jal __mulsf3
	mv x11, x10
	mv x10, x18
	jal __subsf3
	mv x11, x10
	mv x10, x21
	jal __subsf3
	mv fp, x10
	lui x10, (1065353216>>12)&1048575
	mv x11, x20
	jal __subsf3
	mv x11, fp
	jal __subsf3
.LBB0_9:                                //  %cleanup
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
	.size	__kernel_cosf, .Lfunc_end0-__kernel_cosf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
