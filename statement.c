#include <stdlib.h>
#include <stdio.h>
#include "statement.h"
#include "errmsg.h"

void StatementAdd(struct list* codeBlock, struct statement s) {
    ListAdd(codeBlock, &s);
}
