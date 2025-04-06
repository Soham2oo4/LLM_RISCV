	.text
	.file	"envz_add.c"
	.globl	envz_add                //  -- Begin function envz_add
	.type	envz_add,@function
envz_add:                               //  @envz_add
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
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -32
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 22, -28
	mv x18, x13
	mv x19, x12
	mv fp, x11
	mv x9, x10
	jal envz_remove
	beq x0, x18, .LBB0_4
.LBB0_1:                                //  %if.then
	mv x10, x19
	jal strlen
	mv x21, x10
	mv x10, x18
	jal strlen
	mv x22, x10
	add x10, x22, x21
	add x10, x10, 2
	jal malloc
	mv x20, x10
	beq x0, x20, .LBB0_2
.LBB0_3:                                //  %if.end
	mv x10, x20
	mv x11, x19
	mv x12, x21
	jal memcpy
	add x10, x21, x20
	add x11, x0, 61
	sb x11, 0 ( x10 )
	add x10, x10, 1
	add x12, x22, 1
	mv x11, x18
	jal memcpy
	mv x10, x9
	mv x11, fp
	mv x12, x20
	jal argz_add
	mv fp, x10
	mv x10, x20
	jal free
	jal x0, .LBB0_5
.LBB0_4:                                //  %if.else
	mv x10, x9
	mv x11, fp
	mv x12, x19
	jal argz_add
	mv fp, x10
	jal x0, .LBB0_5
.LBB0_2:
	add fp, x0, 12
.LBB0_5:                                //  %cleanup
	mv x10, fp
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
	.size	envz_add, .Lfunc_end0-envz_add
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
