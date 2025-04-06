	.text
	.file	"fputc.c"
	.globl	_fputc_r                //  -- Begin function _fputc_r
	.type	_fputc_r,@function
_fputc_r:                               //  @_fputc_r
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
	mv fp, x12
	mv x9, x11
	mv x18, x10
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x18, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x10, 56 ( x18 )
	bltu x0, x10, .LBB0_3
.LBB0_2:                                //  %if.then
	mv x10, x18
	jal __sinit
.LBB0_3:                                //  %if.end
	mv x10, x18
	mv x11, x9
	mv x12, fp
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	j _putc_r
.Lfunc_end0:
	.size	_fputc_r, .Lfunc_end0-_fputc_r
	.cfi_endproc
                                        //  -- End function
	.globl	fputc                   //  -- Begin function fputc
	.type	fputc,@function
fputc:                                  //  @fputc
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x18, 0 ( x10 )
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv fp, x11
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x18, .LBB1_3
.LBB1_1:                                //  %land.lhs.true
	lw x10, 56 ( x18 )
	bltu x0, x10, .LBB1_3
.LBB1_2:                                //  %if.then
	mv x10, x18
	jal __sinit
.LBB1_3:                                //  %if.end
	mv x10, x18
	mv x11, x9
	mv x12, fp
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	j _putc_r
.Lfunc_end1:
	.size	fputc, .Lfunc_end1-fputc
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
