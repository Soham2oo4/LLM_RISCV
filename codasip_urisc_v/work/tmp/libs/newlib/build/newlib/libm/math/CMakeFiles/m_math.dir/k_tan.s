	.text
	.file	"k_tan.c"
	.globl	__kernel_tan            //  -- Begin function __kernel_tan
	.type	__kernel_tan,@function
__kernel_tan:                           //  @__kernel_tan
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -64
	.cfi_adjust_cfa_offset 64
	sw x9, 56 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 44 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 40 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	sw ra, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x22, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	mv x21, x14
	mv x19, x13
	mv x20, x12
	mv x9, x11
	mv fp, x10
	jal __fixdfsi
	lui x11, %hi( 2147483647 )
	add x11, x11, %lo( 2147483647 )
	and x18, x11, x9
	bltu x0, x10, .LBB0_7
.LBB0_1:                                //  %entry
	srl x10, x18, 20&31
	add x11, x0, 994
	bltu x11, x10, .LBB0_7
.LBB0_2:                                //  %if.then3
	add x10, x21, 1
	or x10, fp, x10
	or x10, x18, x10
	beq x0, x10, .LBB0_3
.LBB0_4:                                //  %if.else
	xor x10, x21, 1
	bltu x0, x10, .LBB0_6
.LBB0_5:
	mv x21, fp
	mv x19, x9
	jal x0, .LBB0_21
.LBB0_7:                                //  %if.end40
	lui x10, %hi( 1072010280 )
	add x10, x10, %lo( 1072010280 )
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	sw x10, 4 ( sp )                //  4-byte Folded Spill
	bltu x18, x10, .LBB0_8
.LBB0_9:                                //  %if.then43
	lui x10, %hi( -2147483648 )
	add x23, x10, %lo( -2147483648 )
	mv x21, x0
	blt x9, x21, .LBB0_10
.LBB0_11:                               //  %if.then43
	mv x13, x9
	jal x0, .LBB0_12
.LBB0_8:
	mv x21, x20
	mv x20, x9
	jal x0, .LBB0_15
.LBB0_3:                                //  %if.then12
	mv x10, fp
	mv x11, x9
	jal fabs
	mv x12, x10
	mv x13, x11
	mv x10, x0
	lui x11, (1072693248>>12)&1048575
	jal __divdf3
	jal x0, .LBB0_20
.LBB0_6:                                //  %if.else16
	mv x10, fp
	mv x11, x9
	mv x12, x20
	mv x13, x19
	jal __adddf3
	mv x12, x10
	mv x22, x11
	mv x18, x0
	lui x10, %hi( -1074790400 )
	add x11, x10, %lo( -1074790400 )
	mv x10, x18
	mv x13, x22
	jal __divdf3
	mv x21, x11
	mv x23, x10
	mv x10, x18
	mv x11, x22
	mv x12, x18
	mv x13, x21
	jal __muldf3
	lui x13, (1072693248>>12)&1048575
	mv x12, x18
	jal __adddf3
	mv x24, x10
	mv x25, x11
	mv x10, x18
	mv x11, x22
	mv x12, fp
	mv x13, x9
	jal __subdf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x19
	jal __subdf3
	mv x12, x18
	mv x13, x21
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x24
	mv x11, x25
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x21
	jal __muldf3
	mv x12, x18
	jal x0, .LBB0_19
.LBB0_10:
	xor x13, x23, x9
.LBB0_12:                               //  %if.then43
	lui x10, %hi( 1413754136 )
	lui x11, %hi( 1072243195 )
	add x10, x10, %lo( 1413754136 )
	add x11, x11, %lo( 1072243195 )
	mv x12, fp
	jal __subdf3
	mv fp, x10
	mv x22, x11
	bge x9, x21, .LBB0_14
.LBB0_13:
	xor x19, x23, x19
