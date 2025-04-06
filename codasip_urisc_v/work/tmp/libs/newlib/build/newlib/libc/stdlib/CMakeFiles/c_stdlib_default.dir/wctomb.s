	.text
	.file	"wctomb.c"
	.globl	wctomb                  //  -- Begin function wctomb
	.type	wctomb,@function
wctomb:                                 //  @wctomb
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x10, .LBB0_1
.LBB0_2:                                //  %if.end
	sltiu x12, x11, 256
	bltu x0, x12, .LBB0_4
.LBB0_3:                                //  %if.then2
	jal __errno
	add x11, x0, 138
	sw x11, 0 ( x10 )
	add x10, x0, -1
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_1:
	mv x10, x0
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_4:                                //  %if.end3
	sb x11, 0 ( x10 )
	seqz x10, x0
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	wctomb, .Lfunc_end0-wctomb
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
