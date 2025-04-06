	.text
	.file	"findfp.c"
	.globl	__sfmoreglue            //  -- Begin function __sfmoreglue
	.type	__sfmoreglue,@function
__sfmoreglue:                           //  @__sfmoreglue
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv fp, x10
	add x11, x0, 104
	mv x10, x9
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	jal __mulsi3
	mv x18, x10
	add x11, x18, 12
	mv x10, fp
	jal _malloc_r
	mv fp, x10
	beq x0, fp, .LBB0_1
.LBB0_2:                                //  %if.end
	add x10, fp, 12
	mv x11, x0
	mv x12, x18
	sw x9, 4 ( fp )
	sw x10, 8 ( fp )
	sw x0, 0 ( fp )
	jal memset
	jal x0, .LBB0_3
.LBB0_1:
	mv fp, x0
.LBB0_3:                                //  %cleanup
	mv x10, fp
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__sfmoreglue, .Lfunc_end0-__sfmoreglue
	.cfi_endproc
                                        //  -- End function
	.globl	__sfp                   //  -- Begin function __sfp
	.type	__sfp,@function
__sfp:                                  //  @__sfp
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -32
	mv fp, x10
	lui x10, %hi( _global_impure_ptr )
	add x10, x10, %lo( _global_impure_ptr )
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	lw x9, 0 ( x10 )
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	lw x10, 56 ( x9 )
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 22, -28
	bltu x0, x10, .LBB1_2
.LBB1_1:                                //  %if.then
	mv x10, x9
	jal __sinit
.LBB1_2:                                //  %if.end
	add x20, x9, 736
	add x18, x0, 428
	add x21, x0, 4
	mv x9, x0
	add x19, x0, 416
.LBB1_3:                                //  %for.cond
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_5 Depth 2
                                        //      Child Loop BB1_7 Depth 2
	mv x22, x20
	lw x10, 4 ( x22 )
	bge x0, x10, .LBB1_7
.LBB1_4:                                //  %for.body.preheader
                                        //    in Loop: Header=BB1_3 Depth=1
	lw x20, 8 ( x22 )
.LBB1_5:                                //  %for.body
                                        //    Parent Loop BB1_3 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lhu x11, 12 ( x20 )
	beq x0, x11, .LBB1_11
.LBB1_6:                                //  %for.inc
                                        //    in Loop: Header=BB1_5 Depth=2
	add x10, x10, -1
	add x20, x20, 104
	blt x0, x10, .LBB1_5
.LBB1_7:                                //  %for.end
                                        //    Parent Loop BB1_3 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x20, 0 ( x22 )
	bltu x0, x20, .LBB1_3
.LBB1_8:                                //  %land.lhs.true
                                        //    in Loop: Header=BB1_7 Depth=2
	mv x10, fp
	mv x11, x18
	jal _malloc_r
	mv x20, x10
	beq x0, x20, .LBB1_9
.LBB1_10:                               //  %__sfmoreglue.exit
                                        //    in Loop: Header=BB1_7 Depth=2
	add x10, x20, 12
	mv x11, x9
	mv x12, x19
	sw x21, 4 ( x20 )
	sw x10, 8 ( x20 )
	sw x0, 0 ( x20 )
	jal memset
	sw x20, 0 ( x22 )
	mv x22, x20
	lw x10, 4 ( x22 )
	blt x0, x10, .LBB1_4
	jal x0, .LBB1_7
.LBB1_11:                               //  %found
	lui x10, %hi( -65535 )
	add x10, x10, %lo( -65535 )
	sw x10, 12 ( x20 )
	add x10, x20, 92
	mv x11, x0
	add x12, x0, 8
	sw x0, 100 ( x20 )
	sw x0, 8 ( x20 )
	sw x0, 0 ( x20 )
	sw x0, 24 ( x20 )
	sw x0, 20 ( x20 )
	sw x0, 16 ( x20 )
	sw x0, 4 ( x20 )
	jal memset
	mv x9, x20
	sw x0, 72 ( x20 )
	sw x0, 68 ( x20 )
	sw x0, 52 ( x20 )
	sw x0, 48 ( x20 )
