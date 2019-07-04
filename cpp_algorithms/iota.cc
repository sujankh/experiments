#include <numeric>
#include <array>
#include <vector>

#include "common.hh"

int main()
{
  std::array<int, 10> nums;

  std::iota(std::begin(nums), std::end(nums), 11);
  print(nums);

  return 0;
}
