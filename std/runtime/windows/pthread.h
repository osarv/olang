/* B12f: pthread.h as olang's runtime gives it on Windows (std/runtime/windows.ll): read in place of mingw-w64's
   winpthreads header by a C import of "pthread.h" in a build for x86_64-windows. Each lock, condition and read-write
   lock is one pointer-sized word, zero when ready (as glibc's initializers are zero); a thread is its handle. */
#ifndef OLANG_WINDOWS_PTHREAD_H
#define OLANG_WINDOWS_PTHREAD_H

#include <time.h>

typedef struct { void *word; } pthread_mutex_t;
typedef struct { void *word; } pthread_cond_t;
typedef struct { void *word; } pthread_rwlock_t;
typedef struct { unsigned long long stack; } pthread_attr_t;
typedef struct { int unused; } pthread_mutexattr_t;
typedef struct { int unused; } pthread_condattr_t;
typedef unsigned long long pthread_t;

int pthread_create(pthread_t *thread, const pthread_attr_t *attr, void *(*start)(void *), void *arg);
int pthread_join(pthread_t thread, void **result);
int pthread_detach(pthread_t thread);
int pthread_attr_init(pthread_attr_t *attr);
int pthread_attr_destroy(pthread_attr_t *attr);
int pthread_attr_setstacksize(pthread_attr_t *attr, unsigned long long size);
int pthread_mutex_init(pthread_mutex_t *m, const pthread_mutexattr_t *attr);
int pthread_mutex_destroy(pthread_mutex_t *m);
int pthread_mutex_lock(pthread_mutex_t *m);
int pthread_mutex_unlock(pthread_mutex_t *m);
int pthread_rwlock_rdlock(pthread_rwlock_t *l);
int pthread_rwlock_wrlock(pthread_rwlock_t *l);
int pthread_rwlock_unlock(pthread_rwlock_t *l);
int pthread_cond_init(pthread_cond_t *c, const pthread_condattr_t *attr);
int pthread_cond_destroy(pthread_cond_t *c);
int pthread_cond_wait(pthread_cond_t *c, pthread_mutex_t *m);
int pthread_cond_timedwait(pthread_cond_t *c, pthread_mutex_t *m, const struct timespec *deadline);
int pthread_cond_broadcast(pthread_cond_t *c);
int pthread_cond_signal(pthread_cond_t *c);
int sched_yield(void);

#endif
