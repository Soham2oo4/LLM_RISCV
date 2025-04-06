	.text
	.file	"codasip.c"
	.globl	printf                  //  -- Begin function printf
	.type	printf,@function
printf:                                 //  @printf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -128
	.cfi_adjust_cfa_offset 128
	lw x12, 128 ( sp )
	sw x9, 120 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9, sp, 11
	add x13, sp, 132
	add x11, x0, 101
	mv x10, x9
	sw ra, 124 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 116 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw fp, 112 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	sw x13, 4 ( sp )
	jal vsniprintf
	mv fp, x10
	add x18, x0, 99
	bltu x18, fp, .LBB0_1
.LBB0_2:                                //  %entry
	mv x12, fp
	seqz x10, x0
	mv x11, x9
	jal write
	bltu x18, fp, .LBB0_4
	jal x0, .LBB0_5
.LBB0_1:
	add x12, x0, 100
	seqz x10, x0
	mv x11, x9
	jal write
	bgeu x18, fp, .LBB0_5
.LBB0_4:
	add fp, x0, -1
.LBB0_5:                                //  %entry
	mv x10, fp
	lw fp, 112 ( sp )               //  4-byte Folded Reload
	lw x18, 116 ( sp )              //  4-byte Folded Reload
	lw x9, 120 ( sp )               //  4-byte Folded Reload
	lw ra, 124 ( sp )               //  4-byte Folded Reload
	add sp, sp, 128
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	printf, .Lfunc_end0-printf
	.cfi_endproc
                                        //  -- End function
	.globl	putchar                 //  -- Begin function putchar
	.type	putchar,@function
putchar:                                //  @putchar
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	seqz x9, x0
	sw fp, 20 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv fp, x10
	add x11, sp, 19
	mv x10, x9
	mv x12, x9
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sb fp, 19 ( sp )
	jal write
	beq x10, x9, .LBB1_2
.LBB1_1:                                //  %entry
	add fp, x0, -1
.LBB1_2:                                //  %entry
	mv x10, fp
	lw fp, 20 ( sp )                //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	putchar, .Lfunc_end1-putchar
	.cfi_endproc
                                        //  -- End function
	.globl	puts                    //  -- Begin function puts
	.type	puts,@function
puts:                                   //  @puts
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv x9, x10
	jal strlen
	seqz fp, x0
	mv x12, x10
	mv x10, fp
	mv x11, x9
	jal write
	mv x9, x10
	blt x9, x0, .LBB2_5
.LBB2_1:                                //  %if.else
	lui x10, %hi( .str )
	add x11, x10, %lo( .str )
	mv x12, fp
	mv x10, fp
	jal write
	beq x10, fp, .LBB2_3
.LBB2_2:                                //  %if.else
	add x9, x0, -1
.LBB2_3:                                //  %if.else
	mv x10, x9
	jal x0, .LBB2_4
.LBB2_5:                                //  %if.end5
	add x10, x0, -1
.LBB2_4:                                //  %if.else
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end2:
	.size	puts, .Lfunc_end2-puts
	.cfi_endproc
                                        //  -- End function
	.globl	eputs                   //  -- Begin function eputs
	.type	eputs,@function
eputs:                                  //  @eputs
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -8
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	mv fp, x10
	jal strlen
	mv x12, x10
	add x10, x0, 2
	mv x11, fp
	jal write
	add x11, x0, -1
	blt x11, x10, .LBB3_2
.LBB3_1:                                //  %entry
	mv x10, x11
.LBB3_2:                                //  %entry
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end3:
	.size	eputs, .Lfunc_end3-eputs
	.cfi_endproc
                                        //  -- End function
	.globl	perror                  //  -- Begin function perror
	.type	perror,@function
perror:                                 //  @perror
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 20 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv fp, x10
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	beq x0, fp, .LBB4_3
.LBB4_1:                                //  %land.lhs.true
	lbu x10, 0 ( fp )
	beq x0, x10, .LBB4_3
.LBB4_2:                                //  %if.then
	mv x10, fp
	jal strlen
	add x9, x0, 2
	mv x12, x10
	mv x10, x9
	mv x11, fp
	jal write
	lui x10, %hi( .str.1 )
	add fp, x10, %lo( .str.1 )
	mv x10, fp
	jal strlen
	mv x12, x10
	mv x10, x9
	mv x11, fp
	jal write
.LBB4_3:                                //  %if.end
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	seqz x12, x0
	add x13, sp, 16
	lw x11, 0 ( x10 )
	jal _strerror_r
	mv fp, x10
	beq x0, fp, .LBB4_5
.LBB4_4:                                //  %if.then7
	mv x10, fp
	jal strlen
	mv x12, x10
	add x10, x0, 2
	mv x11, fp
	jal write
.LBB4_5:                                //  %if.end9
	lui x10, %hi( .str )
	add fp, x10, %lo( .str )
	mv x10, fp
	jal strlen
	mv x12, x10
	add x10, x0, 2
	mv x11, fp
	jal write
	lw fp, 20 ( sp )                //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end4:
	.size	perror, .Lfunc_end4-perror
	.cfi_endproc
                                        //  -- End function
	.globl	_user_strerror          //  -- Begin function _user_strerror
	.type	_user_strerror,@function
_user_strerror:                         //  @_user_strerror
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x10, x0
	jr ra
.Lfunc_end5:
	.size	_user_strerror, .Lfunc_end5-_user_strerror
	.cfi_endproc
                                        //  -- End function
	.globl	exit                    //  -- Begin function exit
	.type	exit,@function
exit:                                   //  @exit
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	jal _exit
.Lfunc_end6:
	.size	exit, .Lfunc_end6-exit
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"\n"
	.size	.str, 2

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	": "
	.size	.str.1, 3

	.address_space	0
	.address_space	0
	.type	errno,@object           //  @errno
	.comm	errno,4,4

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
