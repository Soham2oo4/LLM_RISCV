	.text
	.file	"mbsnrtowcs.c"
	.globl	_mbsnrtowcs_r           //  -- Begin function _mbsnrtowcs_r
	.type	_mbsnrtowcs_r,@function
_mbsnrtowcs_r:                          //  @_mbsnrtowcs_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw fp, 16 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -32
	mv fp, x15
	mv x21, x14
	mv x9, x13
	mv x20, x12
	mv x22, x11
	mv x18, x10
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	beq x0, x22, .LBB0_6
.LBB0_1:                                //  %if.end
	mv x19, x0
	beq x0, x21, .LBB0_17
.LBB0_2:                                //  %while.body.preheader
	lw x12, 0 ( x20 )
.LBB0_3:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x18
	mv x11, x22
	mv x13, x9
	mv x14, fp
	jal _mbrtowc_r
	bge x0, x10, .LBB0_11
.LBB0_4:                                //  %if.then3
                                        //    in Loop: Header=BB0_3 Depth=1
	lw x11, 0 ( x20 )
	sub x9, x9, x10
	add x22, x22, 4
	add x19, x19, 1
	add x12, x10, x11
	sw x12, 0 ( x20 )
	bne x21, x19, .LBB0_3
.LBB0_5:
	mv x19, x21
	jal x0, .LBB0_17
.LBB0_6:                                //  %while.body.us.preheader
	lw x19, 0 ( x20 )
	mv x21, x0
	mv x20, x21
	sw x19, 12 ( sp )
.LBB0_7:                                //  %while.body.us
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x18
	mv x11, x21
	mv x12, x19
	mv x13, x9
	mv x14, fp
	jal _mbrtowc_r
	bge x0, x10, .LBB0_10
.LBB0_8:                                //  %if.then3.us
                                        //    in Loop: Header=BB0_7 Depth=1
	add x20, x20, -1
	sub x9, x9, x10
	add x19, x10, x19
	xor x10, x20, 1
	bltu x0, x10, .LBB0_7
.LBB0_9:                                //  %cleanup.loopexit
	sw x19, 12 ( sp )
	jal x0, .LBB0_16
.LBB0_10:                               //  %if.else.loopexit
	sw x19, 12 ( sp )
	sub x19, x0, x20
	add x20, sp, 12
.LBB0_11:                               //  %if.else
	beq x0, x10, .LBB0_14
.LBB0_12:                               //  %if.else
	xor x10, x10, -2
	bltu x0, x10, .LBB0_15
.LBB0_13:                               //  %if.then7
	lw x10, 0 ( x20 )
	add x10, x9, x10
	sw x10, 0 ( x20 )
	jal x0, .LBB0_17
.LBB0_14:                               //  %if.then11
	sw x0, 0 ( x20 )
	jal x0, .LBB0_17
.LBB0_15:                               //  %if.else12
	add x10, x0, 138
	sw x10, 0 ( x18 )
	sw x0, 0 ( fp )
.LBB0_16:                               //  %cleanup
	add x19, x0, -1
.LBB0_17:                               //  %cleanup
	mv x10, x19
	lw fp, 16 ( sp )                //  4-byte Folded Reload
	lw x22, 20 ( sp )               //  4-byte Folded Reload
	lw x21, 24 ( sp )               //  4-byte Folded Reload
	lw x20, 28 ( sp )               //  4-byte Folded Reload
	lw x19, 32 ( sp )               //  4-byte Folded Reload
	lw x18, 36 ( sp )               //  4-byte Folded Reload
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	lw ra, 44 ( sp )                //  4-byte Folded Reload
	add sp, sp, 48
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_mbsnrtowcs_r, .Lfunc_end0-_mbsnrtowcs_r
	.cfi_endproc
                                        //  -- End function
	.globl	mbsnrtowcs              //  -- Begin function mbsnrtowcs
	.type	mbsnrtowcs,@function
mbsnrtowcs:                             //  @mbsnrtowcs
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	mv x23, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x18, 0 ( x10 )
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -36
	mv fp, x14
	mv x22, x13
	mv x9, x12
	mv x21, x11
	mv x20, x0
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	beq x0, x23, .LBB1_6
.LBB1_1:                                //  %if.end.i
	beq x0, x22, .LBB1_17
.LBB1_2:                                //  %while.body.preheader.i
	lw x19, 0 ( x21 )
.LBB1_3:                                //  %while.body.i
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x18
	mv x11, x23
	mv x12, x19
	mv x13, x9
	mv x14, fp
	jal _mbrtowc_r
	bge x0, x10, .LBB1_11
.LBB1_4:                                //  %if.then3.i
                                        //    in Loop: Header=BB1_3 Depth=1
	add x19, x10, x19
	sub x9, x9, x10
	add x23, x23, 4
	add x20, x20, 1
	sw x19, 0 ( x21 )
	bne x22, x20, .LBB1_3
.LBB1_5:
	mv x20, x22
	jal x0, .LBB1_17
.LBB1_6:                                //  %while.body.us.preheader.i
	lw x19, 0 ( x21 )
	mv x21, x20
	sw x19, 8 ( sp )
.LBB1_7:                                //  %while.body.us.i
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x18
	mv x11, x20
	mv x12, x19
	mv x13, x9
	mv x14, fp
	jal _mbrtowc_r
	bge x0, x10, .LBB1_10
.LBB1_8:                                //  %if.then3.us.i
                                        //    in Loop: Header=BB1_7 Depth=1
	add x21, x21, -1
	sub x9, x9, x10
	add x19, x10, x19
	xor x10, x21, 1
	bltu x0, x10, .LBB1_7
.LBB1_9:                                //  %cleanup.loopexit.i
	sw x19, 8 ( sp )
	jal x0, .LBB1_16
.LBB1_10:                               //  %if.else.loopexit.i
	sub x20, x0, x21
	add x21, sp, 8
	sw x19, 8 ( sp )
.LBB1_11:                               //  %if.else.i
	beq x0, x10, .LBB1_14
.LBB1_12:                               //  %if.else.i
	xor x10, x10, -2
	bltu x0, x10, .LBB1_15
.LBB1_13:                               //  %if.then7.i
	add x10, x9, x19
	sw x10, 0 ( x21 )
	jal x0, .LBB1_17
.LBB1_14:                               //  %if.then11.i
	sw x0, 0 ( x21 )
	jal x0, .LBB1_17
.LBB1_15:                               //  %if.else12.i
	add x10, x0, 138
	sw x10, 0 ( x18 )
	sw x0, 0 ( fp )
.LBB1_16:                               //  %_mbsnrtowcs_r.exit
	add x20, x0, -1
.LBB1_17:                               //  %_mbsnrtowcs_r.exit
	mv x10, x20
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x23, 16 ( sp )               //  4-byte Folded Reload
	lw x22, 20 ( sp )               //  4-byte Folded Reload
	lw x21, 24 ( sp )               //  4-byte Folded Reload
	lw x20, 28 ( sp )               //  4-byte Folded Reload
	lw x19, 32 ( sp )               //  4-byte Folded Reload
	lw x18, 36 ( sp )               //  4-byte Folded Reload
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	lw ra, 44 ( sp )                //  4-byte Folded Reload
	add sp, sp, 48
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	mbsnrtowcs, .Lfunc_end1-mbsnrtowcs
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
