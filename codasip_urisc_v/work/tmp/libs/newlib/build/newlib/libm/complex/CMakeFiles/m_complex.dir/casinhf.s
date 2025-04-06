	.text
	.file	"casinhf.c"
	.globl	casinhf                 //  -- Begin function casinhf
	.type	casinhf,@function
casinhf:                                //  @casinhf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -80
	.cfi_adjust_cfa_offset 80
	sw x18, 68 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x11
	sw x9, 72 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	lw x9, 4 ( x18 )
	sw x20, 60 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	mv x20, x0
	sw fp, 52 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -28
	mv fp, x10
	mv x10, x9
	mv x11, x20
	sw ra, 76 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 64 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21, 56 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	jal __mulsf3
	lw x19, 0 ( x18 )
	mv x11, x10
	mv x10, x19
	jal __addsf3
	mv x18, x10
	mv x10, x19
	mv x11, x20
	jal __mulsf3
	mv x11, x9
	jal __subsf3
	mv x20, x10
	mv x11, x20
	jal __unordsf2
	beq x0, x10, .LBB0_3
.LBB0_1:                                //  %entry
	mv x10, x18
	mv x11, x18
	jal __unordsf2
	bltu x0, x10, .LBB0_2
.LBB0_3:                                //  %complex_mul_cont
	add x10, sp, 36
	add x11, sp, 12
	sw x20, 28 ( sp )
	sw x20, 12 ( sp )
	sw x18, 32 ( sp )
	sw x18, 16 ( sp )
	jal casinf
	lw x9, 40 ( sp )
	lui x10, %hi( -2147483648 )
	add x18, x10, %lo( -2147483648 )
	mv x11, x18
	mv x10, x9
	jal __mulsf3
	lw x19, 36 ( sp )
	mv x11, x19
	jal __subsf3
	mv x20, x10
	mv x10, x19
	mv x11, x18
	jal __mulsf3
	mv x11, x10
	mv x10, x9
	jal __addsf3
	mv x21, x10
	mv x11, x21
	jal __unordsf2
	beq x0, x10, .LBB0_6
.LBB0_4:                                //  %complex_mul_cont
	mv x10, x20
	mv x11, x20
	jal __unordsf2
	bltu x0, x10, .LBB0_5
.LBB0_6:                                //  %complex_mul_cont14
	sw x20, 4 ( fp )
	sw x21, 0 ( fp )
	lw fp, 52 ( sp )                //  4-byte Folded Reload
	lw x21, 56 ( sp )               //  4-byte Folded Reload
	lw x20, 60 ( sp )               //  4-byte Folded Reload
	lw x19, 64 ( sp )               //  4-byte Folded Reload
	lw x18, 68 ( sp )               //  4-byte Folded Reload
	lw x9, 72 ( sp )                //  4-byte Folded Reload
	lw ra, 76 ( sp )                //  4-byte Folded Reload
	add sp, sp, 80
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_2:                                //  %complex_mul_libcall
	add x10, sp, 44
	mv x13, x0
	lui x14, (1065353216>>12)&1048575
	mv x11, x19
	mv x12, x9
	jal __mulsc3
	lw x18, 48 ( sp )
	lw x20, 44 ( sp )
	jal x0, .LBB0_3
.LBB0_5:                                //  %complex_mul_libcall12
	lui x11, %hi( -1082130432 )
	add x12, x11, %lo( -1082130432 )
	add x10, sp, 20
	mv x11, x18
	mv x13, x19
	mv x14, x9
	jal __mulsc3
	lw x20, 24 ( sp )
	lw x21, 20 ( sp )
	jal x0, .LBB0_6
.Lfunc_end0:
	.size	casinhf, .Lfunc_end0-casinhf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
