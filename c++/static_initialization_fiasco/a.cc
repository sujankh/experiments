#include <iostream>

extern int external_x;

int get_x()
{
    std::cout << "Read X" << std::endl;
    return external_x;
}


int y = get_x() + 1;

/*
  Static initialization order fiasco:
  https://github.com/google/sanitizers/wiki/AddressSanitizerInitializationOrderFiasco

  Compile: clang++ b.cc a.cc
  This ensures that b.cc's translation unit gets executed first to initialize x
  so Y = 43

  Compile: clang++ a.cc b.cc
  In this case a's global var gets initialized first making Y=1
 */

int main()
{
    std::cout << "Y = " << y << std::endl;
    return 0;
}
