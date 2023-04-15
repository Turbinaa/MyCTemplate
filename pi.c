#include "program.h"

const int MAX_TERM = 100;
double small = 1e-10;
double Sm = 1;
double sum = 1;
double PI()
{
     for (int m = 1; m < MAX_TERM; m++)
     {

          Sm *= m / (2.0 * m + 1);
          sum += Sm;
          if (Sm < small)
          {
               break;
          }
     }
     sum *= 2;
     return sum;
}
int add(int a, int b)
{
     return a + b;
}
