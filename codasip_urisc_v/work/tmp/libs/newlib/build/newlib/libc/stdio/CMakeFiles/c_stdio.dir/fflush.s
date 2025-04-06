	.text
	.file	"fflush.c"
	.globl	__sflush_r              //  -- Begin function __sflush_r
	.type	__sflush_r,@function
__sflush_r:                             //  @__sflush_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -24
	mv fp, x11
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lh x10, 12 ( fp )
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	and x11, x10, 8
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	bltu x0, x11, .LBB0_10
.LBB0_1:                                //  %if.then
	lui x11, %hi( 65535 )
	add x11, x11, %lo( 65535 )
	and x10, x11, x10
	lui x11, %hi( 2048 )
	add x11, x11, %lo( 2048 )
	or x11, x11, x10
	sh x11, 12 ( fp )
	lw x11, 4 ( fp )
	blt x0, x11, .LBB0_3
.LBB0_2:                                //  %lor.lhs.false
	lw x11, 60 ( fp )
	bge x0, x11, .LBB0_29
.LBB0_3:                                //  %land.lhs.true
	lw x14, 40 ( fp )
	beq x0, x14, .LBB0_29
.LBB0_4:                                //  %if.then11
	lw x19, 0 ( x9 )
	lui x20, (4096>>12)&1048575
	and x10, x20, x10
	sw x0, 0 ( x9 )
	bltu x0, x10, .LBB0_18
.LBB0_5:                                //  %if.else
	lw x11, 28 ( fp )
	mv x18, x0
	seqz x13, x0
	mv x10, x9
	mv x12, x18
	call.reg x14
	mv x12, x10
	xor x10, x12, -1
	bltu x0, x10, .LBB0_19
.LBB0_6:                                //  %land.lhs.true20
	lw x10, 0 ( x9 )
	beq x0, x10, .LBB0_36
.LBB0_7:                                //  %land.lhs.true20
	xor x11, x10, 29
	beq x0, x11, .LBB0_9
.LBB0_8:                                //  %land.lhs.true20
	xor x10, x10, 22
	bltu x0, x10, .LBB0_28
.LBB0_9:                                //  %if.then32
	sw x19, 0 ( x9 )
	jal x0, .LBB0_35
.LBB0_10:                               //  %if.end117
	lw x19, 16 ( fp )
	beq x0, x19, .LBB0_29
.LBB0_11:                               //  %if.end123
	lw x11, 0 ( fp )
	mv x18, x0
	sw x19, 0 ( fp )
	sub x20, x11, x19
	and x11, x10, 3
	mv x10, x18
	bltu x0, x11, .LBB0_13
.LBB0_12:                               //  %cond.false
	lw x10, 20 ( fp )
.LBB0_13:                               //  %cond.end
	sw x10, 8 ( fp )
	bge x0, x20, .LBB0_35
.LBB0_14:                               //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x11, 28 ( fp )
	lw x14, 36 ( fp )
	mv x10, x9
	mv x12, x19
	mv x13, x20
	call.reg x14
	bge x0, x10, .LBB0_28
.LBB0_15:                               //  %if.end141
                                        //    in Loop: Header=BB0_14 Depth=1
	add x19, x10, x19
	sub x20, x20, x10
	blt x0, x20, .LBB0_14
	jal x0, .LBB0_35
.LBB0_29:
	mv x18, x0
	jal x0, .LBB0_35
.LBB0_18:                               //  %if.then16
	lw x12, 80 ( fp )
.LBB0_19:                               //  %if.end40
	lbu x10, 12 ( fp )
	and x10, x10, 4
	beq x0, x10, .LBB0_22
.LBB0_20:                               //  %if.then45
	lw x10, 4 ( fp )
	sub x12, x12, x10
	lw x10, 48 ( fp )
	beq x0, x10, .LBB0_22
.LBB0_21:                               //  %if.then49
	lw x10, 60 ( fp )
	sub x12, x12, x10
.LBB0_22:                               //  %if.end53
	lw x11, 28 ( fp )
	lw x14, 40 ( fp )
	mv x18, x0
	mv x10, x9
	mv x13, x18
	call.reg x14
	xor x11, x10, -1
	bltu x0, x11, .LBB0_25
.LBB0_23:                               //  %lor.lhs.false59
	lw x12, 0 ( x9 )
	add x13, x0, 29
	bltu x13, x12, .LBB0_28
.LBB0_24:                               //  %lor.lhs.false59
	seqz x13, x0
	sll x12, x13, x12
	lui x13, %hi( 541065217 )
	add x13, x13, %lo( 541065217 )
	and x12, x13, x12
	beq x0, x12, .LBB0_28
