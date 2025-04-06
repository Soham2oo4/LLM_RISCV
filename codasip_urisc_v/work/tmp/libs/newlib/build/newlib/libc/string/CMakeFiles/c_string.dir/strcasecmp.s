	.text
	.file	"strcasecmp.c"
	.globl	strcasecmp              //  -- Begin function strcasecmp
	.type	strcasecmp,@function
strcasecmp:                             //  @strcasecmp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x12, %hi( _ctype_ )
	add x12, x12, %lo( _ctype_ )
	add x13, x12, 1
	seqz x14, x0
.LBB0_1:                                //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	lb x15, 0 ( x11 )
	add x12, x15, x13
	lbu x12, 0 ( x12 )
	and x12, x12, 3
	bne x12, x14, .LBB0_3
.LBB0_2:                                //    in Loop: Header=BB0_1 Depth=1
	add x15, x15, 32
.LBB0_3:                                //  %for.cond
                                        //    in Loop: Header=BB0_1 Depth=1
	lb x12, 0 ( x10 )
	add x16, x12, x13
	lbu x16, 0 ( x16 )
	and x16, x16, 3
	bne x16, x14, .LBB0_5
.LBB0_4:                                //    in Loop: Header=BB0_1 Depth=1
	add x12, x12, 32
.LBB0_5:                                //  %for.cond
                                        //    in Loop: Header=BB0_1 Depth=1
	sub x12, x12, x15
	beq x0, x15, .LBB0_7
.LBB0_6:                                //  %for.cond
                                        //    in Loop: Header=BB0_1 Depth=1
	add x11, x11, 1
	add x10, x10, 1
	beq x0, x12, .LBB0_1
.LBB0_7:                                //  %for.end
	mv x10, x12
	jr ra
.Lfunc_end0:
	.size	strcasecmp, .Lfunc_end0-strcasecmp
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
