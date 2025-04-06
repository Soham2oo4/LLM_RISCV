	.text
	.file	"open_memstream.c"
	.globl	_open_memstream_r       //  -- Begin function _open_memstream_r
	.type	_open_memstream_r,@function
_open_memstream_r:                      //  @_open_memstream_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x13, x0, -1
	j internal_open_memstream_r
.Lfunc_end0:
	.size	_open_memstream_r, .Lfunc_end0-_open_memstream_r
	.cfi_endproc
                                        //  -- End function
	.type	internal_open_memstream_r,@function //  -- Begin function internal_open_memstream_r
internal_open_memstream_r:              //  @internal_open_memstream_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 22, -28
	mv x9, x13
	mv x21, x12
	mv x20, x11
	mv x22, x10
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -32
	beq x0, x20, .LBB1_2
.LBB1_1:                                //  %entry
	beq x0, x21, .LBB1_2
.LBB1_3:                                //  %if.end
	mv x10, x22
	jal __sfp
	mv fp, x10
	mv x18, x0
	beq x0, fp, .LBB1_22
.LBB1_4:                                //  %if.end3
	add x11, x0, 32
	mv x10, x22
	jal _malloc_r
	mv x19, x10
	beq x0, x19, .LBB1_5
.LBB1_6:                                //  %if.end7
	lw x10, 0 ( x21 )
	seqz x11, x0
	bne x9, x11, .LBB1_8
.LBB1_7:
	sll x10, x10, 2&31
.LBB1_8:                                //  %if.end7
	sltiu x11, x10, 64
	sw x10, 20 ( x19 )
	beq x0, x11, .LBB1_10
.LBB1_9:
	add x10, x0, 64
	jal x0, .LBB1_12
.LBB1_2:                                //  %if.then
	add x10, x0, 22
	sw x10, 0 ( x22 )
	mv x18, x0
.LBB1_22:                               //  %cleanup
	mv x10, x18
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x22, 4 ( sp )                //  4-byte Folded Reload
	lw x21, 8 ( sp )                //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.LBB1_5:                                //  %if.then6
	jal __sfp_lock_acquire
	sh x0, 12 ( fp )
	jal __sfp_lock_release
	jal x0, .LBB1_22
.LBB1_10:                               //  %if.else
	lui x11, %hi( 65537 )
	add x11, x11, %lo( 65537 )
	bltu x10, x11, .LBB1_13
.LBB1_11:
	lui x10, (65536>>12)&1048575
.LBB1_12:                               //  %if.end21.sink.split
	sw x10, 20 ( x19 )
.LBB1_13:                               //  %if.end21
	sw x0, 0 ( x21 )
	lw x11, 20 ( x19 )
	mv x10, x22
	jal _malloc_r
	sw x10, 0 ( x20 )
	beq x0, x10, .LBB1_14
.LBB1_15:                               //  %if.end27
	xor x11, x9, 1
	bltu x0, x11, .LBB1_17
.LBB1_16:                               //  %if.then29
	sw x0, 0 ( x10 )
	jal x0, .LBB1_18
.LBB1_14:                               //  %if.then25
	jal __sfp_lock_acquire
	sh x0, 12 ( fp )
	jal __sfp_lock_release
	mv x10, x22
	mv x11, x19
	jal _free_r
	jal x0, .LBB1_22
.LBB1_17:                               //  %if.else30
	sb x0, 0 ( x10 )
.LBB1_18:                               //  %if.then45
	lui x10, %hi( memwriter )
	add x10, x10, %lo( memwriter )
	sw x0, 24 ( x19 )
	sw x10, 36 ( fp )
	lui x10, %hi( memseeker )
	add x10, x10, %lo( memseeker )
	sw x10, 40 ( fp )
	lui x10, %hi( memcloser )
	add x10, x10, %lo( memcloser )
	sw x10, 44 ( fp )
	lui x10, %hi( -57336 )
	add x10, x10, %lo( -57336 )
	sw x21, 8 ( x19 )
	sw x20, 4 ( x19 )
	sb x9, 28 ( x19 )
	sw x0, 16 ( x19 )
	sw x0, 12 ( x19 )
	sw x19, 0 ( x19 )
	sw x10, 12 ( fp )
	lw x10, 100 ( fp )
	sw x19, 28 ( fp )
	sw x0, 32 ( fp )
	bge x0, x9, .LBB1_20
.LBB1_19:                               //  %if.then51
	lui x11, (8192>>12)&1048575
	or x10, x11, x10
	jal x0, .LBB1_21
.LBB1_20:                               //  %if.else54
	lui x11, %hi( -8193 )
	add x11, x11, %lo( -8193 )
	and x10, x11, x10
