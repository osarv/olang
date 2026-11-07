/* cdemo.c - the code of cdemo.h, compiled into the program importing it (X20) */
#include <stdarg.h>
#include "cdemo.h"
double cdemo_area(const cdemo_box *b) { return (b->hi.x - b->lo.x) * (b->hi.y - b->lo.y); }
void cdemo_grow(cdemo_box *b, double by) { b->hi.x += by; b->hi.y += by; }
int cdemo_sum(int n, ...) {
    va_list ap;
    va_start(ap, n);
    int t = 0;
    for (int i = 0; i < n; i++) t += va_arg(ap, int);
    va_end(ap);
    return t;
}
int cdemo_hdr_sum(const struct cdemo_hdr *h) { return h->v + h->d + h->len + h->syn + (int)h->x; }
void cdemo_hdr_set(struct cdemo_hdr *h) { h->d = -8; h->rest = 127; h->x = 4.5f; }
int cdemo_iv_b(struct cdemo_iv v) { return v.b + (int)(v.c >> 32); }
struct cdemo_iv cdemo_iv_make(void) { struct cdemo_iv v = {9, -100, 0x123456789ULL}; return v; }
