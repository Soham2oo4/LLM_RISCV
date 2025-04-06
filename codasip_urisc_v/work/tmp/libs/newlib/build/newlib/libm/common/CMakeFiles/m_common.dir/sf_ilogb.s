	.text
	.file	"sf_ilogb.c"
	.globl	ilogbf                  //  -- Begin function ilogbf
	.type	ilogbf,@function
ilogbf:                                 //  @ilogbf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x11, x10
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	and x12, x10, x11
	beq x0, x12, .LBB0_1
.LBB0_2:                                //  %if.end
	srl x12, x12, 23&31
	bltu x0, x12, .LBB0_5
.LBB0_3:                                //  %if.then2
	add x10, x0, -126
	sll x11, x11, 8&31
	bge x0, x11, .LBB0_7
.LBB0_4:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x10, x10, -1
	sll x11, x11, 1&31
	blt x0, x11, .LBB0_4
	jal x0, .LBB0_7
.LBB0_1:
	lui x10, %hi( -2147483647 )
	add x10, x10, %lo( -2147483647 )
	jr ra
.LBB0_5:                                //  %if.else
	add x11, x0, 254
	bltu x11, x12, .LBB0_7
.LBB0_6:                                //  %if.else7
	add x10, x12, -127
.LBB0_7:                                //  %cleanup
	jr ra
.Lfunc_end0:
	.size	ilogbf, .Lfunc_end0-ilogbf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
