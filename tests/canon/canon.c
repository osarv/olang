/* tests/canon.olang: reads and writes the anonymous members canon.h declares, as C lays them out */
#include <stddef.h>
#include "canon.h"

void cn_attr_set(struct cn_attr *a, uint64_t flags) { a->flags = flags; }

uint64_t cn_attr_flags(const struct cn_attr *a) { return a->flags + a->id + a->after; }

long cn_point_sum(const struct cn_point *p) { return p->tag + p->b + (long)p->c + p->d + p->e + p->last; }

void cn_point_fill(struct cn_point *p) {
    p->tag = 1;
    p->b = 2;
    p->c = 3.0;
    p->d = 4;
    p->e = 5;
    p->last = 6;
}

int cn_sizes(void) { return (int)(sizeof(struct cn_attr) * 100 + sizeof(struct cn_point)); }
