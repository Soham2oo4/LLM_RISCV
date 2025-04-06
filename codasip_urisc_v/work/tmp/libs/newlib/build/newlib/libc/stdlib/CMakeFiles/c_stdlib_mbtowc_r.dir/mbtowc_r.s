	.text
	.file	"mbtowc_r.c"
	.globl	_mbtowc_r               //  -- Begin function _mbtowc_r
	.type	_mbtowc_r,@function
_mbtowc_r:                              //  @_mbtowc_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	lui x15, %hi( __global_locale )
	add x15, x15, %lo( __global_locale )
	lw x15, 228 ( x15 )
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	call.reg x15
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_mbtowc_r, .Lfunc_end0-_mbtowc_r
	.cfi_endproc
                                        //  -- End function
	.globl	__ascii_mbtowc          //  -- Begin function __ascii_mbtowc
	.type	__ascii_mbtowc,@function
__ascii_mbtowc:                         //  @__ascii_mbtowc
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	mv x10, x0
	bne x11, x10, .LBB1_2
.LBB1_1:
	add x11, sp, 12
.LBB1_2:                                //  %entry
	beq x0, x12, .LBB1_6
.LBB1_3:                                //  %if.end3
	beq x0, x13, .LBB1_4
.LBB1_5:                                //  %if.end6
	lbu x10, 0 ( x12 )
	sw x10, 0 ( x11 )
	lbu x10, 0 ( x12 )
	snez x10, x10
.LBB1_6:                                //  %cleanup
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB1_4:
	add x10, x0, -2
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	__ascii_mbtowc, .Lfunc_end1-__ascii_mbtowc
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
