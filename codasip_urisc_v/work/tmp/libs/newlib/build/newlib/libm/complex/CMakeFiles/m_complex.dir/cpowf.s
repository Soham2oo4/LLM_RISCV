	.text
	.file	"cpowf.c"
	.globl	cpowf                   //  -- Begin function cpowf
	.type	cpowf,@function
cpowf:                                  //  @cpowf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -112
	.cfi_adjust_cfa_offset 112
	sw x9, 104 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19, 96 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	lw x9, 4 ( x12 )
	lw x19, 0 ( x12 )
	sw fp, 76 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -36
	mv fp, x10
	add x10, sp, 36
	sw x18, 100 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw ra, 108 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20, 92 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 88 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 84 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 80 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	mv x18, x11
	sw x9, 72 ( sp )
	sw x19, 68 ( sp )
	sw x19, 36 ( sp )
	sw x9, 40 ( sp )
	jal crealf
	mv x20, x10
	add x10, sp, 28
	sw x19, 60 ( sp )
	sw x19, 28 ( sp )
	sw x9, 64 ( sp )
	sw x9, 32 ( sp )
	jal cimagf
	lw x22, 4 ( x18 )
	lw x23, 0 ( x18 )
	mv x9, x10
	add x10, sp, 20
	sw x22, 24 ( sp )
	sw x23, 20 ( sp )
	sw x22, 56 ( sp )
	sw x23, 52 ( sp )
	jal cabsf
	mv x21, x0
	mv x11, x21
	mv x19, x10
	jal __eqsf2
	mv x18, x21
	beq x0, x10, .LBB0_4
.LBB0_1:                                //  %if.end
	add x10, sp, 12
	sw x23, 44 ( sp )
	sw x23, 12 ( sp )
	sw x22, 48 ( sp )
	sw x22, 16 ( sp )
	jal cargf
	mv x21, x10
	mv x10, x19
	mv x11, x20
	jal powf
	mv x18, x10
	mv x10, x20
	mv x11, x21
	jal __mulsf3
	mv x20, x10
	mv x11, x0
	mv x10, x9
	jal __eqsf2
	beq x0, x10, .LBB0_3
.LBB0_2:                                //  %if.then17
	mv x10, x9
	mv x11, x21
	jal __mulsf3
	lui x11, %hi( -2147483648 )
	add x11, x11, %lo( -2147483648 )
	xor x10, x11, x10
	jal expf
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	mv x18, x10
	mv x10, x19
	jal logf
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	mv x11, x10
	mv x10, x20
	jal __addsf3
	mv x20, x10
.LBB0_3:                                //  %if.end23
	mv x10, x20
	jal cosf
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	mv x9, x10
	mv x10, x20
	jal sinf
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	mv x11, x0
	mv x18, x10
	jal __mulsf3
	mv x11, x10
	mv x10, x9
	jal __addsf3
	mv x21, x10
.LBB0_4:                                //  %cleanup
	sw x18, 4 ( fp )
	sw x21, 0 ( fp )
	lw fp, 76 ( sp )                //  4-byte Folded Reload
	lw x23, 80 ( sp )               //  4-byte Folded Reload
	lw x22, 84 ( sp )               //  4-byte Folded Reload
	lw x21, 88 ( sp )               //  4-byte Folded Reload
	lw x20, 92 ( sp )               //  4-byte Folded Reload
	lw x19, 96 ( sp )               //  4-byte Folded Reload
	lw x18, 100 ( sp )              //  4-byte Folded Reload
	lw x9, 104 ( sp )               //  4-byte Folded Reload
	lw ra, 108 ( sp )               //  4-byte Folded Reload
	add sp, sp, 112
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	cpowf, .Lfunc_end0-cpowf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
