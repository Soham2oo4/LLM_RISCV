	.text
	.file	"cephes_subr.c"
	.globl	_cchsh                  //  -- Begin function _cchsh
	.type	_cchsh,@function
_cchsh:                                 //  @_cchsh
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -36
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	mv x9, x13
	mv fp, x12
	mv x18, x11
	mv x19, x10
	jal fabs
	mv x12, x0
	lui x13, (1071644672>>12)&1048575
	jal __ledf2
	bge x0, x10, .LBB0_1
.LBB0_2:                                //  %if.else
	mv x10, x19
	mv x11, x18
	jal exp
	mv x18, x10
	mv x19, x11
	mv x20, x0
	lui x21, (1071644672>>12)&1048575
	mv x10, x20
	mv x11, x21
	mv x12, x18
	mv x13, x19
	jal __divdf3
	mv x22, x10
	mv x23, x11
	mv x10, x18
	mv x11, x19
	mv x12, x20
	mv x13, x21
	jal __muldf3
	mv x12, x22
	mv x13, x23
	mv x18, x10
	mv x19, x11
	jal __subdf3
	sw x11, 4 ( x9 )
	sw x10, 0 ( x9 )
	mv x10, x18
	mv x11, x19
	mv x12, x22
	mv x13, x23
	jal __adddf3
	sw x10, 0 ( fp )
	sw x11, 4 ( fp )
	jal x0, .LBB0_3
.LBB0_1:                                //  %if.then
	mv x10, x19
	mv x11, x18
	jal cosh
	sw x11, 4 ( fp )
	sw x10, 0 ( fp )
	mv x10, x19
	mv x11, x18
	jal sinh
	sw x11, 4 ( x9 )
	sw x10, 0 ( x9 )
.LBB0_3:                                //  %if.end
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x23, 16 ( sp )               //  4-byte Folded Reload
	lw x22, 20 ( sp )               //  4-byte Folded Reload
	lw x21, 24 ( sp )               //  4-byte Folded Reload
	lw x20, 28 ( sp )               //  4-byte Folded Reload
	lw x19, 32 ( sp )               //  4-byte Folded Reload
	lw x18, 36 ( sp )               //  4-byte Folded Reload
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	lw ra, 44 ( sp )                //  4-byte Folded Reload
	add sp, sp, 48
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_cchsh, .Lfunc_end0-_cchsh
	.cfi_endproc
                                        //  -- End function
	.globl	_redupi                 //  -- Begin function _redupi
	.type	_redupi,@function
_redupi:                                //  @_redupi
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lui x10, %hi( 1413754136 )
	add x12, x10, %lo( 1413754136 )
	lui x10, %hi( 1074340347 )
	add x13, x10, %lo( 1074340347 )
	mv x10, x9
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -24
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	mv fp, x11
	jal __divdf3
	mv x20, x0
	mv x13, x20
	mv x12, x20
	mv x18, x10
	mv x19, x11
	jal __gedf2
	blt x10, x20, .LBB1_1
.LBB1_2:                                //  %entry
	lui x13, (1071644672>>12)&1048575
	jal x0, .LBB1_3
.LBB1_1:
	lui x10, %hi( -1075838976 )
	add x13, x10, %lo( -1075838976 )
.LBB1_3:                                //  %entry
	mv x10, x18
	mv x11, x19
	mv x12, x20
	jal __adddf3
	jal __fixdfsi
	jal __floatsidf
	mv x18, x10
	lui x10, %hi( -1073143301 )
	add x13, x10, %lo( -1073143301 )
	lui x12, (1409286144>>12)&1048575
	mv x10, x18
	mv x19, x11
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, fp
	jal __adddf3
	mv fp, x10
	lui x10, %hi( -1105130682 )
	mv x9, x11
	add x13, x10, %lo( -1105130682 )
	lui x12, (268435456>>12)&1048575
	mv x10, x18
	mv x11, x19
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x9
	jal __adddf3
	mv fp, x10
	lui x10, %hi( 826654830 )
	add x12, x10, %lo( 826654830 )
	lui x10, %hi( -1133878685 )
	mv x9, x11
	add x13, x10, %lo( -1133878685 )
	mv x10, x18
	mv x11, x19
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x9
	jal __adddf3
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	_redupi, .Lfunc_end1-_redupi
	.cfi_endproc
                                        //  -- End function
	.globl	_ctans                  //  -- Begin function _ctans
	.type	_ctans,@function
