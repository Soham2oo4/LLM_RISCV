	.text
	.file	"argz_append.c"
	.globl	argz_append             //  -- Begin function argz_append
	.type	argz_append,@function
argz_append:                            //  @argz_append
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -24
	mv x9, x13
	mv x18, x12
	mv x19, x10
	mv fp, x0
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	beq x0, x9, .LBB0_4
.LBB0_1:                                //  %if.then
	lw x20, 0 ( x11 )
	lw x10, 0 ( x19 )
	add x12, x9, x20
	sw x12, 0 ( x11 )
	mv x11, x12
	jal realloc
	sw x10, 0 ( x19 )
	beq x0, x10, .LBB0_2
.LBB0_3:                                //  %if.end
	add x10, x20, x10
	mv x11, x18
	mv x12, x9
	jal memcpy
	jal x0, .LBB0_4
.LBB0_2:
	add fp, x0, 12
.LBB0_4:                                //  %return
	mv x10, fp
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	argz_append, .Lfunc_end0-argz_append
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
