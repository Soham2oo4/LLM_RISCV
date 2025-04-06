	.text
	.file	"wcstombs.c"
	.globl	wcstombs                //  -- Begin function wcstombs
	.type	wcstombs,@function
wcstombs:                               //  @wcstombs
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x13, x10
	mv x10, x0
	beq x0, x12, .LBB0_3
.LBB0_1:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x15, 0 ( x11 )
	add x14, x10, x13
	sb x15, 0 ( x14 )
	and x14, x15, 255
	beq x0, x14, .LBB0_3
.LBB0_2:                                //  %if.end
                                        //    in Loop: Header=BB0_1 Depth=1
	add x11, x11, 4
	add x10, x10, 1
	bne x12, x10, .LBB0_1
.LBB0_3:                                //  %if.end8
	jr ra
.Lfunc_end0:
	.size	wcstombs, .Lfunc_end0-wcstombs
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
