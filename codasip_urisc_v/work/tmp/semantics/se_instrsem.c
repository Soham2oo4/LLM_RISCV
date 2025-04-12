#define native_int8  char
#define native_int16 short
#define native_int32 long
#define native_int64 long long
#define __regopindex_type int __attribute__((bit_width(32)))
__regopindex_type codasip_regopindex(int, int) __attribute__((const));
#define bool _Bool
typedef int int12 __attribute__((bit_width(12)));
typedef int int13 __attribute__((bit_width(13)));
typedef signed native_int16 int16;
typedef int int21 __attribute__((bit_width(21)));
typedef signed native_int32 int32;
typedef signed native_int64 int64;
typedef signed native_int8 int8;
typedef unsigned int uint1 __attribute__((bit_width(1)));
typedef unsigned int uint10 __attribute__((bit_width(10)));
typedef unsigned int uint104 __attribute__((bit_width(104)));
typedef unsigned int uint112 __attribute__((bit_width(112)));
typedef unsigned int uint12 __attribute__((bit_width(12)));
typedef unsigned int uint120 __attribute__((bit_width(120)));
typedef unsigned int uint128 __attribute__((bit_width(128)));
typedef unsigned native_int16 uint16;
typedef unsigned int uint17 __attribute__((bit_width(17)));
typedef unsigned int uint19 __attribute__((bit_width(19)));
typedef unsigned int uint2 __attribute__((bit_width(2)));
typedef unsigned int uint20 __attribute__((bit_width(20)));
typedef unsigned int uint21 __attribute__((bit_width(21)));
typedef unsigned int uint22 __attribute__((bit_width(22)));
typedef unsigned int uint24 __attribute__((bit_width(24)));
typedef unsigned int uint25 __attribute__((bit_width(25)));
typedef unsigned int uint28 __attribute__((bit_width(28)));
typedef unsigned int uint29 __attribute__((bit_width(29)));
typedef unsigned int uint3 __attribute__((bit_width(3)));
typedef unsigned native_int32 uint32;
typedef unsigned int uint4 __attribute__((bit_width(4)));
typedef unsigned int uint40 __attribute__((bit_width(40)));
typedef unsigned int uint48 __attribute__((bit_width(48)));
typedef unsigned int uint5 __attribute__((bit_width(5)));
typedef unsigned int uint56 __attribute__((bit_width(56)));
typedef unsigned native_int64 uint64;
typedef unsigned int uint7 __attribute__((bit_width(7)));
typedef unsigned int uint72 __attribute__((bit_width(72)));
typedef unsigned native_int8 uint8;
typedef unsigned int uint80 __attribute__((bit_width(80)));
typedef unsigned int uint88 __attribute__((bit_width(88)));
typedef unsigned int uint96 __attribute__((bit_width(96)));
int _codasip_assert_function(uint1 condition, const char text[], const char file[], int line);
#ifndef codasip_assert
#define codasip_assert(condition, ...) if (condition); else _codasip_assert_function((condition), #condition, __FILE__, __LINE__)
#endif
int _codasip_error_function(int verbosity, const char text[], const char file[], int line);
#ifndef codasip_error
#define codasip_error(verbosity, text, ...) _codasip_error_function((verbosity), text, __FILE__, __LINE__)
#endif
int _codasip_fatal_function(int exit_code, const char text[], const char file[], int line);
#ifndef codasip_fatal
#define codasip_fatal(exit_code, text, ...) _codasip_fatal_function((exit_code), text, __FILE__, __LINE__)
#endif
int _codasip_warning_function(int verbosity, const char text[], const char file[], int line);
#ifndef codasip_warning
#define codasip_warning(verbosity, text, ...) _codasip_warning_function((verbosity), text, __FILE__, __LINE__)
#endif
int12 codasip_immread_int12(int32) __attribute__((const));
int13 codasip_immread_int13(int32) __attribute__((const));
int21 codasip_immread_int21(int32) __attribute__((const));
int32 codasip_immread_int32(int32) __attribute__((const));
uint12 codasip_immread_uint12(int32) __attribute__((const));
uint20 codasip_immread_uint20(int32) __attribute__((const));
uint32 codasip_immread_uint32(int32) __attribute__((const));
uint5 codasip_immread_uint5(int32) __attribute__((const));
void codasip_compiler_interrupt_return(const char* name = "machine");
void codasip_compiler_priority(int32 priority);
void codasip_compiler_schedule_class(int32 index);
void codasip_compiler_undefined();
void codasip_compiler_unused();
void codasip_halt();
void codasip_nop();
uint1 p_meip;
uint1 p_msip;
uint1 p_mtip;
uint1 p_wfi;
uint1 p_nmi;
uint32 p_nmi_mtval;
uint32 p_boot_addr;
volatile uint32 if_ldst__[2048];
volatile uint8 if_ldst__sb1__[2048];
volatile uint16 if_ldst__sb2__[2048];
volatile uint24 if_ldst__sb3__[2048];
volatile uint32 if_ldst__sb4__[2048];
volatile uint40 if_ldst__sb5__[2048];
volatile uint48 if_ldst__sb6__[2048];
volatile uint56 if_ldst__sb7__[2048];
volatile uint64 if_ldst__sb8__[2048];
volatile uint72 if_ldst__sb9__[2048];
volatile uint80 if_ldst__sb10__[2048];
volatile uint88 if_ldst__sb11__[2048];
volatile uint96 if_ldst__sb12__[2048];
volatile uint104 if_ldst__sb13__[2048];
volatile uint112 if_ldst__sb14__[2048];
volatile uint120 if_ldst__sb15__[2048];
volatile uint128 if_ldst__sb16__[2048];
volatile uint32 if_fetch__[2048];
volatile uint8 if_fetch__sb1__[2048];
volatile uint16 if_fetch__sb2__[2048];
volatile uint24 if_fetch__sb3__[2048];
volatile uint32 if_fetch__sb4__[2048];
volatile uint40 if_fetch__sb5__[2048];
volatile uint48 if_fetch__sb6__[2048];
volatile uint56 if_fetch__sb7__[2048];
volatile uint64 if_fetch__sb8__[2048];
volatile uint72 if_fetch__sb9__[2048];
volatile uint80 if_fetch__sb10__[2048];
volatile uint88 if_fetch__sb11__[2048];
volatile uint96 if_fetch__sb12__[2048];
volatile uint104 if_fetch__sb13__[2048];
volatile uint112 if_fetch__sb14__[2048];
volatile uint120 if_fetch__sb15__[2048];
volatile uint128 if_fetch__sb16__[2048];
volatile uint32 r_PC;
volatile uint32 r_csr_marchid;
volatile uint32 r_csr_mcause;
volatile uint32 r_csr_mcountinhibit;
volatile uint64 r_csr_mcycle;
volatile uint32 r_csr_mepc;
volatile uint32 r_csr_mhartid;
volatile uint32 r_csr_mie;
volatile uint64 r_csr_minstret;
volatile uint32 r_csr_mip;
volatile uint32 r_csr_misa;
volatile uint32 r_csr_mscratch;
volatile uint32 r_csr_mstatus;
volatile uint32 r_csr_mtval;
volatile uint32 r_csr_mtvec;
volatile uint1 r_csr_nmi;
volatile uint32 r_csr_nmi_mtval;
uint1 r_fetch_fault;
uint1 r_fetch_hresp;
uint1 r_illegal_instr;
uint32 r_instr_fetch;
uint1 r_ldst_hresp;
uint1 r_mcycle_inhibit;
uint1 r_minstret_inhibit;
uint1 r_minstret_written;
volatile uint32 r_nmi_handler;
uint1 r_pf_mem_error;
uint1 r_reset_init;
uint32 r_syscall_addr;
uint1 r_unknown_instr;
uint1 r_wfi;
uint1 r_wfi_ce;
volatile uint32 rf_gpr[32];
int32 sc_loads;
int32 sc_stores;
int32 sc_multiply;
int32 sc_divide;
uint128 codasip_if_ldst___read__(unsigned long long address, unsigned int sbc)
{
    switch (sbc)
    {
        case 1:
        {
            return if_ldst__sb1__[address];
        }
        case 2:
        {
            return if_ldst__sb2__[address];
        }
        case 3:
        {
            return if_ldst__sb3__[address];
        }
        case 4:
        {
            return if_ldst__sb4__[address];
        }
        case 5:
        {
            return if_ldst__sb5__[address];
        }
        case 6:
        {
            return if_ldst__sb6__[address];
        }
        case 7:
        {
            return if_ldst__sb7__[address];
        }
        case 8:
        {
            return if_ldst__sb8__[address];
        }
        case 9:
        {
            return if_ldst__sb9__[address];
        }
        case 10:
        {
            return if_ldst__sb10__[address];
        }
        case 11:
        {
            return if_ldst__sb11__[address];
        }
        case 12:
        {
            return if_ldst__sb12__[address];
        }
        case 13:
        {
            return if_ldst__sb13__[address];
        }
        case 14:
        {
            return if_ldst__sb14__[address];
        }
        case 15:
        {
            return if_ldst__sb15__[address];
        }
        case 16:
        {
            return if_ldst__sb16__[address];
        }
        default:
        {
            codasip_error(0, "Invalid sbc %d.", sbc);
            return 0;
        }
    }
}

void codasip_if_ldst___write__(uint128 data, unsigned long long address, unsigned int sbc)
{
    switch (sbc)
    {
        case 1:
        {
            if_ldst__sb1__[address] = data;
            break;
        }
        case 2:
        {
            if_ldst__sb2__[address] = data;
            break;
        }
        case 3:
        {
            if_ldst__sb3__[address] = data;
            break;
        }
        case 4:
        {
            if_ldst__sb4__[address] = data;
            break;
        }
        case 5:
        {
            if_ldst__sb5__[address] = data;
            break;
        }
        case 6:
        {
            if_ldst__sb6__[address] = data;
            break;
        }
        case 7:
        {
            if_ldst__sb7__[address] = data;
            break;
        }
        case 8:
        {
            if_ldst__sb8__[address] = data;
            break;
        }
        case 9:
        {
            if_ldst__sb9__[address] = data;
            break;
        }
        case 10:
        {
            if_ldst__sb10__[address] = data;
            break;
        }
        case 11:
        {
            if_ldst__sb11__[address] = data;
            break;
        }
        case 12:
        {
            if_ldst__sb12__[address] = data;
            break;
        }
        case 13:
        {
            if_ldst__sb13__[address] = data;
            break;
        }
        case 14:
        {
            if_ldst__sb14__[address] = data;
            break;
        }
        case 15:
        {
            if_ldst__sb15__[address] = data;
            break;
        }
        case 16:
        {
            if_ldst__sb16__[address] = data;
            break;
        }
        default:
        {
            codasip_error(0, "Invalid sbc %d.", sbc);
            break;
        }
    }
}

uint128 codasip_if_fetch___read__(unsigned long long address, unsigned int sbc)
{
    switch (sbc)
    {
        case 1:
        {
            return if_fetch__sb1__[address];
        }
        case 2:
        {
            return if_fetch__sb2__[address];
        }
        case 3:
        {
            return if_fetch__sb3__[address];
        }
        case 4:
        {
            return if_fetch__sb4__[address];
        }
        case 5:
        {
            return if_fetch__sb5__[address];
        }
        case 6:
        {
            return if_fetch__sb6__[address];
        }
        case 7:
        {
            return if_fetch__sb7__[address];
        }
        case 8:
        {
            return if_fetch__sb8__[address];
        }
        case 9:
        {
            return if_fetch__sb9__[address];
        }
        case 10:
        {
            return if_fetch__sb10__[address];
        }
        case 11:
        {
            return if_fetch__sb11__[address];
        }
        case 12:
        {
            return if_fetch__sb12__[address];
        }
        case 13:
        {
            return if_fetch__sb13__[address];
        }
        case 14:
        {
            return if_fetch__sb14__[address];
        }
        case 15:
        {
            return if_fetch__sb15__[address];
        }
        case 16:
        {
            return if_fetch__sb16__[address];
        }
        default:
        {
            codasip_error(0, "Invalid sbc %d.", sbc);
            return 0;
        }
    }
}

void codasip_if_fetch___write__(uint128 data, unsigned long long address, unsigned int sbc)
{
    switch (sbc)
    {
        case 1:
        {
            if_fetch__sb1__[address] = data;
            break;
        }
        case 2:
        {
            if_fetch__sb2__[address] = data;
            break;
        }
        case 3:
        {
            if_fetch__sb3__[address] = data;
            break;
        }
        case 4:
        {
            if_fetch__sb4__[address] = data;
            break;
        }
        case 5:
        {
            if_fetch__sb5__[address] = data;
            break;
        }
        case 6:
        {
            if_fetch__sb6__[address] = data;
            break;
        }
        case 7:
        {
            if_fetch__sb7__[address] = data;
            break;
        }
        case 8:
        {
            if_fetch__sb8__[address] = data;
            break;
        }
        case 9:
        {
            if_fetch__sb9__[address] = data;
            break;
        }
        case 10:
        {
            if_fetch__sb10__[address] = data;
            break;
        }
        case 11:
        {
            if_fetch__sb11__[address] = data;
            break;
        }
        case 12:
        {
            if_fetch__sb12__[address] = data;
            break;
        }
        case 13:
        {
            if_fetch__sb13__[address] = data;
            break;
        }
        case 14:
        {
            if_fetch__sb14__[address] = data;
            break;
        }
        case 15:
        {
            if_fetch__sb15__[address] = data;
            break;
        }
        case 16:
        {
            if_fetch__sb16__[address] = data;
            break;
        }
        default:
        {
            codasip_error(0, "Invalid sbc %d.", sbc);
            break;
        }
    }
}

uint32 MI11rf_gpr_read(const uint5 MI1iIH1_11rf_gpr_read);
void MI12rf_gpr_write(const uint5 MI1iIH1_12rf_gpr_write, const uint32 MI3valIH1_12rf_gpr_write);
uint32 MI19ldst_interface_read(const uint32 MI5haddrIH1_19ldst_interface_read, uint32 MI5hsizeIH1_19ldst_interface_read);
void MI20ldst_interface_write(const uint32 MI5wdataIH1_20ldst_interface_write, const uint32 MI5haddrIH1_20ldst_interface_write, uint32 MI5hsizeIH1_20ldst_interface_write);
uint32 MI8load_val(const uint32 MI3opcIH1_8load_val, const uint32 MI7addressIH1_8load_val);
void MI9write_val(const uint32 MI3opcIH1_9write_val, const uint32 MI7addressIH1_9write_val, const uint32 MI3valIH1_9write_val);
uint32 MI7compute(const uint32 MI3opcIH1_7compute, const uint32 MI3op1IH1_7compute, const uint32 MI3op2IH1_7compute);
void MI4halt();
uint1 MI16check_mem_access(const uint32 MI3sbcIH1_16check_mem_access, const uint32 MI7addressIH1_16check_mem_access);
void MI15print_trap_info(const uint32 MI10trap_causeIH1_15print_trap_info, const uint32 MI4tvalIH1_15print_trap_info);
void MI9take_trap(const uint32 MI10trap_causeIH1_9take_trap, const uint32 MI7bad_valIH1_9take_trap, const uint1 MI9decrementIH1_9take_trap);
void MI8do_xcall();
uint32 MI11rf_gpr_read(const uint5 MI1iIH1_11rf_gpr_read)
{
uint32 MI3valIH1_11rf_gpr_readB0;


#line 50 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
if ((MI1iIH1_11rf_gpr_read > (int32)0L))
{
    #line 52 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    MI3valIH1_11rf_gpr_readB0 = rf_gpr[MI1iIH1_11rf_gpr_read];
    #line 54 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    ;
}
#line 59 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
else 
{
    #line 62 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    MI3valIH1_11rf_gpr_readB0 = (int32)0L;
}


#line 64 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
return MI3valIH1_11rf_gpr_readB0;


}

void MI12rf_gpr_write(const uint5 MI1iIH1_12rf_gpr_write, const uint32 MI3valIH1_12rf_gpr_write)
{

#line 70 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
if ((MI1iIH1_12rf_gpr_write != (int32)0L))
{
    {
    }
    {
        #line 84 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        rf_gpr[MI1iIH1_12rf_gpr_write] = MI3valIH1_12rf_gpr_write;
    }
}


}

uint32 MI19ldst_interface_read(const uint32 MI5haddrIH1_19ldst_interface_read, uint32 MI5hsizeIH1_19ldst_interface_read)
{
uint32 MI6resultIH1_19ldst_interface_readB0;

uint1 MI5hrespIH1_19ldst_interface_readB0;

uint2 MI5hprotIH1_19ldst_interface_readB0;


#line 149 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
MI5hprotIH1_19ldst_interface_readB0 = (int32)3L;


#line 150 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
MI5hrespIH1_19ldst_interface_readB0 = (uint1)(0);


#line 150 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
MI6resultIH1_19ldst_interface_readB0 = codasip_if_ldst___read__(MI5haddrIH1_19ldst_interface_read, MI5hsizeIH1_19ldst_interface_read);


#line 151 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
r_ldst_hresp = MI5hrespIH1_19ldst_interface_readB0;


#line 152 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
return MI6resultIH1_19ldst_interface_readB0;


}

void MI20ldst_interface_write(const uint32 MI5wdataIH1_20ldst_interface_write, const uint32 MI5haddrIH1_20ldst_interface_write, uint32 MI5hsizeIH1_20ldst_interface_write)
{
uint1 MI5hrespIH1_20ldst_interface_writeB0;

uint2 MI5hprotIH1_20ldst_interface_writeB0;


#line 159 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
MI5hprotIH1_20ldst_interface_writeB0 = (int32)3L;


#line 160 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
MI5hrespIH1_20ldst_interface_writeB0 = (uint1)(0);


#line 160 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
codasip_if_ldst___write__(MI5wdataIH1_20ldst_interface_write, MI5haddrIH1_20ldst_interface_write, MI5hsizeIH1_20ldst_interface_write);


#line 161 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
r_ldst_hresp = MI5hrespIH1_20ldst_interface_writeB0;


}

uint32 MI8load_val(const uint32 MI3opcIH1_8load_val, const uint32 MI7addressIH1_8load_val)
{
uint32 MI6resultIH1_8load_valB0;

uint32 MI3sbcIH1_8load_valB0;


#line 169 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
MI6resultIH1_8load_valB0 = (int32)0L;


#line 172 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
switch (MI3opcIH1_8load_val)
{
    #line 175 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)131UL:
    #line 176 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)643UL:
    {
        #line 177 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        MI3sbcIH1_8load_valB0 = (int32)2L;
        #line 178 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        break;
    }
    #line 180 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)259UL:
    {
        #line 184 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        MI3sbcIH1_8load_valB0 = (int32)4L;
        #line 185 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        break;
    }
    #line 194 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    default:
    {
        #line 195 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        MI3sbcIH1_8load_valB0 = (int32)1L;
        #line 196 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        break;
    }
}


#line 199 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
if (MI16check_mem_access(MI3sbcIH1_8load_valB0, MI7addressIH1_8load_val))
{
    #line 201 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    MI9take_trap((uint5)(0x4), MI7addressIH1_8load_val, (bool)(1));
    #line 202 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    r_pf_mem_error = (int32)1L;
    #line 203 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    return (int32)0L;
}


#line 206 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
switch (MI3opcIH1_8load_val)
{
    #line 208 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)3UL:
    {
        #line 209 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        MI6resultIH1_8load_valB0 = (int32)(((int8)(MI19ldst_interface_read(MI7addressIH1_8load_val, (int32)1L))));
        #line 210 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        break;
    }
    #line 211 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)515UL:
    {
        #line 212 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        MI6resultIH1_8load_valB0 = (uint32)(((uint8)(MI19ldst_interface_read(MI7addressIH1_8load_val, (int32)1L))));
        #line 213 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        break;
    }
    #line 214 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)131UL:
    {
        #line 215 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        MI6resultIH1_8load_valB0 = (int32)(((int16)(MI19ldst_interface_read(MI7addressIH1_8load_val, (int32)2L))));
        #line 216 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        break;
    }
    #line 217 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)643UL:
    {
        #line 218 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        MI6resultIH1_8load_valB0 = (uint32)(((uint16)(MI19ldst_interface_read(MI7addressIH1_8load_val, (int32)2L))));
        #line 219 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        break;
    }
    #line 220 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)259UL:
    {
        #line 221 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        MI6resultIH1_8load_valB0 = (int32)(((int32)(MI19ldst_interface_read(MI7addressIH1_8load_val, (int32)4L))));
        #line 222 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        break;
    }
    #line 231 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    default:
    {
        #line 232 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        codasip_fatal((int32)128L, "load_val() - unknown opcode (0x%X)", MI3opcIH1_8load_val);
        #line 233 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        break;
    }
}


#line 237 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
if ((r_ldst_hresp != (uint1)(0x0)))
{
    uint32 MI11error_causeIH1_8load_valB0B10;
    #line 240 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    switch (MI3opcIH1_8load_val)
    {
        #line 242 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        case (uint32)3UL:
        #line 243 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        case (uint32)515UL:
        #line 244 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        case (uint32)131UL:
        #line 245 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        case (uint32)643UL:
        #line 246 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        case (uint32)259UL:
        {
            #line 251 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
            MI11error_causeIH1_8load_valB0B10 = (uint32)2147483664UL;
            #line 252 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
            MI9take_trap(MI11error_causeIH1_8load_valB0B10, MI7addressIH1_8load_val, (bool)(1));
            #line 253 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
            r_pf_mem_error = (int32)1L;
            #line 254 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
            return (int32)0L;
        }
        #line 255 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        default:
        {
            #line 256 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
            codasip_fatal((int32)128L, "load_val() - unknown opcode (0x%X)", MI3opcIH1_8load_val);
            #line 257 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
            break;
        }
    }
}


#line 263 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
;


#line 267 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
return MI6resultIH1_8load_valB0;


}

void MI9write_val(const uint32 MI3opcIH1_9write_val, const uint32 MI7addressIH1_9write_val, const uint32 MI3valIH1_9write_val)
{
uint32 MI11error_causeIH1_9write_valB0;

uint32 MI3sbcIH1_9write_valB0;


#line 275 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
switch (MI3opcIH1_9write_val)
{
    #line 277 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)163UL:
    {
        #line 278 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        MI3sbcIH1_9write_valB0 = (int32)2L;
        #line 279 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        break;
    }
    #line 280 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)291UL:
    {
        #line 281 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        MI3sbcIH1_9write_valB0 = (int32)4L;
        #line 282 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        break;
    }
    #line 288 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    default:
    {
        #line 289 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        MI3sbcIH1_9write_valB0 = (int32)1L;
        #line 290 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        break;
    }
}


#line 294 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
if (MI16check_mem_access(MI3sbcIH1_9write_valB0, MI7addressIH1_9write_val))
{
    #line 296 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    MI9take_trap((uint5)(0x6), MI7addressIH1_9write_val, (bool)(1));
    #line 297 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    r_pf_mem_error = (int32)1L;
    #line 298 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    return;
}


#line 301 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
switch (MI3opcIH1_9write_val)
{
    #line 303 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)35UL:
    {
        #line 304 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        MI20ldst_interface_write((MI3valIH1_9write_val & (int32)255L), MI7addressIH1_9write_val, (int32)1L);
        #line 305 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        break;
    }
    #line 306 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)163UL:
    {
        #line 307 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        MI20ldst_interface_write((MI3valIH1_9write_val & (int32)65535L), MI7addressIH1_9write_val, (int32)2L);
        #line 308 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        break;
    }
    #line 309 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)291UL:
    {
        #line 310 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        MI20ldst_interface_write((MI3valIH1_9write_val & (uint32)4294967295UL), MI7addressIH1_9write_val, (int32)4L);
        #line 311 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        break;
    }
    #line 317 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    default:
    {
        #line 318 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        codasip_fatal((int32)128L, "write_val() - unknown opcode (0x%X)", MI3opcIH1_9write_val);
        #line 319 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        break;
    }
}


#line 323 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
if ((r_ldst_hresp == (uint1)(0x0)))
{
    #line 326 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    ;
    {
    }
    #line 345 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    return;
}


#line 349 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
MI11error_causeIH1_9write_valB0 = (uint32)2147483664UL;


#line 351 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
MI9take_trap(MI11error_causeIH1_9write_valB0, MI7addressIH1_9write_val, (bool)(1));


#line 352 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
r_pf_mem_error = (int32)1L;


}

uint32 MI7compute(const uint32 MI3opcIH1_7compute, const uint32 MI3op1IH1_7compute, const uint32 MI3op2IH1_7compute)
{
uint32 MI6resultIH1_7computeB0;


#line 358 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
MI6resultIH1_7computeB0 = (int32)0L;


#line 359 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
switch (MI3opcIH1_7compute)
{
    #line 458 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)51UL:
    #line 459 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)19UL:
    {
        #line 460 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        MI6resultIH1_7computeB0 = ((int32)((MI3op1IH1_7compute)) + (int32)((MI3op2IH1_7compute)));
        #line 461 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        break;
    }
    #line 462 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)32819UL:
    {
        #line 463 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        MI6resultIH1_7computeB0 = ((int32)((MI3op1IH1_7compute)) - (int32)((MI3op2IH1_7compute)));
        #line 464 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        break;
    }
    #line 465 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)947UL:
    #line 466 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)915UL:
    {
        #line 467 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        MI6resultIH1_7computeB0 = (MI3op1IH1_7compute & MI3op2IH1_7compute);
        #line 468 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        break;
    }
    #line 469 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)819UL:
    #line 470 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)787UL:
    {
        #line 471 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        MI6resultIH1_7computeB0 = (MI3op1IH1_7compute | MI3op2IH1_7compute);
        #line 472 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        break;
    }
    #line 473 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)563UL:
    #line 474 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)531UL:
    {
        #line 475 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        MI6resultIH1_7computeB0 = (MI3op1IH1_7compute ^ MI3op2IH1_7compute);
        #line 476 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        break;
    }
    #line 477 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)307UL:
    #line 478 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)275UL:
    {
        #line 479 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        if (((int32)((MI3op1IH1_7compute)) < (int32)((MI3op2IH1_7compute))))
        {
            #line 481 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
            MI6resultIH1_7computeB0 = (int32)1L;
        }
        #line 483 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        else 
        {
            #line 485 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
            MI6resultIH1_7computeB0 = (int32)0L;
        }
        #line 487 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        break;
    }
    #line 488 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)435UL:
    #line 489 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)403UL:
    {
        #line 490 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        if ((MI3op1IH1_7compute < MI3op2IH1_7compute))
        {
            #line 492 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
            MI6resultIH1_7computeB0 = (int32)1L;
        }
        #line 494 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        else 
        {
            #line 496 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
            MI6resultIH1_7computeB0 = (int32)0L;
        }
        #line 498 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        break;
    }
    #line 499 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)179UL:
    #line 500 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)147UL:
    {
        #line 501 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        MI6resultIH1_7computeB0 = (MI3op1IH1_7compute << (uint5)(MI3op2IH1_7compute));
        #line 502 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        break;
    }
    #line 503 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)33459UL:
    #line 504 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)33427UL:
    {
        #line 505 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        MI6resultIH1_7computeB0 = ((int32)((MI3op1IH1_7compute)) >> (uint5)(MI3op2IH1_7compute));
        #line 506 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        break;
    }
    #line 507 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)691UL:
    #line 508 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)659UL:
    {
        #line 509 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        MI6resultIH1_7computeB0 = ((uint32)((MI3op1IH1_7compute)) >> (uint5)(MI3op2IH1_7compute));
        #line 510 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        break;
    }
    #line 511 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)99UL:
    {
        #line 512 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        MI6resultIH1_7computeB0 = ((MI3op1IH1_7compute == MI3op2IH1_7compute));
        #line 513 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        break;
    }
    #line 514 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)227UL:
    {
        #line 515 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        MI6resultIH1_7computeB0 = ((MI3op1IH1_7compute != MI3op2IH1_7compute));
        #line 516 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        break;
    }
    #line 517 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)611UL:
    {
        #line 518 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        MI6resultIH1_7computeB0 = (((int32)((MI3op1IH1_7compute)) < (int32)((MI3op2IH1_7compute))));
        #line 519 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        break;
    }
    #line 520 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)867UL:
    {
        #line 521 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        MI6resultIH1_7computeB0 = ((MI3op1IH1_7compute < MI3op2IH1_7compute));
        #line 522 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        break;
    }
    #line 523 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)739UL:
    {
        #line 524 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        MI6resultIH1_7computeB0 = (((int32)((MI3op1IH1_7compute)) >= (int32)((MI3op2IH1_7compute))));
        #line 525 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        break;
    }
    #line 526 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    case (uint32)995UL:
    {
        #line 527 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        MI6resultIH1_7computeB0 = ((MI3op1IH1_7compute >= MI3op2IH1_7compute));
        #line 528 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        break;
    }
    #line 529 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    default:
    {
        {
        }
        #line 534 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
        break;
    }
}


#line 536 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
return MI6resultIH1_7computeB0;


}

void MI4halt()
{
uint64 MI6retvalIH1_4haltB0;


#line 664 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
codasip_halt();


#line 666 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
MI6retvalIH1_4haltB0 = MI11rf_gpr_read((int32)10L);


#line 667 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
;


#line 668 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
;

{
}

{
}


}

uint1 MI16check_mem_access(const uint32 MI3sbcIH1_16check_mem_access, const uint32 MI7addressIH1_16check_mem_access)
{
{
}

{
    #line 718 "/home/project/codasip_urisc_v/model/ia/other/ia_utils.codal"
    return (bool)(0);
}


}

void MI15print_trap_info(const uint32 MI10trap_causeIH1_15print_trap_info, const uint32 MI4tvalIH1_15print_trap_info)
{
{
}


}

void MI9take_trap(const uint32 MI10trap_causeIH1_9take_trap, const uint32 MI7bad_valIH1_9take_trap, const uint1 MI9decrementIH1_9take_trap)
{
{
}


}

void MI8do_xcall()
{
uint1 MI4mpieIH1_8do_xcallB0;


#line 259 "/home/project/codasip_urisc_v/model/ia/other/ia_utils_priviledged.codal"
MI4mpieIH1_8do_xcallB0 = ((uint1)((r_csr_mstatus >> (int32)3L)));


#line 261 "/home/project/codasip_urisc_v/model/ia/other/ia_utils_priviledged.codal"
r_csr_mstatus = (((((uint32)((((((uint29)((((((uint28)((((((uint25)((((((uint24)((((((uint21)(((uint19)((r_csr_mstatus >> (int32)13L)))) << (int32)2L)) | (uint2)(0x3)))) << (int32)3L)) | ((uint3)((r_csr_mstatus >> (int32)8L)))))) << (int32)1L)) | MI4mpieIH1_8do_xcallB0))) << (int32)3L)) | ((uint3)((r_csr_mstatus >> (int32)4L)))))) << (int32)1L)) | (uint1)(0x0)))) << (int32)3L)) | ((uint3)((r_csr_mstatus >> (int32)0L)))));


}

