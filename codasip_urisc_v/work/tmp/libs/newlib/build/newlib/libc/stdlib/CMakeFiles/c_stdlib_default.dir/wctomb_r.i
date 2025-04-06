# 1 "/tools/toolchain/newlib/newlib/libc/stdlib/wctomb_r.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 325 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/tools/toolchain/newlib/newlib/libc/stdlib/wctomb_r.c" 2
# 1 "/tools/toolchain/newlib/newlib/libc/include/errno.h" 1 3




typedef int error_t;




# 1 "/tools/toolchain/newlib/newlib/libc/include/sys/errno.h" 1 3
# 11 "/tools/toolchain/newlib/newlib/libc/include/sys/errno.h" 3
# 1 "/tools/toolchain/newlib/newlib/libc/include/sys/reent.h" 1 3
# 13 "/tools/toolchain/newlib/newlib/libc/include/sys/reent.h" 3
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
# 14 "/tools/toolchain/newlib/newlib/libc/include/sys/reent.h" 2 3
# 1 "/home/project/codasip_urisc_v/work/ia/sdk/lib/clang/9.0.1/include/stddef.h" 1 3
# 35 "/home/project/codasip_urisc_v/work/ia/sdk/lib/clang/9.0.1/include/stddef.h" 3
typedef int ptrdiff_t;
# 46 "/home/project/codasip_urisc_v/work/ia/sdk/lib/clang/9.0.1/include/stddef.h" 3
typedef unsigned int size_t;
# 74 "/home/project/codasip_urisc_v/work/ia/sdk/lib/clang/9.0.1/include/stddef.h" 3
typedef int wchar_t;
# 102 "/home/project/codasip_urisc_v/work/ia/sdk/lib/clang/9.0.1/include/stddef.h" 3
# 1 "/home/project/codasip_urisc_v/work/ia/sdk/lib/clang/9.0.1/include/__stddef_max_align_t.h" 1 3
# 19 "/home/project/codasip_urisc_v/work/ia/sdk/lib/clang/9.0.1/include/__stddef_max_align_t.h" 3
typedef struct {
  long long __clang_max_align_nonce1
      __attribute__((__aligned__(__alignof__(long long))));
  long double __clang_max_align_nonce2
      __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
# 103 "/home/project/codasip_urisc_v/work/ia/sdk/lib/clang/9.0.1/include/stddef.h" 2 3
# 15 "/tools/toolchain/newlib/newlib/libc/include/sys/reent.h" 2 3
# 1 "/tools/toolchain/newlib/newlib/libc/include/sys/_types.h" 1 3
# 24 "/tools/toolchain/newlib/newlib/libc/include/sys/_types.h" 3
# 1 "/home/project/codasip_urisc_v/work/ia/sdk/lib/clang/9.0.1/include/stddef.h" 1 3
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
# 16 "/tools/toolchain/newlib/newlib/libc/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 34 "/tools/toolchain/newlib/newlib/libc/include/sys/reent.h" 3
# 1 "/tools/toolchain/newlib/newlib/libc/include/sys/lock.h" 1 3
# 11 "/tools/toolchain/newlib/newlib/libc/include/sys/lock.h" 3
typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 35 "/tools/toolchain/newlib/newlib/libc/include/sys/reent.h" 2 3
typedef _LOCK_RECURSIVE_T _flock_t;







struct _reent;

struct __locale_t;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 98 "/tools/toolchain/newlib/newlib/libc/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 122 "/tools/toolchain/newlib/newlib/libc/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 186 "/tools/toolchain/newlib/newlib/libc/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (*_read) (struct _reent *, void *,
        char *, int);
  int (*_write) (struct _reent *, void *,
         const char *,
         int);
  _fpos_t (*_seek) (struct _reent *, void *, _fpos_t, int);
  int (*_close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 292 "/tools/toolchain/newlib/newlib/libc/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 324 "/tools/toolchain/newlib/newlib/libc/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 613 "/tools/toolchain/newlib/newlib/libc/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];


  int _unspecified_locale_info;
  struct __locale_t *_locale;

  int __sdidinit;

  void (*__cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;



  struct _atexit *_atexit;
  struct _atexit _atexit0;



  void (**(_sig_func))(int);




  struct _glue __sglue;

  __FILE __sf[3];

};
# 819 "/tools/toolchain/newlib/newlib/libc/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);
# 12 "/tools/toolchain/newlib/newlib/libc/include/sys/errno.h" 2 3



extern int *__errno (void);




extern const char * const _sys_errlist[];
extern int _sys_nerr;
# 10 "/tools/toolchain/newlib/newlib/libc/include/errno.h" 2 3
# 2 "/tools/toolchain/newlib/newlib/libc/stdlib/wctomb_r.c" 2
# 1 "/tools/toolchain/newlib/newlib/libc/include/stdlib.h" 1 3
# 10 "/tools/toolchain/newlib/newlib/libc/include/stdlib.h" 3
# 1 "/tools/toolchain/newlib/newlib/libc/include/machine/ieeefp.h" 1 3
# 11 "/tools/toolchain/newlib/newlib/libc/include/stdlib.h" 2 3





# 1 "/home/project/codasip_urisc_v/work/ia/sdk/lib/clang/9.0.1/include/stddef.h" 1 3
# 17 "/tools/toolchain/newlib/newlib/libc/include/stdlib.h" 2 3


# 1 "/tools/toolchain/newlib/newlib/libc/include/sys/cdefs.h" 1 3
# 47 "/tools/toolchain/newlib/newlib/libc/include/sys/cdefs.h" 3
# 1 "/home/project/codasip_urisc_v/work/ia/sdk/lib/clang/9.0.1/include/stddef.h" 1 3
# 48 "/tools/toolchain/newlib/newlib/libc/include/sys/cdefs.h" 2 3
# 20 "/tools/toolchain/newlib/newlib/libc/include/stdlib.h" 2 3
# 1 "/tools/toolchain/newlib/newlib/libc/include/machine/stdlib.h" 1 3
# 21 "/tools/toolchain/newlib/newlib/libc/include/stdlib.h" 2 3

# 1 "/tools/toolchain/newlib/newlib/libc/include/alloca.h" 1 3
# 23 "/tools/toolchain/newlib/newlib/libc/include/stdlib.h" 2 3
# 35 "/tools/toolchain/newlib/newlib/libc/include/stdlib.h" 3
typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;


typedef struct
{
  long long int quot;
  long long int rem;
} lldiv_t;




typedef int (*__compar_fn_t) (const void *, const void *);







int __locale_mb_cur_max (void);



void abort (void) __attribute__ ((__noreturn__));
int abs (int);

__uint32_t arc4random (void);
__uint32_t arc4random_uniform (__uint32_t);
void arc4random_buf (void *, size_t);

int atexit (void (*__func)(void));
double atof (const char *__nptr);

float atoff (const char *__nptr);

int atoi (const char *__nptr);
int _atoi_r (struct _reent *, const char *__nptr);
long atol (const char *__nptr);
long _atol_r (struct _reent *, const char *__nptr);
void * bsearch (const void *__key,
         const void *__base,
         size_t __nmemb,
         size_t __size,
         __compar_fn_t _compar);
void *calloc(size_t, size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__))
      __attribute__((__alloc_size__(1, 2))) ;
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((__noreturn__));
void free (void *) ;
char * getenv (const char *__string);
char * _getenv_r (struct _reent *, const char *__string);



