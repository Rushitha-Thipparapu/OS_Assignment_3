// user/small_test.c  (verbose version)
#include "types.h"
#include "stat.h"
#include "user.h"

int main(void) {
    char *p;
    int i;

    printf(1, "small_test: starting\n");

    // Reserve 3 pages lazily
    p = sbrk(3 * 4096);
    if (p == (char*)-1) {
        printf(1, "small_test: sbrk failed\n");
        exit();
    }
    printf(1, "small_test: sbrk returned %p, proc->sz should be increased\n", p);

    // Touch first page (will cause a fault and allocation)
    printf(1, "small_test: about to write p[0] at %p\n", p);
    p[0] = 'A';
    printf(1, "small_test: wrote p[0]\n");

    // Touch middle page
    printf(1, "small_test: about to write p[4096] at %p\n", p + 4096);
    p[4096] = 'B';
    printf(1, "small_test: wrote p[4096]\n");

    // Touch last page
    printf(1, "small_test: about to write p[2*4096] at %p\n", p + 2*4096);
    p[2*4096] = 'C';
    printf(1, "small_test: wrote p[2*4096]\n");

    printf(1, "small_test: touched pages: %c %c %c\n", p[0], p[4096], p[2*4096]);

    for (i = 0; i < 3; i++) {
        printf(1, "small_test: page %d first byte = %c\n", i, p[i*4096]);
    }

    printf(1, "small_test: exiting\n");
    exit();
}
