// Test using a vector of structs
// - behavior when the vector is cleared
// - struct copy vs reference


#include <vector>
#include <iostream>

struct POD;
void display(const POD &p);

struct POD
{
  int x;
  int y;

  POD(int x, int y): x(x), y(y)
  {
    std::cout << "Constructor" << std::endl;
  }

  POD(const POD &x){
    std::cout << "Copy constructor" << std::endl;
  }

  void print()
  {
    display(*this);
  }

  ~POD()
  {
    std::cout << "Destructor" << std::endl;
  }
};


void display(const POD &p)
{
  std::cout << p.x << "," << p.y << std::endl;
}

class VectorStructTest
{
private:
  std::vector<POD> vct;

  inline void add_to_vector(const POD &p)
  {
    vct.push_back(p);

    vct.clear();

    display(p);
  }
public:
  void test()
  {
      POD p1 = {5, 6};
      POD p2 = {6, 7};
      
      add_to_vector(p1);
      add_to_vector(p2);
  }
};

int main()
{
  VectorStructTest test;
  test.test();

  std::cout << "----" << std::endl;
  POD(1,2).print();
  std::cout << "----" << std::endl;
  return 0;
}
