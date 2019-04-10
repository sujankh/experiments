#include <memory>
#include <thread>
#include <iostream>

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


std::unique_ptr<Test> make_test(int initial_value)
{
  return std::unique_ptr<Test>(new Test(initial_value));
}

class Task
{
public:
  Task()
  {
    test_ptr = make_test(100);
  }

  void do_work()
  {
    std::cout << test_ptr->get() << std::endl;

    update_test();    
  }

  void thread_work()
  {
    std::thread t1(&Task::thread1, this);
    t1.join();
    
    std::thread t2(&Task::thread2, this);
    t2.join();
  }

  void update_test()
  {
    test_ptr->update(23);
  }

  void thread1()
  {
    test_ptr->update(55);
  }

  void thread2()
  {
    test_ptr->update(65);
  }

  ~Task()
  {
    std::cout << "Destroy task" << std::endl;
  }
private:
  std::unique_ptr<Test> test_ptr;
};

int main()
{
  Task t;

  for(int i = 0; i < 10; ++i)
    {
      t.do_work();
    }

  t.thread_work();
  return 0;
}
