#include <iostream>
#include <memory>
#include <vector>

void foo1(std::unique_ptr<int> p)
{
  std::cout << "foo1" << std::endl;
}

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
    this->x = x_updated;
  }
private:
  int x;

};

void test_uniq_reset()
{
  // Make sure that calling reset on a uniq ptr will destroy the object
  std::unique_ptr<Test> ptr(new Test(5));
  std::cout << "Value of *ptr: " << ptr->get() << std::endl;
  std::cout << "Destroying ptr" << std::endl;

  ptr.reset();

  std::cout << "Check if ptr is null: " << std::boolalpha << (ptr == nullptr) << std::endl;

  ptr.reset(new Test(100));
  
}

void test_uniq_vector()
{

  std::cout << "Vector uniq pointer tests" << std::endl;
  std::vector<std::unique_ptr<Test>> test_data;

  test_data.push_back(std::unique_ptr<Test>(new Test(5)));
  test_data.push_back(std::unique_ptr<Test>(new Test(23)));

  for(const auto& t: test_data)
    {
      std::cout << t->get() << std::endl;
      t->update(t->get() + 5);
    }
}

int main()
{
  test_uniq_reset();
  test_uniq_vector();

  std::unique_ptr<int> p1(new int(100));
  std::unique_ptr<int> p2;
  
  std::cout << *p1 << std::endl;

  std::cout << (p2 ? "not null":"null") << std::endl;

  foo1(std::move(p1)); //p1 gets moved to foo1 making this p1 null

  std::cout << (p1 ? "not null":"null") << std::endl;

  //int x = *p1;  --> null ptr error
  return 0;
}