char * _findenv (const char *, int *);
char * _findenv_r (struct _reent *, const char *, int *);

extern char *suboptarg;
int getsubopt (char **, char * const *, char **);

long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void *malloc(size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(1))) ;
int mblen (const char *, size_t);
int _mblen_r (struct _reent *, const char *, size_t, _mbstate_t *);
int mbtowc (wchar_t *restrict, const char *restrict, size_t);
int _mbtowc_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, _mbstate_t *);
size_t mbstowcs (wchar_t *restrict, const char *restrict, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
size_t wcstombs (char *restrict, const wchar_t *restrict, size_t);
size_t _wcstombs_r (struct _reent *, char *restrict, const wchar_t *restrict, size_t, _mbstate_t *);


char * mkdtemp (char *);






int mkstemp (char *);


int mkstemps (char *, int);






char * mktemp (char *);



char * _mkdtemp_r (struct _reent *, char *);
int _mkostemp_r (struct _reent *, char *, int);
int _mkostemps_r (struct _reent *, char *, int, int);
int _mkstemp_r (struct _reent *, char *);
int _mkstemps_r (struct _reent *, char *, int);




char * _mktemp_r (struct _reent *, char *);

void qsort (void *__base, size_t __nmemb, size_t __size, __compar_fn_t _compar);
int rand (void);
void *realloc(void *, size_t) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(2))) ;

void *reallocarray(void *, size_t, size_t) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(2, 3)));
void *reallocf(void *, size_t) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(2)));


char * realpath (const char *restrict path, char *restrict resolved_path);


int rpmatch (const char *response);




void srand (unsigned __seed);
double strtod (const char *restrict __n, char **restrict __end_PTR);
double _strtod_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR);

float strtof (const char *restrict __n, char **restrict __end_PTR);







