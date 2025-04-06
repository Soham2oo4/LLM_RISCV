	.text
	.file	"sf_tanh.c"
	.globl	tanhf                   //  -- Begin function tanhf
	.type	tanhf,@function
tanhf:                                  //  @tanhf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv fp, x10
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	and x10, x10, fp
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	srl x9, x10, 23&31
	sltiu x11, x9, 255
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x11, .LBB0_1
.LBB0_4:                                //  %if.end
	srl x11, x10, 20&31
	add x12, x0, 1050
	bltu x12, x11, .LBB0_5
.LBB0_6:                                //  %if.then5
	srl x10, x10, 26&31
	add x11, x0, 8
	bltu x11, x10, .LBB0_8
.LBB0_7:                                //  %if.then7
	lui x11, (1065353216>>12)&1048575
	mv x10, fp
	jal __addsf3
	mv x11, fp
	jal __mulsf3
	jal x0, .LBB0_13
.LBB0_1:                                //  %if.then
	lui x10, (1065353216>>12)&1048575
	mv x11, fp
	jal __divsf3
	blt fp, x0, .LBB0_3
.LBB0_2:                                //  %if.then2
	lui x11, (1065353216>>12)&1048575
	jal __addsf3
	jal x0, .LBB0_13
.LBB0_5:
	lui x10, (1065353216>>12)&1048575
	add x11, x0, -1
	bge x11, fp, .LBB0_12
	jal x0, .LBB0_13
.LBB0_3:                                //  %if.else
	lui x11, %hi( -1082130432 )
	add x11, x11, %lo( -1082130432 )
	jal __addsf3
	jal x0, .LBB0_13
.LBB0_8:                                //  %if.end9
	mv x10, fp
	jal fabsf
	sltiu x11, x9, 127
	bltu x0, x11, .LBB0_10
.LBB0_9:                                //  %if.then11
	mv x11, x10
	jal __addsf3
	jal expm1f
	lui x9, (1073741824>>12)&1048575
	mv x11, x9
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __divsf3
	mv x11, x10
	lui x10, (1065353216>>12)&1048575
	jal __subsf3
	add x11, x0, -1
	bge x11, fp, .LBB0_12
	jal x0, .LBB0_13
.LBB0_10:                               //  %if.else17
	lui x11, %hi( -1073741824 )
	add x11, x11, %lo( -1073741824 )
	jal __mulsf3
	jal expm1f
	lui x11, (1073741824>>12)&1048575
	mv x9, x10
	jal __addsf3
	mv x11, x10
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	xor x10, x10, x9
	jal __divsf3
	add x11, x0, -1
	blt x11, fp, .LBB0_13
.LBB0_12:                               //  %if.end26
	lui x11, %hi( -2147483648 )
	add x11, x11, %lo( -2147483648 )
	xor x10, x11, x10
.LBB0_13:                               //  %cleanup
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	tanhf, .Lfunc_end0-tanhf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
