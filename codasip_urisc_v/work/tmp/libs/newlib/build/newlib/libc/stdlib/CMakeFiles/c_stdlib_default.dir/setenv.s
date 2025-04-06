	.text
	.file	"setenv.c"
	.globl	setenv                  //  -- Begin function setenv
	.type	setenv,@function
setenv:                                 //  @setenv
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x13, x12
	mv x12, x11
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	j _setenv_r
.Lfunc_end0:
	.size	setenv, .Lfunc_end0-setenv
	.cfi_endproc
                                        //  -- End function
	.globl	unsetenv                //  -- Begin function unsetenv
	.type	unsetenv,@function
unsetenv:                               //  @unsetenv
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	j _unsetenv_r
.Lfunc_end1:
	.size	unsetenv, .Lfunc_end1-unsetenv
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
