	.text
	.file	"asctime_r.c"
	.globl	asctime_r               //  -- Begin function asctime_r
	.type	asctime_r,@function
asctime_r:                              //  @asctime_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -80
	.cfi_adjust_cfa_offset 80
	sw x9, 72 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv fp, x11
	mv x9, x10
	sw ra, 76 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 68 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 64 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	beq x0, x9, .LBB0_1
.LBB0_2:                                //  %if.end
	lw x10, 24 ( x9 )
	add x18, x0, 3
	mv x11, x18
	jal __mulsi3
	mv x19, x10
	lw x10, 16 ( x9 )
	mv x11, x18
	jal __mulsi3
	lui x11, %hi( asctime_r.mon_name )
	add x11, x11, %lo( asctime_r.mon_name )
	add x10, x10, x11
	lw x14, 20 ( x9 )
	sw x10, 12 ( sp )
	lui x10, %hi( asctime_r.day_name )
	add x10, x10, %lo( asctime_r.day_name )
	lw x11, 12 ( x9 )
	lw x12, 8 ( x9 )
	lw x13, 4 ( x9 )
	lw x15, 0 ( x9 )
	add x10, x19, x10
	sw x10, 8 ( sp )
	lui x10, %hi( .str )
	add x14, x14, 1900
	add x10, x10, %lo( .str )
	sw x15, 28 ( sp )
	sw x14, 32 ( sp )
	sw x13, 24 ( sp )
	sw x12, 20 ( sp )
	sw x11, 16 ( sp )
	sw x10, 4 ( sp )
	sw fp, 0 ( sp )
	jal siprintf
	jal x0, .LBB0_3
.LBB0_1:                                //  %if.then
	jal __errno
	add x11, x0, 22
	sw x11, 0 ( x10 )
	mv fp, x0
.LBB0_3:                                //  %return
	mv x10, fp
	lw fp, 60 ( sp )                //  4-byte Folded Reload
	lw x19, 64 ( sp )               //  4-byte Folded Reload
	lw x18, 68 ( sp )               //  4-byte Folded Reload
	lw x9, 72 ( sp )                //  4-byte Folded Reload
	lw ra, 76 ( sp )                //  4-byte Folded Reload
	add sp, sp, 80
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	asctime_r, .Lfunc_end0-asctime_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	asctime_r.day_name,@object //  @asctime_r.day_name
	.section	.rodata,"a",@progbits
asctime_r.day_name:
	.ascii	"Sun"
	.ascii	"Mon"
	.ascii	"Tue"
	.ascii	"Wed"
	.ascii	"Thu"
	.ascii	"Fri"
	.ascii	"Sat"
	.size	asctime_r.day_name, 21

	.address_space	0
	.type	asctime_r.mon_name,@object //  @asctime_r.mon_name
asctime_r.mon_name:
	.ascii	"Jan"
	.ascii	"Feb"
	.ascii	"Mar"
	.ascii	"Apr"
	.ascii	"May"
	.ascii	"Jun"
	.ascii	"Jul"
	.ascii	"Aug"
	.ascii	"Sep"
	.ascii	"Oct"
	.ascii	"Nov"
	.ascii	"Dec"
	.size	asctime_r.mon_name, 36

	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"%.3s %.3s%3d %.2d:%.2d:%.2d %d\n"
	.size	.str, 32


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
