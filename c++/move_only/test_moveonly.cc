#include <iostream>
#include <memory>


class Test
{
public:
  Test(int x)
  {
    std::cout << "Ctor" << std::endl;
    this->x = x;
  }

  Test(const Test &other) = delete;  
  Test(Test &other) = delete;

  Test(Test &&other):x(std::move(other.x))
  {
    std::cout << "Move ctor" << std::endl;
  }

  Test& operator=(Test& t)
  {
    std::cout << "copy assignment" << std::endl;
    return t;
  }

  Test& operator=(Test&& t)
  {
    std::cout << "Move assignment" << std::endl;
    return t;
  }

  void print() const
  {
    std::cout << x << std::endl;
  }
private:
  int x;
};

std::unique_ptr<Test> get_test(int x)
{
  return std::unique_ptr<Test>(new Test(x));
}

Test get_test_1(int x)
{
  return Test(x);
}

int main()
{
  Test t = get_test_1(55);
  t.print();

  return 0;
}
