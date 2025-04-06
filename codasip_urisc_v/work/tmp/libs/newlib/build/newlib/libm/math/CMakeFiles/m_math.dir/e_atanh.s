	.text
	.file	"e_atanh.c"
	.globl	__ieee754_atanh         //  -- Begin function __ieee754_atanh
	.type	__ieee754_atanh,@function
__ieee754_atanh:                        //  @__ieee754_atanh
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	sub x10, x0, x9
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -32
	mv fp, x11
	lui x11, %hi( 2147483647 )
	or x10, x10, x9
	add x11, x11, %lo( 2147483647 )
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	and x18, x11, fp
	lui x11, %hi( 1072693249 )
	slt x10, x10, x0
	or x10, x10, x18
	add x11, x11, %lo( 1072693249 )
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 22, -28
	bltu x10, x11, .LBB0_2
.LBB0_1:                                //  %if.then
	mv x10, x9
	mv x11, fp
	mv x12, x9
	mv x13, fp
	jal __subdf3
	mv x12, x10
	mv x13, x11
	jal x0, .LBB0_4
.LBB0_2:                                //  %if.end
	lui x10, (1072693248>>12)&1048575
	bne x18, x10, .LBB0_6
.LBB0_3:                                //  %if.then6
	mv x12, x0
	mv x10, x9
	mv x11, fp
	mv x13, x12
.LBB0_4:                                //  %cleanup
	jal __divdf3
	mv x9, x10
	mv fp, x11
.LBB0_5:                                //  %cleanup
	mv x10, x9
	mv x11, fp
.LBB0_13:                               //  %if.end32
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
.LBB0_6:                                //  %if.end8
	lui x10, %hi( -2013235812 )
	add x12, x10, %lo( -2013235812 )
	lui x10, %hi( 2117592124 )
	add x13, x10, %lo( 2117592124 )
	mv x10, x9
	mv x11, fp
	jal __adddf3
	mv x12, x0
	mv x13, x12
	jal __gtdf2
	bge x0, x10, .LBB0_8
.LBB0_7:                                //  %if.end8
	srl x10, x18, 20&31
	sltiu x10, x10, 995
	bltu x0, x10, .LBB0_5
.LBB0_8:                                //  %do.body13
	mv x10, x9
	mv x13, x18
	mv x11, x18
	mv x12, x9
	jal __adddf3
	mv x20, x10
	mv x19, x11
	srl x10, x18, 21&31
	add x11, x0, 510
	bltu x11, x10, .LBB0_10
.LBB0_9:                                //  %if.then21
	mv x10, x20
	mv x11, x19
	mv x12, x9
	mv x13, x18
	jal __muldf3
	mv x21, x10
	mv x22, x11
	mv x10, x0
	lui x11, (1072693248>>12)&1048575
	mv x12, x9
	mv x13, x18
	jal __subdf3
	mv x12, x10
	mv x13, x11
	mv x10, x21
	mv x11, x22
	jal __divdf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x19
	jal __adddf3
	jal x0, .LBB0_11
.LBB0_10:                               //  %if.else
	mv x10, x0
	lui x11, (1072693248>>12)&1048575
	mv x12, x9
	mv x13, x18
	jal __subdf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x19
	jal __divdf3
.LBB0_11:                               //  %if.end32
	jal log1p
	mv x12, x0
	lui x13, (1071644672>>12)&1048575
	jal __muldf3
	add x12, x0, -1
	blt x12, fp, .LBB0_13
.LBB0_12:                               //  %if.end32
	lui x12, %hi( -2147483648 )
	add x12, x12, %lo( -2147483648 )
	xor x11, x12, x11
	jal x0, .LBB0_13
.Lfunc_end0:
	.size	__ieee754_atanh, .Lfunc_end0-__ieee754_atanh
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
