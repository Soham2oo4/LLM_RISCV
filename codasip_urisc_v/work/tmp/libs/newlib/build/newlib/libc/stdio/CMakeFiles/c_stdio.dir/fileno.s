	.text
	.file	"fileno.c"
	.globl	fileno                  //  -- Begin function fileno
	.type	fileno,@function
fileno:                                 //  @fileno
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv fp, x10
	lui x10, %hi( _impure_ptr )
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9, x10, %lo( _impure_ptr )
	lw x10, 0 ( x9 )
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x10, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x11, 56 ( x10 )
	beq x0, x11, .LBB0_2
.LBB0_3:                                //  %if.end
	lhu x10, 12 ( fp )
	beq x0, x10, .LBB0_5
.LBB0_4:                                //  %if.then9
	lh x10, 14 ( fp )
	jal x0, .LBB0_6
.LBB0_2:                                //  %if.then
	jal __sinit
	lhu x10, 12 ( fp )
	bltu x0, x10, .LBB0_4
.LBB0_5:                                //  %if.else
	lw x10, 0 ( x9 )
	add x11, x0, 9
	sw x11, 0 ( x10 )
	add x10, x0, -1
.LBB0_6:                                //  %if.end11
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	fileno, .Lfunc_end0-fileno
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
