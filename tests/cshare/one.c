/* tests/cshare.olang: makes the points and handles shared.h declares */
#include <stdlib.h>
#include "shared.h"

struct cs_handle {
    int value;
};

static struct cs_handle handles[4];

void cs_set(cs_point *p, int x, int y) {
    p->x = x;
    p->y = y;
}

cs_handle *cs_open(int value) {
    cs_handle *h = &handles[value & 3];
    h->value = value;
    return h;
}

int cs_value(const cs_handle *h) { return h->value; }
