#include <stdint.h>
struct __attribute__((packed)) H { uint8_t v : 3; int8_t s : 5; uint16_t len : 13; uint64_t big : 40; };
int64_t sum(struct H h) { return h.v * 1000000 + h.s * 10000 + h.len + (int64_t)h.big * 100000000; }
void bump(struct H *h) { h->v += 1; h->s -= 1; h->len += 7; h->big += 3; }
struct H make(void) { struct H h = { 5, -9, 8000, 0xFFFFFFFFFFull }; return h; }
int64_t size(void) { return sizeof(struct H); }
