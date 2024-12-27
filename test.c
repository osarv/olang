#include <stdlib.h>
#include <stdio.h>
#include "token.h"
#include "error.h"
//#'
//\k sf'\f sdfsdf

int main() {
    TokenizeFile("test.c");
    FinishCompilation();
    return 0;
}
