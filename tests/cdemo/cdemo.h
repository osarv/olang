/* cdemo.h - a C header the corpus imports (tests/cimport.olang, X17-X22): macros of values and of arguments, an enum,
   structs, a static inline function, a variadic function. Its code is cdemo.c, which the test imports beside it */
#ifndef CDEMO_H
#define CDEMO_H
#define CDEMO_VERSION 4
#define CDEMO_MASK ((1 << 8) - 1)
#define CDEMO_BIG (1LL << 40)
#define CDEMO_RATIO 0.25
#define CDEMO_NAME "cdemo"
#define CDEMO_SQ(x) ((x) * (x))
#define CDEMO_MAX(a, b) ((a) > (b) ? (a) : (b))
#define CDEMO_IN(x, lo, hi) ((x) >= (lo) && (x) <= (hi))
enum cdemo_color { CDEMO_RED, CDEMO_GREEN = 7, CDEMO_BLUE };
typedef struct { double x, y; } cdemo_pt;
typedef struct cdemo_box { cdemo_pt lo; cdemo_pt hi; } cdemo_box;
double cdemo_area(const cdemo_box *b);
void cdemo_grow(cdemo_box *b, double by);
int cdemo_sum(int n, ...);
static inline int cdemo_twice(int v) { return v * 2; }
/* X18, X11a: packed records of bitfields - a packed struct each, read and written by C and the program alike */
struct __attribute__((packed)) cdemo_hdr { unsigned char v : 4; signed char d : 4; unsigned short len; _Bool syn : 1; unsigned char rest : 7; float x; };
struct __attribute__((packed)) cdemo_iv { unsigned char a : 4; short b : 12; unsigned long long c : 40; };
int cdemo_hdr_sum(const struct cdemo_hdr *h);
void cdemo_hdr_set(struct cdemo_hdr *h);
int cdemo_iv_b(struct cdemo_iv v);
struct cdemo_iv cdemo_iv_make(void);
#endif
