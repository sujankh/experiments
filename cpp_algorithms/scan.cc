#include <numeric>
#include <vector>
#include <iostream>

#include "common.hh"

int main()
{
  std::vector<int> v1(10), incl_sum(10), excl_sum(10);
  std::iota(std::begin(v1), std::end(v1), 1);
  print(v1);

  // Do a partial inclusive sum of v1
  std::inclusive_scan(std::begin(v1), std::end(v1), std::begin(incl_sum));
  print(incl_sum);

  // Partial exclusive sum
  std::exclusive_scan(std::begin(v1), std::end(v1), std::begin(excl_sum), 0);
  print(excl_sum);

  return 0;
}
