	.text
	.file	"cacosh.c"
	.globl	cacosh                  //  -- Begin function cacosh
	.type	cacosh,@function
cacosh:                                 //  @cacosh
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -256
	.cfi_adjust_cfa_offset 256
	sw fp, 204 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv fp, x11
	sw x22, 228 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 224 ( sp )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	lw x23, 4 ( fp )
	lw x22, 0 ( fp )
	sw x9, 248 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x0
	sw x10, 40 ( sp )               //  4-byte Folded Spill
	lui x13, (1072693248>>12)&1048575
	mv x10, x22
	mv x11, x23
	mv x12, x9
	sw ra, 252 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 244 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 240 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 236 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 232 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x24, 220 ( sp )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 216 ( sp )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 212 ( sp )              //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 208 ( sp )              //  4-byte Folded Spill
	.cfi_offset 27, -48
	jal __adddf3
	lw x21, 8 ( fp )
	lw x18, 12 ( fp )
	mv x19, x10
	mv x20, x11
	mv x10, x21
	add fp, sp, 172
	mv x11, x18
	mv x12, x9
	mv x13, x9
	sw x20, 4 ( fp )
	jal __adddf3
	sw x10, 8 ( fp )
	add x12, sp, 76
	add fp, sp, 188
	sw x10, 8 ( x12 )
	sw x11, 184 ( sp )
	sw x11, 88 ( sp )
	mv x10, fp
	mv x11, x12
	sw x20, 4 ( x12 )
	sw x19, 172 ( sp )
	sw x19, 76 ( sp )
	jal csqrt
	lui x10, %hi( -1074790400 )
	add x13, x10, %lo( -1074790400 )
	mv x10, x22
	mv x11, x23
	mv x12, x9
	sw x22, 32 ( sp )               //  4-byte Folded Spill
	sw x23, 28 ( sp )               //  4-byte Folded Spill
	jal __adddf3
	add x12, sp, 140
	sw x11, 4 ( x12 )
	sw x21, 8 ( x12 )
	add x12, sp, 60
	sw x11, 4 ( x12 )
	sw x10, 140 ( sp )
	sw x10, 60 ( sp )
	sw x21, 36 ( sp )               //  4-byte Folded Spill
	sw x21, 8 ( x12 )
	sw x18, 152 ( sp )
	sw x18, 24 ( sp )               //  4-byte Folded Spill
	sw x18, 72 ( sp )
	lw x18, 8 ( fp )
	lw x23, 4 ( fp )
	add fp, sp, 156
	lw x22, 200 ( sp )
	lw x24, 188 ( sp )
	mv x10, fp
	mv x11, x12
	jal csqrt
	lw x25, 8 ( fp )
	lw x19, 168 ( sp )
	mv x10, x24
	mv x11, x23
	mv x12, x25
	mv x13, x19
	jal __muldf3
	lw x20, 4 ( fp )
	lw fp, 156 ( sp )
	mv x9, x10
	mv x21, x11
	mv x10, x18
	mv x11, x22
	mv x12, fp
	mv x13, x20
	jal __muldf3
	mv x12, x9
	mv x13, x21
	jal __adddf3
	mv x27, x10
	mv x26, x11
	mv x10, x24
	mv x11, x23
	mv x12, fp
	mv x13, x20
	jal __muldf3
	mv x9, x10
	mv x21, x11
	mv x10, x18
	mv x11, x22
	mv x12, x25
	mv x13, x19
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x21
	jal __subdf3
	mv x9, x10
	mv x21, x11
	mv x12, x9
	mv x13, x21
	jal __unorddf2
	beq x0, x10, .LBB0_3
.LBB0_1:                                //  %entry
	mv x10, x27
	mv x13, x26
	mv x11, x26
	mv x12, x27
	jal __unorddf2
	bltu x0, x10, .LBB0_2
.LBB0_3:                                //  %complex_mul_cont
	lw x10, 32 ( sp )               //  4-byte Folded Reload
	lw x11, 28 ( sp )               //  4-byte Folded Reload
	mv x12, x9
	mv x13, x21
	jal __adddf3
	mv fp, x10
	mv x9, x11
	lw x10, 36 ( sp )               //  4-byte Folded Reload
	lw x11, 24 ( sp )               //  4-byte Folded Reload
	add x19, sp, 92
	mv x12, x27
	mv x13, x26
	sw x9, 4 ( x19 )
	jal __adddf3
	add x12, sp, 44
	sw x10, 8 ( x19 )
	sw x9, 4 ( x12 )
	sw fp, 92 ( sp )
	sw fp, 44 ( sp )
	add fp, sp, 108
	sw x10, 8 ( x12 )
	sw x11, 104 ( sp )
	sw x11, 56 ( sp )
	mv x10, fp
	mv x11, x12
	jal clog
	lw x10, 120 ( sp )
	lw x11, 40 ( sp )               //  4-byte Folded Reload
	lw x27, 208 ( sp )              //  4-byte Folded Reload
	lw x26, 212 ( sp )              //  4-byte Folded Reload
	lw x25, 216 ( sp )              //  4-byte Folded Reload
	sw x10, 12 ( x11 )
	lw x10, 8 ( fp )
	lw x24, 220 ( sp )              //  4-byte Folded Reload
	lw x23, 224 ( sp )              //  4-byte Folded Reload
	lw x22, 228 ( sp )              //  4-byte Folded Reload
	sw x10, 8 ( x11 )
	lw x10, 4 ( fp )
	lw fp, 204 ( sp )               //  4-byte Folded Reload
	lw x21, 232 ( sp )              //  4-byte Folded Reload
	lw x20, 236 ( sp )              //  4-byte Folded Reload
	sw x10, 4 ( x11 )
	lw x10, 108 ( sp )
	lw x19, 240 ( sp )              //  4-byte Folded Reload
	lw x18, 244 ( sp )              //  4-byte Folded Reload
	lw x9, 248 ( sp )               //  4-byte Folded Reload
	lw ra, 252 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x11 )
	add sp, sp, 256
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_2:                                //  %complex_mul_libcall
	lw x13, 20 ( sp )               //  4-byte Folded Reload
	add x9, sp, 124
	mv x10, x9
	mv x11, x24
	mv x12, x23
	mv x14, x22
	mv x15, fp
	mv x16, x20
	mv x17, x25
	sw x19, 0 ( sp )
	jal __muldc3
	lw x26, 136 ( sp )
	lw x27, 8 ( x9 )
	lw x21, 4 ( x9 )
	lw x9, 124 ( sp )
	jal x0, .LBB0_3
.Lfunc_end0:
	.size	cacosh, .Lfunc_end0-cacosh
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
