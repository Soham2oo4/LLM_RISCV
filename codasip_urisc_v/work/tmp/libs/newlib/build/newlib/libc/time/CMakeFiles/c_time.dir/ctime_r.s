	.text
	.file	"ctime_r.c"
	.globl	ctime_r                 //  -- Begin function ctime_r
	.type	ctime_r,@function
ctime_r:                                //  @ctime_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw fp, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -8
	mv fp, x11
	add x11, sp, 4
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal localtime_r
	mv x11, fp
	jal asctime_r
	lw fp, 40 ( sp )                //  4-byte Folded Reload
	lw ra, 44 ( sp )                //  4-byte Folded Reload
	add sp, sp, 48
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	ctime_r, .Lfunc_end0-ctime_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
