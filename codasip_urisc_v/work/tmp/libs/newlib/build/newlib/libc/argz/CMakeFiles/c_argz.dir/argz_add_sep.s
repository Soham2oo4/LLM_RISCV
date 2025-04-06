	.text
	.file	"argz_add_sep.c"
	.globl	argz_add_sep            //  -- Begin function argz_add_sep
	.type	argz_add_sep,@function
argz_add_sep:                           //  @argz_add_sep
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x15, x13
	mv x14, x12
	mv x18, x11
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	lw x19, 0 ( x18 )
	add x12, sp, 8
	add x13, sp, 4
	mv x10, x14
	mv x11, x15
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	sw x0, 8 ( sp )
	sw x0, 4 ( sp )
	jal argz_create_sep
	lw x10, 4 ( sp )
	mv fp, x0
	beq x0, x10, .LBB0_4
.LBB0_1:                                //  %if.then
	lw x11, 0 ( x18 )
	add x11, x10, x11
	lw x10, 0 ( x9 )
	sw x11, 0 ( x18 )
	jal realloc
	sw x10, 0 ( x9 )
	beq x0, x10, .LBB0_2
.LBB0_3:                                //  %if.end
	lw x12, 4 ( sp )
	lw x11, 8 ( sp )
	add x10, x19, x10
	jal memcpy
	jal x0, .LBB0_4
.LBB0_2:
	add fp, x0, 12
.LBB0_4:                                //  %cleanup
	mv x10, fp
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	argz_add_sep, .Lfunc_end0-argz_add_sep
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
