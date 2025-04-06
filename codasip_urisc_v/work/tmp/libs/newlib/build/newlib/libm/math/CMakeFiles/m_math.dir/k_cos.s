	.text
	.file	"k_cos.c"
	.globl	__kernel_cos            //  -- Begin function __kernel_cos
	.type	__kernel_cos,@function
__kernel_cos:                           //  @__kernel_cos
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -44
	mv x18, x13
	mv x19, x12
	mv x20, x11
	mv x21, x10
	jal __fixdfsi
	lui x11, %hi( 2147483647 )
	add x11, x11, %lo( 2147483647 )
	and x23, x11, x20
	bltu x0, x10, .LBB0_3
.LBB0_1:                                //  %entry
	srl x10, x23, 22&31
	sltiu x10, x10, 249
	beq x0, x10, .LBB0_3
.LBB0_2:
	lui x11, (1072693248>>12)&1048575
	mv x10, x0
	jal x0, .LBB0_9
.LBB0_3:                                //  %if.end4
	mv x10, x21
	mv x11, x20
	mv x12, x21
	mv x13, x20
	jal __muldf3
	mv x9, x10
	lui x10, %hi( -1098368812 )
	add x12, x10, %lo( -1098368812 )
	lui x10, %hi( -1112999191 )
	add x13, x10, %lo( -1112999191 )
	mv x10, x9
	mv fp, x11
	jal __muldf3
	lui x12, %hi( -1112231484 )
	lui x13, %hi( 1042411166 )
	add x12, x12, %lo( -1112231484 )
	add x13, x13, %lo( 1042411166 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, fp
	jal __muldf3
	lui x12, %hi( -2137238867 )
	lui x13, %hi( -1097695665 )
	add x12, x12, %lo( -2137238867 )
	add x13, x13, %lo( -1097695665 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, fp
	jal __muldf3
	lui x12, %hi( 432739728 )
	lui x13, %hi( 1056571808 )
	add x12, x12, %lo( 432739728 )
	add x13, x13, %lo( 1056571808 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, fp
	jal __muldf3
	lui x12, %hi( 381768055 )
	lui x13, %hi( -1084833428 )
	add x12, x12, %lo( 381768055 )
	add x13, x13, %lo( -1084833428 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, fp
	jal __muldf3
	lui x12, %hi( 1431655756 )
	lui x13, %hi( 1067799893 )
	add x12, x12, %lo( 1431655756 )
	add x13, x13, %lo( 1067799893 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, fp
	jal __muldf3
	mv x12, x10
	lui x10, %hi( 1070805810 )
	mv x13, x11
	add x10, x10, %lo( 1070805810 )
	bltu x10, x23, .LBB0_5
.LBB0_4:                                //  %if.then17
	mv x10, x9
	mv x11, fp
	jal __muldf3
	mv x22, x10
	mv x23, x11
	mv x10, x21
	mv x11, x20
	mv x12, x19
	mv x13, x18
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x22
	mv x11, x23
	jal __subdf3
	mv x18, x10
	mv x20, x0
	lui x10, %hi( -1075838976 )
	mv x19, x11
	add x13, x10, %lo( -1075838976 )
	mv x10, x9
	mv x11, fp
	mv x12, x20
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __adddf3
	lui x13, (1072693248>>12)&1048575
	mv x12, x20
	jal __adddf3
	jal x0, .LBB0_9
.LBB0_5:                                //  %if.else
	mv x22, x0
	lui x10, (1072234496>>12)&1048575
	bgeu x10, x23, .LBB0_7
.LBB0_6:
	lui x23, (1070727168>>12)&1048575
	jal x0, .LBB0_8
.LBB0_7:                                //  %do.body27
	lui x10, %hi( -2097152 )
	add x10, x10, %lo( -2097152 )
	add x23, x10, x23
.LBB0_8:                                //  %if.end35
	mv x10, x9
	mv x11, fp
	jal __muldf3
	mv x24, x10
	mv x25, x11
	mv x10, x21
	mv x11, x20
	mv x12, x19
	mv x13, x18
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x24
	mv x11, x25
	jal __subdf3
	mv x20, x0
	mv x18, x10
	mv x19, x11
	lui x13, (1071644672>>12)&1048575
	mv x10, x9
	mv x11, fp
	mv x12, x20
	jal __muldf3
	mv x12, x22
	mv x13, x23
	jal __subdf3
	mv x12, x18
	mv x13, x19
	jal __subdf3
	mv fp, x10
	mv x9, x11
	lui x11, (1072693248>>12)&1048575
	mv x10, x20
	mv x12, x22
	mv x13, x23
	jal __subdf3
	mv x12, fp
	mv x13, x9
	jal __subdf3
.LBB0_9:                                //  %cleanup
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x25, 8 ( sp )                //  4-byte Folded Reload
	lw x24, 12 ( sp )               //  4-byte Folded Reload
	lw x23, 16 ( sp )               //  4-byte Folded Reload
	lw x22, 20 ( sp )               //  4-byte Folded Reload
	lw x21, 24 ( sp )               //  4-byte Folded Reload
	lw x20, 28 ( sp )               //  4-byte Folded Reload
	lw x19, 32 ( sp )               //  4-byte Folded Reload
	lw x18, 36 ( sp )               //  4-byte Folded Reload
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	lw ra, 44 ( sp )                //  4-byte Folded Reload
	add sp, sp, 48
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__kernel_cos, .Lfunc_end0-__kernel_cos
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