_ctans:                                 //  @_ctans
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -160
	.cfi_adjust_cfa_offset 160
	sw x22, 132 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 128 ( sp )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 124 ( sp )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 120 ( sp )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	lw x22, 4 ( x10 )
	lw x24, 8 ( x10 )
	lw x23, 12 ( x10 )
	lw x25, 0 ( x10 )
	add x10, sp, 60
	add x11, sp, 92
	sw ra, 156 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 152 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 148 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 144 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 140 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 136 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x26, 116 ( sp )              //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 112 ( sp )              //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw fp, 108 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	sw x22, 4 ( x11 )
	sw x24, 8 ( x11 )
	sw x24, 8 ( x10 )
	sw x22, 4 ( x10 )
	sw x25, 92 ( sp )
	sw x23, 104 ( sp )
	sw x23, 72 ( sp )
	sw x25, 60 ( sp )
	jal creal
	mv x12, x10
	mv x13, x11
	jal __adddf3
	jal fabs
	mv x9, x10
	lui x10, %hi( 1413754136 )
	add x12, x10, %lo( 1413754136 )
	lui x10, %hi( 1074340347 )
	add x13, x10, %lo( 1074340347 )
	mv x10, x9
	mv x18, x11
	jal __divdf3
	mv x20, x0
	mv x13, x20
	mv x12, x20
	mv x19, x10
	mv x21, x11
	jal __gedf2
	blt x10, x20, .LBB2_1
.LBB2_2:                                //  %entry
	lui x13, (1071644672>>12)&1048575
	jal x0, .LBB2_3
.LBB2_1:
	lui x10, %hi( -1075838976 )
	add x13, x10, %lo( -1075838976 )
.LBB2_3:                                //  %entry
	add x10, sp, 76
	sw x22, 4 ( x10 )
	sw x24, 8 ( x10 )
	add fp, sp, 44
	mv x10, x19
	mv x11, x21
	mv x12, x20
	sw x22, 4 ( fp )
	sw x24, 8 ( fp )
	sw x25, 76 ( sp )
	sw x25, 44 ( sp )
	sw x23, 88 ( sp )
	sw x23, 56 ( sp )
	jal __adddf3
	jal __fixdfsi
	jal __floatsidf
	mv x19, x10
	lui x10, %hi( -1073143301 )
	add x13, x10, %lo( -1073143301 )
	lui x12, (1409286144>>12)&1048575
	mv x10, x19
	mv x21, x11
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x18
	jal __adddf3
	mv x9, x10
	lui x10, %hi( -1105130682 )
	mv x18, x11
	add x13, x10, %lo( -1105130682 )
	lui x12, (268435456>>12)&1048575
	mv x10, x19
	mv x11, x21
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x18
	jal __adddf3
	mv x9, x10
	lui x10, %hi( 826654830 )
	add x12, x10, %lo( 826654830 )
	lui x10, %hi( -1133878685 )
	mv x18, x11
	add x13, x10, %lo( -1133878685 )
	mv x10, x19
	mv x11, x21
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x18
	jal __adddf3
	mv x12, x10
	mv x13, x11
	jal __muldf3
	sw x10, 24 ( sp )               //  4-byte Folded Spill
	mv x10, fp
	sw x11, 20 ( sp )               //  4-byte Folded Spill
	jal cimag
	mv x12, x10
	mv x13, x11
	jal __adddf3
	jal fabs
	mv x12, x10
	mv x13, x11
	jal __muldf3
	sw x10, 40 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( 1084318799 )
	add x10, x10, %lo( 1084318799 )
	lui x27, (1072693248>>12)&1048575
	sw x10, 16 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( 1017099409 )
	add x10, x10, %lo( 1017099409 )
	mv x21, x27
	mv x25, x27
	mv x26, x20
	mv fp, x20
	mv x9, x20
	mv x19, x20
	mv x23, x20
	mv x24, x20
	sw x11, 36 ( sp )               //  4-byte Folded Spill
	sw x10, 12 ( sp )               //  4-byte Folded Spill
