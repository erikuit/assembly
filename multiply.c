#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
  if (argc < 2) {
    printf("Usage: %s <multiplier> <multiplicand>\n", argv[0]);
    return 1;
  }

  int multiplier = atoi(argv[1]);
  int multiplicand = atoi(argv[2]);
  int product = 0;

  for (int i = 0; i < 32; i++) {
    if ((multiplier & 1) == 1) {
      product += multiplicand;
    }

    multiplier >>= 1;
    multiplicand <<= 1;
  }

  printf("Product is %d\n", product);
}