.LBB0_14:                               //  %if.then43
	lui x10, %hi( 856972295 )
	lui x11, %hi( 1015129638 )
	add x10, x10, %lo( 856972295 )
	add x11, x11, %lo( 1015129638 )
	mv x12, x20
	mv x13, x19
	jal __subdf3
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x22
	jal __adddf3
	mv fp, x10
	mv x20, x11
	mv x19, x21
.LBB0_15:                               //  %if.end53
	mv x10, fp
	mv x11, x20
	mv x12, fp
	mv x13, x20
	jal __muldf3
	mv x22, x10
	mv x23, x11
	mv x12, x22
	mv x13, x23
	jal __muldf3
	mv x24, x10
	lui x10, %hi( -614444173 )
	add x12, x10, %lo( -614444173 )
	lui x10, %hi( -1091340853 )
	add x13, x10, %lo( -1091340853 )
	mv x10, x24
	mv x25, x11
	jal __muldf3
	lui x12, %hi( -1606970714 )
	lui x13, %hi( 1058307720 )
	add x12, x12, %lo( -1606970714 )
	add x13, x13, %lo( 1058307720 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x24
	mv x11, x25
	jal __muldf3
	lui x12, %hi( -218995455 )
	lui x13, %hi( 1061373144 )
	add x12, x12, %lo( -218995455 )
	add x13, x13, %lo( 1061373144 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x24
	mv x11, x25
	jal __muldf3
	lui x12, %hi( -917109976 )
	lui x13, %hi( 1064135970 )
	add x12, x12, %lo( -917109976 )
	add x13, x13, %lo( 1064135970 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x24
	mv x11, x25
	jal __muldf3
	lui x12, %hi( -2079926729 )
	lui x13, %hi( 1066820852 )
	add x12, x12, %lo( -2079926729 )
	add x13, x13, %lo( 1066820852 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x24
	mv x11, x25
	jal __muldf3
	lui x12, %hi( 286326394 )
	lui x13, %hi( 1069617425 )
	add x12, x12, %lo( 286326394 )
	add x13, x13, %lo( 1069617425 )
	jal __adddf3
	mv x26, x10
	lui x10, %hi( 1958705876 )
	add x12, x10, %lo( 1958705876 )
	lui x10, %hi( 1056647792 )
	mv x27, x11
	add x13, x10, %lo( 1056647792 )
	mv x10, x24
	mv x11, x25
	jal __muldf3
	lui x12, %hi( 854632425 )
	lui x13, %hi( 1058191375 )
	add x12, x12, %lo( 854632425 )
	add x13, x13, %lo( 1058191375 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x24
	mv x11, x25
	jal __muldf3
	lui x12, %hi( 445452392 )
	lui x13, %hi( 1060120311 )
	add x12, x12, %lo( 445452392 )
	add x13, x13, %lo( 1060120311 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x24
	mv x11, x25
	jal __muldf3
	lui x12, %hi( -18840811 )
	lui x13, %hi( 1062722504 )
	add x12, x12, %lo( -18840811 )
	add x13, x13, %lo( 1062722504 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x24
	mv x11, x25
	jal __muldf3
	lui x12, %hi( -378633069 )
	lui x13, %hi( 1065494243 )
	add x12, x12, %lo( -378633069 )
	add x13, x13, %lo( 1065494243 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x24
	mv x11, x25
	jal __muldf3
	lui x12, %hi( 464732670 )
	lui x13, %hi( 1068212666 )
	add x12, x12, %lo( 464732670 )
	add x13, x13, %lo( 1068212666 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x22
	mv x11, x23
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x26
	mv x11, x27
	jal __adddf3
	mv x24, x10
	mv x25, x11
	mv x10, fp
	mv x11, x20
	mv x12, x22
	mv x13, x23
	jal __muldf3
	mv x12, x24
	mv x13, x25
	mv x26, x10
	mv x27, x11
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x21
	mv x11, x19
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x22
	mv x11, x23
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x21
	mv x11, x19
	jal __adddf3
	mv x19, x10
	lui x10, %hi( 1431655779 )
	add x12, x10, %lo( 1431655779 )
	lui x10, %hi( 1070945621 )
	mv x21, x11
	add x13, x10, %lo( 1070945621 )
	mv x10, x26
	mv x11, x27
	jal __muldf3
	mv x12, x19
	mv x13, x21
	jal __adddf3
	mv x23, x10
	mv x22, x11
	mv x10, fp
	mv x11, x20
	mv x12, x23
	mv x13, x22
	jal __adddf3
	mv x21, x10
	lw x10, 4 ( sp )                //  4-byte Folded Reload
	mv x19, x11
	bltu x18, x10, .LBB0_17
.LBB0_16:                               //  %if.then88
	lw x10, 8 ( sp )                //  4-byte Folded Reload
	jal __floatsidf
	mv x24, x10
	srl x10, x9, 30&31
	mv x25, x11
	and x10, x10, 2
	seqz x11, x0
	sub x10, x11, x10
	jal __floatsidf
	mv x9, x10
	mv x18, x11
	mv x10, x21
	mv x13, x19
	mv x11, x19
	mv x12, x21
	jal __muldf3
	mv x26, x10
	mv x27, x11
	mv x10, x21
	mv x11, x19
	mv x12, x24
	mv x13, x25
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x26
	mv x11, x27
	jal __divdf3
	mv x12, x23
	mv x13, x22
	jal __subdf3
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x20
	jal __subdf3
	mv x12, x10
	mv x13, x11
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x24
	mv x11, x25
	jal __subdf3
	mv x12, x9
	mv x13, x18
	jal __muldf3
	jal x0, .LBB0_20
.LBB0_17:                               //  %if.end101
	lw x10, 8 ( sp )                //  4-byte Folded Reload
	xor x10, x10, 1
	beq x0, x10, .LBB0_21
.LBB0_18:                               //  %if.else105
	mv x9, x0
	mv x10, x9
	mv x11, x19
	mv x12, fp
	mv x13, x20
	jal __subdf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x22
	jal __subdf3
	mv fp, x10
	lui x10, %hi( -1074790400 )
	mv x18, x11
	add x11, x10, %lo( -1074790400 )
	mv x10, x9
	mv x12, x21
	mv x13, x19
	jal __divdf3
	mv x21, x11
	mv x20, x10
	mv x10, fp
	mv x11, x18
	mv x12, x9
	mv x13, x21
	jal __muldf3
	mv fp, x10
	mv x18, x11
	mv x10, x9
	mv x11, x19
	mv x12, x9
	mv x13, x21
	jal __muldf3
	lui x13, (1072693248>>12)&1048575
	mv x12, x9
	jal __adddf3
	mv x12, fp
	mv x13, x18
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __muldf3
	mv x12, x9
.LBB0_19:                               //  %cleanup135
	mv x13, x21
	jal __adddf3
.LBB0_20:                               //  %cleanup135
	mv x21, x10
	mv x19, x11
.LBB0_21:                               //  %cleanup135
	mv x10, x21
	mv x11, x19
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x27, 16 ( sp )               //  4-byte Folded Reload
	lw x26, 20 ( sp )               //  4-byte Folded Reload
	lw x25, 24 ( sp )               //  4-byte Folded Reload
	lw x24, 28 ( sp )               //  4-byte Folded Reload
	lw x23, 32 ( sp )               //  4-byte Folded Reload
	lw x22, 36 ( sp )               //  4-byte Folded Reload
	lw x21, 40 ( sp )               //  4-byte Folded Reload
	lw x20, 44 ( sp )               //  4-byte Folded Reload
	lw x19, 48 ( sp )               //  4-byte Folded Reload
	lw x18, 52 ( sp )               //  4-byte Folded Reload
	lw x9, 56 ( sp )                //  4-byte Folded Reload
	lw ra, 60 ( sp )                //  4-byte Folded Reload
	add sp, sp, 64
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__kernel_tan, .Lfunc_end0-__kernel_tan
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
