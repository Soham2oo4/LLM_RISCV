	.text
	.file	"catan.c"
	.globl	catan                   //  -- Begin function catan
	.type	catan,@function
catan:                                  //  @catan
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -144
	.cfi_adjust_cfa_offset 144
	sw x18, 132 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 128 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	lw x18, 4 ( x11 )
	lw x19, 8 ( x11 )
	sw x20, 124 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 120 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	lw x20, 12 ( x11 )
	lw x21, 0 ( x11 )
	sw fp, 92 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv fp, x10
	add x10, sp, 76
	sw x18, 4 ( x10 )
	sw x19, 8 ( x10 )
	add x10, sp, 44
	sw ra, 140 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 136 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x22, 116 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 112 ( sp )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 108 ( sp )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 104 ( sp )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 100 ( sp )              //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 96 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x19, 8 ( x10 )
	sw x18, 4 ( x10 )
	sw x21, 76 ( sp )
	sw x20, 88 ( sp )
	sw x20, 56 ( sp )
	sw x21, 44 ( sp )
	jal creal
	mv x24, x10
	add x10, sp, 60
	add x9, sp, 28
	sw x18, 4 ( x10 )
	sw x19, 8 ( x10 )
	sw x18, 4 ( x9 )
	mv x18, x0
	mv x10, x24
	mv x12, x18
	mv x13, x18
	mv x25, x11
	sw x19, 8 ( x9 )
	sw x21, 60 ( sp )
	sw x21, 28 ( sp )
	sw x20, 72 ( sp )
	sw x20, 40 ( sp )
	jal __nedf2
	mv x22, x10
	mv x10, x9
	jal cimag
	mv x20, x10
	mv x21, x11
	lui x19, (2146435072>>12)&1048575
	lui x9, (2146959360>>12)&1048575
	bltu x0, x22, .LBB0_3
.LBB0_1:                                //  %entry
	mv x12, x0
	lui x13, (1072693248>>12)&1048575
	mv x10, x20
	mv x11, x21
	jal __gtdf2
	blt x0, x10, .LBB0_2
.LBB0_3:                                //  %if.end
	mv x10, x24
	mv x11, x25
	mv x12, x24
	mv x13, x25
	jal __muldf3
	mv x23, x11
	mv x22, x10
	mv x18, x0
	lui x11, (1072693248>>12)&1048575
	mv x10, x18
	mv x12, x22
	mv x13, x23
	jal __subdf3
	mv x26, x10
	mv x27, x11
	mv x10, x20
	mv x13, x21
	mv x11, x21
	mv x12, x20
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x26
	mv x11, x27
	jal __subdf3
	mv x12, x18
	mv x13, x18
	mv x26, x10
	mv x27, x11
	jal __eqdf2
	bltu x0, x10, .LBB0_5
.LBB0_2:
	mv x10, x18
.LBB0_7:                                //  %cleanup
	sw x18, 0 ( fp )
	sw x19, 12 ( fp )
	sw x9, 4 ( fp )
	sw x10, 8 ( fp )
	lw fp, 92 ( sp )                //  4-byte Folded Reload
	lw x27, 96 ( sp )               //  4-byte Folded Reload
	lw x26, 100 ( sp )              //  4-byte Folded Reload
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
.LBB0_5:                                //  %if.end12
	mv x18, x0
	lui x10, %hi( -1074790400 )
	add x13, x10, %lo( -1074790400 )
	mv x10, x20
	mv x11, x21
	mv x12, x18
	jal __adddf3
	mv x12, x10
	mv x13, x11
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x22
	mv x11, x23
	jal __adddf3
	mv x12, x18
	mv x13, x18
	sw x10, 20 ( sp )               //  4-byte Folded Spill
	sw x11, 16 ( sp )               //  4-byte Folded Spill
	jal __eqdf2
	sw x10, 24 ( sp )               //  4-byte Folded Spill
	mv x10, x24
	mv x11, x25
	mv x12, x24
	mv x13, x25
	jal __adddf3
	mv x12, x26
	mv x13, x27
	jal atan2
	lui x13, (1071644672>>12)&1048575
	mv x12, x18
	jal __muldf3
	jal _redupi
	mv x25, x11
	lw x11, 24 ( sp )               //  4-byte Folded Reload
	mv x24, x10
	mv x10, x18
	beq x0, x11, .LBB0_7
.LBB0_6:                                //  %if.end21
	mv x19, x0
	lui x13, (1072693248>>12)&1048575
	mv x10, x20
	mv x11, x21
	mv x12, x19
	jal __adddf3
	mv x12, x10
	mv x13, x11
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x22
	mv x11, x23
	jal __adddf3
	lw x12, 20 ( sp )               //  4-byte Folded Reload
	lw x13, 16 ( sp )               //  4-byte Folded Reload
	jal __divdf3
	jal log
	lui x13, (1070596096>>12)&1048575
	mv x12, x19
	jal __muldf3
	mv x12, x19
	mv x13, x19
	mv x20, x10
	mv x21, x11
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x24
	mv x11, x25
	jal __adddf3
	mv x18, x10
	mv x9, x11
	mv x10, x20
	mv x11, x21
	mv x12, x19
	mv x13, x19
	jal __adddf3
	mv x19, x11
	jal x0, .LBB0_7
.Lfunc_end0:
	.size	catan, .Lfunc_end0-catan
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