.LBB1_12:                               //  %cleanup
	mv x10, x9
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x22, 4 ( sp )                //  4-byte Folded Reload
	lw x21, 8 ( sp )                //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.LBB1_9:                                //  %__sfmoreglue.exit.thread
	add x10, x0, 12
	sw x10, 0 ( fp )
	sw x0, 0 ( x22 )
	jal x0, .LBB1_12
.Lfunc_end1:
	.size	__sfp, .Lfunc_end1-__sfp
	.cfi_endproc
                                        //  -- End function
	.globl	__sfp_lock_acquire      //  -- Begin function __sfp_lock_acquire
	.type	__sfp_lock_acquire,@function
__sfp_lock_acquire:                     //  @__sfp_lock_acquire
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end2:
	.size	__sfp_lock_acquire, .Lfunc_end2-__sfp_lock_acquire
	.cfi_endproc
                                        //  -- End function
	.globl	__sinit                 //  -- Begin function __sinit
	.type	__sinit,@function
__sinit:                                //  @__sinit
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -40
	mv fp, x10
	lw x10, 56 ( fp )
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	bltu x0, x10, .LBB3_2
.LBB3_1:                                //  %if.end
	add x10, fp, 748
	lw x19, 4 ( fp )
	sw x10, 744 ( fp )
	add x10, x0, 3
	sw x10, 740 ( fp )
	lui x10, %hi( _cleanup_r )
	add x10, x10, %lo( _cleanup_r )
	sw x10, 60 ( fp )
	add x10, x0, 4
	mv x9, x0
	add x18, x0, 8
	sw x10, 12 ( x19 )
	add x10, x19, 92
	mv x11, x9
	mv x12, x18
	sw x0, 736 ( fp )
	sw x0, 100 ( x19 )
	sw x0, 8 ( x19 )
	sw x0, 4 ( x19 )
	sw x0, 0 ( x19 )
	sw x0, 24 ( x19 )
	sw x0, 20 ( x19 )
	sw x0, 16 ( x19 )
	jal memset
	lw x20, 8 ( fp )
	lui x10, %hi( 65545 )
	add x10, x10, %lo( 65545 )
	mv x11, x9
	sw x10, 12 ( x20 )
	lui x10, %hi( __sclose )
	add x21, x10, %lo( __sclose )
	lui x10, %hi( __sseek )
	add x22, x10, %lo( __sseek )
	lui x10, %hi( __swrite )
	add x23, x10, %lo( __swrite )
	lui x10, %hi( __sread )
	add x24, x10, %lo( __sread )
	add x10, x20, 92
	mv x12, x18
	sw x21, 44 ( x19 )
	sw x22, 40 ( x19 )
	sw x23, 36 ( x19 )
	sw x24, 32 ( x19 )
	sw x19, 28 ( x19 )
	sw x0, 100 ( x20 )
	sw x0, 8 ( x20 )
	sw x0, 4 ( x20 )
	sw x0, 0 ( x20 )
	sw x0, 24 ( x20 )
	sw x0, 20 ( x20 )
	sw x0, 16 ( x20 )
	jal memset
	lw x19, 12 ( fp )
	lui x10, %hi( 131090 )
	add x10, x10, %lo( 131090 )
	mv x11, x9
	sw x10, 12 ( x19 )
	add x10, x19, 92
	mv x12, x18
	sw x21, 44 ( x20 )
	sw x22, 40 ( x20 )
	sw x23, 36 ( x20 )
	sw x24, 32 ( x20 )
	sw x20, 28 ( x20 )
	sw x0, 100 ( x19 )
	sw x0, 8 ( x19 )
	sw x0, 4 ( x19 )
	sw x0, 0 ( x19 )
	sw x0, 24 ( x19 )
	sw x0, 20 ( x19 )
	sw x0, 16 ( x19 )
	jal memset
	seqz x10, x0
	sw x10, 56 ( fp )
	sw x21, 44 ( x19 )
	sw x22, 40 ( x19 )
	sw x23, 36 ( x19 )
	sw x24, 32 ( x19 )
	sw x19, 28 ( x19 )
