	.text
	.file	"cpow.c"
	.globl	cpow                    //  -- Begin function cpow
	.type	cpow,@function
cpow:                                   //  @cpow
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -192
	.cfi_adjust_cfa_offset 192
	sw x9, 184 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 180 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x9, 4 ( x12 )
	lw x18, 8 ( x12 )
	sw x20, 172 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 168 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	lw x20, 12 ( x12 )
	lw x21, 0 ( x12 )
	sw fp, 140 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv fp, x10
	add x10, sp, 124
	sw x9, 4 ( x10 )
	sw x18, 8 ( x10 )
	add x10, sp, 60
	sw x19, 176 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw ra, 188 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x22, 164 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 160 ( sp )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 156 ( sp )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 152 ( sp )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 148 ( sp )              //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 144 ( sp )              //  4-byte Folded Spill
	.cfi_offset 27, -48
	mv x19, x11
	sw x18, 8 ( x10 )
	sw x9, 4 ( x10 )
	sw x21, 124 ( sp )
	sw x20, 136 ( sp )
	sw x20, 72 ( sp )
	sw x21, 60 ( sp )
	jal creal
	mv x23, x10
	add x10, sp, 108
	sw x9, 4 ( x10 )
	sw x18, 8 ( x10 )
	add x10, sp, 44
	mv x24, x11
	sw x9, 4 ( x10 )
	sw x18, 8 ( x10 )
	sw x21, 108 ( sp )
	sw x21, 44 ( sp )
	sw x20, 120 ( sp )
	sw x20, 56 ( sp )
	jal cimag
	lw x18, 8 ( x19 )
	lw x9, 4 ( x19 )
	lw x27, 0 ( x19 )
	lw x26, 12 ( x19 )
	sw x10, 8 ( sp )                //  4-byte Folded Spill
	add x10, sp, 92
	sw x18, 8 ( x10 )
	sw x9, 4 ( x10 )
	add x10, sp, 28
	sw x11, 4 ( sp )                //  4-byte Folded Spill
	sw x18, 8 ( x10 )
	sw x9, 4 ( x10 )
	sw x26, 104 ( sp )
	sw x27, 92 ( sp )
	sw x27, 28 ( sp )
	sw x26, 40 ( sp )
	jal cabs
	mv x25, x0
	mv x12, x25
	mv x13, x25
	mv x21, x10
	mv x22, x11
	jal __eqdf2
	mv x11, x25
	mv x19, x25
	mv x20, x25
	beq x0, x10, .LBB0_4
.LBB0_1:                                //  %if.end
	add x11, sp, 76
	add x10, sp, 12
	sw x18, 8 ( x11 )
	sw x18, 8 ( x10 )
	sw x9, 4 ( x11 )
	sw x9, 4 ( x10 )
	sw x27, 76 ( sp )
	sw x27, 12 ( sp )
	sw x26, 88 ( sp )
	sw x26, 24 ( sp )
	jal carg
	mv x25, x10
	mv x26, x11
	mv x10, x21
	mv x11, x22
	mv x12, x23
	mv x13, x24
	jal pow
	mv x19, x10
	mv x20, x11
	mv x10, x23
	mv x11, x24
	mv x12, x25
	mv x13, x26
	jal __muldf3
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	mv x12, x0
	mv x23, x10
	mv x24, x11
	mv x10, x9
	mv x11, x18
	mv x13, x12
	jal __eqdf2
	beq x0, x10, .LBB0_3
.LBB0_2:                                //  %if.then17
	mv x10, x9
	mv x11, x18
	mv x12, x25
	mv x13, x26
	jal __muldf3
	lui x12, %hi( -2147483648 )
	add x12, x12, %lo( -2147483648 )
	xor x11, x12, x11
	jal exp
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	mv x19, x10
	mv x20, x11
	mv x10, x21
	mv x11, x22
	jal log
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x18
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x24
	jal __adddf3
	mv x23, x10
	mv x24, x11
.LBB0_3:                                //  %if.end23
	mv x10, x23
	mv x11, x24
	jal cos
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	mv x9, x10
	mv x18, x11
	mv x10, x23
	mv x11, x24
	jal sin
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	mv x12, x0
	mv x13, x12
	mv x19, x10
	mv x20, x11
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x18
	jal __adddf3
	mv x25, x10
.LBB0_4:                                //  %cleanup
	sw x19, 8 ( fp )
	sw x25, 0 ( fp )
	sw x20, 12 ( fp )
	sw x11, 4 ( fp )
	lw fp, 140 ( sp )               //  4-byte Folded Reload
	lw x27, 144 ( sp )              //  4-byte Folded Reload
	lw x26, 148 ( sp )              //  4-byte Folded Reload
	lw x25, 152 ( sp )              //  4-byte Folded Reload
	lw x24, 156 ( sp )              //  4-byte Folded Reload
	lw x23, 160 ( sp )              //  4-byte Folded Reload
	lw x22, 164 ( sp )              //  4-byte Folded Reload
	lw x21, 168 ( sp )              //  4-byte Folded Reload
	lw x20, 172 ( sp )              //  4-byte Folded Reload
	lw x19, 176 ( sp )              //  4-byte Folded Reload
	lw x18, 180 ( sp )              //  4-byte Folded Reload
	lw x9, 184 ( sp )               //  4-byte Folded Reload
	lw ra, 188 ( sp )               //  4-byte Folded Reload
	add sp, sp, 192
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	cpow, .Lfunc_end0-cpow
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
