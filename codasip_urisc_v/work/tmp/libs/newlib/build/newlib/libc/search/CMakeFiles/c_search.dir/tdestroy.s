	.text
	.file	"tdestroy.c"
	.globl	tdestroy                //  -- Begin function tdestroy
	.type	tdestroy,@function
tdestroy:                               //  @tdestroy
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	beq x0, x10, .LBB0_2
.LBB0_1:                                //  %if.then
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal trecurse
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
.LBB0_2:                                //  %if.end
	jr ra
.Lfunc_end0:
	.size	tdestroy, .Lfunc_end0-tdestroy
	.cfi_endproc
                                        //  -- End function
	.type	trecurse,@function      //  -- Begin function trecurse
trecurse:                               //  @trecurse
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv fp, x10
	lw x10, 4 ( fp )
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x10, .LBB1_2
.LBB1_1:                                //  %if.then
	mv x11, x9
	jal trecurse
.LBB1_2:                                //  %if.end
	lw x10, 8 ( fp )
	beq x0, x10, .LBB1_4
.LBB1_3:                                //  %if.then3
	mv x11, x9
	jal trecurse
.LBB1_4:                                //  %if.end5
	lw x10, 0 ( fp )
	call.reg x9
	mv x10, fp
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	j free
.Lfunc_end1:
	.size	trecurse, .Lfunc_end1-trecurse
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
