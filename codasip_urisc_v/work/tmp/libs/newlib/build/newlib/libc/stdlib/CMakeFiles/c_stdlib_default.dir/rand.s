	.text
	.file	"rand.c"
	.globl	srand                   //  -- Begin function srand
	.type	srand,@function
srand:                                  //  @srand
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x11, %hi( _impure_ptr )
	add x11, x11, %lo( _impure_ptr )
	lw x11, 0 ( x11 )
	sw x10, 164 ( x11 )
	sw x0, 168 ( x11 )
	jr ra
.Lfunc_end0:
	.size	srand, .Lfunc_end0-srand
	.cfi_endproc
                                        //  -- End function
	.globl	rand                    //  -- Begin function rand
	.type	rand,@function
rand:                                   //  @rand
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -8
	lw fp, 0 ( x10 )
	lui x12, %hi( 1284865837 )
	lui x13, %hi( 1481765933 )
	add x12, x12, %lo( 1284865837 )
	lw x10, 164 ( fp )
	lw x11, 168 ( fp )
	add x13, x13, %lo( 1481765933 )
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal __muldi3
	add x12, x10, 1
	sltu x10, x12, x10
	add x10, x10, x11
	lui x11, %hi( 2147483647 )
	sw x12, 164 ( fp )
	sw x10, 168 ( fp )
	add x11, x11, %lo( 2147483647 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	and x10, x11, x10
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	rand, .Lfunc_end1-rand
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
