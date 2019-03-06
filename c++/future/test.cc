#include <future>
#include <iostream>
#include <cmath>
#include <stdexcept>


double square_root(double num)
{
  std::cout << "Root thread id = " << std::this_thread::get_id() << std::endl;
  //  throw std::out_of_range("Well here i am");
  return std::sqrt(num);
}

int main()
{
  std::cout << "Main thread id = " << std::this_thread::get_id() << std::endl;
  int x = 24;
  
  std::future<double> future_root = std::async(square_root, x);
  double root = future_root.get();
  
  std::cout << root << std::endl;
  return 0;
}
