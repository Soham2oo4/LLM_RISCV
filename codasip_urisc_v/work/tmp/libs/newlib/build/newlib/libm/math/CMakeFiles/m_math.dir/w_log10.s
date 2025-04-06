	.text
	.file	"w_log10.c"
	.globl	log10                   //  -- Begin function log10
	.type	log10,@function
log10:                                  //  @log10
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	mv x12, x0
	mv x13, x12
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv x9, x11
	mv x18, x10
	jal __ledf2
	mv x19, x10
	mv x10, x18
	mv x11, x9
	jal __ieee754_log10
	mv fp, x10
	blt x0, x19, .LBB0_4
.LBB0_1:                                //  %if.then2
	mv fp, x0
	mv x13, fp
	mv x10, x18
	mv x11, x9
	mv x12, fp
	jal __nedf2
	mv x9, x10
	jal __errno
	bltu x0, x9, .LBB0_3
.LBB0_2:                                //  %if.then4
	add x11, x0, 34
	sw x11, 0 ( x10 )
	lui x10, %hi( -1048576 )
	add x11, x10, %lo( -1048576 )
	jal x0, .LBB0_4
.LBB0_3:                                //  %if.else
	add x11, x0, 33
	sw x11, 0 ( x10 )
	lui x10, %hi( .str )
	add x10, x10, %lo( .str )
	jal nan
	mv fp, x10
.LBB0_4:                                //  %cleanup
	mv x10, fp
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	log10, .Lfunc_end0-log10
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.zero	1
	.size	.str, 1


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
