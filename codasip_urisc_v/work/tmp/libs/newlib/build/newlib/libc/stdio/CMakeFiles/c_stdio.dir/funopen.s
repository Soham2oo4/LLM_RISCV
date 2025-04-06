	.text
	.file	"funopen.c"
	.globl	_funopen_r              //  -- Begin function _funopen_r
	.type	_funopen_r,@function
_funopen_r:                             //  @_funopen_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	mv x19, x13
	mv x20, x12
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	mv x22, x10
	mv x18, x15
	mv x9, x14
	mv x21, x11
	or x10, x19, x20
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -36
	beq x0, x10, .LBB0_1
.LBB0_2:                                //  %if.end
	mv x10, x22
	jal __sfp
	mv fp, x10
	mv x23, x0
	beq x0, fp, .LBB0_3
.LBB0_4:                                //  %if.end3
	add x11, x0, 20
	mv x10, x22
	jal _malloc_r
	beq x0, x10, .LBB0_5
.LBB0_6:                                //  %if.end7
	lui x11, %hi( 65535 )
	add x11, x11, %lo( 65535 )
	sw x21, 0 ( x10 )
	sh x11, 14 ( fp )
	sw x10, 28 ( fp )
	beq x0, x20, .LBB0_10
.LBB0_7:                                //  %if.then16
	lui x11, %hi( funreader )
	add x11, x11, %lo( funreader )
	sw x11, 32 ( fp )
	sw x20, 4 ( x10 )
	beq x0, x19, .LBB0_9
.LBB0_8:                                //  %if.then19
	add x11, x0, 16
	sh x11, 12 ( fp )
	lui x11, %hi( funwriter )
	add x11, x11, %lo( funwriter )
	sw x19, 8 ( x10 )
	sw x11, 36 ( fp )
	sw x18, 16 ( x10 )
	sw x9, 12 ( x10 )
	mv x10, x0
	bne x9, x10, .LBB0_12
	jal x0, .LBB0_13
.LBB0_1:                                //  %if.then
	add x10, x0, 22
	sw x10, 0 ( x22 )
	mv fp, x0
	jal x0, .LBB0_14
.LBB0_3:
	mv fp, x23
	jal x0, .LBB0_14
.LBB0_5:                                //  %if.then6
	jal __sfp_lock_acquire
	sh x0, 12 ( fp )
	jal __sfp_lock_release
	mv fp, x23
	jal x0, .LBB0_14
.LBB0_10:                               //  %if.else26
	add x11, x0, 8
	sh x11, 12 ( fp )
	lui x11, %hi( funwriter )
	add x11, x11, %lo( funwriter )
	sw x19, 8 ( x10 )
	sw x11, 36 ( fp )
	sw x0, 4 ( x10 )
	sw x0, 32 ( fp )
	sw x18, 16 ( x10 )
	sw x9, 12 ( x10 )
	mv x10, x0
	beq x9, x10, .LBB0_13
.LBB0_12:                               //  %if.end32
	lui x10, %hi( funseeker )
	add x10, x10, %lo( funseeker )
.LBB0_13:                               //  %if.end32
	sw x10, 40 ( fp )
	lui x10, %hi( funcloser )
	add x10, x10, %lo( funcloser )
	sw x10, 44 ( fp )
.LBB0_14:                               //  %cleanup
	mv x10, fp
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
.LBB0_9:                                //  %if.else
	add x11, x0, 4
	sh x11, 12 ( fp )
	sw x0, 8 ( x10 )
	sw x0, 36 ( fp )
	sw x18, 16 ( x10 )
	sw x9, 12 ( x10 )
	mv x10, x0
	bne x9, x10, .LBB0_12
	jal x0, .LBB0_13
.Lfunc_end0:
	.size	_funopen_r, .Lfunc_end0-_funopen_r
	.cfi_endproc
                                        //  -- End function
	.type	funreader,@function     //  -- Begin function funreader
funreader:                              //  @funreader
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	mv x9, x13
	mv x18, x12
	mv x19, x11
	mv fp, x10
	jal __errno
	sw x0, 0 ( x10 )
	lw x13, 4 ( x19 )
	lw x10, 0 ( x19 )
	mv x11, x18
	mv x12, x9
	call.reg x13
	mv x9, x10
	bge x9, x0, .LBB1_3
.LBB1_1:                                //  %land.lhs.true
	jal __errno
	lw x10, 0 ( x10 )
	beq x0, x10, .LBB1_3
.LBB1_2:                                //  %if.then
	jal __errno
	lw x10, 0 ( x10 )
	sw x10, 0 ( fp )
.LBB1_3:                                //  %if.end
	mv x10, x9
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	funreader, .Lfunc_end1-funreader
	.cfi_endproc
                                        //  -- End function
	.type	funwriter,@function     //  -- Begin function funwriter
funwriter:                              //  @funwriter
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	mv x9, x13
	mv x18, x12
	mv x19, x11
	mv fp, x10
	jal __errno
	sw x0, 0 ( x10 )
	lw x13, 8 ( x19 )
	lw x10, 0 ( x19 )
	mv x11, x18
	mv x12, x9
	call.reg x13
	mv x9, x10
	bge x9, x0, .LBB2_3
.LBB2_1:                                //  %land.lhs.true
	jal __errno
	lw x10, 0 ( x10 )
	beq x0, x10, .LBB2_3
.LBB2_2:                                //  %if.then
	jal __errno
	lw x10, 0 ( x10 )
	sw x10, 0 ( fp )
.LBB2_3:                                //  %if.end
	mv x10, x9
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end2:
	.size	funwriter, .Lfunc_end2-funwriter
	.cfi_endproc
                                        //  -- End function
	.type	funseeker,@function     //  -- Begin function funseeker
