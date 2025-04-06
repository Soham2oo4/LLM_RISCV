	.text
	.file	"wf_log10.c"
	.globl	log10f                  //  -- Begin function log10f
	.type	log10f,@function
log10f:                                 //  @log10f
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	mv x11, x0
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv fp, x10
	jal __lesf2
	mv x9, x10
	mv x10, fp
	jal __ieee754_log10f
	blt x0, x9, .LBB0_4
.LBB0_1:                                //  %if.then2
	mv x11, x0
	mv x10, fp
	jal __nesf2
	mv fp, x10
	jal __errno
	bltu x0, fp, .LBB0_3
.LBB0_2:                                //  %if.then4
	add x11, x0, 34
	sw x11, 0 ( x10 )
	lui x10, %hi( -8388608 )
	add x10, x10, %lo( -8388608 )
	jal x0, .LBB0_4
.LBB0_3:                                //  %if.else
	add x11, x0, 33
	sw x11, 0 ( x10 )
	lui x10, %hi( .str )
	add x10, x10, %lo( .str )
	jal nanf
.LBB0_4:                                //  %cleanup
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	log10f, .Lfunc_end0-log10f
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
