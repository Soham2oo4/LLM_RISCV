	.text
	.file	"wctomb_r.c"
	.globl	_wctomb_r               //  -- Begin function _wctomb_r
	.type	_wctomb_r,@function
_wctomb_r:                              //  @_wctomb_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	lui x14, %hi( __global_locale )
	add x14, x14, %lo( __global_locale )
	lw x14, 224 ( x14 )
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	call.reg x14
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_wctomb_r, .Lfunc_end0-_wctomb_r
	.cfi_endproc
                                        //  -- End function
	.globl	__ascii_wctomb          //  -- Begin function __ascii_wctomb
	.type	__ascii_wctomb,@function
__ascii_wctomb:                         //  @__ascii_wctomb
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	beq x0, x11, .LBB1_1
.LBB1_2:                                //  %if.end
	sltiu x13, x12, 256
	bltu x0, x13, .LBB1_4
.LBB1_3:                                //  %if.then2
	add x11, x0, 138
	sw x11, 0 ( x10 )
	add x10, x0, -1
	jr ra
.LBB1_1:
	mv x10, x0
	jr ra
.LBB1_4:                                //  %if.end3
	seqz x10, x0
	sb x12, 0 ( x11 )
	jr ra
.Lfunc_end1:
	.size	__ascii_wctomb, .Lfunc_end1-__ascii_wctomb
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
