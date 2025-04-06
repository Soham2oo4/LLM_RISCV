	.text
	.file	"s_ilogb.c"
	.globl	ilogb                   //  -- Begin function ilogb
	.type	ilogb,@function
ilogb:                                  //  @ilogb
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x12, x10
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	and x14, x10, x11
	srl x13, x14, 20&31
	bltu x0, x13, .LBB0_8
.LBB0_1:                                //  %if.then
	or x10, x12, x14
	beq x0, x10, .LBB0_2
.LBB0_3:                                //  %if.else
	beq x0, x14, .LBB0_4
.LBB0_6:                                //  %if.else7
	add x10, x0, -1022
	sll x11, x11, 11&31
	bge x0, x11, .LBB0_10
.LBB0_7:                                //  %for.body11
                                        //  =>This Inner Loop Header: Depth=1
	add x10, x10, -1
	sll x11, x11, 1&31
	blt x0, x11, .LBB0_7
	jal x0, .LBB0_10
.LBB0_8:                                //  %if.else17
	add x11, x0, 2046
	bltu x11, x13, .LBB0_10
.LBB0_9:                                //  %if.then19
	add x10, x13, -1023
	jr ra
.LBB0_2:
	lui x10, %hi( -2147483647 )
	add x10, x10, %lo( -2147483647 )
	jr ra
.LBB0_4:                                //  %for.cond.preheader
	add x10, x0, -1043
	bge x0, x12, .LBB0_10
.LBB0_5:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x10, x10, -1
	sll x12, x12, 1&31
	blt x0, x12, .LBB0_5
.LBB0_10:                               //  %cleanup
	jr ra
.Lfunc_end0:
	.size	ilogb, .Lfunc_end0-ilogb
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
