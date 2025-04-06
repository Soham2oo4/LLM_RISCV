	.text
	.file	"gets.c"
	.globl	_gets_r                 //  -- Begin function _gets_r
	.type	_gets_r,@function
_gets_r:                                //  @_gets_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x18, 4 ( x9 )
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv fp, x11
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	beq x0, x9, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x10, 56 ( x9 )
	bltu x0, x10, .LBB0_3
.LBB0_2:                                //  %if.then
	mv x10, x9
	jal __sinit
.LBB0_3:                                //  %if.end
	mv x19, x0
	lw x10, 4 ( x18 )
	add x11, x10, -1
	sw x11, 4 ( x18 )
	bge x0, x10, .LBB0_5
.LBB0_6:                                //  %cond.false9
	lw x10, 0 ( x18 )
	add x11, x10, 1
	sw x11, 0 ( x18 )
	lbu x10, 0 ( x10 )
	xor x11, x10, 10
	beq x0, x11, .LBB0_12
.LBB0_8:                                //  %cond.end11
	xor x11, x10, -1
	beq x0, x11, .LBB0_9
.LBB0_11:                               //  %if.else32
	add x11, x19, fp
	sb x10, 0 ( x11 )
	add x19, x19, 1
	lw x10, 4 ( x18 )
	add x11, x10, -1
	sw x11, 4 ( x18 )
	blt x0, x10, .LBB0_6
.LBB0_5:                                //  %cond.true8
	mv x10, x9
	mv x11, x18
	jal __srget_r
	xor x11, x10, 10
	bltu x0, x11, .LBB0_8
	jal x0, .LBB0_12
.LBB0_9:                                //  %if.then16
	beq x0, x19, .LBB0_10
.LBB0_12:                               //  %while.end
	add x10, x19, fp
	sb x0, 0 ( x10 )
	jal x0, .LBB0_13
.LBB0_10:
	mv fp, x0
.LBB0_13:                               //  %cleanup
	mv x10, fp
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_gets_r, .Lfunc_end0-_gets_r
	.cfi_endproc
                                        //  -- End function
	.globl	gets                    //  -- Begin function gets
	.type	gets,@function
gets:                                   //  @gets
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv fp, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	lw x9, 0 ( x10 )
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	lw x18, 4 ( x9 )
	beq x0, x9, .LBB1_3
.LBB1_1:                                //  %land.lhs.true.i
	lw x10, 56 ( x9 )
	bltu x0, x10, .LBB1_3
.LBB1_2:                                //  %if.then.i
	mv x10, x9
	jal __sinit
.LBB1_3:                                //  %if.end.i
	mv x19, x0
	lw x10, 4 ( x18 )
	add x11, x10, -1
	sw x11, 4 ( x18 )
	bge x0, x10, .LBB1_5
.LBB1_6:                                //  %cond.false9.i
	lw x10, 0 ( x18 )
	add x11, x10, 1
	sw x11, 0 ( x18 )
	lbu x10, 0 ( x10 )
	xor x11, x10, 10
	beq x0, x11, .LBB1_12
.LBB1_8:                                //  %cond.end11.i
	xor x11, x10, -1
	beq x0, x11, .LBB1_9
.LBB1_11:                               //  %if.else32.i
	add x11, x19, fp
	sb x10, 0 ( x11 )
	add x19, x19, 1
	lw x10, 4 ( x18 )
	add x11, x10, -1
	sw x11, 4 ( x18 )
	blt x0, x10, .LBB1_6
.LBB1_5:                                //  %cond.true8.i
	mv x10, x9
	mv x11, x18
	jal __srget_r
	xor x11, x10, 10
	bltu x0, x11, .LBB1_8
	jal x0, .LBB1_12
.LBB1_9:                                //  %if.then16.i
	beq x0, x19, .LBB1_10
.LBB1_12:                               //  %while.end.i
	add x10, x19, fp
	sb x0, 0 ( x10 )
	jal x0, .LBB1_13
.LBB1_10:
	mv fp, x0
.LBB1_13:                               //  %_gets_r.exit
	mv x10, fp
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	gets, .Lfunc_end1-gets
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