static unsigned int g_MI3immIH1_10start_base11_9imm20_s123imm1_9imm20_s12_Index;
static unsigned int g_MI3immIH1_10start_base1_10load_imm32_Index;
static unsigned int g_MI3immIH1_10start_base1_8c_lui_hi_Index;
static unsigned int g_MI3immIH1_10start_base1_9c_addi_lo_Index;
static unsigned int g_MI3immIH1_10start_base6_4imm53imm1_4imm5_Index;
static unsigned int g_MI3valIH1_10start_base10_8imm20_hi3imm1_8imm20_hi_Index;
static unsigned int g_MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_Index;
static unsigned int g_MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_Index;
static unsigned int g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index;
static unsigned int g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index;
static unsigned int g_MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_Index;
static unsigned int g_MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20_Index;
static unsigned int g_MI4regsIH1_10start_base6_4regs3dst_Index;
static unsigned int g_MI4regsIH1_10start_base6_4regs3src_Index;
static unsigned int g_MI4regsIH1_10start_base9_7reg_any3dst_Index;
static unsigned int g_MI4regsIH1_10start_base9_7reg_any3src_Index;
static unsigned int g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index;
static unsigned int g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index;
static unsigned int g_MI4regsIH1_10start_base9_7reg_any4src1_Index;
static unsigned int g_MI4regsIH1_10start_base9_7reg_any4src2_Index;
static unsigned int g_MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple_Index;
static unsigned int g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index;
static unsigned int g_MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_Index;
static unsigned int g_MI7address_Index;
static unsigned int g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index;

void MI10i_mv_aliasIH1_10start_base(__regopindex_type MI7reg_anyIH1_10start_base9_7reg_any3dst, __regopindex_type MI7reg_anyIH1_10start_base9_7reg_any3src)
{
{
    {
        #line 123 "/home/project/codasip_urisc_v/model/share/isa/isa_caalias.codal"
        codasip_compiler_priority((int32)2L);
    }
    #line 124 "/home/project/codasip_urisc_v/model/share/isa/isa_caalias.codal"
    MI12rf_gpr_write(MI7reg_anyIH1_10start_base9_7reg_any3dst, MI11rf_gpr_read(MI7reg_anyIH1_10start_base9_7reg_any3src));
}
}

void MI10load_imm32IH1_10start_base(__regopindex_type MI4regsIH1_10start_base6_4regs3dst, uint32 MI3immIH1_10start_base1_10load_imm32)
{
{
    {
        #line 564 "/home/project/codasip_urisc_v/model/share/isa/isa_calias.codal"
        codasip_compiler_unused();
    }
    #line 565 "/home/project/codasip_urisc_v/model/share/isa/isa_calias.codal"
    MI12rf_gpr_write(MI4regsIH1_10start_base6_4regs3dst, MI3immIH1_10start_base1_10load_imm32);
}
}

int32 MI10opc_csrrciIH1_10start_base28_25opc_control_registers_imm3opc()
{
    return (uint10)(0x3f3);
}

int32 MI10opc_csrrsiIH1_10start_base28_25opc_control_registers_imm3opc()
{
    return (uint10)(0x373);
}

int32 MI10opc_csrrwiIH1_10start_base28_25opc_control_registers_imm3opc()
{
    return (uint10)(0x2f3);
}

int32 MI10opc_ebreakIH1_10start_base13_10opc_ebreak3opc()
{
    return (uint22)(0x473);
}

int32 MI10opc_fenceiIH1_10start_base13_10opc_fencei3opc()
{
    return (uint10)(0x8f);
}

int32 MI10opc_loadbuIH1_10start_base11_9opc_loads3opc()
{
    return (uint10)(0x203);
}

int32 MI10opc_loadhuIH1_10start_base11_9opc_loads3opc()
{
    return (uint10)(0x283);
}

int32 MI10opc_storebIH1_10start_base13_10opc_stores3opc()
{
    return (uint10)(0x23);
}

int32 MI10opc_storehIH1_10start_base13_10opc_stores3opc()
{
    return (uint10)(0xa3);
}

int32 MI10opc_storewIH1_10start_base13_10opc_stores3opc()
{
    return (uint10)(0x123);
}

int32 MI10rel_addr12IH1_10start_base13_10rel_addr124addr(int32 MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12)
{
    return ((int32)(MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12) << (int32)1L);
}

int32 MI10rel_addr20IH1_10start_base13_10rel_addr204addr(int32 MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20)
{
    return ((int32)(MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20) << (int32)1L);
}

void MI11i_comp_3regIH1_10start_base(int32 MI13opc_comp_3regIH1_10start_base16_13opc_comp_3reg3opc, __regopindex_type MI7reg_anyIH1_10start_base9_7reg_any3dst, __regopindex_type MI7reg_anyIH1_10start_base9_7reg_any4src1, __regopindex_type MI7reg_anyIH1_10start_base9_7reg_any4src2)
{
{
    {
        #line 229 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
        codasip_compiler_priority((int32)1L);
    }
    #line 230 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
    MI12rf_gpr_write(MI7reg_anyIH1_10start_base9_7reg_any3dst, MI7compute(MI13opc_comp_3regIH1_10start_base16_13opc_comp_3reg3opc, MI11rf_gpr_read(MI7reg_anyIH1_10start_base9_7reg_any4src1), MI11rf_gpr_read(MI7reg_anyIH1_10start_base9_7reg_any4src2)));
}
}

void MI11i_neg_aliasIH1_10start_base(__regopindex_type MI7reg_anyIH1_10start_base9_7reg_any3dst, __regopindex_type MI7reg_anyIH1_10start_base9_7reg_any3src)
{
{
    {
        #line 69 "/home/project/codasip_urisc_v/model/share/isa/isa_caalias.codal"
        codasip_compiler_priority((int32)1L);
    }
    #line 70 "/home/project/codasip_urisc_v/model/share/isa/isa_caalias.codal"
    MI12rf_gpr_write(MI7reg_anyIH1_10start_base9_7reg_any3dst, MI7compute((uint17)(0x8033), (int32)0L, MI11rf_gpr_read(MI7reg_anyIH1_10start_base9_7reg_any3src)));
}
}

void MI11i_nop_aliasIH1_10start_base()
{
{
    {
        #line 111 "/home/project/codasip_urisc_v/model/share/isa/isa_caalias.codal"
        codasip_nop();
    }
}
}

int32 MI11opc_i_fenceIH1_10start_base18_15opc_fence_param6param2()
{
    return (uint4)(0x8);
}

int32 MI11opc_o_fenceIH1_10start_base18_15opc_fence_param6param2()
{
    return (uint4)(0x4);
}

int32 MI11opc_r_fenceIH1_10start_base18_15opc_fence_param6param2()
{
    return (uint4)(0x2);
}

int32 MI11opc_w_fenceIH1_10start_base18_15opc_fence_param6param2()
{
    return (uint4)(0x1);
}

int12 MI11simm12_s_loIH1_10start_base10_8simm12_s8simm12_s(int12 MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo)
{
{
    {
        #line 327 "/home/project/codasip_urisc_v/model/share/isa/isa_ops.codal"
        codasip_compiler_unused();
    }
}
    return (int12)(MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo);
}

void MI12i_seqz_aliasIH1_10start_base(__regopindex_type MI7reg_anyIH1_10start_base9_7reg_any3dst, __regopindex_type MI7reg_anyIH1_10start_base9_7reg_any3src)
{
{
    {
        #line 136 "/home/project/codasip_urisc_v/model/share/isa/isa_caalias.codal"
        codasip_compiler_priority((int32)2L);
    }
    #line 137 "/home/project/codasip_urisc_v/model/share/isa/isa_caalias.codal"
    MI12rf_gpr_write(MI7reg_anyIH1_10start_base9_7reg_any3dst, MI7compute((uint10)(0x193), MI11rf_gpr_read(MI7reg_anyIH1_10start_base9_7reg_any3src), (int32)1L));
}
}

void MI12i_snez_aliasIH1_10start_base(__regopindex_type MI7reg_anyIH1_10start_base9_7reg_any3dst, __regopindex_type MI7reg_anyIH1_10start_base9_7reg_any3src)
{
{
    {
        #line 151 "/home/project/codasip_urisc_v/model/share/isa/isa_caalias.codal"
        codasip_compiler_priority((int32)2L);
    }
    #line 152 "/home/project/codasip_urisc_v/model/share/isa/isa_caalias.codal"
    MI12rf_gpr_write(MI7reg_anyIH1_10start_base9_7reg_any3dst, MI7compute((uint17)(0x1b3), (int32)0L, MI11rf_gpr_read(MI7reg_anyIH1_10start_base9_7reg_any3src)));
}
}

int32 MI12opc_io_fenceIH1_10start_base18_15opc_fence_param6param2()
{
    return (uint4)(0xc);
}

int32 MI12opc_ir_fenceIH1_10start_base18_15opc_fence_param6param2()
{
    return (uint4)(0xa);
}

int32 MI12opc_iw_fenceIH1_10start_base18_15opc_fence_param6param2()
{
    return (uint4)(0x9);
}

int32 MI12opc_or_fenceIH1_10start_base18_15opc_fence_param6param2()
{
    return (uint4)(0x6);
}

int32 MI12opc_ow_fenceIH1_10start_base18_15opc_fence_param6param2()
{
    return (uint4)(0x5);
}

int32 MI12opc_rw_fenceIH1_10start_base18_15opc_fence_param6param2()
{
    return (uint4)(0x3);
}

int32 MI13opc_ior_fenceIH1_10start_base18_15opc_fence_param6param2()
{
    return (uint4)(0xe);
}

int32 MI13opc_iow_fenceIH1_10start_base18_15opc_fence_param6param2()
{
    return (uint4)(0xd);
}

int32 MI13opc_irw_fenceIH1_10start_base18_15opc_fence_param6param2()
{
    return (uint4)(0xb);
}

int32 MI13opc_orw_fenceIH1_10start_base18_15opc_fence_param6param2()
{
    return (uint4)(0x7);
}

int12 MI13simm12_simpleIH1_10start_base8_6simm126simm12(int12 MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple)
{
    return MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple;
}

void MI14i_ext_hackatonIH1_10start_base(int32 MI21opc_hackaton_custom_iIH1_10start_base24_21opc_hackaton_custom_i3opc, __regopindex_type MI7reg_anyIH1_10start_base9_7reg_any3dst, __regopindex_type MI7reg_anyIH1_10start_base9_7reg_any4rs_1, __regopindex_type MI7reg_anyIH1_10start_base9_7reg_any4rs_2)
{
{
    int32 MI6resultIH1_10start_base1_14i_ext_hackatonB0, MI2s1IH1_10start_base1_14i_ext_hackatonB0, MI2s2IH1_10start_base1_14i_ext_hackatonB0, MI2s3IH1_10start_base1_14i_ext_hackatonB0;
    int32 MI7simd_a0IH1_10start_base1_14i_ext_hackatonB0, MI7simd_a1IH1_10start_base1_14i_ext_hackatonB0, MI7simd_b0IH1_10start_base1_14i_ext_hackatonB0, MI7simd_b1IH1_10start_base1_14i_ext_hackatonB0, MI11accumulatorIH1_10start_base1_14i_ext_hackatonB0;
    int64 MI5summaIH1_10start_base1_14i_ext_hackatonB0;
    #line 31 "/home/project/codasip_urisc_v/model/share/isa/isa_hackaton.codal"
    MI2s1IH1_10start_base1_14i_ext_hackatonB0 = MI11rf_gpr_read(MI7reg_anyIH1_10start_base9_7reg_any4rs_1);
    #line 32 "/home/project/codasip_urisc_v/model/share/isa/isa_hackaton.codal"
    MI2s2IH1_10start_base1_14i_ext_hackatonB0 = MI11rf_gpr_read(MI7reg_anyIH1_10start_base9_7reg_any4rs_2);
    #line 33 "/home/project/codasip_urisc_v/model/share/isa/isa_hackaton.codal"
    MI2s3IH1_10start_base1_14i_ext_hackatonB0 = MI11rf_gpr_read(MI7reg_anyIH1_10start_base9_7reg_any3dst);
    #line 35 "/home/project/codasip_urisc_v/model/share/isa/isa_hackaton.codal"
    switch (MI21opc_hackaton_custom_iIH1_10start_base24_21opc_hackaton_custom_i3opc)
    {
        #line 37 "/home/project/codasip_urisc_v/model/share/isa/isa_hackaton.codal"
        case (uint3)(0x0):
        {
            #line 38 "/home/project/codasip_urisc_v/model/share/isa/isa_hackaton.codal"
            MI6resultIH1_10start_base1_14i_ext_hackatonB0 = (((MI2s3IH1_10start_base1_14i_ext_hackatonB0 + ((MI2s1IH1_10start_base1_14i_ext_hackatonB0 * MI2s2IH1_10start_base1_14i_ext_hackatonB0)))) >> (int32)8L);
            #line 40 "/home/project/codasip_urisc_v/model/share/isa/isa_hackaton.codal"
            break;
        }
        #line 41 "/home/project/codasip_urisc_v/model/share/isa/isa_hackaton.codal"
        case (uint3)(0x1):
        {
            #line 43 "/home/project/codasip_urisc_v/model/share/isa/isa_hackaton.codal"
            MI6resultIH1_10start_base1_14i_ext_hackatonB0 = (MI2s3IH1_10start_base1_14i_ext_hackatonB0 + ((((MI2s1IH1_10start_base1_14i_ext_hackatonB0 * MI2s2IH1_10start_base1_14i_ext_hackatonB0)) >> (int32)8L)));
            #line 45 "/home/project/codasip_urisc_v/model/share/isa/isa_hackaton.codal"
            break;
        }
        #line 47 "/home/project/codasip_urisc_v/model/share/isa/isa_hackaton.codal"
        case (uint3)(0x2):
        {
            #line 49 "/home/project/codasip_urisc_v/model/share/isa/isa_hackaton.codal"
            break;
        }
        #line 50 "/home/project/codasip_urisc_v/model/share/isa/isa_hackaton.codal"
        case (uint3)(0x3):
        {
            #line 52 "/home/project/codasip_urisc_v/model/share/isa/isa_hackaton.codal"
            break;
        }
        #line 53 "/home/project/codasip_urisc_v/model/share/isa/isa_hackaton.codal"
        case (uint3)(0x4):
        {
            #line 55 "/home/project/codasip_urisc_v/model/share/isa/isa_hackaton.codal"
            break;
        }
        #line 56 "/home/project/codasip_urisc_v/model/share/isa/isa_hackaton.codal"
        default:
        {
            #line 57 "/home/project/codasip_urisc_v/model/share/isa/isa_hackaton.codal"
            MI6resultIH1_10start_base1_14i_ext_hackatonB0 = (int32)0L;
            #line 58 "/home/project/codasip_urisc_v/model/share/isa/isa_hackaton.codal"
            break;
        }
    }
    #line 61 "/home/project/codasip_urisc_v/model/share/isa/isa_hackaton.codal"
    MI12rf_gpr_write(MI7reg_anyIH1_10start_base9_7reg_any3dst, MI6resultIH1_10start_base1_14i_ext_hackatonB0);
}
}

void MI14i_get_pc_aliasIH1_10start_base(__regopindex_type MI7reg_anyIH1_10start_base9_7reg_any3dst)
{
{
    {
        #line 99 "/home/project/codasip_urisc_v/model/share/isa/isa_caalias.codal"
        codasip_compiler_priority((int32)2L);
    }
    #line 100 "/home/project/codasip_urisc_v/model/share/isa/isa_caalias.codal"
    MI12rf_gpr_write(MI7reg_anyIH1_10start_base9_7reg_any3dst, ((r_PC - (int32)4L)));
}
}

int32 MI14opc_hint_fenceIH1_10start_base18_15opc_fence_param6param2()
{
    return (uint4)(0x0);
}

int32 MI14opc_iorw_fenceIH1_10start_base18_15opc_fence_param6param2()
{
    return (uint4)(0xf);
}

void MI15i_comp_2reg_immIH1_10start_base(int32 MI17opc_comp_2reg_immIH1_10start_base20_17opc_comp_2reg_imm3opc, __regopindex_type MI7reg_anyIH1_10start_base9_7reg_any3dst, __regopindex_type MI7reg_anyIH1_10start_base9_7reg_any3src, int12 MI6simm12IH1_10start_base8_6simm126simm12)
{
{
    uint32 MI3valIH1_10start_base1_15i_comp_2reg_immB0;
    {
        #line 57 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
        codasip_compiler_priority((int32)1L);
    }
    #line 58 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
    MI3valIH1_10start_base1_15i_comp_2reg_immB0 = MI11rf_gpr_read(MI7reg_anyIH1_10start_base9_7reg_any3src);
    #line 59 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
    MI12rf_gpr_write(MI7reg_anyIH1_10start_base9_7reg_any3dst, MI7compute(MI17opc_comp_2reg_immIH1_10start_base20_17opc_comp_2reg_imm3opc, MI3valIH1_10start_base1_15i_comp_2reg_immB0, (int32)((MI6simm12IH1_10start_base8_6simm126simm12))));
}
}

void MI15i_jmp_rel_aliasIH1_10start_base(int32 MI10rel_addr20IH1_10start_base13_10rel_addr204addr)
{
{
    {
        #line 183 "/home/project/codasip_urisc_v/model/share/isa/isa_caalias.codal"
        codasip_compiler_priority((int32)2L);
    }
    #line 184 "/home/project/codasip_urisc_v/model/share/isa/isa_caalias.codal"
    r_PC = ((int32)(((r_PC - (int32)4L))) + (int32)((MI10rel_addr20IH1_10start_base13_10rel_addr204addr)));
}
}

int12 MI15simm12_pcrel_loIH1_10start_base8_6simm126simm12(int12 MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo)
{
{
    {
        #line 305 "/home/project/codasip_urisc_v/model/share/isa/isa_ops.codal"
        codasip_compiler_unused();
    }
}
    return (int12)(MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo);
}

void MI16i_call_reg_aliasIH1_10start_base(__regopindex_type MI7reg_anyIH1_10start_base9_7reg_any3src)
{
{
    uint64 MI3tmpIH1_10start_base1_16i_call_reg_aliasB0;
    {
        #line 197 "/home/project/codasip_urisc_v/model/share/isa/isa_caalias.codal"
        codasip_compiler_priority((int32)2L);
    }
    #line 198 "/home/project/codasip_urisc_v/model/share/isa/isa_caalias.codal"
    MI3tmpIH1_10start_base1_16i_call_reg_aliasB0 = r_PC;
    #line 201 "/home/project/codasip_urisc_v/model/share/isa/isa_caalias.codal"
    r_PC = (MI11rf_gpr_read(MI7reg_anyIH1_10start_base9_7reg_any3src) & (uint64)18446744073709551614ULL);
    #line 202 "/home/project/codasip_urisc_v/model/share/isa/isa_caalias.codal"
    MI12rf_gpr_write((int32)1L, MI3tmpIH1_10start_base1_16i_call_reg_aliasB0);
}
}

void MI16i_call_rel_aliasIH1_10start_base(int32 MI10rel_addr20IH1_10start_base13_10rel_addr204addr)
{
{
    uint64 MI3tmpIH1_10start_base1_16i_call_rel_aliasB0;
    {
        #line 168 "/home/project/codasip_urisc_v/model/share/isa/isa_caalias.codal"
        codasip_compiler_priority((int32)1L);
    }
    #line 169 "/home/project/codasip_urisc_v/model/share/isa/isa_caalias.codal"
    MI3tmpIH1_10start_base1_16i_call_rel_aliasB0 = r_PC;
    #line 170 "/home/project/codasip_urisc_v/model/share/isa/isa_caalias.codal"
    r_PC = ((int32)(((r_PC - (int32)4L))) + (int32)((MI10rel_addr20IH1_10start_base13_10rel_addr204addr)));
    #line 171 "/home/project/codasip_urisc_v/model/share/isa/isa_caalias.codal"
    MI12rf_gpr_write((int32)1L, MI3tmpIH1_10start_base1_16i_call_rel_aliasB0);
}
}

void MI16i_jump_reg_aliasIH1_10start_base(__regopindex_type MI7reg_anyIH1_10start_base9_7reg_any3src)
{
{
    {
        #line 214 "/home/project/codasip_urisc_v/model/share/isa/isa_caalias.codal"
        codasip_compiler_priority((int32)2L);
    }
    #line 215 "/home/project/codasip_urisc_v/model/share/isa/isa_caalias.codal"
    r_PC = (MI11rf_gpr_read(MI7reg_anyIH1_10start_base9_7reg_any3src) & (uint64)18446744073709551614ULL);
}
}

int12 MI17simm12_s_pcrel_loIH1_10start_base10_8simm12_s8simm12_s(int12 MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo)
{
{
    {
        #line 347 "/home/project/codasip_urisc_v/model/share/isa/isa_ops.codal"
        codasip_compiler_unused();
    }
}
    return (int12)(MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo);
}

void MI21i_comp_2reg_imm_shiftIH1_10start_base(int32 MI23opc_comp_2reg_imm_shiftIH1_10start_base26_23opc_comp_2reg_imm_shift3opc, __regopindex_type MI7reg_anyIH1_10start_base9_7reg_any3dst, __regopindex_type MI7reg_anyIH1_10start_base9_7reg_any3src, uint5 MI9shift_immIH1_10start_base11_9shift_imm3imm)
{
{
    uint32 MI3valIH1_10start_base1_21i_comp_2reg_imm_shiftB0;
    {
        #line 103 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
        codasip_compiler_priority((int32)1L);
    }
    #line 104 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
    MI3valIH1_10start_base1_21i_comp_2reg_imm_shiftB0 = MI11rf_gpr_read(MI7reg_anyIH1_10start_base9_7reg_any3src);
    #line 105 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
    MI12rf_gpr_write(MI7reg_anyIH1_10start_base9_7reg_any3dst, MI7compute(MI23opc_comp_2reg_imm_shiftIH1_10start_base26_23opc_comp_2reg_imm_shift3opc, MI3valIH1_10start_base1_21i_comp_2reg_imm_shiftB0, (uint32)((MI9shift_immIH1_10start_base11_9shift_imm3imm))));
}
}

void MI21i_control_conditionalIH1_10start_base(int32 MI23opc_control_conditionalIH1_10start_base26_23opc_control_conditional3opc, __regopindex_type MI7reg_anyIH1_10start_base9_7reg_any4src1, __regopindex_type MI7reg_anyIH1_10start_base9_7reg_any4src2, int32 MI10rel_addr12IH1_10start_base13_10rel_addr124addr)
{
{
    {
        #line 411 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
        codasip_compiler_priority((int32)1L);
    }
    #line 412 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
    if (MI7compute(MI23opc_control_conditionalIH1_10start_base26_23opc_control_conditional3opc, MI11rf_gpr_read(MI7reg_anyIH1_10start_base9_7reg_any4src1), MI11rf_gpr_read(MI7reg_anyIH1_10start_base9_7reg_any4src2)))
    {
        uint32 MI8jmp_addrIH1_10start_base1_21i_control_conditionalB0B1;
        #line 415 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
        MI8jmp_addrIH1_10start_base1_21i_control_conditionalB0B1 = ((int32)(((r_PC - (int32)4L))) + (int32)((MI10rel_addr12IH1_10start_base13_10rel_addr124addr)));
        {
        }
        {
            #line 430 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
            r_PC = MI8jmp_addrIH1_10start_base1_21i_control_conditionalB0B1;
        }
    }
}
}

void MI21i_ori_emulation_aliasIH1_10start_base(__regopindex_type MI7reg_anyIH1_10start_base9_7reg_any3dst, __regopindex_type MI7reg_anyIH1_10start_base9_7reg_any3src, int12 MI6simm12IH1_10start_base8_6simm126simm12)
{
{
    #line 40 "/home/project/codasip_urisc_v/model/share/isa/isa_calias.codal"
    MI12rf_gpr_write(MI7reg_anyIH1_10start_base9_7reg_any3dst, MI7compute((uint10)(0x313), MI11rf_gpr_read(MI7reg_anyIH1_10start_base9_7reg_any3src), (int32)((MI6simm12IH1_10start_base8_6simm126simm12))));
}
}

int32 MI21opc_hackaton_custom_aIH1_10start_base24_21opc_hackaton_custom_i3opc()
{
    return (uint3)(0x0);
}

int32 MI21opc_hackaton_custom_bIH1_10start_base24_21opc_hackaton_custom_i3opc()
{
    return (uint3)(0x1);
}

int32 MI21opc_hackaton_custom_cIH1_10start_base24_21opc_hackaton_custom_i3opc()
{
    return (uint3)(0x2);
}

int32 MI21opc_hackaton_custom_dIH1_10start_base24_21opc_hackaton_custom_i3opc()
{
    return (uint3)(0x3);
}

int32 MI21opc_hackaton_custom_eIH1_10start_base24_21opc_hackaton_custom_i3opc()
{
    return (uint3)(0x4);
}

void MI23i_control_registers_immIH1_10start_base(int32 MI25opc_control_registers_immIH1_10start_base28_25opc_control_registers_imm3opc, __regopindex_type MI7reg_anyIH1_10start_base9_7reg_any3dst, __regopindex_type MI6op_csrIH1_10start_base8_6op_csr3csr, uint5 MI4imm5IH1_10start_base6_4imm53imm)
{
{
    uint32 MI8writeValIH1_10start_base1_23i_control_registers_immB0;
    #line 765 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
    MI8writeValIH1_10start_base1_23i_control_registers_immB0 = (int32)0L;
    {
        #line 766 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
        codasip_compiler_unused();
    }
    {
    }
}
}

void MI23i_control_registers_regIH1_10start_base(int32 MI25opc_control_registers_regIH1_10start_base28_25opc_control_registers_reg3opc, __regopindex_type MI7reg_anyIH1_10start_base9_7reg_any3dst, __regopindex_type MI6op_csrIH1_10start_base8_6op_csr3csr, __regopindex_type MI7reg_anyIH1_10start_base9_7reg_any3src)
{
{
    uint32 MI8writeValIH1_10start_base1_23i_control_registers_regB0;
    #line 727 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
    MI8writeValIH1_10start_base1_23i_control_registers_regB0 = (int32)0L;
    {
        #line 728 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
        codasip_compiler_unused();
    }
    {
    }
}
}

int32 MI3immIH1_10start_base11_9imm20_s123imm1_9imm20_s12()
{
    return codasip_immread_uint20(g_MI3immIH1_10start_base11_9imm20_s123imm1_9imm20_s12_Index);
}

uint32 MI3immIH1_10start_base1_10load_imm32()
{
    return codasip_immread_uint32(g_MI3immIH1_10start_base1_10load_imm32_Index);
}

uint32 MI3immIH1_10start_base1_8c_lui_hi()
{
    return codasip_immread_uint32(g_MI3immIH1_10start_base1_8c_lui_hi_Index);
}

uint32 MI3immIH1_10start_base1_9c_addi_lo()
{
    return codasip_immread_uint32(g_MI3immIH1_10start_base1_9c_addi_lo_Index);
}

uint5 MI3immIH1_10start_base6_4imm53imm1_4imm5()
{
    return codasip_immread_uint5(g_MI3immIH1_10start_base6_4imm53imm1_4imm5_Index);
}

int32 MI3valIH1_10start_base10_8imm20_hi3imm1_8imm20_hi()
{
    return  (  (  (  ( codasip_immread_uint32(g_MI3valIH1_10start_base10_8imm20_hi3imm1_8imm20_hi_Index) + (uint32)2048UL )  )  >> (uint32)12UL )  & (uint32)1048575UL ) ;
}

int12 MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo()
{
    return  ( codasip_immread_uint12(g_MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_Index) & (uint12)4095U ) ;
}

int12 MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo()
{
    return  ( codasip_immread_uint12(g_MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_Index) & (uint12)4095U ) ;
}

int12 MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo()
{
    return  (  (  ( codasip_immread_uint12(g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index) - (uint64)((uint64)((uint12)0U)) )  )  & (uint12)4095U ) ;
}

int12 MI3valIH1_10start_base8_6simm126simm121_9simm12_lo()
{
    return  ( codasip_immread_uint12(g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index) & (uint12)4095U ) ;
}

int32 MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12()
{
    return  (  (  ( codasip_immread_int13(g_MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_Index) - (int64)((int64)((int13)0)) )  )  >> (int13)1 ) ;
}

int32 MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20()
{
    return  (  (  ( codasip_immread_int21(g_MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20_Index) - (int64)((int64)((int21)0)) )  )  >> (int21)1 ) ;
}

uint5 MI4imm5IH1_10start_base6_4imm53imm(uint5 MI3immIH1_10start_base6_4imm53imm1_4imm5)
{
    return MI3immIH1_10start_base6_4imm53imm1_4imm5;
}

int32 MI4reg0IH1_10start_base9_7reg_any3dst()
{
    return (int32)0L;
}

int12 MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple()
{
    return codasip_immread_int12(g_MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple_Index);
}

int12 MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple()
{
    return codasip_immread_int12(g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index);
}

void MI5i_jalIH1_10start_base(int32 MI7opc_jalIH1_10start_base9_7opc_jal3opc, __regopindex_type MI7reg_anyIH1_10start_base9_7reg_any3dst, int32 MI10rel_addr20IH1_10start_base13_10rel_addr204addr)
{
{
    uint32 MI8jmp_addrIH1_10start_base1_5i_jalB0, MI3tmpIH1_10start_base1_5i_jalB0;
    #line 323 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
    MI3tmpIH1_10start_base1_5i_jalB0 = r_PC;
    #line 324 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
    MI8jmp_addrIH1_10start_base1_5i_jalB0 = ((int32)(((r_PC - (int32)4L))) + (int32)((MI10rel_addr20IH1_10start_base13_10rel_addr204addr)));
    {
    }
    {
        #line 340 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
        MI12rf_gpr_write(MI7reg_anyIH1_10start_base9_7reg_any3dst, MI3tmpIH1_10start_base1_5i_jalB0);
        #line 341 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
        r_PC = MI8jmp_addrIH1_10start_base1_5i_jalB0;
    }
}
}

void MI5i_luiIH1_10start_base(int32 MI7opc_luiIH1_10start_base9_7opc_lui3opc, __regopindex_type MI7reg_anyIH1_10start_base9_7reg_any3dst, int32 MI9imm20_s12IH1_10start_base11_9imm20_s123imm)
{
{
    {
        #line 147 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
        codasip_compiler_priority((int32)1L);
    }
    #line 148 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
    MI12rf_gpr_write(MI7reg_anyIH1_10start_base9_7reg_any3dst, (int32)((MI9imm20_s12IH1_10start_base11_9imm20_s123imm)));
}
}

void MI5i_wfiIH1_10start_base(int32 MI7opc_wfiIH1_10start_base9_7opc_wfi3opc)
{
{
    {
        #line 692 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
        codasip_compiler_unused();
    }
    {
    }
}
}

uint5 MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm()
{
    return codasip_immread_uint5(g_MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_Index);
}

void MI6i_jalrIH1_10start_base(int32 MI8opc_jalrIH1_10start_base10_8opc_jalr3opc, __regopindex_type MI7reg_anyIH1_10start_base9_7reg_any3dst, __regopindex_type MI7reg_anyIH1_10start_base9_7reg_any3src, int12 MI6simm12IH1_10start_base8_6simm126simm12)
{
{
    uint32 MI3valIH1_10start_base1_6i_jalrB0, MI8jmp_addrIH1_10start_base1_6i_jalrB0, MI3tmpIH1_10start_base1_6i_jalrB0;
    {
        #line 359 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
        codasip_compiler_priority((int32)1L);
    }
    #line 360 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
    MI3valIH1_10start_base1_6i_jalrB0 = MI11rf_gpr_read(MI7reg_anyIH1_10start_base9_7reg_any3src);
    #line 361 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
    MI8jmp_addrIH1_10start_base1_6i_jalrB0 = ((((int32)((MI3valIH1_10start_base1_6i_jalrB0)) + (int32)((MI6simm12IH1_10start_base8_6simm126simm12)))) & (uint64)18446744073709551614ULL);
    #line 362 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
    MI3tmpIH1_10start_base1_6i_jalrB0 = r_PC;
    {
    }
    {
        #line 378 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
        MI12rf_gpr_write(MI7reg_anyIH1_10start_base9_7reg_any3dst, MI3tmpIH1_10start_base1_6i_jalrB0);
        #line 379 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
        r_PC = MI8jmp_addrIH1_10start_base1_6i_jalrB0;
    }
}
}

