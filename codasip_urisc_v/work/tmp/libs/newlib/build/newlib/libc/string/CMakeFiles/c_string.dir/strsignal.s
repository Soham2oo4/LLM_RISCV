	.text
	.file	"strsignal.c"
	.globl	strsignal               //  -- Begin function strsignal
	.type	strsignal,@function
strsignal:                              //  @strsignal
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	lui x11, %hi( _impure_ptr )
	add x11, x11, %lo( _impure_ptr )
	lw x11, 0 ( x11 )
	add x12, x10, -1
	add x13, x0, 30
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw fp, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -8
	bltu x13, x12, .LBB0_31
.LBB0_1:                                //  %entry
	lui x13, %hi( .str )
	add fp, x13, %lo( .str )
	lui x13, %hi( JTI0_0 )
	sll x12, x12, 2&31
	add x13, x13, %lo( JTI0_0 )
	add x12, x13, x12
	lw x12, 0 ( x12 )
	jr x12
.LBB0_2:                                //  %sw.bb1
	lui x10, %hi( .str.1 )
	add fp, x10, %lo( .str.1 )
	jal x0, .LBB0_32
.LBB0_3:                                //  %sw.bb2
	lui x10, %hi( .str.2 )
	add fp, x10, %lo( .str.2 )
	jal x0, .LBB0_32
.LBB0_4:                                //  %sw.bb3
	lui x10, %hi( .str.3 )
	add fp, x10, %lo( .str.3 )
	jal x0, .LBB0_32
.LBB0_5:                                //  %sw.bb4
	lui x10, %hi( .str.4 )
	add fp, x10, %lo( .str.4 )
	jal x0, .LBB0_32
.LBB0_6:                                //  %sw.bb5
	lui x10, %hi( .str.5 )
	add fp, x10, %lo( .str.5 )
	jal x0, .LBB0_32
.LBB0_7:                                //  %sw.bb6
	lui x10, %hi( .str.6 )
	add fp, x10, %lo( .str.6 )
	jal x0, .LBB0_32
.LBB0_8:                                //  %sw.bb7
	lui x10, %hi( .str.7 )
	add fp, x10, %lo( .str.7 )
	jal x0, .LBB0_32
.LBB0_9:                                //  %sw.bb8
	lui x10, %hi( .str.8 )
	add fp, x10, %lo( .str.8 )
	jal x0, .LBB0_32
.LBB0_10:                               //  %sw.bb9
	lui x10, %hi( .str.9 )
	add fp, x10, %lo( .str.9 )
	jal x0, .LBB0_32
.LBB0_11:                               //  %sw.bb10
	lui x10, %hi( .str.10 )
	add fp, x10, %lo( .str.10 )
	jal x0, .LBB0_32
.LBB0_12:                               //  %sw.bb11
	lui x10, %hi( .str.11 )
	add fp, x10, %lo( .str.11 )
	jal x0, .LBB0_32
.LBB0_13:                               //  %sw.bb12
	lui x10, %hi( .str.12 )
	add fp, x10, %lo( .str.12 )
	jal x0, .LBB0_32
.LBB0_14:                               //  %sw.bb13
	lui x10, %hi( .str.13 )
	add fp, x10, %lo( .str.13 )
	jal x0, .LBB0_32
.LBB0_15:                               //  %sw.bb14
	lui x10, %hi( .str.14 )
	add fp, x10, %lo( .str.14 )
	jal x0, .LBB0_32
.LBB0_16:                               //  %sw.bb15
	lui x10, %hi( .str.15 )
	add fp, x10, %lo( .str.15 )
	jal x0, .LBB0_32
.LBB0_17:                               //  %sw.bb16
	lui x10, %hi( .str.16 )
	add fp, x10, %lo( .str.16 )
	jal x0, .LBB0_32
.LBB0_18:                               //  %sw.bb17
	lui x10, %hi( .str.17 )
	add fp, x10, %lo( .str.17 )
	jal x0, .LBB0_32
