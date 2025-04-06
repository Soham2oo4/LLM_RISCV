	.text
	.file	"s_cbrt.c"
	.globl	cbrt                    //  -- Begin function cbrt
	.type	cbrt,@function
cbrt:                                   //  @cbrt
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -40
	mv fp, x10
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	and x9, x10, x11
	srl x10, x9, 20&31
	sltiu x12, x10, 2047
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	bltu x0, x12, .LBB0_2
.LBB0_1:                                //  %if.then
	mv x10, fp
	mv x12, fp
	mv x13, x11
	jal __adddf3
	mv fp, x10
	jal x0, .LBB0_7
.LBB0_2:                                //  %do.body1
	or x12, fp, x9
	beq x0, x12, .LBB0_7
.LBB0_3:                                //  %do.body9
	lui x12, %hi( -2147483648 )
	add x12, x12, %lo( -2147483648 )
	and x24, x12, x11
	bltu x0, x10, .LBB0_5
.LBB0_4:                                //  %do.body18
	mv x12, x0
	lui x13, (1129316352>>12)&1048575
	mv x10, fp
	mv x11, x9
	jal __muldf3
	mv x18, x10
	mv x10, x11
	add x11, x0, 3
	jal __udivsi3
	lui x11, %hi( 696219795 )
	add x11, x11, %lo( 696219795 )
	add x19, x11, x10
	jal x0, .LBB0_6
.LBB0_5:                                //  %do.body42
	add x11, x0, 3
	mv x10, x9
	jal __udivsi3
	lui x11, %hi( 715094163 )
	add x11, x11, %lo( 715094163 )
	add x19, x11, x10
	mv x18, x0
.LBB0_6:                                //  %if.end52
	mv x10, x18
	mv x11, x19
	mv x12, x18
	mv x13, x19
	jal __muldf3
	mv x12, fp
	mv x13, x9
	jal __divdf3
	mv x12, x18
	mv x13, x19
	jal __muldf3
	lui x12, %hi( -245426703 )
	lui x13, %hi( 1071734549 )
	add x12, x12, %lo( -245426703 )
	add x13, x13, %lo( 1071734549 )
	jal __adddf3
	mv x20, x10
	lui x10, %hi( 245426703 )
	add x12, x10, %lo( 245426703 )
	lui x10, %hi( 1073127658 )
	add x13, x10, %lo( 1073127658 )
	mv x10, x20
	mv x21, x11
	jal __adddf3
	mv x22, x10
	lui x10, %hi( 624085044 )
	mv x23, x11
	lui x11, %hi( -1075408418 )
	add x10, x10, %lo( 624085044 )
	add x11, x11, %lo( -1075408418 )
	mv x12, x20
	mv x13, x21
	jal __divdf3
	mv x12, x10
	mv x13, x11
	mv x10, x22
	mv x11, x23
	jal __adddf3
	mv x12, x10
	lui x10, %hi( 1840700270 )
	mv x13, x11
	lui x11, %hi( 1073329883 )
	add x10, x10, %lo( 1840700270 )
	add x11, x11, %lo( 1073329883 )
	jal __divdf3
	lui x12, %hi( -1227133513 )
	lui x13, %hi( 1071045485 )
	add x12, x12, %lo( -1227133513 )
	add x13, x13, %lo( 1071045485 )
	jal __adddf3
	mv x12, x18
	mv x13, x19
	jal __muldf3
	add x18, x11, 1
	mv x19, x0
	mv x12, x19
	mv x10, x19
	mv x11, x18
	mv x13, x18
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x9
	jal __divdf3
	mv x12, x19
	mv x13, x18
	mv fp, x10
	mv x9, x11
	jal __subdf3
	mv x20, x10
	mv x21, x11
	mv x10, x19
	mv x11, x18
	mv x12, x19
	mv x13, x18
	jal __adddf3
	mv x12, fp
	mv x13, x9
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __divdf3
	mv x12, x19
	mv x13, x18
	jal __muldf3
	mv x12, x19
	mv x13, x18
	jal __adddf3
	mv fp, x10
	or x11, x11, x24
.LBB0_7:                                //  %cleanup
	mv x10, fp
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
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
	.size	cbrt, .Lfunc_end0-cbrt
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
