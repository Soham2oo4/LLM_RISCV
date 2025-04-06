	.text
	.file	"mallstatsr.c"
	.globl	_malloc_stats_r         //  -- Begin function _malloc_stats_r
	.type	_malloc_stats_r,@function
_malloc_stats_r:                        //  @_malloc_stats_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -80
	.cfi_adjust_cfa_offset 80
	mv x11, x10
	add x10, sp, 28
	sw ra, 76 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 72 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 68 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -12
	jal _mallinfo_r
	lui x10, %hi( _impure_ptr )
	add fp, x10, %lo( _impure_ptr )
	lw x10, 0 ( fp )
	lui x11, %hi( __malloc_current_mallinfo )
	add x9, x11, %lo( __malloc_current_mallinfo )
	lw x11, 0 ( x9 )
	lw x10, 12 ( x10 )
	lui x12, %hi( .str )
	add x12, x12, %lo( .str )
	sw x12, 4 ( sp )
	sw x11, 8 ( sp )
	sw x10, 0 ( sp )
	jal fiprintf
	lw x10, 0 ( fp )
	lw x11, 0 ( x9 )
	lui x12, %hi( .str.1 )
	add x12, x12, %lo( .str.1 )
	lw x10, 12 ( x10 )
	sw x12, 4 ( sp )
	sw x11, 8 ( sp )
	sw x10, 0 ( sp )
	jal fiprintf
	lw x10, 0 ( fp )
	lw x11, 28 ( x9 )
	lui x12, %hi( .str.2 )
	add x12, x12, %lo( .str.2 )
	lw x10, 12 ( x10 )
	sw x12, 4 ( sp )
	sw x11, 8 ( sp )
	sw x10, 0 ( sp )
	jal fiprintf
	lw fp, 68 ( sp )                //  4-byte Folded Reload
	lw x9, 72 ( sp )                //  4-byte Folded Reload
	lw ra, 76 ( sp )                //  4-byte Folded Reload
	add sp, sp, 80
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_malloc_stats_r, .Lfunc_end0-_malloc_stats_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"max system bytes = %10u\n"
	.size	.str, 25

	.address_space	0
	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"system bytes     = %10u\n"
	.size	.str.1, 25

	.address_space	0
	.type	.str.2,@object          //  @.str.2
.str.2:
	.asciz	"in use bytes     = %10u\n"
	.size	.str.2, 25


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
