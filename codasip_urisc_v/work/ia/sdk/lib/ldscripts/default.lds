/* Generated linker script from xml */
/* Memory source file is 'default_memory_generated.xml' */
/* Sections source file is 'default_section_generated.xml' */

OUTPUT_FORMAT ("elf32-codasip-le")

MEMORY
{
  if_ldst_if_fetch (awx) : org = 0x0000000000000000, len = 0x0000000100000000, as = "as_all"
}

ENTRY (_start)

__HEAP_SIZE = DEFINED(_HEAP_SIZE) ? _HEAP_SIZE : 0x0;
__SCS_SIZE = DEFINED(_SCS_SIZE) ? _SCS_SIZE : 0x0;
__TEXT_START_ADDR = DEFINED(_TEXT_START_ADDR) ? _TEXT_START_ADDR : 0x0;
__STACK_SIZE = DEFINED(_STACK_SIZE) ? _STACK_SIZE : 0x2000;

SECTIONS
{
  .text __TEXT_START_ADDR : {
    _ftext = .;
    KEEP (*(SORT(.crt*)));
    *(.text);
    *(.text.*);
    *(.gnu.linkonce.t.*);
    KEEP (*(.text_jump_padding));
    _etext = .;
  } > if_ldst_if_fetch

  .init_location : {
  } > if_ldst_if_fetch
  . = ADDR(.init_location);

  .init ALIGN(4) : {
    KEEP (*(.init));
  } > if_ldst_if_fetch =0

  .fini_location : {
  } > if_ldst_if_fetch
  . = ADDR(.fini_location);

  .fini ALIGN(4) : {
    KEEP (*(.fini));
  } > if_ldst_if_fetch =0

  .ctors_location : {
  } > if_ldst_if_fetch
  . = ADDR(.ctors_location);

  .ctors ALIGN(4) : {
    PROVIDE (__CTOR_LIST__ = .);
    PROVIDE (___CTOR_LIST__ = .);
    KEEP (*(.ctors));
    KEEP (*(SORT(.ctors.*)));
    PROVIDE (__CTOR_END__ = .);
    PROVIDE (___CTOR_END__ = .);
  } > if_ldst_if_fetch

  .dtors_location : {
  } > if_ldst_if_fetch
  . = ADDR(.dtors_location);

  .dtors ALIGN(4) : {
    PROVIDE (__DTOR_LIST__ = .);
    PROVIDE (___DTOR_LIST__ = .);
    KEEP (*(.dtors));
    KEEP (*(SORT(.dtors.*)));
    PROVIDE (__DTOR_END__ = .);
    PROVIDE (___DTOR_END__ = .);
  } > if_ldst_if_fetch

  .eh_frame_location : {
  } > if_ldst_if_fetch
  . = ADDR(.eh_frame_location);

  .eh_frame ALIGN(4) : {
    __eh_frame_start = .;
    KEEP (*(.eh_frame));
    __eh_frame_end = .;
  } > if_ldst_if_fetch

  .eh_frame_hdr_location : {
  } > if_ldst_if_fetch
  . = ADDR(.eh_frame_hdr_location);

  .eh_frame_hdr ALIGN(4) : {
    KEEP (*(.eh_frame_hdr));
  } > if_ldst_if_fetch

  .gcc_except_table_location : {
  } > if_ldst_if_fetch
  . = ADDR(.gcc_except_table_location);

  .gcc_except_table ALIGN(4) : {
  } > if_ldst_if_fetch

  .rodata_location : {
  } > if_ldst_if_fetch
  . = ADDR(.rodata_location);

  .rodata ALIGN(4) : {
    _frodata = .;
    *(.rodata);
    *(.rodata.*);
    *(.gnu.linkonce.r.*);
    _erodata = .;
  } > if_ldst_if_fetch

  .data_location : {
  } > if_ldst_if_fetch
  . = ADDR(.data_location);

  .data ALIGN(4) : {
    _fdata = .;
    *(.data);
    *(.data.*);
    *(.gnu.linkonce.d.*);
    _edata = .;
  } > if_ldst_if_fetch

  .sdata_location : {
  } > if_ldst_if_fetch
  . = ADDR(.sdata_location);

  .sdata ALIGN(4) : {
    *(.sdata);
    *(.sdata.*);
    *(.gnu.linkonce.s.*);
  } > if_ldst_if_fetch

  .sbss_location : {
  } > if_ldst_if_fetch
  . = ADDR(.sbss_location);

  .sbss ALIGN(4) : {
    PROVIDE (__sbss_start = .);
    *(.sbss);
    *(.sbss.*);
    *(.gnu.linkonce.sb.*);
    PROVIDE (__sbss_end = .);
  } > if_ldst_if_fetch

  .bss_location : {
  } > if_ldst_if_fetch
  . = ADDR(.bss_location);

  .bss ALIGN(4) : {
    PROVIDE (__bss_start = .);
    *(.bss);
    *(.bss.*);
    *(.gnu.linkonce.b.*);
    *(COMMON);
    . = ALIGN(4);
    PROVIDE (__bss_end = .);
  } > if_ldst_if_fetch

  .scs_location : {
  } > if_ldst_if_fetch
  . = ADDR(.scs_location);

  .scs ALIGN(16) (NOLOAD) : {
    . += __SCS_SIZE;
  } > if_ldst_if_fetch

  .heap_location : {
  } > if_ldst_if_fetch
  . = ADDR(.heap_location);

  .heap ALIGN(4) (NOLOAD) : {
    _heap = .;
    . += __HEAP_SIZE;
    _heap_end = .;
  } > if_ldst_if_fetch

  .stack_location : {
  } > if_ldst_if_fetch
  . = ADDR(.stack_location);

  .stack ALIGN(16) (NOLOAD) : {
    _stack_end = .;
    . += __STACK_SIZE;
    . = ALIGN(16);
    _stack = .;
  } > if_ldst_if_fetch

  _scs = SIZEOF(.scs) > 0 ? ADDR(.scs) + SIZEOF(.scs) : 0;
  __eh_frame_hdr_start = SIZEOF(.eh_frame_hdr) > 0 ? ADDR(.eh_frame_hdr) : 0;
  __eh_frame_hdr_end = SIZEOF(.eh_frame_hdr) > 0 ? . : 0;
  PROVIDE(__executable_start = 0);
  PROVIDE(__executable_end = .);
}
