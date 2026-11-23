/* cfnptr.h - a C header the corpus imports (tests/cfnptr.olang, X13a): structs of function pointers, filled by the
   program from its export fns and called by C, filled by C and called by the program, and a table reached through a
   pointer to a pointer as JNI's JNIEnv is. Its code is cfnptr.c, which the test imports beside it */
#ifndef CFNPTR_H
#define CFNPTR_H
#include <stdint.h>
/* callbacks the program fills and C calls: a null one is left uncalled */
struct cfp_ops {
    int32_t (*twice)(int32_t x);
    int64_t (*add)(int64_t a, int64_t b);
    void (*seen)(int32_t x);
    int64_t base;
};
int32_t cfp_apply(const struct cfp_ops *o, int32_t x);
/* C's own functions, given back in a struct and one alone */
struct cfp_ops cfp_c_ops(void);
int32_t (*cfp_c_twice(void))(int32_t);
/* a table reached as JNI's is: an environment is a pointer to a pointer to the table, and each function takes it */
typedef const struct cfp_iface *cfp_env;
struct cfp_iface {
    void *reserved0;
    int32_t (*version)(cfp_env *env);
    int64_t (*scaled)(cfp_env *env, int64_t a, int64_t b);
    int (*format)(cfp_env *env, const char *fmt, ...);
};
cfp_env *cfp_env_get(void);
#endif
