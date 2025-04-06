	.text
	.file	"signal.c"
	.globl	_init_signal_r          //  -- Begin function _init_signal_r
	.type	_init_signal_r,@function
_init_signal_r:                         //  @_init_signal_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lw x10, 732 ( x9 )
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv fp, x0
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	bltu x0, x10, .LBB0_4
.LBB0_1:                                //  %if.then
	add x11, x0, 128
	mv x10, x9
	jal _malloc_r
	sw x10, 732 ( x9 )
	beq x0, x10, .LBB0_2
.LBB0_3:                                //  %for.body.preheader
	add x11, x9, 732
	sw x0, 0 ( x10 )
	lw x10, 0 ( x11 )
	sw x0, 4 ( x10 )
	lw x10, 0 ( x11 )
	sw x0, 8 ( x10 )
	lw x10, 0 ( x11 )
	sw x0, 12 ( x10 )
	lw x10, 0 ( x11 )
	sw x0, 16 ( x10 )
	lw x10, 0 ( x11 )
	sw x0, 20 ( x10 )
	lw x10, 0 ( x11 )
	sw x0, 24 ( x10 )
	lw x10, 0 ( x11 )
	sw x0, 28 ( x10 )
	lw x10, 0 ( x11 )
	sw x0, 32 ( x10 )
	lw x10, 0 ( x11 )
	sw x0, 36 ( x10 )
	lw x10, 0 ( x11 )
	sw x0, 40 ( x10 )
	lw x10, 0 ( x11 )
	sw x0, 44 ( x10 )
	lw x10, 0 ( x11 )
	sw x0, 48 ( x10 )
	lw x10, 0 ( x11 )
	sw x0, 52 ( x10 )
	lw x10, 0 ( x11 )
	sw x0, 56 ( x10 )
	lw x10, 0 ( x11 )
	sw x0, 60 ( x10 )
	lw x10, 0 ( x11 )
	sw x0, 64 ( x10 )
	lw x10, 0 ( x11 )
	sw x0, 68 ( x10 )
	lw x10, 0 ( x11 )
	sw x0, 72 ( x10 )
	lw x10, 0 ( x11 )
	sw x0, 76 ( x10 )
	lw x10, 0 ( x11 )
	sw x0, 80 ( x10 )
	lw x10, 0 ( x11 )
	sw x0, 84 ( x10 )
	lw x10, 0 ( x11 )
	sw x0, 88 ( x10 )
	lw x10, 0 ( x11 )
	sw x0, 92 ( x10 )
	lw x10, 0 ( x11 )
	sw x0, 96 ( x10 )
	lw x10, 0 ( x11 )
	sw x0, 100 ( x10 )
	lw x10, 0 ( x11 )
	sw x0, 104 ( x10 )
	lw x10, 0 ( x11 )
	sw x0, 108 ( x10 )
	lw x10, 0 ( x11 )
	sw x0, 112 ( x10 )
	lw x10, 0 ( x11 )
	sw x0, 116 ( x10 )
	lw x10, 0 ( x11 )
	sw x0, 120 ( x10 )
	lw x10, 0 ( x11 )
	sw x0, 124 ( x10 )
	jal x0, .LBB0_4
.LBB0_2:
	add fp, x0, -1
.LBB0_4:                                //  %cleanup
	mv x10, fp
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_init_signal_r, .Lfunc_end0-_init_signal_r
	.cfi_endproc
                                        //  -- End function
	.globl	_signal_r               //  -- Begin function _signal_r
	.type	_signal_r,@function
_signal_r:                              //  @_signal_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv x18, x10
	mv fp, x12
	sltiu x10, x9, 32
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	bltu x0, x10, .LBB1_2
.LBB1_1:                                //  %if.then
	add x10, x0, 22
	sw x10, 0 ( x18 )
.LBB1_5:
	add x10, x0, -1
	jal x0, .LBB1_6
.LBB1_2:                                //  %if.end
	lw x10, 732 ( x18 )
	beq x0, x10, .LBB1_4
.LBB1_3:                                //  %if.end5
	sll x11, x9, 2&31
	add x11, x11, x10
	lw x10, 0 ( x11 )
	sw fp, 0 ( x11 )
.LBB1_6:                                //  %cleanup
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB1_4:                                //  %land.lhs.true
	mv x10, x18
	jal _init_signal_r
	bltu x0, x10, .LBB1_5
.LBB1_7:                                //  %land.lhs.true.if.end5_crit_edge
	lw x10, 732 ( x18 )
	jal x0, .LBB1_3
