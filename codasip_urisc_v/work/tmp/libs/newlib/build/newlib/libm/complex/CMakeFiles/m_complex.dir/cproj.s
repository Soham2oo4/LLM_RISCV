	.text
	.file	"cproj.c"
	.globl	cproj                   //  -- Begin function cproj
	.type	cproj,@function
cproj:                                  //  @cproj
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -144
	.cfi_adjust_cfa_offset 144
	sw x18, 132 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x21, 120 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	lw x21, 4 ( x11 )
	lw x18, 8 ( x11 )
	sw x9, 136 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x22, 116 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	lw x9, 12 ( x11 )
	lw x22, 0 ( x11 )
	sw fp, 108 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -36
	mv fp, x10
	add x10, sp, 92
	sw x21, 4 ( x10 )
	sw x18, 8 ( x10 )
	add x10, sp, 44
	sw ra, 140 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 128 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 124 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x23, 112 ( sp )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x18, 8 ( x10 )
	sw x21, 4 ( x10 )
	sw x22, 92 ( sp )
	sw x9, 104 ( sp )
	sw x9, 56 ( sp )
	sw x22, 44 ( sp )
	jal creal
	lui x12, %hi( 2147483647 )
	add x23, x12, %lo( 2147483647 )
	lui x20, (2146435072>>12)&1048575
	mv x19, x0
	and x11, x23, x11
	mv x12, x19
	mv x13, x20
	jal __eqdf2
	beq x0, x10, .LBB0_3
.LBB0_1:                                //  %lor.lhs.false
	add x11, sp, 76
	add x10, sp, 28
	sw x18, 8 ( x11 )
	sw x18, 8 ( x10 )
	sw x21, 4 ( x11 )
	sw x21, 4 ( x10 )
	sw x22, 76 ( sp )
	sw x22, 28 ( sp )
	sw x9, 88 ( sp )
	sw x9, 40 ( sp )
	jal cimag
	and x11, x23, x11
	mv x12, x0
	lui x13, (2146435072>>12)&1048575
	jal __nedf2
	bltu x0, x10, .LBB0_2
.LBB0_3:                                //  %if.then
	add x11, sp, 60
	add x10, sp, 12
	sw x18, 8 ( x11 )
	sw x18, 8 ( x10 )
	sw x21, 4 ( x11 )
	sw x21, 4 ( x10 )
	sw x22, 60 ( sp )
	sw x22, 12 ( sp )
	sw x9, 72 ( sp )
	sw x9, 24 ( sp )
	jal cimag
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x19
	jal copysign
	mv x18, x10
	mv x9, x11
.LBB0_4:                                //  %if.end
	sw x18, 8 ( fp )
	sw x19, 0 ( fp )
	sw x9, 12 ( fp )
	sw x20, 4 ( fp )
	lw fp, 108 ( sp )               //  4-byte Folded Reload
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
.LBB0_2:
	mv x19, x22
	mv x20, x21
	jal x0, .LBB0_4
.Lfunc_end0:
	.size	cproj, .Lfunc_end0-cproj
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
