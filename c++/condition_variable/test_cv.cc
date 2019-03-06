#include <chrono>
#include <condition_variable>
#include <cstdlib>
#include <iostream>
#include <mutex>
#include <queue>
#include <thread>

std::mutex m;
std::queue<int> data_queue;
std::condition_variable cv;

void data_preparation_thread()
{
  for(int i = 0; i < 500; ++i)
    {
      std::this_thread::sleep_for(std::chrono::milliseconds(std::rand() % 10));
      std::lock_guard<std::mutex> lk(m);
      std::cout << "Push" << "\t";
      data_queue.push(i);
      cv.notify_one();
    }    
}

void data_processing_thread()
{
  for(int i = 0; i < 500; ++i)
    {
      std::unique_lock<std::mutex> lk(m);
      std::cout << "Waiting..." << "\t";
      cv.wait(lk, []{ return !data_queue.empty();});
      int data = data_queue.front();
      std::cout << "Pop" << "\t";
      data_queue.pop();
      lk.unlock();
      std::cout << data << "\t";
    }
}


void print_new_line()
{
  for (int i = 0; i < 200;++i)
    {
      std::this_thread::sleep_for(std::chrono::milliseconds(10));
      std::cout << std::endl;
    }
}

int main()
{
  std::thread t1(data_preparation_thread);
  std::thread t2(data_processing_thread);
  std::thread t3(print_new_line);

  t1.join();
  t2.join();
  t3.join();

  return 0;
}
