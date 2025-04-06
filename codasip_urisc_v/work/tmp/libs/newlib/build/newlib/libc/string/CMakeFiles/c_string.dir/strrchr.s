	.text
	.file	"strrchr.c"
	.globl	strrchr                 //  -- Begin function strrchr
	.type	strrchr,@function
strrchr:                                //  @strrchr
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv fp, x11
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	beq x0, fp, .LBB0_3
.LBB0_1:                                //  %while.cond.preheader
	mv x11, x0
.LBB0_2:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	mv x9, x11
	mv x11, fp
	jal strchr
	mv x11, x10
	add x10, x11, 1
	bltu x0, x11, .LBB0_2
	jal x0, .LBB0_4
.LBB0_3:                                //  %if.else
	mv x11, x0
	jal strchr
	mv x9, x10
.LBB0_4:                                //  %if.end
	mv x10, x9
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	strrchr, .Lfunc_end0-strrchr
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
