/* bind.h - a small C library's header, for olang bindgen (X16) */
#ifndef BIND_H
#define BIND_H

#include <stddef.h>
#include <stdint.h>

#define BIND_VERSION 3
#define BIND_FLAG_A (1 << 0)
#define BIND_FLAG_B (1 << 4)
#define BIND_BOTH (BIND_FLAG_A | BIND_FLAG_B)
#define BIND_BIG (1LL << 40)
#define BIND_NAME "bind"
#define BIND_MAX(a, b) ((a) > (b) ? (a) : (b))

enum bind_mode { BIND_FAST, BIND_SAFE = 10, BIND_SLOW };

typedef struct { double x, y; } bind_vec;

struct bind_rect { bind_vec min; bind_vec max; char label[8]; };

typedef struct bind_counter bind_counter;

typedef int (*bind_visit)(void *ctx, int value);

bind_vec bind_add(bind_vec a, bind_vec b);
double bind_area(const struct bind_rect *r);
void bind_grow(struct bind_rect *r, double by);
int bind_sum(const int32_t *values, size_t n);
size_t bind_length(const char *text);
const char *bind_greeting(void);
int bind_open(const char *name, bind_counter **out);
void bind_count(bind_counter *c, uint8_t by);
uint64_t bind_total(const bind_counter *c);
int bind_each(const bind_counter *c, bind_visit visit, void *ctx);
void bind_close(bind_counter *c);
_Bool bind_even(enum bind_mode m, long n);
int bind_printf(const char *format, ...);
static inline int bind_twice(int x) { return 2 * x; }

#endif
