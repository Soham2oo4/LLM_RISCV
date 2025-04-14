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
	add sp, sp, -64
	.cfi_adjust_cfa_offset 64
	sw fp, 56 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -8
	mv fp, x11
	sw ra, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x10, .LBB0_1
.LBB0_2:                                //  %if.end
	lw x11, 16 ( x10 )
	lui x13, %hi( asctime_r.mon_name )
	add x12, x0, 3
	add x13, x13, %lo( asctime_r.mon_name )
	hackaton_custom_instr_c x11, x12, x11
	add x11, x11, x13
	lw x14, 12 ( x10 )
	lw x15, 8 ( x10 )
	lw x16, 4 ( x10 )
	lw x13, 24 ( x10 )
	lw x17, 20 ( x10 )
	lw x10, 0 ( x10 )
	sw x11, 12 ( sp )
	lui x11, %hi( asctime_r.day_name )
	add x11, x11, %lo( asctime_r.day_name )
	sw x10, 28 ( sp )
	add x10, x17, 1900
	sw x10, 32 ( sp )
	hackaton_custom_instr_c x10, x12, x13
	add x10, x10, x11
	sw x10, 8 ( sp )
	lui x10, %hi( .str )
	add x10, x10, %lo( .str )
	sw x16, 24 ( sp )
	sw x15, 20 ( sp )
	sw x14, 16 ( sp )
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
	lw fp, 56 ( sp )                //  4-byte Folded Reload
	lw ra, 60 ( sp )                //  4-byte Folded Reload
	add sp, sp, 64
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
