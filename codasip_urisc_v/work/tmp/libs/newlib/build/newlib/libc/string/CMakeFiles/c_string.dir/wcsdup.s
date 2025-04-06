	.text
	.file	"wcsdup.c"
	.globl	_wcsdup_r               //  -- Begin function _wcsdup_r
	.type	_wcsdup_r,@function
_wcsdup_r:                              //  @_wcsdup_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv fp, x11
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x10
	mv x10, fp
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	jal wcslen
	add x9, x10, 1
	sll x11, x9, 2&31
	mv x10, x18
	jal _malloc_r
	mv x18, x10
	beq x0, x18, .LBB0_2
.LBB0_1:                                //  %if.then
	mv x10, x18
	mv x11, fp
	mv x12, x9
	jal wmemcpy
.LBB0_2:                                //  %if.end
	mv x10, x18
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_wcsdup_r, .Lfunc_end0-_wcsdup_r
	.cfi_endproc
                                        //  -- End function
	.globl	wcsdup                  //  -- Begin function wcsdup
	.type	wcsdup,@function
wcsdup:                                 //  @wcsdup
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv fp, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x18, 0 ( x10 )
	mv x10, fp
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	jal wcslen
	add x9, x10, 1
	sll x11, x9, 2&31
	mv x10, x18
	jal _malloc_r
	mv x18, x10
	beq x0, x18, .LBB1_2
.LBB1_1:                                //  %if.then.i
	mv x10, x18
	mv x11, fp
	mv x12, x9
	jal wmemcpy
.LBB1_2:                                //  %_wcsdup_r.exit
	mv x10, x18
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	wcsdup, .Lfunc_end1-wcsdup
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
