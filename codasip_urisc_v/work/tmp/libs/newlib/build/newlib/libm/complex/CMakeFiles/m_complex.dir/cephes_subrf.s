	.text
	.file	"cephes_subrf.c"
	.globl	_cchshf                 //  -- Begin function _cchshf
	.type	_cchshf,@function
_cchshf:                                //  @_cchshf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -24
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	mv x9, x12
	mv fp, x11
	mv x18, x10
	jal fabsf
	lui x11, (1056964608>>12)&1048575
	jal __lesf2
	bge x0, x10, .LBB0_1
.LBB0_2:                                //  %if.else
	mv x10, x18
	jal expf
	mv x18, x10
	lui x19, (1056964608>>12)&1048575
	mv x10, x19
	mv x11, x18
	jal __divsf3
	mv x20, x10
	mv x10, x18
	mv x11, x19
	jal __mulsf3
	mv x11, x20
	mv x18, x10
	jal __subsf3
	sw x10, 0 ( x9 )
	mv x10, x18
	mv x11, x20
	jal __addsf3
	sw x10, 0 ( fp )
	jal x0, .LBB0_3
.LBB0_1:                                //  %if.then
	mv x10, x18
	jal coshf
	sw x10, 0 ( fp )
	mv x10, x18
	jal sinhf
	sw x10, 0 ( x9 )
.LBB0_3:                                //  %if.end
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_cchshf, .Lfunc_end0-_cchshf
	.cfi_endproc
                                        //  -- End function
	.globl	_redupif                //  -- Begin function _redupif
	.type	_redupif,@function
_redupif:                               //  @_redupif
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lui x10, %hi( 1078530011 )
	add x11, x10, %lo( 1078530011 )
	mv x10, x9
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -24
	jal __divsf3
	mv fp, x0
	mv x11, fp
	mv x18, x10
	jal __gesf2
	blt x10, fp, .LBB1_1
.LBB1_2:                                //  %entry
	lui x11, (1056964608>>12)&1048575
	jal x0, .LBB1_3
.LBB1_1:
	lui x10, %hi( -1090519040 )
	add x11, x10, %lo( -1090519040 )
.LBB1_3:                                //  %entry
	mv x10, x18
	jal __addsf3
	jal __fixsfsi
	jal __floatsisf
	mv x18, x10
	mv x10, x9
	jal __extendsfdf2
	mv x9, x10
	mv x10, x18
	mv x19, x11
	jal __extendsfdf2
	mv x18, x10
	lui x10, %hi( -1073143808 )
	add x13, x10, %lo( -1073143808 )
	mv x10, x18
	mv x12, fp
	mv x20, x11
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x19
	jal __adddf3
	mv x9, x10
	lui x10, %hi( -1085295616 )
	mv x19, x11
	add x13, x10, %lo( -1085295616 )
	mv x10, x18
	mv x11, x20
	mv x12, fp
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x19
	jal __adddf3
	mv fp, x10
	lui x10, %hi( 407279769 )
	add x12, x10, %lo( 407279769 )
	lui x10, %hi( -1098628051 )
	mv x9, x11
	add x13, x10, %lo( -1098628051 )
	mv x10, x18
	mv x11, x20
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x9
	jal __adddf3
	jal __truncdfsf2
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
	.size	_redupif, .Lfunc_end1-_redupif
	.cfi_endproc
                                        //  -- End function
	.globl	_ctansf                 //  -- Begin function _ctansf
	.type	_ctansf,@function
_ctansf:                                //  @_ctansf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -96
	.cfi_adjust_cfa_offset 96
	sw x19, 80 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 76 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	lw x19, 4 ( x10 )
	lw x20, 0 ( x10 )
	add x10, sp, 24
	sw ra, 92 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 88 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 84 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x21, 72 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 68 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 64 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 60 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 56 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw fp, 48 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -48
	sw x19, 44 ( sp )
	sw x20, 40 ( sp )
	sw x20, 24 ( sp )
	sw x19, 28 ( sp )
	jal crealf
	mv x11, x10
	jal __addsf3
	jal fabsf
	mv x9, x10
	lui x10, %hi( 1078530011 )
	add x11, x10, %lo( 1078530011 )
	mv x10, x9
	jal __divsf3
	mv fp, x0
	mv x11, fp
	mv x18, x10
	jal __gesf2
	blt x10, fp, .LBB2_1
.LBB2_2:                                //  %entry
	lui x11, (1056964608>>12)&1048575
	jal x0, .LBB2_3
.LBB2_1:
	lui x10, %hi( -1090519040 )
	add x11, x10, %lo( -1090519040 )
