	.text
	.file	"fcloseall.c"
	.globl	_fcloseall_r            //  -- Begin function _fcloseall_r
	.type	_fcloseall_r,@function
_fcloseall_r:                           //  @_fcloseall_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x11, %hi( _fclose_r )
	add x11, x11, %lo( _fclose_r )
	j _fwalk_reent
.Lfunc_end0:
	.size	_fcloseall_r, .Lfunc_end0-_fcloseall_r
	.cfi_endproc
                                        //  -- End function
	.globl	fcloseall               //  -- Begin function fcloseall
	.type	fcloseall,@function
fcloseall:                              //  @fcloseall
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x10, %hi( _global_impure_ptr )
	add x10, x10, %lo( _global_impure_ptr )
	lw x10, 0 ( x10 )
	lui x11, %hi( _fclose_r )
	add x11, x11, %lo( _fclose_r )
	j _fwalk_reent
.Lfunc_end1:
	.size	fcloseall, .Lfunc_end1-fcloseall
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
