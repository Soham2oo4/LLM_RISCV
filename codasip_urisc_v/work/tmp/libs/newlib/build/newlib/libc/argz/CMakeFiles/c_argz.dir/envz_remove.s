	.text
	.file	"envz_remove.c"
	.globl	envz_remove             //  -- Begin function envz_remove
	.type	envz_remove,@function
envz_remove:                            //  @envz_remove
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv fp, x11
	lw x11, 0 ( fp )
	lw x10, 0 ( x9 )
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	jal envz_entry
	mv x18, x10
	beq x0, x18, .LBB0_4
.LBB0_1:                                //  %if.then
	mv x10, x18
	jal strlen
	mv x11, x10
	lw x12, 0 ( fp )
	lw x10, 0 ( x9 )
	add x19, x11, 1
	add x14, x11, x18
	add x13, x12, x10
	beq x13, x14, .LBB0_3
.LBB0_2:                                //  %if.then5
	xor x10, x11, -1
	sub x10, x10, x18
	add x12, x13, x10
	add x11, x19, x18
	mv x10, x18
	jal memmove
	lw x12, 0 ( fp )
	lw x10, 0 ( x9 )
.LBB0_3:                                //  %if.end
	sub x11, x12, x19
	jal realloc
	sw x10, 0 ( x9 )
	lw x10, 0 ( fp )
	sub x10, x10, x19
	sw x10, 0 ( fp )
.LBB0_4:                                //  %if.end12
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	envz_remove, .Lfunc_end0-envz_remove
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
