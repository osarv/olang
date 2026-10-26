/* fast.c - C compiled into an olang program by its import (X20), its functions inlined into olang's */
#include "fast.h"
int fast_add(int a, int b) { return a + b; }
static int fast_hidden(void) { return 7; }
long fast_total(void) { return fast_hidden(); }
