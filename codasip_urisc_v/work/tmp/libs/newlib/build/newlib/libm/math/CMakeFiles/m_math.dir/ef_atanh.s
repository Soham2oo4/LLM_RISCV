	.text
	.file	"ef_atanh.c"
	.globl	__ieee754_atanhf        //  -- Begin function __ieee754_atanhf
	.type	__ieee754_atanhf,@function
__ieee754_atanhf:                       //  @__ieee754_atanhf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv fp, x10
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	lui x11, %hi( 1065353217 )
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	and x9, x10, fp
	add x10, x11, %lo( 1065353217 )
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	bltu x9, x10, .LBB0_2
.LBB0_1:                                //  %if.then
	mv x10, fp
	mv x11, fp
	jal __subsf3
	mv x11, x10
	jal x0, .LBB0_4
.LBB0_2:                                //  %if.end
	lui x10, (1065353216>>12)&1048575
	bne x9, x10, .LBB0_6
.LBB0_3:                                //  %if.then3
	mv x11, x0
	mv x10, fp
.LBB0_4:                                //  %cleanup
	jal __divsf3
	mv fp, x10
.LBB0_5:                                //  %cleanup
	mv x10, fp
.LBB0_13:                               //  %if.end27
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_6:                                //  %if.end5
	lui x10, %hi( 1900671690 )
	add x11, x10, %lo( 1900671690 )
	mv x10, fp
	jal __addsf3
	mv x11, x0
	jal __gtsf2
	bge x0, x10, .LBB0_8
.LBB0_7:                                //  %if.end5
	srl x10, x9, 23&31
	sltiu x10, x10, 99
	bltu x0, x10, .LBB0_5
.LBB0_8:                                //  %do.body10
	mv x10, x9
	mv x11, x9
	jal __addsf3
	mv x18, x10
	srl x10, x9, 24&31
	add x11, x0, 62
	bltu x11, x10, .LBB0_10
.LBB0_9:                                //  %if.then16
	mv x10, x18
	mv x11, x9
	jal __mulsf3
	mv x19, x10
	lui x10, (1065353216>>12)&1048575
	mv x11, x9
	jal __subsf3
	mv x11, x10
	mv x10, x19
	jal __divsf3
	mv x11, x10
	mv x10, x18
	jal __addsf3
	jal x0, .LBB0_11
.LBB0_10:                               //  %if.else
	lui x10, (1065353216>>12)&1048575
	mv x11, x9
	jal __subsf3
	mv x11, x10
	mv x10, x18
	jal __divsf3
.LBB0_11:                               //  %if.end27
	jal log1pf
	lui x11, (1056964608>>12)&1048575
	jal __mulsf3
	add x11, x0, -1
	blt x11, fp, .LBB0_13
.LBB0_12:                               //  %if.end27
	lui x11, %hi( -2147483648 )
	add x11, x11, %lo( -2147483648 )
	xor x10, x11, x10
	jal x0, .LBB0_13
.Lfunc_end0:
	.size	__ieee754_atanhf, .Lfunc_end0-__ieee754_atanhf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
