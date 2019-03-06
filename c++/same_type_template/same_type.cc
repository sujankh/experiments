#include <iostream>
#include <vector>
#include <list>


template <class T, class U>
struct same_type
{
  static const bool value = false;
};

template <class T>
struct same_type<T, T>
{
  static const bool value = true;
};

template<class C1, class C2>
bool is_same_type(const C1& container1, const C2& container2)
{
  return same_type<typename C1::value_type, 
		   typename C2::value_type>::value;
}


int main()
{
  using myint = int;
  std::cout << is_same_type(std::vector<int>(), std::vector<short>()) << std::endl;
  std::cout << is_same_type(std::vector<int>(), std::vector<myint>()) << std::endl;
  
  return 0;
}
