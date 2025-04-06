	.text
	.file	"e_asin.c"
	.globl	__ieee754_asin          //  -- Begin function __ieee754_asin
	.type	__ieee754_asin,@function
__ieee754_asin:                         //  @__ieee754_asin
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lui x10, %hi( 2147483647 )
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -48
	mv fp, x11
	add x10, x10, %lo( 2147483647 )
	sw x26, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 26, -44
	and x26, x10, fp
	srl x10, x26, 20&31
	sltiu x10, x10, 1023
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
	sw x25, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 25, -40
	bltu x0, x10, .LBB0_7
.LBB0_1:                                //  %if.then
	lui x10, %hi( -1072693248 )
	add x10, x10, %lo( -1072693248 )
	add x10, x10, x26
	or x10, x9, x10
	beq x0, x10, .LBB0_2
.LBB0_6:                                //  %if.end
	mv x10, x9
	mv x11, fp
	mv x12, x9
	mv x13, fp
	jal __subdf3
	mv x12, x10
	mv x13, x11
	jal __divdf3
	jal x0, .LBB0_4
.LBB0_7:                                //  %if.else
	srl x10, x26, 21&31
	add x11, x0, 510
	bltu x11, x10, .LBB0_10
.LBB0_8:                                //  %if.then12
	srl x10, x26, 22&31
	add x11, x0, 248
	bltu x11, x10, .LBB0_16
.LBB0_9:                                //  %if.then14
	lui x10, %hi( -2013235812 )
	add x12, x10, %lo( -2013235812 )
	lui x10, %hi( 2117592124 )
	add x13, x10, %lo( 2117592124 )
	mv x10, x9
	mv x11, fp
	jal __adddf3
	mv x12, x0
	lui x13, (1072693248>>12)&1048575
	jal __gtdf2
	blt x0, x10, .LBB0_5
