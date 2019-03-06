#include <utility>
#include <string>
#include <iostream>
#include <memory>

struct Test
{
  Test(std::string _name): name(_name)
  {
  }
  
  Test(Test&& rhs): name(std::move(rhs.name)),
		    next_test(std::move(rhs.next_test))		    
  {
    std::cout << "Moved" << std::endl;
    std::cout << name << std::endl;
    std::cout << next_test->name << std::endl;
  }
  
  template <typename T>
  void setName(T&& new_name)
  {
    this->name = std::forward<T>(new_name);

    std::cout << this->name << std::endl;
  }

  std::string name;
  std::unique_ptr<Test> next_test;
};

int main()
{
  Test t1("John");
  t1.next_test = std::unique_ptr<Test>(new Test("Jack"));

  Test t2(std::move(t1));

  std::string s = "Hello";
  t2.setName(s);

  std::cout << s << std::endl;
  return 0;
}
