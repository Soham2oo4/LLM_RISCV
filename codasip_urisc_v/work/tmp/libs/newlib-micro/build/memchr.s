	.text
	.file	"memchr.c"
	.globl	memchr                  //  -- Begin function memchr
	.type	memchr,@function
memchr:                                 //  @memchr
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x13, x10
	mv x10, x0
	beq x0, x12, .LBB0_5
.LBB0_1:                                //  %while.body.lr.ph
	and x11, x11, 255
.LBB0_2:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lbu x14, 0 ( x13 )
	beq x14, x11, .LBB0_3
.LBB0_4:                                //  %if.end
                                        //    in Loop: Header=BB0_2 Depth=1
	add x12, x12, -1
	add x13, x13, 1
	bltu x0, x12, .LBB0_2
.LBB0_5:                                //  %cleanup
	jr ra
.LBB0_3:
	mv x10, x13
	jr ra
.Lfunc_end0:
	.size	memchr, .Lfunc_end0-memchr
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
