	.text
	.file	"math_err.c"
	.hidden	__math_uflow            //  -- Begin function __math_uflow
	.globl	__math_uflow
	.type	__math_uflow,@function
__math_uflow:                           //  @__math_uflow
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x11, x0
	lui x12, (268435456>>12)&1048575
	j xflow
.Lfunc_end0:
	.size	__math_uflow, .Lfunc_end0-__math_uflow
	.cfi_endproc
                                        //  -- End function
	.type	xflow,@function         //  -- Begin function xflow
xflow:                                  //  @xflow
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	mv x13, x12
	mv x12, x11
	mv x14, x0
	mv x11, x13
	beq x10, x14, .LBB1_2
.LBB1_1:                                //  %entry
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	xor x11, x10, x13
.LBB1_2:                                //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	add x10, sp, 16
	or x10, x10, 4
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x11, 0 ( x10 )
	sw x12, 16 ( sp )
	lw x11, 0 ( x10 )
	lw x10, 16 ( sp )
	jal __muldf3
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add x12, x0, 34
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	j with_errno
.Lfunc_end1:
	.size	xflow, .Lfunc_end1-xflow
	.cfi_endproc
                                        //  -- End function
	.hidden	__math_may_uflow        //  -- Begin function __math_may_uflow
	.globl	__math_may_uflow
	.type	__math_may_uflow,@function
__math_may_uflow:                       //  @__math_may_uflow
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x11, x0
	lui x12, (509083648>>12)&1048575
	j xflow
.Lfunc_end2:
	.size	__math_may_uflow, .Lfunc_end2-__math_may_uflow
	.cfi_endproc
                                        //  -- End function
	.hidden	__math_oflow            //  -- Begin function __math_oflow
	.globl	__math_oflow
	.type	__math_oflow,@function
__math_oflow:                           //  @__math_oflow
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x11, x0
	lui x12, (1879048192>>12)&1048575
	j xflow
.Lfunc_end3:
	.size	__math_oflow, .Lfunc_end3-__math_oflow
	.cfi_endproc
                                        //  -- End function
	.hidden	__math_divzero          //  -- Begin function __math_divzero
	.globl	__math_divzero
	.type	__math_divzero,@function
__math_divzero:                         //  @__math_divzero
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	mv x12, x0
	beq x10, x12, .LBB4_1
.LBB4_2:                                //  %entry
	lui x10, %hi( -1074790400 )
	add x10, x10, %lo( -1074790400 )
	jal x0, .LBB4_3
.LBB4_1:
	lui x10, (1072693248>>12)&1048575
.LBB4_3:                                //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	add x11, sp, 16
	or x11, x11, 4
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x10, 0 ( x11 )
	sw x0, 16 ( sp )
	lw x11, 0 ( x11 )
	lw x10, 16 ( sp )
	mv x13, x12
	jal __divdf3
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add x12, x0, 34
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	j with_errno
.Lfunc_end4:
	.size	__math_divzero, .Lfunc_end4-__math_divzero
	.cfi_endproc
                                        //  -- End function
	.type	with_errno,@function    //  -- Begin function with_errno
with_errno:                             //  @with_errno
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	mv fp, x12
	mv x9, x11
	mv x18, x10
	jal __errno
	sw fp, 0 ( x10 )
	mv x10, x18
	mv x11, x9
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end5:
	.size	with_errno, .Lfunc_end5-with_errno
	.cfi_endproc
                                        //  -- End function
	.hidden	__math_invalid          //  -- Begin function __math_invalid
	.globl	__math_invalid
	.type	__math_invalid,@function
__math_invalid:                         //  @__math_invalid
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
	mv x18, x11
	mv x19, x10
	mv x12, x19
	mv x13, x18
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	jal __subdf3
	mv x12, x10
	mv x13, x11
	jal __divdf3
	mv fp, x10
	mv x9, x11
	mv x10, x19
	mv x11, x18
	mv x12, x19
	mv x13, x18
	jal __unorddf2
	bltu x0, x10, .LBB6_2
.LBB6_1:                                //  %cond.false
	add x12, x0, 33
	mv x10, fp
	mv x11, x9
	jal with_errno
	mv fp, x10
	mv x9, x11
.LBB6_2:                                //  %cond.end
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
.Lfunc_end6:
	.size	__math_invalid, .Lfunc_end6-__math_invalid
	.cfi_endproc
                                        //  -- End function
	.hidden	__math_check_uflow      //  -- Begin function __math_check_uflow
	.globl	__math_check_uflow
	.type	__math_check_uflow,@function
__math_check_uflow:                     //  @__math_check_uflow
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	mv x12, x0
	mv x13, x12
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	mv fp, x11
	mv x9, x10
	jal __nedf2
	bltu x0, x10, .LBB7_2
.LBB7_1:                                //  %cond.true
	add x12, x0, 34
	mv x10, x9
	mv x11, fp
	jal with_errno
	mv x9, x10
	mv fp, x11
.LBB7_2:                                //  %cond.end
	mv x10, x9
	mv x11, fp
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end7:
	.size	__math_check_uflow, .Lfunc_end7-__math_check_uflow
	.cfi_endproc
                                        //  -- End function
	.hidden	__math_check_oflow      //  -- Begin function __math_check_oflow
	.globl	__math_check_oflow
	.type	__math_check_oflow,@function
__math_check_oflow:                     //  @__math_check_oflow
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lui x10, %hi( 2147483647 )
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv fp, x11
	add x10, x10, %lo( 2147483647 )
	and x11, x10, fp
	mv x12, x0
	lui x13, (2146435072>>12)&1048575
	mv x10, x9
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal __nedf2
	bltu x0, x10, .LBB8_2
.LBB8_1:                                //  %cond.true
	add x12, x0, 34
	mv x10, x9
	mv x11, fp
	jal with_errno
	mv x9, x10
	mv fp, x11
.LBB8_2:                                //  %cond.end
	mv x10, x9
	mv x11, fp
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end8:
	.size	__math_check_oflow, .Lfunc_end8-__math_check_oflow
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
