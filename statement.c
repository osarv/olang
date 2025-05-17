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

#define STATEMENT_ALLOC_STEP_SIZE 100
void StatementListAdd(struct statementList* sl, struct statement s) {
    if (sl->len >= sl->cap) {
        sl->cap += STATEMENT_ALLOC_STEP_SIZE;
        sl->ptr = realloc(sl->ptr, sizeof(*(sl->ptr)) * sl->cap);
    }
    sl->ptr[sl->len] = s;
    sl->len++;
}