void MI6i_loadIH1_10start_base(int32 MI9opc_loadsIH1_10start_base11_9opc_loads3opc, __regopindex_type MI7reg_anyIH1_10start_base9_7reg_any3dst, int12 MI6simm12IH1_10start_base8_6simm126simm12, __regopindex_type MI7reg_anyIH1_10start_base9_7reg_any3src)
{
{
    uint32 MI3valIH1_10start_base1_6i_loadB0, MI4addrIH1_10start_base1_6i_loadB0;
    {
        #line 468 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
        codasip_compiler_priority((int32)1L);
    }
    {
        #line 469 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
        codasip_compiler_schedule_class(sc_loads);
    }
    #line 470 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
    MI4addrIH1_10start_base1_6i_loadB0 = ((int32)((MI11rf_gpr_read(MI7reg_anyIH1_10start_base9_7reg_any3src))) + (int32)((MI6simm12IH1_10start_base8_6simm126simm12)));
    #line 471 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
    MI3valIH1_10start_base1_6i_loadB0 = MI8load_val(MI9opc_loadsIH1_10start_base11_9opc_loads3opc, MI4addrIH1_10start_base1_6i_loadB0);
    {
    }
    {
        #line 481 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
        MI12rf_gpr_write(MI7reg_anyIH1_10start_base9_7reg_any3dst, MI3valIH1_10start_base1_6i_loadB0);
    }
}
}

void MI6i_xretIH1_10start_base(int32 MI8opc_xretIH1_10start_base10_8opc_xret3opc)
{
{
    #line 660 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
    if ((MI8opc_xretIH1_10start_base10_8opc_xret3opc == (uint22)(0xc0873)))
    {
        {
            #line 662 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
            codasip_compiler_interrupt_return("machine");
        }
    }
    {
    }
}
}

int32 MI6opc_orIH1_10start_base16_13opc_comp_3reg3opc()
{
    return (uint17)(0x333);
}

void MI7i_auipcIH1_10start_base(int32 MI9opc_auipcIH1_10start_base11_9opc_auipc3opc, __regopindex_type MI7reg_anyIH1_10start_base9_7reg_any3dst, int32 MI9imm20_s12IH1_10start_base11_9imm20_s123imm)
{
{
    {
        #line 164 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
        codasip_compiler_priority((int32)1L);
    }
    #line 165 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
    MI12rf_gpr_write(MI7reg_anyIH1_10start_base9_7reg_any3dst, (((r_PC - (int32)4L)) + (int32)((MI9imm20_s12IH1_10start_base11_9imm20_s123imm))));
}
}

void MI7i_ecallIH1_10start_base(int32 MI9opc_ecallIH1_10start_base11_9opc_ecall3opc)
{
{
    {
    }
}
}

void MI7i_fenceIH1_10start_base(int32 MI9opc_fenceIH1_10start_base11_9opc_fence3opc, int32 MI15opc_fence_paramIH1_10start_base18_15opc_fence_param6param1, int32 MI15opc_fence_paramIH1_10start_base18_15opc_fence_param6param2)
{
{
    #line 551 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
    ;
    {
    }
}
}

void MI7i_storeIH1_10start_base(int32 MI10opc_storesIH1_10start_base13_10opc_stores3opc, __regopindex_type MI7reg_anyIH1_10start_base9_7reg_any4src2, int12 MI8simm12_sIH1_10start_base10_8simm12_s8simm12_s, __regopindex_type MI7reg_anyIH1_10start_base9_7reg_any4src1)
{
{
    uint32 MI4addrIH1_10start_base1_7i_storeB0, MI4dataIH1_10start_base1_7i_storeB0;
    {
        #line 507 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
        codasip_compiler_priority((int32)1L);
    }
    {
        #line 508 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
        codasip_compiler_schedule_class(sc_stores);
    }
    #line 509 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
    MI4addrIH1_10start_base1_7i_storeB0 = ((int32)((MI11rf_gpr_read(MI7reg_anyIH1_10start_base9_7reg_any4src1))) + (int32)((MI8simm12_sIH1_10start_base10_8simm12_s8simm12_s)));
    #line 510 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
    MI4dataIH1_10start_base1_7i_storeB0 = MI11rf_gpr_read(MI7reg_anyIH1_10start_base9_7reg_any4src2);
    #line 511 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
    MI9write_val(MI10opc_storesIH1_10start_base13_10opc_stores3opc, MI4addrIH1_10start_base1_7i_storeB0, MI4dataIH1_10start_base1_7i_storeB0);
}
}

void MI7i_unimpIH1_10start_base(int32 MI9opc_unimpIH1_10start_base11_9opc_unimp3opc)
{
{
    {
        #line 807 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
        codasip_compiler_unused();
    }
    {
    }
}
}

int32 MI7opc_addIH1_10start_base16_13opc_comp_3reg3opc()
{
    return (uint17)(0x33);
}

int32 MI7opc_andIH1_10start_base16_13opc_comp_3reg3opc()
{
    return (uint17)(0x3b3);
}

int32 MI7opc_beqIH1_10start_base26_23opc_control_conditional3opc()
{
    return (uint10)(0x63);
}

int32 MI7opc_bgeIH1_10start_base26_23opc_control_conditional3opc()
{
    return (uint10)(0x2e3);
}

int32 MI7opc_bltIH1_10start_base26_23opc_control_conditional3opc()
{
    return (uint10)(0x263);
}

int32 MI7opc_bneIH1_10start_base26_23opc_control_conditional3opc()
{
    return (uint10)(0xe3);
}

int32 MI7opc_jalIH1_10start_base9_7opc_jal3opc()
{
    return (uint7)(0x6f);
}

int32 MI7opc_luiIH1_10start_base9_7opc_lui3opc()
{
    return (uint7)(0x37);
}

int32 MI7opc_oriIH1_10start_base20_17opc_comp_2reg_imm3opc()
{
    return (uint10)(0x313);
}

int32 MI7opc_sllIH1_10start_base16_13opc_comp_3reg3opc()
{
    return (uint17)(0xb3);
}

int32 MI7opc_sltIH1_10start_base16_13opc_comp_3reg3opc()
{
    return (uint17)(0x133);
}

int32 MI7opc_sraIH1_10start_base16_13opc_comp_3reg3opc()
{
    return (uint17)(0x82b3);
}

int32 MI7opc_srlIH1_10start_base16_13opc_comp_3reg3opc()
{
    return (uint17)(0x2b3);
}

int32 MI7opc_subIH1_10start_base16_13opc_comp_3reg3opc()
{
    return (uint17)(0x8033);
}

int32 MI7opc_wfiIH1_10start_base9_7opc_wfi3opc()
{
    return (uint22)(0x41473);
}

int32 MI7opc_xorIH1_10start_base16_13opc_comp_3reg3opc()
{
    return (uint17)(0x233);
}

void MI8c_lui_hiIH1_10start_base(int32 MI7opc_luiIH1_10start_base9_7opc_lui3opc, __regopindex_type MI4regsIH1_10start_base6_4regs3dst, uint32 MI3immIH1_10start_base1_8c_lui_hi)
{
{
    {
        #line 453 "/home/project/codasip_urisc_v/model/share/isa/isa_calias.codal"
        codasip_compiler_unused();
    }
    #line 454 "/home/project/codasip_urisc_v/model/share/isa/isa_calias.codal"
    MI12rf_gpr_write(MI4regsIH1_10start_base6_4regs3dst, (int32)((MI3immIH1_10start_base1_8c_lui_hi)));
}
}

void MI8i_ebreakIH1_10start_base(int32 MI10opc_ebreakIH1_10start_base13_10opc_ebreak3opc)
{
{
    uint32 MI1iIH1_10start_base1_8i_ebreakB0;
    #line 639 "/home/project/codasip_urisc_v/model/share/isa/isa.codal"
    ;
    {
    }
}
}

void MI8i_fenceiIH1_10start_base(int32 MI10opc_fenceiIH1_10start_base13_10opc_fencei3opc)
{
{
    {
    }
}
}

void MI8i_lui_hiIH1_10start_base(int32 MI7opc_luiIH1_10start_base9_7opc_lui3opc, __regopindex_type MI7reg_anyIH1_10start_base9_7reg_any3dst, int32 MI8imm20_hiIH1_10start_base10_8imm20_hi3imm)
{
{
    uint32 MI3valIH1_10start_base1_8i_lui_hiB0;
    {
        #line 53 "/home/project/codasip_urisc_v/model/share/isa/isa_caalias.codal"
        codasip_compiler_unused();
    }
    #line 54 "/home/project/codasip_urisc_v/model/share/isa/isa_caalias.codal"
    MI3valIH1_10start_base1_8i_lui_hiB0 = (int32)((MI8imm20_hiIH1_10start_base10_8imm20_hi3imm));
    #line 56 "/home/project/codasip_urisc_v/model/share/isa/isa_caalias.codal"
    MI12rf_gpr_write(MI7reg_anyIH1_10start_base9_7reg_any3dst, MI3valIH1_10start_base1_8i_lui_hiB0);
}
}

int32 MI8imm20_hiIH1_10start_base10_8imm20_hi3imm(int32 MI3valIH1_10start_base10_8imm20_hi3imm1_8imm20_hi)
{
    return ((int32)(MI3valIH1_10start_base10_8imm20_hi3imm1_8imm20_hi) << (int32)12L);
}

int32 MI8opc_addiIH1_10start_base10_8opc_addi3opc()
{
    return (uint10)(0x13);
}

int32 MI8opc_andiIH1_10start_base20_17opc_comp_2reg_imm3opc()
{
    return (uint10)(0x393);
}

int32 MI8opc_bgeuIH1_10start_base26_23opc_control_conditional3opc()
{
    return (uint10)(0x3e3);
}

int32 MI8opc_bltuIH1_10start_base26_23opc_control_conditional3opc()
{
    return (uint10)(0x363);
}

int32 MI8opc_jalrIH1_10start_base10_8opc_jalr3opc()
{
    return (uint10)(0x67);
}

int32 MI8opc_mretIH1_10start_base10_8opc_xret3opc()
{
    return (uint22)(0xc0873);
}

int32 MI8opc_slliIH1_10start_base26_23opc_comp_2reg_imm_shift3opc()
{
    return (uint17)(0x93);
}

int32 MI8opc_sltiIH1_10start_base20_17opc_comp_2reg_imm3opc()
{
    return (uint10)(0x113);
}

int32 MI8opc_sltuIH1_10start_base16_13opc_comp_3reg3opc()
{
    return (uint17)(0x1b3);
}

int32 MI8opc_sraiIH1_10start_base26_23opc_comp_2reg_imm_shift3opc()
{
    return (uint17)(0x8293);
}

int32 MI8opc_srliIH1_10start_base26_23opc_comp_2reg_imm_shift3opc()
{
    return (uint17)(0x293);
}

int32 MI8opc_xoriIH1_10start_base20_17opc_comp_2reg_imm3opc()
{
    return (uint10)(0x213);
}

void MI9c_addi_loIH1_10start_base(int32 MI8opc_addiIH1_10start_base10_8opc_addi3opc, __regopindex_type MI4regsIH1_10start_base6_4regs3dst, __regopindex_type MI4regsIH1_10start_base6_4regs3src, uint32 MI3immIH1_10start_base1_9c_addi_lo)
{
{
    uint32 MI3valIH1_10start_base1_9c_addi_loB0;
    {
        #line 475 "/home/project/codasip_urisc_v/model/share/isa/isa_calias.codal"
        codasip_compiler_unused();
    }
    #line 476 "/home/project/codasip_urisc_v/model/share/isa/isa_calias.codal"
    MI3valIH1_10start_base1_9c_addi_loB0 = MI11rf_gpr_read(MI4regsIH1_10start_base6_4regs3src);
    #line 477 "/home/project/codasip_urisc_v/model/share/isa/isa_calias.codal"
    MI12rf_gpr_write(MI4regsIH1_10start_base6_4regs3dst, MI7compute((uint10)(0x13), MI3valIH1_10start_base1_9c_addi_loB0, (int32)((MI3immIH1_10start_base1_9c_addi_lo))));
}
}

void MI9i_jal_absIH1_10start_base(int32 MI7opc_jalIH1_10start_base9_7opc_jal3opc, __regopindex_type MI7reg_anyIH1_10start_base9_7reg_any3dst, int32 MI10rel_addr20IH1_10start_base13_10rel_addr204addr)
{
{
    {
        #line 221 "/home/project/codasip_urisc_v/model/share/isa/isa_calias.codal"
        codasip_compiler_priority((int32)1L);
    }
    #line 222 "/home/project/codasip_urisc_v/model/share/isa/isa_calias.codal"
    MI12rf_gpr_write(MI7reg_anyIH1_10start_base9_7reg_any3dst, r_PC);
    #line 223 "/home/project/codasip_urisc_v/model/share/isa/isa_calias.codal"
    r_PC = (int32)((MI10rel_addr20IH1_10start_base13_10rel_addr204addr));
}
}

int32 MI9imm20_s12IH1_10start_base11_9imm20_s123imm(int32 MI3immIH1_10start_base11_9imm20_s123imm1_9imm20_s12)
{
    return ((int32)(MI3immIH1_10start_base11_9imm20_s123imm1_9imm20_s12) << (int32)12L);
}

int32 MI9opc_auipcIH1_10start_base11_9opc_auipc3opc()
{
    return (uint7)(0x17);
}

int32 MI9opc_csrrcIH1_10start_base28_25opc_control_registers_reg3opc()
{
    return (uint10)(0x1f3);
}

int32 MI9opc_csrrsIH1_10start_base28_25opc_control_registers_reg3opc()
{
    return (uint10)(0x173);
}

int32 MI9opc_csrrwIH1_10start_base28_25opc_control_registers_reg3opc()
{
    return (uint10)(0xf3);
}

int32 MI9opc_ecallIH1_10start_base11_9opc_ecall3opc()
{
    return (uint22)(0x73);
}

int32 MI9opc_fenceIH1_10start_base11_9opc_fence3opc()
{
    return (uint10)(0xf);
}

int32 MI9opc_loadbIH1_10start_base11_9opc_loads3opc()
{
    return (uint10)(0x3);
}

int32 MI9opc_loadhIH1_10start_base11_9opc_loads3opc()
{
    return (uint10)(0x83);
}

int32 MI9opc_loadwIH1_10start_base11_9opc_loads3opc()
{
    return (uint10)(0x103);
}

int32 MI9opc_sltiuIH1_10start_base20_17opc_comp_2reg_imm3opc()
{
    return (uint10)(0x193);
}

int32 MI9opc_unimpIH1_10start_base11_9opc_unimp3opc()
{
    return (uint22)(0x3000ff);
}

uint5 MI9shift_immIH1_10start_base11_9shift_imm3imm(uint5 MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm)
{
    return MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm;
}

int12 MI9simm12_loIH1_10start_base8_6simm126simm12(int12 MI3valIH1_10start_base8_6simm126simm121_9simm12_lo)
{
{
    {
        #line 285 "/home/project/codasip_urisc_v/model/share/isa/isa_ops.codal"
        codasip_compiler_unused();
    }
}
    return (int12)(MI3valIH1_10start_base8_6simm126simm121_9simm12_lo);
}

