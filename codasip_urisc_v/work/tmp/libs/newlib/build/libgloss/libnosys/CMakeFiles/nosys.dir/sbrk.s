	.text
	.file	"sbrk.c"
	.globl	sbrk                    //  -- Begin function sbrk
	.type	sbrk,@function
sbrk:                                   //  @sbrk
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x11, x10
	lui x10, %hi( heap_ptr )
	add x12, x10, %lo( heap_ptr )
	lw x10, 0 ( x12 )
	beq x0, x10, .LBB0_1
.LBB0_2:                                //  %if.end
	lui x13, %hi( _heap_end )
	add x11, x11, x10
	add x13, x13, %lo( _heap_end )
	bgeu x13, x11, .LBB0_3
.LBB0_4:                                //  %if.else
	lui x10, %hi( errno )
	add x10, x10, %lo( errno )
	add x11, x0, 12
	sw x11, 0 ( x10 )
	add x10, x0, -1
	jr ra
.LBB0_1:                                //  %if.then
	lui x10, %hi( _heap )
	add x10, x10, %lo( _heap )
	sw x10, 0 ( x12 )
	lui x13, %hi( _heap_end )
	add x11, x11, x10
	add x13, x13, %lo( _heap_end )
	bltu x13, x11, .LBB0_4
.LBB0_3:                                //  %if.then1
	sw x11, 0 ( x12 )
	jr ra
.Lfunc_end0:
	.size	sbrk, .Lfunc_end0-sbrk
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	heap_ptr,@object        //  @heap_ptr
	.local	heap_ptr
	.comm	heap_ptr,4,4
	.address_space	0
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
