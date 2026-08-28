#include <stdlib.h>
#include <stdio.h>
#include "syntax.h"
#include "util.h"
#include "errmsg.h"

int main(int argc, char** argv) {
    if (argc < 2) ErrMsgFatal(NO_FILE_SPECIFIED);
    if (argc > 2) ErrMsgFatal(TRAILING_COMP_ARGS);
    ParseSyntax(argv[1]);
    ErrMsgFinishCompilation();
    return 0;
}
