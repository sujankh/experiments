#include <atomic>
#include <cassert>
#include <thread>
#include <iostream>

std::atomic<bool> x, y;
std::atomic<int> z;

void write_x_then_y()
{
  x.store(true, std::memory_order_relaxed);
  y.store(true, std::memory_order_release);
}


void read_y_then_x()
{
  while(!y.load(std::memory_order_acquire));
  // x could be false even if x -> y in another thread
  if(x.load(std::memory_order_relaxed))
    ++z;
}


int main()
{
  x = false;
  y = false;
  z = 0;

  std::thread t1(write_x_then_y);
  std::thread t2(read_y_then_x);

  t1.join();
  t2.join();

  std::cout << "X = " << x << " Y = " << y << " Z = " << z.load() << std::endl;

  return 0;
}
