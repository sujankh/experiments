#include <typeinfo>
#include <type_traits>
#include <iostream>

template <typename T>
void check_integral(T&& val)
{  
  std::cout << std::boolalpha;  

  // NOTE: in the section below, remove_reference needs to be called in order to remove the lvalue reference
  // when check_integral is called with an lvalue
  std::cout << "Integral?? " << std::is_integral<typename std::remove_reference<T>::type>() << std::endl;

  std::cout << "Deduced type: " << typeid(T).name() << std::endl;
  std::cout << "Is reference: " << std::is_reference<T>::value << std::endl;

  if (std::is_integral<typename std::remove_reference<T>::type>())
    {
      val += 5;
    }
}

int main()
{
  int x = 5;
  bool y = false;

  check_integral(x);
  check_integral(y);
  check_integral(&x);  //ptr to int = non integral
  
  check_integral(44);

  // NOTE: x is updated to 10, since check_integral accepts by reference
  std::cout << x << std::endl;

  return 0;
}

