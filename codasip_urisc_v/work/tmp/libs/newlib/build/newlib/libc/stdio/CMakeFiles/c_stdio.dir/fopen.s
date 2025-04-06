	.text
	.file	"fopen.c"
	.globl	_fopen_r                //  -- Begin function _fopen_r
	.type	_fopen_r,@function
_fopen_r:                               //  @_fopen_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	mv x13, x12
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	mv x20, x11
	add x12, sp, 4
	mv x11, x13
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -24
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv fp, x10
	jal __sflags
	mv x19, x10
	mv x18, x0
	beq x0, x19, .LBB0_7
.LBB0_1:                                //  %if.end
	mv x10, fp
	jal __sfp
	mv x9, x10
	beq x0, x9, .LBB0_7
.LBB0_2:                                //  %if.end4
	lw x12, 4 ( sp )
	add x13, x0, 438
	mv x10, fp
	mv x11, x20
	jal _open_r
	blt x10, x0, .LBB0_3
.LBB0_4:                                //  %if.end8
	lui x11, %hi( __sclose )
	add x11, x11, %lo( __sclose )
	sw x11, 44 ( x9 )
	lui x11, %hi( __sseek )
	add x11, x11, %lo( __sseek )
	sw x11, 40 ( x9 )
	lui x11, %hi( __swrite )
	add x11, x11, %lo( __swrite )
	sw x11, 36 ( x9 )
	lui x11, %hi( __sread )
	add x11, x11, %lo( __sread )
	sh x10, 14 ( x9 )
	and x10, x19, 256
	sw x11, 32 ( x9 )
	sh x19, 12 ( x9 )
	sw x9, 28 ( x9 )
	beq x0, x10, .LBB0_6
.LBB0_5:                                //  %if.then21
	mv x12, x0
	add x13, x0, 2
	mv x10, fp
	mv x11, x9
	jal _fseek_r
.LBB0_6:                                //  %cleanup
	mv x18, x9
	jal x0, .LBB0_7
.LBB0_3:                                //  %if.then7
	jal __sfp_lock_acquire
	sh x0, 12 ( x9 )
	jal __sfp_lock_release
.LBB0_7:                                //  %cleanup
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
.Lfunc_end0:
	.size	_fopen_r, .Lfunc_end0-_fopen_r
	.cfi_endproc
                                        //  -- End function
	.globl	fopen                   //  -- Begin function fopen
	.type	fopen,@function
fopen:                                  //  @fopen
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x12, x11
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	j _fopen_r
.Lfunc_end1:
	.size	fopen, .Lfunc_end1-fopen
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
