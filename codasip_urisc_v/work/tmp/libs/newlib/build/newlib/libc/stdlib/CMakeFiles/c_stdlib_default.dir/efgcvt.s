	.text
	.file	"efgcvt.c"
	.globl	fcvt                    //  -- Begin function fcvt
	.type	fcvt,@function
fcvt:                                   //  @fcvt
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x15, x0
	j fcvtbuf
.Lfunc_end0:
	.size	fcvt, .Lfunc_end0-fcvt
	.cfi_endproc
                                        //  -- End function
	.globl	fcvtf                   //  -- Begin function fcvtf
	.type	fcvtf,@function
fcvtf:                                  //  @fcvtf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	mv fp, x13
	mv x9, x12
	mv x18, x11
	jal __extendsfdf2
	mv x12, x18
	mv x13, x9
	mv x14, fp
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	mv x15, x0
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	j fcvtbuf
.Lfunc_end1:
	.size	fcvtf, .Lfunc_end1-fcvtf
	.cfi_endproc
                                        //  -- End function
	.globl	gcvt                    //  -- Begin function gcvt
	.type	gcvt,@function
gcvt:                                   //  @gcvt
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x0
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -24
	mv fp, x13
	mv x18, x12
	mv x12, x9
	mv x13, x9
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	mv x19, x11
	mv x20, x10
	jal __ltdf2
	bge x10, x0, .LBB2_1
.LBB2_2:                                //  %if.then
	add x10, x0, 45
	add x18, x18, -1
	add x14, fp, 1
	sb x10, 0 ( fp )
	jal x0, .LBB2_3
.LBB2_1:
	mv x14, fp
.LBB2_3:                                //  %if.end
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	add x15, x0, 103
	mv x11, x20
	mv x12, x19
	mv x13, x18
	mv x16, x9
	jal _gcvt
	beq x10, x9, .LBB2_5
.LBB2_4:                                //  %if.end
	mv x9, fp
.LBB2_5:                                //  %if.end
	mv x10, x9
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end2:
	.size	gcvt, .Lfunc_end2-gcvt
	.cfi_endproc
                                        //  -- End function
	.globl	gcvtf                   //  -- Begin function gcvtf
	.type	gcvtf,@function
gcvtf:                                  //  @gcvtf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x0
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x11
	mv x11, x9
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -24
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	mv fp, x12
	mv x19, x10
	jal __ltsf2
	mv x20, x10
	mv x10, x19
	jal __extendsfdf2
	mv x12, x10
	mv x13, x11
	bge x20, x0, .LBB3_1
.LBB3_2:                                //  %if.then.i
	add x10, x0, 45
	add x18, x18, -1
	add x14, fp, 1
	sb x10, 0 ( fp )
	jal x0, .LBB3_3
.LBB3_1:
	mv x14, fp
.LBB3_3:                                //  %gcvt.exit
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	mv x11, x12
	mv x12, x13
	add x15, x0, 103
	mv x13, x18
	mv x16, x9
	jal _gcvt
	beq x10, x9, .LBB3_5
.LBB3_4:                                //  %gcvt.exit
	mv x9, fp
.LBB3_5:                                //  %gcvt.exit
	mv x10, x9
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end3:
	.size	gcvtf, .Lfunc_end3-gcvtf
	.cfi_endproc
                                        //  -- End function
	.globl	ecvt                    //  -- Begin function ecvt
	.type	ecvt,@function
ecvt:                                   //  @ecvt
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x15, x0
	j ecvtbuf
.Lfunc_end4:
	.size	ecvt, .Lfunc_end4-ecvt
	.cfi_endproc
                                        //  -- End function
	.globl	ecvtf                   //  -- Begin function ecvtf
	.type	ecvtf,@function
ecvtf:                                  //  @ecvtf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	mv fp, x13
	mv x9, x12
	mv x18, x11
	jal __extendsfdf2
	mv x12, x18
	mv x13, x9
	mv x14, fp
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	mv x15, x0
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	j ecvtbuf
.Lfunc_end5:
	.size	ecvtf, .Lfunc_end5-ecvtf
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