long strtol (const char *restrict __n, char **restrict __end_PTR, int __base);
long _strtol_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long strtoul (const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
# 201 "/tools/toolchain/newlib/newlib/libc/include/stdlib.h" 3
int system (const char *__string);


long a64l (const char *__input);
char * l64a (long __input);
char * _l64a_r (struct _reent *,long __input);


int on_exit (void (*__func)(int, void *),void *__arg);


void _Exit (int __status) __attribute__ ((__noreturn__));


int putenv (char *__string);

int _putenv_r (struct _reent *, char *__string);
void * _reallocf_r (struct _reent *, void *, size_t);

int setenv (const char *__string, const char *__value, int __overwrite);

int _setenv_r (struct _reent *, const char *__string, const char *__value, int __overwrite);
# 234 "/tools/toolchain/newlib/newlib/libc/include/stdlib.h" 3
char * __itoa (int, char *, int);
char * __utoa (unsigned, char *, int);

char * itoa (int, char *, int);
char * utoa (unsigned, char *, int);


int rand_r (unsigned *__seed);



double drand48 (void);
double _drand48_r (struct _reent *);
double erand48 (unsigned short [3]);
double _erand48_r (struct _reent *, unsigned short [3]);
long jrand48 (unsigned short [3]);
long _jrand48_r (struct _reent *, unsigned short [3]);
void lcong48 (unsigned short [7]);
void _lcong48_r (struct _reent *, unsigned short [7]);
long lrand48 (void);
long _lrand48_r (struct _reent *);
long mrand48 (void);
long _mrand48_r (struct _reent *);
long nrand48 (unsigned short [3]);
long _nrand48_r (struct _reent *, unsigned short [3]);
unsigned short *
       seed48 (unsigned short [3]);
unsigned short *
       _seed48_r (struct _reent *, unsigned short [3]);
void srand48 (long);
void _srand48_r (struct _reent *, long);


char * initstate (unsigned, char *, size_t);
long random (void);
char * setstate (char *);
void srandom (unsigned);


long long atoll (const char *__nptr);

long long _atoll_r (struct _reent *, const char *__nptr);

long long llabs (long long);
lldiv_t lldiv (long long __numer, long long __denom);
long long strtoll (const char *restrict __n, char **restrict __end_PTR, int __base);

long long _strtoll_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long strtoull (const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long _strtoull_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);



void cfree (void *);


int unsetenv (const char *__string);

int _unsetenv_r (struct _reent *, const char *__string);



int posix_memalign (void **, size_t, size_t) __attribute__((__nonnull__ (1)))
     __attribute__((__warn_unused_result__));


char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t) ;
void * _calloc_r (struct _reent *, size_t, size_t) ;
void _free_r (struct _reent *, void *) ;
void * _realloc_r (struct _reent *, void *, size_t) ;
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);
# 322 "/tools/toolchain/newlib/newlib/libc/include/stdlib.h" 3
void qsort_r (void *__base, size_t __nmemb, size_t __size, void *__thunk, int (*_compar)(void *, const void *, const void *))
             __asm__ ("" "__bsd_qsort_r");
# 332 "/tools/toolchain/newlib/newlib/libc/include/stdlib.h" 3
extern long double _strtold_r (struct _reent *, const char *restrict, char **restrict);

extern long double strtold (const char *restrict, char **restrict);







void * aligned_alloc(size_t, size_t) __attribute__((__malloc__)) __attribute__((__alloc_align__(1)))
     __attribute__((__alloc_size__(2))) __attribute__((__warn_unused_result__));
int at_quick_exit(void (*)(void));
_Noreturn void
 quick_exit(int);
# 3 "/tools/toolchain/newlib/newlib/libc/stdlib/wctomb_r.c" 2
# 1 "/tools/toolchain/newlib/newlib/libc/include/string.h" 1 3
# 17 "/tools/toolchain/newlib/newlib/libc/include/string.h" 3
# 1 "/home/project/codasip_urisc_v/work/ia/sdk/lib/clang/9.0.1/include/stddef.h" 1 3
# 18 "/tools/toolchain/newlib/newlib/libc/include/string.h" 2 3


# 1 "/tools/toolchain/newlib/newlib/libc/include/sys/_locale.h" 1 3








struct __locale_t;
typedef struct __locale_t *locale_t;
# 21 "/tools/toolchain/newlib/newlib/libc/include/string.h" 2 3



# 1 "/tools/toolchain/newlib/newlib/libc/include/strings.h" 1 3
# 40 "/tools/toolchain/newlib/newlib/libc/include/strings.h" 3
typedef __size_t size_t;





int bcmp(const void *, const void *, size_t) __attribute__((__pure__));
void bcopy(const void *, void *, size_t);
void bzero(void *, size_t);


void explicit_bzero(void *, size_t);


int ffs(int) __attribute__((__const__));


int ffsl(long) __attribute__((__const__));
int ffsll(long long) __attribute__((__const__));
int fls(int) __attribute__((__const__));
int flsl(long) __attribute__((__const__));
int flsll(long long) __attribute__((__const__));


char *index(const char *, int) __attribute__((__pure__));
char *rindex(const char *, int) __attribute__((__pure__));

int strcasecmp(const char *, const char *) __attribute__((__pure__));
int strncasecmp(const char *, const char *, size_t) __attribute__((__pure__));