.LBB0_19:                               //  %sw.bb18
	lui x10, %hi( .str.18 )
	add fp, x10, %lo( .str.18 )
	jal x0, .LBB0_32
.LBB0_20:                               //  %sw.bb19
	lui x10, %hi( .str.19 )
	add fp, x10, %lo( .str.19 )
	jal x0, .LBB0_32
.LBB0_21:                               //  %sw.bb20
	lui x10, %hi( .str.20 )
	add fp, x10, %lo( .str.20 )
	jal x0, .LBB0_32
.LBB0_31:                               //  %sw.default
	add fp, x11, 220
	lui x11, %hi( .str.30 )
	add x11, x11, %lo( .str.30 )
	sw x11, 4 ( sp )
	sw x10, 8 ( sp )
	sw fp, 0 ( sp )
	jal siprintf
	jal x0, .LBB0_32
.LBB0_22:                               //  %sw.bb21
	lui x10, %hi( .str.21 )
	add fp, x10, %lo( .str.21 )
	jal x0, .LBB0_32
.LBB0_26:                               //  %sw.bb25
	lui x10, %hi( .str.25 )
	add fp, x10, %lo( .str.25 )
	jal x0, .LBB0_32
.LBB0_27:                               //  %sw.bb26
	lui x10, %hi( .str.26 )
	add fp, x10, %lo( .str.26 )
	jal x0, .LBB0_32
.LBB0_28:                               //  %sw.bb27
	lui x10, %hi( .str.27 )
	add fp, x10, %lo( .str.27 )
	jal x0, .LBB0_32
.LBB0_29:                               //  %sw.bb28
	lui x10, %hi( .str.28 )
	add fp, x10, %lo( .str.28 )
	jal x0, .LBB0_32
.LBB0_23:                               //  %sw.bb22
	lui x10, %hi( .str.22 )
	add fp, x10, %lo( .str.22 )
	jal x0, .LBB0_32
.LBB0_30:                               //  %sw.bb29
	lui x10, %hi( .str.29 )
	add fp, x10, %lo( .str.29 )
	jal x0, .LBB0_32
.LBB0_24:                               //  %sw.bb23
	lui x10, %hi( .str.23 )
	add fp, x10, %lo( .str.23 )
	jal x0, .LBB0_32
.LBB0_25:                               //  %sw.bb24
	lui x10, %hi( .str.24 )
	add fp, x10, %lo( .str.24 )
.LBB0_32:                               //  %sw.epilog
	mv x10, fp
	lw fp, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	strsignal, .Lfunc_end0-strsignal
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_32
	.long	.LBB0_2
	.long	.LBB0_3
	.long	.LBB0_4
	.long	.LBB0_5
	.long	.LBB0_6
	.long	.LBB0_7
	.long	.LBB0_8
	.long	.LBB0_9
	.long	.LBB0_10
	.long	.LBB0_11
	.long	.LBB0_12
	.long	.LBB0_13
	.long	.LBB0_14
	.long	.LBB0_15
	.long	.LBB0_16
	.long	.LBB0_17
	.long	.LBB0_18
	.long	.LBB0_19
	.long	.LBB0_20
	.long	.LBB0_21
	.long	.LBB0_31
	.long	.LBB0_22
	.long	.LBB0_26
	.long	.LBB0_27
	.long	.LBB0_28
	.long	.LBB0_29
	.long	.LBB0_23
	.long	.LBB0_30
	.long	.LBB0_24
	.long	.LBB0_25
                                        //  -- End function
	.address_space	0
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"Hangup"
	.size	.str, 7

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"Interrupt"
	.size	.str.1, 10

	.address_space	0
	.type	.str.2,@object          //  @.str.2
.str.2:
	.asciz	"Quit"
	.size	.str.2, 5

	.address_space	0
	.type	.str.3,@object          //  @.str.3
.str.3:
	.asciz	"Illegal instruction"
	.size	.str.3, 20

	.address_space	0
	.type	.str.4,@object          //  @.str.4
