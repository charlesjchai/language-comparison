#include <stddef.h>
#include <stdio.h>
#include <stdbool.h>
#define N 1048576

int main() {
    static bool arr[N]; // Stack overflow errors
    arr[0] = true;
    arr[1] = true;
    for (size_t prime = 2; prime * prime < N;
         prime++) {
        if (!arr[prime]) {
            for (size_t i = prime * prime; i < N;
                 i += prime) {
                arr[i] = true;
            }
        }
    }
    for (size_t i = 2; i < N; i++) {
        if (!arr[i]) {
            printf("%zu ", i);
        }
    }
    putchar('\n');
    return 0;
}