void c_addi_lo__opc_addi__regs__regs__();
void c_lui_hi__opc_lui__regs__();
void i_auipc__opc_auipc__reg0__imm20_s12__();
void i_auipc__opc_auipc__regs__imm20_s12__();
void i_call_reg_alias__reg0__();
void i_call_reg_alias__regs__();
void i_call_rel_alias__rel_addr20__();
void i_comp_2reg_imm__opc_addi__reg0__reg0__simm12_lo__();
void i_comp_2reg_imm__opc_addi__reg0__reg0__simm12_pcrel_lo__();
void i_comp_2reg_imm__opc_addi__reg0__reg0__simm12_simple__();
void i_comp_2reg_imm__opc_addi__reg0__regs__simm12_lo__();
void i_comp_2reg_imm__opc_addi__reg0__regs__simm12_pcrel_lo__();
void i_comp_2reg_imm__opc_addi__reg0__regs__simm12_simple__();
void i_comp_2reg_imm__opc_addi__regs__reg0__simm12_lo__();
void i_comp_2reg_imm__opc_addi__regs__reg0__simm12_pcrel_lo__();
void i_comp_2reg_imm__opc_addi__regs__reg0__simm12_simple__();
void i_comp_2reg_imm__opc_addi__regs__regs__simm12_lo__();
void i_comp_2reg_imm__opc_addi__regs__regs__simm12_pcrel_lo__();
void i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__();
void i_comp_2reg_imm__opc_andi__reg0__reg0__simm12_lo__();
void i_comp_2reg_imm__opc_andi__reg0__reg0__simm12_pcrel_lo__();
void i_comp_2reg_imm__opc_andi__reg0__reg0__simm12_simple__();
void i_comp_2reg_imm__opc_andi__reg0__regs__simm12_lo__();
void i_comp_2reg_imm__opc_andi__reg0__regs__simm12_pcrel_lo__();
void i_comp_2reg_imm__opc_andi__reg0__regs__simm12_simple__();
void i_comp_2reg_imm__opc_andi__regs__reg0__simm12_lo__();
void i_comp_2reg_imm__opc_andi__regs__reg0__simm12_pcrel_lo__();
void i_comp_2reg_imm__opc_andi__regs__reg0__simm12_simple__();
void i_comp_2reg_imm__opc_andi__regs__regs__simm12_lo__();
void i_comp_2reg_imm__opc_andi__regs__regs__simm12_pcrel_lo__();
void i_comp_2reg_imm__opc_andi__regs__regs__simm12_simple__();
void i_comp_2reg_imm__opc_ori__reg0__reg0__simm12_lo__();
void i_comp_2reg_imm__opc_ori__reg0__reg0__simm12_pcrel_lo__();
void i_comp_2reg_imm__opc_ori__reg0__reg0__simm12_simple__();
void i_comp_2reg_imm__opc_ori__reg0__regs__simm12_lo__();
void i_comp_2reg_imm__opc_ori__reg0__regs__simm12_pcrel_lo__();
void i_comp_2reg_imm__opc_ori__reg0__regs__simm12_simple__();
void i_comp_2reg_imm__opc_ori__regs__reg0__simm12_lo__();
void i_comp_2reg_imm__opc_ori__regs__reg0__simm12_pcrel_lo__();
void i_comp_2reg_imm__opc_ori__regs__reg0__simm12_simple__();
void i_comp_2reg_imm__opc_ori__regs__regs__simm12_lo__();
void i_comp_2reg_imm__opc_ori__regs__regs__simm12_pcrel_lo__();
void i_comp_2reg_imm__opc_ori__regs__regs__simm12_simple__();
void i_comp_2reg_imm__opc_slti__reg0__reg0__simm12_lo__();
void i_comp_2reg_imm__opc_slti__reg0__reg0__simm12_pcrel_lo__();
void i_comp_2reg_imm__opc_slti__reg0__reg0__simm12_simple__();
void i_comp_2reg_imm__opc_slti__reg0__regs__simm12_lo__();
void i_comp_2reg_imm__opc_slti__reg0__regs__simm12_pcrel_lo__();
void i_comp_2reg_imm__opc_slti__reg0__regs__simm12_simple__();
void i_comp_2reg_imm__opc_slti__regs__reg0__simm12_lo__();
void i_comp_2reg_imm__opc_slti__regs__reg0__simm12_pcrel_lo__();
void i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__();
void i_comp_2reg_imm__opc_slti__regs__regs__simm12_lo__();
void i_comp_2reg_imm__opc_slti__regs__regs__simm12_pcrel_lo__();
void i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__();
void i_comp_2reg_imm__opc_sltiu__reg0__reg0__simm12_lo__();
void i_comp_2reg_imm__opc_sltiu__reg0__reg0__simm12_pcrel_lo__();
void i_comp_2reg_imm__opc_sltiu__reg0__reg0__simm12_simple__();
void i_comp_2reg_imm__opc_sltiu__reg0__regs__simm12_lo__();
void i_comp_2reg_imm__opc_sltiu__reg0__regs__simm12_pcrel_lo__();
void i_comp_2reg_imm__opc_sltiu__reg0__regs__simm12_simple__();
void i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_lo__();
void i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_pcrel_lo__();
void i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__();
void i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_lo__();
void i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_pcrel_lo__();
void i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__();
void i_comp_2reg_imm__opc_xori__reg0__reg0__simm12_lo__();
void i_comp_2reg_imm__opc_xori__reg0__reg0__simm12_pcrel_lo__();
void i_comp_2reg_imm__opc_xori__reg0__reg0__simm12_simple__();
void i_comp_2reg_imm__opc_xori__reg0__regs__simm12_lo__();
void i_comp_2reg_imm__opc_xori__reg0__regs__simm12_pcrel_lo__();
void i_comp_2reg_imm__opc_xori__reg0__regs__simm12_simple__();
void i_comp_2reg_imm__opc_xori__regs__reg0__simm12_lo__();
void i_comp_2reg_imm__opc_xori__regs__reg0__simm12_pcrel_lo__();
void i_comp_2reg_imm__opc_xori__regs__reg0__simm12_simple__();
void i_comp_2reg_imm__opc_xori__regs__regs__simm12_lo__();
void i_comp_2reg_imm__opc_xori__regs__regs__simm12_pcrel_lo__();
void i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__();
void i_comp_2reg_imm_shift__opc_slli__reg0__reg0__shift_imm__();
void i_comp_2reg_imm_shift__opc_slli__reg0__regs__shift_imm__();
void i_comp_2reg_imm_shift__opc_slli__regs__reg0__shift_imm__();
void i_comp_2reg_imm_shift__opc_slli__regs__regs__shift_imm__();
void i_comp_2reg_imm_shift__opc_srai__reg0__reg0__shift_imm__();
void i_comp_2reg_imm_shift__opc_srai__reg0__regs__shift_imm__();
void i_comp_2reg_imm_shift__opc_srai__regs__reg0__shift_imm__();
void i_comp_2reg_imm_shift__opc_srai__regs__regs__shift_imm__();
void i_comp_2reg_imm_shift__opc_srli__reg0__reg0__shift_imm__();
void i_comp_2reg_imm_shift__opc_srli__reg0__regs__shift_imm__();
void i_comp_2reg_imm_shift__opc_srli__regs__reg0__shift_imm__();
void i_comp_2reg_imm_shift__opc_srli__regs__regs__shift_imm__();
void i_comp_3reg__opc_add__reg0__reg0__reg0__();
void i_comp_3reg__opc_add__reg0__reg0__regs__();
void i_comp_3reg__opc_add__reg0__regs__reg0__();
void i_comp_3reg__opc_add__reg0__regs__regs__();
void i_comp_3reg__opc_add__regs__reg0__reg0__();
void i_comp_3reg__opc_add__regs__reg0__regs__();
void i_comp_3reg__opc_add__regs__regs__reg0__();
void i_comp_3reg__opc_add__regs__regs__regs__();
void i_comp_3reg__opc_and__reg0__reg0__reg0__();
void i_comp_3reg__opc_and__reg0__reg0__regs__();
void i_comp_3reg__opc_and__reg0__regs__reg0__();
void i_comp_3reg__opc_and__reg0__regs__regs__();
void i_comp_3reg__opc_and__regs__reg0__reg0__();
void i_comp_3reg__opc_and__regs__reg0__regs__();
void i_comp_3reg__opc_and__regs__regs__reg0__();
void i_comp_3reg__opc_and__regs__regs__regs__();
void i_comp_3reg__opc_or__reg0__reg0__reg0__();
void i_comp_3reg__opc_or__reg0__reg0__regs__();
void i_comp_3reg__opc_or__reg0__regs__reg0__();
void i_comp_3reg__opc_or__reg0__regs__regs__();
void i_comp_3reg__opc_or__regs__reg0__reg0__();
void i_comp_3reg__opc_or__regs__reg0__regs__();
void i_comp_3reg__opc_or__regs__regs__reg0__();
void i_comp_3reg__opc_or__regs__regs__regs__();
void i_comp_3reg__opc_sll__reg0__reg0__reg0__();
void i_comp_3reg__opc_sll__reg0__reg0__regs__();
void i_comp_3reg__opc_sll__reg0__regs__reg0__();
void i_comp_3reg__opc_sll__reg0__regs__regs__();
void i_comp_3reg__opc_sll__regs__reg0__reg0__();
void i_comp_3reg__opc_sll__regs__reg0__regs__();
void i_comp_3reg__opc_sll__regs__regs__reg0__();
void i_comp_3reg__opc_sll__regs__regs__regs__();
void i_comp_3reg__opc_slt__reg0__reg0__reg0__();
void i_comp_3reg__opc_slt__reg0__reg0__regs__();
void i_comp_3reg__opc_slt__reg0__regs__reg0__();
void i_comp_3reg__opc_slt__reg0__regs__regs__();
void i_comp_3reg__opc_slt__regs__reg0__reg0__();
void i_comp_3reg__opc_slt__regs__reg0__regs__();
void i_comp_3reg__opc_slt__regs__regs__reg0__();
void i_comp_3reg__opc_slt__regs__regs__regs__();
void i_comp_3reg__opc_sltu__reg0__reg0__reg0__();
void i_comp_3reg__opc_sltu__reg0__reg0__regs__();
void i_comp_3reg__opc_sltu__reg0__regs__reg0__();
void i_comp_3reg__opc_sltu__reg0__regs__regs__();
void i_comp_3reg__opc_sltu__regs__reg0__reg0__();
void i_comp_3reg__opc_sltu__regs__reg0__regs__();
void i_comp_3reg__opc_sltu__regs__regs__reg0__();
void i_comp_3reg__opc_sltu__regs__regs__regs__();
void i_comp_3reg__opc_sra__reg0__reg0__reg0__();
void i_comp_3reg__opc_sra__reg0__reg0__regs__();
void i_comp_3reg__opc_sra__reg0__regs__reg0__();
void i_comp_3reg__opc_sra__reg0__regs__regs__();
void i_comp_3reg__opc_sra__regs__reg0__reg0__();
void i_comp_3reg__opc_sra__regs__reg0__regs__();
void i_comp_3reg__opc_sra__regs__regs__reg0__();
void i_comp_3reg__opc_sra__regs__regs__regs__();
void i_comp_3reg__opc_srl__reg0__reg0__reg0__();
void i_comp_3reg__opc_srl__reg0__reg0__regs__();
void i_comp_3reg__opc_srl__reg0__regs__reg0__();
void i_comp_3reg__opc_srl__reg0__regs__regs__();
void i_comp_3reg__opc_srl__regs__reg0__reg0__();
void i_comp_3reg__opc_srl__regs__reg0__regs__();
void i_comp_3reg__opc_srl__regs__regs__reg0__();
void i_comp_3reg__opc_srl__regs__regs__regs__();
void i_comp_3reg__opc_sub__reg0__reg0__reg0__();
void i_comp_3reg__opc_sub__reg0__reg0__regs__();
void i_comp_3reg__opc_sub__reg0__regs__reg0__();
void i_comp_3reg__opc_sub__reg0__regs__regs__();
void i_comp_3reg__opc_sub__regs__reg0__reg0__();
void i_comp_3reg__opc_sub__regs__reg0__regs__();
void i_comp_3reg__opc_sub__regs__regs__reg0__();
void i_comp_3reg__opc_sub__regs__regs__regs__();
void i_comp_3reg__opc_xor__reg0__reg0__reg0__();
void i_comp_3reg__opc_xor__reg0__reg0__regs__();
void i_comp_3reg__opc_xor__reg0__regs__reg0__();
void i_comp_3reg__opc_xor__reg0__regs__regs__();
void i_comp_3reg__opc_xor__regs__reg0__reg0__();
void i_comp_3reg__opc_xor__regs__reg0__regs__();
void i_comp_3reg__opc_xor__regs__regs__reg0__();
void i_comp_3reg__opc_xor__regs__regs__regs__();
void i_control_conditional__opc_beq__reg0__reg0__rel_addr12__();
void i_control_conditional__opc_beq__reg0__regs__rel_addr12__();
void i_control_conditional__opc_beq__regs__reg0__rel_addr12__();
void i_control_conditional__opc_beq__regs__regs__rel_addr12__();
void i_control_conditional__opc_bge__reg0__reg0__rel_addr12__();
void i_control_conditional__opc_bge__reg0__regs__rel_addr12__();
void i_control_conditional__opc_bge__regs__reg0__rel_addr12__();
void i_control_conditional__opc_bge__regs__regs__rel_addr12__();
void i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__();
void i_control_conditional__opc_bgeu__reg0__regs__rel_addr12__();
void i_control_conditional__opc_bgeu__regs__reg0__rel_addr12__();
void i_control_conditional__opc_bgeu__regs__regs__rel_addr12__();
void i_control_conditional__opc_blt__reg0__reg0__rel_addr12__();
void i_control_conditional__opc_blt__reg0__regs__rel_addr12__();
void i_control_conditional__opc_blt__regs__reg0__rel_addr12__();
void i_control_conditional__opc_blt__regs__regs__rel_addr12__();
void i_control_conditional__opc_bltu__reg0__reg0__rel_addr12__();
void i_control_conditional__opc_bltu__reg0__regs__rel_addr12__();
void i_control_conditional__opc_bltu__regs__reg0__rel_addr12__();
void i_control_conditional__opc_bltu__regs__regs__rel_addr12__();
void i_control_conditional__opc_bne__reg0__reg0__rel_addr12__();
void i_control_conditional__opc_bne__reg0__regs__rel_addr12__();
void i_control_conditional__opc_bne__regs__reg0__rel_addr12__();
void i_control_conditional__opc_bne__regs__regs__rel_addr12__();
void i_control_registers_imm__opc_csrrci__reg0__regs_csr__imm5__();
void i_control_registers_imm__opc_csrrci__regs__regs_csr__imm5__();
void i_control_registers_imm__opc_csrrsi__reg0__regs_csr__imm5__();
void i_control_registers_imm__opc_csrrsi__regs__regs_csr__imm5__();
void i_control_registers_imm__opc_csrrwi__reg0__regs_csr__imm5__();
void i_control_registers_imm__opc_csrrwi__regs__regs_csr__imm5__();
void i_control_registers_reg__opc_csrrc__reg0__regs_csr__reg0__();
void i_control_registers_reg__opc_csrrc__reg0__regs_csr__regs__();
void i_control_registers_reg__opc_csrrc__regs__regs_csr__reg0__();
void i_control_registers_reg__opc_csrrc__regs__regs_csr__regs__();
void i_control_registers_reg__opc_csrrs__reg0__regs_csr__reg0__();
void i_control_registers_reg__opc_csrrs__reg0__regs_csr__regs__();
void i_control_registers_reg__opc_csrrs__regs__regs_csr__reg0__();
void i_control_registers_reg__opc_csrrs__regs__regs_csr__regs__();
void i_control_registers_reg__opc_csrrw__reg0__regs_csr__reg0__();
void i_control_registers_reg__opc_csrrw__reg0__regs_csr__regs__();
void i_control_registers_reg__opc_csrrw__regs__regs_csr__reg0__();
void i_control_registers_reg__opc_csrrw__regs__regs_csr__regs__();
void i_ebreak__opc_ebreak__();
void i_ecall__opc_ecall__();
void i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0__reg0__();
void i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0__regs__();
void i_ext_hackaton__opc_hackaton_custom_a__reg0__regs__reg0__();
void i_ext_hackaton__opc_hackaton_custom_a__reg0__regs__regs__();
void i_ext_hackaton__opc_hackaton_custom_a__regs__reg0__reg0__();
void i_ext_hackaton__opc_hackaton_custom_a__regs__reg0__regs__();
void i_ext_hackaton__opc_hackaton_custom_a__regs__regs__reg0__();
void i_ext_hackaton__opc_hackaton_custom_a__regs__regs__regs__();
void i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0__reg0__();
void i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0__regs__();
void i_ext_hackaton__opc_hackaton_custom_b__reg0__regs__reg0__();
void i_ext_hackaton__opc_hackaton_custom_b__reg0__regs__regs__();
void i_ext_hackaton__opc_hackaton_custom_b__regs__reg0__reg0__();
void i_ext_hackaton__opc_hackaton_custom_b__regs__reg0__regs__();
void i_ext_hackaton__opc_hackaton_custom_b__regs__regs__reg0__();
void i_ext_hackaton__opc_hackaton_custom_b__regs__regs__regs__();
void i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0__reg0__();
void i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0__regs__();
void i_ext_hackaton__opc_hackaton_custom_c__reg0__regs__reg0__();
void i_ext_hackaton__opc_hackaton_custom_c__reg0__regs__regs__();
void i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__reg0__();
void i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__regs__();
void i_ext_hackaton__opc_hackaton_custom_c__regs__regs__reg0__();
void i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__();
void i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0__reg0__();
void i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0__regs__();
void i_ext_hackaton__opc_hackaton_custom_d__reg0__regs__reg0__();
void i_ext_hackaton__opc_hackaton_custom_d__reg0__regs__regs__();
void i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__reg0__();
void i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__regs__();
void i_ext_hackaton__opc_hackaton_custom_d__regs__regs__reg0__();
void i_ext_hackaton__opc_hackaton_custom_d__regs__regs__regs__();
void i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0__reg0__();
void i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0__regs__();
void i_ext_hackaton__opc_hackaton_custom_e__reg0__regs__reg0__();
void i_ext_hackaton__opc_hackaton_custom_e__reg0__regs__regs__();
void i_ext_hackaton__opc_hackaton_custom_e__regs__reg0__reg0__();
void i_ext_hackaton__opc_hackaton_custom_e__regs__reg0__regs__();
void i_ext_hackaton__opc_hackaton_custom_e__regs__regs__reg0__();
void i_ext_hackaton__opc_hackaton_custom_e__regs__regs__regs__();
void i_fence__opc_fence__opc_hint_fence__opc_hint_fence__();
void i_fence__opc_fence__opc_hint_fence__opc_i_fence__();
void i_fence__opc_fence__opc_hint_fence__opc_io_fence__();
void i_fence__opc_fence__opc_hint_fence__opc_ior_fence__();
void i_fence__opc_fence__opc_hint_fence__opc_iorw_fence__();
void i_fence__opc_fence__opc_hint_fence__opc_iow_fence__();
void i_fence__opc_fence__opc_hint_fence__opc_ir_fence__();
void i_fence__opc_fence__opc_hint_fence__opc_irw_fence__();
void i_fence__opc_fence__opc_hint_fence__opc_iw_fence__();
void i_fence__opc_fence__opc_hint_fence__opc_o_fence__();
void i_fence__opc_fence__opc_hint_fence__opc_or_fence__();
void i_fence__opc_fence__opc_hint_fence__opc_orw_fence__();
void i_fence__opc_fence__opc_hint_fence__opc_ow_fence__();
void i_fence__opc_fence__opc_hint_fence__opc_r_fence__();
void i_fence__opc_fence__opc_hint_fence__opc_rw_fence__();
void i_fence__opc_fence__opc_hint_fence__opc_w_fence__();
void i_fence__opc_fence__opc_i_fence__opc_hint_fence__();
void i_fence__opc_fence__opc_i_fence__opc_i_fence__();
void i_fence__opc_fence__opc_i_fence__opc_io_fence__();
void i_fence__opc_fence__opc_i_fence__opc_ior_fence__();
void i_fence__opc_fence__opc_i_fence__opc_iorw_fence__();
void i_fence__opc_fence__opc_i_fence__opc_iow_fence__();
void i_fence__opc_fence__opc_i_fence__opc_ir_fence__();
void i_fence__opc_fence__opc_i_fence__opc_irw_fence__();
void i_fence__opc_fence__opc_i_fence__opc_iw_fence__();
void i_fence__opc_fence__opc_i_fence__opc_o_fence__();
void i_fence__opc_fence__opc_i_fence__opc_or_fence__();
void i_fence__opc_fence__opc_i_fence__opc_orw_fence__();
void i_fence__opc_fence__opc_i_fence__opc_ow_fence__();
void i_fence__opc_fence__opc_i_fence__opc_r_fence__();
void i_fence__opc_fence__opc_i_fence__opc_rw_fence__();
void i_fence__opc_fence__opc_i_fence__opc_w_fence__();
void i_fence__opc_fence__opc_io_fence__opc_hint_fence__();
void i_fence__opc_fence__opc_io_fence__opc_i_fence__();
void i_fence__opc_fence__opc_io_fence__opc_io_fence__();
void i_fence__opc_fence__opc_io_fence__opc_ior_fence__();
void i_fence__opc_fence__opc_io_fence__opc_iorw_fence__();
void i_fence__opc_fence__opc_io_fence__opc_iow_fence__();
void i_fence__opc_fence__opc_io_fence__opc_ir_fence__();
void i_fence__opc_fence__opc_io_fence__opc_irw_fence__();
void i_fence__opc_fence__opc_io_fence__opc_iw_fence__();
void i_fence__opc_fence__opc_io_fence__opc_o_fence__();
void i_fence__opc_fence__opc_io_fence__opc_or_fence__();
void i_fence__opc_fence__opc_io_fence__opc_orw_fence__();
void i_fence__opc_fence__opc_io_fence__opc_ow_fence__();
void i_fence__opc_fence__opc_io_fence__opc_r_fence__();
void i_fence__opc_fence__opc_io_fence__opc_rw_fence__();
void i_fence__opc_fence__opc_io_fence__opc_w_fence__();
void i_fence__opc_fence__opc_ior_fence__opc_hint_fence__();
void i_fence__opc_fence__opc_ior_fence__opc_i_fence__();
void i_fence__opc_fence__opc_ior_fence__opc_io_fence__();
void i_fence__opc_fence__opc_ior_fence__opc_ior_fence__();
void i_fence__opc_fence__opc_ior_fence__opc_iorw_fence__();
void i_fence__opc_fence__opc_ior_fence__opc_iow_fence__();
void i_fence__opc_fence__opc_ior_fence__opc_ir_fence__();
void i_fence__opc_fence__opc_ior_fence__opc_irw_fence__();
void i_fence__opc_fence__opc_ior_fence__opc_iw_fence__();
void i_fence__opc_fence__opc_ior_fence__opc_o_fence__();
void i_fence__opc_fence__opc_ior_fence__opc_or_fence__();
void i_fence__opc_fence__opc_ior_fence__opc_orw_fence__();
void i_fence__opc_fence__opc_ior_fence__opc_ow_fence__();
void i_fence__opc_fence__opc_ior_fence__opc_r_fence__();
void i_fence__opc_fence__opc_ior_fence__opc_rw_fence__();
void i_fence__opc_fence__opc_ior_fence__opc_w_fence__();
void i_fence__opc_fence__opc_iorw_fence__opc_hint_fence__();
void i_fence__opc_fence__opc_iorw_fence__opc_i_fence__();
void i_fence__opc_fence__opc_iorw_fence__opc_io_fence__();
void i_fence__opc_fence__opc_iorw_fence__opc_ior_fence__();
void i_fence__opc_fence__opc_iorw_fence__opc_iorw_fence__();
void i_fence__opc_fence__opc_iorw_fence__opc_iow_fence__();
void i_fence__opc_fence__opc_iorw_fence__opc_ir_fence__();
void i_fence__opc_fence__opc_iorw_fence__opc_irw_fence__();
void i_fence__opc_fence__opc_iorw_fence__opc_iw_fence__();
void i_fence__opc_fence__opc_iorw_fence__opc_o_fence__();
void i_fence__opc_fence__opc_iorw_fence__opc_or_fence__();
void i_fence__opc_fence__opc_iorw_fence__opc_orw_fence__();
void i_fence__opc_fence__opc_iorw_fence__opc_ow_fence__();
void i_fence__opc_fence__opc_iorw_fence__opc_r_fence__();
void i_fence__opc_fence__opc_iorw_fence__opc_rw_fence__();
void i_fence__opc_fence__opc_iorw_fence__opc_w_fence__();
void i_fence__opc_fence__opc_iow_fence__opc_hint_fence__();
void i_fence__opc_fence__opc_iow_fence__opc_i_fence__();
void i_fence__opc_fence__opc_iow_fence__opc_io_fence__();
void i_fence__opc_fence__opc_iow_fence__opc_ior_fence__();
void i_fence__opc_fence__opc_iow_fence__opc_iorw_fence__();
void i_fence__opc_fence__opc_iow_fence__opc_iow_fence__();
void i_fence__opc_fence__opc_iow_fence__opc_ir_fence__();
void i_fence__opc_fence__opc_iow_fence__opc_irw_fence__();
void i_fence__opc_fence__opc_iow_fence__opc_iw_fence__();
void i_fence__opc_fence__opc_iow_fence__opc_o_fence__();
void i_fence__opc_fence__opc_iow_fence__opc_or_fence__();
void i_fence__opc_fence__opc_iow_fence__opc_orw_fence__();
void i_fence__opc_fence__opc_iow_fence__opc_ow_fence__();
void i_fence__opc_fence__opc_iow_fence__opc_r_fence__();
void i_fence__opc_fence__opc_iow_fence__opc_rw_fence__();
void i_fence__opc_fence__opc_iow_fence__opc_w_fence__();
void i_fence__opc_fence__opc_ir_fence__opc_hint_fence__();
void i_fence__opc_fence__opc_ir_fence__opc_i_fence__();
void i_fence__opc_fence__opc_ir_fence__opc_io_fence__();
void i_fence__opc_fence__opc_ir_fence__opc_ior_fence__();
void i_fence__opc_fence__opc_ir_fence__opc_iorw_fence__();
void i_fence__opc_fence__opc_ir_fence__opc_iow_fence__();
void i_fence__opc_fence__opc_ir_fence__opc_ir_fence__();
void i_fence__opc_fence__opc_ir_fence__opc_irw_fence__();
void i_fence__opc_fence__opc_ir_fence__opc_iw_fence__();
void i_fence__opc_fence__opc_ir_fence__opc_o_fence__();
void i_fence__opc_fence__opc_ir_fence__opc_or_fence__();
void i_fence__opc_fence__opc_ir_fence__opc_orw_fence__();
void i_fence__opc_fence__opc_ir_fence__opc_ow_fence__();
void i_fence__opc_fence__opc_ir_fence__opc_r_fence__();
void i_fence__opc_fence__opc_ir_fence__opc_rw_fence__();
void i_fence__opc_fence__opc_ir_fence__opc_w_fence__();
void i_fence__opc_fence__opc_irw_fence__opc_hint_fence__();
void i_fence__opc_fence__opc_irw_fence__opc_i_fence__();
void i_fence__opc_fence__opc_irw_fence__opc_io_fence__();
void i_fence__opc_fence__opc_irw_fence__opc_ior_fence__();
void i_fence__opc_fence__opc_irw_fence__opc_iorw_fence__();
void i_fence__opc_fence__opc_irw_fence__opc_iow_fence__();
void i_fence__opc_fence__opc_irw_fence__opc_ir_fence__();
void i_fence__opc_fence__opc_irw_fence__opc_irw_fence__();
void i_fence__opc_fence__opc_irw_fence__opc_iw_fence__();
void i_fence__opc_fence__opc_irw_fence__opc_o_fence__();
void i_fence__opc_fence__opc_irw_fence__opc_or_fence__();
void i_fence__opc_fence__opc_irw_fence__opc_orw_fence__();
void i_fence__opc_fence__opc_irw_fence__opc_ow_fence__();
void i_fence__opc_fence__opc_irw_fence__opc_r_fence__();
void i_fence__opc_fence__opc_irw_fence__opc_rw_fence__();
void i_fence__opc_fence__opc_irw_fence__opc_w_fence__();
void i_fence__opc_fence__opc_iw_fence__opc_hint_fence__();
void i_fence__opc_fence__opc_iw_fence__opc_i_fence__();
void i_fence__opc_fence__opc_iw_fence__opc_io_fence__();
void i_fence__opc_fence__opc_iw_fence__opc_ior_fence__();
void i_fence__opc_fence__opc_iw_fence__opc_iorw_fence__();
void i_fence__opc_fence__opc_iw_fence__opc_iow_fence__();
void i_fence__opc_fence__opc_iw_fence__opc_ir_fence__();
void i_fence__opc_fence__opc_iw_fence__opc_irw_fence__();
void i_fence__opc_fence__opc_iw_fence__opc_iw_fence__();
void i_fence__opc_fence__opc_iw_fence__opc_o_fence__();
void i_fence__opc_fence__opc_iw_fence__opc_or_fence__();
void i_fence__opc_fence__opc_iw_fence__opc_orw_fence__();
void i_fence__opc_fence__opc_iw_fence__opc_ow_fence__();
void i_fence__opc_fence__opc_iw_fence__opc_r_fence__();
void i_fence__opc_fence__opc_iw_fence__opc_rw_fence__();
void i_fence__opc_fence__opc_iw_fence__opc_w_fence__();
void i_fence__opc_fence__opc_o_fence__opc_hint_fence__();
void i_fence__opc_fence__opc_o_fence__opc_i_fence__();
void i_fence__opc_fence__opc_o_fence__opc_io_fence__();
void i_fence__opc_fence__opc_o_fence__opc_ior_fence__();
void i_fence__opc_fence__opc_o_fence__opc_iorw_fence__();
void i_fence__opc_fence__opc_o_fence__opc_iow_fence__();
void i_fence__opc_fence__opc_o_fence__opc_ir_fence__();
void i_fence__opc_fence__opc_o_fence__opc_irw_fence__();
void i_fence__opc_fence__opc_o_fence__opc_iw_fence__();
void i_fence__opc_fence__opc_o_fence__opc_o_fence__();
void i_fence__opc_fence__opc_o_fence__opc_or_fence__();
void i_fence__opc_fence__opc_o_fence__opc_orw_fence__();
void i_fence__opc_fence__opc_o_fence__opc_ow_fence__();
void i_fence__opc_fence__opc_o_fence__opc_r_fence__();
void i_fence__opc_fence__opc_o_fence__opc_rw_fence__();
void i_fence__opc_fence__opc_o_fence__opc_w_fence__();
void i_fence__opc_fence__opc_or_fence__opc_hint_fence__();
void i_fence__opc_fence__opc_or_fence__opc_i_fence__();
void i_fence__opc_fence__opc_or_fence__opc_io_fence__();
void i_fence__opc_fence__opc_or_fence__opc_ior_fence__();
void i_fence__opc_fence__opc_or_fence__opc_iorw_fence__();
void i_fence__opc_fence__opc_or_fence__opc_iow_fence__();
void i_fence__opc_fence__opc_or_fence__opc_ir_fence__();
void i_fence__opc_fence__opc_or_fence__opc_irw_fence__();
void i_fence__opc_fence__opc_or_fence__opc_iw_fence__();
void i_fence__opc_fence__opc_or_fence__opc_o_fence__();
void i_fence__opc_fence__opc_or_fence__opc_or_fence__();
void i_fence__opc_fence__opc_or_fence__opc_orw_fence__();
void i_fence__opc_fence__opc_or_fence__opc_ow_fence__();
void i_fence__opc_fence__opc_or_fence__opc_r_fence__();
void i_fence__opc_fence__opc_or_fence__opc_rw_fence__();
void i_fence__opc_fence__opc_or_fence__opc_w_fence__();
void i_fence__opc_fence__opc_orw_fence__opc_hint_fence__();
void i_fence__opc_fence__opc_orw_fence__opc_i_fence__();
void i_fence__opc_fence__opc_orw_fence__opc_io_fence__();
void i_fence__opc_fence__opc_orw_fence__opc_ior_fence__();
void i_fence__opc_fence__opc_orw_fence__opc_iorw_fence__();
void i_fence__opc_fence__opc_orw_fence__opc_iow_fence__();
void i_fence__opc_fence__opc_orw_fence__opc_ir_fence__();
void i_fence__opc_fence__opc_orw_fence__opc_irw_fence__();
void i_fence__opc_fence__opc_orw_fence__opc_iw_fence__();
void i_fence__opc_fence__opc_orw_fence__opc_o_fence__();
void i_fence__opc_fence__opc_orw_fence__opc_or_fence__();
void i_fence__opc_fence__opc_orw_fence__opc_orw_fence__();
void i_fence__opc_fence__opc_orw_fence__opc_ow_fence__();
void i_fence__opc_fence__opc_orw_fence__opc_r_fence__();
void i_fence__opc_fence__opc_orw_fence__opc_rw_fence__();
void i_fence__opc_fence__opc_orw_fence__opc_w_fence__();
void i_fence__opc_fence__opc_ow_fence__opc_hint_fence__();
void i_fence__opc_fence__opc_ow_fence__opc_i_fence__();
void i_fence__opc_fence__opc_ow_fence__opc_io_fence__();
void i_fence__opc_fence__opc_ow_fence__opc_ior_fence__();
void i_fence__opc_fence__opc_ow_fence__opc_iorw_fence__();
void i_fence__opc_fence__opc_ow_fence__opc_iow_fence__();
void i_fence__opc_fence__opc_ow_fence__opc_ir_fence__();
void i_fence__opc_fence__opc_ow_fence__opc_irw_fence__();
void i_fence__opc_fence__opc_ow_fence__opc_iw_fence__();
void i_fence__opc_fence__opc_ow_fence__opc_o_fence__();
void i_fence__opc_fence__opc_ow_fence__opc_or_fence__();
void i_fence__opc_fence__opc_ow_fence__opc_orw_fence__();
void i_fence__opc_fence__opc_ow_fence__opc_ow_fence__();
void i_fence__opc_fence__opc_ow_fence__opc_r_fence__();
void i_fence__opc_fence__opc_ow_fence__opc_rw_fence__();
void i_fence__opc_fence__opc_ow_fence__opc_w_fence__();
void i_fence__opc_fence__opc_r_fence__opc_hint_fence__();
void i_fence__opc_fence__opc_r_fence__opc_i_fence__();
void i_fence__opc_fence__opc_r_fence__opc_io_fence__();
void i_fence__opc_fence__opc_r_fence__opc_ior_fence__();
void i_fence__opc_fence__opc_r_fence__opc_iorw_fence__();
void i_fence__opc_fence__opc_r_fence__opc_iow_fence__();
void i_fence__opc_fence__opc_r_fence__opc_ir_fence__();
void i_fence__opc_fence__opc_r_fence__opc_irw_fence__();
void i_fence__opc_fence__opc_r_fence__opc_iw_fence__();
void i_fence__opc_fence__opc_r_fence__opc_o_fence__();
void i_fence__opc_fence__opc_r_fence__opc_or_fence__();
void i_fence__opc_fence__opc_r_fence__opc_orw_fence__();
void i_fence__opc_fence__opc_r_fence__opc_ow_fence__();
void i_fence__opc_fence__opc_r_fence__opc_r_fence__();
void i_fence__opc_fence__opc_r_fence__opc_rw_fence__();
void i_fence__opc_fence__opc_r_fence__opc_w_fence__();
void i_fence__opc_fence__opc_rw_fence__opc_hint_fence__();
void i_fence__opc_fence__opc_rw_fence__opc_i_fence__();
void i_fence__opc_fence__opc_rw_fence__opc_io_fence__();
void i_fence__opc_fence__opc_rw_fence__opc_ior_fence__();
void i_fence__opc_fence__opc_rw_fence__opc_iorw_fence__();
void i_fence__opc_fence__opc_rw_fence__opc_iow_fence__();
void i_fence__opc_fence__opc_rw_fence__opc_ir_fence__();
void i_fence__opc_fence__opc_rw_fence__opc_irw_fence__();
void i_fence__opc_fence__opc_rw_fence__opc_iw_fence__();
void i_fence__opc_fence__opc_rw_fence__opc_o_fence__();
void i_fence__opc_fence__opc_rw_fence__opc_or_fence__();
void i_fence__opc_fence__opc_rw_fence__opc_orw_fence__();
void i_fence__opc_fence__opc_rw_fence__opc_ow_fence__();
void i_fence__opc_fence__opc_rw_fence__opc_r_fence__();
void i_fence__opc_fence__opc_rw_fence__opc_rw_fence__();
void i_fence__opc_fence__opc_rw_fence__opc_w_fence__();
void i_fence__opc_fence__opc_w_fence__opc_hint_fence__();
void i_fence__opc_fence__opc_w_fence__opc_i_fence__();
void i_fence__opc_fence__opc_w_fence__opc_io_fence__();
void i_fence__opc_fence__opc_w_fence__opc_ior_fence__();
void i_fence__opc_fence__opc_w_fence__opc_iorw_fence__();
void i_fence__opc_fence__opc_w_fence__opc_iow_fence__();
void i_fence__opc_fence__opc_w_fence__opc_ir_fence__();
void i_fence__opc_fence__opc_w_fence__opc_irw_fence__();
void i_fence__opc_fence__opc_w_fence__opc_iw_fence__();
void i_fence__opc_fence__opc_w_fence__opc_o_fence__();
void i_fence__opc_fence__opc_w_fence__opc_or_fence__();
void i_fence__opc_fence__opc_w_fence__opc_orw_fence__();
void i_fence__opc_fence__opc_w_fence__opc_ow_fence__();
void i_fence__opc_fence__opc_w_fence__opc_r_fence__();
void i_fence__opc_fence__opc_w_fence__opc_rw_fence__();
void i_fence__opc_fence__opc_w_fence__opc_w_fence__();
void i_fencei__opc_fencei__();
void i_get_pc_alias__reg0__();
void i_get_pc_alias__regs__();
void i_jal__opc_jal__reg0__rel_addr20__();
void i_jal__opc_jal__regs__rel_addr20__();
void i_jal_abs__opc_jal__reg0__rel_addr20__();
void i_jal_abs__opc_jal__regs__rel_addr20__();
void i_jalr__opc_jalr__reg0__reg0__simm12_lo__();
void i_jalr__opc_jalr__reg0__reg0__simm12_pcrel_lo__();
void i_jalr__opc_jalr__reg0__reg0__simm12_simple__();
void i_jalr__opc_jalr__reg0__regs__simm12_lo__();
void i_jalr__opc_jalr__reg0__regs__simm12_pcrel_lo__();
void i_jalr__opc_jalr__reg0__regs__simm12_simple__();
void i_jalr__opc_jalr__regs__reg0__simm12_lo__();
void i_jalr__opc_jalr__regs__reg0__simm12_pcrel_lo__();
void i_jalr__opc_jalr__regs__reg0__simm12_simple__();
void i_jalr__opc_jalr__regs__regs__simm12_lo__();
void i_jalr__opc_jalr__regs__regs__simm12_pcrel_lo__();
void i_jalr__opc_jalr__regs__regs__simm12_simple__();
void i_jmp_rel_alias__rel_addr20__();
void i_jump_reg_alias__reg0__();
void i_jump_reg_alias__regs__();
void i_load__opc_loadb__reg0__simm12_lo__reg0__();
void i_load__opc_loadb__reg0__simm12_lo__regs__();
void i_load__opc_loadb__reg0__simm12_pcrel_lo__reg0__();
void i_load__opc_loadb__reg0__simm12_pcrel_lo__regs__();
void i_load__opc_loadb__reg0__simm12_simple__reg0__();
void i_load__opc_loadb__reg0__simm12_simple__regs__();
void i_load__opc_loadb__regs__simm12_lo__reg0__();
void i_load__opc_loadb__regs__simm12_lo__regs__();
void i_load__opc_loadb__regs__simm12_pcrel_lo__reg0__();
void i_load__opc_loadb__regs__simm12_pcrel_lo__regs__();
void i_load__opc_loadb__regs__simm12_simple__reg0__();
void i_load__opc_loadb__regs__simm12_simple__regs__();
void i_load__opc_loadbu__reg0__simm12_lo__reg0__();
void i_load__opc_loadbu__reg0__simm12_lo__regs__();
void i_load__opc_loadbu__reg0__simm12_pcrel_lo__reg0__();
void i_load__opc_loadbu__reg0__simm12_pcrel_lo__regs__();
void i_load__opc_loadbu__reg0__simm12_simple__reg0__();
void i_load__opc_loadbu__reg0__simm12_simple__regs__();
void i_load__opc_loadbu__regs__simm12_lo__reg0__();
void i_load__opc_loadbu__regs__simm12_lo__regs__();
void i_load__opc_loadbu__regs__simm12_pcrel_lo__reg0__();
void i_load__opc_loadbu__regs__simm12_pcrel_lo__regs__();
void i_load__opc_loadbu__regs__simm12_simple__reg0__();
void i_load__opc_loadbu__regs__simm12_simple__regs__();
void i_load__opc_loadh__reg0__simm12_lo__reg0__();
void i_load__opc_loadh__reg0__simm12_lo__regs__();
void i_load__opc_loadh__reg0__simm12_pcrel_lo__reg0__();
void i_load__opc_loadh__reg0__simm12_pcrel_lo__regs__();
void i_load__opc_loadh__reg0__simm12_simple__reg0__();
void i_load__opc_loadh__reg0__simm12_simple__regs__();
void i_load__opc_loadh__regs__simm12_lo__reg0__();
void i_load__opc_loadh__regs__simm12_lo__regs__();
void i_load__opc_loadh__regs__simm12_pcrel_lo__reg0__();
void i_load__opc_loadh__regs__simm12_pcrel_lo__regs__();
void i_load__opc_loadh__regs__simm12_simple__reg0__();
void i_load__opc_loadh__regs__simm12_simple__regs__();
void i_load__opc_loadhu__reg0__simm12_lo__reg0__();
void i_load__opc_loadhu__reg0__simm12_lo__regs__();
void i_load__opc_loadhu__reg0__simm12_pcrel_lo__reg0__();
void i_load__opc_loadhu__reg0__simm12_pcrel_lo__regs__();
void i_load__opc_loadhu__reg0__simm12_simple__reg0__();
void i_load__opc_loadhu__reg0__simm12_simple__regs__();
void i_load__opc_loadhu__regs__simm12_lo__reg0__();
void i_load__opc_loadhu__regs__simm12_lo__regs__();
void i_load__opc_loadhu__regs__simm12_pcrel_lo__reg0__();
void i_load__opc_loadhu__regs__simm12_pcrel_lo__regs__();
void i_load__opc_loadhu__regs__simm12_simple__reg0__();
void i_load__opc_loadhu__regs__simm12_simple__regs__();
void i_load__opc_loadw__reg0__simm12_lo__reg0__();
void i_load__opc_loadw__reg0__simm12_lo__regs__();
void i_load__opc_loadw__reg0__simm12_pcrel_lo__reg0__();
void i_load__opc_loadw__reg0__simm12_pcrel_lo__regs__();
void i_load__opc_loadw__reg0__simm12_simple__reg0__();
void i_load__opc_loadw__reg0__simm12_simple__regs__();
void i_load__opc_loadw__regs__simm12_lo__reg0__();
void i_load__opc_loadw__regs__simm12_lo__regs__();
void i_load__opc_loadw__regs__simm12_pcrel_lo__reg0__();
void i_load__opc_loadw__regs__simm12_pcrel_lo__regs__();
void i_load__opc_loadw__regs__simm12_simple__reg0__();
void i_load__opc_loadw__regs__simm12_simple__regs__();
void i_lui__opc_lui__reg0__imm20_s12__();
void i_lui__opc_lui__regs__imm20_s12__();
void i_lui_hi__opc_lui__reg0__imm20_hi__();
void i_lui_hi__opc_lui__regs__imm20_hi__();
void i_mv_alias__reg0__reg0__();
void i_mv_alias__reg0__regs__();
void i_mv_alias__regs__reg0__();
void i_mv_alias__regs__regs__();
void i_neg_alias__reg0__reg0__();
void i_neg_alias__reg0__regs__();
void i_neg_alias__regs__reg0__();
void i_neg_alias__regs__regs__();
void i_nop_alias__();
void i_ori_emulation_alias__reg0__reg0__simm12_lo__();
void i_ori_emulation_alias__reg0__reg0__simm12_pcrel_lo__();
void i_ori_emulation_alias__reg0__reg0__simm12_simple__();
void i_ori_emulation_alias__reg0__regs__simm12_lo__();
void i_ori_emulation_alias__reg0__regs__simm12_pcrel_lo__();
void i_ori_emulation_alias__reg0__regs__simm12_simple__();
void i_ori_emulation_alias__regs__reg0__simm12_lo__();
void i_ori_emulation_alias__regs__reg0__simm12_pcrel_lo__();
void i_ori_emulation_alias__regs__reg0__simm12_simple__();
void i_ori_emulation_alias__regs__regs__simm12_lo__();
void i_ori_emulation_alias__regs__regs__simm12_pcrel_lo__();
void i_ori_emulation_alias__regs__regs__simm12_simple__();
void i_seqz_alias__reg0__reg0__();
void i_seqz_alias__reg0__regs__();
void i_seqz_alias__regs__reg0__();
void i_seqz_alias__regs__regs__();
void i_snez_alias__reg0__reg0__();
void i_snez_alias__reg0__regs__();
void i_snez_alias__regs__reg0__();
void i_snez_alias__regs__regs__();
void i_store__opc_storeb__reg0__simm12_s_lo__reg0__();
void i_store__opc_storeb__reg0__simm12_s_lo__regs__();
void i_store__opc_storeb__reg0__simm12_s_pcrel_lo__reg0__();
void i_store__opc_storeb__reg0__simm12_s_pcrel_lo__regs__();
void i_store__opc_storeb__reg0__simm12_simple__reg0__();
void i_store__opc_storeb__reg0__simm12_simple__regs__();
void i_store__opc_storeb__regs__simm12_s_lo__reg0__();
void i_store__opc_storeb__regs__simm12_s_lo__regs__();
void i_store__opc_storeb__regs__simm12_s_pcrel_lo__reg0__();
void i_store__opc_storeb__regs__simm12_s_pcrel_lo__regs__();
void i_store__opc_storeb__regs__simm12_simple__reg0__();
void i_store__opc_storeb__regs__simm12_simple__regs__();
void i_store__opc_storeh__reg0__simm12_s_lo__reg0__();
void i_store__opc_storeh__reg0__simm12_s_lo__regs__();
void i_store__opc_storeh__reg0__simm12_s_pcrel_lo__reg0__();
void i_store__opc_storeh__reg0__simm12_s_pcrel_lo__regs__();
void i_store__opc_storeh__reg0__simm12_simple__reg0__();
void i_store__opc_storeh__reg0__simm12_simple__regs__();
void i_store__opc_storeh__regs__simm12_s_lo__reg0__();
void i_store__opc_storeh__regs__simm12_s_lo__regs__();
void i_store__opc_storeh__regs__simm12_s_pcrel_lo__reg0__();
void i_store__opc_storeh__regs__simm12_s_pcrel_lo__regs__();
void i_store__opc_storeh__regs__simm12_simple__reg0__();
void i_store__opc_storeh__regs__simm12_simple__regs__();
void i_store__opc_storew__reg0__simm12_s_lo__reg0__();
void i_store__opc_storew__reg0__simm12_s_lo__regs__();
void i_store__opc_storew__reg0__simm12_s_pcrel_lo__reg0__();
void i_store__opc_storew__reg0__simm12_s_pcrel_lo__regs__();
void i_store__opc_storew__reg0__simm12_simple__reg0__();
void i_store__opc_storew__reg0__simm12_simple__regs__();
void i_store__opc_storew__regs__simm12_s_lo__reg0__();
void i_store__opc_storew__regs__simm12_s_lo__regs__();
void i_store__opc_storew__regs__simm12_s_pcrel_lo__reg0__();
void i_store__opc_storew__regs__simm12_s_pcrel_lo__regs__();
void i_store__opc_storew__regs__simm12_simple__reg0__();
void i_store__opc_storew__regs__simm12_simple__regs__();
void i_unimp__opc_unimp__();
void i_wfi__opc_wfi__();
void i_xret__opc_mret__();
int32 imm20_hi__();
int32 imm20_s12__();
uint5 imm5__();
void load_imm32__regs__regs__regs__();
int32 opc_add__();
int32 opc_addi__();
int32 opc_and__();
int32 opc_andi__();
int32 opc_auipc__();
int32 opc_beq__();
int32 opc_bge__();
int32 opc_bgeu__();
int32 opc_blt__();
int32 opc_bltu__();
int32 opc_bne__();
int32 opc_csrrc__();
int32 opc_csrrci__();
int32 opc_csrrs__();
int32 opc_csrrsi__();
int32 opc_csrrw__();
int32 opc_csrrwi__();
int32 opc_ebreak__();
int32 opc_ecall__();
int32 opc_fence__();
int32 opc_fencei__();
int32 opc_hackaton_custom_a__();
int32 opc_hackaton_custom_b__();
int32 opc_hackaton_custom_c__();
int32 opc_hackaton_custom_d__();
int32 opc_hackaton_custom_e__();
int32 opc_hint_fence__();
int32 opc_i_fence__();
int32 opc_io_fence__();
int32 opc_ior_fence__();
int32 opc_iorw_fence__();
int32 opc_iow_fence__();
int32 opc_ir_fence__();
int32 opc_irw_fence__();
int32 opc_iw_fence__();
int32 opc_jal__();
int32 opc_jalr__();
int32 opc_loadb__();
int32 opc_loadbu__();
int32 opc_loadh__();
int32 opc_loadhu__();
int32 opc_loadw__();
int32 opc_lui__();
int32 opc_mret__();
int32 opc_o_fence__();
int32 opc_or__();
int32 opc_or_fence__();
int32 opc_ori__();
int32 opc_orw_fence__();
int32 opc_ow_fence__();
int32 opc_r_fence__();
int32 opc_rw_fence__();
int32 opc_sll__();
int32 opc_slli__();
int32 opc_slt__();
int32 opc_slti__();
int32 opc_sltiu__();
int32 opc_sltu__();
int32 opc_sra__();
int32 opc_srai__();
int32 opc_srl__();
int32 opc_srli__();
int32 opc_storeb__();
int32 opc_storeh__();
int32 opc_storew__();
int32 opc_sub__();
int32 opc_unimp__();
int32 opc_w_fence__();
int32 opc_wfi__();
int32 opc_xor__();
int32 opc_xori__();
int32 reg0__();
__regopindex_type regs__(const unsigned int index);
__regopindex_type regs_csr__(const unsigned int index);
int32 rel_addr12__();
int32 rel_addr20__();
uint5 shift_imm__();
int12 simm12_lo__();
int12 simm12_pcrel_lo__();
int12 simm12_s_lo__();
int12 simm12_s_pcrel_lo__();
int12 simm12_simple__();

