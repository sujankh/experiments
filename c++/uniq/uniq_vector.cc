#include <iostream>
#include <memory>
#include <queue>
#include <typeinfo>

class Test
{
public:
  explicit Test(int _x): x(_x)
  {}

  ~Test()
  {
    std::cout << "Destroying Test: " << x << std::endl;
  }

  int get() const
  {
    return this->x;
  }

  void update(int x_updated)
  {
    std::cout << "Update: " << x << "-->" << x_updated << std::endl;
    this->x = x_updated;
  }

private:
  int x;

};

int main()
{
  using tptr = std::unique_ptr<Test>;

  std::unique_ptr<Test> t1(new Test(5));
  std::unique_ptr<Test> t2(new Test(5));

  std::deque<tptr> v;
  v.push_back(std::move(t1));
  v.push_back(std::move(t2));

  std::cout << "Now accessing ptrs" << std::endl;

  const auto tc1 = std::move(v.front());
  //tc1.reset();
  std::cout << typeid(tc1).name() << std::endl;
  tc1->update(12);
  

  return 0;
}
