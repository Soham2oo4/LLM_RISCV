	.text
	.file	"mstats.c"
	.globl	mallinfo                //  -- Begin function mallinfo
	.type	mallinfo,@function
mallinfo:                               //  @mallinfo
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x11, %hi( _impure_ptr )
	add x11, x11, %lo( _impure_ptr )
	lw x11, 0 ( x11 )
	j _mallinfo_r
.Lfunc_end0:
	.size	mallinfo, .Lfunc_end0-mallinfo
	.cfi_endproc
                                        //  -- End function
	.globl	malloc_stats            //  -- Begin function malloc_stats
	.type	malloc_stats,@function
malloc_stats:                           //  @malloc_stats
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	j _malloc_stats_r
.Lfunc_end1:
	.size	malloc_stats, .Lfunc_end1-malloc_stats
	.cfi_endproc
                                        //  -- End function
	.globl	mallopt                 //  -- Begin function mallopt
	.type	mallopt,@function
mallopt:                                //  @mallopt
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x12, x11
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	j _mallopt_r
.Lfunc_end2:
	.size	mallopt, .Lfunc_end2-mallopt
	.cfi_endproc
                                        //  -- End function
	.globl	_mstats_r               //  -- Begin function _mstats_r
	.type	_mstats_r,@function
_mstats_r:                              //  @_mstats_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -8
	mv fp, x10
	lw x10, 12 ( fp )
	lui x12, %hi( .str )
	add x12, x12, %lo( .str )
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x12, 4 ( sp )
	sw x11, 8 ( sp )
	sw x10, 0 ( sp )
	jal fiprintf
	mv x10, fp
	lw fp, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	j _malloc_stats_r
.Lfunc_end3:
	.size	_mstats_r, .Lfunc_end3-_mstats_r
	.cfi_endproc
                                        //  -- End function
	.globl	mstats                  //  -- Begin function mstats
	.type	mstats,@function
mstats:                                 //  @mstats
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	lui x11, %hi( _impure_ptr )
	add x11, x11, %lo( _impure_ptr )
	sw fp, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -8
	lw fp, 0 ( x11 )
	lui x12, %hi( .str )
	add x12, x12, %lo( .str )
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	lw x11, 12 ( fp )
	sw x12, 4 ( sp )
	sw x10, 8 ( sp )
	sw x11, 0 ( sp )
	jal fiprintf
	mv x10, fp
	lw fp, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	j _malloc_stats_r
.Lfunc_end4:
	.size	mstats, .Lfunc_end4-mstats
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"Memory allocation statistics %s\n"
	.size	.str, 33


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
