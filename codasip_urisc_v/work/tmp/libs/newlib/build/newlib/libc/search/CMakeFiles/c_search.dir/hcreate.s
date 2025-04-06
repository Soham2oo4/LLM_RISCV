	.text
	.file	"hcreate.c"
	.globl	hcreate                 //  -- Begin function hcreate
	.type	hcreate,@function
hcreate:                                //  @hcreate
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x11, %hi( htab )
	add x11, x11, %lo( htab )
	j hcreate_r
.Lfunc_end0:
	.size	hcreate, .Lfunc_end0-hcreate
	.cfi_endproc
                                        //  -- End function
	.globl	hdestroy                //  -- Begin function hdestroy
	.type	hdestroy,@function
hdestroy:                               //  @hdestroy
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x10, %hi( htab )
	add x10, x10, %lo( htab )
	j hdestroy_r
.Lfunc_end1:
	.size	hdestroy, .Lfunc_end1-hdestroy
	.cfi_endproc
                                        //  -- End function
	.globl	hsearch                 //  -- Begin function hsearch
	.type	hsearch,@function
hsearch:                                //  @hsearch
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	lw x12, 0 ( x10 )
	lui x13, %hi( htab )
	add x13, x13, %lo( htab )
	sw x12, 16 ( sp )
	lw x10, 4 ( x10 )
	add x12, sp, 24
	sw x10, 20 ( sp )
	add x10, sp, 16
	jal hsearch_r
	lw x10, 24 ( sp )
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end2:
	.size	hsearch, .Lfunc_end2-hsearch
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	htab,@object            //  @htab
	.local	htab
	.comm	htab,8,4

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
