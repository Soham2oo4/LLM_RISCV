	.text
	.file	"argz_delete.c"
	.globl	argz_delete             //  -- Begin function argz_delete
	.type	argz_delete,@function
argz_delete:                            //  @argz_delete
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
	mv x19, x12
	mv x18, x11
	mv x9, x10
	mv fp, x0
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	beq x0, x19, .LBB0_5
.LBB0_1:                                //  %if.then
	mv x10, x19
	jal strlen
	lw x11, 0 ( x18 )
	lw x12, 0 ( x9 )
	add x20, x10, 1
	mv x10, x19
	add x12, x11, x12
	add x11, x20, x19
	sub x12, x12, x11
	jal memmove
	lw x10, 0 ( x18 )
	sub x11, x10, x20
	lw x10, 0 ( x9 )
	sw x11, 0 ( x18 )
	jal realloc
	sw x10, 0 ( x9 )
	beq x0, x10, .LBB0_2
.LBB0_3:                                //  %if.end
	lw x11, 0 ( x18 )
	bltu x0, x11, .LBB0_5
.LBB0_4:                                //  %if.then7
	jal free
	sw x0, 0 ( x9 )
	jal x0, .LBB0_5
.LBB0_2:
	add fp, x0, 12
.LBB0_5:                                //  %cleanup
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
	.size	argz_delete, .Lfunc_end0-argz_delete
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
