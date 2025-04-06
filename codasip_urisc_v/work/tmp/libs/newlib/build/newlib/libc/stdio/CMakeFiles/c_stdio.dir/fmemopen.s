	.text
	.file	"fmemopen.c"
	.globl	_fmemopen_r             //  -- Begin function _fmemopen_r
	.type	_fmemopen_r,@function
_fmemopen_r:                            //  @_fmemopen_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	mv x21, x13
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	mv x19, x12
	mv x20, x11
	add x12, sp, 12
	mv x11, x21
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw fp, 16 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -32
	mv x18, x10
	jal __sflags
	mv fp, x10
	mv x22, x0
	beq x0, fp, .LBB0_29
.LBB0_1:                                //  %if.end
	beq x0, x19, .LBB0_4
.LBB0_2:                                //  %lor.lhs.false
	and x10, fp, 16
	bltu x0, x10, .LBB0_5
.LBB0_3:                                //  %lor.lhs.false
	bltu x0, x20, .LBB0_5
.LBB0_4:                                //  %if.then4
	add x10, x0, 22
	sw x10, 0 ( x18 )
.LBB0_29:                               //  %cleanup
	mv x10, x22
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
.LBB0_5:                                //  %if.end5
	mv x10, x18
	jal __sfp
	mv x9, x10
	beq x0, x9, .LBB0_29
.LBB0_6:                                //  %if.end9
	mv x22, x0
	bne x20, x22, .LBB0_7
.LBB0_8:                                //  %if.end9
	add x11, x19, 24
	mv x10, x18
	jal _malloc_r
	mv x18, x10
	beq x0, x18, .LBB0_10
.LBB0_11:                               //  %if.end14
	srl x10, fp, 3&31
	and x10, x10, 1
	sb x10, 21 ( x18 )
	sw x19, 16 ( x18 )
	sb x0, 22 ( x18 )
	sw x18, 0 ( x18 )
	beq x0, x20, .LBB0_12
.LBB0_13:                               //  %if.else
	sw x20, 4 ( x18 )
	lb x10, 0 ( x21 )
	xor x11, x10, 119
	beq x0, x11, .LBB0_21
.LBB0_14:                               //  %if.else
	xor x11, x10, 114
	beq x0, x11, .LBB0_23
.LBB0_15:                               //  %if.else
	xor x10, x10, 97
	bltu x0, x10, .LBB0_22
.LBB0_16:                               //  %sw.bb
	mv x11, x0
	mv x10, x20
	mv x12, x19
	jal memchr
	beq x0, x10, .LBB0_18
.LBB0_17:                               //  %cond.true31
	lw x11, 4 ( x18 )
	sub x10, x10, x11
	sw x10, 12 ( x18 )
	sw x10, 8 ( x18 )
	jal x0, .LBB0_20
.LBB0_7:
	add x11, x0, 24
	mv x10, x18
	jal _malloc_r
	mv x18, x10
	bltu x0, x18, .LBB0_11
.LBB0_10:                               //  %if.then13
	jal __sfp_lock_acquire
	sh x0, 12 ( x9 )
	jal __sfp_lock_release
	mv x22, x0
	jal x0, .LBB0_29
.LBB0_12:                               //  %if.then19
	add x10, x18, 24
	sw x10, 4 ( x18 )
	srl x10, fp, 8&31
	and x10, x10, 1
	sb x10, 20 ( x18 )
	sb x0, 24 ( x18 )
	sw x0, 12 ( x18 )
	sw x0, 8 ( x18 )
	and x11, fp, 20
	mv x10, x22
	beq x11, x22, .LBB0_26
.LBB0_25:                               //  %if.end56
	lui x10, %hi( fmemreader )
	add x10, x10, %lo( fmemreader )
.LBB0_26:                               //  %if.end56
	and x11, fp, 24
	beq x11, x22, .LBB0_28
.LBB0_27:                               //  %if.end56
	lui x11, %hi( fmemwriter )
	add x22, x11, %lo( fmemwriter )
.LBB0_28:                               //  %if.end56
	lui x11, %hi( fmemcloser )
	add x11, x11, %lo( fmemcloser )
	sw x11, 44 ( x9 )
	lui x11, %hi( fmemseeker )
	sw x10, 32 ( x9 )
	lui x10, %hi( 65535 )
	add x11, x11, %lo( fmemseeker )
	sw x22, 36 ( x9 )
	add x10, x10, %lo( 65535 )
	mv x22, x9
	sw x11, 40 ( x9 )
	sw x18, 28 ( x9 )
	sh fp, 12 ( x9 )
	sh x10, 14 ( x9 )
	jal x0, .LBB0_29
