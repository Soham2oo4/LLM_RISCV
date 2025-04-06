	.text
	.file	"rget.c"
	.globl	__srget_r               //  -- Begin function __srget_r
	.type	__srget_r,@function
__srget_r:                              //  @__srget_r
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
	mv x10, x9
	mv x11, fp
	jal __srefill_r
	beq x0, x10, .LBB0_5
.LBB0_4:
	add x10, x0, -1
	jal x0, .LBB0_6
.LBB0_2:                                //  %if.then
	mv x10, x9
	jal __sinit
	mv x10, x9
	mv x11, fp
	jal __srefill_r
	bltu x0, x10, .LBB0_4
.LBB0_5:                                //  %if.then2
	lw x10, 4 ( fp )
	add x10, x10, -1
	sw x10, 4 ( fp )
	lw x10, 0 ( fp )
	add x11, x10, 1
	sw x11, 0 ( fp )
	lbu x10, 0 ( x10 )
.LBB0_6:                                //  %return
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__srget_r, .Lfunc_end0-__srget_r
	.cfi_endproc
                                        //  -- End function
	.globl	__srget                 //  -- Begin function __srget
	.type	__srget,@function
__srget:                                //  @__srget
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
.LBB1_1:                                //  %land.lhs.true.i
	lw x10, 56 ( x9 )
	beq x0, x10, .LBB1_2
.LBB1_3:                                //  %if.end.i
	mv x10, x9
	mv x11, fp
	jal __srefill_r
	beq x0, x10, .LBB1_5
.LBB1_4:
	add x10, x0, -1
	jal x0, .LBB1_6
.LBB1_2:                                //  %if.then.i
	mv x10, x9
	jal __sinit
	mv x10, x9
	mv x11, fp
	jal __srefill_r
	bltu x0, x10, .LBB1_4
.LBB1_5:                                //  %if.then2.i
	lw x10, 4 ( fp )
	add x10, x10, -1
	sw x10, 4 ( fp )
	lw x10, 0 ( fp )
	add x11, x10, 1
	sw x11, 0 ( fp )
	lbu x10, 0 ( x10 )
.LBB1_6:                                //  %__srget_r.exit
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	__srget, .Lfunc_end1-__srget
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
