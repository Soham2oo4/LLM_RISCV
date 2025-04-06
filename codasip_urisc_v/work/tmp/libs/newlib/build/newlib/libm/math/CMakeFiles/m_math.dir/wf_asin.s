	.text
	.file	"wf_asin.c"
	.globl	asinf                   //  -- Begin function asinf
	.type	asinf,@function
asinf:                                  //  @asinf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv x9, x10
	jal __ieee754_asinf
	mv fp, x10
	mv x10, x9
	mv x11, x9
	jal __unordsf2
	bltu x0, x10, .LBB0_3
.LBB0_1:                                //  %if.end
	mv x10, x9
	jal fabsf
	lui x11, (1065353216>>12)&1048575
	jal __gtsf2
	bge x0, x10, .LBB0_3
.LBB0_2:                                //  %if.then3
	jal __errno
	add x11, x0, 33
	sw x11, 0 ( x10 )
	lui x10, %hi( .str )
	add x10, x10, %lo( .str )
	jal nanf
	mv fp, x10
.LBB0_3:                                //  %cleanup
	mv x10, fp
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	asinf, .Lfunc_end0-asinf
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
