	.text
	.file	"w_j1.c"
	.globl	j1                      //  -- Begin function j1
	.type	j1,@function
j1:                                     //  @j1
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv x18, x11
	mv x19, x10
	jal __ieee754_j1
	mv fp, x10
	mv x9, x11
	mv x10, x19
	mv x11, x18
	mv x12, x19
	mv x13, x18
	jal __unorddf2
	bltu x0, x10, .LBB0_3
.LBB0_1:                                //  %if.end
	mv x10, x19
	mv x11, x18
	jal fabs
	lui x12, %hi( 1413754136 )
	lui x13, %hi( 1128866299 )
	add x12, x12, %lo( 1413754136 )
	add x13, x13, %lo( 1128866299 )
	jal __gtdf2
	bge x0, x10, .LBB0_3
.LBB0_2:                                //  %if.then3
	jal __errno
	mv fp, x0
	add x11, x0, 34
	mv x9, fp
	sw x11, 0 ( x10 )
.LBB0_3:                                //  %cleanup
	mv x10, fp
	mv x11, x9
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	j1, .Lfunc_end0-j1
	.cfi_endproc
                                        //  -- End function
	.globl	y1                      //  -- Begin function y1
	.type	y1,@function
y1:                                     //  @y1
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -24
	mv x18, x11
	mv x19, x10
	jal __ieee754_y1
	mv fp, x10
	mv x9, x11
	mv x10, x19
	mv x11, x18
	mv x12, x19
	mv x13, x18
	jal __unorddf2
	bltu x0, x10, .LBB1_7
.LBB1_1:                                //  %if.end
	mv x12, x0
	mv x10, x19
	mv x11, x18
	mv x13, x12
	jal __ltdf2
	bge x10, x0, .LBB1_3
.LBB1_2:                                //  %if.then2
	jal __errno
	add x11, x0, 33
	sw x11, 0 ( x10 )
.LBB1_3:                                //  %if.end4
	mv x12, x0
	mv x10, x19
	mv x11, x18
	mv x13, x12
	jal __nedf2
	add x20, x0, 34
	bltu x0, x10, .LBB1_5
.LBB1_4:                                //  %if.then6
	jal __errno
	sw x20, 0 ( x10 )
.LBB1_5:                                //  %if.end8
	lui x10, %hi( 1413754136 )
	add x12, x10, %lo( 1413754136 )
	lui x10, %hi( 1128866299 )
	add x13, x10, %lo( 1128866299 )
	mv x10, x19
	mv x11, x18
	jal __gtdf2
	bge x0, x10, .LBB1_7
.LBB1_6:                                //  %if.then10
	jal __errno
	sw x20, 0 ( x10 )
.LBB1_7:                                //  %cleanup
	mv x10, fp
	mv x11, x9
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	y1, .Lfunc_end1-y1
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
