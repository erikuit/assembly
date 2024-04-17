#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
  if (argc < 3) {
    printf("Usage: %s <remainder> <divisor>\n", argv[0]);
    return 1;
  }

  int remainder = atoi(argv[1]);
  int divisor = atoi(argv[2]) << 16;
  int quotient = 0;

  for (int i = 0; i < 17; i++) {
    remainder -= divisor;

    if (remainder < 0) {
      remainder += divisor;
      quotient <<= 1;
      quotient |= 0;
    } else {
      quotient <<= 1;
      quotient |= 1;
    }

    divisor >>= 1;
  }

  printf("Quotient is %d, remainder is %d\n", quotient, remainder);
}
