	.text
	.file	"s_asinh.c"
	.globl	asinh                   //  -- Begin function asinh
	.type	asinh,@function
asinh:                                  //  @asinh
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x10
	lui x10, %hi( 2147483647 )
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -36
	mv fp, x11
	add x10, x10, %lo( 2147483647 )
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	and x19, x10, fp
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	srl x20, x19, 20&31
	sltiu x10, x20, 2047
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	bltu x0, x10, .LBB0_3
.LBB0_1:                                //  %if.then
	mv x10, x18
	mv x11, fp
	mv x12, x18
	mv x13, fp
	jal __adddf3
	mv x18, x10
	mv fp, x11
	jal x0, .LBB0_2
.LBB0_3:                                //  %if.end
	lui x10, %hi( -2013235812 )
	add x12, x10, %lo( -2013235812 )
	lui x10, %hi( 2117592124 )
	add x13, x10, %lo( 2117592124 )
	mv x10, x18
	mv x11, fp
	jal __adddf3
	mv x9, x0
	lui x13, (1072693248>>12)&1048575
	mv x12, x9
	jal __gtdf2
	bge x0, x10, .LBB0_5
.LBB0_4:                                //  %if.end
	sltiu x10, x20, 995
	beq x0, x10, .LBB0_5
.LBB0_2:                                //  %cleanup
	mv x10, x18
	mv x11, fp
.LBB0_12:                               //  %if.end31
	lw fp, 12 ( sp )                //  4-byte Folded Reload
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
.LBB0_5:                                //  %if.end7
	lui x10, %hi( 1102053377 )
	add x10, x10, %lo( 1102053377 )
	bltu x19, x10, .LBB0_7
.LBB0_6:                                //  %if.then9
	mv x10, x18
	mv x11, fp
	jal fabs
	jal __ieee754_log
	lui x12, %hi( -17155601 )
	lui x13, %hi( 1072049730 )
	add x12, x12, %lo( -17155601 )
	add x13, x13, %lo( 1072049730 )
	jal __adddf3
	blt x9, fp, .LBB0_12
	jal x0, .LBB0_11
.LBB0_7:                                //  %if.else
	lui x10, %hi( 1073741825 )
	add x10, x10, %lo( 1073741825 )
	bltu x19, x10, .LBB0_9
.LBB0_8:                                //  %if.then13
	mv x10, x18
	mv x11, fp
	jal fabs
	mv x19, x10
	mv x20, x11
	mv x12, x19
	mv x13, x20
	jal __adddf3
	mv x21, x10
	mv x22, x11
	mv x10, x18
	mv x11, fp
	mv x12, x18
	mv x13, fp
	jal __muldf3
	mv x18, x0
	lui x23, (1072693248>>12)&1048575
	mv x12, x18
	mv x13, x23
	jal __adddf3
	jal __ieee754_sqrt
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x23
	jal __divdf3
	mv x12, x10
	mv x13, x11
	mv x10, x21
	mv x11, x22
	jal __adddf3
	jal __ieee754_log
	blt x9, fp, .LBB0_12
	jal x0, .LBB0_11
.LBB0_9:                                //  %if.else21
	mv x10, x18
	mv x13, fp
	mv x11, fp
	mv x12, x18
	jal __muldf3
	mv x19, x10
	mv x20, x11
	mv x10, x18
	mv x11, fp
	jal fabs
	mv x22, x0
	lui x23, (1072693248>>12)&1048575
	mv x18, x10
	mv x21, x11
	mv x10, x19
	mv x11, x20
	mv x12, x22
	mv x13, x23
	jal __adddf3
	jal __ieee754_sqrt
	mv x12, x22
	mv x13, x23
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __divdf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x21
	jal __adddf3
	jal log1p
	blt x9, fp, .LBB0_12
.LBB0_11:                               //  %if.end31
	lui x12, %hi( -2147483648 )
	add x12, x12, %lo( -2147483648 )
	xor x11, x12, x11
	jal x0, .LBB0_12
.Lfunc_end0:
	.size	asinh, .Lfunc_end0-asinh
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
