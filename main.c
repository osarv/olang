#include <stdlib.h>
#include <stdio.h>
#include "parser.h"
#include "util.h"

int main(int argc, char** argv) {
    if (argc < 2) ErrorFatal(NO_FILE_SPECIFIED);
    if (argc > 2) ErrorFatal(TRAILING_COMP_ARGS);
    ParseFile(argv[1]);
    FinishCompilation();
    return 0;
}