void c_addi_lo__opc_addi__regs__regs__()
{
    int32 opc = opc_addi__();
    g_MI4regsIH1_10start_base6_4regs3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base6_4regs3dst_Index);
    g_MI4regsIH1_10start_base6_4regs3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base6_4regs3src_Index);
    g_MI3immIH1_10start_base1_9c_addi_lo_Index = 2;
    uint32 MI3immIH1_10start_base1_9c_addi_loInstance = MI3immIH1_10start_base1_9c_addi_lo();
    MI9c_addi_loIH1_10start_base(opc, dst, src, MI3immIH1_10start_base1_9c_addi_loInstance);
}

void c_lui_hi__opc_lui__regs__()
{
    int32 opc = opc_lui__();
    g_MI4regsIH1_10start_base6_4regs3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base6_4regs3dst_Index);
    g_MI3immIH1_10start_base1_8c_lui_hi_Index = 1;
    uint32 MI3immIH1_10start_base1_8c_lui_hiInstance = MI3immIH1_10start_base1_8c_lui_hi();
    MI8c_lui_hiIH1_10start_base(opc, dst, MI3immIH1_10start_base1_8c_lui_hiInstance);
}

void i_auipc__opc_auipc__reg0__imm20_s12__()
{
    int32 opc = opc_auipc__();
    __regopindex_type dst = reg0__();
    g_MI3immIH1_10start_base11_9imm20_s123imm1_9imm20_s12_Index = 0;
    int32 imm = imm20_s12__();
    MI7i_auipcIH1_10start_base(opc, dst, imm);
}

void i_auipc__opc_auipc__regs__imm20_s12__()
{
    int32 opc = opc_auipc__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI3immIH1_10start_base11_9imm20_s123imm1_9imm20_s12_Index = 1;
    int32 imm = imm20_s12__();
    MI7i_auipcIH1_10start_base(opc, dst, imm);
}

void i_call_reg_alias__reg0__()
{
    __regopindex_type src = reg0__();
    MI16i_call_reg_aliasIH1_10start_base(src);
}

void i_call_reg_alias__regs__()
{
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 0;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI16i_call_reg_aliasIH1_10start_base(src);
}

void i_call_rel_alias__rel_addr20__()
{
    g_MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20_Index = 0;
    int32 addr = rel_addr20__();
    MI16i_call_rel_aliasIH1_10start_base(addr);
}

