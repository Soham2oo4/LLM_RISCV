# 1 "/tools/toolchain/newlib/newlib/libc/ctype/iswblank.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 325 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/tools/toolchain/newlib/newlib/libc/ctype/iswblank.c" 2
# 65 "/tools/toolchain/newlib/newlib/libc/ctype/iswblank.c"
# 1 "/tools/toolchain/newlib/newlib/libc/include/_ansi.h" 1 3
# 18 "/tools/toolchain/newlib/newlib/libc/include/_ansi.h" 3
# 1 "/tools/toolchain/newlib/newlib/libc/machine/codasip/newlib.h" 1 3
# 19 "/tools/toolchain/newlib/newlib/libc/include/_ansi.h" 2 3
# 1 "/tools/toolchain/newlib/newlib/libc/include/sys/config.h" 1 3



# 1 "/tools/toolchain/newlib/newlib/libc/include/machine/ieeefp.h" 1 3
# 5 "/tools/toolchain/newlib/newlib/libc/include/sys/config.h" 2 3
# 1 "/tools/toolchain/newlib/newlib/libc/include/sys/features.h" 1 3
# 28 "/tools/toolchain/newlib/newlib/libc/include/sys/features.h" 3
# 1 "/tools/toolchain/newlib/newlib/libc/include/_newlib_version.h" 1 3
# 29 "/tools/toolchain/newlib/newlib/libc/include/sys/features.h" 2 3
# 6 "/tools/toolchain/newlib/newlib/libc/include/sys/config.h" 2 3
# 20 "/tools/toolchain/newlib/newlib/libc/include/_ansi.h" 2 3
# 66 "/tools/toolchain/newlib/newlib/libc/ctype/iswblank.c" 2
# 1 "/tools/toolchain/newlib/newlib/libc/include/wctype.h" 1 3




# 1 "/tools/toolchain/newlib/newlib/libc/include/sys/_types.h" 1 3
# 24 "/tools/toolchain/newlib/newlib/libc/include/sys/_types.h" 3
# 1 "/home/project/codasip_urisc_v/work/ia/sdk/lib/clang/9.0.1/include/stddef.h" 1 3
# 46 "/home/project/codasip_urisc_v/work/ia/sdk/lib/clang/9.0.1/include/stddef.h" 3
typedef unsigned int size_t;
# 116 "/home/project/codasip_urisc_v/work/ia/sdk/lib/clang/9.0.1/include/stddef.h" 3
typedef unsigned int wint_t;
# 25 "/tools/toolchain/newlib/newlib/libc/include/sys/_types.h" 2 3


# 1 "/tools/toolchain/newlib/newlib/libc/include/machine/_types.h" 1 3






# 1 "/tools/toolchain/newlib/newlib/libc/include/machine/_default_types.h" 1 3
# 41 "/tools/toolchain/newlib/newlib/libc/include/machine/_default_types.h" 3
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/tools/toolchain/newlib/newlib/libc/include/machine/_default_types.h" 3
typedef short __int16_t;

typedef unsigned short __uint16_t;
# 77 "/tools/toolchain/newlib/newlib/libc/include/machine/_default_types.h" 3
typedef int __int32_t;

typedef unsigned int __uint32_t;
# 103 "/tools/toolchain/newlib/newlib/libc/include/machine/_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/tools/toolchain/newlib/newlib/libc/include/machine/_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/tools/toolchain/newlib/newlib/libc/include/machine/_default_types.h" 3
typedef short __int_least16_t;

typedef unsigned short __uint_least16_t;
# 182 "/tools/toolchain/newlib/newlib/libc/include/machine/_default_types.h" 3
typedef int __int_least32_t;

typedef unsigned int __uint_least32_t;
# 200 "/tools/toolchain/newlib/newlib/libc/include/machine/_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/tools/toolchain/newlib/newlib/libc/include/machine/_default_types.h" 3
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 8 "/tools/toolchain/newlib/newlib/libc/include/machine/_types.h" 2 3
# 28 "/tools/toolchain/newlib/newlib/libc/include/sys/_types.h" 2 3


