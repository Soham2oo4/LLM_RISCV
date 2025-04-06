	.text
	.file	"s_fdim.c"
	.globl	fdim                    //  -- Begin function fdim
	.type	fdim,@function
fdim:                                   //  @fdim
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -24
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	mv x18, x13
	mv x19, x12
	mv x9, x11
	mv fp, x10
	jal __fpclassifyd
	beq x0, x10, .LBB0_5
.LBB0_1:                                //  %if.end
	mv x10, x19
	mv x11, x18
	jal __fpclassifyd
	beq x0, x10, .LBB0_2
.LBB0_3:                                //  %if.end4
	mv x10, fp
	mv x11, x9
	mv x12, x19
	mv x13, x18
	jal __gtdf2
	mv x20, x10
	mv x10, fp
	mv x11, x9
	mv x12, x19
	mv x13, x18
	jal __subdf3
	mv fp, x10
	mv x9, x11
	mv x10, x0
	blt x10, x20, .LBB0_5
.LBB0_4:                                //  %if.end4
	mv fp, x10
	mv x9, x10
	jal x0, .LBB0_5
.LBB0_2:
	mv fp, x19
	mv x9, x18
.LBB0_5:                                //  %return
	mv x10, fp
	mv x11, x9
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	fdim, .Lfunc_end0-fdim
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
