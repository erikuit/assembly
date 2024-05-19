#include <stdio.h>

int main() {
  int arr[] = {64, 94, 25, 12, 22, 11, 90};
  int n = 7;

  for (int i = 0; i <= n; i++) {
    for (int j = 0; j <= n - i; j++) {
      if (arr[j] > arr[j + 1]) {
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }

  printf("Sorted array: \n");
  for (int i = 0; i < n; i++) {
    printf("%d ", arr[i]);
  }
  printf("\n");
}
