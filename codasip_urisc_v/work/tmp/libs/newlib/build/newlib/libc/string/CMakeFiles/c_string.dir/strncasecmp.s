	.text
	.file	"strncasecmp.c"
	.globl	strncasecmp             //  -- Begin function strncasecmp
	.type	strncasecmp,@function
strncasecmp:                            //  @strncasecmp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x14, x0
	beq x0, x12, .LBB0_9
.LBB0_1:                                //  %for.body.preheader
	lui x13, %hi( _ctype_ )
	add x13, x13, %lo( _ctype_ )
	add x15, x13, 1
	seqz x16, x0
.LBB0_2:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lb x17, 0 ( x11 )
	add x13, x17, x15
	lbu x13, 0 ( x13 )
	and x13, x13, 3
	bne x13, x16, .LBB0_4
.LBB0_3:                                //    in Loop: Header=BB0_2 Depth=1
	add x17, x17, 32
.LBB0_4:                                //  %for.body
                                        //    in Loop: Header=BB0_2 Depth=1
	lb x13, 0 ( x10 )
	add x5, x13, x15
	lbu x5, 0 ( x5 )
	and x5, x5, 3
	bne x5, x16, .LBB0_6
.LBB0_5:                                //    in Loop: Header=BB0_2 Depth=1
	add x13, x13, 32
.LBB0_6:                                //  %for.body
                                        //    in Loop: Header=BB0_2 Depth=1
	sub x13, x13, x17
	beq x0, x17, .LBB0_10
.LBB0_7:                                //  %for.body
                                        //    in Loop: Header=BB0_2 Depth=1
	bltu x0, x13, .LBB0_10
.LBB0_8:                                //  %for.inc
                                        //    in Loop: Header=BB0_2 Depth=1
	add x10, x10, 1
	add x11, x11, 1
	add x12, x12, -1
	bltu x0, x12, .LBB0_2
.LBB0_9:
	mv x13, x14
.LBB0_10:                               //  %for.end
	mv x10, x13
	jr ra
.Lfunc_end0:
	.size	strncasecmp, .Lfunc_end0-strncasecmp
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