.LBB0_23:                               //  %sw.bb47
	sw x19, 12 ( x18 )
	sw x0, 8 ( x18 )
	sb x0, 20 ( x18 )
	and x11, fp, 20
	mv x10, x22
	bne x11, x22, .LBB0_25
	jal x0, .LBB0_26
.LBB0_21:                               //  %sw.bb51
	sb x0, 20 ( x18 )
	sw x0, 12 ( x18 )
	sw x0, 8 ( x18 )
	sb x0, 0 ( x20 )
	and x11, fp, 20
	mv x10, x22
	bne x11, x22, .LBB0_25
	jal x0, .LBB0_26
.LBB0_18:                               //  %land.lhs.true.critedge
	lbu x10, 21 ( x18 )
	sw x19, 12 ( x18 )
	sw x19, 8 ( x18 )
	beq x0, x10, .LBB0_20
.LBB0_19:                               //  %if.then42
	lw x10, 4 ( x18 )
	add x10, x10, x19
	sb x0, -1 ( x10 )
.LBB0_20:                               //  %if.end45
	seqz x10, x0
	sb x10, 20 ( x18 )
	and x11, fp, 20
	mv x10, x22
	bne x11, x22, .LBB0_25
	jal x0, .LBB0_26
.LBB0_22:                               //  %sw.default
	jal abort
.Lfunc_end0:
	.size	_fmemopen_r, .Lfunc_end0-_fmemopen_r
	.cfi_endproc
                                        //  -- End function
	.type	fmemreader,@function    //  -- Begin function fmemreader
fmemreader:                             //  @fmemreader
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	lw x11, 12 ( x9 )
	lw x10, 8 ( x9 )
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv fp, x13
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	bgeu x11, x10, .LBB1_2
.LBB1_1:
	mv fp, x0
	jal x0, .LBB1_5
.LBB1_2:                                //  %if.end
	sub x11, x11, x10
	bltu fp, x11, .LBB1_4
.LBB1_3:                                //  %if.end
	mv fp, x11
.LBB1_4:                                //  %if.end
	lw x11, 4 ( x9 )
	add x11, x10, x11
	mv x10, x12
	mv x12, fp
	jal memcpy
	lw x10, 8 ( x9 )
	add x10, fp, x10
	sw x10, 8 ( x9 )
.LBB1_5:                                //  %cleanup
	mv x10, fp
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	fmemreader, .Lfunc_end1-fmemreader
	.cfi_endproc
                                        //  -- End function
	.type	fmemwriter,@function    //  -- Begin function fmemwriter
fmemwriter:                             //  @fmemwriter
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv x19, x11
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x10
	lbu x10, 20 ( x19 )
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -28
	mv fp, x13
	mv x9, x12
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	beq x0, x10, .LBB2_2
.LBB2_1:                                //  %if.then
	lw x10, 12 ( x19 )
	add x20, x19, 8
	add x21, x19, 12
	sw x10, 8 ( x19 )
	mv x12, x10
	jal x0, .LBB2_4
.LBB2_2:                                //  %if.else
	lw x10, 12 ( x19 )
	lw x12, 8 ( x19 )
	add x21, x19, 12
	add x20, x19, 8
	bgeu x10, x12, .LBB2_4
.LBB2_3:                                //  %if.then3
	lw x11, 4 ( x19 )
	sub x12, x12, x10
	add x10, x10, x11
	mv x11, x0
	jal memset
	lw x10, 12 ( x19 )
	lw x12, 8 ( x19 )
.LBB2_4:                                //  %if.end8
	lw x13, 16 ( x19 )
	lb x14, 21 ( x19 )
	add x11, fp, x12
	sub x15, x13, x14
	bltu x15, x11, .LBB2_5
.LBB2_6:                                //  %if.end8
	mv x11, x0
	add x12, x12, fp
	bltu x10, x12, .LBB2_8
.LBB2_10:                               //  %if.else39
	and x10, x14, 255
	beq x0, x10, .LBB2_14
.LBB2_11:                               //  %if.then42
	beq x0, fp, .LBB2_12
.LBB2_13:                               //  %if.then44
	sub x10, x12, x11
	lw x12, 4 ( x19 )
	add x10, x10, x12
	lb x12, 0 ( x10 )
	sb x12, 22 ( x19 )
	sb x0, 0 ( x10 )
	jal x0, .LBB2_14
.LBB2_5:
	sub fp, x13, x12
	mv x11, x14
	add x12, x12, fp
	bgeu x10, x12, .LBB2_10
