	.text
	.file	"hash_func.c"
	.type	hash4,@function         //  -- Begin function hash4
hash4:                                  //  @hash4
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
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	beq x0, x11, .LBB0_1
.LBB0_3:                                //  %if.then
	add x12, x11, 7
	lui x13, %hi( JTI0_0 )
	srl x9, x12, 3&31
	and x12, x11, 7
	sll x11, x12, 2&31
	add x13, x13, %lo( JTI0_0 )
	add x11, x13, x11
	lw x11, 0 ( x11 )
	mv x10, x0
	jr x11
.LBB0_1:
	mv x12, x0
.LBB0_2:                                //  %if.end
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	mv x10, x12
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_4:                                //  %do.body
	add x11, x0, 33
	mv x10, x12
	jal __mulsi3
	lbu x11, 0 ( fp )
	add fp, fp, 1
	add x10, x11, x10
.LBB0_5:                                //  %sw.bb3
	add x11, x0, 33
	jal __mulsi3
	lbu x11, 0 ( fp )
	add fp, fp, 1
	add x10, x11, x10
.LBB0_6:                                //  %sw.bb9
	add x11, x0, 33
	jal __mulsi3
	lbu x11, 0 ( fp )
	add fp, fp, 1
	add x10, x11, x10
.LBB0_7:                                //  %sw.bb15
	add x11, x0, 33
	jal __mulsi3
	lbu x11, 0 ( fp )
	add fp, fp, 1
	add x10, x11, x10
.LBB0_8:                                //  %sw.bb21
	add x11, x0, 33
	jal __mulsi3
	lbu x11, 0 ( fp )
	add fp, fp, 1
	add x10, x11, x10
.LBB0_9:                                //  %sw.bb27
	add x11, x0, 33
	jal __mulsi3
	lbu x11, 0 ( fp )
	add fp, fp, 1
	add x10, x11, x10
.LBB0_10:                               //  %sw.bb33
	add x11, x0, 33
	jal __mulsi3
	lbu x11, 0 ( fp )
	add fp, fp, 1
	add x10, x11, x10
.LBB0_11:                               //  %sw.bb39
	add x11, x0, 33
	jal __mulsi3
	lbu x11, 0 ( fp )
	add x9, x9, -1
	add x12, x11, x10
	beq x0, x9, .LBB0_2
.LBB0_12:
	add fp, fp, 1
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
