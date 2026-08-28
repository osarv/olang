#include <stdlib.h>
#include <stdio.h>
#include "statement.h"
#include "errmsg.h"

void StatementStackAllocAddList(struct list* codeBlock, struct var allocVar) {
    struct statement s = (struct statement){0};
    s.sType = STATEMENT_STACK_ALLOCATION;
    s.var = allocVar;
    ListAdd(codeBlock, &s);
}