.LBB1_21:                               //  %cleanup
	mv x18, fp
	sw x10, 100 ( fp )
	jal x0, .LBB1_22
.Lfunc_end1:
	.size	internal_open_memstream_r, .Lfunc_end1-internal_open_memstream_r
	.cfi_endproc
                                        //  -- End function
	.globl	_open_wmemstream_r      //  -- Begin function _open_wmemstream_r
	.type	_open_wmemstream_r,@function
_open_wmemstream_r:                     //  @_open_wmemstream_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	seqz x13, x0
	j internal_open_memstream_r
.Lfunc_end2:
	.size	_open_wmemstream_r, .Lfunc_end2-_open_wmemstream_r
	.cfi_endproc
                                        //  -- End function
	.globl	open_memstream          //  -- Begin function open_memstream
	.type	open_memstream,@function
open_memstream:                         //  @open_memstream
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x12, x11
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	add x13, x0, -1
	j internal_open_memstream_r
.Lfunc_end3:
	.size	open_memstream, .Lfunc_end3-open_memstream
	.cfi_endproc
                                        //  -- End function
	.globl	open_wmemstream         //  -- Begin function open_wmemstream
	.type	open_wmemstream,@function
open_wmemstream:                        //  @open_wmemstream
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x12, x11
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	seqz x13, x0
	j internal_open_memstream_r
.Lfunc_end4:
	.size	open_wmemstream, .Lfunc_end4-open_wmemstream
	.cfi_endproc
                                        //  -- End function
	.type	memwriter,@function     //  -- Begin function memwriter
memwriter:                              //  @memwriter
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	lw x11, 12 ( x9 )
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -28
	mv fp, x13
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	mv x18, x12
	mv x20, x10
	add x21, fp, x11
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	blt x21, x0, .LBB5_1
.LBB5_2:                                //  %if.end
	lw x10, 4 ( x9 )
	lw x19, 0 ( x10 )
	lw x10, 20 ( x9 )
	bltu x21, x10, .LBB5_8
.LBB5_3:                                //  %if.then4
	add x11, x0, 3
	jal __mulsi3
	srl x10, x10, 1&31
	add x21, x21, 1
	bltu x10, x21, .LBB5_5
.LBB5_4:                                //  %if.then4
	mv x21, x10
.LBB5_5:                                //  %if.then4
	mv x10, x20
	mv x11, x19
	mv x12, x21
	jal _realloc_r
	mv x19, x10
	beq x0, x19, .LBB5_6
.LBB5_7:                                //  %if.end16
	lw x10, 4 ( x9 )
	lw x11, 12 ( x9 )
	sw x21, 20 ( x9 )
	sw x19, 0 ( x10 )
.LBB5_8:                                //  %if.end19
	lw x12, 16 ( x9 )
	bgeu x12, x11, .LBB5_10
.LBB5_9:                                //  %if.then22
	add x10, x12, x19
	sub x12, x11, x12
	mv x11, x0
	jal memset
	lw x11, 12 ( x9 )
.LBB5_10:                               //  %if.end27
	add x10, x11, x19
	mv x11, x18
	mv x12, fp
	jal memcpy
	lw x10, 12 ( x9 )
	lw x12, 16 ( x9 )
	add x11, fp, x10
	add x10, x11, x19
	sw x11, 12 ( x9 )
	bgeu x12, x11, .LBB5_12
.LBB5_11:                               //  %if.then36
	sw x11, 16 ( x9 )
	jal x0, .LBB5_15
.LBB5_1:                                //  %if.then
	add x10, x0, 27
	sw x10, 0 ( x20 )
	add fp, x0, -1
	jal x0, .LBB5_18
.LBB5_12:                               //  %if.else
	lb x11, 28 ( x9 )
	bge x0, x11, .LBB5_14
.LBB5_13:                               //  %if.then41
	lw x11, 0 ( x10 )
	sw x11, 24 ( x9 )
	jal x0, .LBB5_15
.LBB5_6:
	add fp, x0, -1
	jal x0, .LBB5_18
.LBB5_14:                               //  %if.else44
	lb x11, 0 ( x10 )
	sb x11, 24 ( x9 )
.LBB5_15:                               //  %if.end49
	sb x0, 0 ( x10 )
	lb x11, 28 ( x9 )
	lw x10, 12 ( x9 )
	mv x12, x0
	bge x12, x11, .LBB5_17
.LBB5_16:
	srl x10, x10, 2&31
.LBB5_17:                               //  %if.end49
	lw x11, 8 ( x9 )
	sw x10, 0 ( x11 )
