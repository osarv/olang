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
