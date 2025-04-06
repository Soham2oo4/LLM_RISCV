	.text
	.file	"lldiv.c"
	.globl	lldiv                   //  -- Begin function lldiv
	.type	lldiv,@function
lldiv:                                  //  @lldiv
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
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 22, -28
	mv x18, x14
	mv x9, x13
	mv x21, x12
	mv x22, x11
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -32
	mv fp, x10
	mv x10, x22
	mv x11, x21
	mv x12, x9
	mv x13, x18
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	jal __divdi3
	mv x12, x9
	mv x13, x18
	mv x19, x10
	mv x20, x11
	jal __muldi3
	sltu x12, x22, x10
	sub x11, x21, x11
	sub x11, x11, x12
	sub x10, x22, x10
	sw x11, 12 ( fp )
	sw x10, 8 ( fp )
	sw x20, 4 ( fp )
	sw x19, 0 ( fp )
	blt x21, x0, .LBB0_3
.LBB0_1:                                //  %entry
	bge x11, x0, .LBB0_3
.LBB0_2:                                //  %if.then
	sltu x12, x10, x9
	sub x10, x10, x9
	sw x10, 8 ( fp )
	add x10, x19, 1
	sw x10, 0 ( fp )
	sltu x10, x10, x19
	sub x11, x11, x18
	sub x11, x11, x12
	add x10, x10, x20
	sw x11, 12 ( fp )
	sw x10, 4 ( fp )
.LBB0_3:                                //  %if.end
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
	.size	lldiv, .Lfunc_end0-lldiv
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