typedef long __blkcnt_t;



typedef long __blksize_t;



typedef __uint64_t __fsblkcnt_t;



typedef __uint32_t __fsfilcnt_t;



typedef long _off_t;





typedef int __pid_t;



typedef short __dev_t;



typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



typedef __uint32_t __id_t;







typedef unsigned short __ino_t;
# 90 "/tools/toolchain/newlib/newlib/libc/include/sys/_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;







typedef long _fpos_t;
# 131 "/tools/toolchain/newlib/newlib/libc/include/sys/_types.h" 3
typedef unsigned int __size_t;
# 147 "/tools/toolchain/newlib/newlib/libc/include/sys/_types.h" 3
typedef signed int _ssize_t;
# 158 "/tools/toolchain/newlib/newlib/libc/include/sys/_types.h" 3
typedef _ssize_t __ssize_t;



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;




typedef void *_iconv_t;






typedef unsigned long __clock_t;






typedef __int_least64_t __time_t;





typedef unsigned long __clockid_t;


typedef unsigned long __timer_t;


typedef __uint8_t __sa_family_t;



typedef __uint32_t __socklen_t;


typedef int __nl_item;
typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;







typedef __builtin_va_list __va_list;
# 6 "/tools/toolchain/newlib/newlib/libc/include/wctype.h" 2 3


# 1 "/home/project/codasip_urisc_v/work/ia/sdk/lib/clang/9.0.1/include/stddef.h" 1 3
# 9 "/tools/toolchain/newlib/newlib/libc/include/wctype.h" 2 3


# 1 "/tools/toolchain/newlib/newlib/libc/include/sys/_locale.h" 1 3








struct __locale_t;
typedef struct __locale_t *locale_t;
# 12 "/tools/toolchain/newlib/newlib/libc/include/wctype.h" 2 3
# 22 "/tools/toolchain/newlib/newlib/libc/include/wctype.h" 3
typedef int wctype_t;




typedef int wctrans_t;


int iswalpha (wint_t);
int iswalnum (wint_t);

int iswblank (wint_t);

int iswcntrl (wint_t);
int iswctype (wint_t, wctype_t);
int iswdigit (wint_t);
int iswgraph (wint_t);
int iswlower (wint_t);
int iswprint (wint_t);
int iswpunct (wint_t);
int iswspace (wint_t);
int iswupper (wint_t);
int iswxdigit (wint_t);
wint_t towctrans (wint_t, wctrans_t);
wint_t towupper (wint_t);
wint_t towlower (wint_t);
wctrans_t wctrans (const char *);
wctype_t wctype (const char *);


extern int iswalpha_l (wint_t, locale_t);
extern int iswalnum_l (wint_t, locale_t);
extern int iswblank_l (wint_t, locale_t);
extern int iswcntrl_l (wint_t, locale_t);
extern int iswctype_l (wint_t, wctype_t, locale_t);
extern int iswdigit_l (wint_t, locale_t);
extern int iswgraph_l (wint_t, locale_t);
extern int iswlower_l (wint_t, locale_t);
extern int iswprint_l (wint_t, locale_t);
extern int iswpunct_l (wint_t, locale_t);
extern int iswspace_l (wint_t, locale_t);
extern int iswupper_l (wint_t, locale_t);
extern int iswxdigit_l (wint_t, locale_t);
extern wint_t towctrans_l (wint_t, wctrans_t, locale_t);
extern wint_t towupper_l (wint_t, locale_t);
extern wint_t towlower_l (wint_t, locale_t);
extern wctrans_t wctrans_l (const char *, locale_t);
extern wctype_t wctype_l (const char *, locale_t);
# 67 "/tools/toolchain/newlib/newlib/libc/ctype/iswblank.c" 2

int
iswblank (wint_t c)
{
  return iswblank_l (c, 0);
}
