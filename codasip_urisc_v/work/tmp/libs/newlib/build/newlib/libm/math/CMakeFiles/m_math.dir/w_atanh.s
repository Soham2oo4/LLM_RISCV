	.text
	.file	"w_atanh.c"
	.globl	atanh                   //  -- Begin function atanh
	.type	atanh,@function
atanh:                                  //  @atanh
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -32
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 22, -28
	mv fp, x11
	mv x9, x10
	jal __ieee754_atanh
	mv x18, x10
	mv x19, x11
	mv x10, x9
	mv x11, fp
	mv x12, x9
	mv x13, fp
	jal __unorddf2
	bltu x0, x10, .LBB0_5
.LBB0_1:                                //  %if.end
	mv x10, x9
	mv x11, fp
	jal fabs
	mv x20, x0
	lui x13, (1072693248>>12)&1048575
	mv x12, x20
	mv x21, x10
	mv x22, x11
	jal __gedf2
	blt x10, x0, .LBB0_5
.LBB0_2:                                //  %if.then3
	jal __errno
	add x11, x0, 33
	sw x11, 0 ( x10 )
	lui x13, (1072693248>>12)&1048575
	mv x10, x21
	mv x11, x22
	mv x12, x20
	jal __gtdf2
	bge x0, x10, .LBB0_4
.LBB0_3:
	lui x19, (2146959360>>12)&1048575
	mv x18, x20
	jal x0, .LBB0_5
.LBB0_4:                                //  %if.else
	mv x12, x0
	mv x10, x9
	mv x11, fp
	mv x13, x12
	jal __divdf3
	mv x18, x10
	mv x19, x11
.LBB0_5:                                //  %cleanup
	mv x10, x18
	mv x11, x19
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x22, 4 ( sp )                //  4-byte Folded Reload
	lw x21, 8 ( sp )                //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	atanh, .Lfunc_end0-atanh
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
