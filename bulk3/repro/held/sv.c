#include <stdint.h>
struct pair { int32_t a; double b; };
struct pair mk(int32_t a) { struct pair p = { a, a * 1.5 }; return p; }
double take(struct pair p) { return p.a + p.b; }
struct three { int8_t x, y, z; };
struct three tri(int8_t v) { struct three t = { v, (int8_t)(v + 1), (int8_t)(v + 2) }; return t; }
int64_t sumtri(struct three t) { return t.x + t.y + t.z; }
