#include <iostream>
#include <vector>
#include <numeric>
#include <functional>
#include <cstdint>

int main()
{
  std::vector<int> v1(100), v2(100);

  std::iota(std::begin(v1), std::end(v1), 1);
  std::iota(std::begin(v2), std::end(v2), 1);

  uint64_t res = std::transform_reduce(std::begin(v1), std::end(v1), std::begin(v2), 0, std::plus<>(), std::multiplies<>());

  std::cout << res << std::endl;

  return res;
}
