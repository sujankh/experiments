//#include <iostream>
#include <string>
#include <utility>

class Person
{
public:
  template <typename T>
  explicit Person(T&& n):name(std::forward<T>(n))
  {
    //std::cout << "Template ctor: name= " <<  name << std::endl;
  }  

  explicit Person(const int id): name(get_name_from_id(id))
  {
    /*
      NOTE: id can be const or non const and the compiler still resolves to this function
      when called with a rvalue or lvaule
     */
    
    //std::cout << "Int accepting ctor: name= " <<  name << std::endl;
  }

private:
  std::string name;
  
  std::string get_name_from_id(const int id)
  {
    return "SK";
  }
};


int main()
{
  Person p1("Person1_name");

  // NOTE: 5 can be passed directly to the ctor and it will still resolve to the int accepting ctor
  int id = 5;
  Person p2(id);

  // NOTE: the copy construction below should fail
  // since it resolves to the template ctor and the template ctor tries to instantiate the string
  // with a Person
  // Error msg = no matching function for call to ‘std::basic_string<char>::basic_string(Person&)   ---> explicit Person(T&& n):name(std::forward<T>(n))
  // Person p1_copy(p1);

  return 0;
}
