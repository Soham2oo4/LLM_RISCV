	.text
	.file	"cacoshf.c"
	.globl	cacoshf                 //  -- Begin function cacoshf
	.type	cacoshf,@function
cacoshf:                                //  @cacoshf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -128
	.cfi_adjust_cfa_offset 128
	sw x9, 120 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	sw x18, 116 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x18, 0 ( x9 )
	sw fp, 88 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -40
	mv fp, x10
	lui x11, (1065353216>>12)&1048575
	mv x10, x18
	sw ra, 124 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 112 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 108 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 104 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 100 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 96 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 92 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	jal __addsf3
	lw x9, 4 ( x9 )
	sw x10, 72 ( sp )
	sw x10, 24 ( sp )
	mv x11, x0
	mv x10, x9
	jal __addsf3
	sw x10, 76 ( sp )
	sw x10, 28 ( sp )
	add x10, sp, 80
	add x11, sp, 24
	jal csqrtf
	lui x10, %hi( -1082130432 )
	add x11, x10, %lo( -1082130432 )
	mv x10, x18
	jal __addsf3
	sw x10, 56 ( sp )
	sw x10, 16 ( sp )
	sw x9, 60 ( sp )
	sw x9, 20 ( sp )
	lw x19, 84 ( sp )
	lw x20, 80 ( sp )
	add x10, sp, 64
	add x11, sp, 16
	jal csqrtf
	lw x21, 68 ( sp )
	mv x10, x20
	mv x11, x21
	jal __mulsf3
	lw x23, 64 ( sp )
	mv x22, x10
	mv x10, x19
	mv x11, x23
	jal __mulsf3
	mv x11, x22
	jal __addsf3
	mv x22, x10
	mv x10, x20
	mv x11, x23
	jal __mulsf3
	mv x24, x10
	mv x10, x19
	mv x11, x21
	jal __mulsf3
	mv x11, x10
	mv x10, x24
	jal __subsf3
	mv x24, x10
	mv x11, x24
	jal __unordsf2
	beq x0, x10, .LBB0_3
.LBB0_1:                                //  %entry
	mv x10, x22
	mv x11, x22
	jal __unordsf2
	bltu x0, x10, .LBB0_2
.LBB0_3:                                //  %complex_mul_cont
	mv x10, x18
	mv x11, x24
	jal __addsf3
	sw x10, 32 ( sp )
	sw x10, 8 ( sp )
	mv x10, x9
	mv x11, x22
	jal __addsf3
	sw x10, 36 ( sp )
	sw x10, 12 ( sp )
	add x10, sp, 40
	add x11, sp, 8
	jal clogf
	lw x10, 44 ( sp )
	lw x24, 92 ( sp )               //  4-byte Folded Reload
	lw x23, 96 ( sp )               //  4-byte Folded Reload
	lw x22, 100 ( sp )              //  4-byte Folded Reload
	sw x10, 4 ( fp )
	lw x10, 40 ( sp )
	lw x21, 104 ( sp )              //  4-byte Folded Reload
	lw x20, 108 ( sp )              //  4-byte Folded Reload
	lw x19, 112 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( fp )
	lw fp, 88 ( sp )                //  4-byte Folded Reload
	lw x18, 116 ( sp )              //  4-byte Folded Reload
	lw x9, 120 ( sp )               //  4-byte Folded Reload
	lw ra, 124 ( sp )               //  4-byte Folded Reload
	add sp, sp, 128
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_2:                                //  %complex_mul_libcall
	add x10, sp, 48
	mv x11, x20
	mv x12, x19
	mv x13, x23
	mv x14, x21
	jal __mulsc3
	lw x22, 52 ( sp )
	lw x24, 48 ( sp )
	jal x0, .LBB0_3
.Lfunc_end0:
	.size	cacoshf, .Lfunc_end0-cacoshf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
