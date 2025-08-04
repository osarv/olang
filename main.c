#include <stdlib.h>
#include <stdio.h>
#include "parser.h"
#include "util.h"

int main() {
    ParseFile("test1.olang");
    FinishCompilation();
    return 0;
}
