/* cfnptr.c - the code of cfnptr.h, compiled into the corpus's test (X20) */
#include "cfnptr.h"
int32_t cfp_apply(const struct cfp_ops *o, int32_t x) {
    if (!o->twice) return -1;
    if (o->seen) o->seen(x);
    int32_t r = o->twice(x);
    return o->add ? (int32_t)o->add(r, o->base) : r;
}
static int32_t c_triple(int32_t x) { return 3 * x; }
static int64_t c_minus(int64_t a, int64_t b) { return a - b; }
struct cfp_ops cfp_c_ops(void) { struct cfp_ops o = { c_triple, c_minus, 0, 7 }; return o; }
int32_t (*cfp_c_twice(void))(int32_t) { return c_triple; }
static int32_t iface_version(cfp_env *env) { return env && *env ? 6 : 0; }
static int64_t iface_scaled(cfp_env *env, int64_t a, int64_t b) { return env ? a * 10 + b : -1; }
static const struct cfp_iface iface = { 0, iface_version, iface_scaled, 0 };
static cfp_env the_env = &iface;
cfp_env *cfp_env_get(void) { return &the_env; }