funseeker:                              //  @funseeker
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	mv x9, x13
	mv x18, x12
	mv x19, x11
	mv fp, x10
	jal __errno
	sw x0, 0 ( x10 )
	lw x13, 12 ( x19 )
	lw x10, 0 ( x19 )
	mv x11, x18
	mv x12, x9
	call.reg x13
	mv x9, x10
	bge x9, x0, .LBB3_3
.LBB3_1:                                //  %land.lhs.true
	jal __errno
	lw x10, 0 ( x10 )
	beq x0, x10, .LBB3_3
.LBB3_2:                                //  %if.then
	jal __errno
	lw x10, 0 ( x10 )
	sw x10, 0 ( fp )
.LBB3_3:                                //  %if.end
	mv x10, x9
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end3:
	.size	funseeker, .Lfunc_end3-funseeker
	.cfi_endproc
                                        //  -- End function
	.type	funcloser,@function     //  -- Begin function funcloser
funcloser:                              //  @funcloser
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv fp, x11
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lw x10, 16 ( fp )
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	beq x0, x10, .LBB4_1
.LBB4_2:                                //  %if.then
	jal __errno
	sw x0, 0 ( x10 )
	lw x11, 16 ( fp )
	lw x10, 0 ( fp )
	call.reg x11
	mv x18, x10
	bge x18, x0, .LBB4_5
.LBB4_3:                                //  %land.lhs.true
	jal __errno
	lw x10, 0 ( x10 )
	beq x0, x10, .LBB4_5
.LBB4_4:                                //  %if.then6
	jal __errno
	lw x10, 0 ( x10 )
	sw x10, 0 ( x9 )
	jal x0, .LBB4_5
.LBB4_1:
	mv x18, x0
.LBB4_5:                                //  %if.end8
	mv x10, x9
	mv x11, fp
	jal _free_r
	mv x10, x18
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end4:
	.size	funcloser, .Lfunc_end4-funcloser
	.cfi_endproc
                                        //  -- End function
	.globl	funopen                 //  -- Begin function funopen
	.type	funopen,@function
funopen:                                //  @funopen
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	mv x20, x11
	lui x11, %hi( _impure_ptr )
	add x11, x11, %lo( _impure_ptr )
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	lw x22, 0 ( x11 )
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv x19, x12
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	mv x21, x10
	mv x18, x14
	mv x9, x13
	or x10, x19, x20
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -36
	beq x0, x10, .LBB5_1
.LBB5_2:                                //  %if.end.i
	mv x10, x22
	jal __sfp
	mv fp, x10
	mv x23, x0
	beq x0, fp, .LBB5_3
.LBB5_4:                                //  %if.end3.i
	add x11, x0, 20
	mv x10, x22
	jal _malloc_r
	beq x0, x10, .LBB5_5
.LBB5_6:                                //  %if.end7.i
	lui x11, %hi( 65535 )
	add x11, x11, %lo( 65535 )
	sw x21, 0 ( x10 )
	sh x11, 14 ( fp )
	sw x10, 28 ( fp )
	beq x0, x20, .LBB5_10
.LBB5_7:                                //  %if.then16.i
	lui x11, %hi( funreader )
	add x11, x11, %lo( funreader )
	sw x11, 32 ( fp )
	sw x20, 4 ( x10 )
	beq x0, x19, .LBB5_9
.LBB5_8:                                //  %if.then19.i
	add x11, x0, 16
	sh x11, 12 ( fp )
	lui x11, %hi( funwriter )
	add x11, x11, %lo( funwriter )
	sw x19, 8 ( x10 )
	sw x11, 36 ( fp )
	sw x18, 16 ( x10 )
	sw x9, 12 ( x10 )
	mv x10, x0
	bne x9, x10, .LBB5_12
	jal x0, .LBB5_13
.LBB5_1:                                //  %if.then.i
	add x10, x0, 22
	sw x10, 0 ( x22 )
	mv fp, x0
	jal x0, .LBB5_14
.LBB5_3:
	mv fp, x23
	jal x0, .LBB5_14
.LBB5_5:                                //  %if.then6.i
	jal __sfp_lock_acquire
	sh x0, 12 ( fp )
	jal __sfp_lock_release
	mv fp, x23
	jal x0, .LBB5_14
.LBB5_10:                               //  %if.else26.i
	add x11, x0, 8
	sh x11, 12 ( fp )
	lui x11, %hi( funwriter )
	add x11, x11, %lo( funwriter )
	sw x19, 8 ( x10 )
	sw x11, 36 ( fp )
	sw x0, 4 ( x10 )
	sw x0, 32 ( fp )
	sw x18, 16 ( x10 )
	sw x9, 12 ( x10 )
	mv x10, x0
	beq x9, x10, .LBB5_13
.LBB5_12:                               //  %if.end32.i
	lui x10, %hi( funseeker )
	add x10, x10, %lo( funseeker )
.LBB5_13:                               //  %if.end32.i
	sw x10, 40 ( fp )
	lui x10, %hi( funcloser )
	add x10, x10, %lo( funcloser )
	sw x10, 44 ( fp )
.LBB5_14:                               //  %_funopen_r.exit
	mv x10, fp
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
.LBB5_9:                                //  %if.else.i
	add x11, x0, 4
	sh x11, 12 ( fp )
	sw x0, 8 ( x10 )
	sw x0, 36 ( fp )
	sw x18, 16 ( x10 )
	sw x9, 12 ( x10 )
	mv x10, x0
	bne x9, x10, .LBB5_12
	jal x0, .LBB5_13
.Lfunc_end5:
	.size	funopen, .Lfunc_end5-funopen
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
