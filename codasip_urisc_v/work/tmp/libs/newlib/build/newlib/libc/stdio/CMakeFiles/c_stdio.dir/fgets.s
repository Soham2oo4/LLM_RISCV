	.text
	.file	"fgets.c"
	.globl	_fgets_r                //  -- Begin function _fgets_r
	.type	_fgets_r,@function
_fgets_r:                               //  @_fgets_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv x19, x12
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -40
	mv x20, x10
	mv x18, x13
	mv fp, x11
	mv x9, x0
	slti x10, x19, 2
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	bltu x0, x10, .LBB0_16
.LBB0_1:                                //  %if.end
	beq x0, x20, .LBB0_4
.LBB0_2:                                //  %land.lhs.true
	lw x10, 56 ( x20 )
	bltu x0, x10, .LBB0_4
.LBB0_3:                                //  %if.then2
	mv x10, x20
	jal __sinit
.LBB0_4:                                //  %if.end3
	add x24, x19, -1
	add x21, x0, 10
	mv x19, fp
.LBB0_5:                                //  %do.body9
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 4 ( x18 )
	beq x0, x10, .LBB0_6
.LBB0_9:                                //  %if.end33
                                        //    in Loop: Header=BB0_5 Depth=1
	mv x22, x24
	bltu x24, x10, .LBB0_11
.LBB0_10:                               //  %if.end33
                                        //    in Loop: Header=BB0_5 Depth=1
	mv x22, x10
.LBB0_11:                               //  %if.end33
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x23, 0 ( x18 )
	mv x11, x21
	mv x12, x22
	mv x10, x23
	jal memchr
	bltu x0, x10, .LBB0_12
.LBB0_13:                               //  %if.end57
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 4 ( x18 )
	mv x11, x23
	mv x12, x22
	sub x10, x10, x22
	sw x10, 4 ( x18 )
	lw x10, 0 ( x18 )
	add x10, x22, x10
	sw x10, 0 ( x18 )
	mv x10, x19
	jal memcpy
	add x19, x22, x19
	sub x24, x24, x22
	bltu x0, x24, .LBB0_5
	jal x0, .LBB0_14
.LBB0_6:                                //  %if.then12
                                        //    in Loop: Header=BB0_5 Depth=1
	mv x10, x20
	mv x11, x18
	jal __srefill_r
	bltu x0, x10, .LBB0_7
.LBB0_8:                                //  %if.end31
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 4 ( x18 )
	mv x22, x24
	bgeu x24, x10, .LBB0_10
	jal x0, .LBB0_11
.LBB0_12:                               //  %if.then41
	add x10, x10, 1
	sub x9, x10, x23
	sw x10, 0 ( x18 )
	lw x10, 4 ( x18 )
	mv x11, x23
	mv x12, x9
	sub x10, x10, x9
	sw x10, 4 ( x18 )
	mv x10, x19
	jal memcpy
	add x10, x9, x19
	sb x0, 0 ( x10 )
	jal x0, .LBB0_15
.LBB0_7:                                //  %if.then14
	beq x19, fp, .LBB0_16
.LBB0_14:                               //  %do.end67
	sb x0, 0 ( x19 )
.LBB0_15:                               //  %cleanup
	mv x9, fp
.LBB0_16:                               //  %cleanup
	mv x10, x9
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw x24, 12 ( sp )               //  4-byte Folded Reload
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
.Lfunc_end0:
	.size	_fgets_r, .Lfunc_end0-_fgets_r
	.cfi_endproc
                                        //  -- End function
	.globl	fgets                   //  -- Begin function fgets
	.type	fgets,@function
fgets:                                  //  @fgets
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
	j _fgets_r
.Lfunc_end1:
	.size	fgets, .Lfunc_end1-fgets
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
