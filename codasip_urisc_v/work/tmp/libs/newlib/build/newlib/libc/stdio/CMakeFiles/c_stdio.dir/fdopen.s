	.text
	.file	"fdopen.c"
	.globl	_fdopen_r               //  -- Begin function _fdopen_r
	.type	_fdopen_r,@function
_fdopen_r:                              //  @_fdopen_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	mv x13, x12
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv fp, x11
	add x12, sp, 8
	mv x11, x13
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x19, x10
	jal __sflags
	mv x9, x10
	mv x18, x0
	beq x0, x9, .LBB0_3
.LBB0_1:                                //  %if.end
	mv x10, x19
	jal __sfp
	beq x0, x10, .LBB0_3
.LBB0_2:                                //  %if.end4
	lui x11, %hi( __sclose )
	add x11, x11, %lo( __sclose )
	sw x11, 44 ( x10 )
	lui x11, %hi( __sseek )
	add x11, x11, %lo( __sseek )
	sw x11, 40 ( x10 )
	lui x11, %hi( __swrite )
	add x11, x11, %lo( __swrite )
	sw x11, 36 ( x10 )
	lui x11, %hi( __sread )
	add x11, x11, %lo( __sread )
	mv x18, x10
	sw x11, 32 ( x10 )
	sh fp, 14 ( x10 )
	sh x9, 12 ( x10 )
	sw x10, 28 ( x10 )
.LBB0_3:                                //  %cleanup
	mv x10, x18
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_fdopen_r, .Lfunc_end0-_fdopen_r
	.cfi_endproc
                                        //  -- End function
	.globl	fdopen                  //  -- Begin function fdopen
	.type	fdopen,@function
fdopen:                                 //  @fdopen
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv fp, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	lw x19, 0 ( x10 )
	add x12, sp, 8
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x10, x19
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	jal __sflags
	mv x9, x10
	mv x18, x0
	beq x0, x9, .LBB1_3
.LBB1_1:                                //  %if.end.i
	mv x10, x19
	jal __sfp
	beq x0, x10, .LBB1_3
.LBB1_2:                                //  %if.end4.i
	lui x11, %hi( __sclose )
	add x11, x11, %lo( __sclose )
	sw x11, 44 ( x10 )
	lui x11, %hi( __sseek )
	add x11, x11, %lo( __sseek )
	sw x11, 40 ( x10 )
	lui x11, %hi( __swrite )
	add x11, x11, %lo( __swrite )
	sw x11, 36 ( x10 )
	lui x11, %hi( __sread )
	add x11, x11, %lo( __sread )
	mv x18, x10
	sw x11, 32 ( x10 )
	sh fp, 14 ( x10 )
	sh x9, 12 ( x10 )
	sw x10, 28 ( x10 )
.LBB1_3:                                //  %_fdopen_r.exit
	mv x10, x18
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	fdopen, .Lfunc_end1-fdopen
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
