
int get_x()
{
    return 1;
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
    int z;
    z = y + 5;
    return 0;
}
