/* fast.h - a header with a static inline function and constants, for an olang import of fast.c (X17, X20) */
#ifndef FAST_H
#define FAST_H
#define FAST_N 1000
#define FAST_TWICE(x) ((x) * 2)
static inline long fast_sq(long x) { return x * x; }
int fast_add(int a, int b);
#endif
