	.text
	.file	"e_acos.c"
	.globl	__ieee754_acos          //  -- Begin function __ieee754_acos
	.type	__ieee754_acos,@function
__ieee754_acos:                         //  @__ieee754_acos
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
	and x10, x10, fp
	srl x11, x10, 20&31
	sltiu x11, x11, 1023
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
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
	bltu x0, x11, .LBB0_5
.LBB0_1:                                //  %if.then
	lui x11, %hi( -1072693248 )
	add x11, x11, %lo( -1072693248 )
	add x10, x11, x10
	or x10, x18, x10
	beq x0, x10, .LBB0_2
.LBB0_4:                                //  %if.end
	mv x10, x18
	mv x11, fp
	mv x12, x18
	mv x13, fp
	jal __subdf3
	mv x12, x10
	mv x13, x11
	jal __divdf3
	jal x0, .LBB0_13
.LBB0_5:                                //  %if.end12
	srl x11, x10, 21&31
	add x12, x0, 510
	bltu x12, x11, .LBB0_9
.LBB0_6:                                //  %if.then14
	lui x11, %hi( 1012924417 )
	lui x22, %hi( 1073291771 )
	lui x23, %hi( 1413754136 )
	add x11, x11, %lo( 1012924417 )
	bgeu x10, x11, .LBB0_8
.LBB0_7:
	add x11, x22, %lo( 1073291771 )
	add x10, x23, %lo( 1413754136 )
	jal x0, .LBB0_13
.LBB0_9:                                //  %if.else41
	mv x9, x0
	lui x19, (1072693248>>12)&1048575
	blt fp, x0, .LBB0_10
