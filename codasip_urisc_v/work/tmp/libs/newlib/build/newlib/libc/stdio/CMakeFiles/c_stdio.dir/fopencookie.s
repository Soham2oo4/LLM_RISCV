	.text
	.file	"fopencookie.c"
	.globl	_fopencookie_r          //  -- Begin function _fopencookie_r
	.type	_fopencookie_r,@function
_fopencookie_r:                         //  @_fopencookie_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw fp, 20 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -28
	mv fp, x13
	mv x13, x12
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	add x12, sp, 16
	mv x11, x13
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	mv x21, x10
	jal __sflags
	mv x20, x10
	mv x18, x0
	beq x0, x20, .LBB0_12
.LBB0_1:                                //  %if.end
	and x10, x20, 20
	beq x0, x10, .LBB0_3
.LBB0_2:                                //  %land.lhs.true
	lw x10, 0 ( fp )
	beq x0, x10, .LBB0_5
.LBB0_3:                                //  %lor.lhs.false
	and x10, x20, 24
	beq x0, x10, .LBB0_6
.LBB0_4:                                //  %land.lhs.true4
	lw x10, 4 ( fp )
	beq x0, x10, .LBB0_5
.LBB0_6:                                //  %if.end7
	mv x10, x21
	jal __sfp
	mv x19, x10
	beq x0, x19, .LBB0_12
.LBB0_7:                                //  %if.end11
	add x11, x0, 24
	mv x10, x21
	jal _malloc_r
	beq x0, x10, .LBB0_8
.LBB0_9:                                //  %if.end15
	lw x11, 8 ( fp )
	mv x12, x0
	beq x11, x12, .LBB0_11
.LBB0_10:                               //  %if.end15
	lui x12, %hi( fcseeker )
	add x12, x12, %lo( fcseeker )
.LBB0_11:                               //  %if.end15
	lui x13, %hi( 65535 )
	sw x12, 40 ( x19 )
	lw x12, 0 ( fp )
	add x13, x13, %lo( 65535 )
	sh x13, 14 ( x19 )
	lui x13, %hi( fcreader )
	add x13, x13, %lo( fcreader )
	sw x13, 32 ( x19 )
	lui x13, %hi( fcwriter )
	sw x12, 8 ( x10 )
	lw x12, 4 ( fp )
	sw x11, 16 ( x10 )
	lw x11, 12 ( fp )
	add x13, x13, %lo( fcwriter )
	sw x13, 36 ( x19 )
	lui x13, %hi( fccloser )
	add x13, x13, %lo( fccloser )
	mv x18, x19
	sh x20, 12 ( x19 )
	sw x9, 0 ( x10 )
	sw x13, 44 ( x19 )
	sw x19, 4 ( x10 )
	sw x10, 28 ( x19 )
	sw x12, 12 ( x10 )
	sw x11, 20 ( x10 )
	jal x0, .LBB0_12
.LBB0_5:                                //  %if.then6
	add x10, x0, 22
	sw x10, 0 ( x21 )
	jal x0, .LBB0_12
.LBB0_8:                                //  %if.then14
	jal __sfp_lock_acquire
	sh x0, 12 ( x19 )
	jal __sfp_lock_release
.LBB0_12:                               //  %cleanup
	mv x10, x18
	lw fp, 20 ( sp )                //  4-byte Folded Reload
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
	.size	_fopencookie_r, .Lfunc_end0-_fopencookie_r
	.cfi_endproc
                                        //  -- End function
	.type	fcreader,@function      //  -- Begin function fcreader
fcreader:                               //  @fcreader
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
	.size	fcreader, .Lfunc_end1-fcreader
	.cfi_endproc
                                        //  -- End function
	.type	fcwriter,@function      //  -- Begin function fcwriter
fcwriter:                               //  @fcwriter
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv x19, x11
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv fp, x10
	lw x10, 4 ( x19 )
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x9, x13
	lbu x11, 13 ( x10 )
	mv x18, x12
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	and x11, x11, 1
	beq x0, x11, .LBB2_3
.LBB2_1:                                //  %land.lhs.true
	lw x14, 40 ( x10 )
	beq x0, x14, .LBB2_3
.LBB2_2:                                //  %if.then
	mv x12, x0
	add x13, x0, 2
	mv x10, fp
	mv x11, x19
	call.reg x14
.LBB2_3:                                //  %if.end
	jal __errno
	sw x0, 0 ( x10 )
	lw x13, 12 ( x19 )
	lw x10, 0 ( x19 )
	mv x11, x18
	mv x12, x9
	call.reg x13
	mv x9, x10
	bge x9, x0, .LBB2_6
.LBB2_4:                                //  %land.lhs.true9
	jal __errno
	lw x10, 0 ( x10 )
	beq x0, x10, .LBB2_6
.LBB2_5:                                //  %if.then12
	jal __errno
	lw x10, 0 ( x10 )
	sw x10, 0 ( fp )
.LBB2_6:                                //  %if.end14
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
	.size	fcwriter, .Lfunc_end2-fcwriter
	.cfi_endproc
                                        //  -- End function
	.type	fcseeker,@function      //  -- Begin function fcseeker
fcseeker:                               //  @fcseeker
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
	sw fp, 16 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -16
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	mv x9, x13
	mv x18, x11
	mv fp, x10
	sw x12, 12 ( sp )
	jal __errno
	sw x0, 0 ( x10 )
	lw x13, 16 ( x18 )
	lw x10, 0 ( x18 )
	add x11, sp, 12
	mv x12, x9
	call.reg x13
	bge x10, x0, .LBB3_3
.LBB3_1:                                //  %land.lhs.true
	jal __errno
	lw x10, 0 ( x10 )
	beq x0, x10, .LBB3_3
.LBB3_2:                                //  %if.then
	jal __errno
	lw x10, 0 ( x10 )
	sw x10, 0 ( fp )
.LBB3_3:                                //  %if.end
	lw x10, 12 ( sp )
	lw fp, 16 ( sp )                //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end3:
	.size	fcseeker, .Lfunc_end3-fcseeker
	.cfi_endproc
                                        //  -- End function
	.type	fccloser,@function      //  -- Begin function fccloser
fccloser:                               //  @fccloser
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
	lw x10, 20 ( fp )
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	beq x0, x10, .LBB4_1
.LBB4_2:                                //  %if.then
	jal __errno
	sw x0, 0 ( x10 )
	lw x11, 20 ( fp )
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
	.size	fccloser, .Lfunc_end4-fccloser
	.cfi_endproc
                                        //  -- End function
	.globl	fopencookie             //  -- Begin function fopencookie
	.type	fopencookie,@function
fopencookie:                            //  @fopencookie
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	mv x14, x11
	mv x11, x10
	lw x10, 4 ( x12 )
	add x13, sp, 12
	sw x10, 4 ( x13 )
	lw x10, 8 ( x12 )
	sw x10, 8 ( x13 )
	lw x10, 0 ( x12 )
	sw x10, 12 ( sp )
	lw x10, 12 ( x12 )
	mv x12, x14
	sw x10, 24 ( sp )
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	jal _fopencookie_r
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end5:
	.size	fopencookie, .Lfunc_end5-fopencookie
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
