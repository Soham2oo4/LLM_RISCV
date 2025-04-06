	.text
	.file	"putenv_r.c"
	.globl	_putenv_r               //  -- Begin function _putenv_r
	.type	_putenv_r,@function
_putenv_r:                              //  @_putenv_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv fp, x10
	jal _strdup_r
	mv x9, x10
	beq x0, x9, .LBB0_1
.LBB0_2:                                //  %if.end
	add x11, x0, 61
	mv x10, x9
	jal strchr
	beq x0, x10, .LBB0_3
.LBB0_4:                                //  %if.end4
	sb x0, 0 ( x10 )
	add x12, x10, 1
	seqz x13, x0
	mv x10, fp
	mv x11, x9
	jal _setenv_r
	mv x18, x10
	jal x0, .LBB0_5
.LBB0_1:
	seqz x18, x0
	jal x0, .LBB0_6
.LBB0_3:
	seqz x18, x0
.LBB0_5:                                //  %cleanup.sink.split
	mv x10, fp
	mv x11, x9
	jal _free_r
.LBB0_6:                                //  %cleanup
	mv x10, x18
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_putenv_r, .Lfunc_end0-_putenv_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
