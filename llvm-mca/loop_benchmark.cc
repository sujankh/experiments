#include <cstdint>
#include <cstdlib>

int main()
{
  uint64_t sum = 0;
  for(int i = 0; i < 100000; ++i)
    {
      asm ("" ::: "memory");
      sum += rand() % 10;
    }

  return sum;
}
