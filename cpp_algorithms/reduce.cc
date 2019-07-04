#include <numeric>
#include <iostream>
#include <vector>
#include <string>

int main()
{
  std::vector<int> v(50);
  std::iota(std::begin(v), std::end(v), 1);

  // accumulate by default is a left-fold operation.
  // This will use reverse iterators to do a right-fold

  std::string rfold = std::reduce(std::next(std::rbegin(v)), std::rend(v), std::to_string(v.back()),
				      [](std::string tot, int n) {
					return std::move(tot) + "-" + std::to_string(n);
				      }
				      );

  std::cout << rfold << std::endl;

  return 0;
}
