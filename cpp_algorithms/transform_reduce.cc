#include <iostream>
#include <vector>
#include <numeric>
#include <functional>
#include <cstdint>
#include <iomanip>
//#include <execution> This is not supported on libc++ currently

int main()
{
  std::vector<int> v1(100), v2(100);

  std::iota(std::begin(v1), std::end(v1), 1);
  std::iota(std::begin(v2), std::end(v2), 1);

  // Sum of squares of Sum(E(v1) * E(v2)) where E represents the elements of the vectors on which it is applied
  uint64_t res1 = std::transform_reduce(std::begin(v1), std::end(v1), std::begin(v2), 0, std::plus<>(), std::multiplies<>());
  uint64_t res2 = std::transform_reduce(std::begin(v1), std::end(v1), std::begin(v2), 0);

  // The res1 and res2 values should be same since the defaults applied for binary_op1 and binary_op2 are plus and multiplies respectively
  std::cout << res1 << " : " << std::boolalpha << (res1 == res2) << std::endl;


  // Unary OP version:
  // Compute sum of squares but only using v1 and a square unary op for each element
  // This transform_reduce implements Sum (E(v1) ^ 2) where E(v1) represents each element of vector v1
  uint64_t unary_res = std::transform_reduce(std::begin(v1), std::end(v1), 0, std::plus<>(), [](int a) { return a * a;});
  std::cout << unary_res << std::boolalpha << " : " << (res1 == unary_res) << std::endl;

  // Trying out execution policies
  // (NOT SUPPORTED CURRENTLY IN LIBC++)
  // uint64_t res3 = std::transform_reduce(std::execution::par, std::begin(v1), std::end(v1), std::begin(v2), 0);
  // std::cout << res3 << " : " << std::boolalpha << (res1 == res3) << std::endl;


  return 0;
}
