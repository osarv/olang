#include <stdlib.h>
#include <stdio.h>
#include "color.h"


void ErrFatal(char* errMsg) {
    fputs(COLOR_RED "error: " COLOR_RESET, stdout);
    puts(errMsg);
    exit(EXIT_FAILURE);
}


void CheckPtr(char* ptr) {
    if (!ptr) ErrFatal("invalid pointer detected");
}
