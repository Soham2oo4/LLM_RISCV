	.text
	.file	"assert.c"
	.globl	__assert_func           //  -- Begin function __assert_func
	.type	__assert_func,@function
__assert_func:                          //  @__assert_func
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	mv x14, x0
	bne x12, x14, .LBB0_1
.LBB0_2:                                //  %entry
	lui x12, %hi( .str.2 )
	add x12, x12, %lo( .str.2 )
	mv x14, x12
	jal x0, .LBB0_3
.LBB0_1:
	lui x14, %hi( .str.1 )
	add x14, x14, %lo( .str.1 )
.LBB0_3:                                //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	lui x15, %hi( _impure_ptr )
	add x15, x15, %lo( _impure_ptr )
	lw x15, 0 ( x15 )
	lw x15, 12 ( x15 )
	sw x10, 12 ( sp )
	lui x10, %hi( .str )
	add x10, x10, %lo( .str )
	sw x14, 20 ( sp )
	sw x12, 24 ( sp )
	sw x11, 16 ( sp )
	sw x13, 8 ( sp )
	sw x10, 4 ( sp )
	sw x15, 0 ( sp )
	jal fiprintf
	jal abort
.Lfunc_end0:
	.size	__assert_func, .Lfunc_end0-__assert_func
	.cfi_endproc
                                        //  -- End function
	.globl	__assert                //  -- Begin function __assert
	.type	__assert,@function
__assert:                               //  @__assert
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x13, x12
	mv x12, x0
	jal __assert_func
.Lfunc_end1:
	.size	__assert, .Lfunc_end1-__assert
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"assertion \"%s\" failed: file \"%s\", line %d%s%s\n"
	.size	.str, 47

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	", function: "
	.size	.str.1, 13

	.address_space	0
	.type	.str.2,@object          //  @.str.2
.str.2:
	.zero	1
	.size	.str.2, 1


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