.LBB0_25:                               //  %if.then71
	lhu x12, 12 ( fp )
	lui x13, %hi( 63487 )
	add x13, x13, %lo( 63487 )
	sw x0, 4 ( fp )
	and x13, x13, x12
	sh x13, 12 ( fp )
	lw x13, 16 ( fp )
	and x12, x20, x12
	sw x13, 0 ( fp )
	bltu x0, x12, .LBB0_26
.LBB0_31:                               //  %if.end91
	lw x11, 48 ( fp )
	sw x19, 0 ( x9 )
	beq x0, x11, .LBB0_35
.LBB0_32:                               //  %if.then97
	add x10, fp, 64
	beq x11, x10, .LBB0_34
.LBB0_33:                               //  %if.then102
	mv x10, x9
	jal _free_r
.LBB0_34:                               //  %if.end105
	sw x0, 48 ( fp )
	jal x0, .LBB0_35
.LBB0_28:                               //  %if.else34
	lh x10, 12 ( fp )
	add x18, x0, -1
	or x10, x10, 64
	sh x10, 12 ( fp )
.LBB0_35:                               //  %cleanup143
	mv x10, x18
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_26:                               //  %land.lhs.true82
	beq x0, x11, .LBB0_30
.LBB0_27:                               //  %if.then89
	sw x10, 80 ( fp )
	lw x11, 48 ( fp )
	sw x19, 0 ( x9 )
	bltu x0, x11, .LBB0_32
	jal x0, .LBB0_35
.LBB0_30:                               //  %lor.lhs.false85
	lw x11, 0 ( x9 )
	bltu x0, x11, .LBB0_31
	jal x0, .LBB0_27
.LBB0_36:
	add x12, x0, -1
	lbu x10, 12 ( fp )
	and x10, x10, 4
	bltu x0, x10, .LBB0_20
	jal x0, .LBB0_22
.Lfunc_end0:
	.size	__sflush_r, .Lfunc_end0-__sflush_r
	.cfi_endproc
                                        //  -- End function
	.globl	_fflush_r               //  -- Begin function _fflush_r
	.type	_fflush_r,@function
_fflush_r:                              //  @_fflush_r
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
	beq x0, x9, .LBB1_3
.LBB1_1:                                //  %land.lhs.true
	lw x10, 56 ( x9 )
	beq x0, x10, .LBB1_2
.LBB1_3:                                //  %if.end
	lhu x10, 12 ( fp )
	beq x0, x10, .LBB1_4
.LBB1_5:                                //  %if.end4
	mv x10, x9
	mv x11, fp
	jal __sflush_r
	jal x0, .LBB1_6
.LBB1_2:                                //  %if.then
	mv x10, x9
	jal __sinit
	lhu x10, 12 ( fp )
	bltu x0, x10, .LBB1_5
.LBB1_4:
	mv x10, x0
.LBB1_6:                                //  %cleanup
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	_fflush_r, .Lfunc_end1-_fflush_r
	.cfi_endproc
                                        //  -- End function
	.globl	fflush                  //  -- Begin function fflush
	.type	fflush,@function
fflush:                                 //  @fflush
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv fp, x10
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	beq x0, fp, .LBB2_1
.LBB2_2:                                //  %if.end
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x9, 0 ( x10 )
	beq x0, x9, .LBB2_5
.LBB2_3:                                //  %land.lhs.true.i
	lw x10, 56 ( x9 )
	beq x0, x10, .LBB2_4
.LBB2_5:                                //  %if.end.i
	lhu x10, 12 ( fp )
	beq x0, x10, .LBB2_6
.LBB2_7:                                //  %if.end4.i
	mv x10, x9
	mv x11, fp
	jal __sflush_r
	jal x0, .LBB2_8
.LBB2_1:                                //  %if.then
	lui x10, %hi( _global_impure_ptr )
	add x10, x10, %lo( _global_impure_ptr )
	lw x10, 0 ( x10 )
	lui x11, %hi( _fflush_r )
	add x11, x11, %lo( _fflush_r )
	jal _fwalk_reent
	jal x0, .LBB2_8
.LBB2_4:                                //  %if.then.i
	mv x10, x9
	jal __sinit
	lhu x10, 12 ( fp )
	bltu x0, x10, .LBB2_7
.LBB2_6:
	mv x10, x0
.LBB2_8:                                //  %return
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end2:
	.size	fflush, .Lfunc_end2-fflush
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
