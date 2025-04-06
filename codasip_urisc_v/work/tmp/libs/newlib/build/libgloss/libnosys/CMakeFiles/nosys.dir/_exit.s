	.text
	.file	"_exit.c"
	.globl	_exit                   //  -- Begin function _exit
	.type	_exit,@function
_exit:                                  //  @_exit
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
.LBB0_1:                                //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	j .LBB0_1
.Lfunc_end0:
	.size	_exit, .Lfunc_end0-_exit
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
