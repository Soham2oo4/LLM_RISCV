	.text
	.file	"casin.c"
	.globl	casin                   //  -- Begin function casin
	.type	casin,@function
casin:                                  //  @casin
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -336
	.cfi_adjust_cfa_offset 336
	sw x9, 328 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 324 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x9, 4 ( x11 )
	lw x18, 8 ( x11 )
	sw x19, 320 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 316 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	lw x19, 12 ( x11 )
	lw x20, 0 ( x11 )
	sw fp, 284 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv fp, x10
	add x10, sp, 268
	sw x9, 4 ( x10 )
	sw x18, 8 ( x10 )
	add x10, sp, 108
	sw ra, 332 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x21, 312 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 308 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 304 ( sp )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 300 ( sp )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 296 ( sp )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 292 ( sp )              //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 288 ( sp )              //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x18, 8 ( x10 )
	sw x9, 4 ( x10 )
	sw x20, 268 ( sp )
	sw x19, 280 ( sp )
	sw x19, 120 ( sp )
	sw x20, 108 ( sp )
	jal creal
	mv x21, x10
	add x10, sp, 252
	sw x9, 4 ( x10 )
	sw x18, 8 ( x10 )
	add x10, sp, 92
	mv x22, x11
	sw x9, 4 ( x10 )
	sw x18, 8 ( x10 )
	sw x20, 252 ( sp )
	sw x20, 92 ( sp )
	sw x19, 264 ( sp )
	sw x19, 104 ( sp )
	jal cimag
	mv x19, x0
	mv x12, x19
	mv x13, x19
	mv x23, x10
	mv x24, x11
	jal __muldf3
	mv x9, x10
	mv x18, x11
	mv x10, x21
	mv x11, x22
	mv x12, x9
	mv x13, x18
	jal __adddf3
	mv x25, x10
	mv x26, x11
	mv x10, x9
	mv x11, x18
	mv x12, x25
	mv x13, x26
	jal __adddf3
	mv x18, x10
	mv x9, x11
	mv x12, x18
	mv x13, x9
	jal __unorddf2
	mv x27, x10
	mv x10, x25
	mv x11, x26
	mv x12, x19
	mv x13, x19
	jal __muldf3
	mv x12, x23
	mv x13, x24
	jal __subdf3
	mv x20, x10
	mv x19, x11
	beq x0, x27, .LBB0_3
.LBB0_1:                                //  %entry
	mv x10, x20
	mv x13, x19
	mv x11, x19
	mv x12, x20
	jal __unorddf2
	bltu x0, x10, .LBB0_2
.LBB0_3:                                //  %complex_mul_cont
	mv x10, x21
	mv x11, x22
	mv x12, x23
	mv x13, x24
	jal __subdf3
	mv x25, x10
	mv x26, x11
	mv x10, x21
	mv x11, x22
	mv x12, x23
	mv x13, x24
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x25
	mv x11, x26
	jal __muldf3
	mv x25, x10
	mv x26, x11
	mv x10, x21
	mv x11, x22
	mv x12, x21
	mv x13, x22
	jal __adddf3
	mv x12, x23
	mv x13, x24
	jal __muldf3
	mv x21, x0
	mv x13, x21
	mv x12, x21
	mv x22, x10
	mv x23, x11
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x25
	mv x11, x26
	jal __adddf3
	mv x24, x10
	add x10, sp, 220
	mv x25, x11
	sw x25, 4 ( x10 )
	sw x22, 8 ( x10 )
	add x10, sp, 76
	sw x25, 4 ( x10 )
	sw x22, 8 ( x10 )
	sw x24, 220 ( sp )
	sw x23, 232 ( sp )
	sw x24, 76 ( sp )
	sw x23, 88 ( sp )
	jal creal
	mv x12, x10
	add x10, sp, 204
	mv x13, x11
	sw x25, 4 ( x10 )
	sw x22, 8 ( x10 )
	add x26, sp, 60
	lui x11, (1072693248>>12)&1048575
	mv x10, x21
	sw x25, 4 ( x26 )
	sw x24, 204 ( sp )
	sw x24, 60 ( sp )
	sw x22, 8 ( x26 )
	sw x23, 216 ( sp )
	sw x23, 72 ( sp )
	jal __subdf3
	mv x22, x10
	mv x10, x26
	mv x23, x11
	jal cimag
	mv x12, x21
	mv x13, x21
	mv x24, x10
	mv x25, x11
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x22
	mv x11, x23
	jal __subdf3
	add x12, sp, 172
	sw x11, 4 ( x12 )
	sw x24, 8 ( x12 )
	add x12, sp, 44
	sw x11, 4 ( x12 )
	sw x10, 172 ( sp )
	sw x10, 44 ( sp )
	lui x10, %hi( -2147483648 )
	add x22, x10, %lo( -2147483648 )
	xor x10, x22, x25
	add x23, sp, 188
	sw x24, 8 ( x12 )
	sw x10, 184 ( sp )
	sw x10, 56 ( sp )
	mv x10, x23
	mv x11, x12
	jal csqrt
	lw x13, 4 ( x23 )
	lw x12, 188 ( sp )
	mv x10, x20
	mv x11, x19
	jal __adddf3
	lw x12, 8 ( x23 )
	lw x13, 200 ( sp )
	mv x19, x10
	mv x20, x11
	add x23, sp, 140
	mv x10, x18
	mv x11, x9
	sw x20, 4 ( x23 )
	jal __adddf3
	add x12, sp, 28
	sw x10, 8 ( x23 )
	sw x20, 4 ( x12 )
	sw x19, 140 ( sp )
	sw x19, 28 ( sp )
	add x19, sp, 156
	sw x10, 8 ( x12 )
	sw x11, 152 ( sp )
	sw x11, 40 ( sp )
	mv x10, x19
	mv x11, x12
	jal clog
	lw x9, 8 ( x19 )
	lw x18, 168 ( sp )
	mv x12, x21
	mv x13, x22
	mv x10, x9
	mv x11, x18
	jal __muldf3
	lw x23, 4 ( x19 )
	lw x24, 156 ( sp )
	mv x13, x23
	mv x12, x24
	jal __subdf3
	mv x20, x10
	mv x19, x11
	mv x10, x24
	mv x11, x23
	mv x12, x21
	mv x13, x21
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x18
	jal __subdf3
	mv x25, x10
	mv x21, x11
	mv x12, x25
	mv x13, x21
	jal __unorddf2
	beq x0, x10, .LBB0_6
