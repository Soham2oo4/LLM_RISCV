	.text
	.file	"mbtowc.c"
	.globl	mbtowc                  //  -- Begin function mbtowc
	.type	mbtowc,@function
mbtowc:                                 //  @mbtowc
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	beq x0, x11, .LBB0_1
.LBB0_2:                                //  %if.end
	beq x0, x12, .LBB0_3
.LBB0_4:                                //  %if.end3
	.cfi_def_cfa 2, 0
	lb x12, 0 ( x11 )
	and x11, x12, 255
	beq x0, x10, .LBB0_6
.LBB0_5:                                //  %if.then4
	sw x12, 0 ( x10 )
.LBB0_6:                                //  %if.end5
	snez x10, x11
	jr ra
.LBB0_1:
	mv x10, x0
	jr ra
.LBB0_3:
	add x10, x0, -1
	jr ra
.Lfunc_end0:
	.size	mbtowc, .Lfunc_end0-mbtowc
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
