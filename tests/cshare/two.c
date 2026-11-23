/* tests/cshare.olang: reads the points and handles one.c makes, through shared.h's types */
#include "shared.h"

int cs_sum(const cs_point *p) { return p->x + p->y; }

int cs_twice(const cs_handle *h) { return 2 * cs_value(h); }
