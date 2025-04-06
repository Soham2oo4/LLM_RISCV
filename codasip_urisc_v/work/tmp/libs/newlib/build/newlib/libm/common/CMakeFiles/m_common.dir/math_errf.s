	.text
	.file	"math_errf.c"
	.hidden	__math_uflowf           //  -- Begin function __math_uflowf
	.globl	__math_uflowf
	.type	__math_uflowf,@function
__math_uflowf:                          //  @__math_uflowf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x11, (268435456>>12)&1048575
	j xflowf
.Lfunc_end0:
	.size	__math_uflowf, .Lfunc_end0-__math_uflowf
	.cfi_endproc
                                        //  -- End function
	.type	xflowf,@function        //  -- Begin function xflowf
xflowf:                                 //  @xflowf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	mv x12, x10
	mv x13, x0
	mv x10, x11
	beq x12, x13, .LBB1_2
.LBB1_1:                                //  %entry
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	xor x10, x10, x11
.LBB1_2:                                //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal __mulsf3
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add x11, x0, 34
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	j with_errnof
.Lfunc_end1:
	.size	xflowf, .Lfunc_end1-xflowf
	.cfi_endproc
                                        //  -- End function
	.hidden	__math_oflowf           //  -- Begin function __math_oflowf
	.globl	__math_oflowf
	.type	__math_oflowf,@function
__math_oflowf:                          //  @__math_oflowf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x11, (1879048192>>12)&1048575
	j xflowf
.Lfunc_end2:
	.size	__math_oflowf, .Lfunc_end2-__math_oflowf
	.cfi_endproc
                                        //  -- End function
	.hidden	__math_divzerof         //  -- Begin function __math_divzerof
	.globl	__math_divzerof
	.type	__math_divzerof,@function
__math_divzerof:                        //  @__math_divzerof
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -8
	mv fp, x0
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x10, fp, .LBB3_1
.LBB3_2:                                //  %entry
	add x10, x0, -1
	jal x0, .LBB3_3
.LBB3_1:
	seqz x10, x0
.LBB3_3:                                //  %entry
	jal __floatsisf
	mv x11, fp
	jal __divsf3
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add x11, x0, 34
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	j with_errnof
.Lfunc_end3:
	.size	__math_divzerof, .Lfunc_end3-__math_divzerof
	.cfi_endproc
                                        //  -- End function
	.type	with_errnof,@function   //  -- Begin function with_errnof
with_errnof:                            //  @with_errnof
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	mv fp, x11
	mv x9, x10
	jal __errno
	sw fp, 0 ( x10 )
	mv x10, x9
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end4:
	.size	with_errnof, .Lfunc_end4-with_errnof
	.cfi_endproc
                                        //  -- End function
	.hidden	__math_invalidf         //  -- Begin function __math_invalidf
	.globl	__math_invalidf
	.type	__math_invalidf,@function
__math_invalidf:                        //  @__math_invalidf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	mv x11, x9
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	jal __subsf3
	mv x11, x10
	jal __divsf3
	mv fp, x10
	mv x10, x9
	mv x11, x9
	jal __unordsf2
	bltu x0, x10, .LBB5_2
.LBB5_1:                                //  %cond.false
	add x11, x0, 33
	mv x10, fp
	jal with_errnof
	mv fp, x10
.LBB5_2:                                //  %cond.end
	mv x10, fp
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end5:
	.size	__math_invalidf, .Lfunc_end5-__math_invalidf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
