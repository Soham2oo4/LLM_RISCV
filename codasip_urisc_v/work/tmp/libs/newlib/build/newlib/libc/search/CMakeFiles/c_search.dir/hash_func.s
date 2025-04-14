	.text
	.file	"hash_func.c"
	.type	hash4,@function         //  -- Begin function hash4
hash4:                                  //  @hash4
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	beq x0, x11, .LBB0_1
.LBB0_3:                                //  %if.then
	add x12, x11, 7
	lui x15, %hi( JTI0_0 )
	and x11, x11, 7
	sll x13, x11, 2&31
	add x15, x15, %lo( JTI0_0 )
	add x13, x15, x13
	lw x15, 0 ( x13 )
	mv x14, x0
	srl x12, x12, 3&31
	add x13, x0, 33
	jr x15
.LBB0_1:
	mv x11, x0
.LBB0_2:                                //  %if.end
	mv x10, x11
	jr ra
.LBB0_4:                                //  %do.body
	lbu x14, 0 ( x10 )
	hackaton_custom_instr_c x11, x13, x11
	add x10, x10, 1
	add x14, x14, x11
.LBB0_5:                                //  %sw.bb3
	hackaton_custom_instr_c x11, x13, x14
	lbu x14, 0 ( x10 )
	add x10, x10, 1
	add x14, x14, x11
.LBB0_6:                                //  %sw.bb9
	hackaton_custom_instr_c x11, x13, x14
	lbu x14, 0 ( x10 )
	add x10, x10, 1
	add x14, x14, x11
.LBB0_7:                                //  %sw.bb15
	hackaton_custom_instr_c x11, x13, x14
	lbu x14, 0 ( x10 )
	add x10, x10, 1
	add x14, x14, x11
.LBB0_8:                                //  %sw.bb21
	hackaton_custom_instr_c x11, x13, x14
	lbu x14, 0 ( x10 )
	add x10, x10, 1
	add x14, x14, x11
.LBB0_9:                                //  %sw.bb27
	hackaton_custom_instr_c x11, x13, x14
	lbu x14, 0 ( x10 )
	add x10, x10, 1
	add x14, x14, x11
.LBB0_10:                               //  %sw.bb33
	hackaton_custom_instr_c x11, x13, x14
	lbu x14, 0 ( x10 )
	add x10, x10, 1
	add x14, x14, x11
.LBB0_11:                               //  %sw.bb39
	hackaton_custom_instr_c x11, x13, x14
	lbu x14, 0 ( x10 )
	add x12, x12, -1
	add x11, x14, x11
	beq x0, x12, .LBB0_2
.LBB0_12:
	add x10, x10, 1
	jal x0, .LBB0_4
.Lfunc_end0:
	.size	hash4, .Lfunc_end0-hash4
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_4
	.long	.LBB0_11
	.long	.LBB0_10
	.long	.LBB0_9
	.long	.LBB0_8
	.long	.LBB0_7
	.long	.LBB0_6
	.long	.LBB0_5
                                        //  -- End function
	.address_space	0
	.type	__default_hash,@object  //  @__default_hash
	.data
	.globl	__default_hash
	.p2align	2
__default_hash:
	.long	hash4
	.size	__default_hash, 4


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
