	.text
	.file	"rand48.c"
	.globl	__dorand48              //  -- Begin function __dorand48
	.type	__dorand48,@function
__dorand48:                             //  @__dorand48
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lhu x12, 178 ( x10 )
	lh x13, 4 ( x11 )
	lhu x14, 2 ( x11 )
	lhu x15, 180 ( x10 )
	lh x17, 182 ( x10 )
	hackaton_custom_instr_c x13, x12, x13
	lhu x10, 184 ( x10 )
	hackaton_custom_instr_c x16, x14, x15
	add x13, x16, x13
	lhu x16, 0 ( x11 )
	hackaton_custom_instr_c x14, x12, x14
	hackaton_custom_instr_c x12, x12, x16
	add x10, x10, x12
	srl x12, x10, 16&31
	add x12, x14, x12
	hackaton_custom_instr_c x14, x16, x15
	add x12, x14, x12
	hackaton_custom_instr_c x17, x16, x17
	add x13, x17, x13
	srl x14, x12, 16&31
	add x13, x14, x13
	sh x13, 4 ( x11 )
	sh x12, 2 ( x11 )
	sh x10, 0 ( x11 )
	jr ra
.Lfunc_end0:
	.size	__dorand48, .Lfunc_end0-__dorand48
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