.LBB0_4:                                //  %complex_mul_cont
	mv x10, x20
	mv x13, x19
	mv x11, x19
	mv x12, x20
	jal __unorddf2
	bltu x0, x10, .LBB0_5
.LBB0_6:                                //  %complex_mul_cont66
	sw x20, 8 ( fp )
	sw x25, 0 ( fp )
	sw x19, 12 ( fp )
	sw x21, 4 ( fp )
	lw fp, 284 ( sp )               //  4-byte Folded Reload
	lw x27, 288 ( sp )              //  4-byte Folded Reload
	lw x26, 292 ( sp )              //  4-byte Folded Reload
	lw x25, 296 ( sp )              //  4-byte Folded Reload
	lw x24, 300 ( sp )              //  4-byte Folded Reload
	lw x23, 304 ( sp )              //  4-byte Folded Reload
	lw x22, 308 ( sp )              //  4-byte Folded Reload
	lw x21, 312 ( sp )              //  4-byte Folded Reload
	lw x20, 316 ( sp )              //  4-byte Folded Reload
	lw x19, 320 ( sp )              //  4-byte Folded Reload
	lw x18, 324 ( sp )              //  4-byte Folded Reload
	lw x9, 328 ( sp )               //  4-byte Folded Reload
	lw ra, 332 ( sp )               //  4-byte Folded Reload
	add sp, sp, 336
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_2:                                //  %complex_mul_libcall
	mv x15, x0
	lui x10, (1072693248>>12)&1048575
	add x19, sp, 236
	sw x10, 0 ( sp )
	mv x16, x15
	mv x10, x19
	mv x11, x25
	mv x12, x26
	mv x13, x23
	mv x14, x24
	mv x17, x15
	jal __muldc3
	lw x18, 8 ( x19 )
	lw x9, 248 ( sp )
	lw x19, 4 ( x19 )
	lw x20, 236 ( sp )
	jal x0, .LBB0_3
.LBB0_5:                                //  %complex_mul_libcall64
	lui x10, %hi( -1074790400 )
	add x10, x10, %lo( -1074790400 )
	mv x15, x0
	add x21, sp, 124
	sw x10, 0 ( sp )
	mv x10, x21
	mv x11, x24
	mv x12, x23
	mv x13, x9
	mv x14, x18
	mv x16, x22
	mv x17, x15
	jal __muldc3
	lw x20, 8 ( x21 )
	lw x19, 136 ( sp )
	lw x21, 4 ( x21 )
	lw x25, 124 ( sp )
	jal x0, .LBB0_6
.Lfunc_end0:
	.size	casin, .Lfunc_end0-casin
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