.LBB5_18:                               //  %cleanup59
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
.Lfunc_end5:
	.size	memwriter, .Lfunc_end5-memwriter
	.cfi_endproc
                                        //  -- End function
	.type	memseeker,@function     //  -- Begin function memseeker
memseeker:                              //  @memseeker
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	xor x14, x13, 1
	beq x0, x14, .LBB6_1
.LBB6_2:                                //  %entry
	xor x13, x13, 2
	bltu x0, x13, .LBB6_5
.LBB6_3:                                //  %if.then3
	add x13, x0, 16
	jal x0, .LBB6_4
.LBB6_1:
	add x13, x0, 12
.LBB6_4:                                //  %if.end5.sink.split
	add x13, x13, x11
	lw x13, 0 ( x13 )
	add x12, x12, x13
.LBB6_5:                                //  %if.end5
	blt x12, x0, .LBB6_6
.LBB6_7:                                //  %if.else12
	lw x13, 12 ( x11 )
	lw x10, 16 ( x11 )
	bgeu x13, x10, .LBB6_12
.LBB6_8:                                //  %if.then16
	lb x10, 28 ( x11 )
	bge x0, x10, .LBB6_10
.LBB6_9:                                //  %if.then19
	lw x10, 4 ( x11 )
	lw x10, 0 ( x10 )
	add x10, x13, x10
	lw x13, 24 ( x11 )
	sw x13, 0 ( x10 )
	jal x0, .LBB6_11
.LBB6_6:                                //  %if.then7
	add x11, x0, 22
	add x12, x0, -1
	sw x11, 0 ( x10 )
	mv x10, x12
	jr ra
.LBB6_10:                               //  %if.else21
	lw x10, 4 ( x11 )
	lw x10, 0 ( x10 )
	add x10, x13, x10
	lb x13, 24 ( x11 )
	sb x13, 0 ( x10 )
.LBB6_11:                               //  %if.end26
	lw x10, 16 ( x11 )
	sw x0, 24 ( x11 )
.LBB6_12:                               //  %if.end29
	lb x13, 28 ( x11 )
	sw x12, 12 ( x11 )
	bgeu x12, x10, .LBB6_15
.LBB6_13:                               //  %if.then35
	lw x10, 4 ( x11 )
	lw x14, 0 ( x10 )
	bge x0, x13, .LBB6_17
.LBB6_14:                               //  %if.then40
	add x13, x12, x14
	lw x13, 0 ( x13 )
	sw x13, 24 ( x11 )
	lw x10, 0 ( x10 )
	add x10, x12, x10
	sw x0, 0 ( x10 )
	lw x10, 8 ( x11 )
	lw x11, 12 ( x11 )
	srl x11, x11, 2&31
	sw x11, 0 ( x10 )
	mv x10, x12
	jr ra
.LBB6_15:                               //  %if.else62
	bge x0, x13, .LBB6_18
.LBB6_16:                               //  %if.then67
	lw x11, 8 ( x11 )
	srl x10, x10, 2&31
	sw x10, 0 ( x11 )
	mv x10, x12
	jr ra
.LBB6_17:                               //  %if.else50
	add x13, x12, x14
	lb x13, 0 ( x13 )
	sb x13, 24 ( x11 )
	lw x10, 0 ( x10 )
	add x10, x12, x10
	sb x0, 0 ( x10 )
	lw x10, 12 ( x11 )
.LBB6_18:                               //  %if.else71
	lw x11, 8 ( x11 )
	sw x10, 0 ( x11 )
	mv x10, x12
	jr ra
.Lfunc_end6:
	.size	memseeker, .Lfunc_end6-memseeker
	.cfi_endproc
                                        //  -- End function
	.type	memcloser,@function     //  -- Begin function memcloser
memcloser:                              //  @memcloser
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv fp, x10
	lw x10, 8 ( x9 )
	mv x11, x0
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	lw x10, 0 ( x10 )
	add x12, x10, 1
	lb x10, 28 ( x9 )
	bge x11, x10, .LBB7_2
.LBB7_1:
	sll x12, x12, 2&31
.LBB7_2:                                //  %entry
	lw x10, 4 ( x9 )
	lw x11, 0 ( x10 )
	mv x10, fp
	jal _realloc_r
	beq x0, x10, .LBB7_4
.LBB7_3:                                //  %if.then
	lw x11, 4 ( x9 )
	sw x10, 0 ( x11 )
.LBB7_4:                                //  %if.end
	lw x11, 0 ( x9 )
	mv x10, fp
	jal _free_r
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	mv x10, x0
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end7:
	.size	memcloser, .Lfunc_end7-memcloser
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
