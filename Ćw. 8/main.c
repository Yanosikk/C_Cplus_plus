#include <stdio.h>
#include <stdlib.h>

int global_variable;  // Zmienna globalna

int main() {
  int stack_variable1, stack_variable2, stack_variable3, stack_variable4; // Zmienne na stosie
  int *heap_variable1 = (int*) malloc(sizeof(int)); // Zmienne na stercie
  int *heap_variable2 = (int*) malloc(sizeof(int));
  int *heap_variable3 = (int*) malloc(sizeof(int));
  int *heap_variable4 = (int*) malloc(sizeof(int));

  printf("Adres zmiennej globalnej: %p\n", &global_variable);
  printf("Adres zmiennych na stosie: %p, %p, %p, %p\n", &stack_variable1, &stack_variable2, &stack_variable3, &stack_variable4);
  printf("Adresy zmiennych na stercie: %p, %p, %p, %p\n", heap_variable1, heap_variable2, heap_variable3, heap_variable4);

  free(heap_variable1);
  free(heap_variable2);
  free(heap_variable3);
  free(heap_variable4);

  return 0;
}