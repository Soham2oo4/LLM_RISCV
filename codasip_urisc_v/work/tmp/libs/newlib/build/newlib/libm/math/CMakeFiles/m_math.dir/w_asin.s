	.text
	.file	"w_asin.c"
	.globl	asin                    //  -- Begin function asin
	.type	asin,@function
asin:                                   //  @asin
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv x18, x11
	mv x19, x10
	jal __ieee754_asin
	mv fp, x10
	mv x9, x11
	mv x10, x19
	mv x11, x18
	mv x12, x19
	mv x13, x18
	jal __unorddf2
	bltu x0, x10, .LBB0_3
.LBB0_1:                                //  %if.end
	mv x10, x19
	mv x11, x18
	jal fabs
	mv x12, x0
	lui x13, (1072693248>>12)&1048575
	jal __gtdf2
	bge x0, x10, .LBB0_3
.LBB0_2:                                //  %if.then3
	jal __errno
	add x11, x0, 33
	sw x11, 0 ( x10 )
	lui x10, %hi( .str )
	add x10, x10, %lo( .str )
	jal nan
	mv fp, x10
	mv x9, x11
.LBB0_3:                                //  %cleanup
	mv x10, fp
	mv x11, x9
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	asin, .Lfunc_end0-asin
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.zero	1
	.size	.str, 1


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
