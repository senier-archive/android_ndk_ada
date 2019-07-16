#include <stdio.h>

extern void adainit();
extern int incremented(int val);

int
main()
{
   printf ("Hello, World: %d\n", incremented(42));
   return 0;
}

void
__gnat_rcheck_CE_Overflow_Check() {};
