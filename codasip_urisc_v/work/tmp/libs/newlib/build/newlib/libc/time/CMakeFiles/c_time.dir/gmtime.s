	.text
	.file	"gmtime.c"
	.globl	gmtime                  //  -- Begin function gmtime
	.type	gmtime,@function
gmtime:                                 //  @gmtime
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x11, %hi( _impure_ptr )
	add x11, x11, %lo( _impure_ptr )
	lw x11, 0 ( x11 )
	add x11, x11, 124
	j gmtime_r
.Lfunc_end0:
	.size	gmtime, .Lfunc_end0-gmtime
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