.LBB0_10:                               //  %if.end45
	mv x10, x9
	mv x11, fp
	jal fabs
	mv x9, x0
	lui x20, (1072693248>>12)&1048575
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x20
	jal __subdf3
	lui x13, (1071644672>>12)&1048575
	mv x12, x9
	jal __muldf3
	mv x18, x10
	lui x10, %hi( 234747657 )
	add x12, x10, %lo( 234747657 )
	lui x10, %hi( 1057111521 )
	add x13, x10, %lo( 1057111521 )
	mv x10, x18
	mv x19, x11
	jal __muldf3
	lui x12, %hi( 1963045512 )
	lui x13, %hi( 1061810144 )
	add x12, x12, %lo( 1963045512 )
	add x13, x13, %lo( 1061810144 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( -1251438789 )
	lui x13, %hi( -1079737816 )
	add x12, x12, %lo( -1251438789 )
	add x13, x13, %lo( -1079737816 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( 243811413 )
	lui x13, %hi( 1070186837 )
	add x12, x12, %lo( 243811413 )
	add x13, x13, %lo( 1070186837 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( 65761149 )
	lui x13, %hi( -1076570606 )
	add x12, x12, %lo( 65761149 )
	add x13, x13, %lo( -1076570606 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( 1431655765 )
	lui x13, %hi( 1069897045 )
	add x12, x12, %lo( 1431655765 )
	add x13, x13, %lo( 1069897045 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	mv x22, x10
	lui x10, %hi( -1322347902 )
	add x12, x10, %lo( -1322347902 )
	lui x10, %hi( 1068742853 )
	mv x21, x11
	add x13, x10, %lo( 1068742853 )
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( 462225753 )
	lui x13, %hi( -1075444116 )
	add x12, x12, %lo( 462225753 )
	add x13, x13, %lo( -1075444116 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( -1671853368 )
	lui x13, %hi( 1073752805 )
	add x12, x12, %lo( -1671853368 )
	add x13, x13, %lo( 1073752805 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( 478817611 )
	lui x13, %hi( -1073530329 )
	add x12, x12, %lo( 478817611 )
	add x13, x13, %lo( -1073530329 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	mv x12, x9
	mv x13, x20
	jal __adddf3
	mv x25, x10
	mv x24, x11
	mv x10, x18
	mv x11, x19
	jal __ieee754_sqrt
	mv x23, x10
	lui x10, %hi( 1072640819 )
	mv x20, x11
	add x10, x10, %lo( 1072640819 )
	bltu x26, x10, .LBB0_12
.LBB0_11:                               //  %if.then69
	mv x10, x22
	mv x11, x21
	mv x12, x25
	mv x13, x24
	jal __divdf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x20
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x20
	jal __adddf3
	mv x12, x10
	mv x13, x11
	jal __adddf3
	lui x12, %hi( 856972295 )
	lui x13, %hi( -1131305434 )
	add x12, x12, %lo( 856972295 )
	add x13, x13, %lo( -1131305434 )
	jal __adddf3
	mv x12, x10
	lui x10, %hi( 1413754136 )
	mv x13, x11
	lui x11, %hi( 1073291771 )
	add x10, x10, %lo( 1413754136 )
	add x11, x11, %lo( 1073291771 )
	jal __subdf3
	bge x9, fp, .LBB0_14
	jal x0, .LBB0_15
.LBB0_2:                                //  %if.then7
	lui x10, %hi( 1413754136 )
	add x12, x10, %lo( 1413754136 )
	lui x10, %hi( 1073291771 )
	add x13, x10, %lo( 1073291771 )
	mv x10, x9
	mv x11, fp
	jal __muldf3
	mv x18, x10
	lui x10, %hi( 856972295 )
	add x12, x10, %lo( 856972295 )
	lui x10, %hi( 1016178214 )
	mv x19, x11
	add x13, x10, %lo( 1016178214 )
	mv x10, x9
	mv x11, fp
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal x0, .LBB0_3
.LBB0_12:                               //  %if.else76
	mv x10, x22
	mv x11, x21
	mv x12, x25
	mv x13, x24
	jal __divdf3
	mv x21, x10
	mv x22, x11
	mv x10, x23
	mv x13, x20
	mv x11, x20
	mv x12, x23
	jal __adddf3
	mv x12, x21
	mv x13, x22
	jal __muldf3
	mv x21, x0
	mv x24, x11
	mv x22, x10
	mv x13, x20
	mv x12, x21
	mv x10, x21
	mv x11, x20
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __subdf3
	mv x18, x10
	mv x19, x11
	mv x10, x23
	mv x13, x20
	mv x11, x20
	mv x12, x21
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __divdf3
	mv x12, x10
	mv x13, x11
	jal __adddf3
	mv x12, x10
	lui x10, %hi( 856972295 )
	mv x13, x11
	lui x11, %hi( 1016178214 )
	add x10, x10, %lo( 856972295 )
	add x11, x11, %lo( 1016178214 )
	jal __subdf3
	mv x12, x10
	mv x13, x11
	mv x10, x22
	mv x11, x24
	jal __subdf3
	mv x18, x10
	mv x19, x11
	mv x10, x21
	mv x11, x20
	mv x12, x21
	mv x13, x20
	jal __adddf3
	mv x12, x10
	lui x10, %hi( 1413754136 )
	add x20, x10, %lo( 1413754136 )
	lui x10, %hi( 1072243195 )
	add x21, x10, %lo( 1072243195 )
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __subdf3
	mv x12, x18
	mv x13, x19
	jal __subdf3
	mv x12, x20
	mv x13, x21
	jal __adddf3
	blt x9, fp, .LBB0_15
.LBB0_14:                               //  %if.end98
	lui x12, %hi( -2147483648 )
	add x12, x12, %lo( -2147483648 )
	xor x11, x12, x11
	jal x0, .LBB0_15
.LBB0_16:                               //  %if.else19
	mv x10, x9
	mv x13, fp
	mv x11, fp
	mv x12, x9
	jal __muldf3
	mv x18, x10
	lui x10, %hi( 234747657 )
	add x12, x10, %lo( 234747657 )
	lui x10, %hi( 1057111521 )
	add x13, x10, %lo( 1057111521 )
	mv x10, x18
	mv x19, x11
	jal __muldf3
	lui x12, %hi( 1963045512 )
	lui x13, %hi( 1061810144 )
	add x12, x12, %lo( 1963045512 )
	add x13, x13, %lo( 1061810144 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( -1251438789 )
	lui x13, %hi( -1079737816 )
	add x12, x12, %lo( -1251438789 )
	add x13, x13, %lo( -1079737816 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( 243811413 )
	lui x13, %hi( 1070186837 )
	add x12, x12, %lo( 243811413 )
	add x13, x13, %lo( 1070186837 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( 65761149 )
	lui x13, %hi( -1076570606 )
	add x12, x12, %lo( 65761149 )
	add x13, x13, %lo( -1076570606 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( 1431655765 )
	lui x13, %hi( 1069897045 )
	add x12, x12, %lo( 1431655765 )
	add x13, x13, %lo( 1069897045 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	mv x20, x10
	lui x10, %hi( -1322347902 )
	add x12, x10, %lo( -1322347902 )
	lui x10, %hi( 1068742853 )
	mv x21, x11
	add x13, x10, %lo( 1068742853 )
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( 462225753 )
	lui x13, %hi( -1075444116 )
	add x12, x12, %lo( 462225753 )
	add x13, x13, %lo( -1075444116 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( -1671853368 )
	lui x13, %hi( 1073752805 )
	add x12, x12, %lo( -1671853368 )
	add x13, x13, %lo( 1073752805 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( 478817611 )
	lui x13, %hi( -1073530329 )
	add x12, x12, %lo( 478817611 )
	add x13, x13, %lo( -1073530329 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
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
	mv x12, x9
	mv x13, fp
	jal __muldf3
	mv x12, x9
	mv x13, fp
.LBB0_3:                                //  %cleanup103
	jal __adddf3
.LBB0_4:                                //  %cleanup103
	mv x9, x10
	mv fp, x11
.LBB0_5:                                //  %cleanup103
	mv x10, x9
	mv x11, fp
.LBB0_15:                               //  %if.end98
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x26, 4 ( sp )                //  4-byte Folded Reload
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
	.size	__ieee754_asin, .Lfunc_end0-__ieee754_asin
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
