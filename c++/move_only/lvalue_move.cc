#include <iostream>
#include <typeinfo>


struct Test
{
  Test()
  {
    std::cout << "ctor" << std::endl;
  }

  Test(const Test &other)
  {
    std::cout << "Copy called" << std::endl;
  }

  Test(Test &&other)
  {
    std::cout << "Move called" << std::endl;
  }

  Test(const Test &&other)
  {
    std::cout << "const move called" << std::endl;
  }
};



int main()
{
  Test t;
  
  Test t_next(std::move(t));
};
