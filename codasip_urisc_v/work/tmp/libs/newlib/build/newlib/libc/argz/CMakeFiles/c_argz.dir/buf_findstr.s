	.text
	.file	"buf_findstr.c"
	.globl	_buf_findstr            //  -- Begin function _buf_findstr
	.type	_buf_findstr,@function
_buf_findstr:                           //  @_buf_findstr
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lw x15, 0 ( x12 )
	mv x13, x0
	mv x14, x13
	beq x0, x15, .LBB0_12
.LBB0_1:                                //  %for.body.lr.ph
	lw x17, 0 ( x11 )
	lbu x5, 0 ( x10 )
	mv x14, x0
	seqz x6, x0
	add x16, x14, x17
	lbu x7, 0 ( x16 )
	beq x5, x7, .LBB0_3
.LBB0_7:                                //  %for.inc
                                        //  =>This Inner Loop Header: Depth=1
	add x14, x14, 1
	bgeu x14, x15, .LBB0_8
.LBB0_2:                                //  %for.body
                                        //    in Loop: Header=BB0_7 Depth=1
	add x16, x14, x17
	lbu x7, 0 ( x16 )
	bne x5, x7, .LBB0_7
.LBB0_3:                                //  %while.cond.preheader
	beq x0, x5, .LBB0_11
.LBB0_4:                                //  %while.body.preheader
	mv x7, x6
.LBB0_5:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x28, x7, x10
	lbu x28, 0 ( x28 )
	beq x0, x28, .LBB0_10
.LBB0_6:                                //  %while.body.land.rhs_crit_edge
                                        //    in Loop: Header=BB0_5 Depth=1
	add x29, x7, x16
	lbu x29, 0 ( x29 )
	add x7, x7, 1
	beq x28, x29, .LBB0_5
	jal x0, .LBB0_7
.LBB0_10:                               //  %if.then19.loopexit
	add x16, x7, x16
	add x14, x7, x14
.LBB0_11:                               //  %if.then19
	sub x13, x15, x14
	seqz x10, x0
	sw x16, 0 ( x11 )
	sw x13, 0 ( x12 )
	jr ra
.LBB0_8:                                //  %for.end
	bne x14, x15, .LBB0_9
.LBB0_12:                               //  %if.then25
	lw x10, 0 ( x11 )
	sw x13, 0 ( x12 )
	add x10, x14, x10
	sw x10, 0 ( x11 )
	mv x10, x13
	jr ra
.LBB0_9:
	mv x10, x0
	jr ra
.Lfunc_end0:
	.size	_buf_findstr, .Lfunc_end0-_buf_findstr
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
