	.text
	.file	"tzset.c"
	.globl	_tzset_unlocked         //  -- Begin function _tzset_unlocked
	.type	_tzset_unlocked,@function
_tzset_unlocked:                        //  @_tzset_unlocked
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	j _tzset_unlocked_r
.Lfunc_end0:
	.size	_tzset_unlocked, .Lfunc_end0-_tzset_unlocked
	.cfi_endproc
                                        //  -- End function
	.globl	tzset                   //  -- Begin function tzset
	.type	tzset,@function
tzset:                                  //  @tzset
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal __tz_lock
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	jal _tzset_unlocked_r
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	j __tz_unlock
.Lfunc_end1:
	.size	tzset, .Lfunc_end1-tzset
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