void i_comp_2reg_imm__opc_addi__reg0__reg0__simm12_lo__()
{
    int32 opc = opc_addi__();
    __regopindex_type dst = reg0__();
    __regopindex_type src = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 0;
    int12 simm12 = simm12_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_addi__reg0__reg0__simm12_pcrel_lo__()
{
    int32 opc = opc_addi__();
    __regopindex_type dst = reg0__();
    __regopindex_type src = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 0;
    int12 simm12 = simm12_pcrel_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_addi__reg0__reg0__simm12_simple__()
{
    int32 opc = opc_addi__();
    __regopindex_type dst = reg0__();
    __regopindex_type src = reg0__();
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 0;
    int12 simm12 = simm12_simple__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_addi__reg0__regs__simm12_lo__()
{
    int32 opc = opc_addi__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 0;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 1;
    int12 simm12 = simm12_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_addi__reg0__regs__simm12_pcrel_lo__()
{
    int32 opc = opc_addi__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 0;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 1;
    int12 simm12 = simm12_pcrel_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_addi__reg0__regs__simm12_simple__()
{
    int32 opc = opc_addi__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 0;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 1;
    int12 simm12 = simm12_simple__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_addi__regs__reg0__simm12_lo__()
{
    int32 opc = opc_addi__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 1;
    int12 simm12 = simm12_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_addi__regs__reg0__simm12_pcrel_lo__()
{
    int32 opc = opc_addi__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 1;
    int12 simm12 = simm12_pcrel_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_addi__regs__reg0__simm12_simple__()
{
    int32 opc = opc_addi__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src = reg0__();
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 1;
    int12 simm12 = simm12_simple__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_addi__regs__regs__simm12_lo__()
{
    int32 opc = opc_addi__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 2;
    int12 simm12 = simm12_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_addi__regs__regs__simm12_pcrel_lo__()
{
    int32 opc = opc_addi__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 2;
    int12 simm12 = simm12_pcrel_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__()
{
    int32 opc = opc_addi__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 2;
    int12 simm12 = simm12_simple__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_andi__reg0__reg0__simm12_lo__()
{
    int32 opc = opc_andi__();
    __regopindex_type dst = reg0__();
    __regopindex_type src = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 0;
    int12 simm12 = simm12_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_andi__reg0__reg0__simm12_pcrel_lo__()
{
    int32 opc = opc_andi__();
    __regopindex_type dst = reg0__();
    __regopindex_type src = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 0;
    int12 simm12 = simm12_pcrel_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_andi__reg0__reg0__simm12_simple__()
{
    int32 opc = opc_andi__();
    __regopindex_type dst = reg0__();
    __regopindex_type src = reg0__();
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 0;
    int12 simm12 = simm12_simple__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_andi__reg0__regs__simm12_lo__()
{
    int32 opc = opc_andi__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 0;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 1;
    int12 simm12 = simm12_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_andi__reg0__regs__simm12_pcrel_lo__()
{
    int32 opc = opc_andi__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 0;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 1;
    int12 simm12 = simm12_pcrel_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_andi__reg0__regs__simm12_simple__()
{
    int32 opc = opc_andi__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 0;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 1;
    int12 simm12 = simm12_simple__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_andi__regs__reg0__simm12_lo__()
{
    int32 opc = opc_andi__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 1;
    int12 simm12 = simm12_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_andi__regs__reg0__simm12_pcrel_lo__()
{
    int32 opc = opc_andi__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 1;
    int12 simm12 = simm12_pcrel_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_andi__regs__reg0__simm12_simple__()
{
    int32 opc = opc_andi__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src = reg0__();
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 1;
    int12 simm12 = simm12_simple__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_andi__regs__regs__simm12_lo__()
{
    int32 opc = opc_andi__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 2;
    int12 simm12 = simm12_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_andi__regs__regs__simm12_pcrel_lo__()
{
    int32 opc = opc_andi__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 2;
    int12 simm12 = simm12_pcrel_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_andi__regs__regs__simm12_simple__()
{
    int32 opc = opc_andi__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 2;
    int12 simm12 = simm12_simple__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_ori__reg0__reg0__simm12_lo__()
{
    int32 opc = opc_ori__();
    __regopindex_type dst = reg0__();
    __regopindex_type src = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 0;
    int12 simm12 = simm12_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_ori__reg0__reg0__simm12_pcrel_lo__()
{
    int32 opc = opc_ori__();
    __regopindex_type dst = reg0__();
    __regopindex_type src = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 0;
    int12 simm12 = simm12_pcrel_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_ori__reg0__reg0__simm12_simple__()
{
    int32 opc = opc_ori__();
    __regopindex_type dst = reg0__();
    __regopindex_type src = reg0__();
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 0;
    int12 simm12 = simm12_simple__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_ori__reg0__regs__simm12_lo__()
{
    int32 opc = opc_ori__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 0;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 1;
    int12 simm12 = simm12_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_ori__reg0__regs__simm12_pcrel_lo__()
{
    int32 opc = opc_ori__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 0;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 1;
    int12 simm12 = simm12_pcrel_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_ori__reg0__regs__simm12_simple__()
{
    int32 opc = opc_ori__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 0;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 1;
    int12 simm12 = simm12_simple__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_ori__regs__reg0__simm12_lo__()
{
    int32 opc = opc_ori__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 1;
    int12 simm12 = simm12_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_ori__regs__reg0__simm12_pcrel_lo__()
{
    int32 opc = opc_ori__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 1;
    int12 simm12 = simm12_pcrel_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_ori__regs__reg0__simm12_simple__()
{
    int32 opc = opc_ori__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src = reg0__();
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 1;
    int12 simm12 = simm12_simple__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_ori__regs__regs__simm12_lo__()
{
    int32 opc = opc_ori__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 2;
    int12 simm12 = simm12_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_ori__regs__regs__simm12_pcrel_lo__()
{
    int32 opc = opc_ori__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 2;
    int12 simm12 = simm12_pcrel_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_ori__regs__regs__simm12_simple__()
{
    int32 opc = opc_ori__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 2;
    int12 simm12 = simm12_simple__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_slti__reg0__reg0__simm12_lo__()
{
    int32 opc = opc_slti__();
    __regopindex_type dst = reg0__();
    __regopindex_type src = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 0;
    int12 simm12 = simm12_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_slti__reg0__reg0__simm12_pcrel_lo__()
{
    int32 opc = opc_slti__();
    __regopindex_type dst = reg0__();
    __regopindex_type src = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 0;
    int12 simm12 = simm12_pcrel_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_slti__reg0__reg0__simm12_simple__()
{
    int32 opc = opc_slti__();
    __regopindex_type dst = reg0__();
    __regopindex_type src = reg0__();
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 0;
    int12 simm12 = simm12_simple__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_slti__reg0__regs__simm12_lo__()
{
    int32 opc = opc_slti__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 0;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 1;
    int12 simm12 = simm12_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_slti__reg0__regs__simm12_pcrel_lo__()
{
    int32 opc = opc_slti__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 0;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 1;
    int12 simm12 = simm12_pcrel_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_slti__reg0__regs__simm12_simple__()
{
    int32 opc = opc_slti__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 0;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 1;
    int12 simm12 = simm12_simple__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_slti__regs__reg0__simm12_lo__()
{
    int32 opc = opc_slti__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 1;
    int12 simm12 = simm12_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_slti__regs__reg0__simm12_pcrel_lo__()
{
    int32 opc = opc_slti__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 1;
    int12 simm12 = simm12_pcrel_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__()
{
    int32 opc = opc_slti__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src = reg0__();
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 1;
    int12 simm12 = simm12_simple__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_slti__regs__regs__simm12_lo__()
{
    int32 opc = opc_slti__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 2;
    int12 simm12 = simm12_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_slti__regs__regs__simm12_pcrel_lo__()
{
    int32 opc = opc_slti__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 2;
    int12 simm12 = simm12_pcrel_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__()
{
    int32 opc = opc_slti__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 2;
    int12 simm12 = simm12_simple__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_sltiu__reg0__reg0__simm12_lo__()
{
    int32 opc = opc_sltiu__();
    __regopindex_type dst = reg0__();
    __regopindex_type src = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 0;
    int12 simm12 = simm12_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_sltiu__reg0__reg0__simm12_pcrel_lo__()
{
    int32 opc = opc_sltiu__();
    __regopindex_type dst = reg0__();
    __regopindex_type src = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 0;
    int12 simm12 = simm12_pcrel_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_sltiu__reg0__reg0__simm12_simple__()
{
    int32 opc = opc_sltiu__();
    __regopindex_type dst = reg0__();
    __regopindex_type src = reg0__();
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 0;
    int12 simm12 = simm12_simple__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_sltiu__reg0__regs__simm12_lo__()
{
    int32 opc = opc_sltiu__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 0;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 1;
    int12 simm12 = simm12_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_sltiu__reg0__regs__simm12_pcrel_lo__()
{
    int32 opc = opc_sltiu__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 0;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 1;
    int12 simm12 = simm12_pcrel_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_sltiu__reg0__regs__simm12_simple__()
{
    int32 opc = opc_sltiu__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 0;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 1;
    int12 simm12 = simm12_simple__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_lo__()
{
    int32 opc = opc_sltiu__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 1;
    int12 simm12 = simm12_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_pcrel_lo__()
{
    int32 opc = opc_sltiu__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 1;
    int12 simm12 = simm12_pcrel_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__()
{
    int32 opc = opc_sltiu__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src = reg0__();
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 1;
    int12 simm12 = simm12_simple__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_lo__()
{
    int32 opc = opc_sltiu__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 2;
    int12 simm12 = simm12_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_pcrel_lo__()
{
    int32 opc = opc_sltiu__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 2;
    int12 simm12 = simm12_pcrel_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__()
{
    int32 opc = opc_sltiu__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 2;
    int12 simm12 = simm12_simple__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_xori__reg0__reg0__simm12_lo__()
{
    int32 opc = opc_xori__();
    __regopindex_type dst = reg0__();
    __regopindex_type src = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 0;
    int12 simm12 = simm12_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_xori__reg0__reg0__simm12_pcrel_lo__()
{
    int32 opc = opc_xori__();
    __regopindex_type dst = reg0__();
    __regopindex_type src = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 0;
    int12 simm12 = simm12_pcrel_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_xori__reg0__reg0__simm12_simple__()
{
    int32 opc = opc_xori__();
    __regopindex_type dst = reg0__();
    __regopindex_type src = reg0__();
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 0;
    int12 simm12 = simm12_simple__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_xori__reg0__regs__simm12_lo__()
{
    int32 opc = opc_xori__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 0;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 1;
    int12 simm12 = simm12_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_xori__reg0__regs__simm12_pcrel_lo__()
{
    int32 opc = opc_xori__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 0;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 1;
    int12 simm12 = simm12_pcrel_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_xori__reg0__regs__simm12_simple__()
{
    int32 opc = opc_xori__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 0;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 1;
    int12 simm12 = simm12_simple__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_xori__regs__reg0__simm12_lo__()
{
    int32 opc = opc_xori__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 1;
    int12 simm12 = simm12_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_xori__regs__reg0__simm12_pcrel_lo__()
{
    int32 opc = opc_xori__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 1;
    int12 simm12 = simm12_pcrel_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_xori__regs__reg0__simm12_simple__()
{
    int32 opc = opc_xori__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src = reg0__();
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 1;
    int12 simm12 = simm12_simple__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_xori__regs__regs__simm12_lo__()
{
    int32 opc = opc_xori__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 2;
    int12 simm12 = simm12_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_xori__regs__regs__simm12_pcrel_lo__()
{
    int32 opc = opc_xori__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 2;
    int12 simm12 = simm12_pcrel_lo__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__()
{
    int32 opc = opc_xori__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 2;
    int12 simm12 = simm12_simple__();
    MI15i_comp_2reg_immIH1_10start_base(opc, dst, src, simm12);
}

void i_comp_2reg_imm_shift__opc_slli__reg0__reg0__shift_imm__()
{
    int32 opc = opc_slli__();
    __regopindex_type dst = reg0__();
    __regopindex_type src = reg0__();
    g_MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_Index = 0;
    uint5 imm = shift_imm__();
    MI21i_comp_2reg_imm_shiftIH1_10start_base(opc, dst, src, imm);
}

void i_comp_2reg_imm_shift__opc_slli__reg0__regs__shift_imm__()
{
    int32 opc = opc_slli__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 0;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_Index = 1;
    uint5 imm = shift_imm__();
    MI21i_comp_2reg_imm_shiftIH1_10start_base(opc, dst, src, imm);
}

void i_comp_2reg_imm_shift__opc_slli__regs__reg0__shift_imm__()
{
    int32 opc = opc_slli__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src = reg0__();
    g_MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_Index = 1;
    uint5 imm = shift_imm__();
    MI21i_comp_2reg_imm_shiftIH1_10start_base(opc, dst, src, imm);
}

void i_comp_2reg_imm_shift__opc_slli__regs__regs__shift_imm__()
{
    int32 opc = opc_slli__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_Index = 2;
    uint5 imm = shift_imm__();
    MI21i_comp_2reg_imm_shiftIH1_10start_base(opc, dst, src, imm);
}

void i_comp_2reg_imm_shift__opc_srai__reg0__reg0__shift_imm__()
{
    int32 opc = opc_srai__();
    __regopindex_type dst = reg0__();
    __regopindex_type src = reg0__();
    g_MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_Index = 0;
    uint5 imm = shift_imm__();
    MI21i_comp_2reg_imm_shiftIH1_10start_base(opc, dst, src, imm);
}

void i_comp_2reg_imm_shift__opc_srai__reg0__regs__shift_imm__()
{
    int32 opc = opc_srai__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 0;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_Index = 1;
    uint5 imm = shift_imm__();
    MI21i_comp_2reg_imm_shiftIH1_10start_base(opc, dst, src, imm);
}

void i_comp_2reg_imm_shift__opc_srai__regs__reg0__shift_imm__()
{
    int32 opc = opc_srai__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src = reg0__();
    g_MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_Index = 1;
    uint5 imm = shift_imm__();
    MI21i_comp_2reg_imm_shiftIH1_10start_base(opc, dst, src, imm);
}

void i_comp_2reg_imm_shift__opc_srai__regs__regs__shift_imm__()
{
    int32 opc = opc_srai__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_Index = 2;
    uint5 imm = shift_imm__();
    MI21i_comp_2reg_imm_shiftIH1_10start_base(opc, dst, src, imm);
}

void i_comp_2reg_imm_shift__opc_srli__reg0__reg0__shift_imm__()
{
    int32 opc = opc_srli__();
    __regopindex_type dst = reg0__();
    __regopindex_type src = reg0__();
    g_MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_Index = 0;
    uint5 imm = shift_imm__();
    MI21i_comp_2reg_imm_shiftIH1_10start_base(opc, dst, src, imm);
}

void i_comp_2reg_imm_shift__opc_srli__reg0__regs__shift_imm__()
{
    int32 opc = opc_srli__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 0;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_Index = 1;
    uint5 imm = shift_imm__();
    MI21i_comp_2reg_imm_shiftIH1_10start_base(opc, dst, src, imm);
}

void i_comp_2reg_imm_shift__opc_srli__regs__reg0__shift_imm__()
{
    int32 opc = opc_srli__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src = reg0__();
    g_MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_Index = 1;
    uint5 imm = shift_imm__();
    MI21i_comp_2reg_imm_shiftIH1_10start_base(opc, dst, src, imm);
}

void i_comp_2reg_imm_shift__opc_srli__regs__regs__shift_imm__()
{
    int32 opc = opc_srli__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_Index = 2;
    uint5 imm = shift_imm__();
    MI21i_comp_2reg_imm_shiftIH1_10start_base(opc, dst, src, imm);
}

void i_comp_3reg__opc_add__reg0__reg0__reg0__()
{
    int32 opc = opc_add__();
    __regopindex_type dst = reg0__();
    __regopindex_type src1 = reg0__();
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_add__reg0__reg0__regs__()
{
    int32 opc = opc_add__();
    __regopindex_type dst = reg0__();
    __regopindex_type src1 = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 0;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_add__reg0__regs__reg0__()
{
    int32 opc = opc_add__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 0;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_add__reg0__regs__regs__()
{
    int32 opc = opc_add__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 0;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 1;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_add__regs__reg0__reg0__()
{
    int32 opc = opc_add__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src1 = reg0__();
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_add__regs__reg0__regs__()
{
    int32 opc = opc_add__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src1 = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 1;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_add__regs__regs__reg0__()
{
    int32 opc = opc_add__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 1;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_add__regs__regs__regs__()
{
    int32 opc = opc_add__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 1;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 2;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_and__reg0__reg0__reg0__()
{
    int32 opc = opc_and__();
    __regopindex_type dst = reg0__();
    __regopindex_type src1 = reg0__();
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_and__reg0__reg0__regs__()
{
    int32 opc = opc_and__();
    __regopindex_type dst = reg0__();
    __regopindex_type src1 = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 0;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_and__reg0__regs__reg0__()
{
    int32 opc = opc_and__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 0;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_and__reg0__regs__regs__()
{
    int32 opc = opc_and__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 0;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 1;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_and__regs__reg0__reg0__()
{
    int32 opc = opc_and__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src1 = reg0__();
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_and__regs__reg0__regs__()
{
    int32 opc = opc_and__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src1 = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 1;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_and__regs__regs__reg0__()
{
    int32 opc = opc_and__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 1;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_and__regs__regs__regs__()
{
    int32 opc = opc_and__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 1;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 2;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_or__reg0__reg0__reg0__()
{
    int32 opc = opc_or__();
    __regopindex_type dst = reg0__();
    __regopindex_type src1 = reg0__();
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_or__reg0__reg0__regs__()
{
    int32 opc = opc_or__();
    __regopindex_type dst = reg0__();
    __regopindex_type src1 = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 0;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_or__reg0__regs__reg0__()
{
    int32 opc = opc_or__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 0;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_or__reg0__regs__regs__()
{
    int32 opc = opc_or__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 0;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 1;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_or__regs__reg0__reg0__()
{
    int32 opc = opc_or__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src1 = reg0__();
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_or__regs__reg0__regs__()
{
    int32 opc = opc_or__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src1 = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 1;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_or__regs__regs__reg0__()
{
    int32 opc = opc_or__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 1;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_or__regs__regs__regs__()
{
    int32 opc = opc_or__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 1;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 2;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_sll__reg0__reg0__reg0__()
{
    int32 opc = opc_sll__();
    __regopindex_type dst = reg0__();
    __regopindex_type src1 = reg0__();
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_sll__reg0__reg0__regs__()
{
    int32 opc = opc_sll__();
    __regopindex_type dst = reg0__();
    __regopindex_type src1 = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 0;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_sll__reg0__regs__reg0__()
{
    int32 opc = opc_sll__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 0;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_sll__reg0__regs__regs__()
{
    int32 opc = opc_sll__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 0;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 1;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_sll__regs__reg0__reg0__()
{
    int32 opc = opc_sll__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src1 = reg0__();
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_sll__regs__reg0__regs__()
{
    int32 opc = opc_sll__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src1 = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 1;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_sll__regs__regs__reg0__()
{
    int32 opc = opc_sll__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 1;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_sll__regs__regs__regs__()
{
    int32 opc = opc_sll__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 1;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 2;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_slt__reg0__reg0__reg0__()
{
    int32 opc = opc_slt__();
    __regopindex_type dst = reg0__();
    __regopindex_type src1 = reg0__();
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_slt__reg0__reg0__regs__()
{
    int32 opc = opc_slt__();
    __regopindex_type dst = reg0__();
    __regopindex_type src1 = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 0;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_slt__reg0__regs__reg0__()
{
    int32 opc = opc_slt__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 0;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_slt__reg0__regs__regs__()
{
    int32 opc = opc_slt__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 0;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 1;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_slt__regs__reg0__reg0__()
{
    int32 opc = opc_slt__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src1 = reg0__();
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_slt__regs__reg0__regs__()
{
    int32 opc = opc_slt__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src1 = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 1;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_slt__regs__regs__reg0__()
{
    int32 opc = opc_slt__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 1;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_slt__regs__regs__regs__()
{
    int32 opc = opc_slt__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 1;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 2;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_sltu__reg0__reg0__reg0__()
{
    int32 opc = opc_sltu__();
    __regopindex_type dst = reg0__();
    __regopindex_type src1 = reg0__();
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_sltu__reg0__reg0__regs__()
{
    int32 opc = opc_sltu__();
    __regopindex_type dst = reg0__();
    __regopindex_type src1 = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 0;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_sltu__reg0__regs__reg0__()
{
    int32 opc = opc_sltu__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 0;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_sltu__reg0__regs__regs__()
{
    int32 opc = opc_sltu__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 0;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 1;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_sltu__regs__reg0__reg0__()
{
    int32 opc = opc_sltu__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src1 = reg0__();
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_sltu__regs__reg0__regs__()
{
    int32 opc = opc_sltu__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src1 = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 1;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_sltu__regs__regs__reg0__()
{
    int32 opc = opc_sltu__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 1;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_sltu__regs__regs__regs__()
{
    int32 opc = opc_sltu__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 1;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 2;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_sra__reg0__reg0__reg0__()
{
    int32 opc = opc_sra__();
    __regopindex_type dst = reg0__();
    __regopindex_type src1 = reg0__();
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_sra__reg0__reg0__regs__()
{
    int32 opc = opc_sra__();
    __regopindex_type dst = reg0__();
    __regopindex_type src1 = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 0;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_sra__reg0__regs__reg0__()
{
    int32 opc = opc_sra__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 0;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_sra__reg0__regs__regs__()
{
    int32 opc = opc_sra__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 0;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 1;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_sra__regs__reg0__reg0__()
{
    int32 opc = opc_sra__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src1 = reg0__();
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_sra__regs__reg0__regs__()
{
    int32 opc = opc_sra__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src1 = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 1;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_sra__regs__regs__reg0__()
{
    int32 opc = opc_sra__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 1;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_sra__regs__regs__regs__()
{
    int32 opc = opc_sra__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 1;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 2;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_srl__reg0__reg0__reg0__()
{
    int32 opc = opc_srl__();
    __regopindex_type dst = reg0__();
    __regopindex_type src1 = reg0__();
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_srl__reg0__reg0__regs__()
{
    int32 opc = opc_srl__();
    __regopindex_type dst = reg0__();
    __regopindex_type src1 = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 0;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_srl__reg0__regs__reg0__()
{
    int32 opc = opc_srl__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 0;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_srl__reg0__regs__regs__()
{
    int32 opc = opc_srl__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 0;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 1;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_srl__regs__reg0__reg0__()
{
    int32 opc = opc_srl__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src1 = reg0__();
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_srl__regs__reg0__regs__()
{
    int32 opc = opc_srl__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src1 = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 1;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_srl__regs__regs__reg0__()
{
    int32 opc = opc_srl__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 1;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_srl__regs__regs__regs__()
{
    int32 opc = opc_srl__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 1;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 2;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_sub__reg0__reg0__reg0__()
{
    int32 opc = opc_sub__();
    __regopindex_type dst = reg0__();
    __regopindex_type src1 = reg0__();
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_sub__reg0__reg0__regs__()
{
    int32 opc = opc_sub__();
    __regopindex_type dst = reg0__();
    __regopindex_type src1 = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 0;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_sub__reg0__regs__reg0__()
{
    int32 opc = opc_sub__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 0;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_sub__reg0__regs__regs__()
{
    int32 opc = opc_sub__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 0;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 1;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_sub__regs__reg0__reg0__()
{
    int32 opc = opc_sub__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src1 = reg0__();
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_sub__regs__reg0__regs__()
{
    int32 opc = opc_sub__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src1 = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 1;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_sub__regs__regs__reg0__()
{
    int32 opc = opc_sub__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 1;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_sub__regs__regs__regs__()
{
    int32 opc = opc_sub__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 1;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 2;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_xor__reg0__reg0__reg0__()
{
    int32 opc = opc_xor__();
    __regopindex_type dst = reg0__();
    __regopindex_type src1 = reg0__();
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_xor__reg0__reg0__regs__()
{
    int32 opc = opc_xor__();
    __regopindex_type dst = reg0__();
    __regopindex_type src1 = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 0;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_xor__reg0__regs__reg0__()
{
    int32 opc = opc_xor__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 0;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_xor__reg0__regs__regs__()
{
    int32 opc = opc_xor__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 0;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 1;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_xor__regs__reg0__reg0__()
{
    int32 opc = opc_xor__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src1 = reg0__();
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_xor__regs__reg0__regs__()
{
    int32 opc = opc_xor__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src1 = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 1;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_xor__regs__regs__reg0__()
{
    int32 opc = opc_xor__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 1;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    __regopindex_type src2 = reg0__();
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_comp_3reg__opc_xor__regs__regs__regs__()
{
    int32 opc = opc_xor__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 1;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 2;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    MI11i_comp_3regIH1_10start_base(opc, dst, src1, src2);
}

void i_control_conditional__opc_beq__reg0__reg0__rel_addr12__()
{
    int32 opc = opc_beq__();
    __regopindex_type src1 = reg0__();
    __regopindex_type src2 = reg0__();
    g_MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_Index = 0;
    int32 addr = rel_addr12__();
    MI21i_control_conditionalIH1_10start_base(opc, src1, src2, addr);
}

void i_control_conditional__opc_beq__reg0__regs__rel_addr12__()
{
    int32 opc = opc_beq__();
    __regopindex_type src1 = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 0;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    g_MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_Index = 1;
    int32 addr = rel_addr12__();
    MI21i_control_conditionalIH1_10start_base(opc, src1, src2, addr);
}

void i_control_conditional__opc_beq__regs__reg0__rel_addr12__()
{
    int32 opc = opc_beq__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 0;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    __regopindex_type src2 = reg0__();
    g_MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_Index = 1;
    int32 addr = rel_addr12__();
    MI21i_control_conditionalIH1_10start_base(opc, src1, src2, addr);
}

void i_control_conditional__opc_beq__regs__regs__rel_addr12__()
{
    int32 opc = opc_beq__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 0;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 1;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    g_MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_Index = 2;
    int32 addr = rel_addr12__();
    MI21i_control_conditionalIH1_10start_base(opc, src1, src2, addr);
}

void i_control_conditional__opc_bge__reg0__reg0__rel_addr12__()
{
    int32 opc = opc_bge__();
    __regopindex_type src1 = reg0__();
    __regopindex_type src2 = reg0__();
    g_MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_Index = 0;
    int32 addr = rel_addr12__();
    MI21i_control_conditionalIH1_10start_base(opc, src1, src2, addr);
}

void i_control_conditional__opc_bge__reg0__regs__rel_addr12__()
{
    int32 opc = opc_bge__();
    __regopindex_type src1 = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 0;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    g_MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_Index = 1;
    int32 addr = rel_addr12__();
    MI21i_control_conditionalIH1_10start_base(opc, src1, src2, addr);
}

void i_control_conditional__opc_bge__regs__reg0__rel_addr12__()
{
    int32 opc = opc_bge__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 0;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    __regopindex_type src2 = reg0__();
    g_MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_Index = 1;
    int32 addr = rel_addr12__();
    MI21i_control_conditionalIH1_10start_base(opc, src1, src2, addr);
}

void i_control_conditional__opc_bge__regs__regs__rel_addr12__()
{
    int32 opc = opc_bge__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 0;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 1;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    g_MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_Index = 2;
    int32 addr = rel_addr12__();
    MI21i_control_conditionalIH1_10start_base(opc, src1, src2, addr);
}

void i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__()
{
    int32 opc = opc_bgeu__();
    __regopindex_type src1 = reg0__();
    __regopindex_type src2 = reg0__();
    g_MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_Index = 0;
    int32 addr = rel_addr12__();
    MI21i_control_conditionalIH1_10start_base(opc, src1, src2, addr);
}

void i_control_conditional__opc_bgeu__reg0__regs__rel_addr12__()
{
    int32 opc = opc_bgeu__();
    __regopindex_type src1 = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 0;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    g_MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_Index = 1;
    int32 addr = rel_addr12__();
    MI21i_control_conditionalIH1_10start_base(opc, src1, src2, addr);
}

void i_control_conditional__opc_bgeu__regs__reg0__rel_addr12__()
{
    int32 opc = opc_bgeu__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 0;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    __regopindex_type src2 = reg0__();
    g_MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_Index = 1;
    int32 addr = rel_addr12__();
    MI21i_control_conditionalIH1_10start_base(opc, src1, src2, addr);
}

void i_control_conditional__opc_bgeu__regs__regs__rel_addr12__()
{
    int32 opc = opc_bgeu__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 0;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 1;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    g_MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_Index = 2;
    int32 addr = rel_addr12__();
    MI21i_control_conditionalIH1_10start_base(opc, src1, src2, addr);
}

void i_control_conditional__opc_blt__reg0__reg0__rel_addr12__()
{
    int32 opc = opc_blt__();
    __regopindex_type src1 = reg0__();
    __regopindex_type src2 = reg0__();
    g_MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_Index = 0;
    int32 addr = rel_addr12__();
    MI21i_control_conditionalIH1_10start_base(opc, src1, src2, addr);
}

void i_control_conditional__opc_blt__reg0__regs__rel_addr12__()
{
    int32 opc = opc_blt__();
    __regopindex_type src1 = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 0;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    g_MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_Index = 1;
    int32 addr = rel_addr12__();
    MI21i_control_conditionalIH1_10start_base(opc, src1, src2, addr);
}

void i_control_conditional__opc_blt__regs__reg0__rel_addr12__()
{
    int32 opc = opc_blt__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 0;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    __regopindex_type src2 = reg0__();
    g_MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_Index = 1;
    int32 addr = rel_addr12__();
    MI21i_control_conditionalIH1_10start_base(opc, src1, src2, addr);
}

void i_control_conditional__opc_blt__regs__regs__rel_addr12__()
{
    int32 opc = opc_blt__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 0;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 1;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    g_MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_Index = 2;
    int32 addr = rel_addr12__();
    MI21i_control_conditionalIH1_10start_base(opc, src1, src2, addr);
}

void i_control_conditional__opc_bltu__reg0__reg0__rel_addr12__()
{
    int32 opc = opc_bltu__();
    __regopindex_type src1 = reg0__();
    __regopindex_type src2 = reg0__();
    g_MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_Index = 0;
    int32 addr = rel_addr12__();
    MI21i_control_conditionalIH1_10start_base(opc, src1, src2, addr);
}

void i_control_conditional__opc_bltu__reg0__regs__rel_addr12__()
{
    int32 opc = opc_bltu__();
    __regopindex_type src1 = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 0;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    g_MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_Index = 1;
    int32 addr = rel_addr12__();
    MI21i_control_conditionalIH1_10start_base(opc, src1, src2, addr);
}

void i_control_conditional__opc_bltu__regs__reg0__rel_addr12__()
{
    int32 opc = opc_bltu__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 0;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    __regopindex_type src2 = reg0__();
    g_MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_Index = 1;
    int32 addr = rel_addr12__();
    MI21i_control_conditionalIH1_10start_base(opc, src1, src2, addr);
}

void i_control_conditional__opc_bltu__regs__regs__rel_addr12__()
{
    int32 opc = opc_bltu__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 0;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 1;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    g_MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_Index = 2;
    int32 addr = rel_addr12__();
    MI21i_control_conditionalIH1_10start_base(opc, src1, src2, addr);
}

void i_control_conditional__opc_bne__reg0__reg0__rel_addr12__()
{
    int32 opc = opc_bne__();
    __regopindex_type src1 = reg0__();
    __regopindex_type src2 = reg0__();
    g_MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_Index = 0;
    int32 addr = rel_addr12__();
    MI21i_control_conditionalIH1_10start_base(opc, src1, src2, addr);
}

void i_control_conditional__opc_bne__reg0__regs__rel_addr12__()
{
    int32 opc = opc_bne__();
    __regopindex_type src1 = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 0;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    g_MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_Index = 1;
    int32 addr = rel_addr12__();
    MI21i_control_conditionalIH1_10start_base(opc, src1, src2, addr);
}

void i_control_conditional__opc_bne__regs__reg0__rel_addr12__()
{
    int32 opc = opc_bne__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 0;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    __regopindex_type src2 = reg0__();
    g_MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_Index = 1;
    int32 addr = rel_addr12__();
    MI21i_control_conditionalIH1_10start_base(opc, src1, src2, addr);
}

void i_control_conditional__opc_bne__regs__regs__rel_addr12__()
{
    int32 opc = opc_bne__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 0;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 1;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    g_MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_Index = 2;
    int32 addr = rel_addr12__();
    MI21i_control_conditionalIH1_10start_base(opc, src1, src2, addr);
}

void i_control_registers_imm__opc_csrrci__reg0__regs_csr__imm5__()
{
    int32 opc = opc_csrrci__();
    __regopindex_type dst = reg0__();
    g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index = 0;
    __regopindex_type csr = regs_csr__(g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index);
    g_MI3immIH1_10start_base6_4imm53imm1_4imm5_Index = 1;
    uint5 imm = imm5__();
    MI23i_control_registers_immIH1_10start_base(opc, dst, csr, imm);
}

void i_control_registers_imm__opc_csrrci__regs__regs_csr__imm5__()
{
    int32 opc = opc_csrrci__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index = 1;
    __regopindex_type csr = regs_csr__(g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index);
    g_MI3immIH1_10start_base6_4imm53imm1_4imm5_Index = 2;
    uint5 imm = imm5__();
    MI23i_control_registers_immIH1_10start_base(opc, dst, csr, imm);
}

void i_control_registers_imm__opc_csrrsi__reg0__regs_csr__imm5__()
{
    int32 opc = opc_csrrsi__();
    __regopindex_type dst = reg0__();
    g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index = 0;
    __regopindex_type csr = regs_csr__(g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index);
    g_MI3immIH1_10start_base6_4imm53imm1_4imm5_Index = 1;
    uint5 imm = imm5__();
    MI23i_control_registers_immIH1_10start_base(opc, dst, csr, imm);
}

void i_control_registers_imm__opc_csrrsi__regs__regs_csr__imm5__()
{
    int32 opc = opc_csrrsi__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index = 1;
    __regopindex_type csr = regs_csr__(g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index);
    g_MI3immIH1_10start_base6_4imm53imm1_4imm5_Index = 2;
    uint5 imm = imm5__();
    MI23i_control_registers_immIH1_10start_base(opc, dst, csr, imm);
}

void i_control_registers_imm__opc_csrrwi__reg0__regs_csr__imm5__()
{
    int32 opc = opc_csrrwi__();
    __regopindex_type dst = reg0__();
    g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index = 0;
    __regopindex_type csr = regs_csr__(g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index);
    g_MI3immIH1_10start_base6_4imm53imm1_4imm5_Index = 1;
    uint5 imm = imm5__();
    MI23i_control_registers_immIH1_10start_base(opc, dst, csr, imm);
}

void i_control_registers_imm__opc_csrrwi__regs__regs_csr__imm5__()
{
    int32 opc = opc_csrrwi__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index = 1;
    __regopindex_type csr = regs_csr__(g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index);
    g_MI3immIH1_10start_base6_4imm53imm1_4imm5_Index = 2;
    uint5 imm = imm5__();
    MI23i_control_registers_immIH1_10start_base(opc, dst, csr, imm);
}

void i_control_registers_reg__opc_csrrc__reg0__regs_csr__reg0__()
{
    int32 opc = opc_csrrc__();
    __regopindex_type dst = reg0__();
    g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index = 0;
    __regopindex_type csr = regs_csr__(g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index);
    __regopindex_type src = reg0__();
    MI23i_control_registers_regIH1_10start_base(opc, dst, csr, src);
}

void i_control_registers_reg__opc_csrrc__reg0__regs_csr__regs__()
{
    int32 opc = opc_csrrc__();
    __regopindex_type dst = reg0__();
    g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index = 0;
    __regopindex_type csr = regs_csr__(g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI23i_control_registers_regIH1_10start_base(opc, dst, csr, src);
}

void i_control_registers_reg__opc_csrrc__regs__regs_csr__reg0__()
{
    int32 opc = opc_csrrc__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index = 1;
    __regopindex_type csr = regs_csr__(g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index);
    __regopindex_type src = reg0__();
    MI23i_control_registers_regIH1_10start_base(opc, dst, csr, src);
}

void i_control_registers_reg__opc_csrrc__regs__regs_csr__regs__()
{
    int32 opc = opc_csrrc__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index = 1;
    __regopindex_type csr = regs_csr__(g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 2;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI23i_control_registers_regIH1_10start_base(opc, dst, csr, src);
}

void i_control_registers_reg__opc_csrrs__reg0__regs_csr__reg0__()
{
    int32 opc = opc_csrrs__();
    __regopindex_type dst = reg0__();
    g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index = 0;
    __regopindex_type csr = regs_csr__(g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index);
    __regopindex_type src = reg0__();
    MI23i_control_registers_regIH1_10start_base(opc, dst, csr, src);
}

void i_control_registers_reg__opc_csrrs__reg0__regs_csr__regs__()
{
    int32 opc = opc_csrrs__();
    __regopindex_type dst = reg0__();
    g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index = 0;
    __regopindex_type csr = regs_csr__(g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI23i_control_registers_regIH1_10start_base(opc, dst, csr, src);
}

void i_control_registers_reg__opc_csrrs__regs__regs_csr__reg0__()
{
    int32 opc = opc_csrrs__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index = 1;
    __regopindex_type csr = regs_csr__(g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index);
    __regopindex_type src = reg0__();
    MI23i_control_registers_regIH1_10start_base(opc, dst, csr, src);
}

void i_control_registers_reg__opc_csrrs__regs__regs_csr__regs__()
{
    int32 opc = opc_csrrs__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index = 1;
    __regopindex_type csr = regs_csr__(g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 2;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI23i_control_registers_regIH1_10start_base(opc, dst, csr, src);
}

void i_control_registers_reg__opc_csrrw__reg0__regs_csr__reg0__()
{
    int32 opc = opc_csrrw__();
    __regopindex_type dst = reg0__();
    g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index = 0;
    __regopindex_type csr = regs_csr__(g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index);
    __regopindex_type src = reg0__();
    MI23i_control_registers_regIH1_10start_base(opc, dst, csr, src);
}

void i_control_registers_reg__opc_csrrw__reg0__regs_csr__regs__()
{
    int32 opc = opc_csrrw__();
    __regopindex_type dst = reg0__();
    g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index = 0;
    __regopindex_type csr = regs_csr__(g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI23i_control_registers_regIH1_10start_base(opc, dst, csr, src);
}

void i_control_registers_reg__opc_csrrw__regs__regs_csr__reg0__()
{
    int32 opc = opc_csrrw__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index = 1;
    __regopindex_type csr = regs_csr__(g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index);
    __regopindex_type src = reg0__();
    MI23i_control_registers_regIH1_10start_base(opc, dst, csr, src);
}

void i_control_registers_reg__opc_csrrw__regs__regs_csr__regs__()
{
    int32 opc = opc_csrrw__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index = 1;
    __regopindex_type csr = regs_csr__(g_MI8regs_csrIH1_10start_base8_6op_csr3csr_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 2;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI23i_control_registers_regIH1_10start_base(opc, dst, csr, src);
}

void i_ebreak__opc_ebreak__()
{
    int32 opc = opc_ebreak__();
    MI8i_ebreakIH1_10start_base(opc);
}

void i_ecall__opc_ecall__()
{
    int32 opc = opc_ecall__();
    MI7i_ecallIH1_10start_base(opc);
}

void i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0__reg0__()
{
    int32 opc = opc_hackaton_custom_a__();
    __regopindex_type dst = reg0__();
    __regopindex_type rs_1 = reg0__();
    __regopindex_type rs_2 = reg0__();
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0__regs__()
{
    int32 opc = opc_hackaton_custom_a__();
    __regopindex_type dst = reg0__();
    __regopindex_type rs_1 = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index = 0;
    __regopindex_type rs_2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index);
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_a__reg0__regs__reg0__()
{
    int32 opc = opc_hackaton_custom_a__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index = 0;
    __regopindex_type rs_1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index);
    __regopindex_type rs_2 = reg0__();
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_a__reg0__regs__regs__()
{
    int32 opc = opc_hackaton_custom_a__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index = 0;
    __regopindex_type rs_1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index);
    g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index = 1;
    __regopindex_type rs_2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index);
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_a__regs__reg0__reg0__()
{
    int32 opc = opc_hackaton_custom_a__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type rs_1 = reg0__();
    __regopindex_type rs_2 = reg0__();
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_a__regs__reg0__regs__()
{
    int32 opc = opc_hackaton_custom_a__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type rs_1 = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index = 1;
    __regopindex_type rs_2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index);
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_a__regs__regs__reg0__()
{
    int32 opc = opc_hackaton_custom_a__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index = 1;
    __regopindex_type rs_1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index);
    __regopindex_type rs_2 = reg0__();
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_a__regs__regs__regs__()
{
    int32 opc = opc_hackaton_custom_a__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index = 1;
    __regopindex_type rs_1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index);
    g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index = 2;
    __regopindex_type rs_2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index);
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0__reg0__()
{
    int32 opc = opc_hackaton_custom_b__();
    __regopindex_type dst = reg0__();
    __regopindex_type rs_1 = reg0__();
    __regopindex_type rs_2 = reg0__();
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0__regs__()
{
    int32 opc = opc_hackaton_custom_b__();
    __regopindex_type dst = reg0__();
    __regopindex_type rs_1 = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index = 0;
    __regopindex_type rs_2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index);
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_b__reg0__regs__reg0__()
{
    int32 opc = opc_hackaton_custom_b__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index = 0;
    __regopindex_type rs_1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index);
    __regopindex_type rs_2 = reg0__();
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_b__reg0__regs__regs__()
{
    int32 opc = opc_hackaton_custom_b__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index = 0;
    __regopindex_type rs_1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index);
    g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index = 1;
    __regopindex_type rs_2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index);
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_b__regs__reg0__reg0__()
{
    int32 opc = opc_hackaton_custom_b__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type rs_1 = reg0__();
    __regopindex_type rs_2 = reg0__();
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_b__regs__reg0__regs__()
{
    int32 opc = opc_hackaton_custom_b__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type rs_1 = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index = 1;
    __regopindex_type rs_2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index);
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_b__regs__regs__reg0__()
{
    int32 opc = opc_hackaton_custom_b__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index = 1;
    __regopindex_type rs_1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index);
    __regopindex_type rs_2 = reg0__();
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_b__regs__regs__regs__()
{
    int32 opc = opc_hackaton_custom_b__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index = 1;
    __regopindex_type rs_1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index);
    g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index = 2;
    __regopindex_type rs_2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index);
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0__reg0__()
{
    int32 opc = opc_hackaton_custom_c__();
    __regopindex_type dst = reg0__();
    __regopindex_type rs_1 = reg0__();
    __regopindex_type rs_2 = reg0__();
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0__regs__()
{
    int32 opc = opc_hackaton_custom_c__();
    __regopindex_type dst = reg0__();
    __regopindex_type rs_1 = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index = 0;
    __regopindex_type rs_2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index);
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_c__reg0__regs__reg0__()
{
    int32 opc = opc_hackaton_custom_c__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index = 0;
    __regopindex_type rs_1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index);
    __regopindex_type rs_2 = reg0__();
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_c__reg0__regs__regs__()
{
    int32 opc = opc_hackaton_custom_c__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index = 0;
    __regopindex_type rs_1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index);
    g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index = 1;
    __regopindex_type rs_2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index);
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__reg0__()
{
    int32 opc = opc_hackaton_custom_c__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type rs_1 = reg0__();
    __regopindex_type rs_2 = reg0__();
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__regs__()
{
    int32 opc = opc_hackaton_custom_c__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type rs_1 = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index = 1;
    __regopindex_type rs_2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index);
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_c__regs__regs__reg0__()
{
    int32 opc = opc_hackaton_custom_c__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index = 1;
    __regopindex_type rs_1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index);
    __regopindex_type rs_2 = reg0__();
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__()
{
    int32 opc = opc_hackaton_custom_c__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index = 1;
    __regopindex_type rs_1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index);
    g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index = 2;
    __regopindex_type rs_2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index);
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0__reg0__()
{
    int32 opc = opc_hackaton_custom_d__();
    __regopindex_type dst = reg0__();
    __regopindex_type rs_1 = reg0__();
    __regopindex_type rs_2 = reg0__();
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0__regs__()
{
    int32 opc = opc_hackaton_custom_d__();
    __regopindex_type dst = reg0__();
    __regopindex_type rs_1 = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index = 0;
    __regopindex_type rs_2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index);
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_d__reg0__regs__reg0__()
{
    int32 opc = opc_hackaton_custom_d__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index = 0;
    __regopindex_type rs_1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index);
    __regopindex_type rs_2 = reg0__();
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_d__reg0__regs__regs__()
{
    int32 opc = opc_hackaton_custom_d__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index = 0;
    __regopindex_type rs_1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index);
    g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index = 1;
    __regopindex_type rs_2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index);
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__reg0__()
{
    int32 opc = opc_hackaton_custom_d__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type rs_1 = reg0__();
    __regopindex_type rs_2 = reg0__();
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__regs__()
{
    int32 opc = opc_hackaton_custom_d__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type rs_1 = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index = 1;
    __regopindex_type rs_2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index);
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_d__regs__regs__reg0__()
{
    int32 opc = opc_hackaton_custom_d__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index = 1;
    __regopindex_type rs_1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index);
    __regopindex_type rs_2 = reg0__();
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_d__regs__regs__regs__()
{
    int32 opc = opc_hackaton_custom_d__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index = 1;
    __regopindex_type rs_1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index);
    g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index = 2;
    __regopindex_type rs_2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index);
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0__reg0__()
{
    int32 opc = opc_hackaton_custom_e__();
    __regopindex_type dst = reg0__();
    __regopindex_type rs_1 = reg0__();
    __regopindex_type rs_2 = reg0__();
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0__regs__()
{
    int32 opc = opc_hackaton_custom_e__();
    __regopindex_type dst = reg0__();
    __regopindex_type rs_1 = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index = 0;
    __regopindex_type rs_2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index);
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_e__reg0__regs__reg0__()
{
    int32 opc = opc_hackaton_custom_e__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index = 0;
    __regopindex_type rs_1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index);
    __regopindex_type rs_2 = reg0__();
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_e__reg0__regs__regs__()
{
    int32 opc = opc_hackaton_custom_e__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index = 0;
    __regopindex_type rs_1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index);
    g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index = 1;
    __regopindex_type rs_2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index);
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_e__regs__reg0__reg0__()
{
    int32 opc = opc_hackaton_custom_e__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type rs_1 = reg0__();
    __regopindex_type rs_2 = reg0__();
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_e__regs__reg0__regs__()
{
    int32 opc = opc_hackaton_custom_e__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type rs_1 = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index = 1;
    __regopindex_type rs_2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index);
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_e__regs__regs__reg0__()
{
    int32 opc = opc_hackaton_custom_e__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index = 1;
    __regopindex_type rs_1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index);
    __regopindex_type rs_2 = reg0__();
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_ext_hackaton__opc_hackaton_custom_e__regs__regs__regs__()
{
    int32 opc = opc_hackaton_custom_e__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index = 1;
    __regopindex_type rs_1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_1_Index);
    g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index = 2;
    __regopindex_type rs_2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4rs_2_Index);
    MI14i_ext_hackatonIH1_10start_base(opc, dst, rs_1, rs_2);
}

void i_fence__opc_fence__opc_hint_fence__opc_hint_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_hint_fence__();
    int32 param2 = opc_hint_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_hint_fence__opc_i_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_hint_fence__();
    int32 param2 = opc_i_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_hint_fence__opc_io_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_hint_fence__();
    int32 param2 = opc_io_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_hint_fence__opc_ior_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_hint_fence__();
    int32 param2 = opc_ior_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_hint_fence__opc_iorw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_hint_fence__();
    int32 param2 = opc_iorw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_hint_fence__opc_iow_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_hint_fence__();
    int32 param2 = opc_iow_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_hint_fence__opc_ir_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_hint_fence__();
    int32 param2 = opc_ir_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_hint_fence__opc_irw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_hint_fence__();
    int32 param2 = opc_irw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_hint_fence__opc_iw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_hint_fence__();
    int32 param2 = opc_iw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_hint_fence__opc_o_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_hint_fence__();
    int32 param2 = opc_o_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_hint_fence__opc_or_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_hint_fence__();
    int32 param2 = opc_or_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_hint_fence__opc_orw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_hint_fence__();
    int32 param2 = opc_orw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_hint_fence__opc_ow_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_hint_fence__();
    int32 param2 = opc_ow_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_hint_fence__opc_r_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_hint_fence__();
    int32 param2 = opc_r_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_hint_fence__opc_rw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_hint_fence__();
    int32 param2 = opc_rw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_hint_fence__opc_w_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_hint_fence__();
    int32 param2 = opc_w_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_i_fence__opc_hint_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_i_fence__();
    int32 param2 = opc_hint_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_i_fence__opc_i_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_i_fence__();
    int32 param2 = opc_i_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_i_fence__opc_io_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_i_fence__();
    int32 param2 = opc_io_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_i_fence__opc_ior_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_i_fence__();
    int32 param2 = opc_ior_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_i_fence__opc_iorw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_i_fence__();
    int32 param2 = opc_iorw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_i_fence__opc_iow_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_i_fence__();
    int32 param2 = opc_iow_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_i_fence__opc_ir_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_i_fence__();
    int32 param2 = opc_ir_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_i_fence__opc_irw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_i_fence__();
    int32 param2 = opc_irw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_i_fence__opc_iw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_i_fence__();
    int32 param2 = opc_iw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_i_fence__opc_o_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_i_fence__();
    int32 param2 = opc_o_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_i_fence__opc_or_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_i_fence__();
    int32 param2 = opc_or_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_i_fence__opc_orw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_i_fence__();
    int32 param2 = opc_orw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_i_fence__opc_ow_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_i_fence__();
    int32 param2 = opc_ow_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_i_fence__opc_r_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_i_fence__();
    int32 param2 = opc_r_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_i_fence__opc_rw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_i_fence__();
    int32 param2 = opc_rw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_i_fence__opc_w_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_i_fence__();
    int32 param2 = opc_w_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_io_fence__opc_hint_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_io_fence__();
    int32 param2 = opc_hint_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_io_fence__opc_i_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_io_fence__();
    int32 param2 = opc_i_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_io_fence__opc_io_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_io_fence__();
    int32 param2 = opc_io_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_io_fence__opc_ior_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_io_fence__();
    int32 param2 = opc_ior_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_io_fence__opc_iorw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_io_fence__();
    int32 param2 = opc_iorw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_io_fence__opc_iow_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_io_fence__();
    int32 param2 = opc_iow_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_io_fence__opc_ir_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_io_fence__();
    int32 param2 = opc_ir_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_io_fence__opc_irw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_io_fence__();
    int32 param2 = opc_irw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_io_fence__opc_iw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_io_fence__();
    int32 param2 = opc_iw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_io_fence__opc_o_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_io_fence__();
    int32 param2 = opc_o_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_io_fence__opc_or_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_io_fence__();
    int32 param2 = opc_or_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_io_fence__opc_orw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_io_fence__();
    int32 param2 = opc_orw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_io_fence__opc_ow_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_io_fence__();
    int32 param2 = opc_ow_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_io_fence__opc_r_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_io_fence__();
    int32 param2 = opc_r_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_io_fence__opc_rw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_io_fence__();
    int32 param2 = opc_rw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_io_fence__opc_w_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_io_fence__();
    int32 param2 = opc_w_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ior_fence__opc_hint_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ior_fence__();
    int32 param2 = opc_hint_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ior_fence__opc_i_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ior_fence__();
    int32 param2 = opc_i_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ior_fence__opc_io_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ior_fence__();
    int32 param2 = opc_io_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ior_fence__opc_ior_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ior_fence__();
    int32 param2 = opc_ior_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ior_fence__opc_iorw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ior_fence__();
    int32 param2 = opc_iorw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ior_fence__opc_iow_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ior_fence__();
    int32 param2 = opc_iow_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ior_fence__opc_ir_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ior_fence__();
    int32 param2 = opc_ir_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ior_fence__opc_irw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ior_fence__();
    int32 param2 = opc_irw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ior_fence__opc_iw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ior_fence__();
    int32 param2 = opc_iw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ior_fence__opc_o_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ior_fence__();
    int32 param2 = opc_o_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ior_fence__opc_or_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ior_fence__();
    int32 param2 = opc_or_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ior_fence__opc_orw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ior_fence__();
    int32 param2 = opc_orw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ior_fence__opc_ow_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ior_fence__();
    int32 param2 = opc_ow_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ior_fence__opc_r_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ior_fence__();
    int32 param2 = opc_r_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ior_fence__opc_rw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ior_fence__();
    int32 param2 = opc_rw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ior_fence__opc_w_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ior_fence__();
    int32 param2 = opc_w_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iorw_fence__opc_hint_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iorw_fence__();
    int32 param2 = opc_hint_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iorw_fence__opc_i_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iorw_fence__();
    int32 param2 = opc_i_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iorw_fence__opc_io_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iorw_fence__();
    int32 param2 = opc_io_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iorw_fence__opc_ior_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iorw_fence__();
    int32 param2 = opc_ior_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iorw_fence__opc_iorw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iorw_fence__();
    int32 param2 = opc_iorw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iorw_fence__opc_iow_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iorw_fence__();
    int32 param2 = opc_iow_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iorw_fence__opc_ir_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iorw_fence__();
    int32 param2 = opc_ir_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iorw_fence__opc_irw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iorw_fence__();
    int32 param2 = opc_irw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iorw_fence__opc_iw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iorw_fence__();
    int32 param2 = opc_iw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iorw_fence__opc_o_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iorw_fence__();
    int32 param2 = opc_o_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iorw_fence__opc_or_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iorw_fence__();
    int32 param2 = opc_or_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iorw_fence__opc_orw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iorw_fence__();
    int32 param2 = opc_orw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iorw_fence__opc_ow_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iorw_fence__();
    int32 param2 = opc_ow_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iorw_fence__opc_r_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iorw_fence__();
    int32 param2 = opc_r_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iorw_fence__opc_rw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iorw_fence__();
    int32 param2 = opc_rw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iorw_fence__opc_w_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iorw_fence__();
    int32 param2 = opc_w_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iow_fence__opc_hint_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iow_fence__();
    int32 param2 = opc_hint_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iow_fence__opc_i_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iow_fence__();
    int32 param2 = opc_i_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iow_fence__opc_io_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iow_fence__();
    int32 param2 = opc_io_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iow_fence__opc_ior_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iow_fence__();
    int32 param2 = opc_ior_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iow_fence__opc_iorw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iow_fence__();
    int32 param2 = opc_iorw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iow_fence__opc_iow_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iow_fence__();
    int32 param2 = opc_iow_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iow_fence__opc_ir_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iow_fence__();
    int32 param2 = opc_ir_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iow_fence__opc_irw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iow_fence__();
    int32 param2 = opc_irw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iow_fence__opc_iw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iow_fence__();
    int32 param2 = opc_iw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iow_fence__opc_o_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iow_fence__();
    int32 param2 = opc_o_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iow_fence__opc_or_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iow_fence__();
    int32 param2 = opc_or_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iow_fence__opc_orw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iow_fence__();
    int32 param2 = opc_orw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iow_fence__opc_ow_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iow_fence__();
    int32 param2 = opc_ow_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iow_fence__opc_r_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iow_fence__();
    int32 param2 = opc_r_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iow_fence__opc_rw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iow_fence__();
    int32 param2 = opc_rw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iow_fence__opc_w_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iow_fence__();
    int32 param2 = opc_w_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ir_fence__opc_hint_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ir_fence__();
    int32 param2 = opc_hint_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ir_fence__opc_i_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ir_fence__();
    int32 param2 = opc_i_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ir_fence__opc_io_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ir_fence__();
    int32 param2 = opc_io_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ir_fence__opc_ior_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ir_fence__();
    int32 param2 = opc_ior_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ir_fence__opc_iorw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ir_fence__();
    int32 param2 = opc_iorw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ir_fence__opc_iow_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ir_fence__();
    int32 param2 = opc_iow_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ir_fence__opc_ir_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ir_fence__();
    int32 param2 = opc_ir_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ir_fence__opc_irw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ir_fence__();
    int32 param2 = opc_irw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ir_fence__opc_iw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ir_fence__();
    int32 param2 = opc_iw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ir_fence__opc_o_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ir_fence__();
    int32 param2 = opc_o_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ir_fence__opc_or_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ir_fence__();
    int32 param2 = opc_or_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ir_fence__opc_orw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ir_fence__();
    int32 param2 = opc_orw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ir_fence__opc_ow_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ir_fence__();
    int32 param2 = opc_ow_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ir_fence__opc_r_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ir_fence__();
    int32 param2 = opc_r_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ir_fence__opc_rw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ir_fence__();
    int32 param2 = opc_rw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ir_fence__opc_w_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ir_fence__();
    int32 param2 = opc_w_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_irw_fence__opc_hint_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_irw_fence__();
    int32 param2 = opc_hint_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_irw_fence__opc_i_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_irw_fence__();
    int32 param2 = opc_i_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_irw_fence__opc_io_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_irw_fence__();
    int32 param2 = opc_io_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_irw_fence__opc_ior_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_irw_fence__();
    int32 param2 = opc_ior_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_irw_fence__opc_iorw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_irw_fence__();
    int32 param2 = opc_iorw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_irw_fence__opc_iow_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_irw_fence__();
    int32 param2 = opc_iow_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_irw_fence__opc_ir_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_irw_fence__();
    int32 param2 = opc_ir_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_irw_fence__opc_irw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_irw_fence__();
    int32 param2 = opc_irw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_irw_fence__opc_iw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_irw_fence__();
    int32 param2 = opc_iw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_irw_fence__opc_o_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_irw_fence__();
    int32 param2 = opc_o_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_irw_fence__opc_or_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_irw_fence__();
    int32 param2 = opc_or_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_irw_fence__opc_orw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_irw_fence__();
    int32 param2 = opc_orw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_irw_fence__opc_ow_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_irw_fence__();
    int32 param2 = opc_ow_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_irw_fence__opc_r_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_irw_fence__();
    int32 param2 = opc_r_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_irw_fence__opc_rw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_irw_fence__();
    int32 param2 = opc_rw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_irw_fence__opc_w_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_irw_fence__();
    int32 param2 = opc_w_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iw_fence__opc_hint_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iw_fence__();
    int32 param2 = opc_hint_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iw_fence__opc_i_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iw_fence__();
    int32 param2 = opc_i_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iw_fence__opc_io_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iw_fence__();
    int32 param2 = opc_io_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iw_fence__opc_ior_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iw_fence__();
    int32 param2 = opc_ior_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iw_fence__opc_iorw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iw_fence__();
    int32 param2 = opc_iorw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iw_fence__opc_iow_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iw_fence__();
    int32 param2 = opc_iow_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iw_fence__opc_ir_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iw_fence__();
    int32 param2 = opc_ir_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iw_fence__opc_irw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iw_fence__();
    int32 param2 = opc_irw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iw_fence__opc_iw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iw_fence__();
    int32 param2 = opc_iw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iw_fence__opc_o_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iw_fence__();
    int32 param2 = opc_o_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iw_fence__opc_or_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iw_fence__();
    int32 param2 = opc_or_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iw_fence__opc_orw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iw_fence__();
    int32 param2 = opc_orw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iw_fence__opc_ow_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iw_fence__();
    int32 param2 = opc_ow_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iw_fence__opc_r_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iw_fence__();
    int32 param2 = opc_r_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iw_fence__opc_rw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iw_fence__();
    int32 param2 = opc_rw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_iw_fence__opc_w_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_iw_fence__();
    int32 param2 = opc_w_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_o_fence__opc_hint_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_o_fence__();
    int32 param2 = opc_hint_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_o_fence__opc_i_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_o_fence__();
    int32 param2 = opc_i_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_o_fence__opc_io_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_o_fence__();
    int32 param2 = opc_io_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_o_fence__opc_ior_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_o_fence__();
    int32 param2 = opc_ior_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_o_fence__opc_iorw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_o_fence__();
    int32 param2 = opc_iorw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_o_fence__opc_iow_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_o_fence__();
    int32 param2 = opc_iow_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_o_fence__opc_ir_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_o_fence__();
    int32 param2 = opc_ir_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_o_fence__opc_irw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_o_fence__();
    int32 param2 = opc_irw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_o_fence__opc_iw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_o_fence__();
    int32 param2 = opc_iw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_o_fence__opc_o_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_o_fence__();
    int32 param2 = opc_o_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_o_fence__opc_or_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_o_fence__();
    int32 param2 = opc_or_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_o_fence__opc_orw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_o_fence__();
    int32 param2 = opc_orw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_o_fence__opc_ow_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_o_fence__();
    int32 param2 = opc_ow_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_o_fence__opc_r_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_o_fence__();
    int32 param2 = opc_r_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_o_fence__opc_rw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_o_fence__();
    int32 param2 = opc_rw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_o_fence__opc_w_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_o_fence__();
    int32 param2 = opc_w_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_or_fence__opc_hint_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_or_fence__();
    int32 param2 = opc_hint_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_or_fence__opc_i_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_or_fence__();
    int32 param2 = opc_i_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_or_fence__opc_io_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_or_fence__();
    int32 param2 = opc_io_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_or_fence__opc_ior_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_or_fence__();
    int32 param2 = opc_ior_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_or_fence__opc_iorw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_or_fence__();
    int32 param2 = opc_iorw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_or_fence__opc_iow_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_or_fence__();
    int32 param2 = opc_iow_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_or_fence__opc_ir_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_or_fence__();
    int32 param2 = opc_ir_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_or_fence__opc_irw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_or_fence__();
    int32 param2 = opc_irw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_or_fence__opc_iw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_or_fence__();
    int32 param2 = opc_iw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_or_fence__opc_o_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_or_fence__();
    int32 param2 = opc_o_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_or_fence__opc_or_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_or_fence__();
    int32 param2 = opc_or_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_or_fence__opc_orw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_or_fence__();
    int32 param2 = opc_orw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_or_fence__opc_ow_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_or_fence__();
    int32 param2 = opc_ow_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_or_fence__opc_r_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_or_fence__();
    int32 param2 = opc_r_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_or_fence__opc_rw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_or_fence__();
    int32 param2 = opc_rw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_or_fence__opc_w_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_or_fence__();
    int32 param2 = opc_w_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_orw_fence__opc_hint_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_orw_fence__();
    int32 param2 = opc_hint_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_orw_fence__opc_i_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_orw_fence__();
    int32 param2 = opc_i_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_orw_fence__opc_io_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_orw_fence__();
    int32 param2 = opc_io_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_orw_fence__opc_ior_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_orw_fence__();
    int32 param2 = opc_ior_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_orw_fence__opc_iorw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_orw_fence__();
    int32 param2 = opc_iorw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_orw_fence__opc_iow_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_orw_fence__();
    int32 param2 = opc_iow_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_orw_fence__opc_ir_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_orw_fence__();
    int32 param2 = opc_ir_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_orw_fence__opc_irw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_orw_fence__();
    int32 param2 = opc_irw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_orw_fence__opc_iw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_orw_fence__();
    int32 param2 = opc_iw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_orw_fence__opc_o_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_orw_fence__();
    int32 param2 = opc_o_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_orw_fence__opc_or_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_orw_fence__();
    int32 param2 = opc_or_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_orw_fence__opc_orw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_orw_fence__();
    int32 param2 = opc_orw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_orw_fence__opc_ow_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_orw_fence__();
    int32 param2 = opc_ow_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_orw_fence__opc_r_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_orw_fence__();
    int32 param2 = opc_r_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_orw_fence__opc_rw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_orw_fence__();
    int32 param2 = opc_rw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_orw_fence__opc_w_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_orw_fence__();
    int32 param2 = opc_w_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ow_fence__opc_hint_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ow_fence__();
    int32 param2 = opc_hint_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ow_fence__opc_i_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ow_fence__();
    int32 param2 = opc_i_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ow_fence__opc_io_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ow_fence__();
    int32 param2 = opc_io_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ow_fence__opc_ior_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ow_fence__();
    int32 param2 = opc_ior_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ow_fence__opc_iorw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ow_fence__();
    int32 param2 = opc_iorw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ow_fence__opc_iow_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ow_fence__();
    int32 param2 = opc_iow_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ow_fence__opc_ir_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ow_fence__();
    int32 param2 = opc_ir_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ow_fence__opc_irw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ow_fence__();
    int32 param2 = opc_irw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ow_fence__opc_iw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ow_fence__();
    int32 param2 = opc_iw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ow_fence__opc_o_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ow_fence__();
    int32 param2 = opc_o_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ow_fence__opc_or_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ow_fence__();
    int32 param2 = opc_or_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ow_fence__opc_orw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ow_fence__();
    int32 param2 = opc_orw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ow_fence__opc_ow_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ow_fence__();
    int32 param2 = opc_ow_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ow_fence__opc_r_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ow_fence__();
    int32 param2 = opc_r_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ow_fence__opc_rw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ow_fence__();
    int32 param2 = opc_rw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_ow_fence__opc_w_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_ow_fence__();
    int32 param2 = opc_w_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_r_fence__opc_hint_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_r_fence__();
    int32 param2 = opc_hint_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_r_fence__opc_i_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_r_fence__();
    int32 param2 = opc_i_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_r_fence__opc_io_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_r_fence__();
    int32 param2 = opc_io_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_r_fence__opc_ior_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_r_fence__();
    int32 param2 = opc_ior_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_r_fence__opc_iorw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_r_fence__();
    int32 param2 = opc_iorw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_r_fence__opc_iow_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_r_fence__();
    int32 param2 = opc_iow_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_r_fence__opc_ir_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_r_fence__();
    int32 param2 = opc_ir_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_r_fence__opc_irw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_r_fence__();
    int32 param2 = opc_irw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_r_fence__opc_iw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_r_fence__();
    int32 param2 = opc_iw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_r_fence__opc_o_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_r_fence__();
    int32 param2 = opc_o_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_r_fence__opc_or_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_r_fence__();
    int32 param2 = opc_or_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_r_fence__opc_orw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_r_fence__();
    int32 param2 = opc_orw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_r_fence__opc_ow_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_r_fence__();
    int32 param2 = opc_ow_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_r_fence__opc_r_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_r_fence__();
    int32 param2 = opc_r_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_r_fence__opc_rw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_r_fence__();
    int32 param2 = opc_rw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_r_fence__opc_w_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_r_fence__();
    int32 param2 = opc_w_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_rw_fence__opc_hint_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_rw_fence__();
    int32 param2 = opc_hint_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_rw_fence__opc_i_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_rw_fence__();
    int32 param2 = opc_i_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_rw_fence__opc_io_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_rw_fence__();
    int32 param2 = opc_io_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_rw_fence__opc_ior_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_rw_fence__();
    int32 param2 = opc_ior_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_rw_fence__opc_iorw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_rw_fence__();
    int32 param2 = opc_iorw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_rw_fence__opc_iow_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_rw_fence__();
    int32 param2 = opc_iow_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_rw_fence__opc_ir_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_rw_fence__();
    int32 param2 = opc_ir_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_rw_fence__opc_irw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_rw_fence__();
    int32 param2 = opc_irw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_rw_fence__opc_iw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_rw_fence__();
    int32 param2 = opc_iw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_rw_fence__opc_o_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_rw_fence__();
    int32 param2 = opc_o_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_rw_fence__opc_or_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_rw_fence__();
    int32 param2 = opc_or_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_rw_fence__opc_orw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_rw_fence__();
    int32 param2 = opc_orw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_rw_fence__opc_ow_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_rw_fence__();
    int32 param2 = opc_ow_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_rw_fence__opc_r_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_rw_fence__();
    int32 param2 = opc_r_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_rw_fence__opc_rw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_rw_fence__();
    int32 param2 = opc_rw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_rw_fence__opc_w_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_rw_fence__();
    int32 param2 = opc_w_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_w_fence__opc_hint_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_w_fence__();
    int32 param2 = opc_hint_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_w_fence__opc_i_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_w_fence__();
    int32 param2 = opc_i_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_w_fence__opc_io_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_w_fence__();
    int32 param2 = opc_io_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_w_fence__opc_ior_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_w_fence__();
    int32 param2 = opc_ior_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_w_fence__opc_iorw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_w_fence__();
    int32 param2 = opc_iorw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_w_fence__opc_iow_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_w_fence__();
    int32 param2 = opc_iow_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_w_fence__opc_ir_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_w_fence__();
    int32 param2 = opc_ir_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_w_fence__opc_irw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_w_fence__();
    int32 param2 = opc_irw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_w_fence__opc_iw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_w_fence__();
    int32 param2 = opc_iw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_w_fence__opc_o_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_w_fence__();
    int32 param2 = opc_o_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_w_fence__opc_or_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_w_fence__();
    int32 param2 = opc_or_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_w_fence__opc_orw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_w_fence__();
    int32 param2 = opc_orw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_w_fence__opc_ow_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_w_fence__();
    int32 param2 = opc_ow_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_w_fence__opc_r_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_w_fence__();
    int32 param2 = opc_r_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_w_fence__opc_rw_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_w_fence__();
    int32 param2 = opc_rw_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fence__opc_fence__opc_w_fence__opc_w_fence__()
{
    int32 opc = opc_fence__();
    int32 param1 = opc_w_fence__();
    int32 param2 = opc_w_fence__();
    MI7i_fenceIH1_10start_base(opc, param1, param2);
}

void i_fencei__opc_fencei__()
{
    int32 opc = opc_fencei__();
    MI8i_fenceiIH1_10start_base(opc);
}

void i_get_pc_alias__reg0__()
{
    __regopindex_type dst = reg0__();
    MI14i_get_pc_aliasIH1_10start_base(dst);
}

void i_get_pc_alias__regs__()
{
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    MI14i_get_pc_aliasIH1_10start_base(dst);
}

void i_jal__opc_jal__reg0__rel_addr20__()
{
    int32 opc = opc_jal__();
    __regopindex_type dst = reg0__();
    g_MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20_Index = 0;
    int32 addr = rel_addr20__();
    MI5i_jalIH1_10start_base(opc, dst, addr);
}

void i_jal__opc_jal__regs__rel_addr20__()
{
    int32 opc = opc_jal__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20_Index = 1;
    int32 addr = rel_addr20__();
    MI5i_jalIH1_10start_base(opc, dst, addr);
}

void i_jal_abs__opc_jal__reg0__rel_addr20__()
{
    int32 opc = opc_jal__();
    __regopindex_type dst = reg0__();
    g_MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20_Index = 0;
    int32 addr = rel_addr20__();
    MI9i_jal_absIH1_10start_base(opc, dst, addr);
}

void i_jal_abs__opc_jal__regs__rel_addr20__()
{
    int32 opc = opc_jal__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20_Index = 1;
    int32 addr = rel_addr20__();
    MI9i_jal_absIH1_10start_base(opc, dst, addr);
}

void i_jalr__opc_jalr__reg0__reg0__simm12_lo__()
{
    int32 opc = opc_jalr__();
    __regopindex_type dst = reg0__();
    __regopindex_type src = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 0;
    int12 simm12 = simm12_lo__();
    MI6i_jalrIH1_10start_base(opc, dst, src, simm12);
}

void i_jalr__opc_jalr__reg0__reg0__simm12_pcrel_lo__()
{
    int32 opc = opc_jalr__();
    __regopindex_type dst = reg0__();
    __regopindex_type src = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 0;
    int12 simm12 = simm12_pcrel_lo__();
    MI6i_jalrIH1_10start_base(opc, dst, src, simm12);
}

void i_jalr__opc_jalr__reg0__reg0__simm12_simple__()
{
    int32 opc = opc_jalr__();
    __regopindex_type dst = reg0__();
    __regopindex_type src = reg0__();
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 0;
    int12 simm12 = simm12_simple__();
    MI6i_jalrIH1_10start_base(opc, dst, src, simm12);
}

void i_jalr__opc_jalr__reg0__regs__simm12_lo__()
{
    int32 opc = opc_jalr__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 0;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 1;
    int12 simm12 = simm12_lo__();
    MI6i_jalrIH1_10start_base(opc, dst, src, simm12);
}

void i_jalr__opc_jalr__reg0__regs__simm12_pcrel_lo__()
{
    int32 opc = opc_jalr__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 0;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 1;
    int12 simm12 = simm12_pcrel_lo__();
    MI6i_jalrIH1_10start_base(opc, dst, src, simm12);
}

void i_jalr__opc_jalr__reg0__regs__simm12_simple__()
{
    int32 opc = opc_jalr__();
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 0;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 1;
    int12 simm12 = simm12_simple__();
    MI6i_jalrIH1_10start_base(opc, dst, src, simm12);
}

void i_jalr__opc_jalr__regs__reg0__simm12_lo__()
{
    int32 opc = opc_jalr__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 1;
    int12 simm12 = simm12_lo__();
    MI6i_jalrIH1_10start_base(opc, dst, src, simm12);
}

void i_jalr__opc_jalr__regs__reg0__simm12_pcrel_lo__()
{
    int32 opc = opc_jalr__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 1;
    int12 simm12 = simm12_pcrel_lo__();
    MI6i_jalrIH1_10start_base(opc, dst, src, simm12);
}

void i_jalr__opc_jalr__regs__reg0__simm12_simple__()
{
    int32 opc = opc_jalr__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src = reg0__();
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 1;
    int12 simm12 = simm12_simple__();
    MI6i_jalrIH1_10start_base(opc, dst, src, simm12);
}

void i_jalr__opc_jalr__regs__regs__simm12_lo__()
{
    int32 opc = opc_jalr__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 2;
    int12 simm12 = simm12_lo__();
    MI6i_jalrIH1_10start_base(opc, dst, src, simm12);
}

void i_jalr__opc_jalr__regs__regs__simm12_pcrel_lo__()
{
    int32 opc = opc_jalr__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 2;
    int12 simm12 = simm12_pcrel_lo__();
    MI6i_jalrIH1_10start_base(opc, dst, src, simm12);
}

void i_jalr__opc_jalr__regs__regs__simm12_simple__()
{
    int32 opc = opc_jalr__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 2;
    int12 simm12 = simm12_simple__();
    MI6i_jalrIH1_10start_base(opc, dst, src, simm12);
}

void i_jmp_rel_alias__rel_addr20__()
{
    g_MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20_Index = 0;
    int32 addr = rel_addr20__();
    MI15i_jmp_rel_aliasIH1_10start_base(addr);
}

void i_jump_reg_alias__reg0__()
{
    __regopindex_type src = reg0__();
    MI16i_jump_reg_aliasIH1_10start_base(src);
}

void i_jump_reg_alias__regs__()
{
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 0;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI16i_jump_reg_aliasIH1_10start_base(src);
}

void i_load__opc_loadb__reg0__simm12_lo__reg0__()
{
    int32 opc = opc_loadb__();
    __regopindex_type dst = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 0;
    int12 simm12 = simm12_lo__();
    __regopindex_type src = reg0__();
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadb__reg0__simm12_lo__regs__()
{
    int32 opc = opc_loadb__();
    __regopindex_type dst = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 0;
    int12 simm12 = simm12_lo__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadb__reg0__simm12_pcrel_lo__reg0__()
{
    int32 opc = opc_loadb__();
    __regopindex_type dst = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 0;
    int12 simm12 = simm12_pcrel_lo__();
    __regopindex_type src = reg0__();
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadb__reg0__simm12_pcrel_lo__regs__()
{
    int32 opc = opc_loadb__();
    __regopindex_type dst = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 0;
    int12 simm12 = simm12_pcrel_lo__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadb__reg0__simm12_simple__reg0__()
{
    int32 opc = opc_loadb__();
    __regopindex_type dst = reg0__();
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 0;
    int12 simm12 = simm12_simple__();
    __regopindex_type src = reg0__();
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadb__reg0__simm12_simple__regs__()
{
    int32 opc = opc_loadb__();
    __regopindex_type dst = reg0__();
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 0;
    int12 simm12 = simm12_simple__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadb__regs__simm12_lo__reg0__()
{
    int32 opc = opc_loadb__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 1;
    int12 simm12 = simm12_lo__();
    __regopindex_type src = reg0__();
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadb__regs__simm12_lo__regs__()
{
    int32 opc = opc_loadb__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 1;
    int12 simm12 = simm12_lo__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 2;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadb__regs__simm12_pcrel_lo__reg0__()
{
    int32 opc = opc_loadb__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 1;
    int12 simm12 = simm12_pcrel_lo__();
    __regopindex_type src = reg0__();
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadb__regs__simm12_pcrel_lo__regs__()
{
    int32 opc = opc_loadb__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 1;
    int12 simm12 = simm12_pcrel_lo__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 2;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadb__regs__simm12_simple__reg0__()
{
    int32 opc = opc_loadb__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 1;
    int12 simm12 = simm12_simple__();
    __regopindex_type src = reg0__();
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadb__regs__simm12_simple__regs__()
{
    int32 opc = opc_loadb__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 1;
    int12 simm12 = simm12_simple__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 2;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadbu__reg0__simm12_lo__reg0__()
{
    int32 opc = opc_loadbu__();
    __regopindex_type dst = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 0;
    int12 simm12 = simm12_lo__();
    __regopindex_type src = reg0__();
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadbu__reg0__simm12_lo__regs__()
{
    int32 opc = opc_loadbu__();
    __regopindex_type dst = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 0;
    int12 simm12 = simm12_lo__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadbu__reg0__simm12_pcrel_lo__reg0__()
{
    int32 opc = opc_loadbu__();
    __regopindex_type dst = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 0;
    int12 simm12 = simm12_pcrel_lo__();
    __regopindex_type src = reg0__();
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadbu__reg0__simm12_pcrel_lo__regs__()
{
    int32 opc = opc_loadbu__();
    __regopindex_type dst = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 0;
    int12 simm12 = simm12_pcrel_lo__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadbu__reg0__simm12_simple__reg0__()
{
    int32 opc = opc_loadbu__();
    __regopindex_type dst = reg0__();
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 0;
    int12 simm12 = simm12_simple__();
    __regopindex_type src = reg0__();
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadbu__reg0__simm12_simple__regs__()
{
    int32 opc = opc_loadbu__();
    __regopindex_type dst = reg0__();
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 0;
    int12 simm12 = simm12_simple__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadbu__regs__simm12_lo__reg0__()
{
    int32 opc = opc_loadbu__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 1;
    int12 simm12 = simm12_lo__();
    __regopindex_type src = reg0__();
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadbu__regs__simm12_lo__regs__()
{
    int32 opc = opc_loadbu__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 1;
    int12 simm12 = simm12_lo__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 2;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadbu__regs__simm12_pcrel_lo__reg0__()
{
    int32 opc = opc_loadbu__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 1;
    int12 simm12 = simm12_pcrel_lo__();
    __regopindex_type src = reg0__();
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadbu__regs__simm12_pcrel_lo__regs__()
{
    int32 opc = opc_loadbu__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 1;
    int12 simm12 = simm12_pcrel_lo__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 2;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadbu__regs__simm12_simple__reg0__()
{
    int32 opc = opc_loadbu__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 1;
    int12 simm12 = simm12_simple__();
    __regopindex_type src = reg0__();
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadbu__regs__simm12_simple__regs__()
{
    int32 opc = opc_loadbu__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 1;
    int12 simm12 = simm12_simple__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 2;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadh__reg0__simm12_lo__reg0__()
{
    int32 opc = opc_loadh__();
    __regopindex_type dst = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 0;
    int12 simm12 = simm12_lo__();
    __regopindex_type src = reg0__();
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadh__reg0__simm12_lo__regs__()
{
    int32 opc = opc_loadh__();
    __regopindex_type dst = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 0;
    int12 simm12 = simm12_lo__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadh__reg0__simm12_pcrel_lo__reg0__()
{
    int32 opc = opc_loadh__();
    __regopindex_type dst = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 0;
    int12 simm12 = simm12_pcrel_lo__();
    __regopindex_type src = reg0__();
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadh__reg0__simm12_pcrel_lo__regs__()
{
    int32 opc = opc_loadh__();
    __regopindex_type dst = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 0;
    int12 simm12 = simm12_pcrel_lo__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadh__reg0__simm12_simple__reg0__()
{
    int32 opc = opc_loadh__();
    __regopindex_type dst = reg0__();
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 0;
    int12 simm12 = simm12_simple__();
    __regopindex_type src = reg0__();
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadh__reg0__simm12_simple__regs__()
{
    int32 opc = opc_loadh__();
    __regopindex_type dst = reg0__();
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 0;
    int12 simm12 = simm12_simple__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadh__regs__simm12_lo__reg0__()
{
    int32 opc = opc_loadh__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 1;
    int12 simm12 = simm12_lo__();
    __regopindex_type src = reg0__();
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadh__regs__simm12_lo__regs__()
{
    int32 opc = opc_loadh__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 1;
    int12 simm12 = simm12_lo__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 2;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadh__regs__simm12_pcrel_lo__reg0__()
{
    int32 opc = opc_loadh__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 1;
    int12 simm12 = simm12_pcrel_lo__();
    __regopindex_type src = reg0__();
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadh__regs__simm12_pcrel_lo__regs__()
{
    int32 opc = opc_loadh__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 1;
    int12 simm12 = simm12_pcrel_lo__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 2;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadh__regs__simm12_simple__reg0__()
{
    int32 opc = opc_loadh__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 1;
    int12 simm12 = simm12_simple__();
    __regopindex_type src = reg0__();
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadh__regs__simm12_simple__regs__()
{
    int32 opc = opc_loadh__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 1;
    int12 simm12 = simm12_simple__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 2;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadhu__reg0__simm12_lo__reg0__()
{
    int32 opc = opc_loadhu__();
    __regopindex_type dst = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 0;
    int12 simm12 = simm12_lo__();
    __regopindex_type src = reg0__();
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadhu__reg0__simm12_lo__regs__()
{
    int32 opc = opc_loadhu__();
    __regopindex_type dst = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 0;
    int12 simm12 = simm12_lo__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadhu__reg0__simm12_pcrel_lo__reg0__()
{
    int32 opc = opc_loadhu__();
    __regopindex_type dst = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 0;
    int12 simm12 = simm12_pcrel_lo__();
    __regopindex_type src = reg0__();
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadhu__reg0__simm12_pcrel_lo__regs__()
{
    int32 opc = opc_loadhu__();
    __regopindex_type dst = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 0;
    int12 simm12 = simm12_pcrel_lo__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadhu__reg0__simm12_simple__reg0__()
{
    int32 opc = opc_loadhu__();
    __regopindex_type dst = reg0__();
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 0;
    int12 simm12 = simm12_simple__();
    __regopindex_type src = reg0__();
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadhu__reg0__simm12_simple__regs__()
{
    int32 opc = opc_loadhu__();
    __regopindex_type dst = reg0__();
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 0;
    int12 simm12 = simm12_simple__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadhu__regs__simm12_lo__reg0__()
{
    int32 opc = opc_loadhu__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 1;
    int12 simm12 = simm12_lo__();
    __regopindex_type src = reg0__();
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadhu__regs__simm12_lo__regs__()
{
    int32 opc = opc_loadhu__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 1;
    int12 simm12 = simm12_lo__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 2;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadhu__regs__simm12_pcrel_lo__reg0__()
{
    int32 opc = opc_loadhu__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 1;
    int12 simm12 = simm12_pcrel_lo__();
    __regopindex_type src = reg0__();
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadhu__regs__simm12_pcrel_lo__regs__()
{
    int32 opc = opc_loadhu__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 1;
    int12 simm12 = simm12_pcrel_lo__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 2;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadhu__regs__simm12_simple__reg0__()
{
    int32 opc = opc_loadhu__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 1;
    int12 simm12 = simm12_simple__();
    __regopindex_type src = reg0__();
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadhu__regs__simm12_simple__regs__()
{
    int32 opc = opc_loadhu__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 1;
    int12 simm12 = simm12_simple__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 2;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadw__reg0__simm12_lo__reg0__()
{
    int32 opc = opc_loadw__();
    __regopindex_type dst = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 0;
    int12 simm12 = simm12_lo__();
    __regopindex_type src = reg0__();
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadw__reg0__simm12_lo__regs__()
{
    int32 opc = opc_loadw__();
    __regopindex_type dst = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 0;
    int12 simm12 = simm12_lo__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadw__reg0__simm12_pcrel_lo__reg0__()
{
    int32 opc = opc_loadw__();
    __regopindex_type dst = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 0;
    int12 simm12 = simm12_pcrel_lo__();
    __regopindex_type src = reg0__();
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadw__reg0__simm12_pcrel_lo__regs__()
{
    int32 opc = opc_loadw__();
    __regopindex_type dst = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 0;
    int12 simm12 = simm12_pcrel_lo__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadw__reg0__simm12_simple__reg0__()
{
    int32 opc = opc_loadw__();
    __regopindex_type dst = reg0__();
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 0;
    int12 simm12 = simm12_simple__();
    __regopindex_type src = reg0__();
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadw__reg0__simm12_simple__regs__()
{
    int32 opc = opc_loadw__();
    __regopindex_type dst = reg0__();
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 0;
    int12 simm12 = simm12_simple__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadw__regs__simm12_lo__reg0__()
{
    int32 opc = opc_loadw__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 1;
    int12 simm12 = simm12_lo__();
    __regopindex_type src = reg0__();
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadw__regs__simm12_lo__regs__()
{
    int32 opc = opc_loadw__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 1;
    int12 simm12 = simm12_lo__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 2;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadw__regs__simm12_pcrel_lo__reg0__()
{
    int32 opc = opc_loadw__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 1;
    int12 simm12 = simm12_pcrel_lo__();
    __regopindex_type src = reg0__();
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadw__regs__simm12_pcrel_lo__regs__()
{
    int32 opc = opc_loadw__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 1;
    int12 simm12 = simm12_pcrel_lo__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 2;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadw__regs__simm12_simple__reg0__()
{
    int32 opc = opc_loadw__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 1;
    int12 simm12 = simm12_simple__();
    __regopindex_type src = reg0__();
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_load__opc_loadw__regs__simm12_simple__regs__()
{
    int32 opc = opc_loadw__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 1;
    int12 simm12 = simm12_simple__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 2;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI6i_loadIH1_10start_base(opc, dst, simm12, src);
}

void i_lui__opc_lui__reg0__imm20_s12__()
{
    int32 opc = opc_lui__();
    __regopindex_type dst = reg0__();
    g_MI3immIH1_10start_base11_9imm20_s123imm1_9imm20_s12_Index = 0;
    int32 imm = imm20_s12__();
    MI5i_luiIH1_10start_base(opc, dst, imm);
}

void i_lui__opc_lui__regs__imm20_s12__()
{
    int32 opc = opc_lui__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI3immIH1_10start_base11_9imm20_s123imm1_9imm20_s12_Index = 1;
    int32 imm = imm20_s12__();
    MI5i_luiIH1_10start_base(opc, dst, imm);
}

void i_lui_hi__opc_lui__reg0__imm20_hi__()
{
    int32 opc = opc_lui__();
    __regopindex_type dst = reg0__();
    g_MI3valIH1_10start_base10_8imm20_hi3imm1_8imm20_hi_Index = 0;
    int32 imm = imm20_hi__();
    MI8i_lui_hiIH1_10start_base(opc, dst, imm);
}

void i_lui_hi__opc_lui__regs__imm20_hi__()
{
    int32 opc = opc_lui__();
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI3valIH1_10start_base10_8imm20_hi3imm1_8imm20_hi_Index = 1;
    int32 imm = imm20_hi__();
    MI8i_lui_hiIH1_10start_base(opc, dst, imm);
}

void i_mv_alias__reg0__reg0__()
{
    __regopindex_type dst = reg0__();
    __regopindex_type src = reg0__();
    MI10i_mv_aliasIH1_10start_base(dst, src);
}

void i_mv_alias__reg0__regs__()
{
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 0;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI10i_mv_aliasIH1_10start_base(dst, src);
}

void i_mv_alias__regs__reg0__()
{
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src = reg0__();
    MI10i_mv_aliasIH1_10start_base(dst, src);
}

void i_mv_alias__regs__regs__()
{
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI10i_mv_aliasIH1_10start_base(dst, src);
}

void i_neg_alias__reg0__reg0__()
{
    __regopindex_type dst = reg0__();
    __regopindex_type src = reg0__();
    MI11i_neg_aliasIH1_10start_base(dst, src);
}

void i_neg_alias__reg0__regs__()
{
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 0;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI11i_neg_aliasIH1_10start_base(dst, src);
}

void i_neg_alias__regs__reg0__()
{
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src = reg0__();
    MI11i_neg_aliasIH1_10start_base(dst, src);
}

void i_neg_alias__regs__regs__()
{
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI11i_neg_aliasIH1_10start_base(dst, src);
}

void i_nop_alias__()
{
    MI11i_nop_aliasIH1_10start_base();
}

void i_ori_emulation_alias__reg0__reg0__simm12_lo__()
{
    __regopindex_type dst = reg0__();
    __regopindex_type src = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 0;
    int12 simm12 = simm12_lo__();
    MI21i_ori_emulation_aliasIH1_10start_base(dst, src, simm12);
}

void i_ori_emulation_alias__reg0__reg0__simm12_pcrel_lo__()
{
    __regopindex_type dst = reg0__();
    __regopindex_type src = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 0;
    int12 simm12 = simm12_pcrel_lo__();
    MI21i_ori_emulation_aliasIH1_10start_base(dst, src, simm12);
}

void i_ori_emulation_alias__reg0__reg0__simm12_simple__()
{
    __regopindex_type dst = reg0__();
    __regopindex_type src = reg0__();
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 0;
    int12 simm12 = simm12_simple__();
    MI21i_ori_emulation_aliasIH1_10start_base(dst, src, simm12);
}

void i_ori_emulation_alias__reg0__regs__simm12_lo__()
{
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 0;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 1;
    int12 simm12 = simm12_lo__();
    MI21i_ori_emulation_aliasIH1_10start_base(dst, src, simm12);
}

void i_ori_emulation_alias__reg0__regs__simm12_pcrel_lo__()
{
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 0;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 1;
    int12 simm12 = simm12_pcrel_lo__();
    MI21i_ori_emulation_aliasIH1_10start_base(dst, src, simm12);
}

void i_ori_emulation_alias__reg0__regs__simm12_simple__()
{
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 0;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 1;
    int12 simm12 = simm12_simple__();
    MI21i_ori_emulation_aliasIH1_10start_base(dst, src, simm12);
}

void i_ori_emulation_alias__regs__reg0__simm12_lo__()
{
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 1;
    int12 simm12 = simm12_lo__();
    MI21i_ori_emulation_aliasIH1_10start_base(dst, src, simm12);
}

void i_ori_emulation_alias__regs__reg0__simm12_pcrel_lo__()
{
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src = reg0__();
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 1;
    int12 simm12 = simm12_pcrel_lo__();
    MI21i_ori_emulation_aliasIH1_10start_base(dst, src, simm12);
}

void i_ori_emulation_alias__regs__reg0__simm12_simple__()
{
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src = reg0__();
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 1;
    int12 simm12 = simm12_simple__();
    MI21i_ori_emulation_aliasIH1_10start_base(dst, src, simm12);
}

void i_ori_emulation_alias__regs__regs__simm12_lo__()
{
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_Index = 2;
    int12 simm12 = simm12_lo__();
    MI21i_ori_emulation_aliasIH1_10start_base(dst, src, simm12);
}

void i_ori_emulation_alias__regs__regs__simm12_pcrel_lo__()
{
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_Index = 2;
    int12 simm12 = simm12_pcrel_lo__();
    MI21i_ori_emulation_aliasIH1_10start_base(dst, src, simm12);
}

void i_ori_emulation_alias__regs__regs__simm12_simple__()
{
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 2;
    int12 simm12 = simm12_simple__();
    MI21i_ori_emulation_aliasIH1_10start_base(dst, src, simm12);
}

void i_seqz_alias__reg0__reg0__()
{
    __regopindex_type dst = reg0__();
    __regopindex_type src = reg0__();
    MI12i_seqz_aliasIH1_10start_base(dst, src);
}

void i_seqz_alias__reg0__regs__()
{
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 0;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI12i_seqz_aliasIH1_10start_base(dst, src);
}

void i_seqz_alias__regs__reg0__()
{
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src = reg0__();
    MI12i_seqz_aliasIH1_10start_base(dst, src);
}

void i_seqz_alias__regs__regs__()
{
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI12i_seqz_aliasIH1_10start_base(dst, src);
}

void i_snez_alias__reg0__reg0__()
{
    __regopindex_type dst = reg0__();
    __regopindex_type src = reg0__();
    MI12i_snez_aliasIH1_10start_base(dst, src);
}

void i_snez_alias__reg0__regs__()
{
    __regopindex_type dst = reg0__();
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 0;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI12i_snez_aliasIH1_10start_base(dst, src);
}

void i_snez_alias__regs__reg0__()
{
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    __regopindex_type src = reg0__();
    MI12i_snez_aliasIH1_10start_base(dst, src);
}

void i_snez_alias__regs__regs__()
{
    g_MI4regsIH1_10start_base9_7reg_any3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base9_7reg_any3dst_Index);
    g_MI4regsIH1_10start_base9_7reg_any3src_Index = 1;
    __regopindex_type src = regs__(g_MI4regsIH1_10start_base9_7reg_any3src_Index);
    MI12i_snez_aliasIH1_10start_base(dst, src);
}

void i_store__opc_storeb__reg0__simm12_s_lo__reg0__()
{
    int32 opc = opc_storeb__();
    __regopindex_type src2 = reg0__();
    g_MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_Index = 0;
    int12 simm12_s = simm12_s_lo__();
    __regopindex_type src1 = reg0__();
    MI7i_storeIH1_10start_base(opc, src2, simm12_s, src1);
}

void i_store__opc_storeb__reg0__simm12_s_lo__regs__()
{
    int32 opc = opc_storeb__();
    __regopindex_type src2 = reg0__();
    g_MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_Index = 0;
    int12 simm12_s = simm12_s_lo__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 1;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    MI7i_storeIH1_10start_base(opc, src2, simm12_s, src1);
}

void i_store__opc_storeb__reg0__simm12_s_pcrel_lo__reg0__()
{
    int32 opc = opc_storeb__();
    __regopindex_type src2 = reg0__();
    g_MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_Index = 0;
    int12 simm12_s = simm12_s_pcrel_lo__();
    __regopindex_type src1 = reg0__();
    MI7i_storeIH1_10start_base(opc, src2, simm12_s, src1);
}

void i_store__opc_storeb__reg0__simm12_s_pcrel_lo__regs__()
{
    int32 opc = opc_storeb__();
    __regopindex_type src2 = reg0__();
    g_MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_Index = 0;
    int12 simm12_s = simm12_s_pcrel_lo__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 1;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    MI7i_storeIH1_10start_base(opc, src2, simm12_s, src1);
}

void i_store__opc_storeb__reg0__simm12_simple__reg0__()
{
    int32 opc = opc_storeb__();
    __regopindex_type src2 = reg0__();
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 0;
    int12 simm12_s = simm12_simple__();
    __regopindex_type src1 = reg0__();
    MI7i_storeIH1_10start_base(opc, src2, simm12_s, src1);
}

void i_store__opc_storeb__reg0__simm12_simple__regs__()
{
    int32 opc = opc_storeb__();
    __regopindex_type src2 = reg0__();
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 0;
    int12 simm12_s = simm12_simple__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 1;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    MI7i_storeIH1_10start_base(opc, src2, simm12_s, src1);
}

void i_store__opc_storeb__regs__simm12_s_lo__reg0__()
{
    int32 opc = opc_storeb__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 0;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    g_MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_Index = 1;
    int12 simm12_s = simm12_s_lo__();
    __regopindex_type src1 = reg0__();
    MI7i_storeIH1_10start_base(opc, src2, simm12_s, src1);
}

void i_store__opc_storeb__regs__simm12_s_lo__regs__()
{
    int32 opc = opc_storeb__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 0;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    g_MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_Index = 1;
    int12 simm12_s = simm12_s_lo__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 2;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    MI7i_storeIH1_10start_base(opc, src2, simm12_s, src1);
}

void i_store__opc_storeb__regs__simm12_s_pcrel_lo__reg0__()
{
    int32 opc = opc_storeb__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 0;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    g_MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_Index = 1;
    int12 simm12_s = simm12_s_pcrel_lo__();
    __regopindex_type src1 = reg0__();
    MI7i_storeIH1_10start_base(opc, src2, simm12_s, src1);
}

void i_store__opc_storeb__regs__simm12_s_pcrel_lo__regs__()
{
    int32 opc = opc_storeb__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 0;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    g_MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_Index = 1;
    int12 simm12_s = simm12_s_pcrel_lo__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 2;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    MI7i_storeIH1_10start_base(opc, src2, simm12_s, src1);
}

void i_store__opc_storeb__regs__simm12_simple__reg0__()
{
    int32 opc = opc_storeb__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 0;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 1;
    int12 simm12_s = simm12_simple__();
    __regopindex_type src1 = reg0__();
    MI7i_storeIH1_10start_base(opc, src2, simm12_s, src1);
}

void i_store__opc_storeb__regs__simm12_simple__regs__()
{
    int32 opc = opc_storeb__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 0;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 1;
    int12 simm12_s = simm12_simple__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 2;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    MI7i_storeIH1_10start_base(opc, src2, simm12_s, src1);
}

void i_store__opc_storeh__reg0__simm12_s_lo__reg0__()
{
    int32 opc = opc_storeh__();
    __regopindex_type src2 = reg0__();
    g_MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_Index = 0;
    int12 simm12_s = simm12_s_lo__();
    __regopindex_type src1 = reg0__();
    MI7i_storeIH1_10start_base(opc, src2, simm12_s, src1);
}

void i_store__opc_storeh__reg0__simm12_s_lo__regs__()
{
    int32 opc = opc_storeh__();
    __regopindex_type src2 = reg0__();
    g_MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_Index = 0;
    int12 simm12_s = simm12_s_lo__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 1;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    MI7i_storeIH1_10start_base(opc, src2, simm12_s, src1);
}

void i_store__opc_storeh__reg0__simm12_s_pcrel_lo__reg0__()
{
    int32 opc = opc_storeh__();
    __regopindex_type src2 = reg0__();
    g_MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_Index = 0;
    int12 simm12_s = simm12_s_pcrel_lo__();
    __regopindex_type src1 = reg0__();
    MI7i_storeIH1_10start_base(opc, src2, simm12_s, src1);
}

void i_store__opc_storeh__reg0__simm12_s_pcrel_lo__regs__()
{
    int32 opc = opc_storeh__();
    __regopindex_type src2 = reg0__();
    g_MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_Index = 0;
    int12 simm12_s = simm12_s_pcrel_lo__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 1;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    MI7i_storeIH1_10start_base(opc, src2, simm12_s, src1);
}

void i_store__opc_storeh__reg0__simm12_simple__reg0__()
{
    int32 opc = opc_storeh__();
    __regopindex_type src2 = reg0__();
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 0;
    int12 simm12_s = simm12_simple__();
    __regopindex_type src1 = reg0__();
    MI7i_storeIH1_10start_base(opc, src2, simm12_s, src1);
}

void i_store__opc_storeh__reg0__simm12_simple__regs__()
{
    int32 opc = opc_storeh__();
    __regopindex_type src2 = reg0__();
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 0;
    int12 simm12_s = simm12_simple__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 1;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    MI7i_storeIH1_10start_base(opc, src2, simm12_s, src1);
}

void i_store__opc_storeh__regs__simm12_s_lo__reg0__()
{
    int32 opc = opc_storeh__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 0;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    g_MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_Index = 1;
    int12 simm12_s = simm12_s_lo__();
    __regopindex_type src1 = reg0__();
    MI7i_storeIH1_10start_base(opc, src2, simm12_s, src1);
}

void i_store__opc_storeh__regs__simm12_s_lo__regs__()
{
    int32 opc = opc_storeh__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 0;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    g_MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_Index = 1;
    int12 simm12_s = simm12_s_lo__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 2;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    MI7i_storeIH1_10start_base(opc, src2, simm12_s, src1);
}

void i_store__opc_storeh__regs__simm12_s_pcrel_lo__reg0__()
{
    int32 opc = opc_storeh__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 0;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    g_MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_Index = 1;
    int12 simm12_s = simm12_s_pcrel_lo__();
    __regopindex_type src1 = reg0__();
    MI7i_storeIH1_10start_base(opc, src2, simm12_s, src1);
}

void i_store__opc_storeh__regs__simm12_s_pcrel_lo__regs__()
{
    int32 opc = opc_storeh__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 0;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    g_MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_Index = 1;
    int12 simm12_s = simm12_s_pcrel_lo__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 2;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    MI7i_storeIH1_10start_base(opc, src2, simm12_s, src1);
}

void i_store__opc_storeh__regs__simm12_simple__reg0__()
{
    int32 opc = opc_storeh__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 0;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 1;
    int12 simm12_s = simm12_simple__();
    __regopindex_type src1 = reg0__();
    MI7i_storeIH1_10start_base(opc, src2, simm12_s, src1);
}

void i_store__opc_storeh__regs__simm12_simple__regs__()
{
    int32 opc = opc_storeh__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 0;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 1;
    int12 simm12_s = simm12_simple__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 2;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    MI7i_storeIH1_10start_base(opc, src2, simm12_s, src1);
}

void i_store__opc_storew__reg0__simm12_s_lo__reg0__()
{
    int32 opc = opc_storew__();
    __regopindex_type src2 = reg0__();
    g_MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_Index = 0;
    int12 simm12_s = simm12_s_lo__();
    __regopindex_type src1 = reg0__();
    MI7i_storeIH1_10start_base(opc, src2, simm12_s, src1);
}

void i_store__opc_storew__reg0__simm12_s_lo__regs__()
{
    int32 opc = opc_storew__();
    __regopindex_type src2 = reg0__();
    g_MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_Index = 0;
    int12 simm12_s = simm12_s_lo__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 1;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    MI7i_storeIH1_10start_base(opc, src2, simm12_s, src1);
}

void i_store__opc_storew__reg0__simm12_s_pcrel_lo__reg0__()
{
    int32 opc = opc_storew__();
    __regopindex_type src2 = reg0__();
    g_MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_Index = 0;
    int12 simm12_s = simm12_s_pcrel_lo__();
    __regopindex_type src1 = reg0__();
    MI7i_storeIH1_10start_base(opc, src2, simm12_s, src1);
}

void i_store__opc_storew__reg0__simm12_s_pcrel_lo__regs__()
{
    int32 opc = opc_storew__();
    __regopindex_type src2 = reg0__();
    g_MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_Index = 0;
    int12 simm12_s = simm12_s_pcrel_lo__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 1;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    MI7i_storeIH1_10start_base(opc, src2, simm12_s, src1);
}

void i_store__opc_storew__reg0__simm12_simple__reg0__()
{
    int32 opc = opc_storew__();
    __regopindex_type src2 = reg0__();
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 0;
    int12 simm12_s = simm12_simple__();
    __regopindex_type src1 = reg0__();
    MI7i_storeIH1_10start_base(opc, src2, simm12_s, src1);
}

void i_store__opc_storew__reg0__simm12_simple__regs__()
{
    int32 opc = opc_storew__();
    __regopindex_type src2 = reg0__();
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 0;
    int12 simm12_s = simm12_simple__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 1;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    MI7i_storeIH1_10start_base(opc, src2, simm12_s, src1);
}

void i_store__opc_storew__regs__simm12_s_lo__reg0__()
{
    int32 opc = opc_storew__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 0;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    g_MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_Index = 1;
    int12 simm12_s = simm12_s_lo__();
    __regopindex_type src1 = reg0__();
    MI7i_storeIH1_10start_base(opc, src2, simm12_s, src1);
}

void i_store__opc_storew__regs__simm12_s_lo__regs__()
{
    int32 opc = opc_storew__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 0;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    g_MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_Index = 1;
    int12 simm12_s = simm12_s_lo__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 2;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    MI7i_storeIH1_10start_base(opc, src2, simm12_s, src1);
}

void i_store__opc_storew__regs__simm12_s_pcrel_lo__reg0__()
{
    int32 opc = opc_storew__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 0;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    g_MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_Index = 1;
    int12 simm12_s = simm12_s_pcrel_lo__();
    __regopindex_type src1 = reg0__();
    MI7i_storeIH1_10start_base(opc, src2, simm12_s, src1);
}

void i_store__opc_storew__regs__simm12_s_pcrel_lo__regs__()
{
    int32 opc = opc_storew__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 0;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    g_MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_Index = 1;
    int12 simm12_s = simm12_s_pcrel_lo__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 2;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    MI7i_storeIH1_10start_base(opc, src2, simm12_s, src1);
}

void i_store__opc_storew__regs__simm12_simple__reg0__()
{
    int32 opc = opc_storew__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 0;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 1;
    int12 simm12_s = simm12_simple__();
    __regopindex_type src1 = reg0__();
    MI7i_storeIH1_10start_base(opc, src2, simm12_s, src1);
}

void i_store__opc_storew__regs__simm12_simple__regs__()
{
    int32 opc = opc_storew__();
    g_MI4regsIH1_10start_base9_7reg_any4src2_Index = 0;
    __regopindex_type src2 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src2_Index);
    g_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_Index = 1;
    int12 simm12_s = simm12_simple__();
    g_MI4regsIH1_10start_base9_7reg_any4src1_Index = 2;
    __regopindex_type src1 = regs__(g_MI4regsIH1_10start_base9_7reg_any4src1_Index);
    MI7i_storeIH1_10start_base(opc, src2, simm12_s, src1);
}

void i_unimp__opc_unimp__()
{
    int32 opc = opc_unimp__();
    MI7i_unimpIH1_10start_base(opc);
}

void i_wfi__opc_wfi__()
{
    int32 opc = opc_wfi__();
    MI5i_wfiIH1_10start_base(opc);
}

void i_xret__opc_mret__()
{
    int32 opc = opc_mret__();
    MI6i_xretIH1_10start_base(opc);
}

int32 imm20_hi__()
{
    int32 MI3valIH1_10start_base10_8imm20_hi3imm1_8imm20_hiInstance = MI3valIH1_10start_base10_8imm20_hi3imm1_8imm20_hi();
    return MI8imm20_hiIH1_10start_base10_8imm20_hi3imm(MI3valIH1_10start_base10_8imm20_hi3imm1_8imm20_hiInstance);
}

int32 imm20_s12__()
{
    int32 MI3immIH1_10start_base11_9imm20_s123imm1_9imm20_s12Instance = MI3immIH1_10start_base11_9imm20_s123imm1_9imm20_s12();
    return MI9imm20_s12IH1_10start_base11_9imm20_s123imm(MI3immIH1_10start_base11_9imm20_s123imm1_9imm20_s12Instance);
}

uint5 imm5__()
{
    uint5 MI3immIH1_10start_base6_4imm53imm1_4imm5Instance = MI3immIH1_10start_base6_4imm53imm1_4imm5();
    return MI4imm5IH1_10start_base6_4imm53imm(MI3immIH1_10start_base6_4imm53imm1_4imm5Instance);
}

void load_imm32__regs__regs__regs__()
{
    g_MI4regsIH1_10start_base6_4regs3dst_Index = 0;
    __regopindex_type dst = regs__(g_MI4regsIH1_10start_base6_4regs3dst_Index);
    g_MI3immIH1_10start_base1_10load_imm32_Index = 1;
    uint32 MI3immIH1_10start_base1_10load_imm32Instance = MI3immIH1_10start_base1_10load_imm32();
    MI10load_imm32IH1_10start_base(dst, MI3immIH1_10start_base1_10load_imm32Instance);
}

int32 opc_add__()
{
    return MI7opc_addIH1_10start_base16_13opc_comp_3reg3opc();
}

int32 opc_addi__()
{
    return MI8opc_addiIH1_10start_base10_8opc_addi3opc();
}

int32 opc_and__()
{
    return MI7opc_andIH1_10start_base16_13opc_comp_3reg3opc();
}

int32 opc_andi__()
{
    return MI8opc_andiIH1_10start_base20_17opc_comp_2reg_imm3opc();
}

int32 opc_auipc__()
{
    return MI9opc_auipcIH1_10start_base11_9opc_auipc3opc();
}

int32 opc_beq__()
{
    return MI7opc_beqIH1_10start_base26_23opc_control_conditional3opc();
}

int32 opc_bge__()
{
    return MI7opc_bgeIH1_10start_base26_23opc_control_conditional3opc();
}

int32 opc_bgeu__()
{
    return MI8opc_bgeuIH1_10start_base26_23opc_control_conditional3opc();
}

int32 opc_blt__()
{
    return MI7opc_bltIH1_10start_base26_23opc_control_conditional3opc();
}

int32 opc_bltu__()
{
    return MI8opc_bltuIH1_10start_base26_23opc_control_conditional3opc();
}

int32 opc_bne__()
{
    return MI7opc_bneIH1_10start_base26_23opc_control_conditional3opc();
}

int32 opc_csrrc__()
{
    return MI9opc_csrrcIH1_10start_base28_25opc_control_registers_reg3opc();
}

int32 opc_csrrci__()
{
    return MI10opc_csrrciIH1_10start_base28_25opc_control_registers_imm3opc();
}

int32 opc_csrrs__()
{
    return MI9opc_csrrsIH1_10start_base28_25opc_control_registers_reg3opc();
}

int32 opc_csrrsi__()
{
    return MI10opc_csrrsiIH1_10start_base28_25opc_control_registers_imm3opc();
}

int32 opc_csrrw__()
{
    return MI9opc_csrrwIH1_10start_base28_25opc_control_registers_reg3opc();
}

int32 opc_csrrwi__()
{
    return MI10opc_csrrwiIH1_10start_base28_25opc_control_registers_imm3opc();
}

int32 opc_ebreak__()
{
    return MI10opc_ebreakIH1_10start_base13_10opc_ebreak3opc();
}

int32 opc_ecall__()
{
    return MI9opc_ecallIH1_10start_base11_9opc_ecall3opc();
}

int32 opc_fence__()
{
    return MI9opc_fenceIH1_10start_base11_9opc_fence3opc();
}

int32 opc_fencei__()
{
    return MI10opc_fenceiIH1_10start_base13_10opc_fencei3opc();
}

int32 opc_hackaton_custom_a__()
{
    return MI21opc_hackaton_custom_aIH1_10start_base24_21opc_hackaton_custom_i3opc();
}

int32 opc_hackaton_custom_b__()
{
    return MI21opc_hackaton_custom_bIH1_10start_base24_21opc_hackaton_custom_i3opc();
}

int32 opc_hackaton_custom_c__()
{
    return MI21opc_hackaton_custom_cIH1_10start_base24_21opc_hackaton_custom_i3opc();
}

int32 opc_hackaton_custom_d__()
{
    return MI21opc_hackaton_custom_dIH1_10start_base24_21opc_hackaton_custom_i3opc();
}

int32 opc_hackaton_custom_e__()
{
    return MI21opc_hackaton_custom_eIH1_10start_base24_21opc_hackaton_custom_i3opc();
}

int32 opc_hint_fence__()
{
    return MI14opc_hint_fenceIH1_10start_base18_15opc_fence_param6param2();
}

int32 opc_i_fence__()
{
    return MI11opc_i_fenceIH1_10start_base18_15opc_fence_param6param2();
}

int32 opc_io_fence__()
{
    return MI12opc_io_fenceIH1_10start_base18_15opc_fence_param6param2();
}

int32 opc_ior_fence__()
{
    return MI13opc_ior_fenceIH1_10start_base18_15opc_fence_param6param2();
}

int32 opc_iorw_fence__()
{
    return MI14opc_iorw_fenceIH1_10start_base18_15opc_fence_param6param2();
}

int32 opc_iow_fence__()
{
    return MI13opc_iow_fenceIH1_10start_base18_15opc_fence_param6param2();
}

int32 opc_ir_fence__()
{
    return MI12opc_ir_fenceIH1_10start_base18_15opc_fence_param6param2();
}

int32 opc_irw_fence__()
{
    return MI13opc_irw_fenceIH1_10start_base18_15opc_fence_param6param2();
}

int32 opc_iw_fence__()
{
    return MI12opc_iw_fenceIH1_10start_base18_15opc_fence_param6param2();
}

int32 opc_jal__()
{
    return MI7opc_jalIH1_10start_base9_7opc_jal3opc();
}

int32 opc_jalr__()
{
    return MI8opc_jalrIH1_10start_base10_8opc_jalr3opc();
}

int32 opc_loadb__()
{
    return MI9opc_loadbIH1_10start_base11_9opc_loads3opc();
}

int32 opc_loadbu__()
{
    return MI10opc_loadbuIH1_10start_base11_9opc_loads3opc();
}

int32 opc_loadh__()
{
    return MI9opc_loadhIH1_10start_base11_9opc_loads3opc();
}

int32 opc_loadhu__()
{
    return MI10opc_loadhuIH1_10start_base11_9opc_loads3opc();
}

int32 opc_loadw__()
{
    return MI9opc_loadwIH1_10start_base11_9opc_loads3opc();
}

int32 opc_lui__()
{
    return MI7opc_luiIH1_10start_base9_7opc_lui3opc();
}

int32 opc_mret__()
{
    return MI8opc_mretIH1_10start_base10_8opc_xret3opc();
}

int32 opc_o_fence__()
{
    return MI11opc_o_fenceIH1_10start_base18_15opc_fence_param6param2();
}

int32 opc_or__()
{
    return MI6opc_orIH1_10start_base16_13opc_comp_3reg3opc();
}

int32 opc_or_fence__()
{
    return MI12opc_or_fenceIH1_10start_base18_15opc_fence_param6param2();
}

int32 opc_ori__()
{
    return MI7opc_oriIH1_10start_base20_17opc_comp_2reg_imm3opc();
}

int32 opc_orw_fence__()
{
    return MI13opc_orw_fenceIH1_10start_base18_15opc_fence_param6param2();
}

int32 opc_ow_fence__()
{
    return MI12opc_ow_fenceIH1_10start_base18_15opc_fence_param6param2();
}

int32 opc_r_fence__()
{
    return MI11opc_r_fenceIH1_10start_base18_15opc_fence_param6param2();
}

int32 opc_rw_fence__()
{
    return MI12opc_rw_fenceIH1_10start_base18_15opc_fence_param6param2();
}

int32 opc_sll__()
{
    return MI7opc_sllIH1_10start_base16_13opc_comp_3reg3opc();
}

int32 opc_slli__()
{
    return MI8opc_slliIH1_10start_base26_23opc_comp_2reg_imm_shift3opc();
}

int32 opc_slt__()
{
    return MI7opc_sltIH1_10start_base16_13opc_comp_3reg3opc();
}

int32 opc_slti__()
{
    return MI8opc_sltiIH1_10start_base20_17opc_comp_2reg_imm3opc();
}

int32 opc_sltiu__()
{
    return MI9opc_sltiuIH1_10start_base20_17opc_comp_2reg_imm3opc();
}

int32 opc_sltu__()
{
    return MI8opc_sltuIH1_10start_base16_13opc_comp_3reg3opc();
}

int32 opc_sra__()
{
    return MI7opc_sraIH1_10start_base16_13opc_comp_3reg3opc();
}

int32 opc_srai__()
{
    return MI8opc_sraiIH1_10start_base26_23opc_comp_2reg_imm_shift3opc();
}

int32 opc_srl__()
{
    return MI7opc_srlIH1_10start_base16_13opc_comp_3reg3opc();
}

int32 opc_srli__()
{
    return MI8opc_srliIH1_10start_base26_23opc_comp_2reg_imm_shift3opc();
}

int32 opc_storeb__()
{
    return MI10opc_storebIH1_10start_base13_10opc_stores3opc();
}

int32 opc_storeh__()
{
    return MI10opc_storehIH1_10start_base13_10opc_stores3opc();
}

int32 opc_storew__()
{
    return MI10opc_storewIH1_10start_base13_10opc_stores3opc();
}

int32 opc_sub__()
{
    return MI7opc_subIH1_10start_base16_13opc_comp_3reg3opc();
}

int32 opc_unimp__()
{
    return MI9opc_unimpIH1_10start_base11_9opc_unimp3opc();
}

int32 opc_w_fence__()
{
    return MI11opc_w_fenceIH1_10start_base18_15opc_fence_param6param2();
}

int32 opc_wfi__()
{
    return MI7opc_wfiIH1_10start_base9_7opc_wfi3opc();
}

int32 opc_xor__()
{
    return MI7opc_xorIH1_10start_base16_13opc_comp_3reg3opc();
}

int32 opc_xori__()
{
    return MI8opc_xoriIH1_10start_base20_17opc_comp_2reg_imm3opc();
}

int32 reg0__()
{
    return MI4reg0IH1_10start_base9_7reg_any3dst();
}

__regopindex_type regs__(const unsigned int index)
{
{
    return codasip_regopindex(18, index);
}
}

__regopindex_type regs_csr__(const unsigned int index)
{
{
    return codasip_regopindex(0, index);
}
}

int32 rel_addr12__()
{
    int32 MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12Instance = MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12();
    return MI10rel_addr12IH1_10start_base13_10rel_addr124addr(MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12Instance);
}

int32 rel_addr20__()
{
    int32 MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20Instance = MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20();
    return MI10rel_addr20IH1_10start_base13_10rel_addr204addr(MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20Instance);
}

uint5 shift_imm__()
{
    uint5 MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_immInstance = MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm();
    return MI9shift_immIH1_10start_base11_9shift_imm3imm(MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_immInstance);
}

int12 simm12_lo__()
{
    int12 MI3valIH1_10start_base8_6simm126simm121_9simm12_loInstance = MI3valIH1_10start_base8_6simm126simm121_9simm12_lo();
    return MI9simm12_loIH1_10start_base8_6simm126simm12(MI3valIH1_10start_base8_6simm126simm121_9simm12_loInstance);
}

int12 simm12_pcrel_lo__()
{
    int12 MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_loInstance = MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo();
    return MI15simm12_pcrel_loIH1_10start_base8_6simm126simm12(MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_loInstance);
}

int12 simm12_s_lo__()
{
    int12 MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_loInstance = MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo();
    return MI11simm12_s_loIH1_10start_base10_8simm12_s8simm12_s(MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_loInstance);
}

int12 simm12_s_pcrel_lo__()
{
    int12 MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_loInstance = MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo();
    return MI17simm12_s_pcrel_loIH1_10start_base10_8simm12_s8simm12_s(MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_loInstance);
}

int12 simm12_simple__()
{
    int12 MI4simmIH1_10start_base8_6simm126simm121_13simm12_simpleInstance = MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple();
    return MI13simm12_simpleIH1_10start_base8_6simm126simm12(MI4simmIH1_10start_base8_6simm126simm121_13simm12_simpleInstance);
}

void e_movi32__()
{
    g_MI4regsIH1_10start_base6_4regs3dst_Index = 0;
    __regopindex_type MI3lui__MI4regsIH1_10start_base6_4regs3dst = regs__(g_MI4regsIH1_10start_base6_4regs3dst_Index);
    g_MI7address_Index = 1;
const int32 MI7address = codasip_immread_int32(g_MI7address_Index); {
{
    #line 44 "/home/project/codasip_urisc_v/model/share/isa/isa_emulations.codal"
    MI12rf_gpr_write(MI3lui__MI4regsIH1_10start_base6_4regs3dst, MI7address);
}
}
}

