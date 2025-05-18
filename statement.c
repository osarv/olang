#include <stdlib.h>
#include <stdio.h>
#include "statement.h"
#include "error.h"

struct statement* StatementEmpty() {
    struct statement* s = malloc(sizeof(*s));
    CheckAllocPtr(s);
    *s = (struct statement){0};
    return s;
}
struct statement* StatementStackAllocation(struct var* toAlloc) {
    struct statement* s = StatementEmpty();
    s->sType = STATEMENT_STACK_ALLOCATION;
    s->nAllocBytes = TypeGetSize(toAlloc->type);
    return s;
}