.LBB2_3:                                //  %entry
	mv x10, x18
	sw x20, 32 ( sp )
	sw x20, 16 ( sp )
	sw x19, 36 ( sp )
	sw x19, 20 ( sp )
	jal __addsf3
	jal __fixsfsi
	jal __floatsisf
	mv x18, x10
	mv x10, x9
	jal __extendsfdf2
	mv x9, x10
	mv x10, x18
	mv x19, x11
	jal __extendsfdf2
	mv x18, x10
	lui x10, %hi( -1073143808 )
	add x13, x10, %lo( -1073143808 )
	mv x10, x18
	mv x12, fp
	mv x20, x11
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x19
	jal __adddf3
	mv x9, x10
	lui x10, %hi( -1085295616 )
	mv x19, x11
	add x13, x10, %lo( -1085295616 )
	mv x10, x18
	mv x11, x20
	mv x12, fp
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x19
	jal __adddf3
	mv x9, x10
	lui x10, %hi( 407279769 )
	add x12, x10, %lo( 407279769 )
	lui x10, %hi( -1098628051 )
	mv x19, x11
	add x13, x10, %lo( -1098628051 )
	mv x10, x18
	mv x11, x20
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x19
	jal __adddf3
	jal __truncdfsf2
	mv x11, x10
	jal __mulsf3
	mv x9, x10
	add x10, sp, 16
	jal cimagf
	mv x11, x10
	jal __addsf3
	jal fabsf
	mv x11, x10
	jal __mulsf3
	mv x18, x10
	lui x10, %hi( 698640683 )
	lui x19, (1065353216>>12)&1048575
	add x20, x10, %lo( 698640683 )
	lui x10, %hi( 1046485803 )
	mv x25, x19
	mv x22, x19
	add x21, x10, %lo( 1046485803 )
	mv x23, x19
	mv x24, fp
.LBB2_4:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, fp
	mv x11, x19
	jal __addsf3
	mv fp, x10
	mv x10, x25
	mv x11, fp
	jal __mulsf3
	mv x25, x10
	mv x10, fp
	mv x11, x19
	jal __addsf3
	mv fp, x10
	mv x10, x25
	mv x11, fp
	jal __mulsf3
	mv x25, x10
	mv x10, x9
	mv x11, x23
	jal __mulsf3
	mv x23, x10
	mv x10, x18
	mv x11, x22
	jal __mulsf3
	mv x22, x10
	mv x10, x23
	mv x11, x22
	jal __addsf3
	mv x11, x25
	jal __divsf3
	mv x11, x10
	mv x10, x24
	jal __addsf3
	mv x24, x10
	mv x10, fp
	mv x11, x19
	jal __addsf3
	mv fp, x10
	mv x10, x25
	mv x11, fp
	jal __mulsf3
	mv x25, x10
	mv x10, fp
	mv x11, x19
	jal __addsf3
	mv fp, x10
	mv x10, x25
	mv x11, fp
	jal __mulsf3
	mv x25, x10
	mv x10, x9
	mv x11, x23
	jal __mulsf3
	mv x23, x10
	mv x10, x18
	mv x11, x22
	jal __mulsf3
	mv x11, x23
	mv x22, x10
	jal __subsf3
	mv x11, x25
	jal __divsf3
	mv x26, x10
	mv x10, x24
	mv x11, x26
	jal __addsf3
	mv x24, x10
	mv x10, x26
	mv x11, x24
	jal __divsf3
	jal fabsf
	jal __extendsfdf2
	mv x12, x20
	mv x13, x21
	jal __gtdf2
	blt x0, x10, .LBB2_4
.LBB2_5:                                //  %do.end
	mv x10, x24
	lw fp, 48 ( sp )                //  4-byte Folded Reload
	lw x26, 52 ( sp )               //  4-byte Folded Reload
	lw x25, 56 ( sp )               //  4-byte Folded Reload
	lw x24, 60 ( sp )               //  4-byte Folded Reload
	lw x23, 64 ( sp )               //  4-byte Folded Reload
	lw x22, 68 ( sp )               //  4-byte Folded Reload
	lw x21, 72 ( sp )               //  4-byte Folded Reload
	lw x20, 76 ( sp )               //  4-byte Folded Reload
	lw x19, 80 ( sp )               //  4-byte Folded Reload
	lw x18, 84 ( sp )               //  4-byte Folded Reload
	lw x9, 88 ( sp )                //  4-byte Folded Reload
	lw ra, 92 ( sp )                //  4-byte Folded Reload
	add sp, sp, 96
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end2:
	.size	_ctansf, .Lfunc_end2-_ctansf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
