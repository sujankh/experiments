#include <iostream>

class Test
{
public:
  explicit Test(int x)
  {
    std::cout << "Test created with x = " << x << std::endl;
  }
};

int main()
{
  Test t(5);

  //Test t2 = 6; --> Error because 6 cannot be implicitly converted to Test
  return 0;
}