.str.4:
	.asciz	"Trace/breakpoint trap"
	.size	.str.4, 22

	.address_space	0
	.type	.str.5,@object          //  @.str.5
.str.5:
	.asciz	"IOT trap"
	.size	.str.5, 9

	.address_space	0
	.type	.str.6,@object          //  @.str.6
.str.6:
	.asciz	"EMT trap"
	.size	.str.6, 9

	.address_space	0
	.type	.str.7,@object          //  @.str.7
.str.7:
	.asciz	"Floating point exception"
	.size	.str.7, 25

	.address_space	0
	.type	.str.8,@object          //  @.str.8
.str.8:
	.asciz	"Killed"
	.size	.str.8, 7

	.address_space	0
	.type	.str.9,@object          //  @.str.9
.str.9:
	.asciz	"Bus error"
	.size	.str.9, 10

	.address_space	0
	.type	.str.10,@object         //  @.str.10
.str.10:
	.asciz	"Segmentation fault"
	.size	.str.10, 19

	.address_space	0
	.type	.str.11,@object         //  @.str.11
.str.11:
	.asciz	"Bad system call"
	.size	.str.11, 16

	.address_space	0
	.type	.str.12,@object         //  @.str.12
.str.12:
	.asciz	"Broken pipe"
	.size	.str.12, 12

	.address_space	0
	.type	.str.13,@object         //  @.str.13
.str.13:
	.asciz	"Alarm clock"
	.size	.str.13, 12

	.address_space	0
	.type	.str.14,@object         //  @.str.14
.str.14:
	.asciz	"Terminated"
	.size	.str.14, 11

	.address_space	0
	.type	.str.15,@object         //  @.str.15
.str.15:
	.asciz	"Urgent I/O condition"
	.size	.str.15, 21

	.address_space	0
	.type	.str.16,@object         //  @.str.16
.str.16:
	.asciz	"Stopped (signal)"
	.size	.str.16, 17

	.address_space	0
	.type	.str.17,@object         //  @.str.17
.str.17:
	.asciz	"Stopped"
	.size	.str.17, 8

	.address_space	0
	.type	.str.18,@object         //  @.str.18
.str.18:
	.asciz	"Continued"
	.size	.str.18, 10

	.address_space	0
	.type	.str.19,@object         //  @.str.19
.str.19:
	.asciz	"Child exited"
	.size	.str.19, 13

	.address_space	0
	.type	.str.20,@object         //  @.str.20
.str.20:
	.asciz	"Stopped (tty input)"
	.size	.str.20, 20

	.address_space	0
	.type	.str.21,@object         //  @.str.21
.str.21:
	.asciz	"I/O possible"
	.size	.str.21, 13

	.address_space	0
	.type	.str.22,@object         //  @.str.22
.str.22:
	.asciz	"Window changed"
	.size	.str.22, 15

	.address_space	0
	.type	.str.23,@object         //  @.str.23
.str.23:
	.asciz	"User defined signal 1"
	.size	.str.23, 22

	.address_space	0
	.type	.str.24,@object         //  @.str.24
.str.24:
	.asciz	"User defined signal 2"
	.size	.str.24, 22

	.address_space	0
	.type	.str.25,@object         //  @.str.25
.str.25:
	.asciz	"CPU time limit exceeded"
	.size	.str.25, 24

	.address_space	0
	.type	.str.26,@object         //  @.str.26
.str.26:
	.asciz	"File size limit exceeded"
	.size	.str.26, 25

	.address_space	0
	.type	.str.27,@object         //  @.str.27
.str.27:
	.asciz	"Virtual timer expired"
	.size	.str.27, 22

	.address_space	0
	.type	.str.28,@object         //  @.str.28
.str.28:
	.asciz	"Profiling timer expired"
	.size	.str.28, 24

	.address_space	0
	.type	.str.29,@object         //  @.str.29
.str.29:
	.asciz	"Resource lost"
	.size	.str.29, 14

	.address_space	0
	.type	.str.30,@object         //  @.str.30
.str.30:
	.asciz	"Unknown signal %d"
	.size	.str.30, 18


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
