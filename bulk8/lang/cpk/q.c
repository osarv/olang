#include <stdint.h>
struct __attribute__((packed)) Q { uint8_t a : 8; uint16_t b; uint8_t c : 2; int32_t d : 20; int8_t pad : 2; uint8_t e; float f; _Bool g : 1; unsigned long long h : 63; };
void makeq(struct Q *p) { struct Q q = { 5, 60000, 3, -77777, -1, 200, 1.5f, 1, 0x7FFFFFFFFFFFFFFFull }; *p = q; }
int64_t sizeq(void) { return sizeof(struct Q); }
int64_t readq(struct Q *q) { return q->a + q->b * 10 + q->c * 1000000 + (int64_t)q->d * 10000000 + q->e + (int64_t)(q->f * 1000) + q->g * 7 + (int64_t)(q->h & 0xFFFF); }
