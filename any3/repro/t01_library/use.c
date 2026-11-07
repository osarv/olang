#include <stdio.h>
#include "build/anylib.h"
int main(void) {
    printf("countUp %ld sumDown %ld maxUp %ld\n", (long)countUp(5), (long)sumDown(5), (long)maxUp(4));
    return 0;
}
