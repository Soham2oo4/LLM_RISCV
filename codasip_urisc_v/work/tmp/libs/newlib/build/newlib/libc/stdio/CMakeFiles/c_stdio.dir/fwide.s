	.text
	.file	"fwide.c"
	.globl	_fwide_r                //  -- Begin function _fwide_r
	.type	_fwide_r,@function
_fwide_r:                               //  @_fwide_r
	.cfi_sections .debug_frame
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
	mv x9, x12
	mv fp, x11
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x10, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x11, 56 ( x10 )
	bltu x0, x11, .LBB0_3
.LBB0_2:                                //  %if.then
	jal __sinit
.LBB0_3:                                //  %if.end
	lhu x10, 12 ( fp )
	lui x11, (8192>>12)&1048575
	beq x0, x9, .LBB0_9
.LBB0_4:                                //  %if.end
	and x12, x11, x10
	bltu x0, x12, .LBB0_9
.LBB0_5:                                //  %if.then14
	lw x12, 100 ( fp )
	mv x13, x0
	blt x13, x9, .LBB0_6
.LBB0_7:                                //  %if.then14
	lui x13, %hi( -8193 )
	add x13, x13, %lo( -8193 )
	and x12, x13, x12
	jal x0, .LBB0_8
.LBB0_6:
	or x12, x11, x12
.LBB0_8:                                //  %if.then14
	or x10, x11, x10
	sw x12, 100 ( fp )
	sh x10, 12 ( fp )
.LBB0_9:                                //  %if.end29
	and x10, x11, x10
	bltu x0, x10, .LBB0_11
.LBB0_10:
	mv x10, x0
	jal x0, .LBB0_14
.LBB0_11:                               //  %if.else35
	lbu x10, 101 ( fp )
	mv x11, x0
	and x10, x10, 32
	beq x10, x11, .LBB0_12
.LBB0_13:                               //  %if.else35
	seqz x10, x0
	jal x0, .LBB0_14
.LBB0_12:
	add x10, x0, -1
.LBB0_14:                               //  %if.end39
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_fwide_r, .Lfunc_end0-_fwide_r
	.cfi_endproc
                                        //  -- End function
	.globl	fwide                   //  -- Begin function fwide
	.type	fwide,@function
fwide:                                  //  @fwide
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv fp, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x10, .LBB1_3
.LBB1_1:                                //  %land.lhs.true.i
	lw x11, 56 ( x10 )
	bltu x0, x11, .LBB1_3
.LBB1_2:                                //  %if.then.i
	jal __sinit
.LBB1_3:                                //  %if.end.i
	lhu x10, 12 ( fp )
	lui x11, (8192>>12)&1048575
	beq x0, x9, .LBB1_9
.LBB1_4:                                //  %if.end.i
	and x12, x11, x10
	bltu x0, x12, .LBB1_9
.LBB1_5:                                //  %if.then14.i
	lw x12, 100 ( fp )
	mv x13, x0
	blt x13, x9, .LBB1_6
.LBB1_7:                                //  %if.then14.i
	lui x13, %hi( -8193 )
	add x13, x13, %lo( -8193 )
	and x12, x13, x12
	jal x0, .LBB1_8
.LBB1_6:
	or x12, x11, x12
.LBB1_8:                                //  %if.then14.i
	or x10, x11, x10
	sw x12, 100 ( fp )
	sh x10, 12 ( fp )
.LBB1_9:                                //  %if.end29.i
	and x10, x11, x10
	bltu x0, x10, .LBB1_11
.LBB1_10:
	mv x10, x0
	jal x0, .LBB1_14
.LBB1_11:                               //  %if.else35.i
	lbu x10, 101 ( fp )
	mv x11, x0
	and x10, x10, 32
	beq x10, x11, .LBB1_12
.LBB1_13:                               //  %if.else35.i
	seqz x10, x0
	jal x0, .LBB1_14
.LBB1_12:
	add x10, x0, -1
.LBB1_14:                               //  %_fwide_r.exit
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	fwide, .Lfunc_end1-fwide
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