int strcasecmp_l (const char *, const char *, locale_t);
int strncasecmp_l (const char *, const char *, size_t, locale_t);
# 25 "/tools/toolchain/newlib/newlib/libc/include/string.h" 2 3




void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *restrict, const void *restrict, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *restrict, const char *restrict);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *restrict, const char *restrict);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *restrict, const char *restrict, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *restrict, const char *restrict, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);

char *strtok (char *restrict, const char *restrict);

size_t strxfrm (char *restrict, const char *restrict, size_t);


int strcoll_l (const char *, const char *, locale_t);
char *strerror_l (int, locale_t);
size_t strxfrm_l (char *restrict, const char *restrict, size_t, locale_t);


char *strtok_r (char *restrict, const char *restrict, char **restrict);


int timingsafe_bcmp (const void *, const void *, size_t);
int timingsafe_memcmp (const void *, const void *, size_t);


void * memccpy (void *restrict, const void *restrict, int, size_t);
# 76 "/tools/toolchain/newlib/newlib/libc/include/string.h" 3
char *stpcpy (char *restrict, const char *restrict);
char *stpncpy (char *restrict, const char *restrict, size_t);






char *strdup (const char *) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

char *_strdup_r (struct _reent *, const char *);

char *strndup (const char *, size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

char *_strndup_r (struct _reent *, const char *, size_t);
# 100 "/tools/toolchain/newlib/newlib/libc/include/string.h" 3
int strerror_r (int, char *, size_t)

             __asm__ ("" "__xpg_strerror_r")

  ;







char * _strerror_r (struct _reent *, int, int, int *);


size_t strlcat (char *, const char *, size_t);
size_t strlcpy (char *, const char *, size_t);


size_t strnlen (const char *, size_t);


char *strsep (char **, const char *);


char *strnstr(const char *, const char *, size_t) __attribute__((__pure__));



char *strlwr (char *);
char *strupr (char *);



char *strsignal (int __signo);
# 175 "/tools/toolchain/newlib/newlib/libc/include/string.h" 3
# 1 "/tools/toolchain/newlib/newlib/libc/include/sys/string.h" 1 3
# 176 "/tools/toolchain/newlib/newlib/libc/include/string.h" 2 3
# 4 "/tools/toolchain/newlib/newlib/libc/stdlib/wctomb_r.c" 2
# 1 "/tools/toolchain/newlib/newlib/libc/include/wchar.h" 1 3
# 12 "/tools/toolchain/newlib/newlib/libc/include/wchar.h" 3
# 1 "/home/project/codasip_urisc_v/work/ia/sdk/lib/clang/9.0.1/include/stddef.h" 1 3
# 13 "/tools/toolchain/newlib/newlib/libc/include/wchar.h" 2 3
# 22 "/tools/toolchain/newlib/newlib/libc/include/wchar.h" 3
# 1 "/home/project/codasip_urisc_v/work/ia/sdk/lib/clang/9.0.1/include/stdarg.h" 1 3
# 14 "/home/project/codasip_urisc_v/work/ia/sdk/lib/clang/9.0.1/include/stdarg.h" 3
typedef __builtin_va_list va_list;
# 32 "/home/project/codasip_urisc_v/work/ia/sdk/lib/clang/9.0.1/include/stdarg.h" 3
typedef __builtin_va_list __gnuc_va_list;
# 23 "/tools/toolchain/newlib/newlib/libc/include/wchar.h" 2 3





typedef __gnuc_va_list va_list;
# 78 "/tools/toolchain/newlib/newlib/libc/include/wchar.h" 3
typedef __FILE FILE;






struct tm;



typedef _mbstate_t mbstate_t;


wint_t btowc (int);
int wctob (wint_t);
size_t mbrlen (const char *restrict, size_t, mbstate_t *restrict);
size_t mbrtowc (wchar_t *restrict, const char *restrict, size_t,
      mbstate_t *restrict);
size_t _mbrtowc_r (struct _reent *, wchar_t * , const char * ,
   size_t, mbstate_t *);
int mbsinit (const mbstate_t *);

size_t mbsnrtowcs (wchar_t *restrict, const char **restrict,
    size_t, size_t, mbstate_t *restrict);

size_t _mbsnrtowcs_r (struct _reent *, wchar_t * , const char ** ,
   size_t, size_t, mbstate_t *);
size_t mbsrtowcs (wchar_t *restrict, const char **restrict, size_t,
    mbstate_t *restrict);
size_t _mbsrtowcs_r (struct _reent *, wchar_t * , const char ** , size_t, mbstate_t *);
size_t wcrtomb (char *restrict, wchar_t, mbstate_t *restrict);
size_t _wcrtomb_r (struct _reent *, char * , wchar_t, mbstate_t *);

size_t wcsnrtombs (char *restrict, const wchar_t **restrict,
    size_t, size_t, mbstate_t *restrict);

size_t _wcsnrtombs_r (struct _reent *, char * , const wchar_t ** ,
   size_t, size_t, mbstate_t *);
size_t wcsrtombs (char *restrict, const wchar_t **restrict,
    size_t, mbstate_t *restrict);
size_t _wcsrtombs_r (struct _reent *, char * , const wchar_t ** ,
   size_t, mbstate_t *);

int wcscasecmp (const wchar_t *, const wchar_t *);

wchar_t *wcscat (wchar_t *restrict, const wchar_t *restrict);
wchar_t *wcschr (const wchar_t *, wchar_t);
int wcscmp (const wchar_t *, const wchar_t *);
int wcscoll (const wchar_t *, const wchar_t *);
wchar_t *wcscpy (wchar_t *restrict, const wchar_t *restrict);

wchar_t *wcpcpy (wchar_t *restrict,
     const wchar_t *restrict);
wchar_t *wcsdup (const wchar_t *) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

wchar_t *_wcsdup_r (struct _reent *, const wchar_t * );
size_t wcscspn (const wchar_t *, const wchar_t *);
size_t wcsftime (wchar_t *restrict, size_t,
    const wchar_t *restrict, const struct tm *restrict);




size_t wcslcat (wchar_t *, const wchar_t *, size_t);
size_t wcslcpy (wchar_t *, const wchar_t *, size_t);
size_t wcslen (const wchar_t *);

int wcsncasecmp (const wchar_t *, const wchar_t *, size_t);

wchar_t *wcsncat (wchar_t *restrict,
     const wchar_t *restrict, size_t);
int wcsncmp (const wchar_t *, const wchar_t *, size_t);
wchar_t *wcsncpy (wchar_t *restrict,
     const wchar_t *restrict, size_t);

wchar_t *wcpncpy (wchar_t *restrict,
     const wchar_t *restrict, size_t);
size_t wcsnlen (const wchar_t *, size_t);

wchar_t *wcspbrk (const wchar_t *, const wchar_t *);
wchar_t *wcsrchr (const wchar_t *, wchar_t);
size_t wcsspn (const wchar_t *, const wchar_t *);
wchar_t *wcsstr (const wchar_t *restrict,
     const wchar_t *restrict);
wchar_t *wcstok (wchar_t *restrict, const wchar_t *restrict,
     wchar_t **restrict);
double wcstod (const wchar_t *restrict, wchar_t **restrict);
double _wcstod_r (struct _reent *, const wchar_t *, wchar_t **);

float wcstof (const wchar_t *restrict, wchar_t **restrict);

float _wcstof_r (struct _reent *, const wchar_t *, wchar_t **);



size_t wcsxfrm (wchar_t *restrict, const wchar_t *restrict,
    size_t);

extern int wcscasecmp_l (const wchar_t *, const wchar_t *, locale_t);
extern int wcsncasecmp_l (const wchar_t *, const wchar_t *, size_t, locale_t);
extern int wcscoll_l (const wchar_t *, const wchar_t *, locale_t);
extern size_t wcsxfrm_l (wchar_t *restrict, const wchar_t *restrict, size_t,
    locale_t);





wchar_t *wmemchr (const wchar_t *, wchar_t, size_t);
int wmemcmp (const wchar_t *, const wchar_t *, size_t);
wchar_t *wmemcpy (wchar_t *restrict, const wchar_t *restrict,
     size_t);
wchar_t *wmemmove (wchar_t *, const wchar_t *, size_t);




wchar_t *wmemset (wchar_t *, wchar_t, size_t);

long wcstol (const wchar_t *restrict, wchar_t **restrict, int);

long long wcstoll (const wchar_t *restrict, wchar_t **restrict,
      int);

unsigned long wcstoul (const wchar_t *restrict, wchar_t **restrict,
       int);

unsigned long long wcstoull (const wchar_t *restrict,
         wchar_t **restrict, int);

long _wcstol_r (struct _reent *, const wchar_t *, wchar_t **, int);
long long _wcstoll_r (struct _reent *, const wchar_t *, wchar_t **, int);
unsigned long _wcstoul_r (struct _reent *, const wchar_t *, wchar_t **, int);
unsigned long long _wcstoull_r (struct _reent *, const wchar_t *, wchar_t **, int);

long double wcstold (const wchar_t *, wchar_t **);
# 230 "/tools/toolchain/newlib/newlib/libc/include/wchar.h" 3
wint_t fgetwc (__FILE *);
wchar_t *fgetws (wchar_t *restrict, int, __FILE *restrict);
wint_t fputwc (wchar_t, __FILE *);
int fputws (const wchar_t *restrict, __FILE *restrict);

int fwide (__FILE *, int);

wint_t getwc (__FILE *);
wint_t getwchar (void);
wint_t putwc (wchar_t, __FILE *);
wint_t putwchar (wchar_t);
wint_t ungetwc (wint_t wc, __FILE *);

wint_t _fgetwc_r (struct _reent *, __FILE *);
wint_t _fgetwc_unlocked_r (struct _reent *, __FILE *);
wchar_t *_fgetws_r (struct _reent *, wchar_t *, int, __FILE *);
wchar_t *_fgetws_unlocked_r (struct _reent *, wchar_t *, int, __FILE *);
wint_t _fputwc_r (struct _reent *, wchar_t, __FILE *);
wint_t _fputwc_unlocked_r (struct _reent *, wchar_t, __FILE *);
int _fputws_r (struct _reent *, const wchar_t *, __FILE *);
int _fputws_unlocked_r (struct _reent *, const wchar_t *, __FILE *);
int _fwide_r (struct _reent *, __FILE *, int);
wint_t _getwc_r (struct _reent *, __FILE *);
wint_t _getwc_unlocked_r (struct _reent *, __FILE *);
wint_t _getwchar_r (struct _reent *);
wint_t _getwchar_unlocked_r (struct _reent *);
wint_t _putwc_r (struct _reent *, wchar_t, __FILE *);
wint_t _putwc_unlocked_r (struct _reent *, wchar_t, __FILE *);
wint_t _putwchar_r (struct _reent *, wchar_t);
wint_t _putwchar_unlocked_r (struct _reent *, wchar_t);
wint_t _ungetwc_r (struct _reent *, wint_t wc, __FILE *);
# 274 "/tools/toolchain/newlib/newlib/libc/include/wchar.h" 3
__FILE *open_wmemstream (wchar_t **, size_t *);

__FILE *_open_wmemstream_r (struct _reent *, wchar_t **, size_t *);
# 287 "/tools/toolchain/newlib/newlib/libc/include/wchar.h" 3
int fwprintf (__FILE *restrict, const wchar_t *restrict, ...);
int swprintf (wchar_t *restrict, size_t,
   const wchar_t *restrict, ...);
int vfwprintf (__FILE *restrict, const wchar_t *restrict,
   __gnuc_va_list);
int vswprintf (wchar_t *restrict, size_t,
   const wchar_t *restrict, __gnuc_va_list);
int vwprintf (const wchar_t *restrict, __gnuc_va_list);
int wprintf (const wchar_t *restrict, ...);


int _fwprintf_r (struct _reent *, __FILE *, const wchar_t *, ...);
int _swprintf_r (struct _reent *, wchar_t *, size_t, const wchar_t *, ...);
int _vfwprintf_r (struct _reent *, __FILE *, const wchar_t *, __gnuc_va_list);
int _vswprintf_r (struct _reent *, wchar_t *, size_t, const wchar_t *, __gnuc_va_list);
int _vwprintf_r (struct _reent *, const wchar_t *, __gnuc_va_list);
int _wprintf_r (struct _reent *, const wchar_t *, ...);


int fwscanf (__FILE *restrict, const wchar_t *restrict, ...);
int swscanf (const wchar_t *restrict,
   const wchar_t *restrict, ...);
int vfwscanf (__FILE *restrict, const wchar_t *restrict,
   __gnuc_va_list);
int vswscanf (const wchar_t *restrict, const wchar_t *restrict,
   __gnuc_va_list);
int vwscanf (const wchar_t *restrict, __gnuc_va_list);
int wscanf (const wchar_t *restrict, ...);


int _fwscanf_r (struct _reent *, __FILE *, const wchar_t *, ...);
int _swscanf_r (struct _reent *, const wchar_t *, const wchar_t *, ...);
int _vfwscanf_r (struct _reent *, __FILE *, const wchar_t *, __gnuc_va_list);
int _vswscanf_r (struct _reent *, const wchar_t *, const wchar_t *, __gnuc_va_list);
int _vwscanf_r (struct _reent *, const wchar_t *, __gnuc_va_list);
int _wscanf_r (struct _reent *, const wchar_t *, ...);
# 5 "/tools/toolchain/newlib/newlib/libc/stdlib/wctomb_r.c" 2
# 1 "/tools/toolchain/newlib/newlib/libc/include/locale.h" 1 3
# 14 "/tools/toolchain/newlib/newlib/libc/include/locale.h" 3
# 1 "/home/project/codasip_urisc_v/work/ia/sdk/lib/clang/9.0.1/include/stddef.h" 1 3
# 15 "/tools/toolchain/newlib/newlib/libc/include/locale.h" 2 3
# 42 "/tools/toolchain/newlib/newlib/libc/include/locale.h" 3
struct lconv
{
  char *decimal_point;
  char *thousands_sep;
  char *grouping;
  char *int_curr_symbol;
  char *currency_symbol;
  char *mon_decimal_point;
  char *mon_thousands_sep;
  char *mon_grouping;
  char *positive_sign;
  char *negative_sign;
  char int_frac_digits;
  char frac_digits;
  char p_cs_precedes;
  char p_sep_by_space;
  char n_cs_precedes;
  char n_sep_by_space;
  char p_sign_posn;
  char n_sign_posn;
  char int_n_cs_precedes;
  char int_n_sep_by_space;
  char int_n_sign_posn;
  char int_p_cs_precedes;
  char int_p_sep_by_space;
  char int_p_sign_posn;
};

struct _reent;
char *_setlocale_r (struct _reent *, int, const char *);
struct lconv *_localeconv_r (struct _reent *);

struct __locale_t *_newlocale_r (struct _reent *, int, const char *,
     struct __locale_t *);
void _freelocale_r (struct _reent *, struct __locale_t *);
struct __locale_t *_duplocale_r (struct _reent *, struct __locale_t *);
struct __locale_t *_uselocale_r (struct _reent *, struct __locale_t *);



char *setlocale (int, const char *);
struct lconv *localeconv (void);


locale_t newlocale (int, const char *, locale_t);
void freelocale (locale_t);
locale_t duplocale (locale_t);
locale_t uselocale (locale_t);
# 6 "/tools/toolchain/newlib/newlib/libc/stdlib/wctomb_r.c" 2
# 1 "/tools/toolchain/newlib/newlib/libc/stdlib/./mbctype.h" 1
# 10 "/tools/toolchain/newlib/newlib/libc/stdlib/./mbctype.h"
int _issjis1 (int c);
int _issjis2 (int c);
int _iseucjp (int c);
int _isjis (int c);
# 7 "/tools/toolchain/newlib/newlib/libc/stdlib/wctomb_r.c" 2
# 1 "/tools/toolchain/newlib/newlib/libc/stdlib/./local.h" 1





char * _gcvt (struct _reent *, double , int , char *, char, int);


# 1 "/tools/toolchain/newlib/newlib/libc/stdlib/./../locale/setlocale.h" 1
# 34 "/tools/toolchain/newlib/newlib/libc/stdlib/./../locale/setlocale.h"
# 1 "/tools/toolchain/newlib/newlib/libc/include/limits.h" 1 3





# 1 "/tools/toolchain/newlib/newlib/libc/include/sys/syslimits.h" 1 3
# 7 "/tools/toolchain/newlib/newlib/libc/include/limits.h" 2 3
# 132 "/tools/toolchain/newlib/newlib/libc/include/limits.h" 3
# 1 "/home/project/codasip_urisc_v/work/ia/sdk/lib/clang/9.0.1/include/limits.h" 1 3
# 133 "/tools/toolchain/newlib/newlib/libc/include/limits.h" 2 3
# 35 "/tools/toolchain/newlib/newlib/libc/stdlib/./../locale/setlocale.h" 2
# 57 "/tools/toolchain/newlib/newlib/libc/stdlib/./../locale/setlocale.h"
struct lc_ctype_T
{
  const char *codeset;
  const char *mb_cur_max;




};
extern const struct lc_ctype_T _C_ctype_locale;

struct lc_monetary_T
{
  const char *int_curr_symbol;
  const char *currency_symbol;
  const char *mon_decimal_point;
  const char *mon_thousands_sep;
  const char *mon_grouping;
  const char *positive_sign;
  const char *negative_sign;
  const char *int_frac_digits;
  const char *frac_digits;
  const char *p_cs_precedes;
  const char *p_sep_by_space;
  const char *n_cs_precedes;
  const char *n_sep_by_space;
  const char *p_sign_posn;
  const char *n_sign_posn;
# 100 "/tools/toolchain/newlib/newlib/libc/stdlib/./../locale/setlocale.h"
};
extern const struct lc_monetary_T _C_monetary_locale;

struct lc_numeric_T
{
  const char *decimal_point;
  const char *thousands_sep;
  const char *grouping;





};
extern const struct lc_numeric_T _C_numeric_locale;

struct lc_time_T
{
  const char *mon[12];
  const char *month[12];
  const char *wday[7];
  const char *weekday[7];
  const char *X_fmt;
  const char *x_fmt;
  const char *c_fmt;
  const char *am_pm[2];
  const char *date_fmt;
  const char *alt_month[12];
  const char *md_order;
  const char *ampm_fmt;
  const char *era;
  const char *era_d_fmt;
  const char *era_d_t_fmt;
  const char *era_t_fmt;
  const char *alt_digits;
# 153 "/tools/toolchain/newlib/newlib/libc/stdlib/./../locale/setlocale.h"
};
extern const struct lc_time_T _C_time_locale;

struct lc_messages_T
{
  const char *yesexpr;
  const char *noexpr;
  const char *yesstr;
  const char *nostr;







};
extern const struct lc_messages_T _C_messages_locale;

struct __lc_cats
{
  const void *ptr;
  char *buf;
};

struct __locale_t
{
  char categories[7][31 + 1];
  int (*wctomb) (struct _reent *, char *, wchar_t,
       mbstate_t *);
  int (*mbtowc) (struct _reent *, wchar_t *,
       const char *, size_t, mbstate_t *);
  int cjk_lang;
  char *ctype_ptr;
  struct lconv lconv;

  char mb_cur_max[2];
  char ctype_codeset[31 + 1];
  char message_codeset[31 + 1];



};






extern struct lconv *__localeconv_l (struct __locale_t *locale);

extern size_t _wcsnrtombs_l (struct _reent *, char *, const wchar_t **,
        size_t, size_t, mbstate_t *, struct __locale_t *);



static __inline__ struct __locale_t *
__get_global_locale ()
{
  extern struct __locale_t __global_locale;
  return &__global_locale;
}


static __inline__ struct __locale_t *
__get_locale_r (struct _reent *r)
{



  return __get_global_locale();

}





static __inline__ struct __locale_t *
__get_current_locale (void)
{



  return __get_global_locale();

}



static __inline__ struct __locale_t *
__get_C_locale (void)
{

  return __get_global_locale ();




}
# 284 "/tools/toolchain/newlib/newlib/libc/stdlib/./../locale/setlocale.h"
static __inline__ int
__locale_mb_cur_max_l (struct __locale_t *locale)
{



  return locale->mb_cur_max[0];

}
# 347 "/tools/toolchain/newlib/newlib/libc/stdlib/./../locale/setlocale.h"
static __inline__ const struct lc_monetary_T *
__get_monetary_locale (struct __locale_t *locale)
{
  return &_C_monetary_locale;
}

static __inline__ const struct lc_monetary_T *
__get_current_monetary_locale (void)
{
  return &_C_monetary_locale;
}

static __inline__ const struct lc_numeric_T *
__get_numeric_locale (struct __locale_t *locale)
{
  return &_C_numeric_locale;
}

static __inline__ const struct lc_numeric_T *
__get_current_numeric_locale (void)
{
  return &_C_numeric_locale;
}

static __inline__ const struct lc_time_T *
__get_time_locale (struct __locale_t *locale)
{
  return &_C_time_locale;
}

static __inline__ const struct lc_time_T *
__get_current_time_locale (void)
{
  return &_C_time_locale;
}

static __inline__ const struct lc_messages_T *
__get_messages_locale (struct __locale_t *locale)
{
  return &_C_messages_locale;
}

static __inline__ const struct lc_messages_T *
__get_current_messages_locale (void)
{
  return &_C_messages_locale;
}


static __inline__ const char *
__locale_charset (struct __locale_t *locale)
{



  return locale->ctype_codeset;

}

static __inline__ const char *
__current_locale_charset (void)
{



  return __get_current_locale ()->ctype_codeset;

}

static __inline__ const char *
__locale_msgcharset (void)
{



  return (char *) __get_current_locale ()->message_codeset;

}

static __inline__ int
__locale_cjk_lang (void)
{
  return __get_current_locale ()->cjk_lang;
}

int __ctype_load_locale (struct __locale_t *, const char *, void *,
    const char *, int);
int __monetary_load_locale (struct __locale_t *, const char *, void *,
       const char *);
int __numeric_load_locale (struct __locale_t *, const char *, void *,
      const char *);
int __time_load_locale (struct __locale_t *, const char *, void *,
   const char *);
int __messages_load_locale (struct __locale_t *, const char *, void *,
       const char *);
# 9 "/tools/toolchain/newlib/newlib/libc/stdlib/./local.h" 2





typedef int wctomb_f (struct _reent *, char *, wchar_t, mbstate_t *);
typedef wctomb_f *wctomb_p;

wctomb_f __ascii_wctomb;
# 34 "/tools/toolchain/newlib/newlib/libc/stdlib/./local.h"
typedef int mbtowc_f (struct _reent *, wchar_t *, const char *, size_t,
        mbstate_t *);
typedef mbtowc_f *mbtowc_p;

mbtowc_f __ascii_mbtowc;
# 55 "/tools/toolchain/newlib/newlib/libc/stdlib/./local.h"
extern wchar_t __iso_8859_conv[14][0x60];
int __iso_8859_val_index (int);
int __iso_8859_index (const char *);

extern wchar_t __cp_conv[][0x80];
int __cp_val_index (int);
int __cp_index (const char *);
# 8 "/tools/toolchain/newlib/newlib/libc/stdlib/wctomb_r.c" 2

int
_wctomb_r (struct _reent *r,
        char *s,
        wchar_t _wchar,
        mbstate_t *state)
{
  return (__get_current_locale ()->wctomb) (r, s, _wchar, state);
}

int
__ascii_wctomb (struct _reent *r,
        char *s,
        wchar_t _wchar,
        mbstate_t *state)
{



  wint_t wchar = _wchar;

  if (s == ((void*)0))
    return 0;




  if ((size_t)wchar >= 0x100)

    {
      r->_errno = 138;
      return -1;
    }

  *s = (char) wchar;
  return 1;
}
