	.text
	.file	"clog.c"
	.globl	clog                    //  -- Begin function clog
	.type	clog,@function
clog:                                   //  @clog
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -144
	.cfi_adjust_cfa_offset 144
	sw x21, 120 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 116 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	lw x21, 4 ( x11 )
	lw x22, 8 ( x11 )
	sw x23, 112 ( sp )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 108 ( sp )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	lw x23, 12 ( x11 )
	lw x24, 0 ( x11 )
	sw fp, 104 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -40
	mv fp, x10
	add x10, sp, 88
	sw x21, 4 ( x10 )
	sw x22, 8 ( x10 )
	add x10, sp, 40
	sw ra, 140 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 136 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 132 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 128 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 124 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x22, 8 ( x10 )
	sw x21, 4 ( x10 )
	sw x24, 88 ( sp )
	sw x23, 100 ( sp )
	sw x23, 52 ( sp )
	sw x24, 40 ( sp )
	jal cabs
	jal log
	mv x9, x10
	add x10, sp, 72
	sw x21, 4 ( x10 )
	sw x22, 8 ( x10 )
	add x10, sp, 24
	mv x18, x11
	sw x21, 4 ( x10 )
	sw x22, 8 ( x10 )
	sw x24, 72 ( sp )
	sw x23, 84 ( sp )
	sw x24, 24 ( sp )
	sw x23, 36 ( sp )
	jal cimag
	mv x19, x10
	add x10, sp, 56
	sw x21, 4 ( x10 )
	sw x22, 8 ( x10 )
	add x10, sp, 8
	mv x20, x11
	sw x21, 4 ( x10 )
	sw x22, 8 ( x10 )
	sw x24, 56 ( sp )
	sw x24, 8 ( sp )
	sw x23, 68 ( sp )
	sw x23, 20 ( sp )
	jal creal
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal atan2
	mv x12, x0
	mv x13, x12
	sw x11, 12 ( fp )
	sw x10, 8 ( fp )
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x18
	jal __adddf3
	sw x11, 4 ( fp )
	sw x10, 0 ( fp )
	lw fp, 104 ( sp )               //  4-byte Folded Reload
	lw x24, 108 ( sp )              //  4-byte Folded Reload
	lw x23, 112 ( sp )              //  4-byte Folded Reload
	lw x22, 116 ( sp )              //  4-byte Folded Reload
	lw x21, 120 ( sp )              //  4-byte Folded Reload
	lw x20, 124 ( sp )              //  4-byte Folded Reload
	lw x19, 128 ( sp )              //  4-byte Folded Reload
	lw x18, 132 ( sp )              //  4-byte Folded Reload
	lw x9, 136 ( sp )               //  4-byte Folded Reload
	lw ra, 140 ( sp )               //  4-byte Folded Reload
	add sp, sp, 144
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	clog, .Lfunc_end0-clog
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
