#include <stdlib.h>
#include <stdio.h>
#include "semantic.h"
#include "util.h"
#include "errmsg.h"

int main(int argc, char** argv) {
    if (argc < 2) ErrMsgFatal(NO_FILE_SPECIFIED);
    if (argc > 2) ErrMsgFatal(TRAILING_COMP_ARGS);
    SemanticAnalyzeFile(argv[1]);
    ErrMsgFinishCompilation();
    return 0;
}
