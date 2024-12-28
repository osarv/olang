#include <stdlib.h>
#include <stdio.h>
#include "token.h"
#include "error.h"

int main() {
    TokenizeFile("test1.olang");
    FinishCompilation();
    return 0;
}