.LBB0_11:                               //  %if.else71
	mv x10, x9
	mv x11, x19
	mv x12, x18
	mv x13, fp
	jal __subdf3
	lui x13, (1071644672>>12)&1048575
	mv x12, x9
	jal __muldf3
	mv fp, x10
	lui x10, %hi( 234747657 )
	add x12, x10, %lo( 234747657 )
	lui x10, %hi( 1057111521 )
	add x13, x10, %lo( 1057111521 )
	mv x10, fp
	mv x18, x11
	jal __muldf3
	lui x12, %hi( 1963045512 )
	lui x13, %hi( 1061810144 )
	add x12, x12, %lo( 1963045512 )
	add x13, x13, %lo( 1061810144 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x18
	jal __muldf3
	lui x12, %hi( -1251438789 )
	lui x13, %hi( -1079737816 )
	add x12, x12, %lo( -1251438789 )
	add x13, x13, %lo( -1079737816 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x18
	jal __muldf3
	lui x12, %hi( 243811413 )
	lui x13, %hi( 1070186837 )
	add x12, x12, %lo( 243811413 )
	add x13, x13, %lo( 1070186837 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x18
	jal __muldf3
	lui x12, %hi( 65761149 )
	lui x13, %hi( -1076570606 )
	add x12, x12, %lo( 65761149 )
	add x13, x13, %lo( -1076570606 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x18
	jal __muldf3
	lui x12, %hi( 1431655765 )
	lui x13, %hi( 1069897045 )
	add x12, x12, %lo( 1431655765 )
	add x13, x13, %lo( 1069897045 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x18
	jal __muldf3
	mv x20, x10
	lui x10, %hi( -1322347902 )
	add x12, x10, %lo( -1322347902 )
	lui x10, %hi( 1068742853 )
	mv x21, x11
	add x13, x10, %lo( 1068742853 )
	mv x10, fp
	mv x11, x18
	jal __muldf3
	lui x12, %hi( 462225753 )
	lui x13, %hi( -1075444116 )
	add x12, x12, %lo( 462225753 )
	add x13, x13, %lo( -1075444116 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x18
	jal __muldf3
	lui x12, %hi( -1671853368 )
	lui x13, %hi( 1073752805 )
	add x12, x12, %lo( -1671853368 )
	add x13, x13, %lo( 1073752805 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x18
	jal __muldf3
	lui x12, %hi( 478817611 )
	lui x13, %hi( -1073530329 )
	add x12, x12, %lo( 478817611 )
	add x13, x13, %lo( -1073530329 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x18
	jal __muldf3
	mv x12, x9
	mv x13, x19
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __divdf3
	mv x19, x10
	mv x20, x11
	mv x10, fp
	mv x11, x18
	jal __ieee754_sqrt
	mv x21, x10
	mv x22, x11
	mv x10, x19
	mv x11, x20
	mv x12, x21
	mv x13, x22
	jal __muldf3
	mv x19, x10
	mv x20, x11
	mv x10, x9
	mv x11, x22
	mv x12, x9
	mv x13, x22
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x18
	jal __subdf3
	mv fp, x10
	mv x18, x11
	mv x10, x21
	mv x11, x22
	mv x12, x9
	mv x13, x22
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x18
	jal __divdf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __adddf3
	mv x12, x9
	mv x13, x22
	jal __adddf3
	mv x12, x10
	mv x13, x11
	jal x0, .LBB0_12
.LBB0_2:                                //  %if.then7
	mv x11, x0
	mv x10, x11
	blt x11, fp, .LBB0_13
.LBB0_3:                                //  %if.then7
	lui x10, %hi( 1074340347 )
	add x11, x10, %lo( 1074340347 )
	lui x10, %hi( 1413754136 )
	add x10, x10, %lo( 1413754136 )
	jal x0, .LBB0_13
.LBB0_8:                                //  %if.end17
	mv x10, x18
	mv x13, fp
	mv x11, fp
	mv x12, x18
	jal __muldf3
	mv x9, x10
	lui x10, %hi( 234747657 )
	add x12, x10, %lo( 234747657 )
	lui x10, %hi( 1057111521 )
	add x13, x10, %lo( 1057111521 )
	mv x10, x9
	mv x19, x11
	jal __muldf3
	lui x12, %hi( 1963045512 )
	lui x13, %hi( 1061810144 )
	add x12, x12, %lo( 1963045512 )
	add x13, x13, %lo( 1061810144 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x19
	jal __muldf3
	lui x12, %hi( -1251438789 )
	lui x13, %hi( -1079737816 )
	add x12, x12, %lo( -1251438789 )
	add x13, x13, %lo( -1079737816 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x19
	jal __muldf3
	lui x12, %hi( 243811413 )
	lui x13, %hi( 1070186837 )
	add x12, x12, %lo( 243811413 )
	add x13, x13, %lo( 1070186837 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x19
	jal __muldf3
	lui x12, %hi( 65761149 )
	lui x13, %hi( -1076570606 )
	add x12, x12, %lo( 65761149 )
	add x13, x13, %lo( -1076570606 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x19
	jal __muldf3
	lui x12, %hi( 1431655765 )
	lui x13, %hi( 1069897045 )
	add x12, x12, %lo( 1431655765 )
	add x13, x13, %lo( 1069897045 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x19
	jal __muldf3
	mv x20, x10
	lui x10, %hi( -1322347902 )
	add x12, x10, %lo( -1322347902 )
	lui x10, %hi( 1068742853 )
	mv x21, x11
	add x13, x10, %lo( 1068742853 )
	mv x10, x9
	mv x11, x19
	jal __muldf3
	lui x12, %hi( 462225753 )
	lui x13, %hi( -1075444116 )
	add x12, x12, %lo( 462225753 )
	add x13, x13, %lo( -1075444116 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x19
	jal __muldf3
	lui x12, %hi( -1671853368 )
	lui x13, %hi( 1073752805 )
	add x12, x12, %lo( -1671853368 )
	add x13, x13, %lo( 1073752805 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x19
	jal __muldf3
	lui x12, %hi( 478817611 )
	lui x13, %hi( -1073530329 )
	add x12, x12, %lo( 478817611 )
	add x13, x13, %lo( -1073530329 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x19
	jal __muldf3
	mv x12, x0
	lui x13, (1072693248>>12)&1048575
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __divdf3
	mv x12, x18
	mv x13, fp
	jal __muldf3
	mv x12, x10
	lui x10, %hi( 856972295 )
	mv x13, x11
	lui x11, %hi( 1016178214 )
	add x10, x10, %lo( 856972295 )
	add x11, x11, %lo( 1016178214 )
	jal __subdf3
	mv x12, x18
	mv x13, fp
	jal __subdf3
	add x12, x23, %lo( 1413754136 )
	add x13, x22, %lo( 1073291771 )
.LBB0_12:                               //  %cleanup110
	jal __adddf3
	jal x0, .LBB0_13
.LBB0_10:                               //  %if.then43
	mv x10, x18
	mv x11, fp
	mv x12, x9
	mv x13, x19
	jal __adddf3
	lui x13, (1071644672>>12)&1048575
	mv x12, x9
	jal __muldf3
	mv fp, x10
	lui x10, %hi( 234747657 )
	add x12, x10, %lo( 234747657 )
	lui x10, %hi( 1057111521 )
	add x13, x10, %lo( 1057111521 )
	mv x10, fp
	mv x18, x11
	jal __muldf3
	lui x12, %hi( 1963045512 )
	lui x13, %hi( 1061810144 )
	add x12, x12, %lo( 1963045512 )
	add x13, x13, %lo( 1061810144 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x18
	jal __muldf3
	lui x12, %hi( -1251438789 )
	lui x13, %hi( -1079737816 )
	add x12, x12, %lo( -1251438789 )
	add x13, x13, %lo( -1079737816 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x18
	jal __muldf3
	lui x12, %hi( 243811413 )
	lui x13, %hi( 1070186837 )
	add x12, x12, %lo( 243811413 )
	add x13, x13, %lo( 1070186837 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x18
	jal __muldf3
	lui x12, %hi( 65761149 )
	lui x13, %hi( -1076570606 )
	add x12, x12, %lo( 65761149 )
	add x13, x13, %lo( -1076570606 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x18
	jal __muldf3
	lui x12, %hi( 1431655765 )
	lui x13, %hi( 1069897045 )
	add x12, x12, %lo( 1431655765 )
	add x13, x13, %lo( 1069897045 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x18
	jal __muldf3
	mv x20, x10
	lui x10, %hi( -1322347902 )
	add x12, x10, %lo( -1322347902 )
	lui x10, %hi( 1068742853 )
	mv x21, x11
	add x13, x10, %lo( 1068742853 )
	mv x10, fp
	mv x11, x18
	jal __muldf3
	lui x12, %hi( 462225753 )
	lui x13, %hi( -1075444116 )
	add x12, x12, %lo( 462225753 )
	add x13, x13, %lo( -1075444116 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x18
	jal __muldf3
	lui x12, %hi( -1671853368 )
	lui x13, %hi( 1073752805 )
	add x12, x12, %lo( -1671853368 )
	add x13, x13, %lo( 1073752805 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x18
	jal __muldf3
	lui x12, %hi( 478817611 )
	lui x13, %hi( -1073530329 )
	add x12, x12, %lo( 478817611 )
	add x13, x13, %lo( -1073530329 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x18
	jal __muldf3
	mv x12, x9
	mv x13, x19
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __divdf3
	mv x9, x10
	mv x19, x11
	mv x10, fp
	mv x11, x18
	jal __ieee754_sqrt
	mv fp, x10
	mv x18, x11
	mv x10, x9
	mv x11, x19
	mv x12, fp
	mv x13, x18
	jal __muldf3
	lui x12, %hi( 856972295 )
	lui x13, %hi( -1131305434 )
	add x12, x12, %lo( 856972295 )
	add x13, x13, %lo( -1131305434 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x18
	jal __adddf3
	mv x12, x10
	mv x13, x11
	jal __adddf3
	mv x12, x10
	lui x10, %hi( 1413754136 )
	mv x13, x11
	lui x11, %hi( 1074340347 )
	add x10, x10, %lo( 1413754136 )
	add x11, x11, %lo( 1074340347 )
	jal __subdf3
.LBB0_13:                               //  %cleanup110
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
.Lfunc_end0:
	.size	__ieee754_acos, .Lfunc_end0-__ieee754_acos
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
