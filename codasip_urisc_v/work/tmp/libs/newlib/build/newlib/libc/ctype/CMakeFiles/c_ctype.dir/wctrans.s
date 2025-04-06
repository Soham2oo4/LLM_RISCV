	.text
	.file	"wctrans.c"
	.globl	_wctrans_r              //  -- Begin function _wctrans_r
	.type	_wctrans_r,@function
_wctrans_r:                             //  @_wctrans_r
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
	mv fp, x10
	mv x9, x11
	lui x10, %hi( .str )
	add x11, x10, %lo( .str )
	mv x10, x9
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal strcmp
	beq x0, x10, .LBB0_1
.LBB0_2:                                //  %if.else
	lui x10, %hi( .str.1 )
	add x11, x10, %lo( .str.1 )
	mv x10, x9
	jal strcmp
	beq x0, x10, .LBB0_3
.LBB0_4:                                //  %if.else4
	add x10, x0, 22
	sw x10, 0 ( fp )
	mv x10, x0
	jal x0, .LBB0_5
.LBB0_1:
	seqz x10, x0
	jal x0, .LBB0_5
.LBB0_3:
	add x10, x0, 2
.LBB0_5:                                //  %return
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_wctrans_r, .Lfunc_end0-_wctrans_r
	.cfi_endproc
                                        //  -- End function
	.globl	wctrans                 //  -- Begin function wctrans
	.type	wctrans,@function
wctrans:                                //  @wctrans
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
	lui x10, %hi( .str )
	add x11, x10, %lo( .str )
	mv x10, fp
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal strcmp
	beq x0, x10, .LBB1_1
.LBB1_2:                                //  %if.else.i
	lui x10, %hi( .str.1 )
	add x11, x10, %lo( .str.1 )
	mv x10, fp
	jal strcmp
	beq x0, x10, .LBB1_3
.LBB1_4:                                //  %if.else4.i
	add x10, x0, 22
	sw x10, 0 ( x9 )
	mv x10, x0
	jal x0, .LBB1_5
.LBB1_1:
	seqz x10, x0
	jal x0, .LBB1_5
.LBB1_3:
	add x10, x0, 2
.LBB1_5:                                //  %_wctrans_r.exit
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	wctrans, .Lfunc_end1-wctrans
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"tolower"
	.size	.str, 8

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"toupper"
	.size	.str.1, 8

	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
