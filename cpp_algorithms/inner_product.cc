#include <numeric>
#include <vector>
#include <cstdint>
#include <iostream>

#include "common.hh"

int main()
{
  std::vector<uint8_t> v1(5 ), v2(5 );

  std::iota(std::begin(v1), std::end(v1), 1);
  std::iota(std::begin(v2), std::end(v2), 1);

  // Note that these get printed as ASCII since the compiler usually stores uint8_t as char
  print(v1);
  print(v2);

  // Inner product traverses the data structure in order so the operators do not need to be commutative/associative
  uint32_t dot_prod = std::inner_product(std::begin(v1), std::end(v1), std::begin(v2), 0);

  std::cout << dot_prod << std::endl;
  return 0;
}
