	.text
	.file	"fputs.c"
	.globl	_fputs_r                //  -- Begin function _fputs_r
	.type	_fputs_r,@function
_fputs_r:                               //  @_fputs_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	mv x10, x11
	sw fp, 36 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -12
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	mv fp, x12
	sw x11, 16 ( sp )
	jal strlen
	add x11, sp, 24
	sw x10, 8 ( x11 )
	sw x10, 20 ( sp )
	seqz x10, x0
	sw x10, 28 ( sp )
	add x10, sp, 16
	sw x10, 24 ( sp )
	beq x0, x9, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x10, 56 ( x9 )
	beq x0, x10, .LBB0_2
.LBB0_3:                                //  %if.end
	lhu x10, 12 ( fp )
	lui x11, (8192>>12)&1048575
	and x12, x11, x10
	bltu x0, x12, .LBB0_5
.LBB0_4:                                //  %if.then12
	or x10, x11, x10
	sh x10, 12 ( fp )
	lw x10, 100 ( fp )
	lui x11, %hi( -8193 )
	add x11, x11, %lo( -8193 )
	and x10, x11, x10
	sw x10, 100 ( fp )
.LBB0_5:                                //  %do.end20
	add x12, sp, 24
	mv x10, x9
	mv x11, fp
	jal __sfvwrite_r
	lw fp, 36 ( sp )                //  4-byte Folded Reload
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	lw ra, 44 ( sp )                //  4-byte Folded Reload
	add sp, sp, 48
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_2:                                //  %if.then
	mv x10, x9
	jal __sinit
	lhu x10, 12 ( fp )
	lui x11, (8192>>12)&1048575
	and x12, x11, x10
	beq x0, x12, .LBB0_4
	jal x0, .LBB0_5
.Lfunc_end0:
	.size	_fputs_r, .Lfunc_end0-_fputs_r
	.cfi_endproc
                                        //  -- End function
	.globl	fputs                   //  -- Begin function fputs
	.type	fputs,@function
fputs:                                  //  @fputs
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw fp, 36 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv fp, x11
	lui x11, %hi( _impure_ptr )
	add x11, x11, %lo( _impure_ptr )
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	lw x9, 0 ( x11 )
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x10, 16 ( sp )
	jal strlen
	add x11, sp, 24
	sw x10, 8 ( x11 )
	sw x10, 20 ( sp )
	seqz x10, x0
	sw x10, 28 ( sp )
	add x10, sp, 16
	sw x10, 24 ( sp )
	beq x0, x9, .LBB1_3
.LBB1_1:                                //  %land.lhs.true.i
	lw x10, 56 ( x9 )
	beq x0, x10, .LBB1_2
.LBB1_3:                                //  %if.end.i
	lhu x10, 12 ( fp )
	lui x11, (8192>>12)&1048575
	and x12, x11, x10
	bltu x0, x12, .LBB1_5
.LBB1_4:                                //  %if.then12.i
	or x10, x11, x10
	sh x10, 12 ( fp )
	lw x10, 100 ( fp )
	lui x11, %hi( -8193 )
	add x11, x11, %lo( -8193 )
	and x10, x11, x10
	sw x10, 100 ( fp )
.LBB1_5:                                //  %_fputs_r.exit
	add x12, sp, 24
	mv x10, x9
	mv x11, fp
	jal __sfvwrite_r
	lw fp, 36 ( sp )                //  4-byte Folded Reload
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	lw ra, 44 ( sp )                //  4-byte Folded Reload
	add sp, sp, 48
	.cfi_def_cfa 2, 0
	jr ra
.LBB1_2:                                //  %if.then.i
	mv x10, x9
	jal __sinit
	lhu x10, 12 ( fp )
	lui x11, (8192>>12)&1048575
	and x12, x11, x10
	beq x0, x12, .LBB1_4
	jal x0, .LBB1_5
.Lfunc_end1:
	.size	fputs, .Lfunc_end1-fputs
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
