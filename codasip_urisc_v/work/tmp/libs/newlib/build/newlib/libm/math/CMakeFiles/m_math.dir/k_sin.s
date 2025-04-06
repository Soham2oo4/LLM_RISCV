	.text
	.file	"k_sin.c"
	.globl	__kernel_sin            //  -- Begin function __kernel_sin
	.type	__kernel_sin,@function
__kernel_sin:                           //  @__kernel_sin
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -64
	.cfi_adjust_cfa_offset 64
	sw x9, 56 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x22, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	sw ra, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20, 44 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 40 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x23, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	mv x22, x14
	mv x18, x13
	mv x19, x12
	mv fp, x11
	mv x9, x10
	jal __fixdfsi
	bltu x0, x10, .LBB0_2
.LBB0_1:                                //  %entry
	lui x10, (2143289344>>12)&1048575
	and x10, x10, fp
	srl x10, x10, 22&31
	sltiu x10, x10, 249
	bltu x0, x10, .LBB0_6
.LBB0_2:                                //  %if.end4
	mv x10, x9
	mv x13, fp
	mv x11, fp
	mv x12, x9
	jal __muldf3
	mv x21, x10
	lui x10, %hi( 1523570044 )
	add x12, x10, %lo( 1523570044 )
	lui x10, %hi( 1038473530 )
	add x13, x10, %lo( 1038473530 )
	mv x10, x21
	mv x20, x11
	jal __muldf3
	lui x12, %hi( -1976853269 )
	lui x13, %hi( -1101339162 )
	add x12, x12, %lo( -1976853269 )
	add x13, x13, %lo( -1101339162 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x21
	mv x11, x20
	jal __muldf3
	lui x12, %hi( 1471282813 )
	lui x13, %hi( 1053236707 )
	add x12, x12, %lo( 1471282813 )
	add x13, x13, %lo( 1053236707 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x21
	mv x11, x20
	jal __muldf3
	lui x12, %hi( 432103893 )
	lui x13, %hi( -1087766112 )
	add x12, x12, %lo( 432103893 )
	add x13, x13, %lo( -1087766112 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x21
	mv x11, x20
	jal __muldf3
	lui x12, %hi( 286324902 )
	lui x13, %hi( 1065423121 )
	add x12, x12, %lo( 286324902 )
	add x13, x13, %lo( 1065423121 )
	jal __adddf3
	mv x26, x10
	mv x25, x11
	mv x10, x21
	mv x11, x20
	mv x12, x9
	mv x13, fp
	jal __muldf3
	mv x24, x10
	mv x23, x11
	beq x0, x22, .LBB0_3
.LBB0_4:                                //  %if.else
	mv x12, x0
	lui x13, (1071644672>>12)&1048575
	mv x10, x19
	mv x11, x18
	jal __muldf3
	mv x22, x10
	mv x27, x11
	mv x10, x24
	mv x11, x23
	mv x12, x26
	mv x13, x25
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x22
	mv x11, x27
	jal __subdf3
	mv x12, x10
	mv x13, x11
	mv x10, x21
	mv x11, x20
	jal __muldf3
	mv x12, x19
	mv x13, x18
	jal __subdf3
	mv x18, x10
	lui x10, %hi( 1431655753 )
	add x12, x10, %lo( 1431655753 )
	lui x10, %hi( 1069897045 )
	mv x19, x11
	add x13, x10, %lo( 1069897045 )
	mv x10, x24
	mv x11, x23
	jal __muldf3
	mv x12, x18
	mv x13, x19
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, fp
	jal __subdf3
	jal x0, .LBB0_5
.LBB0_3:                                //  %if.then15
	mv x10, x21
	mv x11, x20
	mv x12, x26
	mv x13, x25
	jal __muldf3
	lui x12, %hi( 1431655753 )
	lui x13, %hi( -1077586603 )
	add x12, x12, %lo( 1431655753 )
	add x13, x13, %lo( -1077586603 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x24
	mv x11, x23
	jal __muldf3
	mv x12, x9
	mv x13, fp
	jal __adddf3
.LBB0_5:                                //  %cleanup
	mv x9, x10
	mv fp, x11
.LBB0_6:                                //  %cleanup
	mv x10, x9
	mv x11, fp
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
.Lfunc_end0:
	.size	__kernel_sin, .Lfunc_end0-__kernel_sin
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
