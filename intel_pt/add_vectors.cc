#include <iostream>
#include <vector>
#include <algorithm>

int main()
{
  std::vector<int> v1 {1, 2, 3, 4};
  std::vector<int> v2 {3, 4, 5, 6};

  int i = 0;
  for(auto n : v1)
    {
      v2[i++] += n;
    }

  v1 = v2;
  int sum = 0;
  for(auto n : v1)
    {
      sum += n;
    }

  std::cout << "Sum: " << sum << std::endl;
  return 0;
};
