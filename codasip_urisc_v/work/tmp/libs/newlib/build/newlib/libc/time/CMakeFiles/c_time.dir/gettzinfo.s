	.text
	.file	"gettzinfo.c"
	.globl	__gettzinfo             //  -- Begin function __gettzinfo
	.type	__gettzinfo,@function
__gettzinfo:                            //  @__gettzinfo
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x10, %hi( tzinfo )
	add x10, x10, %lo( tzinfo )
	jr ra
.Lfunc_end0:
	.size	__gettzinfo, .Lfunc_end0-__gettzinfo
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	tzinfo,@object          //  @tzinfo
	.data
	.p2align	2
tzinfo:
	.long	1                       //  0x1
	.long	0                       //  0x0
	.byte	74                      //  0x4a
	.zero	3
	.long	0                       //  0x0
	.long	0                       //  0x0
	.long	0                       //  0x0
	.long	0                       //  0x0
	.quad	0                       //  0x0
	.long	0                       //  0x0
	.byte	74                      //  0x4a
	.zero	3
	.long	0                       //  0x0
	.long	0                       //  0x0
	.long	0                       //  0x0
	.long	0                       //  0x0
	.quad	0                       //  0x0
	.long	0                       //  0x0
	.size	tzinfo, 72


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
