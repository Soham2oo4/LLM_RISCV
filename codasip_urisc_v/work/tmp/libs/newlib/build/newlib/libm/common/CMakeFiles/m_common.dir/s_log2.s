	.text
	.file	"s_log2.c"
	.globl	log2                    //  -- Begin function log2
	.type	log2,@function
log2:                                   //  @log2
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal log
	lui x12, %hi( -17155601 )
	lui x13, %hi( 1072049730 )
	add x12, x12, %lo( -17155601 )
	add x13, x13, %lo( 1072049730 )
	jal __divdf3
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	log2, .Lfunc_end0-log2
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
