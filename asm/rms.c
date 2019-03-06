#include <stdio.h>
// Local Variables:
// rmsbolt-command: "gcc -O3"
// rmsbolt-disassemble: nil
// End:

int add(int a, float b)
{
  return a * b;
}

int main()
{
  int a = 5;
  float b = 6 * 1.1;
  int c = add(a, b);

  return c;
}
