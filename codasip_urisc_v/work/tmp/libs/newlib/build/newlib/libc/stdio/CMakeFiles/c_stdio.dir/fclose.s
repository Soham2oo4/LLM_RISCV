	.text
	.file	"fclose.c"
	.globl	_fclose_r               //  -- Begin function _fclose_r
	.type	_fclose_r,@function
_fclose_r:                              //  @_fclose_r
	.cfi_sections .debug_frame
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
	mv x9, x11
	mv x18, x10
	mv fp, x0
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x9, .LBB0_17
.LBB0_1:                                //  %do.body
	beq x0, x18, .LBB0_4
.LBB0_2:                                //  %land.lhs.true
	lw x10, 56 ( x18 )
	bltu x0, x10, .LBB0_4
.LBB0_3:                                //  %if.then2
	mv x10, x18
	jal __sinit
.LBB0_4:                                //  %if.end3
	lhu x10, 12 ( x9 )
	beq x0, x10, .LBB0_17
.LBB0_5:                                //  %if.end26
	mv x10, x18
	mv x11, x9
	jal __sflush_r
	lw x12, 44 ( x9 )
	mv fp, x10
	beq x0, x12, .LBB0_8
.LBB0_6:                                //  %land.lhs.true29
	lw x11, 28 ( x9 )
	mv x10, x18
	call.reg x12
	mv x11, x0
	bge x10, x11, .LBB0_8
.LBB0_7:
	add fp, x0, -1
.LBB0_8:                                //  %if.end35
	lbu x10, 12 ( x9 )
	and x10, x10, 128
	beq x0, x10, .LBB0_10
.LBB0_9:                                //  %if.then40
	lw x11, 16 ( x9 )
	mv x10, x18
	jal _free_r
.LBB0_10:                               //  %if.end41
	lw x11, 48 ( x9 )
	beq x0, x11, .LBB0_14
.LBB0_11:                               //  %if.then45
	add x10, x9, 64
	beq x11, x10, .LBB0_13
.LBB0_12:                               //  %if.then50
	mv x10, x18
	jal _free_r
.LBB0_13:                               //  %if.end53
	sw x0, 48 ( x9 )
.LBB0_14:                               //  %if.end56
	lw x11, 68 ( x9 )
	beq x0, x11, .LBB0_16
.LBB0_15:                               //  %if.then60
	mv x10, x18
	jal _free_r
	sw x0, 68 ( x9 )
.LBB0_16:                               //  %if.end65
	jal __sfp_lock_acquire
	sh x0, 12 ( x9 )
	jal __sfp_lock_release
.LBB0_17:                               //  %cleanup
	mv x10, fp
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_fclose_r, .Lfunc_end0-_fclose_r
	.cfi_endproc
                                        //  -- End function
	.globl	fclose                  //  -- Begin function fclose
	.type	fclose,@function
fclose:                                 //  @fclose
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	j _fclose_r
.Lfunc_end1:
	.size	fclose, .Lfunc_end1-fclose
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
