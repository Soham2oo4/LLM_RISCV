	.text
	.file	"strtok.c"
	.globl	strtok                  //  -- Begin function strtok
	.type	strtok,@function
strtok:                                 //  @strtok
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x12, %hi( _impure_ptr )
	add x12, x12, %lo( _impure_ptr )
	lw x12, 0 ( x12 )
	seqz x13, x0
	add x12, x12, 92
	j __strtok_r
.Lfunc_end0:
	.size	strtok, .Lfunc_end0-strtok
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
