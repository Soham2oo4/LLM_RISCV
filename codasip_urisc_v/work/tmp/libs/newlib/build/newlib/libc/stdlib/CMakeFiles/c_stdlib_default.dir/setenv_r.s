	.text
	.file	"setenv_r.c"
	.globl	_setenv_r               //  -- Begin function _setenv_r
	.type	_setenv_r,@function
_setenv_r:                              //  @_setenv_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv x18, x11
	add x19, x0, 61
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -40
	mv fp, x10
	mv x10, x18
	mv x11, x19
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	mv x21, x13
	mv x9, x12
	jal strchr
	beq x0, x10, .LBB0_2
.LBB0_1:                                //  %if.then
	jal __errno
	add x11, x0, 22
	sw x11, 0 ( x10 )
.LBB0_26:                               //  %cleanup76
	add x10, x0, -1
	jal x0, .LBB0_27
.LBB0_2:                                //  %if.end
	mv x10, fp
	jal __env_lock
	mv x10, x9
	jal strlen
	mv x20, x10
	add x12, sp, 4
	mv x10, fp
	mv x11, x18
	jal _findenv_r
	mv x22, x10
	beq x0, x22, .LBB0_6
.LBB0_3:                                //  %if.then5
	beq x0, x21, .LBB0_24
.LBB0_4:                                //  %if.end8
	mv x10, x22
	jal strlen
	bltu x10, x20, .LBB0_15
.LBB0_5:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lbu x10, 0 ( x9 )
	add x9, x9, 1
	sb x10, 0 ( x22 )
	add x22, x22, 1
	bltu x0, x10, .LBB0_5
	jal x0, .LBB0_24
.LBB0_6:                                //  %if.else
	lui x10, %hi( environ )
	add x24, x10, %lo( environ )
	lw x11, 0 ( x24 )
	lw x10, 0 ( x11 )
	beq x0, x10, .LBB0_9
.LBB0_7:                                //  %for.inc.preheader
	mv x23, x0
	add x10, x11, 4
.LBB0_8:                                //  %for.inc
                                        //  =>This Inner Loop Header: Depth=1
	lw x13, 0 ( x10 )
	add x12, x10, 4
	add x23, x23, 1
	mv x10, x12
	bltu x0, x13, .LBB0_8
	jal x0, .LBB0_10
.LBB0_9:
	mv x23, x0
.LBB0_10:                               //  %for.end
	lui x10, %hi( _setenv_r.alloced )
	add x10, x10, %lo( _setenv_r.alloced )
	lbu x12, 0 ( x10 )
	sll x21, x23, 2&31
	beq x0, x12, .LBB0_12
.LBB0_11:                               //  %if.then18
	add x12, x21, 8
	mv x10, fp
	jal _realloc_r
	mv x22, x10
	sw x22, 0 ( x24 )
	bltu x0, x22, .LBB0_14
	jal x0, .LBB0_25
.LBB0_12:                               //  %if.else23
	seqz x11, x0
	sb x11, 0 ( x10 )
	add x11, x21, 8
	mv x10, fp
	jal _malloc_r
	mv x22, x10
	beq x0, x22, .LBB0_25
.LBB0_13:                               //  %if.end29
	lw x11, 0 ( x24 )
	mv x10, x22
	mv x12, x21
	jal memcpy
	sw x22, 0 ( x24 )
.LBB0_14:                               //  %if.end32
	add x10, x22, x21
	sw x23, 4 ( sp )
	sw x0, 4 ( x10 )
.LBB0_15:                               //  %for.cond36.preheader
	mv x10, x18
	lbu x11, 0 ( x10 )
	beq x0, x11, .LBB0_18
.LBB0_16:                               //  %for.cond36
                                        //  =>This Inner Loop Header: Depth=1
	xor x11, x11, 61
	beq x0, x11, .LBB0_18
.LBB0_17:                               //  %for.inc43
                                        //    in Loop: Header=BB0_16 Depth=1
	add x10, x10, 1
	lbu x11, 0 ( x10 )
	bltu x0, x11, .LBB0_16
