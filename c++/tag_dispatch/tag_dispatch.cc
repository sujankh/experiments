#include <iostream>
#include <type_traits>
#include <utility>

template <typename T>
void log_and_add(T&&); //forward decl

template <typename T>
void log_and_add_impl(T&& name, std::false_type non_integral_type)
{
  std::cout << "String based impl: " << name << std::endl;
}

void log_and_add_impl(const int name_id, std::true_type integral_type_only)
{
  std::cout << "Int based impl" << std::endl;
  log_and_add("name_obtained_from_id");
}

template <typename T>
void log_and_add(T&& n)
{
  log_and_add_impl(std::forward<T>(n), std::is_integral<typename std::remove_reference<T>::type>());
}


int main()
{
  log_and_add("Sujan");
  log_and_add(1);
  
  int x = 5;
  log_and_add(x);
    
  return 0;
}
