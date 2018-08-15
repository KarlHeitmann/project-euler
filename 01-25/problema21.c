#include <stdio.h>
#include <stdlib.h>

unsigned int suma_divisores(unsigned int n) {
  unsigned int s = 0, i = 1;

  while (i < n) {
    if ((n % i) == 0) {
      s = s + i;
    }
    i++;
  }

  return s;
}

void main() {
  unsigned int q = 0;
  printf("Hola mundo\n");
  q = suma_divisores(220);
  //printf("%u", q);
  printf("%u\n", suma_divisores(220));
  printf("%u\n", suma_divisores(284));

  //unsigned int target = 10000;
  //unsigned int target = 5000; //5000 - 60s, 4000 - 32s, 6000 - 109s
  unsigned int target   = 10000;
  unsigned int i = 1, j;
  unsigned int suma_general = 0;

  while (i < target) {
    j = i;
    while (j < target) {
      if ((suma_divisores(i) == j) && (i == suma_divisores(j))) {
        suma_general = suma_general + i + j;
      }
      j++;
    }
    i++;
  }
  printf("%u\n", suma_general);

}

//suma_divisores(220);
//printf("%u", suma_divisores(220));

/*
unsigned int s = 0, i = 0;

while (i < n) {
  if ((n % i) == 0) s = s + i;
  i++;
}

printf("%u", s);
*/