.LBB0_18:                               //  %for.end45
	sub x11, x20, x18
	add x10, x10, x11
	add x11, x10, 2
	mv x10, fp
	jal _malloc_r
	lui x11, %hi( environ )
	lw x12, 4 ( sp )
	add x11, x11, %lo( environ )
	lw x13, 0 ( x11 )
	sll x12, x12, 2&31
	add x13, x12, x13
	sw x10, 0 ( x13 )
	beq x0, x10, .LBB0_25
.LBB0_19:                               //  %if.end52
	lw x10, 0 ( x11 )
	add x10, x12, x10
	lw x10, 0 ( x10 )
	add x10, x10, 1
	lbu x11, 0 ( x18 )
	sb x11, -1 ( x10 )
	beq x0, x11, .LBB0_22
.LBB0_20:                               //  %for.cond54
                                        //  =>This Inner Loop Header: Depth=1
	xor x11, x11, 61
	beq x0, x11, .LBB0_22
.LBB0_21:                               //  %for.inc64
                                        //    in Loop: Header=BB0_20 Depth=1
	add x10, x10, 1
	add x18, x18, 1
	lbu x11, 0 ( x18 )
	sb x11, -1 ( x10 )
	bltu x0, x11, .LBB0_20
.LBB0_22:                               //  %for.end66
	mv x11, x0
	sb x19, -1 ( x10 )
.LBB0_23:                               //  %for.cond68
                                        //  =>This Inner Loop Header: Depth=1
	add x13, x11, x9
	lbu x13, 0 ( x13 )
	add x12, x11, x10
	add x11, x11, 1
	sb x13, 0 ( x12 )
	bltu x0, x13, .LBB0_23
.LBB0_24:                               //  %for.end75
	mv x10, fp
	jal __env_unlock
	mv x10, x0
.LBB0_27:                               //  %cleanup76
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw x24, 12 ( sp )               //  4-byte Folded Reload
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
.LBB0_25:                               //  %if.then21
	mv x10, fp
	jal __env_unlock
	jal x0, .LBB0_26
.Lfunc_end0:
	.size	_setenv_r, .Lfunc_end0-_setenv_r
	.cfi_endproc
                                        //  -- End function
	.globl	_unsetenv_r             //  -- Begin function _unsetenv_r
	.type	_unsetenv_r,@function
_unsetenv_r:                            //  @_unsetenv_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv x9, x11
	mv fp, x10
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	beq x0, x9, .LBB1_3
.LBB1_1:                                //  %lor.lhs.false
	lbu x10, 0 ( x9 )
	beq x0, x10, .LBB1_3
.LBB1_2:                                //  %lor.lhs.false3
	add x11, x0, 61
	mv x10, x9
	jal strchr
	beq x0, x10, .LBB1_4
.LBB1_3:                                //  %if.then
	jal __errno
	add x11, x0, 22
	sw x11, 0 ( x10 )
	add x10, x0, -1
.LBB1_10:                               //  %cleanup
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.LBB1_4:                                //  %if.end
	mv x10, fp
	jal __env_lock
	add x12, sp, 8
	mv x10, fp
	mv x11, x9
	jal _findenv_r
	beq x0, x10, .LBB1_9
.LBB1_5:
	lui x10, %hi( environ )
	add x19, x10, %lo( environ )
	add x18, sp, 8
.LBB1_7:                                //  %while.body
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_8 Depth 2
	lw x11, 8 ( sp )
	lw x10, 0 ( x19 )
	sll x11, x11, 2&31
	add x10, x11, x10
	add x10, x10, 4
.LBB1_8:                                //  %for.cond
                                        //    Parent Loop BB1_7 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, 0 ( x10 )
	sw x11, -4 ( x10 )
	add x10, x10, 4
	bltu x0, x11, .LBB1_8
.LBB1_6:                                //  %while.cond.loopexit
                                        //    in Loop: Header=BB1_7 Depth=1
	mv x10, fp
	mv x11, x9
	mv x12, x18
	jal _findenv_r
	bltu x0, x10, .LBB1_7
.LBB1_9:                                //  %while.end
	mv x10, fp
	jal __env_unlock
	mv x10, x0
	jal x0, .LBB1_10
.Lfunc_end1:
	.size	_unsetenv_r, .Lfunc_end1-_unsetenv_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	_setenv_r.alloced,@object //  @_setenv_r.alloced
	.local	_setenv_r.alloced
	.comm	_setenv_r.alloced,1,4
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
