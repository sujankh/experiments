#include <algorithm>
#include <iostream>
#include <vector>
#include <iterator>

template<typename C>
void allOfContainer(const C& container)
{
  using elem_type = typename C::value_type;

  elem_type divisor = 5;

  if(std::all_of(std::begin(container), std::end(container),
		 [&] (decltype(*std::begin(container)) val){
		   return val % divisor == 0;
		 })
     )
    {
      std::cout << "Container has all of" << std::endl;
    }
  else
    {
      std::cout << "No all of" << std::endl;
    }
}

int main()
{

  std::vector<int> v1 { 1, 2, 3, 4, 5};
  std::vector<int> v2 {5, 10, 15, 20};

  allOfContainer(v1);
  allOfContainer(v2);

  return 0;
}
