// preloaded under the chunkpool scenario: sysconf answers a machine of 8MB, so the arena's pool is bounded at 1MB (O8b);
// every other question goes to the C library's own sysconf
#define _GNU_SOURCE
#include <dlfcn.h>
#include <unistd.h>

long sysconf(int name) {
    if (name == _SC_PHYS_PAGES) return 2048;
    if (name == _SC_PAGESIZE) return 4096;
    static long (*real)(int);
    if (!real) real = (long (*)(int))dlsym(RTLD_NEXT, "sysconf");
    return real(name);
}