.LBB2_4:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	mv x12, x0
	lui x13, (1072693248>>12)&1048575
	mv x10, x9
	mv x11, x20
	mv x22, x12
	mv x18, x13
	jal __adddf3
	mv x9, x10
	mv x20, x11
	mv x10, x19
	mv x11, x21
	mv x12, x9
	mv x13, x20
	jal __muldf3
	mv x19, x10
	mv x21, x11
	mv x10, x9
	mv x11, x20
	mv x12, x22
	mv x13, x18
	jal __adddf3
	mv x9, x10
	mv x20, x11
	mv x10, x19
	mv x11, x21
	mv x12, x9
	mv x13, x20
	jal __muldf3
	lw x18, 24 ( sp )               //  4-byte Folded Reload
	lw x22, 20 ( sp )               //  4-byte Folded Reload
	mv x19, x10
	mv x21, x11
	mv x10, x18
	mv x11, x22
	mv x12, x26
	mv x13, x27
	jal __muldf3
	mv x26, x10
	mv x27, x11
	lw x10, 40 ( sp )               //  4-byte Folded Reload
	lw x11, 36 ( sp )               //  4-byte Folded Reload
	mv x12, fp
	mv x13, x25
	jal __muldf3
	mv fp, x10
	mv x25, x11
	mv x10, x26
	mv x11, x27
	mv x12, fp
	mv x13, x25
	jal __adddf3
	mv x12, x19
	mv x13, x21
	jal __divdf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x24
	jal __adddf3
	mv x24, x0
	lui x23, (1072693248>>12)&1048575
	sw x10, 32 ( sp )               //  4-byte Folded Spill
	sw x11, 28 ( sp )               //  4-byte Folded Spill
	mv x10, x9
	mv x11, x20
	mv x12, x24
	mv x13, x23
	jal __adddf3
	mv x9, x10
	mv x20, x11
	mv x10, x19
	mv x11, x21
	mv x12, x9
	mv x13, x20
	jal __muldf3
	mv x19, x10
	mv x21, x11
	mv x10, x9
	mv x11, x20
	mv x12, x24
	mv x13, x23
	jal __adddf3
	mv x9, x10
	mv x20, x11
	mv x10, x19
	mv x11, x21
	mv x12, x9
	mv x13, x20
	jal __muldf3
	mv x19, x10
	mv x21, x11
	mv x10, x18
	mv x11, x22
	mv x12, x26
	mv x13, x27
	jal __muldf3
	mv x26, x10
	mv x27, x11
	lw x10, 40 ( sp )               //  4-byte Folded Reload
	lw x11, 36 ( sp )               //  4-byte Folded Reload
	mv x12, fp
	mv x13, x25
	jal __muldf3
	mv x12, x26
	mv x13, x27
	mv fp, x10
	mv x25, x11
	jal __subdf3
	mv x12, x19
	mv x13, x21
	jal __divdf3
	mv x22, x10
	mv x18, x11
	lw x10, 32 ( sp )               //  4-byte Folded Reload
	lw x11, 28 ( sp )               //  4-byte Folded Reload
	mv x12, x22
	mv x13, x18
	jal __adddf3
	mv x23, x10
	mv x24, x11
	mv x10, x22
	mv x11, x18
	mv x12, x23
	mv x13, x24
	jal __divdf3
	jal fabs
	lw x12, 16 ( sp )               //  4-byte Folded Reload
	lw x13, 12 ( sp )               //  4-byte Folded Reload
	jal __gtdf2
	blt x0, x10, .LBB2_4
.LBB2_5:                                //  %do.end
	mv x10, x23
	mv x11, x24
	lw fp, 108 ( sp )               //  4-byte Folded Reload
	lw x27, 112 ( sp )              //  4-byte Folded Reload
	lw x26, 116 ( sp )              //  4-byte Folded Reload
	lw x25, 120 ( sp )              //  4-byte Folded Reload
	lw x24, 124 ( sp )              //  4-byte Folded Reload
	lw x23, 128 ( sp )              //  4-byte Folded Reload
	lw x22, 132 ( sp )              //  4-byte Folded Reload
	lw x21, 136 ( sp )              //  4-byte Folded Reload
	lw x20, 140 ( sp )              //  4-byte Folded Reload
	lw x19, 144 ( sp )              //  4-byte Folded Reload
	lw x18, 148 ( sp )              //  4-byte Folded Reload
	lw x9, 152 ( sp )               //  4-byte Folded Reload
	lw ra, 156 ( sp )               //  4-byte Folded Reload
	add sp, sp, 160
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end2:
	.size	_ctans, .Lfunc_end2-_ctans
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