.LBB3_2:                                //  %return
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw x24, 12 ( sp )               //  4-byte Folded Reload
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
.Lfunc_end3:
	.size	__sinit, .Lfunc_end3-__sinit
	.cfi_endproc
                                        //  -- End function
	.globl	__sfp_lock_release      //  -- Begin function __sfp_lock_release
	.type	__sfp_lock_release,@function
__sfp_lock_release:                     //  @__sfp_lock_release
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end4:
	.size	__sfp_lock_release, .Lfunc_end4-__sfp_lock_release
	.cfi_endproc
                                        //  -- End function
	.globl	_cleanup_r              //  -- Begin function _cleanup_r
	.type	_cleanup_r,@function
_cleanup_r:                             //  @_cleanup_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x11, %hi( _fclose_r )
	add x11, x11, %lo( _fclose_r )
	j _fwalk_reent
.Lfunc_end5:
	.size	_cleanup_r, .Lfunc_end5-_cleanup_r
	.cfi_endproc
                                        //  -- End function
	.globl	_cleanup                //  -- Begin function _cleanup
	.type	_cleanup,@function
_cleanup:                               //  @_cleanup
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
.Lfunc_end6:
	.size	_cleanup, .Lfunc_end6-_cleanup
	.cfi_endproc
                                        //  -- End function
	.globl	__sinit_lock_acquire    //  -- Begin function __sinit_lock_acquire
	.type	__sinit_lock_acquire,@function
__sinit_lock_acquire:                   //  @__sinit_lock_acquire
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end7:
	.size	__sinit_lock_acquire, .Lfunc_end7-__sinit_lock_acquire
	.cfi_endproc
                                        //  -- End function
	.globl	__sinit_lock_release    //  -- Begin function __sinit_lock_release
	.type	__sinit_lock_release,@function
__sinit_lock_release:                   //  @__sinit_lock_release
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end8:
	.size	__sinit_lock_release, .Lfunc_end8-__sinit_lock_release
	.cfi_endproc
                                        //  -- End function
	.globl	__fp_lock_all           //  -- Begin function __fp_lock_all
	.type	__fp_lock_all,@function
__fp_lock_all:                          //  @__fp_lock_all
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	lui x11, %hi( __fp_lock )
	add x11, x11, %lo( __fp_lock )
	j _fwalk
.Lfunc_end9:
	.size	__fp_lock_all, .Lfunc_end9-__fp_lock_all
	.cfi_endproc
                                        //  -- End function
	.type	__fp_lock,@function     //  -- Begin function __fp_lock
__fp_lock:                              //  @__fp_lock
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x10, x0
	jr ra
.Lfunc_end10:
	.size	__fp_lock, .Lfunc_end10-__fp_lock
	.cfi_endproc
                                        //  -- End function
	.globl	__fp_unlock_all         //  -- Begin function __fp_unlock_all
	.type	__fp_unlock_all,@function
__fp_unlock_all:                        //  @__fp_unlock_all
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	lui x11, %hi( __fp_unlock )
	add x11, x11, %lo( __fp_unlock )
	j _fwalk
.Lfunc_end11:
	.size	__fp_unlock_all, .Lfunc_end11-__fp_unlock_all
	.cfi_endproc
                                        //  -- End function
	.type	__fp_unlock,@function   //  -- Begin function __fp_unlock
__fp_unlock:                            //  @__fp_unlock
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x10, x0
	jr ra
.Lfunc_end12:
	.size	__fp_unlock, .Lfunc_end12-__fp_unlock
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
