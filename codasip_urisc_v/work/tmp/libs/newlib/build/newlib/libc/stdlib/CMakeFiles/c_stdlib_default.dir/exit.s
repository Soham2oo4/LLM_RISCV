	.text
	.file	"exit.c"
	.globl	exit                    //  -- Begin function exit
	.type	exit,@function
exit:                                   //  @exit
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x11, x0
	mv fp, x10
	jal __call_exitprocs
	lui x10, %hi( _global_impure_ptr )
	add x10, x10, %lo( _global_impure_ptr )
	lw x10, 0 ( x10 )
	lw x11, 60 ( x10 )
	beq x0, x11, .LBB0_2
.LBB0_1:                                //  %if.then
	call.reg x11
.LBB0_2:                                //  %if.end
	mv x10, fp
	jal _exit
.Lfunc_end0:
	.size	exit, .Lfunc_end0-exit
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
