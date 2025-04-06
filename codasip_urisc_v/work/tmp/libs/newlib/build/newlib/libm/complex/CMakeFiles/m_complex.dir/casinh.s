	.text
	.file	"casinh.c"
	.globl	casinh                  //  -- Begin function casinh
	.type	casinh,@function
casinh:                                 //  @casinh
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -144
	.cfi_adjust_cfa_offset 144
	sw x9, 136 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	sw x18, 132 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 128 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	lw x19, 12 ( x9 )
	lw x18, 8 ( x9 )
	sw x23, 112 ( sp )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	mv x23, x0
	sw fp, 100 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -44
	mv fp, x10
	mv x10, x18
	mv x11, x19
	mv x12, x23
	mv x13, x23
	sw ra, 140 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20, 124 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 120 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 116 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x24, 108 ( sp )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 104 ( sp )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	jal __muldf3
	lw x21, 0 ( x9 )
	lw x22, 4 ( x9 )
	mv x12, x10
	mv x13, x11
	mv x10, x21
	mv x11, x22
	jal __adddf3
	mv x20, x10
	mv x9, x11
	mv x10, x21
	mv x11, x22
	mv x12, x23
	mv x13, x23
	jal __muldf3
	mv x12, x18
	mv x13, x19
	jal __subdf3
	mv x23, x10
	mv x24, x11
	mv x12, x23
	mv x13, x24
	jal __unorddf2
	beq x0, x10, .LBB0_3
.LBB0_1:                                //  %entry
	mv x10, x20
	mv x13, x9
	mv x11, x9
	mv x12, x20
	jal __unorddf2
	bltu x0, x10, .LBB0_2
.LBB0_3:                                //  %complex_mul_cont
	add x10, sp, 52
	add x11, sp, 20
	sw x20, 8 ( x10 )
	sw x20, 8 ( x11 )
	add x20, sp, 68
	sw x24, 4 ( x10 )
	mv x10, x20
	sw x24, 4 ( x11 )
	sw x23, 52 ( sp )
	sw x23, 20 ( sp )
	sw x9, 64 ( sp )
	sw x9, 32 ( sp )
	jal casin
	lw x19, 80 ( sp )
	lw x9, 8 ( x20 )
	lui x10, %hi( -2147483648 )
	add x18, x10, %lo( -2147483648 )
	mv x24, x0
	mv x10, x9
	mv x11, x19
	mv x12, x24
	mv x13, x18
	jal __muldf3
	lw x20, 4 ( x20 )
	lw x22, 68 ( sp )
	mv x13, x20
	mv x12, x22
	jal __subdf3
	mv x23, x10
	mv x21, x11
	mv x10, x22
	mv x11, x20
	mv x12, x24
	mv x13, x18
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x19
	jal __adddf3
	mv x25, x10
	mv x24, x11
	mv x12, x25
	mv x13, x24
	jal __unorddf2
	beq x0, x10, .LBB0_6
.LBB0_4:                                //  %complex_mul_cont
	mv x10, x23
	mv x13, x21
	mv x11, x21
	mv x12, x23
	jal __unorddf2
	bltu x0, x10, .LBB0_5
.LBB0_6:                                //  %complex_mul_cont14
	sw x23, 8 ( fp )
	sw x25, 0 ( fp )
	sw x21, 12 ( fp )
	sw x24, 4 ( fp )
	lw fp, 100 ( sp )               //  4-byte Folded Reload
	lw x25, 104 ( sp )              //  4-byte Folded Reload
	lw x24, 108 ( sp )              //  4-byte Folded Reload
	lw x23, 112 ( sp )              //  4-byte Folded Reload
	lw x22, 116 ( sp )              //  4-byte Folded Reload
	lw x21, 120 ( sp )              //  4-byte Folded Reload
	lw x20, 124 ( sp )              //  4-byte Folded Reload
	lw x19, 128 ( sp )              //  4-byte Folded Reload
	lw x18, 132 ( sp )              //  4-byte Folded Reload
	lw x9, 136 ( sp )               //  4-byte Folded Reload
	lw ra, 140 ( sp )               //  4-byte Folded Reload
	add sp, sp, 144
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_2:                                //  %complex_mul_libcall
	mv x15, x0
	lui x10, (1072693248>>12)&1048575
	add x23, sp, 84
	sw x10, 0 ( sp )
	mv x16, x15
	mv x10, x23
	mv x11, x21
	mv x12, x22
	mv x13, x18
	mv x14, x19
	mv x17, x15
	jal __muldc3
	lw x9, 96 ( sp )
	lw x20, 8 ( x23 )
	lw x24, 4 ( x23 )
	lw x23, 84 ( sp )
	jal x0, .LBB0_3
.LBB0_5:                                //  %complex_mul_libcall12
	sw x19, 0 ( sp )
	mv x11, x0
	lui x10, %hi( -1074790400 )
	add x19, sp, 36
	add x14, x10, %lo( -1074790400 )
	mv x10, x19
	mv x12, x18
	mv x13, x11
	mv x15, x22
	mv x16, x20
	mv x17, x9
	jal __muldc3
	lw x21, 48 ( sp )
	lw x23, 8 ( x19 )
	lw x24, 4 ( x19 )
	lw x25, 36 ( sp )
	jal x0, .LBB0_6
.Lfunc_end0:
	.size	casinh, .Lfunc_end0-casinh
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
