#include <stdio.h>
#include <stdarg.h>
#include <stdint.h>
struct pt { int64_t x; int64_t y; };
void bump(struct pt *p) { p->x += 1; p->y += 100; }
int64_t sum(const struct pt *p) { return p->x + p->y; }
void fillbuf(char *b, int64_t n) { for (int64_t i = 0; i < n; i++) b[i] = 'z'; }
int show(const char *fmt, ...) {
    va_list ap; va_start(ap, fmt); int r = vprintf(fmt, ap); va_end(ap); fflush(stdout); return r;
}
