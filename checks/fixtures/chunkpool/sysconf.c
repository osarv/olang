// preloaded under the chunkpool scenario: sysconf answers a machine of 8MB, so the arena's pool is bounded at 1MB (O8b);
// every other question goes to the C library's own sysconf. It also turns transparent huge pages off for the process:
// budget reads its resident set, and with them on a page the program never touched is resident where the kernel
// found a huge page free for the range around it (a worker's stack, a pool chunk's untouched tail) - the tasks'
// growth read 2.7 MB in about a fifth of runs on a loaded machine, against 0.8 MB without, the bound being 2 MB
#define _GNU_SOURCE
#include <dlfcn.h>
#include <sys/prctl.h>
#include <unistd.h>

__attribute__((constructor)) static void no_huge_pages(void) { prctl(PR_SET_THP_DISABLE, 1, 0, 0, 0); }

long sysconf(int name) {
    if (name == _SC_PHYS_PAGES) return 2048;
    if (name == _SC_PAGESIZE) return 4096;
    static long (*real)(int);
    if (!real) real = (long (*)(int))dlsym(RTLD_NEXT, "sysconf");
    return real(name);
}
