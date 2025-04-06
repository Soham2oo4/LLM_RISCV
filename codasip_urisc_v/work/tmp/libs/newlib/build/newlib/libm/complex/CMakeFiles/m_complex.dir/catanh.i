# 1 "/tools/toolchain/newlib/newlib/libm/complex/catanh.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 325 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/tools/toolchain/newlib/newlib/libm/complex/catanh.c" 2
# 81 "/tools/toolchain/newlib/newlib/libm/complex/catanh.c"
# 1 "/tools/toolchain/newlib/newlib/libc/include/complex.h" 1 3
# 15 "/tools/toolchain/newlib/newlib/libc/include/complex.h" 3
# 1 "/tools/toolchain/newlib/newlib/libc/include/sys/cdefs.h" 1 3
# 45 "/tools/toolchain/newlib/newlib/libc/include/sys/cdefs.h" 3
# 1 "/tools/toolchain/newlib/newlib/libc/include/machine/_default_types.h" 1 3







# 1 "/tools/toolchain/newlib/newlib/libc/include/sys/features.h" 1 3
# 28 "/tools/toolchain/newlib/newlib/libc/include/sys/features.h" 3
# 1 "/tools/toolchain/newlib/newlib/libc/include/_newlib_version.h" 1 3
# 29 "/tools/toolchain/newlib/newlib/libc/include/sys/features.h" 2 3
# 9 "/tools/toolchain/newlib/newlib/libc/include/machine/_default_types.h" 2 3
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
# 46 "/tools/toolchain/newlib/newlib/libc/include/sys/cdefs.h" 2 3

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
# 48 "/tools/toolchain/newlib/newlib/libc/include/sys/cdefs.h" 2 3
# 16 "/tools/toolchain/newlib/newlib/libc/include/complex.h" 2 3





double _Complex cacos(double _Complex);
float _Complex cacosf(float _Complex);


double _Complex casin(double _Complex);
float _Complex casinf(float _Complex);
long double _Complex casinl(long double _Complex);


double _Complex catan(double _Complex);
float _Complex catanf(float _Complex);
long double _Complex catanl(long double _Complex);


double _Complex ccos(double _Complex);
float _Complex ccosf(float _Complex);


double _Complex csin(double _Complex);
float _Complex csinf(float _Complex);


double _Complex ctan(double _Complex);
float _Complex ctanf(float _Complex);



double _Complex cacosh(double _Complex);
float _Complex cacoshf(float _Complex);


double _Complex casinh(double _Complex);
float _Complex casinhf(float _Complex);


double _Complex catanh(double _Complex);
float _Complex catanhf(float _Complex);


double _Complex ccosh(double _Complex);
float _Complex ccoshf(float _Complex);


double _Complex csinh(double _Complex);
float _Complex csinhf(float _Complex);


double _Complex ctanh(double _Complex);
float _Complex ctanhf(float _Complex);



double _Complex cexp(double _Complex);
float _Complex cexpf(float _Complex);


double _Complex clog(double _Complex);
float _Complex clogf(float _Complex);
long double _Complex clogl(long double _Complex);
# 89 "/tools/toolchain/newlib/newlib/libc/include/complex.h" 3
long double cabsl(long double _Complex) ;
double cabs(double _Complex) ;
float cabsf(float _Complex) ;


double _Complex cpow(double _Complex, double _Complex);
float _Complex cpowf(float _Complex, float _Complex);


double _Complex csqrt(double _Complex);
float _Complex csqrtf(float _Complex);
long double _Complex csqrtl(long double _Complex);



double carg(double _Complex);
float cargf(float _Complex);
long double cargl(long double _Complex);


double cimag(double _Complex);
float cimagf(float _Complex);
long double cimagl(long double _Complex);


double _Complex conj(double _Complex);
float _Complex conjf(float _Complex);


double _Complex cproj(double _Complex);
float _Complex cprojf(float _Complex);


double creal(double _Complex);
float crealf(float _Complex);
long double creall(long double _Complex);
# 82 "/tools/toolchain/newlib/newlib/libm/complex/catanh.c" 2

double _Complex
catanh(double _Complex z)
{
 double _Complex w;

 w = -1.0 * 1.0fi * catan(z * 1.0fi);
 return w;
}
