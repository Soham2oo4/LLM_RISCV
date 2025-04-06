	.text
	.file	"getc.c"
	.globl	_getc_r                 //  -- Begin function _getc_r
	.type	_getc_r,@function
_getc_r:                                //  @_getc_r
	.cfi_sections .debug_frame
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
	beq x0, x9, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x10, 56 ( x9 )
	beq x0, x10, .LBB0_2
.LBB0_3:                                //  %if.end
	lw x10, 4 ( fp )
	add x11, x10, -1
	sw x11, 4 ( fp )
	bge x0, x10, .LBB0_4
.LBB0_5:                                //  %cond.false9
	lw x10, 0 ( fp )
	add x11, x10, 1
	sw x11, 0 ( fp )
	lbu x10, 0 ( x10 )
	jal x0, .LBB0_6
.LBB0_2:                                //  %if.then
	mv x10, x9
	jal __sinit
	lw x10, 4 ( fp )
	add x11, x10, -1
	sw x11, 4 ( fp )
	blt x0, x10, .LBB0_5
.LBB0_4:                                //  %cond.true8
	mv x10, x9
	mv x11, fp
	jal __srget_r
.LBB0_6:                                //  %cond.end11
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_getc_r, .Lfunc_end0-_getc_r
	.cfi_endproc
                                        //  -- End function
	.globl	getc                    //  -- Begin function getc
	.type	getc,@function
getc:                                   //  @getc
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv fp, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	lw x9, 0 ( x10 )
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x9, .LBB1_3
.LBB1_1:                                //  %land.lhs.true
	lw x10, 56 ( x9 )
	beq x0, x10, .LBB1_2
.LBB1_3:                                //  %if.end
	lw x10, 4 ( fp )
	add x11, x10, -1
	sw x11, 4 ( fp )
	bge x0, x10, .LBB1_4
.LBB1_5:                                //  %cond.false9
	lw x10, 0 ( fp )
	add x11, x10, 1
	sw x11, 0 ( fp )
	lbu x10, 0 ( x10 )
	jal x0, .LBB1_6
.LBB1_2:                                //  %if.then
	mv x10, x9
	jal __sinit
	lw x10, 4 ( fp )
	add x11, x10, -1
	sw x11, 4 ( fp )
	blt x0, x10, .LBB1_5
.LBB1_4:                                //  %cond.true8
	mv x10, x9
	mv x11, fp
	jal __srget_r
.LBB1_6:                                //  %cond.end11
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	getc, .Lfunc_end1-getc
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