.Lfunc_end1:
	.size	_signal_r, .Lfunc_end1-_signal_r
	.cfi_endproc
                                        //  -- End function
	.globl	_raise_r                //  -- Begin function _raise_r
	.type	_raise_r,@function
_raise_r:                               //  @_raise_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x10
	sltiu x10, x9, 32
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	bltu x0, x10, .LBB2_2
.LBB2_1:                                //  %if.then
	add x10, x0, 22
	sw x10, 0 ( x18 )
	add fp, x0, -1
	jal x0, .LBB2_10
.LBB2_2:                                //  %if.end
	lw x10, 732 ( x18 )
	mv fp, x0
	mv x11, fp
	beq x0, x10, .LBB2_4
.LBB2_3:                                //  %if.else
	sll x11, x9, 2&31
	add x10, x11, x10
	lw x11, 0 ( x10 )
.LBB2_4:                                //  %if.end5
	xor x10, x11, -1
	beq x0, x10, .LBB2_8
.LBB2_5:                                //  %if.end5
	xor x10, x11, 1
	beq x0, x10, .LBB2_10
.LBB2_6:                                //  %if.end5
	bltu x0, x11, .LBB2_9
.LBB2_7:                                //  %if.then7
	mv x10, x18
	jal _getpid_r
	mv x11, x10
	mv x10, x18
	mv x12, x9
	jal _kill_r
	mv fp, x10
	jal x0, .LBB2_10
.LBB2_8:                                //  %if.then14
	add x10, x0, 22
	sw x10, 0 ( x18 )
	seqz fp, x0
	jal x0, .LBB2_10
.LBB2_9:                                //  %if.else16
	mv x10, x9
	call.reg x11
.LBB2_10:                               //  %cleanup
	mv x10, fp
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end2:
	.size	_raise_r, .Lfunc_end2-_raise_r
	.cfi_endproc
                                        //  -- End function
	.globl	__sigtramp_r            //  -- Begin function __sigtramp_r
	.type	__sigtramp_r,@function
__sigtramp_r:                           //  @__sigtramp_r
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
	mv x18, x10
	mv fp, x11
	add x9, x0, -1
	add x10, x0, 31
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	bgeu x10, fp, .LBB3_1
.LBB3_11:                               //  %cleanup
	mv x10, x9
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB3_1:                                //  %if.end
	lw x10, 732 ( x18 )
	beq x0, x10, .LBB3_2
.LBB3_4:                                //  %if.end5
	sll x11, fp, 2&31
	add x10, x11, x10
	lw x11, 0 ( x10 )
	xor x10, x11, 1
	beq x0, x10, .LBB3_9
.LBB3_5:                                //  %if.end5
	beq x0, x11, .LBB3_6
.LBB3_7:                                //  %if.end5
	xor x10, x11, -1
	bltu x0, x10, .LBB3_10
.LBB3_8:                                //  %if.then10
	add x9, x0, 2
	jal x0, .LBB3_11
.LBB3_2:                                //  %land.lhs.true
	mv x10, x18
	jal _init_signal_r
	bltu x0, x10, .LBB3_11
.LBB3_3:                                //  %land.lhs.true.if.end5_crit_edge
	lw x10, 732 ( x18 )
	jal x0, .LBB3_4
.LBB3_9:                                //  %if.then13
	add x9, x0, 3
	jal x0, .LBB3_11
.LBB3_6:
	seqz x9, x0
	jal x0, .LBB3_11
.LBB3_10:                               //  %if.else14
	mv x10, fp
	call.reg x11
	mv x9, x0
	jal x0, .LBB3_11
.Lfunc_end3:
	.size	__sigtramp_r, .Lfunc_end3-__sigtramp_r
	.cfi_endproc
                                        //  -- End function
	.globl	raise                   //  -- Begin function raise
	.type	raise,@function
raise:                                  //  @raise
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x18, 0 ( x10 )
	sltiu x10, x9, 32
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	bltu x0, x10, .LBB4_2
.LBB4_1:                                //  %if.then.i
	add x10, x0, 22
	sw x10, 0 ( x18 )
	add fp, x0, -1
	jal x0, .LBB4_10
.LBB4_2:                                //  %if.end.i
	lw x10, 732 ( x18 )
	mv fp, x0
	mv x11, fp
	beq x0, x10, .LBB4_4
.LBB4_3:                                //  %if.else.i
	sll x11, x9, 2&31
	add x10, x11, x10
	lw x11, 0 ( x10 )
