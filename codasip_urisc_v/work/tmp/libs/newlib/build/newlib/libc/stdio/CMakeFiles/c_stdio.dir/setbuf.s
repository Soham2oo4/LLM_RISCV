	.text
	.file	"setbuf.c"
	.globl	setbuf                  //  -- Begin function setbuf
	.type	setbuf,@function
setbuf:                                 //  @setbuf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	seqz x12, x11
	sll x12, x12, 1&31
	add x13, x0, 1024
	j setvbuf
.Lfunc_end0:
	.size	setbuf, .Lfunc_end0-setbuf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
