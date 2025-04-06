	.text
	.file	"frexpl.c"
	.globl	frexpl                  //  -- Begin function frexpl
	.type	frexpl,@function
frexpl:                                 //  @frexpl
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -8
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	mv fp, x14
	jal __trunctfdf2
	mv x12, fp
	jal frexp
	jal __extenddftf2
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	frexpl, .Lfunc_end0-frexpl
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
