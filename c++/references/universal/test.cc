#include <iostream>
#include <string>
#include <type_traits>


class Person
{
public:
  template <typename T>
  void add_name(T&& new_name)
  {
    add_name_impl(std::forward<T>(new_name), std::is_integral<typename std::remove_reference<T>::type>());
  }

  template <typename T>
  void add_name_impl(T&& new_name, std::false_type)
  {
    std::cout << "Adding name" << new_name << std::endl;
  }

  void add_name_impl(int name_id, std::true_type)
  {
    add_name(std::to_string(name_id) + " name");   
  }

};


/*
Test std::is_integral<T> and T&& references for tag and dispatch
*/
int main()
{
  Person p;
  p.add_name("Hello");
  p.add_name(5);
  return 0;
}