.LBB4_4:                                //  %if.end5.i
	xor x10, x11, -1
	beq x0, x10, .LBB4_8
.LBB4_5:                                //  %if.end5.i
	xor x10, x11, 1
	beq x0, x10, .LBB4_10
.LBB4_6:                                //  %if.end5.i
	bltu x0, x11, .LBB4_9
.LBB4_7:                                //  %if.then7.i
	mv x10, x18
	jal _getpid_r
	mv x11, x10
	mv x10, x18
	mv x12, x9
	jal _kill_r
	mv fp, x10
	jal x0, .LBB4_10
.LBB4_8:                                //  %if.then14.i
	add x10, x0, 22
	sw x10, 0 ( x18 )
	seqz fp, x0
	jal x0, .LBB4_10
.LBB4_9:                                //  %if.else16.i
	mv x10, x9
	call.reg x11
.LBB4_10:                               //  %_raise_r.exit
	mv x10, fp
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end4:
	.size	raise, .Lfunc_end4-raise
	.cfi_endproc
                                        //  -- End function
	.globl	signal                  //  -- Begin function signal
	.type	signal,@function
signal:                                 //  @signal
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x18, 0 ( x10 )
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv fp, x11
	sltiu x10, x9, 32
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	bltu x0, x10, .LBB5_2
.LBB5_1:                                //  %if.then.i
	add x10, x0, 22
	sw x10, 0 ( x18 )
.LBB5_5:
	add x10, x0, -1
	jal x0, .LBB5_6
.LBB5_2:                                //  %if.end.i
	lw x10, 732 ( x18 )
	beq x0, x10, .LBB5_4
.LBB5_3:                                //  %if.end5.i
	sll x11, x9, 2&31
	add x11, x11, x10
	lw x10, 0 ( x11 )
	sw fp, 0 ( x11 )
.LBB5_6:                                //  %_signal_r.exit
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB5_4:                                //  %land.lhs.true.i
	mv x10, x18
	jal _init_signal_r
	bltu x0, x10, .LBB5_5
.LBB5_7:                                //  %land.lhs.true.if.end5_crit_edge.i
	lw x10, 732 ( x18 )
	jal x0, .LBB5_3
.Lfunc_end5:
	.size	signal, .Lfunc_end5-signal
	.cfi_endproc
                                        //  -- End function
	.globl	_init_signal            //  -- Begin function _init_signal
	.type	_init_signal,@function
_init_signal:                           //  @_init_signal
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	j _init_signal_r
.Lfunc_end6:
	.size	_init_signal, .Lfunc_end6-_init_signal
	.cfi_endproc
                                        //  -- End function
	.globl	__sigtramp              //  -- Begin function __sigtramp
	.type	__sigtramp,@function
__sigtramp:                             //  @__sigtramp
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv fp, x10
	add x9, x0, -1
	add x10, x0, 31
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	bgeu x10, fp, .LBB7_1
.LBB7_11:                               //  %__sigtramp_r.exit
	mv x10, x9
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB7_1:                                //  %if.end.i
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x18, 0 ( x10 )
	lw x10, 732 ( x18 )
	beq x0, x10, .LBB7_2
.LBB7_4:                                //  %if.end5.i
	sll x11, fp, 2&31
	add x10, x11, x10
	lw x11, 0 ( x10 )
	xor x10, x11, 1
	beq x0, x10, .LBB7_9
.LBB7_5:                                //  %if.end5.i
	beq x0, x11, .LBB7_6
.LBB7_7:                                //  %if.end5.i
	xor x10, x11, -1
	bltu x0, x10, .LBB7_10
.LBB7_8:                                //  %if.then10.i
	add x9, x0, 2
	jal x0, .LBB7_11
.LBB7_2:                                //  %land.lhs.true.i
	mv x10, x18
	jal _init_signal_r
	bltu x0, x10, .LBB7_11
.LBB7_3:                                //  %land.lhs.true.if.end5_crit_edge.i
	lw x10, 732 ( x18 )
	jal x0, .LBB7_4
.LBB7_9:                                //  %if.then13.i
	add x9, x0, 3
	jal x0, .LBB7_11
.LBB7_6:
	seqz x9, x0
	jal x0, .LBB7_11
.LBB7_10:                               //  %if.else14.i
	mv x10, fp
	call.reg x11
	mv x9, x0
	jal x0, .LBB7_11
.Lfunc_end7:
	.size	__sigtramp, .Lfunc_end7-__sigtramp
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
