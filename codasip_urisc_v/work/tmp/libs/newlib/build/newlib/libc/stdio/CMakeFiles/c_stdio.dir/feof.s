	.text
	.file	"feof.c"
	.globl	feof                    //  -- Begin function feof
	.type	feof,@function
feof:                                   //  @feof
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -8
	mv fp, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x10, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x11, 56 ( x10 )
	bltu x0, x11, .LBB0_3
.LBB0_2:                                //  %if.then
	jal __sinit
.LBB0_3:                                //  %if.end
	lhu x10, 12 ( fp )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	srl x10, x10, 5&31
	and x10, x10, 1
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	feof, .Lfunc_end0-feof
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
