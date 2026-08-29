#include <stdlib.h>
#include <stdio.h>
#include "statement.h"
#include "errmsg.h"

void StatementAdd(struct list* codeBlock, struct statement s) {
    ListAdd(codeBlock, &s);
}

//true if every word of errType is covered by matches: either a whole-type match ("catch MyError") or,
//word by word, a specific-word match for each one ("catch MyError.A || MyError.B" when A/B are all of
//them). Shared by semantic.c (which errors need declaring in the enclosing signature) and codegen.c
//(whether a try/catch statement's propagate path is even reachable).
bool StatementCatchCoversType(struct list* matches, struct type errType) {
    for (int i = 0; i < matches->len; i++) {
        struct catchMatch* cm = ListGetIdx(matches, i);
        if (!cm->hasWord && TypeIsSame(cm->errType, errType)) return true;
    }
    for (int w = 0; w < errType.words.len; w++) {
        bool covered = false;
        for (int i = 0; i < matches->len; i++) {
            struct catchMatch* cm = ListGetIdx(matches, i);
            if (cm->hasWord && cm->wordOrdinal == w && TypeIsSame(cm->errType, errType)) { covered = true; break; }
        }
        if (!covered) return false;
    }
    return true;
}
