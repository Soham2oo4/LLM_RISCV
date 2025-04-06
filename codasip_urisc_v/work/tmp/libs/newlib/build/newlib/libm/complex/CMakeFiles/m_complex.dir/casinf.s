	.text
	.file	"casinf.c"
	.globl	casinf                  //  -- Begin function casinf
	.type	casinf,@function
casinf:                                 //  @casinf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -176
	.cfi_adjust_cfa_offset 176
	sw x9, 168 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 164 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x9, 4 ( x11 )
	lw x18, 0 ( x11 )
	sw fp, 144 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -32
	mv fp, x10
	add x10, sp, 56
	sw ra, 172 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 160 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 156 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 152 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 148 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x9, 140 ( sp )
	sw x18, 136 ( sp )
	sw x18, 56 ( sp )
	sw x9, 60 ( sp )
	jal crealf
	mv x19, x10
	add x10, sp, 48
	sw x18, 128 ( sp )
	sw x18, 48 ( sp )
	sw x9, 132 ( sp )
	sw x9, 52 ( sp )
	jal cimagf
	mv x18, x0
	mv x11, x18
	mv x20, x10
	jal __mulsf3
	mv x9, x10
	mv x10, x19
	mv x11, x9
	jal __addsf3
	mv x21, x10
	mv x10, x9
	mv x11, x21
	jal __addsf3
	mv x9, x10
	mv x11, x9
	jal __unordsf2
	mv x22, x10
	mv x10, x21
	mv x11, x18
	jal __mulsf3
	mv x11, x20
	jal __subsf3
	mv x18, x10
	beq x0, x22, .LBB0_3
.LBB0_1:                                //  %entry
	mv x10, x18
	mv x11, x18
	jal __unordsf2
	bltu x0, x10, .LBB0_2
.LBB0_3:                                //  %complex_mul_cont
	mv x10, x19
	mv x11, x20
	jal __subsf3
	mv x21, x10
	mv x10, x19
	mv x11, x20
	jal __addsf3
	mv x11, x10
	mv x10, x21
	jal __mulsf3
	mv x21, x10
	mv x10, x19
	mv x11, x19
	jal __addsf3
	mv x11, x20
	jal __mulsf3
	mv x19, x0
	mv x11, x19
	mv x20, x10
	jal __mulsf3
	mv x11, x10
	mv x10, x21
	jal __addsf3
	mv x21, x10
	add x10, sp, 40
	sw x21, 112 ( sp )
	sw x20, 116 ( sp )
	sw x21, 40 ( sp )
	sw x20, 44 ( sp )
	jal crealf
	mv x11, x10
	lui x10, (1065353216>>12)&1048575
	sw x21, 104 ( sp )
	sw x21, 32 ( sp )
	sw x20, 108 ( sp )
	sw x20, 36 ( sp )
	jal __subsf3
	mv x20, x10
	add x10, sp, 32
	jal cimagf
	mv x11, x19
	mv x21, x10
	jal __mulsf3
	mv x11, x10
	mv x10, x20
	jal __subsf3
	sw x10, 88 ( sp )
	sw x10, 24 ( sp )
	lui x10, %hi( -2147483648 )
	add x20, x10, %lo( -2147483648 )
	xor x10, x20, x21
	sw x10, 92 ( sp )
	sw x10, 28 ( sp )
	add x10, sp, 96
	add x11, sp, 24
	jal csqrtf
	lw x11, 96 ( sp )
	mv x10, x18
	jal __addsf3
	sw x10, 72 ( sp )
	sw x10, 16 ( sp )
	lw x11, 100 ( sp )
	mv x10, x9
	jal __addsf3
	sw x10, 76 ( sp )
	sw x10, 20 ( sp )
	add x10, sp, 80
	add x11, sp, 16
	jal clogf
	lw x9, 84 ( sp )
	mv x11, x20
	mv x10, x9
	jal __mulsf3
	lw x18, 80 ( sp )
	mv x11, x18
	jal __subsf3
	mv x21, x10
	mv x10, x18
	mv x11, x19
	jal __mulsf3
	mv x11, x10
	mv x10, x9
	jal __subsf3
	mv x19, x10
	mv x11, x19
	jal __unordsf2
	beq x0, x10, .LBB0_6
.LBB0_4:                                //  %complex_mul_cont
	mv x10, x21
	mv x11, x21
	jal __unordsf2
	bltu x0, x10, .LBB0_5
.LBB0_6:                                //  %complex_mul_cont66
	sw x21, 4 ( fp )
	sw x19, 0 ( fp )
	lw fp, 144 ( sp )               //  4-byte Folded Reload
	lw x22, 148 ( sp )              //  4-byte Folded Reload
	lw x21, 152 ( sp )              //  4-byte Folded Reload
	lw x20, 156 ( sp )              //  4-byte Folded Reload
	lw x19, 160 ( sp )              //  4-byte Folded Reload
	lw x18, 164 ( sp )              //  4-byte Folded Reload
	lw x9, 168 ( sp )               //  4-byte Folded Reload
	lw ra, 172 ( sp )               //  4-byte Folded Reload
	add sp, sp, 176
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_2:                                //  %complex_mul_libcall
	add x10, sp, 120
	mv x13, x0
	lui x14, (1065353216>>12)&1048575
	mv x11, x21
	mv x12, x20
	jal __mulsc3
	lw x9, 124 ( sp )
	lw x18, 120 ( sp )
	jal x0, .LBB0_3
.LBB0_5:                                //  %complex_mul_libcall64
	lui x11, %hi( -1082130432 )
	add x14, x11, %lo( -1082130432 )
	add x10, sp, 64
	mv x11, x18
	mv x12, x9
	mv x13, x20
	jal __mulsc3
	lw x21, 68 ( sp )
	lw x19, 64 ( sp )
	jal x0, .LBB0_6
.Lfunc_end0:
	.size	casinf, .Lfunc_end0-casinf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
