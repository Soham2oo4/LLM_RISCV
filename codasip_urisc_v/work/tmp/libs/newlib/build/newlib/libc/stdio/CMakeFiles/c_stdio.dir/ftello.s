	.text
	.file	"ftello.c"
	.globl	_ftello_r               //  -- Begin function _ftello_r
	.type	_ftello_r,@function
_ftello_r:                              //  @_ftello_r
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
	mv fp, x11
	mv x9, x10
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x9, .LBB0_2
.LBB0_1:                                //  %land.lhs.true
	lw x10, 56 ( x9 )
	beq x0, x10, .LBB0_19
.LBB0_2:                                //  %if.end
	lw x14, 40 ( fp )
	beq x0, x14, .LBB0_20
.LBB0_3:                                //  %if.end21
	lh x10, 12 ( fp )
	and x11, x10, 12
	xor x11, x11, 8
	bltu x0, x11, .LBB0_9
.LBB0_4:                                //  %land.lhs.true31
	lw x11, 0 ( fp )
	beq x0, x11, .LBB0_9
.LBB0_5:                                //  %land.lhs.true34
	and x12, x10, 256
	beq x0, x12, .LBB0_9
.LBB0_6:                                //  %land.lhs.true34
	lw x12, 16 ( fp )
	sub x11, x11, x12
	bge x0, x11, .LBB0_9
.LBB0_7:                                //  %if.then43
	lw x11, 28 ( fp )
	mv x12, x0
	add x13, x0, 2
	mv x10, x9
	call.reg x14
	xor x11, x10, -1
	bltu x0, x11, .LBB0_11
	jal x0, .LBB0_22
.LBB0_9:                                //  %if.else
	lui x11, %hi( 65535 )
	add x11, x11, %lo( 65535 )
	and x10, x11, x10
	lui x11, (4096>>12)&1048575
	and x10, x11, x10
	bltu x0, x10, .LBB0_15
.LBB0_10:                               //  %if.else66
	lw x11, 28 ( fp )
	mv x12, x0
	seqz x13, x0
	mv x10, x9
	call.reg x14
	xor x11, x10, -1
	beq x0, x11, .LBB0_21
.LBB0_11:                               //  %if.end88
	lh x11, 12 ( fp )
	and x12, x11, 4
	bltu x0, x12, .LBB0_16
.LBB0_12:                               //  %if.else100
	and x11, x11, 8
	beq x0, x11, .LBB0_23
.LBB0_13:                               //  %land.lhs.true105
	lw x11, 0 ( fp )
	beq x0, x11, .LBB0_23
.LBB0_14:                               //  %if.then109
	add x10, x11, x10
	lw x11, 16 ( fp )
	jal x0, .LBB0_18
.LBB0_15:                               //  %if.then65
	lw x10, 80 ( fp )
	lh x11, 12 ( fp )
	and x12, x11, 4
	beq x0, x12, .LBB0_12
.LBB0_16:                               //  %if.then93
	lw x11, 4 ( fp )
	sub x10, x10, x11
	lw x11, 48 ( fp )
	beq x0, x11, .LBB0_23
.LBB0_17:                               //  %if.then97
	lw x11, 60 ( fp )
.LBB0_18:                               //  %cleanup
	sub x10, x10, x11
	jal x0, .LBB0_23
.LBB0_19:                               //  %if.then
	mv x10, x9
	jal __sinit
	lw x14, 40 ( fp )
	bltu x0, x14, .LBB0_3
.LBB0_20:                               //  %if.then8
	add x10, x0, 29
	sw x10, 0 ( x9 )
	jal x0, .LBB0_22
.LBB0_21:                               //  %if.then72
	jal __errno
	add x11, x0, 139
	sw x11, 0 ( x10 )
.LBB0_22:                               //  %cleanup
	add x10, x0, -1
.LBB0_23:                               //  %cleanup
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_ftello_r, .Lfunc_end0-_ftello_r
	.cfi_endproc
                                        //  -- End function
	.globl	ftello                  //  -- Begin function ftello
	.type	ftello,@function
ftello:                                 //  @ftello
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	j _ftello_r
.Lfunc_end1:
	.size	ftello, .Lfunc_end1-ftello
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
