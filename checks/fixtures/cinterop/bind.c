#include <stdlib.h>
#include <string.h>
#include "bind.h"

struct bind_counter { char name[16]; uint64_t total; int steps; };

bind_vec bind_add(bind_vec a, bind_vec b) { bind_vec v = { a.x + b.x, a.y + b.y }; return v; }
double bind_area(const struct bind_rect *r) { return (r->max.x - r->min.x) * (r->max.y - r->min.y); }
void bind_grow(struct bind_rect *r, double by) { r->max.x += by; r->max.y += by; r->label[0] = 'G'; }
int bind_sum(const int32_t *values, size_t n) { int s = 0; for (size_t i = 0; i < n; i++) s += values[i]; return s; }
size_t bind_length(const char *text) { return strlen(text); }
const char *bind_greeting(void) { return "hello from C"; }
int bind_open(const char *name, bind_counter **out) {
    bind_counter *c = calloc(1, sizeof *c);
    strncpy(c->name, name, sizeof c->name - 1);
    *out = c;
    return 0;
}
void bind_count(bind_counter *c, uint8_t by) { c->total += by; c->steps++; }
uint64_t bind_total(const bind_counter *c) { return c->total; }
int bind_each(const bind_counter *c, bind_visit visit, void *ctx) {
    int n = 0;
    for (int i = 0; i < c->steps; i++) n += visit(ctx, i);
    return n;
}
void bind_close(bind_counter *c) { free(c); }
_Bool bind_even(enum bind_mode m, long n) { return (n + m) % 2 == 0; }
