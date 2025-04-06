	.text
	.file	"mbrtowc.c"
	.globl	_mbrtowc_r              //  -- Begin function _mbrtowc_r
	.type	_mbrtowc_r,@function
_mbrtowc_r:                             //  @_mbrtowc_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lui x10, %hi( __global_locale )
	add x10, x10, %lo( __global_locale )
	lw x15, 228 ( x10 )
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv fp, x14
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	bltu x0, x12, .LBB0_2
.LBB0_1:                                //  %if.then
	lui x10, %hi( .str )
	mv x11, x0
	add x12, x10, %lo( .str )
	seqz x13, x0
.LBB0_2:                                //  %if.else
	mv x10, x9
	mv x14, fp
	call.reg x15
	xor x11, x10, -1
	bltu x0, x11, .LBB0_4
.LBB0_3:                                //  %if.then7
	add x11, x0, 138
	sw x11, 0 ( x9 )
	sw x0, 0 ( fp )
.LBB0_4:                                //  %cleanup
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_mbrtowc_r, .Lfunc_end0-_mbrtowc_r
	.cfi_endproc
                                        //  -- End function
	.globl	mbrtowc                 //  -- Begin function mbrtowc
	.type	mbrtowc,@function
mbrtowc:                                //  @mbrtowc
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv fp, x13
	mv x13, x12
	mv x12, x11
	mv x11, x10
	lui x10, %hi( __global_locale )
	add x10, x10, %lo( __global_locale )
	lw x15, 228 ( x10 )
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	lw x9, 0 ( x10 )
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	bltu x0, x12, .LBB1_2
.LBB1_1:                                //  %if.then
	lui x10, %hi( .str )
	mv x11, x0
	add x12, x10, %lo( .str )
	seqz x13, x0
.LBB1_2:                                //  %if.else
	mv x10, x9
	mv x14, fp
	call.reg x15
	xor x11, x10, -1
	bltu x0, x11, .LBB1_4
.LBB1_3:                                //  %if.then7
	add x11, x0, 138
	sw x11, 0 ( x9 )
	sw x0, 0 ( fp )
.LBB1_4:                                //  %cleanup
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	mbrtowc, .Lfunc_end1-mbrtowc
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.zero	1
	.size	.str, 1

	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
