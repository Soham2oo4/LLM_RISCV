	.text
	.file	"freopen.c"
	.globl	_freopen_r              //  -- Begin function _freopen_r
	.type	_freopen_r,@function
_freopen_r:                             //  @_freopen_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw fp, 20 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -28
	mv fp, x13
	mv x18, x12
	mv x19, x11
	mv x9, x10
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	beq x0, x9, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x10, 56 ( x9 )
	bltu x0, x10, .LBB0_3
.LBB0_2:                                //  %if.then
	mv x10, x9
	jal __sinit
.LBB0_3:                                //  %if.end
	add x12, sp, 16
	mv x10, x9
	mv x11, x18
	jal __sflags
	mv x18, x10
	beq x0, x18, .LBB0_4
.LBB0_5:                                //  %if.end21
	lhu x10, 12 ( fp )
	beq x0, x10, .LBB0_6
.LBB0_10:                               //  %if.else
	and x10, x10, 8
	beq x0, x10, .LBB0_12
.LBB0_11:                               //  %if.then32
	mv x10, x9
	mv x11, fp
	jal _fflush_r
.LBB0_12:                               //  %if.end34
	beq x0, x19, .LBB0_7
.LBB0_13:                               //  %if.end34
	lw x12, 44 ( fp )
	beq x0, x12, .LBB0_7
.LBB0_14:                               //  %if.end44.thread
	lw x11, 28 ( fp )
	mv x10, x9
	call.reg x12
	jal x0, .LBB0_15
.LBB0_4:                                //  %if.then8
	mv x10, x9
	mv x11, fp
	jal _fclose_r
	mv x20, x0
	jal x0, .LBB0_27
.LBB0_6:                                //  %if.then26
	add x10, x0, 32
	sh x10, 12 ( fp )
.LBB0_7:                                //  %if.end44
	beq x0, x19, .LBB0_8
.LBB0_15:                               //  %if.then47
	lw x12, 16 ( sp )
	add x13, x0, 438
	mv x10, x9
	mv x11, x19
	jal _open_r
	lw x21, 0 ( x9 )
	mv x19, x10
.LBB0_16:                               //  %if.end62
	lbu x10, 12 ( fp )
	and x10, x10, 128
	beq x0, x10, .LBB0_18
.LBB0_17:                               //  %if.then67
	lw x11, 16 ( fp )
	mv x10, x9
	jal _free_r
.LBB0_18:                               //  %if.end68
	lw x11, 48 ( fp )
	sw x0, 4 ( fp )
	sw x0, 8 ( fp )
	sw x0, 24 ( fp )
	sw x0, 20 ( fp )
	sw x0, 16 ( fp )
	sw x0, 0 ( fp )
	beq x0, x11, .LBB0_22
.LBB0_19:                               //  %if.then75
	add x10, fp, 64
	beq x11, x10, .LBB0_21
.LBB0_20:                               //  %if.then80
	mv x10, x9
	jal _free_r
.LBB0_21:                               //  %if.end83
	sw x0, 48 ( fp )
.LBB0_22:                               //  %if.end86
	lw x11, 68 ( fp )
	sw x0, 52 ( fp )
	beq x0, x11, .LBB0_24
.LBB0_23:                               //  %if.then92
	mv x10, x9
	jal _free_r
	sw x0, 68 ( fp )
.LBB0_24:                               //  %if.end97
	lhu x10, 12 ( fp )
	lui x11, %hi( 57343 )
	add x11, x11, %lo( 57343 )
	mv x20, x0
	and x10, x11, x10
	sh x10, 12 ( fp )
	lw x10, 100 ( fp )
	lui x11, %hi( -8193 )
	add x11, x11, %lo( -8193 )
	add x12, x0, 8
	and x10, x11, x10
	sw x10, 100 ( fp )
	add x10, fp, 92
	mv x11, x20
	sw x0, 72 ( fp )
	jal memset
	blt x19, x0, .LBB0_25
.LBB0_26:                               //  %if.end123
	lui x10, %hi( __sclose )
	add x10, x10, %lo( __sclose )
	sw x10, 44 ( fp )
	lui x10, %hi( __sseek )
	add x10, x10, %lo( __sseek )
	sw x10, 40 ( fp )
	lui x10, %hi( __swrite )
	add x10, x10, %lo( __swrite )
	sw x10, 36 ( fp )
	lui x10, %hi( __sread )
	add x10, x10, %lo( __sread )
	mv x20, fp
	sw x10, 32 ( fp )
	sh x19, 14 ( fp )
	sh x18, 12 ( fp )
	sw fp, 28 ( fp )
	jal x0, .LBB0_27
.LBB0_25:                               //  %if.then109
	jal __sfp_lock_acquire
	sw x21, 0 ( x9 )
	sh x0, 12 ( fp )
	jal __sfp_lock_release
.LBB0_27:                               //  %cleanup
	mv x10, x20
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
.LBB0_8:                                //  %if.then52
	lw x12, 44 ( fp )
	add x21, x0, 9
	add x19, x0, -1
	beq x0, x12, .LBB0_16
.LBB0_9:                                //  %if.then56
	lw x11, 28 ( fp )
	mv x10, x9
	call.reg x12
	lbu x10, 12 ( fp )
	and x10, x10, 128
	bltu x0, x10, .LBB0_17
	jal x0, .LBB0_18
.Lfunc_end0:
	.size	_freopen_r, .Lfunc_end0-_freopen_r
	.cfi_endproc
                                        //  -- End function
	.globl	freopen                 //  -- Begin function freopen
	.type	freopen,@function
freopen:                                //  @freopen
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
	j _freopen_r
.Lfunc_end1:
	.size	freopen, .Lfunc_end1-freopen
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
