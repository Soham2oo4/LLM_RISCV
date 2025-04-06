	.text
	.file	"ctan.c"
	.globl	ctan                    //  -- Begin function ctan
	.type	ctan,@function
ctan:                                   //  @ctan
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -208
	.cfi_adjust_cfa_offset 208
	sw x20, 188 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x22, 180 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	lw x20, 4 ( x11 )
	lw x22, 8 ( x11 )
	sw x21, 184 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x23, 176 ( sp )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	lw x21, 12 ( x11 )
	lw x23, 0 ( x11 )
	sw fp, 172 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -36
	mv fp, x10
	add x10, sp, 156
	sw x20, 4 ( x10 )
	sw x22, 8 ( x10 )
	add x10, sp, 76
	sw ra, 204 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 200 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 196 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 192 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x22, 8 ( x10 )
	sw x20, 4 ( x10 )
	sw x23, 156 ( sp )
	sw x21, 168 ( sp )
	sw x21, 88 ( sp )
	sw x23, 76 ( sp )
	jal creal
	mv x12, x10
	mv x13, x11
	jal __adddf3
	jal cos
	mv x9, x10
	add x10, sp, 140
	sw x20, 4 ( x10 )
	sw x22, 8 ( x10 )
	add x10, sp, 60
	mv x18, x11
	sw x20, 4 ( x10 )
	sw x22, 8 ( x10 )
	sw x23, 140 ( sp )
	sw x21, 152 ( sp )
	sw x23, 60 ( sp )
	sw x21, 72 ( sp )
	jal cimag
	mv x12, x10
	mv x13, x11
	jal __adddf3
	jal cosh
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x18
	jal __adddf3
	mv x9, x10
	mv x18, x11
	jal fabs
	mv x19, x0
	lui x13, (1070596096>>12)&1048575
	mv x12, x19
	jal __ltdf2
	bge x10, x0, .LBB0_2
.LBB0_1:                                //  %if.then
	add x11, sp, 124
	add x10, sp, 44
	sw x22, 8 ( x11 )
	sw x22, 8 ( x10 )
	sw x20, 4 ( x11 )
	sw x20, 4 ( x10 )
	sw x23, 124 ( sp )
	sw x23, 44 ( sp )
	sw x21, 136 ( sp )
	sw x21, 56 ( sp )
	jal _ctans
	mv x9, x10
	mv x18, x11
.LBB0_2:                                //  %if.end
	mv x10, x9
	mv x13, x19
	mv x11, x18
	mv x12, x19
	jal __eqdf2
	bltu x0, x10, .LBB0_4
.LBB0_3:
	lui x9, (2146435072>>12)&1048575
	lui x11, (2146959360>>12)&1048575
	mv x18, x19
	jal x0, .LBB0_5
.LBB0_4:                                //  %if.end21
	add x10, sp, 108
	sw x22, 8 ( x10 )
	sw x20, 4 ( x10 )
	add x10, sp, 28
	sw x22, 8 ( x10 )
	sw x20, 4 ( x10 )
	sw x23, 108 ( sp )
	sw x23, 28 ( sp )
	sw x21, 120 ( sp )
	sw x21, 40 ( sp )
	jal creal
	mv x12, x10
	mv x13, x11
	jal __adddf3
	jal sin
	add x12, sp, 92
	sw x20, 4 ( x12 )
	sw x22, 8 ( x12 )
	add x19, sp, 12
	mv x12, x9
	mv x13, x18
	sw x20, 4 ( x19 )
	sw x22, 8 ( x19 )
	sw x23, 92 ( sp )
	sw x23, 12 ( sp )
	sw x21, 104 ( sp )
	sw x21, 24 ( sp )
	jal __divdf3
	mv x20, x10
	mv x10, x19
	mv x21, x11
	jal cimag
	mv x12, x10
	mv x13, x11
	jal __adddf3
	jal sinh
	mv x12, x9
	mv x13, x18
	jal __divdf3
	mv x12, x0
	mv x13, x12
	mv x18, x10
	mv x9, x11
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __adddf3
	mv x19, x10
.LBB0_5:                                //  %cleanup
	sw x18, 8 ( fp )
	sw x19, 0 ( fp )
	sw x9, 12 ( fp )
	sw x11, 4 ( fp )
	lw fp, 172 ( sp )               //  4-byte Folded Reload
	lw x23, 176 ( sp )              //  4-byte Folded Reload
	lw x22, 180 ( sp )              //  4-byte Folded Reload
	lw x21, 184 ( sp )              //  4-byte Folded Reload
	lw x20, 188 ( sp )              //  4-byte Folded Reload
	lw x19, 192 ( sp )              //  4-byte Folded Reload
	lw x18, 196 ( sp )              //  4-byte Folded Reload
	lw x9, 200 ( sp )               //  4-byte Folded Reload
	lw ra, 204 ( sp )               //  4-byte Folded Reload
	add sp, sp, 208
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	ctan, .Lfunc_end0-ctan
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