.LBB2_8:                                //  %if.then25
	sub x10, x12, x11
	sw x12, 0 ( x21 )
	bgeu x10, x13, .LBB2_14
.LBB2_9:                                //  %if.then34
	lw x12, 4 ( x19 )
	add x10, x10, x12
	sb x0, 0 ( x10 )
	sb x0, 22 ( x19 )
	jal x0, .LBB2_14
.LBB2_12:
	mv x11, x0
.LBB2_14:                               //  %if.end59
	lw x10, 0 ( x20 )
	add x12, fp, x10
	sw x12, 0 ( x20 )
	sub x12, fp, x11
	beq x0, x12, .LBB2_16
.LBB2_15:                               //  %if.then64
	lw x11, 4 ( x19 )
	add x10, x10, x11
	mv x11, x9
	jal memcpy
	jal x0, .LBB2_17
.LBB2_16:                               //  %if.else71
	add x10, x0, 28
	add fp, x0, -1
	sw x10, 0 ( x18 )
.LBB2_17:                               //  %cleanup
	mv x10, fp
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x21, 8 ( sp )                //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end2:
	.size	fmemwriter, .Lfunc_end2-fmemwriter
	.cfi_endproc
                                        //  -- End function
	.type	fmemseeker,@function    //  -- Begin function fmemseeker
fmemseeker:                             //  @fmemseeker
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	xor x14, x13, 1
	beq x0, x14, .LBB3_1
.LBB3_2:                                //  %entry
	xor x13, x13, 2
	bltu x0, x13, .LBB3_5
.LBB3_3:                                //  %if.then3
	add x13, x0, 12
	jal x0, .LBB3_4
.LBB3_1:
	add x13, x0, 8
.LBB3_4:                                //  %if.end5.sink.split
	add x13, x13, x11
	lw x13, 0 ( x13 )
	add x12, x12, x13
.LBB3_5:                                //  %if.end5
	blt x12, x0, .LBB3_6
.LBB3_8:                                //  %if.else8
	lw x13, 16 ( x11 )
	bgeu x13, x12, .LBB3_10
.LBB3_9:                                //  %if.then10
	add x11, x0, 28
	add x12, x0, -1
	sw x11, 0 ( x10 )
	mv x10, x12
	jr ra
.LBB3_6:                                //  %if.then7
	add x11, x0, 22
	add x12, x0, -1
	sw x11, 0 ( x10 )
	mv x10, x12
	jr ra
.LBB3_10:                               //  %if.else12
	lbu x10, 21 ( x11 )
	beq x0, x10, .LBB3_11
.LBB3_12:                               //  %land.lhs.true
	lw x10, 8 ( x11 )
	lw x13, 12 ( x11 )
	bgeu x10, x13, .LBB3_13
.LBB3_14:                               //  %if.end20
	lw x13, 4 ( x11 )
	add x10, x10, x13
	lb x13, 22 ( x11 )
	sb x13, 0 ( x10 )
	lbu x10, 21 ( x11 )
	sw x12, 8 ( x11 )
	sb x0, 22 ( x11 )
	bltu x0, x10, .LBB3_15
	jal x0, .LBB3_17
.LBB3_11:                               //  %if.end20.thread
	mv x10, x12
	sw x12, 8 ( x11 )
	jr ra
.LBB3_13:                               //  %if.end20.thread71
	sw x12, 8 ( x11 )
.LBB3_15:                               //  %land.lhs.true25
	lw x10, 12 ( x11 )
	bgeu x12, x10, .LBB3_17
.LBB3_16:                               //  %if.then30
	lw x10, 4 ( x11 )
	add x10, x12, x10
	lb x13, 0 ( x10 )
	sb x13, 22 ( x11 )
	sb x0, 0 ( x10 )
.LBB3_17:                               //  %if.end40
	mv x10, x12
	jr ra
.Lfunc_end3:
	.size	fmemseeker, .Lfunc_end3-fmemseeker
	.cfi_endproc
                                        //  -- End function
	.type	fmemcloser,@function    //  -- Begin function fmemcloser
fmemcloser:                             //  @fmemcloser
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	lw x11, 0 ( x11 )
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal _free_r
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	mv x10, x0
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end4:
	.size	fmemcloser, .Lfunc_end4-fmemcloser
	.cfi_endproc
                                        //  -- End function
	.globl	fmemopen                //  -- Begin function fmemopen
	.type	fmemopen,@function
fmemopen:                               //  @fmemopen
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x13, x12
	mv x12, x11
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	j _fmemopen_r
.Lfunc_end5:
	.size	fmemopen, .Lfunc_end5-fmemopen
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
